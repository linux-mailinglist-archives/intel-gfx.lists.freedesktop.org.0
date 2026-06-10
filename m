Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zHXdGbpNKWrSUQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 13:42:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B60668E39
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 13:42:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="bC/aH73x";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CB3010E47F;
	Wed, 10 Jun 2026 11:42:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C455B10E47F;
 Wed, 10 Jun 2026 11:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781091764; x=1812627764;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=XJBj9jZyAaZc4QTyG9X60lFIGGtd8BtMCH8jck9D3ac=;
 b=bC/aH73xloq87UWazulMyjGOa1jVbQjq41xiSzd54n+t5DAa/Fkl8Qew
 nNfa4rygIjzaDOyzSntJVfumlCqVwZLEqFNo0MZy+xDmyT529eErNtBMP
 4Aomo4yurxLSmCszAx9/4Eqg52TC6jBM6nVAMAgKlhxUysg3EwGSwg994
 lEJOIM6Z8dJ51hX8xIg9Bd7L9J8yS/j0xDR/FQmxaeNFkgvWZLM+AHM8k
 9QuNvwDg9SHt6dwvzenTqyQY3kipR/qtnKNch0ccMUyvEs4333oIADzzS
 G+1g5uKuxnjtVnnchYk1wj4wBJ7/T6bw6vfYKSbplFYGMXEO4OgFuSP6d A==;
X-CSE-ConnectionGUID: rGPWiolORY+ABjqU+Ccorw==
X-CSE-MsgGUID: KdTCGyrtRWa+h18pWGfokg==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="93369105"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="93369105"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 04:42:43 -0700
X-CSE-ConnectionGUID: OwGuOwyBRAym/zj1uTK6mg==
X-CSE-MsgGUID: Fkm/3at+SIy7oeurejoMrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="251236223"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.3])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 04:42:42 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Alexander Kaplan <alexander.kaplan@sms-medipool.de>, Imre Deak
 <imre.deak@intel.com>
Cc: Alexander Kaplan <alexander.kaplan@sms-medipool.de>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 rodrigo.vivi@intel.com, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/tc: Disable outputs instead of modesetting
 them on link reset
In-Reply-To: <20260609184838.4335-1-alexander.kaplan@sms-medipool.de>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260605212837.4265-1-alexander.kaplan@sms-medipool.de>
 <aia3UtOtXD65T8Eq@ideak-desk.lan>
 <20260608223548.2574-1-alexander.kaplan@sms-medipool.de>
 <aigjtXiFqvxTGUnD@ideak-desk.lan>
 <20260609184838.4335-1-alexander.kaplan@sms-medipool.de>
Date: Wed, 10 Jun 2026 14:42:39 +0300
Message-ID: <b912629b7fc5844a9e9d3262308835ec3745854e@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:mid,lists.freedesktop.org:from_smtp,linux.intel.com:from_mime,sms-medipool.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C6B60668E39

On Tue, 09 Jun 2026, Alexander Kaplan <alexander.kaplan@sms-medipool.de> wrote:
> If you have the bandwidth I'd welcome a quick gut check, otherwise
> I'll post them properly once I'm allowlisted:

If you're referring to [1], please just send the patches. We can let the
individual patches through CI.

BR,
Jani.


[1] https://lore.kernel.org/r/178069746256.49942.4174969817609921951@6beec6c84f66


-- 
Jani Nikula, Intel
