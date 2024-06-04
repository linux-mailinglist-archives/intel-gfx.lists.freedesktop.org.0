Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CC88FB813
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:54:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C313910E528;
	Tue,  4 Jun 2024 15:54:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hsyj61Ci";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D52C10E528;
 Tue,  4 Jun 2024 15:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717516471; x=1749052471;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s4F9l6SRdMV71ttbAB/3bZsf7lBi0rQSJArbqW0n89Y=;
 b=hsyj61CicSYxG3nDN96wpTVhlQtAOl/wYI+Ke7EWB/QeinlKEaupLA8P
 fVTKSNqM+KnQGsYxyjnIfGLgEeh7xddkJxKzvqRczbeGQrzTr/XWtE8en
 Ju3uzbm0tQrfcpsdvtcf7NPYXhW7q6GBnFJFdKrPACukoA6HVn3+ubgzx
 U89fUZSzZk6gh2XGXhaVQ06RKFVTQ6C2Wzwl8DtEy0lQB6tbTzgvS6ULY
 4xaOITpsXOyKc3LRhu6SbO+PPmzRYlcuMUU5XTQt0By2PwmGuD3wbqGEo
 8fpV4q+8ohnHpHVP98BAzByKeMAb9stzGPitPByYxBkIEIbLrcgptIeQz Q==;
