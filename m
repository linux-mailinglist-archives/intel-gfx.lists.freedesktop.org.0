Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 63qTJJ7eO2rweQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 15:41:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD8A6BEBC7
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 15:41:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=OVWlcFLP;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A5D710EF38;
	Wed, 24 Jun 2026 13:41:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AACE010EF38;
 Wed, 24 Jun 2026 13:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782308506; x=1813844506;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=UYzeCihKwsZTIJt7qUu/V5ZgXRyji+cIh9sSDnuivWg=;
 b=OVWlcFLPWR4m+ImxVNPxZJOgsDcfQr7ZEa7GPrcN87hVlMaUigzLKV2K
 aQnl6zYBFMGvk3Isa6rCKiOylL8mgedO8YQOG1bHPi+Fqxsb1p6BdKUgE
 fsYWUbobjTNf20//x218iZm00BvM8WDkxNJfWiRgzsFEjqyq4TIvLmMd0
 kfLKdos9gj4tmCgeHbRnC76u1Xguk7c7dMXdNP8EAcBgve5J1x4woHs+9
 K5xlLAJQG7/3oNUCS45c4yzRm52UZqszOJtpy/Tr/AWKrEF0fxyFIzKY3
 ul9i5w25LpcNV8Q/VydkgPxbdFSB32flp60+5jKPfF7ZaaVu/3ZqvtBMv A==;
X-CSE-ConnectionGUID: IO5n5D05QXOoWp1RJA1PnQ==
X-CSE-MsgGUID: cetbGABGS1uojPdkoCQNZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="100619608"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="100619608"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 06:41:45 -0700
X-CSE-ConnectionGUID: DUU7xX6vReSGiGuBw+JA6w==
X-CSE-MsgGUID: i+kWJjACT+e7w5yfBYrvgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="249693218"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.187])
 by orviesa008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jun 2026 06:41:43 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Suraj
 Kandpal <suraj.kandpal@intel.com>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Michel =?utf-8?Q?D=C3=A4nzer?=
 <michel.daenzer@mailbox.org>
Subject: Re: [PATCH v2 0/5] drm/i915: Work harder to enable VRR based
 refresh rate changes on eDP
In-Reply-To: <20260622213602.7244-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260622213602.7244-1-ville.syrjala@linux.intel.com>
Date: Wed, 24 Jun 2026 16:41:41 +0300
Message-ID: <04d7e819ccb7301a9484a15906e118306fd786a4@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,linux.intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9DD8A6BEBC7

On Tue, 23 Jun 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> Tweak the eDP fixed mode selection algorithm to allow
> userspace to do refresh rate changes on VRR capable
> eDP panels without full modesets.

Acked-by: Jani Nikula <jani.nikula@intel.com>

I think this is orthogonal to the concerns raised by Michel in the v1
sub-thread at [1], and is not aimed blocking or being an alternative to
min/max refresh rates.


BR,
Jani.


[1] https://lore.kernel.org/r/3d441831-71bc-49fd-823f-3af443e55b20@mailbox.org



-- 
Jani Nikula, Intel
