Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FF3974EF7
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 11:45:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D884C10E98A;
	Wed, 11 Sep 2024 09:45:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JIwvyI1X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D0A610E98A
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 09:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726047950; x=1757583950;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aXq7Y9eI0PclUJ1srEakyJ52hRxUOALbEX6tAhRGAHY=;
 b=JIwvyI1XbdDxuyyDr68kc39uOufQRd2jLmox/0nbrcqyYqPTd9e3L5Vd
 XEJ4h1rhqOFDC5aquFuqZLdrN1vEFeMI5VzRrVQvTb7mn6jvPsyvKNXGk
 jBBJH1bwbYXwgcJvAJWhzLGMQ7IxTsmuyJU1hEw6+9wpshMz5QYXUl107
 gw4kI0LDbjy/QBVHV6E7HOqyy1DRy0Gy4N2CTjOmqlOgRQrsNLf4JiOMa
 d97/6kHYozYVK44It96MTj+QTWSHgpOUwb3Q6ZZf7RHEwcbCiHrwgdWpD
 LPeNyPUu5pO8cB6dZ4ocT/x4nnMaRhPCohJz+SPLujZLkv8H8hPYaNWPB A==;
X-CSE-ConnectionGUID: 4kqzJ7nFQM6Cezrq1oCavg==
X-CSE-MsgGUID: 7qrv9HuBQhSEaCBmvAx/5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="35974500"
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="35974500"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 02:45:50 -0700
X-CSE-ConnectionGUID: 2v51c/wqQ8WYy1cdzCIEUg==
X-CSE-MsgGUID: h0z34hA1SWuqc0+Q/BhmJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="67538682"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2024 02:45:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 02:45:49 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 02:45:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Sep 2024 02:45:48 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Sep 2024 02:45:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XBy50FvUoAWddj2K0/6mvcoHmh2czU3W74CVnS9mjfOMbmkOsfZ9segrml2AmiNLEZJ4OjCfA3QHyPo//6ANGLq4Mu8V1lNlHwrAKZn+yX+pNcGBxahCO2ZSyjU5SoIitarOUnQN30XdcyGWSqBj6Hf+iO5BzdxWLizEDk1xxHqdFSztMP+fCSGhE91M5x/eq/xVwffa22B4QMnOh3lQpSaZOdECdTIxry5GrlLQh2WKaKaxRABukaavAHtocu776WXCsXcsE35R/LdjH0huRcbkVb2Rm48vALFa3eVU3SO1QuWG7Lr/O4dF7uB475QKhiRfjzVvcPYdqbXHCLx2QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AaB3w2sPY8hyg+bhn8Gg+ZxcbDu+AnnHutAWom7Sqq4=;
 b=J9dm+DRnr38lBg4EXigHDSeCS+MDs6DLdzsUcz+ynOT4Ce7cIwUFkCrxnqaeP8I0+zzaVHS3NBR6QZec5oFLmziQsVcUGbsGCKCU8ieFN7R3g71LlfyziNTq2oot09wpqZ2qG4ON1qZMRe0OGxVSxX3TSW+EYlk76OwuEHvtlqxdfwQgCGDetc4Js8AbyDr0eIRnB9jnedZdV+zdm5CzXPEel6jReMkIj7jy7wAJE1nhle06FiM6nG1dptTXMqfxrduo/g9MF9DhqpNt49/+BjL/yT3CMe9HwfsodYsdWUMuQZgWrXaafxqwmE1+vcO/klTk2q4n8kfwxbwbGdiXBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY5PR11MB6509.namprd11.prod.outlook.com (2603:10b6:930:43::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.28; Wed, 11 Sep
 2024 09:45:45 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7918.024; Wed, 11 Sep 2024
 09:45:45 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCHv2 1/5] drm/i915/display: Add support for histogram
Thread-Topic: [PATCHv2 1/5] drm/i915/display: Add support for histogram
Thread-Index: AQHa87Wna25yr6dJmECof506AaELfrJSLptQgABIJWA=
Date: Wed, 11 Sep 2024 09:45:45 +0000
Message-ID: <SN7PR11MB6750310D1CC618BA8013093DE39B2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-2-arun.r.murthy@intel.com>
 <SN7PR11MB6750823FFE28098879A30E73E39B2@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750823FFE28098879A30E73E39B2@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY5PR11MB6509:EE_
