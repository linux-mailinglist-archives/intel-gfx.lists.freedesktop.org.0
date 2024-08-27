Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0115D960170
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 08:19:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2633A10E043;
	Tue, 27 Aug 2024 06:19:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b9CBfA1f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C140210E20C
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2024 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724739594; x=1756275594;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=27qiYD7bQ/kW9Frux4yMSmcskCOK4XuhvJYT+i9WXsQ=;
 b=b9CBfA1fKF16Fcklf8jPtbr07J8yeY98TDepMTwEvI3+kOWihzXUqXAh
 s1LABfG4PqcQLNP5EjOO/xTjd5bEE/gx/XQXQ1dOoq6gWSrbRnWfD4jwL
 sQ08El5fwm3cdN3VpMu5uWOhrfFCg786tZXOFJannw2jo7Bvgwd3OilPc
 QvwCes2DULBAXLfCPsP8WwSPvn+FaGiw+BJJKd+q0kujWIXTVaSmp/+JV
 NAb4XcjN8+IQPI9fAXRg/67yw1BVmTJTgc/QsCXMk5Rzb5IjqKC05NmIY
 dU3gclRYEWwf7DRJ+TriYKgAXtjKJ9I8oJRIQY2bg+xfVa9q1fEIv4xS0 w==;
X-CSE-ConnectionGUID: hXs+rJrWSYKILtISbB1hEg==
X-CSE-MsgGUID: iQSB+tStRs6OEfs4nNOYNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="33820926"
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; d="scan'208";a="33820926"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 23:19:53 -0700
X-CSE-ConnectionGUID: s3RYDM+TQ2GhmyyKiAykQw==
X-CSE-MsgGUID: Vzayci3fRDaH4vJwjVNAyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; d="scan'208";a="63478312"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Aug 2024 23:19:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 23:19:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 26 Aug 2024 23:19:52 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 26 Aug 2024 23:19:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T6pIMHf5FFfl41OJi6RA82Jg/Lp3zucyyLK2O6dH762EwQ15uE3lgOzfHgfIMc057QLSIntMyyFqBLL43xkQHHklZ7xeTDBObAQ8xUhjIj/Q6V4Atf2IHfrPep2epFTPtE17xTkXdxgPYVDRo+dUPCuMiPqZYHWKT8oVG5GIfcBTi12xZvN6az8Tya0HCLquzdcbrdWS0KR7/chRsJyEG0HnFv/J9O/wDPvsYhi5qJxAH6JkcKOHN/xIBDuqURWUtowEBxegfqtLFVtFwXaVy80UPnNfIqyZB5arM1ptWN96JIzoCFS35JGEjqB1gqLtQcrvFhOCxVj7ce7mKvvUVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cGX8E8x5Gn+VSYIiCkexFQcnTKSH4yckLDp1dQZbitU=;
 b=kSH4TT6C7kvGGWnB/tmqiJ0t0Uisamz0GLXIj6dZ5AwjJIYdWvTyBn5giaod8N0wDfuYDEbecPVcXnyTyyTsRvMgKmbdUM3+g71lWfNaWdcM/O8jYZ44WNiI6hexicK16l/O9QAXuiUcfVopXEIjoIex7yPKFeMZNOTyv2qzfN56pFC5keinpyyXkMnLeCEM6Tfpq554LW2DH309JlLjSvhISpsyyT3W92k+uO1ZnGe+bx0829WtiizmnVXIL4JbLxCyU6zrtXFVjNwTq19c93QxGhnpZVz7kov/Mc3BfbRSvlZRIAadJYP5Z/lxgCU+5CycleN5jsw9xMR4FUp5iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS0PR11MB8134.namprd11.prod.outlook.com (2603:10b6:8:15a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Tue, 27 Aug
 2024 06:19:50 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%3]) with mapi id 15.20.7897.021; Tue, 27 Aug 2024
 06:19:50 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 10/14] drm/i915/dsb: Introduce intel_dsb_chain()
