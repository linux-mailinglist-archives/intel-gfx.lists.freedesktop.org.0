Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D04B177A5B
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 16:25:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75A9389C07;
	Tue,  3 Mar 2020 15:25:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 714C389C07
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 15:25:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 07:25:26 -0800
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="228946681"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 07:25:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200303142347.15696-1-aditya.swarup@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200303142347.15696-1-aditya.swarup@intel.com>
Date: Tue, 03 Mar 2020 17:25:21 +0200
Message-ID: <87d09tpiji.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Fix uninitialized
 variable
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 03 Mar 2020, Aditya Swarup <aditya.swarup@intel.com> wrote:
> Static code analysis tool identified struct lrc_timestamp data as being
> uninitialized and then data.ce[] is being checked for NULL/negative
> value in the error path. Initializing data variable fixes the issue.
>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index ccf9debacd90..9b75b3c77a5b 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -4725,7 +4725,7 @@ static int live_lrc_timestamp(void *arg)
>  {
>  	struct intel_gt *gt = arg;
>  	enum intel_engine_id id;
> -	struct lrc_timestamp data;
> +	struct lrc_timestamp data = { 0 };

{} is preferred over {0}.

BR,
Jani.

>  	const u32 poison[] = {
>  		0,
>  		S32_MAX,

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
