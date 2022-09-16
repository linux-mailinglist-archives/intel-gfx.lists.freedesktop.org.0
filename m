Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7285BB3CD
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 23:05:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B06B10E524;
	Fri, 16 Sep 2022 21:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92C6210E524
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 21:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663362330; x=1694898330;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nMq0DGS7HnZDGzO1z6SarqIinLpzBCeaVeHBmc/7dks=;
 b=b4hs+Iqd5JAd2nHzTBkYJ6O64EHLew9b8vlD1+AHu65gwJOqP7Hbgc87
 wufWmZ4pCG8yiL7QTxrfsySMozscQx4MXIvnwJ5M81Zvc3Qj4SpagR4/W
 YGhUEl0wbRIe2Py5Qd/gIjLeDn7OoCd3uappyMDyoYCkhJKgw9MDzxV0L
 7iERc5cBbLmZRp5Y6s2md9WTvXznHhpWVOY06fNnB+X3Fz4QkgDcc9eDw
 5k0YKBCaLbtv2vaVXQWaeCgEYo/J+N3YIQxckqPq03BdKHOp34qjadDet
 lyI1MXxjoEkC8HyOdE4C5ygm8UusAwjeGo8guJKAt34Y9sLbeyfcCoLet g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="325356640"
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="325356640"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 14:05:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="862863467"
Received: from relo-linux-5.jf.intel.com ([10.165.21.154])
 by fmsmga006.fm.intel.com with ESMTP; 16 Sep 2022 14:05:29 -0700
From: John.C.Harrison@Intel.com
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Sep 2022 14:06:05 -0700
Message-Id: <20220916210605.2768067-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for new GuC v70.5.1 and GuC/HuC with new names
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

The following changes since commit f09bebf31b0590bdc875d7236aa705279510cfd0:

  amdgpu: update yellow carp DMCUB firmware (2022-09-13 08:02:23 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_70.5.1_huc_nover

for you to fetch changes up to 51fff4e69b4554dd3fee21e3c55a0f94937293e3:

  i915: Add versionless HuC files for current platforms (2022-09-16 08:52:30 -0700)

----------------------------------------------------------------
John Harrison (2):
      i915: Add GuC v70.5.1 for DG1, DG2, TGL and ADL-P
      i915: Add versionless HuC files for current platforms

 WHENCE               |  18 ++++++++++++++++++
 i915/adlp_guc_70.bin | Bin 0 -> 297984 bytes
 i915/dg1_guc_70.bin  | Bin 0 -> 272512 bytes
 i915/dg1_huc.bin     | Bin 0 -> 589888 bytes
 i915/dg2_guc_70.bin  | Bin 0 -> 369600 bytes
 i915/tgl_guc_70.bin  | Bin 0 -> 285888 bytes
 i915/tgl_huc.bin     | Bin 0 -> 589888 bytes
 7 files changed, 18 insertions(+)
 create mode 100644 i915/adlp_guc_70.bin
 create mode 100644 i915/dg1_guc_70.bin
 create mode 100644 i915/dg1_huc.bin
 create mode 100644 i915/dg2_guc_70.bin
 create mode 100644 i915/tgl_guc_70.bin
 create mode 100644 i915/tgl_huc.bin
