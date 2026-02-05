Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMdNLQ+jhGmI3wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 15:02:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B23F3B6B
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 15:02:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E7D610E1B9;
	Thu,  5 Feb 2026 14:02:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LuEZ+DoB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E379010E1B9;
 Thu,  5 Feb 2026 14:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770300171; x=1801836171;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/1s0llBQkrKLP2ris4qFV7tqXyDZfbGIFfiiH+NdVWM=;
 b=LuEZ+DoB46NKLm9oZxLtdYuSQCiNffLEG0v0fEob5vTSetzlvVSJZI7I
 RpbRPwWwGrbDWi4uO5/UQyhrf/7bGnGDDWKvXeyTCVJ+Dq4W07ohOnRdF
 2mVLzF6tFbasvZEMXiLL1XxCEKxV0sva2aDfic0Yz9UxKMyIIaFB3YZzA
 FyPuu9vJXm1vIPgnSq598CwLA4A53G+wxV3l4aBmaWJoKgymRjPibz3WL
 l9AQzlL2B46r5fmKZtoFVeedKSvdDlY7UsZTUi0DVGdpcGn/lWwVltHiD
 CocGciBbHRfIuXR0XuDJuj6rS3qi40vWZRpQKTTBu3bN+VHGS+j2hZQ0n A==;
X-CSE-ConnectionGUID: BbO6a+o4Q2Ki40ZLj9y+yQ==
X-CSE-MsgGUID: hoiUBAqcRtuwxSvhNIVeQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="75350955"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="75350955"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 06:02:50 -0800
X-CSE-ConnectionGUID: r6EIXTh6R4K/wTOkmfdLsQ==
X-CSE-MsgGUID: P/GP5YZcSDyWIIofV/Um/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="215508837"
Received: from abityuts-desk.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.244.157])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 06:02:49 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 uma.shankar@intel.com
Subject: [PATCH 0/6] update the stolen memory allocation preference
Date: Thu,  5 Feb 2026 16:02:29 +0200
Message-ID: <20260205140235.338410-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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
X-Rspamd-Server: lfdr
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
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 32B23F3B6B
X-Rspamd-Action: no action

Allocating stolen memory for the fbdev and initial plane bo might
bar enabling FBC. So have some check if we have enough stolen memory
for FBC before allocating the stolen to fbdev and initial plane bo.
Right now the check is based on simple logic that if the fbdev or
initial plane bo take more than half of the stolen, avoid useing the
stolen for that. Later on we will fine tune this by adding some better
comparison based on the possible FBC size.

Ville Syrjälä (3):
  drm/xe/fbdev: Fix BIOS FB vs.s stolen size check
  drm/i915/fbdev: Extract intel_fbdev_fb_prefer_stolen()
  drm/xe/fbdev: Extract intel_fbdev_fb_prefer_stolen()

Vinod Govindapillai (3):
  drm/i915/display: remove the usage of dev_priv
  drm/xe/fbdev: print info about stolen memory preference for fbdev
  drm/i915/fbdev: print info about stolen memory preference for fbdev

 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 40 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  2 +
 drivers/gpu/drm/i915/i915_initial_plane.c     |  3 +-
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 29 +++++++++++++-
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 13 ++----
 5 files changed, 63 insertions(+), 24 deletions(-)

-- 
2.43.0

