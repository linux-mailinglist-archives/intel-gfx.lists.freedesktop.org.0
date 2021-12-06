Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42771469753
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Dec 2021 14:42:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 105C57AB00;
	Mon,  6 Dec 2021 13:42:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 98C207AB00;
 Mon,  6 Dec 2021 13:42:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 903F4A47DF;
 Mon,  6 Dec 2021 13:42:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rikard Falkeborn" <rikard.falkeborn@gmail.com>
Date: Mon, 06 Dec 2021 13:42:00 -0000
Message-ID: <163879812055.15874.14326667448141744249@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211204105527.15741-1-rikard.falkeborn@gmail.com>
In-Reply-To: <20211204105527.15741-1-rikard.falkeborn@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gvt=3A_Constify_static_structs?=
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

Series: drm/i915/gvt: Constify static structs
URL   : https://patchwork.freedesktop.org/series/97616/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ad6d0d2d2854 drm/i915/gvt: Constify intel_gvt_gtt_pte_ops
9f75a74af3af drm/i915/gvt: Constify intel_gvt_gtt_pte_ops
-:30: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#30: FILE: drivers/gpu/drm/i915/gvt/gtt.c:530:
+static void update_entry_type_for_real(const struct intel_gvt_gtt_pte_ops *pte_ops,
 	struct intel_gvt_gtt_entry *entry, bool ips)

total: 0 errors, 0 warnings, 1 checks, 256 lines checked
b150cdd67e79 drm/i915/gvt: Constify intel_gvt_irq_ops
e41696ad17dc drm/i915/gvt: Constify intel_gvt_sched_policy_ops
431473d1ea36 drm/i915/gvt: Constify gvt_mmio_block
6b20e5f39324 drm/i915/gvt: Constify cmd_interrupt_events
d11cda723a89 drm/i915/gvt: Constify formats
f75eaccd8a90 drm/i915/gvt: Constify gtt_type_table_entry
1b4f726b33b2 drm/i915/gvt: Constify vgpu_types


