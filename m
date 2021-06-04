Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC2A39C013
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 21:01:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 469C46F8B9;
	Fri,  4 Jun 2021 19:01:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63F4C6F8B2
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 19:01:29 +0000 (UTC)
IronPort-SDR: 7i9YTlc3neSr5K5OyEraXycLSTQJ1I6QKmuUtUxuvYYSID1CKJfSdIXqcztIVwb+SxLLQxDOmC
 tUhxsctJ7AYw==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="184033333"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="184033333"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 12:01:28 -0700
IronPort-SDR: WwB8XXrLpDEB43AFaGZHnevPmSf7M+LjdOPJ2qpNzBmfSpAQ1XhvHZ7FxONz83h+YpCz6KH/Rt
 2GZqNa/CIVEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="468414332"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga004.fm.intel.com with ESMTP; 04 Jun 2021 12:01:28 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Jun 2021 12:01:24 -0700
Message-Id: <20210604190128.24151-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 0/4] Pipe DMC Support
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

With all DMC cleanup patches merged, sending the
rebased version of actual Pipe DMC bits.

One change from previous verison is a fix of SKL
regression. Corner cases for stepping-substepping
combination was missing from fw_info_matches_stepping()
helper. Luckily SKL was the only platform in CI that came
under this category and DMC refused to load.

This fix is tested on SKL.

Anusha Srivatsa (4):
  drm/i915/dmc: Introduce DMC_FW_MAIN
  xdrm/i915/xelpd: Pipe A DMC plugging
  drm/i915/adl_p: Pipe B DMC Support
  drm/i915/adl_p: Load DMC

 .../drm/i915/display/intel_display_debugfs.c  |   6 +-
 .../drm/i915/display/intel_display_power.c    |   5 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      | 170 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_dmc.h      |  23 ++-
 drivers/gpu/drm/i915/i915_reg.h               |   2 +-
 5 files changed, 127 insertions(+), 79 deletions(-)

-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
