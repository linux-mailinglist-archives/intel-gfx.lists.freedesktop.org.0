Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5298FB4069E
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 16:24:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA1B410E758;
	Tue,  2 Sep 2025 14:24:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TFRyperZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 767B610E751;
 Tue,  2 Sep 2025 14:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756823070; x=1788359070;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HNuQfg7FeyTgf8WkP7OfvLuVrIOyc77n6YesMzMNgq4=;
 b=TFRyperZenBIcB064XoP41h/TNbvTYDvotUo8sejfqcObivtcyBWe7X/
 jmpVGulocj745eCksObGm9qNwBzbd1KK1Ez+QnnzBpNiskC8FUwI7Xbem
 gsTGhtNeEz0RaOc73T9YOg81Tf5rEblyOkVFTxns/SbiaYBqRWVO5nkHZ
 lK+znub1qE01luUfWp/IKB4Yke/mim1pSOCxV/pkVcV/tPA66pY1I/Cut
 rvQsm0Owe8yZimO5Ss4+EA/XTpZ5GyZdS+R0HClH53mOuyB1KE0aTHTxH
 oA2KOa9XOlKcwlDYjfVSEIxps//N3+QqCN3gXlYTL3MpeOzUGM6xXK9I3 Q==;
X-CSE-ConnectionGUID: qhpzFlVcTVioOvjulpMW4Q==
X-CSE-MsgGUID: fSBtoeCYSjugF4Y8Soh0xA==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="59038789"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="59038789"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 07:24:29 -0700
X-CSE-ConnectionGUID: NX9j8PDWTYu0EqLE/IJSlg==
X-CSE-MsgGUID: JKXitbEAQ1OINiEVTPReEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="171738416"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 07:24:28 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 07:24:28 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 2 Sep 2025 07:24:28 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.66) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 07:24:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wdJqUXS8Z4bToLCnksPWPc+9hU7rtYT7/uhPeZiH6+uov37Hz48a69SXi37J3ce+mk+2Q4pgO1ObJbVU56GUM8zoRa2YDY5SUnkQVHxieYflXURVPLqx/NVO7ht6NG83z1u0oIAGH6HuaA9Mx5BfYWbImoJB1d90AzTTlwYB4xpFc91kzXY6EqhEg8+brpIMnYkrrbHxAt/jNz/KlCxlEcejt+hdhIBRHOg4WbDuAaOeC9NbvTZdhi6JLriNMTg87En1dxwVvbevH367crc6STWMnpCsATsqOkEGST8ncL+7v5g25rgWqMT6gtXlK/7svyNVxA76doJNzkPoaVO+iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dm0A3Sb0GdWRHfVk7A/PCexEGI4Wiiw++q5x0+LSV9A=;
 b=FC8mFk8suns4uPkd6d3Dtq9+/eOHGxP0mAMYKdpUDw9Y9kHowEPh98jFeshQ+pHIwFNml4hvy/GXHqFdpTSmFwTUeotvwCsS+A9wehZVHQYBLlUVtQPJdo70RP2MZ9tOsg9OBrcaC78pa6c0o09P9+8LnRWL074NoYac3pSx3AxUJE+V4a0uoB1jhsW/hqJhb82XpMozgzHCiFohAJ0uEeEG0eqC7zIu3bZygB4l6QmNoMMEUl0PiUUm47SDTjqQfH/GvPjNhOK74rxPFyJVNSygm442KQRRZiLSDq3AcMUEnDnJvm+JxkGmKdlY0f3Qz336vzZnPRCi57U7KO8AUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by SN7PR11MB7539.namprd11.prod.outlook.com (2603:10b6:806:343::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.20; Tue, 2 Sep
 2025 14:24:24 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::3ac4:e20e:84f1:f826]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::3ac4:e20e:84f1:f826%5]) with mapi id 15.20.9052.021; Tue, 2 Sep 2025
 14:24:24 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Subject: RE: [PATCH 1/1] drm/i915/display: Remove FBC modulo 4 restriction for
 ADL+
Thread-Topic: [PATCH 1/1] drm/i915/display: Remove FBC modulo 4 restriction
 for ADL+
