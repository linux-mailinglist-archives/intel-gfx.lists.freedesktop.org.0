Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4E97C6652
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 09:22:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E22AD10E423;
	Thu, 12 Oct 2023 07:22:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5EF910E423
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 07:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697095332; x=1728631332;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cj6e+SIi3Z1i81CfB8XbyGlddQiQ85LgdmZQJlzM00M=;
 b=hmURw6V4V0A6+1jR6AI1WPe9a/MxJNEcDcxF1t3i7wvPdAFm2fa6lPIJ
 i2ceD0zgYwr8GpDrTqEPPjtQxxNQayXV7QfqD3Q8bWyclIlN+mTWuppot
 3JvCy3px7xLCi3tLVRSec8iWLckXcc/SM7l5t5PHaRxw7HUzqXlZYGZ39
 NyAWPKXwNG1sYYLDQf2tsDP0epKxLCpVdwnDbENbQB1p2ZM6HUkGW+wTk
 k/dEx2u/ZfPVyYngOkk0HS6XifeBhedqmJvoVSaZtm6IkVKL643BudTJJ
 M5i0Q0aEvweoT8j6wrMhCutK6wbk8lR3HCnsJNHin8Mh9U7o2+kb0DqbP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="471109094"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="471109094"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 00:22:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="897976715"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="897976715"
Received: from sidorovd-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.58.103])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 00:20:22 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 10:21:56 +0300
Message-Id: <20231012072158.4115795-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Frontbuffer tracking preparing for Xe
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Last refactoring patches to remove i915_gem_object details away from
frontbuffer tracking code.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Jouni Högander (2):
  drm/i915/display: Move releasing gem object away from fb tracking
  drm/i915/display: Use intel_bo_to_drm_bo instead of obj->base

 drivers/gpu/drm/i915/display/intel_fb.c                | 4 ++--
 drivers/gpu/drm/i915/display/intel_frontbuffer.c       | 2 --
 drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h | 1 +
 3 files changed, 3 insertions(+), 4 deletions(-)

-- 
2.34.1

