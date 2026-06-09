Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1stRDUyEJ2rYyQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 05:11:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADFED65BFC9
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 05:11:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=CMpiZIzW;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35E0810E067;
	Tue,  9 Jun 2026 03:11:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EE7E10E064;
 Tue,  9 Jun 2026 03:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780974665; x=1812510665;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=z9p25p0vVkNvirUffzHXMr2pU+NWfa5Rb3UzJ0FFnhg=;
 b=CMpiZIzWu8w87DACDv6ATFjIqRL+c/duzFyVzhfFj/d3TzuKcel+2EX0
 VcqKtlBJLqAblo9XHcuqmwc+uSM2V1bnWLJ+xt6E6qDaAFVF1extoe95j
 /7fTSK/JMffj+yFXh5w1qp/j3Ul4+U8uyEP2ZTGM1LM62Lyan1tki5VBD
 SGO5mqO0b0grk8qcRAZvLxY1X5bkAxT9yqHT1FcffkT82tz/zSvw+3kcw
 Vur1Lywtf2K8TiS0Jnrz+xCODyHDWkTJabHd/p95OzuepZqx8GH1DjFfi
 yTQprtdw57HRfYurOBXZS1EI38kyBdMkbQ0Vi4pZR6MOgcBfSBxIN1SZG Q==;
X-CSE-ConnectionGUID: +oX507kBR2SfWwVz7IWMhA==
X-CSE-MsgGUID: GcL/pWw+REiQ14+sOd9arA==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="85351715"
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="85351715"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 20:11:04 -0700
X-CSE-ConnectionGUID: jouVcOXPTDSPdaCvQSuBcA==
X-CSE-MsgGUID: MtkfgtVdSLC6/XpLx+akvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="241287283"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 20:11:02 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/2] drm/i915: Handle VSYNC timing changes in the LRR path
Date: Tue,  9 Jun 2026 08:23:23 +0530
Message-ID: <20260609025325.1128543-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ADFED65BFC9

This two patch series was originally part of [1], where these were
reviewed by Ville. The rest of that series is being reworked along
the lines suggested in [2], so splitting these out for separate
merge.

Patch 1 extends the LRR fast-update path to also program TRANS_VSYNC,
so VSYNC-only timing changes go through LRR instead of a full modeset.

Patch 2 keeps the Vtotal-to-Vsync distance constant when vtotal is
stretched for a lower refresh rate on fixed modes.

Minor review comments from v1 are addressed in the individual commits.

[1] https://patchwork.freedesktop.org/series/165604/#rev3
[2] https://lore.kernel.org/intel-xe/aiA8bL4E1SCZQVsw@intel.com/

Ankit Nautiyal (2):
  drm/i915/display: Handle VSYNC timing in LRR path
  drm/i915/panel: Preserve Vtotal-Vsync distance while adjusting vtotal

 drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++++++++--
 drivers/gpu/drm/i915/display/intel_panel.c   |  9 ++++++++-
 2 files changed, 22 insertions(+), 3 deletions(-)

-- 
2.45.2

