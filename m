Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A91609C1D9F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:08:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8BAC10E97C;
	Fri,  8 Nov 2024 13:08:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gbc+nV7J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D315F10E97C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2024 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731071314; x=1762607314;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=hVucqsIBYpd74UZWjsIpgXTKr0Xe8hXFC1/SchU70SQ=;
 b=Gbc+nV7Je+SSGxPjgbMPcz8hltT4rMbR9fma/Tsy5BDoaPf0BS+d1toO
 2mKC4D+c3r2+pBVF2Oj+H9FIDaMH2CtOprl98ZX/qBXQuqGKqRZoVtWL2
 f6z5nZmB2k4ux4Vr5gM0BupLxOLImTh9iG7Y5CdpRGz2vBuSncQRuOKEu
 UnImYMhJLBzxlzlG4+sROiIn+yCJJ1K0udAT3cJEZHrWSGQdhWucDiWmn
 MTRpw8vVQQ93RUAP02K8ND/C+lemgOu5bWUkiTkCBWC5qC9BVCCiKxoGF
 tVdNDS1QBeKyHVNfSfln7x/IPS4Vhgt6MvgC/pVkyl8kgheDCAvHJ+Ma8 w==;
X-CSE-ConnectionGUID: trN0qCPIQBypT44hx6+Ldg==
X-CSE-MsgGUID: xPMSw4kVTRaBfyU5Sbx6aQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53514346"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="53514346"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:08:34 -0800
X-CSE-ConnectionGUID: GQlh6qcmRDmxiXzQzL3Fbg==
X-CSE-MsgGUID: Cz5ilcO4QUGgxn2/5VtIRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="85652855"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.252])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:08:32 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 04/10] drm/i915/crt: Use REG_BIT() & co.
In-Reply-To: <20241107161123.16269-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
 <20241107161123.16269-5-ville.syrjala@linux.intel.com>
Date: Fri, 08 Nov 2024 15:08:28 +0200
Message-ID: <87msi9euur.fsf@intel.com>
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

On Thu, 07 Nov 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Follow the modern style and use REG_BIT() & co. for the analog
> port register definitions.
>
> Also throw out the ADPA_DPMS_... stuff as that's just an alias
> for the sync off bits.

