Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0058575440B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jul 2023 22:58:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B3F810E056;
	Fri, 14 Jul 2023 20:58:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84A5010E056
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jul 2023 20:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689368325; x=1720904325;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iEVxFZ3vHiyFvXZeyBGlK8q2az7PCAoDh7WEu62H2i8=;
 b=OM2OrNyTcandXcXbLUxn60Igfz+RSXDMWLFCNjCHlTfEQDxRnH5o76Pt
 IvI83Xpg/3pfNyjlSROSj38N4Ywafwq8JrHh0vitEg600n4KXOC8w855H
 wE/p0xBGyBdW3p/dclVTGa1lBC759NgnCDTM1NuWq/hNlYrs8b85x2viV
 6y+uArmrXpR+4wiHPlDw6rquPHuiD5AAWLWighOZ/zd4mfYjy6U+W0Luh
 ZpBN3SgBeB3WW7uvl+7VOkwPMdi+/QqOCqoDPA/fL/oMIqnrmLaWc4RF6
 XhcTXpyAOxVdYjcw0yLY4RRsKzyF1geDFGWg4snvOSs7V36Xp5FyT/3D7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10771"; a="429338910"
X-IronPort-AV: E=Sophos;i="6.01,206,1684825200"; d="scan'208";a="429338910"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2023 13:58:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10771"; a="757694807"
X-IronPort-AV: E=Sophos;i="6.01,206,1684825200"; d="scan'208";a="757694807"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2023 13:58:44 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jul 2023 13:58:34 -0700
Message-ID: <20230714205834.55929-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for GuC 70.8.0 for DG2
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

The following changes since commit d3f66064cf43bd7338a79174bd0ff60c4ecbdf6d:

  Partially revert "amdgpu: DMCUB updates for DCN 3.1.4 and 3.1.5" (2023-07-07 15:24:32 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware dg2_guc_7.8

for you to fetch changes up to 1e7fa2cfef80974642bfbaefc11e59e54244164a:

  i915: update DG2 GuC to v70.8.0 (2023-07-14 13:55:31 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      i915: update DG2 GuC to v70.8.0

 WHENCE              |   2 +-
 i915/dg2_guc_70.bin | Bin 369600 -> 385856 bytes
 2 files changed, 1 insertion(+), 1 deletion(-)
