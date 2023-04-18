Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1656E6B8A
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 19:56:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E65C10E834;
	Tue, 18 Apr 2023 17:56:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AC7510E830
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 17:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681840563; x=1713376563;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Kqid1n2BuBIdDUMlNPL6Ga8nTw93Bpt8W01I1Ae/ins=;
 b=g0P/YSId7kdYPJLR7/cjqoOxSxF/dH2OuOX/sYAGkBxQ3d9UcLGqYvpJ
 QQ6Ku4u5ki5loSZpn7h/oMYCWaKlCKcvBlUEkYK1O0Q1wfT84XTaVPZ2Y
 /0MrrI92PeoEQjh5mxgXsfC8kvRgFwBi+vDvfBQhPr6BuoHYSvmwV2tXz
 iQDlRO2zCV6d7dpgOv/BgXHthb5/q37y7Bc2bVR+2Z5DSZOe3zDt3pY+o
 UnC4rvu+nP/BTka3lLK8WUpzgtyO70C/O7inlAjHZMVMZnl1yYnF8RCO8
 +aKoxdaidxdBhbGvvUxhHR942DPMeyunc2MJ7sCR7IVKNDaJJJPFWSPsx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="348002227"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="348002227"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 10:56:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="815302642"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="815302642"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga004.jf.intel.com with SMTP; 18 Apr 2023 10:55:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Apr 2023 20:55:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 20:55:23 +0300
Message-Id: <20230418175528.13117-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/15] drm/i915: Remove dead scaler register
 defines
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We have some duplicated scaler register defines that are
never used. Remove them.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 75e1f30adda1..919d999a2345 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4041,18 +4041,6 @@
 #define PF_VSCALE(pipe)		_MMIO_PIPE(pipe, _PFA_VSCALE, _PFB_VSCALE)
 #define PF_HSCALE(pipe)		_MMIO_PIPE(pipe, _PFA_HSCALE, _PFB_HSCALE)
 
-#define _PSA_CTL		0x68180
-#define _PSB_CTL		0x68980
-#define PS_ENABLE		(1 << 31)
-#define _PSA_WIN_SZ		0x68174
-#define _PSB_WIN_SZ		0x68974
-#define _PSA_WIN_POS		0x68170
-#define _PSB_WIN_POS		0x68970
-
-#define PS_CTL(pipe)		_MMIO_PIPE(pipe, _PSA_CTL, _PSB_CTL)
-#define PS_WIN_SZ(pipe)		_MMIO_PIPE(pipe, _PSA_WIN_SZ, _PSB_WIN_SZ)
-#define PS_WIN_POS(pipe)	_MMIO_PIPE(pipe, _PSA_WIN_POS, _PSB_WIN_POS)
-
 /*
  * Skylake scalers
  */
-- 
2.39.2

