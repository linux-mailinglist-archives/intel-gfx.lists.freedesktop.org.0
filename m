Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 186A25B2AA1
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 01:54:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FC0B10E82A;
	Thu,  8 Sep 2022 23:54:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25FE610E82A
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 23:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662681252; x=1694217252;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/Fjy49pZlUnp1/FXUyIC/AFa14kzXw+Y70rPbjm/MYk=;
 b=RMZ7UUG6fHnMf0S4gAAY60kqAuovHAQRvlKiOFNq+HRhZqQOBSdzDXRF
 HxnutfX2qIBzvgjqx6KOcZWlYQ6gQkKcufasAe5gGaTS2yGBihXFB2wLp
 NrATH+KbPehZDyGrq4nUzTcmyyO0wtpJxyDlfT1tDwDLRh1OCoIryWkIZ
 W8WAL9oNs3pG/CuJ4Ann2b8AEqhWCGhwKoXZM6vNN12JoqRquy7nVLSUh
 W3E5xxIJ2UWyoX6dgBi6zjyIuKRne8ulc6pKMkonmYl7pITt8Eaibh1ff
 DGue9rrHwAljtBm7CcAoNUxnYSrkHQ8rrPDCw6MXM7rDZRsySZJu9bL+0 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="277087185"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="277087185"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 16:54:11 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="676923866"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 16:54:11 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Sep 2022 16:53:56 -0700
Message-Id: <20220908235356.728073-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for new HuC binary
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

The following changes since commit 2f2f0181581d3e35bfdb9fc65f609ee9d3fbaeb7:

  Mellanox: Add new mlxsw_spectrum firmware xx.2010.3146 (2022-09-02 07:28:59 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware dg2_huc_7.10.6

for you to fetch changes up to c48676c87dc380899a2c900ab86ff082a1a1bb66:

  i915: add HuC 7.10.6 for DG2 (2022-09-08 16:49:21 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      i915: add HuC 7.10.6 for DG2

 WHENCE               |   3 +++
 i915/dg2_huc_gsc.bin | Bin 0 -> 626688 bytes
 2 files changed, 3 insertions(+)
 create mode 100755 i915/dg2_huc_gsc.bin
