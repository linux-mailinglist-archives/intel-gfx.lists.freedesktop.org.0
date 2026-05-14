Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DQAHssgBmpDewIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 21:21:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F16175464E4
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 21:21:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 810C810E0ED;
	Thu, 14 May 2026 19:21:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gN5Unc3P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56F5F8922E;
 Thu, 14 May 2026 19:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778786503; x=1810322503;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=LNa5WDeIDNJypgUwAhWujpis3y1y7JLlFynSvVWjt48=;
 b=gN5Unc3PpADgyntjs1aersF/XSY6XO1I7huLLVzSsZj1zsdBDtnIb5BB
 qXNH0Ah2x9752q2mHBClDvrdoPIHkDIjAhCXQ92QyjLR6hOqn4I5vqalQ
 ax3U3Xq2ybrAO9UrioaV+0UctvbHBn+R4G8JupZwGCP6W2hw9PEe9VXWP
 8NiJRj/hQ7ACix+9+QKDygdR45/Y4qRb3ybXylTDoCYGhOP6RF2ZXbxky
 D/TvGAG/ed0G9nOejUBJ0wla+JsmHlJJYAjw+gsdc6xmTU8YKpHXFwrkR
 sEWEIPHV3y1rn4RnuV4lAw7xUIGpw+NsZZK617DKbzv4I2U1ZGRZ8THpP w==;
X-CSE-ConnectionGUID: vAglWVIiRIqP/tuQ0wrTpQ==
X-CSE-MsgGUID: djOsHSabRrWXqI+ZpBqBuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="83351245"
X-IronPort-AV: E=Sophos;i="6.23,235,1770624000"; d="scan'208";a="83351245"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 12:21:43 -0700
X-CSE-ConnectionGUID: rto3iFN+QH+/VUPmP7wYbQ==
X-CSE-MsgGUID: VonnthgBRGie/B0tlx/GeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,235,1770624000"; d="scan'208";a="237611794"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.189])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 12:21:42 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v3 0/5] drm/i915/bw: Split bandwidth params into platform-
 and display-IP-specific structs
Date: Thu, 14 May 2026 16:19:29 -0300
Message-Id: <20260514-separate-platform-from-diplay-ip-specific-bw-params-v3-0-68727d6fe3ec@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6XOwQ6CMAyA4VcxO1szhgziyfcwHrbRSRNgy7agh
 PDuDi561uPfNP26sIiBMLLLYWEBJ4rkxhzl8cBMp8YHArW5meBC8jNvIKJXQSUE36tkXRjABjd
 AS7lnIA/RoyFLBvQTttUhgqy01YpLXmpk+bIPaOm1q7d77o5icmHen5iKbfqfNxXAQZSmKpVVd
 av5lcaE/cm4gW3eJD5GVRS/GSIbWEthdCOlaNW3sa7rGxsEFcBaAQAA
X-Change-ID: 20260408-separate-platform-from-diplay-ip-specific-bw-params-65bfba0603be
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, 
 Jani Nikula <jani.nikula@intel.com>, Matt Roper <matthew.d.roper@intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>
X-Mailer: b4 0.15-dev
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
X-Rspamd-Queue-Id: F16175464E4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

Some of the parameters of used in display bandwidth calculations are
tied to the platform and are orthogonal to the display IP.  After talking
with the hardware team, we now have the information (and Bspec has been
updated) that the members deprogbwlimit and derating of struct
intel_sa_info are such platform-specific ones.

With that, we are now able to make the driver code more aligned with the
hardware by splitting structs intel_sa_info into two different structs:
one that is platform-specific and another that is display-IP-specific.

That change also allows us to simplify how we select the parameters for
the calculation.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
Changes in v3:
- Incorporated review feedback; see each individual patch for details.
- Link to v2: https://patch.msgid.link/20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-0-e762cb8662da@intel.com

Changes in v2:
- Incorporated review feedback; see each individual patch for details.
- Link to v1: https://patch.msgid.link/20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com

---
Gustavo Sousa (5):
      drm/i915/bw: Don't call intel_dram_info() too early
      drm/i915/bw: Extract platform-specific parameters
      drm/i915/bw: Deduplicate intel_sa_info instances
      drm/i915/bw: Rename struct intel_sa_info to intel_display_bw_params
      drm/i915/bw: Extract get_display_bw_params()

 drivers/gpu/drm/i915/display/intel_bw.c | 218 +++++++++++++++++++++-----------
 1 file changed, 141 insertions(+), 77 deletions(-)
---
base-commit: dee34cfbffbfe2196a9332f966b006cd2e54e976
change-id: 20260408-separate-platform-from-diplay-ip-specific-bw-params-65bfba0603be

Best regards,
--  
Gustavo Sousa <gustavo.sousa@intel.com>

