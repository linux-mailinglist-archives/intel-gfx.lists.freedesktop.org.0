Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D54C29F2F26
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 12:28:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B87A10E5B1;
	Mon, 16 Dec 2024 11:28:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hfmAnU0l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBA6810E5AD;
 Mon, 16 Dec 2024 11:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734348492; x=1765884492;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=fiOGslAQUM7uSdNSaYraB7+zf4PgmYdD0EsjP5dCpeM=;
 b=hfmAnU0lwNYwFexYKljbfsCJ+XinN5hkPWXZiVkdm2Z2aV4W+qMGguoX
 Tsgbu2pFkVvUAvRJpKyRYbnN9ypztEYPQ/617QsZB738fX3Zg1cTDpgaV
 zvmrnLph3KBTGi935OsI2/tERQQX1WQWvCtI7GE9Jt0QAHZr/KiuOxI06
 62kBG92Obuwr8vBm+Tfs1fh32p7K0oCp4gm7U/4gfIWuURGG6lzVsc/Vi
 AiZY/imUu7SsPRTK7xV59aokOgAHkKkp8HQuE6iZ5hGYepayrg2bFQcRe
 W6JAcwuJQGVOvF7zenbEQI+Bj97isY++IETZhogFR5ng9qNb2gWMQ59PW A==;
X-CSE-ConnectionGUID: ArWa6+8oReqcRj+/WCSA1w==
X-CSE-MsgGUID: huQSP7jkRmS33AHHPYPOfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38654715"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="38654715"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 03:28:12 -0800
X-CSE-ConnectionGUID: bPngk1DOTSGrY0NDw1Gf6Q==
X-CSE-MsgGUID: w8Fta0jyTCKxlKEGXQbT4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="134505362"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.245])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 03:28:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>, intel-xe@lists.freedesktop.org
Cc: jonathan.cavitt@intel.com, saurabhg.gupta@intel.com, alex.zuo@intel.com,
 intel-gfx@lists.freedesktop.org, imre.deak@intel.com
Subject: Re: [PATCH] drm/i915/display: Do not report timeout on suspend
In-Reply-To: <20241213231234.81647-1-jonathan.cavitt@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241213231234.81647-1-jonathan.cavitt@intel.com>
Date: Mon, 16 Dec 2024 13:28:06 +0200
Message-ID: <87zfkvsw8p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 13 Dec 2024, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> In intel_dp_aux_wait_done, we call intel_de_wait_custom.  This call has
> a 10ms timeout before reporting ETIMEDOUT.  However, if the display pm
> runtime is suspended, then it would be expected for this call to time
> out.  This may be the case, for example, during an engine reset.
>
> Do not report ETIMEDOUT here when the pm runtime is suspended.

No.

Please root cause how you hit this. This should not be possible.

intel_dp_aux_xfer() -> intel_display_power_get() -> intel_runtime_pm_get()

We hold this over the duration of aux communications. The patch at hand
is brushing something more serious under the carpet.

BR,
Jani.


>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 04a7acd7f73c..25c37398f930 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -66,7 +66,7 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
>  				   0,
>  				   2, timeout_ms, &status);
>  
> -	if (ret == -ETIMEDOUT)
> +	if (ret == -ETIMEDOUT && !pm_runtime_suspended(display->drm->dev))
>  		drm_err(display->drm,
>  			"%s: did not complete or timeout within %ums (status 0x%08x)\n",
>  			intel_dp->aux.name, timeout_ms, status);

-- 
Jani Nikula, Intel
