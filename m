Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE995261E1
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 14:30:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2AFB10FA6A;
	Fri, 13 May 2022 12:30:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4575110FA6A
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 12:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652445045; x=1683981045;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NzyBSaIgE1DQiQNS6F/6Ix8QL8gA3yQi2gcWEHwyS2o=;
 b=SR3i3b+7k9jIvKgcpD9Pez9Mz/aY//mzodd8qn33UcMDQcJEDjOCR5S7
 D3yjmbKubx75yfIoduhSH6Oamz9jZnK6dpYP1+47CZ1k2XE2Fp3vP86K/
 61kpUxbCaE6iyyykeoPM+XA6XcO81MCAUlaZp5CQLNWT5hO1l8N+BAe52
 I6PGzNXv701I96gTdo+bQRjEu80cfvlWW97JFWVaJKM4mAeFX6lm69FbW
 Zg3P2Exm2Z9y8Yq7MML3QJF7jcr6nDaqKdXkFaeCzEOSIgMiR1goWa9l5
 OYpTDsTLZbpk4eI0kp/WnWVq5sTsDYMOZpobk/12W3KF+R2b91H88539w Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="333328340"
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="333328340"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 05:30:44 -0700
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="595200700"
Received: from dvkewale-mobl1.gar.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.33.181])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 05:30:42 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 May 2022 15:30:25 +0300
Message-Id: <20220513123027.655313-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/2] Fixes for selective fetch area
 calculation
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
Cc: Mark Pearson <markpearson@lenovo.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently selective fetch area calculation ends up as bogus area in
at least following cases:

1. Updated plane is partially or fully outside pipe area
2. Big fb with only part of memory area used for plane

These end up as y1 = 0, y2 = 4 or y2 being outside pipe area. This
patch set addresses these by ensuring update area is within pipe area
or by falling back to full update.

v4:
 - draw_area -> pipe_src
 - drm_dbg_once dropped and drm_info_once used instead
v3:
 - Add drm_dbg_once* and use it when sel fetch area calculation fails
 - Move drm_rect_intersect to clip_area_update
v2:
 - Update commit message of first patch
 - Set damaged_area x1 and x2 during initialization

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Mark Pearson <markpearson@lenovo.com>

Jouni Högander (2):
  drm/i915/psr: Use full update In case of area calculation fails
  drm/i915: Ensure damage clip area is within pipe area

 drivers/gpu/drm/i915/display/intel_psr.c | 35 +++++++++++++++++++-----
 1 file changed, 28 insertions(+), 7 deletions(-)

-- 
2.25.1