Thread-Topic: [PATCH 10/14] drm/i915/dsb: Introduce intel_dsb_chain()
Thread-Index: AQHaxmpjpziYxh+nP0m14qDI8j04m7Hk81JQgAAGlYCATS+YkIAC/l8AgAXc6QA=
Date: Tue, 27 Aug 2024 06:19:50 +0000
Message-ID: <PH7PR11MB59817118EEAF6110BEBA88F4F9942@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-11-ville.syrjala@linux.intel.com>
 <PH7PR11MB59816D24912D1E83CC8B4CF6F9DD2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <ZoVCAxHLvC_D9N1M@intel.com>
 <PH7PR11MB598121EE3773E56BD9694773F98E2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <ZsiEcGXw7iFT4Xs4@intel.com>
In-Reply-To: <ZsiEcGXw7iFT4Xs4@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS0PR11MB8134:EE_
x-ms-office365-filtering-correlation-id: 71711ac8-2dff-4223-27f2-08dcc66041bb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?jpr5f5VZhstkO+QeUc6zXof9Sn1WtyeCISDDfzeM6rCeErE3Oi0n/q9R0/?=
 =?iso-8859-1?Q?BwQ1iEh7YmZ9NBFo4ErtxQUlN0tMdUwdqGTd5w8NZeCZFuutB37nPJgCqI?=
 =?iso-8859-1?Q?y1skfT+yn9Vl4JIF1B2AhuhLiwgu2gfg21goIA7BKjFUR7mNZXLS9s1v4N?=
 =?iso-8859-1?Q?hUnWMgauj2NHDILbPgyYHakgUPKagYPRfJzZMYvUxpEY5Ugcoq5YFVL3Fj?=
 =?iso-8859-1?Q?eBqovTzZUUs5fpFOnGsi2uhajW4+kWdEHv72Oj5fszLgAJMgi2OlrwO/sw?=
 =?iso-8859-1?Q?rxyXwD5bbWEfEbhzpZ6gHYwa37oEiQy+1Pg0ihpVdtcQRXSx+j87+bnrKr?=
 =?iso-8859-1?Q?tA2lRclHXdLP1W5vr0BhcsEPkjqVpQrEyOqsfeYJc6/MTydctxqrEjFswt?=
 =?iso-8859-1?Q?sm6r1pgEpBUB8SpWZnXoRqL64FCIl2x5dWU1oE1qhBn/hvRKeTam5ctdEs?=
 =?iso-8859-1?Q?m+8sbtxQiEuDTBnZg8p2CSW4/CHh5I44x/4+h0Uf3zhpED51JxGLHYT0I9?=
 =?iso-8859-1?Q?DaioAhSvE4TskfOQdZ3GPywhgPpCYNFN++ll9y/IqvbZTl5RGASEeuOyo8?=
 =?iso-8859-1?Q?0nSVNoUUXJpmrVByoPyc9mMMCY+BNkhcpb9u+fbzTWB5XbnVqAsRKx3OJa?=
 =?iso-8859-1?Q?u3Jv/mlDFUn7jw5gLoEe7bkNmDQ5YVPmPzv8PnK4c99JtQ7bmBMkP3INjd?=
 =?iso-8859-1?Q?gzTU7cHzGAHyWyVhDMrJ+M2ot0DCj+F8e14uHm0AZR8lY6LRzid15aGimd?=
 =?iso-8859-1?Q?uVcSPvUXuEo9NbVhbsa+FpHhMtOMxP2DKzVr+sDeQlFQ0MOZwAevXnin+M?=
 =?iso-8859-1?Q?IvnfhqdKtTZ2GsmjdFdtirtGDo7FVzJ4HrRLT+Mlc1zoolcuqgC41bGuBJ?=
 =?iso-8859-1?Q?eNGpd8scf4bUPSM2QlBc0cgb20R8BvV81u0fhpQLRnDm95T+EmT8vzuZN1?=
 =?iso-8859-1?Q?Lr2H4IWqY7oIeAD3VCJgbmOBGd2dBrWtvHl030vGn40ujl8GesGHn2/j48?=
 =?iso-8859-1?Q?5cmPJi3jaKDyk3MLQmW32kCHyJiNYWMLJPnooUCWUx+SDtnfrx7X165WwK?=
 =?iso-8859-1?Q?uRphyd6hi8dMAxRJA8Nrl4WG2EGxJeDGO5cdmbRui7a5kCQYv50KLhrid+?=
 =?iso-8859-1?Q?8QhF/bF0ZwDS0levC9ch9ukNMaHNvlCSYS7uf1jF0GCYBHWlIViyKOoS2M?=
 =?iso-8859-1?Q?MomFRQ3CeL4txd/7FVSvZt12sEQbuBT1TSPGIBhQQVUYxaakAk63uwJYV6?=
 =?iso-8859-1?Q?ls8yExExi0ZKdvhvFsxnfRXFtut5GS+tbXOVfzTNGm7tGlNlK9G4MLQTrv?=
 =?iso-8859-1?Q?gZkgECSOr18qFQy9bRGpEp7UGTctpjawnQjkYj3rle8MNErVO+UeaNKm28?=
 =?iso-8859-1?Q?QxGOQV1E6ugyeU1vYS0374jJKXipQ+Walfo+8Gve1nWC5taU71TyEgK1F2?=
 =?iso-8859-1?Q?WSIQ8o9Q0ALIUdqTj1kIn+qg7BcC/1G7jvOaBg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?NwdhT7vANxkrQaS1Qc4LYnQAslsB22UB421Kw7/IIjrCjNO6ikWaqxHd1m?=
 =?iso-8859-1?Q?Hm2aRuGxYdfh+cUEqxwhd9UMgkkpQTB55Spx35aT1GR9mnfeJwnNmHRbq4?=
 =?iso-8859-1?Q?7vyXupbX0BleLcry6WX352X1UbL85WG8MradTWky1ZdPQIpkyzLYXjVyWl?=
 =?iso-8859-1?Q?Mt152N9KMnTLCDkNKZnxurZBieneTF9hyGzvjj9C1AXvGcmeXN4ZDj70Qu?=
 =?iso-8859-1?Q?zGjNcqdG0SPkkp790spydLWRCOWbkD6yUvy/PckRf0A3Pcyp1zPDN8bWOJ?=
 =?iso-8859-1?Q?WQkBB01INZ5YsASDF0CaUnQr/X2kwTVxEPZzNIMqglE3I8ypawiOsMdBde?=
 =?iso-8859-1?Q?m2pBfKJMH1fIEh1AV4FjHkcLZqJLG84hz2My4Xg7+HdHRISF2687l6Ftt5?=
 =?iso-8859-1?Q?/7M7PLnk6sAI76p0cAyDh+qZT2cbKoYnUscpm1KRgSI2QT5qAg+CX37mKX?=
 =?iso-8859-1?Q?Y2ZOj+/pS62hOq+YshTdlAn8YfVG91ZsSM6riLx1H3dttpzrv9yQ+3UOmb?=
 =?iso-8859-1?Q?1G2zFxbCLfITVOv50eohTD/wzdpUuEsfFwzN8DeGG7jjpbBH9nzVM3DIsz?=
 =?iso-8859-1?Q?J10ffmFHuVI4VrZQ0FXeyxL4OZhzzM/8rtx5pDZucvdYUexIx49A/OI4qg?=
 =?iso-8859-1?Q?0plp9k9pt6zFCRC/4beICrHLuY376D94iX7L0dsLN3VoExfjsk4/p3Qd1A?=
 =?iso-8859-1?Q?/0ZUX9L/gUcaq8LIjFpn7A1eZ6bUJ7JruW7Y91J85gniqWlNrzcLO+Un5i?=
 =?iso-8859-1?Q?amM93AfQxETMgQucjK2pXaUy20auSRJyj/qcpiIcTjbop9r0hpZ7R4RzpV?=
 =?iso-8859-1?Q?0JFPZcEVIZnBq8qKaa7caxHaXzGzCAeQrPh3bbTrJAS1pQu9cHepyzRFzQ?=
 =?iso-8859-1?Q?CxshIlcmP1vV79+XfoR2o4qQ01EIQutFsdI8s2qWWpAVp6d37cTkJqXiK7?=
 =?iso-8859-1?Q?fIySW5/Uqex8W+4Nccnh1auv5DyjgVpQ+LNL1gLCusjOerQdyaJHvNBs5z?=
 =?iso-8859-1?Q?2AvdPAtsztFumznEJda/7tGthM8mjqYzWXJDIQai3fuAj5mG2hEDIMFCAN?=
 =?iso-8859-1?Q?tV+CgR5QSeM6vrA6cVcbwRY4GwPTAVgOx2aEEQUB2m+4FDoKl6Q26UJh3a?=
 =?iso-8859-1?Q?W2qn3gP0nTb4z7tR+tSWOZcIazWZVyeQUUi8HXONpaXQu+BlBAXhb3X9Zk?=
 =?iso-8859-1?Q?hb+SZVw9E11GWDoyVmKtqwNBozxfzjpzsZcf40khHtU+Zwqred++Zv6QZs?=
 =?iso-8859-1?Q?UM8bfi0h1+8WJMgsiiQObjn8xfgJ7qtQM3V/FNNT9EHvFA/SOjbt24EQ3x?=
 =?iso-8859-1?Q?XDhsLScNqx/M6jjlQjFtMYMDvlmPB6s7U9RA20J/YcwUjS7Dds4EQY+m2R?=
 =?iso-8859-1?Q?v/UJw/lVNEPtTyN0cphTDluHKqDRVmrYLRu1slB6rO1KVnJsqYLdvuOxkg?=
 =?iso-8859-1?Q?QXy0m6TkwPwwY+1+FOV64f7+95sgy3+f4rqJooo9tTZVa8XqoB0vIAeY/R?=
 =?iso-8859-1?Q?psAlFQAHD5Jz+McyO+zDhsUejuaD7wflmscJiH8cM1PaaAFsl0dCPZhp17?=
 =?iso-8859-1?Q?81D88jK4RdgiIGhqvW793tpBosea3qXWQMlOryAi+qqnxzbEMUM6wtHxZ9?=
 =?iso-8859-1?Q?3rzVsNhkXtOHrG+WiLEbyvgh5VbtrpaD8g?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71711ac8-2dff-4223-27f2-08dcc66041bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2024 06:19:50.1078 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wt8yTdYIzNhJfiwsUKWY2Sn+BuxYXTL7sU+CS4T+OH1i7qNFE+1E40xlZhriL5P1Snn53a5HjlqzYawCnN1CiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8134
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, August 23, 2024 6:16 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 10/14] drm/i915/dsb: Introduce intel_dsb_chain()
>=20
> On Wed, Aug 21, 2024 at 03:05:05PM +0000, Manna, Animesh wrote:
> >
> >
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: Wednesday, July 3, 2024 5:50 PM
> > > To: Manna, Animesh <animesh.manna@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Subject: Re: [PATCH 10/14] drm/i915/dsb: Introduce intel_dsb_chain()
> > >
> > > On Wed, Jul 03, 2024 at 12:10:38PM +0000, Manna, Animesh wrote:
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > > Behalf Of Ville Syrjala
> > > > > Sent: Tuesday, June 25, 2024 12:40 AM
> > > > > To: intel-gfx@lists.freedesktop.org
> > > > > Subject: [PATCH 10/14] drm/i915/dsb: Introduce intel_dsb_chain()
> > > > >
> > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > >
> > > > > In order to handle the DEwake tricks without involving the CPU
> > > > > we need a mechanism by which one DSB can start another one. Add
> > > > > a basic function to do so. We'll extend it later with additional
> > > > > code to actually
> > > deal with DEwake.
> > > >
> > > > Is chained DSB concept restricting to only 2 DSB instance or can
> > > > be
> > > extended to available/max DSB instances?
> > > >
> > > > Are we exposing full chain of DSB to user or can be restrict to
> > > > primary DSB
> > > which will control other instances?
> > >
> > > You can start any DSB from any other DSB.
> > >
> > > > >
> > > > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_dsb.c | 42
> > > > > ++++++++++++++++++++++++ drivers/gpu/drm/i915/display/intel_dsb.
> > > > > ++++++++++++++++++++++++ h |
> > > > > 3 ++
> > > > >  2 files changed, 45 insertions(+)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > > index 092cf082ac39..4c0519c41f16 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > > @@ -502,6 +502,48 @@ static u32 dsb_error_int_en(struct
> > > > > intel_display
> > > > > *display)
> > > > >  	return errors;
> > > > >  }
> > > > >
> > > > > +static void _intel_dsb_chain(struct intel_atomic_state *state,
> > > > > +			     struct intel_dsb *dsb,
> > > > > +			     struct intel_dsb *chained_dsb,
> > > > > +			     u32 ctrl)
> > > >
> > > > I do not see any usage of ctrl variable in this patch, maybe good
> > > > to add
> > > wherever will be using it.
> > >
> > > It's in the next patch.
> >
> > If we agree that intel_dsb_chain() will always work with
> DSB_WAIT_FOR_VBLANK, this ctrl variable will not be needed.
>=20
> I need it anyway to test all kinds of other DSB beahaviours in the selfte=
sts.

