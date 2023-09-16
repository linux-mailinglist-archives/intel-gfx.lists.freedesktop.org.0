Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 224217A2E4D
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Sep 2023 09:06:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68EF210E0C6;
	Sat, 16 Sep 2023 07:06:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C1A0410E0C6;
 Sat, 16 Sep 2023 07:06:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BA586A00CC;
 Sat, 16 Sep 2023 07:06:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Sat, 16 Sep 2023 07:06:35 -0000
Message-ID: <169484799575.10845.3659145299709222777@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230915201515.1238771-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20230915201515.1238771-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/pxp=3A_Add_drm=5Fdbgs_for_critical_PXP_events=2E_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/pxp: Add drm_dbgs for critical PXP events. (rev2)
URL   : https://patchwork.freedesktop.org/series/123803/
State : warning

== Summary ==

Error: dim checkpatch failed
c206c1a93c37 drm/i915/pxp: Add drm_dbgs for critical PXP events.
-:7: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#7: 
sequence of important events. Add drm_dbg into the most important PXP events.

-:15: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Balasubrawmanian, Vivaik <vivaik.balasubrawmanian at intel.com>'
#15: 
Reviewed-by: Balasubrawmanian, Vivaik <vivaik.balasubrawmanian at intel.com>

-:96: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#96: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_irq.c:43:
+		pxp->session_events |= PXP_TERMINATION_REQUEST | PXP_INVAL_REQUIRED | PXP_EVENT_TYPE_IRQ;

total: 1 errors, 2 warnings, 0 checks, 95 lines checked


