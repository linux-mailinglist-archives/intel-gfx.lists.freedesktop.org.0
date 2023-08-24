Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A328D786DFD
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 13:34:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D37110E534;
	Thu, 24 Aug 2023 11:34:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B123B10E533;
 Thu, 24 Aug 2023 11:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692876867; x=1724412867;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=g2D1gP5rsH3IzVfWwBsm0adqXdZoGip1C6V4biuSSL8=;
 b=SQoIjP++lNmGH+MILhuDbz70PZdvKnfUrFYNLyksiLKtvbr4lpgSGcfB
 V444NHuiFo0WSotxH+gyPJQNeGYgkdsMsJ+hjphRIYBy+7xMiM2bAhGaz
 PJVyVbloXiNoWOSV7K9gbtRrm3TqC26O+wL8FE3jPj3JYe557L4EtOtRT
 p/Ue4PW27jRfsKISXwss0iRc+KmvtatKjEojYS8c/TXNFKI+LwlX/rJNs
 n/CHEa/5usgNFChKzwiaPXHUQ7xN7CuZhd7sc06i1FPd+ZgyU2hzUWXqa
 xGyX5UMqgEma41UhBDGhPixTsjL4ghuoIgIlgj+KmjK21hrv7fxiNXpz2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="353952156"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="353952156"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 04:34:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="910875631"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="910875631"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 24 Aug 2023 04:34:26 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 04:34:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 04:34:25 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 04:34:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L9Zrpn6xGDPw3qPaQdLmjSMpAGYc6g+KLGoYzaBeatMbxSnMwmZt6F0IOzOemGHy8sIUaDSqZrJylPH0gNBVyd0QqlK4MtaIXJULnAaxXJc65pFQ3k2g5YkSAlLnSolCOIw9DdWq3Kvmh+4FTHjyPRNVHwD2bN2ywS7WUqpeM1lbwFNNn7xWBvuw1I8Gl0nZqhoG1rsp6PUIDPYpQIGCByoAmJQTaOuGbDJ35t9JFlnMTu8OX8j++uz1o8fkhaofLj9oGTZ4nAXawPMRdv7KouCjt9T5RNQ3uqcRAKPbikqMbWaVhiSqWuZlr+qgFhnZNaxVlPbD08OF1DkjTUiMxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g2D1gP5rsH3IzVfWwBsm0adqXdZoGip1C6V4biuSSL8=;
 b=fwF1DZpjzP7uVnwhZ3khIDpABw4yoTNeCWCH9OSNWDORk7owKkeRDpPwyccHrKLObpsHoOFW8AF1doIK2d4telAcCKYnXP5ZwKSvgQpv+2qR1YuvEiAgJL09HStgv3Ns0UZPz4iVR0pGqO0PuEa06ncPjMzfL8zxUa5Xd68ZY6/YItOx4qYsr5jSt8tttgn7YL6h3JsC8w2c4/vzqlHjZANgGP8xKlhAliwW5bbT/qwL7uPoHh8y7vk2uQ2gOk/DKubyUC2ANS5XsnRCzVXs99PHfrOAVxzs59ym+pub/Tf2B4S2yx638/RWH4FtC9O4Dql7d0EBwPpbNFXIght9pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by SN7PR11MB7589.namprd11.prod.outlook.com (2603:10b6:806:34a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 11:34:23 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 11:34:23 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 27/42] drm/i915/xe2lpd: Read pin assignment
 from IOM
