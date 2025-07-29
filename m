Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C423B14CBC
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 13:08:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A3D810E13B;
	Tue, 29 Jul 2025 11:08:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iClWDjvm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C906F10E061;
 Tue, 29 Jul 2025 11:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753787325; x=1785323325;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Vz17N4/He+lEuCoI+sl0p0y0kz/erEcmy0gU/A9Q5xE=;
 b=iClWDjvm6mzY8n9/b4DNZLuXD4gUS8gjvyObnXyo7vUlfBcjrkEI2u0l
 NskCnkKv+FJp4gbtBMblpZ2AQu5FbeAuTagdzhVmMVpg93aeiCZS7HsBm
 LZKrZF17WmoOi4Y+fD5Td1Ji9v1Sy1UijxKIC5pBcGhlARcDUPOG7V7AG
 MxxtsOZuwnzB4X65i+KqojSHUqE3EzP/XyttJVcqhTFGjRPNOXDBYntpj
 cPFP6cu2rrgDv+tFgGpnv03Sg8F1nN/utPFp0Mhen6hRttvrUFDyDj3vd
 LQ9mR4qtYxw0qnobRgfS8ucCnFVztqxKlsOnUhVQz0EjKwZFtFW3AdTnI A==;
X-CSE-ConnectionGUID: HjjI+lv5RIe9j8deCfLOdA==
X-CSE-MsgGUID: nkXSvb1OS1yJPkk9tSSCQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="56129700"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="56129700"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 04:08:44 -0700
X-CSE-ConnectionGUID: Mnp+pV+pRUKk/UOCfrFidA==
X-CSE-MsgGUID: sJ2+tHClRR2P67Kci9GZWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="186325921"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.22])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 04:08:42 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, ville.syrjala@linux.intel.com, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 5/9] drm/i915/display: Add bits for link_n_exended for
 DISPLAY >= 14
In-Reply-To: <20250721091529.3864004-6-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
 <20250721091529.3864004-6-ankit.k.nautiyal@intel.com>
Date: Tue, 29 Jul 2025 14:08:38 +0300
Message-ID: <a345b688ad4e61bc296a11a82d04b7fc1b70622e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 21 Jul 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> LINK_N register has bits 31:24 for extended link N value used for
> HDMI2.1 and for an alternate mode of operation of DP TG DDA
> (Bspec:50488).
>
> Add support for these extra bits.
>
> For displays with version 14 or higher, the `PIPE_LINK_N1_EXTENDED_MASK`
> (bits 31:24) is used to handle the extended link N bits.
> For older platforms, the `DATA_LINK_M_N_MASK` (bits 23:0) is used to
> handle the standard link N bits. This distinction ensures clarity and
> maintains the semantics for platforms that support the extended bits.
> In subsequent changes the logic is updated to conditionally apply the
> extended link N bits.
>
> v2: Drop extra link_n_ext member. (Jani)
> v3: Avoid link_n_ext in set_m_n helper. (Jani)
> v4: Rebase, and update commit message.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c   | 18 ++++++++++++++++--
>  .../gpu/drm/i915/display/intel_display_regs.h  |  2 ++
>  2 files changed, 18 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index f32a4956c926..5232478613aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2578,14 +2578,22 @@ void intel_set_m_n(struct intel_display *display,
>  		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
>  		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
>  {
> +	u32 link_n = m_n->link_n;
> +
>  	intel_de_write(display, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
>  	intel_de_write(display, data_n_reg, m_n->data_n);
>  	intel_de_write(display, link_m_reg, m_n->link_m);
> +
> +	if (DISPLAY_VER(display) >= 14)
> +		link_n &= ~PIPE_LINK_N1_EXTENDED_MASK;
> +	else
> +		link_n &= DATA_LINK_M_N_MASK;
> +
>  	/*
>  	 * On BDW+ writing LINK_N arms the double buffered update
>  	 * of all the M/N registers, so it must be written last.
>  	 */
> -	intel_de_write(display, link_n_reg, m_n->link_n);
> +	intel_de_write(display, link_n_reg, link_n);
>  }
>  
>  bool intel_cpu_transcoder_has_m2_n2(struct intel_display *display,
> @@ -3321,7 +3329,13 @@ void intel_get_m_n(struct intel_display *display,
>  		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
>  {
>  	m_n->link_m = intel_de_read(display, link_m_reg) & DATA_LINK_M_N_MASK;
> -	m_n->link_n = intel_de_read(display, link_n_reg) & DATA_LINK_M_N_MASK;
> +	m_n->link_n = intel_de_read(display, link_n_reg);
> +
> +	if (DISPLAY_VER(display) >= 14)
> +		m_n->link_n &= ~PIPE_LINK_N1_EXTENDED_MASK;
> +	else
> +		m_n->link_n &= DATA_LINK_M_N_MASK;
> +
>  	m_n->data_m = intel_de_read(display, data_m_reg) & DATA_LINK_M_N_MASK;
>  	m_n->data_n = intel_de_read(display, data_n_reg) & DATA_LINK_M_N_MASK;
>  	m_n->tu = REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(display, data_m_reg)) + 1;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 7bd09d981cd2..9248561aec5f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -1027,6 +1027,8 @@
>  
>  #define _PIPEA_LINK_N1		0x60044
>  #define _PIPEB_LINK_N1		0x61044
> +#define  PIPE_LINK_N1_EXTENDED_MASK	REG_GENMASK(31, 24)
> +#define  PIPE_LINK_N1_EXTENDED(val)	REG_FIELD_PREP(PIPE_LINK_N1_EXTENDED_MASK, (val))

Please read the comment near the top of i915_reg.h, and send patches to
amend the comment if there's something unclear.

BR,
Jani.

>  #define PIPE_LINK_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
>  
>  #define _PIPEA_LINK_M2		0x60048

-- 
Jani Nikula, Intel
