Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C84BC29CD94
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 03:47:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31FCA6EC7B;
	Wed, 28 Oct 2020 02:47:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D5E586EC7A;
 Wed, 28 Oct 2020 02:47:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CDCD0A8836;
 Wed, 28 Oct 2020 02:47:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Wed, 28 Oct 2020 02:47:42 -0000
Message-ID: <160385326283.21339.7418157562736521112@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201027164208.10026-1-anshuman.gupta@intel.com>
In-Reply-To: <20201027164208.10026-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_HDCP_2=2E2_and_HDCP_1=2E4_Gen12_DP_MST_support_=28rev2=29?=
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

Series: HDCP 2.2 and HDCP 1.4 Gen12 DP MST support (rev2)
URL   : https://patchwork.freedesktop.org/series/82998/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bb73b788c82a drm/i915/hdcp: Update CP property in update_pipe
1b2040195053 drm/i915/hdcp: Get conn while content_type changed
734531fa0d46 drm/i915/hotplug: Handle CP_IRQ for DP-MST
1c9e7f470f41 drm/i915/hdcp: DP MST transcoder for link and stream
1b51c22e0608 drm/i915/hdcp: Move HDCP enc status timeout to header
ba5452d71c60 drm/i915/hdcp: HDCP stream encryption support
d7f3f52ee6f6 drm/i915/hdcp: Enable Gen12 HDCP 1.4 DP MST support
364b23b18975 drm/i915/hdcp: Pass dig_port to intel_hdcp_init
9b2956b02d6e drm/i915/hdcp: Encapsulate hdcp_port_data to dig_port
d38e764365d0 misc/mei/hdcp: Fix AUTH_STREAM_REQ cmd buffer len
7dcbaf56e27e drm/hdcp: Max MST content streams
9ecb513d0858 drm/i915/hdcp: MST streams support in hdcp port_data
9a53600027fd drm/i915/hdcp: Pass connector to check_2_2_link
3e86f0424b87 drm/i915/hdcp: Add HDCP 2.2 stream register
514afd1e53e6 drm/i915/hdcp: Support for HDCP 2.2 MST shim callbacks
-:13: WARNING:TYPO_SPELLING: 'chnages' may be misspelled - perhaps 'changes'?
#13: 
Cosmetic chnages. [Uma]

total: 0 errors, 1 warnings, 0 checks, 113 lines checked
d046e7f1a967 drm/i915/hdcp: Enable HDCP 2.2 MST support


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
