Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67450419CE9
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 19:34:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CFBE89CBE;
	Mon, 27 Sep 2021 17:34:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DFEC089C9D;
 Mon, 27 Sep 2021 17:34:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D765AA0003;
 Mon, 27 Sep 2021 17:34:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Sep 2021 17:34:13 -0000
Message-ID: <163276405385.14086.3205413327228066160@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210927114114.152310-1-matthew.auld@intel.com>
In-Reply-To: <20210927114114.152310-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_=5Bv5=2C01/13=5D_drm/ttm=3A_stop_calling_t?=
 =?utf-8?q?t=5Fswapin_in_vm=5Faccess?=
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

Series: series starting with [v5,01/13] drm/ttm: stop calling tt_swapin in vm_access
URL   : https://patchwork.freedesktop.org/series/95093/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
-
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:316:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1345:25: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1345:25:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1345:25:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1346:17: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1346:17:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1346:17:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1405:17: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1405:17:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1405:17:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:354:16: error: incompatible types in comparison expression (different type sizes):
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:354:16:    unsigned long *
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:354:16:    unsigned long long *
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:4491:31: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:4491:31:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:4491:31:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:4493:33: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:4493:33:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:4493:33:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:294:25: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:294:25:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:294:25:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:295:17: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:295:17:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:295:17:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:344:17: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:344:17:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:344:17:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_mca.c:117:1: warning: no newline at end of file
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion faile


