Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kN7nJvkt6mmVwQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 16:34:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C26CB453C15
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 16:34:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CA4C10F184;
	Thu, 23 Apr 2026 14:34:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rw7i+hL+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDFC610F17A;
 Thu, 23 Apr 2026 14:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776954867; x=1808490867;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=higSxJkHWQN8eJyeh0jg1Ggy97nKVirSTQApciHIzqg=;
 b=Rw7i+hL+9+6pxOQLQRuRlww+rTnGcDFDQPsoekf0bbW3zoSrWOUmw0D/
 cPM177KU0tBBnn900IKd8Ka3iFNz2lD8JXiTnaHh6ThN+IdfgO7OHzXUb
 6TECg6NKQl56o3Ln0I0FoXEf9eZhUG/kTNKcmBZumyCbPLxLamuTXU09n
 qurfrfZ/4NlJ12eySolIOpK31iD9/R/RxtoKr5pIGHt3ZtsWp/t0MtRwZ
 urOyy1jyIF5NA5OcIoF0ZYXkvy4ufjjy7xYEGlYV91BPlOMB1NdTJfQNR
 H/9GAXQRLDHKff6LwaDwl24lPQSUHuwGLE9oq/beG4XTVhOY3I1lCqsmV Q==;
X-CSE-ConnectionGUID: yjV0sGPOR8mOOAoCB+TRrA==
X-CSE-MsgGUID: i8FM8Fj4TRK9k0lNU0JGdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="76957630"
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="76957630"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 07:34:26 -0700
X-CSE-ConnectionGUID: FMk6G9E0Rb6bVvLMY2VjPg==
X-CSE-MsgGUID: 69230ZruTFmU6o/gkzRveg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="256170448"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa001.fm.intel.com with ESMTP; 23 Apr 2026 07:34:24 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 0/3] DSC max delta bpp support
Date: Thu, 23 Apr 2026 20:00:32 +0530
Message-Id: <20260423143035.2267634-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: C26CB453C15
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

    Some sinks exposes DSC max bpp through delta based
DPCD fields. To support those sinks, add DP DPCD field
field and logic to decode the delta value in bppx16
format.

Nemesa Garg (3):
  drm/dp: Add DP_DSC_MAX_BPP_DELTA register
  drm/dp: Add max bpp delta computation constants
  drm/i915/dp: Decode dsc max delta bpp from sink dpcd

 drivers/gpu/drm/i915/display/intel_dp.c | 43 +++++++++++++++++++++++--
 include/drm/display/drm_dp.h            | 21 ++++++++----
 2 files changed, 55 insertions(+), 9 deletions(-)

-- 
2.25.1

