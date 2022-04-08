Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA214F9F4C
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 23:44:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A1EC10E0A9;
	Fri,  8 Apr 2022 21:44:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BCBD510E0A9;
 Fri,  8 Apr 2022 21:44:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BF7E1A363D;
 Fri,  8 Apr 2022 21:44:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Fri, 08 Apr 2022 21:44:11 -0000
Message-ID: <164945425178.22678.159452783187655782@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220408180326.1454951-1-John.C.Harrison@Intel.com>
In-Reply-To: <20220408180326.1454951-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Update_to_GuC_v70?=
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

Series: Update to GuC v70
URL   : https://patchwork.freedesktop.org/series/102430/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ca0a801b1dda drm/i915/guc: Update context registration to new GuC API
-:418: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#418: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2194:
+#if 0

total: 0 errors, 1 warnings, 0 checks, 492 lines checked
04be6eae2735 drm/i915/guc: Update scheduling policies to new GuC API
634d8272f0e7 drm/i915/guc: Update to GuC version 70.1.1


