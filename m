Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A771D45AC9E
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 20:37:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BA6F6E207;
	Tue, 23 Nov 2021 19:37:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9700F6E17B
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Nov 2021 19:37:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="234936066"
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; d="scan'208";a="234936066"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2021 11:37:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; d="scan'208";a="591333606"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Nov 2021 11:37:01 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 01:06:46 +0530
Message-Id: <20211123193649.3153258-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Enable pipe color support on D13 platform
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
Cc: =ville.syrjala@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Enable pipe color support for Display 13 platform. This series
enables just the 10bit gamma mode. More advanced logarithmic
gamma mode will be enable with the new enhanced UAPI. It will
be extended once the UAPI is agreed in community. This series
just adds the basic support in the interim.

Uma Shankar (3):
  drm/i915/xelpd: Enable Pipe color support for D13 platform
  drm/i915/xelpd: Enable Pipe Degamma
  drm/i915/xelpd: Add Pipe Color Lut caps to platform config

 drivers/gpu/drm/i915/display/intel_color.c | 21 ++++++++++++++++++---
 drivers/gpu/drm/i915/i915_pci.c            |  2 +-
 2 files changed, 19 insertions(+), 4 deletions(-)

-- 
2.25.1

