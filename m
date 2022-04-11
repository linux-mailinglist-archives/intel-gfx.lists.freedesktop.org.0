Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 362294FBE02
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 16:00:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D38C10EFC9;
	Mon, 11 Apr 2022 14:00:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C61BC10EFC9;
 Mon, 11 Apr 2022 14:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649685647; x=1681221647;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TsMNkeZoBkZ0gwqrW/OkMv2LAgDnYxx0YK5T6jRkfV4=;
 b=OW9O4B65u1DVES80ttST925J0TDVkFZCRBouI61yRqkJ/LQTAaBNp4xJ
 8GT1u6DtpS4M7RK1gpXI7+iqUT0Q9cwwxliJ5zUmcu7dbJL6HVGHcxpwN
 BAp8ITNNXRozgN3B7PfGKjaUVqln0x6FTyPR73ucm5Dovmhxn9L7ott9X
 tLgkIFdcCabBBo1eSST6Xpio9Zzg2eLbOXcOJs67KfK7fFWlGJYqTSKre
 O2cO9vr0V6F70eYaJT9NztRBrYk6/70AztQfIzz+dUF189ZbC4W7STh1X
 OxWqmcMmD5loGeoyAmQHfTiZqL2HQfTutfTDbmnCvPwN7zPEBJU6jFq1a Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10313"; a="261559989"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="261559989"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 07:00:47 -0700
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="551151025"
Received: from lwit-desk1.ger.corp.intel.com (HELO localhost) ([10.249.143.43])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 07:00:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 11 Apr 2022 17:00:23 +0300
Message-Id: <cover.1649685475.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v3 00/12] drm/edid: low level EDID block read
 refactoring etc.
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v3 of [1] fixing the (!x == 0) mistake. Resending the entire thing with
hopes the test robot picks up the baseline better; I haven't had much
luck with --in-reply-to for that.

BR,
Jani.

[1] https://patchwork.freedesktop.org/series/102329/

Jani Nikula (12):
  drm/edid: convert edid_is_zero() to edid_block_is_zero() for blocks
  drm/edid: have edid_block_check() detect blocks that are all zero
  drm/edid: refactor EDID block status printing
  drm/edid: add a helper to log dump an EDID block
  drm/edid: pass struct edid to connector_bad_edid()
  drm/edid: add typedef for block read function
  drm/edid: abstract an EDID block read helper
  drm/edid: use EDID block read helper in drm_do_get_edid()
  drm/edid: convert extension block read to EDID block read helper
  drm/edid: drop extra local var
  drm/edid: add single point of return to drm_do_get_edid()
  drm/edid: add EDID block count and size helpers

 drivers/gpu/drm/drm_edid.c | 350 ++++++++++++++++++++++++-------------
 1 file changed, 225 insertions(+), 125 deletions(-)

-- 
2.30.2

