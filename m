Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGCqIe1V72nJAQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 14:26:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84742472751
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 14:26:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A072710E718;
	Mon, 27 Apr 2026 12:26:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MkFSIKvo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A538B10E718
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2026 12:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777292778; x=1808828778;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=0FKt8RCiTt5a+evEzJOGiCMxem7WZCj6OYsv8jUTcHU=;
 b=MkFSIKvoVv0RdIs3Z7pQnRY8cidIlY9KX4lzqwNO4pnx1vd0ar57tmVK
 FI0/m2PTI8eDVOn1Bk9AeL2wwY0RYrxv+wHNLd27Sq4hfGeYsBe3KZt0D
 gQWWY1kDATbvh53vg4PFpBg7j3no7cDK6K/odkagJ6w7eTIYCoJItxxna
 9XcE9dNqo3rkmE3KYWKcJ51/UKdU3p+iFBKQ1eSO4FxDwtsIay2dMKy/4
 omFlSKtR6RUDLpIrwcUa5Ht4KX4cgTWj6YgGN2LljbFyEGWNtwIkX0vZa
 c0EZSnKVMCdJyDrQdcbiS56DuZ7R/MXC/9xzCmB/9FpTdSS4cEQLOML18 g==;
X-CSE-ConnectionGUID: lYC0q+scSVOHkelztoqbxQ==
X-CSE-MsgGUID: O88u/0FaQl2Um7T9QqM/Mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="88871144"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="88871144"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 05:26:17 -0700
X-CSE-ConnectionGUID: C2ty3r+nRMiaN9Qnni0Ldg==
X-CSE-MsgGUID: Gzn2fBBNTNeyEbDqM0bNNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="257149086"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.53])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 05:26:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 andi.shyti@linux.intel.com, krzysztof.karas@intel.com
Subject: Re: [PATCH] drm/i915: replace fetch_and_zero() with kernel xchg()
In-Reply-To: <75ba7e77fe28617f027ae49a620df8b580cd1000.1777291964.git.sebastian.brzezinka@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <75ba7e77fe28617f027ae49a620df8b580cd1000.1777291964.git.sebastian.brzezinka@intel.com>
Date: Mon, 27 Apr 2026 15:26:13 +0300
Message-ID: <7d18b591154516efd9be14c643bd576678b616bc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Rspamd-Queue-Id: 84742472751
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.brzezinka@intel.com,m:andi.shyti@linux.intel.com,m:krzysztof.karas@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.993];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

On Mon, 27 Apr 2026, Sebastian Brzezinka <sebastian.brzezinka@intel.com> wrote:
> The i915 local fetch_and_zero() macro is a non-atomic
> fetch-and-zero operation defined in i915_utils.h and duplicated in
> display/intel_display_utils.h. Its functionality is equivalent to the
> kernel-provided xchg().

While I dislike having the local fetch_and_zero() macro around, the
usage does not need to be atomic, and there's no need to switch to the
atomic xchg() at all.

Using atomic xchg() gives the wrong impression to the reader that the
atomicity matters when it doesn't.

So that's a no for this patch.

There's been a few attempts at fixing this in the past, one I found was
[1].

[1] https://lore.kernel.org/r/20221209154843.4162814-1-andrzej.hajda@intel.com

> Replace fetch_and_zero() with the kernel provided xchg(), and
> remove the now unused macro definitions from both i915_utils.h and
> display/intel_display_utils.h.
>
> Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

Where did this happen? Was there a v1? Is this v2?

BR,
Jani.


-- 
Jani Nikula, Intel
