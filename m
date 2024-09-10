Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0EF97389D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 15:29:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53E5110E107;
	Tue, 10 Sep 2024 13:29:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fhCyCKNs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CFBE10E107;
 Tue, 10 Sep 2024 13:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725974942; x=1757510942;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5e1CMsaYoVzoiSuVGSF2ZnPrmY1/y2CI8sFK2Ci5Pis=;
 b=fhCyCKNs4nXlO6xPSuFfc9FpDNI/kJ1Dwaeb602K5kg2SvG/+utysdWl
 I/oR9sllE/P6D3VaFgl9NA3MIolSOA9c4ofFe+BVxQwgVFMq6wy7862ok
 TMX5Xj+Y41+VsKwYbx0YUT8jiE3RB2Dk/ChWUhgnPe3z3HObul6OPhTtw
 n2+/vpHifiVSAIY8ejhxyw5AOq4YeDeqh2Xkf3l82dzup0A1VsERiR+om
 aNhTGXnoI/Xcr1ipqc4cGGUh4S16tQiyFj6QNGjXMQxFfTt5hsgv1gBBj
 DjuUOeLVJvkCbvLusHFToU4FvSIeWVQEz/1S7TQW117aodL5J61aq8Drp w==;
X-CSE-ConnectionGUID: RbZlLfjHRKST9v9qNUfBFw==
X-CSE-MsgGUID: 0ZPdWaL4QHCbIYXeewlVRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24585428"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="24585428"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:29:02 -0700
X-CSE-ConnectionGUID: cgEvEcj1QAKsirV7YnJkfw==
X-CSE-MsgGUID: yVXE/OHISTOuK6fIfIfG2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="104492785"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:28:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 00/11] drm/i915: register style fixes
Date: Tue, 10 Sep 2024 16:28:44 +0300
Message-Id: <cover.1725974820.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Amended style fixes from [1] in preparation of doing the
display/non-display register split. This doesn't include the actual
split patch from that series, just the prep.

BR,
Jani.


[1] https://lore.kernel.org/r/cover.1725908151.git.jani.nikula@intel.com


Jani Nikula (11):
  drm/i915/reg: fix transcoder timing register style
  drm/i915/reg: fix g4x pipe data/link m/n register style
  drm/i915/reg: fix pipe conf, stat etc. register style
  drm/i915/reg: fix pipe data/link m/n register style
  drm/i915/reg: fix SKL scaler register style
  drm/i915/reg: fix PCH transcoder timing indentation
  drm/i915/reg: fix PCH transcoder timing and data/link m/n style
  drm/i915/reg: fix DIP CTL register style
  drm/i915/reg: fix small register style issues here and there
  drm/i915/reg: remove unused DSI register macros
  drm/i915/reg: remove superfluous whitespace

 drivers/gpu/drm/i915/display/intel_psr_regs.h |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 401 +++++++++---------
 2 files changed, 201 insertions(+), 201 deletions(-)

-- 
2.39.2

