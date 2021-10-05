Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB3E421BDA
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 03:29:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D17D6F4CA;
	Tue,  5 Oct 2021 01:29:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DE2E6F4CA
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Oct 2021 01:29:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="225526848"
X-IronPort-AV: E=Sophos;i="5.85,347,1624345200"; d="scan'208";a="225526848"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 18:29:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,347,1624345200"; d="scan'208";a="438490238"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga006.jf.intel.com with ESMTP; 04 Oct 2021 18:29:00 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 4 Oct 2021 18:29:00 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 4 Oct 2021 18:28:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 4 Oct 2021 18:28:59 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 4 Oct 2021 18:28:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C36wwMc0X0h5S9Fyw2POaJtFxzOUQ8j2LoZsOKNsNetAKJ2AobRURXirO77/Ra1u9g67uj0y1d6vkkVXbRwJFCLe/4xIYamD4HulfPVV9ga7/HwVzGWyOZR0hUOjFHu9w6Ff8A1S+wF70h5x3F2RQt0C4LTigItw4UwO5XJdDAg1MCVEcUl8hXgmiiCybBvvaSvtNj+Jzp31ay/x0oAos68XSkkeJpc0wrP4MSMKd076CFMGwNrPTxstomdGrS6E53jQd2j2y8cQ2WP4FV9ZGEO7ZtB6H2anESVtAlyOVs9W7GNMFZFNyh+a3Pj6mvgmwwVdUddpoHeWke982ArwpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2apgWyg7v+bllN735J83ufHlzSCFulI/nw/Q+BAAsEM=;
 b=fA7P6afNVwIIlapSFMiYFBquAwRURoZ+khuBGlvHmCV8DxlK4hE0l58im92tExKQssYy5eaDLPu5+AMLzrZwTxvjlLF/tBqJ6B7XhLxHEQdipeBs8qji8v4Olqfy9W33FoSHC6gEFuKOqxa5xfFXmrFyaSAMKeY2DiOwUaAHA38j7VO8d/dUGm/c0vIiTuvy6ib6TJK+6pFn3Fx/9pg0AS/UDiFm8LUWeSx2ZG2+4tT1x0yF0eAxNNohO6qlFvomeb1vsuJF9UrCnIKwaCZZDA4DwX6qQNDdR+OMcH+eD02/FGK4lropXYSzB5yp6q3aeFXiqjJEAYYbN+mWWGOEUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2apgWyg7v+bllN735J83ufHlzSCFulI/nw/Q+BAAsEM=;
 b=Le1pUXWx7AhOKpT9ArHczbbwnf8WifocdY9nMFR3U9yOOEK0TmepI3dHFu6DkkHGTitFqFMzvbf7344MDyYhGDlPsXleAlJdY/RPJ9NoeWmakAOtiRDzCQyZHLblLqB0gqxR6xsSFDF+jJbwZbSSGBLac3vf7TsgVN5z/I/YPMA=
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5667.namprd11.prod.outlook.com (2603:10b6:5:35b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.19; Tue, 5 Oct
 2021 01:28:54 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::cd51:d5db:1c0:d274]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::cd51:d5db:1c0:d274%6]) with mapi id 15.20.4566.022; Tue, 5 Oct 2021
 01:28:54 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@linux.intel.com>, "Kulkarni, Vandita"
 <vandita.kulkarni@intel.com>, "Chiou, Cooper" <cooper.chiou@intel.com>,
 "Tseng, William" <william.tseng@intel.com>,
 =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v4] drm/i915/dsi: do not register gmbus if it was reserved for
 MIPI display
Thread-Index: AQHXsCK5WUj78PDmGEmARfgniyJpsavDrzXw
Date: Tue, 5 Oct 2021 01:28:54 +0000
Message-ID: <CO6PR11MB5651F70187C5EC143745DF03A3AF9@CO6PR11MB5651.namprd11.prod.outlook.com>
References: <20210916102118.17356-1-shawn.c.lee@intel.com>
 <20210923023316.17905-1-shawn.c.lee@intel.com>
