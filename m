Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CB86590BB
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Dec 2022 20:08:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38C9B10E028;
	Thu, 29 Dec 2022 19:08:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DFA410E028
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Dec 2022 19:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672340877; x=1703876877;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SlLg03yhwvjgJ8QOCE0mGrTxiL656UKyaM2tqTSK/Uc=;
 b=j5oUKuWvfb8IjxfWjym4tURcUjzXSdtB6+MUojQ/bjsLme029/0l8SlL
 KwQ+Rozx4xlLH6Mu4wGjjsn7i8eVU6Ty5SxnVABVYvyAz7wy9+DxM5Iwp
 UjNbU7vo/7s4LJCWTTl3D2MUq9cvBGtVOLerlw11FOEkv8qNAbjz1jSCT
 P1DTYI0y1yuBxdW9Oq95eWYQdNrrBOLB1uXo96jv70PS3Ud+u8J3+RTVE
 IT4JFzumn2oa8SLbeMRQqLVYjgSfrEBxeqcB2m8/d2zqeBtgFH7Ikc/NY
 nL0zFd+a+V+07O0rvZbPjzlXVC0VxYyHdl167z1qTdFLNZ8TugC4uQTT6 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="319814084"
X-IronPort-AV: E=Sophos;i="5.96,285,1665471600"; d="scan'208";a="319814084"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2022 11:07:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="653687275"
X-IronPort-AV: E=Sophos;i="5.96,285,1665471600"; d="scan'208";a="653687275"
Received: from apreeth-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.93.151])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2022 11:07:51 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Dec 2022 16:07:38 -0300
Message-Id: <20221229190740.45471-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/2] drm/i915/dmc: Make firmware loading
 backwards-compatible
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch series changes DMC loading to be backwards-compatible by
removing version checking and preparing the driver to load from blobs
unversioned filenames.

Next DMC releases should start using using unversioned filenames and the
code should be changed to use them when that happens. It's likely that
old platforms will not have new releases, so we keep on using the
versioned paths for a while.

This version differs from v2 in that we are keeping the current paths
and will update them as new DMC releases are issued. In the future we
could move everybody to use the new convention after making sure that
required changes in linux-firmware are well spread. After that, the
fallback mechanism introduced by this series could be removed.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Gustavo Sousa (2):
  drm/i915/dmc: Do not require specific versions
  drm/i915/dmc: Prepare to use unversioned paths

 drivers/gpu/drm/i915/display/intel_dmc.c | 97 +++++++++++-------------
 drivers/gpu/drm/i915/display/intel_dmc.h |  1 -
 2 files changed, 46 insertions(+), 52 deletions(-)

-- 
2.39.0

