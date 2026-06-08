Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id foPbOGi0JmoVbgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 14:24:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DD16561F4
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 14:24:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="RmwCg2/X";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4196E10F2F5;
	Mon,  8 Jun 2026 12:24:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 697A410F2F3;
 Mon,  8 Jun 2026 12:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780921443; x=1812457443;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TrAGXUsCk6JB+MSwl5sqpSAx1775KaUf0D3OIRPQv/Q=;
 b=RmwCg2/X7zz9X3MTWA3m6J6bTI89Y19P0bZizOK+QeIF4WguslShDenE
 jhRZGsxtsxjaDot2YQdUyJRxPtR/G4k8LR11CWQRWObw2ixutWylaQzuS
 dPvmZEvIQy3WMh9hsXsa9KJRbG8Mg962hCk+Lszi66CVtfgb0yszuzHf+
 Q2PmdMZqbVP/Y2zW1WugorpnuD+gtMR2NpZO1LOnLN858bVBvDPCrqUVL
 kilaS0gSMIo3cQxizAkoNRNE/SHdZrn3wIcdN82r8CcJJF6YT8Z+OEp07
 RC7MU5XdYhg9Jgq9w4SXJAQt2G3vK2KJ5Qe8BWOcy+dCBKyg1tx/hjzFT w==;
X-CSE-ConnectionGUID: /w917xrUQVq1+vFBmSycNw==
X-CSE-MsgGUID: KziWUyY+SP6N1n2n5RdujQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="81700916"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="81700916"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 05:24:03 -0700
X-CSE-ConnectionGUID: EUgn6lwxRwSDRgdCuusSig==
X-CSE-MsgGUID: RlUg3MzkSMWfB8eQkO3MUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="241090613"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa006.fm.intel.com with ESMTP; 08 Jun 2026 05:24:02 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH 0/1] drm-tip: build failure
Date: Mon,  8 Jun 2026 14:23:15 +0200
Message-ID: <20260608122316.3131299-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260512162711.51118-4-christian.koenig@amd.com>
References: <20260512162711.51118-4-christian.koenig@amd.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:from_mime,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B1DD16561F4

Hi all,

today drm-tip build failed with following log:

drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c: In function 'amdgpu_cs_submit':
drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:1326:33: error: 'struct amdgpu_vm' has no member named 'invalidated'
 1326 |         if (r || !list_empty(&vm->invalidated)) {
      |                                 ^~


Fixed the build by making same change as did commit 59720bfd8c6d
("drm/amdgpu: restart the CS if some parts of the VM are still
invalidated"), but double check would be probably needed.

BR,
Michał

Michał Grzelak (1):
  drm/amdgpu: check individual moved list instead of invalidated

 drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.45.2

