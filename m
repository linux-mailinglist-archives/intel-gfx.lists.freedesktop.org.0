Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA103D043D
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 00:07:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAE096E56D;
	Tue, 20 Jul 2021 22:07:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 060D56E56D
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 22:07:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10051"; a="209433109"
X-IronPort-AV: E=Sophos;i="5.84,256,1620716400"; d="scan'208";a="209433109"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 15:06:55 -0700
X-IronPort-AV: E=Sophos;i="5.84,256,1620716400"; d="scan'208";a="415389506"
Received: from davehans-mobl4.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.251.16.219])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 15:06:55 -0700
Date: Tue, 20 Jul 2021 15:06:41 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>;,
	intel-gfx@lists.freedesktop.org
Message-ID: <20210720220641.GB1701@msatwood-mobl>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
 <20210714031540.3539704-13-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210714031540.3539704-13-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 12/50] drm/i915/xehp: New engine context
 offsets
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 13, 2021 at 08:15:02PM -0700, Matt Roper wrote:
> From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> 
> The layout of some engine contexts has changed on Xe_HP.  Define the new
> offsets.
> 
> Bspec: 45585, 46256
> Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>
> Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 65 ++++++++++++++++++++++++++---
>  1 file changed, 59 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 7f8fe6726504..c3f5bec8ae15 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -484,6 +484,47 @@ static const u8 gen12_rcs_offsets[] = {
>  	END
>  };
>  
> +static const u8 xehp_rcs_offsets[] = {
> +	NOP(1),
> +	LRI(13, POSTED),
> +	REG16(0x244),
> +	REG(0x034),
> +	REG(0x030),
> +	REG(0x038),
> +	REG(0x03c),
> +	REG(0x168),
> +	REG(0x140),
> +	REG(0x110),
> +	REG(0x1c0),
> +	REG(0x1c4),
> +	REG(0x1c8),
> +	REG(0x180),
> +	REG16(0x2b4),
> +
> +	NOP(5),
> +	LRI(9, POSTED),
> +	REG16(0x3a8),
> +	REG16(0x28c),
> +	REG16(0x288),
> +	REG16(0x284),
> +	REG16(0x280),
> +	REG16(0x27c),
> +	REG16(0x278),
> +	REG16(0x274),
> +	REG16(0x270),
> +
> +	LRI(3, POSTED),
> +	REG(0x1b0),
> +	REG16(0x5a8),
> +	REG16(0x5ac),
> +
> +	NOP(6),
> +	LRI(1, 0),
> +	REG(0x0c8),
> +
> +	END
> +};
> +
>  #undef END
>  #undef REG16
>  #undef REG
> @@ -502,7 +543,9 @@ static const u8 *reg_offsets(const struct intel_engine_cs *engine)
>  		   !intel_engine_has_relative_mmio(engine));
>  
>  	if (engine->class == RENDER_CLASS) {
> -		if (GRAPHICS_VER(engine->i915) >= 12)
> +		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
> +			return xehp_rcs_offsets;
> +		else if (GRAPHICS_VER(engine->i915) >= 12)
>  			return gen12_rcs_offsets;
>  		else if (GRAPHICS_VER(engine->i915) >= 11)
>  			return gen11_rcs_offsets;
> @@ -522,7 +565,9 @@ static const u8 *reg_offsets(const struct intel_engine_cs *engine)
>  
>  static int lrc_ring_mi_mode(const struct intel_engine_cs *engine)
>  {
> -	if (GRAPHICS_VER(engine->i915) >= 12)
> +	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
> +		return 0x70;
> +	else if (GRAPHICS_VER(engine->i915) >= 12)
>  		return 0x60;
>  	else if (GRAPHICS_VER(engine->i915) >= 9)
>  		return 0x54;
> @@ -534,7 +579,9 @@ static int lrc_ring_mi_mode(const struct intel_engine_cs *engine)
>  
>  static int lrc_ring_gpr0(const struct intel_engine_cs *engine)
>  {
> -	if (GRAPHICS_VER(engine->i915) >= 12)
> +	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
> +		return 0x84;
> +	else if (GRAPHICS_VER(engine->i915) >= 12)
>  		return 0x74;
>  	else if (GRAPHICS_VER(engine->i915) >= 9)
>  		return 0x68;
> @@ -578,10 +625,16 @@ static int lrc_ring_indirect_offset(const struct intel_engine_cs *engine)
>  
>  static int lrc_ring_cmd_buf_cctl(const struct intel_engine_cs *engine)
>  {
> -	if (engine->class != RENDER_CLASS)
> -		return -1;
>  
> -	if (GRAPHICS_VER(engine->i915) >= 12)
> +	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
> +		/*
> +		 * Note that the CSFE context has a dummy slot for CMD_BUF_CCTL
> +		 * simply to match the RCS context image layout.
> +		 */
> +		return 0xc6;
> +	else if (engine->class != RENDER_CLASS)
> +		return -1;
> +	else if (GRAPHICS_VER(engine->i915) >= 12)
>  		return 0xb6;
>  	else if (GRAPHICS_VER(engine->i915) >= 11)
>  		return 0xaa;
> -- 
> 2.25.4
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
