Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C1C40BAD3
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 23:57:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8839B6E82A;
	Tue, 14 Sep 2021 21:57:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E04646E82A
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 21:57:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="222196184"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="222196184"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 14:57:46 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="433165496"
Received: from yoh1-mobl.amr.corp.intel.com (HELO anushasr-mobl7.intel.com)
 ([10.212.16.80])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 14:57:45 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Date: Tue, 14 Sep 2021 14:57:31 -0700
Message-Id: <20210914215732.67135-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] Update to DMC v2.12 for ADLP
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

  linux-firmware: add frimware for mediatek bluetooth chip (MT7922) (2021-09-13 11:35:49 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware adlp_dmc_2_12

for you to fetch changes up to 09ab718bfa2b32a2186dd8f9e39e0cc9a9df7170:

  i915: Update ADLP DMC v2.12 (2021-09-14 14:42:47 -0700)

----------------------------------------------------------------
Anusha Srivatsa (1):
      i915: Update ADLP DMC v2.12

 WHENCE                    |   3 +++
 i915/adlp_dmc_ver2_12.bin | Bin 0 -> 72104 bytes
 2 files changed, 3 insertions(+)
 create mode 100644 i915/adlp_dmc_ver2_12.bin

Anusha Srivatsa (1):
  drm/i915/dmc: Update to DMC v2.12

 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.25.1

