Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C16FD5B9112
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 01:45:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9D9D10E133;
	Wed, 14 Sep 2022 23:45:37 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67A2810E0DF;
 Wed, 14 Sep 2022 23:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663199133; x=1694735133;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AE2kINqCd8os15X/mCH0uWx5HoX2F/X177Q4+sdmziM=;
 b=ejat5E/YwJOPXouOXIv7brIl97TEpxrKtz2uu6M81iOt8GlvRmDfflBX
 XwOMjE1g/eTquJOvI/tuk+n10RB0VMbqsPcyT9dJrjH5qKQ6Y8DAIz2Ju
 m3h5fP8Xp1MDHdw4EuFKNBMJy1klR6fQOqIQTPxf3p6a2lndhor3Qg75w
 jwTm+6HBOaa7dIxECVodA667BaAY//b+XKZ86mn8tP7oeuo2Ya3rtVwjO
 9VnSA4Z67ZYlaK7fBXv4LXWG2WhJgOAAMtr16Fq2eW36qBY4ZIsOuW5qi
 gPbrlFK6k/o1t9M7zb+Bn8rfhRxmnn0pCOa83jkSdbySONcQQ3dhi500D g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="384859081"
X-IronPort-AV: E=Sophos;i="5.93,316,1654585200"; d="scan'208";a="384859081"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 16:45:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,316,1654585200"; d="scan'208";a="568202655"
Received: from relo-linux-5.jf.intel.com ([10.165.21.154])
 by orsmga003.jf.intel.com with ESMTP; 14 Sep 2022 16:45:32 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 14 Sep 2022 16:46:04 -0700
Message-Id: <20220914234605.622342-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] New GuC and new GuC/HuC names
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Update the GuC version numbers to expect the latest release. Also
start using GuC/HuC firmware files with reduced version information in
the file name.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


John Harrison (1):
  drm/i915/uc: Update to latest GuC and use new-format GuC/HuC names

 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

-- 
2.37.3

