Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED802896D92
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:02:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83CF810F2F6;
	Wed,  3 Apr 2024 11:02:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3998A10F2F6;
 Wed,  3 Apr 2024 11:02:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Enable_dislay_support_for?=
 =?utf-8?q?_Battlemage?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Balasubramani Vivekanandan" <balasubramani.vivekanandan@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 03 Apr 2024 11:02:34 -0000
Message-ID: <171214215423.1171321.3690141779409439620@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
In-Reply-To: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
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

Series: Enable dislay support for Battlemage
URL   : https://patchwork.freedesktop.org/series/131984/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/131984/revisions/1/mbox/ not applied
Applying: drm/i915/display: Prepare to handle new C20 PLL register address
Applying: drm/xe/bmg: Add BMG platform definition
Applying: drm/xe/bmg: Define IS_BATTLEMAGE macro
Applying: drm/i915/bmg: Define IS_BATTLEMAGE macro
Applying: drm/i915/xe2: Skip CCS modifiers for Xe2 platforms
Applying: drm/i915/xe2hpd: Initial cdclk table
Applying: Revert "drm/i915/dgfx: DGFX uses direct VBT pin mapping"
Applying: drm/i915/bmg: Extend DG2 tc check to future
Applying: drm/i915/xe2hpd: Properly disable power in port A
Applying: drm/i915/xe2hpd: Add new C20 PLL register address
Applying: drm/i915/xe2hpd: Add support for eDP PLL configuration
Applying: drm/i915/xe2hpd: update pll values in sync with Bspec
Applying: drm/i915/xe2hpd: Add display info
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_display_device.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_display_device.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_display_device.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0013 drm/i915/xe2hpd: Add display info
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