I think you decided to split that to a separate patch but forgot to
update the commit message here.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c |  4 +-
>  drivers/gpu/drm/i915/i915_reg.h          | 69 ++++++++++++------------
>  2 files changed, 35 insertions(+), 38 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index 134a4e6a4ac0..73d5332cf103 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -91,9 +91,9 @@ bool intel_crt_port_enabled(struct intel_display *displ=
ay,
>=20=20
>  	/* asserts want to know the pipe even if the port is disabled */
>  	if (HAS_PCH_CPT(dev_priv))
> -		*pipe =3D (val & ADPA_PIPE_SEL_MASK_CPT) >> ADPA_PIPE_SEL_SHIFT_CPT;
> +		*pipe =3D REG_FIELD_GET(ADPA_PIPE_SEL_MASK_CPT, val);
>  	else
> -		*pipe =3D (val & ADPA_PIPE_SEL_MASK) >> ADPA_PIPE_SEL_SHIFT;
> +		*pipe =3D REG_FIELD_GET(ADPA_PIPE_SEL_MASK, val);
>=20=20
>  	return val & ADPA_DAC_ENABLE;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index f0757c4491f1..f233fc32e45c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1151,43 +1151,40 @@
>  #define ADPA			_MMIO(0x61100)
>  #define PCH_ADPA                _MMIO(0xe1100)
>  #define VLV_ADPA		_MMIO(VLV_DISPLAY_BASE + 0x61100)
> -#define   ADPA_DAC_ENABLE	(1 << 31)
> -#define   ADPA_DAC_DISABLE	0
> -#define   ADPA_PIPE_SEL_SHIFT		30
> -#define   ADPA_PIPE_SEL_MASK		(1 << 30)
> -#define   ADPA_PIPE_SEL(pipe)		((pipe) << 30)
> -#define   ADPA_PIPE_SEL_SHIFT_CPT	29
> -#define   ADPA_PIPE_SEL_MASK_CPT	(3 << 29)
> -#define   ADPA_PIPE_SEL_CPT(pipe)	((pipe) << 29)
> +#define   ADPA_DAC_ENABLE			REG_BIT(31)
> +#define   ADPA_PIPE_SEL_MASK			REG_BIT(30)
> +#define   ADPA_PIPE_SEL(pipe)			REG_FIELD_PREP(ADPA_PIPE_SEL_MASK, (pipe=
))
> +#define   ADPA_PIPE_SEL_MASK_CPT		REG_GENMASK(30, 29)
> +#define   ADPA_PIPE_SEL_CPT(pipe)		REG_FIELD_PREP(ADPA_PIPE_SEL_MASK_CPT=
, (pipe))
>  #define   ADPA_CRT_HOTPLUG_MASK  0x03ff0000 /* bit 25-16 */
> -#define   ADPA_CRT_HOTPLUG_MONITOR_NONE  (0 << 24)
> -#define   ADPA_CRT_HOTPLUG_MONITOR_MASK  (3 << 24)
> -#define   ADPA_CRT_HOTPLUG_MONITOR_COLOR (3 << 24)
> -#define   ADPA_CRT_HOTPLUG_MONITOR_MONO  (2 << 24)
> -#define   ADPA_CRT_HOTPLUG_ENABLE        (1 << 23)
> -#define   ADPA_CRT_HOTPLUG_PERIOD_64     (0 << 22)
> -#define   ADPA_CRT_HOTPLUG_PERIOD_128    (1 << 22)
> -#define   ADPA_CRT_HOTPLUG_WARMUP_5MS    (0 << 21)
> -#define   ADPA_CRT_HOTPLUG_WARMUP_10MS   (1 << 21)
> -#define   ADPA_CRT_HOTPLUG_SAMPLE_2S     (0 << 20)
> -#define   ADPA_CRT_HOTPLUG_SAMPLE_4S     (1 << 20)
> -#define   ADPA_CRT_HOTPLUG_VOLTAGE_40    (0 << 18)
> -#define   ADPA_CRT_HOTPLUG_VOLTAGE_50    (1 << 18)
> -#define   ADPA_CRT_HOTPLUG_VOLTAGE_60    (2 << 18)
> -#define   ADPA_CRT_HOTPLUG_VOLTAGE_70    (3 << 18)
> -#define   ADPA_CRT_HOTPLUG_VOLREF_325MV  (0 << 17)
> -#define   ADPA_CRT_HOTPLUG_VOLREF_475MV  (1 << 17)
> -#define   ADPA_CRT_HOTPLUG_FORCE_TRIGGER (1 << 16)
> -#define   ADPA_USE_VGA_HVPOLARITY (1 << 15)
> -#define   ADPA_SETS_HVPOLARITY	0
> -#define   ADPA_VSYNC_CNTL_DISABLE (1 << 10)
> -#define   ADPA_VSYNC_CNTL_ENABLE 0
> -#define   ADPA_HSYNC_CNTL_DISABLE (1 << 11)
> -#define   ADPA_HSYNC_CNTL_ENABLE 0
> -#define   ADPA_VSYNC_ACTIVE_HIGH (1 << 4)
> -#define   ADPA_VSYNC_ACTIVE_LOW	0
> -#define   ADPA_HSYNC_ACTIVE_HIGH (1 << 3)
> -#define   ADPA_HSYNC_ACTIVE_LOW	0
> +#define   ADPA_CRT_HOTPLUG_MONITOR_MASK		REG_GENMASK(25, 24)
> +#define   ADPA_CRT_HOTPLUG_MONITOR_NONE		REG_FIELD_PREP(ADPA_CRT_HOTPLUG=
_MONITOR_MASK, 0)
> +#define   ADPA_CRT_HOTPLUG_MONITOR_COLOR	REG_FIELD_PREP(ADPA_CRT_HOTPLUG=
_MONITOR_MASK, 3)
> +#define   ADPA_CRT_HOTPLUG_MONITOR_MONO		REG_FIELD_PREP(ADPA_CRT_HOTPLUG=
_MONITOR_MASK, 2)
> +#define   ADPA_CRT_HOTPLUG_ENABLE		REG_BIT(23)
> +#define   ADPA_CRT_HOTPLUG_PERIOD_MASK		REG_BIT(22)
> +#define   ADPA_CRT_HOTPLUG_PERIOD_64		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_PE=
RIOD_MASK, 0)
> +#define   ADPA_CRT_HOTPLUG_PERIOD_128		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_P=
ERIOD_MASK, 1)
> +#define   ADPA_CRT_HOTPLUG_WARMUP_MASK		REG_BIT(21)
> +#define   ADPA_CRT_HOTPLUG_WARMUP_5MS		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_W=
ARMUP_MASK, 0)
> +#define   ADPA_CRT_HOTPLUG_WARMUP_10MS		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_=
WARMUP_MASK, 1)
> +#define   ADPA_CRT_HOTPLUG_SAMPLE_MASK		REG_BIT(20)
> +#define   ADPA_CRT_HOTPLUG_SAMPLE_2S		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_SA=
MPLE_MASK, 0)
> +#define   ADPA_CRT_HOTPLUG_SAMPLE_4S		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_SA=
MPLE_MASK, 1)
> +#define   ADPA_CRT_HOTPLUG_VOLTAGE_MASK		REG_GENMASK(19, 18)
> +#define   ADPA_CRT_HOTPLUG_VOLTAGE_40		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_V=
OLTAGE_MASK, 0)
> +#define   ADPA_CRT_HOTPLUG_VOLTAGE_50		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_V=
OLTAGE_MASK, 1)
> +#define   ADPA_CRT_HOTPLUG_VOLTAGE_60		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_V=
OLTAGE_MASK, 2)
> +#define   ADPA_CRT_HOTPLUG_VOLTAGE_70		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_V=
OLTAGE_MASK, 3)
> +#define   ADPA_CRT_HOTPLUG_VOLREF_MASK		REG_BIT(17)
> +#define   ADPA_CRT_HOTPLUG_VOLREF_325MV		REG_FIELD_PREP(ADPA_CRT_HOTPLUG=
_VOLREF_MASK, 0)
> +#define   ADPA_CRT_HOTPLUG_VOLREF_475MV		REG_FIELD_PREP(ADPA_CRT_HOTPLUG=
_VOLREF_MASK, 1)
> +#define   ADPA_CRT_HOTPLUG_FORCE_TRIGGER	REG_BIT(16)
> +#define   ADPA_USE_VGA_HVPOLARITY		REG_BIT(15)
> +#define   ADPA_HSYNC_CNTL_DISABLE		REG_BIT(11)
> +#define   ADPA_VSYNC_CNTL_DISABLE		REG_BIT(10)
> +#define   ADPA_VSYNC_ACTIVE_HIGH		REG_BIT(4)
> +#define   ADPA_HSYNC_ACTIVE_HIGH		REG_BIT(3)
>=20=20
>  /* Hotplug control (945+ only) */
>  #define PORT_HOTPLUG_EN(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0=
x61110)

--=20
Jani Nikula, Intel
