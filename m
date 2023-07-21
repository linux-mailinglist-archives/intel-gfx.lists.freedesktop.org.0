Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A2675D059
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 19:06:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB4C010E6C4;
	Fri, 21 Jul 2023 17:06:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 083A810E6C4
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jul 2023 17:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689959204; x=1721495204;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hryTzVgchXfRaOpW/rrSk0x8Sc/5sfA9WEcBWeDRXyI=;
 b=nB5LCTDi6Ewmi3k1QC6hA8vEzUC38SSveu0T6sT/xA+EMYqhUxjjfa5A
 DH4RU62fYBNFMNO9mCURmULfJcqkPKozEvv8j0dyPVwNLc2JsTxbgF0Mv
 9K9x0TTM7g3Do6JWpfxmCtFMj8Td5sJCbpCittHzuOgjUjF8mv6lZJaF0
 0i82bz7yg+hDXMUSSgS6z7R8LC0E3i14w9OqAYhaqgLEohsgz/jG3twU8
 +J9uvdP0jLdc5gCYbzChZQOIIvyceZorX8S78l9wIHCtNQWJbPzxLpDpl
 ddmZdQMT4p/8Bnvgah/UYXIbP898XsS4eAWOmVDiY0Jv/qo/Bnjo5Hgoi g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="453446205"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="453446205"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 10:06:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="838634710"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="838634710"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 10:06:41 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jul 2023 10:06:34 -0700
Message-ID: <20230721170634.229389-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for GSC FW 102.0.0.1636 for MTL
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

  git://anongit.freedesktop.org/drm/drm-firmware mtl_gsc_1636

for you to fetch changes up to 2a1f9984c8485eb56cb3825101a374750a8244f9:

  i915: add GSC 102.0.0.1636 for MTL (2023-07-21 10:02:39 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      i915: add GSC 102.0.0.1636 for MTL

 WHENCE             |   3 +++
 i915/mtl_gsc_1.bin | Bin 0 -> 1142784 bytes
 2 files changed, 3 insertions(+)
 create mode 100755 i915/mtl_gsc_1.bin
