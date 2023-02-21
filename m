Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E706969E16A
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 14:37:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B75A10E166;
	Tue, 21 Feb 2023 13:37:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F086F10E166
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 13:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676986627; x=1708522627;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wVgkZOrExTSshMQcBpFfyF6DU0B71+x4Q08J0cT0KT0=;
 b=Y83fmn+HL52Ef/Hf3JYlPtcbHWjLmIMDD+E9KLNuwhUoIQIjUj1iiuDT
 ni1015uQwPXvISPK4aucBq3dwkFTPFOmIGXIw3bH1fSPO/oYsU27pyox5
 HMv/FPLfs7Ymepi7BmVUWS2w2Ft+GM9wAJ07LkdtJAgGon5QjrN82styi
 GykL74lKjyp1cs+jhAa4z/WJUs89HT6KdFFWmujccdtJlvWm7pWbZHpLG
 uGBr8cGS6FKX5mvD0zqDK81cTBYa7XdSAcEsWj/Bd1Rqd4HhWuU2XkvRb
 6lIJVjbsvis1SgydLTNvpjMztMqTY0iVRRDsVHtzkYNE4C0M79C2EMbdY w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="334826587"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="334826587"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 05:37:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="621500587"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="621500587"
Received: from etrunovx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.214.204])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 05:37:04 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 15:36:33 +0200
Message-Id: <20230221133635.3581561-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 0/2] Implement sel_fetch disable for planes
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

Move plane sel fetch configuration into plane source files and
implement selective fetch disable for planes that are not part of
selective update.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>

Jouni Högander (2):
  drm/i915/psr: Move plane sel fetch configuration into plane source
    files
  drm/i915/psr: Add proper handling for disabling sel fetch for planes

 drivers/gpu/drm/i915/display/intel_cursor.c   | 34 ++++++-
 drivers/gpu/drm/i915/display/intel_psr.c      | 94 +++----------------
 drivers/gpu/drm/i915/display/intel_psr.h      | 10 --
 .../drm/i915/display/skl_universal_plane.c    | 78 ++++++++++++++-
 4 files changed, 122 insertions(+), 94 deletions(-)

-- 
2.34.1

