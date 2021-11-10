Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E994244C4CE
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Nov 2021 17:06:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD5B96E9D6;
	Wed, 10 Nov 2021 16:06:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4A386E9C0
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Nov 2021 16:06:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10164"; a="256394228"
X-IronPort-AV: E=Sophos;i="5.87,224,1631602800"; d="scan'208";a="256394228"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2021 08:05:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,224,1631602800"; d="scan'208";a="492154915"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga007.jf.intel.com with ESMTP; 10 Nov 2021 08:05:16 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 10 Nov 2021 08:05:15 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 10 Nov 2021 08:05:15 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 10 Nov 2021 08:05:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PXvg18vEGNuRbKmixGXZauq/XYHIdU2XtPUg+oh3n/4bASeFZzHtkP9u3ZbvHkcmF0xxk55N9+KRUeZFbm7SJPuz91a2F6Rrx7kNPE1cH5SQkzPHlGIoC7C4MnZX7e7+1d8+C/3wzsmwMkvIwuDQq4sqI0ai8uWv5w3bgYlYFjxhcrHxKIIAHwoyz4hW0bY1skDJYoWarCZjhmDYOQRzH3SK14lOWh83sWqHRQ4Y1fM1Y2PCQx3hNt/fgr0IDc0ktwOiA55D/l2Nhy/nV49zPte9zdwr3mnbJvWkvRBH200oHsVom0hc1ZsyVcqy345ladcjIKjKPL5YnJY/MENSgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WrNJmWQuU8a1CbC+HESxARvxsYeA81x4F383fN+qeiA=;
 b=QQer/zQ1nvgJd+zyYidbWwrCmC8ofa6fMCLMlnx3FGcWGKeWj/rlCUxdffGZPr7H9yu28CWpx6F0WsQa7TEYDDXbCwP77IopIptM08IC07llbRzczK+VTzHF7RSBQnfsnLUFJR3SuTwPx5GgBpxaWH0zee37CXQEFVOTK6BkrV7t5POnUCZ5l+N1nSin+5A4pQdjSvoFQAkFM+Tbxtw+osSFueApwDrFcLp7l8vOb4o4godSGZyQJO6rFM9IqZmYawoaCLC5AT8s6lpqj6ZlV19sJCYHHdPWffcN79u1wNdxUHIsI7ToxZRNSNL6CsOh/gOzg30OU7jgVntMsBrqOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WrNJmWQuU8a1CbC+HESxARvxsYeA81x4F383fN+qeiA=;
 b=gjjykRpfRJrHW/8QcRv1cuyNNuRJhCcE2EFYJ4EHV8KdelHnHIbHnMJhfr4pv9c/QuAAVahwU2Ex2TNCw8/0lh1rQZafmXcRR5KW60z4ZJjkacw/6+xu3GvobM7/2CVya3ILto7XSfG8rBbv8k8ToZLP/ZSOp20xrGzODoj3yZY=
Received: from SN6PR11MB2736.namprd11.prod.outlook.com (2603:10b6:805:5a::15)
 by SN6PR11MB3536.namprd11.prod.outlook.com (2603:10b6:805:d4::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Wed, 10 Nov
 2021 16:05:14 +0000
Received: from SN6PR11MB2736.namprd11.prod.outlook.com
 ([fe80::9553:30de:3836:3e54]) by SN6PR11MB2736.namprd11.prod.outlook.com
 ([fe80::9553:30de:3836:3e54%5]) with mapi id 15.20.4669.016; Wed, 10 Nov 2021
 16:05:14 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH] drm/i915/psr: Fix PSR2 handling of multiplanar format
Thread-Index: AQHX1OgYKd7+iXyWsUGR4BrCiM0c2Kv7ACCAgACCIICAAW1rAA==
Date: Wed, 10 Nov 2021 16:05:13 +0000
Message-ID: <db4c7afa7516888f89591ecf5544c0c6de57d90e.camel@intel.com>
References: <20211108213807.39865-1-jose.souza@intel.com>
 <41137e8964637d45ba52b47ccba7d83db584dc0f.camel@intel.com>
 <d161d435144766ec057dfd388bcc34c93d164a0e.camel@intel.com>
