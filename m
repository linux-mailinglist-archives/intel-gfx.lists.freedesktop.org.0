Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8GIXIvESwWnVQQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 11:16:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F282EFD64
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 11:16:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38AEC10E4BF;
	Mon, 23 Mar 2026 10:16:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QD0YkIgl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87C1A10E4BF
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2026 10:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774260973; x=1805796973;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9bOP3rNfAXnCPbYo0XJHn4oIniW8MQmN6Lp/QANM6O4=;
 b=QD0YkIglaW81G1CbsjK8BzDdSJocYnFi2RW2MQVGd160PIABekr+OAyG
 9bjL6iSBppFaUnLLGsfmYng+IZK4vRF7l/eXJ7H6NzAAXWOofc/s7eeUC
 dg4zRGCHzmUyeI8214XkrasxpZH5x1pj62BMCfpkMXeg7JHEVEr959l2g
 v5Wy6ayrNRUUV0alz5k5ooJtkw6PQ1gWRDjFbvIWLef+JVezKUgxfO4qL
 OEyGQF6SE9A66EF21Y1GesfqfS0lXIxEPDpG80o/0cJWVi4j4euXsFFI4
 tDaz+KGaCA2hUgeHFaLp9GzzbIyqHkZN1pxwadd3rsn5qgGU5fUtnhibR Q==;
X-CSE-ConnectionGUID: YnOZQsVXR9eAUkQ91lOWSw==
X-CSE-MsgGUID: MwbyjSRLQzugv3qw1v79eQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11737"; a="77865038"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="77865038"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 03:16:13 -0700
X-CSE-ConnectionGUID: c9RdQ3WRQ2+VXX04Gd2NOA==
X-CSE-MsgGUID: 5uiRLp4wTxK3daz+0LEfhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="219630557"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.55])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 03:16:12 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/2] drm/i915/uncode: Decouple GT FIFO checks from unclaimed
 reg checks
Date: Mon, 23 Mar 2026 12:16:07 +0200
Message-ID: <20260323101609.8391-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: E2F282EFD64
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

My plan is to move the unclaimed register detection to the
display code. Start by decoupling the GT FIFO error detection
(which will stay in the uncore code) from the unclaimed register
detection code.

Ville Syrjälä (2):
  drm/i915/selftests: Nuke live_forcewake_domains selftest
  drm/i915/uncore: Do GT FIFO checks in early sanitize and forcewake get

 drivers/gpu/drm/i915/intel_uncore.c           | 72 +++++++++++++------
 drivers/gpu/drm/i915/selftests/intel_uncore.c | 62 ----------------
 2 files changed, 50 insertions(+), 84 deletions(-)

-- 
2.52.0

