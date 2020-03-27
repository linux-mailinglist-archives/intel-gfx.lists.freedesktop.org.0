Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50636195148
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 07:33:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C9246E987;
	Fri, 27 Mar 2020 06:33:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A7AF6E987;
 Fri, 27 Mar 2020 06:33:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 13D7FA47DF;
 Fri, 27 Mar 2020 06:33:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vipin Anand" <vipin.anand@intel.com>
Date: Fri, 27 Mar 2020 06:33:39 -0000
Message-ID: <158529081905.17234.13057071697172290680@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200327061110.17371-1-vipin.anand@intel.com>
In-Reply-To: <20200327061110.17371-1-vipin.anand@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBF?=
 =?utf-8?q?nable_HDR_on_Gen9_devices_with_lspcon_hdr_capability_=28rev2=29?=
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

Series: Enable HDR on Gen9 devices with lspcon hdr capability (rev2)
URL   : https://patchwork.freedesktop.org/series/75148/
State : failure

== Summary ==

Applying: drm/i915/display: Add HDR Capability detection for LSPCON
Applying: drm/i915/display: Enable HDR on gen9 devices with MCA Lspcon
Applying: drm/i915/display: Attach HDR property for capable Gen9 devices
Applying: drm/i915/display: Set HDR Infoframe for HDR capable LSPCON devices
Applying: drm/i915/display: Enable BT2020 for HDR on LSPCON devices
Applying: drm/i915/display: Reduce blanking to support 4k60@10bpp for LSPCON
Applying: drm:i915:display: add checks for Gen9 devices with hdr capability
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/display/intel_hdmi.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0007 drm:i915:display: add checks for Gen9 devices with hdr capability
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
