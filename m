Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 606428764C1
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 14:11:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5D8510F9EB;
	Fri,  8 Mar 2024 13:11:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NPMEiCvh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C63510F9EB
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 13:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709903510; x=1741439510;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+/6jmdYjwdjdDCG3rToOHPgDjCPdnzUd1bbQkC6MTWk=;
 b=NPMEiCvhJMEbN32F6zv18yCdt1TZ9JRW8mxaIrEE9GZZzJb/ZwxfNTbR
 /0uPajLVT21/k942okfQAUnmphr163vxKzNm5rPODCIHdpTXKPFxWUYGu
 5k5oFXZiYpVFxs2xSOyExyPeL6yAqI/zDjXtO0LLrlvq+Qxl1jCXwwgB/
 1uFM179iql14AGtj5H9EjuvsHMWq7tDb/o3WwJSqGeb+3GjHvzM5Y4iJ4
 N68oGFI/4W9IQC3yU4yGCA2l0QwTbXisKEQi4WJ2NcLOvtKTRG9laUeFX
 TEBi7EqE7BRFxmhL4j9icP3Y1J05/89XGH82rd9XcfTIdbWj7Sb3SthYP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4760569"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="4760569"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 05:11:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="10470369"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orviesa010.jf.intel.com with ESMTP; 08 Mar 2024 05:11:48 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com, vidya.srinivas@intel.com
Subject: [PATCH 0/6] Bigjoiner refactoring
Date: Fri,  8 Mar 2024 15:11:40 +0200
Message-Id: <20240308131146.32714-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are few things we need to do for bigjoiner, in order
to improve code maintenance and also make testing for Bigjoiner
easier.
Those series contain addition of bigjoiner force debugfs option,
in order to be able to force bigjoiner even if there is no display
support, also we refactor pipe vs transcoder logic, as currently
it is a bit scattered between *_commit_modeset_enables/disables
and *_crtc_enable/disable functions. Same applies to encoders.
We made a decision to handle all the slaves in correspondent master
hook, so slaves and slave checks no longer would be in modesetting
level logic.

Stanislav Lisovskiy (5):
  Add a small helper to compute the set of pipes that the current crtc
    is using.
  drm/i915: Extract intel_ddi_post_disable_hdmi_or_sst()
  drm/i915: Utilize intel_crtc_joined_pipe_mask() more
  drm/i915: Handle joined pipes inside hsw_crtc_disable()
  drm/i915: Handle joined pipes inside hsw_crtc_enable()

Vidya Srinivas (1):
  drm/i915: Allow bigjoiner for MST

 drivers/gpu/drm/i915/display/intel_ddi.c     |  86 ++++---
 drivers/gpu/drm/i915/display/intel_display.c | 231 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_display.h |   8 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  17 +-
 4 files changed, 195 insertions(+), 147 deletions(-)

-- 
2.37.3

