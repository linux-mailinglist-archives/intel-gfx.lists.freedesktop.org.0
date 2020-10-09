Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 981F7288FF1
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Oct 2020 19:26:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547256ED6B;
	Fri,  9 Oct 2020 17:26:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F32E96ED6B
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Oct 2020 17:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1602264395;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Y6ikGGK6aHMQWPhD82bP38Tw8B11lHIqI5A5jkizye8=;
 b=M6BxPl7dJ38A3so/hfs2SfcCFIqcJM+bor1AQuA76Btpbs9NauYIcApaFIAPrjXMtZnfFQ
 nq3aQ38hXHFFlSos2yDjDniqwYL3sFy25VT5snwguVAdT6rF5Ff+dQ/kMEYKLFXeDgv3Ou
 3H+NeHzF8fJV0fAhHceU9LCEvM9E660=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-399-Xn63tzUXPvO23LwmqG5zzg-1; Fri, 09 Oct 2020 13:26:33 -0400
X-MC-Unique: Xn63tzUXPvO23LwmqG5zzg-1
Received: by mail-qk1-f200.google.com with SMTP id n125so7293366qke.19
 for <intel-gfx@lists.freedesktop.org>; Fri, 09 Oct 2020 10:26:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=Y6ikGGK6aHMQWPhD82bP38Tw8B11lHIqI5A5jkizye8=;
 b=I9ysAxkinY1BZWoB3E343QtImrIJW7FdmxY3K3VezGg1Ls0N2tD3hG/59bvY3PCCX0
 LP0xNSKh5INHa43sfhsqvtTnbwD5sFIRQ+imV5Gnqow5NM7r3pWjWaz8RKqHR5zHE5IU
 AAq6+kKtBItoelXIoWlsbbfpjf9G8O9QM1yNJcObeTa2/mPcFcsqA3XAHZvL5FTCAE71
 PgsBkr2yb9D9tQG1joBAcxMIafdh+RdsrTtcj92x24ZIVKorqewHvCiSNsCYvLK9Vkn2
 h+l+13T1qFc50rnYmwuUJenSFEBp3uVdyQ7UVbvO8ixnUMI9+Uj6ceGso5BCp5jsjFfu
 3d1A==
X-Gm-Message-State: AOAM5308MiMcxwrZXEL+H8NMwJDeUMjvqryzvdblnpgm4AJrg1qm5Xpa
 JQ0sEnf01GnwQFhiM1iLScAtXxD3XvRfsX46XHh4n4eLA3wfvOvry3JJePz5eJyckqa3jpIVHhR
 UMY8MzcmpXQuQIPcp8XLO7cylyKVA
X-Received: by 2002:a05:620a:1185:: with SMTP id
 b5mr14323731qkk.386.1602264393240; 
 Fri, 09 Oct 2020 10:26:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzp/SIm+I2tHWObGoz+HG1lGQmMTfmJLrFa/PeGFE7GwdStIYKbBNERYwy5v5frpjQ2xEoNwQ==
X-Received: by 2002:a05:620a:1185:: with SMTP id
 b5mr14323708qkk.386.1602264392973; 
 Fri, 09 Oct 2020 10:26:32 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id m18sm6767237qkg.77.2020.10.09.10.26.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Oct 2020 10:26:32 -0700 (PDT)
Message-ID: <983f12944c0f14a7eee7d77bac98203a5c18981c.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Aaron Ma <aaron.ma@canonical.com>, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 mapengyu@gmail.com, daniel@ffwll.ch, airlied@linux.ie, tzimmermann@suse.de,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 rodrigo.vivi@intel.com,  joonas.lahtinen@linux.intel.com,
 jani.nikula@linux.intel.com,  ville.syrjala@linux.intel.com
Date: Fri, 09 Oct 2020 13:26:31 -0400
In-Reply-To: <20201009085750.88490-1-aaron.ma@canonical.com>
References: <20201009085750.88490-1-aaron.ma@canonical.com>
Organization: Red Hat
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-gfx] (Cc: drm-misc/intel maintainers) Re: [PATCH 1/2]
 drm/i915/dpcd_bl: uncheck PWM_PIN_CAP when detect eDP backlight
 capabilities
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For the whole series:

For the whole series:

Reviewed-by: Lyude Paul <lyude@redhat.com>

I'm going to add a Cc for stable so that it can be backported, and I'll push it
to drm-intel-next-queued once I get the OK from drm-misc/i915 folks

On Fri, 2020-10-09 at 16:57 +0800, Aaron Ma wrote:
> BOE panel with ID 2270 claims both PWM_PIN_CAP and AUX_SET_CAP backlight
> control bits, but default chip backlight failed to control brightness.
> 
> Check AUX_SET_CAP and proceed to check quirks or VBT backlight type.
> DPCD can control the brightness of this pannel.
> 
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index acbd7eb66cbe..308b14159b7c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -334,8 +334,7 @@ intel_dp_aux_display_control_capable(struct
> intel_connector *connector)
>  	 * the panel can support backlight control over the aux channel
>  	 */
>  	if (intel_dp->edp_dpcd[1] & DP_EDP_TCON_BACKLIGHT_ADJUSTMENT_CAP &&
> -	    (intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP) &&
> -	    !(intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_PWM_PIN_CAP))
> {
> +	    (intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP)) {
>  		drm_dbg_kms(&i915->drm, "AUX Backlight Control Supported!\n");
>  		return true;
>  	}
-- 
Sincerely,
      Lyude Paul (she/her)
      Software Engineer at Red Hat

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
