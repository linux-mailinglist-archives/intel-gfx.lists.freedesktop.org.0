Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3564867E1
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 17:49:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F1E610F929;
	Thu,  6 Jan 2022 16:49:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D515C10F1FE;
 Thu,  6 Jan 2022 16:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641487760; x=1673023760;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JMxfgnlnwT2tAH6Ia9XB9G3MCQxH36+si0vpju0bq08=;
 b=K1K/OiPnN0xIyFdcj2ZR11/K+Tzbp27IXNG9vMxgIQ0InCxNPonAinU7
 DqXNYSMDZU7N4vyejEoSvHoZDu+Le+g4dj95Rxci7PtXN4I1I4nkmcyZz
 gpIH8QDEpD/uxjnQ1ZUFiHWpPmqZd3im+FCL7S2ZUEVlimnv4MDPaXKhr
 uaSAO9Edj9EoqiuMS1QFQhu8/XTe6zn/sr2dH+iKe9Rvi5f0SPELEr5eA
 /n9D5sklqHNFMQiNNQc0cv1MiSB5NVgvdV1PIn9wluzbXAZJc9g/RvLUp
 sbLv8BSMMVPLXXNebcQejJy+mX5Xff37VWrcmeREcfSWeYNNMThgVBD/x Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="229502236"
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="229502236"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 08:49:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="513468436"
Received: from leitchrx-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.202.197])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 08:49:18 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu,  6 Jan 2022 16:49:12 +0000
Message-Id: <20220106164915.56855-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/3] Tests and intel_gpu_top with fdinfo
 support
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Mostly sending so I can use Test-with: but review is always welcome.

Tvrtko Ursulin (3):
  lib: Helper library for parsing i915 fdinfo output
  tests/i915/drm_fdinfo: Basic and functional tests for GPU busyness
    exported via fdinfo
  intel-gpu-top: Add support for per client stats

 lib/igt_drm_fdinfo.c    | 161 ++++++++
 lib/igt_drm_fdinfo.h    |  47 +++
 lib/meson.build         |   7 +
 man/intel_gpu_top.rst   |   4 +
 tests/i915/drm_fdinfo.c | 555 +++++++++++++++++++++++++++
 tests/meson.build       |   8 +
 tools/intel_gpu_top.c   | 803 +++++++++++++++++++++++++++++++++++++++-
 tools/meson.build       |   2 +-
 8 files changed, 1584 insertions(+), 3 deletions(-)
 create mode 100644 lib/igt_drm_fdinfo.c
 create mode 100644 lib/igt_drm_fdinfo.h
 create mode 100644 tests/i915/drm_fdinfo.c

-- 
2.32.0

