Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0067BB7C1
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 14:35:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EF8810E4DD;
	Fri,  6 Oct 2023 12:35:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E777D10E4DD
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 12:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696595700; x=1728131700;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AD04cZYr4rjky80KsYXJrJcZW3BNsdCsazM3lhGosKE=;
 b=J4vX2GzswnfIw1uHrQIvO6fcwD4R7Pin9XP/+IZuSTfoRCgNCDOfP2v5
 PPKgm7u3u1JTw6me4jABV4Efapu867dqFywFGi9FTRs91jzlexuRE5l7W
 FN2RxpzkQ7QHmZFy8Ji+c5FkzhEC+n3S2NvhFar154JEe/xL6OqoRLoJW
 9NmK79PocQ7Xc1HzVuA/r/qvFRPi9lwBBmd0WlAuNyEni2EtEC9Kb/2vA
 ZRvsmtFvvEGCd4/JkjfEa0tzblPyP27L9qR+bxajalABl2MRfIxzyod6J
 jwbb7EyFHrcpqzKltaMSbwYPhIwRckacliO+sJawL3p875gFdnP4EAynY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="386564212"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="386564212"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 05:34:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="875930207"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="875930207"
Received: from lvroom-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.41.239])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 05:34:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 15:34:45 +0300
Message-Id: <cover.1696595500.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915: align with W=1 warnings
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-kbuild@vger.kernel.org,
 jani.nikula@intel.com, Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <nathan@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Update i915 extra warnings to align with W=1 warnings.

Cc'ing some folks who have contributed to i915 warnings in the past. I'm
only running gcc 12 locally, so I may not hit all issues that other gcc
or clang versions might hit.

BR,
Jani.


Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>

Jani Nikula (2):
  drm/i915: drop -Wall and related disables from cflags as redundant
  drm/i915: enable W=1 warnings by default

 drivers/gpu/drm/i915/Makefile | 35 ++++++++++++++++++-----------------
 1 file changed, 18 insertions(+), 17 deletions(-)

-- 
2.39.2

