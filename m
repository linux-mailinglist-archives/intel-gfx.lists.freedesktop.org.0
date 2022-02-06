Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 234A84AB003
	for <lists+intel-gfx@lfdr.de>; Sun,  6 Feb 2022 15:43:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3E7210E118;
	Sun,  6 Feb 2022 14:43:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5A9C10E118
 for <intel-gfx@lists.freedesktop.org>; Sun,  6 Feb 2022 14:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644158606; x=1675694606;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=czbMovVUgtSQ/gA5CGDcPBPKpXfhGiRqcwUsOnwWM8s=;
 b=EiYFr3wY4chPz+y9J4XtMFId2d1Bd1o7R8YS9Y1TrDRUAXgKLDKpYd7j
 2emjry++Fz2OVjaIxuelZpAgiIy1StsT0k2a3BbpUePfboTCh0ECMHrAD
 Zv1PrmAuygQJfPdqO9SS4y/Ohg5+oyXN9LUaplJLUm54AKO/oBQGF4KIJ
 xYdTx7KymKdoSRa1dIMccRzML44i1vtGrxEGLYcSF8Hi7FFb+8+FTw5sq
 Nv02EQHMZdDkmg3CqBZ9UCu/YbCUwnALJxeapt6rqGu37DsanHjjNLyou
 7tpZIHg7j/7NnFcKs+JuAb+V/sP5CUeKH0yr93HbxtU3VxyjG3cMhe+/c w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10249"; a="334987562"
X-IronPort-AV: E=Sophos;i="5.88,347,1635231600"; d="scan'208";a="334987562"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2022 06:43:26 -0800
X-IronPort-AV: E=Sophos;i="5.88,347,1635231600"; d="scan'208";a="700183711"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2022 06:43:23 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  6 Feb 2022 20:13:07 +0530
Message-Id: <20220206144311.5053-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] DGFX OpRegion
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series setup DGFX OpRegion.

Anshuman Gupta (4):
  drm/i915/opregion: Abstract opregion function
  drm/i915/opregion: Register opreg func only for disp parts
  drm/i915/dgfx: OPROM OpRegion Setup
  drm/i915/dgfx: Get VBT from rvda

 drivers/gpu/drm/i915/display/intel_opregion.c | 533 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_opregion.h |   9 +-
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 3 files changed, 492 insertions(+), 52 deletions(-)

-- 
2.26.2

