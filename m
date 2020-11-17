Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D742E2B6C92
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 19:09:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5C3C89970;
	Tue, 17 Nov 2020 18:09:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2B2689970
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 18:09:07 +0000 (UTC)
IronPort-SDR: JH//DhnSH5a2DW4BTvoFVsE1mBP1/UyjGgyT1hV3+FsqDUFJID6SywO+zp8moxcRTsY/p28l86
 4lPkeEkDd7Og==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="171076954"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="171076954"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 10:08:31 -0800
IronPort-SDR: R8N1Mvcr7sTan36SNuZ5xUnCEY9dkZc+4zXRnSQ9PqIpKj3P/lMA8YbyAOKKPMTZeoDGhHoR82
 Og047Zh4nI7A==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="544148664"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 10:08:29 -0800
Date: Tue, 17 Nov 2020 10:08:29 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201117180829.GB47109@orsosgc001.ra.intel.com>
References: <20201117110132.22267-1-chris@chris-wilson.co.uk>
 <20201117110132.22267-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201117110132.22267-3-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915/gt: Check for conflicting
 RING_NONPRIV
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 17, 2020 at 11:01:27AM +0000, Chris Wilson wrote:
>Strip the encoded bits from the register offset so that we only use the
>address for looking up the RING_NONPRIV entry.
>
>Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Thanks,
Umesh
>---
> drivers/gpu/drm/i915/gt/intel_workarounds.c | 64 +++++++++++++--------
> 1 file changed, 41 insertions(+), 23 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>index e50c72d2b3f1..290aa277ab10 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -111,18 +111,43 @@ static void wa_init_finish(struct i915_wa_list *wal)
> 			 wal->wa_count, wal->name, wal->engine_name);
> }
>
>+static u32 reg_offset(i915_reg_t reg)
>+{
>+	return i915_mmio_reg_offset(reg) & RING_FORCE_TO_NONPRIV_ADDRESS_MASK;
>+}
>+
>+static u32 reg_flags(i915_reg_t reg)
>+{
>+	return i915_mmio_reg_offset(reg) & ~RING_FORCE_TO_NONPRIV_ADDRESS_MASK;
>+}
>+
>+static inline bool is_nonpriv_flags_valid(u32 flags)
>+{
>+	/* Check only valid flag bits are set */
>+	if (flags & ~RING_FORCE_TO_NONPRIV_MASK_VALID)
>+		return false;
>+
>+	/* NB: Only 3 out of 4 enum values are valid for access field */
>+	if ((flags & RING_FORCE_TO_NONPRIV_ACCESS_MASK) ==
>+	    RING_FORCE_TO_NONPRIV_ACCESS_INVALID)
>+		return false;
>+
>+	return true;
>+}
>+
> static int wa_index(struct i915_wa_list *wal, i915_reg_t reg)
> {
>-	unsigned int addr = i915_mmio_reg_offset(reg);
> 	int start = 0, end = wal->count;
>+	u32 addr = reg_offset(reg);
>
> 	/* addr and wal->list[].reg, both include the R/W flags */
> 	while (start < end) {
> 		unsigned int mid = start + (end - start) / 2;
>+		u32 pos = reg_offset(wal->list[mid].reg);
>
>-		if (i915_mmio_reg_offset(wal->list[mid].reg) < addr)
>+		if (pos < addr)
> 			start = mid + 1;
>-		else if (i915_mmio_reg_offset(wal->list[mid].reg) > addr)
>+		else if (pos > addr)
> 			end = mid;
> 		else
> 			return mid;
>@@ -148,13 +173,22 @@ static void __wa_add(struct i915_wa_list *wal, const struct i915_wa *wa)
> 	struct i915_wa *wa_;
> 	int index;
>
>+	GEM_BUG_ON(!is_nonpriv_flags_valid(reg_flags(wa->reg)));
>+
> 	index = wa_index(wal, wa->reg);
> 	if (index >= 0) {
> 		wa_ = &wal->list[index];
>
>+		if (i915_mmio_reg_offset(wa->reg) !=
>+		    i915_mmio_reg_offset(wa_->reg)) {
>+			DRM_ERROR("Discarding incompatible w/a for reg %04x\n",
>+				  reg_offset(wa->reg));
>+			return;
>+		}
>+
> 		if ((wa->clr | wa_->clr) && !(wa->clr & ~wa_->clr)) {
> 			DRM_ERROR("Discarding overwritten w/a for reg %04x (clear: %08x, set: %08x)\n",
>-				  i915_mmio_reg_offset(wa_->reg),
>+				  reg_offset(wa_->reg),
> 				  wa_->clr, wa_->set);
>
> 			wa_->set &= ~wa->clr;
>@@ -172,10 +206,8 @@ static void __wa_add(struct i915_wa_list *wal, const struct i915_wa *wa)
> 	*wa_ = *wa;
>
> 	while (wa_-- > wal->list) {
>-		GEM_BUG_ON(i915_mmio_reg_offset(wa_[0].reg) ==
>-			   i915_mmio_reg_offset(wa_[1].reg));
>-		if (i915_mmio_reg_offset(wa_[1].reg) >
>-		    i915_mmio_reg_offset(wa_[0].reg))
>+		GEM_BUG_ON(reg_offset(wa_[0].reg) == reg_offset(wa_[1].reg));
>+		if (reg_offset(wa_[1].reg) > reg_offset(wa_[0].reg))
> 			break;
>
> 		swap(wa_[1], wa_[0]);
>@@ -191,7 +223,7 @@ static void _wa_add(struct i915_wa_list *wal, const struct i915_wa *wa)
> 	if (IS_ALIGNED(wal->count, grow) && /* Either uninitialized or full. */
> 	    wa_list_grow(wal, ALIGN(wal->count + 1, grow), GFP_KERNEL)) {
> 		DRM_ERROR("Unable to store w/a for reg %04x\n",
>-			  i915_mmio_reg_offset(wa->reg));
>+			  reg_offset(wa->reg));
> 		return;
> 	}
>
>@@ -1443,20 +1475,6 @@ bool intel_gt_verify_workarounds(struct intel_gt *gt, const char *from)
> 	return wa_list_verify(gt->uncore, &gt->i915->gt_wa_list, from);
> }
>
>-static inline bool is_nonpriv_flags_valid(u32 flags)
>-{
>-	/* Check only valid flag bits are set */
>-	if (flags & ~RING_FORCE_TO_NONPRIV_MASK_VALID)
>-		return false;
>-
>-	/* NB: Only 3 out of 4 enum values are valid for access field */
>-	if ((flags & RING_FORCE_TO_NONPRIV_ACCESS_MASK) ==
>-	    RING_FORCE_TO_NONPRIV_ACCESS_INVALID)
>-		return false;
>-
>-	return true;
>-}
>-
> static void
> whitelist_reg_ext(struct i915_wa_list *wal, i915_reg_t reg, u32 flags)
> {
>-- 
>2.20.1
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
