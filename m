Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D926246698
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Aug 2020 14:46:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06AE089F6B;
	Mon, 17 Aug 2020 12:46:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21D6C89F6B
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Aug 2020 12:46:11 +0000 (UTC)
IronPort-SDR: YcfCmrK/bp5bvIh+tvCFbT21b37JjMg7VHMSxqkQAQ8NXQirKaRcL7RMUgp8IMRtgkKBfNX+by
 y9wOQ80f+1XA==
X-IronPort-AV: E=McAfee;i="6000,8403,9715"; a="219015419"
X-IronPort-AV: E=Sophos;i="5.76,322,1592895600"; d="scan'208";a="219015419"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2020 05:46:09 -0700
IronPort-SDR: xTwTFw00TGuZAg+WTlmvijPBVXP1Td+JvJVH7JUHwPi0AGsilJOf4s9s7MrpXJ1hOm6Ika3iHR
 muJM6do3MuqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,322,1592895600"; d="scan'208";a="319702948"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.214.206.170])
 by fmsmga004.fm.intel.com with ESMTP; 17 Aug 2020 05:46:06 -0700
MIME-Version: 1.0
In-Reply-To: <20200817123412.4655-1-mika.kuoppala@linux.intel.com>
References: <20200817123412.4655-1-mika.kuoppala@linux.intel.com>
From: Chris Wilson <chris.p.wilson@intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 17 Aug 2020 13:46:04 +0100
Message-ID: <159766836466.667.7312583547693920058@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix cmd parser desc matching with
 masks
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
Cc: Takashi Iwai <tiwai@suse.de>, stable@vger.kernel.org,
 Tyler Hicks <tyhicks@canonical.com>, Miroslav Benes <mbenes@suse.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2020-08-17 13:34:12)
> Our variety of defined gpu commands have the actual
> command id field and possibly length and flags applied.
> 
> We did start to apply the mask during initialization of
> the cmd descriptors but forgot to also apply it on comparisons.
> 
> Fix comparisons in order to properly deny access with
> associated commands.
> 
> References: 926abff21a8f ("drm/i915/cmdparser: Ignore Length operands during command matching")
> Reported-by: Nicolai Stange <nstange@suse.de>
> Cc: stable@vger.kernel.org # v5.4+
> Cc: Miroslav Benes <mbenes@suse.cz>
> Cc: Takashi Iwai <tiwai@suse.de>
> Cc: Tyler Hicks <tyhicks@canonical.com>
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_cmd_parser.c | 22 ++++++++++++++--------
>  1 file changed, 14 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
> index 372354d33f55..f2b0eb458d2d 100644
> --- a/drivers/gpu/drm/i915/i915_cmd_parser.c
> +++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
> @@ -1204,6 +1204,12 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
>         return dst;
>  }
>  
> +static inline bool cmd_desc_is(const struct drm_i915_cmd_descriptor * const desc,
> +                              const u32 cmd)
> +{
> +       return desc->cmd.value == (cmd & desc->cmd.mask);
> +}
> +
>  static bool check_cmd(const struct intel_engine_cs *engine,
>                       const struct drm_i915_cmd_descriptor *desc,
>                       const u32 *cmd, u32 length)
> @@ -1242,24 +1248,24 @@ static bool check_cmd(const struct intel_engine_cs *engine,
>                          * allowed mask/value pair given in the whitelist entry.
>                          */
>                         if (reg->mask) {
> -                               if (desc->cmd.value == MI_LOAD_REGISTER_MEM) {
> +                               if (cmd_desc_is(desc, MI_LOAD_REGISTER_MEM)) {
>                                         DRM_DEBUG("CMD: Rejected LRM to masked register 0x%08X\n",
>                                                   reg_addr);
>                                         return false;
> -                               }
> -
> -                               if (desc->cmd.value == MI_LOAD_REGISTER_REG) {
> +                               } else if (cmd_desc_is(desc, MI_LOAD_REGISTER_REG)) {
>                                         DRM_DEBUG("CMD: Rejected LRR to masked register 0x%08X\n",
>                                                   reg_addr);
>                                         return false;
> -                               }
> -
> -                               if (desc->cmd.value == MI_LOAD_REGISTER_IMM(1) &&
> +                               } else if (cmd_desc_is(desc, MI_LOAD_REGISTER_IMM(1)) &&
>                                     (offset + 2 > length ||
>                                      (cmd[offset + 1] & reg->mask) != reg->value)) {
>                                         DRM_DEBUG("CMD: Rejected LRI to masked register 0x%08X\n",
>                                                   reg_addr);
>                                         return false;

This needs to be split into a pass/fail.

The idea is that we want to allow an LRI into the register so long as it
doesn't touch the masked bits. In this case we now fallthrough to the
final rejection.

switch (desc->cmd.value) {
case MI_INSTR(MI_LOAD_REGISTER_MEM, 0): /* I wish */
	...
	return false;

case MI_INSTR(MI_LOAD_REGISTER_REG, 0):
	...
	return false;

case MI_INSTR(MI_LOAD_REGISTER_IMM, 0):
	if (offset + 2 > length || cmd[offset...] != allowed) {
		...
		return false;
	}
	break; /* allow the LRI to update the other bits in reg */

default:
	....
	return false;
}
---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
