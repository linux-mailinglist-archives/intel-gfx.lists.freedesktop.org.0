Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 508B67A942B
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 14:17:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A596210E111;
	Thu, 21 Sep 2023 12:17:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FCC910E111
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 12:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695298626; x=1726834626;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UO0dGfNeJ0qh+0VmTG/F5YUkvncNDQVAbCiMwgPz3W8=;
 b=U/Qv4HHXAUqyc3TlKufS/LxzEEdRjMNDxIGwH0Spql9wYfDqZ6nw3VWu
 fVC+v59vzyzdgzQxLgUvuiNXPjHQBhpUlQNrUPPHA8Ceu/Q54f9k150H0
 Vv67EIoiIXtQjRhUI3Jbt8TAtIlAGjwwq2Aog8/KIHwXNgIzC+Usyg8HR
 F7rkWOCrW4vED4MKUZuP+57n7qCG7EmZw3NHHRx+40WKB7zozg8psFaG6
 HWcn1pAsmlvTwffI0dbGUHAyKjTIkssO954d/mwPJzjQmFX8N+IAFYsf/
 +frHrAZYULIFCFskBUmcFVOnWmlrD8U2WWhIOgkv6DvSVR3+LvbzbwPas Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="446972503"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="446972503"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 05:17:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="750370167"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="750370167"
Received: from slstiles-mobl2.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.212.48.165])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 05:17:04 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	gustavo.sousa@intel.com
Date: Thu, 21 Sep 2023 09:16:36 -0300
Message-ID: <20230921121637.12211-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] [CI] Test MTL DMC v2.16
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

The following changes since commit 3672ccab9237315db2f3a28a47f8ac1062a5a35e:

  Merge branch 'mlimonci/fix-merge-requests-ci' into 'main' (2023-09-18 20:19:32 +0000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware CI-dmc-mtl_2.17

for you to fetch changes up to db0c03d05a48b6b29205cf4d4f22192c69fe8d1a:

  [CI] MTL DMC v2.17 (2023-09-21 09:13:52 -0300)

----------------------------------------------------------------
Gustavo Sousa (1):
      [CI] MTL DMC v2.17

 i915/mtl_dmc_ver2_17.bin | Bin 0 -> 52508 bytes
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 i915/mtl_dmc_ver2_17.bin
