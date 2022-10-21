Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8EF606C72
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 02:20:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ED7F10E500;
	Fri, 21 Oct 2022 00:20:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDDF610E524
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 00:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666311622; x=1697847622;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k2IQalHkXjLNqroHQfsoznhqQDfVGREsNXQGyJLLEKk=;
 b=Gb6s22gPOihsIlneRh8fqsn4Mq+g2RQHRrYQ0B2LRRYaez9/cBTz3Pto
 OaLG7BIbmmsIPN6dQG/90ES9LOf7QJuba4gqgnhvQEYbcZVkzbNkZ35V1
 6Htz4sjueEA7Mj4naNWr3FnSXsl1fnTOyRlNlCl6t+1n5wBa8a4VchDvr
 sr4n5Cm8VFzStTcVFzFFXE/yFuf4O/p9j/qINUM+k3PCR6JGJV58mrEfk
 1MTKj4lbXZJ8Ee3AA6bWVpWjtEk4EOM6+UGOl735aJaQ6xajTi5y8jzFW
 xeYzpGUIV1lEJjbKoX2hCoW8cr4Bt4SO045l0QsInmOEmXWnHPBnaxnhS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="307971568"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="307971568"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 17:20:21 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="805232099"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="805232099"
Received: from aclausch-mobl.amr.corp.intel.com (HELO
 anushasr-mobl7.intel.com) ([10.212.253.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 17:20:20 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 17:20:20 -0700
Message-Id: <20221021002024.390052-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Prep series - CDCLK code churn
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
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

No functional changes. The series is more of a prep series
for the mid_cdclk_config series:
https://patchwork.freedesktop.org/series/109694/

Main change:
 - Change usage of "crawler" and "squasher". Use crawling and
squashing instead.
 - Handle bot hsquash and cralw similar in terms of checking
if the platform supports them or not. With the changes introduced,
both are a display feature flag.
 - Move code from bxt_set_cdclk() to make it more modularized
and easy to read and understand.

Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

Anusha Srivatsa (4):
  drm/i915/display: Change terminology for cdclk actions
  drm/i915/display: Introduce HAS_CDCLK_SQUASH macro
  drm/i915/display: Move chunks of code out of bxt_set_cdclk()
  drm/i915/display: Move squash_ctl register programming to its own
    function

 drivers/gpu/drm/i915/display/intel_cdclk.c | 80 ++++++++++++----------
 drivers/gpu/drm/i915/i915_drv.h            |  1 +
 drivers/gpu/drm/i915/i915_pci.c            |  1 +
 drivers/gpu/drm/i915/intel_device_info.h   |  1 +
 4 files changed, 48 insertions(+), 35 deletions(-)

-- 
2.25.1

