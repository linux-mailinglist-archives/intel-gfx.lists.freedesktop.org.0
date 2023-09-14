Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF86779F63F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 03:20:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5857410E140;
	Thu, 14 Sep 2023 01:20:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 97F9D10E136;
 Thu, 14 Sep 2023 01:20:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 977D9AADF2;
 Thu, 14 Sep 2023 01:20:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Thu, 14 Sep 2023 01:20:27 -0000
Message-ID: <169465442758.29164.1475634994793208473@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230913225714.877627-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20230913225714.877627-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/1=5D_drm/i915/pxp=3A_Add_drm?=
 =?utf-8?q?=5Fdbgs_for_critical_PXP_events=2E?=
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

Series: series starting with [v2,1/1] drm/i915/pxp: Add drm_dbgs for critical PXP events.
URL   : https://patchwork.freedesktop.org/series/123656/
State : warning

== Summary ==

Error: dim checkpatch failed
a1eb86307547 drm/i915/pxp: Add drm_dbgs for critical PXP events.
-:93: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#93: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_irq.c:43:
+		pxp->session_events |= PXP_TERMINATION_REQUEST | PXP_INVAL_REQUIRED | PXP_EVENT_TYPE_IRQ;

total: 0 errors, 1 warnings, 0 checks, 95 lines checked