Got it, as selftest code is not published leaving it to your discretion.

Reviewed-by: Animesh Manna <animesh.manna@intel.com>

>=20
> >
> > Regards,
> > Animesh
> >
> > >
> > > >
> > > > Regards,
> > > > Animesh
> > > > > +{
> > > > > +	struct intel_display *display =3D to_intel_display(state-
> >base.dev);
> > > > > +	struct intel_crtc *crtc =3D dsb->crtc;
> > > > > +	enum pipe pipe =3D crtc->pipe;
> > > > > +	u32 tail;
> > > > > +
> > > > > +	if (drm_WARN_ON(display->drm, dsb->id =3D=3D chained_dsb-
> >id))
> > > > > +		return;
> > > > > +
> > > > > +	tail =3D chained_dsb->free_pos * 4;
> > > > > +	if (drm_WARN_ON(display->drm, !IS_ALIGNED(tail,
> > > > > CACHELINE_BYTES)))
> > > > > +		return;
> > > > > +
> > > > > +	intel_dsb_reg_write(dsb, DSB_CTRL(pipe, chained_dsb->id),
> > > > > +			    ctrl | DSB_ENABLE);
> > > > > +
> > > > > +	intel_dsb_reg_write(dsb, DSB_CHICKEN(pipe, chained_dsb-
> >id),
> > > > > +			    dsb_chicken(state, crtc));
> > > > > +
> > > > > +	intel_dsb_reg_write(dsb, DSB_INTERRUPT(pipe,
> chained_dsb->id),
> > > > > +			    dsb_error_int_status(display) |
> > > > > DSB_PROG_INT_STATUS |
> > > > > +			    dsb_error_int_en(display));
> > > > > +
> > > > > +	intel_dsb_reg_write(dsb, DSB_HEAD(pipe, chained_dsb->id),
> > > > > +
> intel_dsb_buffer_ggtt_offset(&chained_dsb-
> > > > > >dsb_buf));
> > > > > +
> > > > > +	intel_dsb_reg_write(dsb, DSB_TAIL(pipe, chained_dsb->id),
> > > > > +
> intel_dsb_buffer_ggtt_offset(&chained_dsb-
> > > > > >dsb_buf) + tail); }
> > > > > +
> > > > > +void intel_dsb_chain(struct intel_atomic_state *state,
> > > > > +		     struct intel_dsb *dsb,
> > > > > +		     struct intel_dsb *chained_dsb) {
> > > > > +	_intel_dsb_chain(state, dsb, chained_dsb,
> > > > > +			 0);
> > > > > +}
> > > > > +
> > > > >  static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
> > > > >  			      int hw_dewake_scanline)  { diff --git
> > > > > a/drivers/gpu/drm/i915/display/intel_dsb.h
> > > > > b/drivers/gpu/drm/i915/display/intel_dsb.h
> > > > > index d0737cefb393..e59fd7da0fc0 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dsb.h
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
> > > > > @@ -45,6 +45,9 @@ void intel_dsb_wait_scanline_in(struct
> > > > > intel_atomic_state *state,  void
> > > > > intel_dsb_wait_scanline_out(struct
> > > > > intel_atomic_state *state,
> > > > >  				 struct intel_dsb *dsb,
> > > > >  				 int lower, int upper);
> > > > > +void intel_dsb_chain(struct intel_atomic_state *state,
> > > > > +		     struct intel_dsb *dsb,
> > > > > +		     struct intel_dsb *chained_dsb);
> > > > >
> > > > >  void intel_dsb_commit(struct intel_dsb *dsb,
> > > > >  		      bool wait_for_vblank);
> > > > > --
> > > > > 2.44.2
> > > >
> > >
> > > --
> > > Ville Syrj=E4l=E4
> > > Intel
>=20
> --
> Ville Syrj=E4l=E4
> Intel