In-Reply-To: <20210923023316.17905-1-shawn.c.lee@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 99b542e4-a108-4f02-bf4e-08d9879f7ef7
x-ms-traffictypediagnostic: CO6PR11MB5667:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB5667F06D2620FF8A6858A416A3AF9@CO6PR11MB5667.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MphUD9vkTjwK6SwMH720Da5WoAxnGBlHQG6wicAUZj4pYf5oUqdQJ3pl/j8EctPpzuGLoGdmC+otdFgJ1cY/XB3aOtMJh/d/+VPJKYF5UViTyxKK1zF6Zlna2XXn8LF/9WJznqtJhXbaDLg/m9JLg0xxLVocmZxSMPbKhosPXeMo2sM7aTshXYqGx0BhNqpUcA1LAHxxxN3aB2/1lLc4iI1zUfqODHbBN12QAHTlq7m4QUcilNli9nQunXtKAQsCLNLa3QXmFYuQ4G1K9vT70secAOMmnemL46A68uNREgEVfc+FUzbT4h+ZrfnJeeUxyZCGjYnNAk9ZNNpwASE7wO2ASDNwE+7RvYlxnRnXOIivPu5NY066JJIw6tlFpm8ASMtLs5LzSSP7LcrQuiGGtG4LvBzNMzjAAoWRMytsPKvN7bdY+RWm05yI6DT5NK+4LaMUB2FjUY6GY7twptmnyB0qNS6y9tVjnShUIJoMBjdfvZriPoHVSYwOy+x6oQB5gMGsbmNNeXcmDugWcpIBZXaLLD6ILKyY1N+VbxvZwq8ZL9G8EbOJHlblxLWy2FDpSnsz2W0mqcqyk+F25/nS+jaDU5EI4MNWfS7c6teAf+oW5Hf7M1jZrXAMOxcmj9WJL+L6Pp1DEjfzrm9rpa9yty04XQYhaip713+KNSmAEuvE1SzcP/5DVUFcpvZzrX1VL/aqA8MIFubfZMvWiwNswA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5651.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(508600001)(122000001)(55016002)(71200400001)(38070700005)(55236004)(6506007)(8676002)(66446008)(66556008)(64756008)(9686003)(83380400001)(26005)(66476007)(66946007)(76116006)(186003)(7696005)(8796002)(8936002)(38100700002)(86362001)(52536014)(6916009)(54906003)(5660300002)(4326008)(2906002)(33656002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?8a5vdH0z2XTHgtHPMImpYVGvKPhHoSojvDWuDqcaLI10S8YNHMRDmk5mv3?=
 =?iso-8859-1?Q?jg9G4tCPtdUiqnUJ18B6m9+syzV7o0I0lKdJkQSmzX8JISIui2dC9LEbhd?=
 =?iso-8859-1?Q?x5GmDZdVkgQG4PMZJMx82VB38dCH8yjQX4NEXr4aDpNGF7Fng7XiSB7tbl?=
 =?iso-8859-1?Q?7pI74zM0FqTkD4Ji/Rcn93xaUlbG27fJ2GZHn6JCe8PGngyK9y46Z6QBW1?=
 =?iso-8859-1?Q?4XQlTee++QiP/AgEjNoMjgenmD7FmtNinAc5U9zWPGkyxecG1zFtNfcZhP?=
 =?iso-8859-1?Q?ugPxIELQXhgLoyKDxARsiEHk3oA64jEVUlGPAvFFz9RfItku9CcD9u/rZe?=
 =?iso-8859-1?Q?ARape80tOUg3pJ3Fsf2x/gLRl/rEBwX6ZsvFMml5GWLCSf5oRwZqhMGRrW?=
 =?iso-8859-1?Q?CRtYJlXCopPV5hdCY0UlwBlECOpfgzZSS5h6QL+yGxVU2e3lf4Srt9dQPV?=
 =?iso-8859-1?Q?QT/XKvZvdREBE7s9FPYmyg/ZwFAldFIXTs0UrnHVu8lZxTAgwL4O8Nwlap?=
 =?iso-8859-1?Q?uZ8k0/pEAG4GsxD3s8KW5mkqo8RRk2FhckcC5fSgankaEhes6T/GcUkXkr?=
 =?iso-8859-1?Q?KxKmKofJ4qQvfPbEngL1/aBEO0aaMgRgeak6FAfrQybB0orOzc6+zzHIir?=
 =?iso-8859-1?Q?3JmYNbgTL2VV6p5Ns3tOOeFIuXleP9HeiGtQBnabl/VJswNxU0IEuLVCYM?=
 =?iso-8859-1?Q?XDrrKamW9MeXLJzbb5/63kZDTNtJZH6pWpts2gTXq7PcMg4TgVdybGs/76?=
 =?iso-8859-1?Q?/ajgDXJsSZJW4NB6uko0qSlXux+qUoY+dTAAZYnuQOhQr39co/QEowi43I?=
 =?iso-8859-1?Q?UsECEEfVH0T0aegA9byzs9lClUT6Ng/whqx68xJNd2KzMWjUR7Zk9WuYus?=
 =?iso-8859-1?Q?Osaxr4uI3ifsuuTTH+d05TAFpVT2z0HxzfDUC1IepN8FwDJWLiyP6/CX0A?=
 =?iso-8859-1?Q?XLB0qIt9sMNX7RaM2mipxX+f7eB9vldtH7lAWvAuWDNQaClxEEIKGGESdz?=
 =?iso-8859-1?Q?qEZ2dHUIjOFZY6RGuqtfNEWYZ5iRiCnJIl5Sz4yjii7X7yLJ3Fc84pIXQ/?=
 =?iso-8859-1?Q?aqvKoW4rPRPx4rs+o+fiLiau4ONDEof6VFYN4eosoBGZB7q5s8887jPl6x?=
 =?iso-8859-1?Q?ZmMA5YjFYuKrqgtATyIeBzR53VGJ8ghlyUW3wRkhI1dEa9lzUpkuNz3VLv?=
 =?iso-8859-1?Q?sbt6LGFC8tUrKL6aPvv9L/US+wN4R/Tg2QQiz/49Ej5GiW6fPvGozWe9+8?=
 =?iso-8859-1?Q?pcND2tNMW3ztUiCy/80Nmik76LmglfuhRsmk3aEAjH1MsRO8z/T9lbSU6j?=
 =?iso-8859-1?Q?NDXGrtBFwJlF0ucLAGWWhbl8foejLoPzFSVYfUOklyczbAyUgDwFWLiaLi?=
 =?iso-8859-1?Q?duWHWFdpBp?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99b542e4-a108-4f02-bf4e-08d9879f7ef7
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2021 01:28:54.8166 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HopHVBiO6COeRweWrKZLzvWXAhJ3rFyYvOakc2X7jndrQd0aiAaJC3ntrBxZOZH7nkngFYyqmtqX5jd37nIcKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5667
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v4] drm/i915/dsi: do not register gmbus if it was
 reserved for MIPI display
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
Reply-To: "20210923023316.17905-1-shawn.c.lee@intel.com"
 <20210923023316.17905-1-shawn.c.lee@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi all, could you please share your comments for the latest patch? Thanks!

