Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7763F5619D4
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 14:06:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5452A11A223;
	Thu, 30 Jun 2022 12:06:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15D6811A224
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 12:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656590766; x=1688126766;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Or8MojZ6iktgFeB7tcpupIWT+ecn3yVqdmqbqij8inc=;
 b=BBTsTH3+PzQjAcAOr7jXGT7KDkSg1EFnJE8MvO38aU8vC9eIVitGuUCH
 GkQiGFN7CSHjnpZ8cdvTZjp/ZDwO+XH3+5rFVe6pfLEPmfjWmgNM5sR6p
 2+U1oyaUJDyl9SZhk/jEH/Hm9CwI+K5D/lPmur9Ubc2PseI4tkoEb6UFs
 MeNA735HrUSXZQLbK49bvAq0zyi4XBdiHxECVUPTKnA6tqxhCkaJLx+zL
 jLe+W+D5aL6VJuNoJ31IYeqo3Wb3Z/kwTNj9+udpwFNrOVUYnnvrILTg0
 DIKKXQz6sQpb8RLpc9fkG1NQqkXEEgxnlarFpRBYSWGdssFoLU+j+fhae Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="282362538"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="282362538"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 05:06:05 -0700
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="647864854"
Received: from fdugast-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.39.70])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 05:06:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YrTEUxR3lEiBBYhY@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220621123732.1118437-1-jani.nikula@intel.com>
 <YrQxgbOEmVNnyPf8@intel.com> <87y1xnmhu1.fsf@intel.com>
 <YrTEUxR3lEiBBYhY@intel.com>
Date: Thu, 30 Jun 2022 15:06:02 +0300
Message-ID: <8735fmpd91.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: debug log ddi port info
 after parsing
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

On Thu, 23 Jun 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Jun 23, 2022 at 08:04:54PM +0300, Jani Nikula wrote:
>> On Thu, 23 Jun 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.=
com> wrote:
>> > On Tue, Jun 21, 2022 at 03:37:32PM +0300, Jani Nikula wrote:
>> >> The ddc pin and aux channel sanitization may disable DVI/HDMI and DP,
>> >> respectively, of ports parsed earlier, in "last one wins" fashion. Wi=
th
>> >> parsing and printing interleaved, we'll end up logging support first =
and
>> >> disabling later anyway.
>> >>=20
>> >> Now that we've split ddi port info parsing and printing, take it furt=
her
>> >> by doing the printing in a separate loop, fixing the logging.
>> >>=20
>> >> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >
>> > Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>=20
>> Just realized this also changes the printing order from VBT child device
>> order to port number order. Is that a bug or a feature?
>
> I suppose it doesn't really matter. The only things where the order
> really matters are conflicts and we should still get some extra debug
> spew for those right?

Correct.

Pushed to din, thanks for the review.

BR,
Jani.



>
>>=20
>> BR,
>> Jani.
>>=20
>> >
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_bios.c | 8 ++++++--
>> >>  1 file changed, 6 insertions(+), 2 deletions(-)
>> >>=20
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/=
drm/i915/display/intel_bios.c
>> >> index ab23324c0402..51dde5bfd956 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> >> @@ -2670,8 +2670,6 @@ static void parse_ddi_port(struct intel_bios_en=
coder_data *devdata)
>> >>=20=20
>> >>  	sanitize_device_type(devdata, port);
>> >>=20=20
>> >> -	print_ddi_port(devdata, port);
>> >> -
>> >>  	if (intel_bios_encoder_supports_dvi(devdata))
>> >>  		sanitize_ddc_pin(devdata, port);
>> >>=20=20
>> >> @@ -2689,12 +2687,18 @@ static bool has_ddi_port_info(struct drm_i915=
_private *i915)
>> >>  static void parse_ddi_ports(struct drm_i915_private *i915)
>> >>  {
>> >>  	struct intel_bios_encoder_data *devdata;
>> >> +	enum port port;
>> >>=20=20
>> >>  	if (!has_ddi_port_info(i915))
>> >>  		return;
>> >>=20=20
>> >>  	list_for_each_entry(devdata, &i915->vbt.display_devices, node)
>> >>  		parse_ddi_port(devdata);
>> >> +
>> >> +	for_each_port(port) {
>> >> +		if (i915->vbt.ports[port])
>> >> +			print_ddi_port(i915->vbt.ports[port], port);
>> >> +	}
>> >>  }
>> >>=20=20
>> >>  static void
>> >> --=20
>> >> 2.30.2
>>=20
>> --=20
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
