Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF9772F414
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jun 2023 07:18:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27D4010E0D2;
	Wed, 14 Jun 2023 05:18:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEDEA10E0D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jun 2023 05:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686719895; x=1718255895;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QM+T0Km9uuxbQ+F/SdCL1cXxHRdmsZeI6t1KZdZaABA=;
 b=mHvuB7UrYZpGppDzjEQEXjkDDPeAscKrmmVCRGmKEa7HEvO6SH3iJIR+
 jYc06ZeQPinmY9EYugV5RGHl/9kKVq2Zr2xfmHmjRtZhF9Deya1RtFn01
 XkY83ahuXLAHlFq8yXfMu6YrgiUZMdzy2XDA1i3wdmZh/B5rUWrdCc+hu
 BUCni8sn7BWkOq5yIKjyygz3LeWE4irAqfzsxo12brrnQZEF8cOgV6lI8
 f2/T8HY6c3VN52H+jc5Mf+FtuYO24NKcLNnBN8zamP6EOpmZr5Cpmo/5p
 jPbEfljouksbpjoc0k0fJDOJ8BmhOJyb4s7SkIvRixfUD0Hwg/G0F8rfv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="348184418"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="348184418"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 22:18:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="715059437"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="715059437"
Received: from lcoutoda-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.63.4])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 22:18:11 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Jun 2023 08:17:28 +0300
Message-Id: <20230614051731.745821-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/3] Move stolen memory handling details into
 i915_gem_stolen
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

We are preparing for Xe driver. Stolen memory handling will be
different in Xe driver. Due to this we want to remove all stolen
memory handling details away from FBC code.

v2:
 - Fix couple of checkpatch warnings
 - Fix intel_gt_support_legacy_fencing macro

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Jouni Högander (3):
  drm/i915: Move stolen memory handling into i915_gem_stolen
  drm/i915/fbc: Make FBC check stolen at use time
  drm/i915/fbc: Moved fence related code away from intel_fbc

 drivers/gpu/drm/i915/display/intel_fbc.c   | 64 ++++++++++++----------
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 36 ++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_stolen.h | 13 +++++
 drivers/gpu/drm/i915/gt/intel_gt_types.h   |  2 +
 drivers/gpu/drm/i915/i915_vma.h            |  5 ++
 5 files changed, 90 insertions(+), 30 deletions(-)

-- 
2.34.1