X-CSE-ConnectionGUID: dnWopbsOS/GGNplGlBHyzQ==
X-CSE-MsgGUID: HiVY5+DuTM2KnHktwJOBbA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14188672"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="14188672"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:54:31 -0700
X-CSE-ConnectionGUID: OtQmhqtvSZmeAHumzU4yvQ==
X-CSE-MsgGUID: VbMU3VmaRICyimdtGOdUJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="41714580"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jun 2024 08:54:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 4 Jun 2024 08:54:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 4 Jun 2024 08:54:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 4 Jun 2024 08:54:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PG9GEZ4ecVFUXhOdYPpgNV1TTMRznmLWcKsMs693BuUifW5lnFNnn0sUSUBrj+3kukHWOzpsR67GojOIvx8HMYBzoen/3RiAEJeM6hSsDdIqxgdz+jfgijrue14rmXfNTrhSzWG4uMxHaTtsawGYz2CrwuU7eOdJ1fHtA++JNU+hRVk0HI1tf7pOyb3MIWnLnug5RvXSHk7fi91naNfOxuIbzNB14YbEBsrDQv/suzkucmyqZUA8FmRb1k9imI4AAR4qeRCp8txDdAQivbtlbHkYK464772IaB4UNgJ/Dco73sfBpYIAi9M7U5pt9lsv4GG3xRntssm1UInDPuCDpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EcaIO+iOKWahOKNEfpwfJyhTCN7qAOHpBuIicsT6Pc8=;
 b=egOKTEr/iBrrO5WMuhLtu3WO35k15EhW4PFSWWEdXwKqxU+c30rP+tp/1a/g+VoEyCIEaeLtoTX9Q2kRePsMYw3iBm4cjdPYBQlQ6wMw/Z4vZsDaF69NLclg8wmsj0/ttXP3eVJ+Z8Sh0T9aiJluhqb+pt29h2IJ3/bliK0OnSdRZOPGpKRUs2YFhViMoqyuN27izKTTPcPyqGMr2HZWOk/AvmgrsMK7VxLJb0HsGxju6eIIXKl2oMjk/wkEaxxMczmLg5SDFg0fjl//rMROJgCE0ARtfLWbunes3AZ6yuLqTLxmAUJ3LB+kt8yVQKtJu9i1LhuT8csKC64RLMmWBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB5987.namprd11.prod.outlook.com (2603:10b6:208:372::8)
 by DS0PR11MB8136.namprd11.prod.outlook.com (2603:10b6:8:159::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Tue, 4 Jun
 2024 15:54:28 +0000
Received: from MN0PR11MB5987.namprd11.prod.outlook.com
 ([fe80::a7c3:f2e2:98a9:da87]) by MN0PR11MB5987.namprd11.prod.outlook.com
 ([fe80::a7c3:f2e2:98a9:da87%5]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 15:54:28 +0000
From: "Chery, Nanley G" <nanley.g.chery@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>, "Graunke, Kenneth W"
 <kenneth.w.graunke@intel.com>, "Souza, Jose" <jose.souza@intel.com>, "Mathew, 
 Alwin" <alwin.mathew@intel.com>, "Zhang, Jianxun" <jianxun.zhang@intel.com>,
 "Syrjala, Ville" <ville.syrjala@linux.intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [RFC PATCH 1/3] drm/fourcc: define Intel Xe2 related tile4 ccs
 modifier
Thread-Topic: [RFC PATCH 1/3] drm/fourcc: define Intel Xe2 related tile4 ccs
 modifier
Thread-Index: AQHan+a0GmhftmwKdUO/Cf2dPRUKZ7G37rTw
Date: Tue, 4 Jun 2024 15:54:26 +0000
Message-ID: <MN0PR11MB59879226DB1690BF1AA58834DCF82@MN0PR11MB5987.namprd11.prod.outlook.com>
References: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
 <20240506185238.364539-2-juhapekka.heikkila@gmail.com>
In-Reply-To: <20240506185238.364539-2-juhapekka.heikkila@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR11MB5987:EE_|DS0PR11MB8136:EE_
x-ms-office365-filtering-correlation-id: d39e436e-3eb9-492b-ab8c-08dc84ae9cd3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?tusmVURFjcvHTYIY3vV18xvdNeq9C5/npG2lpbquht9Ba2xa7nDHzcNwD82b?=
 =?us-ascii?Q?asfMlHJwRmZndIKxoy5AmqcSssjuJGsi0Ppbrd+MYJdGchKc5v/TlCz1gZFt?=
 =?us-ascii?Q?HaeTMqxVDpRSv6QjdjofyyF6rHepaAQEMt36ldVLdb7ndB06Eh9Spa3Xy9h/?=
 =?us-ascii?Q?0EQKN9Zv9pB3x9uMI6ZsCGhFAxpCr/75CC2ao21PiTvkK6ee4jAtPMF/vUxI?=
 =?us-ascii?Q?Mlz2ZT6GbqaEjYgBqFmw8z5qJUM8SKdyu2VECa3Ho2ifGI8N0TvWdLnukStL?=
 =?us-ascii?Q?nhrCdnSV7MLrQWOtjCf52MrjQPLb4jeFf5E37aFRn91myq+qtNvmCDv8lrHm?=
 =?us-ascii?Q?HnOc9B+6fR0HMhuPCOpzHrIfjVxarFhDlCUnPtO8TPJ+EfH0fxsrEiwuOvnC?=
 =?us-ascii?Q?NuB4lF++FwO8DsrR4aXmPARfIIK7nX26m8VnRNGYuEQPZiQlGs3TqEZ8wpBp?=
 =?us-ascii?Q?8n4g4f2FIhQeHasAVN0bzSpB1u0hP8deJZrXG9NQhi3l/2queeqoEyeBSLYN?=
 =?us-ascii?Q?vnDOSjDnOvKW1MW9Do3ynqRr2gpehtXBCvyWtt/8730xVGVuQzImZ/SQ7BKT?=
 =?us-ascii?Q?d3FXqyRUm/uxUGK4M5/iUh6YqFhED9n2+fsHpLCB3wuRYfZITYrARVtqUlCs?=
 =?us-ascii?Q?NH6GZarQe5wa8wgL4oODOsFdDKAUqrNnHXVum+qPbueAi4L4TglfujgJPd1k?=
 =?us-ascii?Q?PtxqUSc/pn9SmhHKZZUN4ZiBwyxYMJe8SxcooqlFs1c+rikLft5xN9gXpT1I?=
 =?us-ascii?Q?W1KbX+UnQBFsdt4OHTtAf1wH2OggdsKaQI7vfWMGodJdQdiXSNMELi8p/3ip?=
 =?us-ascii?Q?UaDFF+lb89hucnJ4Zw6UbBV4ZNv88g09wxepDQBOYUl3/UvZYDZ8FuVsTcfQ?=
 =?us-ascii?Q?VB4ZWE/8lSoOHJjVV6QoHdpgcqAc5ipJqHldQ3TTrSSuZXx4dV8Q/cxk04g3?=
 =?us-ascii?Q?aPlyaQFdpj/j/RJnvR/rs2i2DPxCv9DSrKJXRDTnwHLXJRyusgAGkObiZcjx?=
 =?us-ascii?Q?9nb14XN89XLrpTpUsE3H1JyMi0YOpsgq5dUU1kiLJ/0olHBaJTlpfpQXa9JT?=
 =?us-ascii?Q?dTje5Xd0ZvMSIFG6o27nwt4otq4WbolXAiKEhCz0IkAdualax39WW8KW81Y4?=
 =?us-ascii?Q?+eodD54G4zQ1YDfxWqdWRB/9LY9ptT+45wObvz1qbNIan1RsN0GjLawe2SRt?=
 =?us-ascii?Q?Ncf1Ge2E9ksm3wwWmnjPL1p9eOc6diIB/8RCMZKLgKlLVe27GhN44nN9qf3S?=
 =?us-ascii?Q?xvHBgF60Mno9qZAMJ+hlukDz6R4qz2x9orx9Gdcs0h2HZS6XSeZnlOw7WPSH?=
 =?us-ascii?Q?aoEr5P6yXg3NfYM/oZ5Ei0QHOypEaj23lzzj7wGG1Qil/+ol1MYulA2ASTFN?=
 =?us-ascii?Q?mKkbwys=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB5987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZQSjef4a9tdmFDwNAu5TUnkNKi6Fc6iXUU5F8r6BuxTVqMyKUQNckKeCljqn?=
 =?us-ascii?Q?wFIRlhZCaYSyCC84ii/KfWsGFTQG31QiLwC58V+7KpFjq4JbNvwzUeSekxbb?=
 =?us-ascii?Q?LZBCqJ+UYyzEKa5OTTkBzsppsE3a3ucNocLuZ1u+k5sRxu3+zjcwuA3XmohW?=
 =?us-ascii?Q?4xcFL9vLHnDP9LsFQGrSZHWaoXExTeMT829jp5TIeo+vvYNTcR3Jsi27y44R?=
 =?us-ascii?Q?7jCZvYlMHcVyOY7yjOVyUO5K4brrbpUAh3j0B46OQ/Ieg0Uw1mDweghGPlJ5?=
 =?us-ascii?Q?dC3ggsBAoEvWyxwvMfj5B0rCJka62q66E8J2PVPqIddDHuZMF55ctiPEYWXY?=
 =?us-ascii?Q?lu4OL2HtUsukBJIFct+AoAq0PC2PA/DfnvXJC4YxYuRboRBEl3r3V6KRHfhe?=
 =?us-ascii?Q?hKdZnmyMw7SWiisr0q1mcImyAVZxI1TSB3YL/liiaFVvCAijiYIrrN9Q4PVI?=
 =?us-ascii?Q?3n7VMWUJzc/41RzVdd+xhGM7JXvBq3fChHexclEsIQ81xMgp59FbRcoaMM2e?=
 =?us-ascii?Q?n9e8pBNKR9O1Ut+s7ajR680/FrUVP9oo+O82HzrfsdJgqF0sK6RmPjMHYd6F?=
 =?us-ascii?Q?y1oq1igk/8RvovkJthdRuK3NyRs65cqO9XR2im4HHSQZAOYrndeLAf9N3J1U?=
 =?us-ascii?Q?1SpjSr6CpJ81ixjMU+xvP4lZ/TOEkiPXhJ38kUK+PZvx57Vm2c6Ikw3F8Meq?=
 =?us-ascii?Q?+qjEZYn96+5ZGyv7rpmnGI/Cpfg1EHPGRu6BKAZzQclZHvMoFwMDWLTLY77D?=
 =?us-ascii?Q?lXw+qnsjrCy79rhNE9f81CFjGZO6XRHCP4O+o623qdr5qSSPhE4twd35iAM+?=
 =?us-ascii?Q?p9/9xjelYqX5f4h1BU7BH8BPJJJmLMn2aTl6eiaF09X8VeTtp7nXGsNBF7GP?=
 =?us-ascii?Q?G698nNar+09TFQCkcOVINdduYpSdQofFfxvmj1fSwYypaJ4VSPZSsFUnIYa6?=
 =?us-ascii?Q?b8TkDgN1J9DLcpMBamedb+LhTVXxJWngKAHv8/MYGfbNNgBTHgNiFYpOFeNG?=
 =?us-ascii?Q?fss0IwqTspd48BG2tyNlmOC6Gn7fjf2Mel7LVHX9XK+KkcE3E3bcgFIKSfM3?=
 =?us-ascii?Q?Rn92Q6cbqRCAXPJjxPAc1/M+ljc4oSjMAWf0bhdrmFbgBmKMqRbBhURgeOdy?=
 =?us-ascii?Q?vibmDrWH3EkI6xoGCuFVybF4rC7bKCgBDEO2u8pC5jBs7jc4ST8jCrhAHhTc?=
 =?us-ascii?Q?RkKIlFlNqz3+6OKW5Nk36jWWqraTNXdKM5lABRM0USPHyVhLur/HphiNJSHy?=
 =?us-ascii?Q?sXWuNQUbF5moA1EtyA09JlgOC4BE54x/fywGs7awGytWeitLjHqjWhEZk+OC?=
 =?us-ascii?Q?fMv/mWE8sc2Ita7rg5MZ3mM3siDb670pEK83P7zNOs9TnqknURc6v/Y+iq9Z?=
 =?us-ascii?Q?2VBQM7UnTIhWfFiNSj0E3Gpdk6D6ZWV8yOVwIsob3R70JS2FLrMYFfcQv7X7?=
 =?us-ascii?Q?2hjJSKklIE8MEqiHLapWuVQdpSq/HrZSTd3L933u5/b6g+ix/+QONRTrZfIG?=
 =?us-ascii?Q?81bnUVDrxH+qXgK8cs2MmBq6PEsSrnhh822HdktWtYeXbCTBh/T2Adh7aB9h?=
 =?us-ascii?Q?HcRlz+rL9B+R1+Mg/cDJoncbay42nQnIkfx6LrJ0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB5987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d39e436e-3eb9-492b-ab8c-08dc84ae9cd3
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2024 15:54:26.9559 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bQeYm+hUsFikD942utnO8KWLswrMsYK96dVomO+hc/U+2pUXmjKGlIEbm8riRW2DYLMbOYSa5uwdjpFKhVmtmSjHxuz2PDwZG+SvhhU/yKQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8136
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
> From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Sent: Monday, May 6, 2024 2:53 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>; Chery, Nanley G <=
nanley.g.chery@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>; Graunke, Kenneth W <kenneth.w.graunke@intel.co=
m>; Souza, Jose <jose.souza@intel.com>; Mathew, Alwin
> <alwin.mathew@intel.com>; Zhang, Jianxun <jianxun.zhang@intel.com>; Syrja=
la, Ville <ville.syrjala@linux.intel.com>; Nikula, Jani
> <jani.nikula@intel.com>
> Subject: [RFC PATCH 1/3] drm/fourcc: define Intel Xe2 related tile4 ccs m=
odifier
>=20
> Add Tile4 type ccs modifier to indicate presence of compression on Xe2
>=20
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  include/uapi/drm/drm_fourcc.h | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.=
h
> index 84d502e42961..50db2cc89642 100644
> --- a/include/uapi/drm/drm_fourcc.h
> +++ b/include/uapi/drm/drm_fourcc.h
> @@ -702,6 +702,18 @@ extern "C" {
>   */
>  #define I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC fourcc_mod_code(INTEL, 15)
>=20
> +/*
> + * Intel Color Control Surfaces (CCS) for graphics ver. 20 render compre=
ssion.
> + *
> + * The main surface is Tile 4 and at plane index 0. For semi-planar form=
ats
> + * like NV12, the Y and UV planes are Tile 4 and are located at plane in=
dices
> + * 0 and 1, respectively. The CCS for all planes are stored outside of t=
he
> + * GEM object in a reserved memory area dedicated for the storage of the
> + * CCS data for all compressible GEM objects. The main surface pitch is
> + * required to be a multiple of four Tile 4 widths.
> + */

The pitch requirement is gone on this generation, isn't it?

-Nanley

> +#define I915_FORMAT_MOD_4_TILED_XE2_CCS fourcc_mod_code(INTEL, 16)
> +
>  /*
>   * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
>   *
> --
> 2.43.2

