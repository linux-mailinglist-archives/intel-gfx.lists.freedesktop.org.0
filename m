Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAFC7F19BD
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Nov 2023 18:22:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3745010E0EE;
	Mon, 20 Nov 2023 17:22:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2285010E0EE
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Nov 2023 17:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700500926; x=1732036926;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=TCYY6VPuMYLo6BXJhypx2FyPWvBAM7tL7BCM4cv1Ldo=;
 b=G0meyivZngtPvg+kwSpaWpz8gdn3YFR8I+Au9UPtipe5Z0E1y1TLhrvV
 +ng6SXjTiS/ZW9qZXAHEdqCSrcwwGeXREthfQApqussijb/KcJ/wLyFiz
 YCYPvWu0kVHnuhKoVb7UBAawBtCEke4PKlaRAu/6ugDbVtqT94UM7LctF
 gSxTZIGka1x3VvkXr1ichZkFskt2LVaZ8bmVHhfL+wJnMmVIB2yIVIj7v
 w3XiJYDfXYr2OqympPM2pVBQysFKGqFjBaqkDyuxysZDVNth7x7UZOeoY
 3WZd15Ph+WCXzsJj8xSc04AOf3xB6xfnEfRshAM+KXAvPfAAnyLtqb80n g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="4781103"
X-IronPort-AV: E=Sophos;i="6.04,214,1695711600"; 
   d="scan'208";a="4781103"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 09:17:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,214,1695711600"; 
   d="scan'208";a="7781428"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2023 09:17:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 20 Nov 2023 09:17:03 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 20 Nov 2023 09:17:03 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 20 Nov 2023 09:17:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HKCyOKjlsDTWUFGPkzk+GgfJLPG0M86kGjGSKhf7pXhEZGEqEuV8W5yM4bA+Lrpp2v9/o3ad71z5VpeXON39NSSN4cobrWSPOz+AWug3se6kcLtEP8o/gEqPX10QGCVzS0U8tNZcjYPAOfTABOnvfJHjC5IBEDkSPfuTcn2deo1eA/OPzxngiZq94z0luoUw20xz2rK7t1P5lhEgzisfw3lfe3eUwtiW9rMGMMjC6L072EY8Hpq7/qHZ6Gn6FX1DfKJ9muGQBfBnCkErzSdIMTaH/lD/Kjh8VDHliaNNINMMP4+FgIwi57u0TorOWa04tLOLoE9FK64m1YtDMZPuKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TCYY6VPuMYLo6BXJhypx2FyPWvBAM7tL7BCM4cv1Ldo=;
 b=aaLzG8ubDMolL6StvEFmgWdmKvRywGsx3XTpkqWcNK9i5m9VJSyfhmyvKV8kpwExrugwDBJXQR/Q7Khqt265WM/zPrXGU2USnrKFVI8vf89a89tVJZFDQiDKiuYzS6vWkkOnw16VR1yQGcG7qjJndEfttieBDBVvLWb25744BBdmf0XA2yfaRLav//qzF60FSDK1vRYoDwQiVI+duB8cX1pjzWHy5dUFpHjdpH9HwAceojdizIyha0I4mypm/GPJ80yHT5ueKI5d48igUduxF4bi4grWUemhIccfkAyulfFzWvtPaU9LTgjaI8IY2Y9/vCFhSuL/dScHboaqVrzh7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by DM4PR11MB7184.namprd11.prod.outlook.com (2603:10b6:8:110::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.27; Mon, 20 Nov
 2023 17:17:01 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::d35c:f42b:fdf7:36bb]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::d35c:f42b:fdf7:36bb%5]) with mapi id 15.20.7002.027; Mon, 20 Nov 2023
 17:17:00 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Do not check psr2 if psr/panel replay
 is not supported
