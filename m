Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE4A624035
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 11:44:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3941C10E6C7;
	Thu, 10 Nov 2022 10:44:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3E2610E6C7
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 10:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668077084; x=1699613084;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=w2hj5+2gNqwwBYF1TuDJD2NS10qlFrrYA+z6zntOvpU=;
 b=l++ZSR7EJGOUxzBjQf5hIbdQD7qQ1UZlIjQwvX3fjzufDfq6oNgwPWnZ
 HYZgueGCMOlWvPkK9GXjLzcnenuAFfJQD/p8eUkIGhXOO3uC6GePBxBV4
 cLsWxpkQC6TfPg3NX2weRqqNo+48fEXGeNbgyrijviIODW2XG07iBgGXM
 PYu2DsNPapV8ZV7HMo8uXwAh059kxPe3qAlwubuzliUd/u/jLuBrXmEj5
 ni59A6RK143JON9EwzZHs1D6lJ9y/z9phm9iDV+7iYEwuvWL36wctyL3B
 Dt2//PstXMNYSVIViau2c0Qqk4d+X4WudCCJAGiM3mscol6TC9WP4nkGG A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="309992705"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="309992705"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 02:44:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="631613113"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="631613113"
Received: from psikora-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.17.110])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 02:44:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Imre Deak
 <imre.deak@intel.com>
In-Reply-To: <Y2zQpjgTsBHW/hNs@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221107170917.3566758-8-imre.deak@intel.com>
 <20221108151828.3761358-4-imre.deak@intel.com>
 <Y2zQpjgTsBHW/hNs@intel.com>
Date: Thu, 10 Nov 2022 12:44:39 +0200
Message-ID: <87tu375bs8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 7/9] drm/i915: Factor out function to
 get/put AUX_IO power for main link
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

On Thu, 10 Nov 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Nov 08, 2022 at 05:18:26PM +0200, Imre Deak wrote:
>> +static void
>> +main_link_aux_power_domain_put(struct intel_digital_port *dig_port,
>> +			       const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>> +	intel_wakeref_t wf =3D fetch_and_zero(&dig_port->aux_wakeref);
>
> Please don't call functions with side effects in variable
> declaration blocks. Far too easy to miss them and then you end up
> scratching your head for a day or two debugging the wrong thing.

Side note, if I got to decide, I'd probably nuke "fetch_and_zero" out of
existence.

It's not that I don't find the concept useful, it's the naming that
gives the impression of atomicity that the macro utterly lacks. I find
that dangerous.

It's a helper that feels like should be part of a core kernel header
(and you might mistakenly think it already is!) but I doubt would ever
pass muster because of the above.


BR,
Jani.

--=20
Jani Nikula, Intel Open Source Graphics Center
