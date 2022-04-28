Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C39513BF9
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Apr 2022 21:07:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B13310EA5F;
	Thu, 28 Apr 2022 19:07:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2134A10EA5F
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Apr 2022 19:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651172846; x=1682708846;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZZspD1TKFfsbOOpsJ0BcXFfzGc2zMpvBW+AdlFdThCk=;
 b=by5hIJjycRZrgo0YaeXgQuE8SvhWZswAjaCDetBh08h2tybDNOsP2eS8
 G8jRWNFpLQrS3sOnKfPADsmTeLgvsJTkETFqG0Jvhz6VTLa41BX+ufyEH
 t1j6L8iGwljt/nq4ld2qI9I1XXgcqQKzuXB5feIqVq7K1LQdG1lV87j3g
 YX2mN4VxQyaXzLpsMPd9YVNrNoOilgjbB/kgu5LaBsQ5UxczicVdyoTCG
 x6Wd0Yah7/ky6vvKDufUPy7z2xlY8pb3bM42oXL8X/fSKrDjyZQeEk0AT
 mQUlfw4FV7D0rn/ZG5MLBq23ZzFJ3bIxeG/jEBiATBfIRrhS8FCMHplvS g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="246949712"
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="246949712"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 12:07:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="581565132"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga008.jf.intel.com with ESMTP; 28 Apr 2022 12:07:25 -0700
From: John.C.Harrison@Intel.com
To: linux-firmware@kernel.org
Date: Thu, 28 Apr 2022 12:07:25 -0700
Message-Id: <20220428190725.3704842-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] PR for new GuC v70.1.2 for DG2
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
Cc: jwboyer@kernel.org, intel-gfx@lists.freedesktop.org, kyle@kernel.org,
 ben@decadent.org.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The following changes since commit ac21ab5d1de0de34201c90d32eee436f873d1e5b:

  Mellanox: Add lc_ini_bundle for xx.2010.1006 (2022-04-25 07:36:16 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_v70.1.2_dg2

for you to fetch changes up to 89ae5eb20f65752db6a3e38b9a69144f19540567:

  i915: Add GuC v70.1.2 for DG2 (2022-04-26 13:27:47 -0700)

----------------------------------------------------------------
John Harrison (1):
      i915: Add GuC v70.1.2 for DG2

 WHENCE                  |   3 +++
 i915/dg2_guc_70.1.2.bin | Bin 0 -> 365568 bytes
 2 files changed, 3 insertions(+)
 create mode 100644 i915/dg2_guc_70.1.2.bin
