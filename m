Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D75357EBF1F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 10:07:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CC5E10E507;
	Wed, 15 Nov 2023 09:07:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9098710E507
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 09:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700039264; x=1731575264;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y2cOd+s2NKfm50iUQiO8fsf0nSUjJFfz++g/Mur+p7E=;
 b=TOBXeL3sapL/zGNl8640VHYcaypG4FNbQx9bkXAcl7xFBEmit212k3va
 8ZRj2Gntxk4svcUpJVKGTTM7FWCrHbIJLMc6jN8gOu7uzbA5mSS5LQoRP
 Csta9HQC+ywbOLlMdCK/gZ4fMLCCXiZ61SZzGibdecv+YbQlyLF79NaKD
 318R9h7dSQ83BQSfUT0FEZs7Plht3MX70UWRp9z5tMBLvn63gpA6fONOm
 qgmLICE9QlioGYnYzeWA52UZaQsK1Nc5Lf6WQH3GmuiI/00NeiqtpyvxU
 H+N5k3IkrsNkfsPA56tDPt2zJCrkAjl+7ucyQznINvqbXXbCmiope4SPw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="381236092"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="381236092"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 01:07:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="799781343"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="799781343"
Received: from tmagriss-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.218.181])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 01:07:34 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Nov 2023 11:07:17 +0200
Message-Id: <20231115090719.3210079-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Prepare intel_fbdev for Xe
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
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Intel_fbdev buffer allocation and it's backing object handling differs
a lot between i915 and Xe. This patch set is splitting i915 specific
code into it's own source file. Similar source files will be
introduced for Xe as well.

Also use intel_bo_to_drm_bo instead of directly referring
i915_gem_object->base. This is needed because i915_gem_object and
xe_bo implementations are differing.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>

Jouni Högander (2):
  drm/i915/display: split i915 specific code from intel_fbdev
  drm/i915/display: use intel_bo_to_drm_bo in intel_fbdev

 drivers/gpu/drm/i915/Makefile                 |   3 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 112 ++---------------
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 115 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  21 ++++
 4 files changed, 148 insertions(+), 103 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_fbdev_fb.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_fbdev_fb.h

-- 
2.34.1

