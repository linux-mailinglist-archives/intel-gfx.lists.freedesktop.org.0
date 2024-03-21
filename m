Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6725288553D
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 09:02:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91A2810E1C6;
	Thu, 21 Mar 2024 08:02:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i/CI04DR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94A4510E10E;
 Thu, 21 Mar 2024 08:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711008146; x=1742544146;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EGLqDIo9IRqMO7Ce0KDNmBge/gQIHCjJ6pKpHI09TWs=;
 b=i/CI04DRzf19/5C0B4wd+kKRatUoOeblRXTYvrV82UfqMr0PCjwnccqh
 ZBWxbsFYS4dLcxSL+Z8ZQ0K6KZnE860IeNuBnHn/ZBiQiNhL/NnbQYsdA
 3uhco1jz+QaAPKF7oU9jtdYsw6QNo/SFZuysFn7zCem9LbodxpC5Wwgve
 FMCRbeN+oV5g3A5/z5p/zKJqkE18Rh7OIVaFtEoaIEmxcwKKjrlNfjljp
 g7GEpZVTzFofe09XZhQ1S5X4Ac64lZiOkHWw8VVxwYkcmEhx0od+cTlU/
 itTtosB6gsEeHd3a66zZ3sTLT8sn3jBV7co42X0nivKcfzEuQX6PGsLZF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="5846321"
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; 
   d="scan'208";a="5846321"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 01:02:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; d="scan'208";a="19141429"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Mar 2024 01:02:26 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Mar 2024 01:02:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Mar 2024 01:02:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Mar 2024 01:02:25 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Mar 2024 01:02:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bH434kpgc6jksiCXmduGdRZZT31OCSNXp/JLMaEarSUYG3I2Wa1eRSrKMb1Y+OMS+oNW+Ml87NrpLOW59SzA4uJjiU1+7nwkHg9TQv665YXgjX5mp4sTSvR5X8VqEaiBkkb5fn8/tU2pGI+x0Bqo1DnKhWTKtMlMxj62C+qVHPf3wQAbw34olCL0tL0jClie67pkA4l5PU4HAN5tUszu8DJ91GXQoOrtbRfW58nnfwebDTAiuMsqf+aJ3z0oKLpt5MSDYUt8LSfL+lkXlfAiRNqQzP0f25oqSvqwBZiz1a21oS88qANh1wmwgi6YIQyzitr0e0WrIGhlWohQoIdSuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5YlrjHnXVSmfOZw6/EkH6CVgWwfQoDwEsprkzmVOPlo=;
 b=Is2bjIYS9E8Om1hCgwvS12kEgpeqnrL21oiu2CSweMtmyX9wYSE0Si9tyYWQIyEo3N/iX4kWiGjSMIFcSClprlPwoxzExNnCnUtWjVS9W88cQDOVtNG4qUAYy/WPzPYEXs3fFDI80Vnu1QAWc7LDpTm4QbgkuiwBwmG9TZlbR9AgFfE2/uEuntFGcq6zbwxrHEHLY+xGysb9hzXZhIgqMs3ecSu0Siyh12NlZc2C0hJhzNj/lDhaNvh4fr6KYhQCdmL3fOpjX1Zsdx05CsIYr53IlJD4BTN80qJhsd9IMHRqPRx48N6yFxgwmbXrK9zpj/u6NdxXMiHDNIX6lBRl8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS7PR11MB7690.namprd11.prod.outlook.com (2603:10b6:8:e6::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.12; Thu, 21 Mar 2024 08:02:22 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7409.022; Thu, 21 Mar 2024
 08:02:20 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v3 2/4] drm/i915/display: don't allow DMC wakelock on
 older hardware
Thread-Topic: [PATCH v3 2/4] drm/i915/display: don't allow DMC wakelock on
 older hardware
Thread-Index: AQHaeTma7NleL7ZcwUuFLloRnVnJl7FB19tQ
Date: Thu, 21 Mar 2024 08:02:20 +0000
Message-ID: <DM4PR11MB6360EA16928F7A0DC285E81EF4322@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240318133757.1479189-1-luciano.coelho@intel.com>
 <20240318133757.1479189-3-luciano.coelho@intel.com>
