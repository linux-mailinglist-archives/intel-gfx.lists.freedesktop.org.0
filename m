Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B81188921DF
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 17:41:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 131B310E24E;
	Fri, 29 Mar 2024 16:41:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NFGYdBuu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C73A10F2E7
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 16:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711730502; x=1743266502;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nIjidvLgDAgjYlG5vo0U3rdMDA7DzsUhMU1R6lXcwck=;
 b=NFGYdBuu4yzPHydIGJw5A4jRDUT+qAMQ1Si5mspWFHhlTdV5BrFVjVky
 U2LDkbd2WLKzzq00erGweZkG0ThRbBEp3gg3ow7Muy15khXuyNt668EO2
 iPtEOK+aeVPnmpmB6et/KsxUn6fR06khRW63Yt3JHcteAykZH9cYnnkWT
 1eWmbRxlkGD7wbvGI6PSZN0YHI9jKHJ2bT9/e0HsaWCcTZeG4h1vtVP4O
 3uIKcTT/vl+HvXLXuIBXQvXX68sPY8Dst93hNfonJrjnMSimSIhSy6+5F
 KfUL/LilZPyO6Cd3Ud14+yf/BWNjodokqMYNhQ5sthPlamoLZkQx/D8gL A==;
X-CSE-ConnectionGUID: RtNlvB5TTqO+5bjZovAhLw==
X-CSE-MsgGUID: PF6n3TOwTlShku4UwNgCxg==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="7041464"
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; 
   d="scan'208";a="7041464"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 09:41:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="17433376"
Received: from unknown (HELO intel.com) ([10.247.118.231])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 09:41:35 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, Andi Shyti <andi.shyti@kernel.org>
Subject: [PATCH v2 0/2] Add support for partial mapping
Date: Fri, 29 Mar 2024 17:39:57 +0100
Message-ID: <20240329163959.791865-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.43.0
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

Hi,

this series based on a previous work from Chris adds support for
partial mapping.

A preparatory patch was needed in order to set the vm_pgoff when
mapping frame buffer objects. Indeed I was receiving a negative
offset at first.

Andi

Changelog:
==========
v1 -> v2:
 - Enable support for CPU memory
 - Increment vm_pgoff for fb objects

Andi Shyti (2):
  drm/i915/gem: Increment vma offset when mapping fb objects
  drm/i915/gem: Calculate object page offset for partial memory mapping

 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 12 +++++++++---
 drivers/gpu/drm/i915/i915_mm.c           | 12 +++++++++++-
 drivers/gpu/drm/i915/i915_mm.h           |  3 ++-
 3 files changed, 22 insertions(+), 5 deletions(-)

-- 
2.43.0

