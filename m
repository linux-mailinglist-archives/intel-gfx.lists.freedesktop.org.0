Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B6E6FEB6D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 07:58:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49B4010E1C2;
	Thu, 11 May 2023 05:58:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFBD010E1C2
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 05:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683784721; x=1715320721;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DgYh9CCjvDiQxPBlmm91/nDEvgJO9yrC6u1RP7fyIGQ=;
 b=UjwMIi8NCNKfVyczRkb4crz11j9L1CAtaXqLhj0cJGt1KhoYT5YOU3xn
 +yYT8kKdRYaMvJPN/XcnUZyRf06X++66g+H6Q+JfV5Kb6NDm2yu7OintI
 7L34/njxeqmiZhKCggVL+Qwt20JMBO8pHd2G0SYe3qqoj2Yn/ewbBq+wO
 lqFDeS1AXzzt5ny1AWlGdg0QLCjqd3M0BV4lkaKJNYJY3lERFxKjELk6b
 nnRuhTTU8gBQ7LlOeyrgEfHxox8c/lnbWb/y3qErgULisghOEwFyiCgVt
 ILFuReLt3CtEUxy2bT3ruqLCk+G7cd9tDqWG6ABLk0sorm9uWhD3J70S/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="334881296"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="334881296"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 22:58:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="946004135"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="946004135"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga006.fm.intel.com with ESMTP; 10 May 2023 22:58:39 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 May 2023 11:27:03 +0530
Message-Id: <20230511055705.611809-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Fix modeset locking issue in HDCP MST
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

HDCP MST scenario sees modeset locking issue ever since
topology_state was added to drm_atomic_state and all modeset
locks were being taken for us causing a locking issue to occur
when we iterate over connectors to assign vcpi id, the fix
being to pass acquire_ctx to drm_modeset_lock 

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/hdcp: add intel_atomic_state argument to hdcp_enable function
  drm/i915/hdcp: Fix modeset locking issue in hdcp mst

 drivers/gpu/drm/i915/display/intel_ddi.c      |  5 ++-
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 38 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_hdcp.h     |  6 ++-
 5 files changed, 32 insertions(+), 23 deletions(-)

-- 
2.25.1

