Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6FC4ACA08
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 21:07:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCC9F10F830;
	Mon,  7 Feb 2022 20:07:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25E1110F830
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Feb 2022 20:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644264451; x=1675800451;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TcewK30T6rXqQ7Mvgz5bYdDUDFXf6bnn0zr6mjU6m/U=;
 b=GHIQLrrAflZpPvgBduOBaEL5csgC8nz8z687gXa20gKcEQzC+lZ6n7ab
 0M343BFXg3xNK3on/2SjRM1qccDKWU+ltWU39C2knoRi49YpegONnHzkL
 BQb1A7gG6Adoi28nwIZXJl3yjJQUarPyGzUwAfreU4bmH5DRf9W+Q1iyw
 bEydM0u6fV78mtZjvSlEoXutKc9O0DMznMWRL4ASY6/C029+34Jb0PNrV
 +ZWkRui0bWIJrqY0UxcOITrtvK3k1d1MgCiUUdIIvUI6L2mPaCaQAOJpY
 2U7oGSFNaODKCI8dwzVz4Kcveg+dZSh46vZyzqEQP8tHaEoscwBEsIvFu g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="246389074"
X-IronPort-AV: E=Sophos;i="5.88,350,1635231600"; d="scan'208";a="246389074"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 12:07:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,350,1635231600"; d="scan'208";a="525262267"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga007.jf.intel.com with ESMTP; 07 Feb 2022 12:07:30 -0800
From: John.C.Harrison@Intel.com
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Feb 2022 12:07:30 -0800
Message-Id: <20220207200730.1768383-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for GuC v69.0.3 for DG2
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

The following changes since commit eb8ea1b46893c42edbd516f971a93b4d097730ab:

  Merge branch 'v1.1.7' of https://github.com/irui-wang/linux_fw_vpu_v1.1.7 into main (2022-01-24 06:49:52 -0500)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware dg2_guc_v69.0.3

for you to fetch changes up to f35016792311512cf28b78bc9b9592c7f794839a:

  i915: Add GuC v69.0.3 for DG2 (2022-02-07 11:45:48 -0800)

----------------------------------------------------------------
John Harrison (1):
      i915: Add GuC v69.0.3 for DG2

 WHENCE                  |   3 +++
 i915/dg2_guc_69.0.3.bin | Bin 0 -> 365504 bytes
 2 files changed, 3 insertions(+)
 create mode 100644 i915/dg2_guc_69.0.3.bin
