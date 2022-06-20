Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DFB5510C8
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 08:57:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEE6710E5FB;
	Mon, 20 Jun 2022 06:57:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D149610E5FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 06:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655708231; x=1687244231;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9jg3HTbBQ2lfRks+BQWShRiiUmDUPpR570ex5WUmhuA=;
 b=NzQAxaGOGuXNSzEEHZgcULOzKqLAQZUDsr/ts2IcpAmQ9cqmOPZQu72j
 GnpYIhvRQ5nevje50sW9FPTSI9oIQqvv8jq/fxiWLDEWEWcg3/kIoFE4h
 DjsWZiRr9eladVC8jBrY1uYJpY3yE1IQR+J6Ce9qf6xYyKmQ7icYJF7Pz
 7o5r84Fy4pg+zma+mEo8zglspyQO5rzzzZI2YlOqMgrzC1mjKN/Rvd0y6
 YMrR9KIDPYInv6oi+yVOeDCtTxjtb4ywTlRrowlcFdxKzRNUObCXWmZKO
 Gm6TTuK4LLTKTdsynQvYVXXyi0kSL+CqUEzRuEdVujmuUNaQYsJoYttMn Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="305255053"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="305255053"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2022 23:57:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="676402043"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Jun 2022 23:57:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 19 Jun 2022 23:57:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 19 Jun 2022 23:57:10 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Sun, 19 Jun 2022 23:57:10 -0700
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/bios: calculate panel type as per child
 device index in VBT
Thread-Index: AQHYgjULuPF3LdIOw0asVhltmj9Wzq1T/XUAgAPjcUA=
Date: Mon, 20 Jun 2022 06:57:10 +0000
Message-ID: <d1dbebf8d3104e5e9e0a88f29270bed5@intel.com>
References: <20220617102649.1581-1-animesh.manna@intel.com>
 <874k0jv5bp.fsf@intel.com>
In-Reply-To: <874k0jv5bp.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/bios: calculate panel type as
 per child device index in VBT
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

> > @@ -5224,7 +5225,8 @@ static bool intel_edp_init_connector(struct intel=
_dp
> *intel_dp,
> >  	}
> >  	intel_connector->edid =3D edid;
> >
> > -	intel_bios_init_panel(dev_priv, &intel_connector->panel,
> > +	devdata =3D dev_priv->vbt.ports[intel_connector->encoder->port];
>=20
> Sorry, i915->vbt.ports[] is supposed to be private to intel_bios.c. I tri=
ed to
> explain that we already look up devdata for some of the encoders. See
> intel_ddi_init() which is relevant for new platforms.
>=20
> We've got
>=20
> 	devdata =3D intel_bios_encoder_data_lookup(dev_priv, port);
>=20
> and
>=20
> 	encoder->devdata =3D devdata;
>=20
> So you just need to get at the encoder here (via intel_dp), and pass
> encoder->devdata.
>=20
> With that fixed, this LGTM.

Thanks Jani for review, updated the same in v4

Regards,
Animesh

