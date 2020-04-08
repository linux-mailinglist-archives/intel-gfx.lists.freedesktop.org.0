Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 742A51A1D0C
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 10:01:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD6186E99E;
	Wed,  8 Apr 2020 08:01:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 706F76E99E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 08:01:55 +0000 (UTC)
IronPort-SDR: zDY1T28kTTcXJN5HDZUnH5jFbO5gITgYVUqysH5pPz7YX6Afr6+lv4wjh2oM+c47kGxxG3cNOW
 ZiMP0a7Mb4yg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 01:01:54 -0700
IronPort-SDR: hNRFTFTixGFFRvlz+NBwo4gUL0Cy07n1YrKNitGMGrWZi5kk81Yd3dVrGjKLS/OhDkN62sZ2nw
 CqryWN6B7bXg==
X-IronPort-AV: E=Sophos;i="5.72,357,1580803200"; d="scan'208";a="425052385"
Received: from drosner-mobl1.ger.corp.intel.com (HELO [10.214.202.120])
 ([10.214.202.120])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 01:01:52 -0700
To: Andi Shyti <andi@etezian.org>, Intel GFX <intel-gfx@lists.freedesktop.org>
References: <20200407214502.217567-1-andi@etezian.org>
 <20200407214502.217567-2-andi@etezian.org>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <09803740-08b8-bf29-8b56-4ab11e6bf95f@linux.intel.com>
Date: Wed, 8 Apr 2020 09:01:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200407214502.217567-2-andi@etezian.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v7 1/2] drm/i915: remove broken
 i915_sseu_status interface
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 07/04/2020 22:45, Andi Shyti wrote:
> From: Andi Shyti <andi.shyti@intel.com>
> 
> The i915_sseu_status is broken and the tests on this interface
> are disabled. There is no reason to drag it along.

Not saying we need it, but can you say how it is broken?

Regards,

Tvrtko

