Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA4A490554
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jan 2022 10:42:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FEEE10E83E;
	Mon, 17 Jan 2022 09:42:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D2DD10E8BD
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jan 2022 09:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642412534; x=1673948534;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=I6nV+coA4V1ACmI+M+vFUOOnUnSDiUbrJVP6sKIMcnI=;
 b=RoqtOuCZNGFbnPfmn7P70gXWnlDpdoZBDgcL8zSm8Nj41v5vu1iES3Y0
 b4iedbxo6HtCKpNdpesibZ8r20nludiCo9vTf7F6MCfEAigftOjnsoQos
 DTM9uZkbeT5X5MIFu7dv9b9nf61RCQEpJZ1Fe1S5X2qX4v7G7dV/dX3ZO
 1OPdfGmWe21zX39W9FrIRhJnY9qqfmZ8bVfiH6qkxCvMd/8dpybL6/9Qm
 u6Ycw3V9gq0AmeUrvlNw1duGZeJV9mbOosX+M29lGAWqFePzXk9lekaVy
 JaDFqpW1ShiSmnygG5YuXmqUtLRr2tx9VvkYTgjqEZ8W7CHgQ0yYWWcF+ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10229"; a="268966974"
X-IronPort-AV: E=Sophos;i="5.88,295,1635231600"; d="scan'208";a="268966974"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2022 01:42:13 -0800
X-IronPort-AV: E=Sophos;i="5.88,295,1635231600"; d="scan'208";a="529993526"
Received: from nsilva2-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.2.18])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2022 01:42:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
In-Reply-To: <fe05d609b9425e997a4145fe5a7761419b2e27c3.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220112112715.1234366-1-jani.nikula@intel.com>
 <fe05d609b9425e997a4145fe5a7761419b2e27c3.camel@intel.com>
Date: Mon, 17 Jan 2022 11:42:01 +0200
Message-ID: <87tue266mu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: remove unused lines_to_wait
 vbt info
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

On Wed, 12 Jan 2022, "Souza, Jose" <jose.souza@intel.com> wrote:
> On Wed, 2022-01-12 at 13:27 +0200, Jani Nikula wrote:
>> The lines_to_wait info from VBT is never used. Remove.
>>=20
>
> Reviewed-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>

Thanks, pushed.

BR,
Jani.


>
>> Cc: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
>> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>=20
>> ---
>>=20
>> Not exactly a v2, but rather a replacement for [1].
>>=20
>> [1] https://patchwork.freedesktop.org/patch/msgid/20220104085421.213793-=
1-jani.nikula@intel.com
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c | 20 --------------------
>>  drivers/gpu/drm/i915/i915_drv.h           |  8 --------
>>  2 files changed, 28 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm=
/i915/display/intel_bios.c
>> index c7a8d517ce81..262406c00e53 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -905,26 +905,6 @@ parse_psr(struct drm_i915_private *i915, const stru=
ct bdb_header *bdb)
>>  	i915->vbt.psr.idle_frames =3D psr_table->idle_frames < 0 ? 0 :
>>  		psr_table->idle_frames > 15 ? 15 : psr_table->idle_frames;
>>=20=20
>> -	switch (psr_table->lines_to_wait) {
>> -	case 0:
>> -		i915->vbt.psr.lines_to_wait =3D PSR_0_LINES_TO_WAIT;
>> -		break;
>> -	case 1:
>> -		i915->vbt.psr.lines_to_wait =3D PSR_1_LINE_TO_WAIT;
>> -		break;
>> -	case 2:
>> -		i915->vbt.psr.lines_to_wait =3D PSR_4_LINES_TO_WAIT;
>> -		break;
>> -	case 3:
>> -		i915->vbt.psr.lines_to_wait =3D PSR_8_LINES_TO_WAIT;
>> -		break;
>> -	default:
>> -		drm_dbg_kms(&i915->drm,
>> -			    "VBT has unknown PSR lines to wait %u\n",
>> -			    psr_table->lines_to_wait);
>> -		break;
>> -	}
>> -
>>  	/*
>>  	 * New psr options 0=3D500us, 1=3D100us, 2=3D2500us, 3=3D0us
>>  	 * Old decimal value is wake up time in multiples of 100 us.
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>> index 6caec2eca8cd..890f1f6fbc49 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -514,13 +514,6 @@ i915_fence_timeout(const struct drm_i915_private *i=
915)
>>  /* Amount of PSF GV points, BSpec precisely defines this */
>>  #define I915_NUM_PSF_GV_POINTS 3
>>=20=20
>> -enum psr_lines_to_wait {
>> -	PSR_0_LINES_TO_WAIT =3D 0,
>> -	PSR_1_LINE_TO_WAIT,
>> -	PSR_4_LINES_TO_WAIT,
>> -	PSR_8_LINES_TO_WAIT
>> -};
>> -
>>  struct intel_vbt_data {
>>  	/* bdb version */
>>  	u16 version;
>> @@ -560,7 +553,6 @@ struct intel_vbt_data {
>>  		bool full_link;
>>  		bool require_aux_wakeup;
>>  		int idle_frames;
>> -		enum psr_lines_to_wait lines_to_wait;
>>  		int tp1_wakeup_time_us;
>>  		int tp2_tp3_wakeup_time_us;
>>  		int psr2_tp2_tp3_wakeup_time_us;
>

--=20
Jani Nikula, Intel Open Source Graphics Center
