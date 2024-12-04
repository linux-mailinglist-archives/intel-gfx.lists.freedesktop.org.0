Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C87709E3C29
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 15:07:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66AC810E524;
	Wed,  4 Dec 2024 14:07:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6C6D10E217;
 Wed,  4 Dec 2024 14:07:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/dp=5Fmst=3A_Fix_?=
 =?utf-8?q?a_few_side-band_message_handling_issues_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 04 Dec 2024 14:07:52 -0000
Message-ID: <173332127293.2495098.5695336223894197157@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241203160223.2926014-1-imre.deak@intel.com>
In-Reply-To: <20241203160223.2926014-1-imre.deak@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/dp_mst: Fix a few side-band message handling issues (rev3)
URL   : https://patchwork.freedesktop.org/series/142057/
State : warning

== Summary ==

Error: dim checkpatch failed
50def166683f drm/dp_mst: Fix resetting msg rx state after topology removal
08ce637c7cc8 drm/dp_mst: Verify request type in the corresponding down message reply
-:70: WARNING:MISSING_FIXES_TAG: The commit message has 'stable@', perhaps it also needs a 'Fixes:' tag?

total: 0 errors, 1 warnings, 0 checks, 43 lines checked
e5738128be84 drm/dp_mst: Simplify error path in drm_dp_mst_handle_down_rep()
fcfce1ed74a7 drm/dp_mst: Fix down request message timeout handling
0793e82560bf drm/dp_mst: Ensure mst_primary pointer is valid in drm_dp_mst_handle_up_req()
096d8909f8d4 drm/dp_mst: Reset message rx state after OOM in drm_dp_mst_handle_up_req()
141ba468a3b4 drm/dp_mst: Use reset_msg_rx_state() instead of open coding it


