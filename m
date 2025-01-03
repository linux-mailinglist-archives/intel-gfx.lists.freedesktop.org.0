Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0869A00418
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 07:06:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D460910E7FD;
	Fri,  3 Jan 2025 06:06:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gVfyIuZd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 999F410E288
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 06:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735884397; x=1767420397;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lwYecPIzZZlfuK5LFGgIpIEHGnT1IRRLLDG8QvKRZxg=;
 b=gVfyIuZdooSl/knDSvg/0fYMG/GRiLFAshK5JqILwNmFWTt00cpjSGpK
 oJuecohGJKzuIW2fKqefHxgMhC0UlyA+KUrOxQSA8wGnJcAOwc2k5aA+i
 AyBxLDgk4IwMxoy3yjEJwcbzJocFG6PbBevs7NKlGQ5z5arhjm+nYsjuz
 HU+KbtgqqZcWSODWu1K+jboc6LI25ygMXPwEe8EgnzREeT4XT9JxIpnQy
 a0z2uv8fik7sxInUKHXWhh9PVSIkaCShEf7gLdQqgweWy6bA8FlYaeWGv
 lERnftCGsK9m0lTo8KNe1yaGuq8L2rVpusk7fEuanXDWf3g2VadgTfIL5 Q==;
X-CSE-ConnectionGUID: 67vyhb6eQ0KhJUOEpe1NRw==
X-CSE-MsgGUID: fisacTmNSUanhVKHbGuRgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11303"; a="40056422"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="40056422"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 22:05:46 -0800
X-CSE-ConnectionGUID: PNDB2eZMTSqaMTpNzXs6IA==
X-CSE-MsgGUID: oTuOqejgQoG4FQYpQwruXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="101557271"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by orviesa010.jf.intel.com with ESMTP; 02 Jan 2025 22:05:43 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: andi.shyti@intel.com,
	Nitin Gote <nitin.r.gote@intel.com>
Subject: [PATCH v1 0/1] drm/i915/gt: Prefer IS_ENABLED() instead of defined()
 on config option
Date: Fri,  3 Jan 2025 11:56:50 +0530
Message-Id: <20250103062651.798249-1-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
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

Use IS_ENABLED() instead of defined() for checking whether a kconfig
option is enabled.

Nitin Gote (1):
  drm/i915/gt: Prefer IS_ENABLED() instead of defined() on config option

 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.25.1

