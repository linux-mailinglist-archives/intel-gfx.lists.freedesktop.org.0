Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D973B85659
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 16:58:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 917FF10E1FE;
	Thu, 18 Sep 2025 14:58:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60F3F10E1FE;
 Thu, 18 Sep 2025 14:58:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/1915=3A_skl+_watermar?=
 =?utf-8?q?k/latency_stuff_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Sep 2025 14:58:42 -0000
Message-ID: <175820752238.345439.18275488956856902751@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
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

Series: drm/1915: skl+ watermark/latency stuff (rev3)
URL   : https://patchwork.freedesktop.org/series/154100/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/154100/revisions/3/mbox/ not applied
Applying: drm/i915/dram: Also apply the 16Gb DIMM w/a for larger DRAM chips
Applying: drm/i915: Apply the 16Gb DIMM w/a only for the platforms that need it
Applying: drm/i915: Tweak the read latency fixup code
Applying: drm/i915: Don't pass the latency array to {skl, mtl}_read_wm_latency()
Applying: drm/i915: Move adjust_wm_latency() out from {mtl, skl}_read_wm_latency()
Applying: drm/i915: Extract multiply_wm_latency() from skl_read_wm_latency()
Applying: drm/i915: Extract increase_wm_latency()
Applying: drm/i915: Use increase_wm_latency() for the 16Gb DIMM w/a
Applying: drm/i915: Extract sanitize_wm_latency()
Applying: drm/i915: Flatten sanitize_wm_latency() a bit
Applying: drm/i915: Make wm latencies monotonic
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/display/skl_watermark.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0011 drm/i915: Make wm latencies monotonic
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


