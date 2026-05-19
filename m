Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iI74MYRKDGrjdQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 13:33:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 645E557DB1A
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 13:33:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6F5D10EC69;
	Tue, 19 May 2026 11:33:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IxfsC7PY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96AD910EC69
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2026 11:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779190401; x=1810726401;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=4JAuKRNWaFkuq+F8IvCgLGTzy9gPajUfgTB1hC6U/ko=;
 b=IxfsC7PYSas44dO5YbuukTK9c2VWPAdigNkXp9MpwKLa9s1hMtZ/GWg3
 ww+qjX7xd+Nqdpxizm22T5d2fmuQcfBbcYMZunxhLYnsOGrzJfaKEnNr+
 ei6qh3KX1ypVTUQF4Cwo1r5GOkgv7pe7W5UR0UVod5JzZPtLfb6OSnBx1
 AQFTKF8V/Nufsg+eYx1fcwGzvZe8kZbqWTD7fEW8gt1oKqVHp5Ax7mhnr
 iP4VEDtmJP0RevHx7INhh63gIxiMNbdPCui83EwHo2PO/OehpKy1Uh/Hv
 WDPhQ+UfPvlVSfJIiKDJHQVOGHdJkvg9uc0PnJjGnzbhWOS58p7cgkUzw w==;
X-CSE-ConnectionGUID: 4p0eIfrTRFGETloqehAG8w==
X-CSE-MsgGUID: HGRUYnhkT1ed+BtBlQJUFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="80185368"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="80185368"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 04:33:21 -0700
X-CSE-ConnectionGUID: 0RmcO8ofT3S9D9XKYchs2g==
X-CSE-MsgGUID: TzQhhJ/nQJeLLG4N8G3o3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="240000604"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.15])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 04:33:19 -0700
Date: Tue, 19 May 2026 13:33:15 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Krzysztof Karas <krzysztof.karas@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: Re: [PATCH v10 0/2] drm/i915/selftests: Use safe userspace memory
 for mappings
Message-ID: <agxKe1B6nn1yIWNC@ashyti-mobl2.lan>
References: <20260508080214.1979686-1-krzysztof.karas@intel.com>
 <agxKUQDuDthp2WLD@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <agxKUQDuDthp2WLD@ashyti-mobl2.lan>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:andi.shyti@linux.intel.com,m:krzysztof.karas@intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:janusz.krzysztofik@linux.intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,ashyti-mobl2.lan:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 645E557DB1A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> > Krzysztof Karas (2):
> >   drm/i915/selftests: Prevent userspace mapping invalidation
> >   drm/i915/selftests: Run vma tests only if current->mm is present
> 
> merged in drm-intel-gt-next.

with the changes we agreed and the suggestion from Michal.

Andi
