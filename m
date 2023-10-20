Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7884C7D0A1B
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Oct 2023 09:58:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F13C410E594;
	Fri, 20 Oct 2023 07:58:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9198110E590
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697788713; x=1729324713;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gARCk4ZOEtn1BmYSnPRg5LdHC+B4aNCnhiZZEI4hJLc=;
 b=oDLTA4XD136Tw56DmM9mf6FC1sp7lU/pqc+b1R929vadA7R/D9sg4yL9
 7vSXcxvcb7Ha0N1Gs3IE+vb502fjwcCYoWLFuetIfuD6wgkjHt7UGUIL4
 lGJyg+XsammporSmAltU/IGY6RtRpjn+w61eMatTxJD17D0tFfIm0WiZI
 662dIkfrOt26qdEKfhw1oSGSOHyI/tt/y99QR3b2mCc1Eqabm+LK3V4ss
 GnTlew+Dna9gQu5UiRT5wYZXR7jSqY+QXRaURCNzEGrSsYiFPfdC4nxoM
 lHQtZc2jC/qsHTW6Pl+Ed4mi/cX3stpiQio0HH2Oe8g859P0kaS4MgZhN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="385327512"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="385327512"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 00:58:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="750837889"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="750837889"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Oct 2023 00:58:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 00:58:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 20 Oct 2023 00:58:31 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 20 Oct 2023 00:58:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bY0Pc2qSWNNbeeQsITuhQb171i01Yee+j7mulvKPLT1oxiZ5Naexjt0lInHMlA+qiScmlvT56JDFUW72vtMM+HwnMIRhQNBb9Kl57Y75iDhacvc/of70vOxFjUzudCXBFlxTsL85o+k1cFCAu9eCK1AUCWxgKPJDJi9iaixa2P7nQQlpudPSvO9/P0kgzQQZj08m3mndm9pFvDRPzu6lKcCp/1vTZRG7Q58MWIZgp7/6ddIlCUpo+yqsn5+YLoOQFeHtTdG1HAufbqv2mrk4zwOwy/gSm6eUEH2r9tmHQ9k9bWDBLsOCzMwxBg3Ho1tyRhJo3I/6IxRqocb30tkBaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gARCk4ZOEtn1BmYSnPRg5LdHC+B4aNCnhiZZEI4hJLc=;
 b=WJGdkY1WiR8nlRPUAGV+UMbPcnQIKsNOHQX5Tb0oPQss/VZO+wcTcNFVfRpLrBWVr/dLc8bXOpS0LCHtFp6+PcY8ZXAptIg8CuNT+66ChWCmqHICl4nrBWZw6t7IYMAEFZB/TK4F9kP7yhj3H6vvFx5vpDCezkO3PFvh0QTMGiPF6bZsVj+v7ywgTCOYhNJow+kQThlrKgeP/zJjc2XV7aPOsS5g4WvmSEUjLapKyB0ji+Cn9xy4pFtPYYhNd8EOLyI0W0BCfZ0vw1j+D/AQSTUbM9ue/F6G9ouX1gZDeMnXqNQb2+We6gjMIhuGk9cvN2dPrO/RVXQ/WMKbp5e6uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA1PR11MB6537.namprd11.prod.outlook.com (2603:10b6:208:3a3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.21; Fri, 20 Oct
 2023 07:58:29 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::f525:287c:b2c:81c5]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::f525:287c:b2c:81c5%7]) with mapi id 15.20.6907.021; Fri, 20 Oct 2023
 07:58:28 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Lorenzo Stoakes <lstoakes@gmail.com>
