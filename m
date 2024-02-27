Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6432869D54
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 18:17:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9281510E95D;
	Tue, 27 Feb 2024 17:17:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kGccIORc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D5BC10E95D
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 17:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709054257; x=1740590257;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MbJYthZ31MQUg/PwItD36YtwKKlof47Dub52I38aVEs=;
 b=kGccIORcfyAvc95a5ByUUC51MomNubb6mpcMRYt664CkDTCWOl0+JMfS
 SeHzzuyhyNK3u1dvPqE2p4YhDlNK1HCY1TsBYvHH/T1FdjIFNV62wxMIk
 Ue3ZGAJYVxOqbDYyEfbsCeXcXIusnKgsGWTUAjibRguN+wGbBiiCdztEW
 Ebd/S64OhxxnKJpL6BAtoHjY6NzYMgaM2UHhkP/i7fIc1Q0MqjSjcB7dG
 m36O0wzXqpANXx3i9jI8LV8+ylQj9klHJtLevgLqz7ykVWWx8ddDSh5z4
 POuasPGrNGIOTXuPdz7gUXj1DjxBqdD9kVKzvyK4yZGpAdmhDNAMAOOxI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3570449"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="3570449"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 09:17:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; d="scan'208";a="44624463"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2024 09:17:36 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 09:17:35 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 09:17:35 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 27 Feb 2024 09:17:35 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 27 Feb 2024 09:17:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q6Wi92DndNoaAfrZTwCKpEGLfG0W6Iaf0pyYGxx26Cpc6BtbfduRfIwelBTgpxAWJVXgQQ7BIb/VBfYWckI/HIyhYZTOuebfbWK2B8Fxb920ffIR8sZMU2b3Uczn/AXIdcdxAddTQfs8/eFS2/oDNBFeKwK/9X1J9DTThfy3tQmQu2dh8PoyzOj6FIrRqPSrZGlbt3cgFlZrif9tTVspS9wFSbszlF0Zkn6/Ho75bjmAdj6UAbfuxyKCvIZN0nDrDTqqDMREb943NLvaPEuDkzDXkJEfW/0yk1QtAmZMaHOedAtno4kOS+CKZt0+jFOur17Nsosx9hXsKlopyzGcdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MbJYthZ31MQUg/PwItD36YtwKKlof47Dub52I38aVEs=;
 b=CG6X36mDLpg6TejrkpUrk3PAdQFJg5n32Wgsxp0WsMXwN9IE+MWryfnm1NSO0T0FoG/1k4E3tg1aMLeuOJ22qS+ZK5nHCo0hrLfT2f4op4kMdKgMNUVWr+X72LfBk+39do5XwMCqTx/zRaQYsdAt55ujXROulzEoVWqPn8RJiX7m9tiDI2p4vjfjZmYaXccXlU8UemgcGpmvvtDoivRU/mkmHU6yJRSPwkq8WnAhcpcaR8d2SD5x15s13qj8PP3xRGOa6FG89myYoW6QlUi7fX9p2PDA0w35SsUKhATECOHv2JcLkpxbXriy/uynfdFeHbRhfDg7KxnEUtCTG6j8Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 PH0PR11MB5577.namprd11.prod.outlook.com (2603:10b6:510:eb::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7339.25; Tue, 27 Feb 2024 17:17:26 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::7232:ae38:bcdf:ef14]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::7232:ae38:bcdf:ef14%2]) with mapi id 15.20.7339.024; Tue, 27 Feb 2024
 17:17:25 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Roman Lozko
 <lozko.roma@gmail.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: Linux 6.7 fails to boot on Core Ultra 155H with "i915 GT1 GSC
 proxy" error
Thread-Topic: Linux 6.7 fails to boot on Core Ultra 155H with "i915 GT1 GSC
 proxy" error
Thread-Index: AQHaYyqJ4aq24HLwek2Et/OwOKHKf7EebJwAgAAI1iCAAASDwA==
Date: Tue, 27 Feb 2024 17:17:25 +0000
Message-ID: <DM8PR11MB565571B7BBB8FF1B04DD4ED7E0592@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <CAEhC_BmNE-RQZv35tBO5sO2n8=+BNHCMNRHnZc87EP_nBiq26w@mail.gmail.com>
 <87plwheuyb.fsf@intel.com>
 <DM8PR11MB565544EDFB7827C3D562D981E0592@DM8PR11MB5655.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB565544EDFB7827C3D562D981E0592@DM8PR11MB5655.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|PH0PR11MB5577:EE_
