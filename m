Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3063EC6BC
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Aug 2021 04:24:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8220A89DA4;
	Sun, 15 Aug 2021 02:24:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8928E89CD9;
 Sun, 15 Aug 2021 02:24:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8551BA00F5;
 Sun, 15 Aug 2021 02:24:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 15 Aug 2021 02:24:10 -0000
Message-ID: <162899425054.6204.9233702426273390781@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210815021152.410835-1-jose.souza@intel.com>
In-Reply-To: <20210815021152.410835-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/display/skl+=3A_Dro?=
 =?utf-8?q?p_frontbuffer_rendering_support?=
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

Series: series starting with [1/3] drm/i915/display/skl+: Drop frontbuffer rendering support
URL   : https://patchwork.freedesktop.org/series/93696/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ac3273ded1ca drm/i915/display/skl+: Drop frontbuffer rendering support
338b509415ce drm/i915/display: Drop PSR support from HSW and BDW
-:255: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#255: FILE: drivers/gpu/drm/i915/i915_reg.h:4563:
+#define EDP_PSR_AUX_DATA(tran, i)		_MMIO(_TRANS2(tran, _SRD_AUX_DATA_A) + (i) + 4) /* 5 registers */

total: 0 errors, 1 warnings, 0 checks, 232 lines checked
4b93b4a2d08f drm/i915/psr: Drop frontbuffer rendering support
-:250: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#250: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1898:
+#if 0

total: 0 errors, 1 warnings, 0 checks, 290 lines checked


