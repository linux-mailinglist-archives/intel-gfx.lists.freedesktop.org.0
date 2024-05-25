Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE90C8CED7E
	for <lists+intel-gfx@lfdr.de>; Sat, 25 May 2024 04:32:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 089CB10E08C;
	Sat, 25 May 2024 02:32:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1592310E08C;
 Sat, 25 May 2024 02:32:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/guc=3A_Enab?=
 =?utf-8?q?le_w/a_14019882105_for_DG2_and_MTL?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 25 May 2024 02:32:17 -0000
Message-ID: <171660433702.2210664.18375606624171386362@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240525014121.4157254-1-John.C.Harrison@Intel.com>
In-Reply-To: <20240525014121.4157254-1-John.C.Harrison@Intel.com>
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

Series: drm/i915/guc: Enable w/a 14019882105 for DG2 and MTL
URL   : https://patchwork.freedesktop.org/series/134039/
State : warning

== Summary ==

Error: dim checkpatch failed
963da89c742d drm/i915/guc: Enable w/a 14019882105 for DG2 and MTL
-:46: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#46: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:830:
+	GEM_BUG_ON(*remain < size);

total: 0 errors, 1 warnings, 0 checks, 61 lines checked


