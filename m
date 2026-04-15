Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEWPOhvk32n9ZwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 21:16:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64432407523
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 21:16:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFCFC10E75C;
	Wed, 15 Apr 2026 19:16:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GFjTEZc7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EA1B10E74D;
 Wed, 15 Apr 2026 19:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776280599; x=1807816599;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=u9Jk6XIJWWR1cJ56Q1L2GEys47wi/1PVK05xIE3RW7E=;
 b=GFjTEZc7ZCaeDI23BFBXa+L+OGvCteqTO6lYkWjX6DmDLBtuLVnfpeLo
 ZyXxXw9lO0avXUtGgSzt0CGL3I0EbZYPZ8O9m07Zt70KuczMgARUhptbC
 W+WOkh47SyE9k5UnjQyRB8+pB5CT+dDXKUN3rFkN0oqXUMNEvm3GRqcI8
 FKVU+RrL8rX/qMQ3gzsKKPd1LzeQkuWcyOGKvZsSNbRsyF49A063r5yuk
 U1f78DJ4UOn1aFqVdYhZbyYIQGFhxeXjYwNjwHlwNkRhQP2F1otoZZVxh
 cGtCn2zlpEXSgAmM9BhEtyCvxloKVBvvAzmXJ9kZcL4exUlNuvea6cdIA w==;
X-CSE-ConnectionGUID: PFK+mSwCRUCZkaIyz3J3Hw==
X-CSE-MsgGUID: Xygyorb3SLaWIiFqMLW6IQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="102735580"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="102735580"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 12:16:39 -0700
X-CSE-ConnectionGUID: XMFb1mE4T1+16wGKQTjYIg==
X-CSE-MsgGUID: Zmenxb6jQPyuRTcRJoQQbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="230359127"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.108])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 12:16:37 -0700
Date: Wed, 15 Apr 2026 22:16:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jake S <j@metarealtyinc.ca>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/display: allow eDP VRR when EDID has
 adaptive sync range
Message-ID: <ad_kEgDZiDIPy1Cs@intel.com>
References: <20260415130626.10523-1-j@metarealtyinc.ca>
 <20260415130626.10523-3-j@metarealtyinc.ca>
 <69dfe22f.050a0220.301b30.5755@mx.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <69dfe22f.050a0220.301b30.5755@mx.google.com>
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
X-Spamd-Result: default: False [-0.78 / 15.00];
	R_MIXED_CHARSET(0.53)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 64432407523
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 15, 2026 at 07:08:30PM +0000, Jake S wrote:
> Hi Ville,
> 
> > AFAICS the Windows driver does respect that VBT bit. So we should too.
> 
> That's fair -- I don't have visibility into the Windows driver
> internals so I can't say definitively whether it checks VBT or not.
> 
> What I can confirm is the end-user result: on this Dell XPS 2026
> (Panther Lake), VRR 20-120Hz works on Windows but not on Linux with
> the same firmware. The VBT does not contain a VRR flag for this panel
> at all -- intel_vbt_decode shows no VRR-related fields in the child
> device block.

It's in the LFP power block (44).

> 
> So either Windows has a fallback path when VBT doesn't declare VRR,
> or Dell's Intel DCH driver ships with a driver-side override.

My cursory glance didn't spot any registry key stuff in there
either. That I think is the usual "screw proper design and just
hack it" approach for the Windows driver.

> Either
> way, the panel clearly supports VRR (the EDID's DisplayID extension
> explicitly declares Adaptive Sync 20-120Hz), and it works in practice
> on this hardware.
> 
> Framework laptop users have reported the same class of issue with
> their BOE panels.
> 
> If respecting VBT is important (and I understand the reasoning --
> OEM validation), would something like a quirk table or a module
> parameter be an acceptable alternative? I'd rather have any path to
> making this work than no path.

One can always hack up the VBT and use the firmware loader
to override it.

-- 
Ville Syrjälä
Intel