In-Reply-To: <d161d435144766ec057dfd388bcc34c93d164a0e.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 28795f62-9142-4ef7-e57e-08d9a463e169
x-ms-traffictypediagnostic: SN6PR11MB3536:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <SN6PR11MB35364C88B133276A377190128A939@SN6PR11MB3536.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vQmRDdMpgm6yD68sA6jwENtY7gzXf0IIER3X/vn4faGQqAhV2hfwZROTi1u6bzkE1OKEaYN51On8Vf+VOVGGnMcqMJsWCdRzaNoLVk95qBJsN232sRIiP6JDynmq3VkVE2raRRZpyda5WCcumjab/L++tUTF+EnnQtKx2+Tdp97+isJglz53o4qtUHA4P0QbmHiM4zB1kZGWMDYHqTxpO5vOc2Ug+si5ZC1pVieg+g2P8Vnf4b67bgEe9F48Nvt8WMjvMQZhWLxhZ7eFy+VvyWH7UPp5/XeTMg+03XsQj8l9eGOpHuafgVQQJj+uuYiQjVjPWHMBCv1vLoHIhakmbQgD1Vy+rYG75pmkMT1P5OEYV2ptOE9nr6LlpGtczxciFvdLJeTG3b40UyHSQ0zz8JGECaOjqQ4U6imk/kt77SCNHWhAN00rUaGeMobR7xxlR+gJaDUkg0Jaq9FukWzCJLUkeSApR5JNwojAVJuCjwSJ/GIuYIAiCRREXtps+yU/JJk7QFb2y2fc8/E2Np7WA+405qYWLKb8FFmeN2GSQAfExqCUUlDagaCiPlZhFamy2GnT/a5kmtF25xAxUq1pPMOWfjdUnmIxBxN9EA8SiZO5WUjiP2HzD4QQXOkB4Mqmh5Bu3GbQDOUFVzEHNCl/KE1ZUuDYcRT8KV1PBGY50IvfkrhI10kgB9nzYm6TXIgy6dPzALODJoH8LW1MXWytKw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2736.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(66556008)(38070700005)(64756008)(66446008)(6506007)(83380400001)(186003)(107886003)(71200400001)(5660300002)(66476007)(4326008)(8676002)(8936002)(6512007)(66946007)(76116006)(110136005)(91956017)(2906002)(316002)(36756003)(38100700002)(122000001)(82960400001)(86362001)(6636002)(66574015)(2616005)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZkxqUW80TWlRWUNGb09nT3ZMM0RSblN1NStrQXJ1TXBaQmtJcCtpalZIOGI3?=
 =?utf-8?B?V3c4ZFhrZE5SbFJuZ3djc1I2K3ZteXlkOGlDVG9RU0JQRk84eVpDZjNBYm9I?=
 =?utf-8?B?YVZPOHpzV1NpWDVvYUJNQ3RtRFJHUnV4MG83clJPK3BQQ2d5d29ESUZESUdR?=
 =?utf-8?B?NG5oQ1RQcHJpbXIzYTFvUm9GTVVFcllSSXhNZlFkdkVlK1RuYTJQREpraldr?=
 =?utf-8?B?VUI2RzZwN0pQOHJKNS9aRnRvQ0JOZVlCMW9Jc245L3Z4ajZSMkwvV1o3aEJ4?=
 =?utf-8?B?RFBUdHBFK0RvMEhrTkhlb2NmRWU2WVprZGI3dWlyaXJpS0JieFRXc1I4SjEz?=
 =?utf-8?B?bmZnc2NBVmFId1VnWkh2TlNkZUJmSE9ISG0vSW9HUFIwbENOS2JKbkttZkFy?=
 =?utf-8?B?YUVoY2toanFYMVlEN2pMb1ZXRzhpZTVmYis1aVJaR2kweDBGTm1TSzVIZ3dz?=
 =?utf-8?B?WjJSWFF6MC9PRncrMjg3K2tHT0xZMWU2YjJMN0RnbDB2WlNma09jTlBTQ3l5?=
 =?utf-8?B?QjlKVjBleEhyMVh3cU50QUwxUm52K3FEN1ZDV1Vock1kNjYvWjBUWmFZZ05a?=
 =?utf-8?B?VkZyWXhuUXorVTRzdGdxNHNkYUhUZ1JZTWt2eXVWWFduNnhGOWF5ZlhPTEIx?=
 =?utf-8?B?dHZhMjNNdXljWmtFWld2RGJzRkNiZGFqSHgweVpTVTQvdDhYUUx0ZitoT1Mr?=
 =?utf-8?B?N3h3cm83Z2dNQXkwdzU2WHlFRmc4SDl4eEl2aWp5a0dzdGpkZitnMlhwdm12?=
 =?utf-8?B?VDdlQnJ4TlZmYzNlbm5MbktCMVJ0ZmlvRFFJblFpUWlYOFlycnl0MGdCNm9N?=
 =?utf-8?B?QXNnQ2pKNE4xTUJHSVVVS0RNUzYyMTUvc25LaFlpaWRjMy95Zm1YbmNuNElI?=
 =?utf-8?B?NE81K25KbXNleFRyQUdLRHBLQTFCeVRtRVM1QVI4SGZtUnZTQW54bVh6blhI?=
 =?utf-8?B?SmlJaXhhZVBZWS9kMGpQMVl5eG5aY1RoNTJ5STZ3ZFZPOWhLeGYxOGJGakNL?=
 =?utf-8?B?cDU5ZGtQVzRvb2JFcmo2cHNYT0QwQzNzUktzWTNQQ0JaaThmbE45YmUvSFhn?=
 =?utf-8?B?SkNsc2VHL2lLT2hVQk5GNSthWmJBY0xnR3B1aC9WbjFGVE9ia0ZXeHp5OW5M?=
 =?utf-8?B?ekFKY3NPSnNJQU5oa2ZZQXQ3T3dhUW96Q0YzSVkza3VZM2R3NjN5QUI0SHdy?=
 =?utf-8?B?bDNla1JrYlVnNFkrSWY3VENOaFJKTnBMQlFwOEthcldiTk54UWk0Nm1tazJI?=
 =?utf-8?B?V0xmMnJmVnd1dDFVclNhVkkxNzJPNmp6d1NiQUZMa3dwSHBsajR6N3JkSlJM?=
 =?utf-8?B?SzloNTVVcTZ5ekVMT2VxMlp1em5HTEQwc25zNlpMTy94MjhTenp3ZmdSMmsv?=
 =?utf-8?B?TGlaQlh4WGpyT0ZEeE1WR3k4NDZqTGVKZ0ZPcC9WSXEyZ2Z1Rnk5RDJ0TWlB?=
 =?utf-8?B?dnJScSt6U2xnRjByVGk1WG5QcWhHMW9Vb3NiS3llTUFXb3VNbW11dXFQSjIv?=
 =?utf-8?B?MDBkNjlCZzc3ZnJBZGtmQmRtY0lJdFpVT3hhTmJuN0U0MU4yaEtYbnJpRlpL?=
 =?utf-8?B?MGhkbFhNSmJHSlZQZnViTGtaVEdsMENScy9QVUs5UEpxQVhvSlIrcVFVMGF1?=
 =?utf-8?B?ZzNNYW5xd2VtQjdqV2oyemhvMTliODNGd251OEtjWm40UVVWRldLWWFyZ09p?=
 =?utf-8?B?b2RZa3dOVERmaHd1ZldDNFRNdUJZU0dCQ0pEeEx5QWVHUWJpYXRvRktaQ011?=
 =?utf-8?B?Wmc2WExDYjc0M2RYNWpBU2o3V2w5VFEydWhPRWV2VzZNbGtnMGYyRUlkV1ps?=
 =?utf-8?B?VHVKbmlFcTU1MER6OEltUXJ1U3pRekFRaXFVZjROZmhRVDZWVWxzQytIQUUx?=
 =?utf-8?B?TTlIaGF3blVxMXhYN0FDOGxCY1JTZGlFYWJVVXdnMGVPcFlJcmVUTXdmUGI4?=
 =?utf-8?B?OThrNUQ3OThvYXBxdTB6VzFsc3VmNW1OZC9scUZrUTQ2d1YyRlFTLzYrRi9W?=
 =?utf-8?B?NVJGUXJJbG53S0ZjSHJMV3M4Q2NQNlp6UmRRRlZPMDNuU3dmZzJyMUxUUjZn?=
 =?utf-8?B?Rm9nUXBSWmxpUUxud3VGTUlpYjdoUDJoVldJQk9CZ01NUUVzcmRvenloRllV?=
 =?utf-8?B?NVNJcXQ4SUxVeHA5dDc4TlljQmxQaTk0QlFXOGJCQXJmY1o0dmtRejZuUC8x?=
 =?utf-8?B?UTNJSFhTQWZXWHF5QTVwbXF3RE1DN1Vya0V0YU51ZkR0NnpKNnVOYWFQNEFL?=
 =?utf-8?B?bmFKYzF0Z21jUEVCTkFMS0JGMGxsMnJubE04TFJ0Q0xxK1czOTFtZW1GS2FM?=
 =?utf-8?B?ZVNRQXZCWTdWc3V4cjZ2UUovZjJhMGpCUWlQT1RnbmlGMXRVODdNUT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <51E1BC4CA0233F4192106CBC9E131ACA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2736.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28795f62-9142-4ef7-e57e-08d9a463e169
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Nov 2021 16:05:13.9017 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kORp3l4JD/aI30kRCDrjfa1Goo4qD1HTcsKzucrJQk+u9o5aBIHSDpWqXlXkyS7uaIxaqeZQAWpymNQCuEJmUD1Uac6e+M9pDqN9enBbeQ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3536
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Fix PSR2 handling of
 multiplanar format
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

