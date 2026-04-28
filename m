Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EKMwOobI8GmfYgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 16:47:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A61848749C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 16:47:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAD0710ECF8;
	Tue, 28 Apr 2026 14:47:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bgyZGqMz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E819D10ECF8
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2026 14:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777387651; x=1808923651;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7wh+lcA0Px+6xwJpuE5WkOMAhvVYUsIY8AGMXJkqX4Q=;
 b=bgyZGqMzPI0Sq0hC1HLemmKCD1IeHDeT762jsC+MsR0lCuo9c8lB5h6T
 6cmX9lEph2vSoK9TFjxGeXSqSw++VTWNAAi+wWHoUwVGLxY+WSG9hb3K1
 QdWgC2iE9An5yQFZL2nW7RHjTjkZWVRQJNGjpjE9AnOdYyuBFX+Ryh/1i
 tnFki33RZZ9CNGgUuClzUAfgf/8txfjntX5KM9bHJDUaAzEIoBTvbUZ3I
 OpROx64LX8SjftB+vsmVNmjf5CwscEktfU2sp4yn7e03b/nwcAbHemnh6
 lpd5z1FVHRYCkAMGoQbzdH9kSacCbIIKAGkwH8uZF897Pdz5b1foTstTQ g==;
X-CSE-ConnectionGUID: CcY6C/oeQy6uav3NdSg5og==
X-CSE-MsgGUID: ZlLJTYnRQDSZSoJtT4uI7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="78409145"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78409145"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 07:47:31 -0700
X-CSE-ConnectionGUID: T9r4+iEkRgSWg3OgvKJgHA==
X-CSE-MsgGUID: FqztJYZ9QHGAHsP8FcCMyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="257522503"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.30])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 07:47:29 -0700
Date: Tue, 28 Apr 2026 16:47:27 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com,
 krzysztof.karas@intel.com
Subject: Re: [PATCH] drm/i915: replace fetch_and_zero() with kernel xchg()
Message-ID: <afDIf6TsiQamhu03@ashyti-mobl2.lan>
References: <75ba7e77fe28617f027ae49a620df8b580cd1000.1777291964.git.sebastian.brzezinka@intel.com>
 <7d18b591154516efd9be14c643bd576678b616bc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7d18b591154516efd9be14c643bd576678b616bc@intel.com>
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
X-Rspamd-Queue-Id: 9A61848749C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:sebastian.brzezinka@intel.com,m:andi.shyti@linux.intel.com,m:krzysztof.karas@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

Hi Jani,

On Mon, Apr 27, 2026 at 03:26:13PM +0300, Jani Nikula wrote:
> On Mon, 27 Apr 2026, Sebastian Brzezinka <sebastian.brzezinka@intel.com> wrote:
> > The i915 local fetch_and_zero() macro is a non-atomic
> > fetch-and-zero operation defined in i915_utils.h and duplicated in
> > display/intel_display_utils.h. Its functionality is equivalent to the
> > kernel-provided xchg().
> 
> While I dislike having the local fetch_and_zero() macro around, the
> usage does not need to be atomic, and there's no need to switch to the
> atomic xchg() at all.
> 
> Using atomic xchg() gives the wrong impression to the reader that the
> atomicity matters when it doesn't.
> 
> So that's a no for this patch.

this change was suggested by me because in a previous patch we
switched from fetch_and_zero to xchg, but then there was a need
for atomic.

I still think the change is valid whenever we think there is a
need for an atomic version of fetch_and_zero().

This patch is intended not to change any behavior, while setting
a political atomic xchg to every fetch_and_zero is actually
changing the overall behavior.

Thanks,
Andi
