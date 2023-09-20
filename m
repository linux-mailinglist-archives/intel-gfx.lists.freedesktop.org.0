Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD2D7A7780
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 11:29:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4D3F10E46F;
	Wed, 20 Sep 2023 09:29:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90E2110E46F
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 09:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695202175; x=1726738175;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FxOPWg4NTp2VyxNKwmhn6xCrzH5Ly4+3sb4ojizyWoo=;
 b=OKAQE4zqcfDia53Vo+Tx8Pp9w+oLDCFeCoKpT8Rx5nyGGq8qjIEnQIRT
 59DTZjD9c6uI1LXeXHNHdByV4wFuZ3DGOEaGqKVwHnyUwOl+UxH1sWy5y
 /DbKAlVCBubB9mfur9NuhXh0GV2FEkVdbUeIiCngdCerLlnsMcA+Qlvbf
 cHb9Wr1TAmLrZ3L7KH1+Zg5j7qProsdKHTMmGarszM2rQUr7ksStfvGyV
 Aq+4C9dN2ZVy4w7zGdSCc6/XjyHfRF87fmUaDhLUkDfV4LkniUPenaL9k
 6HC36BbLhiDCerZv1wdw1c+LBsdc//GagtF7P65uUWOSBE5q3rBySuHa+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="411115701"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="411115701"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 02:29:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="746576038"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="746576038"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 02:29:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 02:29:33 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 02:29:33 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 02:29:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RCsde9PQqr2h0958NgwbAS3yt7olHfIkESPGmccmWXbQcWG7BmCNuQK91oo7Rw5FS814ldZPI/865pSeB3aTAQLHwwNdeOqKPuyqCvTmuYG76UlEDQSEIsnm6uhwvuA4/bzSD2jvQfASkk+ciHpH8M7ahlaqdjKBFu2vlkRix5N9lb9PNoTpaMsdAfIZSkkRbxk7bq60yZVKceRWQg1hlsCU/2OUD4flsvWighTEJkt87L/wTloYH8HsEn2waB8LqPJ+MArGk+eItC9R5x58EsdrWs2pLggL2EndOUheGF6T+3Z6d9a6MQAz0En5LKiRtby7BRunFWgqab62dY6NcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FxOPWg4NTp2VyxNKwmhn6xCrzH5Ly4+3sb4ojizyWoo=;
 b=i3XDLnDyQqLEBSvU/ClSkAscFSq5siZEfJkVL2a1NmLkE8nZS5+eL3wjgUBcHOQ4M67Ny6zKHDEdfvK0sfFYX/yYGKrTed0184cPB2Jt1z+3JuHygIYREdSN9+ESh5bTXWQHYHBDQMmeu4x9A4BUQ0G5q7y4cjzLE4blt5BAz+puXsYOE8ebiLzsDKdeGSB9hVx2hhgJonfiNe+pILrlPoYufMZbPGSwuLMrBkdD89v62W+bRaMbJL//duYcDnBRb4N7gaAIwG4cgsZofpIXzO/pamhXbvJDpfoOc3DgiEcf5N5vea5S8M749J0nbBYl/2xhRDebSYtCwGhCJMmiaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS0PR11MB7631.namprd11.prod.outlook.com (2603:10b6:8:14e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.27; Wed, 20 Sep
 2023 09:29:25 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6792.019; Wed, 20 Sep 2023
 09:29:24 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: Move common message
 filling function to its own file
Thread-Index: AQHZ640OOXTNT2OSW0Guwwvnq0ht7bAjZ9iAgAAGfwCAAADTAA==
Date: Wed, 20 Sep 2023 09:29:24 +0000
Message-ID: <SN7PR11MB67502534F1CF7A0E515BE713E3F9A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230920063611.242942-3-suraj.kandpal@intel.com>
 <20230920085014.246564-1-suraj.kandpal@intel.com> <87o7hxryv9.fsf@intel.com>
