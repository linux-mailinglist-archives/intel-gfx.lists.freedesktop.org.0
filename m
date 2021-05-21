Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B1B38C2E9
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 11:20:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2967E6F5FE;
	Fri, 21 May 2021 09:20:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F28FA6F5FE;
 Fri, 21 May 2021 09:20:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E534CA73C7;
 Fri, 21 May 2021 09:20:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 21 May 2021 09:20:08 -0000
Message-ID: <162158880893.6035.3607595416715089688@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_=5B01/11=5D_drm/amdgpu=3A_Comply_with_impl?=
 =?utf-8?q?icit_fencing_rules?=
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

Series: series starting with [01/11] drm/amdgpu: Comply with implicit fencing rules
URL   : https://patchwork.freedesktop.org/series/90401/
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
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:293:16: error: incompatible types in comparison expression (different type sizes):
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:293:16:    unsigned long *
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:293:16:    unsigned long long *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:275:25: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:275:25:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:275:25:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:276:17: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:276:17:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:276:17:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:330:17: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:330:17:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:330:17:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.h:90:56: error: marked inline, but without a definition
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
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:312:49: error: static assertion failed: "amd_sriov_msg_vf2pf_


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