x-ms-office365-filtering-correlation-id: b6842039-277a-402f-415d-08dcd246826d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?uGPDI93YG48ZtFV8fJA52CehckG3hH3ihZCAMAr8TLg5Y4LusqjCa2Emro?=
 =?iso-8859-1?Q?j2bUoWqrs2bi1S36YWyh4Oz7oStu4zRYSWiTa/bVQjVd9qWRK9g96WbDss?=
 =?iso-8859-1?Q?XdVT6CatKiyes9q7zA7gzbOLcqselL8e2pPLIO3HgcI0PvWhFf28p+gc/5?=
 =?iso-8859-1?Q?kPF7JSVie24oyyG5ECsCo/c5Geud8FK6RiLcCO7gnEtx3qvVPqycFx6Gyi?=
 =?iso-8859-1?Q?dJY/9/huKHhzz8XsXj2M0JwycBflN0e5xPQY7cyruGc6Hesr5dN1QZ5N5M?=
 =?iso-8859-1?Q?8Vdubzxs3+qKyFYVvO3tgB1pBVADMRRQAIT76k8B6xqPTKeje+rwI4vAb2?=
 =?iso-8859-1?Q?htIrMVh/5VSys63xIAxf1CwnuctRCMO2H6Hq6Y3Qz1IBc+sNjZDbklLy6g?=
 =?iso-8859-1?Q?9RuDYdznRPOhOr1YnMfuXJB+CaV3HZ48W/jOz9PMIM8VOU+R4qWeQT4tZI?=
 =?iso-8859-1?Q?MA7i5fgi7Kin3kYydveREFkiPJVfPJU1rjYHAFJ7XcCoIA9URIKazAjZuc?=
 =?iso-8859-1?Q?4oOKgJ31G4zww2teEoB/TC60qoSNcZeTPa+1ODROERSFp75b7kiyzBKqNp?=
 =?iso-8859-1?Q?dPN90qxE7rTgpLYagG/5tQL68IEEzcInD4dWlWyVoIvilz/7xa/CPl6qvV?=
 =?iso-8859-1?Q?5bT5IEjPqO1IUtSTqmn/UZJauFNBwwyDwJ8vUmvupViPppj5+PJP35pV5c?=
 =?iso-8859-1?Q?5HYavoDtzwYuM7l5JZqdH6WSBqR5y00kQ+aYdpwlQYLEUArAMuckA3QLY2?=
 =?iso-8859-1?Q?izZG4YpNomUpDjwpy5H9OucNjoJ1nMCbRTOMIaVAMnrtxcDadvLSLdpi2o?=
 =?iso-8859-1?Q?kLgodLPRNd3Tkazd3xADqvBCPJC04Us+0udRdfrl2xDOgKU7RtTOsGxXPk?=
 =?iso-8859-1?Q?Mzsfq7k5s9B0b61ev8B6Kf/IpgKSvlO23eIo2M9ah9eg26wctqNpLqCun1?=
 =?iso-8859-1?Q?sTUvvT6AXwQPjTVg3farNA9gQ/ACqt25/I96FFiRQprRA9t6rLuSA6Ei7D?=
 =?iso-8859-1?Q?/qlun9DO1ZNtamKzmfsAWMxwUXoxKMH9eAbwmJjBrCS9KcGmHTuxwy1TOM?=
 =?iso-8859-1?Q?3TzGl4m7/cd4TL+bmVFg2rzLWiONb81v+i1TExTLhpNjapQ3dcGwwNa7Bp?=
 =?iso-8859-1?Q?DFcStS8k0VIf5cEHcR6NIrSJCrhkZDXzr5YAKuxWayUdfs3WQPI1Tuonk7?=
 =?iso-8859-1?Q?6mH+kJzqJtzoOea/57zKSNNrhLJXVhvuXfsd9o937V7x6MKKzV3BXlgtXr?=
 =?iso-8859-1?Q?o/70cp5GZtppmhfOVDlxUKAcg08p0lI1QqGH4uy6zZWDx9TlRVow3MVz6y?=
 =?iso-8859-1?Q?npP2Grc6KRYV582Qz5GEJOfPySBBFMkeX5FChSl45wA03ti4wAdMf5Zgt3?=
 =?iso-8859-1?Q?mO9J5hKI/1vJkLkhR6hMsw4cp6PaNmFMrlKbleafriuIYRVs6/xvpiV9OI?=
 =?iso-8859-1?Q?ODUIXXw0eUwviu7A5GLLYFAvBFukdU3TocO8/g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?SB1YPtbzKVdSSOW6LoqFoPowd6StE6mlLs8dPyqOkGr9i2R9gWH8Jf9rsj?=
 =?iso-8859-1?Q?+bw38iRKrzLgTkpSmngJmhGSv//1RSKFOv8oM1+0/e0mnW/QkU/uL86I2h?=
 =?iso-8859-1?Q?5AxFBDjxHhP+G38yn7S6m2Jhh55LP7B5fdTFGcKSbOsYcxbKj/HtwxmWDn?=
 =?iso-8859-1?Q?bIYlj6yVsutXHMHZqJh0KO34n9C4D99n2f6RedOuGxnqhlnDFTZKCJpVs5?=
 =?iso-8859-1?Q?LCxXh+sc9oMvR1FuCZ0FWZDGjdW0Y+YQVJBAtvuPXmUhHhiEoTjHkeH4cE?=
 =?iso-8859-1?Q?xEr5di3tQU502RYlBK8Z0jT9t0laYUn/36pvRSuu/dEPIJJMQS9vZaETWl?=
 =?iso-8859-1?Q?6zvgY0vIZgZ2Q7zh7W4nj6MCDHkr08isNsFs2mhyRMFB4MU/sOc181biqw?=
 =?iso-8859-1?Q?NWcuuVBfkhA3pOh86ypcB5l8c6WFENRGWDi8So8vwl+1OPXX3TKp0qOj7h?=
 =?iso-8859-1?Q?8aGt0chzX7lnzd35sWKxEbTQKlDjpjBFUcRFpMYVhihCocPBwnU+2wQ8cm?=
 =?iso-8859-1?Q?sQJQwT72MT1ySDYg5kp9JKcucAJCS/5Uv43himUwAIeNYxSAL3RUFu06ta?=
 =?iso-8859-1?Q?/0RZkXFm5K4PvtGEBaYSxQo1J4wMlrcGtvY5JDr4bSaLxl9j1IvvH1waNf?=
 =?iso-8859-1?Q?MLzsAKA+UGXcJAce388q3vAo+bzeBZlGnY/Yj/aQWjY6GEYW9KAaPUL+jB?=
 =?iso-8859-1?Q?rvQeSsjU55JQvpszfkoKD/p8HwMMbW79yYfZv8vXSjTX6SLDglb4V8Bz77?=
 =?iso-8859-1?Q?sJQD4Az75uU56WFkJO4PLf+vTIQVws/lDVcW/6sOamu/dcZZz9q/eAvXms?=
 =?iso-8859-1?Q?EOsKQrdvircDcpwSiClll1nhLZX9QuQN5UGl7RWvjO4Gp7HV50yYwFh42y?=
 =?iso-8859-1?Q?2qOClP7/dZKhi2sf3HZP4Uii2cML56D1XLbb+Us8ccvPbEADawdcVqZnLW?=
 =?iso-8859-1?Q?LTZ1aIpbpjc3/N4k19dvrbMD/a2B0lUTPULkKGqsx7Yt8fSy4sOIRe2ge+?=
 =?iso-8859-1?Q?wnjbS6XfLXk56oEI1Ncdy0nBpnvNyKoAZrnZTGPd1CmSY1w4myjmVZaNe5?=
 =?iso-8859-1?Q?0SInqTKENJ6smJ4HyMVNFpaj5ybP9u/qFhOOzFgTctTW72roNyYjb7xXY1?=
 =?iso-8859-1?Q?OSDMZ0To9xnIR6dKdeZtNlpW42Ud7eO86Kh+hqRXzNmABUVKKpYyXi8cKL?=
 =?iso-8859-1?Q?vlAPH7IqVYSuPOprw65szGaVzPHSLzYZjhLkfGx6VDsm8cpqZMRYfqi+EJ?=
 =?iso-8859-1?Q?MD6GN//IUvvvIA0iRBD4wvn1u7EOy/erh0SW65MXOyvTd6xK+m4MCytylq?=
 =?iso-8859-1?Q?dHYVbvqu6dSwyGTvB4IpAQ8gfDM07j9OcW7OnPT7SZP2x7c4qPFvPrlotV?=
 =?iso-8859-1?Q?jy8txq6l7qevrQg3nA1K0nHnh1zRS2FG3joY6CTjeLoY01KFDW4oSNkUQ8?=
 =?iso-8859-1?Q?+ZofhJm8YRfeIL4FQQ3sDKeKlsw4Nsr52Z2ZWfUFKAJCZAYz2T5Ji93VMP?=
 =?iso-8859-1?Q?xQhanDY9nsbpovolu8FlPoiUSDafcdS63FSxdXucWxBrfNZH8GJVob0GkN?=
 =?iso-8859-1?Q?MGNYhHies2VS6WqccNN5PHWlnLWEVBxO3uuCmArq4rF/sh0Mp5elBkCmMy?=
 =?iso-8859-1?Q?6lXrySTIYZ5nehapg8VYUwhFpLR8bGjQBv?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6842039-277a-402f-415d-08dcd246826d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2024 09:45:45.6986 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JMCMd7R2ySkFmT88Cog1yUMGt5EwJDrl7Svb2Xghion/X6rMvf4PFbCaCQJnGz9XcF881OA1V+BMTsiODSMp/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6509
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Kandpal, Suraj
> Sent: Wednesday, September 11, 2024 11:07 AM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: RE: [PATCHv2 1/5] drm/i915/display: Add support for histogram
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Arun R Murthy
> > Sent: Wednesday, August 21, 2024 3:54 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> > Subject: [PATCHv2 1/5] drm/i915/display: Add support for histogram
> >
> > Statistics is generated from the image frame that is coming to display
> > and an event is sent to user after reading this histogram data.
> > This statistics/histogram is then shared with the user upon getting a
> > request from user. User can then use this histogram and generate an
> enhancement factor.
> > This enhancement factor can be multiplied/added with the incoming
> > pixel data frame.
> >
> > v2: forward declaration in header file along with error handling
> > (Jani)
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile                 |   1 +
> >  .../drm/i915/display/intel_display_types.h    |   2 +
> >  .../gpu/drm/i915/display/intel_histogram.c    | 205 ++++++++++++++++++
> >  .../gpu/drm/i915/display/intel_histogram.h    |  78 +++++++
> >  drivers/gpu/drm/xe/Makefile                   |   1 +
> >  5 files changed, 287 insertions(+)
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_histogram.c
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_histogram.h
> >
> > diff --git a/drivers/gpu/drm/i915/Makefile
> > b/drivers/gpu/drm/i915/Makefile index c63fa2133ccb..03caf3a24966
> > 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -264,6 +264,7 @@ i915-y +=3D \
> >  	display/intel_hdcp.o \
> >  	display/intel_hdcp_gsc.o \
> >  	display/intel_hdcp_gsc_message.o \
> > +	display/intel_histogram.o \
> >  	display/intel_hotplug.o \
> >  	display/intel_hotplug_irq.o \
> >  	display/intel_hti.o \
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index bd290536a1b7..79d34d6d537d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1537,6 +1537,8 @@ struct intel_crtc {
> >  	/* for loading single buffered registers during vblank */
> >  	struct pm_qos_request vblank_pm_qos;
> >
> > +	struct intel_histogram *histogram;
> > +
> >  #ifdef CONFIG_DEBUG_FS
> >  	struct intel_pipe_crc pipe_crc;
> >  #endif
> > diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> > b/drivers/gpu/drm/i915/display/intel_histogram.c
> > new file mode 100644
> > index 000000000000..45e968e00af6
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> > @@ -0,0 +1,205 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright =C2=A9 2024 Intel Corporation  */
> > +
> > +#include <drm/drm_device.h>
> > +#include <drm/drm_file.h>
> > +
> > +#include "i915_reg.h"
> > +#include "i915_drv.h"
> > +#include "intel_display.h"
> > +#include "intel_histogram.h"
> > +#include "intel_display_types.h"
> > +#include "intel_de.h"
> > +
> > +#define HISTOGRAM_GUARDBAND_THRESHOLD_DEFAULT 300    // 3.0% of
> the
> > pipe's current pixel count.
> > +#define HISTOGRAM_GUARDBAND_PRECISION_FACTOR 10000   //
> Precision
> > factor for threshold guardband.
> > +#define HISTOGRAM_DEFAULT_GUARDBAND_DELAY 0x04
> > +
> > +struct intel_histogram {
> > +	struct drm_i915_private *i915;
>=20
> Lets use intel_display here instead of i915 as I can see this is mostly b=
eing
> used for reg read/writes Read/write/rmw also work with intel_display well=
.
>=20

On another look I believe intel_display also is not required here I see int=
el_crtc is available
Almost everywhere hence you can derive it with to_intel_display(crtc)
And derive drm_i915_private wherever we cant avoid it with to_i915(display-=
>drm)

Regards,
Suraj Kandpal

> > +	bool enable;
> > +	bool can_enable;
> > +	enum pipe pipe;
> > +	u32 bindata[HISTOGRAM_BIN_COUNT];
> > +};
> > +
> > +int intel_histogram_atomic_check(struct intel_crtc *intel_crtc) {
> > +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> > +
> > +	/* TODO: Restrictions for enabling histogram */
> > +	histogram->can_enable =3D true;
> > +
> > +	return 0;
> > +}
> > +
> > +static void intel_histogram_enable_dithering(struct drm_i915_private
> > *dev_priv,
>=20
> Use intel_display here
> > +					     enum pipe pipe)
> > +{
> > +	intel_de_rmw(dev_priv, PIPE_MISC(pipe),
> PIPE_MISC_DITHER_ENABLE,
> > +		     PIPE_MISC_DITHER_ENABLE);
>=20
> So every where below drm_i915_private can be replaced with intel_display
> Ditto.
>=20
> > +}
> > +
> > +static int intel_histogram_enable(struct intel_crtc *intel_crtc) {
> > +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> > +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> > +	int pipe =3D intel_crtc->pipe;
> > +	u64 res;
> > +	u32 gbandthreshold;
> > +
> > +	if (!histogram)
> > +		return -EINVAL;
> > +
> > +	if (!histogram->can_enable) {
> > +		return -EINVAL;
> > +	}
>=20
> No need for brackets here now atleast
>=20
> > +
> > +	if (histogram->enable)
> > +		return 0;
> > +
> > +	/* Pipe Dithering should be enabled with GLOBAL_HIST */
> > +	intel_histogram_enable_dithering(i915, pipe);
> > +
> > +	/*
> > +	 * enable DPST_CTL Histogram mode
> > +	 * Clear DPST_CTL Bin Reg function select to TC
> > +	 */
>=20
> Nit: maybe make it Enable DPST... and If we are mentioning the steps lets
> add some number or points(-)
>=20
> > +	intel_de_rmw(i915, DPST_CTL(pipe),
> > +		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_IE_HIST_EN |
> > +		     DPST_CTL_HIST_MODE |
> > DPST_CTL_IE_TABLE_VALUE_FORMAT,
> > +		     DPST_CTL_BIN_REG_FUNC_TC | DPST_CTL_IE_HIST_EN |
> > +		     DPST_CTL_HIST_MODE_HSV |
> > +		     DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC);
> > +
> > +	/* Re-Visit: check if wait for one vblank is required */
> > +	drm_crtc_wait_one_vblank(&intel_crtc->base);
> > +
> > +	/* TODO: one time programming: Program GuardBand Threshold */
> > +	res =3D (intel_crtc->config->hw.adjusted_mode.vtotal *
> > +				intel_crtc->config-
> >hw.adjusted_mode.htotal);
> > +	gbandthreshold =3D (res *
> > 	HISTOGRAM_GUARDBAND_THRESHOLD_DEFAULT) /
> > +
> > 	HISTOGRAM_GUARDBAND_PRECISION_FACTOR;
> > +
> > +	/* Enable histogram interrupt mode */
> > +	intel_de_rmw(i915, DPST_GUARD(pipe),
> > +		     DPST_GUARD_THRESHOLD_GB_MASK |
> > +		     DPST_GUARD_INTERRUPT_DELAY_MASK |
> > DPST_GUARD_HIST_INT_EN,
> > +		     DPST_GUARD_THRESHOLD_GB(gbandthreshold) |
> > +
> >
> DPST_GUARD_INTERRUPT_DELAY(HISTOGRAM_DEFAULT_GUARDBAND_DELA
> Y)
> > |
> > +		     DPST_GUARD_HIST_INT_EN);
> > +
> > +	/* Clear pending interrupts has to be done on separate write */
> > +	intel_de_rmw(i915, DPST_GUARD(pipe),
> > +		     DPST_GUARD_HIST_EVENT_STATUS, 1);
> > +
> > +	histogram->enable =3D true;
> > +
> > +	return 0;
> > +}
> > +
> > +static void intel_histogram_disable(struct intel_crtc *intel_crtc) {
> > +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> > +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> > +	int pipe =3D intel_crtc->pipe;
> > +
> > +	if (!histogram)
> > +		return;
> > +
> > +	/* Pipe Dithering should be enabled with GLOBAL_HIST */
> > +	intel_histogram_enable_dithering(i915, pipe);
> > +
> > +	/* Clear pending interrupts and disable interrupts */
> > +	intel_de_rmw(i915, DPST_GUARD(pipe),
> > +		     DPST_GUARD_HIST_INT_EN |
> > DPST_GUARD_HIST_EVENT_STATUS, 0);
> > +
> > +	/* disable DPST_CTL Histogram mode */
> > +	intel_de_rmw(i915, DPST_CTL(pipe),
> > +		     DPST_CTL_IE_HIST_EN, 0);
> > +
> > +	histogram->enable =3D false;
> > +}
> > +
> > +int intel_histogram_update(struct intel_crtc *intel_crtc, bool
> > +enable) {
> > +	if (enable)
> > +		return intel_histogram_enable(intel_crtc);
> > +
> > +	intel_histogram_disable(intel_crtc);
> > +	return 0;
> > +}
> > +
> > +int intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32
> > +*data) {
> > +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> > +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> > +	int pipe =3D intel_crtc->pipe;
> > +	int i =3D 0;
> > +
> > +	if (!histogram)
> > +		return -EINVAL;
> > +
> > +	if (!histogram->enable) {
> > +		drm_err(&i915->drm, "histogram not enabled");
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (!data) {
> > +		drm_err(&i915->drm, "enhancement LUT data is NULL");
> > +		return -EINVAL;
> > +	}
> > +
> > +	/*
> > +	 * Set DPST_CTL Bin Reg function select to IE
> > +	 * Set DPST_CTL Bin Register Index to 0
> > +	 */
> > +	intel_de_rmw(i915, DPST_CTL(pipe),
> > +		     DPST_CTL_BIN_REG_FUNC_SEL |
> DPST_CTL_BIN_REG_MASK,
> > +		     DPST_CTL_BIN_REG_FUNC_IE |
> DPST_CTL_BIN_REG_CLEAR);
> > +
> > +	for (i =3D 0; i < HISTOGRAM_IET_LENGTH; i++) {
> > +		intel_de_rmw(i915, DPST_BIN(pipe),
> > +			     DPST_BIN_DATA_MASK, data[i]);
> > +		drm_dbg_atomic(&i915->drm, "iet_lut[%d]=3D%x\n", i, data[i]);
> > +	}
> > +
> > +	intel_de_rmw(i915, DPST_CTL(pipe),
> > +		     DPST_CTL_ENHANCEMENT_MODE_MASK |
> > DPST_CTL_IE_MODI_TABLE_EN,
> > +		     DPST_CTL_EN_MULTIPLICATIVE |
> > DPST_CTL_IE_MODI_TABLE_EN);
> > +
> > +	/* Once IE is applied, change DPST CTL to TC */
> > +	intel_de_rmw(i915, DPST_CTL(pipe),
> > +		     DPST_CTL_BIN_REG_FUNC_SEL,
> > DPST_CTL_BIN_REG_FUNC_TC);
> > +
> > +	return 0;
> > +}
> > +
> > +void intel_histogram_deinit(struct intel_crtc *intel_crtc) {
> > +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> > +
> > +	kfree(histogram);
> > +}
> > +
> > +int intel_histogram_init(struct intel_crtc *intel_crtc) {
> > +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> > +	struct intel_histogram *histogram;
> > +
> > +	/* Allocate histogram internal struct */
> > +	histogram =3D kzalloc(sizeof(*histogram), GFP_KERNEL);
> > +	if (!histogram) {
> > +		return -ENOMEM;
> > +	}
> > +
> > +	intel_crtc->histogram =3D histogram;
> > +	histogram->pipe =3D intel_crtc->pipe;
> > +	histogram->can_enable =3D false;
> > +
> > +	histogram->i915 =3D i915;
> > +
> > +	return 0;
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_histogram.h
> > b/drivers/gpu/drm/i915/display/intel_histogram.h
> > new file mode 100644
> > index 000000000000..b25091732274
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_histogram.h
> > @@ -0,0 +1,78 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright =C2=A9 2024 Intel Corporation  */
> > +
> > +#ifndef __INTEL_HISTOGRAM_H__
> > +#define __INTEL_HISTOGRAM_H__
> > +
> > +#include <linux/types.h>
> > +
> > +struct intel_crtc;
> > +
> > +/* GLOBAL_HIST related registers */
> > +#define _DPST_CTL_A					0x490C0
> > +#define _DPST_CTL_B					0x491C0
> > +#define DPST_CTL(pipe)
> > 	_MMIO_PIPE(pipe, _DPST_CTL_A, _DPST_CTL_B)
> > +#define DPST_CTL_IE_HIST_EN				REG_BIT(31)
> > +#define DPST_CTL_RESTORE				REG_BIT(28)
> > +#define DPST_CTL_IE_MODI_TABLE_EN			REG_BIT(27)
> > +#define DPST_CTL_HIST_MODE				REG_BIT(24)
> > +#define DPST_CTL_ENHANCEMENT_MODE_MASK
> > 	REG_GENMASK(14, 13)
> > +#define DPST_CTL_EN_MULTIPLICATIVE
> > 	REG_FIELD_PREP(DPST_CTL_ENHANCEMENT_MODE_MASK, 2)
> > +#define DPST_CTL_IE_TABLE_VALUE_FORMAT
> 	REG_BIT(15)
> > +#define DPST_CTL_BIN_REG_FUNC_SEL			REG_BIT(11)
> > +#define DPST_CTL_BIN_REG_FUNC_TC
> > 	REG_FIELD_PREP(DPST_CTL_BIN_REG_FUNC_SEL, 0)
> > +#define DPST_CTL_BIN_REG_FUNC_IE
> > 	REG_FIELD_PREP(DPST_CTL_BIN_REG_FUNC_SEL, 1)
> > +#define DPST_CTL_BIN_REG_MASK
> > 	REG_GENMASK(6, 0)
> > +#define DPST_CTL_BIN_REG_CLEAR
> > 	REG_FIELD_PREP(DPST_CTL_BIN_REG_MASK, 0)
> > +#define DPST_CTL_IE_TABLE_VALUE_FORMAT_2INT_8FRAC
> > 	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 1)
> > +#define DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC
> > 	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 0)
> > +#define DPST_CTL_HIST_MODE_YUV
> > 	REG_FIELD_PREP(DPST_CTL_HIST_MODE, 0)
> > +#define DPST_CTL_HIST_MODE_HSV
> > 	REG_FIELD_PREP(DPST_CTL_HIST_MODE, 1)
> > +
> > +#define _DPST_GUARD_A					0x490C8
> > +#define _DPST_GUARD_B					0x491C8
> > +#define DPST_GUARD(pipe)				_MMIO_PIPE(pipe,
> > _DPST_GUARD_A, _DPST_GUARD_B)
> > +#define DPST_GUARD_HIST_INT_EN				REG_BIT(31)
> > +#define DPST_GUARD_HIST_EVENT_STATUS			REG_BIT(30)
> > +#define DPST_GUARD_INTERRUPT_DELAY_MASK
> > 	REG_GENMASK(29, 22)
> > +#define DPST_GUARD_INTERRUPT_DELAY(val)
> > 	REG_FIELD_PREP(DPST_GUARD_INTERRUPT_DELAY_MASK, val)
> > +#define DPST_GUARD_THRESHOLD_GB_MASK
> > 	REG_GENMASK(21, 0)
> > +#define DPST_GUARD_THRESHOLD_GB(val)
> > 	REG_FIELD_PREP(DPST_GUARD_THRESHOLD_GB_MASK, val)
> > +
> > +#define _DPST_BIN_A					0x490C4
> > +#define _DPST_BIN_B					0x491C4
> > +#define DPST_BIN(pipe)
> > 	_MMIO_PIPE(pipe, _DPST_BIN_A, _DPST_BIN_B)
> > +#define DPST_BIN_DATA_MASK
> > 	REG_GENMASK(23, 0)
> > +#define DPST_BIN_BUSY					REG_BIT(31)
> > +
> > +#define INTEL_HISTOGRAM_PIPEA			0x90000000
> > +#define INTEL_HISTOGRAM_PIPEB			0x90000002
> > +#define INTEL_HISTOGRAM_EVENT(pipe)		PIPE(pipe, \
> > +						     INTEL_HISTOGRAM_PIPEA,
> \
> > +						     INTEL_HISTOGRAM_PIPEB)
>=20
> I don't think this is the right way. Lets have a file for intel_histogram=
_regs.h
> and intel_histogram.h That will look a lot cleaner.
>=20
> > +
> > +#define HISTOGRAM_BIN_COUNT			32
> > +#define HISTOGRAM_IET_LENGTH			33
> > +
> > +enum intel_global_hist_status {
> > +	INTEL_HISTOGRAM_ENABLE,
> > +	INTEL_HISTOGRAM_DISABLE,
> > +};
> > +
> > +enum intel_global_histogram {
> > +	INTEL_HISTOGRAM,
> > +};
> > +
> > +enum intel_global_hist_lut {
> > +	INTEL_HISTOGRAM_PIXEL_FACTOR,
> > +};
> > +
> > +int intel_histogram_atomic_check(struct intel_crtc *intel_crtc); int
> > +intel_histogram_update(struct intel_crtc *intel_crtc, bool enable);
> > +int intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32
> > +*data); int intel_histogram_init(struct intel_crtc *intel_crtc); void
> > +intel_histogram_deinit(struct intel_crtc *intel_crtc);
> > +
> > +#endif /* __INTEL_HISTOGRAM_H__ */
> > diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> > index b9670ae09a9e..424ea43016dd 100644
> > --- a/drivers/gpu/drm/xe/Makefile
> > +++ b/drivers/gpu/drm/xe/Makefile
> > @@ -238,6 +238,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
> >  	i915-display/intel_hdcp.o \
> >  	i915-display/intel_hdcp_gsc_message.o \
> >  	i915-display/intel_hdmi.o \
> > +	i915-display/intel_histogram.o \
> >  	i915-display/intel_hotplug.o \
> >  	i915-display/intel_hotplug_irq.o \
> >  	i915-display/intel_hti.o \
>=20
> Lets try to separate xe and i915 changes into different patches as well a=
s we
> can I know its tough to decouple some Changes but the ones that can be
> done should be.
>=20
> Regards,
> Suraj Kandpal
>=20
> > --
> > 2.25.1

