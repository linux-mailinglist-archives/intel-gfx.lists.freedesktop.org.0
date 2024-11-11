Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC059C4421
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 18:49:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A7DF10E2FA;
	Mon, 11 Nov 2024 17:49:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nvYg0QM0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE43789207;
 Mon, 11 Nov 2024 17:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731347372; x=1762883372;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=haJHVTZF9Qr4nTd2kMYfn0mmeFuVOpa7E1myjcgQ52k=;
 b=nvYg0QM0jh0n+OmbZLrZ4JIvam/JRcFZGX/ExKyC9cksfdzZRMiUTBOf
 euvWUJHsF3SoesRWMV0mJ0DyVaulEAEws8iwMH4iUokAehucc9fQOpJmM
 IpvVl/bGsqhOw/Uwx0nDTN0CJO2+jCYxj+UvegtI0puCicpHIC0a9LhDx
 tiOAhDqCLi+1wc0q0TOfLJSZtr3T6ToYIqU6twqgJeMHd54WM9gK9yu2F
 u+0t0Xt4BPd7sgEorZWuiLm9X3ZV+2ziwWEfN+uzxxCw9REIKziUMx2pj
 tb5bWZ1DuiVjJLKtftr0AiGBaZfwsXB9DCTmrn+b4B9SYAJplHN4SVWpG Q==;
X-CSE-ConnectionGUID: gTZlYXLgQO6gctSfKEdFhQ==
X-CSE-MsgGUID: nyraILRhQA6Xzp1thRAjhg==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="34025653"
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="34025653"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 09:49:31 -0800
X-CSE-ConnectionGUID: fhZe86L1Sti+E/bmzn2RHg==
X-CSE-MsgGUID: W4WrlEQuQtCVSbL6HuIdLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="91799621"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 09:49:31 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 09:49:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 09:49:27 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 09:49:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D0lkTVNZrszfdrpVs3rUCXeJaB13KwOY+triu3Xdo+dChKed6m7P+DUOUWcXwCu7UopHDLiRH+8J3bgdVd1mjbWh4A9djxG0armDb54+vCxpF/v2i/uVtBNvSBsGZwEmcIj0axk0YlZVLXpeJuFLgt+E9AG96wGBH6vlTW5TR20Xy1WZWJxYB2D8FrjRlySE4crXK3HCb70rpeyVyeW3japWxluKHksVqRNyHomPL/IdJ/ot08jJxJY6Pw86lgKgSPxuuP/+/IIpXfQxDUnEcmfHQpAEWejI1k/ti57kd63O2PiHp6VI0rs48Tvvh3tp/21MNDQjVYAlTO0jIRbL9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k8RJuK2nfjLo21kUcKj/37veJzp4wWZ10XpX3bLpQ0A=;
 b=HlaKNJEraEDZ/2MnbMJnHp55id6UgJ5FkU9zcsTkZMXHWa4E4POXzc+IgOEcJO7KUAbvtyOMrtm/Ybf6JWmJXcR/PO3HVZL/Q5HPY8P4g3UNKzhrKkZJGBMDMFenv4OOCq0Nn4KWQCam9blcQxUzVCZT98aa2Hc4gwIFFgISl/rmYCo96FtMV/GdqZO9+Q7V1ofiOPcx1e/f8FE/lEALPUZhl1S+sjKf/tTma544bOCUjungy4B6yPl/SBKOel02MapdsfMHolMuUbl3GIBTkuN4tdSASjqqSOz4ZnXP208ZR3G1p3tmV802SqD5mDFpEgw/O7908qa2ygqcLSuJ0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SA1PR11MB6687.namprd11.prod.outlook.com (2603:10b6:806:25a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.26; Mon, 11 Nov
 2024 17:49:25 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%7]) with mapi id 15.20.8137.027; Mon, 11 Nov 2024
 17:49:25 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Golani,
 Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Subject: RE: [PATCH 01/23] drm/i915/vrr: Refactor VRR Timing Computation
Thread-Topic: [PATCH 01/23] drm/i915/vrr: Refactor VRR Timing Computation
Thread-Index: AQHbNBmEMQJLBZpsAkiBOaHBwRWAWLKyW2lQgAAAXLA=
Date: Mon, 11 Nov 2024 17:49:25 +0000
Message-ID: <IA1PR11MB6467D55C66117A5013072C40E3582@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
 <20241111091221.2992818-2-ankit.k.nautiyal@intel.com>
 <IA1PR11MB64676835BA32BDC582DF93E9E3582@IA1PR11MB6467.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB64676835BA32BDC582DF93E9E3582@IA1PR11MB6467.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SA1PR11MB6687:EE_
