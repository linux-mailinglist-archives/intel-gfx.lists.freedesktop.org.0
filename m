Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UibwMAAIsGkUewIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 13:01:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B8B24C06B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 13:00:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A31E10E705;
	Tue, 10 Mar 2026 12:00:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="key not found in DNS" (0-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Eq3XQydn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3478210E704;
 Tue, 10 Mar 2026 12:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773144051; x=1804680051;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GMuRZsIcDPYzUmK3hRLnUVbGlgh6ZtOMDCxtj9c841Y=;
 b=Eq3XQydnB45YndpfZjWMBy0TZszjyQh3mW8hZ7GZ/lPMCUnAGqrunlKs
 e48y0ovudKkA06Bs3OHFuPg1ry+gtLSh0wXwJX7ZeGkSxykeXhucu27Ry
 pNyRbIZ0OLhJmeD5hFb2qwcEyp5UedgimEXkRMQfTXcBVUaUXEcHMiKLt
 oZw8cnfgr8mpOlKybwco6+/qErJGcuLVdsHZIF32xdHY6oSUt+y6V5h26
 xeLbZVWnO/LS0rd5BNdY1O5IT7ki/i22RvyiOpqymFud0Tw21dJkE2Kye
 AyOn2K1Z4ajt7TjMUpcVf1mCYV7wGex45FGFcohIFSr8XATFn22SqtWrH g==;
X-CSE-ConnectionGUID: bqXqt9hyTuacgxKfUjt6Qg==
X-CSE-MsgGUID: 9+GDMqtTQaOvqTPdgCSw/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="84897898"
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="84897898"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 04:57:46 -0700
X-CSE-ConnectionGUID: T899SoHYTtWxDo7ymnwV6Q==
X-CSE-MsgGUID: +Gs3nQC3SKybWqfT0s/xBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="224773048"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa005.fm.intel.com with ESMTP; 10 Mar 2026 04:57:42 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: contact@emersion.fr, alex.hung@amd.com, harry.wentland@amd.com,
 daniels@collabora.com, mwen@igalia.com, sebastian.wick@redhat.com,
 uma.shankar@intel.com, ville.syrjala@linux.intel.com,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 louis.chauvet@bootlin.com, stable@vger.kernel.org,
 chaitanya.kumar.borah@intel.com
Subject: [PATCH v2 2/2] drm/atomic: Add affected colorops with affected planes
Date: Tue, 10 Mar 2026 17:02:38 +0530
Message-Id: <20260310113238.3495981-3-chaitanya.kumar.borah@intel.com>
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
X-Rspamd-Queue-Id: 47B8B24C06B
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

When drm_atomic_add_affected_planes() adds a plane to the atomic
state, the associated colorops are not guaranteed to be included.
This can leave colorop state out of the transaction when planes
are pulled in implicitly (eg. during modeset or internal commits).

Also add affected colorops when adding affected planes to keep
plane and color pipeline state consistent within the atomic
transaction.

v2: Add affected colorops only when a pipeline is enabled

Fixes: 2afc3184f3b3 ("drm/plane: Add COLOR PIPELINE property")
Cc: <stable@vger.kernel.org> #v6.19+
Reviewed-by: Uma Shankar <uma.shankar@intel.com> #v1
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/drm_atomic.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index 04925166df98..dd9f27cfe991 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -1587,6 +1587,7 @@ drm_atomic_add_affected_planes(struct drm_atomic_state *state,
 	const struct drm_crtc_state *old_crtc_state =
 		drm_atomic_get_old_crtc_state(state, crtc);
 	struct drm_plane *plane;
+	int ret;
 
 	WARN_ON(!drm_atomic_get_new_crtc_state(state, crtc));
 
@@ -1600,6 +1601,12 @@ drm_atomic_add_affected_planes(struct drm_atomic_state *state,
 
 		if (IS_ERR(plane_state))
 			return PTR_ERR(plane_state);
+
+		if (plane_state->color_pipeline) {
+			ret = drm_atomic_add_affected_colorops(state, plane);
+			if (ret)
+				return ret;
+		}
 	}
 	return 0;
 }
-- 
2.25.1

