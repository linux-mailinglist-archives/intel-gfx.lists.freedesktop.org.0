Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC122B95E0
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 16:16:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 124CD6E51B;
	Thu, 19 Nov 2020 15:16:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 183456E51B
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 15:16:08 +0000 (UTC)
IronPort-SDR: BTB5Scr0fyAOBpaoalqLCAmFVs3aWHBlObcupMgKAtyNkAcYJA7ivaoX+yYlaQZt8/NZrOEIrb
 slU1OrY0TD7A==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="235451719"
X-IronPort-AV: E=Sophos;i="5.77,490,1596524400"; d="scan'208";a="235451719"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 07:16:07 -0800
IronPort-SDR: OylgnAhwAMbcZNgEAkTLyO94GHBBbzRiiTHIrFdYk3pxFBLvDw4Ww3wGGheu+VdGMbr/gmGac6
 lKKqMuArHZ5w==
X-IronPort-AV: E=Sophos;i="5.77,490,1596524400"; d="scan'208";a="341715128"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 07:16:05 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 21:20:48 +0530
Message-Id: <20201119155050.20328-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [v2 0/2] Re-enable FBC on TGL
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

FBC was disabled on TGL due to random underruns. It has
been determined that FBC will not work reliably with PSR2.
This series re-enables fbc along with taking care of the
PSR2 limitations for TGL.

Bspec: 50422 HSD: 14010260002

v2: Addressed review comments and added bspec links

Uma Shankar (2):
  drm/i915/display/tgl: Disable FBC with PSR2
  Revert "drm/i915/display/fbc: Disable fbc by default on TGL"

 drivers/gpu/drm/i915/display/intel_fbc.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
