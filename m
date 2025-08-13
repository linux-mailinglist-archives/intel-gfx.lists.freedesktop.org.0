Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5DCB24227
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 09:06:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15D7F10E4B9;
	Wed, 13 Aug 2025 07:06:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IkBQqmjP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D20B710E4B9;
 Wed, 13 Aug 2025 07:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755068794; x=1786604794;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/CpU7Xb6VgYlfV8IytXaEXUdJK2keBkLWZZPjZrVEXU=;
 b=IkBQqmjPexbEc5Z8cx4W7Y20h1D3C6mfaKD8cjnOMNQgsfKInpc+0wUV
 Q+EE9g3uDxZpxwKpYKH9SSM6paQw/VdAbPtfzkIy0anblJZimm3MyY2Cb
 sTsBjiRUm7hqeKxH4qQd4klOXtoCNGPQVmmt88WJxczrtMex5WW6rh0kq
 G6SeQSRifgiPMb49xAy5B988Y8J7wml9dBx9Km7Ats9/nVKYFsiJ7/yuV
 w9A6B8Om/7fpobx3jrlpaMpxifsIX5jPTuZfU6tvBZdWfYsN+1QaZa/J7
 r1e7gKDCLPtOQkyUcfjE14W5BMRMjIjyT1tjG2LPPmp0/CYBNeW02VBT2 Q==;
X-CSE-ConnectionGUID: HkNWaXdWSN6l4H4jww+Zjg==
X-CSE-MsgGUID: 6Ggmyxb8T/mc+4zTjUAAoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="60975103"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="60975103"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 00:06:34 -0700
X-CSE-ConnectionGUID: Qc0JCy9OS6SDthaE1vc6ug==
X-CSE-MsgGUID: bCsuz148TH2+2h/fdywSoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="165578495"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.181])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 00:06:32 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/4] ALPM LFPS and silence period calculation
Date: Wed, 13 Aug 2025 10:06:13 +0300
Message-ID: <20250813070617.480793-1-jouni.hogander@intel.com>
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

Currently ALPM LFPS and silence period are hardcoded for different
link rates. This patch set implements calculation for these
parameters.

Also AUXLess wake time is optimized by using actual LFPS cycles and
silence period instead of maximum values.

Jouni Högander (4):
  drm/i915/alpm: Calculate silence period
  drm/i915/alpm: Add own define for LFPS count
  drm/i915/alpm: Replace hardcoded LFPS cycle with proper calculation
  drm/i915/alpm: Use actual lfps cycle and silence periods in wake time

 drivers/gpu/drm/i915/display/intel_alpm.c | 133 ++++++++++------------
 1 file changed, 58 insertions(+), 75 deletions(-)

-- 
2.43.0

