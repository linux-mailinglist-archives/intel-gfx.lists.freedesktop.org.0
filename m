Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +J6qGPV91mk0FwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 18:10:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AED583BEB63
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 18:10:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 313A410E69F;
	Wed,  8 Apr 2026 16:10:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f33m7SyS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF5AC10E6A0
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 16:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775664626; x=1807200626;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=2O7AP0QL9ZgiKdI+OYUj4STyfc5ZEzdQs9WIW3NK+Lk=;
 b=f33m7SySdHJy1AWJ5qCoRDhEfDVCUn4ry7r+tdtlFy/JmOxC195SOdWA
 /b+NEBIGrwa/CmlQVeTQ++jRa4D5Qjp8FIf4ONx5cpWabAmDcq3MJZKUN
 HnWCnN2pgI8CvwrhSVC+58Gz4GPdEDF8tJTy58IFMX5iiGg6+N34Lt4Wq
 bknkuTDQ1J91fJrh6tUO8ekJfE6hDnemWjxobrqw0oz5Eur3rkIuzIm2c
 WVXpkcWLk47Z6PDi+Wg18NP+VfLl7AL99RjCcJIe6BVrf/e6KzcSZLEJ3
 sUetffMj2b3g8D0ACb7ZUfNwT8u3guOBi6sta5DKx5qU+KCCghi2/+6wf A==;
X-CSE-ConnectionGUID: ZXuwmaHoTP2tFDnniwK5dw==
X-CSE-MsgGUID: AIcfyBkHSNyBt3BWuaiyCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="88038081"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="88038081"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 09:10:25 -0700
X-CSE-ConnectionGUID: N6Md1ic1RuaA9fzXA7Ho8A==
X-CSE-MsgGUID: AI3TfUP+SbmsKh3Vvq0a9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="224210384"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 09:10:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@intel.com>, Ville =?utf-8?B?U3ly?=
 =?utf-8?B?asOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.Full: failure for
 drm/i915/display: stop using the configurable fence timeout (rev2)
In-Reply-To: <dcaf9a16-a462-4b04-8b7b-29f03e4ea523@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251112155612.8320-1-jani.nikula@intel.com>
 <176310680567.54560.8073003092226406962@10055242dc62>
 <3692f126b907c442d76a93957073660d7d9ffd12@intel.com>
 <aSXmTMWeOXjnYNSB@intel.com>
 <dc4d04b4-2d29-4a19-8d11-58051673e0a6@intel.com>
 <44f9b69d23678458f0ab3ff4bec5c45cb05535b8@intel.com>
 <4d0e3bfe-d3e3-43fb-8964-b9647e914a61@intel.com>
 <ac7ffc50c676979359a7363374030beb61d6cfff@intel.com>
 <dcaf9a16-a462-4b04-8b7b-29f03e4ea523@intel.com>
Date: Wed, 08 Apr 2026 19:10:20 +0300
Message-ID: <b42f7d3648591e4d2956c16f66a984d951b42eb9@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@intel.com,m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.997];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: AED583BEB63
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 08 Apr 2026, Maarten Lankhorst <maarten.lankhorst@intel.com> wrote:
> Hey,
>
> Den 2026-04-08 kl. 17:14, skrev Jani Nikula:
>> On Thu, 02 Apr 2026, Maarten Lankhorst <maarten.lankhorst@intel.com> wro=
te:
>>> Den 2026-04-02 kl. 11:40, skrev Jani Nikula:
>>>> On Wed, 03 Dec 2025, Maarten Lankhorst <maarten.lankhorst@intel.com> w=
rote:
>>>>> Hey,
>>>>>
>>>>> Den 2025-11-25 kl. 18:24, skrev Ville Syrj=C3=A4l=C3=A4:
>>>>>> On Tue, Nov 25, 2025 at 03:55:02PM +0200, Jani Nikula wrote:
>>>>>>> Maarten, Ville, any ideas what to do about these?
>>>>>> Looks like we need the timeout to unbreak the modeset vs. reset
>>>>>> deadlock in a timely fashion.
>>>>>>
>>>>>> I'm not where we signal/error the fences the modeset is waiting
>>>>>> for, but I guess that must be happening after the whole reset
>>>>>> sequence is done. Doing that earlier would seem like another
>>>>>> solution, but dunno what other fallout it would have.
>>>>> intel_prepare_plane_fb() adds all dma-resv fences for old_obj on
>>>>> intel_crtc_needs_modeset(), does it change anything if we remove that,
>>>>> at least for the GPU reset commit?
>>>> We dropped the ball here a bit, and I'm a bit clueless as to what to
>>>> do. Except we'll need to unify i915 and xe here somehow.
>>>>
>>>> Alternatives:
>>>>
>>>> - Remove the timeout from i915 (the patch at hand), and fix the fallout
>>>>   somehow.
>>>>
>>>> - Add the timeout to xe, and fix the fallout, if any.
>>>>
>>>> - Add the timeout to display parent interface, which is a bit meh.
>>>>
>>>>
>>> The mention in the commit is old_obj needs to be wait for flip_done, I =
do not believe this
>>> is the case that it was ever used in hardware supported by xe, so for x=
e the wait can be dropped entirely.
>>>
>>> Is this required for i915 still? In that case you can just eliminate
>>> the wait only for xe.
>> Trouble is, doing things differently basically means using the parent
>> interface no matter what.
>>
> The specific wait mentioned in intel_plane_prepare_plane_fb is only
> used in pre-universal plane overlay support, and in xf86-video-intel
> driver on < gen9. (source:
> intel_skylake_info specifies gen =3D 0110,
> and sna_wait_for_scanline() returns false for gen >=3D 0110 on sna.)
>
> Adding a < GEN9 check would be sufficient, and not driver specific.

The timeout is still configurable on i915. I'm not sure how to resolve
that part.

BR,
Jani.

--=20
Jani Nikula, Intel