In-Reply-To: <87o7hxryv9.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS0PR11MB7631:EE_
x-ms-office365-filtering-correlation-id: f710326e-3598-45c9-852b-08dbb9bc13d5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GCwItfFY7UVL4pMXvzMZHBzDUwvUfcZfJ4y+UFuaoZ5W//L8ztt7R1xXsfHnw/xMudvQeoJB3ry3cIO6AZiXjRvs7yreE+uxJDlZwVTBPHmd0uVqHpV119XJ6LBL+WxHCaKbWqTgGiP7PpetPU4u5lpESUEAmR/KlNN1QgVs+2KDAZgEvOTXX57/QoaoI9J3CLvrAjpypyUC20du3twnWv1OMfmfk6fJspzK/pR1U+pcgYg+JIHdVrMSJE/uu78cocY+KfMPiaEsbVFETS4yvBcq++BDQwX5DMErMk8Me7Z5iYeWYqst7dkoZzKtzkNr5zUciAAahYvFW9+17HRsSF7tA5VL1NXkyxG1gHHlA6iPlOYORFNhIyM/+rtBczdIZSv9EiTY8w2Wu8HF/CdKVHSSemhg5Y6dLAdP3WbBotli0AvyTezTM/Acjfd9EWeMKQRDrnYEDwQKSYk7o2oFy3uGktcifYv6snXxkDPXFCA2IjNOqPN1UhfnUZFjjHvhfgn8QyARuTf6zZHyOtKJNRvaZWUiPpkfdkxGMUZkNW/A4ofn4GsCE2L8qzlVz2+GCTduHhcRPXlw4xtyiGOKHEck9h5IbYmQ6R1TVlVW94cOcNpBwVy2EQCpzGq0FQRK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(366004)(346002)(376002)(136003)(186009)(451199024)(1800799009)(9686003)(6506007)(7696005)(71200400001)(82960400001)(38070700005)(83380400001)(38100700002)(122000001)(33656002)(86362001)(55016003)(26005)(15650500001)(76116006)(110136005)(66476007)(66946007)(316002)(66556008)(41300700001)(66446008)(64756008)(2906002)(52536014)(5660300002)(8936002)(8676002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TmVXNjZWcVkxdE1GQ2U1bWsxbVJRcnJLK051T1Z3c3VLL1B3YzkwY0JDeHF2?=
 =?utf-8?B?aVlsdDc5cUNFU3JlSVZxWGlsdm5DUmt4b3VMWWIzcE9EMVMwNy9ReWRlOHVN?=
 =?utf-8?B?L0RTOW1IdHNQV251NDhnUDlZYlpPd1FKYVN6OGlZc2RHdjBUV2JXSWFqVVZV?=
 =?utf-8?B?NGFaWXZIek9JcVlyS3ora0lWY01POXdDYTUrajIxTE9POXN4V3ZETlc1MnZW?=
 =?utf-8?B?b29pcWhnNGhWY2I0Q2JpNS8yWEt0eUNQSGhlYVBDemxYdFdMd1QzMWszTFNh?=
 =?utf-8?B?eFVNV3RHL0FSQzFhbFJwaG50UVR6WDlqd2NTY3dvUUFoV0ltL1BZWHVIdE1K?=
 =?utf-8?B?UEEza2VlTUwzeWtqSVRNMUdINDJuQS93cG9xeHFtZTB5VUtiT3IySFdPMjNL?=
 =?utf-8?B?cVU5U3BkOUVycGU4VnByWU42VFVhNkcwUHVneHRUTnpYSnhTSlhyRTBlWE9C?=
 =?utf-8?B?NnNaRW01UzRuR3lVNW43a1hoQ1p0V2E3ZjBjMFNTVjNtbUNkeE5yYlF6dzhR?=
 =?utf-8?B?V2srQy9tRFJobm1hZ1ZMQlVEbExTbjVrSUl1aEpmQ0dQTC80bTFoVGRVTWZB?=
 =?utf-8?B?UnhkK29lTHpPRGRXbmh1LzlYZlcvWHF3VDZEdE5MS2RVNFNNRjd0Sk5RRUVT?=
 =?utf-8?B?Rkw3dGtkK1FnV0hMbnJDeDh5cTM4MmprWVY0UkJLcmNiN1BIS0pNZk93d1d4?=
 =?utf-8?B?QmdrNUFwd21FTGV0VFZPVktIODFPVXpCeDdQeld4QnR4VHIrL0pYbFplbm5y?=
 =?utf-8?B?MFo0Q3FMVHRhY3gyTXBDN3R0WWZGYll6WTlXanplS2FMUXhTUFBjWlJHQ2lI?=
 =?utf-8?B?QlhtSmxtS3VLTG1NOFZqTjhlckNWQkh6NzNLaDl5L0c0THNNNHdLd2tDVlZJ?=
 =?utf-8?B?ajM4L2M3SDE1b2VGSXNnN3ZKeXlXUEpYTkxIMGIvVlIvcHV3YW9YV3B2d2dh?=
 =?utf-8?B?RjJmL2lLdVVPNlJHZDk4L2dSRTNZc1hsdU54eWswZWZoV0FBcXBBU2VTUm9h?=
 =?utf-8?B?RkZJUmtLYnd0cEVkT0F2VmNnZkdidDB0WENjTCthOTg0SzJzQ09KYnNOTjhy?=
 =?utf-8?B?U0VIWVhtNWNreGpUMmk4UkxMZWpjeGFEQ1FRMXJwbEI5ck5XVW1odlRqQnIv?=
 =?utf-8?B?a0lSeTN4NVRPaWNwaldCbGZ0UE0vKy9Ma1lZRDFzK3RHZlo2WW5lSzIzVFI3?=
 =?utf-8?B?cmtFd0U2d2FWdFdrTmpXeG9tcGczQ3lGVWVMVnhtcjBPWHN6dVNYK1VrcVhZ?=
 =?utf-8?B?YUZUU05WL1BiRVJITE90c0g0bnRiTlIwcVVHMWFucWlIN3hERDB4SXB5VTlH?=
 =?utf-8?B?R3ZHQm9QUTVNYWhmUVFCc29aaVJaM1QzM0EzcU1lLzg3TmRFQ2FCOXQxYkor?=
 =?utf-8?B?NC9ucUljRHErL3pJSWtjcnBmM09YQWFzOFhNQmtsL0lacEZqNlp6SC9MQUN5?=
 =?utf-8?B?NUpHeWhaZEE4cTM4S2haRktCYTQrRGg2ZTVOeXFuQ01vdGdibUdyQ01YaXI5?=
 =?utf-8?B?cGpsamZoaTc4Y1JXRk9PVENtRlF5V0NNdm9wbnFDa0dyQVQrZ0RnWkRualVC?=
 =?utf-8?B?cVJ1M3ZPaHJaRFNFQ2d3R0htZkNGaFp3U1JDdXR3V0MvL0lOQ3BEc21HNHgw?=
 =?utf-8?B?SFFRaHFKYnJBZ2hWZlNGVEF5RkdVNDRVSW9ENGJrY2pDYjlOTG1iUkVDUnBO?=
 =?utf-8?B?QTk4M2xGRUx3QW9ac2NoL3Q0dWVyOTNpTS9QdzBZWVpPVm8xblVOZk53T2pn?=
 =?utf-8?B?L2M5WXlLNFF1c3h5S0FGWEdpaGFLd2d0YTRWL2lMQlVxSmhEanMvOTVHL0oy?=
 =?utf-8?B?S2hWOXlvdXNqZzNhellkV2ZHV1V2VXRIeVZUMkJndVhPaXZjVFY5SVZxd0Zj?=
 =?utf-8?B?TzVkZHRyK3hsNXg2cDhsdUZ2THpIZ2RhdDVwelhvOU82Y204VWhrOGozNGFK?=
 =?utf-8?B?T2hEcDZOSUFjeUVJejVMcVhPTENuOVd3dTRpbFJKdlF0V0wrRWNOSGtTSVBo?=
 =?utf-8?B?U0VPaUkxWFB0ZTI1MElXV1BJNG9HR251UjNueHNyd1grTnNQUjdka2E0bk5L?=
 =?utf-8?B?Q2Vka1B4ekpMSkhoTnJuYnZuUlBUQ3B5bmtCYllocDdmMnpLOURUK05DVkV6?=
 =?utf-8?Q?HxO+n+TDLpthkwWEyaYLF1ntH?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f710326e-3598-45c9-852b-08dbb9bc13d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2023 09:29:24.0326 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 479J2JVdbPZ5h7J6Ml1hD0IMSQUbFlJdVRTrzFJkmJrGcEk6BLUiIB9lwwSvBwsvJ6kqQCWqV0hjvFpH3WbOeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7631
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: Move common message
 filling function to its own file
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

PiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIIDIvMl0gZHJtL2k5MTUvaGRjcDogTW92
ZSBjb21tb24gbWVzc2FnZQ0KPiBmaWxsaW5nIGZ1bmN0aW9uIHRvIGl0cyBvd24gZmlsZQ0KPiAN
Cj4gT24gV2VkLCAyMCBTZXAgMjAyMywgU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2hkY3BfZ3NjLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfaGRjcF9nc2MuaA0KPiA+IGluZGV4IGViYTIwNTdjNWE5ZS4uZTUzZGJlOGQ5MDQ4IDEw
MDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcF9n
c2MuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcF9n
c2MuaA0KPiA+IEBAIC05LDYgKzksOCBAQA0KPiA+ICAjaW5jbHVkZSA8bGludXgvZXJyLmg+DQo+
ID4gICNpbmNsdWRlIDxsaW51eC90eXBlcy5oPg0KPiA+DQo+ID4gKyNpbmNsdWRlICJpOTE1X2Ry
di5oIg0KPiA+ICsNCj4gDQo+IFBsZWFzZSBkb24ndCBpbmNsdWRlIGk5MTVfZHJ2LmggZnJvbSBo
ZWFkZXJzIGlmIGl0IGNhbiBiZSBhdm9pZGVkLiBUaGlzIHBhdGNoIGZvcg0KPiBzdXJlIGhhcyBu
byByZWFzb24gdG8gZG8gc28uDQo+IA0KPiA+ICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsNCj4g
Pg0KPiA+ICBzdHJ1Y3QgaW50ZWxfaGRjcF9nc2NfbWVzc2FnZSB7DQo+IA0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3BfZ3NjX21lc3NhZ2Uu
aA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwX2dzY19tZXNz
YWdlLmgNCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4u
OGRhM2M1MGQ3NTlmDQo+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcF9nc2NfbWVzc2FnZS5oDQo+ID4gQEAgLTAsMCArMSw1
NiBAQA0KPiA+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICovDQo+ID4gKy8qDQo+
ID4gKyAqIENvcHlyaWdodCDCqSAyMDIzIEludGVsIENvcnBvcmF0aW9uICAqLw0KPiA+ICsNCj4g
PiArI2lmbmRlZiBfX0lOVEVMX0hEQ1BfR1NDX01FU1NBR0VfSF9fDQo+ID4gKyNkZWZpbmUgX19J
TlRFTF9IRENQX0dTQ19NRVNTQUdFX0hfXw0KPiA+ICsNCj4gPiArI2luY2x1ZGUgPGRybS9pOTE1
X2hkY3BfaW50ZXJmYWNlLmg+DQo+ID4gKw0KPiA+ICsjaW5jbHVkZSAiaW50ZWxfaGRjcF9nc2Mu
aCINCj4gDQo+IFdoYXQgaW4gdGhpcyBoZWFkZXIgcmVxdWlyZXMgaW5jbHVkaW5nIGVpdGhlciBv
ZiB0aG9zZSBoZWFkZXJzIHRoYXQgY2FuJ3QgYmUNCj4gc29sdmVkIHdpdGggZm9yd2FyZCBkZWNs
YXRhdGlvbnM/DQo+IA0KPiAqQWx3YXlzKiB1c2UgZm9yd2FyZCBkZWNsYXJhdGlvbnMgaW5zdGVh
ZCBvZiAjaW5jbHVkZXMgaW4gaGVhZGVycyBpZiB5b3UgY2FuLg0KPiANCj4gQUZBSUNUIHRoaXMg
b25seSBuZWVkcyAjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4gYW5kIGEgYnVuY2ggb2YgZm9yd2Fy
ZA0KPiBkZWNsYXJhdGlvbnMuDQo+IA0KDQpUaGFua3MgZm9yIHRoZSByZXZpZXdzIEphbmkuIFdp
bGwgc2l4IGFuZCBzZW5kIHRoZSBsYXRlc3QgdmVyc2lvbg0KDQpSZWdhcmRzLA0KU3VyYWogS2Fu
ZHBhbA0KDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gPiArDQo+ID4gK2Jvb2wgaW50ZWxfaGRjcF9n
c2NfY2hlY2tfc3RhdHVzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsgaW50DQo+ID4g
K2ludGVsX2hkY3BfZ3NjX2luaXRpYXRlX3Nlc3Npb24oc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1
Y3QgaGRjcF9wb3J0X2RhdGENCj4gKmRhdGEsDQo+ID4gKwkJCQlzdHJ1Y3QgaGRjcDJfYWtlX2lu
aXQgKmFrZV9kYXRhKTsgaW50DQo+ID4gK2ludGVsX2hkY3BfZ3NjX3ZlcmlmeV9yZWNlaXZlcl9j
ZXJ0X3ByZXBhcmVfa20oc3RydWN0IGRldmljZSAqZGV2LA0KPiA+ICsJCQkJCSAgICAgICBzdHJ1
Y3QgaGRjcF9wb3J0X2RhdGEgKmRhdGEsDQo+ID4gKwkJCQkJICAgICAgIHN0cnVjdCBoZGNwMl9h
a2Vfc2VuZF9jZXJ0DQo+ICpyeF9jZXJ0LA0KPiA+ICsJCQkJCSAgICAgICBib29sICprbV9zdG9y
ZWQsDQo+ID4gKwkJCQkJICAgICAgIHN0cnVjdCBoZGNwMl9ha2Vfbm9fc3RvcmVkX2ttDQo+ID4g
KwkJCQkJICAgICAgICpla19wdWJfa20sDQo+ID4gKwkJCQkJICAgICAgIHNpemVfdCAqbXNnX3N6
KTsNCj4gPiAraW50DQo+ID4gK2ludGVsX2hkY3BfZ3NjX3ZlcmlmeV9ocHJpbWUoc3RydWN0IGRl
dmljZSAqZGV2LCBzdHJ1Y3QgaGRjcF9wb3J0X2RhdGENCj4gKmRhdGEsDQo+ID4gKwkJCSAgICAg
c3RydWN0IGhkY3AyX2FrZV9zZW5kX2hwcmltZSAqcnhfaHByaW1lKTsgaW50DQo+ID4gK2ludGVs
X2hkY3BfZ3NjX3N0b3JlX3BhaXJpbmdfaW5mbyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBo
ZGNwX3BvcnRfZGF0YQ0KPiAqZGF0YSwNCj4gPiArCQkJCSAgc3RydWN0IGhkY3AyX2FrZV9zZW5k
X3BhaXJpbmdfaW5mbw0KPiAqcGFpcmluZ19pbmZvKTsgaW50DQo+ID4gK2ludGVsX2hkY3BfZ3Nj
X2luaXRpYXRlX2xvY2FsaXR5X2NoZWNrKHN0cnVjdCBkZXZpY2UgKmRldiwNCj4gPiArCQkJCSAg
ICAgICBzdHJ1Y3QgaGRjcF9wb3J0X2RhdGEgKmRhdGEsDQo+ID4gKwkJCQkgICAgICAgc3RydWN0
IGhkY3AyX2xjX2luaXQgKmxjX2luaXRfZGF0YSk7IGludA0KPiA+ICtpbnRlbF9oZGNwX2dzY192
ZXJpZnlfbHByaW1lKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGhkY3BfcG9ydF9kYXRhDQo+
ICpkYXRhLA0KPiA+ICsJCQkgICAgIHN0cnVjdCBoZGNwMl9sY19zZW5kX2xwcmltZSAqcnhfbHBy
aW1lKTsgaW50DQo+ID4gK2ludGVsX2hkY3BfZ3NjX2dldF9zZXNzaW9uX2tleShzdHJ1Y3QgZGV2
aWNlICpkZXYsDQo+ID4gKwkJCQkgICBzdHJ1Y3QgaGRjcF9wb3J0X2RhdGEgKmRhdGEsDQo+ID4g
KwkJCQkgICBzdHJ1Y3QgaGRjcDJfc2tlX3NlbmRfZWtzICpza2VfZGF0YSk7IGludA0KPiA+ICtp
bnRlbF9oZGNwX2dzY19yZXBlYXRlcl9jaGVja19mbG93X3ByZXBhcmVfYWNrKHN0cnVjdCBkZXZp
Y2UgKmRldiwNCj4gPiArCQkJCQkgICAgICAgc3RydWN0IGhkY3BfcG9ydF9kYXRhICpkYXRhLA0K
PiA+ICsJCQkJCSAgICAgICBzdHJ1Y3QNCj4gaGRjcDJfcmVwX3NlbmRfcmVjZWl2ZXJpZF9saXN0
DQo+ID4gKwkJCQkJICAgICAgICpyZXBfdG9wb2xvZ3ksDQo+ID4gKwkJCQkJICAgICAgIHN0cnVj
dCBoZGNwMl9yZXBfc2VuZF9hY2sNCj4gPiArCQkJCQkgICAgICAgKnJlcF9zZW5kX2Fjayk7DQo+
ID4gK2ludCBpbnRlbF9oZGNwX2dzY192ZXJpZnlfbXByaW1lKHN0cnVjdCBkZXZpY2UgKmRldiwN
Cj4gPiArCQkJCSBzdHJ1Y3QgaGRjcF9wb3J0X2RhdGEgKmRhdGEsDQo+ID4gKwkJCQkgc3RydWN0
IGhkY3AyX3JlcF9zdHJlYW1fcmVhZHkNCj4gKnN0cmVhbV9yZWFkeSk7IGludA0KPiA+ICtpbnRl
bF9oZGNwX2dzY19lbmFibGVfYXV0aGVudGljYXRpb24oc3RydWN0IGRldmljZSAqZGV2LA0KPiA+
ICsJCQkJCSBzdHJ1Y3QgaGRjcF9wb3J0X2RhdGEgKmRhdGEpOw0KPiA+ICtpbnQNCj4gPiAraW50
ZWxfaGRjcF9nc2NfY2xvc2Vfc2Vzc2lvbihzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdA0KPiA+
ICtoZGNwX3BvcnRfZGF0YSAqZGF0YSk7DQo+ID4gKw0KPiA+ICsjZW5kaWYgLyogX19JTlRFTF9I
RENQX0dTQ19NRVNTQUdFX0hfXyAqLw0KPiANCj4gLS0NCj4gSmFuaSBOaWt1bGEsIEludGVsDQo=
