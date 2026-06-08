Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rjTOLWMKJ2qoqgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 20:30:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7E2659BC1
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 20:30:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GhJYst6w;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F99E10E2D1;
	Mon,  8 Jun 2026 18:30:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4F9810E2D1;
 Mon,  8 Jun 2026 18:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780943457; x=1812479457;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+muAntL9O9vmC2aBdtX/aTK94/e1DHDgU/ZCjspzQ9k=;
 b=GhJYst6wlMAzx/382clyvezilj5fMSQj5d1fmMUUnXMEapCFtiiTB+dj
 zhXWxUVYkOzuNXWlMQfUCfom8zKWLxcpNmyOKFCNCrn2g8L42nFv/T0Rk
 +JSbvddLj+RBEH2zWc6EGhs32VoWvC++kS+EiO+kP19xZK5aYc/UIlvdI
 k1jVNv1MJSNW4nRZPSMomRsYx9tjWHvrqh1r+4RBLuYSCKKW6wIf9GxHw
 ah9vjVuwesKqs85yn8GpVT8inQeZaXby3/sj9bO7uyKPEP1UQb5rcmBUK
 9CBmQlpr+4M4JHlLnSwU323o7dyF/y6yjAeN6r60g0rD40ssl1pUwKr2C w==;
X-CSE-ConnectionGUID: sXQV4ohHTtSTsVcYJr3v5A==
X-CSE-MsgGUID: mkNBGyh2T4a1iIG8IBiP3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="85543975"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="85543975"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 11:30:56 -0700
X-CSE-ConnectionGUID: 5w4nWMnjSVuuUrH+zdCnKw==
X-CSE-MsgGUID: zfrx4UVdRuy0Ior+lwPG+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="249542001"
Received: from osgc-sh-dragon.sh.intel.com ([10.239.81.44])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 11:30:54 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 raag.jadav@intel.com, Michal.Wajdeczko@intel.com
Subject: [PATCH v4 0/5] drm/{i915,
 xe}: Refactor generic_handle_irq_safe() error messages
Date: Tue,  9 Jun 2026 02:30:45 +0800
Message-ID: <20260608183050.3875235-1-jonathan.cavitt@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DC7E2659BC1

Currently, all but one uses of generic_handle_irq_safe() report error
messages using .*_err_ratelimited() error reporting helper functions.
These helper functions declare their error messages in the following
form:

"error handling [COMPONENT NAME] irq: %d\n"

.*_err_ratelimited() already logs "error" as a part of the error
message, so declaring the error is redundant.  Reword it.

The last usage of generic_handle_irq_safe() is in xe_i2c_irq_present(),
and it currently lacks the same error reporting as in the other cases.
This is not intentional, so put some logging there.

While we're here, we should also update the XE cases to use
xe_err_ratelimited() instead of directly calling drm_err_ratelimited().
However, mixing drm error reporting functions with xe error reporting
functions in the same file looks unprofessional, so update all drm error
reporting functions in xe_heci_gsc.c and xe_i2c.c to use their xe
counterparts.

This includes updating drm_warn_once() to use xe_warn_once() instead.
Unfortunately, xe_warn_once() does not exist, so create it.

We should also update some of the error messages on XE and I915 to
better report the error codes while we're touching them.

v2:
- Split XE and I915 refactors, squashing the XE refactors earlier
  (Wajdeczko)
- Use different error message for generic_handle_irq_safe() (Wajdeczko)
- Refactor other error reporting functions on XE (Wajdeczko)

v3:
- Fix compile error (jcavitt)

v4:
- Update heci_gsc_add_device() error messages (Wajdeczko)

Jonathan Cavitt (5):
  drm/xe/printk: Add xe_warn_once()
  drm/xe/heci: Use xe print functions in xe_heci_gsc.c
  drm/xe/i2c: Use xe print functions in xe_i2c.c
  drm/i915: Refactor generic_handle_irq_safe() error messages
  drm/xe/i2c: Report i2c irq handler issue

 .../gpu/drm/i915/display/intel_lpe_audio.c    |  2 +-
 drivers/gpu/drm/i915/gt/intel_gsc.c           |  2 +-
 drivers/gpu/drm/xe/xe_heci_gsc.c              | 21 +++++++++----------
 drivers/gpu/drm/xe/xe_i2c.c                   | 11 ++++++----
 drivers/gpu/drm/xe/xe_printk.h                |  3 +++
 5 files changed, 22 insertions(+), 17 deletions(-)

-- 
2.53.0

