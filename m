Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMmELbWuGWqSyQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 17:20:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3AD6048A4
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 17:20:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD7CF1120CB;
	Fri, 29 May 2026 15:20:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VM5aWSLY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C03A112091;
 Fri, 29 May 2026 15:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780068017; x=1811604017;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Fnrjs5jZUpdBPRWc6JXyIiZppYLdne+fYJqBBLOuC9Y=;
 b=VM5aWSLYKtWyYylYwO5UVtBXcyayY8AwRcjvfftykYdrWYCvoqVv1S3q
 E3Muf5UfE+TFfitFXSDm+EKnv/jQ3Ec7ueWk43vh824sHiZZWfQu+al1K
 A4ofprYeDsW/QaUirvpitdSsRGYRVbSn2qa39ZxX8fT7ev043uHSFzLbl
 uYBw1zqLmJwj6fSSBk4+S78X3ghqifbCmwTD7MF86sO+pb8LrKs2t7vqC
 EqFf+uJHvZAVEDZ80tKi2Uv7omc5Vw1MxcZFJUJGL+M9z5WvmQ/EFAAaq
 4wJKOQ03zMJSeNH8p0VMnixnfxYA4nDOQILouxFBUg31CS3eTOZW/kz18 Q==;
X-CSE-ConnectionGUID: YMU1Nyw2TP2BESCQhYZH6w==
X-CSE-MsgGUID: Cv62znIgQXSysvpznIDhbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="98338710"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="98338710"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 08:20:10 -0700
X-CSE-ConnectionGUID: 3mCMpy6dQJyUTeK1grrrUA==
X-CSE-MsgGUID: 8wT2o0+VQ+GH1pnj6fQq5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="247162431"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.182])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 08:20:08 -0700
Date: Fri, 29 May 2026 18:20:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 ville.syrjala@intel.com, matthew.d.roper@intel.com, shawn.c.lee@intel.com
Subject: Re: [PATCH] drm/i915/display: update BW buddy initialization for
 LPDDR4 and LPDDR5
Message-ID: <ahmupPZMuah4etPi@intel.com>
References: <20260528182601.205595-1-vinod.govindapillai@intel.com>
 <d661dae5343e317fdf286194af4c5e707cbeea97@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d661dae5343e317fdf286194af4c5e707cbeea97@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.69 / 15.00];
	R_MIXED_CHARSET(0.63)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 3A3AD6048A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 04:39:13PM +0300, Jani Nikula wrote:
> On Thu, 28 May 2026, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> > Pcode reports the number of subchannels for LPDDR4 and LPDDR5.
> > But the page mask selection table is based on the channels. So
> > adjust the number of channels for LPDDR4 and LPDDR5 so that the
> > correct page mask can be picked. There are two subchannels per
> > channel.
> 
> IMO the parsing of the information belongs in intel_dram.c. If you get
> subchannels from pcode or where ever, intel_dram.c should figure it out,
> and store the number of channels in ->num_channels.

We actually want subchannels for QGV stuff. And that's what modern
pcode gives us, older pcode gave us channels instead and we convert
that to subchannels in the QGV code on those platforms. I have a patch
to move the adjustment into intel_dram.c for those platforms so that
we get consistent data out of intel_dram.c everywhere.

For this thing here I think the best thing would be to change the
table to use subchannels instead. Looks like Vinod didn't file the Bspec
issue asking for the table to be updated there, so I just did that.

-- 
Ville Syrjälä
Intel
