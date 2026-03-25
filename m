Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOOHAtICxGnOvQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 16:44:18 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 819773284AE
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 16:44:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 841AB10E7BD;
	Wed, 25 Mar 2026 15:44:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Iy2G1rGF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F8FE10E15F;
 Wed, 25 Mar 2026 15:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774453454; x=1805989454;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=vqGE1NYdTRu444bhmKZ3SpM+wtj27zgztsHbOtDKvEI=;
 b=Iy2G1rGFl/R/xHaKBbZuFaqqiEqpoa5dmAFfIPYgLHZ/WDmcsP5En97n
 lrxXAm7jE9J0PWPRl01u9es8uldqG9N6PT9YOUrzYEgnzuDOeSfziHZFY
 HJGwEfSVHAa5WJbuj3769lbGSXpZ6V1fQKbEwbtE4/D8M9PwgA/auR5Iq
 jB8NJvbS6d1o6988VjhofOVci4Nojel0YTQvD2hl6p/jxBDNwdveYqJbQ
 /xd/wirWFb2wUNkr6DdxazBMUYlUOhSxL7H5q/Emd/inzixiZkdLmUpRQ
 p44nyplVQzWjzIPlOZwLvCmEE7G94tVCVi5H65sBAo/GhzqWB3EIvvyrh A==;
X-CSE-ConnectionGUID: 5D7TEohFTDmpPFca14poLg==
X-CSE-MsgGUID: z0QpcFjwS0ij6wWVgVi6hg==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="86574056"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="86574056"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 08:44:13 -0700
X-CSE-ConnectionGUID: uwjOXqQOT4m9kzwZETLcXA==
X-CSE-MsgGUID: ShcFUYL2SbK8pilXRrHVpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="221400008"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 08:44:12 -0700
Date: Wed, 25 Mar 2026 16:44:10 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 stable@vger.kernel.org
Subject: Re: [PATCH 2/6] drm/i915/dp: Use crtc_state->enhanced_framing properly
 on ivb/hsw CPU eDP
In-Reply-To: <20260325135849.12603-3-ville.syrjala@linux.intel.com>
Message-ID: <984a8f43-7e5a-2d8c-3efb-7439cb4552ec@intel.com>
References: <20260325135849.12603-1-ville.syrjala@linux.intel.com>
 <20260325135849.12603-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-916698106-1774451826=:294612"
Content-ID: <6eadb5af-8903-146f-2175-4180ae7e8864@intel.com>
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 819773284AE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-916698106-1774451826=:294612
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <f46daaee-d612-1290-8390-746dc68ba834@intel.com>

On Wed, 25 Mar 2026, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Looks like I missed the drm_dp_enhanced_frame_cap() in the ivb/hsw CPU
> eDP code when I introduced crtc_state->enhanced_framing. Fix it up so
> that the state we program to the hardware is guaranteed to match what
> we computed earlier.
>
> Cc: stable@vger.kernel.org
> Fixes: 3072a24c778a ("drm/i915: Introduce crtc_state->enhanced_framing")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-916698106-1774451826=:294612--
