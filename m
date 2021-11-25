Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D7245E18B
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Nov 2021 21:27:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 434306E200;
	Thu, 25 Nov 2021 20:27:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 906FE6E200
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Nov 2021 20:27:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10179"; a="235505161"
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="235505161"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2021 12:27:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="598247060"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmsmga002.fm.intel.com with ESMTP; 25 Nov 2021 12:27:50 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Nov 2021 01:57:47 +0530
Message-Id: <20211125202750.3263848-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/3] Enable pipe color support on D13 platform
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

Enable pipe color support for Display 13 platform. This series
enables just the 10bit gamma mode. More advanced logarithmic
gamma mode will be enable with the new enhanced UAPI. It will
be extended once the UAPI is agreed in community. This series
just adds the basic support in the interim.

v2: Addressed Ville's review comments.

Uma Shankar (3):
  drm/i915/xelpd: Enable Pipe color support for D13 platform
  drm/i915/xelpd: Enable Pipe Degamma
  drm/i915/xelpd: Add Pipe Color Lut caps to platform config

 drivers/gpu/drm/i915/display/intel_color.c | 23 +++++++++++++++++++---
 drivers/gpu/drm/i915/i915_pci.c            |  6 +++++-
 2 files changed, 25 insertions(+), 4 deletions(-)

-- 
2.25.1

