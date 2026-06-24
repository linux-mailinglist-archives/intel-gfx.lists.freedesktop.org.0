Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id M3X+FByyO2rqbQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 12:31:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 038D86BD631
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 12:31:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="c/pdAAqg";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11FCD10EE85;
	Wed, 24 Jun 2026 10:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDFE710EE7D;
 Wed, 24 Jun 2026 10:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782297111; x=1813833111;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DtJ/CNN9GumTvr2hAj6sRgQ9MHu53c3lB1R067sVku8=;
 b=c/pdAAqgNnSqHxYEADCgqwqiXxMMAlZfV6+TclF6uviA63in/Q+eu0o2
 8G2YYXMry8WTCu7vDb3WTrSYhVQhzpraWHvP1KdbwmhthtJOgPEp3X9RK
 o4W9ZIUrBo9W4Ey7nGNs4rBublR/m2VFjUcosa0llTsW7bxXYNHXmWzQg
 F+KTDZ4QM8JqeCPG7NsKKCdj2MOfA1TFpP7KzV11iSooieONVYpKxWAI5
 CMrbF7XAgAVG3EQlVVe2qklpXJZejAZYuGuKQwdQPsFNP/5kUCduZhFV3
 qXVEgq7OFZCZIcFUwuX3ELL8yoIQq9/RpRsmXnSSA6SV6G6cFPGC62RMw Q==;
X-CSE-ConnectionGUID: AUr9s5GzRc+xOagyIMuimQ==
X-CSE-MsgGUID: ViBzy96DQJ6TpwulJLLGbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="86898254"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="86898254"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 03:31:50 -0700
X-CSE-ConnectionGUID: gZSgSSrXSQGPs8UD06tZCg==
X-CSE-MsgGUID: lU/PpAQQT8efGMJ9IEQrjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="253690412"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.244])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 03:31:48 -0700
Date: Wed, 24 Jun 2026 13:31:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: =?iso-8859-1?Q?Gabr=EDel_Arth=FAr_P=E9tursson?=
 <gabriel.petursson@jbtmarel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 "tursulin@ursulin.net" <tursulin@ursulin.net>
Subject: Re: [PATCH] drm/i915: Calculate CDCLK on modeset after sanitizing
 pre-os programming
Message-ID: <ajuyD3vOdMdvbGqx@intel.com>
References: <AM9PR06MB78601E2636164181A4689CC281EF2@AM9PR06MB7860.eurprd06.prod.outlook.com>
 <ajqXK-fZnty-YGCK@intel.com>
 <178228365985.16303.14222363163462260344@jlahtine-mobl>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <178228365985.16303.14222363163462260344@jlahtine-mobl>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.69 / 15.00];
	R_MIXED_CHARSET(0.62)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 038D86BD631

On Wed, Jun 24, 2026 at 09:47:39AM +0300, Joonas Lahtinen wrote:
> Quoting Ville Syrjälä (2026-06-23 17:24:43)
> > This smells like the same thing I already fixed with
> > commit 3f9de66f8acb ("drm/i915/cdclk: Fix up CDCLK_FREQ_DECIMAL
> > without a full PLL re-enable")
> > 
> > Sadly it looks like I forgot to cc:stable it :/
> > 
> > Jani, can you pick that up for -fixes and slap a cc:stable on it?
> 
> I'll include it in drm-intel-next-fixes, do we have a
> Fixes: tag to add?

It's been basically broken forever so the correct fixes
tags probably aren't super useful.

However the nastier user visible regression happened in 
commit ba91b9eecb47 ("drm/i915/cdclk: Decouple cdclk from
state->modeset") which therefore might make sense as a
fixes tag. But if we put that in then I'm worried that it
won't get backported to older kernels. I guess we could throw
that in there along with the ancient commits that actually
introduced the problem.

So something along the lines of:
Fixes: ba91b9eecb47 ("drm/i915/cdclk: Decouple cdclk from state->modeset")
Fixes: d66a21947e21 ("drm/i915/bxt: Sanitize CDCLK to fix breakage during S4 resume")
Fixes: c73666f394fc ("drm/i915/skl: If needed sanitize bios programmed cdclk")

-- 
Ville Syrjälä
Intel
