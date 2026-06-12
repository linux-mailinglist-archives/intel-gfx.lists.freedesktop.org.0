Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8GxgDb9DLGpGOgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 19:37:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C2267B608
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 19:37:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="Dx/a/sRM";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E95C10F5FE;
	Fri, 12 Jun 2026 17:37:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C965F10F5F0;
 Fri, 12 Jun 2026 17:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781285819; x=1812821819;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3F4z9V/5/RL44DlOti/y0wmA1tYriSsdcnZ6Vr0FwhQ=;
 b=Dx/a/sRMVFlHsDjYRbqG7nTwXfv1/7PpIySBFaaITiMunhV3pJ/LV2a1
 JpZbbKFIOv//NHI6EBYMdm6qkS1i2iWoe1i6421x8g29BKkCKX50NXnq3
 3hj+zwQq/8Aevx/7ZEEzM9BHj55o/v/zTghDvTSCXOvK/LxQmzYZJyQvt
 +ndOpUscXLceDGvBtCb29mOsV8uHOlEAJfZHVv4uYZ7Zx13KnqxQoNfBw
 9Cus0GIbKKBYRzPPrzG9hZjYy5FoM54OiCqhkguoZxpHfqO3M/wcM6jkG
 g47rLHKuPfs3vnO4nBOGUMWXJYjypgXTu95r3CwXpCmMHjbf1FShVjBy6 A==;
X-CSE-ConnectionGUID: aW7eNAWARYWkgLoGMXPqfw==
X-CSE-MsgGUID: Pv/qC/7MSA+PF5Ys11t+vQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11815"; a="81965725"
X-IronPort-AV: E=Sophos;i="6.24,201,1774335600"; d="scan'208";a="81965725"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2026 10:36:58 -0700
X-CSE-ConnectionGUID: tyjnTjYsSGSo4FIiMcGSbw==
X-CSE-MsgGUID: HlESWt+BRfWCZQ14+tNNZg==
X-ExtLoop1: 1
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2026 10:36:57 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/6] drm/i915/cdclk: CDCLK sanitization stuff
Date: Fri, 12 Jun 2026 20:36:47 +0300
Message-ID: <20260612173653.7830-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 93C2267B608

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Handle the CDCLK decimal divider sanitization a bit more gently,
add some more helpful debugs to the process, and clean up the
CDCLK_CTL bits.

Ville Syrjälä (6):
  drm/i915/cdclk: Fix up CDCLK_FREQ_DECIMAL without a full PLL re-enable
  drm/i915/cdclk: Print the reason for the CDCLK sanitization
  drm/i915/cdclk Clean up CDCLK_CTL defines
  drm/i915/cdclk: Document CDCLK_CTL bits
  drm/i915/cdclk: Introduce bxt_cdclk_cd2x_pipe_mask() and use it
  drm/i915/cdclk: Use the TGL+ CD2x pipe select bits also on ICL

 drivers/gpu/drm/i915/display/intel_cdclk.c    | 91 ++++++++++++++-----
 .../gpu/drm/i915/display/intel_display_regs.h | 26 +++---
 2 files changed, 80 insertions(+), 37 deletions(-)

-- 
2.53.0

