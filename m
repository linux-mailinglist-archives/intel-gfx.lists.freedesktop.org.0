Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D84BF207023
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 11:37:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E3006EABC;
	Wed, 24 Jun 2020 09:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 231CC6EABC;
 Wed, 24 Jun 2020 09:37:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1C67EA0BD0;
 Wed, 24 Jun 2020 09:37:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Wed, 24 Jun 2020 09:37:33 -0000
Message-ID: <159299145308.19236.8153963028621366171@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200623215235.125665-1-jose.souza@intel.com>
In-Reply-To: <20200623215235.125665-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/display/rkl=3A_Impl?=
 =?utf-8?q?ement_WA_14011471926?=
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

Series: series starting with [1/2] drm/i915/display/rkl: Implement WA 14011471926
URL   : https://patchwork.freedesktop.org/series/78761/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bd24ac2db018 drm/i915/display/rkl: Implement WA 14011471926
3ac2f590c2c8 drm/i915/display: Rename COMP_INIT to CNL_PORT_COMP_DW0_COMP_INIT
fe2335f73891 drm/i915/display: Implement new combo phy initialization step
-:78: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#78: FILE: drivers/gpu/drm/i915/i915_reg.h:2091:
+#define ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2	REG_FIELD_PREP(ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK, 0x1)

total: 0 errors, 1 warnings, 0 checks, 56 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
