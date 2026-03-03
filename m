Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OG+7Bs0Xp2m+dgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 18:18:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D89F1F4803
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 18:18:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0543C10E894;
	Tue,  3 Mar 2026 17:18:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R/otYeIJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 032AC10E0C3;
 Tue,  3 Mar 2026 17:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772558277; x=1804094277;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tR4vh10wYli0MphjcUWkzlsojlbu3sAAfWV8dQrIPCU=;
 b=R/otYeIJpP5uHnUC/Q7lgVYSGYNVZu2RjJBF6HXsEfP7iRdsMnw0nsL9
 15GEkDx69PxWAZWZPsgF2hTqA/Yb2b7uH21CVzIW81ZbIINpdgn6d6LvP
 HS1BwHTzkUn6t8iPRB3hgGkY1ntcGrRubLXstroCbiO/pXgZ85LNgxgkQ
 W0j9yD4UTpi4Zw6r8tF8gGYHOpgU97dx8KkVl0Yjn/fQvZiBmHcNSxJ21
 oSgvx0DQISD4Msktamp2IeJRlbqukpN2Fwg6NnROFQ3GsaMil82uQwIvf
 7g33nibgqL6th4KKgQMJ3DalFSGoNYLPNafRnoLr0uonLyNrZJ2QyeKq2 w==;
X-CSE-ConnectionGUID: rI9C+AdcSESpEB3KGHv/ww==
X-CSE-MsgGUID: XDEFQFsxShOYzw6xgoS+Pw==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="84698551"
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="84698551"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 09:17:56 -0800
X-CSE-ConnectionGUID: ZG9qZFsNSEWHGGVePtrRug==
X-CSE-MsgGUID: nH+uHY1aS4CoA6Ki5sK47A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="218186770"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.23])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 09:17:55 -0800
Date: Tue, 3 Mar 2026 19:17:51 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/overlay: Fix oops on unload
Message-ID: <aacXv1odTUPZpQZW@intel.com>
References: <20260303101417.14409-1-ville.syrjala@linux.intel.com>
 <67e4ef68-268c-57ad-1abd-5c07cefd6270@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <67e4ef68-268c-57ad-1abd-5c07cefd6270@intel.com>
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
X-Rspamd-Queue-Id: 7D89F1F4803
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.52 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.83)[subject];
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 11:25:55AM +0100, Michał Grzelak wrote:
> On Tue, 3 Mar 2026, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Apparently I failed to test the unload case properly and
> > thus didn't notice that the i915_overlay_is_active() needs
> > i915->overlay after fetch_and_zero() already cleared it.
> > Stop using fetch_and_zero() and only clear the pointer at
> > the end to avoid the oops.
> >
> > Fixes: 38d9a352c45e ("drm/i915/overlay: Extract i915_overlay_is_active()")
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>

Thanks. Pushed.

-- 
Ville Syrjälä
Intel
