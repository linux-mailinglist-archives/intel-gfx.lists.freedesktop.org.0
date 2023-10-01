Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8AC87B4732
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Oct 2023 13:32:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD48E10E0DE;
	Sun,  1 Oct 2023 11:32:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 317C210E0DE
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Oct 2023 11:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696159933; x=1727695933;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DPy1UIuGOggoxK3bxpYquUizLOVtBAtnhzfwrbSh5fs=;
 b=KZRhB/v+vSiVlZXSe+OEDYAmAI82i33cokj1kFj3AVB/oB2kYpIqKm2X
 M9vfSdFtM3H1vYonKGcCkQGie5a3rTK/4znNizwhiqjIHnafng91Iklmx
 ZmE1xvKAhSpCROeGVJmbe90H4zWSARjsJms2cw5OZ0fQXG5xuwjNE1uEo
 pEn8V+0PQeDXFDiHcylC2rJTPo49zJDx9XpbSbfoH+CnL1lXxNNBKCaxc
 x6gfaGkjBWaA0SBYQV3SN6cShM+aBgZ2b/ns5b3/mvycmzKGaHIzLtLIB
 vqBsikABChMLoTS5Zeo0z5U0RY3XLTUZRsMGJnVyZ85glpUVvgeRnua2S A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="386386656"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; d="scan'208";a="386386656"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 04:32:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="753804717"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; d="scan'208";a="753804717"
Received: from catjim-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.249.34.14])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 04:32:07 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  1 Oct 2023 14:31:52 +0300
Message-Id: <20231001113155.80659-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 0/3] scalable display feature configurations
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

Get the reported device capabilities and update DSC and scaler
feature support

v1: use defined field values instead of magic numbers (Jani Nikula)

Vinod Govindapillai (3):
  drm/i915/xe2lpd: display capability register definitions
  drm/i915/xe2lpd: update the dsc feature capability
  drm/i915/xe2lpd: update the scaler feature capability

 .../gpu/drm/i915/display/intel_display_device.c   | 15 +++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h                   |  7 +++++++
 2 files changed, 22 insertions(+)

-- 
2.34.1

