Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD144978078
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 14:52:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D161310ED03;
	Fri, 13 Sep 2024 12:52:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="itxzEGBJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 035C510EBEC;
 Fri, 13 Sep 2024 12:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726231924; x=1757767924;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=w5ZiQghnDsO1bogd939mpnzmcjbpJonunoP2KEDyfo0=;
 b=itxzEGBJyVopwdeT1upVbUrxIYn9qKssDlqDFLF6N0eBoJqKSxYU0nJr
 Kq6eLOfxOZicDg5fJAMWUuLWPIM7wNJOMDf1hbufFuFruWfXqL4VpQP1I
 6Pav6pCzJtfmdSGbb5abTXcQh5C45Js9rybx2/s8J/P58F4T8EPBn7uY8
 JSX4tHYSoZc8Qw6OBFcxZmiyMZSdp1g8gobEeU7kJGSaqYwdQ6FEbx9EJ
 xu7QXc795Y1Hy/Zg+bUH+p+avb2vI2gbKfdRQfiwRL4ApQlI7qctEbedc
 X9uqdm17yUTdGFv7NNPorA4D9upUyOsX5DdaiSwPvmWCApWZJRIaogm23 w==;
X-CSE-ConnectionGUID: 9bZMSryTQWaraWT6oXai1w==
X-CSE-MsgGUID: kEayfmdfTBOCRRUYLGDnkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="36507782"
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="36507782"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 05:52:03 -0700
X-CSE-ConnectionGUID: /8haNkfZQjCGzOLJvF6xUg==
X-CSE-MsgGUID: vXDIo/TUT5O4kWQmIaRX/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="68544763"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.64])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 05:52:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/2] drm/i915/debugfs: intel_display_caps
Date: Fri, 13 Sep 2024 15:51:53 +0300
Message-Id: <cover.1726231866.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Strike another i915 core -> display include and call.

Jani Nikula (2):
  drm/i915/debugfs: remove superfluous kernel_param_lock/unlock
  drm/i915/debugfs: add dedicated intel_display_caps debugfs for display

 .../drm/i915/display/intel_display_debugfs.c   | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_debugfs.c            |  6 ------
 2 files changed, 18 insertions(+), 6 deletions(-)

-- 
2.39.2

