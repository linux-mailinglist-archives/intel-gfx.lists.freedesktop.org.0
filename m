Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAPFDAjvpWlLHwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:11:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7621DF2BC
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:11:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7B5610E5BE;
	Mon,  2 Mar 2026 20:11:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iW7vv9Rz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F152D10E5B4;
 Mon,  2 Mar 2026 20:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772482309; x=1804018309;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=XZ7qy3JTXa+wR8ykniT1vG8hSi4IGIy2rc7hCedMyqU=;
 b=iW7vv9Rzv6XdVecv7zcP+CxqWkvsV1eLfDxQIV8Rybvt4hrA4LG174C8
 p9a5GbK0j0X9+yJbXyknL2LFOPsjjq0MnQqQFb+p8altLLsdJ4yj2c62D
 zD3yWevxo8R/t3GMULaOVnhNFcK6QnLFFQJbvnyiUhSAUIAxAIullJ+NG
 pK4phkufeSjxAP266AuUfIaLu70gTyJXHAo9+uY+Tl3VKn0bJBWW6dd5a
 3jSuYNJW4vu1R2ogmEaW9q/LhOqe2QLAt5VdD6gCOBb51pnxSd/G8Dfus
 kH/ZMG99wmSKDPgDwU6QdpVQ73oPK/sf8kL/u94av9MlovI30d52BGl14 w==;
X-CSE-ConnectionGUID: e57bhH1uT3qn3hOofkXWjw==
X-CSE-MsgGUID: RLmTXxIwRoO1/Wm856yE4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="90897250"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="90897250"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:11:49 -0800
X-CSE-ConnectionGUID: ZXWozV03S2q0khKhe8Hn/A==
X-CSE-MsgGUID: 5X9rvQG8RVOQdTz8ddYhtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="214936106"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:11:47 -0800
Date: Mon, 2 Mar 2026 21:11:45 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 rodrigo.vivi@intel.com
Subject: Re: [PATCH 7/8] drm/intel: add pick.h for the various "picker" helpers
In-Reply-To: <fcd70f3317755bf98a6e7ae88974aa8ba06efd1e.1772042022.git.jani.nikula@intel.com>
Message-ID: <9ce79027-3067-4e69-2ea8-bd0e2fd8177f@intel.com>
References: <cover.1772042022.git.jani.nikula@intel.com>
 <fcd70f3317755bf98a6e7ae88974aa8ba06efd1e.1772042022.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="1527428566-1802583461-1772481923=:1837396"
Content-ID: <6e0da1d4-7a11-6917-2a74-670f334f3d12@intel.com>
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
X-Rspamd-Queue-Id: CC7621DF2BC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--1527428566-1802583461-1772481923=:1837396
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <206345d9-4917-1d06-28c7-35931e233b8c@intel.com>

On Wed, 25 Feb 2026, Jani Nikula wrote:
> Add a shared header that's used by i915, xe, and i915 display.
>
> This allows us to drop the compat-i915-headers/i915_reg_defs.h include
> from xe_reg_defs.h. All the register macro helpers were subtly pulled in
> from i915 to all of xe through this.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--1527428566-1802583461-1772481923=:1837396--
