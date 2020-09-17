Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2AD26E1F8
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 19:13:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 021746EC6A;
	Thu, 17 Sep 2020 17:13:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27B2C6EC66
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 17:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1600362820;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=R5Giy3pb7mVUdcZBLmo1lhHDTImU6CjlXa3DqKD6Eys=;
 b=SezRXcwd2VVHePOd17MNAWZKZ9iZy1k1xaAGXWFh8frs8OxKeUctza0lb4iE7RK2xkRKSO
 MT0dNdnISw0EzHTwys8KzplI6/0qpB7BalRnTBE1QuUAO9bN/6rfB2eFLv3vCMzSNBMdZQ
 YbX8WIFSJm9sWsdaEVttOBr8Y4Yyj0k=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-342-GAgVIAtvNkKdc1idW5DPjg-1; Thu, 17 Sep 2020 13:13:36 -0400
X-MC-Unique: GAgVIAtvNkKdc1idW5DPjg-1
Received: by mail-qk1-f199.google.com with SMTP id w64so2081502qkc.14
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 10:13:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=R5Giy3pb7mVUdcZBLmo1lhHDTImU6CjlXa3DqKD6Eys=;
 b=JWtHiu8qmK6+eyM8x+JZUsCxR3YJBYME2Qy6ZEWhsylmGMoEaM8kD2iPeBigw0VXk6
 i89iWsLMqkRJMgjo1rLRX0JAx+h/t6q9yBIQBz2WYF6n1S6tkexJjA0VG7ZHmeu50D2e
 MpOiPraCgLF/P9JAHcwjkW9PZxQwSOai+YrFy5U4oyDRW+CpGkY/AXJXCrIcBjoud74Z
 d0UQ2x+r8+LEDUGz3r+bM70odvskFmcVC0ijhPKFTFWEtWQZrJE1aB802glm2VklPjhB
 fGu5V8QIWih+ZkW5T9rIs94VdtzT6CpOfNeumnQXE4IuX1sesozzjXIVAH6Z78KrcwoI
 BQFw==
X-Gm-Message-State: AOAM530RT78AN5fmyGrYNA4xzFRrJVTUy6ZuDBwvFmB6g5i1iWQ/I5+n
 F617GqpuYoUmp39Uvc3635SnAwqJ+81nCPUtfOtVWr6C94Ge4MZwNe3H28dfvVTydm1KwFZylEW
 UrUyc+81jnm5j0iOEDLV6Li3t/NDH
X-Received: by 2002:ac8:6d2a:: with SMTP id r10mr16338838qtu.170.1600362815777; 
 Thu, 17 Sep 2020 10:13:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJywWBBwogqD1foqYaNxQhSJC0353wgg9g7rnNNSB2B7DeloFewhmFnlF/HxmRY7Id6CIydECA==
X-Received: by 2002:ac8:6d2a:: with SMTP id r10mr16338811qtu.170.1600362815477; 
 Thu, 17 Sep 2020 10:13:35 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id 205sm256381qki.118.2020.09.17.10.13.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Sep 2020 10:13:34 -0700 (PDT)
Message-ID: <e3dfb952555890779ad0717370786bf748955494.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Kevin Chowski <chowski@chromium.org>, LKML <linux-kernel@vger.kernel.org>
Date: Thu, 17 Sep 2020 13:13:33 -0400
In-Reply-To: <20200917110838.1.I63d52f5b96d7e81e1e2dc2a72c4bf5fd84d3d3d0@changeid>
References: <20200917110838.1.I63d52f5b96d7e81e1e2dc2a72c4bf5fd84d3d3d0@changeid>
Organization: Red Hat
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] i915: Introduce quirk for shifting eDP
 brightness.
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
Reply-To: lyude@redhat.com
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Just an FYI, my plan for some of this eDP backlight code is to move as much of
it into helpers as possible since we need to implement the same interface in
nouveau. We probably can figure out some other solution for handling this quirk
if this isn't possible, but could we maybe use the panel's OUI here and add a
quirk to drm_dp_helper.c instead?

