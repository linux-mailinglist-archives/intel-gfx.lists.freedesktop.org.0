Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 098E16E587E
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 07:23:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED4CF10E67D;
	Tue, 18 Apr 2023 05:22:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96D3610E044
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 05:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681795376; x=1713331376;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sK+Irkm4y8QwDHEQ3nR2qMB9OXcF2Pd3W9f8MHLho7Q=;
 b=UUN172geNfOiWvzU01JrMFPtZ3ok0JaN+8AHtNwTI0VLM9mActDK4T/g
 FnVCTYll0EW+xWFAa1pLiDGTQoeYVwInsdk+mvXg4MiicybAekB7wLbUO
 VDzFn4G20X68Ouq61v1//fsM+rgcAAD5kCwyeFth63TSSfuTamPX2irn3
 ZmUA1EOyUm1JDn0at438IyC9QmvtWccNl6cttiHhfWn4gZrDF1gldpiLX
 LC53zNQWcy2Q3yfqKUNNMB+hv3C/2FLJoADU+K3WCJs0/DOwk/xY9Kvok
 DJXLL0n9R3ysPBlldw0cBCR6lroaTNXdM08fmp7lH+TIsrLRaDisoI+6m w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="372957634"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="372957634"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 22:22:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="760227717"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="760227717"
Received: from rboza-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.212.229])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 22:22:51 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 08:22:19 +0300
Message-Id: <20230418052221.593983-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Handle dma fences in dirtyfb ioctl
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

Currently i915 dirtyfb ioctl is not taking dma fences into
account. This works with features like FBC, PSR, DRRS because our gem
code is triggering flush again when rendering completes. We are
targeting in getting rid of frontbuffer tracking code: Flusing hook
from gem code will be removed as well.

This patch set is adding dma fence handling into i915 dirtyfb ioctl.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Jouni Högander (2):
  drm/i915: Add new frontbuffer tracking interface to queue flush
  drm/i915: Handle dma fences in dirtyfb callback

 drivers/gpu/drm/i915/display/intel_fb.c       | 54 +++++++++++++++++--
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 33 ++++++++++++
 .../gpu/drm/i915/display/intel_frontbuffer.h  |  4 ++
 3 files changed, 88 insertions(+), 3 deletions(-)

-- 
2.34.1

