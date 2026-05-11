Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GqILaJvAWptZQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:56:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2255084C5
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:56:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EABB10E47F;
	Mon, 11 May 2026 05:56:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VS9Mg2/C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 851C110E47A;
 Mon, 11 May 2026 05:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778479005; x=1810015005;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=30dTCmx+wfWqq6fJAi9YX2Yoa4kkHHtIJ6jYXYB0ZHo=;
 b=VS9Mg2/C/YOYPh5ehmGGkkUiD2Uryhn998DSXQWzPLjqJw+BnFzqjSLd
 bRTTvdhSL+tQ1SFAOyuDD/kdNeO8SAchU7NsFw5JKXM245gT+fXEygTe6
 X0OHC0Cn2oL2MJVEgMKUYK600VQNVAfBM+DaNtEYdac/3coj5BhrngoUd
 CNY57lPc1s4w0c1J38MnJGyPQKu2V7tutRWO40551vb58Fx3tS9xesIMp
 yPO9NGue7RQvvBD2S1pT/jn7ZCgl4KlIExgbdUFt5Q1wpyNTg9czPwspm
 1VtL112zZ5oicDD9B5s+ZHpJljnmoQBeH0Zi854zImrXoLeS0H9Be4TJp w==;
X-CSE-ConnectionGUID: i42v06MXSgGbdTm9qjCFig==
X-CSE-MsgGUID: G/ddt9SQTGaKb+V8fJRWSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="81922839"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="81922839"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2026 22:56:45 -0700
X-CSE-ConnectionGUID: 9Mr9ZBJcQlGlWAlA6Hqr0w==
X-CSE-MsgGUID: YB078D2bQ36Wj6cwZWwcoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="241719924"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa004.jf.intel.com with ESMTP; 10 May 2026 22:56:43 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, pranay.samala@intel.com
Subject: [PATCH v3 0/4] More Fixes for color pipeline
Date: Mon, 11 May 2026 11:02:09 +0530
Message-Id: <20260511053213.3122314-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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
X-Rspamd-Queue-Id: 2F2255084C5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

v3:
- Re-arrange patches

v2:
- Make dependency on atomic state more explicit (Ville)
- handle blobs in hw state clear

Chaitanya Kumar Borah (4):
  drm/i915/display: Copy color pipeline from plane in the primary joiner
    pipe
  drm/i915/display: Don’t use atomic state back-pointer to derive color
    pipeline
  drm/i915: Avoid programming color HW blocks for NV12 Y planes
  drm/i915: Fix color blob reference handling in intel_plane_state

 drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
 .../drm/i915/display/intel_initial_plane.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_plane.c    | 77 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_plane.h    |  5 +-
 4 files changed, 61 insertions(+), 25 deletions(-)

-- 
2.25.1

