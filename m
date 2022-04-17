Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DAB504768
	for <lists+intel-gfx@lfdr.de>; Sun, 17 Apr 2022 11:32:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE88410E012;
	Sun, 17 Apr 2022 09:32:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C7810E012
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 Apr 2022 09:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650187932; x=1681723932;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=kpkm540ZqebOcFfvR31MYhNAZbjpJ7ZjQbYChu4JjG4=;
 b=eos+7tCyk+eOodnw+7P0dxbtj2heEk2BFs30mZhOv6JANucASX/zn7TQ
 SFhsuTjcOt9OZ+je+NZZgbJqj6cYVw2qtVUbZRS0eX4Lztd2m3tJLKXBL
 k7VgCjk+7nxm0VvalCEVti6jvxYLhJJ5t95d/VnFEnmgFcqr2RIw3+Yg2
 RhrasQ/9jZaRgezUMxWqa+T2moLkTWnfntPfzFElRtzhqKFyQZOmHFPw/
 /B9eMFwg+2dvn/PSlN5qpUE4qBX6jf5b7W7nSw9mEHnvx4ENHMvGWc3uw
 AwFz01kZGtuvVlKEpmrtLengVri76+8btFlCSHIPxtTFqgaCgizQFZibj A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="250673935"
X-IronPort-AV: E=Sophos;i="5.90,267,1643702400"; d="scan'208";a="250673935"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2022 02:32:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,267,1643702400"; d="scan'208";a="858882217"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 17 Apr 2022 02:32:11 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 17 Apr 2022 02:32:10 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 17 Apr 2022 02:32:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Sun, 17 Apr 2022 02:32:09 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Sun, 17 Apr 2022 02:32:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GBiT9jlkY2lU33oOeHC5tdxo3UjLFK7vZAp2AMs9EmGErBHciNOxetLpR8vzk/QWUOvRhCDc5HG7MnxbfhI5O/tKJKxvOf0hi7z/mVX6atzH4H0vOmgGMu74v+5ppvNBsOafdCavu2s12YBQWBrNQ6adEplX0jal1xs+ZKnn0DhQTG5N72NtZSzjQs7bmeZTSUfsDJOd4g4xhoga+W5GA2BkLsQc+tDUwWkjblksrIcn6QDsfDMDBU4UZ6Q07cwfFvndFQLfZuGwMzPv7ME05G09RxHP490+fKzcSdybuwR29ZgeoRjyq91Z/IASgD1VUo5Tu731sf4BX5ZjeevrWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kpkm540ZqebOcFfvR31MYhNAZbjpJ7ZjQbYChu4JjG4=;
 b=Cw65FcYupUKKpnJDly246hSpjvn5EM/4RP/nV0uTk5aMHUC9sTZ2cSpc58uKlVKQD9wjkgP8mPMsOPGik8bUSeFRDE/GSGJmnXlhx6hp1JOaBa91jW6USBTpp308T91a0Gwl49wCRdeNaFlmEJ64TOaiJ0NPBbqUawHYyq6HbphYOAO3AN1ZP376b9sxn4MqPfpp6/77vAyrAXb5ekiHxg+xgc32pkv8HpWg4VnjaoifxAaSXDVVOO/vl7+ykJSqWZapRGtxKQYbvxmBsEB40GFWGBJRz/8pd419McSn7JhANFDcalmq1Q1UOhi49cBfovJkZJjBAfRInyPV/JHi+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by DS7PR11MB5992.namprd11.prod.outlook.com (2603:10b6:8:73::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Sun, 17 Apr
 2022 09:32:07 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c%7]) with mapi id 15.20.5164.025; Sun, 17 Apr 2022
 09:32:07 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v3] drm/i915: program wm blocks to at least blocks
 required per line
Thread-Index: AQHYUClyo3NB1qBAU06xdi823aQUO6zz264A
Date: Sun, 17 Apr 2022 09:32:07 +0000
Message-ID: <a47cd81138f8b3717304d8c364b053b012b9238d.camel@intel.com>
References: <20220406174311.82104-1-vinod.govindapillai@intel.com>
 <YlhhEmBvblhXf8l1@intel.com>
