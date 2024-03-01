Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 986E786D829
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 01:11:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9E9810E724;
	Fri,  1 Mar 2024 00:11:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3B1C10E724;
 Fri,  1 Mar 2024 00:11:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Disable_automatic_lo?=
 =?utf-8?q?ad_CCS_load_balancing_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 01 Mar 2024 00:11:21 -0000
Message-ID: <170925188193.414572.5359827859936992614@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240229232859.70058-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240229232859.70058-1-andi.shyti@linux.intel.com>
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

Series: Disable automatic load CCS load balancing (rev4)
URL   : https://patchwork.freedesktop.org/series/129951/
State : warning

== Summary ==

Error: dim checkpatch failed
9d59a3a23381 drm/i915/gt: Refactor uabi engine class/instance list creation
-:54: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#54: FILE: drivers/gpu/drm/i915/gt/intel_engine_user.c:233:
+		GEM_BUG_ON(uabi_class >= ARRAY_SIZE(class_instance));

-:70: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#70: FILE: drivers/gpu/drm/i915/gt/intel_engine_user.c:247:
+		GEM_BUG_ON(uabi_class >=

total: 0 errors, 2 warnings, 0 checks, 56 lines checked
8b2b08e3b16c drm/i915/gt: Do not exposed fused off engines.
-:11: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#11: 
Requires: 4e4f77d74878 ("drm/i915/gt: Refactor uabi engine class/instance list creation")

total: 0 errors, 1 warnings, 0 checks, 18 lines checked
dcfb1f190d40 drm/i915/gt: Disable HW load balancing for CCS
1205dac76b84 drm/i915/gt: Enable only one CCS for compute workload
-:16: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#16: 
Requires: 4e4f77d74878 ("drm/i915/gt: Refactor uabi engine class/instance list creation")

total: 0 errors, 1 warnings, 0 checks, 54 lines checked


