Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5B248403B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 11:57:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2B3589266;
	Tue,  4 Jan 2022 10:57:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7E9E89266
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jan 2022 10:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641293871; x=1672829871;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+HDq8Inm2UYOmXpzyWnYPYxdkiLSR5VVYPUskME9LvQ=;
 b=ReEE58Eo8k/m9TYrNSMPOrCLgI/4tyeqa0PLzYncna8rQfe7qAAl0ROe
 4cXrmggvwU3ZjR7Dhy1KXX6B6TcmwxSsJxmgssqwhUAH5PVgOYpBJC4Xi
 QalLrSfkA6BEvemIyON+Kbim5IYJRxTL4uY/Tm0Q6jGCMWMn7TQLEbNk0
 RRNsdwgtB3p3Vz5nXlt/g0cAHlgtjSzkywruUvSXi7Yt2vdsmFXUJjTIn
 +dYQsF/HjII5zz6ALTJfre9E6jKOYICqmfB2O7Q84l+H5v02+SRZTtcwC
 p+w0xlBowC6wCfJ3SvnnDrTm25jem8nGqH02wnj+zJvGcscKtJ3dHmmU5 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="266471599"
X-IronPort-AV: E=Sophos;i="5.88,260,1635231600"; d="scan'208";a="266471599"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 02:57:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,260,1635231600"; d="scan'208";a="470131060"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 04 Jan 2022 02:57:50 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 4 Jan 2022 02:57:50 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 4 Jan 2022 02:57:50 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 4 Jan 2022 02:57:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nKkf2rPrPBy903XLUG0QAf7jp0z3wfTG34QKnDKqrJQVmLPRywXTDhYlUrJ7kYAvcKnSLsnx1cD1lK852MbwUJzPjTLefDIh169RYkEvrh+Cx9YtPnyUh8KcxA2iH3Q3QwsuZyyPADBJ+Lxgwtpy/WZGQP+6d+ZcIrw4NuuEW60rjD9RbQS9MqvsYa7WWDU4/FWCwkpD+6W4+KBGWSwPlpR4T/uEq+XKzI307FfNOP/1mY4hNsMFM7jt4PJZDr2kKMq7Bdx/vorikwBrP+X91D97UiUfh0n2qjYZl0yFx7gFSbFFG51jxEj6aPofF6T8nD/jZkcUvKXZLr5Z4eGEXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+HDq8Inm2UYOmXpzyWnYPYxdkiLSR5VVYPUskME9LvQ=;
 b=WqKV8xIIT26mbKGa4amlaHS6tAZ0x9OLyU0BCNPlWIq0LPyWXtO6muCcNSFRZYWn0uoQls/+ydDbQsv5u/XG2V1c191HiIonqxnZpc+e6qbaN4J8uPjZniEvlb+e6ZQxSrc/xNLhnjbBmxShaqsbuOaXatlgWVrQ8o9R3gX5BQbjAkaWZ+1VnDBwoA/Eg/Z4nriFUHWx1JfYhrovH8TnY4yW4vYznsgf8oJdK+ZYBWdNIcr6VFDmotn43KmKskmTz9XQyWuhp4iu1/zOSx3ZWZFKTZfoaH0Ek995hM58lpRoXBoYSModG1aHVeBoxSZVjcnH0M+Bl+HokuVIbAT7Dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 DM5PR11MB1292.namprd11.prod.outlook.com (2603:10b6:3:7::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4844.15; Tue, 4 Jan 2022 10:57:48 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::f8b1:818d:e250:d2aa]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::f8b1:818d:e250:d2aa%6]) with mapi id 15.20.4844.016; Tue, 4 Jan 2022
 10:57:48 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/psr: remove useless enum
