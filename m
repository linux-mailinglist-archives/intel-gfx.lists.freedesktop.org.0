Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 498E13A33E9
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 21:23:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D30F089DFD;
	Thu, 10 Jun 2021 19:23:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 12B2489DFD;
 Thu, 10 Jun 2021 19:23:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F6E9A47E2;
 Thu, 10 Jun 2021 19:23:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Thu, 10 Jun 2021 19:23:32 -0000
Message-ID: <162335301205.27730.2084394235092588485@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210610191309.25862-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210610191309.25862-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Pipe_DMC_Support_=28rev6=29?=
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

Series: Pipe DMC Support (rev6)
URL   : https://patchwork.freedesktop.org/series/90445/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7f3a0ee96dbc drm/i915/dmc: Introduce DMC_FW_MAIN
89e00e964d4c drm/i915/xelpd: Pipe A DMC plugging
-:48: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#48: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:587:
+		   intel_de_read(dev_priv, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));

-:63: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#63: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:965:
+				     DMC_PROGRAM(dev_priv->dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),

total: 0 errors, 2 warnings, 0 checks, 286 lines checked
50e7b4cca3cf drm/i915/adl_p: Pipe B DMC Support
279604ecef5a drm/i915/adl_p: Load DMC


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
