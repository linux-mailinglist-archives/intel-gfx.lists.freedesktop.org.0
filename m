Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xcfwMGlFIGrezgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 17:16:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3212D63908E
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 17:16:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=AoRn+ASG;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B271110FFC9;
	Wed,  3 Jun 2026 15:16:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B16D10FFC8;
 Wed,  3 Jun 2026 15:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780499814; x=1812035814;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=MHyE9Ug59kL5PDIqXp4s0bd6AQptRC1TqR7wf7oV2dM=;
 b=AoRn+ASGFvzSxCYplEYjxrXlKz/4BO46rIkhkRdp5Z6wjnkA83uhZRRq
 Dz1AGywRkk149zJFh7JUaXDchzl5ghEwGiTEdSwCoaLsrt/QHMRkMUTj4
 4EkAPvb+ZEsJ4nYqxfo081783qGitO1dGQaULly4BFI9SnHb+CiTORh0k
 TV35MTFi4XuGVfWIlAMuYGARQRQLjnXyqZz4gWsnXVtXqCivb8dnZhtf6
 +KxZVePs514U2mv+RcpTlGUV00llfYi6GVmSh7RTLyG15nzmXDrVqE/t4
 qfuxNLysOzcRIW+ykY1PBe8GezTMCg2Tep2sQfDVYsj91guWRYcozv396 w==;
X-CSE-ConnectionGUID: KQVfvH6QTSCe9IXqZZ+lMA==
X-CSE-MsgGUID: 4YqNElgzSAahEaAMYfJ3lA==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="91628211"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="91628211"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 08:16:54 -0700
X-CSE-ConnectionGUID: YQIWDh7VTWGoGFcTlvaxKw==
X-CSE-MsgGUID: bah875H9RRuLy/0KXGqiKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="237924010"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.189])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 08:16:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: imre.deak@intel.com
Cc: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 uma.shankar@intel.com
Subject: Re: [PATCH v3] drm/i915/display: Mask RO bits in gen9_write_dc_state()
In-Reply-To: <aiATv_6EYar1AQHX@ideak-desk.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260601090131.1840805-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260602113134.2477070-1-dibin.moolakadan.subrahmanian@intel.com>
 <9de0611a934b0a1fcfbcb5b78822611ee45cb2b9@intel.com>
 <aiATv_6EYar1AQHX@ideak-desk.lan>
Date: Wed, 03 Jun 2026 18:16:49 +0300
Message-ID: <2b4a8d43bf1e2c5c578d9a3fe93c3da932bb9742@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:from_mime,lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3212D63908E

On Wed, 03 Jun 2026, Imre Deak <imre.deak@intel.com> wrote:
> On Wed, Jun 03, 2026 at 11:30:04AM +0300, Jani Nikula wrote:
>> On Tue, 02 Jun 2026, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
>> > +static u32 dc_state_ro_mask(struct intel_display *display)
>> > +{
>> > +	if (DISPLAY_VER(display) >= 20)
>> > +		return BIT(10) | BIT(11);
>> > +	else if (DISPLAY_VER(display) >= 13 && !display->platform.dg2)
>> > +		return BIT(10);
>> 
>> Register contents need to be defined next to the register definition.
>> 
>> But even so, the caller already has the mask we want to change, I
>> already suggested passing that in. What's wrong with that?
>
> The mask used by the caller only contains the bits which the driver
> changes. However I would like to know that writing all the other bits in
> the register also take their effect, reflected by the read-back after the
> write.

Fair enough. The first comment still stands, let's not hardcode the bits
here inline.

BR,
Jani.


-- 
Jani Nikula, Intel