> Remove it!
> 
> Signed-off-by: Andi Shyti <andi.shyti@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_debugfs.c | 257 ----------------------------
>   1 file changed, 257 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index b22b4e9c3138..4552b958f352 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -1558,266 +1558,10 @@ i915_cache_sharing_set(void *data, u64 val)
>   	return 0;
>   }
>   
> -static void
> -intel_sseu_copy_subslices(const struct sseu_dev_info *sseu, int slice,
> -			  u8 *to_mask)
> -{
> -	int offset = slice * sseu->ss_stride;
> -
> -	memcpy(&to_mask[offset], &sseu->subslice_mask[offset], sseu->ss_stride);
> -}
> -
>   DEFINE_SIMPLE_ATTRIBUTE(i915_cache_sharing_fops,
>   			i915_cache_sharing_get, i915_cache_sharing_set,
>   			"%llu\n");
>   
> -static void cherryview_sseu_device_status(struct drm_i915_private *dev_priv,
> -					  struct sseu_dev_info *sseu)
> -{
> -#define SS_MAX 2
> -	const int ss_max = SS_MAX;
> -	u32 sig1[SS_MAX], sig2[SS_MAX];
> -	int ss;
> -
> -	sig1[0] = I915_READ(CHV_POWER_SS0_SIG1);
> -	sig1[1] = I915_READ(CHV_POWER_SS1_SIG1);
> -	sig2[0] = I915_READ(CHV_POWER_SS0_SIG2);
> -	sig2[1] = I915_READ(CHV_POWER_SS1_SIG2);
> -
> -	for (ss = 0; ss < ss_max; ss++) {
> -		unsigned int eu_cnt;
> -
> -		if (sig1[ss] & CHV_SS_PG_ENABLE)
> -			/* skip disabled subslice */
> -			continue;
> -
> -		sseu->slice_mask = BIT(0);
> -		sseu->subslice_mask[0] |= BIT(ss);
> -		eu_cnt = ((sig1[ss] & CHV_EU08_PG_ENABLE) ? 0 : 2) +
> -			 ((sig1[ss] & CHV_EU19_PG_ENABLE) ? 0 : 2) +
> -			 ((sig1[ss] & CHV_EU210_PG_ENABLE) ? 0 : 2) +
> -			 ((sig2[ss] & CHV_EU311_PG_ENABLE) ? 0 : 2);
> -		sseu->eu_total += eu_cnt;
> -		sseu->eu_per_subslice = max_t(unsigned int,
> -					      sseu->eu_per_subslice, eu_cnt);
> -	}
> -#undef SS_MAX
> -}
> -
> -static void gen10_sseu_device_status(struct drm_i915_private *dev_priv,
> -				     struct sseu_dev_info *sseu)
> -{
> -#define SS_MAX 6
> -	const struct intel_runtime_info *info = RUNTIME_INFO(dev_priv);
> -	u32 s_reg[SS_MAX], eu_reg[2 * SS_MAX], eu_mask[2];
> -	int s, ss;
> -
> -	for (s = 0; s < info->sseu.max_slices; s++) {
> -		/*
> -		 * FIXME: Valid SS Mask respects the spec and read
> -		 * only valid bits for those registers, excluding reserved
> -		 * although this seems wrong because it would leave many
> -		 * subslices without ACK.
> -		 */
> -		s_reg[s] = I915_READ(GEN10_SLICE_PGCTL_ACK(s)) &
> -			GEN10_PGCTL_VALID_SS_MASK(s);
> -		eu_reg[2 * s] = I915_READ(GEN10_SS01_EU_PGCTL_ACK(s));
> -		eu_reg[2 * s + 1] = I915_READ(GEN10_SS23_EU_PGCTL_ACK(s));
> -	}
> -
> -	eu_mask[0] = GEN9_PGCTL_SSA_EU08_ACK |
> -		     GEN9_PGCTL_SSA_EU19_ACK |
> -		     GEN9_PGCTL_SSA_EU210_ACK |
> -		     GEN9_PGCTL_SSA_EU311_ACK;
> -	eu_mask[1] = GEN9_PGCTL_SSB_EU08_ACK |
> -		     GEN9_PGCTL_SSB_EU19_ACK |
> -		     GEN9_PGCTL_SSB_EU210_ACK |
> -		     GEN9_PGCTL_SSB_EU311_ACK;
> -
> -	for (s = 0; s < info->sseu.max_slices; s++) {
> -		if ((s_reg[s] & GEN9_PGCTL_SLICE_ACK) == 0)
> -			/* skip disabled slice */
> -			continue;
> -
> -		sseu->slice_mask |= BIT(s);
> -		intel_sseu_copy_subslices(&info->sseu, s, sseu->subslice_mask);
> -
> -		for (ss = 0; ss < info->sseu.max_subslices; ss++) {
> -			unsigned int eu_cnt;
> -
> -			if (info->sseu.has_subslice_pg &&
> -			    !(s_reg[s] & (GEN9_PGCTL_SS_ACK(ss))))
> -				/* skip disabled subslice */
> -				continue;
> -
> -			eu_cnt = 2 * hweight32(eu_reg[2 * s + ss / 2] &
> -					       eu_mask[ss % 2]);
> -			sseu->eu_total += eu_cnt;
> -			sseu->eu_per_subslice = max_t(unsigned int,
> -						      sseu->eu_per_subslice,
> -						      eu_cnt);
> -		}
> -	}
> -#undef SS_MAX
> -}
> -
> -static void gen9_sseu_device_status(struct drm_i915_private *dev_priv,
> -				    struct sseu_dev_info *sseu)
> -{
> -#define SS_MAX 3
> -	const struct intel_runtime_info *info = RUNTIME_INFO(dev_priv);
> -	u32 s_reg[SS_MAX], eu_reg[2 * SS_MAX], eu_mask[2];
> -	int s, ss;
> -
> -	for (s = 0; s < info->sseu.max_slices; s++) {
> -		s_reg[s] = I915_READ(GEN9_SLICE_PGCTL_ACK(s));
> -		eu_reg[2*s] = I915_READ(GEN9_SS01_EU_PGCTL_ACK(s));
> -		eu_reg[2*s + 1] = I915_READ(GEN9_SS23_EU_PGCTL_ACK(s));
> -	}
> -
> -	eu_mask[0] = GEN9_PGCTL_SSA_EU08_ACK |
> -		     GEN9_PGCTL_SSA_EU19_ACK |
> -		     GEN9_PGCTL_SSA_EU210_ACK |
> -		     GEN9_PGCTL_SSA_EU311_ACK;
> -	eu_mask[1] = GEN9_PGCTL_SSB_EU08_ACK |
> -		     GEN9_PGCTL_SSB_EU19_ACK |
> -		     GEN9_PGCTL_SSB_EU210_ACK |
> -		     GEN9_PGCTL_SSB_EU311_ACK;
> -
> -	for (s = 0; s < info->sseu.max_slices; s++) {
> -		if ((s_reg[s] & GEN9_PGCTL_SLICE_ACK) == 0)
> -			/* skip disabled slice */
> -			continue;
> -
> -		sseu->slice_mask |= BIT(s);
> -
> -		if (IS_GEN9_BC(dev_priv))
> -			intel_sseu_copy_subslices(&info->sseu, s,
> -						  sseu->subslice_mask);
> -
> -		for (ss = 0; ss < info->sseu.max_subslices; ss++) {
> -			unsigned int eu_cnt;
> -			u8 ss_idx = s * info->sseu.ss_stride +
> -				    ss / BITS_PER_BYTE;
> -
> -			if (IS_GEN9_LP(dev_priv)) {
> -				if (!(s_reg[s] & (GEN9_PGCTL_SS_ACK(ss))))
> -					/* skip disabled subslice */
> -					continue;
> -
> -				sseu->subslice_mask[ss_idx] |=
> -					BIT(ss % BITS_PER_BYTE);
> -			}
> -
> -			eu_cnt = 2 * hweight32(eu_reg[2*s + ss/2] &
> -					       eu_mask[ss%2]);
> -			sseu->eu_total += eu_cnt;
> -			sseu->eu_per_subslice = max_t(unsigned int,
> -						      sseu->eu_per_subslice,
> -						      eu_cnt);
> -		}
> -	}
> -#undef SS_MAX
> -}
> -
> -static void bdw_sseu_device_status(struct drm_i915_private *dev_priv,
> -				   struct sseu_dev_info *sseu)
> -{
> -	const struct intel_runtime_info *info = RUNTIME_INFO(dev_priv);
> -	u32 slice_info = I915_READ(GEN8_GT_SLICE_INFO);
> -	int s;
> -
> -	sseu->slice_mask = slice_info & GEN8_LSLICESTAT_MASK;
> -
> -	if (sseu->slice_mask) {
> -		sseu->eu_per_subslice = info->sseu.eu_per_subslice;
> -		for (s = 0; s < fls(sseu->slice_mask); s++)
> -			intel_sseu_copy_subslices(&info->sseu, s,
> -						  sseu->subslice_mask);
> -		sseu->eu_total = sseu->eu_per_subslice *
> -				 intel_sseu_subslice_total(sseu);
> -
> -		/* subtract fused off EU(s) from enabled slice(s) */
> -		for (s = 0; s < fls(sseu->slice_mask); s++) {
> -			u8 subslice_7eu = info->sseu.subslice_7eu[s];
> -
> -			sseu->eu_total -= hweight8(subslice_7eu);
> -		}
> -	}
> -}
> -
> -static void i915_print_sseu_info(struct seq_file *m, bool is_available_info,
> -				 const struct sseu_dev_info *sseu)
> -{
> -	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> -	const char *type = is_available_info ? "Available" : "Enabled";
> -	int s;
> -
> -	seq_printf(m, "  %s Slice Mask: %04x\n", type,
> -		   sseu->slice_mask);
> -	seq_printf(m, "  %s Slice Total: %u\n", type,
> -		   hweight8(sseu->slice_mask));
> -	seq_printf(m, "  %s Subslice Total: %u\n", type,
> -		   intel_sseu_subslice_total(sseu));
> -	for (s = 0; s < fls(sseu->slice_mask); s++) {
> -		seq_printf(m, "  %s Slice%i subslices: %u\n", type,
> -			   s, intel_sseu_subslices_per_slice(sseu, s));
> -	}
> -	seq_printf(m, "  %s EU Total: %u\n", type,
> -		   sseu->eu_total);
> -	seq_printf(m, "  %s EU Per Subslice: %u\n", type,
> -		   sseu->eu_per_subslice);
> -
> -	if (!is_available_info)
> -		return;
> -
> -	seq_printf(m, "  Has Pooled EU: %s\n", yesno(HAS_POOLED_EU(dev_priv)));
> -	if (HAS_POOLED_EU(dev_priv))
> -		seq_printf(m, "  Min EU in pool: %u\n", sseu->min_eu_in_pool);
> -
> -	seq_printf(m, "  Has Slice Power Gating: %s\n",
> -		   yesno(sseu->has_slice_pg));
> -	seq_printf(m, "  Has Subslice Power Gating: %s\n",
> -		   yesno(sseu->has_subslice_pg));
> -	seq_printf(m, "  Has EU Power Gating: %s\n",
> -		   yesno(sseu->has_eu_pg));
> -}
> -
> -static int i915_sseu_status(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> -	const struct intel_runtime_info *info = RUNTIME_INFO(dev_priv);
> -	struct sseu_dev_info sseu;
> -	intel_wakeref_t wakeref;
> -
> -	if (INTEL_GEN(dev_priv) < 8)
> -		return -ENODEV;
> -
> -	seq_puts(m, "SSEU Device Info\n");
> -	i915_print_sseu_info(m, true, &info->sseu);
> -
> -	seq_puts(m, "SSEU Device Status\n");
> -	memset(&sseu, 0, sizeof(sseu));
> -	intel_sseu_set_info(&sseu, info->sseu.max_slices,
> -			    info->sseu.max_subslices,
> -			    info->sseu.max_eus_per_subslice);
> -
> -	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref) {
> -		if (IS_CHERRYVIEW(dev_priv))
> -			cherryview_sseu_device_status(dev_priv, &sseu);
> -		else if (IS_BROADWELL(dev_priv))
> -			bdw_sseu_device_status(dev_priv, &sseu);
> -		else if (IS_GEN(dev_priv, 9))
> -			gen9_sseu_device_status(dev_priv, &sseu);
> -		else if (INTEL_GEN(dev_priv) >= 10)
> -			gen10_sseu_device_status(dev_priv, &sseu);
> -	}
> -
> -	i915_print_sseu_info(m, false, &sseu);
> -
> -	return 0;
> -}
> -
>   static int i915_forcewake_open(struct inode *inode, struct file *file)
>   {
>   	struct drm_i915_private *i915 = inode->i_private;
> @@ -1865,7 +1609,6 @@ static const struct drm_info_list i915_debugfs_list[] = {
>   	{"i915_rcs_topology", i915_rcs_topology, 0},
>   	{"i915_shrinker_info", i915_shrinker_info, 0},
>   	{"i915_wa_registers", i915_wa_registers, 0},
> -	{"i915_sseu_status", i915_sseu_status, 0},
>   	{"i915_rps_boost_info", i915_rps_boost_info, 0},
>   };
>   #define I915_DEBUGFS_ENTRIES ARRAY_SIZE(i915_debugfs_list)
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
