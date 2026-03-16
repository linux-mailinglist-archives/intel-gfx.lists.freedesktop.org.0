Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJY+AWMyuGmvaAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 17:40:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A6429D87A
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 17:40:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83CAD10E277;
	Mon, 16 Mar 2026 16:40:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RCF3/GZA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD45610E277;
 Mon, 16 Mar 2026 16:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773679198; x=1805215198;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=S0tmqSE9wpP9ZCWw39CCGMfpCCMMwPuihMcdkzDv0t8=;
 b=RCF3/GZAUrPWUEwjYtqzEJLtDCvhAHXuDBolqYUeeNsB5m67GqUDq4I0
 UC0oROkvkfFuvHYW+0gAuhaG7grljSSxjF6XwGJTmKvdjh260X4o3CyTA
 ST4OkT+lHaVbcEoXUnsoeB5BF1MW0706CttFIOzLpkXbo3TzU4G656lZy
 sJ+DuT73CdU3B85HP7IVixd9ODKAXClYTqwSLioOsaiD+pvxRVbGZSpXc
 uS3nYcMSyTK7Um/zd8IEX6xVE3Tw/GuNoZZAnxJqeoC7x09zF0t4u+4fC
 iKAqBQ/G5Yrl1wPbIO4iPVETM456UZsgUcNsVO3vJvgz9SfwlqqaGbHSv w==;
X-CSE-ConnectionGUID: h7dHGj72TQWnnnYmjdQUAw==
X-CSE-MsgGUID: HO8S3pqVT9SXPIS4mgayVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="74735663"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="74735663"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 09:39:57 -0700
X-CSE-ConnectionGUID: j51aoWXYSEyHR1mnmZuceA==
X-CSE-MsgGUID: tpluhAKDQ3moJtTA9DbnxA==
X-ExtLoop1: 1
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.42])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 09:39:55 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Khaled Almahallawy <khaled.almahallawy@intel.com>
Subject: [PATCH 0/3] drm/i915: Fix NV12 Y plane handling
Date: Mon, 16 Mar 2026 18:39:50 +0200
Message-ID: <20260316163953.12905-1-ville.syrjala@linux.intel.com>
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
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 81A6429D87A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Apparently I broke the NV12 Y plane handling a bit at some
point. Fix it up.

Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>

Ville Syrjälä (3):
  drm/i915: Unlink NV12 planes earlier
  drm/i915: Relocate unlink_nv12_plane()
  drm/i915: Skip redundant NV12 plane unlinking

 drivers/gpu/drm/i915/display/intel_plane.c | 61 ++++++++++------------
 1 file changed, 27 insertions(+), 34 deletions(-)

-- 
2.52.0

