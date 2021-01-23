Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9552B301205
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 02:32:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91F5D6EA4C;
	Sat, 23 Jan 2021 01:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D91FF6EA4C;
 Sat, 23 Jan 2021 01:32:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9AF8A47E9;
 Sat, 23 Jan 2021 01:32:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sat, 23 Jan 2021 01:32:38 -0000
Message-ID: <161136555879.14871.11328967788379850241@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210122205633.18492-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210122205633.18492-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Remainder_of_dbuf_state_stuff_=28rev3=29?=
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

Series: drm/i915: Remainder of dbuf state stuff (rev3)
URL   : https://patchwork.freedesktop.org/series/83114/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f49e0164bdf9 drm/i915: Extract intel_crtc_ddb_weight()
f8f4731253f8 drm/i915: Pass the crtc to skl_compute_dbuf_slices()
e2ee6fe81124 drm/i915: Introduce intel_dbuf_slice_size()
5fd6292b07a2 drm/i915: Introduce skl_ddb_entry_for_slices()
18e3afb430ed drm/i915: Add pipe ddb entries into the dbuf state
c1606ef4d078 drm/i915: Extract intel_crtc_dbuf_weights()
-:140: WARNING:LINE_SPACING: Missing a blank line after declarations
#140: FILE: drivers/gpu/drm/i915/intel_pm.c:4195:
+				   struct skl_ddb_entry *alloc, /* out */
+				   int *num_active /* out */)

total: 0 errors, 1 warnings, 0 checks, 178 lines checked
a2e058af9aff drm/i915: Encapsulate dbuf state handling harder
1ab0168d4457 drm/i915: Do a bit more initial readout for dbuf


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
