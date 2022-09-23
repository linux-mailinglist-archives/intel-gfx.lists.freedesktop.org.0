Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9075E744F
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 08:44:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2619E10E3F2;
	Fri, 23 Sep 2022 06:44:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0933810E3F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 06:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663915440; x=1695451440;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0KKiIKtchL9jJGrpy13lmZBwy8c7d5hjX7dsv8PtC1M=;
 b=QGd3wz7qbfX48S5kg9fBQCu22b6NbPMtfkyb7lnmgGIb2f9Ra6izm91i
 tZTMgIRPIViqbmgTCIfzyQNYv/Bg0d4U+EXVQHuUT/NHTswxa59D10zf7
 g+dysCyipQju7TixqeGGgiSlvvXNE5/UN5GbZbEDp0HcgJFl9QybFVrXr
 l2rJM32V32jIb+YTKQHmeQY0oML18e7YxakMINtDPfZsFkkA+FCRoS4wq
 cIYAyI72PUhMd2ujsiyqP3oDRHJGMKwG1iR0h8SmFNpqkTioJaYES3cW4
 Y/Q22xXpyV3g0ZatnxwGUnuj7MbSpXJ+D1H1g3qiTlY17ySZ/lPWIt0E6 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="326855111"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="326855111"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 23:43:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="682551218"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga008.fm.intel.com with ESMTP; 22 Sep 2022 23:43:48 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 23:45:41 -0700
Message-Id: <20220923064542.415252-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/1] Add PXP firmware respose on ARB failure
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

Add PXP firmware respose on ARB failure

Changes:
   v1: Fix checkpatch warning

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>

Alan Previn (1):
  drm/i915/pxp: Add firmware status when ARB session fails

 drivers/gpu/drm/i915/pxp/intel_pxp_session.c | 1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     | 3 +++
 2 files changed, 4 insertions(+)


base-commit: 37f64f22c82d8003c6509dd8e4928ee0348bd27f
-- 
2.25.1

