Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMK8NWmYymla+QUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 17:36:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1C135DFEA
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 17:36:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E99F10E6E3;
	Mon, 30 Mar 2026 15:36:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g1eowfPw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3AC410E6D2;
 Mon, 30 Mar 2026 15:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774884960; x=1806420960;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=zBikTqzGyOUkIR/e7cmWYObvXF9T1FvkVCnwU3Y187E=;
 b=g1eowfPw7DTvGJnbogmC5ahGSq6zYMeCYjPWcLPQedQC/4uK7IVS75JN
 BgYKgQkdMDjEtEHVMy5NUXKKG/aO34v6ggWwxe/W2fZCGzpYVFGDWr6FL
 7ZQi5yzdtDNi8Cb54GvT/LfZY6sP0/Dy8glOqyvFvRvExqedii0uN1iwR
 u0Zuk30I8lU7MOg1GTkhM/+rkjDFK6rOxbMWdO7o1qcTeYubW3OHAdewn
 vPedeIO+YqI4gy3Y0L8OUxrYiBDpxnyZc7xkvxQEOU9uKga51AaKPDziL
 U8eWZakIqS/xqh2r1A2GYsxfDmPuVFc+rY4ENTubq3ZbLmg4b+QudAUM2 Q==;
X-CSE-ConnectionGUID: rP+3RkeRRnOv43s+4bwCkg==
X-CSE-MsgGUID: oXQUSmR2QWa932k0noNQvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="75769620"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="75769620"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 08:36:00 -0700
X-CSE-ConnectionGUID: ZCfD67a4TV+lM7AckWKTCA==
X-CSE-MsgGUID: dSDqiuGDSvuzu4lQaqAZCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="230560246"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.155])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 08:35:58 -0700
Date: Mon, 30 Mar 2026 18:35:54 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [CI] drm/i915/display: change pipe allocation order for discrete
 platforms
Message-ID: <acqYWkrs5b3MOrnO@intel.com>
References: <20260316121837.1264876-1-jani.nikula@intel.com>
 <2db8f3e8adde89b85da08477ed3f4bd6b7392b5c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2db8f3e8adde89b85da08477ed3f4bd6b7392b5c@intel.com>
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
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 5B1C135DFEA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 30, 2026 at 02:37:47PM +0300, Jani Nikula wrote:
> On Mon, 16 Mar 2026, Jani Nikula <jani.nikula@intel.com> wrote:
> > When big joiner is enabled, it reserves the adjacent pipe as the
> > secondary pipe. This happens without the user space knowing, and
> > subsequent attempts at using the CRTC with that pipe will fail. If the
> > user space does not have a coping mechanism, i.e. trying another CRTC,
> > this leads to a black screen.
> >
> > Try to reduce the impact of the problem on discrete platforms by mapping
> > the CRTCs to pipes in order A, C, B, and D. If the user space reserves
> > CRTCs in order, this should trick it to using pipes that are more likely
> > to be available for and after joining.
> >
> > Limit this to discrete platforms, which have four pipes, and no eDP, a
> > combination that should benefit the most with least drawbacks.
> 
> Ville, I think it's time to review and, pretty soon, merge this.
> 
> Our IGT changes to deconflate CRTCs and pipes have been merged, and
> there's the removal of invalid igt_crtc_t at [1] left. The trybot CI
> results on i915 for swapping pipes B and C on all platforms, not just
> discrete like here, didn't break anything either anymore [2].
> 
> I'm contemplating slapping Cc: stable on this too.
> 
> There's the FIXME on the CRTC index warning.

IIRC we already concluded that the WARN is unnecessary. I'd have to
look through the previous mails to see what I actually said there.

> With the A+C and B+D
> pairing there's no issue, the CRTC indexes remain in that order. But can
> we ever really end up with B+C pairing?

It might be rare if userspace picks crtcs in order. But IIRC we had
bugs where it was clear userspace was just picking random crtcs willy
nilly. IIRC it was sway doing it, and I think I even proposed a
uapi documentation update to suggest using crtcs in order. Can't 
remember that happened to that one.

But I think we still want the "walk the crtcs in pipe order" change,
mainly to keep the more optimal commit sequence. Also I'm not quite
100% convinced we don't have some subtle assumption somewhere about
the order.

BTW I just realized that DG2 may also get a slight extra benefit from
the reordering because A+C has twice the dbuf space compared to A+B.

-- 
Ville Syrjälä
Intel
