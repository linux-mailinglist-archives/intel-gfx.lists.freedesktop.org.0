Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 310151F3EF6
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jun 2020 17:14:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BB1689C69;
	Tue,  9 Jun 2020 15:14:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B5A789C69
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2020 15:14:05 +0000 (UTC)
IronPort-SDR: ZEXLKkZN3UFH6TTWEp6Fe8tzIjBIWosqjyqM+w3frKr5Uh4JRc+q1QE841O1EbbQZheC1zwj2q
 cUriL2cTg30Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2020 08:14:04 -0700
IronPort-SDR: cZEFe8ThT2vzFiEoBB/bRBVMH6Dplpf/6e9+fi5B1Qj8UPj4En2frDBA9VJUC5uS8N3GQrjLNK
 UFCDP/slaaCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,492,1583222400"; d="scan'208";a="306219740"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 09 Jun 2020 08:14:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 09 Jun 2020 18:14:01 +0300
Date: Tue, 9 Jun 2020 18:14:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200609151401.GQ6112@intel.com>
References: <20200606025740.3308880-1-matthew.d.roper@intel.com>
 <20200606025740.3308880-2-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200606025740.3308880-2-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 1/7] drm/i915/rkl: RKL uses ABOX0 for
 pixel transfers
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 05, 2020 at 07:57:34PM -0700, Matt Roper wrote:
> Rocket Lake uses the same 'abox0' mechanism to handle pixel data
> transfers from memory that gen11 platforms used, rather than the
> abox1/abox2 interfaces used by TGL/DG1.  For the most part this is a
> hardware implementation detail that's transparent to driver software,
> but we do have to program a couple of tuning registers (MBUS_ABOX_CTL
> and BW_BUDDY registers) according to which ABOX instances are used by a
> platform.  Let's track the platform's ABOX usage in the device info
> structure and use that to determine which instances of these registers
> to program.
> =

> As an exception to this rule is that even though TGL/DG1 use ABOX1+ABOX2
> for data transfers, we're still directed to program the ABOX_CTL
> register for ABOX0; so we'll handle that as a special case.
> =

> v2:
>  - Store the mask of platform-specific abox registers in the device
>    info structure.
>  - Add a TLB_REQ_TIMER() helper macro.  (Aditya)
> =

> v3:
>  - Squash ABOX and BW_BUDDY patches together and use a single mask for
>    both of them, plus a special-case for programming the ABOX0 instance
>    on all gen12.  (Ville)
> =

> Bspec: 50096
> Bspec: 49218
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Aditya Swarup <aditya.swarup@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  .../drm/i915/display/intel_display_power.c    | 55 ++++++++++---------
>  drivers/gpu/drm/i915/i915_pci.c               |  3 +
>  drivers/gpu/drm/i915/i915_reg.h               | 24 +++++---
>  drivers/gpu/drm/i915/intel_device_info.h      |  2 +
>  4 files changed, 52 insertions(+), 32 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 72312b67b57a..24a2aa1fdc9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4760,7 +4760,8 @@ static void gen9_dbuf_disable(struct drm_i915_priva=
te *dev_priv)
>  =

>  static void icl_mbus_init(struct drm_i915_private *dev_priv)
>  {
> -	u32 mask, val;
> +	unsigned long abox_regs =3D INTEL_INFO(dev_priv)->abox_mask;
> +	u32 mask, val, i;
>  =

>  	mask =3D MBUS_ABOX_BT_CREDIT_POOL1_MASK |
>  		MBUS_ABOX_BT_CREDIT_POOL2_MASK |
> @@ -4771,11 +4772,16 @@ static void icl_mbus_init(struct drm_i915_private=
 *dev_priv)
>  		MBUS_ABOX_B_CREDIT(1) |
>  		MBUS_ABOX_BW_CREDIT(1);
>  =

> -	intel_de_rmw(dev_priv, MBUS_ABOX_CTL, mask, val);
> -	if (INTEL_GEN(dev_priv) >=3D 12) {
> -		intel_de_rmw(dev_priv, MBUS_ABOX1_CTL, mask, val);
> -		intel_de_rmw(dev_priv, MBUS_ABOX2_CTL, mask, val);
> -	}
> +	/*
> +	 * gen12 platforms that use abox1 and abox2 for pixel data reads still
> +	 * expect us to program the abox_ctl0 register as well, even though
> +	 * we don't have to program other instance-0 registers like BW_BUDDY.
> +	 */
> +	if (IS_GEN(dev_priv, 12))
> +		abox_regs |=3D BIT(0);
> +
> +	for_each_set_bit(i, &abox_regs, sizeof(abox_regs))
> +		intel_de_rmw(dev_priv, MBUS_ABOX_CTL(i), mask, val);
>  }
>  =

