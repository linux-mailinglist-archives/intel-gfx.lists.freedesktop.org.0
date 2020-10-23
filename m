Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 022ED297180
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 16:41:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 752806E110;
	Fri, 23 Oct 2020 14:41:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B9ED96F892;
 Fri, 23 Oct 2020 14:41:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A98F1A47E1;
 Fri, 23 Oct 2020 14:41:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Fri, 23 Oct 2020 14:41:00 -0000
Message-ID: <160346406066.1406.3005399116539385348@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201023122112.15265-1-anshuman.gupta@intel.com>
In-Reply-To: <20201023122112.15265-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_HDCP_2=2E2_and_HDCP_1=2E4_Gen12_DP_MST_support?=
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

Series: HDCP 2.2 and HDCP 1.4 Gen12 DP MST support
URL   : https://patchwork.freedesktop.org/series/82998/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b0c6f0e5c7be drm/i915/hdcp: Update CP property in update_pipe
51a27b724b6c drm/i915/hdcp: Get conn while content_type changed
fc1bc88083a0 drm/i915/hotplug: Handle CP_IRQ for DP-MST
1fc201e2b66b drm/i915/hdcp: DP MST transcoder for link and stream
e4b4e110cdcd drm/i915/hdcp: Move HDCP enc status timeout to header
-:13: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 7e90e8d0c0ea ("drm/i915: Increase timeout for Encrypt status change")'
#13: 
Related: 7e90e8d0c0ea ("drm/i915: Increase timeout for Encrypt

total: 1 errors, 0 warnings, 0 checks, 47 lines checked
88024dee38f7 drm/i915/hdcp: HDCP stream encryption support
bf595ddebcec drm/i915/hdcp: Enable Gen12 HDCP 1.4 DP MST support
519c6bdb283c drm/i915/hdcp: Pass dig_port to intel_hdcp_init
1896b2311fc9 drm/i915/hdcp: Encapsulate hdcp_port_data to dig_port
af971f8edf39 misc/mei/hdcp: Fix AUTH_STREAM_REQ cmd buffer len
124707ce3db5 drm/hdcp: Max MST content streams
0e04b62f343b drm/i915/hdcp: MST streams support in hdcp port_data
0576d09dd14c drm/i915/hdcp: Pass connector to check_2_2_link
06d2aa038af2 drm/i915/hdcp: Add HDCP 2.2 stream register
ca8152f3267b drm/i915/hdcp: Support for HDCP 2.2 MST shim callbacks
260693b556b1 drm/i915/hdcp: Enable HDCP 2.2 MST support


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
