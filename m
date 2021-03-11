Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 468FF33699D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 02:27:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A45826E400;
	Thu, 11 Mar 2021 01:27:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 613A86E400
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 01:27:08 +0000 (UTC)
IronPort-SDR: 4biTp/7ORbkmd1W3wsv1WObTosZlCNCkjI6K6brBx0vuXnhGRoS/s9433ksl+ffPCnX2BXEms8
 6tjdJHFImPXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="167869601"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="167869601"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 17:27:07 -0800
IronPort-SDR: c0w4t4dItRbBFm9VswaS7paS8jo5r3V3vp+tPrD7+wTCB6T3hf9tJ6b8n7sKG6y/UBW4Ymu53E
 eaR9DB//0JBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="438540196"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Mar 2021 17:27:07 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Mar 2021 17:27:07 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 10 Mar 2021 17:27:07 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 10 Mar 2021 17:27:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LFzjTfUM5Xwmies2wQIMsZLv4FuaCL9dmcYgV44SE13+Wg4EL0rTT1G56n1M9Ag2GttMrc3MI6jv7ythyKOBV+vvkCjjRqWndFZENPH/voAzQ0Udc9T3fEyIeXXq8wEPj6AtCW6g43RIX1C0uQF2MHvM90XDa59aGUpL0J+TGApI44JQIUyl/M3fkzG41S7PMA0HBRxTRUHsc7fSFo0iKxiEuVhvFXrPJoyiLesQzjhh1V5UWDHHdFQ6vppKPsOUTFu9wRSAbB1weGuAdGZJgNEHMPt7/ijuI8CDeeqE8QAyhlYmsSjY1XehTVimVzrCmBpPQZ/lWoHX2us54ah8rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zhSgs5zobEiZTDlTSC7RmDy5833oATT2Nqh3l3ViGz0=;
 b=Tfhho0lidZKCNsK6jifhk3+Dum0X0s7DMc7A1khYnTV9QiK5L9//CbId9BixhekVvPaZL0Nz3Yv9WX/8tKMmp5fC0USobuXNIIg5YiNrJG09n2jcyxPWM7YkTgyeDFBSBr6oZR5/Uykfrh7ySf2jhbAEQkvAERHkWaYka734ooXMfRoHp66HZ7NaunpS78phBobeW0KNeTW3YYyOIN/ueq/ON4Hnevllpf1tg8MtBtNle2+xXKimJUiMwm+ScP/ZXBvlDeNf10tfZse2WMXwNbP79vSx3kpCu1kjSzIcs2Qf2htrR/9yaSDuiJm8sxXxI4KL4E+c0HV5I7sIRuYo/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zhSgs5zobEiZTDlTSC7RmDy5833oATT2Nqh3l3ViGz0=;
 b=weu41NDtgBTD7xGBPHBfnnmzoNUqLua/KlN8QFDydDAmmDr1ZWpUhAVpmH+LJQmdU8XbNJril4UhQD+xfql5aBtKEU0SyK13FUhJUnrvuaOpcmqOsR+77gstLClvEmIkffPNdpIrKT7xPdUflk7d6zuDc/UFCI2qCBvPt99m/3Q=
Received: from SA2PR11MB4969.namprd11.prod.outlook.com (2603:10b6:806:111::12)
 by SN6PR11MB2894.namprd11.prod.outlook.com (2603:10b6:805:d7::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.28; Thu, 11 Mar
 2021 01:27:03 +0000
Received: from SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119]) by SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119%6]) with mapi id 15.20.3912.030; Thu, 11 Mar 2021
 01:27:03 +0000
