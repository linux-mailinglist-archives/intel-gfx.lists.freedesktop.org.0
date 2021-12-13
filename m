Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F40347234A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 09:57:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C146C10E3E3;
	Mon, 13 Dec 2021 08:57:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76E7310E38F
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Dec 2021 08:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639385841; x=1670921841;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ppQ5o7QgM5kSFS8DnFfK4Kmial/OWxJUsDADGX8heR8=;
 b=iZWgNvwxmdwNWQ5ZlG+8J2CcBuBdz/v/7Sd4S/6BIA+61mrwsBU3+5cB
 HmiKLjlNMlaRCTJ19/VIu0piWmQ46Ejjpt0SyTMRkEVr250f42in9Xyxc
 6dtYqe8BoOkDepkt9vvRfSE2SbqAFzQrJWft0bKX4LB5rO/MtTrb25k/a
 4xRpB3YYxmncoq1eLVvGs8i5QFlwACN7PP4Qm0g4DxSsAxG9au0liTfop
 TnC8rJhFNnh/ftvN4yVmOVYAiE6JyRdfIUGqT0of0XqhUOw/3H5uQYO9h
 On8ixivrb54PP9GEU/2HLKbLV/ypLjemypgLpGIk7V2RpQ09aSV1zVJZ3 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="236220711"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="236220711"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 00:57:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="517667207"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga008.jf.intel.com with ESMTP; 13 Dec 2021 00:57:20 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 00:57:20 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 00:57:19 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 13 Dec 2021 00:57:19 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 13 Dec 2021 00:57:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vo/R72IVT0syjCsuDYF4vVi9fAZhFZo5Ma+fydSqsLRUGFJ/NQe7VxuzBRv49Q7cLywcZmD/bLgZ9xviP90+mqNafBwDOH5F7mUeNDgF8GkG8CwXgXIpZryQiyFEdWAnN+TxLJxDoYpjMMSNzjfOXFkLIAo9m6GE74ElrCbnXgl4WsCNSYOttYfZY/zNnDk0/QOebbQE37roJlH5tqg+X8+cL8CYf55FjpVyaf36aay/h8iUhvhq+YTT3mM/o1d46EZx8e6xcJQnbHbs9fm1jSptc+xKmAbxwRGiTgrHn+rCVbi9dcGk3i4XHukEGGDJobCU1Dwv2cBbm1uhCk6TCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ppQ5o7QgM5kSFS8DnFfK4Kmial/OWxJUsDADGX8heR8=;
 b=QFzDUSbLP9tU2Sq1PCgDzu0kTke9u4rNnOQ+WPdvH2VJHx3ddKFjSeb9jWX4DhfKjbBaWs5aGyysoPNBxNN9SAstxtz3rnI7LIpY7HJSDjkg4fIhMe1zhTvicLlHCuNUt2YXkQSOnOtIEUhg/T5Ht8bRI1I7yCIqT55Shk/F8+bXjoz0jo8PSfmlLXLZwvVIJ4BuG/a14Ti67X4JpM8IjF9CFMRuWBpKw6WzwJvyb2qWQbQjlRSZhZEMc9HKX5uYA481OYH2sbNoFpMcCt+mPeBENtxzHEKb/yvdUOHz+fZ8YaAVOjqFoTvzlPXQL7in/oLxNKcKU4NVwZKAwRsxSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ppQ5o7QgM5kSFS8DnFfK4Kmial/OWxJUsDADGX8heR8=;
 b=CnXr6ctBm1nDaDQUdD1Nh4NYh1x8MXL/goc+fvCpPHNFkdkwaK6xoaCgFNf7VGqOs6HTWKTAr5db4Chf33ujBrbIl2cOhgFLg0MHeLrvi9igUMmhLC5P6oTo44FGXDLnW4Rjy6zbIcMOY4qJjXzCXyCGB8CGt1h0Z7XmlKnaC3w=
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 DM8PR11MB5654.namprd11.prod.outlook.com (2603:10b6:8:33::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4755.15; Mon, 13 Dec 2021 08:57:16 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::4c7b:d90c:fb26:650c]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::4c7b:d90c:fb26:650c%5]) with mapi id 15.20.4755.021; Mon, 13 Dec 2021
 08:57:16 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQnVtcCBE?=
 =?utf-8?Q?MC_to_v2.14_on_ADL-P_(rev2)?=