Thread-Index: AQHZ1eSUOKwZZ7Zf4E6uUUEAM3DZs6/5UhCA
Date: Thu, 24 Aug 2023 11:34:22 +0000
Message-ID: <f07485a99171d442a4ec2cf2b7500829894ae374.camel@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-28-lucas.demarchi@intel.com>
In-Reply-To: <20230823170740.1180212-28-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|SN7PR11MB7589:EE_
x-ms-office365-filtering-correlation-id: 7ad1ef7e-7a37-4592-2abc-08dba4961067
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XTffoVv78MP9sy10VOUuhgD8BMjLoqzVgvTOtsD7hiyy3p/ZOfHFJ5rCh76tp8g9uDR/fS3mN1+LGQUfmF4JIQTOD2UeEzCOZHI7q1qJvFqVfsdCzBlc1sLpxOtmlhe/reqhflAnRHxM53tlfiVfLU7UXdM3b3L7jx9jtj6H2XQm9b5xkAgGYaKE6bkKB2ktSdVNqhQDTCe3ECGSPm1KV8XUaL5RckDt5Wjw3F/mTK0uN8Yb8VA79VQPyxOUOhJZUnWslJFmCi/8NCDtnnicnjbm4y95o9YUjKAkOfAMv5RpU3fmjd5J/kWRxaPwddN39sw/l1v1aAzbLHnsku4hcMvaiMY0OHbKjY+7exJdMfBIyMaQ2HAEis6svQUTg4TQRfw98LWvW0mhg3ldnIO/+n57LjMV5MIVF1QVIwEFWlrYRBEOtXnLLu4vM5WebpwREiMP5RWSf8XoOJ7z+HWrZcTsXoDAMGKr8v3a+0XZvOOZGph/45eDn04NEwn1CfhNlVAWLNKkoogF6jhmQ0UTcXggdm/O1iCjvz++j+MYOJoqKvho4uCpwj9UohCEktlH5fCBEcPSVCqwYHhPizowdiTkacmcD/arq0/T5vs6ppTm91I92ZIRQoXGzV5gq5dJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(136003)(396003)(366004)(376002)(1800799009)(451199024)(186009)(86362001)(122000001)(38100700002)(38070700005)(82960400001)(36756003)(6506007)(71200400001)(6486002)(478600001)(5660300002)(316002)(76116006)(6636002)(2906002)(8676002)(91956017)(110136005)(8936002)(450100002)(64756008)(26005)(6512007)(66946007)(66556008)(66476007)(66446008)(41300700001)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SUpKVnBxL1ZKRENrcCtzWEFaNjFQbzhNN1QrUnZ6ampGTmNYKzMzbmZVWG1s?=
 =?utf-8?B?MnBPVE1zaG5PWE8xb0prbXlGQjdGUnFldG5PTlNieHhlRXVCa3ZQV1JsNE1S?=
 =?utf-8?B?UzRaWjh6bExpbXRTS2xCakVzWkNxWm1SYWkxQVNWWFlEWFlnbjg4R2pFL0pZ?=
 =?utf-8?B?Y1FCUHhjM1AwM0dTeGNxN3NhYUJzdG8xdXl6RDlZaTJYL2tweTlFWGY3Y2l2?=
 =?utf-8?B?dGFldC92eXpJRUFGYXhKVHEzVWZ1Skx4dzFZWElhT0J2L2JZWlRZNnpsSXlV?=
 =?utf-8?B?RWR6MzU1bDYzdk0xa0ZIUUlZZHhOdVE0SzY4ZjRKaWN5TlNwR0lRdzdIaDEw?=
 =?utf-8?B?dUU2N0J6czExQjNvMzMvQ1NzM0p0VmorWkpaMVBTL0d0WVhRUm9CdFBsWDVo?=
 =?utf-8?B?UXB6ZnJhNEJjWi81T2RlTUp1MDhxd1FPcElaMWhsdC9KZDlLa3V2RmF1UU9Z?=
 =?utf-8?B?azQyNGp0TzRBaGQzTnBSbGd0SmZMVG5uNDlNK01EVlAxeWQ5d0E2RXlYc1JK?=
 =?utf-8?B?TFpPblp5TzgxblV5NWNkcjlEQUtWc3p6UXVqYXhaQ0t0MUxwaWh3bHdieEk5?=
 =?utf-8?B?cUxlN2hQVGtaRzZMZEhWQ2pseGhYb1hkVTZQNDAxVVhkakV2eXpyWVlqWmZa?=
 =?utf-8?B?azdUQjdhWEtES0hZaFhjVjdmUnZoMUVPSkoxSE9yOFNpRU03Q0JlUTBvSmR1?=
 =?utf-8?B?d3VuYzVISU14YXNFR3dMeXZBbU16bm9ZY2pNZ3FhU1JHQnU1VnpHVjZPb29K?=
 =?utf-8?B?dHRzQSt0ZncrbWR3L2JJZjFPT1pIRVFhU2dYUkYvcWJkb3B3cXNJVEtrZ2dP?=
 =?utf-8?B?OVRYUEhrZGQ1dWFIN2dOZkN0Q290bFlOaEppU1ROTUlUYm5FQzVnTnhML2xy?=
 =?utf-8?B?R0dYMFN5ZExGWEV4Qkl2cjNwczdzOGpWNnJMUG9xNjFQdUxQNTAxRHVEMVhR?=
 =?utf-8?B?UngzU0EyckdjY3ZCaWhTUUVkMmV2M05tRjR0MUVXUzI0Wm50NzhWdkRySWQ2?=
 =?utf-8?B?MDM4SDV2QXhRMzYyeHZrSTQwd25CL2ZoRWNDcXZMQ283dGw5ZUxwU0xhSzJv?=
 =?utf-8?B?cWM1c01JV2lnQ0xCYWxaSVI1UVlVV3ZkcWE1bkdiSFc4cjUwUW05dFk4N1FR?=
 =?utf-8?B?Tkw4R2kxMjk4aE8venFqK0FJT2FXWTZLNDBXYXVvaHVsL09xVzU0QldWOGgy?=
 =?utf-8?B?WERjNUkrZXJYZ0pGVHFtUWFwOEFnQy9NYmdlTDhoTTgxc3Q0bjZiaHgyalRQ?=
 =?utf-8?B?T2lvWWNLdzZGRkEzSFFuU1lYSkZQaHRQQjZYOGJwM1pjWW1hMUg4WFduWmlm?=
 =?utf-8?B?NHlpdkxteTBrandDaTZPU0lMSmhkanVSL2Z4UjA2cWFKWk1oZ0p1ZitKZFJY?=
 =?utf-8?B?dGhqRjZZQW5Zc1pGcDgrbXY4bmZITG1sMGNLSGFxZjRZT3Z5VGZPem5LYzRn?=
 =?utf-8?B?YWRsZmhpWEJpRVlKWExBTlg4a05sZnMxQmljbXQ2LzJMaDJIZXFCYkJ0d3d6?=
 =?utf-8?B?RkdwUWU4enJ2ait0NEFqekd6RUVIYjFNeDdYZ0l0R2NBZUFjQWxCcGd3aXQ3?=
 =?utf-8?B?MWZUNjdWYWgxd20wU0htRG1ZS3dydjVkQis0OVliVEpiTHcrK1I0RnlmRndz?=
 =?utf-8?B?bk8vNFR0ZWdnV29SMGJEZWJFNlM4WU1OVkRLWVpYYlhpOVk2ZHJYWTh1emcz?=
 =?utf-8?B?YnB1LzRMZC9RaW9yS3h1ZjQzdGpxQ2Nzc01rTVFrVkFYd2d3ZS9tQ2ZaRkJJ?=
 =?utf-8?B?THFJRWlsS0p3TzVYMEkwQ2lvdDFKdlRCZGJhNlJkTWxnSENOZXBJNmV4bFpn?=
 =?utf-8?B?ZHZHQXkyL09WeEVMbEI0K2w0MEJJMlprRlVXUmtiQ0cvZmZ2NkN4NVpPWVht?=
 =?utf-8?B?dUNnSGk4dktKQ3Mybnl2OThqQU9SdVFJbmpBWVlmT2o5MlJQeDlGRG1Vb3Z6?=
 =?utf-8?B?a0loblFzVHM0MktYaDViNGQ5Q2RObHludjg3N1R5a3M1c3ZmV0VCM3ZtRzZO?=
 =?utf-8?B?UmNteXhxeWhNWXZQZUpIK29tSS9pVDJ5dnFTUGdoMnhaeUl0VStBVHBHekhB?=
 =?utf-8?B?aXRPa015eGJ2N1RnMVR5Z3hXTTZmRU5pRTRFSjVxVDd0bC9henJOb0NpMkZU?=
 =?utf-8?B?ZWpuM3hNQ1luVjVmc0RkSWxGNVNUazdZQUg5WmZuQlV0RWdoMmozWWhBcFp6?=
 =?utf-8?B?MGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1358463604784347B0B07BD3CF4A70EF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ad1ef7e-7a37-4592-2abc-08dba4961067
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 11:34:22.9905 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: blH4StXFBExB5Ti1DovFdKmnTmRVi6nOiUWIqYvxoGO8p9ZmB56Nqd6yDOkhHVneAVKfydAm51mCJkshzzT1iCe/wwh2ETt/dx2tZ43WL8I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7589
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 27/42] drm/i915/xe2lpd: Read pin assignment
 from IOM
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

