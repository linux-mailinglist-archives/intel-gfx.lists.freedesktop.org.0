Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 625049B4C76
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 15:48:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B1AA10E67A;
	Tue, 29 Oct 2024 14:48:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GOUyGbCh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1E6A10E67A
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 14:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730213305; x=1761749305;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=38w0wGNLlpX3huswHPmKYOTx6BV1ErUV3PpZX6HX7nE=;
 b=GOUyGbChzCfjrkTnkd/40T83Va2MOyYUP+sErqmxj1iuqJHor1jTRBRH
 lMsq/xFC4AQeQQ/zam8zTipgfdLg9skE+5Ekeifdb7ZzJXrwhPuIlvsQR
 YbdDwxztljr9p8C++pNQKB1gYygDPSrE/ZMUFAIGAhGG0NR8tms4baPvS
 bOgQeiFObhhivAStImgG5rYqfQ5UYMpCAFsFgXB0dk212JMJvnj/DbtHm
 jV2STtvkFdWHA4WkpJ0gLdhUBAWsKf7FXJf+ApjXr+fkH+QMKKOELg3fb
 cFSWAvLLRVw8AeUrYqLlPRcE2JNTcbNQ5fRUZkSBQl1zszvqvxOOCZBt+ A==;
X-CSE-ConnectionGUID: xUI2uZdDRI6xQDezazcwfA==
X-CSE-MsgGUID: WlJkGA20RGaS9mcRQIWa0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="52416418"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="52416418"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 07:48:24 -0700
X-CSE-ConnectionGUID: JXW+xAb1SxCW+/WtvyT+Mg==
X-CSE-MsgGUID: tp9NAj3BTf2pRS/RURvccQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="81538218"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 07:48:24 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [CI 0/1] pmu changes with igt
Date: Tue, 29 Oct 2024 07:48:02 -0700
Message-ID: <20241029144803.631999-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
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

Try again, this time with the correct igt series.

Test-with: 20241023050502.3049664-1-lucas.demarchi@intel.com

Lucas De Marchi (1):
  pmu changes

 include/linux/idr.h        |  17 +
 include/linux/perf_event.h |  35 ++-
 kernel/events/core.c       | 620 +++++++++++++++++++++++++------------
 3 files changed, 455 insertions(+), 217 deletions(-)

-- 
2.47.0

