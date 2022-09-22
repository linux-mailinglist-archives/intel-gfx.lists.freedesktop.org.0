Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 821A95E703B
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 01:29:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5187F10E7C9;
	Thu, 22 Sep 2022 23:29:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C57C10E7D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 23:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663889359; x=1695425359;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wAQNo9V5gAVVKkYJCk2o6UqNlfaqbMQHkZ1eYhitTho=;
 b=T+oJuest8y05ZQ+fFt+P8WbZwmoddcHctynVrtcqsi2H1LjiwCNYaQ+H
 n49nCfOr/V95Y0eJZW5p2jbUEKTYquh+EHYDK4caKNPqHeGggb0Bbhr8M
 ziO3Ov7HwwvTHKSl0MxsVE66r5h4SXdH5jtO+K3NjZMdEdbT963MT2e0N
 R3Nqy+d5TzXNgHxU3eKvLfUxTWXH7ddgtGQ7b38spx4RYJ2KXqNIGoLD+
 buI1D3jBXac9APIl3qCsPOfMs4HEzhyN4YWW+DCaLS1c5+k1gOC/HrPf9
 g87/sRT/tdZllPX+I3KGxfF5xwgSkUwyQR8X6rH8LcCNe/OInpsxC1TnI A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="364473700"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="364473700"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 16:29:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="948810413"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga005.fm.intel.com with ESMTP; 22 Sep 2022 16:29:18 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 16:31:11 -0700
Message-Id: <20220922233112.243677-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] (no subject)
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

Subject: [PATCH 0/1] Add PXP firmware respose on ARB failure

Add PXP firmware respose on ARB failure

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>

Alan Previn (1):
  drm/i915/pxp: Add firmware status when ARB session fails

 drivers/gpu/drm/i915/pxp/intel_pxp_session.c | 1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     | 2 ++
 2 files changed, 3 insertions(+)


base-commit: fea329811a7bc341aac5f51ab66ec41a3d0844af
-- 
2.25.1

