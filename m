Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kxNsFX7qMGrMYgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 08:17:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA04868C703
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 08:17:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Jp1fEkim;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5623F10E837;
	Tue, 16 Jun 2026 06:17:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5827410E641;
 Tue, 16 Jun 2026 06:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781590651; x=1813126651;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=VVzBew4jt0Y80n9awoySAfXUnfrFxZh9rQjcUS3IXzQ=;
 b=Jp1fEkimdgeElvMHnnjXQ7IEtF4SCSspwCZCGq7JN3Fq8HDuhydnMopi
 lyXuQok7WSuZOvauqF84gCjL5vxmkhPgxwgdHVMJM/FsPApIpgVO4Yv6+
 uFBWlg+k9Bq59UV7UhORZQkhs5kLx9cdnEZxXmhFT7MUbnS9VTqGur1oM
 rIg9Un9vhXpAyy72hYpeKKuu3F/4LgCe5CgvPewpHj1564MXle2WP9eAw
 pajA5JnJ8milVW437O99lcQaUJNVt+dO+WvgBc3hOrnKg9rUEzVVD79ns
 44Z4YubsgHFkHyPmpJmwY3P3ZVstwr3eS69iP+AkQHIpwR8Cdy938ybqZ Q==;
X-CSE-ConnectionGUID: dzk2169tSbyVpBKyZdHz3w==
X-CSE-MsgGUID: Bw8GGeqvQNezF9nRdHqjqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82088140"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="82088140"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 23:17:30 -0700
X-CSE-ConnectionGUID: MchZDW+xRSWy15ro4D8dYg==
X-CSE-MsgGUID: Z9kH+YRnQMC6YuC675CwCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="251973646"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa004.jf.intel.com with ESMTP; 15 Jun 2026 23:17:29 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v2 0/2] Unify fec enable/disable across the mst streams
Date: Tue, 16 Jun 2026 11:45:50 +0530
Message-Id: <20260616-fec-v2-0-49a22680138c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABbqMGoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHQUlJIzE
 vPSU3UzU4B8JSMDIzMDM0Mz3bTUZF0Lo0TjFCPzVIM0Q0MloMqCotS0zAqwKdGxtbUAfcb8kFU
 AAAA=
X-Change-ID: 20260616-fec-82a3d27e0f11
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>, 
 Stephen Fuhry <fuhrysteve@gmail.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[intel.com,gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,patchwork.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CA04868C703

First version of the patch included only one patch i.e the ref count
https://patchwork.freedesktop.org/series/167664/

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
Arun R Murthy (2):
      drm/i915/mst: Unify fec_enable across mst streams
      drm/i915/display: Refcount for fec enable/disable

 drivers/gpu/drm/i915/display/intel_ddi.c           | 58 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_ddi.h           |  1 +
 drivers/gpu/drm/i915/display/intel_display_types.h |  3 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c        | 70 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_modeset_setup.c |  6 ++
 5 files changed, 138 insertions(+)
---
base-commit: c585a0a7e48a48aca80f7c0acb7294c7bf301bb7
change-id: 20260616-fec-82a3d27e0f11

Best regards,
-- 
Arun R Murthy <arun.r.murthy@intel.com>

