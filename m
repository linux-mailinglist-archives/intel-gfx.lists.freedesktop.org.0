Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A70151F539
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 09:24:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85E5510EF36;
	Mon,  9 May 2022 07:24:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0C5710EF23
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 07:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652081055; x=1683617055;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wUzYEkKrMLjy8Td2OtgPEMcIJwQNns7QxVrs3PzBiAk=;
 b=SnaSGGUTsX8gOXbYG9GoiGTOHBiaehWzb9q3MJu+Uvdn8PHuc9aOhx6M
 TaQ14RaXJcNhieMmfvJMjPNrm7s9eKcp0KdHh5CZU9iVl85sYnJ8vhj4G
 DKBEfdM9/G+Tl2ejosh2ByZTocEw9sURMfeCfQ0agOnbDGVqZhkwEIqS2
 ZTa6TB01QsBmZyeFGTZwRmujuKEHYrhiSXVTF6NIfPV4SRgYtBdizF805
 uABJeFRO/OSwZVx3n9djGTTtsJCodqUxQ7EKCH9P6DmgmO9KG+yRGHWpQ
 uxd2TkHhBqDoBfirxC85I4mv0v/6YbRAzAbxxPJGw/YvJcEcj4xTjxCbT Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="249503518"
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="249503518"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 00:24:15 -0700
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="710390631"
Received: from jparmijo-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.219.202])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 00:24:13 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 May 2022 10:24:02 +0300
Message-Id: <20220509072404.1423018-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] Fixes for selective fetch area
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
and falling back to full update.

v2:
 - Update commit message of first patch
 - Set damaged_area x1 and x2 during initialization

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Mark Pearson <markpearson@lenovo.com>

Jouni Högander (2):
  drm/i915/psr: Use full update In case of area calculation fails
  drm/i915: Ensure damage clip area is within pipe area

 drivers/gpu/drm/i915/display/intel_psr.c | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

-- 
2.25.1

