Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5F2301F4A
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Jan 2021 23:36:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8DD589C33;
	Sun, 24 Jan 2021 22:36:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CDCC389C2C;
 Sun, 24 Jan 2021 22:36:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5688A9A43;
 Sun, 24 Jan 2021 22:36:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sun, 24 Jan 2021 22:36:14 -0000
Message-ID: <161152777484.10310.1615852551352789884@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210122205633.18492-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210122205633.18492-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Remainder_of_dbuf_state_stuff_=28rev4=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Remainder of dbuf state stuff (rev4)
URL   : https://patchwork.freedesktop.org/series/83114/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8502dc616912 drm/i915: Extract intel_crtc_ddb_weight()
192a1ce9a57e drm/i915: Pass the crtc to skl_compute_dbuf_slices()
089f3c212ac3 drm/i915: Introduce intel_dbuf_slice_size()
876a831b047d drm/i915: Introduce skl_ddb_entry_for_slices()
81cfa01bd61b drm/i915: Add pipe ddb entries into the dbuf state
fae390c08ff4 drm/i915: Extract intel_crtc_dbuf_weights()
-:140: WARNING:LINE_SPACING: Missing a blank line after declarations
#140: FILE: drivers/gpu/drm/i915/intel_pm.c:4195:
+				   struct skl_ddb_entry *alloc, /* out */
+				   int *num_active /* out */)

total: 0 errors, 1 warnings, 0 checks, 178 lines checked
08058285382b drm/i915: Encapsulate dbuf state handling harder
0636d62e81e3 drm/i915: Do a bit more initial readout for dbuf


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
