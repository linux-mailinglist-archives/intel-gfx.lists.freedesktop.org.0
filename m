Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD3A6C7FC2
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 15:20:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D32CD10E173;
	Fri, 24 Mar 2023 14:20:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2BE510E173
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 14:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679667626; x=1711203626;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5X77RDbgq9SnT4dh+0iEU0Po1n6OPSj3FybX+TD6rbo=;
 b=RQ0zhFktPLc4bON7lH0Dpjiapjk/+PoqkNyv2z9PpZxWGWlMiPhnr8uS
 USb40hSMFKLn6s4GPOcta7kWSuhJOq6fMotk/0vtDomSSwDN4NY2Yk/hA
 uTOEa2sCSlXIIPVQRRcXmCG0C88UDumBmI0G48VZMRS2/0ckL1EUTp1BN
 p+Vgu8u19Br07SH7Qsoegx6rG1wFHElPFKYkfOh/xnng5Ic0XuD/oefMZ
 vdX1fEpnl/HBtWQnK5tdGZZ+hTnojsnvxYWXrN3+FesocKKarATFWVWVR
 bLqneaLqsIV4ellCubF2V5cWO92i2EjrNV7pYA1dzt83aysNCamw9TJXC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="320180782"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="320180782"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 07:20:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="685185864"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="685185864"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 24 Mar 2023 07:20:23 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 07:20:23 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 24 Mar 2023 07:20:23 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 24 Mar 2023 07:20:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gu5bMVWBuXyAoeunakSub2hcCsRKzhXCT/zmXeRndfvIC+c59t9N5T4Wu7Xg+uB2yuMg0oVQ49RUynmJJiKEy3x1qgg4LzlcSr50I/o3ZFVOCX8QdkwnlXOYiEEBeX1scbeTeGUJuXIXuuvJ1jorT6fSEeiirvhFj/Xtch1q5gpkMeIuX/Xdi0LVvjAtW5zKW+xrrqNqujb8/2Ya4YtrohbzL7o8adyY8X17B6n2MYd74M2QXn0mhYBkZ+NZ9kSzLbblojbktgpcrT6up6B/Yu6xr48Q9SnLyW9Twb5bEkHDYnFgfJHgWSHGIya71APkJvHm96gjHp4pRf4EjgmjgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5X77RDbgq9SnT4dh+0iEU0Po1n6OPSj3FybX+TD6rbo=;
 b=T+V6v23k8WEziQNW/x5mprkjsftyL2v/JjMzcgjU0e4wLmjmPQQ83VHgKyt7KVjDbGVnOaGQyn2x8+Y+Gw52tiKAdotpL9RGsvZLND0Kt8KWCDHtruD5K0n3HiaoKm8Nb5gvbaJf2F9qj4Qi7HoL8m6PKHFTczCdfMMNTj8qS2Rk/R916Or4QMx5iNa1ZIkSavWmmvflrWCDL9Ssw6IIMzOYmsolAFxJhiTrpY59QsTllxiE2NMJxo5/v50BcMiqEPYfiViQQzZj5fgChI5njCi04kK9w5lAYxwG6EtObD4wEp35nGw2Y+CAPSTVMx5SM5B46Kh6NVDP+zMFmUwlYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH0PR11MB5016.namprd11.prod.outlook.com (2603:10b6:510:32::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.39; Fri, 24 Mar
 2023 14:20:20 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%7]) with mapi id 15.20.6178.038; Fri, 24 Mar 2023
 14:20:20 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 11/29] drm/i915/tc: Add generic TC PHY
 connect/disconnect handlers
