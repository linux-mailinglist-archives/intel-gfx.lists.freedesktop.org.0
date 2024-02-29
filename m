Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C479786CAED
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 15:08:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E80E110E14A;
	Thu, 29 Feb 2024 14:08:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nadffpvr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3C9C10E14A
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 14:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709215690; x=1740751690;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=8ViOtuJZ2CbnUKuZgFOqm5nXgSWiDEHlsTyTuZYY0Ac=;
 b=nadffpvrNWmUF0fHsgM0qEbnA+BI66YTMvH60Ojw7MRRLw4pLkDUDAIQ
 iD86Iy+iCklds6MfroNzJTy8kTzmO4XXiPwsf6/hUDPWn+HcQyMmI1XUu
 QYUrdPtQl8GmwjKWcQa7+mFkrYBGirwPqa/gsNPAfxCwbtPqQl0QwhJ7e
 9Hso3ftD8ApVyMd4llblI8FWZs+F1cnDOUR7ASpUCOLLlC7Ca8Bd7EkpM
 WkLL6un7VIVcyvvKATD+6tT20z7+X9gxjf3yIjgOyaa4Wn/cFXO4kwk84
 FGt5e2IJ1fdr6QGxo6sVaSCVEqslqNa1QfeOxACQe8oywXE4M6IsweZN7 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3851454"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="3851454"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 06:08:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="31025120"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 06:08:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 3/3] drm/i915/bios: abstract child device expected size
In-Reply-To: <ZeB2quRtvZ-eQTWN@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240226175854.287871-1-jani.nikula@intel.com>
 <20240226175854.287871-3-jani.nikula@intel.com>
 <ZeB2quRtvZ-eQTWN@intel.com>
Date: Thu, 29 Feb 2024 16:08:05 +0200
Message-ID: <875xy78it6.fsf@intel.com>
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

On Thu, 29 Feb 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Feb 26, 2024 at 07:58:54PM +0200, Jani Nikula wrote:
>> Add a function to return the expected child device size. Flip the if
>> ladder around and use the same versions as in documentation to make it
>> easier to verify. Return an error for unknown versions. No functional
>> changes.
>>=20
>> v2: Move BUILD_BUG_ON() next to the expected sizes
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c | 40 ++++++++++++++---------
>>  1 file changed, 24 insertions(+), 16 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm=
/i915/display/intel_bios.c
>> index c0f41bd1f946..343726de9aa7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -2699,27 +2699,35 @@ static void parse_ddi_ports(struct drm_i915_priv=
ate *i915)
>>  		print_ddi_port(devdata);
>>  }
>>=20=20
>> +static int child_device_expected_size(u16 version)
>> +{
>> +	BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
>
> Should we make that !=3D40 perhaps?

Yeah, but let's get this going first.

> Anyways, series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.


--=20
Jani Nikula, Intel
