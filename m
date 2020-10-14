Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2944C28D97A
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 07:15:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44E0D6E9D0;
	Wed, 14 Oct 2020 05:15:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A2566E9CE;
 Wed, 14 Oct 2020 05:15:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 09565A73C9;
 Wed, 14 Oct 2020 05:15:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Wed, 14 Oct 2020 05:15:26 -0000
Message-ID: <160265252600.21208.2624717249641145255@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201014045252.13608-1-anshuman.gupta@intel.com>
In-Reply-To: <20201014045252.13608-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_HDCP_2=2E2_DP_MST_Support_=28rev2=29?=
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

Series: HDCP 2.2 DP MST Support (rev2)
URL   : https://patchwork.freedesktop.org/series/81538/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
51e1dc4c0c75 drm/i915/hdcp: Update CP property in update_pipe
46a92a431c4f drm/i915/hotplug: Handle CP_IRQ for DP-MST
2147d0efa227 drm/i915/hdcp: DP MST transcoder for link and stream
ec157320f9ee drm/i915/hdcp: Move HDCP enc status timeout to header
-:13: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 7e90e8d0c0ea ("drm/i915: Increase timeout for Encrypt status change")'
#13: 
Related: 7e90e8d0c0ea ("drm/i915: Increase timeout for Encrypt

total: 1 errors, 0 warnings, 0 checks, 47 lines checked
3a6056295149 drm/i915/hdcp: HDCP stream encryption support
87a4a87a3296 drm/i915/hdcp: Enable Gen12 HDCP 1.4 DP MST support
86046073868b drm/i915/hdcp: Pass dig_port to intel_hdcp_init
03477decebcc drm/i915/hdcp: Encapsulate hdcp_port_data to dig_port
629f09e3ddea drm/i915/hdcp: mst streams support in hdcp port_data
1300b2ad499f drm/i915/hdcp: Pass connector to check_2_2_link
f47295717b3e drm/i915/hdcp: Add HDCP 2.2 stream register
0b04d5020a92 drm/i915/hdcp: Support for HDCP 2.2 MST shim callbacks
ac59ab83da2a drm/i915/hdcp: Enable HDCP 2.2 MST support


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
