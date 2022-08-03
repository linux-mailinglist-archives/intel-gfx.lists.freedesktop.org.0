Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE9E589446
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 00:08:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ABA22BA29;
	Wed,  3 Aug 2022 22:07:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B59A2BB36
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Aug 2022 22:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659564471; x=1691100471;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=AFgdkkyvzgAZVlEH4Fy+PYXeeZM+9EcXe93mODjZzmQ=;
 b=VD7ZJvafw4smA3kge0eDeAFCsYUg9BRJcWkkUMLESNJ51eg0idGo+qnX
 8RFXfFPu2VRCNFUTcnq5XXWaCk71/LAbDnhMXRIgKkc5MbDE4VA6CKp5j
 PhlUzOM4VQ6laQPi+dLYqG+dxrcXt8N/XYq/oWxvc1OjoUO4kBobtsugR
 V2cp8nqK3IoPzUNfqnte1JKzQQdLvUXcsqGooY+xkvvbb5XhNlplBLrL1
 xvX8AWHZcoMaX9ao12avzQvjHiiWeC+vyoo4CRGuzADOEOw2vmLv8GG6d
 JpEKnzViHLLoSkdcqk+Z/ed+CMO/QbkmtVjMCJELgVHKKkwBQLGonhNGy Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="290562087"
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="290562087"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 15:07:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="705945887"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga002.fm.intel.com with ESMTP; 03 Aug 2022 15:07:50 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 3 Aug 2022 15:07:49 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 3 Aug 2022 15:07:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 3 Aug 2022 15:07:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TWau1TAmxNGO9iORviZ80lbG2p68VOsKz8+WDZG4Zp+dciXuBlHLUCezCSYEr+KwbJWDuTcsHlfPXMZFdAxu/ktVzgwcvthrCyfjWyTmzEFUT+480Ph91FNlnkrXSIPs96kRh7J1eqzvLdSZNe6JIcBO+3wWJQ49gyQs/B0/8VA8PYiF1VQphDf40mbWcK3R2rd6IguS5oNLOjchFH/Z3PFRgZhgiaf2VUcbovLC53VgVwobk7TPzueL+7BXfVZ/hnuJyZJeTQFyNnLe2eMXoF2yIvIyWITjUd9CcM+xSdmDwI4p5Xhx3Chfvz7Uw51lNoB5sklKr+n0qjkwAIInmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AFgdkkyvzgAZVlEH4Fy+PYXeeZM+9EcXe93mODjZzmQ=;
 b=HF8TrFxxRmdi2NWoS7rNQEpwH5FLmHG8VDVHaTUphbwEi+XUOL7/9Xaa/LhqRnv6SZIdPpxod9gX3Ss6m7jUUCLWgQVMAIFHSor43sN0MiszWKWHznrrQTOncekV9V+P/FrVcLU1rNl4rgi2+MBKiI9ulJ1a+XVKDxQgCcpgbFeZQAaRMBL/Tqfk2471iFyXV2y0E5xH+kR76iqMbruVOyVJ9IrDXd/4PcPsdKGx9Ej3wfl+vTLPaAfDqTrVI4j3gmbV1/oYBozKS0ZCwKeNfIe+nt2LMdOQ2KZQGDmBAkkyrtsvgeRiXSowjNPS/RF0lEPX+UhHRPsdbSK94QiA7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH0PR11MB5673.namprd11.prod.outlook.com (2603:10b6:510:d6::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.14; Wed, 3 Aug 2022 22:07:47 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::fdd1:18b1:3e9c:b03e]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::fdd1:18b1:3e9c:b03e%4]) with mapi id 15.20.5482.016; Wed, 3 Aug 2022
 22:07:47 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 02/15] mei: add support to GSC extended header
