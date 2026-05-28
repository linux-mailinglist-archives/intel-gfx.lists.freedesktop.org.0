Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFeXGv3MGGpjnggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 01:17:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0088A5FB4EC
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 01:17:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C4AD10F6F3;
	Thu, 28 May 2026 23:17:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="ez5z8Y3m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
 [209.85.167.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BBBF10F6F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2026 23:17:13 +0000 (UTC)
Received: by mail-oi1-f175.google.com with SMTP id
 5614622812f47-4855003fa6cso4612018b6e.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2026 16:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1780010232; x=1780615032;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vTeBdjW8HIH85jcvkS5iTaSEeXnu+jYoMCs0/egef4U=;
 b=ez5z8Y3mMGfO+5w84trHsmLIjAwflHeNv+jLU/258TlNkqJqahpT6NIkWvFC3nSjdo
 NFH6CHrGRzapSvlhRtGuz+gqcwqhAd24qbxHMRxrhTTEV5JFxIq7yiG0hcTmMlCKEcla
 M9tX9/r6FNE78WdGVYs4Qw1Asqw8r5Ch+s/7A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780010232; x=1780615032;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=vTeBdjW8HIH85jcvkS5iTaSEeXnu+jYoMCs0/egef4U=;
 b=GoAvnh13rnwowBT7oQjXYWIaYmbCzdmORZzxTf0cYAGNTUAXynm1rinSTr0gQ9e5aw
 /wlfXbG42vvl+CZID3nUiBGezqF4y3xemZsrMzYiOgYNc7fgg9xTxcOCKxdpoVHySBlA
 lGz3n5UKJNBjHfhNLQpVfP+iXhXiPrCvkWcFDFjSZ8Mo1kw/npb3jcyqLcUsAR4odHPU
 DrKBgDf00CZmev9fNynJbxjmiaZvl+bK5QY/s9Vi7x3vfDXozWCoNN4AmIsPjx4TAEUD
 7j8yBY7MgS20+t7f7Nv/oOYPOuQongTayCBWd0jKpuRYL0TARoGDNYYjQbSZjE6/Zv++
 +EqA==
X-Gm-Message-State: AOJu0Yy4cIckl6Chwqa4M5Qk4Gn8imvUvZzMUFr52njkvvzKE2vGWrhl
 b0tFsN3WWahtteu+3dLRXS+8RH5WI6u72o1G06AXh0qbwyom0RYc9uhkerY9pV3xYjOBp/8yJLr
 gQKsc2E96
X-Gm-Gg: Acq92OFPcjXOZVbL2QEj7ItLKdTjRN4tZ2CtoH6dh4WN8Xn+WwfSf5LMOKkeM5E3yiE
 8AWKWhL+pNVdxHVIjhD2XCA8GJKFpOr76OdKfk/cSlaD20yeV39Dkg8juvOAX1qbS5dwR7BpqWS
 Fk+cpqrXAcoFVuUuR91/vm1GGSk5YoPUxXiLQCNkcmqLD2d+3XwaY9c74mEBntd4+hC5tmeiOUN
 8Hr9LPKcUY+vbtVBTfoQ5acc5f0diAeCghHBpTZrPs4cQDpQm+Xr/jPOFzR11SoHvjq+KU7RBZX
 hA31q2s0TxGH4QZOhRj/jL9j3ZIoIWv5KOT6blbkSuoVYjRrCRV5Dtp1YJ7fNfFJk3AY3euflXQ
 BRpR0kBOWRgGSKyrzdI+Qwgjh8p4X7jCuhGUfuTQBxzSf99Yc/7ZuQbntNCkkhRp8a/4dUPcdPY
 6jk2+BTye6rxIDlOiI/8PdYLaRbCnmnWmL7YsUU4+d3am2Q+WX3+6TGUCs+TpuAA0X2iVrlFq9J
 Ko1PLZ7Rck=
X-Received: by 2002:a05:6808:3403:b0:455:f0e4:4f89 with SMTP id
 5614622812f47-485e69d5289mr416061b6e.3.1780010232498; 
 Thu, 28 May 2026 16:17:12 -0700 (PDT)
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com.
 [209.85.160.41]) by smtp.gmail.com with ESMTPSA id
 5614622812f47-48554736ecdsm10374419b6e.14.2026.05.28.16.17.08
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 May 2026 16:17:11 -0700 (PDT)
Received: by mail-oa1-f41.google.com with SMTP id
 586e51a60fabf-43acf1694daso7653574fac.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2026 16:17:08 -0700 (PDT)
X-Received: by 2002:a05:6870:214b:b0:423:9219:4c6 with SMTP id
 586e51a60fabf-43c8c3ee10cmr157564fac.13.1780010227881; Thu, 28 May 2026
 16:17:07 -0700 (PDT)