>  static void hsw_assert_cdclk(struct drm_i915_private *dev_priv)
> @@ -5254,7 +5260,8 @@ static void tgl_bw_buddy_init(struct drm_i915_priva=
te *dev_priv)
>  	enum intel_dram_type type =3D dev_priv->dram_info.type;
>  	u8 num_channels =3D dev_priv->dram_info.num_channels;
>  	const struct buddy_page_mask *table;
> -	int i;
> +	unsigned long abox_mask =3D INTEL_INFO(dev_priv)->abox_mask;
> +	int config, i;
>  =

>  	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B0))
>  		/* Wa_1409767108: tgl */
> @@ -5262,29 +5269,27 @@ static void tgl_bw_buddy_init(struct drm_i915_pri=
vate *dev_priv)
>  	else
>  		table =3D tgl_buddy_page_masks;
>  =

> -	for (i =3D 0; table[i].page_mask !=3D 0; i++)
> -		if (table[i].num_channels =3D=3D num_channels &&
> -		    table[i].type =3D=3D type)
> +	for (config =3D 0; table[config].page_mask !=3D 0; config++)
> +		if (table[config].num_channels =3D=3D num_channels &&
> +		    table[config].type =3D=3D type)
>  			break;
>  =

> -	if (table[i].page_mask =3D=3D 0) {
> +	if (table[config].page_mask =3D=3D 0) {
>  		drm_dbg(&dev_priv->drm,
>  			"Unknown memory configuration; disabling address buddy logic.\n");
> -		intel_de_write(dev_priv, BW_BUDDY1_CTL, BW_BUDDY_DISABLE);
> -		intel_de_write(dev_priv, BW_BUDDY2_CTL, BW_BUDDY_DISABLE);
> +		for_each_set_bit(i, &abox_mask, sizeof(abox_mask))
> +			intel_de_write(dev_priv, BW_BUDDY_CTL(i),
> +				       BW_BUDDY_DISABLE);
>  	} else {
> -		intel_de_write(dev_priv, BW_BUDDY1_PAGE_MASK,
> -			       table[i].page_mask);
> -		intel_de_write(dev_priv, BW_BUDDY2_PAGE_MASK,
> -			       table[i].page_mask);
> -
> -		/* Wa_22010178259:tgl */
> -		intel_de_rmw(dev_priv, BW_BUDDY1_CTL,
> -			     BW_BUDDY_TLB_REQ_TIMER_MASK,
> -			     REG_FIELD_PREP(BW_BUDDY_TLB_REQ_TIMER_MASK, 0x8));
> -		intel_de_rmw(dev_priv, BW_BUDDY2_CTL,
> -			     BW_BUDDY_TLB_REQ_TIMER_MASK,
> -			     REG_FIELD_PREP(BW_BUDDY_TLB_REQ_TIMER_MASK, 0x8));
> +		for_each_set_bit(i, &abox_mask, sizeof(abox_mask)) {
> +			intel_de_write(dev_priv, BW_BUDDY_PAGE_MASK(i),
> +				       table[config].page_mask);
> +
> +			/* Wa_22010178259:tgl,rkl */
> +			intel_de_rmw(dev_priv, BW_BUDDY_CTL(i),
> +				     BW_BUDDY_TLB_REQ_TIMER_MASK,
> +				     BW_BUDDY_TLB_REQ_TIMER(0x8));
> +		}
>  	}
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 192f1cd172b8..e5fdf17cd9cd 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -804,6 +804,7 @@ static const struct intel_device_info cnl_info =3D {
>  #define GEN11_FEATURES \
>  	GEN10_FEATURES, \
>  	GEN11_DEFAULT_PAGE_SIZES, \
> +	.abox_mask =3D BIT(0), \
>  	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
>  		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
> @@ -847,6 +848,7 @@ static const struct intel_device_info ehl_info =3D {
>  #define GEN12_FEATURES \
>  	GEN11_FEATURES, \
>  	GEN(12), \
> +	.abox_mask =3D GENMASK(2, 1), \
>  	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
>  	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) | \
> @@ -882,6 +884,7 @@ static const struct intel_device_info tgl_info =3D {
>  static const struct intel_device_info rkl_info =3D {
>  	GEN12_FEATURES,
>  	PLATFORM(INTEL_ROCKETLAKE),
> +	.abox_mask =3D BIT(0),
>  	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
>  	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>  		BIT(TRANSCODER_C),
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 814a70945468..4c3e822e1024 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2879,9 +2879,12 @@ static inline bool i915_mmio_reg_valid(i915_reg_t =
reg)
>  #define LM_FIFO_WATERMARK   0x0000001F
>  #define MI_ARB_STATE	_MMIO(0x20e4) /* 915+ only */
>  =

> -#define MBUS_ABOX_CTL			_MMIO(0x45038)
> -#define MBUS_ABOX1_CTL			_MMIO(0x45048)
> -#define MBUS_ABOX2_CTL			_MMIO(0x4504C)
> +#define _MBUS_ABOX0_CTL			0x45038
> +#define _MBUS_ABOX1_CTL			0x45048
> +#define _MBUS_ABOX2_CTL			0x4504C
> +#define MBUS_ABOX_CTL(x)		_MMIO(_PICK(x, _MBUS_ABOX0_CTL, \
> +						    _MBUS_ABOX1_CTL, \
> +						    _MBUS_ABOX2_CTL))
>  #define MBUS_ABOX_BW_CREDIT_MASK	(3 << 20)
>  #define MBUS_ABOX_BW_CREDIT(x)		((x) << 20)
>  #define MBUS_ABOX_B_CREDIT_MASK		(0xF << 16)
> @@ -7839,13 +7842,20 @@ enum {
>  #define  WAIT_FOR_PCH_RESET_ACK		(1 << 1)
>  #define  WAIT_FOR_PCH_FLR_ACK		(1 << 0)
>  =

> -#define BW_BUDDY1_CTL			_MMIO(0x45140)
> -#define BW_BUDDY2_CTL			_MMIO(0x45150)
> +#define _BW_BUDDY0_CTL			0x45130
> +#define _BW_BUDDY1_CTL			0x45140
> +#define BW_BUDDY_CTL(x)			_MMIO(_PICK_EVEN(x, \
> +							 _BW_BUDDY0_CTL, \
> +							 _BW_BUDDY1_CTL))
>  #define   BW_BUDDY_DISABLE		REG_BIT(31)
>  #define   BW_BUDDY_TLB_REQ_TIMER_MASK	REG_GENMASK(21, 16)
> +#define   BW_BUDDY_TLB_REQ_TIMER(x)	REG_FIELD_PREP(BW_BUDDY_TLB_REQ_TIME=
R_MASK, x)
>  =

> -#define BW_BUDDY1_PAGE_MASK		_MMIO(0x45144)
> -#define BW_BUDDY2_PAGE_MASK		_MMIO(0x45154)
> +#define _BW_BUDDY0_PAGE_MASK		0x45134
> +#define _BW_BUDDY1_PAGE_MASK		0x45144
> +#define BW_BUDDY_PAGE_MASK(x)		_MMIO(_PICK_EVEN(x, \
> +							 _BW_BUDDY0_PAGE_MASK, \
> +							 _BW_BUDDY1_PAGE_MASK))
>  =

>  #define HSW_NDE_RSTWRN_OPT	_MMIO(0x46408)
>  #define  RESET_PCH_HANDSHAKE_ENABLE	(1 << 4)
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i=
915/intel_device_info.h
> index 34dbffd65bad..8d62b8538585 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -175,6 +175,8 @@ struct intel_device_info {
>  	u8 pipe_mask;
>  	u8 cpu_transcoder_mask;
>  =

> +	u8 abox_mask;
> +
>  #define DEFINE_FLAG(name) u8 name:1
>  	DEV_INFO_FOR_EACH_FLAG(DEFINE_FLAG);
>  #undef DEFINE_FLAG
> -- =

> 2.24.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