From: "Chiou, Cooper" <cooper.chiou@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
Thread-Index: AQHXDy9TNUpQng5a8UOTNIkE1rTbjqpzjp4AgAAB8gCAACvUAIAA2R2AgACOaACAADGngIAAMJ3wgAAM94CABMGLcIACupMAgADfRKA=
Date: Thu, 11 Mar 2021 01:27:03 +0000
Message-ID: <SA2PR11MB496973C319344297FFECD50F9D909@SA2PR11MB4969.namprd11.prod.outlook.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>
 <20210302062700.6025-1-cooper.chiou@intel.com>
 <0c8ef2fb-34b0-98ea-12bb-fc300172799c@linux.intel.com>
 <161484956454.28586.15932692857365863465@build.alporthouse.com>
 <161485897632.28586.2630377954645968923@build.alporthouse.com>
 <161490560153.13701.1838349946598091390@build.alporthouse.com>
 <40dd702b-c71c-0b99-93e6-0e120ef7715d@linux.intel.com>
 <161494684568.15221.13792200139079395463@build.alporthouse.com>
 <SA2PR11MB49696180125900E3CCB090049D969@SA2PR11MB4969.namprd11.prod.outlook.com>
 <194e43a3-2425-f5de-a8db-ad86bac19a66@linux.intel.com>
 <SA2PR11MB496960ABA0D7C5E2A53A2C099D939@SA2PR11MB4969.namprd11.prod.outlook.com>
 <928454d4-8ae6-9b02-747f-fecdcc1e6ac4@linux.intel.com>
