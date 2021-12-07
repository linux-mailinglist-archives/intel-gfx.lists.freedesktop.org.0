Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE51F46B371
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 08:11:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC83C8B852;
	Tue,  7 Dec 2021 07:11:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 274908B854
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 07:11:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="261579636"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="261579636"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 23:11:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="679331727"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by orsmga005.jf.intel.com with ESMTP; 06 Dec 2021 23:11:35 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Dec 2021 12:41:32 +0530
Message-Id: <20211207071135.3660332-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v3 0/3] Enable pipe color support on D13 platform
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

v3: Dropped gamma lut tests field (Ville)

Uma Shankar (3):
  drm/i915/xelpd: Enable Pipe color support for D13 platform
  drm/i915/xelpd: Enable Pipe Degamma
  drm/i915/xelpd: Add Pipe Color Lut caps to platform config

 drivers/gpu/drm/i915/display/intel_color.c | 23 +++++++++++++++++++---
 drivers/gpu/drm/i915/i915_pci.c            |  5 ++++-
 2 files changed, 24 insertions(+), 4 deletions(-)

-- 
2.25.1

