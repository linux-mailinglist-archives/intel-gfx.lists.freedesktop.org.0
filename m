Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E32E710531
	for <lists+intel-gfx@lfdr.de>; Thu, 25 May 2023 07:14:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87DE410EA49;
	Thu, 25 May 2023 05:14:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0769210EA48;
 Thu, 25 May 2023 05:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684991654; x=1716527654;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Hh3HoaJ7vb9hu4ffObayrCXb3a/6zv4JUCda7jXGMco=;
 b=GqQFbMRKKD0eEWRNKJ2aLpyGdztLu5ayBocaN28MU54kseSEQIL7HkDF
 iBAHK9KxxaXDgpekAWgN2L/41ErhxOqOx3UzMaqATPfBsqB7LXlfWH9q6
 OrJqLwi1h4yo/SNsIPhHHFqUSL0IEyNhP8MbiwzuiUCqaIX/f5TJyr6fq
 koSHs90eydDVdZacWl4lT0K3Ezc4TZWRN4NUaNz+hNNxht50YZW4vgQLe
 StFdO0epHr6AJgiLPr7GplxnWyOpL7WcMIOAsu7R93DntZOUH36Pcy/ZY
 GsxKx1Us8u0rzsjex/cn/iE2PjR/BItQUEzqovfCgTObDWa1hOrSVAGqt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="333402568"
X-IronPort-AV: E=Sophos;i="6.00,190,1681196400"; d="scan'208";a="333402568"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 22:14:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="769729818"
X-IronPort-AV: E=Sophos;i="6.00,190,1681196400"; d="scan'208";a="769729818"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 24 May 2023 22:14:12 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 24 May 2023 22:14:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 24 May 2023 22:14:11 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 24 May 2023 22:14:11 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 24 May 2023 22:14:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b4vJ+vSO4/t7BthPKGvhUP259dp8uhCVFcd6aJcZjMV0J+FbLFeuTnb+6iV5WpylcPxD7CT7c4rxAiZMntH8j+twSKiw+tZ0U3PzBxC325YGheFKNiUMJyo5iX281EilxzzdZ6BynprK3ixmdi6qEnGGjxNkhfrTKHFoyWYXgpQQnTPiFAClgjMYttjNrY3HHkLc9MRqxBEfFX0OR22q2nk0prx4R6KFglbI/OxOFMzKsrKO96InQruiRzGz7xKuAohwOoLjvM8ucveGfWDMSrmTmFVS5gi0m0gnZgqxSpmoAsMIxTXnE7JfgX6wvDBk+aBWZ7ZdiOqHCvfLpg8Csg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hh3HoaJ7vb9hu4ffObayrCXb3a/6zv4JUCda7jXGMco=;
 b=Bt7bh2GFPM+p/f+VPzBPwsJZrMhEUeA0tG9Wc11uRX3Ed1Mt+hkywaEPE17T0JDS/5ROSB0n+rA+ND5i6NByTe6Esj8vj3HL6NvvjnQHrfSmS5gjjmoms1hF3rVm3FMkykxDWnVxIsNGmkobW+Ume5ubzk3xwwwjry+sy2H7goi/DfXuDFqY8MdREQts9TSSew5gppgeKJc4ijsEeyPezFGTGoES4gTcSz/eaLSVHsFzoguuTeVfNG+1gOnaCTkvjqh6h59aDncCEQOKqEe594eA2wm5tcXenVfHpeMSxnGCPuIKUHKAARqz5IPJivnEJ9CuR/OpVjoFXqcVkpDNzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SJ0PR11MB4879.namprd11.prod.outlook.com (2603:10b6:a03:2da::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6433.16; Thu, 25 May 2023 05:14:09 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::34a1:94e9:ec9b:dfe3]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::34a1:94e9:ec9b:dfe3%7]) with mapi id 15.20.6411.028; Thu, 25 May 2023
 05:14:09 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 3/6] drm/i915/uc/gsc: extract release and security
 versions from the gsc binary
Thread-Index: AQHZf2tRh28FsVjDD0GOD8EX4/J13q9qkJ4A
Date: Thu, 25 May 2023 05:14:08 +0000
Message-ID: <674e85c47cd29b39ad902e5445234b93b2f99883.camel@intel.com>
References: <20230505160415.889525-1-daniele.ceraolospurio@intel.com>
 <20230505160415.889525-4-daniele.ceraolospurio@intel.com>
