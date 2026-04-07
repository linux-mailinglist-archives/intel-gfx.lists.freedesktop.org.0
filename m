Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOgQF38s1Wli1wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 18:10:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5813B187F
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 18:10:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B31010E486;
	Tue,  7 Apr 2026 16:10:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J6Mjq0uG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9BD810E08E;
 Tue,  7 Apr 2026 16:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775578235; x=1807114235;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MGuqhlMOH7Mubdbm2RPvMBNhVZ1Lj2G/JxqP8da/dAc=;
 b=J6Mjq0uG0ZlmeehZnmXBe5rRwpVHluMLCFx6BpEt0kfCOkmGEb7h8/xr
 7lEQiDIMKMuqp2TF1n8vxvXeM3+wCn5nWoL2nAjTS3wBkPMLheitxvxvo
 rXqxV5vSWOyXrgtlgXqyYu8/f0DXHPUSue7+EMovhj5XgEZLHykl3ku3f
 +G1lJMuvWKuKPb7Yz6skXy/Q1JD/h5A8tWo7EaB3meWWzsc/7EjKgqcz6
 H94/HbVmfvFnqrG45cpPYqKwTqzG+OVesN0c8YLFdWx5Fkt/I8N7bYrjc
 UAw9rgUuwwrS/9Z0TNet7Kg0GaxnxNQm6HkeQAwsCErSOW/3+pvg5NwQR Q==;
X-CSE-ConnectionGUID: hV07gUk+R1iEvAX8rORK8g==
X-CSE-MsgGUID: 1bAZOyIbSdeGmWm8ZCOVoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80433754"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="80433754"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 09:10:35 -0700
X-CSE-ConnectionGUID: jahzR2MGRmCTpgUU45Z7LA==
X-CSE-MsgGUID: hfYmRSGNTLKt/zD2DOXQoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="228123809"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.211])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 09:10:26 -0700
Date: Tue, 7 Apr 2026 19:10:23 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/i915/mchbar: move intel_mchbar_regs.h under
 include/drm/intel
Message-ID: <adUsb9ODzDKO6jBA@intel.com>
References: <cover.1775559414.git.jani.nikula@intel.com>
 <581eef80fb77b4ab78ca040e60b2a29c844a5232.1775559414.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <581eef80fb77b4ab78ca040e60b2a29c844a5232.1775559414.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.63)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: DE5813B187F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 01:57:41PM +0300, Jani Nikula wrote:
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c               | 2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c                 | 2 +-
>  drivers/gpu/drm/i915/gvt/handlers.c                         | 4 ++--
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c                 | 2 +-

Those four don't seem to need the header anymore.

-- 
Ville Syrjälä
Intel
