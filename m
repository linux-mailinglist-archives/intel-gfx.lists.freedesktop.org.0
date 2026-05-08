Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uE+VCMav/WmlhgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 11:41:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 662864F457A
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 11:41:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B64A10E028;
	Fri,  8 May 2026 09:41:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H60nrMJQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D168610E028
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2026 09:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778233280; x=1809769280;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=l8aFjSNZubKpdHQfKwAA52+sFPDa1PU7V0J1cGar/cQ=;
 b=H60nrMJQ56K9FeJXEd8pJI9VW+aqEW6iSh86vU7yZk8YZ56elwz0MxYi
 qBpS1nUhX5Esc6Eqjf5tkoUgfY+Q6kozmEbwL5fsQw6nw1pxYcR6dE3XA
 cWJMNO045IxUyFNpUt5p0biPxhW95h7mptlUGGvdc721sRgjT3eS3bDEb
 Z5ugl7ii6hF29jH/6qIzgBMuwoTv2lN1ADdEnAPKVnMcW+JvJmWUt61lP
 UkW69WYmpa/Y81oaNxNmNWq3qfY0WdsnteEUAOpMFrssw7XcPZffUy5ko
 lSsd50KBLcQmSCQvWOwrav2WCO2xBcHnVrSWx56YRllLtfumkMQe639xI g==;
X-CSE-ConnectionGUID: JMcvRuskSweK90JvFwyo8g==
X-CSE-MsgGUID: e12T+0lvS32lXOZ/wczcoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="96767833"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="96767833"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 02:41:19 -0700
X-CSE-ConnectionGUID: i4QmJJBHRYOzOq+Wvo7h2g==
X-CSE-MsgGUID: wjsfYX3RRSO27KKNBNo9Hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="238504237"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.67])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 02:41:17 -0700
Date: Fri, 8 May 2026 11:41:14 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: Re: [PATCH v10 1/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
Message-ID: <af2vusysmtwp2bzU@ashyti-mobl2.lan>
References: <20260508080214.1979686-1-krzysztof.karas@intel.com>
 <20260508080214.1979686-2-krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260508080214.1979686-2-krzysztof.karas@intel.com>
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
X-Rspamd-Queue-Id: 662864F457A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.karas@intel.com,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:janusz.krzysztofik@linux.intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim]
X-Rspamd-Action: no action

Hi Krzysztof,

...

> +static struct mm_struct *
> +get_mm(int u_pid_nr)

This fits in one line, no need to break it.

I'm not a big fan of the name "get_mm()". It's too generic and
sounds like a library function.

With the two above changed:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

On the other hand I don't want to ask for v11: if it's OK with
you I would bring the lines together and change the function to
get_selftest_mm() before merging.

Let me know,
Andi
