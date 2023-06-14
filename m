Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA34715568
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 08:14:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D785110E340;
	Tue, 30 May 2023 06:14:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 512EA10E33B
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 06:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685427276; x=1716963276;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=87gIbZD74p+B2FlqqjspOQkg0SkDfWE26MDxl0BJ4CI=;
 b=aL59cXtUEgBjOFkr/9pjiEpYcEC5z0qRVatPIZc5ABv3c7X/43QK+m2h
 5mjT2ImpxFKlHdh8nt80Hi71BiPBk+zZtrpd+2RfQpofPw33ifV39AYat
 iXV9/wM1XcGQmDqh0QJ0A0oGwNRZaVQMUtAWKP8XwgqgU6uOCLP7uwGyj
 IGU6oQJgYFgJMknW/lbKD71W8oiYJj9fszlY0QjdkEgS6lTUHOpNuzw49
 t4Ou6uVUBjhgmdPP1XfXx4IeY3HDZQQSUSUCNuedKrPqhrAWO3YYGFan8
 dLmVHnYbNoL7OBUz1KLhrMUBEYN0b51/X4Xj8cLReyknXWOwjqm68brkT A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="420585451"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; d="scan'208";a="420585451"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 23:14:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="818651151"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; d="scan'208";a="818651151"
Received: from aravind2-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.46.36])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 23:14:29 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 May 2023 09:14:13 +0300
Message-Id: <20230530061417.2384188-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] Do not access i915_gem_object members
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

 .../gpu/drm/i915/display/intel_frontbuffer.c  | 44 +++++-------
 .../gpu/drm/i915/display/intel_frontbuffer.h  | 28 --------
 drivers/gpu/drm/i915/gem/i915_gem_object.c    | 70 ++++++++++++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  6 ++
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +
 drivers/gpu/drm/i915/i915_vma.c               | 22 +++++-
 drivers/gpu/drm/i915/i915_vma.h               |  2 +
 7 files changed, 116 insertions(+), 59 deletions(-)

-- 
2.34.1

