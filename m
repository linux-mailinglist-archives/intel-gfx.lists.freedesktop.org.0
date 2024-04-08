Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F3F89CD2E
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 23:04:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5609B10F751;
	Mon,  8 Apr 2024 21:04:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33DFC10F751;
 Mon,  8 Apr 2024 21:04:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/guc=3A_Upda?=
 =?utf-8?q?te_w/a_14019159160_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Harrison" <john.c.harrison@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 08 Apr 2024 21:04:24 -0000
Message-ID: <171261026421.1286971.6104666577100279036@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240308020129.728799-1-John.C.Harrison@Intel.com>
In-Reply-To: <20240308020129.728799-1-John.C.Harrison@Intel.com>
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

Series: drm/i915/guc: Update w/a 14019159160 (rev4)
URL   : https://patchwork.freedesktop.org/series/130890/
State : warning

== Summary ==

Error: dim checkpatch failed
2949d5eceea7 drm/i915/guc: Update w/a 14019159160
-:20: WARNING:LONG_LINE_COMMENT: line length of 108 exceeds 100 columns
#20: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h:108:
+	GUC_WORKAROUND_KLV_SERIALIZED_RA_MODE				= 0x9001,	/* Wa_14019159160 */

-:21: WARNING:LONG_LINE_COMMENT: line length of 108 exceeds 100 columns
#21: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h:109:
+	GUC_WORKAROUND_KLV_AVOID_GFX_CLEAR_WHILE_ACTIVE			= 0x9006,	/* Wa_14019159160 */

-:62: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#62: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:829:
+	GEM_BUG_ON(*remain < size);

total: 0 errors, 3 warnings, 0 checks, 62 lines checked


