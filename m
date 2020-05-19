Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F0A1DA51D
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 01:06:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39A5B6E3A6;
	Tue, 19 May 2020 23:06:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A1E506E3A2;
 Tue, 19 May 2020 23:06:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 941C1A008A;
 Tue, 19 May 2020 23:06:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swathi Dhanavanthri" <swathi.dhanavanthri@intel.com>
Date: Tue, 19 May 2020 23:06:38 -0000
Message-ID: <158992959858.31238.8801984757362904430@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200519201256.31226-1-swathi.dhanavanthri@intel.com>
In-Reply-To: <20200519201256.31226-1-swathi.dhanavanthri@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/ehl=3A_Extend_w/a_14010685332_to_JSP/MCC_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915/ehl: Extend w/a 14010685332 to JSP/MCC (rev2)
URL   : https://patchwork.freedesktop.org/series/77382/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e71c461a0da4 drm/i915/ehl: Extend w/a 14010685332 to JSP/MCC
-:26: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#26: FILE: drivers/gpu/drm/i915/i915_irq.c:2907:
+	if ((INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) &&
+	   (INTEL_PCH_TYPE(dev_priv) <= PCH_MCC)) {

total: 0 errors, 0 warnings, 1 checks, 11 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
