Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 319326F84DC
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 16:30:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76A1B10E614;
	Fri,  5 May 2023 14:30:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D36CE10E614
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 14:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683297005; x=1714833005;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Sm3VTrkZ46SS+kM+zXvGyJ+Mv+V0cPJDZm7+zX9H6m4=;
 b=TyViooH574eCUzDTpfKWNTaCks8yt/SGU3VhXDCsM8hjrdCunAqOL2kI
 yoGn79DcBc2UkOrrZDLz4t7txuRXRg0yN83L0I3jpYFicwAlF2i2BqGLJ
 hnY0Ka4yStG/iULOt43sGk5d/65cPnG48XpR7Ky1uBwj8UriEEd4tg1M2
 zPxH8B31rwVxEzYzaFJxRrkmDlQteoibNVOckxMjtLGQaYMG226acWhs0
 IT7E743Fhu0WyvhlUCL3nFfqJnSGG57KwWwFwm577XZxg6y8yfSn33qmQ
 RxvyzIge4wiX/5BFD437+r+p0Yg80qo/4Fp/CJ1a5r+0pxjA85yfXNC1S w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="435540749"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="435540749"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 07:30:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="647888443"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="647888443"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 07:30:04 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 May 2023 07:29:52 -0700
Message-Id: <20230505142952.844087-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for GSC 102.0.0.1556 for MTL
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

The following changes since commit 2bc50f50b092087636cc216f1605c557dc12a1ee:

  Merge branch 'mtl_guc_70.6.6' of git://anongit.freedesktop.org/drm/drm-firmware (2023-05-04 07:20:20 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware mtl_gsc_102.0.0.1556

for you to fetch changes up to d8944e5bb05b30bb8c0ed6813c8365de1e59306f:

  i915: add GSC 102.0.0.1556 for MTL (2023-05-05 07:25:26 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      i915: add GSC 102.0.0.1556 for MTL

 WHENCE             |   3 +++
 i915/mtl_gsc_1.bin | Bin 0 -> 1142784 bytes
 2 files changed, 3 insertions(+)
 create mode 100644 i915/mtl_gsc_1.bin