Best regards,
Shawn

>
>Gmbus driver would setup all Intel i2c GMBuses. But DDC bus may configured=
 as gpio and reserved for MIPI driver to control panel power on/off sequenc=
e.
>
>Using i2c tool to communicate to peripherals via i2c interface reversed fo=
r gmbus(DDC). There will be some high/low pulse appear on DDC SCL and SDA (=
might be host sent out i2c slave address). MIPI panel would be impacted due=
 to unexpected signal then caused abnormal display or shut down issue.
>
>v2: gmbus driver should not add i2c adapter for DDC interface
>    if LFP display was configured to support MIPI panel.
>v3: fix sparse warning
>v4: before gmbus driver add/delete/access i2c adapter would
>    call intel_gmbus_is_valid_pin() to know target adapter
>    is available or not. Avoid to access unexisting adapter.
>    Driver should check DSI status and pin's availability in
>    intel_gmbus_is_valid_pin().
>
>Cc: Jani Nikula <jani.nikula@linux.intel.com>
>Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>Cc: Cooper Chiou <cooper.chiou@intel.com>
>Cc: William Tseng <william.tseng@intel.com>
>Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_gmbus.c | 18 ++++++++++++++++++
> 1 file changed, 18 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/=
i915/display/intel_gmbus.c
>index ceb1bf8a8c3c..852e499e2e8c 100644
>--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
>+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
>@@ -118,11 +118,29 @@ static const struct gmbus_pin *get_gmbus_pin(struct =
drm_i915_private *dev_priv,
> 		return &gmbus_pins[pin];
> }
>=20
>+static bool intel_gmbus_ddc_reserve_for_mipi_dsi(struct drm_i915_private =
*dev_priv,
>+					     unsigned int pin)
>+{
>+	if (intel_bios_is_dsi_present(dev_priv, NULL)) {
>+		if (DISPLAY_VER(dev_priv) >=3D 11) {
>+			if ((pin =3D=3D GMBUS_PIN_2_BXT && dev_priv->vbt.dsi.config->dual_link=
) ||
>+			     pin =3D=3D GMBUS_PIN_1_BXT) {
>+				return true;
>+			}
>+		}
>+	}
>+
>+	return false;
>+}
>+
> bool intel_gmbus_is_valid_pin(struct drm_i915_private *dev_priv,
> 			      unsigned int pin)
> {
> 	unsigned int size;
>=20
>+	if (intel_gmbus_ddc_reserve_for_mipi_dsi(dev_priv, pin))
>+		return false;
>+
> 	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_DG1)
> 		size =3D ARRAY_SIZE(gmbus_pins_dg1);
> 	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
>--
>2.17.1
>
