Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C688270481
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Sep 2020 21:01:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59A906ED7D;
	Fri, 18 Sep 2020 19:01:47 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B73AF6ED7D
 for <Intel-GFX@lists.freedesktop.org>; Fri, 18 Sep 2020 19:01:45 +0000 (UTC)
IronPort-SDR: dhJjDTJUG/rePfNnkyl+0VZ0Wn1sJxSLH6K0sSvpYkhc616hD7XCev0Pe997q9vk2C7STl3Hqm
 qsNbgcYSSFSg==
X-IronPort-AV: E=McAfee;i="6000,8403,9748"; a="160932894"
X-IronPort-AV: E=Sophos;i="5.77,274,1596524400"; d="scan'208";a="160932894"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2020 12:01:41 -0700
IronPort-SDR: CmYuoZlKc7ZhPOXpmIoOgm95b/lzPtDKQ4FHBOsSeXaNA1pckGcvAM2mtSut8ItYNkQg7lHrbX
 ZOcY7mGo3EMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,274,1596524400"; d="scan'208";a="336911891"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga008.jf.intel.com with ESMTP; 18 Sep 2020 12:01:41 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Fri, 18 Sep 2020 12:01:41 -0700
Message-Id: <20200918190141.2032751-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] PR for new v49.0.1 GuC binaries
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

The following changes since commit d5f9eea5a251d43412b07f5295d03e97b89ac4a5:

  wl18xx: update firmware file 8.9.0.0.83 (2020-09-01 08:07:59 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_v49

for you to fetch changes up to a5beba43fb3a2b91f4b9de244455351cb2625b6c:

  i915: Add GuC firmware v49.0.1 for all platforms (2020-09-15 17:51:55 -0700)

----------------------------------------------------------------
John Harrison (2):
      i915: Remove duplicate KBL DMC entry
      i915: Add GuC firmware v49.0.1 for all platforms

 WHENCE                  |  25 ++++++++++++++++++++++++-
 i915/bxt_guc_49.0.1.bin | Bin 0 -> 196224 bytes
 i915/cml_guc_49.0.1.bin | Bin 0 -> 197184 bytes
 i915/ehl_guc_49.0.1.bin | Bin 0 -> 324160 bytes
 i915/glk_guc_49.0.1.bin | Bin 0 -> 196672 bytes
 i915/icl_guc_49.0.1.bin | Bin 0 -> 324160 bytes
 i915/kbl_guc_49.0.1.bin | Bin 0 -> 197184 bytes
 i915/skl_guc_49.0.1.bin | Bin 0 -> 196288 bytes
 i915/tgl_guc_49.0.1.bin | Bin 0 -> 321792 bytes
 9 files changed, 24 insertions(+), 1 deletion(-)
 create mode 100644 i915/bxt_guc_49.0.1.bin
 create mode 100644 i915/cml_guc_49.0.1.bin
 create mode 100644 i915/ehl_guc_49.0.1.bin
 create mode 100644 i915/glk_guc_49.0.1.bin
 create mode 100644 i915/icl_guc_49.0.1.bin
 create mode 100644 i915/kbl_guc_49.0.1.bin
 create mode 100644 i915/skl_guc_49.0.1.bin
 create mode 100644 i915/tgl_guc_49.0.1.bin
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
