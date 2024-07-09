Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 745F892B94F
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 14:22:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0363A10E52B;
	Tue,  9 Jul 2024 12:22:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NA1NlpLE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58BBD10E52B
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2024 12:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720527758; x=1752063758;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L/TIPzebwywEKBWl6tdPup3FzmV74tX7jgH4/Y4A78o=;
 b=NA1NlpLEnpS/1DWOXQZcA0QEl0H+53SbbcVgDl5P9arzuOIm6cY1LNV+
 ajZ6XRnC/IvU6UeMyBGIh1dAalL49U8YJcSoOYAZjCe29f8z0RBhoK5V5
 5c75AeQGFvJ+SPugHKm09wqECrmheaBZiY9J9s3gFCg5AF8CjZnkQhyqR
 XPt+fIVgXw1otzhPyRnkrgwZiBt+RHzS7YCiVWicpG1NUWwRdWS1ps+P6
 VGsU/a9EwPjCSNuDBXMda+Hv87RCANNIU8cCE0V9obqAVJvkkfVyUYsOO
 kZDOAe5zBnVia7kca0RfCaQWoCu9cuyASiv0coh+W7RrbcbeH3eEeLOCM w==;
X-CSE-ConnectionGUID: oarDqHewTGeBnfFP+cIa1Q==
X-CSE-MsgGUID: /4c6nF2MSLqc02gmmFo+ZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="21546277"
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="21546277"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 05:22:38 -0700
X-CSE-ConnectionGUID: v5S9uJ7sSgaGow1VEBcZ7g==
X-CSE-MsgGUID: 7QXfN35FROuvCgT7dD4rEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="85380206"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.59])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 05:22:36 -0700
From: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>, 
 Matthew Auld <matthew.auld@intel.com>
Subject: [PATCH v2 0/2] Restrict BMG to use 64K pages for scanout buffers
Date: Tue,  9 Jul 2024 14:22:29 +0200
Message-Id: <20240709122231.537801-1-zbigniew.kempczynski@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Requires also changes from userspace perspective, due to necessity
allocating buffers with 64K pages.

v2: Limit restriction to BMG

Cc: Matthew Auld <matthew.auld@intel.com>

Zbigniew Kempczyński (2):
  drm/xe: Separate 64K physical allocation for display
  drm/xe: Use 64K pages for scanout buffers for Battlemage

 drivers/gpu/drm/xe/xe_bo.c           | 9 +++++++--
 drivers/gpu/drm/xe/xe_device_types.h | 1 +
 drivers/gpu/drm/xe/xe_pci.c          | 9 ++++++++-
 3 files changed, 16 insertions(+), 3 deletions(-)

-- 
2.34.1

