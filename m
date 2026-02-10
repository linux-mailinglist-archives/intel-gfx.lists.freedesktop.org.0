Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMs0AEUoi2m6QQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 13:44:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D69011AF8A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 13:44:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68EC210E571;
	Tue, 10 Feb 2026 12:44:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NIhxy0dJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95C1110E571
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Feb 2026 12:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770727488; x=1802263488;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=yvJsiW3WcfYCopWgARsIvVj50UvGKt52hVneOxzhiVY=;
 b=NIhxy0dJq0pSLve+occ4YiesUV0fCh36n23VWW6sFtEUGRM2oX9PgvaD
 /YfDoriE/egRqV5bT82nIbiGtAdexedIYxf1/Xt6u4SNnvW+E506o/89G
 PC7svfeN76IKHNHqQ8zn4ba9P9oUoFXysOfDOWeX2NpyNMAEP8Iu2kjfh
 naOZp2DbQn/Jddi3IjVg83oE5AWOtc6bhA6G99KvtOOg+wTcjv5Kbxj8Y
 ZmFsqKH8N78i8pTjZj75OTEmAMS+9nJ4db2wzvPS+NGtqe//rqpaZ1ugL
 +B2V9YPU64dHbsNSPjhO0Lgg2t8p1jZtTtL9iQCnjPmEpvMPBA1KBxsH7 w==;
X-CSE-ConnectionGUID: 23r8bMEkQviPnO7Lv2nTVA==
X-CSE-MsgGUID: AdGK+m6ISX+L/3jXnlVwDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="59420946"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="59420946"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 04:44:48 -0800
X-CSE-ConnectionGUID: 7dskhGCeR+miV+5YbXG6qg==
X-CSE-MsgGUID: bmxO7BbmS0W6KXZj4sf5cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="210973048"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.246])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 04:44:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/overlay: remove dead code with MTL platform
 checks
In-Reply-To: <aYXrqU7f-SJvmH4X@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260206125949.243643-1-jani.nikula@intel.com>
 <aYXrqU7f-SJvmH4X@intel.com>
Date: Tue, 10 Feb 2026 14:44:44 +0200
Message-ID: <78e52116dcb5003426fe440156215b1514d15a59@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 3D69011AF8A
X-Rspamd-Action: no action

On Fri, 06 Feb 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Feb 06, 2026 at 02:59:49PM +0200, Jani Nikula wrote:
>> Commit c5741c5c1122 ("drm/i915/display: Do not use stolen on MTL") added
>> some checks for MTL in overlay code. However, this is never run on
>> MTL. Clean it up.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_overlay.c | 5 ++---
>>  1 file changed, 2 insertions(+), 3 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/=
drm/i915/display/intel_overlay.c
>> index 88eb7ae5765c..ae2a3527645f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
>> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
>> @@ -1358,12 +1358,11 @@ static int get_registers(struct intel_overlay *o=
verlay, bool use_phys)
>>  {
>>  	struct intel_display *display =3D overlay->display;
>>  	struct drm_i915_private *i915 =3D to_i915(display->drm);
>> -	struct drm_i915_gem_object *obj =3D ERR_PTR(-ENODEV);
>> +	struct drm_i915_gem_object *obj;
>>  	struct i915_vma *vma;
>>  	int err;
>>=20=20
>> -	if (!display->platform.meteorlake) /* Wa_22018444074 */
>> -		obj =3D i915_gem_object_create_stolen(i915, PAGE_SIZE);
>> +	obj =3D i915_gem_object_create_stolen(i915, PAGE_SIZE);
>>  	if (IS_ERR(obj))
>>  		obj =3D i915_gem_object_create_internal(i915, PAGE_SIZE);
>>  	if (IS_ERR(obj))
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