In-Reply-To: <20230505160415.889525-4-daniele.ceraolospurio@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SJ0PR11MB4879:EE_
x-ms-office365-filtering-correlation-id: e302c0ea-9024-4650-99d4-08db5cdede98
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hDp7LlZWKnJUiEOBE77jlgOEKwniPLL5AgArl9dkipxb1Qck0ftg7apdE2KIphFJ3e2xO920hJ5FUIgmw/mczpGs7ruaxvYak2lMOrDgqZoGDmxc6DkVGkLDm0YhJsMl2OmXnmHQ03PRQ9GrNhrqmUvoo3ojei6PdvjnZs4PF/KX4hWMc9rN9dTEAKokbIuAi2fFGz89FQfL2+wpwDlYBoTL/lQiEeWm/igC5Ek7Iz4urYDnqx+/9iEgQ93v2asudi2yWe69AdW/X43yaA9a/0BW7dRXMxWVe0rMitniJyLku68wPxe2IZ4TxzsWVWS4ZZMuAXpzR5O3S19yKr4eQu5KTGast/uQ7SwHnDuQVkw26M0U+SpplPfbcj7AUU4pqE/xIKlXYW6BCduuSMm/MWFVr9/DeyWh6claUEUTaTR78xxbq7SHlcty6UUq5V7AQS9HcNqbzB+f40w5JK0xHotKiWADJsgkCU2PcGnKh5x8OTici5PlcCozcVvuKFC413IEfkzC7UmVk7ZXtBtFDY+6wVbI7yTKSOLkIeJtvpW77+vufinn/n30HhRW1vsnDGcvXuPWPncpLY/Jtj6Dhwf5YxX5xZra+gdM/8hFc5z2GeVGSXLDBDzcC3i/LPiW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(396003)(346002)(136003)(366004)(451199021)(36756003)(38070700005)(86362001)(110136005)(4326008)(316002)(450100002)(91956017)(64756008)(76116006)(66946007)(66556008)(66476007)(66446008)(478600001)(6486002)(71200400001)(8936002)(8676002)(5660300002)(41300700001)(15650500001)(2906002)(38100700002)(122000001)(82960400001)(2616005)(6512007)(6506007)(26005)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VHVRM1liK3I2NklEd2x6Qk5ZSzNUelNWd1NxRDhsMnBwRzhBdWZaMHRkaFVU?=
 =?utf-8?B?Uk5Ub3M2b1VlVlRhVFA1a1NIUTkzbWJqMFZQRmxwUEhuNlI3VmRnbjZwYkhh?=
 =?utf-8?B?SUVmakJLMVM2LzMvdytvZ2x3QUJRM1hCd1g5VUlHVWNCVnN0akZVSndQVGRj?=
 =?utf-8?B?VnRZdkFGWU1hNmQ1aXpJOW9qMml5RFcvdmdySXlaNktkQjVDbWcra0dxc1p0?=
 =?utf-8?B?MElUcE1BdkgrT1NMekc1TlJUNFh4cjYwY2hmVXZFN0M5UlpYQlBaR2o3WmZJ?=
 =?utf-8?B?K1FxM2JCdytlRXpJTXU2TVJVMUJMQ0U5bXJhaWVmUkErS0Z4cThDOTBFWHM2?=
 =?utf-8?B?QVZsdmJpZ1pYbTdnZU9SZ3pJWExBbDVMQmxIeVFFUFQwZkVwOElnTVd5TnNx?=
 =?utf-8?B?cFgrdnUyb0JRTEdwSCtHS2FySFNOVm4yV0tlY2t5M1p4Z2c4NCtOVTd5UTFx?=
 =?utf-8?B?dmdHVzAwWUJmSUlicWNlcWNqSG1oVWUwaVNXbVhpTVMyMHpIUTh1U0tyald6?=
 =?utf-8?B?UkRSMURjcjFHWUcwdlE0RThIQ09HeDlRZWlRWmxDbnY1RWZlK2VsWk1TOUlO?=
 =?utf-8?B?bFFGa2o5S0cwL29XT2dkSmlaOVdBbk1LVnBuRHppaU5hdmlWWTVjU2t6ZmRC?=
 =?utf-8?B?TlZtOXQyOGhhV3BuWnliZ1VEQndaYzVtbldDMzJsQTVrNVAyaTNVSFc5dkdu?=
 =?utf-8?B?WHVkazI5MmRtMlMzRGxxUUIyQnFkUFAxMVVVcUF5QnNYYUFTRklxaDUvUTBH?=
 =?utf-8?B?dVZrQzVLWGlqL0VJeVliWktmME9BaW9UbFBPVFN4eFkwOFdDQTUxcjZGcm5T?=
 =?utf-8?B?V1JMWUNaaEIweDZ2TjY3V0hvQjZ1SUc0T0t1R0tXQUoxZzAzM3RTQlg2aWZa?=
 =?utf-8?B?ZXRXY0ZQdWhwbTdjT05ZYUVUeDhQK2YvUjBtWEFXcHVOdW4vUjdTaHpnVWJl?=
 =?utf-8?B?a3liZ0dlRktmamlYSndUTUZ0M2hueXRudUc3Mk1OdTBocTk5V0dMcFcybEJr?=
 =?utf-8?B?OXppY2paK1RZNHQvY2hUbjRTdHd2K01SYW1YMk5IU0VYazNDeDdyeitjdmhX?=
 =?utf-8?B?ckxXNFhtb3d4YXN0N0VVTEhpeXVoangxSnVZY3l0QzJHNjNldW5wWnlpcDN2?=
 =?utf-8?B?UENQeXZtOXgvbkYzeldoSHlLd0VKTzBDRVhzMk82WE11MEFURDZ0RmZhZnZO?=
 =?utf-8?B?d1NucUU3eTVoOXF3Y1FOUUVXRHZtMFQ3T2dpZVVDQkw1MmRqM0ZyOEhQMXRF?=
 =?utf-8?B?M1U3NzUyNDFTWjZrY3AwdnU2RVdLVmx1bE9GTW9PUjBKS1JuTTRxdnR6ZGp5?=
 =?utf-8?B?QU0xS3c1dFJlZ3BFUjNxUUgvQW50Yk9jYWRSaTQ3ODdJMUxCOHR4WjlXUU10?=
 =?utf-8?B?cGhjWUh4em8raDNrSFhrcjR5N3lUeFVIb1lwRlMxZUVVZDQ5Ymt2Z01RUUFS?=
 =?utf-8?B?UllicG1zSHV4akhDNk1ZTG9seFpybkFNcGJvbnVpRnRna2g4KzFxSWJEcXZY?=
 =?utf-8?B?amozZ3MrcWNaVlBIajZjQXQ2Njk3UURpSERRUWR1allHcCtsb0JOditRbXdY?=
 =?utf-8?B?SW51dU41cWZTTTRYOThBRU1pK1lVeWF4cnQ2UllkYklvbUJCYUlibDJYZit6?=
 =?utf-8?B?bzRDUXNYNklYT1NyRzN3YnNscUJFRG8yakphcFZIdUNNUWZpSXc4Qm5oTlBs?=
 =?utf-8?B?Wk5vU3FZRjloaTgzcCtyYTJoSWYycDRydmg0bEFKUTRJQzlqc3ZmM09JNzJ3?=
 =?utf-8?B?M1pDTWR2Qm9rOGdDK3lPK3hEMklZaDVPL1RkOUpYM0FMTTN5SHZFbC9BOUFM?=
 =?utf-8?B?a2JWTXUveGNuTmpjSXo2UTFTWHZxTThvdDJsWVVaZUp1MWhJYlJabUFyTlBn?=
 =?utf-8?B?cy80a0NBTEFaYjdSekJYTkwzeWhZVnJNWHpzOFRsUWtPSWJNakprclJQL3dm?=
 =?utf-8?B?NzY1amdOUStaOGNLamJ2MFhjM3FlaVZsZWFHa3NNZ0dRRXdxN2FYbm1jN05C?=
 =?utf-8?B?emFacXRPV0MwanJpQzBVdzZGNFRNWmZDSWcwUkFxcTlzV2VnZjIzREtFZngz?=
 =?utf-8?B?dmtIZUlOb21PcjRMbXptRzZBQk80aVRtQmJSNWF5VkFqeXVXZHo4bzE5SjdI?=
 =?utf-8?B?VmR1cnBNZGhDUUo4ZXFqYkdHc1FDTjN0WWQ0cG0zcm5GM0kxZzl5S01VaXlX?=
 =?utf-8?Q?G1W+2rGIPClKcERr6TnN1Io=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <16774284EAFAC6448E0E6FDFDFB46ECD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e302c0ea-9024-4650-99d4-08db5cdede98
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2023 05:14:08.9079 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2k2xnJbaBpnLPXZCJGI7NsMh0KgaGeq4cwhnGTHHlm/dnSUiaU3LTfzSwNQb9iCDGy4eVyDI/0U1V/5NTMi29f8MmKwWd+MDozQyIsBQ6uDLz8y4u/YQroC+OmlE41hj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4879
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/uc/gsc: extract release and
 security versions from the gsc binary
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
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIzLTA1LTA1IGF0IDA5OjA0IC0wNzAwLCBDZXJhb2xvIFNwdXJpbywgRGFuaWVs
ZSB3cm90ZToNCg0KDQphbGFuOiBzbmlwDQoNCg0KPiAraW50IGludGVsX2dzY19md19nZXRfYmlu
YXJ5X2luZm8oc3RydWN0IGludGVsX3VjX2Z3ICpnc2NfZncsIGNvbnN0IHZvaWQgKmRhdGEsIHNp
emVfdCBzaXplKQ0KPiArew0KYWxhbjpzbmlwDQo+ICsJLyoNCj4gKwkgKiBUaGUgR1NDIGJpbmFy
eSBzdGFydHMgd2l0aCB0aGUgcG9pbnRlciBsYXlvdXQsIHdoaWNoIGNvbnRhaW5zIHRoZQ0KPiAr
CSAqIGxvY2F0aW9ucyBvZiB0aGUgdmFyaW91cyBwYXJ0aXRpb25zIG9mIHRoZSBiaW5hcnkuIFRo
ZSBvbmUgd2UncmUNCj4gKwkgKiBpbnRlcmVzdGVkIGluIHRvIGdldCB0aGUgdmVyc2lvbiBpcyB0
aGUgYm9vdDEgcGFydGl0aW9uLCB3aGVyZSB3ZSBjYW4NCj4gKwkgKiBmaW5kIGEgQlBEVCBoZWFk
ZXIgZm9sbG93ZWQgYnkgZW50cmllcywgb25lIG9mIHdoaWNoIHBvaW50cyB0byB0aGUNCj4gKwkg
KiBSQkUgc3ViLXNlY3Rpb24gb2YgdGhlIHBhcnRpdGlvbi4gRnJvbSBoZXJlLCB3ZSBjYW4gcGFy
c2UgdGhlIENQRA0KYWxhbjogbml0OiBjb3VsZCB3ZSBhZGQgdGhlIG1lYW5pbmcgb2YgJ1JCRScs
IHByb2JhYmx5IG5vdCBoZXJlIGJ1dCBpbiB0aGUgaGVhZGVyIGZpbGUgd2hlcmUgR1NDX1JCRSBp
cyBkZWZpbmVkPw0KPiArCSAqIGhlYWRlciBhbmQgdGhlIGZvbGxvd2luZyBlbnRyaWVzIHRvIGZp
bmQgdGhlIG1hbmlmZXN0IGxvY2F0aW9uDQo+ICsJICogKGVudHJ5IGlkZW50aWZpZWQgYnkgdGhl
ICJSQkVQLm1hbiIgbmFtZSksIGZyb20gd2hpY2ggd2UgY2FuIGZpbmFsbHkNCj4gKwkgKiBleHRy
YWN0IHRoZSB2ZXJzaW9uLg0KPiArCSAqDQo+ICsJICogLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gKwkgKiBbICBpbnRlbF9nc2NfbGF5b3V0X3Bv
aW50ZXJzICAgICAgICAgICAgICAgICAgICAgXQ0KPiArCSAqIFsgICAgICAuLi4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBdDQo+ICsJICogWyAgICAgIGJvb3QxX29mZnNl
dCAgPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLV0tLS0tLS1vDQo+ICsJICogWyAgICAgIC4u
LiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF0gICAgICB8DQo+ICsJICog
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gICAgICB8
DQo+ICsJICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8DQo+ICsJICogLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0gICAgICB8DQo+ICsJICogWyAgaW50ZWxfZ3NjX2JwZHRfaGVhZGVyICAgICAg
ICAgICAgICAgICAgICAgICAgIF08LS0tLS1vDQo+ICsJICogLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCmFsYW46IHNwZWNpYWwgdGhhbmtzIGZvciB0
aGUgZGlhZ3JhbSAtIGxvdmUgdGhlc2UhIDopDQphbGFuOiBzbmlwDQoNCj4gKwltaW5fc2l6ZSA9
IGxheW91dC0+Ym9vdDFfb2Zmc2V0ICsgbGF5b3V0LT5ib290MV9vZmZzZXQgPiBzaXplOw0KYWxh
bjogbGF0dGVyIGlzIGEgYmluYXJ5IHNvICsgMT8gb3IgaXMgdGhpcyBhIHR5cG8gYW5kIHN1cHBv
c2VkIHRvIGJlOg0KCW1pbl9zaXplID0gbGF5b3V0LT5ib290MV9vZmZzZXQ7DQphY3R1YWxseSBz
aW5jZSB3ZSBhcmUgYWNjZXNzaW5nIGEgYnBkdF9oZWFkZXIgaGFuZ2luZyBvZmYgdGhhdCBvZmZz
ZXQsIGl0IHNob3VsZCByYXRoZXIgYmU6DQoJbWluX3NpemUgPSBsYXlvdXQtPmJvb3QxX29mZnNl
dCArIHNpemVvZigqYnBkdF9oZWFkZXIpOw0KPiArCWlmIChzaXplIDwgbWluX3NpemUpIHsNCj4g
KwkJZ3RfZXJyKGd0LCAiR1NDIEZXIHRvbyBzbWFsbCBmb3IgYm9vdCBzZWN0aW9uISAlenUgPCAl
enVcbiIsDQo+ICsJCSAgICAgICBzaXplLCBtaW5fc2l6ZSk7DQo+ICsJCXJldHVybiAtRU5PREFU
QTsNCj4gKwl9DQo+ICsNCj4gKwlicGR0X2hlYWRlciA9IGRhdGEgKyBsYXlvdXQtPmJvb3QxX29m
ZnNldDsNCj4gKwlpZiAoYnBkdF9oZWFkZXItPnNpZ25hdHVyZSAhPSBJTlRFTF9HU0NfQlBEVF9I
RUFERVJfU0lHTkFUVVJFKSB7DQo+ICsJCWd0X2VycihndCwgImludmFsaWQgc2lnbmF0dXJlIGZv
ciBtZXUgQlBEVCBoZWFkZXI6IDB4JTA4eCFcbiIsDQo+ICsJCSAgICAgICBicGR0X2hlYWRlci0+
c2lnbmF0dXJlKTsNCj4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+ICsJfQ0KPiArDQphbGFuOiBJSVVD
LCB0byBiZSBzdHJpY3QgYWJvdXQgdGhlIHNpemUtY3Jhd2wtY2hlY2tpbmcsIHdlIHNob3VsZCBj
aGVjayBtaW5zaXplDQphZ2FpbiAtIHRoaXMgdGltZSB3aXRoIHRoZSBhZGRpdGlvbmFsICJicGR0
X2hlYWRlci0+ZGVzY3JpcHRvcl9jb3VudCAqIHNpemVvZigqYnBkdF9lbnRyeSkiLg0KKGhvcGUg
aSBnb3QgdGhhdCByaWdodD8pIC0gYWRkaW5nIHRoYXQgY2hlY2sgYmVmb3JlIHBhcnNpbmcgdGhy
b3VnaCB0aGUgKGJwZHRfZW50cnkrKykncyAtPnR5cGUNCj4gKwlicGR0X2VudHJ5ID0gKHZvaWQg
KilicGR0X2hlYWRlciArIHNpemVvZigqYnBkdF9oZWFkZXIpOw0KPiArCWZvciAoaSA9IDA7IGkg
PCBicGR0X2hlYWRlci0+ZGVzY3JpcHRvcl9jb3VudDsgaSsrLCBicGR0X2VudHJ5KyspIHsNCj4g
KwkJaWYgKChicGR0X2VudHJ5LT50eXBlICYgSU5URUxfR1NDX0JQRFRfRU5UUllfVFlQRV9NQVNL
KSAhPQ0KPiArCQkgICAgSU5URUxfR1NDX0JQRFRfRU5UUllfVFlQRV9HU0NfUkJFKQ0KPiArCQkJ
Y29udGludWU7DQo+ICsNCj4gKwkJY3BkX2hlYWRlciA9ICh2b2lkICopYnBkdF9oZWFkZXIgKyBi
cGR0X2VudHJ5LT5zdWJfcGFydGl0aW9uX29mZnNldDsNCj4gKwkJYnJlYWs7DQo+ICsJfQ0KPiAr
DQo+ICsJaWYgKCFjcGRfaGVhZGVyKSB7DQo+ICsJCWd0X2VycihndCwgImNvdWxkbid0IGZpbmQg
Q1BEIGhlYWRlciBpbiBHU0MgYmluYXJ5IVxuIik7DQo+ICsJCXJldHVybiAtRU5PREFUQTsNCj4g
Kwl9DQphbGFuOiBzYW1lIGFzIGFib3ZlLCBzbyBmb3Igc2l6ZS1jcmF3bC1jaGVja2luZywgd2Ug
c2hvdWxkIGNoZWNrIG1pbnNpemUgYWdhaW4gd2l0aCB0aGUgYWRkaXRpb24gb2YgY3BkX2hlYWRl
ciwgbm8/DQo+ICsNCj4gKwlpZiAoY3BkX2hlYWRlci0+aGVhZGVyX21hcmtlciAhPSBJTlRFTF9H
U0NfQ1BEX0hFQURFUl9NQVJLRVIpIHsNCj4gKwkJZ3RfZXJyKGd0LCAiaW52YWxpZCBtYXJrZXIg
Zm9yIG1ldSBDUEQgaGVhZGVyIGluIEdTQyBiaW46IDB4JTA4eCFcbiIsDQo+ICsJCSAgICAgICBj
cGRfaGVhZGVyLT5oZWFkZXJfbWFya2VyKTsNCj4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+ICsJfQ0K
YWxhbjogYW5kIGFnYWluIGhlcmUsIHRoZSBzaXplIGNyYXdsIGNoZWNraW5nIHdpdGggY3BkX2hl
YWRlci0+bnVtX29mX2VudHJpZXMgKiAqY3BkX2VudHJ5DQo+ICsJY3BkX2VudHJ5ID0gKHZvaWQg
KiljcGRfaGVhZGVyICsgY3BkX2hlYWRlci0+aGVhZGVyX2xlbmd0aDsNCj4gKwlmb3IgKGkgPSAw
OyBpIDwgY3BkX2hlYWRlci0+bnVtX29mX2VudHJpZXM7IGkrKywgY3BkX2VudHJ5KyspIHsNCj4g
KwkJaWYgKHN0cmNtcChjcGRfZW50cnktPm5hbWUsICJSQkVQLm1hbiIpID09IDApIHsNCj4gKwkJ
CW1hbmlmZXN0ID0gKHZvaWQgKiljcGRfaGVhZGVyICsgY3BkX2VudHJ5X29mZnNldChjcGRfZW50
cnkpOw0KPiArCQkJaW50ZWxfdWNfZndfdmVyc2lvbl9mcm9tX21ldV9tYW5pZmVzdCgmZ3NjLT5y
ZWxlYXNlLA0KPiArCQkJCQkJCSAgICAgIG1hbmlmZXN0KTsNCj4gKwkJCWdzYy0+c2VjdXJpdHlf
dmVyc2lvbiA9IG1hbmlmZXN0LT5zZWN1cml0eV92ZXJzaW9uOw0KPiArCQkJYnJlYWs7DQo+ICsJ
CX0NCj4gKwl9DQo+ICsNCj4gKwlyZXR1cm4gMDsNCg0KYWxhbjpzbmlwDQoNCj4gIA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3NjX2Z3LmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9nc2NfZncuaA0KPiBpbmRleCBmZmY4OTI4MjE4
ZGYuLjhkN2I5ZTRmMWZmYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfZ3NjX2Z3LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfZ3NjX2Z3LmgNCmFsYW46c25pcA0KDQoNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2dzY19tZXVfaGVhZGVycy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfZ3NjX21ldV9oZWFkZXJzLmgNCj4gaW5kZXggZDU1YTY2MjAyNTc2Li44
YmNlMmI4YWVkODQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX2dzY19tZXVfaGVhZGVycy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX2dzY19tZXVfaGVhZGVycy5oDQphbGFuOnNuaXANCg0KDQoNCj4gK3N0cnVjdCBpbnRl
bF9nc2NfbGF5b3V0X3BvaW50ZXJzIHsNCj4gKwl1OCByb21fYnlwYXNzX3ZlY3RvclsxNl07DQph
bGFuOnNuaXAuLi4NCj4gKwl1MzIgdGVtcF9wYWdlc19vZmZzZXQ7DQo+ICsJdTMyIHRlbXBfcGFn
ZXNfc2l6ZTsNCj4gK30gX19wYWNrZWQ7DQoNCmFsYW46IHN0cnVjdHVyZSBsYXlvdXQgc2VlbXMg
dW5uZWNlc3NhcmlseSByZXBldGl0aXZlLi4uIHdoeSBub3QgLT4NCnN0cnVjdCBwYXJ0aXRpb25f
aW5mbyB7DQoJdTMyIG9mZnNldDsNCgl1MzIgc2l6ZTsNCn07DQpzdHJ1Y3QgaW50ZWxfZ3NjX2xh
eW91dF9wb2ludGVycyB7DQoJdTggcm9tX2J5cGFzc192ZWN0b3JbMTZdOw0KCS4uLg0KCXN0cnVj
dCBwYXJ0aXRpb25faW5mbyBkYXRhcDsNCglzdHJ1Y3QgcGFydGl0aW9uX2luZm8gYm9vdHJlZ2lv
bls1XTsNCglzdHJ1Y3QgcGFydGl0aW9uX2luZm8gdHJhY2U7DQp9X19wYWNrZWQ7DQoNCg0KPiAr
DQphbGFuOiB3ZSBzaG91bGQgcHV0IHRoZSAnYnBkdCcgYWNyb255bSBtZWFuaW5nIGFuZCBpZiBp
dHMgYW4gaW50ZWwgc3BlY2lmaWMNCm5hbWUsIHRoZW4gYSBiaXQgb2YgYWRkaXRpb25hbCBjb21t
ZW50IGV4cGxhaW5pbmcgd2hhdCBpdCBtZWFucy4NCj4gK3N0cnVjdCBpbnRlbF9nc2NfYnBkdF9o
ZWFkZXIgew0KPiArCXUzMiBzaWduYXR1cmU7DQo+ICsjZGVmaW5lIElOVEVMX0dTQ19CUERUX0hF
QURFUl9TSUdOQVRVUkUgMHgwMDAwNTVBQQ0KPiArDQo+ICsJdTE2IGRlc2NyaXB0b3JfY291bnQ7
IC8qIGJ1bSBvZiBlbnRyaWVzIGFmdGVyIHRoZSBoZWFkZXIgKi8NCmFsYW46cy9idW0vbnVtDQo+
ICsNCj4gKwl1OCB2ZXJzaW9uOw0KPiArCXU4IGNvbmZpZ3VyYXRpb247DQo+ICsNCj4gKwl1MzIg
Y3JjMzI7DQo+ICsNCj4gKwl1MzIgYnVpbGRfdmVyc2lvbjsNCj4gKwlzdHJ1Y3QgaW50ZWxfZ3Nj
X21ldV92ZXJzaW9uIHRvb2xfdmVyc2lvbjsNCmFsYW46IG5pdDogInN0cnVjdCBpbnRlbF9nc2Nf
bWV1X3ZlcnNpb24gbWV1X3ZlcnNpb24iIGlzIGJldHRlciBubz8NCj4gK30gX19wYWNrZWQ7DQo+
ICsNCj4gKw0KPiArc3RydWN0IGludGVsX2dzY19icGR0X2VudHJ5IHsNCj4gKwkvKg0KPiArCSAq
IEJpdHMgMC0xNTogQlBEVCBlbnRyeSB0eXBlDQo+ICsJICogQml0cyAxNi0xNzogcmVzZXJ2ZWQN
Cj4gKwkgKiBCaXQgMTg6IGNvZGUgc3ViLXBhcnRpdGlvbg0KPiArCSAqIEJpdHMgMTktMzE6IHJl
c2VydmVkDQo+ICsJICovDQphbGFuOiBuaXQ6IGkgdGhpbmsgaXRzIG5lYXRlciB0byBqdXN0IHB1
dCBhYm92ZSBjb21tZW50cyBuZXh0IHRvIHRoZSAjZGVmaW5lcyBvbiB0aGUgbGluZXMgZm9sbG93
aW5nICd0eXBlJyBhbmQNCmNyZWF0ZSBhIGdlbm1hc2sgZm9yIGNvZGUtc3ViLXBhcnRpdGlvbiAo
aWYgd2UgdXNlIGl0LCBlbHNlIHNraXAgaXQ/KSAtIHRoZSBiZW5lZml0IGJlaW5nIGEgbGl0dGxl
IGxlc3MgY2x1dHRlcg0KDQo+ICsJdTMyIHR5cGU7DQo+ICsjZGVmaW5lIElOVEVMX0dTQ19CUERU
X0VOVFJZX1RZUEVfTUFTSyBHRU5NQVNLKDE1LDApDQo+ICsjZGVmaW5lIElOVEVMX0dTQ19CUERU
X0VOVFJZX1RZUEVfR1NDX1JCRSAweDENCj4gKw0KPiArCXUzMiBzdWJfcGFydGl0aW9uX29mZnNl
dDsgLyogZnJvbSB0aGUgYmFzZSBvZiB0aGUgQlBEVCBoZWFkZXIgKi8NCj4gKwl1MzIgc3ViX3Bh
cnRpdGlvbl9zaXplOw0KPiArfSBfX3BhY2tlZDsNCj4gKw0KYWxhbjpzbmlwDQoNCg0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9nc2NfdWMuaA0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9nc2NfdWMuaA0KPiBAQCAtMTcsNiArMTcsOSBA
QCBzdHJ1Y3QgaW50ZWxfZ3NjX3VjIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfdWNfZncgZnc7DQo+IA0K
PiAgCS8qIEdTQy1zcGVjaWZpYyBhZGRpdGlvbnMgKi8NCj4gKwlzdHJ1Y3QgaW50ZWxfdWNfZndf
dmVyIHJlbGVhc2U7DQoNCj4gKwl1MzIgc2VjdXJpdHlfdmVyc2lvbjsNCmFsYW46IGZvciBjb25z
aXN0ZW5jeSBhbmQgbGVzcyByZWR1bmRhbmN5LCBjYW4ndCB3ZSBhZGQgInNlY3VyaXR5X3ZlcnNp
b24iDQppbnRvICdzdHJ1Y3QgaW50ZWxfdWNfZndfdmVyJyAod2hpY2ggaXMgemVybyBmb3IgZmly
bXdhcmUgdGhhdCBkb2Vzbid0DQpoYXZlIGl0KS4gVGhhdCB3YXksIGludGVsX2dzY191YyBjYW4g
cmUtdXNlIGludGVsX3VjX2Z3LmZpbGVfc2VsZWN0ZWQNCmp1c3QgbGlrZSBodWM/DQoNCmFsYW46
c25pcA0KDQoNCg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfaHVjX2Z3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWNfZncuYw0K
PiBpbmRleCAwYTBiZDU1MDQwNTcuLjBjMDFkNDhiMWRkOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMNCmFsYW46c25pcA0KDQoNCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jDQo+IGluZGV4IDc5NmY1NGE2MmVlZi4uY2Q4
ZmMxOTRmN2ZhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF91Y19mdy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3
LmMNCmFsYW46c25pcA0KDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF91Y19mdy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncu
aA0KPiBpbmRleCA4ZjIzMDY2MjczMzIuLjI3OTI0NDc0NGQ0MyAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaA0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oDQphbGFuOnNuaXANCg==
