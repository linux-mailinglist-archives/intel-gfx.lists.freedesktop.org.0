Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47622A489DD
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 21:28:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 083F410EB86;
	Thu, 27 Feb 2025 20:28:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PGtR8gjp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B853610EB7E;
 Thu, 27 Feb 2025 20:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740688127; x=1772224127;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=e/Nt3kth49ePp1beC7TmY89ofagFgx6szvs697h6Jyw=;
 b=PGtR8gjpMrNPm+TrvbI2qi5iMOGNcE3RKjIXnid1IQyjcruDEZMZi3/b
 Edr+89Vy3lbIUhGBc2pu6PcESu4ABlBGgTR7ju6ECDugT+eBDauCw8GGP
 8BlhlpfYoBZ4xiMqVqaenBAjqwXHhhibHm/GSYx6oWdVd+xshK/wVR0sT
 NrYasduafx9OUINxuIKf3f2b9ZtuA1zHx9j/OxeJZOvMIUJZGuot0hLjM
 Awp36+OwgAxfjThzLOxZK2IV5/SY5HcViwYNXNf0+06559rSU/K0LABmL
 G0CC9GcW3qGVk0c8krJEf8QD4U+TY3F+yGzAWxRoIG1UJnvUwNa936zlT Q==;
X-CSE-ConnectionGUID: /KnjIzmQSQeLATvzMVkWSQ==
X-CSE-MsgGUID: ChbQ1l2/QYSnVFl7Tqa33Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="41855750"
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="41855750"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 12:28:47 -0800
X-CSE-ConnectionGUID: GsQHmE2mTqST3OXM9MSkfg==
X-CSE-MsgGUID: WkC+dmQDStKEhhfee1nlog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="121724627"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.70])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 12:28:46 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Thu, 27 Feb 2025 17:28:18 -0300
Subject: [PATCH v2 2/2] drm/i915/audio: Extend Wa_14020863754 to Xe3_LPD
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250227-xe3lpd-wa-14020863754-v2-2-92b35de1c563@intel.com>
References: <20250227-xe3lpd-wa-14020863754-v2-0-92b35de1c563@intel.com>
In-Reply-To: <20250227-xe3lpd-wa-14020863754-v2-0-92b35de1c563@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.14.2
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

Workaround Wa_14020863754 also applies to Xe3_LPD. Update
needs_wa_14020863754() accordingly.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 115c30a5ff70063850e45ab40527d1c17d0173b4..ea935a5d94c87202a68f84b28b0152835f47fe73 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -190,7 +190,8 @@ static const struct hdmi_aud_ncts hdmi_aud_ncts_36bpp[] = {
  */
 static bool needs_wa_14020863754(struct intel_display *display)
 {
-	return DISPLAY_VERx100(display) == 2000 ||
+	return DISPLAY_VERx100(display) == 3000 ||
+		DISPLAY_VERx100(display) == 2000 ||
 		DISPLAY_VERx100(display) == 1401;
 }
 

-- 
2.48.1

