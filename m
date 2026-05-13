Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NLXFg1OBGrNGgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 12:10:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D515312B6
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 12:10:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0078210EDC6;
	Wed, 13 May 2026 10:10:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aFavV7zs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AE3110EDC1;
 Wed, 13 May 2026 10:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778667016; x=1810203016;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9GA7yrJX3qsaOvGNA8YZYZU2zql7q7T5FhkjtXqrHGM=;
 b=aFavV7zs8lsHeMvK0Ez2pZmG6SqoDXMNe3HLc2+xDrRPs940be5cvbTw
 O/z+tsT12vt4xjuYJUo+Opsse7wbvwqyqRfIa/3+4ZJ71lA2CS4PVXilS
 XHuZUdnLeOiat8ZYAUflFU5Nf6t3ZIjbn9AA6ma0Le5iFq8v/Tkg3p6zc
 xwcGgqYLHjcpyut4Y/CDQebz/Xh4ewsdT5KkZOBy0N02beYtVrZWvVMUv
 iFo0hx8A3z1c0Jmw3XF5yivdId2PpADzLcXHDMecJLXgN1fUpyqoUbVpb
 GRJwMnNhnBgBm1zFQKtPOddH+OgxHh4TuyhWGs3nFnjjWQQavyf2AmXpB w==;
X-CSE-ConnectionGUID: 9FrWiPfiQuuAeFxTU+z9DA==
X-CSE-MsgGUID: 7v5PyluhSum/oYWZ7a/RqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="90973151"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="90973151"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 03:10:16 -0700
X-CSE-ConnectionGUID: lYMae2dsS7yWU47wt8QUeA==
X-CSE-MsgGUID: MlfLNW5lTDKZGMnQ+seJfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="233770335"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.102])
 by fmviesa010-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2026 03:10:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v3 0/6] drm/i915: add display irq hooks
Date: Wed, 13 May 2026 13:10:05 +0300
Message-ID: <cover.1778666967.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
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
X-Rspamd-Queue-Id: 73D515312B6
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

v3 of [1].


[1] https://lore.kernel.org/r/cover.1777933454.git.jani.nikula@intel.com


Jani Nikula (6):
  drm/i915/irq: deduplicate dg1_de_irq_postinstall() and
    gen11_de_irq_postinstall()
  drm/i915/irq: constify pipe stats parameters
  drm/i915/irq: add display irq funcs, start with
    intel_display_irq_reset()
  drm/i915/irq: add intel_display_irq_postinstall() to irq funcs
  drm/i915/irq: add intel_display_irq_ack() to irq funcs
  drm/i915/irq: add intel_display_irq_handler() to irq funcs

 .../gpu/drm/i915/display/intel_display_core.h |   3 +
 .../gpu/drm/i915/display/intel_display_irq.c  | 238 +++++++++++++++---
 .../gpu/drm/i915/display/intel_display_irq.h  |  37 +--
 drivers/gpu/drm/i915/i915_irq.c               | 182 +++++---------
 drivers/gpu/drm/xe/display/xe_display.c       |   6 +-
 5 files changed, 277 insertions(+), 189 deletions(-)

-- 
2.47.3

