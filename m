Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C83121F564F
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 15:56:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 346156E5A4;
	Wed, 10 Jun 2020 13:56:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E78466E5A4;
 Wed, 10 Jun 2020 13:56:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E14BDA47EB;
 Wed, 10 Jun 2020 13:56:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 10 Jun 2020 13:56:52 -0000
Message-ID: <159179741291.20177.10216029220599398910@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200607212522.16935-1-imre.deak@intel.com>
In-Reply-To: <20200607212522.16935-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/dp=5Fmst=3A_Fix_the_DDC_?=
 =?utf-8?q?I2C_device_unregistration_of_an_MST_port_=28rev2=29?=
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

Series: series starting with [1/3] drm/dp_mst: Fix the DDC I2C device unregistration of an MST port (rev2)
URL   : https://patchwork.freedesktop.org/series/78100/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1a8e3c0e3676 drm/dp_mst: Fix the DDC I2C device unregistration of an MST port
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
Note that atm, inconsistently, the parent of the I2C device is initially set to

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
8be818a9eda8 drm/dp_mst: Fix the DDC I2C device registration of an MST port
ae88a71f3c39 drm/dp_mst: Fix flushing the delayed port/mstb destroy work
-:51: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!mgr->delayed_destroy_wq"
#51: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:5191:
+	if (mgr->delayed_destroy_wq == NULL)

total: 0 errors, 0 warnings, 1 checks, 57 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
