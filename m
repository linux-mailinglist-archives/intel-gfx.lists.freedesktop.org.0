Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gITPIdlh32lhSQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 12:00:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3254030B9
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 12:00:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E54B310E160;
	Wed, 15 Apr 2026 10:00:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AUEnJ8iT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E687310E160
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 10:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776247244; x=1807783244;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=oOzVVXhhUqvdYAkYAlg8rVabq8nDL3CnCVWwoRwrpyw=;
 b=AUEnJ8iTSP/SySmOe76NAHIvpPIGSf0ccxZnEKQpJRIUoLTx+2e4f9VJ
 9i9cpZmHcTmfYwSrpXjHbZHVi0DD04WACbCHtfKzKx/g8brkNQTYEMVct
 2LMbNWgQIZNx5n3j7z/gSuCY3ck8eh1COr/lOTVuwg1fVOMqAYlL9Tz99
 wKwm2tqhan/o5j0dbmdQf1gc+/x0FDFBdPi/irtvL06w7fLHWFNo83tLR
 1lBl2hKQyozBns3CS++RPgo5U+b6A4VzsAAAxrfUFesdM0bsPEUGUrtHw
 +zJXr48WkFhTjXaH589Ej1UhoTYsJ7ARxhRzMfeLgMw4OCQAXTUeNwYbF g==;
X-CSE-ConnectionGUID: ovvhQ24jTHa86Wt7jdlSsA==
X-CSE-MsgGUID: NvDJJsuKTdaRt0Ek8K1DRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="76385754"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="76385754"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 03:00:43 -0700
X-CSE-ConnectionGUID: ZtbCifcLQiicAZC6Hrk2VQ==
X-CSE-MsgGUID: kUjbQZqCSjC9nNWo5EXI9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="235317448"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.244.121])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 03:00:42 -0700
Date: Wed, 15 Apr 2026 12:00:38 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, intel-gfx@lists.freedesktop.org,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: Re: [RFC v5 2/2] drm/i915/selftests: Run vma tests only if
 current->mm is present
Message-ID: <ad9hxpLqQf2xoNvc@ashyti-mobl2.lan>
References: <20260409080825.2191535-1-krzysztof.karas@intel.com>
 <20260409080825.2191535-3-krzysztof.karas@intel.com>
 <adeJHZAEuDKsimJt@zenone.zhora.eu>
 <f3knxmz4kwelom5eong7s5wa5deyuqfyc3nlxx4lisxberusws@jseqhs2cqkbv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f3knxmz4kwelom5eong7s5wa5deyuqfyc3nlxx4lisxberusws@jseqhs2cqkbv>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.karas@intel.com,m:andi.shyti@kernel.org,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:janusz.krzysztofik@linux.intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RSPAMD_URIBL_FAIL(0.00)[intel.com:query timed out];
	FORGED_SENDER(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:query timed out];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,ashyti-mobl2.lan:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: DB3254030B9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

On Wed, Apr 15, 2026 at 09:17:59AM +0000, Krzysztof Karas wrote:
> On 2026-04-09 at 13:16:28 +0200, Andi Shyti wrote:
> > >  	ret = i915_live_subtests(tests, i915);
> > > +	if (ret)
> > > +		return ret;
> > >  
> > > -	if (unuse_mm)
> > > -		kthread_unuse_mm(current->active_mm);
> > > +	if (current->mm)
> > > +		ret = i915_live_subtests(vma_tests, i915);
> > > +	else
> > > +		pr_warn("No current->mm to safely borrow userspace memory from. Skipping VMA tests.\n");
> > 
> > This line is too long and, what's the probability to end up here?
> I will not give you numerical probablility, but after passing
> a PID from IGT we should never end up here. This warning is
> mainly for us to help us identify problems with borrowing
> memory. Janusz suggested adding it, which, considering that i915
> maintenance is in hands of a small group of people, I think is
> a viable addition.

The logs, for developers should be a pin to the code, not an
thorough explanation of what happened. We don't need well
formatted sentences explaining things, we need essential
information written in a log form.

E.g., writing in a log "current->mm" is utterly pontless because
with a simple grep you end up there. Writing "Skipping VMA tests"
is pointless as well, because if you are a tester and looking at
the test you should have understood that much.

Besides, the limitation to 100 character, rather than 80, doesn't
come from maintainers whims but it has a good reason exist. On
top of it, if we start writing kernel development explanation in
the dmesg logs, those logs will certainly become unreadable and
useless.

So, please, for as much as you might have an opinion on long and
comprehensive logs, keep them short and useful.

Thanks,
Andi
