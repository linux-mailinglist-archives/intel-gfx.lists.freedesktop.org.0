Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F232A93B530
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 18:42:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E52E010E752;
	Wed, 24 Jul 2024 16:42:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b4sMpg/T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4046810E752
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2024 16:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721839345; x=1753375345;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HOwHycEkEKNrscKMvcMy9ueX1tcPCoeloJlVd0V06UA=;
 b=b4sMpg/TapsyGV63/tBZL8cavTM5W+t+33wXM9bMspC3j3s1sR1NtuZ/
 nbeuTr8HOASF94Xzmoomggr1SJcC97eQOFL5ury9cyfVdKS89NhwGpSo3
 JHiQUH4QoO6mp+H4NUIG52UaxU6QSaq34RINHybskZMcV0i1cGJL3aFDC
 YCp8IPcG8tN8lgkS4KBKcr91Q24IrN+HNhIksbzWOyjJSs+LzbD/8Ds1d
 MQGdR7fZvhRNzQv4q9ORlhFhd24J2LovH5AGkrIhZ+ZXNLWPf0/jE5MgV
 dh2hKhiiW11iXS42vFysSz0z4LMSI7v3PTupEpUW70ZGwWWkQFmpGAh3S Q==;
X-CSE-ConnectionGUID: UN1/Fx3iQ0CayME6HlsKAg==
X-CSE-MsgGUID: A6Ig/aK0RQipQLpxk1KWJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="36987354"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="36987354"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 09:42:25 -0700
X-CSE-ConnectionGUID: HCh/kBp0S3G+UUOeW9HLcQ==
X-CSE-MsgGUID: SAsvcBBkTPCeDYz2vwlkbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="57778340"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jul 2024 09:42:25 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 09:42:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 09:42:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 24 Jul 2024 09:42:24 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 24 Jul 2024 09:42:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WmTSjk8RHZXpM6bGecNZWjLoOiA6xe611VGnTbSV7svMaNsZ/4Zk3aoMwFH8Uwf+I1dD0SQOnA7qxSo8tmBiGpmM5pegnQ87FeWI2hIwnypfdDb9gsXIj3X0pzy7qCPTHPckcY+bmGfiXP5wswadYHfd3tEEW+bps6ZzvIl4rspbXJKXlI5yxOdftb+oyUXlkHvx3mBgM4DcJOv3MCrV/pLrU5arnkiTjao1at0FqKrmg7iuhnWs6m+9VIRPqyggippByG5eHjyOJbl3kOVywmeNdM6G6g7KzWLRZdEgmWebMzxqrYNb4QJan2+/h3Hv+bNMiasAnDlcg5PkzZPd5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lBuZ2WbfpamLs9qd48SPrfuh2De7NGQcPfF9X3LmWbg=;
 b=cBs9Gm7U0l6dE4CMXPwdD6Cw7VgBLyLcrC6wS8tfAR5jd5hAnyZTvq/BbBOa8ao347eqcG9Cf4NjIhKmayedGaDcJCGwdudJuJ0++0rMN6/YaiaabZYtWIZHJQcxG5vHfDoNmGqTkd+5ick0HhOpNBZ/oeQimnDh0MIsojxyYFP6+5XKw2HtGi6YNXlI6mLh0y0OtQs7RcjUjdrZ+iihIyOYSmWNqQsdP4f6HjNML9YAKeLCLNpRqSACUseWELbKmd7uWSLEQIW/1L9hUx9XHnh9ZWsNwQWeO+vaE5YKPOy2nVHALh5VzNtv6jjDZsM75c5ikdGOYtZji/zRqwqEEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CYYPR11MB8431.namprd11.prod.outlook.com (2603:10b6:930:c7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Wed, 24 Jul
 2024 16:42:20 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.016; Wed, 24 Jul 2024
 16:42:20 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 09/14] drm/i915/dp_mst: Reduce the link parameters in BW
 order after LT failures
Thread-Topic: [PATCH 09/14] drm/i915/dp_mst: Reduce the link parameters in BW
 order after LT failures
