Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D893A8FE0FD
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 10:32:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 268F110E14A;
	Thu,  6 Jun 2024 08:32:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E3oqZ2Gh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BDFC10E0B7
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 08:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717662727; x=1749198727;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aGVqx+PMsWbDWGggJqWdORtYUfixooGPdc4zJHe+OIk=;
 b=E3oqZ2Gh0kqYZdhQLxxIvkbTT+6AzdMgPUVWvurvuLdgkk2X/mRfEYJk
 /BRmxMIXJC3niZw3WF/baA2Mq9GZNuP8A1M/NsEg7kmeVF9+1glwCZXg0
 a2Q+WRPCdjiZgEPK6asjveQ/qhZmut/21JO9TbpZ6e5wgE8iWaT4a8AJB
 ugoM8cQt/La4bmOX3xNih3e/pEKtwuokt2pUZNlQyKqpTZuc5osa/tCig
 F8NHBjHvKWzT1MzphZOlh3KkvrztOMd13u/MB+o8BMZCzCkO/EI5KqYNY
 tfo3ZvUZOrfPjaDJDUXYToyyQDho3VJuLsDk9mBlQ+sTlGDFT7hTO3DVA g==;
X-CSE-ConnectionGUID: 7uJS+2upTfeheA5PEUhi0Q==
X-CSE-MsgGUID: M8skeM/UQVSKjVTvQrnlNQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="24945902"
X-IronPort-AV: E=Sophos;i="6.08,218,1712646000"; d="scan'208";a="24945902"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 01:32:05 -0700
X-CSE-ConnectionGUID: ++PSX+D7RI2U0AviMFrFkw==
X-CSE-MsgGUID: rKCbx++iRomA/EMREpuu7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,218,1712646000"; d="scan'208";a="37805652"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa010.jf.intel.com with ESMTP; 06 Jun 2024 01:32:03 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, arun.r.murthy@intel.com, jouni.hogander@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] Implement WA to fix increased power usage
Date: Thu,  6 Jun 2024 13:59:25 +0530
Message-ID: <20240606082926.1816416-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

When DPKGC is enabled we see an increase in power consumption for
PSR1: When gap between vblank and delayed vblank is >= 6
PSR2: When deep sleep is enabled.
WA adds condition to avoid the above conditions

WA: 16023497226
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/psr: Add return bool value for hsw_activate_psr1
  drm/i915/psr: Implment WA to help reach PC10

 drivers/gpu/drm/i915/display/intel_psr.c | 84 ++++++++++++++++++++++--
 1 file changed, 79 insertions(+), 5 deletions(-)

-- 
2.43.2