x-ms-office365-filtering-correlation-id: 82051f31-0b5a-451a-9ca5-08dd02792e82
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?fFG53goi1GlIsDC1ok/5je51wJb4QqPCLzKe/bWkMSNaSoG5xbBdojZk5UXB?=
 =?us-ascii?Q?dxsY341hY7tsADoVZLONjxkRLcN1Veyt11VDNW+WcboodPktbpzn7zCR9hO+?=
 =?us-ascii?Q?1mW5Uqk8gubhLM9czxXi+oYLs79Qzr+oRyDCADFiGZHb9trbM837/p8310cZ?=
 =?us-ascii?Q?HvNKgxYnHRaR1Z9bTasywUOjeE2wOD/mNjGKhGkkEA8h9b2aaVf4XlORFj2g?=
 =?us-ascii?Q?HnFvbnIndueF5WNHtGvQYnwT0r52v6LzodE6ndH6/BUb8l4jQvYPEoK3vMCR?=
 =?us-ascii?Q?y5Vl+9r76d5Rg/hhX1obiOclDEgorl3jP2Jd+9WoElKqTvsJT4u2tenM9k54?=
 =?us-ascii?Q?UXHIAE3VbruH+1jUWbYdZLzBq0nmRcnXZK6FBV/7wGrd6Ztj4m+AhSffrADT?=
 =?us-ascii?Q?BwPwZpGAueWtsZDkf7YZs/fdr9+gZ1Ug990sT4p/JdpKnMhgBx6Ux5jutLE0?=
 =?us-ascii?Q?8EoYMV187WzMLg6keFErDRHyytI9A5xYKSyVqYQHS6idXZZg2mSUA4Yc0vUa?=
 =?us-ascii?Q?W7JBf3gEpj1RqJAGcU0Hrul5KwSZy6rvOc/34O7lbx5dBfIv1zxN9sHayUpS?=
 =?us-ascii?Q?c8eB/aDHtX6OJWwWstM75+kKTGtcfrIZjEgKdklX2ttSKiRDL0wL3W8a0ean?=
 =?us-ascii?Q?b9CThvZERJkQhApPpoHW24z8FNduM/IeGGiZwN2UePFA5O4zQKTDCHgMDqfH?=
 =?us-ascii?Q?kyUQUQbCTBr/8OkMS/I1OD8wexl+QVGHw+8pYyLURf+SOCpz1T1ZBDyKSgYt?=
 =?us-ascii?Q?3l8qg20hubGe+HoimnumHsiGFFlJzkdM/joYUdRW2KeqAJJuj0JkuzmJI7xf?=
 =?us-ascii?Q?TpNCwLAijrPhPNnUFn2uCfd4ZN/WWopt229QuglEvb4vrssCTa0ykOHInw6G?=
 =?us-ascii?Q?UlsRCUMvGzLfoPkNnIMDEBJXeZWdNtdmvZDfnYHCAMByRXs58kiNT+ZCjAWa?=
 =?us-ascii?Q?moKFnf4GKZQbV4O7nwZgcC4xOq0yonbhqj83bKxGe60EVzyuKNr6jKHrlNEC?=
 =?us-ascii?Q?NbXv5l7d6Dp7b+py2yynzJ3sREBriqAjc2RWCHr5t2kOUv22Q9mrrCVaYhat?=
 =?us-ascii?Q?V4+KqoGznNdDD8KaaW3HmW/9ICYrp29nvlxwC0hP+Dv3Ys+iwPHVemlInq2k?=
 =?us-ascii?Q?X25gZ+Pe6h+pcmnCwEvv6f3PN48qCCTzK/NBGvaIVlJvTOpFRmR0getaE8lw?=
 =?us-ascii?Q?z6HEssuY8yrGCqqfLL+FO957O4Y+JF7VvUUUHtdpVyxeeKbXyAgeyqaED+VT?=
 =?us-ascii?Q?R2bDirs4pXrgTq8ckzLZQPOLu15Qhu6adcdjkgAR6lFnFgof9u4kWk+QVv4O?=
 =?us-ascii?Q?rQOkGPSD1B4ew1aCWW+DO8rAmg9rJl8VPUJaiIwk9OSt7czhsTC72MFPmepu?=
 =?us-ascii?Q?+xO9vxw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BNW2cb/qHsX1UDGU76W8sfgfI7Q+GS6ljlNL0j1CHJoBZJRd6N9Nstm1BW5l?=
 =?us-ascii?Q?JothnrmPIfiA+vQBvoNw81yIQ+o/Q4Bi+bJgjq0UaFCjHbN+g+9t/JQE7HO+?=
 =?us-ascii?Q?qPWSezGKnztLfgXsjJS3oYz5BIY7YQLWdkVoZkxwVu1uwLaQi/l4oDZfcoJJ?=
 =?us-ascii?Q?e5AFrlYqsvN3Xqzh1He/IHGpgA88oLs+fZ8NJTHAak62Oyt+MEIfh1RsWb2F?=
 =?us-ascii?Q?uIHWv7vEe91afu9zvaAVTlpvcok18fken+q7TvihxSyI/tu/7BfQZ49wjiP7?=
 =?us-ascii?Q?l7bEziFR1yM9yHjpAM8BFqmGEIDsPPm+G024VCnjjWbaYPVeEEIitM9ma4LD?=
 =?us-ascii?Q?kh1aoSieKPwP+ZA2XD07atB5fjqA9xnDNTQ/m5RvIwvylfDz4dfXxffFybUj?=
 =?us-ascii?Q?XvjPnQ7Cc/XsflyxdbFbZGDyJtXNb/kVKrdzS6QwzgqVEZ7+v05VFsle1lOg?=
 =?us-ascii?Q?YFgs0RiGn4PqsjVNYazXS6SYTAnOq9Qo9Gi0cniIvaWzjGJz8vIcuDDKXWv+?=
 =?us-ascii?Q?pclsybslCgaEoKH6Xyo/KKI7ifX/56Goe8PMBygGEqQNEbUzI48TkpBmR7Jz?=
 =?us-ascii?Q?8zO0ZFLnhQPPBeeWP867DHKONsE5j5JFkt0GOsV4ZLiKAbBSVoPiE37IRhGR?=
 =?us-ascii?Q?rixnmp6bHymB2wnQxtIsVgp33yww0njqpLSCrMsGDfd81FCoGTwclCeUNUXg?=
 =?us-ascii?Q?27RHwXV6+Nn6yfp2uUZ35myqDjjiYNkzw+C+X5AfKC/Qd6eRt2RrRQF+sxqN?=
 =?us-ascii?Q?5KX3GsneXpUrISihHnz2LXx0YlTeH8uFasnt7AB5Jqs3zULQrtvPUDNnGc4m?=
 =?us-ascii?Q?el3dO552HH+i3dNGgbu8b+ZEGwdp3R3FSyYp2iCkzqx+vKdMC+RRuW5zoElu?=
 =?us-ascii?Q?UPrSP2j3zjpmncfQz21HqGLWM+eDYE1+dIxvJ4sPneb9X2EtC7y0gN7l+eL1?=
 =?us-ascii?Q?ohT90wigQkvURTySNS+9g9Vy9TeUnlVBGTcQpnxd84b6DiDMUDFghh4gKp9p?=
 =?us-ascii?Q?PPvAqBXnSImRdc3flJixY5J4UfKJUKQC5dXIB+ne3yMGwcovHCTwx1EH03ff?=
 =?us-ascii?Q?Zvs97H40uop2DaaiD05/PbejDDPHbiV7Eik8UcHBegrapZbXNp+i2SAe2Rm0?=
 =?us-ascii?Q?cT6Wiaa+cTgGZxJI4vS3aFscg007tYJgmsqQ0T7Kd+M41qRWyGa6grM154ED?=
 =?us-ascii?Q?+D5aWIvR7olbp+juppvwXckZiV2j+IcKQOpQ2UEhGS3iDibemy0bFPUdZtmf?=
 =?us-ascii?Q?7b1vR6YA5bMHMfY/AMJSLTsSk7zkZj4WULbHxshO2oUsvJFt7chjxf7vqjQv?=
 =?us-ascii?Q?ier/OL/yMupjmZCH+gvceACt1w/IjmdnJG0si7Bcw/ag13/lxIVEQLez+QSh?=
 =?us-ascii?Q?Pcf3yVC8jeuYkG9uMbaA63a91UqrmSz1TNxzsmVxK/Q2NgYInjBUQNb9mrxW?=
 =?us-ascii?Q?YT6Bd09eo0ev8vta5VvzjdWDlW1ISF/IEh1c/xnmImf2gdzndGkPZIv+vVy0?=
 =?us-ascii?Q?oUqadPLJNzwppOI4nD6eXXT0fi4DhrQOdk+Y0n4Jr/Bk7fDvRtb5XEFOKnj5?=
 =?us-ascii?Q?SXd3fZijdu8cjneoxk05e9IKa2fjYBrtbXifD3ME?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82051f31-0b5a-451a-9ca5-08dd02792e82
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2024 17:49:25.0689 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bLK36iestLPOuxA+fsnCis9koFtC3macQrJo+M83A4Zlcuam3OKT9iDLJMt4CxZi2n9ZlGniXHy0mfEZnXnw9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6687
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
> From: Garg, Nemesa
> Sent: Monday, November 11, 2024 11:19 PM
> To: 'Ankit Nautiyal' <ankit.k.nautiyal@intel.com>; intel-gfx@lists.freede=
sktop.org
> Cc: intel-xe@lists.freedesktop.org; jani.nikula@linux.intel.com;
> ville.syrjala@linux.intel.com; Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Subject: RE: [PATCH 01/23] drm/i915/vrr: Refactor VRR Timing Computation
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Ankit Nautiyal
> > Sent: Monday, November 11, 2024 2:42 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org; jani.nikula@linux.intel.com;
> > ville.syrjala@linux.intel.com; Golani, Mitulkumar Ajitkumar
> > <mitulkumar.ajitkumar.golani@intel.com>
> > Subject: [PATCH 01/23] drm/i915/vrr: Refactor VRR Timing Computation
> >
> > Introduce helper functions to compute timins gfor different mode of
> > operation of VRR timing generator.
> >
> Typo : timing

