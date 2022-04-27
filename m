Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7722551277D
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Apr 2022 01:26:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D2B110E74C;
	Wed, 27 Apr 2022 23:26:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A674210E74C;
 Wed, 27 Apr 2022 23:26:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 93E18A7DFC;
 Wed, 27 Apr 2022 23:26:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 27 Apr 2022 23:26:20 -0000
Message-ID: <165110198057.24235.11850979814340183758@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220427230747.906625-1-matthew.d.roper@intel.com>
In-Reply-To: <20220427230747.906625-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_SSEU_handling_updates?=
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

Series: i915: SSEU handling updates
URL   : https://patchwork.freedesktop.org/series/103244/
State : warning

== Summary ==

Error: dim checkpatch failed
55dde4d186fd drm/i915/sseu: Don't try to store EU mask internally in UAPI format
313094aca5e5 drm/i915/xehp: Drop GETPARAM lookups of I915_PARAM_[SUB]SLICE_MASK
706b98dc34e8 drm/i915/xehp: Use separate sseu init function
d03e472adee0 drm/i915/sseu: Simplify gen11+ SSEU handling
d98bc53c851d drm/i915/sseu: Disassociate internal subslice mask representation from uapi
-:485: WARNING:NEW_TYPEDEFS: do not add new typedefs
#485: FILE: drivers/gpu/drm/i915/gt/intel_sseu.h:62:
+typedef struct {

total: 0 errors, 1 warnings, 0 checks, 690 lines checked


