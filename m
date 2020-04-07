Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 405541A0CF9
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 13:41:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4708C6E83D;
	Tue,  7 Apr 2020 11:41:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70AEE6E83D
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 11:41:04 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id a25so3539871wrd.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2020 04:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=5iiZpffXjNK43CNngdOAgjVSIq3PATgymVFv/r2v1WY=;
 b=Qi81p5NNrLtHg6Hw2APY+vGLIWd63YDn/8NMOszOz5WbV0MQe4S4nSHI1KDQHZS4/V
 KVU4FG4xPlDvdSkJTF5gv/3lBIDw20I8hAaj8j9c+pXPrHmY/Nl14godVsi1PC1ZHcEZ
 RgjaNsSSnMsYOqTFh6bWoJ+xDLg0lK4alhl6wFFBYBnNwXjzV7X+Qsdor42ISzmdd+v+
 /ekiTSROM/mg691wD5WWfjytvQGJRAODqNQ0OkBERS8jeg2RtmcFVaw1RhLZF3h+9F3w
 ubn7n9bZx+SElnPS8fY1BaT3e3VCxuEW7l+fdSmfjsAithvZpJ9BlIjofUpYq7CGmVpt
 teMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=5iiZpffXjNK43CNngdOAgjVSIq3PATgymVFv/r2v1WY=;
 b=Eyk0LuGC79I7OM6eHfNg4NSwA+zgURERV+GqcBRTln7IJqjDiRrLD91yhpO8E2loXm
 zn3cdL3rHwRcOoHfi8apXVTnAoPAHqaJ2/9diQL3Ah8s+keRrL+KFfkGi/PscyYRgA8w
 gMXS94U7pHROwHp34GygRASmaF7rkamCdTUrQTjg+JvNv48GkYj5l1QijN60VWmzACzz
 J0an5NoDpr1Vou43GjHYxC9UqcE4J7ZT4HjZwzBu8mbI4Kr66UV053E9PxjzVpHRlXTF
 POeJG3Kl2bUmwREv4r1EsHmzGf8/6uCp2rXQvYOafpWgro6i3FwQsMqDZHVOI3A2jeMW
 /SGA==
X-Gm-Message-State: AGi0PuZmW0U8bih1GIaxIb6mEu4W7IUIaJLk9QQv4FJ4mUnMsRGfnKdc
 BAtUkmLZM+QV78e/hpmJEGw=
X-Google-Smtp-Source: APiQypLCbJM/6mkjU6cTgErzrtWraEJqDN4yyO85JxaGAsCewoKUCR/5hNxA5Zs+maeMgysAcohP7w==
X-Received: by 2002:adf:ef8d:: with SMTP id d13mr540403wro.197.1586259663109; 
 Tue, 07 Apr 2020 04:41:03 -0700 (PDT)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id z17sm20562820wru.39.2020.04.07.04.40.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 04:41:02 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Tue, 7 Apr 2020 14:40:49 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <20200402114819.17232-5-jani.nikula@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2004071439560.77089@wambui>
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <20200402114819.17232-5-jani.nikula@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 05/17] drm/i915/crt: use struct drm_device
 based logging
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On Thu, 2 Apr 2020, Jani Nikula wrote:

> Convert all the DRM_* logging macros to the struct drm_device based
> macros to provide device specific logging.
>
> No functional changes.
>
> Cc: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Wambui Karuga <wambui.karugax@gmail.com>

> ---
> drivers/gpu/drm/i915/display/intel_crt.c | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 78f9b6cde810..e80debe44d71 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -594,7 +594,8 @@ static struct edid *intel_crt_get_edid(struct drm_connector *connector,
> 	edid = drm_get_edid(connector, i2c);
>
> 	if (!edid && !intel_gmbus_is_forced_bit(i2c)) {
> -		DRM_DEBUG_KMS("CRT GMBUS EDID read failed, retry using GPIO bit-banging\n");
> +		drm_dbg_kms(connector->dev,
> +			    "CRT GMBUS EDID read failed, retry using GPIO bit-banging\n");
> 		intel_gmbus_force_bit(i2c, true);
> 		edid = drm_get_edid(connector, i2c);
> 		intel_gmbus_force_bit(i2c, false);
> -- 
> 2.20.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
