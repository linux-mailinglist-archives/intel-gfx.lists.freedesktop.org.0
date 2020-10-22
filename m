Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 266A8295D44
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Oct 2020 13:20:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 390C46F5E0;
	Thu, 22 Oct 2020 11:20:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 803DD6F5DF;
 Thu, 22 Oct 2020 11:20:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79026A8830;
 Thu, 22 Oct 2020 11:20:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Thu, 22 Oct 2020 11:20:23 -0000
Message-ID: <160336562346.7805.7356758531742410431@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201022085552.18353-1-anshuman.gupta@intel.com>
In-Reply-To: <20201022085552.18353-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_HDCP_2=2E2_DP_MST_Support_=28rev5=29?=
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

Series: HDCP 2.2 DP MST Support (rev5)
URL   : https://patchwork.freedesktop.org/series/81538/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3c203819df03 drm/i915/hdcp: Update CP property in update_pipe
ed3fec051c2e drm/i915/hdcp: Get conn while content_type changed
e6ea1e5d0a69 drm/i915/hotplug: Handle CP_IRQ for DP-MST
ce083eb6afcb drm/i915/hdcp: DP MST transcoder for link and stream
cd7dfdf4d705 drm/i915/hdcp: Move HDCP enc status timeout to header
-:13: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 7e90e8d0c0ea ("drm/i915: Increase timeout for Encrypt status change")'
#13: 
Related: 7e90e8d0c0ea ("drm/i915: Increase timeout for Encrypt

total: 1 errors, 0 warnings, 0 checks, 47 lines checked
a3c2628d301d drm/i915/hdcp: HDCP stream encryption support
c563af8ef24a drm/i915/hdcp: Enable Gen12 HDCP 1.4 DP MST support
d1d2ae46766e drm/i915/hdcp: Pass dig_port to intel_hdcp_init
5524d56ad1d9 drm/i915/hdcp: Encapsulate hdcp_port_data to dig_port
587b272daea6 misc/mei/hdcp: Fix AUTH_STREAM_REQ cmd buffer len
c62cbbaece50 drm/hdcp: Max MST content streams
14aea2bd217e drm/i915/hdcp: MST streams support in hdcp port_data
fe282dce943b drm/i915/hdcp: Pass connector to check_2_2_link
844bace9a8bb drm/i915/hdcp: Add HDCP 2.2 stream register
7286d357f37e drm/i915/hdcp: Support for HDCP 2.2 MST shim callbacks
3f09be950b9e drm/i915/hdcp: Enable HDCP 2.2 MST support


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
