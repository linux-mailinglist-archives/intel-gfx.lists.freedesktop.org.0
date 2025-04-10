Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2310A8462F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Apr 2025 16:24:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE42C10E9D3;
	Thu, 10 Apr 2025 14:24:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ClCDyuc7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D77B10E9D2;
 Thu, 10 Apr 2025 14:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744295053; x=1775831053;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NkfL2SshI9ahS1+KHdK2w0t98kZB5ngTCR8A8ANg0cw=;
 b=ClCDyuc7/jqqc+6EsJ3hNFbCIjcraXzdtLJySf/cJOLNptWb/M80ll//
 QpNYq7Gj3CHTTRSe8n4vcjaRl2RCEC7FqfLQ6x7BFh/0UTtTR9NzTMiza
 Qd5ZCpYpnMCEoZaBcGD9ZAw98SIVbqzs50lfQMdZFqRUFG/B8X8dDa7IH
 GO2VmRWPVEZXuRQekKHGwFIIscZHCBIx1EpGyyl3Yc2SLUH1JgxjoFAod
 Q8xYkKaNrHVI2vLply8myXeevd/SF+sVnpTwkBIzXF4ouMhEVbF7nTMc1
 bUwhV5blbS402jWLdpa0wqPAWyE4pn9OMXawDZROo1TMrpkQ21ULoJbKp w==;
X-CSE-ConnectionGUID: mihUoXo4QjatcYOT1gig2w==
X-CSE-MsgGUID: ou6KanPUQdeoqWebgYyMNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="45711321"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="45711321"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 07:24:12 -0700
X-CSE-ConnectionGUID: KvKzw2q8QoiQl5XUQAIrHQ==
X-CSE-MsgGUID: +1d+08JSTxadBT8EQwyxQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="128669827"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 07:24:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/2] drm/i915/debugfs: caps cleanups
Date: Thu, 10 Apr 2025 17:24:03 +0300
Message-Id: <cover.1744295009.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Jani Nikula (2):
  drm/i915/debugfs: remove i915_display_capabilities
  drm/i915/debugfs: move PCH type to display caps

 .../gpu/drm/i915/display/intel_display_debugfs.c  | 15 +++------------
 drivers/gpu/drm/i915/i915_debugfs.c               |  2 --
 2 files changed, 3 insertions(+), 14 deletions(-)

-- 
2.39.5

