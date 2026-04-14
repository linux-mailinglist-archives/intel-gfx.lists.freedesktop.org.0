Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEjUJKxj3mlqDgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 17:56:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1703FC393
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 17:56:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E91E10E0B6;
	Tue, 14 Apr 2026 15:56:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ahlLXYE/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64F7E10E0AE;
 Tue, 14 Apr 2026 15:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776182185; x=1807718185;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=yY2keQ9jIEdRZZW9weUI0sIkTcYuDd6auo/j4HssSH8=;
 b=ahlLXYE/DIs7EIumt6cRMnV7VY8t27Zjrm/WoE3AQuwYvRmomicUP4Cj
 RCYHsCii9pGQHrVpcXw5sV7DRwYNOPehX2uIOPvI578D3XL4UiVS3oxpI
 hoKCLu6C6Ww/07ffm58c1JxknR+OTqxTV3UV/e4n8MtvJmMUq02bwsukd
 yro5NSxt3n8gwHEdnpO9Yi2l3O4XVP0sW/r6cnWNk5K3E7i/ondKIm4fu
 9o7I7Y5MXpD6aGLVrVli6ttU91fkWHDziwLWNPU4Lm6bIuAgHwvvS+pCU
 7VVwTzKlFO0wc34s1Z7UZKufL6msWTzlih8SxBtJ38qZGP2pYF6uu2S1A Q==;
X-CSE-ConnectionGUID: hj6qjCd8T5yaf2OnQ/zkJg==
X-CSE-MsgGUID: OAvn7I5sQmOXWvONI0OF+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="81007276"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="81007276"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 08:56:24 -0700
X-CSE-ConnectionGUID: /Sp4bi8KTsq7EsbwlYkKWA==
X-CSE-MsgGUID: uOgLh+VrQnWZF0YacV1FYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="230352657"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 08:56:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH v2 5/5] drm/i915/reset: Disable execlist per-engine
 reset for display reset tests
In-Reply-To: <20260414142247.651-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260414142247.651-1-ville.syrjala@linux.intel.com>
 <20260414142247.651-6-ville.syrjala@linux.intel.com>
Date: Tue, 14 Apr 2026 18:56:19 +0300
Message-ID: <351084abb7388df170677da2d4ad1e85841521db@intel.com>
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
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: EE1703FC393
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 14 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The display reset only happens from the full reset path. We must
> therefore force execlist submission to always take the full reset
> path and not the per-engine reset path. Currently the display
> reset tests are in fact not testing display resets at all on
> platforms using execlist submission. Ring submission and GuC
> submission always take the full path anyway.
>
> Also disable the engine reset inside __intel_gt_set_wedged() so
> that we simulate the intel_gt_gpu_reset_clobbers_display() behavior
> as closely as possible also when taking the full wedge path.
>
> The slight race between the separate intel_display_reset_test()
> calls in the overall reset path is harmless. kms_busy will keep
> the modparam fixed during the test, and even if someone were to
> fiddle with the modparam manually nothing bad should happen if
> the calls return different values.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Not an expert here, but seems reasonable.

Acked-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/gt/intel_reset.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915=
/gt/intel_reset.c
> index a1e6aaca8c9b..0b5f3fc58009 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -967,6 +967,7 @@ static void nop_submit_request(struct i915_request *r=
equest)
>=20=20
>  static void __intel_gt_set_wedged(struct intel_gt *gt)
>  {
> +	struct intel_display *display =3D gt->i915->display;
>  	struct intel_engine_cs *engine;
>  	intel_engine_mask_t awake;
>  	enum intel_engine_id id;
> @@ -984,7 +985,8 @@ static void __intel_gt_set_wedged(struct intel_gt *gt)
>  	awake =3D reset_prepare(gt);
>=20=20
>  	/* Even if the GPU reset fails, it should still stop the engines */
> -	if (!intel_gt_gpu_reset_clobbers_display(gt))
> +	if (!intel_gt_gpu_reset_clobbers_display(gt) &&
> +	    !intel_display_reset_test(display))
>  		intel_gt_reset_all_engines(gt);
>=20=20
>  	for_each_engine(engine, gt, id)
> @@ -1506,9 +1508,10 @@ void intel_gt_handle_error(struct intel_gt *gt,
>=20=20
>  	/*
>  	 * Try engine reset when available. We fall back to full reset if
> -	 * single reset fails.
> +	 * single reset fails. Display reset test needs a full reset.
>  	 */
> -	if (!intel_uc_uses_guc_submission(&gt->uc) &&
> +	if (!intel_display_reset_test(gt->i915->display) &&
> +	    !intel_uc_uses_guc_submission(&gt->uc) &&
>  	    intel_has_reset_engine(gt) && !intel_gt_is_wedged(gt)) {
>  		local_bh_disable();
>  		for_each_engine_masked(engine, gt, engine_mask, tmp) {

--=20
Jani Nikula, Intel