x-ms-office365-filtering-correlation-id: 3144a374-fd18-4255-62a0-08dc37b7f79e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zPj8334O4BugKdnyafY7W/ex1jShF1jNZOXtnr2pexJfsUfj0qmKkbZJEAexxcC/ho4uBqxAEwjhfkepP4489yJovt0fbyKGi/84KrswSXcgiqzT0SC9M9S5py2lTPtIRIoMBbX/4ChXxpISG11ZCRGo1ZO3IRT/tAdT3kbTAGstkBzTbPx4Xy+bnyeDI/wFdvi+zyEYt7BR4Ox3iLI9sc7EZ++2VJX7mw2o1YYZBnOGDqm4QgR2xaWUBEcCEAre9AVAIfXmbBjmCd7RFA6bqYS5aK4MIEaQ/shUAb+j/Yhq6CQ8lvogJqjVGHiIz/SsJj3pGTEK9mKkNGxBfPd7SK3azx602hb87meE3V2m2aC/sxHNoe1TwsaG319yDPTy2UXxEzsrQbRLSVW1axqVIlQiLS25YfZ0yrtFZgO+KteyouXVW5vs9Mb3FRpdOwz6lbWDGEze8cr6m9XIReuwhQu93yQX9BNlRI90wk6Cn2LTbdKEmBCFjlKM11YpzVIDbOq2G9Dcl1c0xOSNUrUElBHbzxMNGjm/c39Rwf12nCVFtFgUXuZyITjXDFOmcv11Ye5cuvW9b7fCJS15UkTSi1eS1O+gU4+TOTjmzgdKeGjULAg9i43nlR5ZK7zNS5u2XJMRwLdUI6hdY5eylByluRM+5cVicZIes8pBVDr43OmGSKrF9eEfEKvTBFkI+iA3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?q1gvD8UAWcjucRhVOr4V3pttfbyJ5+EkZC6V1AyM9PC5sYvor3jtHa8b+nMh?=
 =?us-ascii?Q?otpc/D1wq25ZCidXlG+/mKIF0Q0De6ZXZOEkPIGvUBnjCb7OvEE0j40QeZ1z?=
 =?us-ascii?Q?Mfpl7wv91FQITFhuhyah9enVcsuxO5ymFxzXbZVjx4bN5Cs2lscOyZ7F/SS8?=
 =?us-ascii?Q?Sb7vi/LNDS5i6CK2wRYH6inVBCpzE8Pjbc1Dh4WoNM7QotwnwmtybYvCok6n?=
 =?us-ascii?Q?h5/Hd41cP+caLWGIGyvUgetInHW5ZqJwu9GtQaU9xvHwvhfsDpB4qjr7iP0L?=
 =?us-ascii?Q?Ke6jHFKfCdIuWGVo13pkZXP6Beb2nizrNyrsENfMK4IlchxWjHvIbeIj4F/G?=
 =?us-ascii?Q?NLndcrDosp/nwq0Y2cR6YYm6Nh+Vz4glFgZmdpM1O9FOpsttLtlJdDcL2wit?=
 =?us-ascii?Q?78OV6ezMFFbyJm0rmOFRqbvMCOS5+FlIngyhniXE1yEtDDdDFgP9OUdvzbhc?=
 =?us-ascii?Q?aTHEC7//dYaPCKMNxj06GDXz6yosZM8f7d+7oj9XNY4KhrfmykQ9qnJeP9oO?=
 =?us-ascii?Q?czaFkkr34olGLEJD9uhZqVknbmYJM5Y054Gj7iiJFayNbM5vMjfdoxlVFyJ3?=
 =?us-ascii?Q?HCNtgZuJOJgHd5b56UTavJL3Kjt05SVYIfDWBUDjUYa/Cx5nYD9ZlCQXY38q?=
 =?us-ascii?Q?ow2educEavF5Ob/EAVXe+q0lswsRkLlwfeoNOQnosFPmZ7LTFxkFQOvgFrje?=
 =?us-ascii?Q?ghx66zTvfJn0CWah8BYt8PW9HL+4Xmln8v+hIHSwunFoA6FAyoZzT1z/nHXu?=
 =?us-ascii?Q?eEX1KuJpeaifX5nPVhtI7PzaFSl/rzLBcjVJn9Snc519K6SsBZJsgJRrCvJk?=
 =?us-ascii?Q?KZnfVB4SIk19TleSSZ6Lw3F5sZzY3htS+BDYuhv52/FIbqK74KUsVlaqxlRA?=
 =?us-ascii?Q?G0FBCQ5X52Tj3W80svqCqVwP4HXH1FuY2ppG3iZsSZWsm/T4E9SolCjtU68U?=
 =?us-ascii?Q?YMxhBKgLS568sb5co8wFJpxO25/CLEAZNkGmMQdz4QuVgCGV+ZCblKNf4OdC?=
 =?us-ascii?Q?pf1lXHSRH9dnuDbS6GH6+GUVIvze0KTMol/LKE1t9+YLRqQ8qV/h4futkb3g?=
 =?us-ascii?Q?sksmOADSD1pN//doVxbM8cw3fa0FkT9Oa3yJu5+tEeZAgO4Y8K0nUIp5aSQo?=
 =?us-ascii?Q?Zu49nFNJMH3KDJA6IoIWC5pL4RqaSRt/Y1xlWqCO1xtnUatuq7L+vWDIKdEo?=
 =?us-ascii?Q?n/8kVkigeq4mtGOmm4Z4XQfa+LTwkbPew+orSnK8PSPc+SInnAjz+dZSJSLx?=
 =?us-ascii?Q?qniqLOKIUDGQOAliOaLbTNDfhg01oE5VY+98pG31Pa9pZAsNARbnN3UZMg0A?=
 =?us-ascii?Q?oNKRSnxmP70tS31MZTpY9bNj6c/N797ma457lwa9PkCmlwpkzozZF+lSNshb?=
 =?us-ascii?Q?z8+eZ+5hNP4AkQNNmbxNc53T0CSFOgM0lOabeAxYbjKJdiZMtzFb7jc1x1X9?=
 =?us-ascii?Q?t+j3mQnZfcxU6rGkFXTXMcsXVAKuSzjyv4i2YsJ9EmSmXmHWOgmE3k1aTTu+?=
 =?us-ascii?Q?gFBXuKJFo1N+AkhpO7/5UbkgywQJfniFPLvpQ0TqJncbZCXnmIp5RL/50z3p?=
 =?us-ascii?Q?adZTqVXZ71A39tB+sMopogov0U/KZsBa5Vm1H2pE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3144a374-fd18-4255-62a0-08dc37b7f79e
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2024 17:17:25.2259 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E3WrXwHMwCTTCUgBFXaRtgFkJpAfN3CW2Yvs7oISZPZKrj+9p5nFbXGyZqUFXhj7Tq4XX+JUSHvX5b/o6bqexw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5577
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

