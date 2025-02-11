Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A064BA30BBE
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 13:31:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB2FB10E2F4;
	Tue, 11 Feb 2025 12:30:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bG0ZfTvl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B82210E236;
 Tue, 11 Feb 2025 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739277053; x=1770813053;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qb69EdPQlIDB0u6IlxMwBQn+3GMgzMRrA/6wzQ1DSzs=;
 b=bG0ZfTvlyhTarJ4U/zKnWybJMZSgouLVQYGyWQtmlEfQYCGDoaFvs8/k
 DoI8E7S0lRIXjv5qGQMWbUdx3FCjhrNRpM02aQv2HzHmo2XLrwHGg2wtb
 Xhy58BrKMmLaR3OVOl+ZmUwu28BIoW7kgKnXEPwkrs+VLtTxba7k65LiA
 yCIk/2T+DccmH8FZR29A6d+HYYaSl68u0srFNnVbbCSGsTCQeTtUSa6SD
 SuZV12yi3FpxA1QL8J/51iH87aN2OQniicgVsb/F0xvR6xc8Uo7mfOatn
 9If9zOjVoC3Ta0niwqg8QMXIV+T8aB+u8j+MltQ3xz9DkR2KliT2J+P2k Q==;
X-CSE-ConnectionGUID: gCWyxDJzTX+4T2aT+QnVyg==
X-CSE-MsgGUID: nnKCMmNFT3mfmCYQl4Rbnw==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39090303"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="39090303"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 04:30:52 -0800
X-CSE-ConnectionGUID: gmgomOxtQCywW1cd3l3srQ==
X-CSE-MsgGUID: bHJ4UtN9QU2eRxabnUL+Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="113136661"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Feb 2025 04:30:47 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Feb 2025 04:30:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Feb 2025 04:30:47 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Feb 2025 04:30:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k+PJxr2HhGqDFMb24AulPskhs+s0cv5AeriV8VjAVOMLRq/kreAAuI+qR86X1aDb3lljbu5iPoV0nc66kk9CfqpR05F19KXAKx+Pn8yO53Qga/HUu2Nq5iJucsYH6t0mUwI3W03k+1QLzMOi9LMsjmjQoiKRZZUKn8DltP3J3mTzbI9QnPZpMv1Ts0sS8YQz008wWW8w38ICOeLEyGi6xikRoCpSXF4GZpcCF1CoAl8g7zc887m9N0Zb/JNPT26SpW7kLgDNIIM//U3NeWzUj23qDOGQEworqEgcl+f83ZVr7B8d3YM1YFmpEfPLq09o4uVUqqLo7xsItoZqavre0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+hM0nJ3uBvhrHe7fZ9P9EUAHF7UtHDcMUTB7pz7lImY=;
 b=KJM06m6gU4ghcg1+6A7DGW6uQmKQwemIdh4kP0Ld+HfXCeNgwTP1a+c8DNmAUXhGopTRJ/Rd0D8rYscA0kq73HyLXyEtiaK/aEGeIZ4sq7y4e9uRmSGK64UCHqENIjSTPk3Yrp4i/3lrf8+mjeLDvCQgXzEBsJQ3Vno/fcHaMNL8QSjAqVsWrpm+gsyMYeAfmHRtPdTB+6EMklW2ipRdmclu3H11ETQdlohquVou6WC5YAVuByF8WEkL0XExglP8AavjpXd4OS0sLNDx9XGoJVu8cquFZtwVL20S1CWG1Ca/deYoYUl+vQS+sH38GNyqMU7PxDODougvdVVE2xthXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 DS0PR11MB7879.namprd11.prod.outlook.com (2603:10b6:8:f7::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8422.18; Tue, 11 Feb 2025 12:30:02 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::31fd:4de2:2775:396f]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::31fd:4de2:2775:396f%6]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 12:30:01 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Mike Rapoport <rppt@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Saarinen, 
 Jani" <jani.saarinen@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "x86@kernel.org" <x86@kernel.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Subject: RE: Regression on linux-next (next-20250205)
