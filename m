Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 889656787B7
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 21:27:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF3A610E55D;
	Mon, 23 Jan 2023 20:27:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2B92410E56B;
 Mon, 23 Jan 2023 20:27:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1171DA47DF;
 Mon, 23 Jan 2023 20:27:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Mon, 23 Jan 2023 20:27:28 -0000
Message-ID: <167450564806.348.7947305127871646977@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230123185629.1593320-1-jonathan.cavitt@intel.com>
In-Reply-To: <20230123185629.1593320-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Use_uabi_engines_for_the_default_engine_map_=28?=
 =?utf-8?q?rev4=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Use uabi engines for the default engine map (rev4)
URL   : https://patchwork.freedesktop.org/series/68395/
State : warning

== Summary ==

Error: dim checkpatch failed
0d0b8f01c267 drm/i915: Use uabi engines for the default engine map
-:11: WARNING:BAD_SIGN_OFF: Non-standard signature: 'Reveiwed-by:' - perhaps 'Reviewed-by:'?
#11: 
Reveiwed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

-:42: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#42: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1115:
+		GEM_BUG_ON(engine->legacy_idx >= max);

total: 0 errors, 2 warnings, 0 checks, 27 lines checked


