Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDBF8C84F6
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 12:39:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 513C110E223;
	Fri, 17 May 2024 10:39:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UD6XO3Jq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1FEE10E223
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 10:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715942339; x=1747478339;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MzTVLBC0MsjJxZMdHSsk8472MPrs9mJE40XyhEtMUqY=;
 b=UD6XO3Jqld1vVTSwGJtGWeyI9GXLPcqbAfS8+codHDApsg44Fv7o2moT
 UD9rLbuoingmzg9HYBTuSG0q5ikcyOyI891rPzAIOlNGAZgSyWx0+bIZq
 ezzrGMXpjOsxx/GXbDR+Q/3jBMjfEBmqAfuGHcEx2I5x9uTlFQ2QFptyf
 8wAlko742Gc6QmaLwCqjJ9WWfef4+SGNNzFpoMptJehVPeZrZal1o+YvM
 OxD3RzEWX868MP0igb8y7GMczxBBrPw/XHKT66c74JoU9QznvRyHqtQsz
 KtymkZk5QQu3TQniso4aLLWYBwF1T2K8dPGkyjj4oOByf9I4hYhUsXl9Y A==;
X-CSE-ConnectionGUID: AqK9FHzvSDe7Be+oe6JXWw==
X-CSE-MsgGUID: TP9nRePEQfyDCIKI/1Ultw==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11953521"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="11953521"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 03:38:58 -0700
X-CSE-ConnectionGUID: 3x3Hs1PfROeOld8k9rM/UQ==
X-CSE-MsgGUID: 4Dl1tbSkQvizcLUbDnmSAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="36263468"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 May 2024 03:38:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 03:38:57 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 17 May 2024 03:38:57 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 17 May 2024 03:38:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QB7LgOZMJJx71yH2SOy7OyjHhzd9SKG64WVhmoQSy6Jh+3Ihxh8SAmsLB3VIax0slMR7ZwLYC5yXewm4GczuyQyXXWt4xRjxY9beRtCuqm76OoXc83mOOT/t7PQmoTTMAWIGcW4n6QrG2BU89cpROa4e7CuDTLQkiSl9jyVgrsSXxFo9bSZGqEPD8xHxJw1ROUOveYMrekbDN0xuIF0b6urLoX8EjMXEPC04t+otTj8cHkX5TGKUYRK+WL3CwqDKRdWb9p+giEAymUNbNTQDJj+iCP0brIskM+cWZs6aTx5MvW5wvCl46Mc6iTCuxB/vR9ZCdYO9bvAhuY1e2xSauw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1gr6OWlCRrCGL440SfmPm1EVEB6BLDjaBYd1gHuSews=;
 b=JhO455bJ85xZQJEyr53PJ+BNcMltwoJY1p60twHh1Jq+ZWK17u9eEVeIKBSfJviROuyH49Dfws03W652iVleg1Em9E2LilezIA3TRe2gvObK7Y7GTfqUCnERgUhtndEilCa6A5TpEQ9bdrNkmJL0idja2Beyxgy7L2hwwtTjMUYbnfOgbUD7k72pQ0bHLo/2NZnZbzbp0UGzj3LeQ3Xh/etqLp8R1F2trNtbqlwDZEY5PplysHvxw0gIg4LB2bbkByBZlKc/3Mp8oHJzHPl7shCzuaLCbObPa/UFFStRmtOEW+c/kJZsW3Vhh0dmSEC4Yawh0Y7rppur6fjoLJHuvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SJ2PR11MB7453.namprd11.prod.outlook.com (2603:10b6:a03:4cb::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Fri, 17 May
 2024 10:38:49 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%4]) with mapi id 15.20.7587.025; Fri, 17 May 2024
 10:38:49 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH v8 3/7] drm/i915: Compute CMRR and calculate vtotal
