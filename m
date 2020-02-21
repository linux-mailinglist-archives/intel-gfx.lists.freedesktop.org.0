Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6ACA16702E
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 08:34:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 919156EEAD;
	Fri, 21 Feb 2020 07:34:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 386366EEAC;
 Fri, 21 Feb 2020 07:34:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 23:34:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,467,1574150400"; d="scan'208";a="315982253"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga001.jf.intel.com with ESMTP; 20 Feb 2020 23:34:02 -0800
Received: from [10.237.72.173] (mperes-desk.fi.intel.com [10.237.72.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 6D8005802C8;
 Thu, 20 Feb 2020 23:34:01 -0800 (PST)
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200220174155.2162242-1-chris@chris-wilson.co.uk>
From: Martin Peres <martin.peres@linux.intel.com>
Message-ID: <023b88f4-7b98-a376-aee1-db09cec21a98@linux.intel.com>
Date: Fri, 21 Feb 2020 09:33:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200220174155.2162242-1-chris@chris-wilson.co.uk>
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

On 2020-02-20 19:41, Chris Wilson wrote:
> Since we check before and then after each debugfs entry, we do not need
> to check before each time as well. We will error out as soon as it does
> fail, at all other times we know the system to be idle.
> 
> No impact on runtime for glk (which apparently is one of the better
> behaving systems).
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Martin Peres <martin.peres@linux.intel.com>

I don't like this patch because the first read might not have the gpu
suspended, and there shouldn't be much overhead in checking twice rather
than once.

What's your rationale here?

To me, the issue is that some platforms suspend in milliseconds while
some take seconds, and that might be indicative a real bug in the driver.

Martin

> ---
>  tests/i915/i915_pm_rpm.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/tests/i915/i915_pm_rpm.c b/tests/i915/i915_pm_rpm.c
> index 0c2821122..bf412b5cc 100644
> --- a/tests/i915/i915_pm_rpm.c
> +++ b/tests/i915/i915_pm_rpm.c
> @@ -932,9 +932,6 @@ static int read_entry(const char *filepath,
>  	int fd;
>  	int rc;
>  
> -	igt_assert_f(wait_for_suspended(), "Before opening: %s (%s)\n",
> -		     filepath + pathinfo->base, filepath);
> -
>  	fd = open(filepath, O_RDONLY | O_NONBLOCK);
>  	if (fd < 0) {
>  		igt_debug("Failed to open '%s': %m\n", filepath);
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
