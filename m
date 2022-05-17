Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C8A52AE0B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 00:23:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B456E10E1F1;
	Tue, 17 May 2022 22:23:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D834E10E1F1;
 Tue, 17 May 2022 22:23:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CD581AA01E;
 Tue, 17 May 2022 22:23:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swathi Dhanavanthri" <swathi.dhanavanthri@intel.com>
Date: Tue, 17 May 2022 22:23:12 -0000
Message-ID: <165282619280.31031.7625044056445776615@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220517212905.24212-1-swathi.dhanavanthri@intel.com>
In-Reply-To: <20220517212905.24212-1-swathi.dhanavanthri@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dg2=3A_Add_workaround_22014600077_=28rev2=29?=
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

Series: drm/i915/dg2: Add workaround 22014600077 (rev2)
URL   : https://patchwork.freedesktop.org/series/104097/
State : warning

== Summary ==

Error: dim checkpatch failed
c6ced9357337 drm/i915/dg2: Add workaround 22014600077
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:34: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#34: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:2187:
+		       0 /* Wa_14012342262 :write-only reg, so skip
+			    verification */,

total: 0 errors, 2 warnings, 0 checks, 23 lines checked


