Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7A96E1F4C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 11:31:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1D2110E0D5;
	Fri, 14 Apr 2023 09:31:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8D9310E0D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 09:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681464680; x=1713000680;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=J1SFyrNRTAWmxz4WGZ0S15KYy+P9O8F2uNhTXzy7t50=;
 b=XYr05iXqxT6gk6tCfOhYB/aQTC1f9X6aj4tgc8T5hpkr1Q/hUML2sDev
 yYjyrwMc+L6nmLOwZ/l4flHV7u4HnMu0KB0ZAXUTxa1nq95n1DglDWIsc
 kDFOyJTEm0zMqcyqZldoLib/gAV4axWJAV3N+cLUT3WaGCeJS+O6lJ1su
 jtd1nML+9oXcKQqlxbvlVOMNzwbZDx6CY9b40kwssOv9LQl9x1Z3L/BjW
 +4mD5pilpPHCOYrn+dvzU0BJu9QyDi/eSCMJyghV9plazWXlFaj7YJ/nE
 aZsVielS5vlMI6uvmIVv1XtD198KeamgQ/kUlHmbR4MQtCeIGN55bpOuy g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="343184564"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="343184564"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:31:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="640056937"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="640056937"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.117])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:31:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230413200602.6037-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230413200602.6037-1-ville.syrjala@linux.intel.com>
 <20230413200602.6037-2-ville.syrjala@linux.intel.com>
Date: Fri, 14 Apr 2023 12:31:11 +0300
Message-ID: <87r0smg68w.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Make
 intel_get_crtc_new_encoder() less oopsy
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

On Thu, 13 Apr 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The point of the WARN was to print something, not oops
> straight up. Currently that is precisely what happens
> if we can't find the connector for the crtc in the atomic
> state. Get the dev pointer from the atomic state instead
> of the potentially NULL encoder to avoid that.

Fixes: ?

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 0334565cec82..5208b07505b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -959,7 +959,7 @@ intel_get_crtc_new_encoder(const struct intel_atomic_=
state *state,
>  		num_encoders++;
>  	}
>=20=20
> -	drm_WARN(encoder->base.dev, num_encoders !=3D 1,
> +	drm_WARN(state->base.dev, num_encoders !=3D 1,
>  		 "%d encoders for pipe %c\n",
>  		 num_encoders, pipe_name(master_crtc->pipe));

--=20
Jani Nikula, Intel Open Source Graphics Center