Thread-Index: AQHYAUi3wGmAvi9qvE2/Fa6Q8DviWqxSsT4A
Date: Tue, 4 Jan 2022 10:57:48 +0000
Message-ID: <ca7e187ea5014e0d7c0b85c5891b33e01acfe2de.camel@intel.com>
References: <20220104085421.213793-1-jani.nikula@intel.com>
In-Reply-To: <20220104085421.213793-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5bac96a2-6dad-42e6-b58d-08d9cf710b9e
x-ms-traffictypediagnostic: DM5PR11MB1292:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM5PR11MB12925EB23C6632B5457858198A4A9@DM5PR11MB1292.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1ttsK9mMR8IVKJKn7u/YQUurJEK/H6E8xcvEf2mw6h7QQgHF0lR9FBdo/e1RXasGwXC389Ozn4UHAQNavEi7+BQWqQV2zYIfS3C0G4xMHyb8Ia5nnZ5jYvUSv4yO2SHacfb0vkVjv8bjIB9CyMyBUUhQR83aX7BoWXTPx1AeszAY4j9odHLlOsPKWR5gIszsKJDqaxUbYNVdoZcLuGXf5IJzxxXEWdTkgsGxFUkE78DpBWWcXwS1Xd3HZjCl8k8cpzR6rs2CB+U7/RMt7HxesEqZA3v1mhO8FmFUmnjwUVDmmNC60ET3NDZ106VCOKGm7DYHerARpYsVKXusA7N5R/BJTxYGB9IgEoetszbHhPUqxy4pl5vrmXatUIHJOnqH3VXu7s1ttmwFO4kf/wzwGP88Z+7x+pHYTnyOqY62/q8iasOYZ6K/W7qVtILSoUrnGbEA7A2K4LRFLuWcDC4x2n8kRXM0FdMZkQAskFC41qw1K//Ibu2U0NWnOhlB/OGf0J8QK96zX4EUzkUf4jd5jFHYg+VfjhArrahdte63pO75XoxiWHjR9cDll3U46gya/YaWPW1+OHTD4sb+DOukHSOHwIgaaUgz+KSi+3dGsCEdHQ6kWu3FRHT1djt/M903EG9qRawgIYFhWL9ZSqCeFI3lOXDdIYrzLuiP1GEciVdMMF9sCOo5C6SYtxcDYjkxeVgBleZsNIoVHVLI+mI4aA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(110136005)(71200400001)(316002)(6512007)(6486002)(83380400001)(36756003)(5660300002)(66446008)(66476007)(82960400001)(66556008)(508600001)(6506007)(66946007)(54906003)(91956017)(2616005)(8936002)(64756008)(4326008)(76116006)(8676002)(38070700005)(122000001)(86362001)(2906002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MFFjeHVjcmY4TVBESUdtclk0OVVCMTN1T2lhV0dXTy9DMVlFRGRvQjFGazJH?=
 =?utf-8?B?VFlNOVVRaHBXTVdCKzJ5cVV1WVFWNzB6R2wwQWs1aHFCZGtibkowd3pTS05H?=
 =?utf-8?B?Sm1rcXEwRFNHWWthNUdTNVlkdkZ1dER4ZGQ1YTFsK0dSbCsvWDV3RUQ3bVdv?=
 =?utf-8?B?M2dwQU5TSUp1Z1RndDZKNlpxc3pmWGNtMlpjZFhlb1J2bVZuM0ErQy9yYk9C?=
 =?utf-8?B?VjgrRkxZbUZIMG8wTHdRbWhsaEl1UDc5TXRXS1NXZ3ZIRFR0Z3JJSTk0S2NJ?=
 =?utf-8?B?eHdUaVI4NU1Va3pZVXkxTkN2VUx4Kyt5SnUwT2d3ZHlSRjR1V1Bsc2hJMWZ6?=
 =?utf-8?B?QzljcHhhd3lZMXhUN1VlS2lUSTVCblZsUkJoSklMaVlOeVVkZVJMb0ppUjdy?=
 =?utf-8?B?Q1k2RnpSVnVsSkdzMUowbVBQSVloZURYMzBDdytTeTR3OEFNRkFpWkZBTENI?=
 =?utf-8?B?NHdFMXZSdkc2dm00MjV5UERpMVQ0Nk9xNjVxN25UU1psVmtyaDBRWHdEcy9s?=
 =?utf-8?B?ck9nK2s1VUdHRTdUUGJWTnRqVVQwdFpiemZpNGpNK2FUUGZLdlM2YWlGV29a?=
 =?utf-8?B?QjVmQlVRUnJCdXhvLzRyQ3EwSlNja3lhelVubVFXOEV2YkxKVzZhUXpHWDZZ?=
 =?utf-8?B?cFNoSkZzU0pwSUdVNzgrclN5bUJPaTdWSFd5elpzRFdHaVYyVXk5cnhzcVBs?=
 =?utf-8?B?VitaeVNyeDkxZ2VsbHhTTEVZU3JEaXB2alBLMWRhVm9aV0dqaHFTSWNrQ2sr?=
 =?utf-8?B?Vk1QNXFNYkxjV1RlbERBYjAxSHk2cC9QcjRZM0VOY3hQYjZJcG5TVFRzU2Vk?=
 =?utf-8?B?RnA4LytPOFlNeFBybGhsdlVZSFhweUNUTW9vZFpudnJhanhEZHNYYjRJVVJB?=
 =?utf-8?B?QWJLa212dmdoUTVYWDdDT2ZZTjNZY3J5RjFFRkdVQ3dVelR3NXhITGpQVWIz?=
 =?utf-8?B?aWswY25GTGpSOFp2S3QzM1FwYTdFNVJ4MXI1K1JrcUVtUmR5dXNxQ3VqNVU3?=
 =?utf-8?B?T0JncEYvbHk3TGZURlJaUTUzVzlWME9HZUxFQjNuWGZmZGw3Y1pEMWNMYWpK?=
 =?utf-8?B?QmxMeE92ZEhCbUtnQmVrcTJGZUdNcHV2aCtLOUZ0bm01T2M0SlkxRCtZdzdO?=
 =?utf-8?B?akN6OHltbXBnM2poazNGeFhvRm5TbFhNVk1BdjR4cEl4aHZFaGVzaTZjTzVB?=
 =?utf-8?B?SGZYS255L1hnUWR6aks2a2N1YzVvUm1COUcyTFpnK3hmY1kvYjFtQUlkbWJj?=
 =?utf-8?B?aVE1TitxWlFyMFQ1cHVYSE5qdEdhWm10WmN1QkRvTFhGZFR3UHFBdnRJMk1k?=
 =?utf-8?B?czhkSnZQdStmejZmTnFuOWJ2Y0RsRENJdVYvU2F4RXBTSWZMQksyVTgyVktP?=
 =?utf-8?B?ODRlc2drZFBSSXE1UHYzRFlYWi9YZ3ZtSmQ1QmNxRW43K2JEeXRocDZjRXBJ?=
 =?utf-8?B?cE85cXFwVGVoQnJMUFVOdStQRlZqOHRFaVlCZWpjT1JNNzhMQTA4S2NlWGZ6?=
 =?utf-8?B?bWVwNTltZ2hrQ2k2a1FSVThKR2p1VkI0dUF6Q1p4OEJvc0FoVGpnbHhiWTF1?=
 =?utf-8?B?WjBsYUJSeVp3T2RmV0d6Z0NubUhBMnlLQW5ZdDJFMnVCSmlCVFE4YUNnRUox?=
 =?utf-8?B?Zzh6SEN5bzJqUHNDS0JaV25pQyszZkNhZGxQTThIMzN1R0xRcG5TOVNWdGxW?=
 =?utf-8?B?Y3poMmNnbWkvTVo4VUpFejlHUXlXTXEvQUZpY1c0WVVwaS85c3BZdjROMk4r?=
 =?utf-8?B?aTZwdjg5RGRObC81c1B4VDY4UGtYMEwxT0U5c09LdjVXaisvV3dYUFY4Q1oy?=
 =?utf-8?B?bVh5SEVtdW8vLy8yNDlwNTN4UllsL09iK3VGZDdmOW5iQ3BLUDRCdFQ3U09K?=
 =?utf-8?B?RHRHQ2Z5VlVQS2xGcUY2L0QyL0VFK1dpeXp0QnpQcEEvVnFuMEFEWHJZTVF1?=
 =?utf-8?B?REFWK2pOeHU4UXdYVmlSV3FiQXA4V09tdjBDa2k1MSt2c0x1S2dBOGltY0pk?=
 =?utf-8?B?LzNxNlU2dGxlVGwyT3E4TFVxOXRoaUpzR21zNElnM2pwZFoyL2ZtcHFsWE5l?=
 =?utf-8?B?R0h6K0pXNUxEN1FpOFJSVDM4QkZvOFdoUWNHaGR1SDhPYTdMK014eXl0c0VW?=
 =?utf-8?B?R0RMSjdTOUdNaWpwQ0hrUVFTVlhaQkw5VHROd09uMDU0K2xSWkhSc3hBSjRk?=
 =?utf-8?B?U1lmenJDWmhMUnhYVE5ET2JvNU5VZzl4YzN5QitWN016NmFjaUQydW5uTGxw?=
 =?utf-8?B?elRqZFRiY3N1SVRKcDZXVWZHZU8zRk1ncnZ1RUhrbktDekk0Y09hcDNqaUpN?=
 =?utf-8?B?NXlnR0VXVUVjbzdJTFVDRXJud0JPcEpCUEY4SzFnZUhNbUEzRzJNeVYwRExZ?=
 =?utf-8?Q?MawgAue9CgQpwwQ8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C021EDAFD3EC7645B5C22EEA7C840AFD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bac96a2-6dad-42e6-b58d-08d9cf710b9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2022 10:57:48.2371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vVPG5xgqhBxYij/yBa8I9GpMuwol36bjwQRISHJNDjO2NvOlRnReOu4ST1cjN0B4SJsfkJQK4LWE0U1xqpx88faZxO9nMGyoPu5j3zqLwMY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1292
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: remove useless enum
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

