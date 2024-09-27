Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD3398872C
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 16:35:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1B9110EC67;
	Fri, 27 Sep 2024 14:35:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kQhz97mL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86C6310EC67
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2024 14:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727447748; x=1758983748;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nY7KGEo5+550AdKkKlveQwG2HEYE2rOXESYVYdZEoUg=;
 b=kQhz97mLwYBYcWnkTHab2bRnlSvZaHW3cnax8f/rq0zML8PgvmjNmhEy
 nNUIKC7Ss42yJiRXB1GveVmPX/JdU179aU1lqfC08wO66Uamwu7N1paCz
 tEHnSWPzf4iT0AibmVOARrYYimrPq0NeIPpLvOJwzNd6kv0QHnPVbek1r
 2t3i8SJCEQFvOC8tkClDUFVM8M6CN963v5hd7uSypdbSWWNQyg4tZ13Fz
 WRpYcOd59huzhmvfCGD/Myyg89HHIqcPv1B0PUSZHfYj2iyEgydWqK+vP
 kAx4X6DQBoI9f5rw32RVYWxahz5r09Lyvf6BFuT/B1KfopN2RwUIb8+pt Q==;
X-CSE-ConnectionGUID: DiifhBucSmm5U9ywXppOcw==
X-CSE-MsgGUID: c9Zx0NqKSOquWpsjO5D8Qg==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="26102292"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="26102292"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 07:35:48 -0700
X-CSE-ConnectionGUID: rfIE7gzoRba7lUfW0Vkwbg==
X-CSE-MsgGUID: LwqoSzwWSs6sO1H0ZSNl/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="72712113"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Sep 2024 07:35:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Sep 2024 17:35:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] drm/i915: Use the gen3+ irq code on gen2
Date: Fri, 27 Sep 2024 17:35:41 +0300
Message-ID: <20240927143545.8665-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
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

Eliminate the special gen2 irq code by simply reusing the
gen3+ code on gen2. Works just fine on actual hardware.

I generated the last patch with -U20 to help with review.
Unfortunately it still didn't pick up i915_irq_handler()
I don't suppose there's a magic knob to tell git diff
to include a specific function wholesale in the context?

Ville Syrjälä (4):
  drm/i915: Introduce i915_has_legacy_blc_interrupt()
  drm/i915: Clean up gen3 hotplug irq setup
  drm/i915: Clean up some comments in gmch irq code
  drm/i915: Switch over to gen3 irq code on gen2

 .../gpu/drm/i915/display/intel_display_irq.c  |  38 ++--
 .../gpu/drm/i915/display/intel_display_irq.h  |   1 -
 drivers/gpu/drm/i915/i915_irq.c               | 202 ++----------------
 3 files changed, 28 insertions(+), 213 deletions(-)

-- 
2.45.2

