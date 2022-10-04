Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDFC5F4BE4
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 00:29:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78A3510E1F8;
	Tue,  4 Oct 2022 22:29:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F5AA10E1F8;
 Tue,  4 Oct 2022 22:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664922562; x=1696458562;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AxtaGWvwXssncDSlyedI3YJ0iUg+PjqWAyanX1STSyw=;
 b=ERY5+0mS4ujzPQkgbk/1OP+2SIH3ZOi0buBgWmEH/1TfzGPhDjSjgbPv
 o87qdfr/mjslD68Mw3fjU7dzBDhJjB58oBew99jZ7QFK3upVTknZg5xDe
 k7mookB5QkcRkMLW94K2/x6uCop3IUQHc9OBcsnTD8erWLgexqoK3cNb6
 rJKk5oNBoKICsu9Zt6FlSW3IyU6z7MO100xzTswkZ+bFckyKdBIFfrY8h
 th3ZRz7TtDJX2fOU9YqK9hW8SmjTUqacMXmJooMLuk0kuhyw1GqE7Uzn+
 B08ZPY9nBvBUYQsYB8UQoXxIBZAlMHd9QSZgb6UBf862AQgp7Wds0l6/k g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="329452894"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="329452894"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 15:29:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="575217699"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="575217699"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga003.jf.intel.com with ESMTP; 04 Oct 2022 15:29:20 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue,  4 Oct 2022 15:29:01 -0700
Message-Id: <20221004222903.23898-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] drm/i915/slpc: Update frequency debugfs
 for SLPC
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

Remove the RPS related information that is not valid when
SLPC is enabled.

v2: Add version numbers and address other comments (Jani)

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Vinay Belgaumkar (2):
  drm/i915: Add a wrapper for frequency debugfs
  drm/i915/slpc: Update the frequency debugfs

 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 157 +------------
 drivers/gpu/drm/i915/gt/intel_rps.c           | 207 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rps.h           |   3 +
 3 files changed, 211 insertions(+), 156 deletions(-)

-- 
2.35.1

