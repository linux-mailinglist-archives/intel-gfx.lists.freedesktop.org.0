Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 472D8293DF0
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 15:57:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1D156ECB1;
	Tue, 20 Oct 2020 13:57:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6631A6ECB1;
 Tue, 20 Oct 2020 13:57:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5E2C7A008A;
 Tue, 20 Oct 2020 13:57:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Tue, 20 Oct 2020 13:57:01 -0000
Message-ID: <160320222138.24449.16459113903312071992@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201020133906.23710-1-anshuman.gupta@intel.com>
In-Reply-To: <20201020133906.23710-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_HDCP_2=2E2_DP_MST_Support_=28rev4=29?=
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

Series: HDCP 2.2 DP MST Support (rev4)
URL   : https://patchwork.freedesktop.org/series/81538/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a4d3a9ec3849 drm/i915/hdcp: Update CP property in update_pipe
2018cc25b202 drm/i915/hotplug: Handle CP_IRQ for DP-MST
11bcba39ffde drm/i915/hdcp: DP MST transcoder for link and stream
aba9f25aea66 drm/i915/hdcp: Move HDCP enc status timeout to header
-:13: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 7e90e8d0c0ea ("drm/i915: Increase timeout for Encrypt status change")'
#13: 
Related: 7e90e8d0c0ea ("drm/i915: Increase timeout for Encrypt

total: 1 errors, 0 warnings, 0 checks, 47 lines checked
ae925c693494 drm/i915/hdcp: HDCP stream encryption support
a79629da8f04 drm/i915/hdcp: Enable Gen12 HDCP 1.4 DP MST support
5621415e6d6e drm/i915/hdcp: Pass dig_port to intel_hdcp_init
39ed7e61c0e9 drm/i915/hdcp: Encapsulate hdcp_port_data to dig_port
69bf14c05085 misc/mei/hdcp: Fix AUTH_STREAM_REQ cmd buffer len
d3fd32def329 drm/hdcp: Max MST content streams
c25e6261d34e drm/i915/hdcp: mst streams support in hdcp port_data
9590fecf06d5 drm/i915/hdcp: Pass connector to check_2_2_link
e0a0c5f3814d drm/i915/hdcp: Add HDCP 2.2 stream register
8786d421d43c drm/i915/hdcp: Support for HDCP 2.2 MST shim callbacks
351b313c2199 drm/i915/hdcp: Enable HDCP 2.2 MST support


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
