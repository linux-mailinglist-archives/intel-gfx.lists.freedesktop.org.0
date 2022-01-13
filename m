Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A4648DC3D
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 17:53:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1074510E233;
	Thu, 13 Jan 2022 16:53:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE20310E233
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jan 2022 16:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642092794; x=1673628794;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=wD8upNJ00SJpby65WwKFKihikooWTj0faRJ+kFeTEdg=;
 b=cnnLmK/E3oAtpHmOV4Mji5+XESRKDIHQjJuSza5txCQEuLuhM8rbUzVN
 gU+cDjOSBRr3NebR9nQmRsQeI/15M/L0s2dgPd0uF1gcXT7SZsMKox0P/
 uTuGMbBIYvs6CZmuajGX5+QzG0LuS4mjkMgAnNHjaWZZ5RmdI0aTOgBWC
 RJhuwe1jHT8169rSKwZ8E21M7WQxlCwBdwDEk4iyMPsFdfw+Hx++Tmjw/
 LXzWJ7ylLJ49oUYL5HM/4HSQpETA1iFhWHT+Lmjt9Jax6OelOyjHTn4EU
 0pu5soSWQcDY37EtBrHhEaB5N9KIBPh5JWyk2Sguoi8W9w2mqNxWjWRHL A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="330400764"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="330400764"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 08:53:12 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="529733151"
Received: from joneil3-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.0.221])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 08:53:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20220113164252.awsjfafrooeycev6@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1642072583.git.jani.nikula@intel.com>
 <2c18d26a7e6ceb025af7e91a56f8694de94fd3ee.1642072583.git.jani.nikula@intel.com>
 <20220113164252.awsjfafrooeycev6@ldmartin-desk2>
Date: Thu, 13 Jan 2022 18:53:08 +0200
Message-ID: <878rvj7f2j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/opregion: check port number
 bounds for SWSCI display power state
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 13 Jan 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Thu, Jan 13, 2022 at 01:18:03PM +0200, Jani Nikula wrote:
>>The mapping from enum port to whatever port numbering scheme is used by
>>the SWSCI Display Power State Notification is odd, and the memory of it
>>has faded. In any case, the parameter only has space for ports numbered
>>[0..4], and UBSAN reports bit shift beyond it when the platform has port
>>F or more.
>>
>>Since the SWSCI functionality is supposed to be obsolete for new
>>platforms (i.e. ones that might have port F or more), just bail out
>>early if the mapped and mangled port number is beyond what the Display
>>Power State Notification can support.
>>
>>Fixes: 9c4b0a683193 ("drm/i915: add opregion function to notify bios of e=
ncoder enable/disable")
>>Cc: <stable@vger.kernel.org> # v3.13+
>>Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4800
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_opregion.c | 15 +++++++++++++++
>> 1 file changed, 15 insertions(+)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/=
drm/i915/display/intel_opregion.c
>>index af9d30f56cc1..ad1afe9df6c3 100644
>>--- a/drivers/gpu/drm/i915/display/intel_opregion.c
>>+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
>>@@ -363,6 +363,21 @@ int intel_opregion_notify_encoder(struct intel_encod=
er *intel_encoder,
>> 		port++;
>> 	}
>>
>>+	/*
>>+	 * The port numbering and mapping here is bizarre. The now-obsolete
>>+	 * swsci spec supports ports numbered [0..4]. Port E is handled as a
>>+	 * special case, but port F and beyond are not. The functionality is
>>+	 * supposed to be obsolete for new platforms. Just bail out if the port
>>+	 * number is out of bounds after mapping.
>>+	 */
>>+	if (port > 4) {
>>+		drm_dbg_kms(&dev_priv->drm,
>>+			    "[ENCODER:%d:%s] port %c (index %u) out of bounds for display pow=
er state notification\n",
>>+			    intel_encoder->base.base.id, intel_encoder->base.name,
>>+			    port_name(intel_encoder->port), port);
>
> Do we need this log message? It will always trigger for platforms with
> PORT F and callers simply ignore the return value.

It will trigger for patch 1, and the stable backport, but, with any luck
and proper opregions, it will be silenced by the subsequent patches.

BR,
Jani.



--=20
Jani Nikula, Intel Open Source Graphics Center
