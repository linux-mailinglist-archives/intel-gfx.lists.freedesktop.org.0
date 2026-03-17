Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKCtDxpSuWkoAgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 14:07:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F1D2AA7E5
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 14:07:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6185F10E627;
	Tue, 17 Mar 2026 13:07:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CVG15I82";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C20410E62A
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2026 13:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773752855; x=1805288855;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=F0p8gQPBLZEVD9EM+ov7iJ+l8edm5JCED+CAd61J5VY=;
 b=CVG15I82RMwv8pIm3cgAxNlM1n6XVEDLK40T7EZ0+Oe4kH2AXtR32pGc
 0pd9JbOOrscNq4sg7s5MzMVsWnZDqQ+GsoMmU59vGf2fHPYjMBv7RN17B
 o/udm53J2Gc4NI+rlV9dqYpJGx/fz37s0RIHX+qpozw2hVahrFK7hJENX
 o5PpN67eMuZoqr5v3RDnFOmv1vx7cNhgrP4bhq/hU2AEa4rjs6jeNVLN7
 HvubqjSv1zncT0REvRYc4Bcz3V1WrTQpF0aZahObpXoFZIJJKdx/fwMXN
 QL/oAOjxxA6ntcajWz/kd8jgWyHQH8PgytKRoCYyE/llWta8zYY3KN18r A==;
X-CSE-ConnectionGUID: 2+gcr/UIQnG85R708LeNBQ==
X-CSE-MsgGUID: Jv9bUpN5SGuu3dOxYuAydQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="100239769"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="100239769"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 06:07:34 -0700
X-CSE-ConnectionGUID: AvYKnYs2SLSTsTIkPNxv/w==
X-CSE-MsgGUID: f3iVZsrJQFiedHUOLmFoDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="217963748"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 06:07:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915: Order OP vs. timeout correctly in __wait_for()
In-Reply-To: <20260313110740.24620-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260313110740.24620-1-ville.syrjala@linux.intel.com>
Date: Tue, 17 Mar 2026 15:07:29 +0200
Message-ID: <c158ed8a644a9c3bf10a14cc083dcd33f84c236b@intel.com>
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
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: D6F1D2AA7E5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Put the barrier() before the OP so that anything we read out in
> OP and check in COND will actually be read out after the timeout
> has been evaluated.
>
> Currently the only place where we use OP is __intel_wait_for_register(),
> but the use there is precisely susceptible to this reordering, assuming
> the ktime_*() stuff itself doesn't act as a sufficient barrier:
>
> __intel_wait_for_register(...)
> {
> 	...
> 	ret =3D __wait_for(reg_value =3D intel_uncore_read_notrace(...),
>  			 (reg_value & mask) =3D=3D value, ...);
> 	...
> }
>
> Cc: stable@vger.kernel.org
> Fixes: 1c3c1dc66a96 ("drm/i915: Add compiler barrier to wait_for")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_wait_util.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_wait_util.h b/drivers/gpu/drm/i915=
/i915_wait_util.h
> index 7376898e3bf8..e1ed7921ec70 100644
> --- a/drivers/gpu/drm/i915/i915_wait_util.h
> +++ b/drivers/gpu/drm/i915/i915_wait_util.h
> @@ -25,9 +25,9 @@
>  	might_sleep();							\
>  	for (;;) {							\
>  		const bool expired__ =3D ktime_after(ktime_get_raw(), end__); \
> -		OP;							\
>  		/* Guarantee COND check prior to timeout */		\
>  		barrier();						\
> +		OP;							\
>  		if (COND) {						\
>  			ret__ =3D 0;					\
>  			break;						\

--=20
Jani Nikula, Intel
