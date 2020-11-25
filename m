Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B972C364B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 02:42:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6929898B6;
	Wed, 25 Nov 2020 01:42:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E02CA898B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 01:42:15 +0000 (UTC)
IronPort-SDR: objJwsRWBWFKrunCApkGfzCmL59JOS6YZI+udyuZ9cVy6/GllvhXV1vdKwiWQNf0agtfQjiXCV
 r02CNrwqkFjQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="171267732"
X-IronPort-AV: E=Sophos;i="5.78,367,1599548400"; d="scan'208";a="171267732"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 17:42:15 -0800
IronPort-SDR: h5ouB8FFVJjUSpj4KiUEhLwhtX5zF0FNZ0KsorprLQCxT3/zm7yGtdSKOW/nbtMMDdXWs1oc6x
 4V/SBH+bNyGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,367,1599548400"; d="scan'208";a="327794297"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga003.jf.intel.com with ESMTP; 24 Nov 2020 17:42:14 -0800
From: John.C.Harrison@Intel.com
To: linux-firmware@kernel.org
Date: Tue, 24 Nov 2020 17:42:14 -0800
Message-Id: <20201125014214.3772152-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] linux firmware PR for i915 GuC v49.0.1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Josh, Kyle, Ben,

Kindly add the below i915 changes to linux-firmware.git:


The following changes since commit b362fd4cb8963ad75517dbcf424974f65a29a60e:

  Mellanox: Add new mlxsw_spectrum firmware xx.2008.2018 (2020-11-24 09:55:03 -0500)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware FDO/guc_v49

for you to fetch changes up to c487f7dadcd21116613441ed355b764003b3f57b:

  i915: Add GuC firmware v49.0.1 for all platforms (2020-11-24 17:04:17 -0800)

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
