Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFC19E5AA9
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 17:04:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F38610EEEF;
	Thu,  5 Dec 2024 16:04:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e1hxhSlO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD01110EEEF
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 16:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733414688; x=1764950688;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OZ0vOTTCPbIiRIz8Woa7qLDJQ1vPdes2L7ulKvluQVA=;
 b=e1hxhSlOGzdwo8rlDpLzppmpKoPJjzmfPyMnp5/5KIqLbKMSHksHp66N
 qtOiCMBRSS4hxvviqZ8+OvD/4m+ZAi2loe00Za65gVtTRWHtbcGQ83maH
 Ld+iMWKJExDmR2Ba7LWiP6VkfgSil+nI9lSOKAg1V50mnr4LIbWlwOyVp
 xhhCFt2Aupv8PR6PcLZrw7rAvazwe6/lPrHNicFBG06NB1Qimf8tentRf
 OOxTdJHuqWGGNOk3y4Eb5XpKOLHDfddjr+aTPcOVo1QACLxinVmAcd+Tr
 F0enow2MUrD6UTMDrOeoctFl0kCretqMz4vcYLWXZDHpOLsw0O1luW63M w==;
X-CSE-ConnectionGUID: V8x0ZX8MRVqKpzqxFfQohg==
X-CSE-MsgGUID: lRT65lBPQKmkRFnzRJTjBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11277"; a="33979158"
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="33979158"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 08:03:51 -0800
X-CSE-ConnectionGUID: Yk+ILVWfQRCy1nI2hpBrIg==
X-CSE-MsgGUID: 0yTkYNn8TDiEH2L6bleV+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="93960038"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Dec 2024 08:03:50 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Dec 2024 08:03:50 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Dec 2024 08:03:50 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Dec 2024 08:03:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C0Gtjgg96D5C2gBSaL+qbEUQplut7nCAn1SXUL45Cetr1ajMEQtuQfbxXxw+gB/mHdy17ZJnuCRScY3mXcnw0+tg25MqFLuPV2p/Fr0Qn3xixsaIMpwdXDehNddhMrliUXHqlZo2uZ8Y/UTJ8Ctb060LbPFRo19h18uLtcOFBf6Qd1shyFqHG4Te3XYtYwSUeb6/3I4TCHY0klYdOY7F/MgCboYvLp4v1bVMeNSKtesaxfIzwE1bsvIdwKnMeST+DzevODkiGvv3OhpOLnp51o9rS5EQjA+iqOBgVVrd7n/XX63/QS+ueHH3P5/BX0T1eWytHbDfAnVIwmRaGOpxCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g9s3gx6Qb4P2hTLyRSPtO3Xz7HW8x+bjnLBKLknET9s=;
 b=kf7sGLI9BiqEIcz9TUAY7p+17wlzWnxsTHvA0tYdnGT2uY8qM6IdjF0fnqP5CujuD10rE0wduBlW5RAhAlcxLnRXms5j8f/xNXaWd1HzajkXsxFDKzfXzabWGObom3AsLCsLYP70/0W75bWJyrtYGTlpnOYL/Vv4Nu6tQ4xkKCkVoED1JTvpfK2HEj7LWCfyouLq8kHBYC22becw74xBiwdMba6UwvrWxO3bLOCxgWrXKMjekwzQJ1+o6UIV36rL6bqspLGtnt2TXHZr9vy8RwRn5NYUUzf4bHy3dQQmjlB1XpOUNG9sx0J/IiuJIPvELVAjUGymLCVraEc4T05Njw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com (2603:10b6:a03:42a::13)
 by DS7PR11MB6151.namprd11.prod.outlook.com (2603:10b6:8:9c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.19; Thu, 5 Dec
 2024 16:03:39 +0000
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0]) by SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0%5]) with mapi id 15.20.8207.017; Thu, 5 Dec 2024
 16:03:38 +0000
From: "Gote, Nitin R" <nitin.r.gote@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Wilson, Chris P" <chris.p.wilson@intel.com>
Subject: RE: [PATCH v1 1/1] drm/i915/gt: Increase a time to retry RING_HEAD
 reset
Thread-Topic: [PATCH v1 1/1] drm/i915/gt: Increase a time to retry RING_HEAD
 reset
