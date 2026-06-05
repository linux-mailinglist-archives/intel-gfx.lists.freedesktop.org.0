Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bQ7bCJ6MImodaAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 10:45:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E47CF646829
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 10:45:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ZRpW+aaN;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6695211A5D2;
	Fri,  5 Jun 2026 08:45:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14F9011A5D2;
 Fri,  5 Jun 2026 08:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780649115; x=1812185115;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8BZral/ufZYm5MOkiCtN6K3rXp5dSJHd9NZk5DEnxv4=;
 b=ZRpW+aaNUMqBKwdd2lJSKINhycCDOaBUnzHJSV1ZIkUfvRgaeCqL+orV
 HefBtUO2gUY9Gw9a5Nk+vzqc5424VMDNCqtWC7uVI57ao+8q79d7XbR/Q
 5bb4qjv9JRlIGm19HKeF40NhlMKeQ4DArVq8Pna7+x9frN0Jf1avRHb/x
 72AiPUpqCnxt/iIXNu5HzpQkBQerZtgegbzDBJ71DyX0mwJ3FPde6INo+
 EU6kvB4l2mor2uCTwWGDsnbQ4lxosS7g9hLLUBHP9UUyM56pddU/8tMCM
 DIS87FCjDH2KRnD05DL9gQAZNrl9OpLQVAzLrhSXqs9TqR8RIkBRyeL+A w==;
X-CSE-ConnectionGUID: doFmhLLLQn2XzNAQ/RlMnw==
X-CSE-MsgGUID: nElTjIq9Te2+y4/D1zgKnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="81666415"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="81666415"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 01:45:15 -0700
X-CSE-ConnectionGUID: oISHyb1ZRPismPoFWPRaVw==
X-CSE-MsgGUID: RzO6VdrmTl+3wgiW7pTijQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="246624157"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 01:45:13 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com, jani.nikula@linux.intel.com
Subject: [PATCH v5 05/14] drm/i915/display: Add HAS_DC3CO() macro
Date: Fri,  5 Jun 2026 14:14:12 +0530
Message-ID: <20260605084421.3912865-6-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260605084421.3912865-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260605084421.3912865-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E47CF646829

Add HAS_DC3CO() to identify platforms supporting DC3CO.
DC3CO is supported from display version 35 onwards.

BSpec: 75253
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 12e5a522a299..f61c930ab079 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -159,6 +159,7 @@ struct intel_display_platforms {
 #define HAS_CUR_FBC(__display)		(!HAS_GMCH(__display) && IS_DISPLAY_VER(__display, 7, 13))
 #define HAS_D12_PLANE_MINIMIZATION(__display)	((__display)->platform.rocketlake || (__display)->platform.alderlake_s)
 #define HAS_DBUF_OVERLAP_DETECTION(__display)	(DISPLAY_RUNTIME_INFO(__display)->has_dbuf_overlap_detection)
+#define HAS_DC3CO(__display)		(DISPLAY_VER(__display) >= 35)
 #define HAS_DDI(__display)		(DISPLAY_INFO(__display)->has_ddi)
 #define HAS_DISPLAY(__display)		(DISPLAY_RUNTIME_INFO(__display)->pipe_mask != 0)
 #define HAS_DMC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dmc)
-- 
2.43.0

