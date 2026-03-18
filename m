Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKVUI9dvumnRWQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 10:26:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D992B8FC7
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 10:26:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CFFA10E77C;
	Wed, 18 Mar 2026 09:26:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FbXJltsG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69E5710E779;
 Wed, 18 Mar 2026 09:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773826003; x=1805362003;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=N1i5m1NjWThIXJu4MxH3bwtIYEBGWAt82Nfiv5h2RLE=;
 b=FbXJltsGO8au7AWbYlwTTo7rZL3VDqVey3+0IPuPyv3/IDQxWMaAjExj
 Lnzln4rtDP9FwujQDsuGHcLNvGHvLO6tyN6bA6qf6ptDhp0NV8WLqOtum
 kgX9jO2W5ulwzxAkt5fFqPRV8b89X5/RcL9XJogYRjyeZhGz5fP3ZKt1S
 yA4+XoNWrATOMGRxXH7ZciyQn0oNyk3awzfBrA36d+gXxp+w+YlsNv2V/
 xDP0NFq60GVJV3WNQNOtoJBP/ZaU/kqaTmKF7r7Mz/KH6A8OqlL+sKr/w
 qXgnbzCAkjXm7VpALy3dXu0UjTl1GCYImJ91zKygnoIpcvWGCMpjfEI0f Q==;
X-CSE-ConnectionGUID: YrSr6Xf+Qg+kfsSOAZKaxw==
X-CSE-MsgGUID: ML2yC5paTmGfCQm83AgODQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="85953857"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="85953857"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 02:26:43 -0700
X-CSE-ConnectionGUID: lXfv0MqDT/OVTLjiUUU5dw==
X-CSE-MsgGUID: kPCBeupGRkWEopuailZglA==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 18 Mar 2026 02:26:40 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: jouni.hogander@intel.com, imre.deak@intel.com, jani.nikula@intel.com,
 arun.r.murthy@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v8 0/3] Panel Replay BW optimization
Date: Wed, 18 Mar 2026 14:26:39 +0530
Message-Id: <20260318085642.3621166-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 61D992B8FC7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Unused bandwidth can be used by external display agents for Panel Replay
enabled DP panel during idleness with link on. This patch series
enabling the same.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Animesh Manna (3):
  drm/i915/display: Add drm helper to check pr optimization support
  drm/i915/display: Add hook to check optimization support for Intel
    platforms
  drm/i915/display: Panel Replay BW optimization for DP2.0 tunneling

 drivers/gpu/drm/display/drm_dp_tunnel.c       | 17 +++++++++++++++++
 .../gpu/drm/i915/display/intel_display_regs.h |  1 +
 .../gpu/drm/i915/display/intel_dp_tunnel.c    | 18 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_tunnel.h    |  6 ++++++
 drivers/gpu/drm/i915/display/intel_psr.c      | 19 +++++++++++++++++--
 include/drm/display/drm_dp_tunnel.h           |  6 ++++++
 6 files changed, 65 insertions(+), 2 deletions(-)

-- 
2.29.0

