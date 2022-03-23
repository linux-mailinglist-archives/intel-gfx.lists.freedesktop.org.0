Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DE64E4FF4
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 11:03:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C95910E65C;
	Wed, 23 Mar 2022 10:03:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E98310E65C
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 10:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648029836; x=1679565836;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2kzSBxKwJ9Zwpb3yhRs0rJdXg5H9Sp/G7Puc8O6za9k=;
 b=P42Q5SrB3i+7e2lW5YueVYs9GJAGcgptC/kHePxY9Yjs53H5/DutZcvQ
 aFOvMaCkvNYYeB/iwgTfgEEwSc02EE5VM0tpCNopmP3C8Iyg6almsWSRg
 lKQzZXoIQ3ROq3aV6QXiSDwQk6+oC+sKfblDW8jSNEMsL997UxNX4OY4l
 eJ6r2M5F9r+3wZskrqnIXdqS6n6KeLdkTcsPHiem+YJVA0p2sXvB50aPK
 cibQSFPk5bp3ECbHfMCaN3NhwBIpmZZcdF+BGLKQVa4Iw+TjsJyy7/8wy
 sa80FgcQog0S5mcZuSx0XMb3YVlVxAgWnJkYoc0EmQeCdgJmnWZxw0tvd w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="255634852"
X-IronPort-AV: E=Sophos;i="5.90,203,1643702400"; d="scan'208";a="255634852"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 03:03:55 -0700
X-IronPort-AV: E=Sophos;i="5.90,203,1643702400"; d="scan'208";a="560829767"
Received: from caliyanx-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.57.47])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 03:03:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220321044330.27723-1-cooper.chiou@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220321044330.27723-1-cooper.chiou@intel.com>
Date: Wed, 23 Mar 2022 12:03:51 +0200
Message-ID: <875yo5j88o.fsf@intel.com>
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

Out of curiosity, what does the CTA DisplayID Data Block have for Data
Block revision?

I haven't found any mention anywhere that it should have any
correspondence to the CEA *extension* revision number, which is supposed
to be 1..3, and really only 3 for about a decade now.

Both the DisplayID v1.3 and v2.0 specs only mention revision 0.

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
