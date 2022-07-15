Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 304AD5758EB
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jul 2022 02:58:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CA2D10F23F;
	Fri, 15 Jul 2022 00:58:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 71DA510F1C7;
 Fri, 15 Jul 2022 00:58:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 670BFA66C9;
 Fri, 15 Jul 2022 00:58:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Fri, 15 Jul 2022 00:58:10 -0000
Message-ID: <165784669038.10566.11135775779464739320@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220715004028.2126239-1-John.C.Harrison@Intel.com>
In-Reply-To: <20220715004028.2126239-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/guc=3A_Don=27t_use_pr=5Ferr_when_not_necessary_=28?=
 =?utf-8?q?rev2=29?=
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

Series: drm/i915/guc: Don't use pr_err when not necessary (rev2)
URL   : https://patchwork.freedesktop.org/series/106275/
State : warning

== Summary ==

Error: dim checkpatch failed
f62cba4d0bd9 drm/i915/guc: Don't use pr_err when not necessary
-:79: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#79: FILE: drivers/gpu/drm/i915/gt/uc/selftest_guc.c:153:
 	if (!ce) {
+		drm_err(&gt->i915->drm, "Context array allocation failed\n");

total: 0 errors, 1 warnings, 0 checks, 185 lines checked


