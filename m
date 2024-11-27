Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFC09DA200
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 07:11:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6621310E214;
	Wed, 27 Nov 2024 06:11:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eQbB5aai";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F356B10E214
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2024 06:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732687882; x=1764223882;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=w3ruouxBqQ67WOj0uoQe8G6DhKnjsjXlMKiUWKEdSZE=;
 b=eQbB5aaiEhj9rDdqANWBN/ZR0hA0+t85Da6bEwxJMH6hvIWCMopmzwJh
 3/b82lDfUh3KMAToR7Ij5Dhc9if4TZW1RqPHwPzRtv06uKE03sHL9sko7
 ff3M8uKD3/loJxnP1NpDg+yHenzi6frQB17VpoDpaIb6rw74brseiTiKU
 tIulgJdrvVsqiG+q7eumrrPR6DIVCDtRO+KHMDxdO74Wz0goghDYt//5u
 seSPsdnhFa/ZGJK4/+uykfMb6McXl2QzHSpsYBp/jIli+A+qq6IZ9OGwC
 pvT4glVQzI7yNP546e12A4FAvyuazA187weg0sjsqQCx7Hf5cQExb/MQC g==;
X-CSE-ConnectionGUID: 28RLFgFgTVWCpPn4fJTA5w==
X-CSE-MsgGUID: 5C5yz9IfQuaBvhoYHGS0gA==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="33125360"
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="33125360"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 22:11:22 -0800
X-CSE-ConnectionGUID: Hx/DrI0FRPy8g9CyTfaqJQ==
X-CSE-MsgGUID: rTako7KkSQmHhfHcXWKkgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="91981992"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 26 Nov 2024 22:11:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Nov 2024 08:11:17 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Brian Geffon <bgeffon@google.com>,
 Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH 0/4] drm/i915/dpt: Try to make DPT shrinkable again
Date: Wed, 27 Nov 2024 08:11:13 +0200
Message-ID: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Try to make DPT objects shrinakble once again. To overcome
the earlier suspend/resume issues we'll just make sure all
DPT VMAs are evicted during suspend, and thus resume won't
care whether the DPT objects got kicked out or not. 

The proper solution would perhaps be to do the DPT CPU
mapping on demand in dpt insert_{page,range}() but that
would require a bunch of extra thought (especially for
DPTs allocated from stolen).

Cc: Brian Geffon <bgeffon@google.com>
Cc: Vidya Srinivas <vidya.srinivas@intel.com>

Ville Syrjälä (4):
  drm/i915: Don't reuse commit_work for the cleanup
  drm/i915: Intruduce display.wq.cleanup
  drm/i915/dpt: Evict all DPT VMAs on suspend
  Revert "drm/i915/dpt: Make DPT object unshrinkable"

 drivers/gpu/drm/i915/display/intel_display.c  |  6 +++---
 .../gpu/drm/i915/display/intel_display_core.h |  3 +++
 .../drm/i915/display/intel_display_driver.c   |  6 ++++++
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_dpt.c      |  4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  4 +---
 drivers/gpu/drm/i915/gt/intel_ggtt.c          | 19 ++++++++++++++-----
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  4 ++--
 8 files changed, 33 insertions(+), 15 deletions(-)

-- 
2.45.2

