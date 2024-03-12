Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA215879FB0
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 00:32:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 537B910F179;
	Tue, 12 Mar 2024 23:32:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9E2C10F179;
 Tue, 12 Mar 2024 23:32:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Disable_automatic_load_CC?=
 =?utf-8?q?S_load_balancing_=28rev8=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Mar 2024 23:32:04 -0000
Message-ID: <171028632482.714564.18388825542533948264@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240308202223.406384-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240308202223.406384-1-andi.shyti@linux.intel.com>
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

Series: Disable automatic load CCS load balancing (rev8)
URL   : https://patchwork.freedesktop.org/series/129951/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/129951/revisions/8/mbox/ not applied
Applying: drm/i915/gt: Disable HW load balancing for CCS
Applying: drm/i915/gt: Refactor uabi engine class/instance list creation
Applying: drm/i915/gt: Disable tests for CCS engines beyond the first
Applying: drm/i915/gt: Enable only one CCS for compute workload
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_engine_user.c
M	drivers/gpu/drm/i915/gt/intel_workarounds.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/intel_workarounds.c
Auto-merging drivers/gpu/drm/i915/gt/intel_engine_user.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_engine_user.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0004 drm/i915/gt: Enable only one CCS for compute workload
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


