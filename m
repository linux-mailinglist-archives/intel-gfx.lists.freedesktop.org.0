Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BF88254D5
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 15:06:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BDC110E5C9;
	Fri,  5 Jan 2024 14:06:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 950D310E5C9
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 14:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704463567; x=1735999567;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=i5EllWDdRq1w4mnU9qbf9K7KOGQf2YhsceWb++86bkk=;
 b=Stg7Ywy4bq0oIYJCvwra1yJ8nGwwyhf0daK+OXs/lvy7B7Pa8lGswJ/D
 Fd/BgDaD74NwlyECvc85MEIVQPyioa3mI4MNg+uOkqnysBnu00wY7Vi81
 Jv2/uTMvpo9Yu/P51zvd+yq4jPwFMHKbAzPbLzcj6sAxwlqMK/kZ+ABzJ
 gLhF5mj7Q/RZ9hytk6YUXeldBXM11N/5uYQHwY2VICAZrEsP9dzFpj9Sc
 zkzwMQ6agXvVlD7Va8GF46J3PdRl6T/rPi9IiY2/nvk3UNSB/hCb/MP6w
 NcNiVczl7v6GM0exvLjdXzsJEgPX7LBm6PX3RKhtpXBJHJtx6NckOYkw9 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="10878623"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="10878623"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:06:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="780777943"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="780777943"
Received: from clspence-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.246.112.15])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:06:04 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 0/4] Update bxt_sanitize_cdclk() for Xe2_LPD
Date: Fri,  5 Jan 2024 11:05:34 -0300
Message-ID: <20240105140538.183553-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.43.0
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series fixes an issue observed during module load due to missing
bits in bxt_sanitize_cdclk() specific to Xe2_LPD.

The first patch contains the fix itself. The subsequent patches
refactor the code so that bxt_sanitize_cdclk() and _bxt_set_cdclk() use
the same function for deriving the value for CDCLK_CTL, hopefully making
it harder for the same kind of problem to happen again.

v2:
  - Improve bodies of commit messages to be more self-contained.

Gustavo Sousa (4):
  drm/i915/xe2lpd: Update bxt_sanitize_cdclk()
  drm/i915/cdclk: Extract bxt_cdclk_ctl()
  drm/i915/cdclk: Reorder bxt_sanitize_cdclk()
  drm/i915/cdclk: Re-use bxt_cdclk_ctl() when sanitizing

 drivers/gpu/drm/i915/display/intel_cdclk.c | 100 ++++++++++-----------
 1 file changed, 48 insertions(+), 52 deletions(-)

-- 
2.43.0

