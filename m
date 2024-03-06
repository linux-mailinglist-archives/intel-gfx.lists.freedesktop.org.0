Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC3687374D
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 14:05:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F57E113178;
	Wed,  6 Mar 2024 13:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE544113178;
 Wed,  6 Mar 2024 13:05:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Enable_Wa=5F14019159?=
 =?utf-8?q?160_and_Wa=5F16019325821_for_MTL_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Harrison" <john.c.harrison@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 06 Mar 2024 13:05:10 -0000
Message-ID: <170973031084.561286.13820192458633512414@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240223205632.1621019-1-John.C.Harrison@Intel.com>
In-Reply-To: <20240223205632.1621019-1-John.C.Harrison@Intel.com>
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

Series: Enable Wa_14019159160 and Wa_16019325821 for MTL (rev5)
URL   : https://patchwork.freedesktop.org/series/130335/
State : warning

== Summary ==

Error: dim checkpatch failed
56cdd12ac09c drm/i915: Enable Wa_16019325821
39caaedf6e24 drm/i915/guc: Add support for w/a KLVs
-:105: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#105: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:829:
+	GEM_BUG_ON(iosys_map_is_null(&guc->ads_map));

total: 0 errors, 1 warnings, 0 checks, 159 lines checked
0f0e7257a327 drm/i915/guc: Enable Wa_14019159160
-:101: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#101: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:830:
+	GEM_BUG_ON(remain < size);

total: 0 errors, 1 warnings, 0 checks, 99 lines checked


