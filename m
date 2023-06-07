Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E032072570A
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 10:12:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37A0E10E459;
	Wed,  7 Jun 2023 08:12:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7E5B10E459
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 08:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686125570; x=1717661570;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JXrDK92c/w9ItpOH3Wm4hC/So4+PHvZHJaPpj3K0xvQ=;
 b=RkgEPhqJabobqX/hji+xqYyNOpW9fZYXs/SFFjCfdO9NoiqJuLksirNG
 bUf7ItG+mUYvz//PEhBZqaIwAUh669nzaX4YzbLVne1Gh1ptAbUGq2vVl
 Fw1SI13kZnf4gwplTI7+PASKUkM+atEbReZM5zU6w7+R+AFfWRNaybr0r
 JyWUnMzAdvNYPhPnDd02EZV5nMSXraLxlIYMNnqfnIcdjt5MZPyk5Ivm7
 zwzpidSLfz/a2OE0es3CyHRbScRX1U99FBQNd99Cezeex5jYpxKeITkBt
 uB4cAei2W53LQu9Dby0vhYzqp6iTdQfzKLRylft8uWTszmFJrWkHMNVIh A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="336544407"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="336544407"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 01:12:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="956122216"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="956122216"
Received: from tneuman-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.210.241])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 01:12:47 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Jun 2023 11:12:23 +0300
Message-Id: <20230607081227.96992-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/4] Do not access i915_gem_object members
 from frontbuffer tracking
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

We are preparing for Xe driver. Binary objects will have differing
implementation in Xe driver. Due this we want to remove direct
accesses to i915_gem_object members and leave details to binary object
implementation.

v3:
  - Move gem object frontbuffer getter/setter into header file
  - operate on and return pointer in defined macros
v2: desribe i915_ggtt_clear_scanout function parameter

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Jouni Högander (4):
  drm/i915: Add macros to get i915 device from i915_gem_object
  drm/i915: Add getter/setter for i915_gem_object->frontbuffer
  drm/i915/display: Remove i915_gem_object_types.h from
    intel_frontbuffer.h
  drm/i915: Add function to clear scanout flag for vmas

 .../gpu/drm/i915/display/intel_frontbuffer.c  | 44 +++++--------
 .../gpu/drm/i915/display/intel_frontbuffer.h  | 28 --------
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  4 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    | 66 +++++++++++++++++++
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +
 drivers/gpu/drm/i915/i915_vma.c               | 22 ++++++-
 drivers/gpu/drm/i915/i915_vma.h               |  2 +
 7 files changed, 110 insertions(+), 59 deletions(-)

-- 
2.34.1

