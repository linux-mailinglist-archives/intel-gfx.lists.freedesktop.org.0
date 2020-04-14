Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0641A8D54
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 23:11:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00CBF89C56;
	Tue, 14 Apr 2020 21:11:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6065889BF4
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 21:11:27 +0000 (UTC)
IronPort-SDR: RjLEI91Mk1NOeiVl1z8+FZ0v0kZMQv/h/wrAKOgC9HH7swaOCr6FgJdE/InYzdkvnXS3JxvV5n
 37TVIF5AZ/Zw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 14:11:26 -0700
IronPort-SDR: 7iv22NlwO++2WD9fMbduv4rKUkY/RvR5scVaeRxg+uxAcDwCy7Fd44tKAawvUSNEQq+Ft5XOwV
 6CWErKVtwfJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,384,1580803200"; d="scan'208";a="298814811"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Apr 2020 14:11:26 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Apr 2020 14:11:15 -0700
Message-Id: <20200414211118.2787489-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] Tigerlake workaround updates
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

A recent bspec update updated Wa_1409767108 and added Wa_14010477008 to
the TGL list.  Also, register 0xFDC details are missing from the gen12
section of the bspec, but we have offline confirmation from the hardware
folks that this register does indeed still exist and behave as it did on
gen11, so we should still use it to steer multicast registers when
applying workarounds.

Matt Roper (3):
  drm/i915/tgl: Extend Wa_1409767108:tgl to B0 stepping
  drm/i915/tgl: Add Wa_14010477008:tgl
  drm/i915/tgl: Initialize multicast register steering for workarounds

 .../gpu/drm/i915/display/intel_display_power.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c     | 17 ++++++++++++-----
 drivers/gpu/drm/i915/gt/intel_workarounds.c     |  2 ++
 drivers/gpu/drm/i915/i915_drv.h                 |  2 ++
 4 files changed, 17 insertions(+), 6 deletions(-)

-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
