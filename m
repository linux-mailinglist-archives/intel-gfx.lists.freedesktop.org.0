Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 956FB84E3CC
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 16:17:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23BE410E883;
	Thu,  8 Feb 2024 15:17:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MfVzZBHz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E427F10E883
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 15:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707405447; x=1738941447;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/2MD45kFwy0W7RI9Gp46AQyRSxkf5Y+5EAlDJ/aZ1HI=;
 b=MfVzZBHzF68riPanz9CRasbZj2eEbOCVoIJDsP9VnDOEHrcqIaiRwc0+
 55RnlABZPN+MIY546mrpSiT9dxa4II4Y09lkEVZys5RjkGujQiIHvhldl
 U3UKbSipkD8NOzwozCFj78l8mZqwpgntpOL/ZK79smzaFqQDjOVoVcjQc
 U1cKNy81lFasGgpRT9pP2TtWN7gjDBoZ8NuQXL9JhMAFFiXqb6FKUfe5R
 TZXzPAAcZGYDTs90p0XsYPgQckYYrVPELhw7qVfq+dQlKPcQBOjn6V4XR
 F2jIDPNL4dt/2AWZr6r5vilg0tkGVdV16SFfC1pgcD7BcFhGNHmKLlYLw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="4219155"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="4219155"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 07:17:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="824863645"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; d="scan'208";a="824863645"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Feb 2024 07:17:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Feb 2024 17:17:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 01/13] drm/i915: Correct for_each_old_global_obj_in_state()
 arguments
Date: Thu,  8 Feb 2024 17:17:08 +0200
Message-ID: <20240208151720.7866-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
References: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
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

for_each_old_global_obj_in_state() gives us the old state, not the
new state. Correct the name of the macro argument.

Note that while the argument was misnamed the macro did work
correctly regardless.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_global_state.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_global_state.h b/drivers/gpu/drm/i915/display/intel_global_state.h
index 5c8545d7a76a..6506a8e32972 100644
--- a/drivers/gpu/drm/i915/display/intel_global_state.h
+++ b/drivers/gpu/drm/i915/display/intel_global_state.h
@@ -37,11 +37,11 @@ struct intel_global_obj {
 	     (__i)++) \
 		for_each_if(obj)
 
-#define for_each_old_global_obj_in_state(__state, obj, new_obj_state, __i) \
+#define for_each_old_global_obj_in_state(__state, obj, old_obj_state, __i) \
 	for ((__i) = 0; \
 	     (__i) < (__state)->num_global_objs && \
 		     ((obj) = (__state)->global_objs[__i].ptr, \
-		      (new_obj_state) = (__state)->global_objs[__i].old_state, 1); \
+		      (old_obj_state) = (__state)->global_objs[__i].old_state, 1); \
 	     (__i)++) \
 		for_each_if(obj)
 
-- 
2.43.0

