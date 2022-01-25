Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F3649A1D6
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 01:38:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89E9E10E2BA;
	Tue, 25 Jan 2022 00:38:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 96E6810E2BA;
 Tue, 25 Jan 2022 00:38:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 84CFEA77A5;
 Tue, 25 Jan 2022 00:38:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Tue, 25 Jan 2022 00:38:13 -0000
Message-ID: <164307109350.27370.3149061522238693131@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220125001635.4004286-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220125001635.4004286-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/rpl-s=3A_Add_stepping_info_=28rev2=29?=
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

Series: drm/i915/rpl-s: Add stepping info (rev2)
URL   : https://patchwork.freedesktop.org/series/99162/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ae8b0b24992a drm/i915/rpl-s: Add stepping info
-:38: CHECK:LINE_SPACING: Please don't use multiple blank lines
#38: FILE: drivers/gpu/drm/i915/intel_step.c:137:
 
+

-:47: ERROR:CODE_INDENT: code indent should use tabs where possible
#47: FILE: drivers/gpu/drm/i915/intel_step.c:151:
+                revids = adls_rpls_revids;$

-:47: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#47: FILE: drivers/gpu/drm/i915/intel_step.c:151:
+                revids = adls_rpls_revids;$

-:48: ERROR:CODE_INDENT: code indent should use tabs where possible
#48: FILE: drivers/gpu/drm/i915/intel_step.c:152:
+                size = ARRAY_SIZE(adls_rpls_revids);$

-:48: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#48: FILE: drivers/gpu/drm/i915/intel_step.c:152:
+                size = ARRAY_SIZE(adls_rpls_revids);$

total: 2 errors, 2 warnings, 1 checks, 27 lines checked


