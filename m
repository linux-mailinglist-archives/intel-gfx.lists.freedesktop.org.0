Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 060E35B7DEA
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 02:38:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFC0E10E3C8;
	Wed, 14 Sep 2022 00:38:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83C6A10E3C8
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 00:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663115919; x=1694651919;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=C4CxDvjwCWIld0DcjIY3tZSX0hBy8Cx6jsGwBfBE95A=;
 b=TWGzZ4uRiAFMOOusdH8qMMlElC2dhC7IfRp8kNVSBCY2QwTt6LOIsIYG
 1tqY6jBpiWcFt5uOoYNMcQNT1jWJ6sMLISSw+wCGnz+dA9OnmPC1a1vqk
 BY/dI2qnJ5FD6mCmumYKJoB1BxvklRuEcq5SbVX0QBWSgMjkauO6h3O2a
 8Dv9jFgfF4w8fjLhBi5Y0S7bQb/u6ordJk+UcJDu5Pk9DEAjiqzsVbqGs
 nWP+MAIhLGPZKdmXxZRVbkvmpVEL49Ir/ZykDBYxRnO5VrLozTbcyYkIB
 hrhyNd5EPtagYVtfznlDndIXpdVZdAcD1iVVzDb4MdDHjk0lLr+ziRnWw Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="297026615"
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="297026615"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 17:38:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="678810561"
Received: from relo-linux-5.jf.intel.com ([10.165.21.154])
 by fmsmga008.fm.intel.com with ESMTP; 13 Sep 2022 17:38:38 -0700
From: John.C.Harrison@Intel.com
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Sep 2022 17:39:10 -0700
Message-Id: <20220914003910.3688234-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for new GuC v70.5.1
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

  git://anongit.freedesktop.org/drm/drm-firmware guc_70.5.1

for you to fetch changes up to fa124b323eb39356748a41bbf935b98bc4cd6791:

  i915: Add GuC v70.5.1 for DG1, DG2, TGL and ADL-P (2022-09-13 16:49:41 -0700)

----------------------------------------------------------------
John Harrison (1):
      i915: Add GuC v70.5.1 for DG1, DG2, TGL and ADL-P

 WHENCE               |  12 ++++++++++++
 i915/adlp_guc_70.bin | Bin 0 -> 297984 bytes
 i915/dg1_guc_70.bin  | Bin 0 -> 272512 bytes
 i915/dg2_guc_70.bin  | Bin 0 -> 369600 bytes
 i915/tgl_guc_70.bin  | Bin 0 -> 285888 bytes
 5 files changed, 12 insertions(+)
 create mode 100644 i915/adlp_guc_70.bin
 create mode 100644 i915/dg1_guc_70.bin
 create mode 100644 i915/dg2_guc_70.bin
 create mode 100644 i915/tgl_guc_70.bin
