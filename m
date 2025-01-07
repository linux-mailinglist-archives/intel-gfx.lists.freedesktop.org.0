Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E68AA04924
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 19:22:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D116910E267;
	Tue,  7 Jan 2025 18:22:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C7Lt9L9/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DFD110E267
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2025 18:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736274167; x=1767810167;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wD1+uOtjWzstpQNBj1j2SX9qR6EdYn+xcx8aXZyB2ms=;
 b=C7Lt9L9/PzPYRCCA09Jb+Qf8OFHbxI6kR8Ot5rDZvt8h3/Tj1Fbfs+L5
 /IEh74n9AwcWQYjy5O0l4eopgF/WBhB7iL8iF06N3IGTxzuE9cQa/baZU
 7PaOPMYM/Kk6DlX2IYApJnuNcya+PQsDW/U4/JLmJzy0I4cU3UmZjAXqG
 7+l+XnfYhDaBkYbF5IfXgFOEHr2ZCSF6hhW0bjWK9HaxhwcCcCk4tLy7S
 82GSyYVKrnQkqNuCLZ2zdsS6NQSOaDHbyFkjqI0J9VoI6dyeyJQJ3YEmT
 Mwl/E+RspxKPPAXlI1I47GyeRxKtqQO5iC8XO6KR1QktMduBNy+w+LE8I A==;
X-CSE-ConnectionGUID: P1oCu3e7RayARFemPQsm7A==
X-CSE-MsgGUID: BdbQ/LKBTGOLXIbXc+dS2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="47142080"
X-IronPort-AV: E=Sophos;i="6.12,296,1728975600"; d="scan'208";a="47142080"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 10:22:46 -0800
X-CSE-ConnectionGUID: uNEnqKSSRUqGlAUUQzvtkw==
X-CSE-MsgGUID: rXwt2T+bRLiAZMoe4fvn9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,296,1728975600"; d="scan'208";a="102752318"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 10:22:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Nemesa Garg <nemesa.garg@intel.com>,
 Zhi Wang <zhiwang@kernel.org>
Subject: [CI] drm/i915/gvt: store virtual_dp_monitor_edid in rodata
Date: Tue,  7 Jan 2025 20:22:40 +0200
Message-Id: <20250107182240.1765311-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
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

The virtual DP EDID isn't modified. Add const modifier to store it in
rodata.

Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
Reviewed-by: Zhi Wang <zhiwang@kernel.org>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gvt/display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index 95570cabdf27..c98dfcc3d0de 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -97,7 +97,7 @@ int pipe_is_enabled(struct intel_vgpu *vgpu, int pipe)
 	return 0;
 }
 
-static unsigned char virtual_dp_monitor_edid[GVT_EDID_NUM][EDID_SIZE] = {
+static const unsigned char virtual_dp_monitor_edid[GVT_EDID_NUM][EDID_SIZE] = {
 	{
 /* EDID with 1024x768 as its resolution */
 		/*Header*/
-- 
2.39.5

