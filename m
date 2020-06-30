Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 974A520F8F4
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 17:55:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D4166E439;
	Tue, 30 Jun 2020 15:55:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B87FD6E439
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 15:55:43 +0000 (UTC)
IronPort-SDR: MaI346C3w3PnSsUeqzHX3fH0RlonhbdK5adqykam7ttHwUuj6QYR/WfCtjl1gGGRTlfTes/9wH
 Fq96l7KXpjng==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="164283814"
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; d="scan'208";a="164283814"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 08:55:43 -0700
IronPort-SDR: GTLyf5U+ayxgUxzpCZGflwoNX8aGYzRhNLZ3Y75JXTddJg1B3aBnpcDYpXABwSlOzeGRPqpinJ
 UoyxP2tBYu6A==
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; d="scan'208";a="425249542"
Received: from rgrotewx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.38.12])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 08:55:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200625001120.22810-3-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200625001120.22810-1-lucas.demarchi@intel.com>
 <20200625001120.22810-3-lucas.demarchi@intel.com>
Date: Tue, 30 Jun 2020 18:55:38 +0300
Message-ID: <87y2o4lf9h.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 2/6] drm/i915/display: fix comment on skl
 straps
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 24 Jun 2020, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> We are not checking for specific SKUs and feedback from HW team is that
> it may not work since it was supposed to be fixed by the same time
> straps stopped to be used. So, just update comment.
>
> v2: Instead of removing the check, just update the comment since
> feedback from HW team was that it actually may not work
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 49772c82a299..effd6b65f270 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -16863,8 +16863,9 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  
>  		/*
>  		 * Haswell uses DDI functions to detect digital outputs.
> -		 * On SKL pre-D0 the strap isn't connected, so we assume
> -		 * it's there.
> +		 * On SKL pre-D0 the strap isn't connected. Later SKUs may or
> +		 * may not have it - it was supposed to be fixed by the same
> +		 * time we stopped using straps. Assume it's there.
>  		 */
>  		found = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
>  		/* WaIgnoreDDIAStrap: skl */

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
