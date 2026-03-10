Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id VJO6LwAIsGkTewIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 13:01:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E512424C06A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 13:00:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AAA910E706;
	Tue, 10 Mar 2026 12:00:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="key not found in DNS" (0-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BPI4hSVR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D068910E703;
 Tue, 10 Mar 2026 12:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773144052; x=1804680052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X5bkIg01mSwii0raJK6zIIndcQTpTwNMf2UUfEWI840=;
 b=BPI4hSVRI6m/RHXBPbguk6rGndqNbgbKqE5DfpzKSqFZ8Ey0aYz2rnVs
 E0iWK6TYOah1P6jHqpOv0XyeLcZaBTsk04qTj6H6ZeoX0RVWfOr/KEFYm
 NHF/pbghf1Yhpw2BQeXsO6SQzrCnBd0x3ZtMI3sadoHDWXoXwP3BlYD55
 f21pVOCskL5yO4ND8TXZwcJr1NS3P7+iMQqm5+8Ix2o8MJLJfVU+5A7lH
 0ZN0C+iN1WWzR4DffH4ceLgdrpW8CX13oN1FpNsXTHwGv47e2sOvqU1Wf
 4lz7GE63V+NepjKi5rEncGYDHXj7FunlqnN6YOl03rS6VNt6Ox3gTa1VL w==;
X-CSE-ConnectionGUID: ob7QbQk2Q3mvCeCDGodLqA==
X-CSE-MsgGUID: jQ+MbKQATWKdVRIfL2HsLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="84897886"
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="84897886"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 04:57:42 -0700
X-CSE-ConnectionGUID: 5caxrIYCR6u91I0aJdALGA==
X-CSE-MsgGUID: utGbFRa4SMWw1tJHYvJBsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="224773043"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa005.fm.intel.com with ESMTP; 10 Mar 2026 04:57:38 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: contact@emersion.fr, alex.hung@amd.com, harry.wentland@amd.com,
 daniels@collabora.com, mwen@igalia.com, sebastian.wick@redhat.com,
 uma.shankar@intel.com, ville.syrjala@linux.intel.com,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 louis.chauvet@bootlin.com, stable@vger.kernel.org,
 chaitanya.kumar.borah@intel.com
Subject: [PATCH v2 1/2] drm/colorop: Preserve bypass value in duplicate_state()
Date: Tue, 10 Mar 2026 17:02:37 +0530
Message-Id: <20260310113238.3495981-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260310113238.3495981-1-chaitanya.kumar.borah@intel.com>
References: <20260310113238.3495981-1-chaitanya.kumar.borah@intel.com>
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
X-Rspamd-Queue-Id: E512424C06A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DMARC_DNSFAIL(0.00)[intel.com : query timed out];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

__drm_atomic_helper_colorop_duplicate_state() unconditionally
sets state->bypass = true after copying the existing state.

This override causes the new atomic state to no longer reflect
the currently committed hardware state. Since the bypass property
directly controls whether the colorop is active in hardware,
resetting it to true can inadvertently disable an active colorop
during a subsequent commit, particularly for internal driver commits
where userspace does not touch the property.

Drop the unconditional assignment and preserve the duplicated
bypass value.

Fixes: 8c5ea1745f4c ("drm/colorop: Add BYPASS property")
Cc: <stable@vger.kernel.org> #v6.19+
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/drm_colorop.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_colorop.c b/drivers/gpu/drm/drm_colorop.c
index f421c623b3f0..e44a738c4c14 100644
--- a/drivers/gpu/drm/drm_colorop.c
+++ b/drivers/gpu/drm/drm_colorop.c
@@ -466,8 +466,6 @@ static void __drm_atomic_helper_colorop_duplicate_state(struct drm_colorop *colo
 
 	if (state->data)
 		drm_property_blob_get(state->data);
-
-	state->bypass = true;
 }
 
 struct drm_colorop_state *
-- 
2.25.1

