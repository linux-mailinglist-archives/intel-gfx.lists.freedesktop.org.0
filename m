Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C49DC286CC4
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 04:32:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D1426EA05;
	Thu,  8 Oct 2020 02:32:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DB296EA05
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 02:32:17 +0000 (UTC)
Received: from mail-pf1-f199.google.com ([209.85.210.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1kQLj5-0005Y9-BK
 for intel-gfx@lists.freedesktop.org; Thu, 08 Oct 2020 02:32:15 +0000
Received: by mail-pf1-f199.google.com with SMTP id k4so2692237pff.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Oct 2020 19:32:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=WaLLCnozNIzQ1r5C2Z6XspFXu6ao9ONVd8SifGFTtSg=;
 b=lUApqOlinZ41viQYAiP5vj7eoEBJxaAIFPF1wsoEIwqk7vxFEVXANfr6ua5ApLQ/q/
 gWLpyiAOWhXY8F/Aazx4mls6NSk2+p5eEGYzUQdmlo6T5iIO1FNy78Yk5r7jph7hJG8M
 RJSB7szt81bON/KUS6xvrb9Niz/5DV8NxfTBGrJgVFQpGtvRlZDgnboeS9EFx5Ay0f6f
 m7VFgDbO2UYqiDv+ckIXMgkInhxqNFsbli37L0VXZE0dFnBpE9ov3Hv2eUO3OGCpoZTh
 EhYCzTxDWKQg6ax9kn/f5DdWPSAriqT91WBiSKMl5a9VI0ijgJ+VQrbOvvAcOiFVqX/s
 JMJQ==
X-Gm-Message-State: AOAM532R+J8XLrQ/0jZa6c6gv5G2sRQH6OkhQNXua4L0GdPGvrlgULzu
 C3g9LtNp4VdF5xdPzv4JM7knLMRi9xo7S6iNlF/FwRkOq5QwMINAjqN14atkT0kPzPWlVjVPVJS
 6gs30XRZ95y7WgVnwV+e2HC7raV4xNpPMEjJbTJoy4RxMuw==
X-Received: by 2002:a62:88c6:0:b029:151:fa4e:a52f with SMTP id
 l189-20020a6288c60000b0290151fa4ea52fmr5414622pfd.50.1602124333942; 
 Wed, 07 Oct 2020 19:32:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyYaxP6TzYQgm3m3RC+U8ZDTOxm794OVOfBCgv9EDu2B4QeFW53oN7cuwhhfGetD2Fa7vBHpw==
X-Received: by 2002:a62:88c6:0:b029:151:fa4e:a52f with SMTP id
 l189-20020a6288c60000b0290151fa4ea52fmr5414605pfd.50.1602124333596; 
 Wed, 07 Oct 2020 19:32:13 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id b16sm4829172pfp.195.2020.10.07.19.32.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Oct 2020 19:32:12 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <268f495fbb7e3042eb613398a8513a83d28d3fd9.camel@redhat.com>
Date: Thu, 8 Oct 2020 10:32:09 +0800
Message-Id: <D18BA369-25A0-4D5E-A171-9EACF7DC950B@canonical.com>
References: <20201007065915.13883-1-kai.heng.feng@canonical.com>
 <268f495fbb7e3042eb613398a8513a83d28d3fd9.camel@redhat.com>
To: lyude@redhat.com
X-Mailer: Apple Mail (2.3608.120.23.2.4)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dpcd_bl: Skip testing control
 capability with force DPCD quirk
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Lyude,

> On Oct 8, 2020, at 05:53, Lyude Paul <lyude@redhat.com> wrote:
> 
> Hi! I thought this patch rang a bell, we actually already had some discussion
> about this since there's a couple of other systems this was causing issues for.
> Unfortunately it never seems like that patch got sent out. Satadru?
> 
> (if I don't hear back from them soon, I'll just send out a patch for this
> myself)
> 
> JFYI - the proper fix here is to just drop the
> DP_EDP_BACKLIGHT_BRIGHTNESS_PWM_PIN_CAP check from the code entirely. As long as
> the backlight supports AUX_SET_CAP, that should be enough for us to control it.

Does the proper fix include dropping DP_QUIRK_FORCE_DPCD_BACKLIGHT entirely?

Kai-Heng

> 
> 
> On Wed, 2020-10-07 at 14:58 +0800, Kai-Heng Feng wrote:
>> HP DreamColor panel needs to be controlled via AUX interface. However,
>> it has both DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP and
>> DP_EDP_BACKLIGHT_BRIGHTNESS_PWM_PIN_CAP set, so it fails to pass
>> intel_dp_aux_display_control_capable() test.
>> 
>> Skip the test if the panel has force DPCD quirk.
>> 
>> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
>> ---
>> drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 10 ++++++----
>> 1 file changed, 6 insertions(+), 4 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> index acbd7eb66cbe..acf2e1c65290 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> @@ -347,9 +347,13 @@ int intel_dp_aux_init_backlight_funcs(struct
>> intel_connector *intel_connector)
>> 	struct intel_panel *panel = &intel_connector->panel;
>> 	struct intel_dp *intel_dp = enc_to_intel_dp(intel_connector->encoder);
>> 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> +	bool force_dpcd;
>> +
>> +	force_dpcd = drm_dp_has_quirk(&intel_dp->desc, intel_dp->edid_quirks,
>> +				      DP_QUIRK_FORCE_DPCD_BACKLIGHT);
>> 
>> 	if (i915->params.enable_dpcd_backlight == 0 ||
>> -	    !intel_dp_aux_display_control_capable(intel_connector))
>> +	    (!force_dpcd &&
>> !intel_dp_aux_display_control_capable(intel_connector)))
>> 		return -ENODEV;
>> 
>> 	/*
>> @@ -358,9 +362,7 @@ int intel_dp_aux_init_backlight_funcs(struct
>> intel_connector *intel_connector)
>> 	 */
>> 	if (i915->vbt.backlight.type !=
>> 	    INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE &&
>> -	    i915->params.enable_dpcd_backlight != 1 &&
>> -	    !drm_dp_has_quirk(&intel_dp->desc, intel_dp->edid_quirks,
>> -			      DP_QUIRK_FORCE_DPCD_BACKLIGHT)) {
>> +	    i915->params.enable_dpcd_backlight != 1 && !force_dpcd) {
>> 		drm_info(&i915->drm,
>> 			 "Panel advertises DPCD backlight support, but "
>> 			 "VBT disagrees. If your backlight controls "
> -- 
> Sincerely,
>      Lyude Paul (she/her)
>      Software Engineer at Red Hat

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
