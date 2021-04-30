Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9C7370396
	for <lists+intel-gfx@lfdr.de>; Sat,  1 May 2021 00:38:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAD446F600;
	Fri, 30 Apr 2021 22:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C4DD6F5FF
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 22:38:16 +0000 (UTC)
IronPort-SDR: OReOSbU9sbckw0bjz6XcWf74r/YK6JfOlknbIHuf+fFboCskQk9ftInDZ9HzsrPuDvRS2WWUiJ
 xap02m18bGWw==
X-IronPort-AV: E=McAfee;i="6200,9189,9970"; a="176869088"
X-IronPort-AV: E=Sophos;i="5.82,264,1613462400"; d="scan'208";a="176869088"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 15:38:16 -0700
IronPort-SDR: r242bcXq5z2sqV3JKDvHHH1GW1AESddDxKRpcQtYrH2oPZ4WqdMLYS9y6CvCBfBmGwrfrs4Oyw
 q4AbWwGBm84w==
X-IronPort-AV: E=Sophos;i="5.82,264,1613462400"; d="scan'208";a="426619824"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 15:38:15 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Apr 2021 15:38:04 -0700
Message-Id: <20210430223808.1078010-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 0/4] Simplify intel_setup_outputs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

First and second patches should be straightforward. Third patch is a
simplification for gen9+ since we are not supposed to check the straps
anymore and rely on VBT.

Last patch hides port F hacks in intel_bios.c so we have a clean init
sequence.

Lucas De Marchi (4):
  drm/i915/display: move vbt check to intel_ddi_init()
  drm/i915/display: remove FIXME comment for intended feature
  drm/i915/display: remove strap checks from gen 9
  drm/i915/display: hide workaround for broken vbt in intel_bios.c

 drivers/gpu/drm/i915/display/intel_bios.c    | 20 ++++++++
 drivers/gpu/drm/i915/display/intel_display.c | 54 +++++---------------
 2 files changed, 32 insertions(+), 42 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
