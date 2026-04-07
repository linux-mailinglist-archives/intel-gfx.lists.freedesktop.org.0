Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIV2I/0n1WnB1gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 17:51:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 626723B152F
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 17:51:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B35A210E3B2;
	Tue,  7 Apr 2026 15:51:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n55WsBR7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A38410E472;
 Tue,  7 Apr 2026 15:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775577082; x=1807113082;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Tqd/AXK7Z75bttRBbfZcOoY+hlqrP+IStek66sczrm8=;
 b=n55WsBR7UyZVsuv0s97DVozZc+tEvrYksqisPQzZOH0tY5sYRyovbFGU
 2cLClfFDzjOaQCOUK8vF/LqfY7yoi/tHXwvIe/xYYwugOUxHFIp33Gd2C
 6G+1oyxlO5awZ0IwIG3OCmrwc7D43h5pirjCDlDF5CWDvs4PwVZiKSg/T
 sL8u70EI5WPubkEFkeAsBUAHepBU2RzTCM1S2pM/iQ9bAmqZ5NiSOOqMl
 9f4mNcAvtNm9bmkLpur78V2hLZDG5lF1piW0FlCJO+88UVCTrsCHHw9CR
 L2YDpFv5B5pyG9ejWeOZ4UpO1+B9Dvnd6ppg3eaiH1Jj6QSXyYSv9+1n2 A==;
X-CSE-ConnectionGUID: qQWyWgK7TGWZh3/NLxWWUg==
X-CSE-MsgGUID: viQz2ajQRUqWZIuK6sipiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="101999164"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="101999164"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 08:51:22 -0700
X-CSE-ConnectionGUID: ar3jJhA4RXeogsPd23eH6Q==
X-CSE-MsgGUID: 60+fErc3RSue40oIdHhTQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="221633789"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.211])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 08:51:21 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 07/12] drm/i915/vma: Add helpers to check GTT view type
Date: Tue,  7 Apr 2026 18:50:48 +0300
Message-ID: <20260407155053.32156-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260407155053.32156-1-ville.syrjala@linux.intel.com>
References: <20260407155053.32156-1-ville.syrjala@linux.intel.com>
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
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: 626723B152F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

I915_GTT_VIEW_ROTATED is going away and being replaced by just
I915_GTT_VIEW_REMAPPED, so we're going to need another way to
determine if the view is rotated or not (since width/height
will need to be swapped when operating on the destination
coordinate space). Provide small helper functions to hide
such implementation details from most of the code using GTT views.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_gtt_view_types.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_gtt_view_types.h b/drivers/gpu/drm/i915/i915_gtt_view_types.h
index c084f67bc880..9c4f38db32ff 100644
--- a/drivers/gpu/drm/i915/i915_gtt_view_types.h
+++ b/drivers/gpu/drm/i915/i915_gtt_view_types.h
@@ -56,4 +56,19 @@ struct i915_gtt_view {
 	};
 };
 
+static inline bool i915_gtt_view_is_normal(const struct i915_gtt_view *view)
+{
+	return view->type == I915_GTT_VIEW_NORMAL;
+}
+
+static inline bool i915_gtt_view_is_remapped(const struct i915_gtt_view *view)
+{
+	return view->type == I915_GTT_VIEW_REMAPPED;
+}
+
+static inline bool i915_gtt_view_is_rotated(const struct i915_gtt_view *view)
+{
+	return view->type == I915_GTT_VIEW_ROTATED;
+}
+
 #endif /* __I915_GTT_VIEW_TYPES_H__ */
-- 
2.52.0

