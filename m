Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBPnD22k1ml9GwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 20:54:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 138D13C1EA7
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 20:54:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D335010E6CD;
	Wed,  8 Apr 2026 18:54:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BEk2eGWr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F06C410E6CA
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 18:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775674472; x=1807210472;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=wtFv4q6Igh83C9HR7oKsGsRhoYbHA/0FAvr6k8aQDoM=;
 b=BEk2eGWrY3v/jklDpoRc5xaq9g2xHeELNV5RMTOmP3cN9N/8dz8Fz/ok
 d3QmFXldZUTppYaMrls20h2/bFDzb7KrgM0QARWJpF5Quox/7CuWzpCr+
 Z4fQ+u4zuNlDelYR2otOHiiCHl9nIOp4maUBlpU37TWXxfnG6nDw+4hOS
 PscWbwYIJEBr7KuTy/Q7jWGC5CSwTXtG+i7KOQbh4ycwzgMXwbqI6cnA3
 vyp/6xLRFQQzX+KCBr2uSnMJNaXDC0qyWak6geMWNBSFFdH3ow3fLueQ5
 JYfw0bEEOnR+5WWbpu7IE0bOdrBKBU6mfjay78nSwCSuFGFy8348odfGs g==;
X-CSE-ConnectionGUID: 3a/mxAiBSfGn1wht4AGZMA==
X-CSE-MsgGUID: 93tq26VcQa2mY9XciNd7zw==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="99297005"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="99297005"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 11:54:02 -0700
X-CSE-ConnectionGUID: fiGKCF8mTC+cSfC4qhs7mg==
X-CSE-MsgGUID: HPNoA4pQRXC7yX7lPe97vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="228786701"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO [192.168.1.19])
 ([10.124.220.211])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 11:54:00 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH 0/4] drm/i915/bw: Split bandwidth params into platform- and
 display-IP-specific structs
Date: Wed, 08 Apr 2026 15:52:58 -0300
Message-Id: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3N0QrCMAyF4VcZuTYQNy3iq4gXbZdqwK4lGdMx9
 u5WLz/4OWcDYxU2uHYbKC9iUqaG46GD+PTTg1HGZuipd3SiCxpXr35mrC8/p6IZk5aMozSvKBW
 tcpQkEcMbf2k2dOeQgidHQ2Boy1U5yef/ervv+xcqQe0AhQAAAA==
X-Change-ID: 20260408-separate-platform-from-diplay-ip-specific-bw-params-65bfba0603be
To: intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 138D13C1EA7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
Gustavo Sousa (4):
      drm/i915/bw: Extract platform-specific parameters
      drm/i915/bw: Deduplicate intel_sa_info instances
      drm/i915/bw: Rename struct intel_sa_info to intel_display_bw_params
      drm/i915/bw: Extract get_display_bw_params()

 drivers/gpu/drm/i915/display/intel_bw.c | 239 +++++++++++++++++++++-----------
 1 file changed, 160 insertions(+), 79 deletions(-)
---
base-commit: f074368a55893ee121ba2920497b6c25e265d190
change-id: 20260408-separate-platform-from-diplay-ip-specific-bw-params-65bfba0603be

Best regards,
--  
Gustavo Sousa <gustavo.sousa@intel.com>

