Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D6612FD69
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 21:08:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B04A6E33C;
	Fri,  3 Jan 2020 20:08:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3BEA86E33C;
 Fri,  3 Jan 2020 20:08:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 32A0FA0134;
 Fri,  3 Jan 2020 20:08:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 03 Jan 2020 20:08:19 -0000
Message-ID: <157808209917.20616.14599866977900367759@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200103200030.334215-1-matthew.auld@intel.com>
In-Reply-To: <20200103200030.334215-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915=3A_make_stolen_more?=
 =?utf-8?q?_region_centric?=
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

Series: series starting with [1/3] drm/i915: make stolen more region centric
URL   : https://patchwork.freedesktop.org/series/71615/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
798fff7d1586 drm/i915: make stolen more region centric
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:329: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#329: FILE: drivers/gpu/drm/i915/gem/i915_gem_stolen.c:528:
+       sg_free_table(pages);$

-:330: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#330: FILE: drivers/gpu/drm/i915/gem/i915_gem_stolen.c:529:
+       kfree(pages);$

total: 0 errors, 3 warnings, 0 checks, 502 lines checked
bdef42f5a543 drm/i915/gtt: refactor the storage assumptions around paging structures
c3ed5865acfc drm/i915/lmem: stop mapping the aperture for fake LMEM
-:24: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#24: FILE: drivers/gpu/drm/i915/i915_params.c:186:
+i915_param_named_unsafe(fake_lmem_size, ulong, 0600,
+	"Fake LMEM size (default: 0)");

total: 0 errors, 0 warnings, 1 checks, 110 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
