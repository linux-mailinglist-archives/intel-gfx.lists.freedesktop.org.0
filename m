Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D921B437A56
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 17:52:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80C4F6ED9E;
	Fri, 22 Oct 2021 15:52:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C97386ED9E
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 15:52:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10145"; a="216242195"
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="216242195"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 08:52:38 -0700
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="495729121"
Received: from pbabu-mobl.gar.corp.intel.com (HELO localhost)
 ([10.251.213.192])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 08:52:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Fri, 22 Oct 2021 18:52:31 +0300
Message-Id: <cover.1634917858.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915: split out i915_driver.[ch]
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

i915_drv.h is mostly not about i915_drv.c, so make the distinction clear
by renaming i915_drv.c to i915_driver.c and splitting out i915_driver.h
from i915_drv.h.

Jani Nikula (2):
  drm/i915/driver: rename i915_drv.c to i915_driver.c
  drm/i915/driver: rename driver to i915_drm_driver

 drivers/gpu/drm/i915/Makefile                 |  2 +-
 .../drm/i915/{i915_drv.c => i915_driver.c}    | 11 +++++----
 drivers/gpu/drm/i915/i915_driver.h            | 24 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h               | 11 +--------
 drivers/gpu/drm/i915/i915_pci.c               |  1 +
 drivers/gpu/drm/i915/i915_switcheroo.c        |  1 +
 6 files changed, 34 insertions(+), 16 deletions(-)
 rename drivers/gpu/drm/i915/{i915_drv.c => i915_driver.c} (99%)
 create mode 100644 drivers/gpu/drm/i915/i915_driver.h

-- 
2.30.2