T24gV2VkLCAyMDIzLTA4LTIzIGF0IDEwOjA3IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IEx1Y2EgQ29lbGhvIDxsdWNpYW5vLmNvZWxob0BpbnRlbC5jb20+DQo+IA0KPiBT
dGFydGluZyBmcm9tIGRpc3BsYXkgdmVyc2lvbiAyMCwgd2UgbmVlZCB0byByZWFkIHRoZSBwaW4g
YXNzaWdubWVudA0KPiBmcm9tIHRoZSBJT00gVENTU19ERElfU1RBVFVTIHJlZ2lzdGVyIGluc3Rl
YWQgb2YgcmVhZGluZyBpdCBmcm9tIHRoZQ0KPiBGSUEuDQo+IA0KPiBXZSB1c2UgdGhlIHBpbiBh
c3NpZ25tZW50IHRvIGRlY2lkZSB0aGUgbWF4aW11bSBsYW5lIGNvdW50LiAgU28sIHRvDQo+IHN1
cHBvcnQgdGhpcyBjaGFuZ2UsIGFkZCBhIG5ldyBsbmxfdGNfcG9ydF9nZXRfbWF4X2xhbmVfY291
bnQoKSBmdW5jdGlvbg0KPiB0aGF0IHJlYWRzIGZyb20gdGhlIFRDU1NfRERJX1NUQVRVUyByZWdp
c3RlciBhbmQgZGVjaWRlcyB0aGUgbWF4aW11bQ0KPiBsYW5lIGNvdW50IGJhc2VkIG9uIHRoYXQu
DQo+IA0KPiBCU3BlYzogNjk1OTQNCj4gQ2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRl
bC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEx1Y2EgQ29lbGhvIDxsdWNpYW5vLmNvZWxob0BpbnRl
bC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlA
aW50ZWwuY29tPg0KPiAtLS0NCg0KTHVjYXMsIGRvIHlvdSB3YW50IG1lIHRvIHNlbmQgdGhpcyB0
b2dldGhlciB3aXRoIG15IHBhdGNoc2V0IHdpdGggdGhlDQpwcmVwYXJhdGlvbiBmb3IgdGhpcz8N
Cg0KSW4gYSB3YXksIHRoZSA0IHBhdGNoZXMgSSBzZW50IG91dCBjYW4gYmUgYXBwbGllZCBpbmRl
cGVuZGVudGx5IG9mIExOTC0NCnJlbGF0ZWQgY2hhbmdlcywgc28gbWF5YmUgSSBjb3VsZCByZXNl
bmQganVzdCB0aG9zZSA0IHBhdGNoZXMgYW5kIHlvdQ0KYmFzZSB5b3VyIGVudGlyZSBzZXJpZXMg
b24gdG9wIG9mIG15IHBhdGNoZXMgYWZ0ZXIgdGhleSBnZXQgYXBwbGllZD8NClRoZW4gdGhpcyBw
YXRjaCwgd2hpY2ggaXMgcmVhbGx5IHJlbGF0ZWQgdG8gTE5MIGNvdWxkIGJlIHBhcnQgb2YgeW91
cg0Kc2VyaWVzLi4uDQoNCkxldCBtZSBrbm93IHdoYXQgeW91IHByZWZlci4NCg0KLS0NCkNoZWVy
cywNCkx1Y2EuDQo=
