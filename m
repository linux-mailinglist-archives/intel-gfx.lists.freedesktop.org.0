Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 694D95ED142
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 01:50:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F183910E1A3;
	Tue, 27 Sep 2022 23:50:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F351F10E1A3;
 Tue, 27 Sep 2022 23:50:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CCA12AADD7;
 Tue, 27 Sep 2022 23:50:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 27 Sep 2022 23:50:28 -0000
Message-ID: <166432262880.24579.14500765215430715521@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220927153923.97649-1-matthew.auld@intel.com>
In-Reply-To: <20220927153923.97649-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/2=5D_drm/i915=3A_enable_PS64?=
 =?utf-8?q?_support_for_DG2?=
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

Series: series starting with [v2,1/2] drm/i915: enable PS64 support for DG2
URL   : https://patchwork.freedesktop.org/series/109126/
State : warning

== Summary ==

Error: dim checkpatch failed
a7a92d6c3c86 drm/i915: enable PS64 support for DG2
-:15: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit caa574ffc4aa ("drm/i915/uapi: document behaviour for DG2 64K support")'
#15: 
commit caa574ffc4aaf4f29b890223878c63e2e7772f62

-:95: WARNING:LINE_SPACING: Missing a blank line after declarations
#95: FILE: drivers/gpu/drm/i915/gem/selftests/huge_pages.c:1560:
+	struct file *file;
+	I915_RND_STATE(prng);

total: 1 errors, 1 warnings, 0 checks, 475 lines checked
88260954e926 drm/i915/uapi: expose GTT alignment


