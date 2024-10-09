Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E269C996789
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 12:45:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFAB510E28A;
	Wed,  9 Oct 2024 10:45:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OtmrbV9B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BA2710E28A;
 Wed,  9 Oct 2024 10:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728470748; x=1760006748;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0lHnecZgN69lYUiX5qaqnoXwUZbbSH8+OA6cIhrefH8=;
 b=OtmrbV9BurMRvZiDfzMlTTYjVnJMLnu7XEXUpcdAM8KDeWgsgbbKivju
 dLOrUbzmLMshAGqfIElKLVAB0axA4WHvaOG4u/AzK47GnMGSB+gsubndb
 3X7wMmvMZATMr7ZqnheFnq1EJtw+kScUmUiSu3rHVMoogDs3iidiATcpc
 8KKEWz3FlA/vQ4xILvv0zRpSjDJO7mWCDHUsxQyqjNtAxyYz9XbuGmLyv
 L89nOT+g5FsvhL2o3cS0VtmQiRb/PUKoRmvmogPlj6UNs8hs12b80zx+L
 M1pGTXsi0wUbfKTtBxIQ79QJwEea3HvWG9CbZlFzqDELLMJ31GfNpxIhG w==;
X-CSE-ConnectionGUID: DBkzsz73QpGce5aOEQFY7Q==
X-CSE-MsgGUID: /CUjY1Y+QKqKJ+Aas6RwJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="38410524"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="38410524"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 03:45:48 -0700
X-CSE-ConnectionGUID: xHJIOUafRk+Swqs9tqq14Q==
X-CSE-MsgGUID: DJ7tUn7oT1SrvxqbpIoaaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76166370"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 03:45:47 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 03:45:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 03:45:46 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 03:45:46 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 03:45:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uXadA95IyV9LXlmbMiDIafwaveYRjYBoorD0jn0R3VilF1tBbZiSu/uyvu879a6yCr12BXpzD+nfn32SQxPqcqE9rcx8BtZhbYl8CtZ512wKKP7zcRyTzIwrgUsLRyYhopriJ/ZaGOusMMexhLf+FPbv8YtlkpXYvnAayzbElImXUbkXmdntbCLdmfZ7TjKBx5zzE2zKZ1g6FJbAMOTzXXDOuV70siyGTefb9P6ecFtY1vMRzn1wV/xJJeSQT8FC3Khl6ZRQDZfHOM7zaI8MouzX/u8ERk502Wjp+UvdpihE2++kQ9HyPBknp7zZoJmjmIBfuiyFZEtYbaKhwE1LdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9RkISf5syrbbot7Q0P3vvO9kpWF1mQAWe4jWmFhBXbw=;
 b=hZM4Z2vkMkexCM2HGP4ofJLKOeA0Lm2WqSbRCzWqZc3efYrXVsymAqyzK0lIRUULo23+Y3KEozqfs+yMA7R6PZKjyyYMHDKYPeDd3hCGQsD0RLk4IokRWkMSqVzegpF3prUYDtY/mYBa+FLnOUnEPZpyEvWViSfzn8BOBczO7naFswICyvj5mym1+FCNBCMrEz6HRmyx7btYNRoOe9hp1KJDdqSG0uWefzrUFD350EST/BKcWzG3jGKCMpQEATxhz/M3RXg5wI0dGi4thcgftlSbmYBhG9Gb6oTbejp8sQ8yM/9wKspUyVf7PEiNNPBm4Nvy5TMrGJN+lCQWlr0l2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MN2PR11MB4536.namprd11.prod.outlook.com (2603:10b6:208:26a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.21; Wed, 9 Oct
 2024 10:45:44 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8026.020; Wed, 9 Oct 2024
 10:45:44 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/dp_mst: Fix dsc mst bw overhead calculation
Thread-Topic: [PATCH] drm/i915/dp_mst: Fix dsc mst bw overhead calculation
Thread-Index: AQHbGg4oJzr/X5dsE0mYFHSFVOHQvLJ+L+iAgAAMJVA=
Date: Wed, 9 Oct 2024 10:45:44 +0000
Message-ID: <SN7PR11MB675059105B62EF9C7C4790ACE37F2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241009054050.1796088-1-suraj.kandpal@intel.com>
 <87v7y1a95o.fsf@intel.com>
In-Reply-To: <87v7y1a95o.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MN2PR11MB4536:EE_
x-ms-office365-filtering-correlation-id: 64ff7c3f-3f84-45e0-3aa1-08dce84f86ce
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?sKtEZ/TMvtx13/T0fSJW/l8tRVfc4PQDY98aEcZeMRsCrHYgrXLaVu4gk2b9?=
 =?us-ascii?Q?eGJJtaQKZG0muS6bcDrPZMIYR8iNXxslc6WkG3AyHLJ++iuRbusl9ddf8aXq?=
 =?us-ascii?Q?KPnzA/c+ckOsuzKOUE3XPyh6qMzEodhBCKD3NwNjHvNDS5k6ZddTvMxjaISk?=
 =?us-ascii?Q?OR63eNJWHiCrwkQos+rc1ksxf2Q+d5sXOPLsmtOHsEqnpCsmC6W6jTOVBNtZ?=
 =?us-ascii?Q?9a/0pNJmrAdjnTtGfP0b6ENWBMCIX6PHX1TZ69kPGfq6X0fEuFe7LYSjpL2p?=
 =?us-ascii?Q?M/3chcc6jvhND/JnXL410s2JqnGfmjjPX4120PHJdPKqHw/p6BoqhJ0rgSbl?=
 =?us-ascii?Q?q07BFmabjCLDeRnkQOGwhxERXKsmgBHnPRHPScM3PAqXG++ObY/WNeQsKJyf?=
 =?us-ascii?Q?AsmP/vxtxJ+WSx6+Tqul1sEvlAZfliKhUEnEZUnIz2WV1DTrWvDWB3/ed5Kp?=
 =?us-ascii?Q?bwGiKYC86K8khwxb2/M45JJxHDlscS4ARw4oeDoaxCP4KiGPaaJ3OOGUe9gQ?=
 =?us-ascii?Q?33HfzQPFbGRDM0MZD/y2bu8qLyXYmqNpBEjLwZiGCR02j9/eIuv5MtkW8hlh?=
 =?us-ascii?Q?YJHMDnMcks0AqLZ8ioYf9I9joDHvGdS5ynMFb4bwoydADTw3jUUcU+mQ8WGj?=
 =?us-ascii?Q?9v4p4QciWJu+PpZJZYQEcsPxz7DOBNuh18rg9gkaq7Fp2zMvqj10Mmnxjv/f?=
 =?us-ascii?Q?0GyMyOEkc+TtVNAT05X5UWWtkgdkXq7jZu3lpccszzcYKFwIEYC2NailoaH3?=
 =?us-ascii?Q?UR5Cx1RoLvId7aT/KDoR9kuxvEDxWBzT7KvKsvawXX9NpNAwU6I57kkRlyDc?=
 =?us-ascii?Q?9A2l4WK247+InKh13O3+MASp8R4b7P91mwteIqCUgDTXuNC4e1v0tOPBIZW2?=
 =?us-ascii?Q?Q5d5dm3DL0Uf5RdTvwDmPbMY1k9YaLv/ulZruJSQPWuIaZ/hATVYJ7BcQQP3?=
 =?us-ascii?Q?2FA1j0ISQE2rk73Caje23UNYFF0RJviCom+oOgwLFPthJikwZCtsS8X9CGim?=
 =?us-ascii?Q?8LYt8W6+iM1LLqqzGH3y4JH5PKkYspf5c2IrklMOHL4yLSkoBYA9DdnJ9c9a?=
 =?us-ascii?Q?gzVXtHZzYhlEw3wi0EsZtTIW0tvTFzasMzqGsOKVUiyc2VxhXgwMZq/RLJSJ?=
 =?us-ascii?Q?ibJFsg7yaFv6H5WOVyVEaxk7PEM9WMblUvZ9ewIPuTWt22575J2R1jueOLNb?=
 =?us-ascii?Q?PG/NpMQJFnLoV5teD6Uz+UiA27GLsVdFrCkpMKKjxgjHjQ69H4b/1Xb8b9i4?=
 =?us-ascii?Q?9R8G//5OE5CtJjKeDrwq+6KiS501IhBLlW7LbOXpFpfKzYCJrZMwEdCKNVxc?=
 =?us-ascii?Q?0lqdDVQLLeLuAmKn/QuaZ2HU03VSKePlEiQUPa80+Ca3DA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?h6AaptTwqjvQzjneSs7xUvGEN9SkqNw4ojy/CKE/9I+MMZxfnCUknbXZFfsy?=
 =?us-ascii?Q?VHfpSQeZtffHbH1lUWPEammk+Gu4PozC1TDWiXSZQ0AP9vxWWCMg15CUpg2S?=
 =?us-ascii?Q?kvyJIbuJyQI9hTWL3Od1ygxZGVhwlvoP11lPW0uIyEnCnJTbndZCLGggYODT?=
 =?us-ascii?Q?e/5oq533qmiqX2ybRuaJDuGonPKhHAdRTgZcjnzuludOXTHbKoOVai2B/wsD?=
 =?us-ascii?Q?FefwFqvLcxjZE19qkScELrRl1OZVCT1/DOo9sdJsPz+vyM910h0ItqTADOUg?=
 =?us-ascii?Q?nMVTOxMXzMgJrCs96ptDDcrpnKE4pZUE67CJ0siT+DTj9gDmQB1FqbUZtaEg?=
 =?us-ascii?Q?NF0wxcACfduqWnfDSiLufR8vS9KRyD0hUDQIl4AbIGdcHFhYOLoPiMlxELw2?=
 =?us-ascii?Q?66+CLJAjGPMormIRUOF2zrjzN50XzkXshQI8ak/lLk8xmXPS6P44u9nT1IpU?=
 =?us-ascii?Q?jGqFrVhQvqUP+016MlIKpJ/yurwcAboL/Ty6LlFg6LNrer4VbqwfcCtpCQ9U?=
 =?us-ascii?Q?CYqATjvz9d0p2/dzwYFW8XkQRkcBkcdBye2MQENrL7/c6ATsuzU5KEe7CxKn?=
 =?us-ascii?Q?qAu/Ftd8o+ol5WSdvSwVVAr1s7J70r8NbKRQB1jFY+qG7f3X/JfZsB055uEg?=
 =?us-ascii?Q?IB3x0lgnGEVob9xkzoXSjgubOTmlGME1UBgfNdc5eYi33wW5ZdAh4HuS25B5?=
 =?us-ascii?Q?y9QJMSomaDAnTLmF9nwtvpsr+sxAz9McTFKHa5g8qZhqkGDgL0tRr9RYK+jP?=
 =?us-ascii?Q?V51lif85peKU3eJRjZj1qeJieI0cfKcT5HkU1bGbaL7hR1PXYfGAjfeIwvdG?=
 =?us-ascii?Q?EmeSOcsJvoIqyCo4Paba7bkyD0ltfUEe6dJDGTfzHfVsr+NlPUwE7J6eZewi?=
 =?us-ascii?Q?3040W42ORflN1O1RYQUb1kluZr5E24tRyDfY0d9V2MHpxEVf8uQ19ap/s6zB?=
 =?us-ascii?Q?WJdfoIrMF2UfeUoBudauv/V9P2gq0YcUmyqhlWqab4u/Lqkx1R44LGxJ1Iky?=
 =?us-ascii?Q?J9ahdcWGyUbIUfx2FGxN+LOSOiIh+8o6qnm5RdzXUxHCaYU+Z5eVmiHSSX5o?=
 =?us-ascii?Q?GtQEM/RTdObIC9eJta5HZWfXpGml9hefGAZlBD7iZlxjhhayIl9Tjy4YOarY?=
 =?us-ascii?Q?kI4r0XzFwKLchwynbYXVCylUqRCEg2oMjnTwACeF/4IQRHdWmZ99Dvhm8NMO?=
 =?us-ascii?Q?iK8S7O3tTsvbna3/+Z6vdnpbifcCF0xWb5U1VhAuUWikG+JSPiJGxxxgtKuA?=
 =?us-ascii?Q?HFw+Jsnl85qPmQXrztUbEnXrmC3n0E8bmdP3zArYwNw+IYOWNJ2pGqVcOj3R?=
 =?us-ascii?Q?NyuvtSDeNUOHBAoIQMQtkteTi8RwHOKeFnaDxOjNPjXg2wBmLb5mHJ7ImMwf?=
 =?us-ascii?Q?1rD3512Nke5HPm9vxBbSN1N40j43wGkjlP+AGmbkPN8Vk4gdf2r3OJ8490mx?=
 =?us-ascii?Q?PuTpu/euyBCJEcoN5p/e5BU1nizo6pDUJ6mkyp4qgGdLFEjQgIwaf9iXovqD?=
 =?us-ascii?Q?m4/h1mgZMzpxHB/+n5yUJ+aHCyuPxQer7BEN6kFGPSVTb1f99smQxOM5VNaT?=
 =?us-ascii?Q?L7TfsVQsVxp7ZM2gpLCb21id2hBdvxCOvYabyyd1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64ff7c3f-3f84-45e0-3aa1-08dce84f86ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 10:45:44.1310 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IEw/xuQjlHtt6FRxg04mV+Z7LuqWCNQt8sk7fzRdhXveaUn0Xu14bRzJyr2bHH4pPmn17i7wlfocjanYxuoACQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4536
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
> Sent: Wednesday, October 9, 2024 3:30 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH] drm/i915/dp_mst: Fix dsc mst bw overhead calculation
>=20
> On Wed, 09 Oct 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Fix the DSC flag assignment based on the dsc_slice_count returned to
> > avoid divide by zero error.
> >
> > Fixes: 4e0837a8d00a ("drm/i915/dp_mst: Account for FEC and DSC
> > overhead during BW allocation")
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 4765bda154c1..bacd294d6bb6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -105,11 +105,16 @@ static int intel_dp_mst_bw_overhead(const
> struct intel_crtc_state *crtc_state,
> >  	if (dsc) {
> >  		int num_joined_pipes =3D
> intel_crtc_num_joined_pipes(crtc_state);
> >
> > -		flags |=3D DRM_DP_BW_OVERHEAD_DSC;
> >  		dsc_slice_count =3D intel_dp_dsc_get_slice_count(connector,
> >  							       adjusted_mode-
> >clock,
> >  							       adjusted_mode-
> >hdisplay,
> >
> num_joined_pipes);
> > +		/*
> > +		 * Try with dsc only if dsc_slice_count has a sane value i.e
> value is no
> > +		 * 0
> > +		 */
> > +		if (dsc_slice_count)
> > +			flags |=3D DRM_DP_BW_OVERHEAD_DSC;
>=20
> Do you think that's enough to handle the error?!

Well this will make sure that if dsc_slice_count ends up being zero we don'=
t take dsc overhead into account.
Which should be enough to make sure we don't go and end up having a divide =
by zero error

Regards,
Suraj Kandpal
>=20
> BR,
> Jani.
>=20
> >  	}
> >
> >  	overhead =3D drm_dp_bw_overhead(crtc_state->lane_count,
>=20
> --
> Jani Nikula, Intel
