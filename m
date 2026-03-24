Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHJpIqtFwmnvbAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 09:04:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 158CF304507
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 09:04:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1149610E556;
	Tue, 24 Mar 2026 08:04:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JoU6MVRJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DADE10E536;
 Tue, 24 Mar 2026 08:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774339495; x=1805875495;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+bd1veo5TPmSZV07onsl7Yq7TjisnB0ot1ZCtIRwk8c=;
 b=JoU6MVRJK0p9PpA4/nB/WHhXwmsQ0X81Nsvb2Zd7twDZoQPTdb0YpKa9
 E+IE23aTdDGjkJfJ9OcgHquu/ntup5M6pzvmPO3p0k6Q5/Uhq1XqQ9si9
 4+n/PLtrn2u4E/CG2jYmZFI9WmPwEQX9TQxgllhkzOaRPtR1dsaPLfkZT
 bKyoQNtam0qLmDze3dqpE7FkHiuHi9UjEtH74J3r8yjseWfoECsqz6cM+
 RYERXj+a84l2tiwSm9iFdd7uvXPutkjEDKZfECqoOR1qSZzY9pG4wLdyF
 yElOFfTtFUwObMqgNQICC2GiHoAE68xFsXtRYHF12dtrB8GYbSuYr3feD w==;
X-CSE-ConnectionGUID: S3HP6St0TYGOAICQjPMeeg==
X-CSE-MsgGUID: eB4TNPzMQ32sCJyQZg7yPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="86045469"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="86045469"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 01:04:55 -0700
X-CSE-ConnectionGUID: Mg7CgWkSRpei0mzioNNqAg==
X-CSE-MsgGUID: NlflSawhSPWXgD8d0MzaiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="223494924"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.170])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 01:04:52 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	jani.nikula@linux.intel.com
Subject: [PATCH 0/4] drm/i915/display: don't access display PCH registers in
 non-display code
Date: Tue, 24 Mar 2026 10:04:24 +0200
Message-ID: <20260324080441.154609-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 158CF304507
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

This change moves the display PCH register accesses from the i915 code
to the display code.  I created a small "framework" to do this, which
relies on the PCH_TYPE to figure out which initialization needs to be
done.

The callpoints are still on very specific points in the generic
clock-gating initialization, but there's no way around this without
overcomplicating things.

In v2:
   * Rebased and added Jani's r-b;
   * Mostly to retrigger CI with a known base;

Cheers,
Luca.


Luca Coelho (4):
  drm/i915/display: move clock-gating init for IBX to display
  drm/i915: move CPT clock gating init into intel_pch
  drm/i915: move LPT clock gating init into intel_pch
  drm/i915: move CNP clock gating init into intel_pch

 drivers/gpu/drm/i915/display/intel_pch.c  | 93 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pch.h  |  1 +
 drivers/gpu/drm/i915/intel_clock_gating.c | 86 ++-------------------
 3 files changed, 101 insertions(+), 79 deletions(-)

-- 
2.53.0

