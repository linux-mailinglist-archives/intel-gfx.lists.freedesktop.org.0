Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFE7801364
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 20:09:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D15310E92F;
	Fri,  1 Dec 2023 19:09:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB90E10E92F;
 Fri,  1 Dec 2023 19:09:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8935CAADEA;
 Fri,  1 Dec 2023 19:09:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Melanie Lobo" <melanie.lobo@intel.com>
Date: Fri, 01 Dec 2023 19:09:42 -0000
Message-ID: <170145778252.19690.4855671513397532924@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231011102356.22014-1-melanie.lobo@intel.com>
In-Reply-To: <20231011102356.22014-1-melanie.lobo@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Support_FP16_compressed_formats_on_MTL_=28rev5?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Support FP16 compressed formats on MTL (rev5)
URL   : https://patchwork.freedesktop.org/series/124957/
State : warning

== Summary ==

Error: dim checkpatch failed
a0a2a994cd92 drm/i915: Support FP16 compressed formats on MTL
-:19: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#19: 
Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>

-:52: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 15)
#52: FILE: drivers/gpu/drm/i915/display/intel_fb.c:417:
+	if (intel_fb_is_ccs_modifier(md->modifier) && info &&
[...]
+	       return false;

-:54: WARNING:TABSTOP: Statements should start on a tabstop
#54: FILE: drivers/gpu/drm/i915/display/intel_fb.c:419:
+	       return false;

total: 0 errors, 3 warnings, 0 checks, 42 lines checked


