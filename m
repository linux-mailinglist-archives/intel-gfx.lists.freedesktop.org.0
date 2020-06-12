Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA501F7F6C
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jun 2020 01:04:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56DC86E25B;
	Fri, 12 Jun 2020 23:03:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DC316E20A;
 Fri, 12 Jun 2020 23:03:49 +0000 (UTC)
IronPort-SDR: zf5nVb1YjuRd15ZCo6NblCvzliAl8F/PB7MGGwImlegH5rWQ1UVqS8MMQL6Kl4Ao/HC6suKB99
 vwKedSW8cJ1w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 16:03:48 -0700
IronPort-SDR: odhMhsR/y59Pu3V2rx81jtdFP6COUYVlW/sOKw1000Fh13n4K8xNQKaNHZt+T+d41VMaYN30wu
 fniNJNnmokVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,504,1583222400"; d="scan'208";a="307446299"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga002.fm.intel.com with ESMTP; 12 Jun 2020 16:03:47 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 12 Jun 2020 16:04:41 -0700
Message-Id: <20200612230444.10121-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 0/3] VRR capable attach prop in i915,
 DPCD helper, VRR debugfs
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

This is an initial set of patches for enabling VRR support in i915.
This series has patches for:
1.  adding a drm dpcd helper to read ignore MSA
    bit in sink's DPCD indicating sink support for VRR
2. Attach and set VRR capable connector prop for Intel DP conn
3. Expose VRR min and max through debugfs

Aditya Swarup (1):
  drm/i915/dp: Attach and set drm connector VRR property

Bhanuprakash Modem (1):
  drm/i915/dp: Expose connector VRR monitor range via debugfs

Manasi Navare (1):
  drm/dp: DRM DP helper for reading Ignore MSA from DPCD

 .../drm/i915/display/intel_display_debugfs.c  | 20 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.c       | 27 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h       |  2 ++
 include/drm/drm_dp_helper.h                   |  8 ++++++
 4 files changed, 57 insertions(+)

-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
