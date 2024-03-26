Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7DD88CECF
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 21:31:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09DDE10F2C0;
	Tue, 26 Mar 2024 20:31:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gIm43ce/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BAE510F2BA
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 20:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711485092; x=1743021092;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hXXHmHXz2iZOiKnJXtS1L4/Y7Zfz5ivGYrdXVtqfFGI=;
 b=gIm43ce/AfUt8QCOi5faG0iPahn0kpMwC9ElWh1o/E6xtxsqyJmVxyel
 jwuUkW/NOQYrIS6EI8hTvQgdKqbbIdCNfgeM9FVT80JaCZMbVubDXXpHJ
 cRJU3Tjjjj5fOQHcq5HZYLkPdUDjWJlzpeCb1G2aMFfHIhjLUmks4h3bd
 SSFZFDiyPTqajEZeR10Jh7Juuk8mE+tOIGdKd9JuX38miW3ETOtku9560
 jlreYp4D2boWbkCmuQgUIE22HCfgdTCGm1GeGdGc6drTKUOQUF0HNMqy/
 0gwGh9T9OXueus+cVaRIxVJ/f/UvCr1ItNpN6IWIiUWWEwH7oGcobA4Qn A==;
X-CSE-ConnectionGUID: NkLJ35W9QnaWJdikz5w7Ng==
X-CSE-MsgGUID: tpP8GGigR+G1dsj9q6N1cQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6453409"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; 
   d="scan'208";a="6453409"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 13:31:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="827785429"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="827785429"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 26 Mar 2024 13:31:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Mar 2024 22:31:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/3] drm/i915/cdclk: CDCLK fixes
Date: Tue, 26 Mar 2024 22:31:25 +0200
Message-ID: <20240326203128.10259-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Fix the CDCLK programming sequence when using squash or crawl,
and also drop the tgl/dg2 hacks since we have no idea what those
are for.

Ville Syrjälä (3):
  drm/i915/cdclk: Fix CDCLK programming order when pipes are active
  drm/i915/cdclk: Fix voltage_level programming edge case
  drm/i915/cdclk: Drop tgl/dg2 cdclk bump hacks

 drivers/gpu/drm/i915/display/intel_cdclk.c | 44 +++++++---------------
 1 file changed, 13 insertions(+), 31 deletions(-)

-- 
2.43.2

