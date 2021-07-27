Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B880B3D7E13
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 20:55:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACFAF6E5BD;
	Tue, 27 Jul 2021 18:55:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1EFD6E4D0
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 18:55:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10058"; a="209397915"
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="209397915"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 11:55:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="456217629"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga007.jf.intel.com with ESMTP; 27 Jul 2021 11:55:05 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jul 2021 11:55:04 -0700
Message-Id: <20210727185505.17276-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1] Bump DMC version on ADLP to v2.11
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

Adding PR for CI to pickthe firmware:
The following changes since commit 168452ee695b5edb9deb641059bc110b9c5e8fc7:

  Merge tag 'iwlwifi-fw-2021-07-19' of git://git.kernel.org/pub/scm/linux/kernel/git/iwlwifi/linux-firmware into main (2021-07-19 14:35:47 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware adlp_dmc_2_11

for you to fetch changes up to e5b34bc00848422a9d9907694202f1e29c5e9671:

  i915: Bump DMC version for ADLP to v2.11 (2021-07-27 11:20:31 -0700)

----------------------------------------------------------------
Anusha Srivatsa (1):
      i915: Bump DMC version for ADLP to v2.11

 WHENCE                    |   3 +++
 i915/adlp_dmc_ver2_11.bin | Bin 0 -> 72024 bytes
 2 files changed, 3 insertions(+)
 create mode 100644 i915/adlp_dmc_ver2_11.bin


Anusha Srivatsa (1):
  drm/i915/dmc: Bump ADLP DMC version to v2.11

 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