On Thu, 2020-09-17 at 11:09 -0600, Kevin Chowski wrote:
> We have observed that Google Pixelbook's backlight hardware is
> interpretting these backlight bits from the most-significant side of the
> 16 bit word (if DP_EDP_PWMGEN_BIT_COUNT < 16), whereas the driver code
> assumes the peripheral cares about the least-significant bits.
> 
> Testing was done from within Chrome OS's build environment when the
> patch is backported to 5.4 (the version we are newly targeting for the
> Pixelbook); for the record:
>    $ emerge-eve-kernelnext sys-kernel/chromeos-kernel-5_4 && \
>       ./update_kernel.sh --remote=$IP
> 
> I used `/sys/kernel/debug/dri/0/eDP-1/i915_dpcd` on my laptop to verify
> that the registers were being set according to what the actual hardware
> expects; I also observe that the backlight is noticeably brighter with
> this patch.
> 
> Signed-off-by: Kevin Chowski <chowski@chromium.org>
> ---
> 
>  .../drm/i915/display/intel_dp_aux_backlight.c | 34 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_quirks.c   | 13 +++++++
>  drivers/gpu/drm/i915/i915_drv.h               |  1 +
>  3 files changed, 48 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index acbd7eb66cbe3..99c98f217356d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -91,6 +91,23 @@ static u32 intel_dp_aux_get_backlight(struct
> intel_connector *connector)
>  	if (intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_BYTE_COUNT)
>  		level = (read_val[0] << 8 | read_val[1]);
>  
> +	if (i915->quirks & QUIRK_SHIFT_EDP_BACKLIGHT_BRIGHTNESS) {
> +		if (!drm_dp_dpcd_readb(&intel_dp->aux, DP_EDP_PWMGEN_BIT_COUNT,
> +						&read_val[0])) {
> +			DRM_DEBUG_KMS("Failed to read DPCD register 0x%x\n",
> +					DP_EDP_PWMGEN_BIT_COUNT);
> +			return 0;
> +		}
> +		// Only bits 4:0 are used, 7:5 are reserved.
> +		read_val[0] = read_val[0] & 0x1F;
> +		if (read_val[0] > 16) {
> +			DRM_DEBUG_KMS("Invalid DP_EDP_PWNGEN_BIT_COUNT 0x%X,
> expected at most 16\n",
> +						read_val[0]);
> +			return 0;
> +		}
> +		level >>= 16 - read_val[0];
> +	}
> +
>  	return level;
>  }
>  
> @@ -106,6 +123,23 @@ intel_dp_aux_set_backlight(const struct
> drm_connector_state *conn_state, u32 lev
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	u8 vals[2] = { 0x0 };
>  
> +	if (i915->quirks & QUIRK_SHIFT_EDP_BACKLIGHT_BRIGHTNESS) {
> +		if (!drm_dp_dpcd_readb(&intel_dp->aux, DP_EDP_PWMGEN_BIT_COUNT,
> +						&vals[0])) {
> +			DRM_DEBUG_KMS("Failed to write aux backlight level:
> Failed to read DPCD register 0x%x\n",
> +					  DP_EDP_PWMGEN_BIT_COUNT);
> +			return;
> +		}
> +		// Only bits 4:0 are used, 7:5 are reserved.
> +		vals[0] = vals[0] & 0x1F;
> +		if (vals[0] > 16) {
> +			DRM_DEBUG_KMS("Failed to write aux backlight level:
> Invalid DP_EDP_PWNGEN_BIT_COUNT 0x%X, expected at most 16\n",
> +						vals[0]);
> +			return;
> +		}
> +		level <<= (16 - vals[0]) & 0xFFFF;
> +	}
> +
>  	vals[0] = level;
>  
>  	/* Write the MSB and/or LSB */
> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c
> b/drivers/gpu/drm/i915/display/intel_quirks.c
> index 46beb155d835f..63b27d49b2864 100644
> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
> @@ -53,6 +53,16 @@ static void quirk_increase_ddi_disabled_time(struct
> drm_i915_private *i915)
>  	drm_info(&i915->drm, "Applying Increase DDI Disabled quirk\n");
>  }
>  
> +/*
> + * Some eDP backlight hardware uses the most-significant bits of the
> brightness
> + * register, so brightness values must be shifted first.
> + */
> +static void quirk_shift_edp_backlight_brightness(struct drm_i915_private
> *i915)
> +{
> +	i915->quirks |= QUIRK_SHIFT_EDP_BACKLIGHT_BRIGHTNESS;
> +	DRM_INFO("Applying shift eDP backlight brightness quirk\n");
> +}
> +
>  struct intel_quirk {
>  	int device;
>  	int subsystem_vendor;
> @@ -156,6 +166,9 @@ static struct intel_quirk intel_quirks[] = {
>  	/* ASRock ITX*/
>  	{ 0x3185, 0x1849, 0x2212, quirk_increase_ddi_disabled_time },
>  	{ 0x3184, 0x1849, 0x2212, quirk_increase_ddi_disabled_time },
> +
> +	/* Google Pixelbook */
> +	{ 0x591E, 0x8086, 0x2212, quirk_shift_edp_backlight_brightness },
>  };
>  
>  void intel_init_quirks(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index e4f7f6518945b..cc93bede4fab8 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -525,6 +525,7 @@ struct i915_psr {
>  #define QUIRK_PIN_SWIZZLED_PAGES (1<<5)
>  #define QUIRK_INCREASE_T12_DELAY (1<<6)
>  #define QUIRK_INCREASE_DDI_DISABLED_TIME (1<<7)
> +#define QUIRK_SHIFT_EDP_BACKLIGHT_BRIGHTNESS (1<<8)
>  
>  struct intel_fbdev;
>  struct intel_fbc_work;
-- 
Sincerely,
      Lyude Paul (she/her)
      Software Engineer at Red Hat

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