Hi,=20

> -----Original Message-----
> From: Saarinen, Jani
> Sent: Tuesday, February 27, 2024 6:58 PM
> To: Jani Nikula <jani.nikula@linux.intel.com>; Roman Lozko
> <lozko.roma@gmail.com>; intel-gfx@lists.freedesktop.org
> Subject: RE: Linux 6.7 fails to boot on Core Ultra 155H with "i915 GT1 GS=
C
> proxy" error
>=20
> Hi,
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Jani Nikula
> > Sent: Tuesday, February 27, 2024 6:25 PM
> > To: Roman Lozko <lozko.roma@gmail.com>;
> > intel-gfx@lists.freedesktop.org
> > Subject: Re: Linux 6.7 fails to boot on Core Ultra 155H with "i915 GT1 =
GSC proxy" error
You seems to have Meteorlake and all MTL systems do work fine. See https://=
intel-gfx-ci.01.org/tree/drm-tip/index.html?hosts=3Dmtlp=20

> > On Wed, 14 Feb 2024, Roman Lozko <lozko.roma@gmail.com> wrote:
> > > Hi,
> > > I've first filled the bug in openSUSE Tumbleweed bugtracker
> > > (https://bugzilla.opensuse.org/show_bug.cgi?id=3D1219899) and then fo=
und Intel GFX CI and that it reliably triggers the same error in Arrow Lake=
 BAT runs.
> > >
> > > Don't know what else to say, so yeah, system does not boot. Is it exp=
ected? I'm trying to install other distributions now to see if there is som=
ething different in their kernels.

Need to comment though you see from CI that our systems does boot so these =
are not reasons for that. And as you have MTL below patches do not help the=
re.=20
Please try latest drm-tip first on this MTL system. This I assume also desc=
ribed on instruction how to file bug.=20

> > Please file a bug as described at [1].
> Same as https://gitlab.freedesktop.org/drm/intel/-/issues/10194 ?
> Does these help https://patchwork.freedesktop.org/series/130020/ ?
> >
> > BR,
> > Jani.
> >
> > [1]
> > https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.htm
> > l
> >
> > --
> > Jani Nikula, Intel
