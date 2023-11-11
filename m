Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6FA7E8ABD
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Nov 2023 12:43:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0593710E27F;
	Sat, 11 Nov 2023 11:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1723A10E27F
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Nov 2023 11:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699703013; x=1731239013;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KlgxFkPaBJbm/lxg56CY7BSZMaeaWaCef3YNi7E5cvg=;
 b=fFMA/F1KQtB++x8598MhGwuVtMuWJpa2QjuqcRVwCBrlJlJroht9rRAt
 jhEVe6CeZONOid2uPxgt+dLPrea/37ePTqan4WP4b3lYUVrytu3WLnEDb
 NYx/tUo59o51aL0PDKBXaR5q9T+7Esav9gyEJy3zPXeUEs8Y74ZP60JoO
 Nm7S0lq9zwXCzYVPNPkX49LhAvuLGc5WmKzVMfCTCdCNH2J2Zl6LjnXBA
 PbeoWkm7FeXkOcSQ+398+02wFEtE1mrJPwrYfQWkLYM9u/3F2XLyirhMO
 bamTIPDRdltjXPzKBS1JeEKlUOr+j1ZJuKHb34YzXK8DG/dzFRq/Kgvde g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10890"; a="389134671"
X-IronPort-AV: E=Sophos;i="6.03,294,1694761200"; d="scan'208";a="389134671"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2023 03:43:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10890"; a="1011145104"
X-IronPort-AV: E=Sophos;i="6.03,294,1694761200"; d="scan'208";a="1011145104"
Received: from rafaelro-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.54.52])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2023 03:43:30 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 11 Nov 2023 13:43:19 +0200
Message-Id: <20231111114320.87277-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/1] drm/i915/xe2lpd: WA for underruns during
 FBC enable
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Update the FBC enabling sequence. The plane binding register bits
need to programmed before fbc enable bit.

v2: update the patch subject and description as this underrun is not
    tied to PSR. FIFO underruns are observed when FBC is enabled on
    planes 2 or 3.

v3: Updated the comments and removed reference to PSR from the comments
    Added reference to HSD

v4: updated the comments to include wa number

Vinod Govindapillai (1):
  drm/i915/xe2lpd: implement WA for underruns while enabling FBC

 drivers/gpu/drm/i915/display/intel_fbc.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

-- 
2.34.1

