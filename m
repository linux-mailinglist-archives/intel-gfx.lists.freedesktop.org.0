Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1756F5A2E17
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 20:15:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64CC010EA15;
	Fri, 26 Aug 2022 18:15:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1A0C10EA15
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 18:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661537708; x=1693073708;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ws3tP0g6tqyXbhQ8vYBIgJYqLlhU+d0IywZitYzyfrc=;
 b=LrMAqB4aDcrMZ0qvh9Q4YzNBTLtdKo+Fk6nHeiWtMvjxRhfAhSFjZ6mc
 4yQ/u99mLArXntzbUwzTQr9H6mqPttJp9IPnzi2eU2n1WUotUp2ZyPpMW
 AaYzhybgTNZ9nAmRUTKHE58yaTHBjiEVNBVB2fZ2Jv5iWBnBUaJ8Md0F5
 FLnzzCSxB0S1onVfHIzpLPRtMDJrYZ4Q8jG8tGkl03pIVmLdCB+An0KpK
 ogDBY5y4tdjqaSm2jyeXbRKP9x1XhzaFRuQNPQ+fNvdfk9fMrbVHnQgp5
 X14B1hnrVAj36QOx2sJeIZQCw4HX+WkNHmx/H0KWDdGm71AyBsYy3XPZL g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10451"; a="274318658"
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="274318658"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 11:14:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="786466331"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by orsmga005.jf.intel.com with ESMTP; 26 Aug 2022 11:14:51 -0700
From: John.C.Harrison@Intel.com
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Aug 2022 11:14:55 -0700
Message-Id: <20220826181455.2663450-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for versionless GuC and HuC files
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

The following changes since commit 8413c63c7a539a912be8851ce941eea32dcd1786:

  Merge branch 'lenovo-thinkpad-x13s' of https://github.com/mrhpearson/linux-firmware (2022-08-15 09:02:17 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_huc_nover

for you to fetch changes up to e1fd8dd318f121dc32e889de1d43c408a00ccce9:

  i915: Add versionless GuC and HuC files (2022-08-25 15:55:48 -0700)

----------------------------------------------------------------
John Harrison (1):
      i915: Add versionless GuC and HuC files

 WHENCE               |  15 +++++++++++++++
 i915/adlp_guc_70.bin | Bin 0 -> 289472 bytes
 i915/dg1_guc_70.bin  | Bin 0 -> 265152 bytes
 i915/dg1_huc.bin     | Bin 0 -> 589888 bytes
 i915/dg2_guc_70.bin  | Bin 0 -> 369600 bytes
 i915/tgl_huc.bin     | Bin 0 -> 589888 bytes
 6 files changed, 15 insertions(+)
 create mode 100644 i915/adlp_guc_70.bin
 create mode 100644 i915/dg1_guc_70.bin
 create mode 100644 i915/dg1_huc.bin
 create mode 100644 i915/dg2_guc_70.bin
 create mode 100644 i915/tgl_huc.bin
