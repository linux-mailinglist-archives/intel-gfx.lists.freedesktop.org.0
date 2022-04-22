Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD6E50ACDC
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Apr 2022 02:38:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9912810F00A;
	Fri, 22 Apr 2022 00:38:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8011910EECD;
 Fri, 22 Apr 2022 00:38:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 71712A008A;
 Fri, 22 Apr 2022 00:38:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Fri, 22 Apr 2022 00:38:48 -0000
Message-ID: <165058792841.14005.8012342903487470356@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220421192205.32649-1-jose.souza@intel.com>
In-Reply-To: <20220421192205.32649-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_=5B1/3=5D_drm=3A_Add_infrastructure_to_all?=
 =?utf-8?q?ow_seamless_mode_switches?=
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

Series: series starting with [1/3] drm: Add infrastructure to allow seamless mode switches
URL   : https://patchwork.freedesktop.org/series/102958/
State : warning

== Summary ==

Error: dim sparse failed
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1444:25: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1444:25:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1444:25:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1445:17: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1445:17:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1445:17:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1504:17: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1504:17:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1504:17:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:353:16: error: incompatible types in comparison expression (different type sizes):
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:353:16:    unsigned long *
+drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:353:16:    unsigned long long *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:295:25: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:295:25:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:295:25:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:296:17: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:296:17:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:296:17:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:345:17: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:345:17:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:345:17:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:596:23: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:596:23:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:596:23:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:598:25: error: incompatible types in comparison expression (different address spaces):
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:598:25:    struct dma_fence *
+drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c:598:25:    struct dma_fence [noderef] __rcu *
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:315:49: error: static assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:319:49: error: static assertion failed: "amd_sriov_msg_pf2vf_info must be 1 KB"
+drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c:1048:9: error: incompatible types in conditional expression (different base types):
+drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c:1048:9:    int
+drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c:1048:9:    void
+drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c:675:17: error: incompatible types in conditional expression (different base types):
+drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c:675:17:    int
+drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c:675:17:    void
+drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c:923:9: error: incompatible types in conditional expression (different base types):
+drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c:923:9:    int
+drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c:923:9:    void
+drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c:955:9: error: incompatible types in conditional expression (different base types):
+drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c:955:9:    int
+drivers/gpu/drm/amd/amdgpu/../pm/swsmu/amdgpu_smu.c:955:9:    void
+drivers/gpu/drm/ast/ast_drv.c:42:5: warning: symbol 'ast_modeset' was not declared. Should it be static?
+drivers/gpu/drm/ast/ast_mode.c:678:16:    expected unsigned char [noderef] [usertype] __iomem *dstxor
+drivers/gpu/drm/ast/ast_mode.c:678:16:    got unsigned char [usertype] *
+drivers/gpu/drm/ast/ast_mode.c:678:16: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/ast/ast_mode.c:678:19: warning: cast removes address space '__iomem' of expression
+drivers/gpu/drm/drm_drv.c:426:6: warning: context imbalance in 'drm_dev_enter' - different lock contexts for basic block
+drivers/gpu/drm/drm_drv.c:70:1: warning: symbol '__srcu_struct_drm_unplug_srcu' was not declared. Should it be static?
+drivers/gpu/drm/gma500/framebuffer.c:268:9:    expected void *
+drivers/gpu/drm/gma500/framebuffer.c:268:9:    expected void const *
+drivers/gpu/drm/gma500/framebuffer.c:268:9:    expected void const *
+drivers/gpu/drm/gma500/framebuffer.c:268:9:    got unsigned char [noderef] [usertype] __iomem *
+drivers/gpu/drm/gma500/framebuffer.c:268:9:    got unsigned char [noderef] [usertype] __iomem *
+drivers/gpu/drm/gma500/framebuffer.c:268:9:    got unsigned char [noderef] [usertype] __iomem *
+drivers/gpu/drm/gma500/framebuffer.c:268:9: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/gma500/framebuffer.c:268:9: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/gma500/framebuffer.c:268:9: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/gma500/gma_display.c:402:25:    expected void *tmp_dst
+drivers/gpu/drm/gma500/gma_display.c:402:25:    got unsigned char [noderef] [usertype] __iomem *
+drivers/gpu/drm/gma500/gma_display.c:402:25: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/gma500/intel_bios.c:547:42:    expected void const *const p
+drivers/gpu/drm/gma500/intel_bios.c:547:42:    got unsigned char [noderef] [usertype] __iomem *
+drivers/gpu/drm/gma500/intel_bios.c:547:42: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/gma500/intel_bios.c:548:40: warning: cast removes address space '__iomem' of expression
+drivers/gpu/drm/gma500/intel_bios.c:558:24: warning: cast removes address space '__iomem' of expression
+drivers/gpu/drm/gma500/mmu.c:306:26: warning: context imbalance in 'psb_mmu_pt_alloc_map_lock' - wrong count at exit
+drivers/gpu/drm/gma500/mmu.c:346:26: warning: context imbalance in 'psb_mmu_pt_map_lock' - wrong count at exit
+drivers/gpu/drm/gma500/mmu.c:379:28: warning: context imbalance in 'psb_mmu_pt_unmap_unlock' - unexpected unlock
+drivers/gpu/drm/gma500/oaktrail_crtc.c:661:30: warning: symbol 'mrst_clock_funcs' was not declared. Should it be static?
+drivers/gpu/drm/gma500/opregion.c:298:25:    expected void volatile [noderef] __iomem *addr
+drivers/gpu/drm/gma500/opregion.c:298:25:    got struct opregion_header *header
+drivers/gpu/drm/gma500/opregion.c:298:25: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/gma500/opregion.c:328:20:    expected void const *const p
+drivers/gpu/drm/gma500/opregion.c:328:20:    got void [noderef] __iomem *[assigned] base
+drivers/gpu/drm/gma500/opregion.c:328:20: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/gma500/opregion.c:334:26:    expected struct opregion_header *header
+drivers/gpu/drm/gma500/opregion.c:334:26:    got void [noderef] __iomem *[assigned] base
+drivers/gpu/drm/gma500/opregion.c:334:26: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/gma500/opregion.c:335:23:    expected void *vbt
+drivers/gpu/drm/gma500/opregion.c:335:23:    got void [noderef] __iomem *
+drivers/gpu/drm/gma500/opregion.c:335:23: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/gma500/opregion.c:342:32:    expected struct opregion_acpi *acpi
+drivers/gpu/drm/gma500/opregion.c:342:32:    got void [noderef] __iomem *
+drivers/gpu/drm/gma500/opregion.c:342:32: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/gma500/opregion.c:347:32:    expected struct opregion_asle *asle
+drivers/gpu/drm/gma500/opregion.c:347:32:    got void [noderef] __iomem *
+drivers/gpu/drm/gma500/opregion.c:347:32: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/gma500/psb_intel_display.c:434:30: warning: symbol 'psb_clock_funcs' was not declared. Should it be static?
+drivers/gpu/drm/i2c/tda998x_drv.c:1712:50:    expected restricted __be32 const [usertype] *p
+drivers/gpu/drm/i2c/tda998x_drv.c:1712:50:    got unsigned int const [usertype] *
+drivers/gpu/drm/i2c/tda998x_drv.c:1712:50: warning: incorrect type in argument 1 (different base types)
+drivers/gpu/drm/i2c/tda998x_drv.c:1713:52:    expected restricted __be32 const [usertype] *p
+drivers/gpu/drm/i2c/tda998x_drv.c:1713:52:    got unsigned int const [usertype] *
+drivers/gpu/drm/i2c/tda998x_drv.c:1713:52: warning: incorrect type in argument 1 (different base types)
+drivers/gpu/drm/mgag200/mgag200_drv.c:22:5: warning: symbol 'mgag200_modeset' was not declared. Should it be static?
+drivers/gpu/drm/nouveau/dispnv50/disp.c:135:34: warning: cast removes address space '__iomem' of expression
+drivers/gpu/drm/nouveau/dispnv50/disp.c:198:34: warning: cast removes address space '__iomem' of expression
+drivers/gpu/drm/nouveau/dispnv50/disp.c:204:27:    expected unsigned int [usertype] *cur
+drivers/gpu/drm/nouveau/dispnv50/disp.c:204:27:    got void [noderef] __iomem *ptr
+drivers/gpu/drm/nouveau/dispnv50/disp.c:204:27: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/nouveau/dispnv50/disp.c:217:19:    expected unsigned int [usertype] *bgn
+drivers/gpu/drm/nouveau/dispnv50/disp.c:217:19:    got void [noderef] __iomem *ptr
+drivers/gpu/drm/nouveau/dispnv50/disp.c:217:19: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/nouveau/dispnv50/disp.c:258:19:    expected unsigned int [usertype] *ptr
+drivers/gpu/drm/nouveau/dispnv50/disp.c:258:19:    got void [noderef] __iomem *ptr
+drivers/gpu/drm/nouveau/dispnv50/disp.c:258:19: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/nouveau/dispnv50/disp.c:262:25:    expected unsigned int [usertype] *bgn
+drivers/gpu/drm/nouveau/dispnv50/disp.c:262:25:    got void [noderef] __iomem *ptr
+drivers/gpu/drm/nouveau/dispnv50/disp.c:262:25: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/nouveau/dispnv50/disp.c:2693:1: warning: symbol 'nv50_display_create' was not declared. Should it be static?
+drivers/gpu/drm/nouveau/dispnv50/wimmc37b.c:40:9: warning: dubious: !x & y
+drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c:282:9: warning: dubious: !x & y
+drivers/gpu/drm/qxl/qxl_kms.c:168:19:    expected struct qxl_rom *rom
+drivers/gpu/drm/qxl/qxl_kms.c:168:19:    got void [noderef] __iomem *
+drivers/gpu/drm/qxl/qxl_kms.c:168:19: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/qxl/qxl_kms.c:186:26:    expected struct qxl_ram_header *ram_header
+drivers/gpu/drm/qxl/qxl_kms.c:186:26:    got void [noderef] __iomem *
+drivers/gpu/drm/qxl/qxl_kms.c:186:26: warning: incorrect type in assignment (different address spaces)
+drivers/gpu/drm/qxl/qxl_kms.c:275:21:    expected void volatile [noderef] __iomem *addr
+drivers/gpu/drm/qxl/qxl_kms.c:275:21:    got struct qxl_ram_header *ram_header
+drivers/gpu/drm/qxl/qxl_kms.c:275:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/qxl/qxl_kms.c:279:21:    expected void volatile [noderef] __iomem *addr
+drivers/gpu/drm/qxl/qxl_kms.c:279:21:    got struct qxl_rom *rom
+drivers/gpu/drm/qxl/qxl_kms.c:279:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/qxl/qxl_kms.c:323:21:    expected void volatile [noderef] __iomem *addr
+drivers/gpu/drm/qxl/qxl_kms.c:323:21:    got struct qxl_ram_header *ram_header
+drivers/gpu/drm/qxl/qxl_kms.c:323:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/qxl/qxl_kms.c:324:21:    expected void volatile [noderef] __iomem *addr
+drivers/gpu/drm/qxl/qxl_kms.c:324:21:    got struct qxl_rom *rom
+drivers/gpu/drm/qxl/qxl_kms.c:324:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/qxl/qxl_kms.c:36:5: warning: symbol 'qxl_log_level' was not declared. Should it be static?
+drivers/gpu/drm/qxl/qxl_object.c:178:29: warning: cast removes address space '__iomem' of expression
+drivers/gpu/drm/qxl/qxl_object.c:223:40:    expected void *
+drivers/gpu/drm/qxl/qxl_object.c:223:40:    got void [noderef] __iomem *
+drivers/gpu/drm/qxl/qxl_object.c:223:40: warning: incorrect type in return expression (different address spaces)
+drivers/gpu/drm/qxl/qxl_object.c:273:33:    expected void [noderef] __iomem *vaddr
+drivers/gpu/drm/qxl/qxl_object.c:273:33:    got void *pmap
+drivers/gpu/drm/qxl/qxl_object.c:273:33: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/radeon/atombios_crtc.c:313:23:    expected unsigned short [addressable] [usertype] usH_Size
+drivers/gpu/drm/radeon/atombios_crtc.c:313:23:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:313:23: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:314:32:    expected unsigned short [addressable] [usertype] usH_Blanking_Time
+drivers/gpu/drm/radeon/atombios_crtc.c:314:32:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:314:32: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:316:23:    expected unsigned short [addressable] [usertype] usV_Size
+drivers/gpu/drm/radeon/atombios_crtc.c:316:23:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:316:23: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:317:32:    expected unsigned short [addressable] [usertype] usV_Blanking_Time
+drivers/gpu/drm/radeon/atombios_crtc.c:317:32:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:317:32: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:319:29:    expected unsigned short [addressable] [usertype] usH_SyncOffset
+drivers/gpu/drm/radeon/atombios_crtc.c:319:29:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:319:29: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:321:28:    expected unsigned short [addressable] [usertype] usH_SyncWidth
+drivers/gpu/drm/radeon/atombios_crtc.c:321:28:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:321:28: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:323:29:    expected unsigned short [addressable] [usertype] usV_SyncOffset
+drivers/gpu/drm/radeon/atombios_crtc.c:323:29:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:323:29: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:325:28:    expected unsigned short [addressable] [usertype] usV_SyncWidth
+drivers/gpu/drm/radeon/atombios_crtc.c:325:28:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:325:28: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:343:39:    expected unsigned short [addressable] [assigned] [usertype] usAccess
+drivers/gpu/drm/radeon/atombios_crtc.c:343:39:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:343:39: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:360:24:    expected unsigned short [addressable] [usertype] usH_Total
+drivers/gpu/drm/radeon/atombios_crtc.c:360:24:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:360:24: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:361:23:    expected unsigned short [addressable] [usertype] usH_Disp
+drivers/gpu/drm/radeon/atombios_crtc.c:361:23:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:361:23: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:362:28:    expected unsigned short [addressable] [usertype] usH_SyncStart
+drivers/gpu/drm/radeon/atombios_crtc.c:362:28:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:362:28: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:363:28:    expected unsigned short [addressable] [usertype] usH_SyncWidth
+drivers/gpu/drm/radeon/atombios_crtc.c:363:28:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:363:28: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:365:24:    expected unsigned short [addressable] [usertype] usV_Total
+drivers/gpu/drm/radeon/atombios_crtc.c:365:24:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:365:24: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:366:23:    expected unsigned short [addressable] [usertype] usV_Disp
+drivers/gpu/drm/radeon/atombios_crtc.c:366:23:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:366:23: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:367:28:    expected unsigned short [addressable] [usertype] usV_SyncStart
+drivers/gpu/drm/radeon/atombios_crtc.c:367:28:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:367:28: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:368:28:    expected unsigned short [addressable] [usertype] usV_SyncWidth
+drivers/gpu/drm/radeon/atombios_crtc.c:368:28:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:368:28: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:389:39:    expected unsigned short [addressable] [assigned] [usertype] usAccess
+drivers/gpu/drm/radeon/atombios_crtc.c:389:39:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:389:39: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:481:52:    expected unsigned short [addressable] [usertype] usSpreadSpectrumAmountFrac
+drivers/gpu/drm/radeon/atombios_crtc.c:481:52:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:481:52: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:496:48:    expected unsigned short [addressable] [assigned] [usertype] usSpreadSpectrumAmount
+drivers/gpu/drm/radeon/atombios_crtc.c:496:48:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:496:48: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:497:46:    expected unsigned short [addressable] [assigned] [usertype] usSpreadSpectrumStep
+drivers/gpu/drm/radeon/atombios_crtc.c:497:46:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:497:46: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:500:52:    expected unsigned short [addressable] [assigned] [usertype] usSpreadSpectrumPercentage
+drivers/gpu/drm/radeon/atombios_crtc.c:500:52:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:500:52: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:515:48:    expected unsigned short [addressable] [assigned] [usertype] usSpreadSpectrumAmount
+drivers/gpu/drm/radeon/atombios_crtc.c:515:48:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:515:48: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:516:46:    expected unsigned short [addressable] [assigned] [usertype] usSpreadSpectrumStep
+drivers/gpu/drm/radeon/atombios_crtc.c:516:46:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:516:46: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:519:52:    expected unsigned short [addressable] [assigned] [usertype] usSpreadSpectrumPercentage
+drivers/gpu/drm/radeon/atombios_crtc.c:519:52:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:519:52: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:532:59:    expected unsigned short [addressable] [assigned] [usertype] usSpreadSpectrumPercentage
+drivers/gpu/drm/radeon/atombios_crtc.c:532:59:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:532:59: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:543:57:    expected unsigned short [addressable] [assigned] [usertype] usSpreadSpectrumPercentage
+drivers/gpu/drm/radeon/atombios_crtc.c:543:57:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:543:57: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:55:36:    expected unsigned short [addressable] [assigned] [usertype] usOverscanTop
+drivers/gpu/drm/radeon/atombios_crtc.c:55:36:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:55:36: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:56:39:    expected unsigned short [addressable] [assigned] [usertype] usOverscanBottom
+drivers/gpu/drm/radeon/atombios_crtc.c:56:39:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:56:39: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:57:37:    expected unsigned short [addressable] [assigned] [usertype] usOverscanLeft
+drivers/gpu/drm/radeon/atombios_crtc.c:57:37:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:57:37: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:58:38:    expected unsigned short [addressable] [assigned] [usertype] usOverscanRight
+drivers/gpu/drm/radeon/atombios_crtc.c:58:38:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:58:38: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:65:45:    expected unsigned short [addressable] [assigned] [usertype] usOverscanLeft
+drivers/gpu/drm/radeon/atombios_crtc.c:65:45:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:65:45: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:66:46:    expected unsigned short [addressable] [assigned] [usertype] usOverscanRight
+drivers/gpu/drm/radeon/atombios_crtc.c:66:46:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:66:46: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:68:44:    expected unsigned short [addressable] [assigned] [usertype] usOverscanTop
+drivers/gpu/drm/radeon/atombios_crtc.c:68:44:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:68:44: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:694:54:    expected unsigned short [addressable] [usertype] usPixelClock
+drivers/gpu/drm/radeon/atombios_crtc.c:694:54:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:694:54: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:69:47:    expected unsigned short [addressable] [assigned] [usertype] usOverscanBottom
+drivers/gpu/drm/radeon/atombios_crtc.c:69:47:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:69:47: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:703:50: warning: cast to restricted __le16
+drivers/gpu/drm/radeon/atombios_crtc.c:706:61:    expected unsigned short [addressable] [assigned] [usertype] usPixelClock
+drivers/gpu/drm/radeon/atombios_crtc.c:706:61:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:706:61: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:717:69:    expected unsigned short [addressable] [assigned] [usertype] usPixelClock
+drivers/gpu/drm/radeon/atombios_crtc.c:717:69:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:717:69: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:736:50: warning: cast to restricted __le32
+drivers/gpu/drm/radeon/atombios_crtc.c:74:38:    expected unsigned short [addressable] [assigned] [usertype] usOverscanRight
+drivers/gpu/drm/radeon/atombios_crtc.c:74:38:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:74:38: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:75:37:    expected unsigned short [addressable] [assigned] [usertype] usOverscanLeft
+drivers/gpu/drm/radeon/atombios_crtc.c:75:37:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:75:37: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:76:39:    expected unsigned short [addressable] [assigned] [usertype] usOverscanBottom
+drivers/gpu/drm/radeon/atombios_crtc.c:76:39:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:76:39: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:77:36:    expected unsigned short [addressable] [assigned] [usertype] usOverscanTop
+drivers/gpu/drm/radeon/atombios_crtc.c:77:36:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:77:36: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:795:46:    expected unsigned short [addressable] [assigned] [usertype] usPixelClock
+drivers/gpu/drm/radeon/atombios_crtc.c:795:46:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:795:46: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:802:50:    expected unsigned int [addressable] [assigned] [usertype] ulDispEngClkFreq
+drivers/gpu/drm/radeon/atombios_crtc.c:802:50:    got restricted __le32 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:802:50: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:854:46:    expected unsigned short [addressable] [usertype] usPixelClock
+drivers/gpu/drm/radeon/atombios_crtc.c:854:46:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:854:46: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:855:42:    expected unsigned short [addressable] [usertype] usRefDiv
+drivers/gpu/drm/radeon/atombios_crtc.c:855:42:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:855:42: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:856:41:    expected unsigned short [addressable] [usertype] usFbDiv
+drivers/gpu/drm/radeon/atombios_crtc.c:856:41:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:856:41: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:864:46:    expected unsigned short [addressable] [assigned] [usertype] usPixelClock
+drivers/gpu/drm/radeon/atombios_crtc.c:864:46:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:864:46: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:865:42:    expected unsigned short [addressable] [assigned] [usertype] usRefDiv
+drivers/gpu/drm/radeon/atombios_crtc.c:865:42:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:865:42: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:866:41:    expected unsigned short [addressable] [assigned] [usertype] usFbDiv
+drivers/gpu/drm/radeon/atombios_crtc.c:866:41:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:866:41: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:874:46:    expected unsigned short [addressable] [assigned] [usertype] usPixelClock
+drivers/gpu/drm/radeon/atombios_crtc.c:874:46:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:874:46: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:875:42:    expected unsigned short [addressable] [assigned] [usertype] usRefDiv
+drivers/gpu/drm/radeon/atombios_crtc.c:875:42:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:875:42: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:876:41:    expected unsigned short [addressable] [assigned] [usertype] usFbDiv
+drivers/gpu/drm/radeon/atombios_crtc.c:876:41:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:876:41: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:891:46:    expected unsigned short [addressable] [assigned] [usertype] usPixelClock
+drivers/gpu/drm/radeon/atombios_crtc.c:891:46:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:891:46: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:893:41:    expected unsigned short [addressable] [assigned] [usertype] usFbDiv
+drivers/gpu/drm/radeon/atombios_crtc.c:893:41:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:893:41: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:894:48:    expected unsigned int [addressable] [assigned] [usertype] ulFbDivDecFrac
+drivers/gpu/drm/radeon/atombios_crtc.c:894:48:    got restricted __le32 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:894:48: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:920:50:    expected unsigned int [addressable] [assigned] [usertype] ulDispEngClkFreq
+drivers/gpu/drm/radeon/atombios_crtc.c:920:50:    got restricted __le32 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:920:50: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:922:41:    expected unsigned short [addressable] [assigned] [usertype] usFbDiv
+drivers/gpu/drm/radeon/atombios_crtc.c:922:41:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:922:41: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_crtc.c:923:48:    expected unsigned int [addressable] [assigned] [usertype] ulFbDivDecFrac
+drivers/gpu/drm/radeon/atombios_crtc.c:923:48:    got restricted __le32 [usertype]
+drivers/gpu/drm/radeon/atombios_crtc.c:923:48: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_dp.c:107:30:    expected unsigned short [addressable] [usertype] lpAuxRequest
+drivers/gpu/drm/radeon/atombios_dp.c:107:30:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_dp.c:107:30: warning: incorrect type in assignment (different base types)
+drivers/gpu/drm/radeon/atombios_dp.c:108:27:    expected unsigned short [addressable] [usertype] lpDataOut
+drivers/gpu/drm/radeon/atombios_dp.c:108:27:    got restricted __le16 [usertype]
+drivers/gpu/drm/radeon/atombios_dp.c:108:27: warning: incorrect typ


