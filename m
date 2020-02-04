Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BED15217F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 21:32:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BCC76E8EE;
	Tue,  4 Feb 2020 20:32:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2EB056E8EE;
 Tue,  4 Feb 2020 20:32:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 26F9BA0071;
 Tue,  4 Feb 2020 20:32:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Tue, 04 Feb 2020 20:32:11 -0000
Message-ID: <158084833115.25090.6497290522481772854@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200203232014.906651-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200203232014.906651-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBJ?=
 =?utf-8?q?n_order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP_SDPs?=
 =?utf-8?q?_=28rev3=29?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs (rev3)
URL   : https://patchwork.freedesktop.org/series/72853/
State : failure

== Summary ==

Applying: drm: add DP 1.4 VSC SDP Payload related enums and a structure
Applying: drm/i915/dp: Add compute routine for DP VSC SDP
Applying: drm/i915/dp: Add compute routine for DP HDR Metadata Infoframe SDP
Applying: drm/i915/dp: Add writing of DP SDPs (Secondary Data Packet)
Applying: video/hdmi: Add Unpack only function for DRM infoframe
Applying: drm/i915/dp: Read out DP SDPs (Secondary Data Packet)
Applying: drm: Add logging function for DP VSC SDP
Applying: drm/i915: Include HDMI DRM infoframe in the crtc state dump
Applying: drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
Applying: drm/i915: Include DP VSC SDP in the crtc state dump
Applying: drm/i915: Program DP SDPs with computed configs
Applying: drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
Applying: drm/i915: Add state readout for DP VSC SDP
Applying: drm/i915: Program DP SDPs on pipe updates
Applying: drm/i915: Stop sending DP SDPs on intel_ddi_post_disable_dp()
Applying: drm/i915/dp: Add compute routine for DP PSR VSC SDP
Applying: drm/i915/psr: Use new DP VSC SDP compute routine on PSR
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/display/intel_ddi.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0017 drm/i915/psr: Use new DP VSC SDP compute routine on PSR
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
