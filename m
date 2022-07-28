Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0751058363B
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:20:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AF5610E800;
	Thu, 28 Jul 2022 01:20:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F5E088EB5
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658971235; x=1690507235;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rMJTjhWhjcwMpGiWJTcqI2BLuTxW2Bf3ao0fLxFtcD0=;
 b=DXZXGdmEYZ2wGRNi6K+MTHkvrEhfH1pWZRuPWQDvJQeoAGvL9oIoHlax
 1dPdbRI3AUPNT2Ghm/XEWPGzMwvG3V495EppJnsmgGJ1Ffyy7pwN7ABjj
 zshSwkPJKXitRg0/glG6gEjM1PuC6movq0CKOiAKxMtwvu7cFjXKkc1AE
 NVDYId8G0KeDN9no1sPKsRDUXTFF9smZ6r9qt5Z7LF10UihmITrLAML3S
 7WxYH2D8GfiqjTp35aTualV4EZeLVsVAtIPvrShU0O8qmqo/U+tSEsKHV
 tIUn/BGnoYe/cFrUcS1wtJMRnHWWYgl2+xcdMpAiiulyLm9wEC/BW2UDl g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="271429456"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="271429456"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:20:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="928026103"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga005.fm.intel.com with ESMTP; 27 Jul 2022 18:20:33 -0700
From: John.C.Harrison@Intel.com
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:20:32 -0700
Message-Id: <20220728012032.1961620-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for new GuC v70.4.1 for DG2
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

The following changes since commit 150864a4d73e8c448eb1e2c68e65f07635fe1a66:

  amdgpu partially revert "amdgpu: update beige goby to release 22.20" (2022-07-25 14:16:04 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware dg2_guc_v70.4.1

for you to fetch changes up to a4235e0aa4d4753119fd81f582eef84addf3f4a1:

  i915: Add GuC v70.4.1 for DG2 (2022-07-27 18:03:49 -0700)

----------------------------------------------------------------
John Harrison (1):
      i915: Add GuC v70.4.1 for DG2

 WHENCE                  |   3 +++
 i915/dg2_guc_70.4.1.bin | Bin 0 -> 369600 bytes
 2 files changed, 3 insertions(+)
 create mode 100644 i915/dg2_guc_70.4.1.bin
