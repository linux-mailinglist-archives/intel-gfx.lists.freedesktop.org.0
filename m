Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3217F225DAE
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 13:45:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D8B26E062;
	Mon, 20 Jul 2020 11:45:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C578F6E062
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jul 2020 11:45:43 +0000 (UTC)
IronPort-SDR: lLqzI2EelTyDmhfL8/0CGhBX6PYWN3LQ7yWg5aEvmS1t+UVuKCBBpz58qY083k4zXaebSKXOx9
 r8PSkILdsg0w==
X-IronPort-AV: E=McAfee;i="6000,8403,9687"; a="129460417"
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="129460417"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 04:45:43 -0700
IronPort-SDR: vDJdwOIP0oDHkvB4NzINnWhxE7PWkpidYOlvYTmj5ktkWc74wK0cg1YTjf0upLVrnTAH9aCCXE
 FwOQoj5uh5vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="326038988"
Received: from bhanu-nuc8i7beh.iind.intel.com ([10.145.162.210])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Jul 2020 04:45:40 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: bhanuprakash.modem@intel.com,
	intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jul 2020 01:10:51 +0530
Message-Id: <20200720194053.24700-1-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] Expose crtc dither state and connector max
 bpc via debugfs
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

[why]
It's useful to know the max supported panel BPC and PIPE dither state
for IGT testing.

[how]
* Expose the connector max supported BPC for the panel via a debugfs file on the
  connector, "output_bpc".
  Example: cat /sys/kernel/debug/dri/0/DP-1/output_bpc

* Expose the dithering state for the crtc via a debugfs file "dither".
  Example: cat /sys/kernel/debug/dri/0/crtc-0/dither

Test-with: 20200720165011.23918-1-bhanuprakash.modem@intel.com 

Bhanuprakash Modem (2):
  i915/debug: Expose crtc dither state via debugfs
  i915/debug: Expose Max BPC info via debugfs

 .../drm/i915/display/intel_display_debugfs.c    | 17 +++++++++++++++++
 drivers/gpu/drm/i915/i915_debugfs.c             | 17 +++++++++++++++++
 2 files changed, 34 insertions(+)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
