Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YE1dImPkAmpEyQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 10:27:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 107A851CAC3
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 10:27:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69C3F10E689;
	Tue, 12 May 2026 08:27:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z4f4BFBr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5387410E689
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2026 08:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778574431; x=1810110431;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=gh1q1LC2KWhr4Xxwuh2xDLUKpGr8YZYdKX4RPGJSrpg=;
 b=Z4f4BFBrF4wnFTni5vev5uOhrWR8SMy+xG6xydrE2Xt3NqNouPJ440Nv
 8EOpkiHQkf1EtSTcrsg6A+MxGuNb7qxA27f3EfJfFt2G1KrjtZxnTdcHB
 zJ1YQWAwstkYjp3UhsehJq2xpB08+iDjtUvma0gFBAI3hSrcH0hJiN6rB
 xllagEkkfxzJX9pRoLygMvzHOzBq4Ndhda2GKPZG2e0ORI7h5SUVu8EPl
 SiyWOQZogZ6tCAwXymO3Nr54Xs/UD6gWGIF0KB4p8yAjtgEWYBOz3jdhw
 Px0DEcEi2y/HZJanWg+D66whc7c7KQAW7he1gFjOM0JL8P2rDi2W9OsFp A==;
X-CSE-ConnectionGUID: uwO1OBV2SB2gok8f5ke/GQ==
X-CSE-MsgGUID: C4kvneV/R6Sc9dOf7a52lg==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="67005844"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="67005844"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 01:27:11 -0700
X-CSE-ConnectionGUID: qFZF0W51RPCic3nTTxHd+Q==
X-CSE-MsgGUID: sP0cd3ykT8iBc7OElt32Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="233388486"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.158])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 01:27:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Daniel Burnfield <daniel.burnfield@gmail.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: Subject: i915 initialization failure on Apple Mac mini 6,1 and
 7,1 with kernel 6.12+
In-Reply-To: <CALQ5wkrXhFBYHYpj1WU6u8unXqwq7jhN9_gheMcc6m12xFG09w@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <CALQ5wkrXhFBYHYpj1WU6u8unXqwq7jhN9_gheMcc6m12xFG09w@mail.gmail.com>
Date: Tue, 12 May 2026 11:27:07 +0300
Message-ID: <717ef45f212d203fe27784309fe9b4f29be3e242@intel.com>
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
X-Rspamd-Queue-Id: 107A851CAC3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS(0.00)[m:daniel.burnfield@gmail.com,m:danielburnfield@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.971];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,pages.freedesktop.org:url]
X-Rspamd-Action: no action

On Mon, 11 May 2026, Daniel Burnfield <daniel.burnfield@gmail.com> wrote:
> *Request:* Please investigate the PCI bridge resource assignment and
> DMAR-IR regression affecting Apple EFI hardware on kernel 6.12+. These Mac
> mini models are well within the supported hardware range for the i915
> driver and worked correctly on earlier kernels.

Please file a bug as described at [1].

Thanks,
Jani.


[1] https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html


-- 
Jani Nikula, Intel
