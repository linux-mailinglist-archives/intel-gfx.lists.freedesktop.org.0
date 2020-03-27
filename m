Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78408195319
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 09:42:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CCAE6E9CF;
	Fri, 27 Mar 2020 08:42:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56C006E9CF
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 08:42:21 +0000 (UTC)
IronPort-SDR: F5KgTWhE0oam46cUbIRgJ651Jgb988PKGZclZJvtt5bMiKFVin2pm4zMwvNDbgjj2y6+OTWemH
 hgH07n863LAQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 01:42:20 -0700
IronPort-SDR: /hF+xcIQ+rSKzkffZEr/XCQOOI3LIlnkcwkseuSJEG51U0YBBG34K7/JUdWfFEp4gGbAxWQmRd
 QtgsM5G/oxbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,311,1580803200"; d="scan'208";a="240909436"
Received: from vipinana-nuc7i7bnh.iind.intel.com ([10.66.179.10])
 by fmsmga008.fm.intel.com with ESMTP; 27 Mar 2020 01:42:20 -0700
From: Vipin Anand <vipin.anand@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 14:10:57 +0530
Message-Id: <20200327084058.11840-1-vipin.anand@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/1] Enable HDR on Gen9 devices with lspcon
 hdr capability
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

Removing Uma's patches as it is already under review 
https://patchwork.freedesktop.org/series/68081/
Once that is merged this patch need to be reviewed.

Vipin Anand (1):
  drm:i915:display: add checks for Gen9 devices with hdr capability

 drivers/gpu/drm/i915/display/intel_hdmi.c   | 17 +++++++++++++----
 drivers/gpu/drm/i915/display/intel_lspcon.c |  9 +++++++--
 2 files changed, 20 insertions(+), 6 deletions(-)

-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
