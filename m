Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA1CCB8F10
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 15:14:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 295F710E7E1;
	Fri, 12 Dec 2025 14:14:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P+AoZa6N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31DAE10E31D;
 Fri, 12 Dec 2025 14:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765548859; x=1797084859;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zvab/ntmEqnv4fl7Gw9BeNWEg68681YIcJZOUKGIFHI=;
 b=P+AoZa6NjH+hWTs6eJahyG5YgBAw1R51QKWFxP9cygq4svSskq4/ztOz
 FV+OneBs7aMbg1J6SSVElrfIl11bIG6iDvLuvkB3/TGGHcjoQrP10pbkK
 NNXCBc28wZ80GKh7BoHZYh7CVrSWrgDCJ1xk93Pcq2eeGjAl9JMua4YwP
 V4fJ7S6S0MdL7ui7wK5rrloIrcKp0+UvUzE6aith1Cq+VVmaxwVcUb6lD
 KwRv8n1LRe8l9PFsXJmWzoIq3ZYZMVvQOybKZZkWXeuGxQ+lLymDUeeji
 XXwVfziGHbqmv5xcPs8mh5WZ+ZpvxfeXkBB+O70oVwTg9C/ktVYwN8p3P A==;
X-CSE-ConnectionGUID: /Wf0/g7zRD+IAuSfQpEBwA==
X-CSE-MsgGUID: le2fh5ttQtmq7rsIiC8QEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="78189059"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="78189059"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:14:19 -0800
X-CSE-ConnectionGUID: bOaWKfAiTy6jpGXQNKRwqA==
X-CSE-MsgGUID: 5+rfTD0BThWzTvzGVrFP0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="197164635"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.39])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:14:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH 0/6] drm/{i915,xe}: clean up parent interface definitions
Date: Fri, 12 Dec 2025 16:14:03 +0200
Message-ID: <cover.1765548786.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Fix some issues spotted by Ville.

Jani Nikula (6):
  drm/intel: fix parent interface kernel-doc
  drm/intel: group individual funcs in parent interface
  drm/intel: sort parent interface struct definitions and members
  drm/i915: sort parent interface initialization
  drm/xe: sort parent interface initialization
  drm/i915/display: group and sort the parent interface wrappers better

 drivers/gpu/drm/i915/display/intel_parent.c  | 45 ++++++++-------
 drivers/gpu/drm/i915/display/intel_parent.h  | 13 +++--
 drivers/gpu/drm/i915/i915_driver.c           | 27 ++++-----
 drivers/gpu/drm/xe/display/xe_display.c      |  2 +-
 include/drm/intel/display_parent_interface.h | 59 +++++++++++---------
 5 files changed, 80 insertions(+), 66 deletions(-)

-- 
2.47.3

