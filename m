Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BF4764712
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 08:42:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 896D410E117;
	Thu, 27 Jul 2023 06:42:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA6FB10E117
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jul 2023 06:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690440118; x=1721976118;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Z+TcMK8ZdFhYi6DH8+6JDOvaEAH9aUC0xPuPEh6ErVs=;
 b=CrTQ1x7OKGwulgkSA1dcUMl3vs7UZvrHh1ssHvsxObL4KQ9Om+jHIadn
 4uCsfpOHfXSI/bUlc9aWjbxFkNkiwN5CHqLhW76HVMm+TzjD2X7ClWl0h
 KUGPxKUvsDSc9Mw1zAz1j9o+qDm0qRpjDeImGLKJxrdFpt3EpOODd7dwq
 RnEbQDVhUbPHsxpPfjGGBd9uiRL8APTTQgpLUfusAQHUaj2kVfD3F0fIy
 NAqRmk6gkCkn3Gah1MtZVx6W3bNNfHlz//kWGx4r2T+U37GSqSwc1T+ED
 Z8L6uiaBVHX8+kMrwqIdZihuLT0aZym/MvCS2gJrgwmVu7O9/BI7CeeMp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="347830330"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="347830330"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 23:41:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="973431831"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="973431831"
Received: from vgrigo2x-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.35.8])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 23:41:55 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jul 2023 09:41:38 +0300
Message-Id: <20230727064142.751976-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/4] Do not access i915_gem_object members
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
Cc: Jani Nikula <jani.nikula@intel.com>, Nirmoy Das <nirmoy.das@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We are preparing for Xe driver. Binary objects will have differing
implementation in Xe driver. Due this we want to remove direct
accesses to i915_gem_object members and leave details to binary object
implementation.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>

v4:
  - Fix intel_frontbuffer_get return value
  - s/front_ret/cur/
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

 .../gpu/drm/i915/display/intel_frontbuffer.c  | 46 +++++--------
 .../gpu/drm/i915/display/intel_frontbuffer.h  | 28 --------
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  4 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    | 67 +++++++++++++++++++
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +
 drivers/gpu/drm/i915/i915_vma.c               | 22 +++++-
 drivers/gpu/drm/i915/i915_vma.h               |  2 +
 7 files changed, 112 insertions(+), 60 deletions(-)

-- 
2.34.1

