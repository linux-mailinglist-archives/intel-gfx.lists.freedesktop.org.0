Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGsqOP4/sWmtswIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 11:12:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69579261D9B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 11:12:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F8AB10E3E6;
	Wed, 11 Mar 2026 10:12:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J16J78bF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A13B910E0BA;
 Wed, 11 Mar 2026 10:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773223931; x=1804759931;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=p1nQor/J8upk2TChzKeimFYPFrEFTuDIDB61e+dNEcA=;
 b=J16J78bF55r5kr0NiOZ6cRvMvj+DFfrUxKuHx8HyLuFJ0RvlN6OElDnC
 VuzE5ZvrAtnaAtI2OP3+eya6kHXJUzT7TgGHfj+Ic/E/tFKAaT3IZ38r3
 fx8y0YgiWGHuNjSHGVssXMwOlOWihDCWqnVQh7tEz6jkkfBQv/42MLZj8
 kLVHnwoOHH3rW5T4xxIR1fdzrqrz+kYWaw44rCvuvdCTWNL2A9LAGKGLt
 L1z5m2tjGnGaXfh+s5kXmae+VFWFg7cQEo2LbQrRC6B8xAl7iO7bOqQ5P
 srWk8JNtyaP6TowmszC7iIuULK7MK3HH0QH4YZ+hOA+/yciL46WrvcToC w==;
X-CSE-ConnectionGUID: gqLeMJRyR5C/JyQe3BQwrQ==
X-CSE-MsgGUID: VIb+Tp4hTDmfydJw6Qg6sA==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="74163681"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="74163681"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 03:12:10 -0700
X-CSE-ConnectionGUID: sQ6D1ia7Riq9O27/4y/MVQ==
X-CSE-MsgGUID: P/VutGLAR0eoi8sGk/4VSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="220458308"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.91])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 03:12:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/7] drm/i915/gem: relocate __i915_gem_object_{flush,
 invalidate}_frontbuffer()
In-Reply-To: <846e0fde752600f4f8232713f13816d4f17a5dc2.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1772475391.git.jani.nikula@intel.com>
 <d779ef44b4b43feda9df63f1225a947a9cd23ba8.1772475391.git.jani.nikula@intel.com>
 <846e0fde752600f4f8232713f13816d4f17a5dc2.camel@intel.com>
Date: Wed, 11 Mar 2026 12:12:05 +0200
Message-ID: <f6e185b82149d2af71077605a47344f2114b6a27@intel.com>
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
X-Rspamd-Queue-Id: 69579261D9B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

On Wed, 04 Mar 2026, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
> On Mon, 2026-03-02 at 20:17 +0200, Jani Nikula wrote:
>> Move __i915_gem_object_{flush,invalidate}_frontbuffer() to
>> i915_gem_object_frontbuffer.c. All the other i915 gem object
>> frontbuffer
>> functions are there already, and the relevant declarations are in
>> i915_gem_object_frontbuffer.h too.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Thanks for the reviews, pushed to drm-intel-next.

BR,
Jani.

--=20
Jani Nikula, Intel
