Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 628A6598C74
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Aug 2022 21:23:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C583710E246;
	Thu, 18 Aug 2022 19:22:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B55810E16C
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Aug 2022 19:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660850547; x=1692386547;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gBwlo3zDD7PNnu7/SdKXzSjyr6peX7TpU3awFqdYK/g=;
 b=fO+drnQLLHRnXQZm6vpDc4EQ2pPewOzajb2Ggxfklp9WKhLfblkCJj2f
 JuLr+Q1gy6SQNOz0pCPRkxA7ko2htHOfUWVJqqetMyJwWJ1dMCJEcxeu4
 Y9wHyet8kcwA7UCtpIP8NQYFV+GbFTOCwv+Zu5FHW599/e+VXvHZOcJp9
 00yvneMOuVu2WAjnCluPGG79Vcq4AadserIwSoRmzmjCHx0FuI0a/KeM1
 ng5lP3TsAUsjZlaK09WkdJEMosK5tBM2BQvcbERqkBHYD7m6QUhYFKVfx
 8FwaeB0c8kq+fMkg73cuyHTdqndJ0kAvsmsBiT2aZoxhiX3PAfhVG6mGA Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="279813779"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="279813779"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 12:22:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="636960089"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.59])
 by orsmga008.jf.intel.com with SMTP; 18 Aug 2022 12:22:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Aug 2022 22:22:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Aug 2022 22:22:21 +0300
Message-Id: <20220818192223.29881-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/bios: Rethink LFP data pointer
 generation
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

Turns out the current code for generating the LFP
data pointers doensn't work with certain VBTs, so
switch to just hardcoding the fp_timing table size,
and make the validator a bit more strict just to be
extra safe.

Ville Syrjälä (2):
  drm/i915/bios: Validate fp_timing terminator presence
  drm/i915/bios: Use hardcoded fp_timing size for generating LFP data
    pointers

 drivers/gpu/drm/i915/display/intel_bios.c | 106 ++++++++++------------
 1 file changed, 50 insertions(+), 56 deletions(-)

-- 
2.35.1