In-Reply-To: <928454d4-8ae6-9b02-747f-fecdcc1e6ac4@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-mcafeedlp-tagged: True
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [123.193.93.97]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cec69f51-0700-4149-d64e-08d8e42cc6b7
x-ms-traffictypediagnostic: SN6PR11MB2894:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2894E1894642947FBAA8DAAF9D909@SN6PR11MB2894.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jTpjY49DbV638Ljv40Mv7dpR+D8FTcKrPJ1b4KdSPXuiaDxoMyR/nug7ZvseI1uK41D03/cqdzYrCI5Q539eWivrCCBs1m8upRgAk17Ea1Ub1VA63ZEzsIgnmpRrQkS9cD6hJOtu91LyT+JqmvjXW2VZ4CEQfppgfiWjRR/qnKNbdq7SgvWbe4KtDZSDECk+lZYv4ZCJDWqdArj6Jl7FK4rTnQhEwDkc6Ly82QCKpn4aY54wo2G2zacUelgi2FOtda1TUKhZTciR5Sbsj2e6Iw87UUindivVAmVOggdWNISxwm9wzfefBSabORA2QE27p2IH6yozFVbgSC1UeMfSLcLVhsIWPGn0DT5zDqnM8xjAsihAuIvVqMAQzSej0wjevR5L+5TJOS6zBjLy/EDwk4g6Sehyotf4+PgO0cf2+Z+fAOINGtH7K/yrrUmJSHyFZozqNErFMx0gfvGO9nZKQiN9YfQpABnWmJlZuzCRP8cGQUbRIm1DK7553maMjQo+Jt2oanRI3wM9ZMTgmoATpxNn7MB0Qjtp0GqeXe6yvEXIH5DG+B3nOdlqwXmU8NP/QMqSsn2BEFQ5m0eMVwM4sw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB4969.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(6029001)(39860400002)(136003)(396003)(346002)(376002)(366004)(66946007)(8676002)(8936002)(64756008)(55016002)(71200400001)(53546011)(66556008)(6506007)(186003)(66476007)(26005)(478600001)(76116006)(86362001)(2906002)(83380400001)(52536014)(110136005)(4326008)(7696005)(316002)(9686003)(33656002)(5660300002)(66446008)(213903007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?ZUdFSWhMbUx1ajJabWY4T3gvWE9zdWF3KzdRQnlJL2pqMFYrNmMxMWxPdDA3?=
 =?utf-8?B?SmQwbHAvcVh1ampvQng0OStyVmVXVm1TOWxkZlRWTFo0SjRXWndyWjI0c0ll?=
 =?utf-8?B?Z1l6NUpZU0hqRGErclVjQjB1TERNMGwyN3BQUjU3MllKc0NCdDJZMkRycnpT?=
 =?utf-8?B?RW9VcktzbWcvRXM1NktvRndISG9lcVpWZHQ2ZUF3U3hNS0E0ZWxXcWc0UHVL?=
 =?utf-8?B?ZXJKR3lIR1lScG9saUlBWlB5aGY3ejNiYmcyd0VzUUk0M2RqZXoraFBiSCtN?=
 =?utf-8?B?N2NkRzB2Rm1rWFpLUU83SDNxR3hqVTArQ0xZQ0xpN1did0VPcHRzMUVseWVz?=
 =?utf-8?B?VDhPc1pMTVg2U3VqSkFsZ1Y1MTdtZVlGV3pObHk1VEtPTUJqRWZVbnFiMUVS?=
 =?utf-8?B?SzVrYWJwekZweVJBUTVkWFZwNTFwZjhDcVphWUs0VUhBOGxjdCs0ejRHVnNR?=
 =?utf-8?B?VS9USHB5czVBNmdEV0RtNmNPZmRmWmtLbDZxYzQ2b1JVdDdpVXk1bmNtcWhv?=
 =?utf-8?B?OHg2bTVGbjc3bTBsVWpCekptS0dVZ3J2ME5kYW1oWEI3eG9PUWcwRjJTOHov?=
 =?utf-8?B?NjhQT2RhcGQ5WlNPOU96SU9ENk9QZlVyUW8wRERlU09OSzVKRGpVMUVEN0I5?=
 =?utf-8?B?dDVtdzQ4bEs0ZUJzSjBFT1AzelZGWUFQdnkvTndwa3FKemlzdW1IeXZHTUVI?=
 =?utf-8?B?Y1ltb0trY1grQW5Ra09yYnAzbU5Nd2ZaN3U4M0lMNTBYcWE5Z3NKbHBjSHBW?=
 =?utf-8?B?VVB0ZmRubGZ6QW5JZ21oREZleXV6bFdwWXRmclp3Vld2dFZCODVNdGJZVFNT?=
 =?utf-8?B?TERwclJlNS9vdXNMZ0xMNm1IZVZITWtYSFJLaW5EWUpxRFVnbUdtUGRLRG9D?=
 =?utf-8?B?c1RhV3oyaFhDWkVGOHVjYzNIVUtJeWYwVGpXa29mT2p3KzJTWVVFVDVYSm5s?=
 =?utf-8?B?dTNCMHV3Q2lSUVRBNFdiU2xNM2hLTFdZZ1lUWnoxd0Z4WkdwR25CVU00MFB5?=
 =?utf-8?B?dFpJYllmRTdEK0RyUUFFR2YrKzZCMS9lc2Vab3Y5RFkyZkQwWTcwdjBwdE9F?=
 =?utf-8?B?cHord3ZoWXlpQWtjSSthaEtVRTBrRHVYVTRGOWRFS0pxRE41WU1RMkE2V3JP?=
 =?utf-8?B?a3Y3TE1yK0hWSXFBUjZ6dXhNaVlzalJTdUtoN2s1LzZyTEZOZmJDenBYQWVh?=
 =?utf-8?B?akhzWXh2S3htOHJyVFU2U2NwZnlXeTd3T0pWU3drb0k1ZjhnODlZTFRaMitt?=
 =?utf-8?B?RDFWTkViM1Z5cXBxbjBiUWovN245MHVkck9zTGd2TXR2N0pTMHN4ckZ6NWhI?=
 =?utf-8?B?Q1d5a011ZmlLcHlVdFZNTzM1ekNyUHVQTEJzMWR4aC90cWVMVzJpVjBTc1pj?=
 =?utf-8?B?NWQ0UHQwelIzS1FEQTA1VTFZbEtjRkNoU25ETFFPYUFyN2UycWFXR2NjYnRQ?=
 =?utf-8?B?M1AxSWNPNzd4L0FpZTBhVVZCUXMydE9hVFdFNlpUdXkwMXBuS3Z6OS9nQ25s?=
 =?utf-8?B?ZXNlN2xEMFJWTVcxc0krZUl3djJoWTVwNEtTVGtXY1BzbkZaQnIzelBiOUZ1?=
 =?utf-8?B?UE1qbmR1VlFuWXdESG5IL2dERUxHcFRXWlFrSkQvVXFMVGVCMU9teGFHdFlI?=
 =?utf-8?B?NjlZc2JTQ0QrTHZHdjJpOXdSeTJ6L1dGQTkzK2pndFZZRS9SOGpBVlhoVm9l?=
 =?utf-8?B?MGMrblJhSnRRcWNvSTJEbHBHRU5rZjZxbm02MU1TSktlazJBL09yVlcxVXJD?=
 =?utf-8?Q?qvsA7Z41dP+UguIctGnWGffQLIPTbXbU9+/obIs?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4969.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cec69f51-0700-4149-d64e-08d8e42cc6b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2021 01:27:03.5689 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z+ETy14u9zUPKpJh/NmyP2TzVDpHrOtDCJEFi/3gNmjwGdiQT0T9qmrmhM5oGopKUEhPIbI/Cv+LyLtzaM3G1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2894
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPg0K
PiBIaSwNCj4gDQo+IE9uIDA4LzAzLzIwMjEgMTc6MzIsIENoaW91LCBDb29wZXIgd3JvdGU6DQo+
ID4gSSd2ZSB0ZXN0ZWQgb24gR0xLLCBLQkwsIENGTCBJbnRlbCBOVUMgZGV2aWNlcyBhbmQgZ290
IHRoZSBmb2xsb3dpbmcNCj4gcGVyZm9ybWFuY2UgcmVzdWx0cywgdGhlcmUgaXMgbm8gcGVyZm9y
bWFuY2UgcmVncmVzc2lvbiBwZXIgbXkgdGVzdGluZy4NCj4gPg0KPiA+IFBhdGNoOiBbdjVdIGRy
bS9pOTE1OiBFbmFibGUNCj4gPiBXYVByb2dyYW1NZ3NyRm9yQ29ycmVjdFNsaWNlU3BlY2lmaWNN
bWlvUmVhZHMgZm9yIEdlbjkgVGVzdCBzdWl0ZToNCj4gPiBwaG9yb25peC10ZXN0LXN1aXRlLnN1
cGVydHV4a2FydC4xMDI0eDc2OC5GdWxsc2NyZWVuLlVsdGltYXRlLjEuR3JhblBhDQo+ID4gcmFk
aXNvSXNsYW5kLmZyYW1lc19wZXJfc2Vjb25kDQo+ID4gS2VybmVsIHZlcnNpb246IDUuMTIuMC1y
YzEgKGRybS10aXApDQo+ID4NCj4gPiBhLiBEZXZpY2U6IEludGVsIE5VQyBraXQgTlVDN0pZIEdl
bWluaSBMYWtlIENlbGVyb24gSjQwMDUgQDIuN0dIeiAoMg0KPiBDb3JlcykNCj4gPiAgICAgIFdp
dGhvdXQgcGF0Y2gsIGZwcz01Ny40NQ0KPiA+ICAgICAgV2l0aCBwYXRjaCwgZnBzPTU3LjQ5DQo+
ID4gYi4gRGV2aWNlOiBJbnRlbCBOVUMga2l0IE5VQzhCRUggQ29mZmVlIExha2UgQ29yZSBpMy04
MTA5VSBAMy42R0h6KDQNCj4gQ29yZXMpDQo+ID4gICAgICBXaXRob3V0IHBhdGNoLCBmcHM9MTE3
LjIzDQo+ID4gICAgICBXaXRoIHBhdGNoLCBmcHM9MTE3LjI3DQo+ID4gYy4gRGV2aWNlOiBJbnRl
bCBOVUMga2l0IE5VQzdpM0JOSCBLYWJ5IExha2UgQ29yZSBpMy03MTAwVSBAMi40R0h6KDQNCj4g
Q29yZXMpDQo+ID4gICAgICBXaXRob3V0IHBhdGNoLCBmcHM9MTE0LjA1DQo+ID4gICAgICBXaXRo
IHBhdGNoLCBmcHM9MTE0LjM0DQo+ID4NCj4gPiBNZWFud2hpbGUsIEludGVsIGxrcCB0ZWFtIGhh
cyB2YWxpZGF0ZWQgcGVyZm9ybWFuY2Ugb24gbGtwLWtibC1udWMxIGFuZA0KPiBubyByZWdyZXNz
aW9uLg0KPiA+IGY2OWQwMmUzN2E4NTY0NWEgIGQ5MTIwOTZjNDBjZGMzYmM5MzY0OTY2OTcxDQo+
ID4gdGVzdGNhc2UvdGVzdHBhcmFtcy90ZXN0Ym94DQo+ID4gLS0tLS0tLS0tLS0tLS0tLSAgLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4g
ICAgICAgICAgICAlc3RkZGV2ICAgICAgY2hhbmdlICAgICAgICAgJXN0ZGRldg0KPiA+ICAgICAg
ICAgICAgICAgIFwgICAgICAgICAgfCAgICAgICAgICAgICAgICBcDQo+ID4gICAgICAgIDI5Ljc5
ICAgICAgICAgICAgICAgICAgICAgICAyOS42Nw0KPiA+IHBob3Jvbml4LXRlc3Qtc3VpdGUvcGVy
Zm9ybWFuY2UtdHJ1ZS1GdWxsc2NyZWVuLVVsdGltYXRlLTEtDQo+IEdyYW5fUGFyYWRpc29fSXNs
YW5kX19BcHByb3hpbWEtc3VwZXJ0dXhrYXJ0LTEuNS4yLXVjb2RlPTB4ZGUvbGtwLWtibC0NCj4g
bnVjMQ0KPiA+ICAgICAgICAyOS43OSAgICAgICAgICAgICAgICAgICAgICAgMjkuNjcgICAgICAg
IEdFTy1NRUFOIHBob3Jvbml4LXRlc3QtDQo+IHN1aXRlLnN1cGVydHV4a2FydC4xMjgweDEwMjQu
RnVsbHNjcmVlbi5VbHRpbWF0ZS4xLkdyYW5QYXJhZGlzb0lzbGFuZC5mcmFtDQo+IGVzX3Blcl9z
ZWNvbmQNCj4gPg0KPiANCj4gQ0kgcmVzdWx0cyBhcmUgZ3JlZW4gc28gdGhhdCBpcyBnb29kLg0K
PiANCj4gRG8gdGhlIG1hY2hpbmVzIHVzZWQgZm9yIHBlcmZvcm1hbmNlIHRlc3RpbmcgaW5jbHVk
ZSB1bnVzdWFsIGZ1c2luZz8NCltDaGlvdSwgQ29vcGVyXSBZZXMsIHRoaXMgcGVyZm9ybWFuY2Ug
dGVzdCBpbmNsdWRlZCBmdXNpbmcgc2t1IGFzIGZvbGxvd2luZyBOVUMgR0xLIENlbGVyb24gTGlu
dXggZGV2aWNlLA0KSW50ZWwgTlVDIGtpdCBOVUM3SlkgR2VtaW5pIExha2UgQ2VsZXJvbiBKNDAw
NSBAMi43R0h6ICgyIENvcmVzKQ0KICAgIFdpdGhvdXQgcGF0Y2gsIGZwcz01Ny40NQ0KICAgIFdp
dGggcGF0Y2gsIGZwcz01Ny40OQ0KDQo+IFdvcnJ5aW5nIHRoaW5nIGlzIHRoYXQgd2Ugd2VyZSBu
ZXZlciBhYmxlIHRvIHJlcHJvZHVjZSB0aGUgcmVwb3J0ZWQgcmVncmVzc2lvbiBpbiBob3VzZSBk
dWUgbGFjayBvZiBpZGVudGljYWwgbWFjaGluZSwgcmlnaHQ/DQpbQ2hpb3UsIENvb3Blcl0gWWVz
LCBpZiBkZXZpY2UgaXMgY29yZS1pMy81LzcgR1QyLCB0aGVuIGhhbmcgaXNzdWUgaXNu4oCZdCBh
YmxlIHRvIHJlcHJvZHVjZSBkdWUgdG8gdGhlcmUgaXMgbm8gZnVzZWQvZGlzYWJsZWQgc3Vic2xp
Y2UwLg0KDQpCdXQgVlA4IGh3IGVuY29kaW5nIEdQVSBoYW5nIGlzc3VlIGNhbiBiZSAxMDAlIHJl
cHJvZHVjZWQgb24gQ01ML0tCTCBQZW50aXVtL0NlbGVyb24gR1QxIHNrdSwgDQpleHBsYWluIHJv
b3QgY2F1c2UgYXMgdGhlIGZvbGxvd2luZywNCm9uIENocm9tZSBDTUwgUGVudGl1bSA2NDUwdSBH
VDEgc2t1LCB3ZSBvYnNlcnZlZCB3aGVuIHN5c3RlbSBleGl0IFBDNyBwb3dlciBzdGF0ZSwgTUdT
UigweEZEQykgaXMgcmVzZXQgdG8gMHgxMDAwMDAwMCwNCnJlYWQgaXRzIHJlZyhmdXNlMjoweDkx
MjApPTB4MDI5ODg0ODAgYml0IDIwLTIzPTEwMDEgbWVhbnMgc3Vic2xpY2UwLzMgYXJlIGZ1c2Vk
IGRpc2FibGVkLCBpdCdzIGRlZmluZWQgaW4gYnNwZWMgYXMgd2VsbC4NCm9uIENNTCBjb3JlLWk1
IHNrdSwgcmVnKGZ1c2UyKT0weDIyODg5MTQwIGJpdCAyMC0yMz0xMDAwIG9ubHkgc3Vic2xpY2Uz
IGlzIGZ1c2VkLg0KDQpzbyB3ZSBoYXZlIHRvIHNraXAgdGhpcyAiZnVzZWQvZGlzYWJsZWQiIHN1
YnNsaWNlIDAvMyBvbiBHVDEgc2t1IGluIGk5MTUsIHRoZW4gdXNlIHN1YmxpY2UgMSBvciAyIGFu
ZCByZS1wcm9ncmFtIDB4RkRDPTB4MTEwMDAwMDAgb3IgMHgxMjAwMDAwMA0Kc2luY2UgcmVnWzB4
ZmRjXT0weDEwMDAwMDAwIHRvIHVzZSBzdWJzbGljZTAsIGJ1dCBzdWJsaWNlMCBpcyBmdXNlZC9k
aXNhYmxlZCwgc28gb25jZSBnbyB0aGlzIGZ1c2VkIGRpc2FibGVkIHN1YnNsaWNlMCB0aGVuIEdQ
VSBoYW5nIGhhcHBlbmVkLg0KDQpJbiBzb21lIE9FTSBMaW51eCBwcm9qZWN0cywgdGhleSBvbmx5
IGhhdmUgY29yZS1pIHNrdSBubyBQZW50aXVtL0NlbGVyb24gc2t1IGFzIEkga25ldyBhbmQgdnA4
IGh3IGVuY29kaW5nIGlzIHJhcmUgdG8gdXNlIG9uIFVidW50dSwNCmFzIHRoaXMgdHdvIHJlYXNv
bnMgdGhlbiBMaW51eCBkaWRuJ3QgcmVwcm9kdWNlIHRoaXMgZnVzZWQgc3Vic2xpY2UwIGdwdSBo
YW5nIGlzc3VlIGJlZm9yZSwgYnV0IGl0IGRvZXMgaGFwcGVuIG9uIENocm9tZSBwcm9qZWN0cy4N
Cg0KQ29vcGVyDQoNCj4gV29ycnlpbmcgdGhpbmcgaXMgdGhhdCB3ZSB3ZXJlIG5ldmVyIGFibGUg
dG8gcmVwcm9kdWNlIHRoZSByZXBvcnRlZA0KPiByZWdyZXNzaW9uIGluIGhvdXNlIGR1ZSBsYWNr
IG9mIGlkZW50aWNhbCBtYWNoaW5lLCByaWdodD8gQWx0aG91Z2ggSSBndWVzcw0KPiBhdm9pZGlu
ZyBoYW5ncyB0cnVtcHMgcGVyZm9ybWFuY2UuDQo+IA0KPiBSZWdhcmRzLA0KPiANCj4gVHZydGtv
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
