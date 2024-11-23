Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 750B29D699B
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Nov 2024 16:23:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07C6B10E004;
	Sat, 23 Nov 2024 15:23:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fe162Gq8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA8C410E004
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Nov 2024 15:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732375420; x=1763911420;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cCMaDbDn74/0yN4+GLXO/J36HlrdySGMvloyhOv4M+o=;
 b=fe162Gq82TFRnWiH2Udsjg4KEU2WXpuxgsFufT6GV90zkK4iFl+MuL91
 HFob8JhphbgUzYT8kvO4YUzIbtWKPeXxW8+XZ28HDX5C7ucnHVQdhSv8X
 9NsdRKbLBFT4ot2cDnVYQ9cGE3BE4YgB5b4GW8rkp91AZ1kY1am2DW1XK
 bR2qQEG00RLi2aC3jgtQzNCGj1we/5wARl4YA7l5ZoIKXyO7ajYgTS4C+
 k5+4F4HosB1oxfEGtbPbVmfetCsoWv2BuYaj6zwDnTAYuR5bS9sLr/QSw
 9I6ecB5a3uZpYmHk8KRnVIHnE+G2KbsrIj4OhNnw0VWYSRTx2sG31dMrs A==;
X-CSE-ConnectionGUID: 0z398uOuT8SpNCZ0OYw2dA==
X-CSE-MsgGUID: jd7rBndYQUiU1T1K4lHTbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11265"; a="31903187"
X-IronPort-AV: E=Sophos;i="6.12,179,1728975600"; d="scan'208";a="31903187"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2024 07:23:40 -0800
X-CSE-ConnectionGUID: pHaPRNoHTKyorP3SazpKGw==
X-CSE-MsgGUID: ohHQpafwSxm7y2a4kTJM3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,179,1728975600"; d="scan'208";a="91198871"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Nov 2024 07:23:39 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 23 Nov 2024 07:23:39 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sat, 23 Nov 2024 07:23:39 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sat, 23 Nov 2024 07:23:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BDMay7RH+R9oJeAFqGIBtvGmTwcvzCn4oio7Zgqb7nbdXdwo12Cdu07mPq86F8nCj1Ubmq2xJutjsA1/Ct8B07VP+QYzKOVGA0LLETQSU1xlfcOixuFvuu8pAWNg66j7wAG2GFFmgj/IyVI8cg2T9eu+REB11sszswamNVH5XrzXI86fWEAwMrGh9o4qIv8PwpSGPi5zkOsD6G9DX8gqV6d2xGybjM+pWkD15WIhiFXE9Ob3PwbxRipm3p1qpXJzCdEqf/vUZQVX1tyUio9yMhp9cge/uSAbGtRzOkbks8aSpRgx4kBHmjHlOS+9KLZQ2BbaK/8laVuMcqxNaIDGqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AGl/0HZMrdmbcFsb+wQGOluFni3136bEpO3+LNumBFQ=;
 b=Zjz40JY0Pg7fzjD+HqKHXhubTcx5P/L8fzoNh79tiRaUFXNhTelh2Pnm5Dh57r1VXBIG7OnF0jFWz+PMIDLU7Hik97V3Piq6akI34nU9/2vpM2UqedRRE0EhwdrFGLc0k5gJvWdO3mPMs2LfohN1ojj/vf42GC4aXbpy/T1aFjVCaOqZoPyY9qFXvO/aldTiBQ6hhoFawEn0R9Pc/bfQK71C+jcogx7q5I9HQYd0YnpP9vxpP9vzF/souaV+uakfsI2O+MZCaWZYOikqy6Ww80UnPXkcvjtYEnMqdwKx9zACkGQv+E2s9qf34t9WA2Pqj93JhFSa9P7QN5ENyPVNJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by DS0PR11MB7334.namprd11.prod.outlook.com (2603:10b6:8:11d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.18; Sat, 23 Nov
 2024 15:23:28 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%6]) with mapi id 15.20.8158.024; Sat, 23 Nov 2024
 15:23:28 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>, "bgeffon@google.com"
 <bgeffon@google.com>, "Lee, Shawn C" <shawn.c.lee@intel.com>