Thread-Topic: [PATCH v8 3/7] drm/i915: Compute CMRR and calculate vtotal
Thread-Index: AQHaoeePGtvVAUCI2kaRNMRFixuoj7GVC5gQ
Date: Fri, 17 May 2024 10:38:49 +0000
Message-ID: <IA0PR11MB7307DA94E40933B329DECA68BAEE2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240509075833.1858363-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240509075833.1858363-4-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240509075833.1858363-4-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SJ2PR11MB7453:EE_
x-ms-office365-filtering-correlation-id: b7d99b6e-0728-498e-b72c-08dc765d89cf
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?wCuoFyfxQ1eH+kGV/PK+0/h9jXIIrs4m/drLvR5PGlrPTiYB7jtxFLG4vOdH?=
 =?us-ascii?Q?5JLv/G9X+JTfz0wlbFyl0bEK6xNfxyJhWMuFPW+yJ1fuxTlSn+v0hbghUEDb?=
 =?us-ascii?Q?bKczzWIDmiPGaFnXRVQobe2p5yFEwPGCoy7N7ZVtI1EtK7vOgSQy8+Vda8HW?=
 =?us-ascii?Q?Vl9obFE5sNcQAlqMnAzjMaaf5ch8w5HhWpPOKA9komAw+ORqxi6kP+vKqMMl?=
 =?us-ascii?Q?oqWsSnOurvfsRXsiOFc0axh603nvWpQJXJI0I0dSZqpNTvHZJfebv4vFToFB?=
 =?us-ascii?Q?WHpt5q0HfLSw8f7I5Gs9+zQpLOoxRgZDP5RbDlb8qghE9rdbF3xm2hlv4NsR?=
 =?us-ascii?Q?Vm8y8T8KDMEhCBjUPOU7IvdRCtGqOBmk3awIFl0tL/IMyFoSX8EfWk0NLYSo?=
 =?us-ascii?Q?aGV/rgc1AC49Qi2zs45VUVEvkvrEpau9sMNDXFU3OW4F4sTjX3ch5GRGyX4p?=
 =?us-ascii?Q?O6D1/Nf7EoayXtlT/Y2LVno6S9usbMVHr1MA4e9vtPXrNnIAXqyeRasSgH8W?=
 =?us-ascii?Q?We4Ck8pWwipFEpcYEQLeSwJofUlCar6aJthpjllXcKmgDgLOoUgkUYy1jggF?=
 =?us-ascii?Q?Q+zy+W3Q+6qgKQ652e+bRkWyBhwjoGmfqQfcu83gSdTv3VvOoonXEOiqA+It?=
 =?us-ascii?Q?knEyyPG/GSpDKboXaxOIA3Eg5XxyijLRKIPvtcvwgcSLNfvL+q37Dd8buubr?=
 =?us-ascii?Q?2Woj814Rm/McrUr252dQduaNeeX6foh7HGE1O283Xnxmom/yEPxTQ/Bx9xIz?=
 =?us-ascii?Q?MkMMIMgO8f81/+iegkXkSdUro4P8EDieamAYKY5ZiRKUOhe5rJ0CoVW7sagc?=
 =?us-ascii?Q?uswYwombRouyR8+Ej7+On5LdrI7sa0VNCV9BHe8H0WFgyKTW+KLHT6uk/h8O?=
 =?us-ascii?Q?QOj/DMXjmmjpdltV9TVolNeKgcYWXxysxJOJMsYKPsg1lGFQma8MDZBflX5O?=
 =?us-ascii?Q?64fnef8LsWskX/gbhvzJCb+JkvYxqJcN5phZEZqj3kP0xivz8dXHWdrSRjKr?=
 =?us-ascii?Q?DgSH14Sc1fIiOJHq4vGnfKtW3PFGEyIw5sfyQGX7R8TJU4TVeBhM41y1iyA/?=
 =?us-ascii?Q?pNs8GjCDvYiwVQ2kMnM5WZkQlFVgNqp0cBw1TqYZ3bEHtQrUqUYQ6gOOKQTo?=
 =?us-ascii?Q?NBUbF77Mhd9McpFXaY4qz6EI7s9UP88bankdFg9owZe7tttqU5y1voP/+/Df?=
 =?us-ascii?Q?lcMP9xxr6x/hgM8RI+AVF/ekOW6feL3g417n8nkvfe2Aw/hyK+Z2Rnhp55eF?=
 =?us-ascii?Q?C31fIf6bhEh8ZJS22NwlikcZvqFeI76F3SyW0yBqjvcTE7qeoWzA5Hen5ysw?=
 =?us-ascii?Q?BEVFrQKCR3T//4zIwkjylmBRponXFrRDjbV3afc9Im9nhQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?v6QGhXLLcwqYhKtKYECE/ph9kKPlyQ4Uhrz42MRJrkxmBQj05wsli1AFkOSz?=
 =?us-ascii?Q?4c1hUOjxeCTKuU9BsbSqyPaZ7pp6CQkb6+XsEhgRz1Iurv2nOSJ2j87dFQ7T?=
 =?us-ascii?Q?o6WMZALmDwtsOGI6qm/QTnyxT+XowcQD32jMh57hPo1O2rmhUxcUiR/SPIXV?=
 =?us-ascii?Q?GX7NPquFWnYnVdhQgfoJQ9IoUKcP7pInnE13teupD+rWhWwbwSN+9tHvTKJf?=
 =?us-ascii?Q?9dxJviw+cl5xaR9ObDBJDrIT+/GaLAepMiMieXbJ16+9rwL4gbgc15rFgiZn?=
 =?us-ascii?Q?+hi8lcW9Y+ERI0Y56EJgQ5UFXKDW2cJxBUb6/pypUlK6N2Ps2J0TTGgFR1Ls?=
 =?us-ascii?Q?9ohjtJdP/TwiC6fah0F5zB3znxlO1lpC/PzhngXTE1CgVMIAvcMauYmOcY1y?=
 =?us-ascii?Q?3d1U2JoxwD02W0tYnZPTDcXccOXrQXDyeRAbYy/8h522ALvLJx0Wqw/wAp2n?=
 =?us-ascii?Q?Wk+WLV3/9amO3QgtNVnHIFzQf8rK1zg6wz4u94R+ajQUiUdH3fpNVBagwlsw?=
 =?us-ascii?Q?3dmC7zp2jn9NZWRfPFaSnudets7VG0lDZiHqcMyX1O3M7F2vx5l2F1nYOnp6?=
 =?us-ascii?Q?05kjqoDQe6rLNgchVb2IIIzdROAXy2vpQrCfPzZJckkDkZiVBITWrLqUColn?=
 =?us-ascii?Q?97Dcv/o45BAzrWKX2jfyqzm9DqTqCfUzD+2mHPvhkXB4iWMjYk7V6AQWD3ZH?=
 =?us-ascii?Q?aL3bfV23e453tdI3bwFS4nJ26MrhJvtmiDjZo7WVdhLjvocqvDrPNIWORKNC?=
 =?us-ascii?Q?UusJ/BJtbpe9ttEIWY96MbitE/3UXB9MPNCX9fdq25l9uRkcE6d8R60mRI7n?=
 =?us-ascii?Q?7EtgGLaB5IqHViwRhv+XQ6U344rmBms1rF4etIbsxTYi3ulk0REN0/RegYjd?=
 =?us-ascii?Q?c4yi81n4tkq91AZeYQKB4t0vndFhDviGbSq763GI3GkFoDAqegaBl0zbSeW/?=
 =?us-ascii?Q?g86NMsHUPLSlv0C7EcfHfo0x5/hixDAEsjiAWEfGbeYqRxyX9Tb7th3epC2x?=
 =?us-ascii?Q?Udu+nOJkGNBbne40L7oJekh0wkEZkRE/WjIIs4g+HZNUyvYCz0e5lx8GehU/?=
 =?us-ascii?Q?AWB46s+GRZh/NsHd+YZ5/RgcuLjsv9afTZ3FylXH6jpggio01oiDgEQraig/?=
 =?us-ascii?Q?GXztOeB/VS/tYPUGUcdo0oPypRfS3v3MS/+rbKA4ZlbKSAGy1NrUGa0nrdvB?=
 =?us-ascii?Q?IwAoM4WxaOnqzIXBD7FWjoQ3Zo1bT3ZPpdo63hOBAxw1KSoEaAw9kU39wupM?=
 =?us-ascii?Q?1mhYRsjELSboJevGqAT0xy6wNDrxdEMRcUX4yfpmEAbjKPhOE5zAdEF80ChD?=
 =?us-ascii?Q?MYX29FB5U/KPsXo4molTuttvUMLxiRb1Qk4Asgi3Y/jGtJPMdv2picuRESLM?=
 =?us-ascii?Q?eAej3E9aMHRhLs8iF5cRzKudNezHUKY/c2iRPOq12SBg16j7XI58LwEuTJGs?=
 =?us-ascii?Q?ayCuOBscgSiGRibo1HdOIr8djnubSrwIpfd3GjOBtijder0xjhwz+D9abTch?=
 =?us-ascii?Q?u9en9SfaABDKWiRXE2MzwB2EECOTARAMIZFN+qBaGVAKyk7xLnjIvo/Jot9t?=
 =?us-ascii?Q?TE6PpK6Zjv08DOwMPsnv0AZHA+HO6ruvfZQ91c6vn9zSXgl9l9txpCJ6FLlQ?=
 =?us-ascii?Q?sQNqonK4RWldeysQw6PueX4TxsJuMuFcs3GDByHzKC24?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7d99b6e-0728-498e-b72c-08dc765d89cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2024 10:38:49.5416 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UVl+pwDQ5MjO70ah+Z+9ULmP5UaHXX00Jq+xhYnZ6Z+2vl9D92v//wXCUvzNGwMp00n6kZrtcAKiQeJ4IuBlug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7453
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
tul
> Golani
> Sent: Thursday, May 9, 2024 1:28 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>
> Subject: [PATCH v8 3/7] drm/i915: Compute CMRR and calculate vtotal
>=20
> Compute Fixed Average Vtotal/CMRR with resepect to userspace VRR
> enablement. Also calculate required parameters in case of CMRR is  enable=
d.
> During intel_vrr_compute_config, CMRR is getting enabled based on userspa=
ce
> has enabled Adaptive Sync Vtotal mode (Legacy VRR) or not. Make CMRR as
> small subset of FAVT mode, when Panle is running on Fixed refresh rate an=
d on
> VRR framework then only enable CMRR to match with actual refresh rate.
>=20
> --v2:
> - Update is_cmrr_frac_required function return as bool, not int. [Jani]
> - Use signed int math instead of unsigned in cmrr_get_vtotal2. [Jani]
> - Fix typo and usage of camel case in cmrr_get_vtotal. [Jani]
> - Use do_div in cmrr_get_vtotalwhile calculating cmrr_m. [ Jani]
> - Simplify cmrr and vrr compute config in intel_vrr_compute_config. [Jani=
]
> - Correct valiable name usage in is_cmrr_frac_required. [Ville]
>=20
> --v3:
> - Removing RFC tag.
>=20
> --v4:
> - Added edp check to address edp usecase for now. (ville)
> - Updated is_cmrr_fraction_required to more simplified calculation.
> - on longterm goal to be worked upon uapi as suggestion from ville.
>=20
> --v5:
> - Correct vtotal paramas accuracy and add 2 digit precision.
> - Avoid using DIV_ROUND_UP and improve scanline precision.
>=20
> --v6:
> - Make CMRR a small subset of FAVT mode.
>=20
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  1 +
>  .../drm/i915/display/intel_display_device.h   |  1 +
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 99 ++++++++++++++++---
>  3 files changed, 89 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 4a5318ab017d..8a76db59c85f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5458,6 +5458,7 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
>  		PIPE_CONF_CHECK_I(vrr.vsync_end);
>  		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
>  		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
> +		PIPE_CONF_CHECK_BOOL(cmrr.enable);
>  	}
>=20
>  #undef PIPE_CONF_CHECK_X
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 17ddf82f0b6e..b372b1acc19b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -71,6 +71,7 @@ struct drm_printer;
>  					  BIT(trans)) !=3D 0)
>  #define HAS_VRR(i915)			(DISPLAY_VER(i915) >=3D 11)
>  #define HAS_AS_SDP(i915)		(DISPLAY_VER(i915) >=3D 13)
> +#define HAS_CMRR(i915)			(DISPLAY_VER(i915) >=3D 20)
>  #define INTEL_NUM_PIPES(i915)
> 	(hweight8(DISPLAY_RUNTIME_INFO(i915)->pipe_mask))
>  #define I915_HAS_HOTPLUG(i915)		(DISPLAY_INFO(i915)-
> >has_hotplug)
>  #define OVERLAY_NEEDS_PHYSICAL(i915)	(DISPLAY_INFO(i915)-
> >overlay_needs_physical)
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 83ae56d22b5f..f5ba87fa00fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -11,6 +11,9 @@
>  #include "intel_vrr.h"
>  #include "intel_dp.h"
>=20
> +#define FIXED_POINT_PRECISION		100
> +#define CMRR_PRECISION_TOLERANCE	10
> +
>  bool intel_vrr_is_capable(struct intel_connector *connector)  {
>  	const struct drm_display_info *info =3D &connector->base.display_info;
> @@ -106,6 +109,59 @@ int intel_vrr_vmax_vblank_start(const struct
> intel_crtc_state *crtc_state)
>  	return crtc_state->vrr.vmax - intel_vrr_vblank_exit_length(crtc_state);
>  }
>=20
> +static bool
> +is_cmrr_frac_required(struct intel_crtc_state *crtc_state, bool is_edp)
> +{
> +	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
> +	struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> +
> +	if (!(HAS_CMRR(i915) && is_edp))
> +		return false;
> +
> +	actual_refresh_k =3D
> +		drm_mode_vrefresh(adjusted_mode) *
> FIXED_POINT_PRECISION;
> +	pixel_clock_per_line =3D
> +		adjusted_mode->crtc_clock * 1000 / adjusted_mode-
> >crtc_htotal;
> +	calculated_refresh_k =3D
> +		pixel_clock_per_line * FIXED_POINT_PRECISION /
> +adjusted_mode->crtc_vtotal;
> +
> +	if ((actual_refresh_k - calculated_refresh_k) <
> CMRR_PRECISION_TOLERANCE)
> +		return false;
> +
> +	return true;
> +}
> +
> +static unsigned int
> +cmrr_get_vtotal(struct intel_crtc_state *crtc_state) {
> +	int multiplier_m =3D 1, multiplier_n =3D 1, vtotal;
multiplier_m and multiplier_n have constant value and are not changing. Can=
 this be a macro?

Thanks and Regards,
Arun R Murthy
--------------------

> +	int actual_refresh_rate, desired_refresh_rate;
> +	long long actual_pixel_rate, adjusted_pixel_rate, pixel_clock_per_line;
> +	struct drm_display_mode *adjusted_mode =3D
> +&crtc_state->hw.adjusted_mode;
> +
> +	pixel_clock_per_line =3D
> +		adjusted_mode->crtc_clock * 1000 / adjusted_mode-
> >crtc_htotal;
> +	actual_refresh_rate =3D
> +		pixel_clock_per_line * FIXED_POINT_PRECISION /
> adjusted_mode->crtc_vtotal;
> +	desired_refresh_rate =3D drm_mode_vrefresh(adjusted_mode);
> +	actual_pixel_rate =3D actual_refresh_rate * adjusted_mode->crtc_vtotal;
> +	actual_pixel_rate =3D
> +		(actual_pixel_rate * adjusted_mode->crtc_htotal) /
> +FIXED_POINT_PRECISION;
> +
> +	multiplier_m =3D 1001;
> +	multiplier_n =3D 1000;
> +
> +	crtc_state->cmrr.cmrr_n =3D
> +		((desired_refresh_rate * adjusted_mode->crtc_htotal *
> multiplier_n) / multiplier_m);
> +	crtc_state->cmrr.cmrr_n *=3D multiplier_n;
> +	vtotal =3D (actual_pixel_rate * multiplier_n) / crtc_state->cmrr.cmrr_n=
;
> +	adjusted_pixel_rate =3D actual_pixel_rate * multiplier_m;
> +	crtc_state->cmrr.cmrr_m =3D do_div(adjusted_pixel_rate,
> +crtc_state->cmrr.cmrr_n);
> +
> +	return vtotal;
> +}
> +
>  void
>  intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			 struct drm_connector_state *conn_state) @@ -115,6
> +171,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	struct intel_connector *connector =3D
>  		to_intel_connector(conn_state->connector);
>  	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> +	bool is_edp =3D intel_dp_is_edp(intel_dp);
>  	struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
>  	const struct drm_display_info *info =3D &connector->base.display_info;
>  	int vmin, vmax;
> @@ -159,18 +216,10 @@ intel_vrr_compute_config(struct intel_crtc_state
> *crtc_state,
>  	crtc_state->vrr.flipline =3D crtc_state->vrr.vmin + 1;
>=20
>  	/*
> -	 * For XE_LPD+, we use guardband and pipeline override
> -	 * is deprecated.
> +	 * When panel is VRR capable and userspace has
> +	 * not enabled adaptive sync mode then Fixed Average
> +	 * Vtotal mode should be enabled.
>  	 */
> -	if (DISPLAY_VER(i915) >=3D 13) {
> -		crtc_state->vrr.guardband =3D
> -			crtc_state->vrr.vmin + 1 - adjusted_mode-
> >crtc_vblank_start;
> -	} else {
> -		crtc_state->vrr.pipeline_full =3D
> -			min(255, crtc_state->vrr.vmin - adjusted_mode-
> >crtc_vblank_start -
> -			    crtc_state->framestart_delay - 1);
> -	}
> -
>  	if (crtc_state->uapi.vrr_enabled) {
>  		crtc_state->vrr.enable =3D true;
>  		crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR; @@ -182,6
> +231,25 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  				(crtc_state->hw.adjusted_mode.crtc_vtotal -
>  					crtc_state-
> >hw.adjusted_mode.vsync_end);
>  		}
> +	} else if (is_cmrr_frac_required(crtc_state, is_edp)) {
> +		crtc_state->cmrr.enable =3D true;
> +		crtc_state->vrr.vmax =3D cmrr_get_vtotal(crtc_state);
> +		crtc_state->vrr.vmin =3D crtc_state->vrr.vmax;
> +		crtc_state->vrr.flipline =3D crtc_state->vrr.vmin;
> +		crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;
> +	}
> +
> +	/*
> +	 * For XE_LPD+, we use guardband and pipeline override
> +	 * is deprecated.
> +	 */
> +	if (DISPLAY_VER(i915) >=3D 13) {
> +		crtc_state->vrr.guardband =3D
> +			crtc_state->vrr.vmin + 1 - adjusted_mode-
> >crtc_vblank_start;
> +	} else {
> +		crtc_state->vrr.pipeline_full =3D
> +			min(255, crtc_state->vrr.vmin - adjusted_mode-
> >crtc_vblank_start -
> +			    crtc_state->framestart_delay - 1);
>  	}
>  }
>=20
> @@ -317,7 +385,14 @@ void intel_vrr_get_config(struct intel_crtc_state
> *crtc_state)
>=20
>  	trans_vrr_ctl =3D intel_de_read(dev_priv,
> TRANS_VRR_CTL(cpu_transcoder));
>=20
> -	crtc_state->vrr.enable =3D trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> +	if (HAS_CMRR(dev_priv)) {
> +		crtc_state->cmrr.enable =3D (trans_vrr_ctl &
> VRR_CTL_CMRR_ENABLE) &&
> +					  (trans_vrr_ctl &
> VRR_CTL_VRR_ENABLE);
> +		crtc_state->vrr.enable =3D trans_vrr_ctl & VRR_CTL_VRR_ENABLE
> &&
> +					 !(trans_vrr_ctl &
> VRR_CTL_CMRR_ENABLE);
> +	} else {
> +		crtc_state->vrr.enable =3D trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> +	}
>=20
>  	if (crtc_state->cmrr.enable) {
>  		crtc_state->cmrr.cmrr_n =3D
> --
> 2.25.1

