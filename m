Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 222AE8CD2F7
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 14:59:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CB9D10E4CD;
	Thu, 23 May 2024 12:59:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ewcyYo8e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C59010E387
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 12:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716469189; x=1748005189;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=moehcufkRNp+FXdtVIsgH8af5OCVzfoWpo+L8EYpZ10=;
 b=ewcyYo8euC/+SAAjcgQjzWP/3roReTNgHUDJuJ7BlLIAc0oBH/JCZ03Z
 6yh69UsCs+qKvCKXSjzemVMBgDqI5TfpVRbLb6N9Lg8vhjVKBmJMz/KU+
 R7pKlWUPylhiLZNAGbWxbIdheupmA9JiWUs4K0Ca2PAm71FQWy3pPGTXh
 5C+zzcWtyjvOh/KUxclQnkBmb7sp9oru0N7A73nQlTzs7X6hMx+fYtROY
 fqUAqt3R6OCQSClXyAIePPWhQOW5HrqaXRlcwqqkfrkBtbtMVH9UNvP99
 rDwndokxv4XsToL/6GGoTFS6CL3YLjEedpYBNWtCV3hOlgEEd5ITVM8aR A==;
X-CSE-ConnectionGUID: VHsUCWwqQtG1kJbxzbGcDw==
X-CSE-MsgGUID: pRRMi9cJRresZIkFA4/vLg==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="38164653"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="38164653"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 05:59:49 -0700
X-CSE-ConnectionGUID: wY477eivSHGmlx60i+F2/w==
X-CSE-MsgGUID: ygtRaLecRbaPhZaXMS0D7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33731546"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 05:59:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 00/16] drm/i915: dev_priv fixes for
 i9xx_plane_regs.h/intel_color_regs.h
Date: Thu, 23 May 2024 15:59:28 +0300
Message-Id: <cover.1716469091.git.jani.nikula@intel.com>
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

Pass dev_priv explicitly in i9xx_plane_regs.h/intel_color_regs.h. The
main changes are scripted, with some manual indentation cleanups on top.

BR,
Jani.

Jani Nikula (16):
  drm/i915: pass dev_priv explicitly to DSPADDR_VLV
  drm/i915: pass dev_priv explicitly to DSPCNTR
  drm/i915: pass dev_priv explicitly to DSPADDR
  drm/i915: pass dev_priv explicitly to DSPLINOFF
  drm/i915: pass dev_priv explicitly to DSPSTRIDE
  drm/i915: pass dev_priv explicitly to DSPPOS
  drm/i915: pass dev_priv explicitly to DSPSIZE
  drm/i915: pass dev_priv explicitly to DSPSURF
  drm/i915: pass dev_priv explicitly to DSPTILEOFF
  drm/i915: pass dev_priv explicitly to DSPOFFSET
  drm/i915: pass dev_priv explicitly to DSPSURFLIVE
  drm/i915: pass dev_priv explicitly to DSPGAMC
  drm/i915: pass dev_priv explicitly to PRIMPOS
  drm/i915: pass dev_priv explicitly to PRIMSIZE
  drm/i915: pass dev_priv explicitly to PRIMCNSTALPHA
  drm/i915: pass dev_priv explicitly to PIPEGCMAX

 drivers/gpu/drm/i915/display/i9xx_plane.c     | 60 ++++++++++---------
 .../gpu/drm/i915/display/i9xx_plane_regs.h    | 36 +++++------
 drivers/gpu/drm/i915/display/intel_color.c    | 15 ++---
 .../gpu/drm/i915/display/intel_color_regs.h   |  6 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  6 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  8 +--
 drivers/gpu/drm/i915/gvt/cmd_parser.c         | 12 ++--
 drivers/gpu/drm/i915/gvt/display.c            |  4 +-
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |  8 +--
 drivers/gpu/drm/i915/gvt/handlers.c           | 14 ++---
 drivers/gpu/drm/i915/intel_clock_gating.c     |  9 ++-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   | 48 +++++++--------
 12 files changed, 116 insertions(+), 110 deletions(-)

-- 
2.39.2