In-Reply-To: <20240318133757.1479189-3-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS7PR11MB7690:EE_
x-ms-office365-filtering-correlation-id: ebbb8680-a71d-47e0-db46-08dc497d3c17
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EPR8X5No2JQLcDtm89EJ/ALzu8ofWcaSAu+J9ZS5Ztzy7oHkzghO8/Ttq3znOgQ1mqdkT42JK7vufYcZAY02fjGvJFdbMOXLgfmCgpRO0pD0ooohY491QXlz242DLkjKht571R6Er5tmzQ7GZem61geX2Dw1DHYAy+oIXmh3bX9CcodAaLmMiUTDE4IcVL8Xm0iD880eZYUTjurdeb+mX12zVxe94s9tjt1NouG8pBP/vlfpDpdDmAf9upY+Wt5STWplGglmUNx2SZa+vZOw5kWozH1RmvdB8CTtwY4O+H6/qVVteG1V+oRaaib43RkSbhxuT2i/GWAPNC0JGG2AbmC2hBbgVkD4MQZZZSKr3XR5+IebpT5hpzBa5buaWZDcqQUjAGumsvNkbh5sqoMp98sKu0wSXGp8t6Tboti71AtGRHLmwviuZGsB1WKLHigbEeb65YiZHT8Gp3ev0hlajZOnxK6115QnU/v+uDjK54hM6rZGkpF374u2NhPrIA6CXrtfLPuzA+oMaJviVGet2tF6ndzEawq9ssbBqcu+a9Hw0g5kwj8bUTHFZzICICrSBfp3PjRrF5ftrc2V6AKU0lE/LCNRfCapSKnlQQ7EQO9c1vpOdoiPZC/1K15Qy28TdNVFbyZLdREPNhDRb+AN663K7tsUmuuMIky5wB5xsiKv+j0872aAFQLSKoHoJWMItvyF4DxxGyhBh1aQ9atBUFzcQyPV9DAS7jzYGm7RfVA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QF+HqzbcLBl96ZYxOD0RLDjKLieRu99mSVe71HAHSUjrxF8Xn2k/fjrdyyjF?=
 =?us-ascii?Q?JkGWXRDDvUrCYEa4XrFBk6hxD6WQHSAAxMh3jo0WSDpjpeq+aKxC6B9dSa+P?=
 =?us-ascii?Q?Fe7ziKP8tLqh4CXLzCUPaDeHXTsNU5vQVS9Q0I/TQwBljC1+rY84jUZ/F9Eu?=
 =?us-ascii?Q?T87v9oeoqBfbNVuHrAkxDbIf1YZd++40Q3myvhb6bo8aV++Vak5IM8m3iaDB?=
 =?us-ascii?Q?79JBVw2q2XPQZhhjw3VHRc5ZSToWGiQ1HE1IREGt4fvW+cdbvYxwvKV6X/tv?=
 =?us-ascii?Q?on0L1Kzx//X6A1ODdSZ+N6nVoCVNjlWfvY34Ju4V0zvgq1G46SI5jiJ0rOE1?=
 =?us-ascii?Q?Lc7FCL7AT377giOI2VVr2zPYwGruKaSzLeuu3iwcMqOB8b6JP4/cN39V2RzT?=
 =?us-ascii?Q?Atonhxx/Swe0+pgmgaJfEQXEUsVegSo0401NmG4QhZj8zj4m0T3+zyvAdn1h?=
 =?us-ascii?Q?hlJNviOxRUvJ3zrLRstCjTExjm208U4IoEoQ/Fup17YGqyVq3evSyovaHFP9?=
 =?us-ascii?Q?c7Uf0y3q2wern5xteaIsnMRvHNzBXbD/wwCo6a2ZFlhsfB35J6c85UgkYPi5?=
 =?us-ascii?Q?pkvHLKIB1H2qD6Ql17K7tdzIoTeHE4K6QIaou9QwdZOF6lXvkfSR+kM8D5yK?=
 =?us-ascii?Q?mOU2jnvT3HKyBPweoJ0qCnw2JWTNP6rw5HVIXj35+nGlq3ds+rmDYIDfO1g3?=
 =?us-ascii?Q?L1qOENlbPK+dpk4QSQaOL6pQIJodeDGZA5VuHtS9avRzYI6rtEv6NJd2i5Qn?=
 =?us-ascii?Q?AjD2Ug9xnsA0R9RkNet0rqDWmYpo1bKomXnXyK7sJ2heY6EEFOT0sXO59mRK?=
 =?us-ascii?Q?MPvIVeZUW4hAKb3/0HkqxS2aJpo4NlitVwCp+NqweEK6KkAGeYUKd4C7hcRq?=
 =?us-ascii?Q?wDP2iZ49A0koO2zwPDqWCMHQze8FYdycC1SzomBZgw4Hi9lt/xYlebo/nsf3?=
 =?us-ascii?Q?u92SFhUTOl8WiKo6lRzNUGwPNU3ajnAGQNWoWOV1ra93LZOcc4+Rki+0PWPt?=
 =?us-ascii?Q?SIyXJhEHx1vtm/OlHhnWLuopycQRy49OBN1E2feiegt3EhSC4RqeLlgQqb+q?=
 =?us-ascii?Q?WbqPMLA1bj4iUE6/IayxmYJ6j/CqIM5vicHlg9EzPEsTRfXp1UgOjMXdM4ZL?=
 =?us-ascii?Q?541qJeIHwHBDBSAWdlO1AQ18+ipHbcCfgsmRyxiwx0X7nxQGIXlUtaDG6M2q?=
 =?us-ascii?Q?VxEKCJQa1nBH3pUXrZiQ+jxwiNzHwe02v9v6p3h3aFzrZdq80qCzlDk/Fffd?=
 =?us-ascii?Q?x1/jIseEa8m43vWwsAaV8epKqYi7j3+oSbYKHHBmaf3fAhc+gbqs3OmL4byH?=
 =?us-ascii?Q?gcrNL8DHNTYJj1/kk4qOuHlKUuKItni2R6AW5kPD3xuCDvsHotVZDKbBxSlz?=
 =?us-ascii?Q?MqwOeUawmky9lp3JoCWtXrbE7iylN/VDfY+kWxPr5EME1O7SoS4oM8bO9DRo?=
 =?us-ascii?Q?aSB85GPViBv6YS8SRsPek5WnKvRWFhxiXyJY1MPDvetx4t3IE2T4EtvOJB2V?=
 =?us-ascii?Q?/3dtfRHD89y04S36c0ya7ErKcbjRP2UUqozUgnN12tD+XS4phzogy4ryxgdy?=
 =?us-ascii?Q?cA9rnjB4KQ3sSQGv32UdllU4gYURJcljGGEZbEyf?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebbb8680-a71d-47e0-db46-08dc497d3c17
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2024 08:02:20.7287 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oPcbSTKtmxxaSxkQXm3opbauW9wkHEcXvaOOAy0YekVD+BsmQpkH6fHIvuaIN0Gz+V+M7ZySBI7kItBvLzpfhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7690
X-OriginatorOrg: intel.com
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



