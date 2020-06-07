Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE6B1F1017
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Jun 2020 23:59:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 138996E201;
	Sun,  7 Jun 2020 21:59:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7CC0F6E1F4;
 Sun,  7 Jun 2020 21:59:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6F523A47DA;
 Sun,  7 Jun 2020 21:59:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Sun, 07 Jun 2020 21:59:34 -0000
Message-ID: <159156717442.15986.4268397518812956628@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200607212522.16935-1-imre.deak@intel.com>
In-Reply-To: <20200607212522.16935-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/dp=5Fmst=3A_Fix_the_DDC_?=
 =?utf-8?q?I2C_device_unregistration_of_an_MST_port?=
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

Series: series starting with [1/3] drm/dp_mst: Fix the DDC I2C device unregistration of an MST port
URL   : https://patchwork.freedesktop.org/series/78100/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
be4cb6213842 drm/dp_mst: Fix the DDC I2C device unregistration of an MST port
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
Note that atm, inconsistently, the parent of the I2C device is initially set to

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
f183ac475a8b drm/dp_mst: Fix the DDC I2C device registration of an MST port
c3019da98129 drm/dp_mst: Fix flushing the delayed port/mstb destroy work
-:45: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!mgr->delayed_destroy_wq"
#45: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:5191:
+	if (mgr->delayed_destroy_wq == NULL)

total: 0 errors, 0 warnings, 1 checks, 55 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
