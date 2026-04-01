Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yD+tCUsAzWlNZQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 13:23:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5350379545
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 13:23:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2975010EB44;
	Wed,  1 Apr 2026 11:23:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VYkqpHNP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E08F910EB44;
 Wed,  1 Apr 2026 11:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775042632; x=1806578632;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=W+T33+IRm7vdKPwhoCLSI6f9zBvxdvjCKpEdk2NZB2A=;
 b=VYkqpHNPMQhsKf5oy9q7o1PGMRYw4vPmr1r9fR/FimGipxAfRg84LQD+
 7SSp7V3zsRYN11y7ajwyOQC+LopPd0WjVlLIpYQynFbsKWN1BddbHNFRE
 6VRdDv2a/MsX+7mFwoVDsaE6pvIkrnQZIVy5KDUDOE3MdunT1Bb9EzpwO
 BvDlI0AsWkijObThsGCFH1ChGQFOjJzJddVS3QsnDRJhHemmx/EgzAHM4
 Ff/n/iFjsp2NT9Zo43G5Z7SEuIptrPkCTMUKQ8ZFlZIuvhIroMWP32MJe
 76BLQr3os3BkGw88/vGTeS55Xmv2c8gb11O1BsqToSkR6h56cT5KYChtT A==;
X-CSE-ConnectionGUID: tzZTHggtTB+O6MyyNMgBaA==
X-CSE-MsgGUID: R0IBGkmTT8eUQRn1N6EabQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="86380173"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="86380173"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 04:23:52 -0700
X-CSE-ConnectionGUID: 7GQYh0CHQuandRJdHV3cPQ==
X-CSE-MsgGUID: X8kU+saVRKKmFcyLIIbD0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="226512302"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.199])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 04:23:50 -0700
Date: Wed, 1 Apr 2026 14:23:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jerome Tollet <jerome.tollet@gmail.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com
Subject: Re: [RESEND] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
Message-ID: <ac0AQ_74Tukshr__@intel.com>
References: <20260113143107.1446909-1-ankit.k.nautiyal@intel.com>
 <20260326054112.51287-1-jtollet@cisco.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260326054112.51287-1-jtollet@cisco.com>
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
X-Spamd-Result: default: False [-0.60 / 15.00];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid,60hz:email]
X-Rspamd-Queue-Id: A5350379545
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 26, 2026 at 06:41:12AM +0100, Jerome Tollet wrote:
> From: Jerome Tollet <jerome.tollet@gmail.com>
> 
> Hi Ankit, Ville,
> 
> Following up on this patch.
> 
> As previously reported, the SCDC polling approach fixes the 4K@60Hz HDMI
> issue on my Alder Lake-N (N100) + Cisco Desk Pro setup, and I have not
> seen regressions in testing.
> 
> Ville, do you see any remaining concern with this approach, or is there
> anything else you would like me to test to help move this forward?

My main concern is having the synchronous polling appear to fix
something now, and if we later make it asynchronous the original
problem may re-appear.

That said, after perusing the spec a bit, it looks to me that sinks
should be able sync up after at most two video fields. I suppose
having effectively two extra vblank waits in a full modeset sequence
isn't the end of world. The extra complexity of asynchronous polling
might not even be worth the hassle.

But the commit message should still highlight that (AFAICS) synchronous
polling is not required by the spec, and thus the fact that this fixes
some monitors is sort of an accidental byproduct.

-- 
Ville Syrjälä
Intel
