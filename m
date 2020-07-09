Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DB221AA69
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 00:20:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C9A56EB45;
	Thu,  9 Jul 2020 22:20:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D8DDE6EB45;
 Thu,  9 Jul 2020 22:20:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C02E9A47EB;
 Thu,  9 Jul 2020 22:20:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 09 Jul 2020 22:20:34 -0000
Message-ID: <159433323475.31091.9172641059770378364@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200709211357.23208-1-lucas.demarchi@intel.com>
In-Reply-To: <20200709211357.23208-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/6=5D_drm/i915=3A_Add_has=5Fm?=
 =?utf-8?q?aster=5Funit=5Firq_flag?=
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

Series: series starting with [CI,1/6] drm/i915: Add has_master_unit_irq flag
URL   : https://patchwork.freedesktop.org/series/79316/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e4cf5d2b2a11 drm/i915: Add has_master_unit_irq flag
343e6cd5cf65 drm/i915/dg1: add initial DG-1 definitions
-:45: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#45: FILE: drivers/gpu/drm/i915/i915_drv.h:1566:
+#define IS_DG1_REVID(p, since, until) \
+	(IS_DG1(p) && IS_REVID(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 53 lines checked
f1b701facb7b drm/i915/dg1: Add DG1 PCI IDs
eac5d1d298b5 drm/i915/dg1: add support for the master unit interrupt
c618720612b5 drm/i915/dg1: Remove SHPD_FILTER_CNT register programming
61af7546dbe0 drm/i915/dg1: Add fake PCH

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
