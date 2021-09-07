Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA62403004
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 22:56:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F30426E0D9;
	Tue,  7 Sep 2021 20:56:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 29CF36E0D8;
 Tue,  7 Sep 2021 20:55:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1F700A363C;
 Tue,  7 Sep 2021 20:55:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ayaz A Siddiqui" <ayaz.siddiqui@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 07 Sep 2021 20:55:59 -0000
Message-ID: <163104815909.24494.1893205735530709892@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210907171639.1221287-1-ayaz.siddiqui@intel.com>
In-Reply-To: <20210907171639.1221287-1-ayaz.siddiqui@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_Add_separate_MOCS_table_for_Gen12_devices_ot?=
 =?utf-8?q?her_than_TGL/RKL?=
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

Series: drm/i915/gt: Add separate MOCS table for Gen12 devices other than TGL/RKL
URL   : https://patchwork.freedesktop.org/series/94451/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
95b55732351d drm/i915/gt: Add separate MOCS table for Gen12 devices other than TGL/RKL
-:25: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#25: FILE: drivers/gpu/drm/i915/gt/intel_mocs.c:319:
+static const struct drm_i915_mocs_entry gen12_mocs_table[] = {
+

total: 0 errors, 0 warnings, 1 checks, 57 lines checked


