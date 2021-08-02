Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBB83DDDE7
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Aug 2021 18:44:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FF5C6E7D0;
	Mon,  2 Aug 2021 16:44:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 808B36E7D0;
 Mon,  2 Aug 2021 16:44:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7905AAA0EA;
 Mon,  2 Aug 2021 16:44:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 02 Aug 2021 16:44:27 -0000
Message-ID: <162792266746.3900.6090351139091118001@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210802154806.3710472-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210802154806.3710472-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_remove_rcu_support_from_i915=5Faddress=5Fspace?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: remove rcu support from i915_address_space
URL   : https://patchwork.freedesktop.org/series/93314/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a853815d3335 drm/i915: Drop code to handle set-vm races from execbuf
-:17: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#17: 
References: ccbc1b97948a ("drm/i915/gem: Don't allow changing the VM on running contexts (v4)")

-:17: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit ccbc1b97948a ("drm/i915/gem: Don't allow changing the VM on running contexts (v4)")'
#17: 
References: ccbc1b97948a ("drm/i915/gem: Don't allow changing the VM on running contexts (v4)")

-:46: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 2 warnings, 0 checks, 12 lines checked
aa6df2fc9251 drm/i915: Rename i915_gem_context_get_vm_rcu to i915_gem_context_get_eb_vm
-:148: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 80 lines checked
20c77ecc9eb2 drm/i915: Use i915_gem_context_get_eb_vm in ctx_getparam
-:54: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 23 lines checked
9e17d78e71b6 drm/i915: Add i915_gem_context_is_full_ppgtt
-:94: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 45 lines checked
fd4782224117 drm/i915: Use i915_gem_context_get_eb_vm in intel_context_set_gem
-:12: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit ccbc1b97948a ("drm/i915/gem: Don't allow changing the VM on running contexts (v4)")'
#12: 
commit ccbc1b97948ab671335e950271e39766729736c3

-:61: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 18 lines checked
7f70a2efa858 drm/i915: Drop __rcu from gem_context->vm
-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit ccbc1b97948a ("drm/i915/gem: Don't allow changing the VM on running contexts (v4)")'
#11: 
    commit ccbc1b97948ab671335e950271e39766729736c3

-:23: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#23: 
  i915_vm_open ofc. This also removes the final caller of context_get_vm_rcu

-:42: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit a4e7ccdac38e ("drm/i915: Move context management under GEM")'
#42: 
commit a4e7ccdac38ec8335d9e4e2656c1a041c77feae1

-:345: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 2 errors, 2 warnings, 0 checks, 232 lines checked
1b7a4cebddcd drm/i915: use xa_lock/unlock for fpriv->vm_xa lookups
-:15: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit aabbe344dc3c ("drm/i915: Use RCU for unlocked vm_idr lookup")'
#15: 
commit aabbe344dc3ca5f7d8263a02608ba6179e8a4499

-:52: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 13 lines checked
e446a68d6f87 drm/i915: Stop rcu support for i915_address_space
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
- i915_dpt has very simple lifetime (somehow we create a display pagetable vm

-:27: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit cf977e18610e ("drm/i915/gem: Spring clean debugfs")'
#27: 
	commit cf977e18610e66e48c31619e7e0cfa871be9eada

-:35: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit db80a1294c23 ("drm/i915/gem: Remove per-client stats from debugfs/i915_gem_objects")'
#35: 
	commit db80a1294c231b6ac725085f046bb2931e00c9db

-:47: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit ccbc1b97948a ("drm/i915/gem: Don't allow changing the VM on running contexts (v4)")'
#47: 
	commit ccbc1b97948ab671335e950271e39766729736c3

-:59: WARNING:TYPO_SPELLING: 'Preceeding' may be misspelled - perhaps 'Preceding'?
#59: 
  Preceeding patches removed all vestiges of rcu use from gem_ctx->vm
  ^^^^^^^^^^

-:64: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit a4e7ccdac38e ("drm/i915: Move context management under GEM")'
#64: 
	commit a4e7ccdac38ec8335d9e4e2656c1a041c77feae1

-:88: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit c744d50363b7 ("drm/i915/gt: Split the breadcrumb spinlock between global and contexts")'
#88: 
	commit c744d50363b714783bbc88d986cc16def13710f7

-:94: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit added5fce61e ("ARM: mxs_defconfig: add CONFIG_USB_PHY")'
#94: 
  its parent commit added the intel_context rcu protection:

-:96: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 14d1eaf08845 ("drm/i915/gt: Protect context lifetime with RCU")'
#96: 
	commit 14d1eaf08845c534963c83f754afe0cb14cb2512

-:114: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 4d8151ae5329 ("drm/i915: Don't free shared locks while shared")'
#114: 
	commit 4d8151ae5329cf50781a02fd2298a909589a5bab

-:130: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit e6ba76480299 ("drm/i915: Remove i915->kernel_context")'
#130: 
	commit e6ba76480299a0d77c51d846f7467b1673aad25b

-:143: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 4ff4b44cbb70 ("drm/i915: Store a direct lookup from object handle to vma")'
#143: 
	commit 4ff4b44cbb70c269259958cbcc48d7b8a2cb9ec8

-:152: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d1b48c1e7184 ("drm/i915: Replace execbuf vma ht with an idr")'
#152: 
	commit d1b48c1e7184d9bc4ae6d7f9fe2eed9efed11ffc

-:160: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 93159e12353c ("drm/i915/gem: Avoid gem_context->mutex for simple vma lookup")'
#160: 
	commit 93159e12353c2a47e5576d642845a91fa00530bf

-:183: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit b32fa8111563 ("drm/i915/gtt: Defer address space cleanup to an RCU worker")'
#183: 
commit b32fa811156328aea5a3c2ff05cc096490382456

-:201: WARNING:TYPO_SPELLING: 'wont' may be misspelled - perhaps 'won't'?
#201: 
that's a preexisting condition in the codeebase that we wont fix in
                                                        ^^^^

-:206: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 60a4233a4952 ("drm/i915: Flush the i915_vm_release before ggtt shutdown")'
#206: 
commit 60a4233a4952729089e4df152e730f8f4d0e82ce

-:279: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 14 errors, 4 warnings, 0 checks, 39 lines checked
93a5db9c9c6e drm/i915: Split out intel_context_create_user
-:20: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit ccbc1b97948a ("drm/i915/gem: Don't allow changing the VM on running contexts (v4)")'
#20: 
        commit ccbc1b97948ab671335e950271e39766729736c3

-:171: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 104 lines checked


