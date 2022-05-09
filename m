Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D605B52013F
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 17:35:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AF9810EA16;
	Mon,  9 May 2022 15:35:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0836B10EAED
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 15:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652110534; x=1683646534;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bjRjhVvXsELPaceDZnmRAWp/klJiEp8OedCK3i8JhJk=;
 b=nCF2nn6s4MhmjxFSFSV8BKhshYzWo1ond+2BRKAth98DXVTTMcZeks+h
 tX2ZMFAhBWvqs/rWVX1KXTz+VF8C/0HUvR+TB483tFj/qh0GZKqrqWu47
 LCForp7jixKm1AB+D8W8KQLfF4bFMbTaON6NCUGOCGHqeb4EeZUUijYQf
 DNSeZMLc0lVLl1eV7tpUP8Kyudi5p6R++KpSkrDS3+fEYh4HVNaIZBN6c
 vVapk8KwOBE1mzB+jlhD6A7CO5/1mCUWxn4on3s1lJxKXGZ1vj1K5Ove7
 aYtJ07+WFm2vT19dnI3eM4ouOsQdNyYZQGbGHtHezKYcPDnfKuMji9/q9 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="248986934"
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="248986934"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 08:35:33 -0700
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="541225315"
Received: from pallabim-mobl2.gar.corp.intel.com (HELO
 smullati-desk.gar.corp.intel.com) ([10.213.119.105])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 08:35:30 -0700
From: Mullati Siva <siva.mullati@intel.com>
To: intel-gfx@lists.freedesktop.org,
	siva.mullati@intel.com
Date: Mon,  9 May 2022 21:05:15 +0530
Message-Id: <20220509153516.85099-1-siva.mullati@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] drm/i915/guc: Refactor slpc shared data
 access to use iosys_map
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Siva Mullati <siva.mullati@intel.com>

Ver2: remove accessing drm_cflush for io memory

This is continuation to the original patch series to use iosys map
APIs to use slpc shared data commands and descriptors.
https://patchwork.freedesktop.org/series/99711/

Siva Mullati (1):
  drm/i915/guc: Convert slpc to iosys_map

 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 82 +++++++++++--------
 .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |  5 +-
 2 files changed, 50 insertions(+), 37 deletions(-)

-- 
2.33.0

