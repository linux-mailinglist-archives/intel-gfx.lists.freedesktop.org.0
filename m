Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BFE29CDC1
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 05:14:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 031876EC81;
	Wed, 28 Oct 2020 04:14:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A07C66EC81;
 Wed, 28 Oct 2020 04:14:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 99EACA8836;
 Wed, 28 Oct 2020 04:14:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 28 Oct 2020 04:14:26 -0000
Message-ID: <160385846660.21339.7740964944520043845@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201027203955.28032-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201027203955.28032-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Remainder_of_dbuf_state_stuff?=
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

Series: drm/i915: Remainder of dbuf state stuff
URL   : https://patchwork.freedesktop.org/series/83114/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
202be8e23dc4 drm/i915: Extract intel_crtc_ddb_weight()
bda46a35b586 drm/i915: Pass the crtc to skl_compute_dbuf_slices()
6a588188fcb5 drm/i915: Introduce intel_dbuf_slice_size()
03c4ee861f09 drm/i915: Introduce skl_ddb_entry_for_slices()
81f28d6b4767 drm/i915: Move pipe ddb entries into the dbuf state
8b63f79bdf58 drm/i915: Extract intel_crtc_dbuf_weights()
-:137: WARNING:LINE_SPACING: Missing a blank line after declarations
#137: FILE: drivers/gpu/drm/i915/intel_pm.c:4203:
+				   struct skl_ddb_entry *alloc, /* out */
+				   int *num_active /* out */)

total: 0 errors, 1 warnings, 0 checks, 176 lines checked
505b319e81b4 drm/i915: Encapsulate dbuf state handling harder
e59e0901b431 drm/i915: Do a bit more initial readout for dbuf


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
