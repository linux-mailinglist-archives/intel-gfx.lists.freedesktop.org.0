Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2502D6AE1
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 00:04:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D59416EB93;
	Thu, 10 Dec 2020 23:03:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 852F26EB91;
 Thu, 10 Dec 2020 23:03:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7E059A7DFC;
 Thu, 10 Dec 2020 23:03:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Thu, 10 Dec 2020 23:03:56 -0000
Message-ID: <160764143649.19119.14037946727875128153@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201210012143.729402-1-lyude@redhat.com>
In-Reply-To: <20201210012143.729402-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm=3A_Extract_DPCD_backlight_helpers_from_i915=2C_add_support_?=
 =?utf-8?q?in_nouveau_=28rev3=29?=
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

Series: drm: Extract DPCD backlight helpers from i915, add support in nouveau (rev3)
URL   : https://patchwork.freedesktop.org/series/84754/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
-
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:261:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1398:25: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1398:25:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1398:25:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1399:17: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1399:17:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1399:17:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1458:17: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1458:17:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1458:17:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:268:16: error: incompatible types in comparison expression (different type sizes):
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:268:16:    unsigned long *
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:268:16:    unsigned long long *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:276:25: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:276:25:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:276:25:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:277:17: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:277:17:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:277:17:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:331:17: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:331:17:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:331:17:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.h:92:56: error: marked inline, but without a definition
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:257:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/a


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
