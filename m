Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 579A5D02DBB
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 14:08:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8F6710E70B;
	Thu,  8 Jan 2026 13:08:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MIZEsSKS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
 [209.85.218.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FF9910E6BA
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jan 2026 09:07:59 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id
 a640c23a62f3a-b8052725de4so413331066b.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jan 2026 01:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1767863278; x=1768468078; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=ddKz7Y/J4y7fWjjqZXZplFQIssHOnWYk3b1FaDfGiwA=;
 b=MIZEsSKSl8129YTLhn5Bg5PKB6k1FfzNWHZjD4GeXZv3Y73FHBqKCfuLZFd2nZaCQu
 qZP7GHJOIhS4fKswZIyJw2fZfMnp0vZQ93xJQr2etpzO9dX/8mgZn9Ko/srhbOHqJLke
 B9Qk2jrHoCcLeEkYQpvYsKK24zqnswMh5V0ksul46Aptfv4V3IncXmiiqGz7lLCBv+TU
 rVGKvZ7uk0NOE6hT+gaufq1iS749dwVCQq9RTx+iZNZQ295t5UID5IeyLMmEzIJs/Ppz
 KGewubj/cvENjuu5subMDbccyBLzvJfptuX7vZaWJcfxjRHd9hTAShTfoNqrKCONXqSb
 LiJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767863278; x=1768468078;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ddKz7Y/J4y7fWjjqZXZplFQIssHOnWYk3b1FaDfGiwA=;
 b=M3KpLAJfnCFvEdX5i0kekSJ3RIZlcwmJtpu2NkE8nTlsLTq78S1JfhjGrckGXTWrc5
 8oxW8OrUYvq2nPdKWxfsbbm5xAdUZANmOi+1yg9T9gpik9o6Gr1mkHb6skhkIt6gGg7k
 pnueRB2/rLEto6G8bcPbnuRgMu1ixiAdjOhfgv6vJidFo5dCqcJ8UmwzV+/IkG+22Npk
 fDPiMGXU9miKWQgrkPauDnEg9SCsR42bF0Nxn+b4UKVzDx4O1aovLHdT2BhbsYMg//Dk
 qQ4HVHcv6Mu0SlreeRKofipmYjLhbOLCcInKRGJ4V8uVoasabViMqJW3Df8cSFu/PQAJ
 eDsg==
X-Gm-Message-State: AOJu0YxFhhkdJ1/7/7fRNv7fxvNnFesvhLszvYIA39Jf+0bInlRiK3jF
 eN+ZLKG/IeIe0tkoDnRRsYc6cPj8/rxVFLyql5iUoA8N9j1aj3QnjPA3hwx9WgnyU/8BZU0V9Z5
 rUYkII2WBpMFwLNzWc6jt17k83RRH7UY=
X-Gm-Gg: AY/fxX5o5RrXMJdnfxvx6r5WHjcgiFKqVa41uUHf7kwQvxKjLH+NyLsK6vd71tGa4PP
 ffu2ZF2/yd+bXzyZzNpbYOsjlU86hVviyE5lLEVyFIKYop9F/RPM99XK3IYcPh+kH9lSpgZgFjE
 xTo54h7Ffo1eyBflo38RzPxR4qYddoVzIuujdscUxuRQL648yqOw/9sji9KDmpmDDHPCMz+F82q
 oen5V82beQL+kcp1ouN9l0Az91/psVpV6lTxj+Rt2Yl712HwBGImyN9wTXOskFqEsJ1752W989t
 vOXIU2DWVlduQqFmgu2QcOU4BbTyjU8VsCwiw6M=
X-Google-Smtp-Source: AGHT+IEs88z7b8NGI7m1AIRB2OeaRqVwBwrloa1elEjDGbd3rzoX7KgX5oU6A3Gxy90h5fwD3AR6wHi/ss2rkLA+vhc=
X-Received: by 2002:a17:907:72cf:b0:b73:9368:ad5e with SMTP id
 a640c23a62f3a-b8444f7084emr506299066b.34.1767863277612; Thu, 08 Jan 2026
 01:07:57 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?SsOpcsO0bWUgVG9sbGV0?= <jerome.tollet@gmail.com>
Date: Thu, 8 Jan 2026 10:07:46 +0100
X-Gm-Features: AQt7F2ruRCZWqkS3Q1hqQ6-Lzw16LZXDqqXReMK4qabP4wC2y9iwMiqJc8c1hW0
Message-ID: <CADN_a6OKUQ6fgu-JjNvwFb_MV8dxTDhppoq4DDnQ9p_t-JZ8yg@mail.gmail.com>
Subject: [PATCH v2] drm/i915/hdmi: Poll for 200 msec for TMDS_Scrambler_Status
To: Jani Nikula <jani.nikula@linux.intel.com>, rodrigo.vivi@intel.com, 
 ankit.k.nautiyal@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Thu, 08 Jan 2026 13:08:14 +0000
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

Hello,
As per HDMI 2.0 specification, after scrambled video transmission begins,
 the source must poll the TMDS_Scrambler_Status bit until it reads 1 or
 until a timeout of 200 ms.

 Add a polling step after enabling the HDMI port to verify scrambling
 status, following the spec requirement.

 Without the wait for the scrambling bit to set, some HDMI 2.0 monitors fail
 to decode the signal at 4K@60Hz (594 MHz) when SCDC scrambling is not yet
 fully configured by the sink.

 v2:
  - Instead of the fixed delay, poll for TMDS scramble status for 200 msec
    as per the HDMI spec. (Ankit)

 Reported-by: Jerome Tollet <jerome.tollet@gmail.com>
 Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6868
 Link: https://lore.kernel.org/dri-devel/20251230091037.5603-1-jerome.tollet@gmail.com/
 Signed-off-by: Jerome Tollet <jerome.tollet@gmail.com>
 Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
 ---
  drivers/gpu/drm/i915/display/intel_ddi.c  |  2 ++
  drivers/gpu/drm/i915/display/intel_hdmi.c | 25 +++++++++++++++++++++++
  drivers/gpu/drm/i915/display/intel_hdmi.h |  2 ++
  3 files changed, 29 insertions(+)

 diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
b/drivers/gpu/drm/i915/display/intel_ddi.c
 index cb91d07cdaa6..c708b713f0e8 100644
 --- a/drivers/gpu/drm/i915/display/intel_ddi.c
 +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
 @@ -3506,6 +3506,8 @@ static void intel_ddi_enable_hdmi(struct
intel_atomic_state *state,
  }

  intel_ddi_buf_enable(encoder, buf_ctl);
 +
 + intel_hdmi_poll_for_scrambling_enable(crtc_state, connector);
  }

  static void intel_ddi_enable(struct intel_atomic_state *state,
 diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
b/drivers/gpu/drm/i915/display/intel_hdmi.c
 index 055e68810d0d..958d939ae6ee 100644
 --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
 +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
 @@ -2694,6 +2694,31 @@ intel_hdmi_add_properties(struct intel_hdmi
*intel_hdmi, struct drm_connector *_
  drm_connector_attach_max_bpc_property(&connector->base, 8, 12);
  }

 +/*
 + * As Per HDMI 2.0 spec: after scrambled video transmission begins,
 + * poll TMDS_Scrambler_Status until it reads 1, for up to 200 ms.
 + */
 +void
 +intel_hdmi_poll_for_scrambling_enable(const struct intel_crtc_state
*crtc_state,
 +       struct drm_connector *_connector)
 +{
 + struct intel_connector *connector = to_intel_connector(_connector);
 + struct intel_display *display = to_intel_display(crtc_state);
 + bool scrambling_enabled = false;
 + int ret;
 +
 + if (!crtc_state->hdmi_scrambling)
 + return;
 +
 + /* Poll for a max of 200 msec as per HDMI spec */
 + ret = poll_timeout_us(scrambling_enabled =
drm_scdc_get_scrambling_status(&connector->base),
 +       scrambling_enabled, 1000, 200 * 1000, false);
 + if (ret)
 + drm_dbg_kms(display->drm,
 +     "[CONNECTOR:%d:%s] Timed out waiting for scrambling enable\n",
 +     connector->base.base.id, connector->base.name);
 +}
 +
  /*
   * intel_hdmi_handle_sink_scrambling: handle sink scrambling/clock ratio setup
   * @encoder: intel_encoder
 diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h
b/drivers/gpu/drm/i915/display/intel_hdmi.h
 index be2fad57e4ad..0fa3661568e8 100644
 --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
 +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
 @@ -70,5 +70,7 @@ void hsw_read_infoframe(struct intel_encoder *encoder,
  const struct intel_crtc_state *crtc_state,
  unsigned int type,
  void *frame, ssize_t len);
 +void intel_hdmi_poll_for_scrambling_enable(const struct
intel_crtc_state *crtc_state,
 +    struct drm_connector *_connector);

  #endif /* __INTEL_HDMI_H__ */
 --
 2.45.2
