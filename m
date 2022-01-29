Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7183B4A2C6E
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jan 2022 08:21:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8EE310F484;
	Sat, 29 Jan 2022 07:21:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DF9510F48A
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jan 2022 07:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643440877; x=1674976877;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fQDtHbjroI/ue7JR6P2eUqVH8L3KifVLFYKjciK+pVY=;
 b=S66QAfv3r6LCtIxLpPxegOm+pkEy+fuG1yNz/wQm1k4E/cq1OHzOEa7C
 a47TSou1pbXn8e01Cy7yOn9ZGCZev2gT2QqGxzq+PA82R8NLtTfN9Kg71
 96iARljXPq41ipc4J+hXOMyz4O0mP5933WYfKqJl2ZN4zcEvzsTcGflZJ
 PwfZuZe88yfoBWAh9jhvKhbWDZRX7RxMduSfXXtSKNwnnTs3MwkziOhlS
 Q8CrqxPe8ZkhKzkssSMuyDIbDNIUyRFVWemF5MV5iGugArSXCjFey1Kaz
 pJBG27PzKXCAFWVhqQikslskcvrx6CPUG5ZRynL4iaKw+rTk3rBY7vkX6 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10241"; a="234638924"
X-IronPort-AV: E=Sophos;i="5.88,326,1635231600"; d="scan'208";a="234638924"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 23:21:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,326,1635231600"; d="scan'208";a="480990138"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 28 Jan 2022 23:21:16 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 28 Jan 2022 23:21:16 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 28 Jan 2022 23:21:16 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 28 Jan 2022 23:21:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PrVyOuvdC8Kmu12AtFeBfWDhiuOcTEYYHc/pTeFxoYCefS4pM1q6xR5LfKbvtSlbOV5d1oIzxTUJrGHeWlakHPKiJkLTVCLfVNjTNEXmDkwhyUbxS0a85nDiT37YK0/ar+kmHz25apo8x09cqLc8fiN2umGAuVobRLclh3XnUSWdo8C262kOcXZxh5YBFFDCpx/yiX++//6O/zr8O3ULjxyBtIuEQ6QbnUhU/A9rEqsGP0w9HsQlzzv6F3NbXQ2aqmrMVZnY0pHYhSe/TUR6R3Wl/oz2hClrz9upOW5ygh1WGja/QVqcZXp/+bSMTWG1E3PKRRaThu4j7qOq/BsVLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IzXcmEUTToGMP1SqoApqSAaaRw5QmpFsBZoo+4kAoc4=;
 b=Ecv4AZ283kblI2WSsyNhzn0SpcjeZfV3Uec11XiealQA5hejKnkTZQMc6eXJfTfsscUMLqK0bvUNoy23qhtVSn9gn580d8EHruTuOZ/DFj3r1frO3luYyoY6jI92oOQ0zGRhKd2SskoGme8/NLJuXX5CwjmnNB4yjQ9ALwhee135jsWiC4+onbwUiYpRS+hRfYCP1hnqdZhYW98tvlgWCy+pr5JDrzLflpRYlYYJKtzKFpvVKkWa4UZlgMaUnF22PZgY54oXOPjjvav9heIA1lQr53euQpJ+21NsxoPs+05CKmPmU++HECj6lihs28Qlmefre8JxxRina4VBAWpRlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB2936.namprd11.prod.outlook.com (2603:10b6:a03:8c::17)
 by MN2PR11MB3776.namprd11.prod.outlook.com (2603:10b6:208:ee::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.15; Sat, 29 Jan
 2022 07:21:13 +0000
Received: from BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::75a5:6a77:2323:f31e]) by BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::75a5:6a77:2323:f31e%6]) with mapi id 15.20.4909.017; Sat, 29 Jan 2022
 07:21:13 +0000
From: "Bowman, Casey G" <casey.g.bowman@intel.com>
To: "Cheng, Michael" <michael.cheng@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 1/4] drm/i915/gt: Re-work intel_write_status_page
Thread-Index: AQHYFJPhPfUCWK6Oik2rp+B8D7YrE6x5mFig
Date: Sat, 29 Jan 2022 07:21:13 +0000
Message-ID: <BYAPR11MB29362D3224DEB1D95E9304E9DD239@BYAPR11MB2936.namprd11.prod.outlook.com>
References: <20220128221020.188253-1-michael.cheng@intel.com>
 <20220128221020.188253-2-michael.cheng@intel.com>
