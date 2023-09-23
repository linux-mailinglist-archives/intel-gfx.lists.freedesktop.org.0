Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA6B7ABD17
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Sep 2023 03:34:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AB3A10E087;
	Sat, 23 Sep 2023 01:34:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BCAC010E021;
 Sat, 23 Sep 2023 01:34:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 87221A00E8;
 Sat, 23 Sep 2023 01:34:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Date: Sat, 23 Sep 2023 01:34:30 -0000
Message-ID: <169543287051.3502.14851079501775052325@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230922133003.150578-1-vinod.govindapillai@intel.com>
In-Reply-To: <20230922133003.150578-1-vinod.govindapillai@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_fbc_on_any_planes_=28rev3=29?=
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

Series: fbc on any planes (rev3)
URL   : https://patchwork.freedesktop.org/series/123180/
State : warning

== Summary ==

Error: dim checkpatch failed
96ecdcaf57cb drm/i915/lnl: possibility to enable FBC on first three planes
-:74: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#74: FILE: drivers/gpu/drm/i915/i915_reg.h:1331:
+#define   DPFC_CTL_PLANE_BINDING(plane_id)	REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, (plane_id))

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
5914e9bbb6e2 drm/i915/lnl: update the supported plane formats with FBC


