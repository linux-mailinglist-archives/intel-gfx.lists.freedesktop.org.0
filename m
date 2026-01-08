Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 273E8D01E61
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 10:45:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3C1410E6D3;
	Thu,  8 Jan 2026 09:45:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y15CcPcF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBD9C10E6D3;
 Thu,  8 Jan 2026 09:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767865510; x=1799401510;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=kc31T/hoyCQI526nRB+gqjg8+IOOoh2x8rbt0K/NoUU=;
 b=Y15CcPcFyaEYjxtSalt2GnM9dFCROdqJ9A2AMXW4D06zLYedwPKzeZYP
 aYCMzxo/xlVw55I1hwv/2c9B0Y+jsmbQxj2MtJEovReaPuxsPOZG4/sLk
 n7SpX5Qjraq5LMN0gXXjEHEW8w4Mgxf4QytHyiXNgUlyP0/FXj2S24zNK
 Dia3REr+sg+tgI3rbZp6E7T2M3bHsLj+9vFxQZ48flI5ky3x5a7ajtgna
 TAmews3dhk0sny4WOiV8y7nSv/kAoZEICKVCvTloLilqzKqI1nhZMZzoe
 cc16gE6IhSzAEL/qzydrYQ7YvvHgQswsgTvvZ/NvGdZCsWL0HF1n2FY0+ A==;
X-CSE-ConnectionGUID: OempDnacQLO7NCnuPD0tpw==
X-CSE-MsgGUID: Paq1YAnpQ12VwYYB1jvypg==
X-IronPort-AV: E=McAfee;i="6800,10657,11664"; a="79960131"
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="79960131"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 01:45:10 -0800
X-CSE-ConnectionGUID: MnytnPgbTMqE9P1LeUB+4A==
X-CSE-MsgGUID: 8G4x97muT0mQmRFXTnqWDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="208001164"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.109])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 01:45:08 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?B?SsOpcsO0bWU=?= Tollet <jerome.tollet@gmail.com>,
 rodrigo.vivi@intel.com, ankit.k.nautiyal@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
In-Reply-To: <CADN_a6OKUQ6fgu-JjNvwFb_MV8dxTDhppoq4DDnQ9p_t-JZ8yg@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <CADN_a6OKUQ6fgu-JjNvwFb_MV8dxTDhppoq4DDnQ9p_t-JZ8yg@mail.gmail.com>
Date: Thu, 08 Jan 2026 11:45:04 +0200
Message-ID: <1afd1c1c255e96c95687175e9cc0c92041f8ccbc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
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

On Thu, 08 Jan 2026, J=C3=A9r=C3=B4me Tollet <jerome.tollet@gmail.com> wrot=
e:
> Hello,
> As per HDMI 2.0 specification, after scrambled video transmission begins,
>  the source must poll the TMDS_Scrambler_Status bit until it reads 1 or
>  until a timeout of 200 ms.
>
>  Add a polling step after enabling the HDMI port to verify scrambling
>  status, following the spec requirement.
>
>  Without the wait for the scrambling bit to set, some HDMI 2.0 monitors f=
ail
>  to decode the signal at 4K@60Hz (594 MHz) when SCDC scrambling is not yet
>  fully configured by the sink.
>
>  v2:
>   - Instead of the fixed delay, poll for TMDS scramble status for 200 msec
>     as per the HDMI spec. (Ankit)

The patch is whitespace broken.

>
>  Reported-by: Jerome Tollet <jerome.tollet@gmail.com>
>  Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6868
>  Link: https://lore.kernel.org/dri-devel/20251230091037.5603-1-jerome.tol=
let@gmail.com/
>  Signed-off-by: Jerome Tollet <jerome.tollet@gmail.com>
>  Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>  ---
>   drivers/gpu/drm/i915/display/intel_ddi.c  |  2 ++
>   drivers/gpu/drm/i915/display/intel_hdmi.c | 25 +++++++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_hdmi.h |  2 ++
>   3 files changed, 29 insertions(+)
>
>  diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
>  index cb91d07cdaa6..c708b713f0e8 100644
>  --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>  +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>  @@ -3506,6 +3506,8 @@ static void intel_ddi_enable_hdmi(struct
> intel_atomic_state *state,
>   }
>
>   intel_ddi_buf_enable(encoder, buf_ctl);
>  +
>  + intel_hdmi_poll_for_scrambling_enable(crtc_state, connector);
>   }
>
>   static void intel_ddi_enable(struct intel_atomic_state *state,
>  diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
>  index 055e68810d0d..958d939ae6ee 100644
>  --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>  +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>  @@ -2694,6 +2694,31 @@ intel_hdmi_add_properties(struct intel_hdmi
> *intel_hdmi, struct drm_connector *_
>   drm_connector_attach_max_bpc_property(&connector->base, 8, 12);
>   }
>
>  +/*
>  + * As Per HDMI 2.0 spec: after scrambled video transmission begins,
>  + * poll TMDS_Scrambler_Status until it reads 1, for up to 200 ms.
>  + */
>  +void
>  +intel_hdmi_poll_for_scrambling_enable(const struct intel_crtc_state
> *crtc_state,
>  +       struct drm_connector *_connector)
>  +{
>  + struct intel_connector *connector =3D to_intel_connector(_connector);
>  + struct intel_display *display =3D to_intel_display(crtc_state);
>  + bool scrambling_enabled =3D false;
>  + int ret;
>  +
>  + if (!crtc_state->hdmi_scrambling)
>  + return;
>  +
>  + /* Poll for a max of 200 msec as per HDMI spec */
>  + ret =3D poll_timeout_us(scrambling_enabled =3D
> drm_scdc_get_scrambling_status(&connector->base),
>  +       scrambling_enabled, 1000, 200 * 1000, false);
>  + if (ret)
>  + drm_dbg_kms(display->drm,
>  +     "[CONNECTOR:%d:%s] Timed out waiting for scrambling enable\n",
>  +     connector->base.base.id, connector->base.name);
>  +}
>  +
>   /*
>    * intel_hdmi_handle_sink_scrambling: handle sink scrambling/clock rati=
o setup
>    * @encoder: intel_encoder
>  diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h
> b/drivers/gpu/drm/i915/display/intel_hdmi.h
>  index be2fad57e4ad..0fa3661568e8 100644
>  --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
>  +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
>  @@ -70,5 +70,7 @@ void hsw_read_infoframe(struct intel_encoder *encoder,
>   const struct intel_crtc_state *crtc_state,
>   unsigned int type,
>   void *frame, ssize_t len);
>  +void intel_hdmi_poll_for_scrambling_enable(const struct
> intel_crtc_state *crtc_state,
>  +    struct drm_connector *_connector);
>
>   #endif /* __INTEL_HDMI_H__ */
>  --
>  2.45.2

--=20
Jani Nikula, Intel