Thread-Index: AQHbRwoKl6nKSVqrm02G7+IJTgccmbLXnpyAgAAoAhA=
Date: Thu, 5 Dec 2024 16:03:38 +0000
Message-ID: <SJ0PR11MB5867E64C895E2C48B701CBF7D0302@SJ0PR11MB5867.namprd11.prod.outlook.com>
References: <20241205115736.1420991-1-nitin.r.gote@intel.com>
 <Z1GlE9-Z_3SVnTRq@ashyti-mobl2.lan>
In-Reply-To: <Z1GlE9-Z_3SVnTRq@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5867:EE_|DS7PR11MB6151:EE_
x-ms-office365-filtering-correlation-id: 86c86f2e-1d7b-4917-2423-08dd154661c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?5ID25iB6//axaAFYC6ySwzbm7Yt/hI8jEHdPnGrSnYsNEJQplN6xG4cIDS?=
 =?iso-8859-1?Q?IVNsSw27HZpaOXsj4KDluQ5D+2Dxqvd4POWUx2d4RAG7KgKjGMoJAYL2ez?=
 =?iso-8859-1?Q?2gta6eKo6HF7dpUs2rfblVCNs9JnIpUrNVcqsGyxIFQSgSnWb2H3YnggnM?=
 =?iso-8859-1?Q?P0eTYEhPfXsFg3NVPm9lqUM0+7unaNtB4ifJIdx4HSt9O7UGGv4lEYr/Wa?=
 =?iso-8859-1?Q?MTUWbfZcUfWi3RJ5DN66V8I/BJzFU9Ds69hl6FEFFIlrQtCByB2gwRD7uG?=
 =?iso-8859-1?Q?FWOQlSkLbnjBTLNommB6r0UbpQB9RsLWrVdSQsVwKKj3DKckLqnDyvwXPN?=
 =?iso-8859-1?Q?p2WTuTIknOIWMOaMbNpFeMa+DlpjSn5+eEaoRvS4edBW4uFNSe/KuTMVIq?=
 =?iso-8859-1?Q?QSZvy85pl/KMcFHuSYJ82S04I4ufImG09rYqz1Wy4zwwEzbU2tykO6/5e3?=
 =?iso-8859-1?Q?CvnRb2bgdpGa+POcJsMIXqaO12a+nL/dMutBAtX8nzyxwSIvQK64WVfZfl?=
 =?iso-8859-1?Q?bYs+IzSm0pJ1+2AVNMz6usbGjiritq4/xATqugeZX3DS9MwMKmw6YANMgf?=
 =?iso-8859-1?Q?vkaCW7vwAZ8ah77x+ZbIVCdqSmWIODTlk2oUWIhfUfMwoPLZp1r+ZSQkIT?=
 =?iso-8859-1?Q?ou/TGHkFymPhzuQ9vVK+sQy5nfuye+5iHUzX2FuBlLd1smsMW0Pfplw76I?=
 =?iso-8859-1?Q?l7qxNCq7o19sxAszbz06eHMFYFCUxEcdC1ieHp+xwsbTykwzcodDrF6wpP?=
 =?iso-8859-1?Q?ClHwH9jeqKAZuAkS/Q3XSOK5sGGh/1KPpIm1sdjA01XFCiuyTELU/z75RA?=
 =?iso-8859-1?Q?k+Ok/+CInLMhp5FK3lpHQWs1RjuSXH+3chaXPOv4Ow2n1c2JFGfg/CPZ+9?=
 =?iso-8859-1?Q?QyPBLZzcAxlvzXE1wimIfXdwxN02i0dbuWfrSTPwFGqU/hA0R1ZB3f7bO6?=
 =?iso-8859-1?Q?A9qL457Zm9UU0TaFKcdpY9n6+t3c1x7/l3BDJqYyl/ODiQNgx+8XDKaK9g?=
 =?iso-8859-1?Q?QJLQLsrcRZ57KtuZ4lmkVkyZaaMnAiYJwQoBIYw/G7m/SMB0vL3YWhmXX8?=
 =?iso-8859-1?Q?ZKOOhJmHnTjSTE0r4gOQToUW2PSgqbvteSpcCY1sFCatk+amSwsR56L4UM?=
 =?iso-8859-1?Q?CMdzjE6AjO+k/cdQodyLwmV3U0Ef3URX32Vu71psdT4zcuwShQGCU5B+3V?=
 =?iso-8859-1?Q?k2fLPay5ieWJW7n2iCtlHC+b3vpNTay8xZ1fVyEMp8hmfGnolKRKzrtJ2D?=
 =?iso-8859-1?Q?khQpLQV3tmk1pOU/1MQ97ZD5F0bpC8mdzxlRtWeoNrN0SepJ+MDEFB92g2?=
 =?iso-8859-1?Q?6Sf0YdlyrJoLER7jYk/BovJj4oXQbCpLrBjDNMOE7cWF8fJ6SAwVwBgVSi?=
 =?iso-8859-1?Q?bgQaZeQvIycKHhIokaIq93yPtpDcBGcWbG4/HnRxZ/vLm+j3/nVhM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5867.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?rmgpUkZPRTzjYf3NjopFzLSuf7v3uvGDpMOOgepWzuick6UJZxEWXF5MEG?=
 =?iso-8859-1?Q?VTdaZJvkYRQ2dya2zEys/3OIAQKVhj18sIGr+YD+SUrjDvV061Bf2tKTY5?=
 =?iso-8859-1?Q?9Q66lHca28kLRyZWL/YHPtjkHz9kMQpe9e/4L1e5uHrf7i5vF8bnhaYqBn?=
 =?iso-8859-1?Q?oVstco+hWFXBemyak/zNH73ISr74R0DzcrBtrxBr8QXv2N83rDgdq0i8NN?=
 =?iso-8859-1?Q?mkUopdMm5v/scVqPKvQtUi8jP2aOsb0VL/mSWzcouDYoi5gTbyUNrAbvXC?=
 =?iso-8859-1?Q?EzeseGPAxHgiRpsIuJr659a/kU2AkX7hMcWt4uSIKUEdiTmVWPspMsizfC?=
 =?iso-8859-1?Q?EIJy7dIhFve0XgDaqNA2hU5gU1eI7f1kJZlS3omjSSLzXOkOEyrlxd1J8Q?=
 =?iso-8859-1?Q?Fm0eyGSs4Khf/Tiu+Bioaf0srCVXIkBoM6GV+pF/5VWpO5r/rxYipXTIQ+?=
 =?iso-8859-1?Q?ALKOMCBP05PrD3LmgfvBoX6VTVZk5MkdvYwT0p2a6FXnBfAXFTmkq30SJ2?=
 =?iso-8859-1?Q?6NZEq1UXSr3N/3/6ed6aycWwucNjhvX6FNEA1wt6zt/iGfx0UePo5EozsB?=
 =?iso-8859-1?Q?kzfdWEfsn1IxtSDUa0/nu4oQSiWJvmmKHrMbgAXtLQSjLFiVMi5uJSmUXq?=
 =?iso-8859-1?Q?XTZe76zKuUKqDrbajzZ631h+M8DwNRB0/3uvtaqjm5xvBypvnrx2YRu7t0?=
 =?iso-8859-1?Q?I8G3nKc56psJSPwMSW1RlCY9kfKkL2uPbDDPeqshYLeS31ZmwAa1APxGd3?=
 =?iso-8859-1?Q?eakWKBcMnTIVCggPFyFcMIFpp+Kknh2wWDiG/86V5MzKxLgZ5KuGc7pgFx?=
 =?iso-8859-1?Q?dPz9rehT/aZL9NVW2o6HbdqcpejbYvjizWSVlqcTFdP/aqxOs3l/E8xDDP?=
 =?iso-8859-1?Q?Erk5O2wAxmq8NbrjSxwvImqXfhVpf3IPENadgoaHcS4otGiHxs6x3iGFaf?=
 =?iso-8859-1?Q?8kq2hV/EEaQjWnO2spymR8gY4Ldl8E6KLXQNf8agwTxV7jJy2AS6O+4PPo?=
 =?iso-8859-1?Q?KfLDLGctPiR6r3qsG5S/FS7YcGkkqq2yW8TuPCBq/D0uBaehSweqdPBrMa?=
 =?iso-8859-1?Q?imVPC52As8SAF3RQc6DQ+aTEMhNGCEWwhan5aowbZoZetsgzd5EUyjV1ye?=
 =?iso-8859-1?Q?4j2q5nm6BpHFmiZJSxPPGTL/vkScmTVVy+hSD4n4fe10hJJad9j7wWx7B/?=
 =?iso-8859-1?Q?htBwZjL1a3inWiXGm0VIxcWwv3Pf7wd2Jp5GH4lwKuRa7oGs9QRV+eDQqW?=
 =?iso-8859-1?Q?w6AtV0Qj59RhpONAjYxrb2NXHpZkO1VsdkfoZ/9Am8WM3LG8mdfBxs68SV?=
 =?iso-8859-1?Q?qYxe2Cu+hbzsa9Mi+K8StHtbfOESO7FxTg4aLqwieshi3pSQ9HFkfcclwW?=
 =?iso-8859-1?Q?veTrjWVUtCoL+5JKxkIRRpdzC3/UqXhyI23oxeJMOkMm9fB3mLlV8yHNvS?=
 =?iso-8859-1?Q?ImGpaAxKz0EJ21UNTbw9VoYVzuerpo6a/b1QuWfKqiTKTvXlWOUjrxPlyc?=
 =?iso-8859-1?Q?DoQT/9tUGkUvlUxiFu2bVMQhuuHARMRzgPPP1/KY/rZYtF9dIsiEkxAHuS?=
 =?iso-8859-1?Q?981sXVmpAlAo6uQSmkXheRSG6q2+FpmL1x5RNubFsftIcDyEhwIiiFKy8p?=
 =?iso-8859-1?Q?3CGlDnv2vAvVhjmiywT83yXPDF9ZDNjwYm?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86c86f2e-1d7b-4917-2423-08dd154661c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2024 16:03:38.8069 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Miz5eBa0nwm882m4OJleGuB646SXyf5rSHJBi2lm4ERb45aot5M+ok3t9oNs+6EENFW/hC4CZK3TMbOut+hz+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6151
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

