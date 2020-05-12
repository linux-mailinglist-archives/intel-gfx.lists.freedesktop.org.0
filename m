Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B721CFD75
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 20:41:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33AE96E965;
	Tue, 12 May 2020 18:41:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C7ED26E965;
 Tue, 12 May 2020 18:41:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C2BA0A3C0D;
 Tue, 12 May 2020 18:41:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swathi Dhanavanthri" <swathi.dhanavanthri@intel.com>
Date: Tue, 12 May 2020 18:41:29 -0000
Message-ID: <158930888976.18141.2360386058233246395@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200512180050.6785-1-swathi.dhanavanthri@intel.com>
In-Reply-To: <20200512180050.6785-1-swathi.dhanavanthri@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/ehl=3A_Restrict_w/a_1607087056_for_EHL/JSL?=
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

Series: drm/i915/ehl: Restrict w/a 1607087056 for EHL/JSL
URL   : https://patchwork.freedesktop.org/series/77199/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d26f548aa0bd drm/i915/ehl: Restrict w/a 1607087056 for EHL/JSL
-:44: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#44: FILE: drivers/gpu/drm/i915/i915_drv.h:1522:
+#define IS_EHL_REVID(p, since, until) \
+	(IS_ELKHARTLAKE(p) && IS_REVID(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 28 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
