Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA8439C043
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 21:13:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BB196F8C2;
	Fri,  4 Jun 2021 19:13:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4B0F96F8BF;
 Fri,  4 Jun 2021 19:13:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 356E1A0019;
 Fri,  4 Jun 2021 19:13:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Fri, 04 Jun 2021 19:13:08 -0000
Message-ID: <162283398819.4702.3781750024974074620@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210604190128.24151-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210604190128.24151-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Pipe_DMC_Support_=28rev5=29?=
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

Series: Pipe DMC Support (rev5)
URL   : https://patchwork.freedesktop.org/series/90445/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fa1bf3879c91 drm/i915/dmc: Introduce DMC_FW_MAIN
2cdba84cf8be drm/i915/xelpd: Pipe A DMC plugging
-:45: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:587:
+		   intel_de_read(dev_priv, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));

-:60: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#60: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:965:
+				     DMC_PROGRAM(dev_priv->dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),

-:160: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#160: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:394:
+				drm_notice(&i915->drm, "Invalid firmware id: %d\n", fw_info[i].dmc_id);

total: 0 errors, 3 warnings, 0 checks, 275 lines checked
e5635428cc51 drm/i915/adl_p: Pipe B DMC Support
7c1b64175b3c drm/i915/adl_p: Load DMC


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