Thread-Index: AQHZXZLO2KDPIAQY90+u/AE5Kk/Fta8J/EmQ
Date: Fri, 24 Mar 2023 14:20:20 +0000
Message-ID: <MW4PR11MB7054739998CA000008B066E5EF849@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-12-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-12-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH0PR11MB5016:EE_
x-ms-office365-filtering-correlation-id: 0a7e10e1-6218-4681-3ebd-08db2c72e643
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +2MS/Swgp0vG3G1IbF7q4J0nh1YLxcjTAyDyqAse5tqWHIQ9olX4IjCoulKVAHC9SkJhpyeMYI3p3nlRfbCsUO5rNNYXSdlitFTS4qvnnS8dvj3TnhytxRC1J7IlYnAGSr/8lqkNLrNvGBKfD9Aq58iCin6awvAvVfD2WXDooHrTzyv3YI0nPTZIeZsOH0FhTVm4YLlA7AnrvRI0nwgXiTrOXJ7GeCekyujQP66/mQDK55gsG6y2qV9PKd7vQ9Kuj0lhgkksBj7DEEibuaAzs4Z82otLOcVsqldibYf8XxOkONaZ23PmF8efpB731GiA8Y6KWuqWoDc0O3N1e+3ldar1Pt+JHfPEaQnpxRqUhKWd7YGMO8drRfTcg0RLcSp0xO7m9AsFQuj6vKeAQ8LdDJ2J/dmvfCbqvcaJspKLEEfykebARzYt9o+66W2sScWXBdb/eNKDYQ0HGQ3PF3GxEfoMqNGxOk+iDMu6qRhoj27/McRgprnHe43+KTCwBMvTRK6qhjpAFdWZNXJvBjT9Q5fmTyGT3qCI7bllmiq4c8f+MwDk4A2tkIVdvjd6ZOn6negTfdbnsWegrd3/mM3mze/2+/1DNudZzc9fj70FEKoD8ootTt/HHuZJcSC16/5OLiO8J6DS02XtBds8npyPSYCmZV6EVm7xeGMr1om5YPD+iOvgzR6FOWvFk912CE9A1IrasQbgk5x/gYOHv8koTdfGr7hrcxkA8hoNoMBGrAY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(136003)(376002)(39860400002)(396003)(346002)(451199018)(26005)(186003)(9686003)(53546011)(6506007)(83380400001)(55016003)(86362001)(38070700005)(33656002)(38100700002)(122000001)(82960400001)(5660300002)(8936002)(52536014)(316002)(7696005)(76116006)(66446008)(8676002)(71200400001)(66556008)(66946007)(66476007)(64756008)(41300700001)(110136005)(478600001)(2906002)(41533002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y0YxM1hrNjlIcU5jSENxTGVaN2lJL3M3RmNpQXY4VWtuMjZYQVc2Y0pUcysr?=
 =?utf-8?B?Z0Iwa3FuZXpYZUZwcFRjeXlPd3RuRnprWkVKdHA5THM0SnV3Rzl5dlNOWUtH?=
 =?utf-8?B?NmIwcFgybzZ6aDZNTi8wdnB4VnV1SEFMQ1B2ZTY1ZUhxbm0xZjhZdFdxZlg3?=
 =?utf-8?B?UTBFeHorb0tTWmZieDBkUGVTL29Ra2hPc3VyZ3dCd1FyL0tyREc5eEQ5ZG9U?=
 =?utf-8?B?d09zZjNtQjhzbC8wWWdNWTAxSmNzcDc4VmxtdE9EL1dUVjJ6a0xqenBrS3l1?=
 =?utf-8?B?OTJ2Rkc5dDU0Ui96YnJZZHJYQWVMZHRKcEJiMkFEOGpvelp4ZE5GMHlPVUVM?=
 =?utf-8?B?bGNZVUdOYS9YK0Z3cm93clFGZSsranAzSmhzK2Z0OVRXalBueDZxVUFHVCtz?=
 =?utf-8?B?UXhDVlpWTFM5Y3ZKcFh6dkN2eXB2enR2YW1OVzlHdzFDZXNnaUI5cVQyOTd6?=
 =?utf-8?B?cC9KT2VnalZTVWRINXBYNFZEUXRGVFNSWWJrNDMrMHhpazRHNy9DQ0dkMUpV?=
 =?utf-8?B?ZUNKTXpTQkJmV3RlajhPRnBOU3NTS2F6dWd0d1QxRGRBK0QrL1RwUzlSN0ZH?=
 =?utf-8?B?Wit2V2dwL2EySG0xaGhER2xXRTgwT29sN0NIWEUzWVBubTZHK3U2Q3VkYkZh?=
 =?utf-8?B?c2h0TkZBV0xVUmhnL0Q0a0NhQkkrNTRjdGQrWnVkOGJvNTZ0MGtwUWpUaitv?=
 =?utf-8?B?STRWNElCc0Yyb1QzenByTXV2L0d0NHpJazdPMjZBaS8zbllQUHhET2RpUDNj?=
 =?utf-8?B?eU1ZM2NXQi82eC9PU2lSYlpyTmUwODVoK1hjSzFxdWtzdWNyaWdRcWlVNjd0?=
 =?utf-8?B?bFhQWHN2eE4vNEh3SUkwejVzb0RmU0ZEVDZLcmpvb1p4a01aM1hmQWk1dlov?=
 =?utf-8?B?V3NEd0FLN3R3THdqTHp1QlRCb3Z6Ujc2U2NGS3VOUW1MaHRMbkRFdGt0TVAx?=
 =?utf-8?B?RmswWVBIc1VPRGU0aDc3SGl1ZHpzaTZIbFFBdjV4T1JaTldtTk01dGdTWE94?=
 =?utf-8?B?cWdUNWFGMFdlWlNteXRBQ3EzOHczdXR5SjlsdFlPRm40UjMrdEU1c2JQZlRu?=
 =?utf-8?B?aTg4QkJFUDA0VVNVYjBCbitSdE1HODk0M0kyTUdhZVBIdU1BRDFVeDJSS0VL?=
 =?utf-8?B?ZkM4NFlCZ1RiVWlET1NQb1N3REkyZm13ZFE0blIvekNFM0lYYTEycjVWcTJw?=
 =?utf-8?B?RUR3dUtwOUFmakYwRlJTcjQ1VG96MVdMMmVtTGdYZGJ2Y0FXbk5MQzI1d2w1?=
 =?utf-8?B?UDJjQUpXWklZK3VmTjIzNnVqRHZCaGo1UVFJQURYd3MyTXNxUGJrNXhOTjFV?=
 =?utf-8?B?alV6QmtMYU8ybGE1OCt3WjU0SklOVGZqVks1NGxnc05VY3Q0NXp6ZVdLSUll?=
 =?utf-8?B?VWlZWDlTMW1iSUpKUldvUkdMS2VyZUdESUN3QTlsdm5tbk9ycnlhQVZGQ0Vn?=
 =?utf-8?B?RHA3ZGtQSjZUQnZYMExNYUZlVDlnZExBajZWV2h5TXB0OGhGeTVIekdTbTZv?=
 =?utf-8?B?NTYrKzZMUmZwMmZUYVZPdzQrbGdZRzV4eDc0V0RyNHlwK09GOG5kU0syZFJ1?=
 =?utf-8?B?dVRrY2JHb1RQdkt0NFVjdzNBTWtkcWs1R3ZvdmlKU21jaFhUVXZYUEYxMjRK?=
 =?utf-8?B?WVZNUUU4TFBlQzNicDVVSTNVRWtqNmdKeUFicWNVeWhveFpja01IdW5xc2x6?=
 =?utf-8?B?M0I5NnFOZ2NvMjJoRXlSVFhaSFNLZ2NrMjhiZi80QnhvVmxSeExnTVZ1NnJI?=
 =?utf-8?B?ZHJRL0RQV09uOHZmUWxNY0dGUjFDdjNMemJvRC96UmJNOVlqR1orbE5LcHhv?=
 =?utf-8?B?bFMyMFZQMmYvTmtHaXlkZVVWcEJtUVR4UEIzUjg5dTNZcTF0MzFvVEhjZUUy?=
 =?utf-8?B?Wi9SRmFxQXVGSVd2TVNqaW42MlVaUS83Qlk3RXdsR1ppR1JTRG43NVVUdkxM?=
 =?utf-8?B?WDdRM2Q0ZzNrVVNZQXNYd1VNUzNHSjJtM1d0Z0U0WDB6UThtUE8wSFZkZzN2?=
 =?utf-8?B?cWVpNmxpMGw3YVl2TCswNFdRZndIN25vcFpEYVlMSHFhazFNbTFGb1c5RVFl?=
 =?utf-8?B?ME5tM1lVOFlydC8rem84L0V6UnVTQ1d6eVE4SjBJckJsZVdnYUZVQ2lITG9v?=
 =?utf-8?Q?elGqo5HZpU/gfJ5ENpdw1fRay?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a7e10e1-6218-4681-3ebd-08db2c72e643
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2023 14:20:20.3805 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YRTtw/fGAIuMooFYYf8zDNTqwbb3pZ46GTf6w/K/8sIuNGm5iAW1KjznOgvaK1xA0cw2Vz5TTzIUPO+RevB6ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5016
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 11/29] drm/i915/tc: Add generic TC PHY
 connect/disconnect handlers
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjMsIDIwMjMgNDoyMCBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MTEvMjldIGRybS9pOTE1L3RjOiBBZGQgZ2VuZXJpYyBUQyBQSFkNCj4gY29ubmVjdC9kaXNjb25u
ZWN0IGhhbmRsZXJzDQo+IA0KPiBBZGQgZ2VuZXJpYyBoYW5kbGVycyB0byBjb25uZWN0L2Rpc2Nv
bm5lY3QgYSBQSFkuDQo+IA0KPiBTZXR0aW5nIHRoZSBUQyBtb2RlIHRvIHRoZSB0YXJnZXQgbW9k
ZSBkZWR1Y3RlZCBmcm9tIHRoZSBIUEQgc3RhdGUgYW5kIC0gaWYNCj4gY29ubmVjdGluZyB0byB0
aGlzIG1vZGUgZmFpbHMgLSBmYWxsaW5nIGJhY2sgdG8gY29ubmVjdGluZyB0byB0aGUgZGVmYXVs
dCAoVEJUKQ0KPiBtb2RlIGFyZSBjb21tb24gdG8gYWxsIHBsYXRmb3JtczsgbW92ZSB0aGUgbG9n
aWMgZm9yIHRoaXMgZnJvbSB0aGUgSUNMIHNwZWNpZmljDQo+IGNvbm5lY3QgLyBkaXNjb25uZWN0
IGhhbmRsZXJzIHRvIHRoZSBnZW5lcmljIG9uZXMuDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBL
YWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERl
YWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF90Yy5jIHwgNjUgKysrKysrKysrKysrKysrLS0tLS0tLS0tLQ0KPiAgMSBm
aWxlIGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKyksIDI2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBpbmRleCBhYTM5ODEwOTYy
NTkyLi45MTc5Zjg2Mjg3YWIwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3RjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF90Yy5jDQo+IEBAIC00MzQsNDEgKzQzNCwzNSBAQCBzdGF0aWMgdm9pZCBpY2xfdGNfcGh5
X2dldF9od19zdGF0ZShzdHJ1Y3QNCj4gaW50ZWxfdGNfcG9ydCAqdGMpDQo+ICAgKiBjb25uZWN0
IGFuZCBkaXNjb25uZWN0IHRvIGNsZWFubHkgdHJhbnNmZXIgb3duZXJzaGlwIHdpdGggdGhlIGNv
bnRyb2xsZXIgYW5kDQo+ICAgKiBzZXQgdGhlIHR5cGUtQyBwb3dlciBzdGF0ZS4NCj4gICAqLw0K
PiAtc3RhdGljIHZvaWQgaWNsX3RjX3BoeV9jb25uZWN0KHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0
YywNCj4gK3N0YXRpYyBib29sIGljbF90Y19waHlfY29ubmVjdChzdHJ1Y3QgaW50ZWxfdGNfcG9y
dCAqdGMsDQo+ICAJCQkgICAgICAgaW50IHJlcXVpcmVkX2xhbmVzKQ0KPiAgew0KPiAgCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdGNfdG9faTkxNSh0Yyk7DQo+ICAJc3RydWN0IGlu
dGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQgPSB0Yy0+ZGlnX3BvcnQ7DQo+IC0JdTMyIGxpdmVf
c3RhdHVzX21hc2s7DQo+ICAJaW50IG1heF9sYW5lczsNCj4gDQo+ICsJaWYgKHRjLT5tb2RlID09
IFRDX1BPUlRfVEJUX0FMVCkNCj4gKwkJcmV0dXJuIHRydWU7DQo+ICsNCj4gIAlpZiAoIXRjX3Bo
eV9pc19yZWFkeSh0YykgJiYNCj4gIAkgICAgIWRybV9XQVJOX09OKCZpOTE1LT5kcm0sIHRjLT5s
ZWdhY3lfcG9ydCkpIHsNCj4gIAkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIlBvcnQgJXM6IFBI
WSBub3QgcmVhZHlcbiIsDQo+ICAJCQkgICAgdGMtPnBvcnRfbmFtZSk7DQo+IC0JCWdvdG8gb3V0
X3NldF90YnRfYWx0X21vZGU7DQo+IC0JfQ0KPiAtDQo+IC0JbGl2ZV9zdGF0dXNfbWFzayA9IHRj
X3BoeV9ocGRfbGl2ZV9zdGF0dXModGMpOw0KPiAtCWlmICghKGxpdmVfc3RhdHVzX21hc2sgJiAo
QklUKFRDX1BPUlRfRFBfQUxUKSB8DQo+IEJJVChUQ19QT1JUX0xFR0FDWSkpKSAmJg0KPiAtCSAg
ICAhdGMtPmxlZ2FjeV9wb3J0KSB7DQo+IC0JCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJQb3J0
ICVzOiBQSFkgb3duZXJzaGlwIG5vdA0KPiByZXF1aXJlZCAobGl2ZSBzdGF0dXMgJTAyeClcbiIs
DQo+IC0JCQkgICAgdGMtPnBvcnRfbmFtZSwgbGl2ZV9zdGF0dXNfbWFzayk7DQo+IC0JCWdvdG8g
b3V0X3NldF90YnRfYWx0X21vZGU7DQo+ICsJCXJldHVybiBmYWxzZTsNCj4gIAl9DQo+IA0KPiAg
CWlmICghdGNfcGh5X3Rha2Vfb3duZXJzaGlwKHRjLCB0cnVlKSAmJg0KPiAgCSAgICAhZHJtX1dB
Uk5fT04oJmk5MTUtPmRybSwgdGMtPmxlZ2FjeV9wb3J0KSkNCj4gLQkJZ290byBvdXRfc2V0X3Ri
dF9hbHRfbW9kZTsNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiANCj4gIAltYXhfbGFuZXMgPSBpbnRl
bF90Y19wb3J0X2ZpYV9tYXhfbGFuZV9jb3VudChkaWdfcG9ydCk7DQo+ICAJaWYgKHRjLT5sZWdh
Y3lfcG9ydCkgew0KPiAgCQlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCBtYXhfbGFuZXMgIT0gNCk7
DQo+IC0JCXRjLT5tb2RlID0gVENfUE9SVF9MRUdBQ1k7DQo+IC0NCj4gLQkJcmV0dXJuOw0KPiAr
CQlyZXR1cm4gdHJ1ZTsNCj4gIAl9DQo+IA0KPiArCWRybV9XQVJOX09OKCZpOTE1LT5kcm0sIHRj
LT5tb2RlICE9IFRDX1BPUlRfRFBfQUxUKTsNCj4gKw0KPiAgCS8qDQo+ICAJICogTm93IHdlIGhh
dmUgdG8gcmUtY2hlY2sgdGhlIGxpdmUgc3RhdGUsIGluIGNhc2UgdGhlIHBvcnQgcmVjZW50bHkN
Cj4gIAkgKiBiZWNhbWUgZGlzY29ubmVjdGVkLiBOb3QgbmVjZXNzYXJ5IGZvciBsZWdhY3kgbW9k
ZS4NCj4gQEAgLTQ4NywxNCArNDgxLDEyIEBAIHN0YXRpYyB2b2lkIGljbF90Y19waHlfY29ubmVj
dChzdHJ1Y3QgaW50ZWxfdGNfcG9ydA0KPiAqdGMsDQo+ICAJCWdvdG8gb3V0X3JlbGVhc2VfcGh5
Ow0KPiAgCX0NCj4gDQo+IC0JdGMtPm1vZGUgPSBUQ19QT1JUX0RQX0FMVDsNCj4gLQ0KPiAtCXJl
dHVybjsNCj4gKwlyZXR1cm4gdHJ1ZTsNCj4gDQo+ICBvdXRfcmVsZWFzZV9waHk6DQo+ICAJdGNf
cGh5X3Rha2Vfb3duZXJzaGlwKHRjLCBmYWxzZSk7DQo+IC1vdXRfc2V0X3RidF9hbHRfbW9kZToN
Cj4gLQl0Yy0+bW9kZSA9IFRDX1BPUlRfVEJUX0FMVDsNCj4gKw0KPiArCXJldHVybiBmYWxzZTsN
Cj4gIH0NCj4gDQo+ICAvKg0KPiBAQCAtNTA5LDkgKzUwMSw2IEBAIHN0YXRpYyB2b2lkIGljbF90
Y19waHlfZGlzY29ubmVjdChzdHJ1Y3QgaW50ZWxfdGNfcG9ydA0KPiAqdGMpDQo+ICAJCXRjX3Bo
eV90YWtlX293bmVyc2hpcCh0YywgZmFsc2UpOw0KPiAgCQlmYWxsdGhyb3VnaDsNCj4gIAljYXNl
IFRDX1BPUlRfVEJUX0FMVDoNCj4gLQkJdGMtPm1vZGUgPSBUQ19QT1JUX0RJU0NPTk5FQ1RFRDsN
Cj4gLQkJZmFsbHRocm91Z2g7DQo+IC0JY2FzZSBUQ19QT1JUX0RJU0NPTk5FQ1RFRDoNCj4gIAkJ
YnJlYWs7DQo+ICAJZGVmYXVsdDoNCj4gIAkJTUlTU0lOR19DQVNFKHRjLT5tb2RlKTsNCj4gQEAg
LTgxNyw2ICs4MDYsMzAgQEAgdGNfcGh5X2dldF90YXJnZXRfbW9kZShzdHJ1Y3QgaW50ZWxfdGNf
cG9ydCAqdGMpDQo+ICAJcmV0dXJuIGhwZF9tYXNrX3RvX3RhcmdldF9tb2RlKHRjLCBsaXZlX3N0
YXR1c19tYXNrKTsgIH0NCj4gDQo+ICtzdGF0aWMgdm9pZCB0Y19waHlfY29ubmVjdChzdHJ1Y3Qg
aW50ZWxfdGNfcG9ydCAqdGMsIGludA0KPiArcmVxdWlyZWRfbGFuZXMpIHsNCj4gKwlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRjX3RvX2k5MTUodGMpOw0KPiArCWJvb2wgY29ubmVj
dGVkOw0KPiArDQo+ICsJdGMtPm1vZGUgPSB0Y19waHlfZ2V0X3RhcmdldF9tb2RlKHRjKTsNCj4g
Kw0KPiArCWNvbm5lY3RlZCA9IGljbF90Y19waHlfY29ubmVjdCh0YywgcmVxdWlyZWRfbGFuZXMp
Ow0KPiArCWlmICghY29ubmVjdGVkICYmIHRjLT5tb2RlICE9IGRlZmF1bHRfdGNfbW9kZSh0Yykp
IHsNCj4gKwkJdGMtPm1vZGUgPSBkZWZhdWx0X3RjX21vZGUodGMpOw0KPiArCQljb25uZWN0ZWQg
PSBpY2xfdGNfcGh5X2Nvbm5lY3QodGMsIHJlcXVpcmVkX2xhbmVzKTsNCj4gKwl9DQo+ICsNCj4g
Kwlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCAhY29ubmVjdGVkKTsNCj4gK30NCj4gKw0KPiArc3Rh
dGljIHZvaWQgdGNfcGh5X2Rpc2Nvbm5lY3Qoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjKSB7DQo+
ICsJaWYgKHRjLT5tb2RlICE9IFRDX1BPUlRfRElTQ09OTkVDVEVEKSB7DQo+ICsJCWljbF90Y19w
aHlfZGlzY29ubmVjdCh0Yyk7DQo+ICsJCXRjLT5tb2RlID0gVENfUE9SVF9ESVNDT05ORUNURUQ7
DQo+ICsJfQ0KPiArfQ0KPiArDQo+ICBzdGF0aWMgdm9pZCBpbnRlbF90Y19wb3J0X3Jlc2V0X21v
ZGUoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjLA0KPiAgCQkJCSAgICAgaW50IHJlcXVpcmVkX2xh
bmVzLCBib29sIGZvcmNlX2Rpc2Nvbm5lY3QpICB7DQo+IEBAIC04MzQsOSArODQ3LDkgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfdGNfcG9ydF9yZXNldF9tb2RlKHN0cnVjdA0KPiBpbnRlbF90Y19wb3J0
ICp0YywNCj4gIAkJZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgYXV4X3Bvd2VyZWQpOw0KPiAgCX0N
Cj4gDQo+IC0JaWNsX3RjX3BoeV9kaXNjb25uZWN0KHRjKTsNCj4gKwl0Y19waHlfZGlzY29ubmVj
dCh0Yyk7DQo+ICAJaWYgKCFmb3JjZV9kaXNjb25uZWN0KQ0KPiAtCQlpY2xfdGNfcGh5X2Nvbm5l
Y3QodGMsIHJlcXVpcmVkX2xhbmVzKTsNCj4gKwkJdGNfcGh5X2Nvbm5lY3QodGMsIHJlcXVpcmVk
X2xhbmVzKTsNCj4gDQo+ICAJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIlBvcnQgJXM6IFRDIHBv
cnQgbW9kZSByZXNldCAoJXMgLT4gJXMpXG4iLA0KPiAgCQkgICAgdGMtPnBvcnRfbmFtZSwNCj4g
QEAgLTEwMTUsNyArMTAyOCw3IEBAIHZvaWQgaW50ZWxfdGNfcG9ydF9zYW5pdGl6ZV9tb2RlKHN0
cnVjdA0KPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LA0KPiAgCQkJCSAgICAiUG9ydCAl
czogUEhZIGxlZnQgaW4gJXMgbW9kZSBvbiBkaXNhYmxlZA0KPiBwb3J0LCBkaXNjb25uZWN0aW5n
IGl0XG4iLA0KPiAgCQkJCSAgICB0Yy0+cG9ydF9uYW1lLA0KPiAgCQkJCSAgICB0Y19wb3J0X21v
ZGVfbmFtZSh0Yy0+aW5pdF9tb2RlKSk7DQo+IC0JCWljbF90Y19waHlfZGlzY29ubmVjdCh0Yyk7
DQo+ICsJCXRjX3BoeV9kaXNjb25uZWN0KHRjKTsNCj4gIAkJX19pbnRlbF90Y19wb3J0X3B1dF9s
aW5rKHRjKTsNCj4gDQo+ICAJCXRjX2NvbGRfdW5ibG9jayh0YywgdGMtPmxvY2tfcG93ZXJfZG9t
YWluLA0KPiAtLQ0KPiAyLjM3LjENCg0K
