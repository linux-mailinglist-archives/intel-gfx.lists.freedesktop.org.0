Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 716DB620907
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 06:47:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B2C710E1FB;
	Tue,  8 Nov 2022 05:47:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9C77A10E1FB;
 Tue,  8 Nov 2022 05:47:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A3FCAADF4;
 Tue,  8 Nov 2022 05:47:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Tue, 08 Nov 2022 05:47:00 -0000
Message-ID: <166788642062.2236.14373619066942736090@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221108045628.4187260-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20221108045628.4187260-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/i915/pxp=3A_Separate_PXP_FW_interface_structures_for?=
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

Series: drm/i915/pxp: Separate PXP FW interface structures for
URL   : https://patchwork.freedesktop.org/series/110652/
State : warning

== Summary ==

Error: dim sparse failed
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
+drivers/gpu/drm/i915/pxp/intel_pxp_huc.c:39:35:    expected restricted __le64 [assigned] [usertype] huc_base_address
+drivers/gpu/drm/i915/pxp/intel_pxp_huc.c:39:35:    got unsigned long long [assigned] [usertype] huc_phys_addr
+drivers/gpu/drm/i915/pxp/intel_pxp_huc.c:39:35: warning: incorrect type in assignment (different base types)
-O:drivers/gpu/drm/i915/pxp/intel_pxp_huc.c:39:35:    expected restricted __le64 [assigned] [usertype] huc_base_address
-O:drivers/gpu/drm/i915/pxp/intel_pxp_huc.c:39:35:    got unsigned long long [assigned] [usertype] huc_phys_addr
-O:drivers/gpu/drm/i915/pxp/intel_pxp_huc.c:39:35: warning: incorrect type in assignment (different base types)