Thread-Index: AQHcG/wM8z3OI5nBj0Wr6LXcKKjnGbR/wpcAgAAuM8A=
Date: Tue, 2 Sep 2025 14:24:23 +0000
Message-ID: <CY5PR11MB6344DCDF0584B227F8848517F406A@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20250902113538.269338-1-uma.shankar@intel.com>
 <20250902113538.269338-2-uma.shankar@intel.com>
 <d3e3b81650fc0206f6d5f238e72c1340c5171c8e@intel.com>
In-Reply-To: <d3e3b81650fc0206f6d5f238e72c1340c5171c8e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|SN7PR11MB7539:EE_
x-ms-office365-filtering-correlation-id: 1387e96c-f0da-495c-2aff-08ddea2c6a4b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?gCVvZbrduJQ8ygIYOE14DwG8bRGNA2XnVQ5XRGh3c7KX4kVdCdtufw81JZ75?=
 =?us-ascii?Q?eXk7VZ2FxxP14bI5P53amqsZklIGuIOY5p9OZTznwxMPs3BJ2QJ9JDSgr8kK?=
 =?us-ascii?Q?zLhvEenExJn7clPAPKN3JDOkFf9cSM2JPwpbWlh7eaj6HZNzs5QoJh7E1l1/?=
 =?us-ascii?Q?LQHPS2lfy3TAAtyTXlABYvVAKxuFw+Bdf43Z4oZLSldspMQcsjqetjXU1/01?=
 =?us-ascii?Q?4gr+FyL7NoOgXdXKaYGIbfGUrCOcIJ4uSZcnMWp82OaQcPaFH9UJeM8Mj8/M?=
 =?us-ascii?Q?CzJK4oS7GWjarAie6P8lQDz4t+cNcUz2QGiNyVeyMC6xYRidEwrckZ4fTdNi?=
 =?us-ascii?Q?2GQEGEwZBtZQtACtInPn3RNo1Ktu0rs8De+AloAnQAfL6toMdvAwnTKnMNV3?=
 =?us-ascii?Q?jaq9o8vXufdVctNnMvJ53fqBzlIgEx1OHWMQCQQIONyq1WkmrSMZVcbZ6ugI?=
 =?us-ascii?Q?yBeKaPV4adWtE8S9gARy2C0BrZCBi+4sNi3pGDN3MXWc46Y6UVvKAOZFTY4A?=
 =?us-ascii?Q?6go7z5cS5qpxxaSuhoXy546DDfDfOlICf+JI9Eyln/llafBwJN7E9af0TSN5?=
 =?us-ascii?Q?34kHsGi8i/Hv7JCV3PaWYGyAUz+5goEF1jz7l/ViUSX+x4IXcogLfttprMvt?=
 =?us-ascii?Q?elD2C51x9S7fh6gIM39AIDrZik6ekPtEiXz1NXJyrLBgiVKK6ePZZ4mwh1JJ?=
 =?us-ascii?Q?Imwi9hTqHXKEGdemcgAKp74h+F75r+ZGWl1JBcwj35va3CV4xRBQb78644Bb?=
 =?us-ascii?Q?Ncl9IBLdEd16qdlQUoUlaNjIL9sohumQp99UQtUbRXduXRITdsjq5Iq207UW?=
 =?us-ascii?Q?aI1VEPIfbYwHkeDV5mHHQT6HCXp2tWPSMqICUfY0q7D6bJxm9wTmbUDcgbgQ?=
 =?us-ascii?Q?a78lTSUD2hWRlV32RdcW1GZdoSLWYHPQOli9lBcasYUEr9+34B832+K7/Z1T?=
 =?us-ascii?Q?GZlkkoh5vtvWp1NQPQofjSuOS7s6fldqxzvpoC2zHFpLw7RUa0nQAQ9Irneh?=
 =?us-ascii?Q?myHcaR8ehHc4Z2gpfnbMEUCyfmcZawkb0TCR0SAqrwepgIEDtG7L5hBmFDQW?=
 =?us-ascii?Q?AJfE5uyUi5spOs63KGs4pw06OsrRK2FJu2iDWQvr1tnDmCLZrjEd4PIUmE1p?=
 =?us-ascii?Q?qpePTT/T32G6SBD24nrVX7lFlbuCXNEv68XjBtD15E/itzu9kbV7qylWUBG1?=
 =?us-ascii?Q?KQAD9q56aYRnLTYIBzdfNH6pAW0cRzKi4PdU3HvMFX/w/qjnNd+yM6YQ6y8m?=
 =?us-ascii?Q?7OS/ISxCgSA8wmha1qgbNsm7ko2PQqibjq4+IodGqAXtpFoZgE5L0/8cr1KZ?=
 =?us-ascii?Q?XQMYsWUi+B0B5SYNyzoLKln2DnfC3ooILRfbxeE2XgTtH8ko7IR9UtMwGOd0?=
 =?us-ascii?Q?yDPhd3S+VOB+VgC8EC5inzjjIoQF+TPlD4CwtVOObSDQJrEWeDGalNXnKQZX?=
 =?us-ascii?Q?umNN0pCTnA/JHAeoUa+PQgwncd390UrmDIDRb4XayamGyaeTqf7yC/ElURqT?=
 =?us-ascii?Q?2f3bTTz/sWdr1m0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?S7WZctIv65Y6NoTHO9DbrlWaL44GKjaN7eiEduDvPUSxfYskCQpmVc8usArs?=
 =?us-ascii?Q?uRoJ+BBrZzH5WOJTQXKoIwlxu2leSg1RbMilqhwS/8UHUZwcDvH7/AP3YU5H?=
 =?us-ascii?Q?QH20yGCwDsxuv1X0uLduCk9A8IsoQYiBGyrD9ytg7FUhIsZQny5Psx5511me?=
 =?us-ascii?Q?jNYd7DOJNBfFhqjo/PTQsW8uHi4rk7N3hgw2UVjlpanfFiBDX0qhv+UnAt8w?=
 =?us-ascii?Q?LxPHe3si8TFwF98ovNWq5vcbrLIZsWKQ0HDJ/gdUYRIpRh7GOaHR0zzN/Lo9?=
 =?us-ascii?Q?Ux+yFj5kteRnx7A/XJxhaKQnaBHgrcwP1e70XmGFqdEDarQXZ8NKWzjaoL7d?=
 =?us-ascii?Q?d0T0KyzF23oaWxCOvAHbEu4LwwJVqmfExSX1svppdnYQZKPIBVj2wwhELhmZ?=
 =?us-ascii?Q?aheWf1WV3Luska/wXORUzITOJok7BgOwQX6ILi+bweHXK0thiKpHkClD2Odl?=
 =?us-ascii?Q?WxXQmN/Qrq+kbHjDiu1Qr5mcXSzMs/tByoW3SLx2opAeIRmriwd28SSK2XL6?=
 =?us-ascii?Q?KOHNG0EXCj670xk1a7MlGzrPGSUgDHf9s/TK5aPUqfj42FnX6IlKllY8SXax?=
 =?us-ascii?Q?xdMjRnuAg/YVAM6PvxDee3vUVBGRPbbrokECbPTzLfOGm4CiOKv3Pqy1Yqlk?=
 =?us-ascii?Q?0y443kkxiSxFkEEGZ8kI0Sz+JsFk3xQjccwCB+C+3cehMrOJde/gfoSdIFt2?=
 =?us-ascii?Q?qYy7jVOvebw2NMcP8UbVJ/ZkJC7iK5Gc2Bp6XiilC8Z8gKCuacqQ7TzlM2NF?=
 =?us-ascii?Q?mPFxd+1G64qUn31wJxNOHkpy8fLP31Nl14Sls2siDqdd4S8JVwtoEdYTUz1q?=
 =?us-ascii?Q?Lgwq/QV1dWIRehd5eIQg4M5e0FEkuuM1EDoNHDV1IPWO9GIVztR9HvaWjvQ3?=
 =?us-ascii?Q?B1j4zH7vk83NwqfXXZnzJmVYbHWFk5RKlw+C/UXoL+CRMq7SmeYLwds/iV3a?=
 =?us-ascii?Q?zFou42AE8R8JNEX8ITW7blKqy7XsCf3abng4bjNWBMJlolq1AN4xXvgLfn/n?=
 =?us-ascii?Q?Co9S5kAkxjhUYblqZ1GrYpqvE7QmHWTBW6c32JekTBssk6Afr4LrjVb/dUEv?=
 =?us-ascii?Q?u4ZW3mjkb2jIRsX17IM7ho+B+BZmdBU3MD051CKr+7e5U7mPL7FSZeIpZrmN?=
 =?us-ascii?Q?CRxx6JpzE5yULf6diUWaKlR68+zvaM3oZI9ceT8lujkE1E5793kTW9RsTsd3?=
 =?us-ascii?Q?s1ls4QfFbp0/a2KiNv3Ogb0pmPI5N9lRdyAGT/lSpxG5PKzTMvjzb/ilmmUi?=
 =?us-ascii?Q?RRxn7x4qzuYtNiY7vRR4anKgw21Thbj58Ouj0Xb18nJxipTWb5g9TjVGKYb8?=
 =?us-ascii?Q?5PvYKpEP3eS683t5naMOgpZuY1d/w9qLO9yqjHE+MrIlfN2Zn6Izcr91JiH7?=
 =?us-ascii?Q?STC/mdabXAxyNbGSsBdklmAlaSGrfI03Iiwc4QEIOuezXExXJlBtUHDt4yIj?=
 =?us-ascii?Q?gV0pRpGtOz4ps44GxDQUBTqLd5sGpccMpFu4zsV2MVJYXmGPNu31WWPdTHz4?=
 =?us-ascii?Q?z4CoG4bgykz4mDCLTfJgJnZwpNYtgxkNE5a0FhDP+ofBIMh6ZafwMx1CYN4D?=
 =?us-ascii?Q?kUz5bbgyoPim8F2Lgx+eP6uC1NzNPw6mU/fBcurv?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1387e96c-f0da-495c-2aff-08ddea2c6a4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2025 14:24:23.8843 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /GKjCepJKMLwhGqrvZ02J+EPaY34zI9jOtCHwQFw2RvPkPPcBKFdUYDxOVnuez5GX3/WSfMnVX8fNNhp6Wz34Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7539
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, September 2, 2025 5:03 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Govindapillai, Vinod
> <vinod.govindapillai@intel.com>; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [PATCH 1/1] drm/i915/display: Remove FBC modulo 4 restrictio=
n for
> ADL+
>=20
> On Tue, 02 Sep 2025, Uma Shankar <uma.shankar@intel.com> wrote:
> > FBC restriction where FBC is disabled for non-modulo 4 plane size
> > (including plane size + yoffset) is fixed from ADL onwards in h/w.
> > WA:22010751166
> >
> > Relax the restriction for the same.
> >
> > v2: Update the macro for display version check (Vinod)
> >
> > Credits-to: Vidya Srinivas <vidya.srinivas@intel.com>
>=20
> Credits-to: is not a trailer we should be using. What does it mean?
>=20
> The common ways are either:
>=20
> Suggested-by: N.N.
>=20
> or a combo of:
>=20
> Co-developed-by: N.N.
> Signed-off-by: N.N.
>=20
> Whichever the case may be.

