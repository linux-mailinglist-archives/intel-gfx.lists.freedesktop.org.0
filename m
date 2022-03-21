Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 748AA4E22EA
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 10:05:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A67C510E122;
	Mon, 21 Mar 2022 09:05:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 020A210E122
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 09:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647853542; x=1679389542;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ukh6TEwFKeRx7m3zY7Pk+ymrw4m2Z4KPYwj+KXlE1h4=;
 b=GqOdjnbEUmkE/AtwetOOwWJnoZe7F62EcqZzZT8tnSpe1Eh4i5GEBA1Q
 k2bWQJRLu2lUgSmYl9P5vruC1g2NyBMMtrgXPdh7ZLLGktNwj3UWyIfdA
 AyhQpo+i4nALlOVwA0ylARTRXJ/iIE5ujvhOaKCNyVUE64v34WxLO4i32
 PmEICJwwUJIByQtVHBLeqkNtAVIfoHq87JisXJ0XJYL7HQCR33hEs5JyG
 IjqYr4psIA+j6FG8Tle4fgZLwt0ZPHN8/91VlQZJLPhq7aFrrycsGIEMF
 OS/Nn3tl3mgOui0vs1yW3jIjlub/zEvNKzKsxOHFTAYtaq82Dg8iik/Nl g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="282330931"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="282330931"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 02:05:42 -0700
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="559782102"
Received: from abhijitc-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.34.12])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 02:05:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220321044330.27723-1-cooper.chiou@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220321044330.27723-1-cooper.chiou@intel.com>
Date: Mon, 21 Mar 2022 11:05:33 +0200
Message-ID: <87h77rllpe.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/edid: filter DisplayID v2.0 CTA block
 in audio detection
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
Cc: Cooper Chiou <cooper.chiou@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 21 Mar 2022, Cooper Chiou <cooper.chiou@intel.com> wrote:
> In DisplayID v2.0 CTS data block 0x81 case, there is no any audio
> information definition, but drm_detect_monitor_audio didn't filter
> it so that it caused eDP dummy audio card be detected improperly.
>
> We observed this issue on some AUO/BOE eDP panel with DID v2.0 CTA
> block, and fix issue by adding filter for edid_ext[0]=DATA_BLOCK_CTA
> case.

Please let's not add hacks like this, at all.

BR,
Jani.

>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Shawn C Lee <shawn.c.lee@intel.com>
>
> Signed-off-by: Cooper Chiou <cooper.chiou@intel.com>
> ---
>  drivers/gpu/drm/drm_edid.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> index f5f5de362ff2..6c9ae4b130bd 100644
> --- a/drivers/gpu/drm/drm_edid.c
> +++ b/drivers/gpu/drm/drm_edid.c
> @@ -4845,7 +4845,7 @@ bool drm_detect_monitor_audio(struct edid *edid)
>  	int start_offset, end_offset;
>  
>  	edid_ext = drm_find_cea_extension(edid);
> -	if (!edid_ext)
> +	if (!edid_ext || (edid_ext[0] == DATA_BLOCK_CTA))
>  		goto end;
>  
>  	has_audio = ((edid_ext[3] & EDID_BASIC_AUDIO) != 0);

-- 
Jani Nikula, Intel Open Source Graphics Center