Thread-Index: AQHaG7HvbdEeBrb//0u+3DzA49GQnbCDcxLA
Date: Mon, 20 Nov 2023 17:17:00 +0000
Message-ID: <BL1PR11MB59797BE3D342A416C26363B3F9B4A@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20231120130214.3332726-1-jouni.hogander@intel.com>
In-Reply-To: <20231120130214.3332726-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|DM4PR11MB7184:EE_
x-ms-office365-filtering-correlation-id: 853ce6ed-de57-44df-ca40-08dbe9ec8237
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Dmkak+/FOij3cFglBWz5BQhmzpmVyVxR+KGAJL2zHIBBXQqisqH/CkQSJvVyleSqDVG7HRIlhMVkIB+vaYjDwMZCiC/Tpiy+K9ZealGfW7t1+0QbCg3yYijkPCsfu8lDAriiks2r8FBt1tDGvVd8X1bGoFloL/pqdXlOfI+rHFFxToapoTeIeJy4yGgoG+m653FpqxFA/41ZARmAFsmX7DdEyAilM0kvcKT7UJChstpEw0Sn/X4c9i9Pco5Xt3ryGO42Cc/pRiM9aBcS7slN1nfpQqN52fulam2nriuXz3fWqNqoz5mwQLuptMQcByxYBwqWDfYhMiaNlE23km2HCqhAmVXZGt2RQoRClTed9TRBNqdygqTcQtI15uYOge462XoKPF6NA30RA7XybCS/Ar0iYNHCYpP6c6w6XyOUKJfmMrTZyKqM0WzYJJGR55VzJ7inqPAi7l3n1yPm8cnFAPLRGXi6Fw9Kmcccl6JNRpB+9wxOTlEm/of5gVN6NMUYfpe2Vd4XSYKT+j/oS73ntOvosT9teofoUzQQ8Sl+Z77BoF2wO1hZPyzNYg+NZiFp0Q3GFG2Tew6LfbQWGDloBUQ5bJ8lisYuKwy7cF8rU84=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(136003)(39860400002)(396003)(346002)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(26005)(83380400001)(64756008)(316002)(66946007)(66556008)(66446008)(66476007)(76116006)(110136005)(53546011)(55236004)(7696005)(6506007)(86362001)(5660300002)(2906002)(478600001)(52536014)(33656002)(55016003)(9686003)(82960400001)(122000001)(41300700001)(71200400001)(38100700002)(38070700009)(966005)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Ti9yMXpDeE0wVjVRcm9hNE5SZklmbFFKZTdzOVFJL3lPcjkvUFp5Tm9lNUlW?=
 =?utf-8?B?YVpPb2RSQUp4UTNvbHRSckt3enkrTng2MkVSa2xQZFQ3M045MkFVLyttbWVj?=
 =?utf-8?B?dDRqelIxeEVrK25sUlVxS0dUaENIbmVSajlaSXdmM2NBcXp5Mk5NckJBOXRD?=
 =?utf-8?B?ampNWjdEaXRsdURzaTQ4azBjOVdCdmlvczVucVc1Q0lSOUNZZ0M4VGtzOXl1?=
 =?utf-8?B?dkpXU0hiZEx1R1M2Vkcyc2tETUl2RitlYmQyZkJFQ2NmdXZRTzJkSjRXVlNu?=
 =?utf-8?B?bnlGa2FiWXJoY1NrVTAwY3cwVS9kaWRMVW00OVlodmxIanRNU05oWm8zK3h2?=
 =?utf-8?B?VkptR09hUmwrbkxIeEJ4Ny9yK2lUVXNzZGwvckd2WGhRNm5JSElDNzJNMUF2?=
 =?utf-8?B?VE9QYzNpTFJGWStrNzJaZTFUcEJvYWNFMGdIbDI2SkZKR25qY05YWG5MSERS?=
 =?utf-8?B?MmY3N3VpYUlCU3gzMk5FUG5rMFF6NkFmbEZXcWdHVGdzaU94OUJRQUpBUFRJ?=
 =?utf-8?B?NWdVZlVWMVVJR1RCcWRqVGdjc0RrNDB0bDlmcXlsTnBuMWpSRzBzZnhweUkr?=
 =?utf-8?B?ekRnU0ZsdlZ4S3pINUdWZUdTM3JUZmVzMWlPbmF4Nk81YW4wOXhCNnFMdWd4?=
 =?utf-8?B?NjRxRFVOenRWcnV2S1ljekVubGFGdXVwUlBQWnUvM2dwRFpUbHpZUVlaclNW?=
 =?utf-8?B?TGVRdTFsNWJobEdGaWpVNWFSUlB6cFROQjFRUkU4U2J3U1Fma2tuZHpjZG1P?=
 =?utf-8?B?UGJoRVR5MmZ5bnlPK2N4K2p0Tmt3Q3BabzFqZXd2eTU2YUdpcHBFeENtSUti?=
 =?utf-8?B?N2NRSCt5dlRYRFdnckV1Y2RtY2tKTncxeGNBVHY1eFFWMXpEWDMwNURqVG02?=
 =?utf-8?B?S1hOMkRSMkVsbHBLeU1uRFFwQmRKSzZyMGNpUnFIbGM2ZHFNSUIzeHd1eEc4?=
 =?utf-8?B?NGZROUl0NTVtcDN5UktFOElCcDIrNk9QSC9BZ1h4WnpKdVcyNTF3U3NDRGkz?=
 =?utf-8?B?ZWcrZTNpajA1TzlBTEFOc2RRYUNaVUNqc2NWd2N1dG5sMzU4aDdZUllQR0p4?=
 =?utf-8?B?ZVpKSFdJLzZGWTZ3bDVPRWtjbjVTVjRCTUQreWt3andidWJyRS9ETk1zeUkr?=
 =?utf-8?B?YUZXNm5nZG0vU3dsTlkzcTQzazFJMDZyMjRmU09QbGRiVmFlU2FqSE82Nzlx?=
 =?utf-8?B?SkZyakxaTmtJRG5KQnhubUdHazJ3V0dldDV1emJ3VDErKzBvTmFjQWVwa09q?=
 =?utf-8?B?OC9PQ0dmUGNnQVkrYmNtUlV2THdmZUw2Uk5WWWZRWit2QXMzOWpDWDdlcE5w?=
 =?utf-8?B?aTdDZFpjcW4rR2F2TzZvTmNJMVNyOVlmQ1FsYk9CU05Ra0FJeGpIZE1FNkxj?=
 =?utf-8?B?cUdxazBMNnRIdXhSVUdhb2RZUnhnTnVaQlI3blBlYW5UQlkyTmFZb1A2OW4w?=
 =?utf-8?B?aW1TQ29OSlAraSt3VFIwYW0rMVJkVkNpU1prM0FBVkVmMlg2cWlNUHRDL2dG?=
 =?utf-8?B?ZDZPQ0M5OG5GanBBbjFwSVhWMFUzSnZqZE9yRVBTa1ZIZGxVOE41amdtM2hh?=
 =?utf-8?B?QzZ5Y1BJaHNzaUxsTzBtTHRqRnhUcVhpZzhKUUowWDZuK0U4K3VrUFVxQkpH?=
 =?utf-8?B?N2d6OEIwTFZScDArOEVxYjdWZmxsdXVFWXNScVg3bE91a21Fa3ZlYW9lMm1U?=
 =?utf-8?B?c1IycDExVWdUUmI5UDFSeHFHUlgybUtmV1JKWUtWVDE0bUpJelM1dzRCZGE0?=
 =?utf-8?B?NEtRYkJDZmcrUnJtR290Ui9BQ2t1Z3FCRS9LdmdnYjd2aEkwVmxJVFUrczRI?=
 =?utf-8?B?Sjh3YWdMWnhvL2dJcUMxQTlMY1piTkMreEFaUitCTm92UEV4UmQvOHlOTUtB?=
 =?utf-8?B?Z1ozc3gzUi8xSml1UmF6NkduU1pta0VXdXkxWTFGQlJnZjdWWU9qQnNQRzBI?=
 =?utf-8?B?anE4Z1ZsMnE5Q2VwRmtwMTc0ai9pNkJzMEdNSXpBNFlueW5YVlBjVEdtWmU4?=
 =?utf-8?B?YUhtZlh3VmhWWnp2Nit1Q0ZnQWppYjlaeWxITHZVRU90VEZzSnA5aFdsUXZj?=
 =?utf-8?B?Z3lOTTdLVVc5TEM5bk1RTitPSkpRcWRLUVNVYzRVUXNYTU5xVzdOVjRoYU9Q?=
 =?utf-8?Q?Jq7KMVLSHAsIs4RV8QiHyJhmC?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 853ce6ed-de57-44df-ca40-08dbe9ec8237
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2023 17:17:00.8894 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4YB8S2aVgkZCD1+FjZ7XYH+qqeOM71WZOQ2cQx5Sbs1dfIucWxMRMx+65O28k69+qLCr8m4xydLa85k2HFo4Og==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7184
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Do not check psr2 if
 psr/panel replay is not supported
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMjAs
IDIwMjMgNjozMiBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBD
YzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+OyBNYW5uYSwgQW5p
bWVzaA0KPiA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSF0gZHJt
L2k5MTUvZGlzcGxheTogRG8gbm90IGNoZWNrIHBzcjIgaWYgcHNyL3BhbmVsIHJlcGxheSBpcw0K
PiBub3Qgc3VwcG9ydGVkDQo+IA0KPiBEbyBub3QgY29udGludWUgdG8gcHNyMiBjaGVja3MgaWYg
cHNyIG9yIHBhbmVsIHJlcGxheSBpcyBub3Qgc3VwcG9ydGVkLg0KPiANCj4gQ2M6IEFuaW1lc2gg
TWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiANCj4gRml4ZXM6IGI4Y2Y1YjVkMjY2
ZSAoImRybS9pOTE1L3BhbmVscmVwbGF5OiBJbml0aWFsaXphdG9uIGFuZCBjb21wdXRlDQo+IGNv
bmZpZyBmb3IgcGFuZWwgcmVwbGF5IikNCj4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzk2NzANCj4gU2lnbmVkLW9mZi1ieTogSm91bmkg
SMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCkxHVE0uIA0KUmV2aWV3ZWQt
Ynk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDMgKysrDQo+ICAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggOGQxODAxMzJhNzRiLi45YWExYzI2OWNmZWYg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAt
MTM3Myw2ICsxMzczLDkgQEAgdm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0IGlu
dGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gIAllbHNlDQo+ICAJCWNydGNfc3RhdGUtPmhhc19wc3Ig
PSBfcHNyX2NvbXB1dGVfY29uZmlnKGludGVsX2RwLA0KPiBjcnRjX3N0YXRlKTsNCj4gDQo+ICsJ
aWYgKCEoY3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSB8fCBjcnRjX3N0YXRlLT5oYXNfcHNy
KSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICAJY3J0Y19zdGF0ZS0+aGFzX3BzcjIgPSBpbnRlbF9w
c3IyX2NvbmZpZ192YWxpZChpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+IA0KPiAgCWNydGNfc3Rh
dGUtPmluZm9mcmFtZXMuZW5hYmxlIHw9DQo+IGludGVsX2hkbWlfaW5mb2ZyYW1lX2VuYWJsZShE
UF9TRFBfVlNDKTsNCj4gLS0NCj4gMi4zNC4xDQoNCg==
