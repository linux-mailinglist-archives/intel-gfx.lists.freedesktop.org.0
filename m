Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6264F38CE7A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 22:01:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39F286F8C7;
	Fri, 21 May 2021 20:01:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D7A286F8C7;
 Fri, 21 May 2021 20:01:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D1341A363D;
 Fri, 21 May 2021 20:01:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Fri, 21 May 2021 20:01:17 -0000
Message-ID: <162162727783.6035.3482153140288790323@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210521195131.27775-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210521195131.27775-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_More_DMC_cleanup_=28rev3=29?=
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

Series: More DMC cleanup (rev3)
URL   : https://patchwork.freedesktop.org/series/90379/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fff364de84b7 drm/i915/dmc: s/DRM_ERROR/drm_err
-:80: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#80: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:487:
 	if (!dmc->dmc_payload) {
+		drm_err(&i915->drm, "Memory allocation failed for dmc payload\n");

total: 0 errors, 1 warnings, 0 checks, 140 lines checked
e297b14bd44f drm/i915/dmc: Add intel_dmc_has_payload() helper
73d9b38058d5 drm/i915/dmc: Move struct intel_dmc to intel_dmc.h


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
