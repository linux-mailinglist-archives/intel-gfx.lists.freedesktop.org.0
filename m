Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oKrnLHAO5mkGrAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 13:30:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A2E429ED1
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 13:30:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B52A210E4F5;
	Mon, 20 Apr 2026 11:30:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l+kOb/QJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EC9010E4F5;
 Mon, 20 Apr 2026 11:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776684652; x=1808220652;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/5Hx0A2EvZGERifFZODPmlo0wbwzbagDSmY63UN0BbY=;
 b=l+kOb/QJgC/IKj1cygca1/uiYwKnfkECLf1tbJCfvFieb+GR4IjeYQFD
 OZCyAwM7/PKywfveP58g4aUUqnmcv+ja6ZxdbHydl3GhtaNLysmfjPiyX
 9Jt1VJikUEyNnhgR2zImbD7AF+AQOvEPzB46VJQ66YWYBUSF7fTWvEZJ/
 qd7iiRujL/DvTH2UWJnxFxSr8mqri2AHxLkj2k8ojQhudHeJfCYcyPmZs
 yi1RU0PIxPIzYVMJkKcHTFsjSdCah2ou47gGNzA2zzeHW7qdnA6yzlZ4c
 tUY9ZJweefG6CAHfqg+oZwBzlmwerC3TOF9OMivtdGvc+dysmRjGBUwjY A==;
X-CSE-ConnectionGUID: K6exsWNJTIyq9cSWHdmevQ==
X-CSE-MsgGUID: fvmKFq5bSHm3t9KluYyLdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="77722721"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="77722721"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 04:30:52 -0700
X-CSE-ConnectionGUID: PUaJEyGZS+6U99+brQ2GNw==
X-CSE-MsgGUID: UMQBH1trTrSvceQU8dATqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="236690565"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa005.jf.intel.com with ESMTP; 20 Apr 2026 04:30:50 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 0/2]  DSC max delta bpp support
Date: Mon, 20 Apr 2026 16:56:09 +0530
Message-Id: <20260420112611.1481530-1-nemesa.garg@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 25A2E429ED1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

    Some sinks exposes DSC max bpp through delta based
DPCD fields. To support those sinks, add DP DPCD field
field and logic to decode the delta value in bppx16
format.


Nemesa Garg (2):
  drm/dp: Define DSC bpp delta DPCD fields
  drm/i915/dp: Decode DSC max delta bpp from sink DPCD

 drivers/gpu/drm/i915/display/intel_dp.c | 40 +++++++++++++++++++++++++
 include/drm/display/drm_dp.h            |  8 ++++-
 2 files changed, 47 insertions(+), 1 deletion(-)

-- 
2.25.1

