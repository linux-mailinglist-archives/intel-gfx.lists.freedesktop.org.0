Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9226A00385
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 06:17:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B7B410E271;
	Fri,  3 Jan 2025 05:17:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="naleSnfg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14EA310E271;
 Fri,  3 Jan 2025 05:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735881457; x=1767417457;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jBwRHdS0JPTsPnBIQtPyZOamHMgNNphRWzfj7NzhxaY=;
 b=naleSnfgtk/KZ4YfqYmyF5Ub0/Svs10wKeCn62XX9ypGXGr3/6ZT/H6m
 H/h9/QjP1RPfmD794dyjLq8oLr6mQQuWvmyTaofg7wSBRE3pESKxpKYW0
 Ms9rMYBI9Tf/JRvt1taLV7a0gTjPe2w2ri0hWAG3uJ6yGejlLAKNPugd9
 2qWQw3yiC7bfAbv5Vkrxq3Hc4LdLLaeNZl1pJTwcn+wz5ZgjclVTkQXjl
 4PVgMvwaZQTfftI86YicVhvAVoWusj/9Krlwp7lwT1QnGKTnxjXfzMR55
 mKxrdz+r2zMof0y+2ztUhUGrcLasnDJFlFdyMmMpnNx2n4oIIif4fr+xY g==;
X-CSE-ConnectionGUID: MRQUHPc9Q56qBjdKP2mkoA==
X-CSE-MsgGUID: akZMx7NDQoCKhSkYoeAN4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11303"; a="35429845"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="35429845"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 21:17:36 -0800
X-CSE-ConnectionGUID: l8pDwllcSjWkUpA460SR/A==
X-CSE-MsgGUID: rIIYVL/LQ5a4ssqQcIjKXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="106734469"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa003.jf.intel.com with ESMTP; 02 Jan 2025 21:17:35 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, chaitanya.kumar.borah@intel.com,
 dnyaneshwar.bhadane@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] Clean and Optimise mtl_ddi_prepare_link_retrain 
Date: Fri,  3 Jan 2025 10:47:03 +0530
Message-Id: <20250103051705.145161-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

While going through code of mtl_ddi_prepare_link_retrain which calls
mtl_port_buf_ctl_program I saw some potential cleanup and optimization
that could take place i.e the i915 to intel_display usage and using
intel_de_rmw instead of the intel_de_read, add mask and then
intel_de_write sequence. This patch series implements them.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/dp: Use intel_display instead of drm_i915_private
  drm/i915/ddi: Optimize mtl_port_buf_ctl_program

 drivers/gpu/drm/i915/display/intel_ddi.c | 25 ++++++++++++------------
 1 file changed, 12 insertions(+), 13 deletions(-)

-- 
2.34.1

