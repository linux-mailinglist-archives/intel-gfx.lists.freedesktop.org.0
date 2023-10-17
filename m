Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0087CCE44
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Oct 2023 22:38:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA10F10E329;
	Tue, 17 Oct 2023 20:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7086610E329
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Oct 2023 20:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697575095; x=1729111095;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FUa+hpP7thTLbhGu/1cpJFwa1r6dRIm2ldeSXMUz4Fo=;
 b=ghpBGFmPTG4FLZWDe8jeV7TQg5vJH/mdnrP2EpP/vyhrKIagxCCf9wNZ
 gETMCTretnEywGpMGU4lJUfyLnw58RqR7k/7AX0JnfRb+QqeLnCsRinIa
 yAttJehfprj9baK8HKafVWVA1dY0jb2Dddao6j2uSTD4ga4d/q09QmZPM
 wnircszVxzNBNbnhpiR3KCNXKk8kKM9Q4ef1hRU7Nmorg5Wat9XT7pn4L
 C9/eRIwtEer2O8QEOd36ydXJ9oX4UCjrUkboe6jnJg5faZuK8sVa+lxsQ
 wzZvlPIhK94XxN0IeKiOkdKzb+lLfu3SCRfNVWXMYGWTQzVpoOGuifwfi A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="385710543"
X-IronPort-AV: E=Sophos;i="6.03,233,1694761200"; d="scan'208";a="385710543"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 13:38:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="759956021"
X-IronPort-AV: E=Sophos;i="6.03,233,1694761200"; d="scan'208";a="759956021"
Received: from pvanderz-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.38.156])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 13:38:13 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Oct 2023 23:37:58 +0300
Message-Id: <20231017203800.123776-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] display device info as a separate
 debugfs entry
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

Expose the display device info as a separate debugfs entry to list out
display device info and remove the same from i915_capabilities

v2: rename the debugs entry to i915_display_capabilities and patch
    description changes

Vinod Govindapillai (2):
  drm/i915/display: debugfs entry to list display capabilities
  drm/i915: remove display device info from i915 capabilities

 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 12 ++++++++++++
 drivers/gpu/drm/i915/i915_debugfs.c                  |  1 -
 2 files changed, 12 insertions(+), 1 deletion(-)

-- 
2.34.1

