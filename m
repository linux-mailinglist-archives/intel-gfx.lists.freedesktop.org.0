Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D4A39C35D
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Jun 2021 00:14:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13E326F596;
	Fri,  4 Jun 2021 22:14:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 950A26F596
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 22:14:36 +0000 (UTC)
IronPort-SDR: dWnpXaXLddcud/J8O4KlyXrDoBoq0wjAVvaF1UUjQUIn7VxZP9ryIRRt9/NBaX8ykQBGm4MalT
 YCs8Fh3h5l7Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="204192765"
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="204192765"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 15:14:36 -0700
IronPort-SDR: e5RgsCEIkgXRsJ8f7mhz4zvMCmbxb/z79nQHqslTGyPeco5VUefkMJpy6FEdETchw6KJg9nyt3
 WqRzAbJjGJBw==
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="448413348"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 15:14:36 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Jun 2021 15:12:43 -0700
Message-Id: <20210604221243.32681-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] PR for new v62 GuC binaries
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

New binaries for all platforms.

Cc: Matthew Brost <matthew.brost@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>

The following changes since commit f8462923ed8fc874f770b8c6dfad49d39b381f14:

  nvidia: fix symlinks for tu104/tu106 acr unload firmware (2021-05-18 11:03:08 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware guc_v62

for you to fetch changes up to 5b20d5ead3692bf6cdf5b87dedc471391f5b9f1c:

  i915: Add GuC v62.0.0 for all platforms (2021-06-04 14:40:10 -0700)

----------------------------------------------------------------
John Harrison (1):
      i915: Add GuC v62.0.0 for all platforms

 WHENCE                   |  30 ++++++++++++++++++++++++++++++
 i915/adlp_guc_62.0.0.bin | Bin 0 -> 337280 bytes
 i915/bxt_guc_62.0.0.bin  | Bin 0 -> 199616 bytes
 i915/cml_guc_62.0.0.bin  | Bin 0 -> 200448 bytes
 i915/dg1_guc_62.0.0.bin  | Bin 0 -> 315648 bytes
 i915/ehl_guc_62.0.0.bin  | Bin 0 -> 327488 bytes
 i915/glk_guc_62.0.0.bin  | Bin 0 -> 200000 bytes
 i915/icl_guc_62.0.0.bin  | Bin 0 -> 327488 bytes
 i915/kbl_guc_62.0.0.bin  | Bin 0 -> 200448 bytes
 i915/skl_guc_62.0.0.bin  | Bin 0 -> 199552 bytes
 i915/tgl_guc_62.0.0.bin  | Bin 0 -> 326016 bytes
 11 files changed, 30 insertions(+)
 create mode 100644 i915/adlp_guc_62.0.0.bin
 create mode 100644 i915/bxt_guc_62.0.0.bin
 create mode 100644 i915/cml_guc_62.0.0.bin
 create mode 100644 i915/dg1_guc_62.0.0.bin
 create mode 100644 i915/ehl_guc_62.0.0.bin
 create mode 100644 i915/glk_guc_62.0.0.bin
 create mode 100644 i915/icl_guc_62.0.0.bin
 create mode 100644 i915/kbl_guc_62.0.0.bin
 create mode 100644 i915/skl_guc_62.0.0.bin
 create mode 100644 i915/tgl_guc_62.0.0.bin
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