Subject: RE: [PATCH] drm/i915/dpt: Restrict shrinker to DPT objects not mapped
Thread-Topic: [PATCH] drm/i915/dpt: Restrict shrinker to DPT objects not mapped
Thread-Index: AQHbPNInKgdYHFO9T0i2zYtD9zlURrLD54IAgABYwICAAAecsIAAtLIg
Date: Sat, 23 Nov 2024 15:23:28 +0000
Message-ID: <PH7PR11MB82524B25EF50CB3C52EEA849892C2@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20241122110741.405941-1-vidya.srinivas@intel.com>
 <Z0EKHlMUx2uqZVnZ@intel.com>
 <PH7PR11MB825273D7A748B4514E316AB1892C2@PH7PR11MB8252.namprd11.prod.outlook.com>
 <PH7PR11MB8252DF8896E96A2624948E4D892C2@PH7PR11MB8252.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB8252DF8896E96A2624948E4D892C2@PH7PR11MB8252.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|DS0PR11MB7334:EE_
x-ms-office365-filtering-correlation-id: 8eb84b25-9fe5-44b4-58d0-08dd0bd2c842
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?FZx//0h6WBmAsSmgkM0t8O5tUW+nV6e8XMJUmk5mnR7MwV1XM9CUcCuUsz?=
 =?iso-8859-1?Q?lb794ZMmiQyhJvb00uH3J76oABiO+jnmfS6+Eh23KzOBTRkYhpa82E4yil?=
 =?iso-8859-1?Q?fxnDkXQ9MQJB2bzYFTNtfG37yuJKBg/BmmFUQU73y+LLvAWXiWplyNHi+5?=
 =?iso-8859-1?Q?9Ce6YibwBmjvcolQNg3WfQ7oFYu0KmC1Ap9YA1IH4FL6QbloLyLYi0jWtI?=
 =?iso-8859-1?Q?3aLwfgyFDLbBgf/o8PzQI4eV89RjEyjF4LtZ+29YCzjGb/MqeYUhXGCbhD?=
 =?iso-8859-1?Q?UH4SYuJqcx4qp+Ifiwp6AzB0gzEs/MQNg8obu2C+4kSvEjstaza7O1NKJq?=
 =?iso-8859-1?Q?8KKWhD2koOozvNTZrpxtL4f65a+GrA6E2DVmFkougN8Qyj4ORQ+V/6Wxpb?=
 =?iso-8859-1?Q?8d4CGjl0pFFz9iMLH5a0VFDdyTk+q0ysSuQkg/SfKxACycbI3ITsTklEHQ?=
 =?iso-8859-1?Q?igW3juXISsnVKa2xb9lCGTB5tOlkkzy+09G+fAcc7gvsIzOKoSBYurraT+?=
 =?iso-8859-1?Q?9KPAzhDyuuSinov1o24DoOJQvI2IpA+TtAmdnz47d5+y+QVUNiH/ovNXpx?=
 =?iso-8859-1?Q?W8HAmn4VrZwSO77H/Mdcc+N/csEQ+MVCgyMdAfyHtvYsyY9TC35QrhXKdZ?=
 =?iso-8859-1?Q?7h+9LHmFxqjpMQ+ogxOaYyoEV8W1IZTxQRCCiTGIP/gLswaOrMJ8NXCWIW?=
 =?iso-8859-1?Q?FHtwN2RxXwYNYe15DAnGV0my7JVxjNzZ7ChcLXVrzIrtKIcnzMojDbziPI?=
 =?iso-8859-1?Q?Sp/Q0ryFb2jQlUu54PPru1hPCWJ7PhYX1DRJb1dSemyFv1QDCDoRxAhd9l?=
 =?iso-8859-1?Q?bUriA8CZZH8Lxhwg1Eby326aZbqFjuEpv9qnGF73MElRwJWDft1Vvyi1Oj?=
 =?iso-8859-1?Q?Jd5IselmKgXqEXtfmEi10xgK/Lpdkdd7vR1YvlBU7lp+ihQxt069Jzh3yA?=
 =?iso-8859-1?Q?g148K3ZOm4wCIeVktRAjTTbLsCcR71/Uc8uweL5WPRIBNR6s6KUpajDRys?=
 =?iso-8859-1?Q?jOJLC93wTGiPmP48CK8XjNZGSPcrT/hOMbI4iSthkNfTv5jd/AxUqbnmaE?=
 =?iso-8859-1?Q?Efxh8LGjGeUYUEv5MALi6xFCA3c1kCpDuJ/pHMiwzo91YrW8tmHoUX6HU6?=
 =?iso-8859-1?Q?CxJ+WNtaCdTxDHlI+PufWyxg2kvsoe1qG4XmGTIOPHQk4QDqVQqCSylnWL?=
 =?iso-8859-1?Q?ZdvsnPS+DfE2eNvdA6SEzkoES3t99IQnwETEyl6JgsSilxkdfGNVSnYmx3?=
 =?iso-8859-1?Q?jCcJTWpQ/NdW/yhGy+mJLg/nrpGAoZLL0t0VlbRQZscw4ZR0W8RQ8MwZPj?=
 =?iso-8859-1?Q?u8yrVM5ERgu3ri0X5rBjOYW/ycxSkxzds++sBJYrrg6Rmp2edGVCHNfgwO?=
 =?iso-8859-1?Q?9H/+cvxIs+muAVE5k+yc4Tsjm4RlQrZt3pWJkSbWF3IYGw86yD3T4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Ve/iMxznd0dJWfDQoa7XKcntHfM0tj+/WsOSfNQsdWfhl1uFHVK2kvcjXn?=
 =?iso-8859-1?Q?6c1MsFv00tGle9L2zkfM7+6F1nYB/yj+c2lA+2kgBqLQqOFf1TJnwK520O?=
 =?iso-8859-1?Q?spWocIyS3Rl33pqYhNLp1HbFqLwVoUgcQ3JOMIhlXNOx8MB36V5c7lWYHX?=
 =?iso-8859-1?Q?cQSKe17amEjU9DFz1grjpckTSzIQMghtyE8sy/DOcAvrQoeio9JrfgWAng?=
 =?iso-8859-1?Q?AOhTRZix9IfbIMfUqpthCBoG+tOQMVihiCNrpuyT405rbabnZNegZyLkHf?=
 =?iso-8859-1?Q?QEpLCJ8l5pdVvfzcDjkaLA8tFDbj6AY1Gq3lts29YTJvUCNpZK0h6nNA74?=
 =?iso-8859-1?Q?IylkbYNvr1Tnlqt70E6bGiykqpEj1fzA1fN9XMMk2UqanvrbabJoUwfcMS?=
 =?iso-8859-1?Q?UzOb7zabGynrIqs+cTHduvdcloxqpKNJ6VXAPxtvgrAG8MwLTZZjrAlQ44?=
 =?iso-8859-1?Q?E0YDsQYw0S4a5bss9UwVOI/EGGx4RI+txjSr6VXhqq+ICQ3S6oq0auPsn+?=
 =?iso-8859-1?Q?FHSsKtBXG9ZhNMrbHenOXuoWlLLXgImKji2zAtnmu7RRSK53N7pYVmIa0y?=
 =?iso-8859-1?Q?e26cUpsMqzV2N5pIUEyvzJ158J/3exSSGw6bYC9RFP6jL1XDizF0/pSfOe?=
 =?iso-8859-1?Q?q8daJd9GfrW981ZKPpAXKZIAWvOVaMsh09nSeoW7yFyD3P9xS3YC9L613s?=
 =?iso-8859-1?Q?T98eRKMHjmJbK8gKeKYU3PA+14+6sdKAQbIlBtwSqLYQ9J872EfAo5gqLK?=
 =?iso-8859-1?Q?47MHgyyLsRDjjnfWr3N1A5/+gDUnHJkaXio+W1LroSxi8gUh64f419sQfH?=
 =?iso-8859-1?Q?97zB524fB44n8jkpoF8bPcK6nIBXEi13MLQklOx0lJ9rrVSekxroJ65F+b?=
 =?iso-8859-1?Q?2s5g4gtTsD4EjCVfvToSfm9FmA02Vv7RI8Zxuqd8ANoJDD6zIVpCDVn1lM?=
 =?iso-8859-1?Q?juSi8hvHVtjbXs9udklecDQ4aCs+SFAdvp19nf/4jBfRLdVtqUzsrZNaGL?=
 =?iso-8859-1?Q?BSLxDhZnoKhB6KdjnGmMsHn85gjlOW1J7xRxRmhh3KRUvblQoHisBCG0Da?=
 =?iso-8859-1?Q?Pfl/Je+uQ4ODfXTdTGNnUz2iMsHcTa0Z/oL3LTjc/RKbvcesCIjrHVmsmc?=
 =?iso-8859-1?Q?tIOqFfWegwzePgTRc4wQsy64YM3VdsMJz1R9M3ydw7Zbs0p9+KIT2mlane?=
 =?iso-8859-1?Q?6CCDEEkzm5gLBXFWJ0k6tt9WH1eMZw9oITazBL/gWnUQcowtEStH0baXFa?=
 =?iso-8859-1?Q?uvYHvCGtILR5iN9NgEPV4h5wKf+Lc7aWuEZ6VGoNws+acLCI71T0eRdBUC?=
 =?iso-8859-1?Q?KJqi/cdXpTsx+kBTQMDM/Q8YkMgC44Zr/FQEgkU/NM9vlsgI9ZJDJNfJ6c?=
 =?iso-8859-1?Q?k2s7Uc3H0GnQOELZ5pKwgUkDSmga9kb1P01/rMDjA/JH2y+IwwmLzKDhas?=
 =?iso-8859-1?Q?ivv0jOPAGaJSzp4RmyeGysAEw6Q/LhDiRBJjXRq2IU7YKGDP8aEVrb+zZz?=
 =?iso-8859-1?Q?2Qsi1bVs5khdtXdX2G04zJ9HXvYWvnjcVT7ER0aRhKF44Lt65OyDSpSYAE?=
 =?iso-8859-1?Q?inosuEVB6B0tCiD0V8KP815DdOeGiMr135KNjGSXr/4yc68LZPckrBHy8x?=
 =?iso-8859-1?Q?MlmW1z6v8VktQWXYTlNC9IpL4bF9gxxOyh?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8eb84b25-9fe5-44b4-58d0-08dd0bd2c842
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2024 15:23:28.7135 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qhEq+ExvmIys3dFwe59vtEnysO5dy7YFvv8Ys+Bn8y8OTVVvMnLAb50+iCnxFQMWhpQI1P82T28nh2hX4C7LSXIDBNFCWb1+8VR8SswSqYg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7334
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
> From: Srinivas, Vidya
> Sent: 23 November 2024 10:14
> To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville <ville.syrjala@intel.=
com>;
> bgeffon@google.com; Lee, Shawn C <shawn.c.lee@intel.com>
> Subject: RE: [PATCH] drm/i915/dpt: Restrict shrinker to DPT objects not
> mapped
>=20
>=20
>=20
> > -----Original Message-----
> > From: Srinivas, Vidya
> > Sent: 23 November 2024 09:39
> > To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville
> > <ville.syrjala@intel.com>; bgeffon@google.com; Lee, Shawn C
> > <shawn.c.lee@intel.com>
> > Subject: RE: [PATCH] drm/i915/dpt: Restrict shrinker to DPT objects
> > not mapped
> >
> >
> >
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: 23 November 2024 04:18
> > > To: Srinivas, Vidya <vidya.srinivas@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville
> > > <ville.syrjala@intel.com>; bgeffon@google.com; Lee, Shawn C
> > > <shawn.c.lee@intel.com>
> > > Subject: Re: [PATCH] drm/i915/dpt: Restrict shrinker to DPT objects
> > > not mapped
> > >
> > > On Fri, Nov 22, 2024 at 04:37:41PM +0530, Vidya Srinivas wrote:
> > > > Restricting all DPT objects as unshrinkable was causing some
> > > > chromebooks to run out of memory causing DMA remap failures.
> > > > Thanks to Brian Geffon for the pointers on debug and suggesting
> > > > usage of !obj->mm.mapping
> > > >
> > > > Fixes: 43e2b37e2ab6 ("drm/i915/dpt: Make DPT object unshrinkable")
> > > >
> > > > Credits-to: Brian Geffon <bgeffon@google.com>
> > > > Suggested-by: Ville Syrj_l_ <ville.syrjala@linux.intel.com>
> > > > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/gem/i915_gem_object.h | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > > b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > > index 3dc61cbd2e11..b155f0139d4e 100644
> > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > > > @@ -285,7 +285,7 @@ i915_gem_object_is_shrinkable(const struct
> > > > drm_i915_gem_object *obj)  {
> > > >  	/* TODO: make DPT shrinkable when it has no bound vmas */
> > > >  	return i915_gem_object_type_has(obj,
> > > I915_GEM_OBJECT_IS_SHRINKABLE) &&
> > > > -		!obj->is_dpt;
> > > > +		!(obj->is_dpt && obj->mm.mapping);
> > >
> > > AFAICS the mapping could only become NULL if the DPT got evicted
> > > from the GGTT, but if that can happen then I think the current code
> > > must still be busted wrt. suspend/resume even with the unshrinkable D=
PT
> obj.
> > >
> > > Looking at the vma suspend stuff I think the only way something
> > > could still be bound in the DPT during resume is if it was pinned
> > > during suspend. But we should be unpinning all FBs during suspend,
> > > so that's a bit weird in itself. Hmm, we do the unpinning from the
> > > cleanup_work so maybe that's still pending when we suspend and thus
> > > something is still pinned in the DPT. And indeed there is no
> > > flush_work()/etc. for that. So perhaps if we add that we could just
> > > revert the unshrinkable DPT
> > patch.
> > >
> > Hello Ville,
> > Thank you so much. Yes, Google team also insist on that as they worry
> > the DPT patch might just be a workaround for the real memory corruption=
.
> Sorry, just to be clear. With the DPT patch (43e2b37e2ab6 "drm/i915/dpt: =
Make
> DPT object unshrinkable"), Maybe its not that mapping became NULL. But
> since all DPT objs are unshrinkable, they are hitting low memory which is
> probably causing DMA remap failure when memory is trying to be cleared.
> "i915 0000:00:02.0: Failed to DMA remap 147457 pages"
> BUG: Bad page state in process chrome  pfn:14200 page dumped because: non=
-
> NULL mapping
>=20
> So their suggestion initially was to try and use !obj->is_dpt || !obj-
> >mm.mapping as well so that shrinker could clear some more.
> However as you mentioned, if we could do something and revert the DPT pat=
ch
> entirely, it would be really very helpful
>=20
> >
> > > Did we have a good way to reproduce the resume explosion? If not, I
> > > suppose we could try to confirm the lack of flush_work() as the
> > > culprit by simply sticking some kind of sleep() into the cleanup
> > > function to make sure it doesn't get a chance to run during suspend.
> > We can reproduce the original issue where during the suspend/resume,
> > the meteorlake chromebook goes for a reboot and we have the crash
> > captured from console-ramoops.
> For this, I meant we have a reproduction WITHOUT the DPT patch
> 43e2b37e2ab6.
> But, we don't have reproduction at Intel for the "DMA remap failed case"w=
hile
> having the unshrinkable DPT 43e2b37e2ab6 "drm/i915/dpt: Make DPT object
> unshrinkable"
> So, we could try reproducing the original issue and try with the pointers=
 you
> have provided.
> >
> > >
> > > I also had this:
> > > https://patchwork.freedesktop.org/patch/503398/?series=3D108669&rev=
=3D1
> > > which would be good to have so that we can actully do the obvious
> > > flush_work(cleanup_work) instead of playing confusing tricks with
> > > the the commit_work.
> > >
> > Thank you so much. Will try this patch as well and update.

Hello Ville,
Tried your patch https://patchwork.freedesktop.org/patch/503398/?series=3D1=
08669&rev=3D1
with reverted DPT patch but the original suspend/resume issue was still see=
n.

Just tried to check a bit more on the i915_ggtt_suspend_vm
If the VMA is bound (i915_vma_is_bound), it wasn't hitting __i915_vma_evict
Could that be any reason? Have pushed a RFC patch just to seek your opinion
https://patchwork.freedesktop.org/patch/625967/
Somehow with this patch, couldn't reproduce the suspend/resume issue (yet).
However, am not very sure of the consequences of these changes. Could you k=
indly
have a check and suggest please? Thank you so much.

Regards
Vidya

> >
> > Regards
> > Vidya
> >
> > > >  }
> > > >
> > > >  static inline bool
> > > > --
> > > > 2.34.1
> > >
> > > --
> > > Ville Syrj=E4l=E4
> > > Intel