MIME-Version: 1.0
References: <20260511053213.3122314-1-chaitanya.kumar.borah@intel.com>
 <20260511053213.3122314-5-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260511053213.3122314-5-chaitanya.kumar.borah@intel.com>
From: Sean Paul <seanpaul@chromium.org>
Date: Thu, 28 May 2026 19:16:30 -0400
X-Gmail-Original-Message-ID: <CAOw6vb+Q=WzaFpHgbBYmxvQajL=dcEO9PAmfAP0mZ7DQT4Emew@mail.gmail.com>
X-Gm-Features: AVHnY4J662srQ9Hu_UDZ5nTbfLq_lZ8rwnh6EIbPFEATsb1wHNC_KLvW4cwrkhA
Message-ID: <CAOw6vb+Q=WzaFpHgbBYmxvQajL=dcEO9PAmfAP0mZ7DQT4Emew@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] drm/i915: Fix color blob reference handling in
 intel_plane_state
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 ville.syrjala@linux.intel.com, uma.shankar@intel.com, pranay.samala@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:chaitanya.kumar.borah@intel.com,m:intel-xe@lists.freedesktop.org,m:ville.syrjala@linux.intel.com,m:uma.shankar@intel.com,m:pranay.samala@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[seanpaul@chromium.org,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[chromium.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[seanpaul@chromium.org,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,mail.gmail.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 0088A5FB4EC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 11, 2026 at 1:56=E2=80=AFAM Chaitanya Kumar Borah
<chaitanya.kumar.borah@intel.com> wrote:
>
> Take proper references for hw color blobs (degamma_lut, gamma_lut,
> ctm, lut_3d) in intel_plane_duplicate_state() and drop them in
> intel_plane_destroy_state().
>
> v2:
> - handle blobs in hw state clear
>
> Fixes: 3b7476e786c2 ("drm/i915/color: Add framework to program PRE/POST C=
SC LUT")
> Fixes: a78f1b6baf4d ("drm/i915/color: Add framework to program CSC")
> Fixes: 65db7a1f9cf7 ("drm/i915/color: Add 3D LUT to color pipeline")

These are in 6.19+, you probably want cc stable as well.

Sean

> Reviewed-by: Pranay Samala <pranay.samala@intel.com> #v1
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_plane.c | 27 ++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm=
/i915/display/intel_plane.c
> index 559eef467dda..54b2c32473cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -145,6 +145,15 @@ intel_plane_duplicate_state(struct drm_plane *plane)
>         if (intel_state->hw.fb)
>                 drm_framebuffer_get(intel_state->hw.fb);
>
> +       if (intel_state->hw.degamma_lut)
> +               drm_property_blob_get(intel_state->hw.degamma_lut);
> +       if (intel_state->hw.gamma_lut)
> +               drm_property_blob_get(intel_state->hw.gamma_lut);
> +       if (intel_state->hw.ctm)
> +               drm_property_blob_get(intel_state->hw.ctm);
> +       if (intel_state->hw.lut_3d)
> +               drm_property_blob_get(intel_state->hw.lut_3d);
> +
>         return &intel_state->uapi;
>  }
>
> @@ -168,6 +177,16 @@ intel_plane_destroy_state(struct drm_plane *plane,
>         __drm_atomic_helper_plane_destroy_state(&plane_state->uapi);
>         if (plane_state->hw.fb)
>                 drm_framebuffer_put(plane_state->hw.fb);
> +
> +       if (plane_state->hw.degamma_lut)
> +               drm_property_blob_put(plane_state->hw.degamma_lut);
> +       if (plane_state->hw.gamma_lut)
> +               drm_property_blob_put(plane_state->hw.gamma_lut);
> +       if (plane_state->hw.ctm)
> +               drm_property_blob_put(plane_state->hw.ctm);
> +       if (plane_state->hw.lut_3d)
> +               drm_property_blob_put(plane_state->hw.lut_3d);
> +
>         kfree(plane_state);
>  }
>
> @@ -340,6 +359,14 @@ static void intel_plane_clear_hw_state(struct intel_=
plane_state *plane_state)
>  {
>         if (plane_state->hw.fb)
>                 drm_framebuffer_put(plane_state->hw.fb);
> +       if (plane_state->hw.degamma_lut)
> +               drm_property_blob_put(plane_state->hw.degamma_lut);
> +       if (plane_state->hw.gamma_lut)
> +               drm_property_blob_put(plane_state->hw.gamma_lut);
> +       if (plane_state->hw.ctm)
> +               drm_property_blob_put(plane_state->hw.ctm);
> +       if (plane_state->hw.lut_3d)
> +               drm_property_blob_put(plane_state->hw.lut_3d);
>
>         memset(&plane_state->hw, 0, sizeof(plane_state->hw));
>  }
> --
> 2.25.1
>