Thread-Index: AQHX5wwsmPmOO2pSmk+dKQcpCfyAOqwwMHDg
Date: Mon, 13 Dec 2021 08:57:16 +0000
Message-ID: <DM8PR11MB5655FE857425898B2C43DC02E0749@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20211201222404.690285-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <163840170726.14896.13033388900690679611@emeril.freedesktop.org>
In-Reply-To: <163840170726.14896.13033388900690679611@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 61cc0860-fd2f-4abf-4d0b-08d9be169020
x-ms-traffictypediagnostic: DM8PR11MB5654:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM8PR11MB56545AF123870439099DECF6E0749@DM8PR11MB5654.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5ymzQ3uLVmzTg9XAZu7EPxP0gcgIhq7cbcqUp2EUQnq+AWnLy5amcPyz6MuBhIpeBDM6YqvRK9OX6BLikGbqBU8OTJ4OBDEIFqtQoZipZMDeaNUMXBaKCADJuWOKP5UgOmEKoqi90fvR/LGQ7xhqk3ObaQOmPlnp6XS6MR6Dht9t7yrpUhpySzH+j4fHFG9YkuxBv8Z698DF5a8woEm6VYxD0MxQv8tiYpUXtLK8P6jL3JGiS0of9E6cwiazX47nw+zUzsZX5/mBgZbu/tHSDEO3Gd9YRy6a889d3lhPuSu0PHJrrKuhvIzWak6lDdUYR1VYB8/4JFWkh9MBg8WOUYNdpP03V5o/uId94L+S35OfNcAugF9s57CnMEvIp5jQk0cQtOiaY7QMTMXzhYw1TgS3JW4TZ6YnhG0JQd0lr6JV6rECjqYCRQxNi2K6dekiA+ewZImxoTv+i60hCrgM6XVb2aF1+UCRGrR943KHl0QHfgaPQ5yDkYSvxIRjPhS/zOeh4xvZpDekuGbEYIAGFtDAfx1xcyamgBreE4khinSKX85LYgl8xoKu8UbSqcNEL2N/qTsDWtEaF/PtAyJpCSR+jBA7McF2uamCES9wpzS6fweqTCg+oqfBhW7MSOqBk8I7lsnsis+uvALZ44OqYCGz02Wu6dtIkMpfgF89BDmWhLH8SL72khAtgnp/dwORR4hpnZCk2YUm/V/u8UJcbJCEmBz8SYEpwxGhbfj+WaMgKeqa0W7S2+21z+vYbXM33K/b+oYYBuad8dAReUiOxvk02Yor61xVvg4nzWnCCjPsvnRSz19J4gCUkel3m6St
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(84970400001)(86362001)(8936002)(6636002)(966005)(38070700005)(26005)(76116006)(64756008)(66556008)(6506007)(82960400001)(7696005)(55016003)(66946007)(66476007)(66446008)(316002)(71200400001)(33656002)(38100700002)(110136005)(9686003)(83380400001)(508600001)(5660300002)(122000001)(2906002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bnFIYTJzWHpodFlsQlpYOEd1R0tYWDVBV2hxaHhWTisyZXZ4Q2NWM29YUXJW?=
 =?utf-8?B?VEorbDVmU2RObVhCeGJoZkxJekRKWmZvNlZtMHpFL0ZOMDFEUUt3b1ZwamYw?=
 =?utf-8?B?eDlMYVp1YzVBSE1MUVhXVi9HR25YeGdBOHY3M0JhT1NlZDBNQTdHNEd1dUpv?=
 =?utf-8?B?eklLaExrQ2RpRU1XbnZ4WHRTRFNVOVRwbnJ3TERUR0ZTYi9EamR5UlRNdzBn?=
 =?utf-8?B?RlZERVVhOWNQeVQ5aXRTREZEb2laZTRZR0l1ZUhoMW9EaVM0MXRSZjAyV0NE?=
 =?utf-8?B?WWl2TnpNUnlvMXJrYThqR0o0TTNtWW9YVUVvSXJTR3ZhQ0kyeVh5V1pKbzIx?=
 =?utf-8?B?ZWt6cnppVHorOHNaRUwrZ1dxVWFxMDNIR1llYjl4WDRTNUhXVFpHaW9NYnFi?=
 =?utf-8?B?NGZvV1p2eG9OR2tpUmlmbmUxb3hKUEkzcEs1eEloQ3RaUnhHTUJPeHhrUFN6?=
 =?utf-8?B?T0d6TUhnOWhseEZOUkpiYUdqaFUzM2NXVEFTWlE0NTFyZk1wOVRSTG5HK0Q3?=
 =?utf-8?B?Ni82UXVWeG1lUGVDRmZBMExXTlh3bmZOZmk0eUMwMk95MC9zaTZ6V0VhbXg4?=
 =?utf-8?B?VGx6N3pyVDhHeitPemVubzZQbUFQYXRNejlJZklJRGxnMlUwNlRXTUQza21u?=
 =?utf-8?B?RldsdjNuWFRDWDE2L0JJMEs3a2gzSXRMZ3krUXhZUjUwYjRTdDdCbkh5Q3Zq?=
 =?utf-8?B?T2ZpRmFKc1Brd0k2SFJ0L1g2SWpRSjlMeW8zMzZiVFhDYXVkNG1QbDhsb0hI?=
 =?utf-8?B?dmtzODY5MFIraElqY3lWMWxiNHZuNnZGMU5ySVVZcTFkcEIyTU13MVJsaGVX?=
 =?utf-8?B?TjFsU2c5MVhjZVY5MVE3eXB3Nm9jSmg1OHRSWkRXMVhoZU82cVFKOVc3KzlL?=
 =?utf-8?B?dC9wWHhUQWoya3ZaWTNjLzB1aXpMdG9XNStSVVNlTjdCYlpsdFhxRVpjRXQx?=
 =?utf-8?B?dndPWm03N2lVMFZzZFpDb2xrdWttRFlPMkJ1Q0VodVR6V1k4ZUVVZTlqcDg2?=
 =?utf-8?B?TGhoNkJYbnBMV0NWdnIrQ0VmaU9vWUZMRk8yTjM1OStIcVo5TjNWaXI1YUVH?=
 =?utf-8?B?dFBDYm5qVEMvaHFQTHVCV29OTktiWlVNT0dpTWR0Tjd5enNTRHl6eGFUQ2Q4?=
 =?utf-8?B?SnNjY0lLMlJOdURyQ2xWM1JsdEU5bG1hWmhEV0JhdUptNzJ0T3ZZREFFM2tt?=
 =?utf-8?B?R1piOXI1aVh1U2lRU2dwY0hPRUE0TUZJNTV5Yk5ZaDlGMUxnKzg5UTZaUit2?=
 =?utf-8?B?T2ZUa1k0T1lxamR4RXFuV2RmZnR5YSsydml4QmM4VW5JUDhFaEpKNFQ0U09N?=
 =?utf-8?B?cS83NWphQWhBMVkrUjRDSWJIWTJ2Z0FQZnAwa2JwODJlV1VScFM1VVdYZjNh?=
 =?utf-8?B?VWoxaHk2VUdRYkVuQ21IZ3pZYStoc0hCSlhxeWxxclNqcjNWbXVsK3hSTDU4?=
 =?utf-8?B?NjltUXgwd2NOTmtVbVFUYnBEL0hMd1BqeGtSbnp2N0g2cU9vdGVudUY2WkNO?=
 =?utf-8?B?MXlDQkNFV05WU3hLdXVSMlJIcStlQjRtaURBY0hZZllHdTc1RUMwckNXcHBh?=
 =?utf-8?B?bmlkZ2FDSmZqQ2VwdzNNSmYrTTFWK1dTMWN6QkVkM0ZwaHl1dDNadS9CL3B4?=
 =?utf-8?B?cTBFZUh2ZVlwRDNEdlpVa21ieUVVcm51em0wTXpwK3MrN01OMUhkUWdLRG9O?=
 =?utf-8?B?RGJLcHN4WEovTmFTa0J0RXFHSmt3ZkF0c25weUhmbk15a3hwaGF3M1AvSnBH?=
 =?utf-8?B?OWtUeGRPOXNVelBJR0lBYlhGRlZlREI3NTVFZUgrL080TUVGUjdUZitUVGRv?=
 =?utf-8?B?cmhTWkZMV1k2ancrSlB4VURuV3FMSUVzRlZ0QlZYU0M5YzIzVU5YWXg0M0Yw?=
 =?utf-8?B?blNrZlp1bmJNMnhucjRhWWJ5SmdmNmlEaURCYTN2Sk9xa3d2TDlhNDMzcmtk?=
 =?utf-8?B?djJEc0RPYXJJMk42L2V5am5oV2xMRlFNUmp5cnFsSWR3Q1A1UGhRTlJnVVBs?=
 =?utf-8?B?VnJocHIvc01jZlhNSzFXU2luWUNyTys2SFA0UWJ6bUZyd0F5bWF5Rkk3MXdk?=
 =?utf-8?B?dmlVYlMxREVBbldqYU4wUnVkZ081dTRJRzZ1MjZyQVAvRUNCWHd0eVd0SVVV?=
 =?utf-8?B?SXh3clFIcGJvSGJMQmNXZC9iTTRqQnVIaWY1NkxXRktqMTBYdU9JV2tJdTRs?=
 =?utf-8?B?RkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61cc0860-fd2f-4abf-4d0b-08d9be169020
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2021 08:57:16.4666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ho29sMIMH1VsMIIs7Ff37fF6ZSRUJnba8GKxmGZYn4tkKLLkD4u+gwNAlHlFQtZlrC2HsvR3syLTXSEaUgC51g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5654
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQnVt?=
 =?utf-8?q?p_DMC_to_v2=2E14_on_ADL-P_=28rev2=29?=
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

SGksIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8
aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgUGF0
Y2h3b3JrDQo+IFNlbnQ6IHRvcnN0YWkgMi4gam91bHVrdXV0YSAyMDIxIDEuMzUNCj4gVG86IFRv
bGFrYW5haGFsbGkgUHJhZGVlcCwgTWFkaHVtaXRoYQ0KPiA8bWFkaHVtaXRoYS50b2xha2FuYWhh
bGxpLnByYWRlZXBAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSDinJMgRmkuQ0kuQkFUOiBzdWNjZXNzIGZvciBC
dW1wIERNQyB0byB2Mi4xNCBvbiBBREwtUCAocmV2MikNCj4gDQo+IFBhdGNoIERldGFpbHMNCj4g
U2VyaWVzOglCdW1wIERNQyB0byB2Mi4xNCBvbiBBREwtUCAocmV2MikNCj4gVVJMOglodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzk3NDc3Lw0KPiBTdGF0ZToJc3VjY2Vz
cw0KPiBEZXRhaWxzOglodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18yMTcyMi9pbmRleC5odG1sDQo+IA0KPiBDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9t
IENJX0RSTV8xMDk1MSAtPiBQYXRjaHdvcmtfMjE3MjINCj4gDQo+IA0KPiBTdW1tYXJ5DQo+IA0K
PiANCj4gU1VDQ0VTUw0KPiANCj4gTm8gcmVncmVzc2lvbnMgZm91bmQuDQpUaGlzIGFjdHVhbGx5
IGNhdXNlZCBub3cgcmVncmVzc2lvbiBvbiBBREwtUCdzIHRoYXQgd2FzIG5vdCBjYXVnaHQgYnkg
Q0kuIA0KQnVnOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNz
dWVzLzQ3MzENCisgTHVjYXMgd2hvIG1lcmdlZC4gDQoNCj4gDQo+IEV4dGVybmFsIFVSTDogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMjE3MjIvaW5k
ZXguaHRtbA0KPiANCj4gDQo+IFBhcnRpY2lwYXRpbmcgaG9zdHMgKDM5IC0+IDMzKQ0KPiANCj4g
DQo+IEFkZGl0aW9uYWwgKDIpOiBmaS1rYmwtc29yYWthIGZpLWljbC11MiBNaXNzaW5nICg4KTog
ZmktcmtsLTExNjAwIGJhdC1kZzEtNiBiYXQtZGcxLTUgZmktDQo+IGJzdy1jeWFuIGJhdC1hZGxw
LTYgZmktcG52LWQ1MTAgYmF0LWpzbC0yIGJhdC1qc2wtMQ0KPiANCj4gDQo+IEtub3duIGlzc3Vl
cw0KPiANCj4gDQo+IEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18yMTcy
MiB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6DQo+IA0KPiANCj4gSUdUIGNoYW5nZXMNCj4g
DQo+IA0KPiBJc3N1ZXMgaGl0DQo+IA0KPiANCj4gKglpZ3RAYW1kZ3B1L2FtZF9jc19ub3BAZm9y
ay1nZngwOg0KPiANCj4gCSoJZmktaWNsLXUyOiBOT1RSVU4gLT4gU0tJUCA8aHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvUGF0Y2h3b3JrXzIxNzIyL2ZpLWljbC11
Mi9pZ3RAYW1kZ3B1L2FtZF9jc19ub3BAZm9yay1nZngwLmh0bWw+DQo+IChmZG8jMTA5MzE1IDxo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkzMTU+ICkgKzE3
IHNpbWlsYXINCj4gaXNzdWVzDQo+IA0KPiAqCWlndEBnZW1fZXhlY19mZW5jZUBiYXNpYy1idXN5
QGJjczA6DQo+IA0KPiAJKglmaS1rYmwtc29yYWthOiBOT1RSVU4gLT4gU0tJUCA8aHR0cHM6Ly9p
bnRlbC1nZngtDQo+IGNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzIxNzIyL2ZpLWti
bC0NCj4gc29yYWthL2lndEBnZW1fZXhlY19mZW5jZUBiYXNpYy1idXN5QGJjczAuaHRtbD4gIChm
ZG8jMTA5MjcxDQo+IDxodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMDkyNzE+ICkgKzggc2ltaWxhciBpc3N1ZXMNCj4gDQo+ICoJaWd0QGdlbV9leGVjX3N1c3Bl
bmRAYmFzaWMtczM6DQo+IA0KPiAJKglmaS1iZHctNTU1N3U6IFBBU1MgPGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL0NJX0RSTV8xMDk1MS9maS1iZHctNTU1N3Uv
aWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczMuaHRtbD4gIC0+DQo+IElOQ09NUExFVEUgPGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzIxNzIyL2Zp
LWJkdy0NCj4gNTU1N3UvaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczMuaHRtbD4gIChpOTE1
IzE0Ng0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMv
MTQ2PiApDQo+IA0KPiAqCWlndEBnZW1fZmxpbmtfYmFzaWNAYmFkLWZsaW5rOg0KPiANCj4gCSoJ
Zmktc2tsLTY2MDB1OiBQQVNTIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
DQo+IHRpcC9DSV9EUk1fMTA5NTEvZmktc2tsLTY2MDB1L2lndEBnZW1fZmxpbmtfYmFzaWNAYmFk
LWZsaW5rLmh0bWw+ICAtPg0KPiBJTkNPTVBMRVRFIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18yMTcyMi9maS1za2wtDQo+IDY2MDB1L2lndEBnZW1f
ZmxpbmtfYmFzaWNAYmFkLWZsaW5rLmh0bWw+ICAoaTkxNSMxOTgNCj4gPGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzE5OD4gKQ0KPiANCj4gKglpZ3RAZ2Vt
X2h1Y19jb3B5QGh1Yy1jb3B5Og0KPiANCj4gCSoJZmkta2JsLXNvcmFrYTogTk9UUlVOIC0+IFNL
SVAgPGh0dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18yMTcyMi9maS1rYmwtc29yYWthL2lndEBnZW1faHVjX2NvcHlAaHVjLQ0KPiBjb3B5Lmh0bWw+
ICAoZmRvIzEwOTI3MSA8aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTA5MjcxPg0KPiAvIGk5MTUjMjE5MCA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3Jn
L2RybS9pbnRlbC9pc3N1ZXMvMjE5MD4gKQ0KPiANCj4gCSoJZmktaWNsLXUyOiBOT1RSVU4gLT4g
U0tJUCA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvUGF0Y2h3
b3JrXzIxNzIyL2ZpLWljbC11Mi9pZ3RAZ2VtX2h1Y19jb3B5QGh1Yy1jb3B5Lmh0bWw+ICAoaTkx
NSMyMTkwDQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vl
cy8yMTkwPiApDQo+IA0KPiAqCWlndEBnZW1fbG1lbV9zd2FwcGluZ0BiYXNpYzoNCj4gDQo+IAkq
CWZpLWtibC1zb3Jha2E6IE5PVFJVTiAtPiBTS0lQIDxodHRwczovL2ludGVsLWdmeC0NCj4gY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMjE3MjIvZmkta2JsLQ0KPiBzb3Jha2EvaWd0
QGdlbV9sbWVtX3N3YXBwaW5nQGJhc2ljLmh0bWw+ICAoZmRvIzEwOTI3MQ0KPiA8aHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MjcxPiAgLyBpOTE1IzQ2MTMN
Cj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzQ2MTM+
ICkgKzMgc2ltaWxhciBpc3N1ZXMNCj4gDQo+ICoJaWd0QGdlbV9sbWVtX3N3YXBwaW5nQHBhcmFs
bGVsLXJhbmRvbS1lbmdpbmVzOg0KPiANCj4gCSoJZmktaWNsLXUyOiBOT1RSVU4gLT4gU0tJUCA8
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvUGF0Y2h3b3JrXzIx
NzIyL2ZpLWljbC11Mi9pZ3RAZ2VtX2xtZW1fc3dhcHBpbmdAcGFyYWxsZWwtcmFuZG9tLQ0KPiBl
bmdpbmVzLmh0bWw+ICAoaTkxNSM0NjEzIDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
ZHJtL2ludGVsL2lzc3Vlcy80NjEzPiApDQo+ICszIHNpbWlsYXIgaXNzdWVzDQo+IA0KPiAqCWln
dEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3RfcG06DQo+IA0KPiAJKglmaS1rYmwtc29yYWthOiBOT1RS
VU4gLT4gRE1FU0ctRkFJTCA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+IGNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzIxNzIyL2ZpLWtibC0NCj4gc29yYWthL2lndEBpOTE1X3NlbGZ0ZXN0
QGxpdmVAZ3RfcG0uaHRtbD4gIChpOTE1IzE4ODYNCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNr
dG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzE4ODY+ICAvIGk5MTUjMjI5MQ0KPiA8aHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMjI5MT4gKQ0KPiANCj4gKglp
Z3RAa21zX2NoYW1lbGl1bUBjb21tb24taHBkLWFmdGVyLXN1c3BlbmQ6DQo+IA0KPiAJKglmaS1r
Ymwtc29yYWthOiBOT1RSVU4gLT4gU0tJUCA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+IGNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzIxNzIyL2ZpLWtibC0NCj4gc29yYWthL2lndEBrbXNf
Y2hhbWVsaXVtQGNvbW1vbi1ocGQtYWZ0ZXItc3VzcGVuZC5odG1sPiAgKGZkbyMxMDkyNzENCj4g
PGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3MT4gIC8g
ZmRvIzExMTgyNw0KPiA8aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTExODI3PiApICs4IHNpbWlsYXIgaXNzdWVzDQo+IA0KPiAqCWlndEBrbXNfY2hhbWVsaXVt
QGhkbWktaHBkLWZhc3Q6DQo+IA0KPiAJKglmaS1pY2wtdTI6IE5PVFJVTiAtPiBTS0lQIDxodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfMjE3MjIv
ZmktaWNsLXUyL2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbD4NCj4gKGZkbyMx
MTE4MjcgPGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTgy
Nz4gKSArOCBzaW1pbGFyDQo+IGlzc3Vlcw0KPiANCj4gKglpZ3RAa21zX2N1cnNvcl9sZWdhY3lA
YmFzaWMtYnVzeS1mbGlwLWJlZm9yZS1jdXJzb3ItbGVnYWN5Og0KPiANCj4gCSoJZmktaWNsLXUy
OiBOT1RSVU4gLT4gU0tJUCA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0K
PiB0aXAvUGF0Y2h3b3JrXzIxNzIyL2ZpLWljbC11Mi9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAYmFz
aWMtYnVzeS1mbGlwLWJlZm9yZS0NCj4gY3Vyc29yLWxlZ2FjeS5odG1sPiAgKGZkbyMxMDkyNzgN
Cj4gPGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3OD4g
KSArMiBzaW1pbGFyIGlzc3Vlcw0KPiANCj4gKglpZ3RAa21zX2ZvcmNlX2Nvbm5lY3Rvcl9iYXNp
Y0Bmb3JjZS1sb2FkLWRldGVjdDoNCj4gDQo+IAkqCWZpLWljbC11MjogTk9UUlVOIC0+IFNLSVAg
PGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL1BhdGNod29ya18y
MTcyMi9maS1pY2wtdTIvaWd0QGttc19mb3JjZV9jb25uZWN0b3JfYmFzaWNAZm9yY2UtbG9hZC0N
Cj4gZGV0ZWN0Lmh0bWw+ICAoZmRvIzEwOTI4NQ0KPiA8aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5Mjg1PiApDQo+IA0KPiAqCWlndEBrbXNfcGlwZV9jcmNf
YmFzaWNAY29tcGFyZS1jcmMtc2FuaXR5Y2hlY2stcGlwZS1kOg0KPiANCj4gCSoJZmkta2JsLXNv
cmFrYTogTk9UUlVOIC0+IFNLSVAgPGh0dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18yMTcyMi9maS1rYmwtDQo+IHNvcmFrYS9pZ3RAa21zX3BpcGVf
Y3JjX2Jhc2ljQGNvbXBhcmUtY3JjLXNhbml0eWNoZWNrLXBpcGUtZC5odG1sPg0KPiAoZmRvIzEw
OTI3MSA8aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5Mjcx
PiAgLyBpOTE1IzUzMw0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRl
bC9pc3N1ZXMvNTMzPiApDQo+IA0KPiAqCWlndEBwcmltZV92Z2VtQGJhc2ljLXVzZXJwdHI6DQo+
IA0KPiAJKglmaS1pY2wtdTI6IE5PVFJVTiAtPiBTS0lQIDxodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfMjE3MjIvZmktaWNsLXUyL2lndEBwcmlt
ZV92Z2VtQGJhc2ljLXVzZXJwdHIuaHRtbD4gIChpOTE1IzMzMDENCj4gPGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzMzMDE+ICkNCj4gDQo+IA0KPiBCdWls
ZCBjaGFuZ2VzDQo+IA0KPiANCj4gKglMaW51eDogQ0lfRFJNXzEwOTUxIC0+IFBhdGNod29ya18y
MTcyMg0KPiANCj4gQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5DQo+IENJX0RSTV8xMDk1MTogYjJmMjdh
NzY1M2Q5YjU3ODdhZWY2NWZjMjk3NmQ0N2QzOGE1MTc2OCBADQo+IGdpdDovL2Fub25naXQuZnJl
ZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPiBJR1RfNjI5ODogZjA2MmY0YWU2MGVjZjQ3YWY0
YjAzN2M4Zjk5NTJhMTM2MDY2MjU3OSBADQo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9y
Zy9kcm0vaWd0LWdwdS10b29scy5naXQNCj4gUGF0Y2h3b3JrXzIxNzIyOiBjYTI0MWZhZWUwMjk2
OWNjOGVlZmU4OWUzNmMxMzU2OTk0ODEwYTkwIEANCj4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3Rv
cC5vcmcvZ2Z4LWNpL2xpbnV4DQo+IA0KPiA9PSBMaW51eCBjb21taXRzID09DQo+IA0KPiBjYTI0
MWZhZWUwMjkgZHJtL2k5MTUvZG1jOiBVcGRhdGUgRE1DIHRvIHYyLjE0IG9uIEFETC1QDQoNCg==
