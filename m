Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDA311A396
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 05:51:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BFA56E186;
	Wed, 11 Dec 2019 04:51:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C39A26E186;
 Wed, 11 Dec 2019 04:51:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BBC9DA0075;
 Wed, 11 Dec 2019 04:51:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Wed, 11 Dec 2019 04:51:44 -0000
Message-ID: <157603990474.30693.6133950165929011995@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210204744.65276-1-michal.wajdeczko@intel.com>
In-Reply-To: <20191210204744.65276-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_ops_to_intel=5Fuc?=
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

Series: Add ops to intel_uc
URL   : https://patchwork.freedesktop.org/series/70716/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
954921ae8651 drm/i915/uc: Add ops to intel_uc
-:27: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#27: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.c:16:
+extern const struct intel_uc_ops uc_ops_off;

-:28: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#28: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.c:17:
+extern const struct intel_uc_ops uc_ops_on;

total: 0 errors, 2 warnings, 0 checks, 128 lines checked
32700bafdc26 drm/i915/uc: Add init_fw/fini_fw to to intel_uc_ops
b5bf30f4e353 drm/i915/uc: Add init/fini to to intel_uc_ops
fe773089ddeb drm/i915/uc: Add sanitize to to intel_uc_ops

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