T24gVHVlLCAyMDIxLTExLTA5IGF0IDE4OjE3ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gVHVlLCAyMDIxLTExLTA5IGF0IDEwOjMxICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+ID4gT24gTW9uLCAyMDIxLTExLTA4IGF0IDEzOjM4IC0wODAwLCBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIHdyb3RlOg0KPiA+ID4gV2hlbiBhIHBsYW5lIHdpdGggYSBtdWx0aXBsYW5hciBmb3Jt
YXQgaXMgYWRkZWQgdG8gdGhlIHN0YXRlIGJ5DQo+ID4gPiBkcm1fYXRvbWljX2FkZF9hZmZlY3Rl
ZF9wbGFuZXMoKSwgb25seSB0aGUgVVYgcGxhbmUgaXMNCj4gPiA+IGFkZGVkLCBzbyBhIGludGVs
X2F0b21pY19nZXRfbmV3X3BsYW5lX3N0YXRlKCkgY2FsbCB0byBnZXQgdGhlIFkNCj4gPiA+IHBs
YW5lIHN0YXRlIGNhbiByZXR1cm4gYSBudWxsIHBvaW50ZXIuDQo+ID4gDQo+ID4gSSBkb24ndCB1
bmRlcnN0YW5kIGhvdyB0aGlzIGNvdWxkIGhhcHBlbiBvbmx5IHNvbWV0aW1lcz8gV2VyZSB5b3UN
Cj4gPiBhYmxlDQo+ID4gdG8gcmVwcm9kdWNlIHRoaXMgc29tZWhvdz8NCj4gDQo+IGhlcmUgYSBl
eGFtcGxlOg0KPiBwbGFuZSAwIC0gcHJpbWFyeSBwbGFuZSB3aXRoIG52MTIgZm9ybWF0DQo+IHBs
YW5lIDEgLSBvdmVybGF5IHdpdGggYW55IGZvcm1hdA0KPiBwbGFuZSAyIC0gcHJpbWFyeSBzbGF2
ZQ0KPiANCj4gdXNlcnNwYWNlIGRvZXMgYSBmbGlwIHRvIG92ZXJsYXksIHNvIHN0YXRlIGRvIG5v
dCBoYXZlIHRoZSBwcmltYXJ5DQo+IHBsYW5lDQo+IGJ1dCB0aGUgcHJpbWFyeSBhbmQgb3Zlcmxh
eSBwbGFuZXMgb3ZlcmxhcCwgc28gdGhlIHByaW1hcnkgaXMgYWRkZWQNCj4gYnkgZHJtX2F0b21p
Y19hZGRfYWZmZWN0ZWRfcGxhbmVzKCkuLi4NCg0KT2ssIHRoYW5rIHlvdSBmb3IgdGhlIGV4cGxh
bmF0aW9uLg0KDQo+IA0KPiA+IEdlbmVyYWxseTogY2hlY2tpbmcgbGlua2VkX25ld19wbGFuZV9z
dGF0ZSBiZWluZyB2YWxpZCBwb2ludGVyDQo+ID4gbWFrZXMNCj4gPiBzZW5zZS4gSSdtIGp1c3Qg
d29uZGVyaW5nIGhvdyBhbmQgd2hlbiB0aGlzIGNvdWxkIGhhcHBlbiBhbmQgaG93DQo+ID4gdGhh
dA0KPiA+IHNob3VsZCBiZSBoYW5kbGVkLg0KPiA+IA0KPiA+ID4gVG8gZml4IHRoaXMsIGludGVs
X2F0b21pY19nZXRfcGxhbmVfc3RhdGUoKSBzaG91bGQgYmUgY2FsbGVkIGFuZA0KPiA+ID4gdGhl
IHJldHVybiBuZWVkcyB0byBiZSBjaGVja2VkIGZvciBlcnJvcnMsIGFzIGl0IGNvdWxkIHJldHVy
biBhDQo+ID4gPiBFQUdBSU4NCj4gPiA+IGFzIG90aGVyIGF0b21pYyBzdGF0ZSBjb3VsZCBiZSBo
b2xkaW5nIHRoZSBsb2NrIGZvciB0aGUgWSBwbGFuZS4NCj4gPiA+IA0KPiA+ID4gT3RoZXIgaXNz
dWUgd2l0aCB0aGUgcGF0Y2ggYmVpbmcgZml4ZWQgaXMgdGhhdCB0aGUgWSBwbGFuZSBpcyBub3QN
Cj4gPiA+IGJlaW5nIGNvbW1pdHRlZCB0byBoYXJkd2FyZSBiZWNhdXNlIHRoZSBjb3JyZXNwb25k
ZWQgcGxhbmUgYml0IGlzDQo+ID4gPiBub3QNCj4gPiA+IHNldCBpbiB1cGRhdGVfcGxhbmVzIHdo
ZW4gVVYgYW5kIFkgcGxhbmVzIGFyZSBhZGRlZCB0byB0aGUgc3RhdGUNCj4gPiA+IGJ5DQo+ID4g
PiBkcm1fYXRvbWljX2FkZF9hZmZlY3RlZF9wbGFuZXMoKS4NCj4gPiANCj4gPiBUbyBteSB1bmRl
cnN0YW5kaW5nIHRoaXMgb25lIGlzIGFscmVhZHkgc2V0IGluDQo+ID4gaW50ZWxfZGlzcGxheS5j
OmljbF9jaGVja19udjEyX3BsYW5lcy4NCj4gDQo+IHByaW1hcnkgcGxhbmUgd2lsbCBiZSBhZGRl
ZCBhZnRlciB0aGlzIHdhcyBleGVjdXRlZC4NCg0KT2ssIGJ1dCB0aGVuIGlzbid0IGl0IGEgcHJv
YmxlbSBhbHNvIHdoZW4gc2VsZWN0aXZlIGZldGNoIGlzIG5vdCBpbg0KdXNlPw0KDQo+IA0KPiA+
ID4gQ2M6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4g
Q2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gPiBGaXhlczogMzgw
OTk5MWZmNWY0ICgiZHJtL2k5MTUvZGlzcGxheTogQWRkIGluaXRpYWwgc2VsZWN0aXZlDQo+ID4g
PiBmZXRjaA0KPiA+ID4gc3VwcG9ydCBmb3IgYmlwbGFuYXIgZm9ybWF0cyIpDQo+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4N
Cj4gPiA+IC0tLQ0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMgfCAxMiArKysrKysrKy0tLS0NCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiBpbmRleCA5ZDU4OWQ0NzFlMzM1Li5hMWE2
NjNmMzYyZTdkIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+ID4gQEAgLTE3MzIsMTMgKzE3MzIsMTcgQEAgaW50IGludGVsX3BzcjJf
c2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QNCj4gPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
DQo+ID4gPiAgICAgICAgICAgICAgICAqIHNhbWUgYXJlYSBmb3IgWSBwbGFuZSBhcyB3ZWxsLg0K
PiA+ID4gICAgICAgICAgICAgICAgKi8NCj4gPiA+ICAgICAgICAgICAgICAgaWYgKGxpbmtlZCkg
ew0KPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZQ0K
PiA+ID4gKmxpbmtlZF9uZXdfcGxhbmVfc3RhdGUgPQ0KPiA+ID4gLSAgICAgICAgICAgICAgICAg
ICAgICAgaW50ZWxfYXRvbWljX2dldF9uZXdfcGxhbmVfc3RhdGUoc3RhdGUsDQo+ID4gPiBsaW5r
ZWQpOw0KPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fcmVjdCAqbGlua2Vk
X3NlbF9mZXRjaF9hcmVhID0NCj4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICZsaW5rZWRf
bmV3X3BsYW5lX3N0YXRlLQ0KPiA+ID4gPnBzcjJfc2VsX2ZldGNoX2FyZWE7DQo+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlDQo+ID4gPiAqbGlua2Vk
X25ld19wbGFuZV9zdGF0ZTsNCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJt
X3JlY3QgKmxpbmtlZF9zZWxfZmV0Y2hfYXJlYTsNCj4gPiA+IA0KPiA+ID4gKyAgICAgICAgICAg
ICAgICAgICAgIGxpbmtlZF9uZXdfcGxhbmVfc3RhdGUgPQ0KPiA+ID4gaW50ZWxfYXRvbWljX2dl
dF9wbGFuZV9zdGF0ZShzdGF0ZSwgbGlua2VkKTsNCj4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICBpZiAoSVNfRVJSKGxpbmtlZF9uZXdfcGxhbmVfc3RhdGUpKQ0KPiA+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcmV0dXJuDQo+ID4gPiBQVFJfRVJSKGxpbmtlZF9uZXdfcGxhbmVf
c3RhdGUpOw0KPiA+ID4gKw0KPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGxpbmtlZF9zZWxf
ZmV0Y2hfYXJlYSA9DQo+ID4gPiAmbGlua2VkX25ld19wbGFuZV9zdGF0ZS0+cHNyMl9zZWxfZmV0
Y2hfYXJlYTsNCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICBsaW5rZWRfc2VsX2ZldGNoX2Fy
ZWEtPnkxID0gc2VsX2ZldGNoX2FyZWEtDQo+ID4gPiA+eTE7DQo+ID4gPiAgICAgICAgICAgICAg
ICAgICAgICAgbGlua2VkX3NlbF9mZXRjaF9hcmVhLT55MiA9IHNlbF9mZXRjaF9hcmVhLQ0KPiA+
ID4gPnkyOw0KPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNydGNfc3RhdGUtPnVwZGF0ZV9w
bGFuZXMgfD0gQklUKGxpbmtlZC0NCj4gPiA+ID5pZCk7DQo+ID4gPiAgICAgICAgICAgICAgIH0N
Cj4gPiA+ICAgICAgIH0NCj4gPiA+IA0K