Hi Andi,

> -----Original Message-----
> From: Andi Shyti <andi.shyti@linux.intel.com>
> Sent: Thursday, December 5, 2024 6:35 PM
> To: Gote, Nitin R <nitin.r.gote@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Wilson, Chris P <chris.p.wilson@inte=
l.com>
> Subject: Re: [PATCH v1 1/1] drm/i915/gt: Increase a time to retry RING_HE=
AD
> reset
>=20
> Hi Nitin,
>=20
> On Thu, Dec 05, 2024 at 05:27:36PM +0530, Nitin Gote wrote:
> > Issue is seen again where engine resets fails because the engine
> > resumes from an incorrect RING_HEAD. So, increase a time if at first
> > the write doesn't succeed and retry again.
> >
> > Fixes: 6ef0e3ef2662 ("drm/i915/gt: Retry RING_HEAD reset until it get
> > sticks")
>=20
> Is this a real fix or is it more of a fine tuning?

Here we can say this for more fine tuning as issue seen again and=20
that's why I have added fixes : 6ef0e3ef2662.

>=20
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12806
> > Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
>=20
> ...
>=20
> > @@ -231,7 +231,7 @@ static int xcs_resume(struct intel_engine_cs *engin=
e)
> >  	set_pp_dir(engine);
> >
> >  	/* First wake the ring up to an empty/idle ring */
> > -	for ((kt) =3D ktime_get() + (2 * NSEC_PER_MSEC);
> > +	for ((kt) =3D ktime_get() + (50 * NSEC_PER_MSEC);
>=20
> Where is this 50 coming from?

Well, here HEAD is still not 0 even after writing in it.=20
So, it could be the timing issue. I discussed this=A0with Chris and we thou=
ght
It is=A0better to add 50ms instead of 2ms delay here to let HEAD write comp=
lete.
I tested this on trybot for Haswell/Ivybridge platform https://patchwork.fr=
eedesktop.org/series/141779/ and=20
I see BAT is successful and shards issues are not related.

>=20
> Thanks,
> Andi
>=20
> >  			ktime_before(ktime_get(), (kt)); cpu_relax()) {
> >  		/*
> >  		 * In case of resets fails because engine resumes from
> > --
> > 2.25.1
