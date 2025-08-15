Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C28C9B27BAB
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Aug 2025 10:52:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5989B10E35F;
	Fri, 15 Aug 2025 08:52:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T+R+gcRr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5547410E35F;
 Fri, 15 Aug 2025 08:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755247930; x=1786783930;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4rATJaiwxQVycWwEVPefPb94TdxixR66aoEQWwtjSWI=;
 b=T+R+gcRrSCHGOCvChVDduGrnuF8GfHUh6TIu4OqrIAU+prl7VSwNEcrT
 sCJYlYkm/C3jrDt8HTAQBmdoNhU5Zjwa2ipGaiuFGzZzxEhIiJOnSkfLb
 VbjYOJwF2+SWnI2U+tJQv0d3+VTtRNxIujBgpUjdpdJAoFxNbuJYDp+jX
 efVkvh7co9llZ+7vB1UQSwleYOBzB6bMnp4FlzBaJ/yII2Ffs4TiqLhzG
 Oqy6D1HCA/QGs4lFXpsEIxTO3Pw2xHAxcKnfhVj2goKnJUuR08DRUMVPh
 6R6lP7dV73ZPOWqLjFPhLrrgBsBED74lAxk9Z4AzLNSTa5eEW8YWl+jyg Q==;
X-CSE-ConnectionGUID: /zuGFP83RM2ii2J6TqnxKg==
X-CSE-MsgGUID: hvUzpiycS7e1IdgKkNHDnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11522"; a="57647494"
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="57647494"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 01:52:10 -0700
X-CSE-ConnectionGUID: Vjt3F/HLRY6oqG5rtFcrCw==
X-CSE-MsgGUID: dJzkUt7UTJ21ZM1JGShuTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="167233425"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.12])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 01:52:09 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/3] Fixes for PSR work implementation
Date: Fri, 15 Aug 2025 11:45:31 +0300
Message-ID: <20250815084534.1637030-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

This patch set is fixing couple of issues in PSR work implementation:

1. Do not re-activate PSR in case pause_counter > 0
2. Do not re-activate PSR if disabled due to PSR aux error

Add also drm_WARN_ON if disabled PSR is being activated.

Jouni Högander (3):
  drm/i915/psr: drm_WARN_ON when activating disabled PSR
  drm/i915/psr: Do not activate disabled PSR on irq_aux_error
  drm/i915/psr: Check pause counter before continuing to PSR activation

 drivers/gpu/drm/i915/display/intel_psr.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

-- 
2.43.0