In-Reply-To: <20220128221020.188253-2-michael.cheng@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e8abf264-ad59-46a7-c5f8-08d9e2f7ee83
x-ms-traffictypediagnostic: MN2PR11MB3776:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MN2PR11MB377653F835DF203498503783DD239@MN2PR11MB3776.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CaQYVh6biibU3RcgSGi2MygAm7ewvEAthr2IU76aWt1lyqX/VtEaVh8Bfe8RuJMLdeIdzY3uIKouSpinnh2Na9i1AUUckTfrfJS9NuAFY5R5XBWw4X73TrvgqPM0CDxppU2V7lQLbIRK05Be5Yy4HF/wxiHv+E9BxciUCCDjo9NcRe3XPTsUX5UHZxhZiKnttmeK5kdzt0MkUM1zyR40yYYGcdEmUv6XThXr9YBalNvYGDMzRBXEbYeT8d4VTOPqLN6K1q70K3xX/5rMgnCWYzHUD62EQIg7kUwOKo6ycYLblmdOpkuBFx0Zxl9CKD6g5WHXpmgKlIma2iQRzAfaRwz6O4NleSyrvkuSkhGOq9o7VPueUZm8hgcYJmtcTffB+p2uaNfx6Duye9jiabVjrlgijiqR3AWZWE9RLpxjcahUb3pVwbxK5FLeZNfqc3bNIb42QCXjSqleTOLFhZIpeR2LYVWGSizmjxkglrykoW9rI9KDxJpy7D+TqpcoyzrU7EBvLBnVyfNy/8z4fqVFYUzbdS04fV6vjzTkFue8oYkerqfVSE5/sVvNWxFqj+T5I/I5qNK8hlAOUpeGVVFnA7Ijr3rvMZBCc+pYzm8gUQUh47dE1Q0l3fA4FCDp0J7GaGrrAVmIq6dZm41c9YO+SotrWUCbn9St+LE3/+4KGKTuXtyxZq9Bu3pugpRdKTB3Uar67UuxVyWngh5F9c1wRg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2936.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(86362001)(38070700005)(38100700002)(122000001)(66946007)(76116006)(66556008)(66476007)(4326008)(8676002)(66446008)(64756008)(8936002)(110136005)(54906003)(316002)(55016003)(2906002)(52536014)(5660300002)(71200400001)(186003)(26005)(83380400001)(508600001)(53546011)(9686003)(7696005)(6506007)(33656002)(20210929001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QjQOivTYE19z4xJdKmf5MfZ1z61on3XqFJ/kyvfmv+HN1TrAjtM3V19dJ0yD?=
 =?us-ascii?Q?+By/LQDFFq/tS82zqwhUg0hD5Un/6/2O8XDiZucp+Vb+/oTG5CxQ1y3adp4T?=
 =?us-ascii?Q?fXtO4qRQxeqzN3OfFJJIJpZEJ3L4zqwnvkdzM8mhyTLRQVFi/FqBTGq+YzGr?=
 =?us-ascii?Q?Vm4fZ5RiaAdSkS8eTAWjX8aVh06CwQZAT7vfeCxZtbpYYHTLKryAcLtbr3FQ?=
 =?us-ascii?Q?ehqFuRSzHggdWj+wGTM1PlCCpdFdlcUDevhkQVFzauH4u548wdN21ToszYe6?=
 =?us-ascii?Q?X8UM/jYRumv08JqaYwaQAoPft6vvWBYTOMkAgCG0BpX7KzmSJW5NmgBMwrmf?=
 =?us-ascii?Q?iEL4sbse0n4tsqf/l/bYfwNLAPE7jsE2S1iSXNrLPi+xn7iIVTsIJVa+yJQ7?=
 =?us-ascii?Q?Jlgur4eyPrdAJ2xmAyUzLHCO69PA91nXQXwEgKPzHFcxDbO+EF4RhkOyf1IJ?=
 =?us-ascii?Q?FRGsoMBFIvFgjWn/hgO5LtXyHWLq4LCQDxP05aYiQy8mBa5Op51n11/AJoyj?=
 =?us-ascii?Q?ZOdpDigR0V9pdOmdYJUNWMdcAI3Kcilkro2eqsEIVFutclom74pvVw2w9Nyj?=
 =?us-ascii?Q?DIPdgzMyXeTYmr0hlvluUCfnkBrY3acCPtCFyUgF/5qzxpJWybfMQuwlKys2?=
 =?us-ascii?Q?9/8CVHAQqvHMX7htRTcCmUmPQqTFn/lXotXGUMwkjdvCCASgfxENIpmNMOCU?=
 =?us-ascii?Q?oD9u+YjDkZ1r/buIgI6eDjt+4Mh3K41c5vW0gk7P+afvtkWIa74DYKsR9dZT?=
 =?us-ascii?Q?KyHp/uhyGOtYYMDuy5CDFoxv7oHdm9yQ3FTUAGxH1nz3BUydrnEJ5wj+quFe?=
 =?us-ascii?Q?KTrbgAr38VGMN+YYHAlXhz6IgrmEtt1se6qtVyr7oRWz6aR4jqEd3yB2FKk7?=
 =?us-ascii?Q?rq7TivC0RTbfdJ+nNVDVGOG4sH/orAlFLA72p5IyyGoP3NhsaOt/TdiiFb0A?=
 =?us-ascii?Q?ZL/hqUIOjJrXX91b7bDduGJwo+HktLQMGRFd3AZTgIln6uPbuIfj1DDuuStx?=
 =?us-ascii?Q?+/uud93d6bdEEps66JmdmJK2OCF2kl/DAXR9rqoY3tByF12yypW/VlcxH3JC?=
 =?us-ascii?Q?lUrVggzQx3rv5dcxqf7VzmFYuyUnTS0bCXX57BA+sK5y07UPrCp30Owep+e0?=
 =?us-ascii?Q?Z6cV+GhPfiY+rtcqYnRWlNxt/Xyb4gnLVO1IluzY/txJfQsEDmEsDwy8QFpu?=
 =?us-ascii?Q?m+jWBwB3nPtYtgkLFkcuGf+mdbMUq2YPgnOrLy28kN+/B4he/dJy4Ge15WwA?=
 =?us-ascii?Q?m1U9mblwm7Gm73Bd0HCX5mWa1MrRJqiKFJ89tyraSTNKo9pMbwvj/HfVD7RH?=
 =?us-ascii?Q?Ta6KTgBRuInnKShvDVkOPXxwjelaZ7GOfvJsf+wJdg300gF1NJolcZ0dA6DJ?=
 =?us-ascii?Q?pbfQ6iAWAxJzWvQB6Eh69F6lgIbHZMFWvDf3cCS0sfMZ6m4nqtZZn6aKi2rn?=
 =?us-ascii?Q?iIpxaP0iymtGNIvwvoFMnRBb1veKQY3pqbtTXSikYFMFfRwFTJ9e6u1SG8Tk?=
 =?us-ascii?Q?EU4eL2BppWCLa3LZ+5pzM9lLZGcFFxRdW03TdP03JSKEBiJIt8xTsr7FTFGp?=
 =?us-ascii?Q?kalgADFxdqGpY8BwD5Dqpb7EE+w22rgMfdsGbr0N3ARwdmpnBh/ArRLwLg0H?=
 =?us-ascii?Q?7bXOZC1+4lueKslqZzERQiqrZS6NIySEkW2TTiePterUBbQiYAOz13YBL9Yy?=
 =?us-ascii?Q?JSNjbA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2936.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8abf264-ad59-46a7-c5f8-08d9e2f7ee83
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2022 07:21:13.4798 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CB18S83EBDL6mZ+yEHSDccCD0Ejz2L6GBEj8jKEq58OM5ZVDp6XZzlOG74O15TclWsXZIHynRePrPn8+VLvXGKLtKkfOjegrGtSBZlyors0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3776
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915/gt: Re-work
 intel_write_status_page
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
Cc: "Kuoppala, Mika" <mika.kuoppala@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>, "Auld, Matthew" <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Cheng, Michael <michael.cheng@intel.com>
> Sent: Friday, January 28, 2022 2:10 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Cheng, Michael <michael.cheng@intel.com>; Bowman, Casey G
> <casey.g.bowman@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>; Boyer, Wayne <wayne.boyer@intel.com>;
> ville.syrjala@linux.intel.com; Kuoppala, Mika <mika.kuoppala@intel.com>;
> Auld, Matthew <matthew.auld@intel.com>
> Subject: [PATCH v2 1/4] drm/i915/gt: Re-work intel_write_status_page
>=20
> Re-work intel_write_status_page to use drm_clflush_virt_range. This will
> prevent compiler errors when building for non-x86 architectures.
>=20
> Signed-off-by: Michael Cheng <michael.cheng@intel.com>

Reviewed-by: Casey Bowman <casey.g.bowman@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_engine.h | 13 ++++---------
>  1 file changed, 4 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h
> b/drivers/gpu/drm/i915/gt/intel_engine.h
> index 08559ace0ada..beb979e40a13 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -4,6 +4,7 @@
>=20
>  #include <asm/cacheflush.h>
>  #include <drm/drm_util.h>
> +#include <drm/drm_cache.h>
>=20
>  #include <linux/hashtable.h>
>  #include <linux/irq_work.h>
> @@ -144,15 +145,9 @@ intel_write_status_page(struct intel_engine_cs
> *engine, int reg, u32 value)
>  	 * of extra paranoia to try and ensure that the HWS takes the value
>  	 * we give and that it doesn't end up trapped inside the CPU!
>  	 */
> -	if (static_cpu_has(X86_FEATURE_CLFLUSH)) {
> -		mb();
> -		clflush(&engine->status_page.addr[reg]);
> -		engine->status_page.addr[reg] =3D value;
> -		clflush(&engine->status_page.addr[reg]);
> -		mb();
> -	} else {
> -		WRITE_ONCE(engine->status_page.addr[reg], value);
> -	}
> +	drm_clflush_virt_range(&engine->status_page.addr[reg],
> sizeof(value));
> +	WRITE_ONCE(engine->status_page.addr[reg], value);
> +	drm_clflush_virt_range(&engine->status_page.addr[reg],
> sizeof(value));
>  }
>=20
>  /*
> --
> 2.25.1