Thread-Index: AQHa3FgM11VMltD9wkCfniFCeS81r7IFbRvAgABTBICAAFfccA==
Date: Wed, 24 Jul 2024 16:42:20 +0000
Message-ID: <SN7PR11MB675097B5538564A5DDB93AC0E3AA2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-10-imre.deak@intel.com>
 <SN7PR11MB6750ECC7B34BB74287512147E3AA2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <ZqDlB__YkeBh8Cs2@ideak-desk.fi.intel.com>
In-Reply-To: <ZqDlB__YkeBh8Cs2@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CYYPR11MB8431:EE_
x-ms-office365-filtering-correlation-id: 9378c438-4317-4974-2d01-08dcabff960d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?G8vf8VTfmTlNxSNhF4QGbQ9m4qpLCAPAEqBiu8DGwcjJ2MaZHa4wDu4Ftkqg?=
 =?us-ascii?Q?ovNqswbdce51dHQmxL7eQIxbEuNcjgAZPK2kLiuM4xo5/VcNpJSlR2fkif+1?=
 =?us-ascii?Q?vogqsMhsMCTNAGgW6q4+Dd9OYF1bjdawsDYlo17VfCXvxMR5ZZnXCpLGGhTT?=
 =?us-ascii?Q?8Pu3r0EmPej6irjXz6OEnL9YY5dcISraRK/UWour24d7S6GD1hdBfNTuepJa?=
 =?us-ascii?Q?cqO6zR+bNRvhEctHKji9kxhimeKwKgJIAOsq88A4G4axV/8ltArBmMNWr+m+?=
 =?us-ascii?Q?ytot2BoBdmyWNts874+FtxRzqzJOIAn4wjZ6BYu89Cj8iFSXsCEb5ICu1Lgw?=
 =?us-ascii?Q?ioYVR8o+7HD95lRP0uwJJyHoBMjR2QwqB3Je51fAbLHZ2R4/A3fLEmtdZfGY?=
 =?us-ascii?Q?3rD4+l2w6VwJ/IEI8tGY2tmkxwbviYyNRhb8hJZfzhF5yxEu5deJVBlwhtDz?=
 =?us-ascii?Q?m1izS8SYmWbZjmqDxq6h4SRaK46jbtccpIKCKQ8HCQZYP0pyvAflIsWmGQKX?=
 =?us-ascii?Q?LCKrJ4D7cUVJ+PWmldU0T/axw+94koSEhjTcG8Q3Y6ouuOEw2LSHOxiz5t18?=
 =?us-ascii?Q?q/721rLo+b6Feysh2Ht1wLERJir7D0alSkUGHuyAn9FOBdF2r8lWpBPKVfWY?=
 =?us-ascii?Q?IZCgIFloCq4RM04rRo5EzzLVh/ZtVcL+tUwfhbrxIQ1P2J5M5JHanXn0Ls++?=
 =?us-ascii?Q?POl+Tc4UV4L36devC/MU/0nM8rc6WtpKQZG8e0l1YRvzQJRiIVSqU7Azfcz8?=
 =?us-ascii?Q?BkmC9l6/Bq+yytWlwj/5PvjQEVqTTbXuGQvi6EB1fVJ5+t6agN5M/ppMhXq3?=
 =?us-ascii?Q?5yj9fYZOtU5V5xx30UUJ+VNukif8OGhjWglGTCVq23RLIRnu8yqdfOE11VvQ?=
 =?us-ascii?Q?IhdK8nacHzDJyh+EVo1xX16VyWCUUS5U4yhHY+lABML2j6CL9ZbPO2HzxXP8?=
 =?us-ascii?Q?dZB9OwMYvLqK5/jAZgHMc6BFzri5OQh4B4TPD4pkJpqzLBjGgR2+TltRLQgk?=
 =?us-ascii?Q?6Xm4vxcLy7dMCGTUKW/7QoZiClrNtVvskndJn6Xqzd4RQHGTNG/xiOrA2xdP?=
 =?us-ascii?Q?xuSWuZCCJItfkr59xeB2J6PVnvSpjnLrCQDhYTxH7DvJBCLiaY+tj/wScQrD?=
 =?us-ascii?Q?XQcdFgwNik3AosbYCdp19bPBbehzBtE/JnKnSBzWQR5J/dJZwmXTwSHxSNap?=
 =?us-ascii?Q?cqt6PyJU9vK+F7MIf6ta/tSUfYzekL0L+0BM0fMXolIEuI2xr07QHFNYW0ys?=
 =?us-ascii?Q?5fKrNfyBQowrTyu1dqLNrQlRLhXPaua7VYRMYBiWcogTn7zPiNsTRxEEk1xN?=
 =?us-ascii?Q?LcrHaDgUmGbc3AD2IOdOxjwQ5IMMu/3nv0h3f3xnjducGgW+ZmRX8spvRHmL?=
 =?us-ascii?Q?odW+hiGlHGAT+RqVvYYcaCOyP+TIafixfufsHcjsPNTvfR7Slg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?n5mctjozssSpzwYAUUuGlsM/36itBL/0Y4DcOHvp2cIMo43x/1q0+J6OP1uM?=
 =?us-ascii?Q?0tsMqw/Zs83al93fl3oh/rFU8yow7K/deAb4mN0nxjB75oS5v0wb+aTimZhL?=
 =?us-ascii?Q?sS480qtoE997yLizrgh4Rq8W4QeQc9Wh4Oyk3vraFjX/ZWVQGs1uxCPKLZsW?=
 =?us-ascii?Q?qNw7Cn7tUOKOjNzIi1OmllT/Iem98uMUth01Uf98s88bzLD7aRzo3kvI/nnO?=
 =?us-ascii?Q?Fh+QRrrunKXqMUmQ6g0x0jZHBjqeMXHJd/lDz3RY5XivYexITtzkxOUoLOKv?=
 =?us-ascii?Q?WfBVYxk6U3N42iiIPSp2lBIt4IlfWWZFVAx+ASfVah4DZxcydm6nqkHR7qm8?=
 =?us-ascii?Q?WImUGl/YGwfzIXkR2kBuS9qeJNE69SqG4lmFZwywzPkQ+nDvnMCau1KmgYjJ?=
 =?us-ascii?Q?KClG/sMe7Fyp1uMh5C0cCQaVSDJ7IuuBp7Q/x854nISsdx3JDLbwEFX3j3SI?=
 =?us-ascii?Q?EVEuhjFq9cReY05VfcX0BsGGpsOhKFG3B1gKrtSKb0eloo+ju0ohOfpfd8pO?=
 =?us-ascii?Q?YLKlQZa1um+7UN/rPiw0bs1fNsucRYa5HjM9PUjfYi7btqSMsAYaZ+p0rMdA?=
 =?us-ascii?Q?/ZbRfTqnOxI/XLM25wnORsYfemcAEjz9RqCuFfNaYUDxDWlZxpV9nEixT2m3?=
 =?us-ascii?Q?l0NJUUo7J7HtOkQDPt5N2y8B09kMxHyFez6slcqrWTCiXRTz4Y/VuzWoc+n0?=
 =?us-ascii?Q?W78MFAc77kbnsSusnxjx2BW2zPFgMHTEohtfxGzaLgwzFowmgKr1eRyLFEuQ?=
 =?us-ascii?Q?ReRjqg/PQZvFg7gh3aUCX1MqiM4jXI/wE52oau4FPi4P6W9Ejv12cUvC0gxr?=
 =?us-ascii?Q?qk7MxlJnB7Jxe839Ek5jxq9EVlEzpw7XqXNqEINbHv06kNsxkEW0kH7W15KB?=
 =?us-ascii?Q?C9uifH6X1t4MqP9VGX404RDfBXGYEGWu3YjJ3O/7EHsT2jxbcCI8QO0/fVTC?=
 =?us-ascii?Q?Oj5z5I2LcMA3WYM8MX+92NRmTOed/jR3wzWyraWTaBcyJKx9/iCpC/RrirxP?=
 =?us-ascii?Q?JHRDZoyqMTXVgFy9EIONbouqxn4cJtW+QxOffMYkTgMcpxVYzqgGwtL/f2oe?=
 =?us-ascii?Q?VzZCg8m00Cv+ZmwzFURl9QfE21O1Gt/vdz3oJwfE8HO0bt6aIUKlLsrmUkHO?=
 =?us-ascii?Q?0YBw4uDh2SZEL2eWdlix6djNHCALJmRTyCExe3KtAhu5dMpNYGyVjK3YrYXY?=
 =?us-ascii?Q?ra2OHjkaIRjik1Htcl2iHopcP7iz4icTu9UTLX5uMmz5dwv9ClbteXv3Q1NO?=
 =?us-ascii?Q?BxSNHHFulQCz+uEvhoLoZq7McKSLKIbr/hcPKpMeOcXIlS7cwlERrxbQf4G4?=
 =?us-ascii?Q?vI6JBc/9tFX6Or5g2OALcQJcmuNiLrHzobHKjuGSzzqcPB1T5VzSEF+6YkHk?=
 =?us-ascii?Q?ScFwTmZ7phnOSQ6AZcrAbVcHFiBVNGtvJiBICFYCTtCLsgiHyU4LDRc3QU5U?=
 =?us-ascii?Q?+tImazyyGv/brq29T8+lChKAWUNFze1UqYVT6R586YUY3bCBsSlEAxLGIdQE?=
 =?us-ascii?Q?6lvpMNuqIkAa98HegZaaAdfohpDMK3W/n1Rk+MMaw4It7MlpO+E9GR0/hRje?=
 =?us-ascii?Q?ey2ByG6FqpNv9MDBrvyrfgc/WdUpOjcxAanLD1vI?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9378c438-4317-4974-2d01-08dcabff960d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2024 16:42:20.2106 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xC0B7OA43r8QIrIH8f50Xt5B/ReiaItrHqwUUCPAZBOxrkAiivKSSOD2wVh/dWVTK+gKg1hjSM7a26F1QOlBBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8431
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
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Wednesday, July 24, 2024 4:57 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 09/14] drm/i915/dp_mst: Reduce the link parameters in
> BW order after LT failures
>=20
> On Wed, Jul 24, 2024 at 09:43:55AM +0300, Kandpal, Suraj wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Imre Deak
> > > Sent: Monday, July 22, 2024 10:25 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [PATCH 09/14] drm/i915/dp_mst: Reduce the link parameters
> > > in BW order after LT failures
> > >
> > > On MST links - at least for some MST branch devices - the list of
> > > modes returned to users on an enabled link depends on the current
> > > link rate/lane count parameters (besides the DPRX link capabilities,
> > > any MST branch BW limit and the maximum link parameters reduced
> > > after LT failures). In particular the MST branch BW limit may depend
> > > on the link rate/lane count parameters programmed to DPCD. After an
> > > LT failure and limiting the maximum link parameters accordingly,
> > > users should see a mode list reflecting these new limits. However
> > > with the current fallback order this isn't ensured, as the new limit
> > > could allow for modes requiring a higher link BW, but these modes wil=
l
> be filtered out due to the enabled link's lower link BW.
> > >
> > > Ensure that the mode list changes in a consistent way after a link
> > > training failure and reducing the link parameters by changing the
> > > fallback order on MST links to happen in BW order.
> > >
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_types.h    |  12 ++
> > >  drivers/gpu/drm/i915/display/intel_dp.c       | 111 ++++++++++++++++=
++
> > >  drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
> > >  .../drm/i915/display/intel_dp_link_training.c |  43 ++++++-
> > >  4 files changed, 166 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index 3501125c55158..51e2151315977 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1778,6 +1778,18 @@ struct intel_dp {
> > >       int common_rates[DP_MAX_SUPPORTED_RATES];
> > >       struct {
> > >               /* TODO: move the rest of link specific fields to here
> > > */
> > > +             /* common rate,lane_count configs in bw order */
> > > +             int num_configs;
> > > +#define INTEL_DP_MAX_LANE_COUNT                      4
> > > +#define INTEL_DP_MAX_SUPPORTED_LANE_COUNTS
> > >       (ilog2(INTEL_DP_MAX_LANE_COUNT) + 1)
> >
> > I feel this name could be a little confusing this define here I am
> > assuming the Different lane count configs we can support which would
> > be 1,2,4 hence 3, Maybe renaming it as  DP_MAX_LANE_COUNT_CONFIG
>=20
> Ok, will rename it to INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS.
>=20
> > > +#define INTEL_DP_LANE_COUNT_EXP_BITS
> > >       order_base_2(INTEL_DP_MAX_SUPPORTED_LANE_COUNTS)
> > > +#define INTEL_DP_LINK_RATE_IDX_BITS          (BITS_PER_TYPE(u8) -
> > > INTEL_DP_LANE_COUNT_EXP_BITS)
> > > +#define INTEL_DP_MAX_LINK_CONFIGS
> > >       (DP_MAX_SUPPORTED_RATES * \
> > > +
> > > INTEL_DP_MAX_SUPPORTED_LANE_COUNTS)
> > > +             struct intel_dp_link_config {
> > > +                     u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
> > > +                     u8
> > > lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
> > > +             } configs[INTEL_DP_MAX_LINK_CONFIGS];
> > >               /* Max lane count for the current link */
> > >               int max_lane_count;
> > >               /* Max rate for the current link */ diff --git
> > > a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 0882dddd97206..d3529c5836393 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -29,6 +29,7 @@
> > >  #include <linux/i2c.h>
> > >  #include <linux/notifier.h>
> > >  #include <linux/slab.h>
> > > +#include <linux/sort.h>
> > >  #include <linux/string_helpers.h>
> > >  #include <linux/timekeeping.h>
> > >  #include <linux/types.h>
> > > @@ -634,6 +635,114 @@ int intel_dp_rate_index(const int *rates, int
> > > len, int rate)
> > >       return -1;
> > >  }
> > >
> > > +static int intel_dp_link_config_rate(struct intel_dp *intel_dp,
> > > +                                  const struct intel_dp_link_config =
*lc) {
> > > +     return intel_dp_common_rate(intel_dp, lc->link_rate_idx); }
> > > +
> > > +static int intel_dp_link_config_lane_count(const struct
> > > +intel_dp_link_config *lc) {
> > > +     return 1 << lc->lane_count_exp; }
> > > +
> > > +static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
> > > +                                const struct intel_dp_link_config *l=
c) {
> > > +     return
> > > drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(intel_dp, lc),
> > > +
> > > +intel_dp_link_config_lane_count(lc));
> > > +}
> > > +
> > > +static int link_config_cmp_by_bw(const void *a, const void *b,
> > > +const void *p) {
> > > +     struct intel_dp *intel_dp =3D (struct intel_dp *)p;       /* re=
move const
> */
> > > +     const struct intel_dp_link_config *lc_a =3D a;
> > > +     const struct intel_dp_link_config *lc_b =3D b;
> > > +     int bw_a =3D intel_dp_link_config_bw(intel_dp, lc_a);
> > > +     int bw_b =3D intel_dp_link_config_bw(intel_dp, lc_b);
> > > +
> > > +     if (bw_a !=3D bw_b)
> > > +             return bw_a - bw_b;
> > > +
> > > +     return intel_dp_link_config_rate(intel_dp, lc_a) -
> > > +            intel_dp_link_config_rate(intel_dp, lc_b); }
> > > +
> > > +static void link_config_swap(void *a, void *b, int size, const void
> > > +* __always_unused p) {
> > > +     struct intel_dp_link_config *lc_a =3D a;
> > > +     struct intel_dp_link_config *lc_b =3D b;
> > > +
> > > +     swap(*lc_a, *lc_b);
> > > +}
> > > +
> > > +static void intel_dp_link_config_init(struct intel_dp *intel_dp) {
> > > +     struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > > +     struct intel_dp_link_config *lc;
> > > +     int num_common_lane_counts;
> > > +     int i;
> > > +     int j;
> > > +
> > > +     if (drm_WARN_ON(&i915->drm,
> > > !is_power_of_2(intel_dp_max_common_lane_count(intel_dp))))
> > > +             return;
> > > +
> > > +     num_common_lane_counts =3D
> > > +ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;
> >
> > Same thing here can we rename it as num_common_lane_count_config
>=20
> Ok, will rename to num_common_lane_configs.
>=20

Rest LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> > Regards,
> > Suraj Kandpal
> > > +
> > > +     if (drm_WARN_ON(&i915->drm, intel_dp->num_common_rates *
> > > num_common_lane_counts >
> > > +                                 ARRAY_SIZE(intel_dp->link.configs))=
)
> > > +             return;
> > > +
> > > +     intel_dp->link.num_configs =3D intel_dp->num_common_rates *
> > > +num_common_lane_counts;
> > > +
> > > +     lc =3D &intel_dp->link.configs[0];
> > > +     for (i =3D 0; i < intel_dp->num_common_rates; i++) {
> > > +             for (j =3D 0; j < num_common_lane_counts; j++) {
> > > +                     lc->lane_count_exp =3D j;
> > > +                     lc->link_rate_idx =3D i;
> > > +
> > > +                     lc++;
> > > +             }
> > > +     }
> > > +
> > > +     sort_r(intel_dp->link.configs, intel_dp->link.num_configs,
> > > +            sizeof(intel_dp->link.configs[0]),
> > > +            link_config_cmp_by_bw, link_config_swap,
> > > +            intel_dp);
> > > +}
> > > +
> > > +void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx,
> > > +int *link_rate, int *lane_count) {
> > > +     struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > > +     const struct intel_dp_link_config *lc;
> > > +
> > > +     if (drm_WARN_ON(&i915->drm, idx < 0 || idx >=3D intel_dp-
> > > >link.num_configs))
> > > +             idx =3D 0;
> > > +
> > > +     lc =3D &intel_dp->link.configs[idx];
> > > +
> > > +     *link_rate =3D intel_dp_link_config_rate(intel_dp, lc);
> > > +     *lane_count =3D intel_dp_link_config_lane_count(lc);
> > > +}
> > > +
> > > +int intel_dp_link_config_index(struct intel_dp *intel_dp, int
> > > +link_rate, int lane_count) {
> > > +     int link_rate_idx =3D
> > > +intel_dp_rate_index(intel_dp->common_rates,
> > > intel_dp->num_common_rates,
> > > +                                             link_rate);
> > > +     int lane_count_exp =3D ilog2(lane_count);
> > > +     int i;
> > > +
> > > +     for (i =3D 0; i < intel_dp->link.num_configs; i++) {
> > > +             const struct intel_dp_link_config *lc =3D &intel_dp-
> > > >link.configs[i];
> > > +
> > > +             if (lc->lane_count_exp =3D=3D lane_count_exp &&
> > > +                 lc->link_rate_idx =3D=3D link_rate_idx)
> > > +                     return i;
> > > +     }
> > > +
> > > +     return -1;
> > > +}
> > > +
> > >  static void intel_dp_set_common_rates(struct intel_dp *intel_dp)  {
> > >       struct drm_i915_private *i915 =3D dp_to_i915(intel_dp); @@
> > > -652,6
> > > +761,8 @@ static void intel_dp_set_common_rates(struct intel_dp
> > > *intel_dp)
> > >               intel_dp->common_rates[0] =3D 162000;
> > >               intel_dp->num_common_rates =3D 1;
> > >       }
> > > +
> > > +     intel_dp_link_config_init(intel_dp);
> > >  }
> > >
> > >  static bool intel_dp_link_params_valid(struct intel_dp *intel_dp,
> > > int link_rate, diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> > > b/drivers/gpu/drm/i915/display/intel_dp.h
> > > index 9be539edf817b..1b9aaddd8c35c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > > @@ -107,6 +107,8 @@ int intel_dp_max_common_rate(struct intel_dp
> > > *intel_dp);  int intel_dp_max_common_lane_count(struct intel_dp
> > > *intel_dp);  int intel_dp_common_rate(struct intel_dp *intel_dp, int
> > > index); int intel_dp_rate_index(const int *rates, int len, int
> > > rate);
> > > +int intel_dp_link_config_index(struct intel_dp *intel_dp, int
> > > +link_rate, int lane_count); void intel_dp_link_config_get(struct
> > > +intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
> > >  void intel_dp_update_sink_caps(struct intel_dp *intel_dp);  void
> > > intel_dp_reset_link_params(struct intel_dp *intel_dp);
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > index 214c8858b8a94..0c8e0d6437b5b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > @@ -1170,6 +1170,41 @@ static bool
> > > intel_dp_can_link_train_fallback_for_edp(struct intel_dp *intel_dp,
> > >       return true;
> > >  }
> > >
> > > +static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp=
,
> > > +                                        const struct
> > > +intel_crtc_state
> > > *crtc_state,
> > > +                                        int *new_link_rate, int
> > > *new_lane_count) {
> > > +     int link_rate;
> > > +     int lane_count;
> > > +     int i;
> > > +
> > > +     i =3D intel_dp_link_config_index(intel_dp,
> > > + crtc_state->port_clock,
> > > crtc_state->lane_count);
> > > +     for (i--; i >=3D 0; i--) {
> > > +             intel_dp_link_config_get(intel_dp, i, &link_rate,
> > > &lane_count);
> > > +
> > > +             if ((intel_dp->link.force_rate &&
> > > +                  intel_dp->link.force_rate !=3D link_rate) ||
> > > +                 (intel_dp->link.force_lane_count &&
> > > +                  intel_dp->link.force_lane_count !=3D lane_count))
> > > +                     continue;
> > > +
> > > +             /* TODO: Make switching from UHBR to non-UHBR rates
> > > work. */
> > > +             if (drm_dp_is_uhbr_rate(crtc_state->port_clock) !=3D
> > > +                 drm_dp_is_uhbr_rate(link_rate))
> > > +                     continue;
> > > +
> > > +             break;
> > > +     }
> > > +
> > > +     if (i < 0)
> > > +             return false;
> > > +
> > > +     *new_link_rate =3D link_rate;
> > > +     *new_lane_count =3D lane_count;
> > > +
> > > +     return true;
> > > +}
> > > +
> > >  static int reduce_link_rate(struct intel_dp *intel_dp, int current_r=
ate)  {
> > >       int rate_index;
> > > @@ -1231,8 +1266,12 @@ static bool
> > > reduce_link_params_in_rate_lane_order(struct intel_dp *intel_dp,
> > > static bool reduce_link_params(struct intel_dp *intel_dp, const
> > > struct intel_crtc_state *crtc_state,
> > >                              int *new_link_rate, int *new_lane_count)=
  {
> > > -     return reduce_link_params_in_rate_lane_order(intel_dp, crtc_sta=
te,
> > > -                                                  new_link_rate,
> > > new_lane_count);
> > > +     if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
> > > +             return reduce_link_params_in_bw_order(intel_dp,
> > > crtc_state,
> > > +                                                   new_link_rate,
> > > new_lane_count);
> > > +     else
> > > +             return reduce_link_params_in_rate_lane_order(intel_dp,
> > > crtc_state,
> > > +
> > > + new_link_rate,
> > > new_lane_count);
> > >  }
> > >
> > >  static int intel_dp_get_link_train_fallback_values(struct intel_dp
> > > *intel_dp,
> > > --
> > > 2.44.2
> >
