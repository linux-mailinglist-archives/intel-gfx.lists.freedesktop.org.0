Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C13B16A18A
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 10:16:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C9B66E1F1;
	Mon, 24 Feb 2020 09:16:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA4FD6E1F1;
 Mon, 24 Feb 2020 09:16:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 01:16:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,479,1574150400"; d="scan'208";a="231074271"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga008.fm.intel.com with ESMTP; 24 Feb 2020 01:16:06 -0800
Received: from [10.237.72.173] (mperes-desk.fi.intel.com [10.237.72.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 0CD1958048A;
 Mon, 24 Feb 2020 01:16:04 -0800 (PST)
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200220174155.2162242-1-chris@chris-wilson.co.uk>
 <20200221135620.2794706-1-chris@chris-wilson.co.uk>
From: Martin Peres <martin.peres@linux.intel.com>
Message-ID: <efbae310-47f4-d774-ccac-31ee30a0f96b@linux.intel.com>
Date: Mon, 24 Feb 2020 11:16:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200221135620.2794706-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/i915_pm_rpm: Only check for
 suspend failures after each debugfs entry
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-02-21 15:56, Chris Wilson wrote:
> Since we check before and then after each debugfs entry, we do not need
> to check before each time as well. We will error out as soon as it does
> fail, at all other times we know the system to be idle.
> 
> No impact on runtime for glk (which apparently is one of the better
> behaving systems).
> 
> v2: Assert that we are currently suspended prior to opening the file,
> i.e. that nothing else is waking up the device behind our backs.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Martin Peres <martin.peres@linux.intel.com>

This changes the purpose of this test, but checking that nothing is
waking the driver in the background sound like a good test and could
explain the terribly-slow runtime on some platforms!

Reviewed-by: Martin Peres <martin.peres@linux.intel.com>

Please inform me before merging the patch, so as I can suppress the test
ahead of the merge.

> ---
>  tests/i915/i915_pm_rpm.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/tests/i915/i915_pm_rpm.c b/tests/i915/i915_pm_rpm.c
> index 0c2821122..36416a9db 100644
> --- a/tests/i915/i915_pm_rpm.c
> +++ b/tests/i915/i915_pm_rpm.c
> @@ -183,6 +183,14 @@ static enum pc8_status get_pc8_status(void)
>  		return PC8_DISABLED;
>  }
>  
> +static bool is_suspended(void)
> +{
> +	if (has_pc8 && !has_runtime_pm)
> +		return get_pc8_status() == PC8_ENABLED;
> +	else
> +		return igt_get_runtime_pm_status() == IGT_RUNTIME_PM_STATUS_SUSPENDED;
> +}
> +
>  static bool wait_for_pc8_status(enum pc8_status status)
>  {
>  	return igt_wait(get_pc8_status() == status, 10000, 100);
> @@ -932,7 +940,7 @@ static int read_entry(const char *filepath,
>  	int fd;
>  	int rc;
>  
> -	igt_assert_f(wait_for_suspended(), "Before opening: %s (%s)\n",
> +	igt_assert_f(is_suspended(), "Before opening: %s (%s)\n",
>  		     filepath + pathinfo->base, filepath);
>  
>  	fd = open(filepath, O_RDONLY | O_NONBLOCK);
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
