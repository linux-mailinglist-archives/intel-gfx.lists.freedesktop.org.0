Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yo62OGiRO2pjZwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 10:12:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8B26BC77F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 10:12:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=h8QcgOfd;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79FE510EDF9;
	Wed, 24 Jun 2026 08:12:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7DD210EDF7;
 Wed, 24 Jun 2026 08:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782288742; x=1813824742;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=R9BaisGGs03sDOVW59pplw/2RA5lc4PDyV0kbgwWnXU=;
 b=h8QcgOfdwlf+e5B4qL2yYIj7F5NFCEyReXD4pujeUwc16Ukv2ac/aloW
 a0XLqnlCZBGd7uyQL261qfmDxJihNHMuqyum7NgMIAGVOWQtPkCEvu4HS
 kEccEM9n/M8HdHUDr5sU/YAbx0XIbXpK8ZDbFg/H0KA2X6x4/2AOHigle
 EsaN9y/+yH7B3DjkA0y/4BWd5Ob4H9s/l30txosrQyi2n+TJIpLjnuKex
 RFG/cpxd7nlIanxOIYuBpdw9fq4zWaL1G+f6bBc0ywGLLCtLevLnMVzJy
 Op5UKozi2CEMVxtzYf8CBJvGxrlE5rPSMXcDidJ80MZqEBXlXL9rMo8p6 g==;
X-CSE-ConnectionGUID: 4m/UOnd1R4q/GLuz+XgTzA==
X-CSE-MsgGUID: Qa13rCYBSdOlSRuvyBQFJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="100467777"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="100467777"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 01:12:21 -0700
X-CSE-ConnectionGUID: gOG4P8nQQDO4TDvdwsFegw==
X-CSE-MsgGUID: irP+Qqx+RiK26ivmHAvWCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="246853439"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.187])
 by fmviesa007-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jun 2026 01:12:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, Nemesa Garg <nemesa.garg@intel.com>, Imre Deak
 <imre.deak@intel.com>, =?utf-8?Q?Micha=C5=82?= Grzelak
 <michal.grzelak@intel.com>
Subject: Re: [PATCH v1 00/30] Comments applied to dp_link_caps
In-Reply-To: <20260623224619.1949975-1-michal.grzelak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260623224619.1949975-1-michal.grzelak@intel.com>
Date: Wed, 24 Jun 2026 11:12:15 +0300
Message-ID: <bd0e954b181d820e69a385b6698d596ce16f36f2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,linux.intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3A8B26BC77F

On Wed, 24 Jun 2026, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> To not block review of Imre's v2 of part2 series [1] I've applied my
> comments on top of it since they are not critical to the overall design,
> and can be looked afterwards; assuming they are at all valid :). Unlike
> previous times, now those resended patches should be free from
> disappointing mistakes like eg. duplication of From: tag or missing
> Signed-off-by: of resender.

Did you check with Imre before sending this?

Usually it's best to let the person doing the upstreaming to keep
posting new versions of their series at their own pace, instead of
sending series on their behalf. If you have your own work that depends
on the other person's changes, please just have patience, and keep them
in a local branch until the dependencies have been merged.


BR,
Jani.


--=20
Jani Nikula, Intel