> -----Original Message-----
> From: Coelho, Luciano <luciano.coelho@intel.com>
> Sent: Monday, March 18, 2024 7:08 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> ville.syrjala@linux.intel.com; Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v3 2/4] drm/i915/display: don't allow DMC wakelock on old=
er
> hardware
>=20
> Only allow running DMC wakelock code if the display version is 20 or grea=
ter.

One for previous one, don't do intel_dmc_wl_init unconditionally but protec=
t it with
Platform check.

> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index 5c3d8204ae7e..7c991e22c616 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -120,6 +120,9 @@ void intel_dmc_wl_enable(struct drm_i915_private
> *i915)
>  	struct intel_dmc_wl *wl =3D &i915->display.wl;
>  	unsigned long flags;
>=20
> +	if (DISPLAY_VER(i915) < 20)
> +		return;
> +
>  	spin_lock_irqsave(&wl->lock, flags);
>=20
>  	if (wl->enabled)
> @@ -143,6 +146,9 @@ void intel_dmc_wl_disable(struct drm_i915_private
> *i915)
>  	struct intel_dmc_wl *wl =3D &i915->display.wl;
>  	unsigned long flags;
>=20
> +	if (DISPLAY_VER(i915) < 20)
> +		return;

There can be case where DMC is not loaded, address that as well.
We should not do wakelock in that case.

>  	flush_delayed_work(&wl->work);
>=20
>  	spin_lock_irqsave(&wl->lock, flags);
> @@ -171,6 +177,9 @@ void intel_dmc_wl_get(struct drm_i915_private *i915,
> i915_reg_t reg)
>  	struct intel_dmc_wl *wl =3D &i915->display.wl;
>  	unsigned long flags;
>=20
> +	if (DISPLAY_VER(i915) < 20)
> +		return;
> +
>  	if (!intel_dmc_wl_check_range(reg.reg))
>  		return;
>=20
> @@ -203,6 +212,9 @@ void intel_dmc_wl_put(struct drm_i915_private *i915,
> i915_reg_t reg)
>  	struct intel_dmc_wl *wl =3D &i915->display.wl;
>  	unsigned long flags;
>=20
> +	if (DISPLAY_VER(i915) < 20)
> +		return;
> +
>  	if (!intel_dmc_wl_check_range(reg.reg))
>  		return;
>=20
> --
> 2.39.2

