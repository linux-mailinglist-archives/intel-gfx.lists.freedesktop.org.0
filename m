Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE4F35DB11
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 11:24:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CE156E1DE;
	Tue, 13 Apr 2021 09:24:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 176FD6E1DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 09:24:56 +0000 (UTC)
IronPort-SDR: B0IerbsmqT6YnVqDcidQukUzYSRkannUvv0YXK/1B0Y5xb1M78+7hYePBv/rGY1aWrN7xx/t4T
 SgkzNLabroKA==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="181501537"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="181501537"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 02:24:55 -0700
IronPort-SDR: 2cBzAB84KAnEx4XQdaBwZs6VC/yCptYKHcjye0iIWFtMWO60SNdO53TZzOWS4GismUSspbQHrC
 pbv9WpsHp1jA==
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="424176374"
Received: from alinapar-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.36.253])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 02:24:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210413051002.92589-2-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210413051002.92589-1-lucas.demarchi@intel.com>
 <20210413051002.92589-2-lucas.demarchi@intel.com>
Date: Tue, 13 Apr 2021 12:24:48 +0300
Message-ID: <878s5miljz.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 01/12] drm/i915/display: use
 DISPLAY_VER() on remaining users
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

On Mon, 12 Apr 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> Commit 989634fb49ad ("drm/i915/audio: set HDA link parameters in driver")
> added INTEL_GEN() in the display code, where it should actually be using
> DISPLAY_VER(). Switch to the new macro.
>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 9671c8f6e892..9fe3a25710b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -1309,7 +1309,7 @@ static void i915_audio_component_init(struct drm_i915_private *dev_priv)
>  	if (DISPLAY_VER(dev_priv) >= 9) {
>  		aud_freq_init = intel_de_read(dev_priv, AUD_FREQ_CNTRL);
>  
> -		if (INTEL_GEN(dev_priv) >= 12)
> +		if (DISPLAY_VER(dev_priv) >= 12)
>  			aud_freq = AUD_FREQ_GEN12;
>  		else
>  			aud_freq = aud_freq_init;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