Thanks and Regards,
Nemesa

> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vrr.c | 115
> > +++++++++++++++--------
> >  1 file changed, 75 insertions(+), 40 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 19a5d0076bb8..defe346b0261 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -161,6 +161,73 @@ cmrr_get_vtotal(struct intel_crtc_state
> > *crtc_state, bool video_mode_required)
> >  	return vtotal;
> >  }
> >
> > +static
> > +void intel_vrr_compute_cmrr_timings(struct intel_crtc_state
> > +*crtc_state) {
> > +	crtc_state->vrr.enable =3D true;
> > +	crtc_state->cmrr.enable =3D true;
> > +	/*
> > +	 * TODO: Compute precise target refresh rate to determine
> > +	 * if video_mode_required should be true. Currently set to
> > +	 * false due to uncertainty about the precise target
> > +	 * refresh Rate.
> > +	 */
> > +	crtc_state->vrr.vmax =3D cmrr_get_vtotal(crtc_state, false);
> > +	crtc_state->vrr.vmin =3D crtc_state->vrr.vmax;
> > +	crtc_state->vrr.flipline =3D crtc_state->vrr.vmin;
> > +	crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR; }
> > +
> > +static
> > +int intel_vrr_compute_vmin(struct intel_connector *connector,
> > +			   struct drm_display_mode *adjusted_mode) {
> > +	int vmin;
> > +	const struct drm_display_info *info =3D &connector->base.display_info=
;
> > +
> > +	vmin =3D DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> > +			    adjusted_mode->crtc_htotal * info-
> > >monitor_range.max_vfreq);
> > +	vmin =3D max_t(int, vmin, adjusted_mode->crtc_vtotal);
> > +
> > +	return vmin;
> > +}
> > +
> > +static
> > +int intel_vrr_compute_vmax(struct intel_connector *connector,
> > +			   struct drm_display_mode *adjusted_mode) {
> > +	int vmax;
> > +	const struct drm_display_info *info =3D &connector->base.display_info=
;
> > +
> > +	vmax =3D adjusted_mode->crtc_clock * 1000 /
> > +		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
> > +
> > +	vmax =3D max_t(int, vmax, adjusted_mode->crtc_vtotal);
> > +
> > +	return vmax;
> > +}
> > +
> > +static
> > +void intel_vrr_prepare_vrr_timings(struct intel_crtc_state
> > +*crtc_state, int vmin, int vmax) {
> > +	/*
> > +	 * flipline determines the min vblank length the hardware will
> > +	 * generate, and flipline>=3Dvmin+1, hence we reduce vmin by one
> > +	 * to make sure we can get the actual min vblank length.
> > +	 */
> > +	crtc_state->vrr.vmin =3D vmin - 1;
> > +	crtc_state->vrr.vmax =3D vmax;
> > +	crtc_state->vrr.flipline =3D crtc_state->vrr.vmin + 1; }
> > +
> > +static
> > +void intel_vrr_compute_vrr_timings(struct intel_crtc_state
> > +*crtc_state, int vmin, int vmax) {
> > +	intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
> > +	crtc_state->vrr.enable =3D true;
> > +	crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR; }
> > +
> >  void
> >  intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
> >  			 struct drm_connector_state *conn_state) @@ -171,7
> > +238,6 @@ intel_vrr_compute_config(struct intel_crtc_state
> > +*crtc_state,
> >  	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> >  	bool is_edp =3D intel_dp_is_edp(intel_dp);
> >  	struct drm_display_mode *adjusted_mode =3D &crtc_state-
> > >hw.adjusted_mode;
> > -	const struct drm_display_info *info =3D &connector->base.display_info=
;
> >  	int vmin, vmax;
> >
> >  	/*
> > @@ -192,49 +258,18 @@ intel_vrr_compute_config(struct intel_crtc_state
> > *crtc_state,
> >  	if (HAS_LRR(display))
> >  		crtc_state->update_lrr =3D true;
> >
> > -	vmin =3D DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> > -			    adjusted_mode->crtc_htotal * info-
> > >monitor_range.max_vfreq);
> > -	vmax =3D adjusted_mode->crtc_clock * 1000 /
> > -		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
> > -
> > -	vmin =3D max_t(int, vmin, adjusted_mode->crtc_vtotal);
> > -	vmax =3D max_t(int, vmax, adjusted_mode->crtc_vtotal);
> > +	vmin =3D intel_vrr_compute_vmin(connector, adjusted_mode);
> > +	vmax =3D intel_vrr_compute_vmax(connector, adjusted_mode);
> >
> >  	if (vmin >=3D vmax)
> >  		return;
> >
> > -	/*
> > -	 * flipline determines the min vblank length the hardware will
> > -	 * generate, and flipline>=3Dvmin+1, hence we reduce vmin by one
> > -	 * to make sure we can get the actual min vblank length.
> > -	 */
> > -	crtc_state->vrr.vmin =3D vmin - 1;
> > -	crtc_state->vrr.vmax =3D vmax;
> > -
> > -	crtc_state->vrr.flipline =3D crtc_state->vrr.vmin + 1;
> > -
> > -	/*
> > -	 * When panel is VRR capable and userspace has
> > -	 * not enabled adaptive sync mode then Fixed Average
> > -	 * Vtotal mode should be enabled.
> > -	 */
> > -	if (crtc_state->uapi.vrr_enabled) {
> > -		crtc_state->vrr.enable =3D true;
> > -		crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;
> > -	} else if (is_cmrr_frac_required(crtc_state) && is_edp) {
> > -		crtc_state->vrr.enable =3D true;
> > -		crtc_state->cmrr.enable =3D true;
> > -		/*
> > -		 * TODO: Compute precise target refresh rate to determine
> > -		 * if video_mode_required should be true. Currently set to
> > -		 * false due to uncertainty about the precise target
> > -		 * refresh Rate.
> > -		 */
> > -		crtc_state->vrr.vmax =3D cmrr_get_vtotal(crtc_state, false);
> > -		crtc_state->vrr.vmin =3D crtc_state->vrr.vmax;
> > -		crtc_state->vrr.flipline =3D crtc_state->vrr.vmin;
> > -		crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;
> > -	}
> > +	if (crtc_state->uapi.vrr_enabled)
> > +		intel_vrr_compute_vrr_timings(crtc_state, vmin, vmax);
> > +	else if (is_cmrr_frac_required(crtc_state) && is_edp)
> > +		intel_vrr_compute_cmrr_timings(crtc_state);
> > +	else
> > +		intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
> >
> >  	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
> >  		crtc_state->vrr.vsync_start =3D
> > --
> > 2.45.2