T24gVHVlLCAyMDIyLTAxLTA0IGF0IDEwOjU0ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
VkJUIGhhcyBhIGxvdCBvZiBtYXBwaW5ncyB0byBzYXZlIGJpdHMuIFByZWZlciB0cmFuc2xhdGlu
ZyB0aGVtIHRvDQo+IHRoZQ0KPiBhY3R1YWwgdmFsdWVzIHdoaWxlIHBhcnNpbmcgdGhlIFZCVCwg
a2VlcGluZyB0aGUgbWFwcGluZ3MgaW50ZXJuYWwgdG8NCj4gaW50ZWxfYmlvcy5jLiBVc2UgYW4g
aW50IHdpdGggdGhlIGNvcnJlY3QgbnVtYmVyIG9mIGxpbmVzIHRvIHdhaXQNCj4gaW5zdGVhZCBv
ZiBrZWVwaW5nIHRoZSBWQlQgbWFwcGluZyBhcm91bmQuDQoNClJldmlld2VkLWJ5OiBKb3VuaSBI
w7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KPiANCj4gQ2M6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBDYzogSm91bmkgSMO2Z2Fu
ZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiANCj4gLS0tDQo+IA0KPiBBY3R1YWxseSBsaW5l
c190b193YWl0IGlzbid0IHVzZWQgYXQgYWxsLiBTaG91bGQgd2UgbnVrZSBpdA0KPiBhbHRvZ2V0
aGVyDQo+IG9yIHN0YXJ0IHVzaW5nIGl0IGZvciBzb21ldGhpbmc/DQoNCkl0IGhhdmUgYmVlbiB0
aGVyZSBmb3IgcXVpdGUgc29tZSB0aW1lIG5vdyBhcyB1bnVzZWQuIFByb2JhYmx5IG5vIG9uZQ0K
aW52ZW50cyB1c2FnZSBmb3IgaXQgaWYgcmVtb3ZlZC4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIHwgOCArKysrLS0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgfCA5ICstLS0tLS0tLQ0KPiAgMiBmaWxl
cyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gaW5kZXggYzdhOGQ1MTdj
ZTgxLi44ZDEwNWY0NDg5MmUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYmlvcy5jDQo+IEBAIC05MDcsMTYgKzkwNywxNiBAQCBwYXJzZV9wc3Ioc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUsIGNvbnN0DQo+IHN0cnVjdCBiZGJfaGVhZGVyICpiZGIpDQo+
ICANCj4gIAlzd2l0Y2ggKHBzcl90YWJsZS0+bGluZXNfdG9fd2FpdCkgew0KPiAgCWNhc2UgMDoN
Cj4gLQkJaTkxNS0+dmJ0LnBzci5saW5lc190b193YWl0ID0gUFNSXzBfTElORVNfVE9fV0FJVDsN
Cj4gKwkJaTkxNS0+dmJ0LnBzci5saW5lc190b193YWl0ID0gMDsNCj4gIAkJYnJlYWs7DQo+ICAJ
Y2FzZSAxOg0KPiAtCQlpOTE1LT52YnQucHNyLmxpbmVzX3RvX3dhaXQgPSBQU1JfMV9MSU5FX1RP
X1dBSVQ7DQo+ICsJCWk5MTUtPnZidC5wc3IubGluZXNfdG9fd2FpdCA9IDE7DQo+ICAJCWJyZWFr
Ow0KPiAgCWNhc2UgMjoNCj4gLQkJaTkxNS0+dmJ0LnBzci5saW5lc190b193YWl0ID0gUFNSXzRf
TElORVNfVE9fV0FJVDsNCj4gKwkJaTkxNS0+dmJ0LnBzci5saW5lc190b193YWl0ID0gNDsNCj4g
IAkJYnJlYWs7DQo+ICAJY2FzZSAzOg0KPiAtCQlpOTE1LT52YnQucHNyLmxpbmVzX3RvX3dhaXQg
PSBQU1JfOF9MSU5FU19UT19XQUlUOw0KPiArCQlpOTE1LT52YnQucHNyLmxpbmVzX3RvX3dhaXQg
PSA4Ow0KPiAgCQlicmVhazsNCj4gIAlkZWZhdWx0Og0KPiAgCQlkcm1fZGJnX2ttcygmaTkxNS0+
ZHJtLA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gaW5kZXggYmVlYjQyYTE0YWFlLi40
ZDViMjM5MDQ5YmIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiBAQCAtNTE1LDEz
ICs1MTUsNiBAQCBpOTE1X2ZlbmNlX3RpbWVvdXQoY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUNCj4gKmk5MTUpDQo+ICAvKiBBbW91bnQgb2YgUFNGIEdWIHBvaW50cywgQlNwZWMgcHJlY2lz
ZWx5IGRlZmluZXMgdGhpcyAqLw0KPiAgI2RlZmluZSBJOTE1X05VTV9QU0ZfR1ZfUE9JTlRTIDMN
Cj4gIA0KPiAtZW51bSBwc3JfbGluZXNfdG9fd2FpdCB7DQo+IC0JUFNSXzBfTElORVNfVE9fV0FJ
VCA9IDAsDQo+IC0JUFNSXzFfTElORV9UT19XQUlULA0KPiAtCVBTUl80X0xJTkVTX1RPX1dBSVQs
DQo+IC0JUFNSXzhfTElORVNfVE9fV0FJVA0KPiAtfTsNCj4gLQ0KPiAgc3RydWN0IGludGVsX3Zi
dF9kYXRhIHsNCj4gIAkvKiBiZGIgdmVyc2lvbiAqLw0KPiAgCXUxNiB2ZXJzaW9uOw0KPiBAQCAt
NTYxLDcgKzU1NCw3IEBAIHN0cnVjdCBpbnRlbF92YnRfZGF0YSB7DQo+ICAJCWJvb2wgZnVsbF9s
aW5rOw0KPiAgCQlib29sIHJlcXVpcmVfYXV4X3dha2V1cDsNCj4gIAkJaW50IGlkbGVfZnJhbWVz
Ow0KPiAtCQllbnVtIHBzcl9saW5lc190b193YWl0IGxpbmVzX3RvX3dhaXQ7DQo+ICsJCWludCBs
aW5lc190b193YWl0Ow0KPiAgCQlpbnQgdHAxX3dha2V1cF90aW1lX3VzOw0KPiAgCQlpbnQgdHAy
X3RwM193YWtldXBfdGltZV91czsNCj4gIAkJaW50IHBzcjJfdHAyX3RwM193YWtldXBfdGltZV91
czsNCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0K
