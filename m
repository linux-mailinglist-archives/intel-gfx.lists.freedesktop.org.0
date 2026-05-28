Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAq3IoMaGGoBdQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 12:35:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 303275F0AB8
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 12:35:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA11B10EFCD;
	Thu, 28 May 2026 10:35:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dOtmYQIc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2125E10EFCA;
 Thu, 28 May 2026 10:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779964543; x=1811500543;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YaWgsVdKJNq/INqdJXi3UHZPutp1+IMI/ibadxlroF8=;
 b=dOtmYQIcF4h1kc7+PYrwWRDIYaynZbi07PFBY7g7vu4JZ5707oZp5MNf
 gAFQtLIjK9Sz79ZF4o8DfRiEIbNe2MJ9Eu6C9pM8GeLmP3OJKJZIC5lMW
 HwyjlwobWoowD1hSvN0aMJQ4za3v4lLgSStkhrvbFjrjLKpTTiaqMBgby
 qjnotXHtGE45FliqeARSqOAaA4ue6L+KsckCu2UehMVNStI8Xr7P6kuxa
 wICqymL9dPW3ekluFeW1R/KxBfd/+d2Nrwmm2NP8MsZZzD6G+9j+Jp4+8
 PLwFfqZDpO190qfMILVNzH3uk/QrlaMp25N4QI6AsIGWsdN2Ejp6KxXIT g==;
X-CSE-ConnectionGUID: rmIOet1xTf2lFY3ic4zXxA==
X-CSE-MsgGUID: oWyB/1sWRJyLuOtHoIJDWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="79837682"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="79837682"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 03:35:43 -0700
X-CSE-ConnectionGUID: AXMHoM7aQXWEesLZE+4z7w==
X-CSE-MsgGUID: EvaeSmGtSC+7JrAE1nh/EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="247458910"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.166])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 03:35:42 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 09/11] drm/i915/bw: Print derated bandwidth numbers for DG2
Date: Thu, 28 May 2026 13:34:56 +0300
Message-ID: <20260528103458.18069-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
References: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim,linux.intel.com:mid]
X-Rspamd-Queue-Id: 303275F0AB8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

While DG2 is using hardcoded numbers for the memory bandwidth
stuff, let's still print them to aid in debugging as there are
two different SKUs to consider with different bandwidth numbers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 59df01b8ad7c..f4121223a58b 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -711,6 +711,10 @@ static void dg2_get_bw_info(struct intel_display *display)
 	display->bw.max[0].num_planes = U8_MAX;
 	display->bw.max[0].deratedbw[0] = display->platform.dg2_g11 ? 38000 : 50000;
 
+	drm_dbg_kms(display->drm,
+		    "QGV 0: deratedbw=%u\n",
+		    display->bw.max[0].deratedbw[0]);
+
 	/* Bandwidth does not depend on # of planes; set all groups the same */
 	for (i = 1; i < ARRAY_SIZE(display->bw.max); i++)
 		display->bw.max[i] = display->bw.max[0];
-- 
2.53.0

