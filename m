Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B60C71F904
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 05:50:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A80910E611;
	Fri,  2 Jun 2023 03:50:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3571810E611;
 Fri,  2 Jun 2023 03:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685677815; x=1717213815;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=C0vASU9j1APlXpBjAujsBHQ/cPkE64Kv3LTFuUG57wU=;
 b=AimPmupNdA7DTsO4ZgHYCjFmVTsnIPGKStle8P2pFEhen3R96vkApG9J
 nbVU7JxtnlugfxRtyYcYdKglt8EbrOXQ18CV8rmeTqj9ptdiIIavyqRsw
 CcarNyLIhSMjOeFF/kZbSEPrM4T6rH3Tvsy/lJq59mijRNLiSeYZ7PKB2
 28JtqhxEsjZPS4xOcsEGrJ47WvyWs6mvuXlA6nMwKFfIa8i0HlT+vlJL2
 Eh1IRketV+CDMJHEHztlbszJyQsM2YO8utWHAidwwDqs3igIQa1PMgH1S
 FK/uAFz6PviuydQkKBce9bjM7sJ5x4tU5WMCfXiY0HP6woMDAeRFRLNIe Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="442133639"
X-IronPort-AV: E=Sophos;i="6.00,211,1681196400"; d="scan'208";a="442133639"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 20:50:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="707660675"
X-IronPort-AV: E=Sophos;i="6.00,211,1681196400"; d="scan'208";a="707660675"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 20:50:14 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  1 Jun 2023 20:50:10 -0700
Message-Id: <20230602035010.1517899-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] dim: Disallow remote branch deletions with 'dim
 push'
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

An inadvertent 'dim push -d' can delete remote branches. Disallow such
remote branch deletions.

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 dim | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/dim b/dim
index 126568e..e5899e6 100755
--- a/dim
+++ b/dim
@@ -1029,6 +1029,12 @@ function dim_push_branch
 		fi
 	fi
 
+	# Disallow remote branch deletions, say with 'dim push -d'
+	if [[ "$@" == *"-d"* ]]; then
+		echoerr "Attempt to delete remote branch, aborting."
+		return 1
+	fi
+
 	git_push $remote $branch "$@"
 
 	update_linux_next $branch drm-intel-next drm-intel-next-fixes drm-intel-fixes
-- 
2.38.0

