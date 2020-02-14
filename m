Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7294415F4F7
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 19:29:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FF926FB7A;
	Fri, 14 Feb 2020 18:29:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B180B6FB7A
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 18:29:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20229898-1500050 for multiple; Fri, 14 Feb 2020 18:29:35 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Brian Welty <brian.welty@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200213001418.5899-1-brian.welty@intel.com>
 <158155408885.11180.1339348747260218156@skylake-alporthouse-com>
 <6783dddd-a9e4-c8b2-c169-b5aa7088dd7f@intel.com>
 <383e75e2-a29a-4c8c-e3ba-579008464a45@intel.com>
In-Reply-To: <383e75e2-a29a-4c8c-e3ba-579008464a45@intel.com>
Message-ID: <158170497173.15393.11944816323451861470@skylake-alporthouse-com>
Date: Fri, 14 Feb 2020 18:29:31 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Fix selftest_mocs for
 DGFX
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

Quoting Daniele Ceraolo Spurio (2020-02-14 17:56:58)
> 
> 
> On 2/12/20 4:49 PM, Brian Welty wrote:
> > 
> > On 2/12/2020 4:34 PM, Chris Wilson wrote:
> >> Quoting Brian Welty (2020-02-13 00:14:18)
> >>> For DGFX devices, the MOCS control value is not initialized or used.
> >>
> >> Then why is the table populated?
> >> -Chris
> >>
> > 
> > The format has changed (been reduced?) for DGFX.  drm_i915_mocs_entry.l3cc_value is what is still initialized/used.
> > Probably first needed is the patch that defines the table entries for DGFX.
> > Ugh, I didn't notice this wasn't applied yet.  Let me ask about this.
> > 
> 
> We do have:
> 
> commit e6e2ac07118b15f25683fcbd59ea1be73ec9465d
> Author: Lucas De Marchi <lucas.demarchi@intel.com>
> Date:   Thu Oct 24 12:51:21 2019 -0700
> 
>      drm/i915: do not set MOCS control values on dgfx
> 
> So I see no reason not to add this change to the test side to match 
> that. Maybe we can add an additional check in the test to validate that 
> all the control_entries are set to 0 in the table on DGFX?

My expectation was that as we were not setting mocs values, we would not
have defined a table for it. However, the table is combined for mocs and
l3cc. l3cc is still used, right?

My ideal would be that our tables did remain the truth value we could
use directly -- that would require splitting the tables though.

If we did something like

diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
index de1f83100fb6..2c636257f12c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
@@ -12,7 +12,8 @@
 #include "selftests/igt_spinner.h"

 struct live_mocs {
-	struct drm_i915_mocs_table table;
+	struct drm_i915_mocs_table mocs;
+	struct drm_i915_mocs_table l3cc;
 	struct i915_vma *scratch;
 	void *vaddr;
 };
@@ -68,13 +69,32 @@ static struct i915_vma *create_scratch(struct intel_gt *gt)
 	return vma;
 }

+static bool has_l3cc(struct drm_i915_private *i915)
+{
+	return true;
+}
+
+static bool has_mocs(struct drm_i915_private *i915)
+{
+	return !IS_DGFX(i915);
+}
+
 static int live_mocs_init(struct live_mocs *arg, struct intel_gt *gt)
 {
+	struct drm_i915_mocs_table table;
 	int err;

-	if (!get_mocs_settings(gt->i915, &arg->table))
+	memset(arg, 0, sizeof(*arg));
+
+	if (!get_mocs_settings(gt->i915, &table))
 		return -EINVAL;

+	if (has_l3cc(gt->i915))
+		arg->l3cc = table;
+
+	if (has_mocs(gt->i915))
+		arg->mocs = table;
+
 	arg->scratch = create_scratch(gt);
 	if (IS_ERR(arg->scratch))
 		return PTR_ERR(arg->scratch);
@@ -223,9 +243,9 @@ static int check_mocs_engine(struct live_mocs *arg,
 	/* Read the mocs tables back using SRM */
 	offset = i915_ggtt_offset(vma);
 	if (!err)
-		err = read_mocs_table(rq, &arg->table, &offset);
+		err = read_mocs_table(rq, &arg->mocs, &offset);
 	if (!err && ce->engine->class == RENDER_CLASS)
-		err = read_l3cc_table(rq, &arg->table, &offset);
+		err = read_l3cc_table(rq, &arg->l3cc, &offset);
 	offset -= i915_ggtt_offset(vma);
 	GEM_BUG_ON(offset > PAGE_SIZE);

@@ -236,9 +256,9 @@ static int check_mocs_engine(struct live_mocs *arg,
 	/* Compare the results against the expected tables */
 	vaddr = arg->vaddr;
 	if (!err)
-		err = check_mocs_table(ce->engine, &arg->table, &vaddr);
+		err = check_mocs_table(ce->engine, &arg->mocs, &vaddr);
 	if (!err && ce->engine->class == RENDER_CLASS)
-		err = check_l3cc_table(ce->engine, &arg->table, &vaddr);
+		err = check_l3cc_table(ce->engine, &arg->l3cc, &vaddr);
 	if (err)
 		return err;


we could retain the table driven approach?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
