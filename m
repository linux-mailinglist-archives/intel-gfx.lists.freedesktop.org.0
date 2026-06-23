Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uqUcKE2BOmoQ+gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 14:51:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EEC6B7389
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 14:51:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=BfIx99+J;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA4AE10EB2D;
	Tue, 23 Jun 2026 12:51:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C46E10EB11;
 Tue, 23 Jun 2026 12:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782219078; x=1813755078;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bEcfNVYHdfnpX1bpXwfhyq3UPYS9jm3oAr+0dqTYsVg=;
 b=BfIx99+JdzMRqyrVgdrKa9zXDTnoyJ3KvUv1c83amgc132EDU+vHmbSl
 QxlyoGhQ1963od2D7uPCAQJ+4d3cLnHH4Bi8MDiEkgai0kEUhp3K+5qsR
 5WpOj3Mqfcu4P7RjVdtX9FIReOaU+zqfFmx8HtMGJak2gsqoY+tCMQ7Od
 ERWptsTkOvvFPL4EbicUj5AogZgtFRL4IiCV/9EcFmwlIWacYfMPrkQTp
 nh+K7+DPoiiLCUwqfWxI1TwJkR+tLZ1biZmGsKnRtLLvo6MUJqIm+hMOx
 03et94Fsc9St+fZoGr0b9WAs6qpOCoIBE3q2OUyD1LQ1vQ44D1MTSCR/v A==;
X-CSE-ConnectionGUID: ZGXcMscnReGGg3R9lDstUw==
X-CSE-MsgGUID: Fvpq3vrkR6KZBuAU3m/meA==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="100387487"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="100387487"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 05:51:17 -0700
X-CSE-ConnectionGUID: 4paq3ouVSGKFNtqBjdyXeg==
X-CSE-MsgGUID: VjSXtHezRvenym/Vzo31kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="249624906"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.67])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 05:51:15 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/6] drm/i915: Clean up GPIO pin stuff
Date: Tue, 23 Jun 2026 15:51:05 +0300
Message-ID: <20260623125111.6632-1-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux.intel.com:mid,linux.intel.com:from_mime,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 53EEC6B7389

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Our GPIO pin naming is confusing. Clean it up a bit.

Ville Syrjälä (6):
  drm/i915/gmbus: Rename GPIO pins
  drm/i915/gmbus: s/gmbus_pins_bdw/gmbus_pins_lpt/
  drm/i915/gmbus: Add gmbus_pins_lpt_lp[]
  drm/i915/gmbus: s/gmbus_pins_skl/gmbus_pins_spt/
  drm/i915/gmbus: Drop the platform suffixes from GMBUS pins
  drm/i915/hdmi: Remove CNP port F leftovers

 drivers/gpu/drm/i915/display/intel_bios.c  |  62 ++++-----
 drivers/gpu/drm/i915/display/intel_gmbus.c | 148 +++++++++++----------
 drivers/gpu/drm/i915/display/intel_gmbus.h |  22 +--
 drivers/gpu/drm/i915/display/intel_hdmi.c  |  43 +++---
 4 files changed, 140 insertions(+), 135 deletions(-)

-- 
2.53.0

