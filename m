Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BDD88F03C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 21:36:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BD2E10FFEA;
	Wed, 27 Mar 2024 20:36:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VnoSf6zH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FC3B10FFEA
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 20:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711571779; x=1743107779;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Lz4wkTRHqS0h6ta/1E8fmyaHvWE5AdLNRw9K9Oh8VtA=;
 b=VnoSf6zH6Iqpju/tidDpJO1zM6c47s5+dPlHpP+pQmeZJv8a5K6KNfor
 W1ZmVZMYuqDPE4l7+dWBdz2UfwGhdUuzJPR7hFNd312Oi33Deg6nABGZ8
 qLYN3lqO1heEV0nH/U/n3yAr78VBQX3m6J+V/QVApoP+bXaYOHz2Z6pCB
 TTYFoPYQxlGg7Jna2jMyhaY/Qc/FJTigkDM+lciOzqnfDSqlguDVIOrKP
 rchyg/qYPkGCSyxOSTlwtM5ZRivvBX9lvuz0EOEPJshdUp4erI53EF/Zt
 HCEILYvI9CTYjAYodGmTCTc7vamUVM2O90sI7j1NWPeUsZaiJtHcmeaAf w==;
X-CSE-ConnectionGUID: F/AdUi6zRCmRNmBOMQwyrw==
X-CSE-MsgGUID: mhqp922bQQKIQijYG3HXvQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="29181654"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="29181654"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 13:36:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="827785972"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="827785972"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 27 Mar 2024 13:36:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Mar 2024 22:36:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/2] drm/i915: A few bigjoiner fixes
Date: Wed, 27 Mar 2024 22:36:14 +0200
Message-ID: <20240327203616.20502-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Refuse bigjoiner+port sync as it's completely broken,
and also fix a potential state mismatch once we do
get MST/port sync + bigjoiner support.

Ville Syrjälä (2):
  drm/i915: Disable port sync when bigjoiner is used
  drm/i915: Fix intel_modeset_pipe_config_late() for bigjoiner

 drivers/gpu/drm/i915/display/intel_ddi.c     |  1 +
 drivers/gpu/drm/i915/display/intel_display.c | 46 ++++++++++++++------
 2 files changed, 33 insertions(+), 14 deletions(-)

-- 
2.43.2