Thread-Index: AQHYfFebw2DYegUICUKMvYIIRnJLHa2eEoyA
Date: Wed, 3 Aug 2022 22:07:46 +0000
Message-ID: <e01e7373ee621dc27d410e762e810a4cdc246f4a.camel@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <20220609231955.3632596-3-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220609231955.3632596-3-daniele.ceraolospurio@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0c5caea6-6449-48fc-50cd-08da759c993d
x-ms-traffictypediagnostic: PH0PR11MB5673:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D4OzxUqfD/g8Gd5IduB3h02w+CG5/NB/e4Fl6WTwAhc8H9SDYWppCwidslTzK3sNhvB+1nckZxUOHXrGbRvopI3tMuCfR0Dilr4jFUxfuZakAUvqjE5YTxlyX3FKbVolHR2tkx7CZHTU83W5WjdVr15GStmFpKNZI2IUtHk5Yr4WYm0kKobGh9L38GNPWCktFvq7AKpVEEGsALDKHeFtp1aomWvAvbZRAan685CL5yWpluLUIx+1myYg4DdOsoeyha8D7U2gB/4ys3goysUTbNhldsIUGxaR+Mhk2YnHH4WIGlImDA6bRCF2nudJbf11TZxQOqk/ZXoTqWuGjX0IcGIUCkk1cxaKkqSDnwPKpwW13BxWyWwcolvlFL8f42r9tvZtIcYGqn8vOJfh+/xjBGW7hx1GB+Kl26cFNhh4NuDKK3Gxtx9qVaX3I2vUOS/FQCFgOcsMtUsiwJ7TP3mNqK5LNiXL8CWQk6udTPxnfWxVWCwhMhpd02DAUj8Ufr6zzzR82ONxd5DMd4vpYgtsGlkRc4t/blJNsvoDPzx/p+cKyNNMO1bZVs1qjoswf9FDu2jovazgxTXv/xhB8g0ZTFveYpNZPBGh9co4uvSDGw/HHDPugJ0LlTMxsdkFjOaHndcvW+qcR/5zbEMbPhg/8xXmFvkzrlSAjzZNU48nZ3DuZ4PM7RcoeUoCQKtq7JUIudDqPwe23QRzG8msqGcxFtzmar2tEN12dhzqaITyaPcXgpwOcXl+NM5F5CM51MYUNQhrp1i2Jnwg6eA+7elbditHwFY+mfJGRRmG27sVGSH1MH6LGLX8kNq2mzPDX5zP
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(366004)(396003)(346002)(376002)(4326008)(36756003)(41300700001)(91956017)(54906003)(8936002)(110136005)(66476007)(66556008)(66446008)(76116006)(64756008)(8676002)(66946007)(71200400001)(478600001)(86362001)(6486002)(6506007)(5660300002)(26005)(6512007)(107886003)(186003)(83380400001)(2616005)(38100700002)(2906002)(316002)(82960400001)(122000001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VEtFaEZsY1k3WExqM3BCNHYxMDR5N3BpdGRTbE9JOTIwUzQxNUw0eXkwTUo3?=
 =?utf-8?B?VEJaQXdhTStjekU5aElqT2NUOUVwdlJlalMxVWdiWjZwYkRlS0oxdXdSRld2?=
 =?utf-8?B?dXpyU3FSanJlSElHZVBoNndLeW9RVnVwT0oxWHdkR3c1Z0hjS2RKUkdsUkwv?=
 =?utf-8?B?SHV0RW52U01GcE5Nek1hcVBESnRmNys1OUliUk1PVjE1YUEzVWpHTHFhMzFK?=
 =?utf-8?B?ZVdaazk0NDc2S2hHS3RhNisrTnFGRUtKMFNnek1DeDd4MGErMFJNWWk0dXhV?=
 =?utf-8?B?M3RydFg1NDFrNUpqYWJ6dlNtckpJeklqZ2pnVHZNeUI5V2FwTXdobitmQWdH?=
 =?utf-8?B?SjZ0VGdHaHlMeFZva1VldWVIQWtRZjZzLzhteDQrZzM0LzQvM2VkYUpjaXlY?=
 =?utf-8?B?NitpaVdvUlRmU0J2ZENRaTlyUXdrN3FuMVY1MXdTS3ZqWFFqY1E1TlNPb3d1?=
 =?utf-8?B?cTIzdjNmRHEyZzFDZXpoVzl1K25QREpjYisxVWxPM0ErRzQvdG9ONEh1L1RF?=
 =?utf-8?B?Sm11MDZESmxzQVUzaC93ZkI3d29xOHo5cnFnU241aGhZNW1RcExyTUpZaXFw?=
 =?utf-8?B?NEdCaDVhRk5DN3R3QUxFSU1DT2c2NmdWNGtSNmtZcU9KZkZzcjk4R1hkL2Vy?=
 =?utf-8?B?QTFENlpIVklNNWQvVHdiUWlIRWN0UnZiVml1YUo1Y0t0aWxCYzc4R21NNWRQ?=
 =?utf-8?B?RGI5VU5sRU9ydUsxUlRjZHBZNGpXV2dvaG9hZk5wUjl6SkJzYnVpcWlKQlp4?=
 =?utf-8?B?NzN6Yk1rckNVWG1oWkovY1dkcWhyOEpPbGpWRWZZT1FaTHhtVkZhbHFnQ2Nr?=
 =?utf-8?B?Kzd5Y2piN0xkaHRwYWhuN3pKbXpPa25zdzRwcG5GeTNMLzBqZks1S2JsN2Y2?=
 =?utf-8?B?N1VESXR6b0V5dU1NSlN1bzJ2TmRTTExaTjBSRlBZYXltN2d3MzRTKzRTN2pD?=
 =?utf-8?B?SjZ1UkwzUERzTFFnUHVNT3dYSjhqMk9NL3NBblpEV2IzQk9RSk5ReWFtN3RX?=
 =?utf-8?B?TVRRYUk5SWpFUjdJaFY3NW5wMTlLQUVrdys2M1lNSzNiWXpRREhaWDkvZHlQ?=
 =?utf-8?B?MG5naVExbENCMHYwaEJ4V2xZVUhMcVRDcVVHTlQ4LzIzcEdjVTQ3RXZIUzhh?=
 =?utf-8?B?M09HRjg3VVIvejFDWk5QNjQvV2lLTDcwMUd0dkcydWhwUFNzaXVMK3I5Q3dx?=
 =?utf-8?B?Tk1tUG85V3lVeUhQWWZ2QldVSHM0Wkg5L3BEbldwdEFjN2xHbExNbHQwWTg2?=
 =?utf-8?B?VGFFbDdVZ05UTjJWVTZGWXBLWlN5Q2xlQmZsaU5SQzNtOVRlNzU5WlJtcWcz?=
 =?utf-8?B?WXNJSThOVWozaVZINVYwR1MrTGVRa3BqNGVDZS9VR2V3TjFlU1hxcG95ZWoy?=
 =?utf-8?B?aHA1bWFBQ2d1WDVqdzBabjRlK0srMjd4Z1VZVEV4TzVaOWUzMjBDa1dmaVhi?=
 =?utf-8?B?Q2pGaHY5ZGo4eGJqS0tSRnk1OFZjK0xwbHR2NngzQjBnVEQxMEVQcUNZbWdx?=
 =?utf-8?B?KzMrMDkwT2Q4QnIzMVhwMGk0d2FqS210TUxRTWhEUWk0N3pueHFyYUk5WUFJ?=
 =?utf-8?B?ZStBRFhmV3dDczdFRjlRQ0ZUekprc3QyT3NST3FnMXBEZ1hCblJocUNTaVZH?=
 =?utf-8?B?N0hxRCtTZnZsUjNlS0IyWklvVHN6SW15TWFaTWQxVVg1N05ZMUZURmRjeVFY?=
 =?utf-8?B?WURvVk04bTlCKzlOb1BzMU5yWFhCelhzaEtyUTJ0ak9SRUhkcDllZDV1S0ww?=
 =?utf-8?B?MUtYdWhoU0JMRXJsUnJORklZc012WnBoZU1DVDREMjI4YWppQmkyWGRnSTJj?=
 =?utf-8?B?Z0Jxb09kcDBRNWlvWTdPRVF5MU8zMi9FWjNZcmZlNFdnSXpBK3hnMWpLZmhw?=
 =?utf-8?B?aGN0ZXh5SExPaTExdFpoMTBrYzh3azByYmxXMmRQa0kwS3pReDlGbm80czF5?=
 =?utf-8?B?MHJ6Qk9YMVhFNzdIYWlycXoyOXR0d1F3aStoaFZQVXRtWXNMb04xZ2VNRXdY?=
 =?utf-8?B?Rk1SaFV0UDIzZC9qaWFIS2tSRkd1eVhoL1Z6RUt1ZzhVVGZ4Q3AwZzhUcW9D?=
 =?utf-8?B?UVlsTVE5bVQ2NXBiTEIvYWM5N3E3OUYxTXVveWZGOHpsNDZSbFVNN2ltM0VR?=
 =?utf-8?B?YXBLSTYvS2dqZ0FQM1Mvai9MUUhmVUZZcFJ3OVBDMnBkdnFkODFyNWhKSkhv?=
 =?utf-8?Q?vFBVVyIdiLRAqSo5BoYRV9U=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F3A394477EB1494ABE95B3955A8DC945@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c5caea6-6449-48fc-50cd-08da759c993d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2022 22:07:47.2314 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BxE5gP9fM9NEIWAEmTgmHZsxUFMMCOCWdRMIUoyEseYqGhO7FGBh2qzX4b5CdIIAqeCN7S7X5UCzbvEjaK7aj+Ut22A8YRyrba2VxgiPgxYxMfduj3Lxh2VVhLTANGRr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5673
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/15] mei: add support to GSC extended
 header
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
Cc: "Winkler, Tomas" <tomas.winkler@intel.com>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSB3YXMgaW5mb3JtZWQgYnkgRGFuaWVsZSB0aGF0IHRoZSBNRUkgdGVhbSBoYWQgZG9uZSB0aGUg
ZnVuY3Rpb25hbCByZXZpZXdzIGFzIHBhcnQgb2YgdGhlaXIgZGlmZmVyZW50aWF0ZWQgIlNpZ25l
ZC1vZi0NCmJ5IiBwcm9jZXNzIGFuZCBzbyBpIHdhcyBhc2tlZCB0byBvbmx5IGRvIGEgYXQgdGhl
IHN1cmZhY2UgY29kZS1zeW50YXggLyBjb2RlLXN0cnVjdHVyZSByZXZpZXcuIA0KDQpUaGF0IHNh
aWQgaSBkaWQgZmluZCBvbmUgaXNzdWUgZmFydGhlciBiZWxvdy4NCg0KSSdtIGFsc28gY29tcGVs
bGVkIHRvIGFkZCB0aGUgZm9sbG93aW5nIG5pdCwgYnV0IHRoaXMgaXMgYWJvdXQgcHJpb3IgY29k
ZSwgbm90IG5ldyBjb2RlIGluIHRoZXNlIHBhdGNoZXMgc28geW91IGNhbg0KY2hvb3NlIHRvIGln
bm9yZSB0aGlzOiBJbiBtZWlfY2xfaXJxX3dyaXRlLCBtZWlfY2xfd3JpdGUgYW5kIG1laV9jbF9p
cnFfcmVhZF9tc2cgZnVuY3Rpb25zLCB0aGVyZSBhcmUgbXVsdGlwbGUgYmxvY2tzIG9mDQpjb2Rl
IHRoYXQgcmVmZXJlbmNlIGhlYWRlci1pbmRleCwgaGVhZGVyLWxlbmdodCwgYnVmZmVyLWRhdGEs
IGJ1ZmZlci1zaXplLCBkci1zbG90cyBhbmQgb3RoZXIgcHRyICsgc2l6aW5nIHJlbGF0ZWQNCnZh
cmlhYmxlcyBpbiBkaWZmZXJlbnQgbGF5ZXJzIHRvIGRlY2lkZSB2YWxpZGl0eSBvZiBkYXRhLCB2
YWxpZGl0eSBvZiBzaXplLCBhYmlsaXR5IGZvciBzcGxpdHRpbmcgZGF0YSBvciBleHRlbmRpbmcg
dmlhDQpkbWEtcmluZ3MgYW5kIG90aGVyIGNvZGUgZmxvd3MgSSBjYW4ndCByZWFsbHkgbWFrZSBv
dXQuIEl0IHdvdWxkIGJlIG5pY2UgdG8gaGF2ZSBzZXBhcmF0ZSBoZWxwZXJzIHdpdGggc2VsZi1l
eHBsYW5hdG9yeQ0KbmFtZXMgYW5kIGFkZGVkIGNvbW1lbnRzIGFib3V0IHdoYXQgdGhlc2UgYmxv
Y2tzIG9mIGNvZGUgYXJlIHRyeWluZyB0byBkbyBhbmQgaG93IHRoZXkgaW50ZXJhY3Qgd2l0aCB0
aGUgZTJlIGZsb3cgb2YNCnNlbmRpbmcgZGF0YSBvciByZWNlaXZpbmcgZGF0YSB2aWEgdGhlIGly
cSBhbmQgbWVzc2FnZSBsaXN0cy4NCg0KDQouLi5hbGFuDQoNCg0KT24gVGh1LCAyMDIyLTA2LTA5
IGF0IDE2OjE5IC0wNzAwLCBDZXJhb2xvIFNwdXJpbywgRGFuaWVsZSB3cm90ZToNCj4gRnJvbTog
VG9tYXMgV2lua2xlciA8dG9tYXMud2lua2xlckBpbnRlbC5jb20+DQo+IA0KPiBHU0MgZXh0ZW5k
IGhlYWRlciBpcyBvZiB2YXJpYWJsZSBzaXplIGFuZCBkYXRhDQo+IGlzIHByb3ZpZGVkIGluIGEg
c2dsIGxpc3QgaW5zaWRlIHRoZSBoZWFkZXINCj4gYW5kIG5vdCBpbiB0aGUgZGF0YSBidWZmZXJz
LCBuZWVkIHRvIGVuYWJsZSB0aGUgcGF0aC4NCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21p
c2MvbWVpL2ludGVycnVwdC5jIGIvZHJpdmVycy9taXNjL21laS9pbnRlcnJ1cHQuYw0KPiBpbmRl
eCAwNzA2MzIyMTU0Y2IuLjBhMGU5ODRlNTY3MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9taXNj
L21laS9pbnRlcnJ1cHQuYw0KPiArKysgYi9kcml2ZXJzL21pc2MvbWVpL2ludGVycnVwdC5jDQo+
IEBAIC05OCw5ICs5OCwxMiBAQCBzdGF0aWMgaW50IG1laV9jbF9pcnFfcmVhZF9tc2coc3RydWN0
IG1laV9jbCAqY2wsDQo+ICAJc3RydWN0IG1laV9kZXZpY2UgKmRldiA9IGNsLT5kZXY7DQo+ICAJ
c3RydWN0IG1laV9jbF9jYiAqY2I7DQo+ICANCj4gKwlzdHJ1Y3QgbWVpX2V4dF9oZHJfdnRhZyAq
dnRhZ19oZHIgPSBOVUxMOw0KPiArCXN0cnVjdCBtZWlfZXh0X2hkcl9nc2NfZjJoICpnc2NfZjJo
ID0gTlVMTDsNCj4gKw0KPiAgCXNpemVfdCBidWZfc3o7DQo+ICAJdTMyIGxlbmd0aDsNCj4gLQlp
bnQgZXh0X2xlbjsNCj4gKwl1MzIgZXh0X2xlbjsNCj4gIA0KPiAgCWxlbmd0aCA9IG1laV9oZHIt
Pmxlbmd0aDsNCj4gIAlleHRfbGVuID0gMDsNCj4gQEAgLTEyMiwxOCArMTI1LDI0IEBAIHN0YXRp
YyBpbnQgbWVpX2NsX2lycV9yZWFkX21zZyhzdHJ1Y3QgbWVpX2NsICpjbCwNCj4gIAl9DQo+ICAN
Cj4gIAlpZiAobWVpX2hkci0+ZXh0ZW5kZWQpIHsNCj4gLQkJc3RydWN0IG1laV9leHRfaGRyICpl
eHQ7DQo+IC0JCXN0cnVjdCBtZWlfZXh0X2hkcl92dGFnICp2dGFnX2hkciA9IE5VTEw7DQo+IC0N
Cj4gLQkJZXh0ID0gbWVpX2V4dF9iZWdpbihtZXRhKTsNCj4gKwkJc3RydWN0IG1laV9leHRfaGRy
ICpleHQgPSBtZWlfZXh0X2JlZ2luKG1ldGEpOw0KPiAgCQlkbyB7DQo+ICAJCQlzd2l0Y2ggKGV4
dC0+dHlwZSkgew0KPiAgCQkJY2FzZSBNRUlfRVhUX0hEUl9WVEFHOg0KPiAgCQkJCXZ0YWdfaGRy
ID0gKHN0cnVjdCBtZWlfZXh0X2hkcl92dGFnICopZXh0Ow0KPiAgCQkJCWJyZWFrOw0KPiArCQkJ
Y2FzZSBNRUlfRVhUX0hEUl9HU0M6DQo+ICsJCQkJZ3NjX2YyaCA9IChzdHJ1Y3QgbWVpX2V4dF9o
ZHJfZ3NjX2YyaCAqKWV4dDsNCj4gKwkJCQljYi0+ZXh0X2hkciA9IGt6YWxsb2Moc2l6ZW9mKCpn
c2NfZjJoKSwgR0ZQX0tFUk5FTCk7DQo+ICsJCQkJaWYgKCFjYi0+ZXh0X2hkcikgew0KPiArCQkJ
CQljYi0+c3RhdHVzID0gLUVOT01FTTsNCj4gKwkJCQkJZ290byBkaXNjYXJkOw0KPiArCQkJCX0N
Cj4gKwkJCQlicmVhazsNCj4gIAkJCWNhc2UgTUVJX0VYVF9IRFJfTk9ORToNCj4gIAkJCQlmYWxs
dGhyb3VnaDsNCj4gIAkJCWRlZmF1bHQ6DQo+ICsJCQkJY2xfZXJyKGRldiwgY2wsICJ1bmtub3du
IGV4dGVuZGVkIGhlYWRlclxuIik7DQo+ICAJCQkJY2ItPnN0YXR1cyA9IC1FUFJPVE87DQo+ICAJ
CQkJYnJlYWs7DQo+ICAJCQl9DQo+IEBAIC0xNTcsNiArMTY4LDI4IEBAIHN0YXRpYyBpbnQgbWVp
X2NsX2lycV9yZWFkX21zZyhzdHJ1Y3QgbWVpX2NsICpjbCwNCj4gIAkJY2ItPnZ0YWcgPSB2dGFn
X2hkci0+dnRhZzsNCj4gIAl9DQo+ICANCj4gKwlpZiAoZ3NjX2YyaCkgew0KPiArCQl1MzIgZXh0
X2hkcl9sZW4gPSBtZWlfZXh0X2hkcl9sZW4oJmdzY19mMmgtPmhkcik7DQo+ICsNCj4gKwkJaWYg
KCFkZXYtPmhibV9mX2dzY19zdXBwb3J0ZWQpIHsNCj4gKwkJCWNsX2VycihkZXYsIGNsLCAiZ3Nj
IGV4dGVuZGVkIGhlYWRlciBpcyBub3Qgc3VwcG9ydGVkXG4iKTsNCj4gKwkJCWNiLT5zdGF0dXMg
PSAtRVBST1RPOw0KPiArCQkJZ290byBkaXNjYXJkOw0KPiANCkFsYW46IEl0IGxvb2tzIHRvIG1l
IHRoYXQgY29kZSBqdW1wIHdoZXJlICJkaXNjYXJkIiBiZWdpbnMsIHB1dHMgY2IgYmFjayBpbnRv
IGEgbGlua2VkIGxpc3QgZm9yIGZ1dHVyZSByZS11c2UuDQpIb3dldmVyLCBpdCBkb2Vzbid0IGZy
ZWUgY2ItPmV4dF9oZHIgKG9yIGF0IGxlYXN0IGZyb20gd2hhdCBpIGNhbiB0ZWxsKS4gVGh1cywg
aWYgd2UgYWxyZWFkeSBhbGxvY2F0ZWQgY2ItPmV4dF9oZHIgKGZyb20NCmFib3ZlIHdoZW4gImNh
c2UgTUVJX0VYVF9IRFJfR1NDOiIgaXMgdHJ1ZSwgYW5kIGlmIHdlIGVuZCB1cCBkaXNjYXJkaW5n
IGhlcmUgb3IgaW4gdGhlIGZvbGxvd2luZyBmZXcgbGluZXMsIHRoZW4gd2UgbWF5DQplbmQgdXAg
bGVha2luZyBtZW1vcnkgaWYgd2UgZG9udCBmcmVlIGNiLT5leHRfaGRyIGJldHdlZW4gZGlzY2Fy
ZCBhbmQgbmV4dCByZXVzZS4NCg0KPiArCQl9DQo+ICsNCj4gKwkJaWYgKGxlbmd0aCkgew0KPiAr
CQkJY2xfZXJyKGRldiwgY2wsICJubyBkYXRhIGFsbG93ZWQgaW4gY2Igd2l0aCBnc2NcbiIpOw0K
PiArCQkJY2ItPnN0YXR1cyA9IC1FUFJPVE87DQo+ICsJCQlnb3RvIGRpc2NhcmQ7DQo+ICsJCX0N
Cj4gKwkJaWYgKGV4dF9oZHJfbGVuID4gc2l6ZW9mKCpnc2NfZjJoKSkgew0KPiArCQkJY2xfZXJy
KGRldiwgY2wsICJnc2MgZXh0ZW5kZWQgaGVhZGVyIGlzIHRvbyBiaWcgJXVcbiIsIGV4dF9oZHJf
bGVuKTsNCj4gKwkJCWNiLT5zdGF0dXMgPSAtRVBST1RPOw0KPiArCQkJZ290byBkaXNjYXJkOw0K
PiArCQl9DQo+ICsJCW1lbWNweShjYi0+ZXh0X2hkciwgZ3NjX2YyaCwgZXh0X2hkcl9sZW4pOw0K
PiArCX0NCj4gKw0KPiAgCWlmICghbWVpX2NsX2lzX2Nvbm5lY3RlZChjbCkpIHsNCj4gIAkJY2xf
ZGJnKGRldiwgY2wsICJub3QgY29ubmVjdGVkXG4iKTsNCj4gIAkJY2ItPnN0YXR1cyA9IC1FTk9E
RVY7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21pc2MvbWVpL21laV9kZXYuaCBiL2RyaXZlcnMv
bWlzYy9tZWkvbWVpX2Rldi5oDQo+IGluZGV4IDdjNTA4YmNhOWEwMC4uODYyMTkwYjI5N2FhIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL21pc2MvbWVpL21laV9kZXYuaA0KPiArKysgYi9kcml2ZXJz
L21pc2MvbWVpL21laV9kZXYuaA0KPiBAQCAtMjExLDYgKzIxMSw3IEBAIHN0cnVjdCBtZWlfY2xf
Y2Igew0KPiAgCWludCBzdGF0dXM7DQo+ICAJdTMyIGludGVybmFsOjE7DQo+ICAJdTMyIGJsb2Nr
aW5nOjE7DQo+ICsJc3RydWN0IG1laV9leHRfaGRyICpleHRfaGRyOw0KPiAgfTsNCj4gIA0K
