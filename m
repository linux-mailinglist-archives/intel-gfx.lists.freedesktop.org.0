Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CA59975D9
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 21:43:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACACF10E7F6;
	Wed,  9 Oct 2024 19:43:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k3IkkJlf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E853310E7FA;
 Wed,  9 Oct 2024 19:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728503011; x=1760039011;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yAGKy1IR1l5wMtEYQj/yUdzDZUfXVi0/iogWkBs5bjs=;
 b=k3IkkJlf3jmLxkyb50JwqSU9ySQrVzH88KnybDGyd+4RVIUrPSWDBtLy
 RRELF2kf2+uT+wot8fgFkhH4u9Idn0cfbYly0W4N+xsuZOs3JkFbL+yyQ
 E3iWpqtXEzbfXqle7CdJVe3veFDfLPYc0iObrSIchhQe00KKVm8VoaXIi
 0M1xdkgbmi410e5iNghd+Zm64s5TC2UKCVX2CkJYSB1YrtdINXx6O8HYd
 jeKJBTYLtvuFIo07/Ywed6qjUOM75PhG8cl2Hg5nd4k+KNawaArLok5l2
 yqJmQOpIVVQS9MUJ248Z7NXh8ivgiixVoIYe7Nc/mmLD9o/Dbh7ffKOkp g==;
X-CSE-ConnectionGUID: kHsUwXfMTqeQ5wzcQiaoZg==
X-CSE-MsgGUID: 60L8cI+IStevBazhEMBlYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27947095"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="27947095"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 12:43:31 -0700
X-CSE-ConnectionGUID: Hy6PD3usTFeg5gxmietPdw==
X-CSE-MsgGUID: aiR7angxTGe5YJ5RN5yPlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="81371464"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 12:43:29 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Subject: [PATCH v2 0/4] drm/xe: Fix HPD interrupt enabling during runtime
 resume
Date: Wed,  9 Oct 2024 22:43:54 +0300
Message-ID: <20241009194358.1321200-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
MIME-Version: 1.0
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

This is v2 of [1], fixing a failure in igt/kms_pm_rpm/universal-planes
reported by CI.

[1] https://lore.kernel.org/all/20241007140531.1044630-1-imre.deak@intel.com

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>

Imre Deak (4):
  drm/i915/dp: Assume panel power is off if runtime suspended
  drm/i915/dp: Disable unnecessary HPD polling for eDP
  drm/xe/display: Separate the d3cold and non-d3cold runtime PM handling
  drm/xe/display: Add missing HPD interrupt enabling during non-d3cold
    RPM resume

 drivers/gpu/drm/i915/display/intel_dp.c       |  8 ++++++--
 drivers/gpu/drm/i915/intel_runtime_pm.h       |  8 +++++++-
 .../xe/compat-i915-headers/intel_runtime_pm.h |  8 ++++++++
 drivers/gpu/drm/xe/display/xe_display.c       | 20 ++++++++++++++-----
 4 files changed, 36 insertions(+), 8 deletions(-)

-- 
2.44.2