Hi Jani,
It was pointed for clarification so wanted to give the credits for the same=
. There were some references of this
sort of usage in upstream tree. Maybe not recommended, I will simply change=
 it to a text statement and drop the
tag as such.

Regards,
Uma Shankar

>=20
> BR,
> Jani.
>=20
>=20
> > Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index d4c5deff9cbe..9e097ed80bd1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -1550,14 +1550,14 @@ static int intel_fbc_check_plane(struct
> intel_atomic_state *state,
> >  	 * having a Y offset that isn't divisible by 4 causes FIFO underrun
> >  	 * and screen flicker.
> >  	 */
> > -	if (DISPLAY_VER(display) >=3D 9 &&
> > +	if (IS_DISPLAY_VER(display, 9, 12) &&
> >  	    plane_state->view.color_plane[0].y & 3) {
> >  		plane_state->no_fbc_reason =3D "plane start Y offset misaligned";
> >  		return 0;
> >  	}
> >
> >  	/* Wa_22010751166: icl, ehl, tgl, dg1, rkl */
> > -	if (DISPLAY_VER(display) >=3D 11 &&
> > +	if (IS_DISPLAY_VER(display, 9, 12) &&
> >  	    (plane_state->view.color_plane[0].y +
> >  	     (drm_rect_height(&plane_state->uapi.src) >> 16)) & 3) {
> >  		plane_state->no_fbc_reason =3D "plane end Y offset misaligned";
>=20
> --
> Jani Nikula, Intel
