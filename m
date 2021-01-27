Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29708305E6C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 15:35:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 865EC6E826;
	Wed, 27 Jan 2021 14:35:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 771E06E826
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 14:35:33 +0000 (UTC)
IronPort-SDR: JDCJdMhwTm0rdAj7RQeAa9hQeeoMxt/HlE2hTZoaJYHEKF7OCYk8+CB11+kXe6Jze5V0rJptNQ
 K99NB9xEdOrg==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="179293145"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="179293145"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 06:35:33 -0800
IronPort-SDR: pjTspNCz+Ra7zrVrFJ7wlC75yoPzyu+hBvVBDgbq71zX9DqFggotQg5nh9ly0rUDLzNMtStm6H
 958KLk0DHqiw==
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="578161045"
Received: from tdo2-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.72.224])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 06:35:31 -0800
Date: Wed, 27 Jan 2021 06:35:27 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20210127143527.jxefl4ecocq5wg6x@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210120151611.132591-1-jose.souza@intel.com>
 <20210120183151.jpfuda4htxs5qkxq@ldmartin-desk1>
 <5168c1572a7c106313f7c47194cae267835b32af.camel@intel.com>
 <20210120185245.2eqa42nmbm6yzeki@ldmartin-desk1>
 <cacd45fdcd81167d28a8367a014869cc5175fe0b.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cacd45fdcd81167d28a8367a014869cc5175fe0b.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Nuke not needed members of
 dram_info
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 20, 2021 at 07:29:37PM +0000, Jose Souza wrote:
>On Wed, 2021-01-20 at 10:52 -0800, Lucas De Marchi wrote:
>> On Wed, Jan 20, 2021 at 10:42:46AM -0800, Jose Souza wrote:
>> > On Wed, 2021-01-20 at 10:31 -0800, Lucas De Marchi wrote:
>> > > On Wed, Jan 20, 2021 at 07:16:08AM -0800, Jose Souza wrote:
>> > > > Valid, ranks and bandwidth_kbps are set into dram_info but are not
>> > > > used anywhere else so nuking it.
>> > > >
>> > > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>> > > > ---
>> > > > drivers/gpu/drm/i915/i915_drv.c   |  4 +--
>> > > > drivers/gpu/drm/i915/i915_drv.h   |  3 --
>> > > > drivers/gpu/drm/i915/intel_dram.c | 47 +++++++--------------------=
----
>> > > > 3 files changed, 12 insertions(+), 42 deletions(-)
>> > > >
>> > > > diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i91=
5/i915_drv.c
>> > > > index f5666b44ea9d..a1cc60de99f0 100644
>> > > > --- a/drivers/gpu/drm/i915/i915_drv.c
>> > > > +++ b/drivers/gpu/drm/i915/i915_drv.c
>> > > > @@ -609,8 +609,8 @@ static int i915_driver_hw_probe(struct drm_i91=
5_private *dev_priv)
>> > > >
>> > > > 	intel_opregion_setup(dev_priv);
>> > > > 	/*
>> > > > -	 * Fill the dram structure to get the system raw bandwidth and
>> > > > -	 * dram info. This will be used for memory latency calculation.
>> > > > +	 * Fill the dram structure to get the system dram info. This wil=
l be
>> > > > +	 * used for memory latency calculation.
>> > > > 	 */
>> > > > 	intel_dram_detect(dev_priv);
>> > > >
>> > > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i91=
5/i915_drv.h
>> > > > index 8376cff5ba86..250e92910fa1 100644
>> > > > --- a/drivers/gpu/drm/i915/i915_drv.h
>> > > > +++ b/drivers/gpu/drm/i915/i915_drv.h
>> > > > @@ -1134,11 +1134,8 @@ struct drm_i915_private {
>> > > > 	} wm;
>> > > >
>> > > > 	struct dram_info {
>> > > > -		bool valid;
>> > > > 		bool is_16gb_dimm;
>> > > > 		u8 num_channels;
>> > > > -		u8 ranks;
>> > > > -		u32 bandwidth_kbps;
>> > > > 		bool symmetric_memory;
>> > > > 		enum intel_dram_type {
>> > > > 			INTEL_DRAM_UNKNOWN,
>> > > > diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i=
915/intel_dram.c
>> > > > index 4754296a250e..694fbd8c9cd4 100644
>> > > > --- a/drivers/gpu/drm/i915/intel_dram.c
>> > > > +++ b/drivers/gpu/drm/i915/intel_dram.c
>> > > > @@ -201,17 +201,7 @@ skl_dram_get_channels_info(struct drm_i915_pr=
ivate *i915)
>> > > > 		return -EINVAL;
>> > > > 	}
>> > > >
>> > > > -	/*
>> > > > -	 * If any of the channel is single rank channel, worst case outp=
ut
>> > > > -	 * will be same as if single rank memory, so consider single rank
>> > > > -	 * memory.
>> > > > -	 */
>> > > > -	if (ch0.ranks =3D=3D 1 || ch1.ranks =3D=3D 1)
>> > > > -		dram_info->ranks =3D 1;
>> > > > -	else
>> > > > -		dram_info->ranks =3D max(ch0.ranks, ch1.ranks);
>> > > > -
>> > > > -	if (dram_info->ranks =3D=3D 0) {
>> > > > +	if (ch0.ranks =3D=3D 0 && ch1.ranks =3D=3D 0) {
>> > >
>> > > previously if any of them were !=3D 0, we would not fall here.
>> >
>> > This is the same behavior.
>>
>> indeed, I misread the condition
>>
>> >
>> > >
>> > >
>> > > > 		drm_info(&i915->drm, "couldn't get memory rank information\n");
>> > > > 		return -EINVAL;
>> > > > 	}
>> > > > @@ -269,16 +259,12 @@ skl_get_dram_info(struct drm_i915_private *i=
915)
>> > > > 	mem_freq_khz =3D DIV_ROUND_UP((val & SKL_REQ_DATA_MASK) *
>> > > > 				    SKL_MEMORY_FREQ_MULTIPLIER_HZ, 1000);
>> > > >
>> > > > -	dram_info->bandwidth_kbps =3D dram_info->num_channels *
>> > > > -		mem_freq_khz * 8;
>> > > > -
>> > > > -	if (dram_info->bandwidth_kbps =3D=3D 0) {
>> > > > +	if (dram_info->num_channels * mem_freq_khz =3D=3D 0) {
>> > > > 		drm_info(&i915->drm,
>> > > > 			 "Couldn't get system memory bandwidth\n");
>> > > > 		return -EINVAL;
>> > > > 	}
>> > > >
>> > > > -	dram_info->valid =3D true;
>> > > > 	return 0;
>> > > > }
>> > > >
>> > > > @@ -365,7 +351,7 @@ static int bxt_get_dram_info(struct drm_i915_p=
rivate *i915)
>> > > > 	struct dram_info *dram_info =3D &i915->dram_info;
>> > > > 	u32 dram_channels;
>> > > > 	u32 mem_freq_khz, val;
>> > > > -	u8 num_active_channels;
>> > > > +	u8 num_active_channels, valid_ranks =3D 0;
>> > > > 	int i;
>> > > >
>> > > > 	val =3D intel_uncore_read(&i915->uncore, BXT_P_CR_MC_BIOS_REQ_0_0=
_0);
>> > > > @@ -375,10 +361,7 @@ static int bxt_get_dram_info(struct drm_i915_=
private *i915)
>> > > > 	dram_channels =3D val & BXT_DRAM_CHANNEL_ACTIVE_MASK;
>> > > > 	num_active_channels =3D hweight32(dram_channels);
>> > > >
>> > > > -	/* Each active bit represents 4-byte channel */
>> > > > -	dram_info->bandwidth_kbps =3D (mem_freq_khz * num_active_channel=
s * 4);
>> > > > -
>> > > > -	if (dram_info->bandwidth_kbps =3D=3D 0) {
>> > > > +	if (mem_freq_khz * num_active_channels =3D=3D 0) {
>> > >
>> > > maybe better to replace with a local var?
>> > >
>> > > 	bandwidth_kbps =3D mem_freq_khz * num_active_channels;
>> > >
>> > > and then check it where needed.
>> >
>> > The only place it is used is in this if to return -EINVAL, same for th=
e SKL function.
>> > The multiplication fits under the 80 col limit so don't see why add a =
local var.
>>
>> ok... maybe `if (!mem_freq_khz || !num_active_channels)` then?
>
>That works too but I still prefer keep it as close as possible from the pr=
evious check.


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
>
>>
>>
>> LUcas De Marchi
>>
>> >
>> > >
>> > > Lucas De Marchi
>> > >
>> > > > 		drm_info(&i915->drm,
>> > > > 			 "Couldn't get system memory bandwidth\n");
>> > > > 		return -EINVAL;
>> > > > @@ -410,27 +393,18 @@ static int bxt_get_dram_info(struct drm_i915=
_private *i915)
>> > > > 			    dimm.size, dimm.width, dimm.ranks,
>> > > > 			    intel_dram_type_str(type));
>> > > >
>> > > > -		/*
>> > > > -		 * If any of the channel is single rank channel,
>> > > > -		 * worst case output will be same as if single rank
>> > > > -		 * memory, so consider single rank memory.
>> > > > -		 */
>> > > > -		if (dram_info->ranks =3D=3D 0)
>> > > > -			dram_info->ranks =3D dimm.ranks;
>> > > > -		else if (dimm.ranks =3D=3D 1)
>> > > > -			dram_info->ranks =3D 1;
>> > > > +		if (valid_ranks =3D=3D 0)
>> > > > +			valid_ranks =3D dimm.ranks;
>> > > >
>> > > > 		if (type !=3D INTEL_DRAM_UNKNOWN)
>> > > > 			dram_info->type =3D type;
>> > > > 	}
>> > > >
>> > > > -	if (dram_info->type =3D=3D INTEL_DRAM_UNKNOWN || dram_info->rank=
s =3D=3D 0) {
>> > > > +	if (dram_info->type =3D=3D INTEL_DRAM_UNKNOWN || valid_ranks =3D=
=3D 0) {
>> > > > 		drm_info(&i915->drm, "couldn't get memory information\n");
>> > > > 		return -EINVAL;
>> > > > 	}
>> > > >
>> > > > -	dram_info->valid =3D true;
>> > > > -
>> > > > 	return 0;
>> > > > }
>> > > >
>> > > > @@ -456,11 +430,10 @@ void intel_dram_detect(struct drm_i915_priva=
te *i915)
>> > > > 	if (ret)
>> > > > 		return;
>> > > >
>> > > > -	drm_dbg_kms(&i915->drm, "DRAM bandwidth: %u kBps, channels: %u\n=
",
>> > > > -		    dram_info->bandwidth_kbps, dram_info->num_channels);
>> > > > +	drm_dbg_kms(&i915->drm, "DRAM channels: %u\n", dram_info->num_ch=
annels);
>> > > >
>> > > > -	drm_dbg_kms(&i915->drm, "DRAM ranks: %u, 16Gb DIMMs: %s\n",
>> > > > -		    dram_info->ranks, yesno(dram_info->is_16gb_dimm));
>> > > > +	drm_dbg_kms(&i915->drm, "DRAM 16Gb DIMMs: %s\n",
>> > > > +		    yesno(dram_info->is_16gb_dimm));
>> > > > }
>> > > >
>> > > > static u32 gen9_edram_size_mb(struct drm_i915_private *i915, u32 c=
ap)
>> > > > --
>> > > > 2.30.0
>> > > >
>> > > > _______________________________________________
>> > > > Intel-gfx mailing list
>> > > > Intel-gfx@lists.freedesktop.org
>> > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>> >
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
