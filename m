Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 879084209FF
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 13:23:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0C666E9CD;
	Mon,  4 Oct 2021 11:23:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 998B66E9CA
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 11:23:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10126"; a="248643045"
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="248643045"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 04:23:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="558376079"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 04 Oct 2021 04:23:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 Oct 2021 14:23:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Oct 2021 14:23:01 +0300
Message-Id: <20211004112306.28544-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915: Improve DP link training further
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

A little bit more generic DP link training improvements before
we finally get to the actual per-lane drive settings PHY
programming stuff.

Ville Syrjälä (5):
  drm/i915: Tweak the DP "max vswing reached?" condition
  drm/i915: Show LTTPR in the TPS debug print
  drm/i915: Print the DP vswing adjustment request
  drm/i915: Pimp link training debug prints
  drm/i915: Call intel_dp_dump_link_status() for CR failures

 drivers/gpu/drm/i915/display/g4x_dp.c         |   2 +-
 .../drm/i915/display/intel_dp_link_training.c | 217 +++++++++++++-----
 .../drm/i915/display/intel_dp_link_training.h |   1 +
 3 files changed, 157 insertions(+), 63 deletions(-)

-- 
2.32.0

