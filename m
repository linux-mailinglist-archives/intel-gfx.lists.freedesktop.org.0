Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKaWFwVj3mlqDgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 17:53:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B72873FC2D3
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 17:53:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 530FA10E0EA;
	Tue, 14 Apr 2026 15:53:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jk3uv72M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5400010E143;
 Tue, 14 Apr 2026 15:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776182019; x=1807718019;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=lQq5doTiuBiLA9iMDUNGxaUkOEPfn4gcP64GNPMIcjQ=;
 b=jk3uv72MYplKpH8mxkew6VYkQYDpQGr4e/k3+1HUa5iS8KJE7hJoU57g
 ++e6W7e0n+ikQahssfszDvIC3NDld4z+1X78bzXrbLBBm3uSx9+fA7gPD
 nwZsL1FxEIrGjhv5sh6gImoSH0VW4fHSswSqx6XHgff1+BlBNlbhp6nDE
 XbiLBBbrQfUV+1U6HWtRVGDi3IHXOT67WmpuzpwQ3t0ctgdlOEu4x+Ul1
 mPsXIQmclgPokYN67ada9oUEr9cfDUWuSw2TqVdc47VTODTqt4OqBiufn
 oMMX42633mPmYdgvjLC3jZdkWpFuXERI9nWiWSDifkEnosxl9n/pfZ6Ca Q==;
X-CSE-ConnectionGUID: qhJe0tvZRuuNaEL1FVRRIQ==
X-CSE-MsgGUID: A9e+isHeT6uL+ywPL7BBbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="76849493"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="76849493"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 08:53:38 -0700
X-CSE-ConnectionGUID: MaAyn/qARquak70G+89e6Q==
X-CSE-MsgGUID: 2Hv0Tv0zTKW1vawRyOTkoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="231884728"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 08:53:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 04/10] drm/i915: Make plane_config->fb a struct
 drm_framebuffer*
In-Reply-To: <ad5P4XUVw3I6VGar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260410150449.9699-1-ville.syrjala@linux.intel.com>
 <20260410150449.9699-5-ville.syrjala@linux.intel.com>
 <fa77ccf73f2da60f4fcfc7275c03ce63907da8ba@intel.com>
 <ad5P4XUVw3I6VGar@intel.com>
Date: Tue, 14 Apr 2026 18:53:33 +0300
Message-ID: <421cbb8fbe35aea2cd1f3b1a88eadd3a9e94e183@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: B72873FC2D3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 14 Apr 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Apr 10, 2026 at 06:48:02PM +0300, Jani Nikula wrote:
>> On Fri, 10 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > There's no need to use the intel specific struct intel_framebuffer*
>> > type in the initial plane_config structure. Just make it a
>> > struct drm_framebuffer*.
>>=20
>> I guess a few words on the "why?" would be nice. I mean they're still
>> pointers to struct intel_framebuffer objects, and could be
>> container_of'd back.
>
> Yeah, meant to put something more sensible here. Basically I think the
> less special types we expose in the interface (even if just pointers)
> the better. At least then there is no need to change the interface
> definition if we ever change the internal types. And I hope that the
> existing examples will generally encourage people to not expose more
> special types unless absolutely necessary.

I don't disagree, just wanted to see that in the commit message. ;D


--=20
Jani Nikula, Intel
