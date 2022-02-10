Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8B64B0193
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 01:37:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9356710E6C5;
	Thu, 10 Feb 2022 00:37:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 845F210E6D7;
 Thu, 10 Feb 2022 00:37:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 81B94A8836;
 Thu, 10 Feb 2022 00:37:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Thu, 10 Feb 2022 00:37:18 -0000
Message-ID: <164445343850.24641.2402010313704286103@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220209235857.245687-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220209235857.245687-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dg2=3A_Invalidate_LSC_L1_cache?=
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

Series: drm/i915/dg2: Invalidate LSC L1 cache
URL   : https://patchwork.freedesktop.org/series/99926/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
add021eabf06 drm/i915/dg2: Invalidate LSC L1 cache
-:20: WARNING:LONG_LINE: line length of 131 exceeds 100 columns
#20: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:1091:
+#define   INVALIDATE_UNTYPED_L1					REG_FIELD_PREP(LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK, 0x2)

total: 0 errors, 1 warnings, 0 checks, 20 lines checked


