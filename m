Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5FB8C65FD
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 13:56:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3038810E16C;
	Wed, 15 May 2024 11:56:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mdeC1Oq3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7503910E16C
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 11:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715774215; x=1747310215;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IN7xjlX5lelt66d8Pxw3EAar3oMj31hE/oy+L3HkbDM=;
 b=mdeC1Oq3K13jHRytExnpfee+L9wsGdlc6NgB3T1jPxqxhPklmsQ2P5B2
 o1uO8UEGpryvCRrjZ6U+dLwimDqD5xij/e/4bYZPEeYIxVqZrdxVGyIXK
 K92ThkupqxPKzs9oq6kxd+H4WnBCKTv6N1x7duSE2q/dyDJ0jZSHIyxnc
 QrlEz2ZRpe9vm2c1GFRJ3Nv3zZkX4SXXB8nrCONJ+3s6Em5pqJC5pyx2t
 LO8VxtuZSu3jngCxpoNzyxguh9SqTfy3AEnkNKkIj04yxZPrDb+5NerUJ
 Oprv8mKlWcrmBz+egDvYuYWoeZVsMB+8tZoN1iVpDjowGKSRGDkOecJHK Q==;
X-CSE-ConnectionGUID: ZuL2UvwtT2KDPsEQ1/5RSg==
X-CSE-MsgGUID: vYbAs+CWQ5Crq3TAucq4rA==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="15604778"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="15604778"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 04:56:54 -0700
X-CSE-ConnectionGUID: 8y9HNSeeTRm27yzxhmfOjg==
X-CSE-MsgGUID: c41FTbc7SveJGQP8G92y/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="30962284"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.141])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 04:56:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH 0/8] drm/i915: pass dev_priv explicitly to CUR* registers
Date: Wed, 15 May 2024 14:56:40 +0300
Message-Id: <cover.1715774156.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Update all the register macros in the intel_cursor_regs.h file.

Jani Nikula (8):
  drm/i915: pass dev_priv explicitly to CURCNTR
  drm/i915: pass dev_priv explicitly to CURBASE
  drm/i915: pass dev_priv explicitly to CURPOS
  drm/i915: pass dev_priv explicitly to CURPOS_ERLY_TPT
  drm/i915: pass dev_priv explicitly to CURSIZE
  drm/i915: pass dev_priv explicitly to CUR_FBC_CTL
  drm/i915: pass dev_priv explicitly to CUR_CHICKEN
  drm/i915: pass dev_priv explicitly to CURSURFLIVE

 drivers/gpu/drm/i915/display/intel_cursor.c   | 33 ++++++++++---------
 .../gpu/drm/i915/display/intel_cursor_regs.h  | 16 ++++-----
 drivers/gpu/drm/i915/display/intel_display.c  |  4 +--
 drivers/gpu/drm/i915/display/intel_psr.c      | 13 +++++---
 drivers/gpu/drm/i915/gvt/display.c            |  8 ++---
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |  6 ++--
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   | 24 +++++++-------
 7 files changed, 56 insertions(+), 48 deletions(-)

-- 
2.39.2

