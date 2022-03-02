Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0604CA610
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 14:33:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDF5010E1DE;
	Wed,  2 Mar 2022 13:33:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5C6110E1DE
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Mar 2022 13:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646227996; x=1677763996;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Mmfc19oZUOxaux4craxGxyVwK4OkGw3516Jm90gWX0c=;
 b=PDXuJoK/tuvA0T+QHvqFTGPRDFmorGmwAzS7NryriSD1aEjuCalsMdVr
 Nq8ztnx+qIa350UV0OFKT9u9xrrMrQojiXHKMgW5H1d8JAM43e9n8prtm
 vqxtFKjVgPXCK0IsFVFdk3Afc8vxVLSqtHPN90gAVvZACqtkCHeRb1Zrk
 vFaEgYR3ZkGcjEscHI1x5IkugF5OopPxfvliIsrDRKWrAeChS9Nh0CNZ9
 P+PSLJQtX7WtPjcMpmJ+8IVRzqz9LyC0ZoY5PyWmJ4WjO0X8kVcHLgPLp
 fd6tmU0eTz5cL44TP1h62Fzdb2LlAMD/8jwoS5gvohBI6sOwolKJzzl8J Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="240813972"
X-IronPort-AV: E=Sophos;i="5.90,149,1643702400"; d="scan'208";a="240813972"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 05:33:16 -0800
X-IronPort-AV: E=Sophos;i="5.90,149,1643702400"; d="scan'208";a="551251428"
Received: from tlambe-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.51.133])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 05:33:14 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Mar 2022 15:33:02 +0200
Message-Id: <20220302133304.82717-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 0/2] Remove frontbuffer tracking from the
 gem code
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We should now rely on userspace doing dirtyfb. There is no need to
have separate frontbuffer tracking hooks in gem code. 

It was found out that fbdev code calling intel_frontbuffer_invalidate
caused psr being left disabled. Tackle this by removing
intel_frontbuffer_invalidate calls from intel_fbdev code.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: José Roberto de Souza <jose.souza@intel.com>

Jouni Högander (2):
  drm/i915/fbdev: Remove frontbuffer tracking calls
  drm/i915: Remove all frontbuffer tracking calls from the gem code

 drivers/gpu/drm/i915/display/intel_fbdev.c   | 62 ++------------------
 drivers/gpu/drm/i915/display/intel_overlay.c |  2 -
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c  |  2 -
 drivers/gpu/drm/i915/gem/i915_gem_domain.c   |  5 --
 drivers/gpu/drm/i915/gem/i915_gem_object.c   | 24 --------
 drivers/gpu/drm/i915/gem/i915_gem_object.h   | 16 -----
 drivers/gpu/drm/i915/gem/i915_gem_phys.c     |  7 ---
 drivers/gpu/drm/i915/i915_gem.c              |  5 --
 8 files changed, 4 insertions(+), 119 deletions(-)

-- 
2.25.1

