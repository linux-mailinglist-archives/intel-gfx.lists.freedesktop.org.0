Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJIoHFJgEGobWwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 15:55:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8AD5B5995
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 15:55:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78D7910F6D8;
	Fri, 22 May 2026 13:55:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jfIS3sjn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 828C410F6D8;
 Fri, 22 May 2026 13:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779458128; x=1810994128;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=30td6Qe00ivsErn6mHuLefubhQdif2UM7K8DI8YAF7I=;
 b=jfIS3sjnsTY0oY9vbvDEIVgoPsp2cKtbQerZ8WF0EegF+TPag0tLZqi0
 fZ86sJoCWC2uhggp6cX8+3fh6BOSStnlk3EBh/99cAaGwCbHzUmugXGDX
 P1AJvcBRL76MjcdYXb5n/np0F3W5z1FXdcge0dsc+04+k6c24CbKIMtd9
 /rk1SF7vMlaMAitTM2zJ7zIUpC2fHjopr9ZA3WiXUVuE5dmJUsZ+70oko
 xIkChp9Fu7whViaMaqhtsBgAm6BFaLW3hkRPd2JB3kh+1ZaOjR55MvKFn
 Nz+QS955P5qtqd7GtHFirRJ+4FWKKc/5o+ncC+xhAs0W4Y73r/36UrlQn g==;
X-CSE-ConnectionGUID: GnTfEqPxRsWx754QYfRdZQ==
X-CSE-MsgGUID: EnwbmYJSQqGRvkqMbZoysQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="97809507"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="97809507"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 06:55:27 -0700
X-CSE-ConnectionGUID: bkZwtChaQlmC/pKL64C/KQ==
X-CSE-MsgGUID: 03thC8SCTPGuUvBENyOBpw==
X-ExtLoop1: 1
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa003.fm.intel.com with ESMTP; 22 May 2026 06:55:25 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 0/2] fixes to DRM doc & parameter's print
Date: Fri, 22 May 2026 15:55:18 +0200
Message-ID: <20260522135520.1862848-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	URIBL_MULTI_FAIL(0.00)[gabe.freedesktop.org:server fail,intel.com:server fail];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: EA8AD5B5995
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Next version of [1]. Changed commit message to mention kernel-doc of
actually changed macro.

[1] https://lore.kernel.org/intel-gfx/20260521155231.1821935-1-michal.grzelak@intel.com/

BR,
Michał

Michał Grzelak (2):
  drm/print: describe 6th & 9th bit of drm.debug
  drm/managed: fix drmm_add_action() kernel-doc

 drivers/gpu/drm/drm_print.c | 4 +++-
 include/drm/drm_managed.h   | 2 +-
 include/drm/drm_print.h     | 2 +-
 3 files changed, 5 insertions(+), 3 deletions(-)

-- 
2.45.2