Thread-Topic: Regression on linux-next (next-20231016)
Thread-Index: AQHaAxmXemGSaA1vD0CYKbPtSpTbH7BSOdQAgAAPkQA=
Date: Fri, 20 Oct 2023 07:58:28 +0000
Message-ID: <SJ1PR11MB6129837E902E704954EBBBCCB9DBA@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129B9D6396E5BECB46A25A6B9DBA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <CAA5enKZntFwvLxD4z83301vH+OE8qCx08cDAaY3GQxAMYbbCDQ@mail.gmail.com>
In-Reply-To: <CAA5enKZntFwvLxD4z83301vH+OE8qCx08cDAaY3GQxAMYbbCDQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|IA1PR11MB6537:EE_
x-ms-office365-filtering-correlation-id: 516f7380-7cb9-4b00-515b-08dbd1425846
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i9VBVepXG7/CU4VkZthHHBGNpFG9DzXR+e44bdCIlpoJgHDaKI2uTzwlGO8PZF6Xgqg0Jc2j9OFlcMVc65AC8f/BvcyOTqYI6KpLdzPhtBNGDbsEedFW/D5rgZYPwCAVqkMvBzaQSmTSp06aH6Da8GhO3ZYWSaGCuhdj7qM8oOnUXQnB0PBkzdtmd48/wOjk5AYYtqeFV+Wh72OkEZFJwB4t8yXYTIJp4z22kK12UYbNT28xYnEkRpqvIptakW4Omu6kBhKTLIy1LHlgy2MjCXlykE6xGKUbR8R9do/JyIwk9b9HEgZh67OuX4pl+vitG10G7R7zW5jix5t89aTdq53GWiVNTbgPkq3Eak/1dLztl9M+z+Wkn575QfXcDVpkWzyehjXLDJy+K3GNR7qzfuy61JuSOK57CFZkNcQilypAUNRcWrS+CAvlmSV3vq1KIzbxmiYdhrA10sH31UXxqusrjmoU3Pd0cRxTlBSHBG31I7+boOq3iaxDp8bF3+kTYD6ODQzgJADoMN71j4/ejf99k/e030CnjLq+gkPASnm2qA++HwcLGQGgRuXpbyZeeX8SVARixUMevwKaJFDtxQb+VSHsKxIr6rdK5IUxJSA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(376002)(396003)(366004)(346002)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(38070700009)(316002)(66446008)(66556008)(66946007)(76116006)(66476007)(6916009)(38100700002)(26005)(83380400001)(71200400001)(107886003)(82960400001)(122000001)(33656002)(86362001)(55016003)(54906003)(478600001)(9686003)(64756008)(53546011)(6506007)(2906002)(7696005)(41300700001)(52536014)(5660300002)(8676002)(8936002)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WFlXSk5xSkZJMXdrUFRVTzhDNjBzNi9JS3d4aFFTd0s1aFhmSnJpWlpyMTg4?=
 =?utf-8?B?Z1E4T3pqSDA1UzlkTFNqaGpZQmhybkgxcUx0cm9KaHBxQ28yTi9paDNEWlVR?=
 =?utf-8?B?dWtBaXVlazc0ZjJzK2lVd1N4TlpFNmhESUtKaWFVYUdDTUxQcEFrWUdmZTBR?=
 =?utf-8?B?aVZPeXRMUzF4bWx5VXo2dlBTakU3NVIvWXI5QWNyeVdBRjJ1cTNLOVhUUDBv?=
 =?utf-8?B?ZkM5d0taeXpqbllaMitvOGVQbk9LcE9zRDY1VmlvSTJKME1YcC9mek56Ynp6?=
 =?utf-8?B?YjBmbStzYTNvclEwVytMb3dFdHJNczVLTDRqQmxVc2JYYXBTUyttWEptM3VS?=
 =?utf-8?B?NFhmdFRpbi9yZ1JweE5udWRxckk1emFZY2dsK09tbWdseklXMHhjS05WNFp1?=
 =?utf-8?B?UitzZDlQbTRtMXBHdjdxVlN2akdFR0hiTGtjZjFnL0lha2xJSkI2WDhoak9K?=
 =?utf-8?B?Y0dSbTIwMDNDVGNId2Irb0FJaUUwekszY21BbE9QRTd0djZFZkpqKzNoMTlq?=
 =?utf-8?B?MFY0eWFMS3lYNFNaU2VRZ3FvMFVQQnlzajVSNDJTQ0hWbHcyQ2pLUUorR0JT?=
 =?utf-8?B?VjE0bUVidzhGQzVIeFdabW0zWFplNGl4elI3ZUJ6dGtBcEt0R3NERFFpTlQ5?=
 =?utf-8?B?byt5a1BkbmxhazhnM1QrSDF2WjRibVBJVElKcDZtQW8rK2UzekdUMDZIckRY?=
 =?utf-8?B?VzlJeWNBRHgxRWZDY1Z0NkVjRmtBc0lQRlZrcmFsQmZPKzJrUzIyWXZ1L2di?=
 =?utf-8?B?M2R3d2lnbXJoQ1pUazBob2pNcXZKK2dCaHh2bWlXRGZxZGFqRlhEQ2VoTkZq?=
 =?utf-8?B?SDAvKzFSK0QvNDFRekZiZTRVbG11aTRvVzk0V0JsckpxbTF1TitCRDJteW9I?=
 =?utf-8?B?aytaRlRVb0RGSGo1bUpraXFoNjR0bXZXLzRlMVh3TlkzUFIzMll3VE9pUlU3?=
 =?utf-8?B?NDUra0hiaDVqVGorQnV6NWR1L0pjS1JHaGJzVmh2b3VGNytZcnUvb0VFc1Yz?=
 =?utf-8?B?Yi9zWU82aUlXVXVYbk0zZzFPWnJabzRpT2pzV2lQdWJDL3IvR3pEaHhBYkVD?=
 =?utf-8?B?QTZaaE1iMTg2RVY3MnY0ZDY3MDFOcHhhclpGaEFyRE9LQkE5b1VMRTBuYTdn?=
 =?utf-8?B?bE9KNnM2MnZ5eG84V1hENnlDNFRkMUZMNlVhbVloTVBwUGtFbXNDRWdoL1pK?=
 =?utf-8?B?UmN2N2ZIQWg2c1djdytuVjFuQTgwcUo5bVc4YXZ6a2czamNyY2JJMGt1U3Fl?=
 =?utf-8?B?aHVnazltUVZ0azl0eGNTcmdkR0pDQTIvNDRSa3pPb3ZYYVNWdXZSOU1QeThy?=
 =?utf-8?B?djl3Z1QramVhc1F5d0hYL0UxckU0bVZrN1ZwVHhpMyszeXBNZHhFUWdpRnVZ?=
 =?utf-8?B?U2R5ZWhEWEdnTHJwdDFPUGtMU0NsV09WS0ZITGlDQ0FWQUlxcDJwNWk0dVVS?=
 =?utf-8?B?Mm1sOHBXTGdPVStRNmxBUm5tWU9OZlo5ejVhbUgzdlNWNjVoR2xWZ0VjSFhy?=
 =?utf-8?B?Nlc5UlNHZC9tc2VpRmQveDh6KzU3UGRuNlp3Zi9qeU90Q1R6RDZWRjg4bFJC?=
 =?utf-8?B?THhsazVHYkpTV3Vkb2lOYWk4R1RSUlh3NWlTT3U5a1crMjAwZnBORVk2TDdh?=
 =?utf-8?B?cUNpT0VYanRhcmZRTXhjeVlwcTZYRisxQ3BwYzUxbWpZQ0dqQXFLZWZ2dDVE?=
 =?utf-8?B?VTllSUhNRHpUc1J3OWMwQWlaT1pnM3VadkNSK0xVRkRiZUVXT1JiTWRndkRs?=
 =?utf-8?B?eGQ4WTQwUUU3RXlVZTU5SEJ0aktlR0VBN3Faa203RC9hakZRZnl4R2NnNVNE?=
 =?utf-8?B?UVc3U1ZySDlLaW9rd1BrMW03RnJIQ3dPM2tCVTUrcHBTMWJydnVlZ05pcU11?=
 =?utf-8?B?OEgxL3ZlSWRZamU4SkxTZnBFdnRJMGdtMlF3SVRrcjZsUVRpbUhXNE5GUEpZ?=
 =?utf-8?B?cnh3dlRNdTJYSUxocHZ0NzhPTE80aEJUSWZyNndsV09mZnVsODNZSkZzS0hT?=
 =?utf-8?B?SFViUjBHOVVuN3NOOHJMTkFGZmJ4aW9reGJRcWw2WHZZMVh0VmFoUTExNXdK?=
 =?utf-8?B?cllDYkF5L09BUGR6VDl5SlE3U2NkTXlKbGV4ZFovTXh2d1EyZUUzOENoZEF5?=
 =?utf-8?B?b0ovSW85QkRyUS80R3gwSTJwRU53THZHRkMxOTRVTXFiSXEvZTJ2KzhKUkdZ?=
 =?utf-8?B?TGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 516f7380-7cb9-4b00-515b-08dbd1425846
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2023 07:58:28.1908 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gyAO1gSxeqbpwwJuA478O8Krqc9Nc02EX15Xdogx0d27ayQdSYkzCU0OhwuhLYDtxRmo9MdACzgmsPSk3LdwqVIybZ0I5Nv7M4DMWYaOE90=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6537
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] Regression on linux-next (next-20231016)
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGVsbG8gTG9yZW56bywNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBM
b3JlbnpvIFN0b2FrZXMgPGxzdG9ha2VzQGdtYWlsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBPY3Rv
YmVyIDIwLCAyMDIzIDEyOjA4IFBNDQo+IFRvOiBCb3JhaCwgQ2hhaXRhbnlhIEt1bWFyIDxjaGFp
dGFueWEua3VtYXIuYm9yYWhAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZzsgS3VybWksIFN1cmVzaCBLdW1hcg0KPiA8c3VyZXNoLmt1bWFyLmt1cm1pQGlu
dGVsLmNvbT47IFNhYXJpbmVuLCBKYW5pIDxqYW5pLnNhYXJpbmVuQGludGVsLmNvbT4NCj4gU3Vi
amVjdDogUmU6IFJlZ3Jlc3Npb24gb24gbGludXgtbmV4dCAobmV4dC0yMDIzMTAxNikNCj4gDQo+
IE9uIEZyaSwgMjAgT2N0IDIwMjMgYXQgMDY6NTIsIEJvcmFoLCBDaGFpdGFueWEgS3VtYXINCj4g
PGNoYWl0YW55YS5rdW1hci5ib3JhaEBpbnRlbC5jb20+IHdyb3RlOg0KPiA+DQo+ID4gSGVsbG8g
TG9yZW56bywNCj4gPg0KPiA+IEhvcGUgeW91IGFyZSBkb2luZyB3ZWxsLiBJIGFtIENoYWl0YW55
YSBmcm9tIHRoZSBsaW51eCBncmFwaGljcyB0ZWFtIGluDQo+IEludGVsLg0KPiA+DQo+ID4gVGhp
cyBtYWlsIGlzIHJlZ2FyZGluZyBhIHJlZ3Jlc3Npb24gd2UgYXJlIHNlZWluZyBpbiBvdXIgQ0kg
cnVuc1sxXSBvbiBsaW51eC0NCj4gbmV4dCByZXBvc2l0b3J5Lg0KPiA+DQo+IA0KPiBUaGFua3Mg
Zm9yIHJlcG9ydGluZyA6KSBJdCBpcyByZWFzc3VyaW5nIHRoYXQgdGhpcyBoYXMgYmVlbiBwaWNr
ZWQgdXAgZnJvbQ0KPiBtdWx0aXBsZSBzb3VyY2VzLg0KPiANCj4gW3NuaXBdDQo+IA0KPiA+IFdl
IGRpZG4ndCBzZWUgdGhlIGlzc3VlIG9uIG5leHQtMjAyMzEwMTguIElzIHRoZXJlIGEgZml4IGFs
cmVhZHkgYXZhaWxhYmxlIGZvcg0KPiB0aGlzPyBJZiBub3QsIGNvdWxkIHlvdSBwbGVhc2UgY2hl
Y2sgd2h5IHRoaXMgcGF0Y2ggY2F1c2VzIHRoZSByZWdyZXNzaW9uIGFuZCBpZg0KPiB3ZSBjYW4g
ZmluZCBhIHNvbHV0aW9uIGZvciBpdCBzb29uPw0KPiANCj4gVGhpcyBpcyBiZWNhdXNlIEkgc3Vi
bWl0dGVkIGEgZml4IG9uIE1vbmRheSBbMF0gd2hpY2ggaGFzIG5vdyBiZWVuIHRha2VuIGludG8N
Cj4gdGhlIHdlZHMgcmV2aXNpb24gb2YgLW5leHQgd2hpY2ggcmVzb2x2ZXMgdGhpcyBpc3N1ZSBh
bHRvZ2V0aGVyLCBzbyB0aGlzDQo+IHJlZ3Jlc3Npb24gLT4gbm90IHJlZ3Jlc3Npb24gaXMgZXhw
ZWN0ZWQgYW5kIGludGVudGlvbmFsLg0KPiANCj4gQXBvbG9naWVzIGZvciB0aGUgbm9pc2UhDQo+
IA0KDQpObyBwcm9ibGVtISBUaGFuayB5b3UgZm9yIHRoZSBmaXggYW5kIGEgcXVpY2sgcmVzcG9u
c2UuDQoNClJlZ2FyZHMNCg0KQ2hhaXRhbnlhDQoNCj4gWzBdOmh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2FsbC9jOWViNGNjNi03ZGI0LTRjMmItODM4ZC0NCj4gNDNhMGIzMTlhNGYwQGx1Y2lmZXIu
bG9jYWwvDQo+IA0KPiBUaGFua3MsIExvcmVuem8NCg==
