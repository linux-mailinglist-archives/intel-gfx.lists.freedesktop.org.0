Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Xv8KKUGfRmqBaQsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 19:26:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 197866FB549
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 19:26:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=IUskiXYa;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97C6410F521;
	Thu,  2 Jul 2026 17:26:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8621B10F521;
 Thu,  2 Jul 2026 17:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783013182; x=1814549182;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=qFsv+54thpe+cg1+KriTBQAGXiAeUO5DM1v51Xqs+XQ=;
 b=IUskiXYaYLRouQUiclDeeo9GLGKsnu3elWJBYMaRWCwmkCAeyXn9FcOl
 9g4GIH/rfhYWyKjfpSWHEWCWPJYZ6n6+arcg3b0sH8PYkB80uPjBAIeqh
 SF+1wBgG4s7hFEK4fN4JB3SGM4LMcubj8zZR9iVHHIuS3umxxiLTgE9Jd
 7L1KBPZ1sSTHyTh0v22yN2BdrDPXJcoVryOcy+cpgj9mdxtHEB43Vl48i
 +YHdhMxud6QubF6uEk6+QCepESglnJX4pwZBbAHec052WW4bhgWatC/TS
 PCDIFU0xZyu34eSM+J+p7zN9kwVuZKTY03VoBAX6BNmB1W+sCsz13vZ6O A==;
X-CSE-ConnectionGUID: 3lKhoD6WTkWXoM0yGq0JFg==
X-CSE-MsgGUID: TXBC/DLbQh2uhfRgpUezRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="83964737"
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="83964737"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 10:26:22 -0700
X-CSE-ConnectionGUID: sVt2u4UYRe+LmPgoPr3hTg==
X-CSE-MsgGUID: 4LtGRbsSQEGWMubdhVaaqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="251849657"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.54])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 10:26:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Kandpal,
 Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH RESEND v2] drm/i915/display: Program TRANS_VTOTAL from
 mode vtotal
In-Reply-To: <IA1PR11MB6348D8D9F53ECCFD47321C83B2F52@IA1PR11MB6348.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260617045850.862100-1-mitulkumar.ajitkumar.golani@intel.com>
 <0b7919083586f3ba26159f909f87666ea9b41045@intel.com>
 <IA1PR11MB6348D8D9F53ECCFD47321C83B2F52@IA1PR11MB6348.namprd11.prod.outlook.com>
Date: Thu, 02 Jul 2026 20:26:15 +0300
Message-ID: <35eef66587306a256764b9d4a5e5316a73893099@intel.com>
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
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[6];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 197866FB549

On Thu, 02 Jul 2026, "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com> wrote:
> No. This change was made to align the driver with the updated VTOTAL
> programming requirements rather than to fix a regression introduced by
> a specific upstream commit.
>
> The regression we've recently observed during the GOP-to-driver
> handoff appears to be a separate issue introduced by this change and
> will need to be addressed with a follow-up fix.

Okay, thanks, sorry for the noise. :)

BR,
Jani.

-- 
Jani Nikula, Intel