Thread-Topic: Regression on linux-next (next-20250205)
Thread-Index: Adt7hEGcp0GkztS8SASxDv/3sHEkZAA1WxaAAAmnjpA=
Date: Tue, 11 Feb 2025 12:30:01 +0000
Message-ID: <DM4PR11MB61417F2A11D08FE2DD7826CCB9FD2@DM4PR11MB6141.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129A45FFE75371036820909B9F22@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <Z6sBX-tPotgS2ARh@kernel.org>
In-Reply-To: <Z6sBX-tPotgS2ARh@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6141:EE_|DS0PR11MB7879:EE_
x-ms-office365-filtering-correlation-id: d59ec932-09dd-4c57-6197-08dd4a97ce29
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|13003099007|38070700018; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?nb0Kn/lW3TnQsZrIaGaIjei70RstaInnm7/lUuWd/E6UuGLI0gZQcNdg7V?=
 =?iso-8859-1?Q?XB84izNOSjr02uj7h64eS45J1OKN/DkqrA+m+ys2KTqRoO5vwe5DIhc/pg?=
 =?iso-8859-1?Q?7LNUiO+1WXoRVaYdnpmTL0ipyVmrn9xMsWp7/mhMwcbo+yV4bD1zKt4QLi?=
 =?iso-8859-1?Q?bqAAadzXX0Jc/oL5wYAbOTWMRhRzTjWLuZlJ7NQOBv4iZ++BOSeIUj7oky?=
 =?iso-8859-1?Q?OsO+l7klEn1HTZq67Qe5Kl1DvMwkt7ue6SQEfQIWg/cNuGi9sUDmUkHImx?=
 =?iso-8859-1?Q?doqoWX7lqknd3bEKQdpeMYZZSfLZ2ftdHr3IFk6vHr+Xr4nTysgXaqjtse?=
 =?iso-8859-1?Q?R6AL++TSkdx7R1JIz5B+ROWV7LQlmEqxTJHcmAOTyZPeygpJDf+TefkdR7?=
 =?iso-8859-1?Q?ZnkJwr+a/G1MCRAhnA0eDoIa0i0l7rWvcCC/u8FuahhDvNqhPRitFcTvN7?=
 =?iso-8859-1?Q?5U64mmXzlZznG33kMIUTq2nf9BcVBQFNMUiEqTRFBc7TuFsQkjuAS2pvdQ?=
 =?iso-8859-1?Q?jiEmHHAT2oZWbQMYCVzNzRQi6uiTB1HjIpV+AvfuwIFYNEQfr8E/ynJHqD?=
 =?iso-8859-1?Q?EnfATgb1sneqgYkAqVQso6D5Ff0rcOvf7ZYWLJiKfuenjdqN0YYzYvlCe5?=
 =?iso-8859-1?Q?ybYk7i4qwTQAjHLY9v5dR7zjgVP86JO3qItoWNCeVY9+WReXXclt3Vsypk?=
 =?iso-8859-1?Q?FREH7yU7G6H2q3WQuPFrbYE4c3Ti4+r5NJzuUbxkTERZbEU8g7m8Bfu6W2?=
 =?iso-8859-1?Q?dJHoWj3rTVhB1FhFCz/iE/b1thuvZunoaCf0PVqyOU3cmYSlm3nhouxR9d?=
 =?iso-8859-1?Q?xSItwxaXvg4k6RjNY7pPC30B8x8zP3Uf07JwbiWkhnni2tyGo4ZcmBJRQ3?=
 =?iso-8859-1?Q?qjnquIdCeWTqdWObZt3ge6AqpDU4ac/7uKmZLSgZQBeVS8xHmFNXpHJWcB?=
 =?iso-8859-1?Q?vZbgI/uptPbrVNHYO+mNsa4+172NXFoBAiRZX1tp3Dhg/ccmYxZgxLh78Q?=
 =?iso-8859-1?Q?nsXegvy4v++xLyFGwd9ODHY3xwLwXctf8ktIrI2j2Qk0Jw+MrJVM/T9yb4?=
 =?iso-8859-1?Q?MrQ70I36eXM95brMQN1E9yEFo5K5TqtrSOj8fBr/rrIl10RXUMq5TwUk2/?=
 =?iso-8859-1?Q?2acWY/qC9RYXn8iPWLp+OJ4J3/6qs/DT4NJuNBz4VgqK9CIwbWMq8qkN4Y?=
 =?iso-8859-1?Q?Tswduom5rZMUegYs10BtFsoIi2tlXWIkMcSMtD5XsuN5vFVw4fUWBcrsB5?=
 =?iso-8859-1?Q?TihMlUY6+T1ek77wYcfEohDNikFSqigWd89IHMp5oxZX0CeSeesE/y4l7j?=
 =?iso-8859-1?Q?5Y9geHLLM2B9x2C0SRZq7yPSPXG8ilsig5xut+WhMOr1NPo3r22RpuucVy?=
 =?iso-8859-1?Q?nkaNunSmSu3MYj/Y4o66nm+x+MMl1vWR2YVS7Hqwd7RHVxOGCgCW9jgRv6?=
 =?iso-8859-1?Q?TGGkD8e7GzRYc8XI5Jy4uG7DaPd0c9Le9fP8Xg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(13003099007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?9gjVrD4KxyAqG5Y4TRhqkQo7iL4piIsk6JEXwJ4sld/MzjT5Cf89RNMkZq?=
 =?iso-8859-1?Q?UcPhleU4oSxUymEOiy2u/MuJwfIQfrLaYtvCAzQZvbjhsPRNtCY15GpQkN?=
 =?iso-8859-1?Q?a+zEam0zpyZTA80i4QmjSYvcDE3KEF10luJ2bL+87MBXPncWhpCpOIh/oc?=
 =?iso-8859-1?Q?YNBJuUeO3qtZ0wXNmEYQcy2pkuF5aTRr7FXcT0ytoORIKG1PSHKcacp0X+?=
 =?iso-8859-1?Q?dEMzrUjrQPsoIyZsp9CG3dnk7J0Jl9vif5k2u5xNtPcMc/3T3ifJ16YpaV?=
 =?iso-8859-1?Q?ZqEoNu5fw88g/I247xekfTWI5t+NP3yZWdCBHQ1Qg6NoOizJrRj2hxuAqr?=
 =?iso-8859-1?Q?HgZN0mjpUq8iRxX9BRM+wLhPGLnQJbLd1eKhmwuadRn7sp4AzfluSXOHgR?=
 =?iso-8859-1?Q?yj+dD7FlRFcsi0M9qOrntkC+96rqv1ChQfDo3uQrZT9e9Lnem4YpuPjRIU?=
 =?iso-8859-1?Q?EOhZIOg1JoV6JZmyMLHdf45+N7oZXd//BYYxFin5wbKUGZCoeVYV6gSgBU?=
 =?iso-8859-1?Q?QJAgaQAAitkUrWXvI0P/fBDguwDdnvCvW5g3Q6FKXfnykZImjPJin1E+Vz?=
 =?iso-8859-1?Q?DvcVXgMioEPXZescg/lcIs1g/rr5sMyGa0B1fttspzkAL8aXbXNjMzz8Xs?=
 =?iso-8859-1?Q?Cw2mieDn6QxtuWzr6q/RFj7VSzoWSjjLDz+rdL+B8Q6ePdimMqMAK9Faw7?=
 =?iso-8859-1?Q?a3Oss94HDmCysthWd1aRtuNNYgIML8pSaKym6sH6/2NelKtAov2wLB0f6V?=
 =?iso-8859-1?Q?yiW4/h0+EHsmj7w2QuyhYYuYD9YtSaQsbJiEvqZh/MgygdlAn/0ndrdd6W?=
 =?iso-8859-1?Q?XFjYG5MqDAZQP+g+rG1qAj1m94D5L+Q657GGpipR7+P8me++UPifi7ZpZJ?=
 =?iso-8859-1?Q?6sHfSAm14x/trUtuWPWr5+fQmKwAwIh2HPmwCgFcynrxscYvRHjSARo5jq?=
 =?iso-8859-1?Q?BhUfhchqoXaKv6R+NQ37KrHuKJONSKa3Lds6MkWFVnlUKC6YwYdTyhTsAS?=
 =?iso-8859-1?Q?wQoR8SV5e5tyqLYtx2JjZd/eROmgPeZdtxKUnV0PMsUBJUYRFTfZKgLbhT?=
 =?iso-8859-1?Q?o4vska+NF1hq8WuoTr4c/5INrZNkJH3yuDPVK2nnuzOQ9DQAlj/jHWcTi1?=
 =?iso-8859-1?Q?8rhVMHQKGjwNmDKk8VDYgVo41lgpEe4OLiInooNMS98LTKRRlv9+UiME7e?=
 =?iso-8859-1?Q?Ly2RyEfOBmbc82D/ET6D2JJisgbALhCUGhG1DRQzx5QoZF6wM1cknNqR1y?=
 =?iso-8859-1?Q?0/5NNu8s7hcVaPa0u6VYXws6ZH0urO7Lj6DTe+MUDB7OHKJNhpSYl2K3s8?=
 =?iso-8859-1?Q?lmD4CEMEkxJQoApBU2TxKzbkmCK8pcNz5NxF8AVJ7rtm+X5AEfgm2cRD4O?=
 =?iso-8859-1?Q?vftti7ZY2nJxA3c3N6+Ff+kUWcJaGtCshXgv7xy4KVvCD09lf5Ik0yxxiB?=
 =?iso-8859-1?Q?Xo7Aho1kAPhlvFiQ5WsykgivSi8n4ZaaeCd07pjJU6NhdiVcQnOuZe2iE5?=
 =?iso-8859-1?Q?YnxDR2eyG6F+bRIqc2HkjpXI72u0NtB1J3XC4uvspeWNVgIvtKkGJVQFTD?=
 =?iso-8859-1?Q?gBgkATK0MaS7EML9STHIvJtwaCYcL+20UHt8O7+8D8uGLLdmSVKR3KlKd3?=
 =?iso-8859-1?Q?pAuAsPFXHQ/MyZuN0hd5VywDUxBafo3cX2MP9lJjvVVB+bHTHqhtIHzg?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d59ec932-09dd-4c57-6197-08dd4a97ce29
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2025 12:30:01.5107 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pHvkCdZjgCV9Em2xhe2So5dT9sF2ozDtVZr7PgxbuORkKJvnPWOL1cP9MLfjt07eheTFAkbHTfNZs6R8WaEE4iJNRV/8Okbo0+qSoQeTwzc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7879
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

Hello Mike,

> -----Original Message-----
> From: Mike Rapoport <rppt@kernel.org>
> Sent: Tuesday, February 11, 2025 1:21 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Saar=
inen,
> Jani <jani.saarinen@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>; x86@kernel.org; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: Re: Regression on linux-next (next-20250205)
>=20
> Hello Chaitanya,
>=20
> On Mon, Feb 10, 2025 at 06:52:35AM +0000, Borah, Chaitanya Kumar
> wrote:
> > Hello Mike,
> >
> > Hope you are doing well. I am Chaitanya from the linux graphics team in
> Intel.
> >
> > This mail is regarding a regression we are seeing in our CI runs[1] on =
linux-
> next repository.
> >
> > Since the version next-20250205 [2], we are seeing the following
> > regression
> >
> > ``````````````````````````````````````````````````````````````````````
> > ``````````` <4>[=A0 314.781734] kmemleak: Found object by alias at
> > 0xffffffffa0595000 <4>[=A0 314.781738] CPU: 11 UID: 0 PID: 6042 Comm:
> > i915_selftest Tainted: G=A0=A0=A0=A0 U
> > 6.14.0-rc1-next-20250205-next-20250205-ged88b8b82c53+ #1 <4>[
> > 314.781741] Tainted: [U]=3DUSER <4>[=A0 314.781741] Hardware name: ASUS
> > System Product Name/PRIME Z790-P WIFI, BIOS 0812 02/24/2023
> <4>[=A0 314.781742] Call Trace:
> > <4>[=A0 314.781743]=A0 <TASK>
> > <4>[=A0 314.781744]=A0 dump_stack_lvl+0x91/0xf0 <4>[=A0 314.781749]
> > dump_stack+0x10/0x20 <4>[=A0 314.781751]=A0 __lookup_object+0x90/0xa0
> <4>[
> > 314.781755]=A0 __find_and_get_object+0x6c/0x190 <4>[=A0 314.781758]
> > paint_ptr+0x1b/0xa0 <4>[=A0 314.781759]=A0 kmemleak_not_leak+0x33/0x70
> > <4>[=A0 314.781762]=A0 load_module+0xa20/0x2d10
> > ``````````````````````````````````````````````````````````````````````
> > ```````````
> > Details log can be found in [3].
>=20
> Does this fix it for you?
>=20
>=20
> diff --git a/kernel/module/main.c b/kernel/module/main.c index
> 4a02503836d7..a598888e7072 100644
> --- a/kernel/module/main.c
> +++ b/kernel/module/main.c
> @@ -1260,7 +1260,8 @@ static int module_memory_alloc(struct module
> *mod, enum mod_mem_type type)
>  	 * *do* eventually get freed, but let's just keep things simple
>  	 * and avoid *any* false positives.
>  	 */
> -	kmemleak_not_leak(ptr);
> +	if (!mod->mem[type].is_rox)
> +		kmemleak_not_leak(ptr);
>=20
>  	memset(ptr, 0, size);
>  	mod->mem[type].base =3D ptr;
>=20
>=20

Thank you for your reply.

Unfortunately, the change makes it worse. Our local system seems to be in c=
ontinuous reboot.

Regards

Chaitanya

> > [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
> > [2]
> > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/co
> > mmit/?h=3Dnext-20250205 [3]
> > https://intel-gfx-ci.01.org/tree/linux-next/next-20250205/bat-rpls-4/d
> > mesg0.txt [4]
> > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/co
> > mmit/?h=3Dnext-
> 20250205&id=3D64f6a4e10c05ed527f0f24b7954964255e0d3535
> >
> > Regards
> > Chaitanya
>=20
> --
> Sincerely yours,
> Mike.
