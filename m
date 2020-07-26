Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E466622DC23
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Jul 2020 07:09:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6928B6E088;
	Sun, 26 Jul 2020 05:08:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3DE76E088
 for <intel-gfx@lists.freedesktop.org>; Sun, 26 Jul 2020 05:08:54 +0000 (UTC)
IronPort-SDR: FaYieufTXMCt7FYkb1rS+QCV+EY7Rha1q33/zXG6TU6HInyCFd9r18SFUNd1Q/7xdHs5wWNeVc
 2IILfN34hWeA==
X-IronPort-AV: E=McAfee;i="6000,8403,9693"; a="150054554"
X-IronPort-AV: E=Sophos;i="5.75,397,1589266800"; d="scan'208";a="150054554"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2020 22:08:54 -0700
IronPort-SDR: o9WBemA1rDITvHozi0B+xeG24Wc3nYPiy5bCWRkYMhJ3eL7r/QhrAq0CB3sPECS3VVunsjc5Aq
 tfdHu/OJBMYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,397,1589266800"; d="scan'208";a="285334892"
Received: from bhanu-nuc8i7beh.iind.intel.com ([10.145.162.210])
 by orsmga003.jf.intel.com with ESMTP; 25 Jul 2020 22:08:52 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: bhanuprakash.modem@intel.com,
	intel-gfx@lists.freedesktop.org
Date: Sun, 26 Jul 2020 18:33:58 +0530
Message-Id: <20200726130400.10160-1-bhanuprakash.modem@intel.com>
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

Test-with: 20200726122944.9864-1-bhanuprakash.modem@intel.com

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
