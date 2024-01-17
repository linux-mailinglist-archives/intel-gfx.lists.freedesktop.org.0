Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B53C830F23
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 23:22:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5C3A10E888;
	Wed, 17 Jan 2024 22:22:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5E6710E888;
 Wed, 17 Jan 2024 22:22:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Enable_Wa=5F14019159?=
 =?utf-8?q?160_and_Wa=5F16019325821_for_MTL_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Wed, 17 Jan 2024 22:22:35 -0000
Message-ID: <170553015567.537692.13786387814973482988@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240104180541.2966374-1-John.C.Harrison@Intel.com>
In-Reply-To: <20240104180541.2966374-1-John.C.Harrison@Intel.com>
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

Series: Enable Wa_14019159160 and Wa_16019325821 for MTL (rev6)
URL   : https://patchwork.freedesktop.org/series/123813/
State : warning

== Summary ==

Error: dim checkpatch failed
75a9987b2382 drm/i915: Enable Wa_16019325821
c54ac284eef0 drm/i915/guc: Add support for w/a KLVs
-:105: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#105: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:829:
+	GEM_BUG_ON(iosys_map_is_null(&guc->ads_map));

total: 0 errors, 1 warnings, 0 checks, 159 lines checked
7106400f52a2 drm/i915/guc: Enable Wa_14019159160
-:101: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#101: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:830:
+	GEM_BUG_ON(remain < size);

total: 0 errors, 1 warnings, 0 checks, 99 lines checked


