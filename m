Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0085476DD
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jun 2022 19:26:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D3B4112F97;
	Sat, 11 Jun 2022 17:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38BED112F64
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jun 2022 17:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654968406; x=1686504406;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=J3eLxY5AhzYg3iQSbYQv+QeXnQZvvqDhTplrt5wDi0s=;
 b=EOzHlZH2RJSNoZe8R4nk+sXmTciRPWc0uzLmjH8f1NMkhUBOh88oKSSw
 2fvGpdBnaXzCE0urQLOOwHhLIgEYF4pBxqQSD/jI2TUcib91R2mZUTLE6
 cU3iyFEVgR1j/mZNOY5IZbW3vnsih7jgWz/PkwYhgPg0Iz5Z786Bgdh1c
 7tfsw9qb9spDbL2+d37vAzrYn55i8edW98N+YLZgfUxjSQgX8GcIB3BrF
 TvEPGoOK99b+Vs7UvAVrKYXr5iO6K1mN76fqSDr0YL259wltYQ3CaBCAZ
 NyutVC7ljm23ySWJ/a021ATr/5oSWhL0njEQKvErjkacoXfbKcBn4/ag0 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10375"; a="275445777"
X-IronPort-AV: E=Sophos;i="5.91,293,1647327600"; d="scan'208";a="275445777"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2022 10:26:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,293,1647327600"; d="scan'208";a="725481911"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 11 Jun 2022 10:26:44 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 11 Jun 2022 10:27:10 -0700
Message-Id: <20220611172711.2154962-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Intel-gfx 0/1] drm/i915/guc: Don't update engine
 busyness stats too frequently
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

This change ensures we don't collect new stat counters too soon
after the last sample.

Alan Previn (1):
  drm/i915/guc: Don't update engine busyness stats too frequently

 drivers/gpu/drm/i915/gt/intel_engine_types.h      | 10 ++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c |  9 +++++++++
 2 files changed, 19 insertions(+)


base-commit: cb89eb64792fd1a78c5ffc473f7e208b88e62fad
-- 
2.25.1

