Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B04C520B3D6
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 16:44:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 143916E28B;
	Fri, 26 Jun 2020 14:44:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8C6246E28B;
 Fri, 26 Jun 2020 14:44:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86269A00FD;
 Fri, 26 Jun 2020 14:44:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Fri, 26 Jun 2020 14:44:41 -0000
Message-ID: <159318268151.22983.9349251992760871840@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200625195252.39312-1-jose.souza@intel.com>
In-Reply-To: <20200625195252.39312-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Implement_new_combo_phy_initialization_?=
 =?utf-8?q?step_=28rev2=29?=
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

Series: drm/i915/display: Implement new combo phy initialization step (rev2)
URL   : https://patchwork.freedesktop.org/series/78796/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
faec0ee3d268 drm/i915/display: Implement new combo phy initialization step
-:89: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#89: FILE: drivers/gpu/drm/i915/i915_reg.h:2082:
+#define   ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2	REG_FIELD_PREP(ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK, 0x1)

total: 0 errors, 1 warnings, 0 checks, 58 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
