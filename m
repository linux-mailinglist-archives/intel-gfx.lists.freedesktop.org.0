Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88ED07CBCDD
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Oct 2023 09:54:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EA2010E115;
	Tue, 17 Oct 2023 07:54:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AD5910E115
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Oct 2023 07:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697529287; x=1729065287;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1+uUpP4Q7orZJo/pVDlgX3wjrY2D4NNSlD70Lz6tu1g=;
 b=GxO8tSVrZVLP1+IlFLcLuoU+EdTK7eVeO5zpQMRQsisgxpLcaRs+cNSu
 kTXGbfP4owiy7X+meGGfv6Nk2w2mWDggUKF1ZMIrni5rxjlN9vVWksYU+
 UxhJiqvktDlhVFssXOWrZO6hHobgeaud45DpWIuje05RekjTFHanBQadr
 1u/tO9poQDVeP0QqRPIOJc7jHPyJc+Ej34jzdOLIqkBWhEIVRNhFfIrNr
 t/TO93iTZ7RsuuZO6uwMpQSOj4DCwvXQIjoURgY2sNK68mIA0oiXBgCa8
 ffB0bCtHNb2a3P+VjXY6MmWnrwDmlhH58y95RUFLtuyVQ+zKz+Q1EuqoT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="471944696"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="471944696"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 00:54:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="899821213"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="899821213"
Received: from ksuvorov-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.208.145])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 00:52:45 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Oct 2023 10:54:33 +0300
Message-Id: <20231017075435.95320-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 0/2] display device info as a separate
 debugfs entry
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

Expose the display device info as a separate debugfs entry to list out
display device info and remove the same from i915_capabilities

Vinod Govindapillai (2):
  drm/i915/display: display device info debugfs entry
  drm/i915: remove display device info from i915 capabilities

 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 11 +++++++++++
 drivers/gpu/drm/i915/i915_debugfs.c                  |  1 -
 2 files changed, 11 insertions(+), 1 deletion(-)

-- 
2.34.1

