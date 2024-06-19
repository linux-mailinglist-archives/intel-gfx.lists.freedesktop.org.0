Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5CF90E82A
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 12:16:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 621A910E119;
	Wed, 19 Jun 2024 10:16:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hXHVv78t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 614EB10E119
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 10:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718792216; x=1750328216;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/vuxvIGCrF5He6mUHeA+UCHkc/wVDAhY0GKkHtGBR+Y=;
 b=hXHVv78tG08PxreqKO0eao0HFawQvWHYdV4sBvhJwcT1XREjJWEr3lwv
 XmZzyLlVEMhFBQ0lLx0BZFStIdvCBAhkXIRBbxS1DitjK6C6SVH1mxr2/
 6V70j2+1KxPGERm+guX5dA2OAQf31dmx0hrScjmA98OfI819/ELm9CYUT
 xjbzDIXUl8ov1o/OnAyKosijQAUUYkjD9wFKrX/sJCo0xGa+bi4cYzjT0
 zUkUbLt8g8ezyLzxVtvciTwXflefHvUbs8c/GeDfqGjvJ+cfL8p1i81iJ
 w5iWfbbluVOBe2OmoZAg8X4jdWDt2+hGI+5JprSA1RKWDaq2lHRTmMhW+ g==;
X-CSE-ConnectionGUID: Yf/g4DybRjmVzipcEtdFvw==
X-CSE-MsgGUID: XWZqCzbVSkupWeya/DVEIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="26350561"
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="26350561"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 03:16:56 -0700
X-CSE-ConnectionGUID: wokHJ3rtRfaBWDPG2j9RDw==
X-CSE-MsgGUID: Q+s8pJ3oT+a+d7VIN5oldg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="41781094"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa010.jf.intel.com with ESMTP; 19 Jun 2024 03:16:55 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 0/1] drm/i915/display: WA for Re-initialize dispcnlunitt1
 xosc clock
Date: Wed, 19 Jun 2024 15:47:10 +0530
Message-ID: <20240619101711.860988-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
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

The dispcnlunit1_cp_xosc_clk should be de-asserted in display off
and only asserted in display on. But during observation it found
clk remains active in display OFF. As workaround, Display driver
shall execute set-reset sequence at the end of the Initialize
Sequence.

Wa_14020225554

Mitul Golani (1):
  drm/i915/display: WA for Re-initialize dispcnlunitt1 xosc clock

 drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
 1 file changed, 8 insertions(+)

-- 
2.45.2

