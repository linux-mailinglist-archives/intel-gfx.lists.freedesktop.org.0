Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8C42C51E2
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 11:15:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 117576E86D;
	Thu, 26 Nov 2020 10:15:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C804A6E86D;
 Thu, 26 Nov 2020 10:15:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BF7E2A47EB;
 Thu, 26 Nov 2020 10:15:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Thu, 26 Nov 2020 10:15:44 -0000
Message-ID: <160638574478.4111.1786149607637706022@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201126073722.19107-1-anshuman.gupta@intel.com>
In-Reply-To: <20201126073722.19107-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_HDCP_2=2E2_and_HDCP_1=2E4_Gen12_DP_MST_support_=28rev5=29?=
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

Series: HDCP 2.2 and HDCP 1.4 Gen12 DP MST support (rev5)
URL   : https://patchwork.freedesktop.org/series/82998/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fede738db387 drm/i915/hdcp: Update CP property in update_pipe
-:24: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#24: 
- Fix WARN_ON(connector->base.registration_state == DRM_CONNECTOR_REGISTERED)

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
cae9bce2e99c drm/i915/hdcp: Get conn while content_type changed
a1399e34cc6b drm/i915/hotplug: Handle CP_IRQ for DP-MST
e0378ed7d400 drm/i915/hdcp: No HDCP when encoder is't initialized
9ebb17cb5dd1 drm/i915/hdcp: DP MST transcoder for link and stream
2410d90472dd drm/i915/hdcp: Move HDCP enc status timeout to header
de0fc99eeb69 drm/i915/hdcp: HDCP stream encryption support
3b08477e804e drm/i915/hdcp: Enable HDCP 1.4 stream encryption
364abd7a10e7 drm/i915/hdcp: Enable Gen12 HDCP 1.4 DP MST support
f2f428fd437a drm/i915/hdcp: Pass dig_port to intel_hdcp_init
7b2287859815 drm/i915/hdcp: Encapsulate hdcp_port_data to dig_port
809b35f4f68e misc/mei/hdcp: Fix AUTH_STREAM_REQ cmd buffer len
194192a51d06 drm/hdcp: Max MST content streams
3062c90f915d drm/i915/hdcp: MST streams support in hdcp port_data
cdef9be4dbfb drm/i915/hdcp: Pass connector to check_2_2_link
40ebf781db7c drm/i915/hdcp: Add HDCP 2.2 stream register
b27e53406aa5 drm/i915/hdcp: Support for HDCP 2.2 MST shim callbacks
28e8195e636b drm/i915/hdcp: Enable HDCP 2.2 MST support


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
