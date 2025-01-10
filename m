Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE6EA09274
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 14:47:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BC2310F0C8;
	Fri, 10 Jan 2025 13:47:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T8Hjksle";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F49910F0C8
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2025 13:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736516869; x=1768052869;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9IQuc4rUICnFAaOBzgZLINmzVNRU5jq53ud+yaXvMDw=;
 b=T8HjksletQ/pX0FkvILR/d/VH4czWbkyLz2ACTZOvHWhSyRMiYQz8gxj
 a1w3ldJkkWVAWsJlUScO1NjsxhM1RzTPppoQczYbXe8SRoES8vIOZG1xt
 +nsDu5xwoG2StAPdjIMQFiF1gF7xibxc4S1fpD3rGP9udSTR7Ri4f/Bb6
 0JmsLk8ZWxy093ggtnADpi8j6P5tJol84FnBVaLw7pt7qbljPVfUjNHpN
 2RNwurLH+0FX8g/BHiGtiBIuoHDQSDfaZ4uhtoYGZ2QlhSLXC4kmHl4pb
 AGuNNy1ZchUG6UWn4DaRS3IL5vHkAaLGIH45mpckiCqFOXbmTkrG5NHpb g==;
X-CSE-ConnectionGUID: DBofTdISTniN+ERhm8R5Bg==
X-CSE-MsgGUID: UsNsEzHgSsG7HQVXwhR+og==
X-IronPort-AV: E=McAfee;i="6700,10204,11311"; a="36711008"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="36711008"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 05:47:49 -0800
X-CSE-ConnectionGUID: w0SmV9hMT12ddNct3nzyHQ==
X-CSE-MsgGUID: YDyzHOSwQVW+s4ZvQWW5EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="104245681"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.59])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 05:47:47 -0800
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, rodrigo.vivi@intel.com, andrzej.hajda@intel.com,
 andi.shyti@intel.com
Subject: [PATCH 0/2] Disable RPG during live selftest
Date: Fri, 10 Jan 2025 19:39:45 +0530
Message-Id: <20250110140947.3471824-1-badal.nilawar@intel.com>
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

Disable RPG during live selftest

Badal Nilawar (2):
  drm/i915/mtl: Disable render power-gating during selftest only
  drm/i915: Disable rpg for Gen 12 and above

 drivers/gpu/drm/i915/gt/intel_rc6.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.34.1

