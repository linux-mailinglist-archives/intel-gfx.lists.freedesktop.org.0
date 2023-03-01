Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C98F6A70CF
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 17:24:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0068110E304;
	Wed,  1 Mar 2023 16:24:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E216110E304
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 16:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677687892; x=1709223892;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1sbz0MbWDq513Dkcf49BHNBTkfL4Xs9D8YMAiJPZ7lY=;
 b=NoM5605MzrVNRAARWsBIg5XxRN2IJTkGY13xL2DKFpcTQdSBtKVxsewA
 25JA7cIpwHjrMQvXrgBSp2AP4al8e2qZMkcue07apslSFEDA+s7ReWTvU
 nmTJFEEAGn00EUotAQ0E6kQppsxiGGL2LU3XGz2rv0ewu8fQWx99N8xwY
 r3Zh605ZkLnSq0r8ackgIChtwMUr+XbCrzvKhVMvc7Vwr9DvFsPGTPuuC
 M6sUt5i9ZwJyhHSqL9wzsCci1BfDzfbVYACfaZhVhp+2uMKodSX+o+kaX
 mkVI4amXU8dj5GqLC6+XEGmY9h6cEUgmLujmnvPwK9FRyH0MkwDbVxnqW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="335944151"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="335944151"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 08:24:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="674624112"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="674624112"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 01 Mar 2023 08:24:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Mar 2023 18:24:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Mar 2023 18:24:47 +0200
Message-Id: <20230301162449.26672-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/2] drm/i915: vblank stuff
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

Remainder of the vblank length/start stuff, rebased to deal
with the watermark max_level vs. num_level changes.

Ville Syrjälä (2):
  drm/i915: Extract skl_wm_latency()
  drm/i915: Reject wm levels that exceed vblank time

 drivers/gpu/drm/i915/display/skl_watermark.c | 155 +++++++++++++++++--
 1 file changed, 140 insertions(+), 15 deletions(-)

-- 
2.39.2

