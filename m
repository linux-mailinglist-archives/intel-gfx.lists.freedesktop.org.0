Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 901B5B16E59
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 11:19:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5EF110E23F;
	Thu, 31 Jul 2025 09:19:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GpSkUSqs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 376D710E140;
 Thu, 31 Jul 2025 09:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753953568; x=1785489568;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RlujWZ7IbA552R493FcweZdsgN1ciN7hMkxkPAdEvls=;
 b=GpSkUSqsKmSDnnleku4v/Z01azMC4C1x3nJ2NQQExfW8MimFYKF8rcfz
 Z46fCxyi7Lp0+gWXKV2OCtsxDpZxNfVRZj3zWXhlZZ6u0CszkLjXmAQ7W
 KKKXBlNbosAHu09tIXyio1BxlU4HAP/HfMmk3Ox/j9k8asUARv4vTblnR
 WN3yLaDN9JMHf1Q7e1cn5FPOf2tpmAiXl7RcT+y51S+heMshAqQLrmCIA
 LFTpckZ4VKLPZgvOTU/H0TVIMLyrT8j5pHoeeMwSKXMnJXzjVeYGTvdu1
 A3yk7NIROeDhEkicarwL9F+peFF7TkcDNQNnSFKg4pyPk6dh0T8RjwqiO w==;
X-CSE-ConnectionGUID: Li/bP1sFRA2t27NZT1+P2A==
X-CSE-MsgGUID: 9m/9ATByR/qW6DEqmL+1hQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="56419896"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="56419896"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 02:19:28 -0700
X-CSE-ConnectionGUID: 656mMhOaRzq8uiSqG46cGw==
X-CSE-MsgGUID: mPCX7k9uQvalJkWwYyzL6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="167448538"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 02:19:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/3] drm/i915/display: global state cleanups
Date: Thu, 31 Jul 2025 12:19:19 +0300
Message-Id: <cover.1753953530.git.jani.nikula@intel.com>
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

Minor cleanups.

Jani Nikula (3):
  drm/i915/display: hide global state iterators, remove unused
  drm/i915/display: make struct __intel_global_objs_state opaque
  drm/i915/display: keep forward declarations together

 .../drm/i915/display/intel_display_types.h    |  4 +--
 .../gpu/drm/i915/display/intel_global_state.c | 32 ++++++++++++++++-
 .../gpu/drm/i915/display/intel_global_state.h | 36 +------------------
 3 files changed, 34 insertions(+), 38 deletions(-)

-- 
2.39.5

