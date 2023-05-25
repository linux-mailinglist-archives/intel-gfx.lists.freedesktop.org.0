Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F34467108D6
	for <lists+intel-gfx@lfdr.de>; Thu, 25 May 2023 11:27:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28F6210E85B;
	Thu, 25 May 2023 09:27:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25D3010E85B
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 May 2023 09:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685006825; x=1716542825;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Xhu80SbuTuI4TacncamhYZqYhCEeg3W/KuvDGuSFhPI=;
 b=TCI93tzcJgUm2CXk8DYy5p1/ZD+uZLFw0ikqOVaGXFGFlxi3N4SaNo67
 EFW9OJNAgFEGBnvNaQRNSJaYO0EKs8XzkSl42fH6qfPtqyHnbu6xNljKk
 cN9Ul9XkQy4/TutPWlCLKyFuuUOzg4aUEj3jKT9hVKEOFQok+9nECxPyT
 txt79G3DPoYyJ/2KxeOaa55T0zDQHkQPYNBjkCxBAx9t1lEYuHBObRw4R
 fXJxuQCdsjV/bG2GoIwMwCp2QwX+PK09gOh0NR3buFt5gxAhVzdCZTeJY
 N/2rBC7+GTtzn7KAteEein08R8CLp2k7Jk5BQep3MZkXvbiYNyyFeYKi7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="343309969"
X-IronPort-AV: E=Sophos;i="6.00,190,1681196400"; d="scan'208";a="343309969"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 02:27:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="735488077"
X-IronPort-AV: E=Sophos;i="6.00,190,1681196400"; d="scan'208";a="735488077"
Received: from emontau-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.42.201])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 02:27:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>
In-Reply-To: <3glsg3b2nmdtzb3yijhijr2gjkwb7oaih4pwl5qiry2qrjvc3s@qk2upnfz4fjd>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230511165534.10266-1-ville.syrjala@linux.intel.com>
 <20230511165534.10266-4-ville.syrjala@linux.intel.com>
 <3glsg3b2nmdtzb3yijhijr2gjkwb7oaih4pwl5qiry2qrjvc3s@qk2upnfz4fjd>
Date: Thu, 25 May 2023 12:27:00 +0300
Message-ID: <877cswkbh7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Assert that device info
 bitmasks have enough bits
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 24 May 2023, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Thu, May 11, 2023 at 07:55:30PM +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
>>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>
>>Sprinkle in some BUILD_BUG_ON()s to make sure some of
>>the bitmasks used in the device info have enough bits.
>>
>>Do we have a better place for this sort of stuff?
>
> it's being moved to display/, so I'd say the intel_display_device_info.c
> is a better place. What about using a static_assert() and leave them
> near the top of the file?

I'm afraid the whole series needs a rebase too.

BR,
Jani.

>
> Lucas De Marchi
>
>>
>>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>---
>> drivers/gpu/drm/i915/intel_device_info.c | 4 ++++
>> 1 file changed, 4 insertions(+)
>>
>>diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i=
915/intel_device_info.c
>>index bb10e8e78a94..ce257446b712 100644
>>--- a/drivers/gpu/drm/i915/intel_device_info.c
>>+++ b/drivers/gpu/drm/i915/intel_device_info.c
>>@@ -414,6 +414,10 @@ void intel_device_info_runtime_init(struct drm_i915_=
private *dev_priv)
>> 	struct intel_runtime_info *runtime =3D RUNTIME_INFO(dev_priv);
>> 	enum pipe pipe;
>>
>>+	BUILD_BUG_ON(BITS_PER_TYPE(runtime->pipe_mask) < I915_MAX_PIPES);
>>+	BUILD_BUG_ON(BITS_PER_TYPE(runtime->cpu_transcoder_mask) < I915_MAX_TRA=
NSCODERS);
>>+	BUILD_BUG_ON(BITS_PER_TYPE(runtime->port_mask) < I915_MAX_PORTS);
>>+
>> 	/* Wa_14011765242: adl-s A0,A1 */
>> 	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A2))
>> 		for_each_pipe(dev_priv, pipe)
>>--=20
>>2.39.3
>>

--=20
Jani Nikula, Intel Open Source Graphics Center