In-Reply-To: <YlhhEmBvblhXf8l1@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 52514c71-32a2-41b3-5f46-08da20552413
x-ms-traffictypediagnostic: DS7PR11MB5992:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DS7PR11MB59922AD97A3D0E1D78712974F6F09@DS7PR11MB5992.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yVwYEgdrJvLWuAIqZHRnIH3n13uu+biXmS2xkafr46HUnajMMkuKpEkHX4JlvQM9tPUKfzzOlnM1PnLP8/+I7c2mhwD0Ydc305dpJfCoDS6ZuDdUeNh6qzhVnr9iRMo4d8R9NjngpKbdzHPk2AzoFw4bBtzctkw9nbZLiOSkB6KtGVgxe2JyGIvheL2yZmwbSOAxsjGkwicHXh16yvtpAJ482JjUZLNDDMi3/Q6nfidHJ8YSNqOqS5ULMR8DeNxrBZz43zSSwbPF1g2ELvgN9dBWpxPUGk6IRIwmPdokGQTNYex5ZFapS5dRw+32GP5Im+FRZ89R0R37H1j9/4oM5D3KTeFmAOaEO/78NbqoQ/P1LTOtnQ0jTf1gKTtTmBtNerR5jedqJbcdalunAEuZnE38i9fhPhKjroWVEJuzMmCF8SfNegG7sXTzp3rcWhdxXmBeGo8xI4+AzUt20XsBL+7XZNqtXPtx5j6rW1KT7miaXweVH1Aizcy4W3aVxtWzypl9yYl/G1RNYSUo/IaJgsGeYpKdLdWvHgWa84R1yubz8aA2u4bSqQSZTk/yKJyv0ETdk2KDs/yJ3gotCrMbD+KQ148tUZJDu+6ROKRdheRK5HIYS5ABrR60jHVrOwgKjZwE+RFTdv/+q4XH2IqZW7Tui1e5SxfMs7zhcMirzpw9YAm8UQcA1V0DrDJuqTGREZ06TFXM6omxpqx0T1UABQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(316002)(6916009)(54906003)(66946007)(76116006)(91956017)(86362001)(2616005)(8676002)(4326008)(64756008)(66476007)(66556008)(38100700002)(122000001)(38070700005)(26005)(6512007)(82960400001)(6506007)(71200400001)(66446008)(508600001)(6486002)(66574015)(83380400001)(2906002)(8936002)(36756003)(5660300002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ajhnREZzZHFmSXQ1c1FnVlI5VCtyR09UclhmcEJVYUtHczJhalVpaFhmQy85?=
 =?utf-8?B?bVJBVnRibTNmVE4zNFhWVjQ0cjYrSFNBb0ttRVNCN3RYdHdEaVQ0bWtTb3Nj?=
 =?utf-8?B?U2FMS1hoK2ZuYmh1bFJhWjlGb1JFSmV5ZHpSK0E4eGpDaUFJVUFrbjcwaDBx?=
 =?utf-8?B?OVg0ZFNxdGYvU0NYb0duQllLbWJOclMvTHllSmpSNzQ2d3lMdFRFdGc1VFMw?=
 =?utf-8?B?SlNwdkJHSDVEV0F0eUUwY29YZzlXeWFTOU1kcnRQb0U1UDAvcDlwYzJsb0NO?=
 =?utf-8?B?K0UzTzFPWEtIODV3T1FiM2x0c3ZTbmJhUzRneHhsUDY0TjdpRlRjR1JXaXNR?=
 =?utf-8?B?R3Rsc1lxZlZjaVNDQ3RtZmxuUy80RmhTV0NmOXFyVG94Szh1TE9BRnNJWGl5?=
 =?utf-8?B?WHR6NDlSb3ZrZDFlNFpxUlBUNXFURG90SEJhZXdyRktzMDFPWmx2ZjNBMmoz?=
 =?utf-8?B?THdxYTI1K2hGRnB5ZHpYTDlkRVRlTUJlNUhZelpCZ0NtZXg5RUFENnB5TG9C?=
 =?utf-8?B?VlRZZ1V2THhaVk85cnVLamN6VVF5aGx0alZpOXk5MGgxendncjR1Ny9vcUJi?=
 =?utf-8?B?bHoyN041SVkyZW5vVGduVWVlTkd5RWV2UHFBOXJ0VmllOW9CclYySjE2SzFO?=
 =?utf-8?B?bWYzcjU0N0U0eG9UL0g4dURDeXVvb0plTmkyNWMzWERlZWxsN2w4YkxlbGJ4?=
 =?utf-8?B?TG5NUS9qY0VseUhlTHhjb1dSUmhsTDhGTUtncDJRMFRSSXljRWFLejkrdjNz?=
 =?utf-8?B?SFNiTTBuUHZZcHJpKzF4eW9pRnZqVzFrbDB0VS9KNk0wU05VZGFpMjU2dnZr?=
 =?utf-8?B?YTR6U2JOTzdubWpZSXVZZDdUMEdzR0ljcmdFK1RnV1kwOWgzMG1MRFh2aitx?=
 =?utf-8?B?UzhiVXJVbDd5VlQxbDN6NFB3YkVoWHlqMVluS2xHNXpldVdGUXhid0tLNlVp?=
 =?utf-8?B?N1h0OUxtL3cveTdqTWRrUE0vTkVaTEVRN3RHMmlqZjMxZFJNNERqSy9JaHZK?=
 =?utf-8?B?by9WdVR5N2MzSUxCNE1OV2ErV2xGbDlqQVQ1Vzc2aHo4bWJ2N1ZGMjdrNmNJ?=
 =?utf-8?B?Vm94cTJwdkI4VzFpSXU2UEF5M2wyQ01DT1lmenJQQmNydkU3TS8zbkRQbG92?=
 =?utf-8?B?cWhqamFLaGMveFJrNTVzRmFrMEVNOTNZZGdUUU1xcldUWTVVZEFTMFpQMDRS?=
 =?utf-8?B?UTkrdEROa2UxSU92U2hEdUJ1U0NuUjZQZVp2ZFluR2ltQnJoK1N3NnJyVmw5?=
 =?utf-8?B?MkExaSs3MUdnWUVQYXh0WjlYSXNoTU80RmRTN3RwSEd3cHlMcmcraTlRMkh6?=
 =?utf-8?B?b0RFbDRYaXhzc2htS1pMTnp3Wmc0VUxxQ20xM0xhSExDWVFMODkyaVBwRmtT?=
 =?utf-8?B?a28zdVNQK0xVdWEyRms1ZkhpNWpxVTFsWThpQ3dvWVVVaStob1IvU3poMzlP?=
 =?utf-8?B?L0pkZG8ralo0eFh0ZEc1TGxyNUwxYk93K1ZOblZIWUYra2VVaDdLVVVrMkda?=
 =?utf-8?B?RmVULzg5SVltaGwvQ2M4SVlBUjBDL0l1SnIrY1RCYjRLZ0dBL1VISVlYK0l0?=
 =?utf-8?B?N2V3Rm5USHdadUdmN3hsa2NDeHgvYWJDeSszYUkrL1B0Wm5NeHM0bXozcTAz?=
 =?utf-8?B?eXpnSkhNdGc4ZzE3V2pzSDNnNC9kNjZPQUxEQVFQdmtlRmhqS3ZoOVNWSGhT?=
 =?utf-8?B?VVlEZUZtNkQxS3gzalV2Z3lTUnpmZUt3WDkvRGh3c0lTSUYwMUJkZE9tb1U5?=
 =?utf-8?B?U2Jaa3ppZ3EyOFBoTEpwajN2M2FKd3E1QSs0V29ITmkrRmxYUWgvaXM2d09v?=
 =?utf-8?B?RzVMdkJ6bnYxM0RGSTR3U0xTbys1RlVTQ0t5UGNLNUtJV1pIWkpsN3NWUGgx?=
 =?utf-8?B?a1o4SlJZdjN3bXJZN3ZOV2xWdDcxTmZFS3QrQmR1eDRHaUVBVC9jd3JvME02?=
 =?utf-8?B?ZklkS0xNc2J1akl3Q1NYMmRrdzVxcWJBNmpXVTFhMFM0T0M5djdCdmxRdjMr?=
 =?utf-8?B?dnlNWStYdXYrSUpZQjZ1UHE3MVd6dzNjcmVyeXdOdjdLdEZFOGQ0eTNtN0hO?=
 =?utf-8?B?azhneWxGRDFCRkp5QnZtbjhObXlSNENsWVpyMkxmT09XVUxaeW93MFZDRFl6?=
 =?utf-8?B?ek1zT25IWnQ4cEFaV2pTUlFhM2U0SGhQS2J3RkdYWldQUW1DanJPRkJ5M0Jq?=
 =?utf-8?B?RWtNNHZpR0tCNTFNQVdEd3lOREs2cmlOYXcwQThaMjg3YkhKemdIaHpXSGhl?=
 =?utf-8?B?UEJmK1JRa3Nzd3Y5dnRscFQxQ0hab0NIOXBoUzNVKzBhaFdxd01obWdOTWVM?=
 =?utf-8?B?VWlZeDAvS2VBUUlKeFN3TkcwV0FUZ3l4Q3ZPYmloQUY5Ry9nQ2dIQnVtWWFC?=
 =?utf-8?Q?/E6xorQbiqE5ojmnIW95TT+DpWQnLXWuU88wh?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6A980BFA45B9384C85A343FD19BAC283@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52514c71-32a2-41b3-5f46-08da20552413
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2022 09:32:07.4967 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uiujXmKZZeTeTXMogvi+vHd4EQMs6Z6KFaunwHCHaSxyfNh3/InA935LbthkgBXbGDXTFOkwyFcNzzFN31Wsw4XI6lp0GhEPmALyjOZefrg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5992
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: program wm blocks to at least
 blocks required per line
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIyLTA0LTE0IGF0IDIwOjU5ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgQXByIDA2LCAyMDIyIGF0IDA4OjQzOjExUE0gKzAzMDAsIFZpbm9kIEdvdmlu
ZGFwaWxsYWkgd3JvdGU6DQo+ID4gSW4gY29uZmlndXJhdGlvbnMgd2l0aCBzaW5nbGUgRFJBTSBj
aGFubmVsLCBmb3IgdXNlY2FzZXMgbGlrZQ0KPiA+IDRLIDYwIEh6LCBGSUZPIHVuZGVycnVucyBh
cmUgb2JzZXJ2ZWQgcXVpdGUgZnJlcXVlbnRseS4gTG9va3MNCj4gPiBsaWtlIHRoZSB3bTAgd2F0
ZXJtYXJrIHZhbHVlcyBuZWVkIHRvIGJ1bXBlZCB1cCBiZWNhdXNlIHRoZSB3bTANCj4gPiBtZW1v
cnkgbGF0ZW5jeSBjYWxjdWxhdGlvbnMgYXJlIHByb2JhYmx5IG5vdCB0YWtpbmcgdGhlIERSQU0N
Cj4gPiBjaGFubmVsJ3MgaW1wYWN0IGludG8gYWNjb3VudC4NCj4gPiANCj4gPiBBcyBwZXIgdGhl
IEJzcGVjIDQ5MzI1LCBpZiB0aGUgZGRiIGFsbG9jYXRpb24gY2FuIGhvbGQgYXQgbGVhc3QNCj4g
PiBvbmUgcGxhbmVfYmxvY2tzX3Blcl9saW5lIHdlIHNob3VsZCBoYXZlIHNlbGVjdGVkIG1ldGhv
ZDIuDQo+ID4gQXNzdW1pbmcgdGhhdCBtb2Rlcm4gSFcgdmVyc2lvbnMgaGF2ZSBlbm91Z2ggZGJ1
ZiB0byBob2xkDQo+ID4gYXQgbGVhc3Qgb25lIGxpbmUsIHNldCB0aGUgd20gYmxvY2tzIHRvIGVx
dWl2YWxlbnQgdG8gYmxvY2tzDQo+ID4gcGVyIGxpbmUuDQo+ID4gDQo+ID4gVjI6IHN0eWxpbmcg
YW5kIGNvbW1lbnRzIGNoYW5nZXMgKFZpbGxlKQ0KPiA+IFYzOiBVcGRhdGVkIHRoZSByZXZpZXdl
ZC1ieSB0YWcNCj4gPiANCj4gPiBjYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4NCj4gPiBjYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxp
c292c2tpeUBpbnRlbC5jb20+DQo+ID4gDQo+IA0KPiBOb3JtYWxseSBwZW9wbGUgcHV0IGFsbCB0
aGUgdGFncyBpbiBvbmUgYmxvY2ssIGllLiBubyBleHRyYSBuZXdsaW5lcw0KPiBsaWtlIHRoaXMu
IEFsc28gJ0NjOicgaXMgdGhlIG5vcm1hbCBmb3JtIGZvciB0aGVzZS4NCj4gDQo+IEkgd2FzIGV4
cGVjdGluZyB0byBzZWUgZ2l0bGFiIGlzc3VlIGxpbmtzIGhlcmUuIE1heWJlIG5vdCBDbG9zZXM6
DQo+IHNpbmNlIHRoaXMgaXMgbm90IHRoZSBmaW5hbCBmb3JtIEkgZ3Vlc3MuIEJ1dCBjb3VsZCBz
bGFwIHRoZW0gb24gaGVyZQ0KPiBhcyBSZWZlcmVuY2VzOi4NCj4gDQo+ID4gU2lnbmVkLW9mZi1i
eTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQo+
ID4gUmV2aWV3ZWQtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlA
aW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
IHwgMTkgKysrKysrKysrKysrKysrKysrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0
aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiA+IGluZGV4IDg4MjRm
MjY5ZTVmNS4uZDI4NGVjOGFmZjIxIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
DQo+ID4gQEAgLTU0NzUsNiArNTQ3NSwyNSBAQCBzdGF0aWMgdm9pZCBza2xfY29tcHV0ZV9wbGFu
ZV93bShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlLA0KPiA+
ICAJfQ0KPiA+ICANCj4gPiAgCWJsb2NrcyA9IGZpeGVkMTZfdG9fdTMyX3JvdW5kX3VwKHNlbGVj
dGVkX3Jlc3VsdCkgKyAxOw0KPiA+ICsJLyoNCj4gPiArCSAqIExldHMgaGF2ZSBibG9ja3MgYXQg
bWluaW11bSBlcXVpdmFsZW50IHRvIHBsYW5lX2Jsb2Nrc19wZXJfbGluZQ0KPiA+ICsJICogYXMg
dGhlcmUgd2lsbCBiZSBhdCBtaW5pbXVtIG9uZSBsaW5lIGZvciBsaW5lcyBjb25maWd1cmF0aW9u
LiBUaGlzDQo+ID4gKwkgKiBpcyBhIHdvcmsgYXJvdW5kIGZvciBGSUZPIHVuZGVycnVucyBvYnNl
cnZlZCB3aXRoIHJlc29sdXRpb25zIGxpa2UNCj4gPiArCSAqIDRrIDYwIEh6IGluIHNpbmdsZSBj
aGFubmVsIERSQU0gY29uZmlndXJhdGlvbnMuDQo+ID4gKwkgKg0KPiA+ICsJICogQXMgcGVyIHRo
ZSBCc3BlYyA0OTMyNSwgaWYgdGhlIGRkYiBhbGxvY2F0aW9uIGNhbiBob2xkIGF0IGxlYXN0DQo+
ID4gKwkgKiBvbmUgcGxhbmVfYmxvY2tzX3Blcl9saW5lLCB3ZSBzaG91bGQgaGF2ZSBzZWxlY3Rl
ZCBtZXRob2QyIGluDQo+ID4gKwkgKiB0aGUgYWJvdmUgbG9naWMuIEFzc3VtaW5nIHRoYXQgbW9k
ZXJuIHZlcnNpb25zIGhhdmUgZW5vdWdoIGRidWYNCj4gPiArCSAqIGFuZCBtZXRob2QyIGd1YXJh
bnRlZXMgYmxvY2tzIGVxdWl2YWxlbnQgdG8gYXQgbGVhc3QgMSBsaW5lLA0KPiA+ICsJICogc2Vs
ZWN0IHRoZSBibG9ja3MgYXMgcGxhbmVfYmxvY2tzX3Blcl9saW5lLg0KPiA+ICsJICoNCj4gPiAr
CSAqIFRPRE86IFJldmlzaXQgdGhlIGxvZ2ljIHdoZW4gd2UgaGF2ZSBiZXR0ZXIgdW5kZXJzdGFu
ZGluZyBvbiBEUkFNDQo+ID4gKwkgKiBjaGFubmVscycgaW1wYWN0IG9uIHRoZSBsZXZlbCAwIG1l
bW9yeSBsYXRlbmN5IGFuZCB0aGUgcmVsZXZhbnQNCj4gPiArCSAqIHdtIGNhbGN1bGF0aW9ucy4N
Cj4gPiArCSAqLw0KPiA+ICsJaWYgKHNrbF93bV9oYXNfbGluZXMoZGV2X3ByaXYsIGxldmVsKSkN
Cj4gPiArCQlibG9ja3MgPSBtYXhfdCh1MzIsIGJsb2NrcywNCj4gPiArCQkJICAgICAgIGZpeGVk
MTZfdG9fdTMyX3JvdW5kX3VwKHdwLT5wbGFuZV9ibG9ja3NfcGVyX2xpbmUpKTsNCj4gDQo+IEEg
c2ltcGxlIG1heCgpIHNob3VsZCBkbyBzaW5jZSB0aGUgdHlwZXMgYXJlIHRoZSBzYW1lLg0KDQpU
aGFua3MhIEkgdXBkYXRlZCB0aGF0Lg0KDQo+IA0KPiA+ICAJbGluZXMgPSBkaXZfcm91bmRfdXBf
Zml4ZWQxNihzZWxlY3RlZF9yZXN1bHQsDQo+ID4gIAkJCQkgICAgIHdwLT5wbGFuZV9ibG9ja3Nf
cGVyX2xpbmUpOw0KPiA+ICANCj4gPiAtLSANCj4gPiAyLjI1LjENCg0KVjQgU2VudC4NCg0KQlIN
ClZpbm9kDQo=
