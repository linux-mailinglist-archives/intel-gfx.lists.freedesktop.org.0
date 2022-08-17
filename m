Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53838596E8E
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 14:38:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80E6D12BA8C;
	Wed, 17 Aug 2022 12:38:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81E9C12B916
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660739896; x=1692275896;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p2y1ld/TsMrHy0dv8pLQSgKDAm1lYgMslbBuvGZEg0s=;
 b=C+Uc+i07E6ifPH6TsyYAl7OeI/YWmfCpGSUKVdPrMG/pLmzpOwPUr+6e
 qQ8OERomQiakiAXLPGRxhrdPdkB/xRXvCLOSCB2fnqndwKH8IL6OQBgwh
 sDODaqmcMpo13E3iKYy9mY78OC/wuZtobQGuy2Q7NVLNBRLfZkBT+Wlg1
 o7FcSc6ClUu2tmvNUUZ6EgxCyFaJk4FFnd2cqUbbOAw4Ji9Da8cr9msuD
 4ZFdhCSWUHZJAZngNRq4ZAx42YYPVAnAylBiEPjKZQotC8aOekMNnEmAB
 Wa8Rx69nKPS831H/XxnUVoQAFlxbviGBekN7lqtsqzTD57p5srFVBOS0V w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="272248877"
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="272248877"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 05:38:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="583752273"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 17 Aug 2022 05:38:15 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 17 Aug 2022 05:38:15 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 17 Aug 2022 05:38:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 17 Aug 2022 05:38:14 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 17 Aug 2022 05:38:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W791bjj5FqMZidh/vYCAItu2HI/jOy0jq4WxP0yHrFvS07gKNMlJ4jDs7k9SeiZCNP2lWl79VLSL1GKvYeXuOdtzhBnWbf/jPfQEXpdDBo6o6p36l1mUzPJm8FbRr7iSGyRcDm4Lm9rIChXFPJlbQxeVP8txcJEF8g+c58Op+eT9qP9O+5AL0E66MyaK/JUYAv5bU65pfwRBYJXyYgPxI+k2Pu9wupHqAwDNrKMtryheV7DXeMj8w6vFABUm6v0Aw7YPrCLVeDW414uZGJA8wkyYTeqfGSN2SiFCjMdsycZUQnFcz/KhqRlqYakUG9Iq7zH2YGRjnkxo859BizXxHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p2y1ld/TsMrHy0dv8pLQSgKDAm1lYgMslbBuvGZEg0s=;
 b=bc7aMVOl7PU8kBO2cH/1XFRXd8tJSFreimPe25Fi3mRq3e5142Wo6pr33qI8l7mgZkxg320srWMmSF9V315oZQn/ClAu5LobuWOHjOt0oMQeZ/Eo5HyBZibkTFbgjsAm3rzDEBb4Pe4RRDFwUSByYg5IqDR2xYYHhhAmq2FP2ii0xvxwhPVZMtQGA6CKfWqRUAGu7k17UwuFkkxttIpF223RPvwqv8EBFK9TkxFQuMi6bvahXya0HpQboNgwBccFcVWruOYjeXAipYELinsyBUHwu6imPhS332xmbhoLss2RptN3yeuQhr5kiN5+pDhGNostHh0LQ3QMMB3qAb06vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 (2603:10b6:301:51::10) by DM6PR11MB3548.namprd11.prod.outlook.com
 (2603:10b6:5:143::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.15; Wed, 17 Aug
 2022 12:38:12 +0000
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::b0eb:55ef:bb60:bf85]) by MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::b0eb:55ef:bb60:bf85%12]) with mapi id 15.20.5504.027; Wed, 17 Aug
 2022 12:38:12 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mtl: Introduce FBC B
Thread-Index: AQHYsjSZmRZoJ+7miUKzjTnR7ZWy+a2zB8uA
Date: Wed, 17 Aug 2022 12:38:12 +0000
Message-ID: <MWHPR1101MB2157EFEF10A5D8A4391C4107EF6A9@MWHPR1101MB2157.namprd11.prod.outlook.com>
References: <20220817122624.213889-1-jani.nikula@intel.com>
In-Reply-To: <20220817122624.213889-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1e400c4f-cdc3-4426-f02c-08da804d593e
x-ms-traffictypediagnostic: DM6PR11MB3548:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3ovvVXjUCVAzDQrcqEC2Uk6t+NZNAN0dje3xgKaq1E/uKjv3k2HQBpuYXL2qoEQujpkmTWaIYGd+Z7j0SdbSOQApSojbN/yB+frx6Sq48IXykAgU/oeupm4kDm9IjNQ49wVB9KN8AVbMmIBH3R6XqvjQdvUlXxUbd8mF61uHlH5sZ5h2sn7kdEmQmJNNMUvb7uN0PT5HLoN2EtPmDx5yd7huwY2/mUo6OVmvArF4BB3fMUgx6uKbnFtbVFJ2Go/jyKzjR8Aar/TCIot/AqBW0YIbKBXMvckyt/gXBekYNEDHqrOC4h3znDz1cPJGywYgo+CW73eq6reZlGX9Op9aN5uoJ1kPPDcbSAXYiizCOQKLaYcav3SLEnjL472DEEgopBM1SMbsyMdHODysMYon5ykMy4jUmY4PHsyfXN62TKr2tRc/8pySg/NdWen3xcTrI3WL+M/Cd+FgeXKEwyA/2QRdypWnOLA5/Ciu798Ut3N+8V2AfcZHXGyVizbqnhpkcc00dkFsaOXIbPyq+9mhAjZZCYPpA8uoS/9wdjjo5ueLYDdq4zMlGRdQ0MVRsGddCwgFqvYt3RuSz05q6sp1wJp1V115TEQE/ZeRw/S5L7aMSxO+Mh8LgeiMYRJlZoTty7wGafKXr4sLUBrW/N9doidp/JvsTjtvU7sQT76z8EPkW7SKaLtrmNQOJljMjdA4iwWL1pDU8NVtNOyrNW42+ylxGZ+lnTNbPjWORigq8/00Kbsly5SzGwLbXKSd4usvv4X33b7qDgWhnJ7ok9Clqlrzg6MMx+TBkftMhVpSF58oWl3DJ71mJn54PrrsmQ4v
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1101MB2157.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(136003)(396003)(39860400002)(376002)(122000001)(66574015)(55016003)(83380400001)(86362001)(38070700005)(33656002)(38100700002)(82960400001)(4326008)(316002)(8676002)(110136005)(66446008)(66476007)(66556008)(76116006)(71200400001)(66946007)(53546011)(9686003)(7696005)(6506007)(41300700001)(26005)(2906002)(186003)(64756008)(478600001)(52536014)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z0lIOTFDRThNM1N2Wkk3ZmpsNHp3SDdpcW4zRG5tRFNFZGw2bzhiN1pXdDN4?=
 =?utf-8?B?Z0pUdXNPWk51cDRpemlTMnNvY25RNnZUQUtxWkZCcVFHQjJRSFBWWk41K1Bi?=
 =?utf-8?B?ZHhnTkg3SVVkcTRTTHZLeW5qVCtZNnRqRGVUREp0VzhJc0dDR3dROHRnemE5?=
 =?utf-8?B?K0h4Skg0U0hGZGp6THJ0N0prUDFNTU80bm45Qld1dVQvM0wyNDEvTkQ2bkZH?=
 =?utf-8?B?bEE0aThDUmd1M2RyczlWdHRIdVdmUzA3RkpORUlER0hrVDFRRmxSTHVwTWJs?=
 =?utf-8?B?R0pxekZIVkRtekp3QUpVSE0xQ3ZzaCtpNEg1SWdaQzFNaGVWVm44MVFUdFNE?=
 =?utf-8?B?ZGI2cmRyZFUvWGo1cWZlMXNPbk9LOGYrcEJYR1R3Q2owVDkweERFbGUyMEF4?=
 =?utf-8?B?dlJoT1FSTDBRTGk3M3hrc0NLWm10dks3cFBQY0NyTmcyUDFmRU1ZMWZ0LytR?=
 =?utf-8?B?dDUva2lPUFg3d2pXNzh5YXRJamFLTjMvem1lQTFFY0k4NEh1b3RVSk9uSWNR?=
 =?utf-8?B?c2JHY09IdUh3YjJFVG4yd3RkdDJsQndwdXB6TWZaRjRoSHVGWmpyaFEzTnZh?=
 =?utf-8?B?Skt0LzNJci9vMGFERTZKL09LTHh6NndlOGJ3SVYzZVdYR0ZzTEFhVktXQVBh?=
 =?utf-8?B?YmhCVDdGbTdpV0pNTmIwS3hCbXhFdUxnQ0s0SGhLZGZKbVU2aGhEbk9MRXo0?=
 =?utf-8?B?eFMzRGJISzdMeU8rYjhLOElCK3dPZkt6YUNtU2tPUGxDbXhlRktBVDNPT0ph?=
 =?utf-8?B?ZFA5WEljMEt6WEM0cWNlTldvdWN1OWlIbzJ1bUJoV24vOElsaTh2RW00ZU9v?=
 =?utf-8?B?SDVzNnFQMHh2NFdGdk9heVdJSVRvdm84N2ZHTzdVNWxVRHpDekhWY2NrTi9x?=
 =?utf-8?B?M1NWaFFxQnRKKzYvMEwxeWRxbWhiUlFPSEJyU1Rod29LMXQ5NUtFV2MvbjBy?=
 =?utf-8?B?VUs0RFcySWFmYUl5dWZVNUc1ODQ0dVZNUnVYWkVLT0IvSXByQ0lxTVlPNEJO?=
 =?utf-8?B?L2tFSk5vWTRvS3NkaGVsRkoyMUlYcVFOcmF6cWs2REVESzZkakVkREJ1c3d6?=
 =?utf-8?B?eEU4UStaMjA5RkJZaE96ZUxJajlYdndmVVI2SFVyUWNWMFo5dVVnaitLRk9q?=
 =?utf-8?B?VUZXcUZVMWtBamlvWlhraGRGZFNwT3lGbGxVUTVlWWt2eEUxeWhDSFM4cXR4?=
 =?utf-8?B?UzVtLzlJSGVnaFp2UDBSS3pVa0RRcjBjQWMyek5TTHRreE44SE01T2ZyYk5q?=
 =?utf-8?B?MExXTUE3WlZWVUt0QktpWElrNGlxMDdBQlZWdWJ0aDRBbVlWeVVTa3Q5OFM5?=
 =?utf-8?B?WGpUeC9leUp6a0lTZkJoTTdyV3VQL0xBMnV3LysrcjNiZmlFNEV3b1N2R2NU?=
 =?utf-8?B?MDd6OFBtNFJveE9MVk5COFk5TTl0ekQ5YjNnb0tCRzhGQktlT01nZU5UUlY3?=
 =?utf-8?B?RThHbDQ1dGpoejV0R2hNSUYxUVc2N0JpcWwxbnpqMHY4SExPT053RGkrN1JV?=
 =?utf-8?B?RFNlTDhXcUZ5Y3lUNTcwSktOUjN4MGVveEhIN2NadDVMMHBEeDlUU0ZERHJH?=
 =?utf-8?B?Y0diOEpuajRMcVBmdVpaMEdlbURiZWxkaFdRdkhaTTZaeWpXWmNJZnV4MUpB?=
 =?utf-8?B?SHVHVTZoWnJ2dnRJcXkrcWJwQ2V0YlZxVWRBVEo0dHM1SzJKR0J1QVdlNEFw?=
 =?utf-8?B?YXdTUmx3ekRJZ1BFWDZrS05DT3Y3YmpzcnFQOWhTcjZLVWd0SWVHOTVydElu?=
 =?utf-8?B?eVJ0OXRma1drRUV1T1U2enI3Ymc5bHVYSzAxb2FLOHNiYk9VM2tndUtpVGtB?=
 =?utf-8?B?cXZYZ1RnbUs4WlJvZGQ5QlVSRzFiNjF6M255ME1saG5zZ25qT25lZnRMRHgz?=
 =?utf-8?B?Qi8zMnNzMmRsSllFVXkwTTFzOWo1UUZxWHVKbXAyTkU0ZE9mSnlyd0UrMWlp?=
 =?utf-8?B?eEpRSmo2N3RBMVhUcyt1WnVibXpZZERPSGE4aDZ1QjZsdnRVNDJ2ZXJkLzZi?=
 =?utf-8?B?Sllwb043UHlhVWs5RUZYZVd5UmtVc1NRMHVSbDN0aTRWYVJWZ21kQlMwSEwy?=
 =?utf-8?B?ZWpRUlRlU09rbm5EY1phb1VsNVAxRkYxRlQ2akpQYUkvTmdSV0U3NjJxVjlq?=
 =?utf-8?Q?MkzDGiYYJLnJIxU3m4Lh6eAGP?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1101MB2157.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e400c4f-cdc3-4426-f02c-08da804d593e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2022 12:38:12.3855 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HqZ3Ipx1cY0g/xvyy6UnQD0w3X7r5C59q5Rg6/yePF5h2zGU079fmojibCWz9GcRAL97VnmE7VLcOcTS5RLsZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3548
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Introduce FBC B
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBOaWt1bGEsIEphbmkgPGphbmku
bmlrdWxhQGludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBBdWd1c3QgMTcsIDIwMjIgMzoy
NiBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmlrdWxh
LCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBWaWxsZSBTeXJqw6Rsw6QNCj4gPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPjsgS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRl
bC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5MTUvbXRsOiBJbnRyb2R1Y2UgRkJDIEIN
Cj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+IA0KPiBNVEwgaW50cm9kdWNlcyBhIHNlY29uZCBGQkMgZW5naW5lLiBUaGUgdHdvIEZC
QyBlbmdpbmVzIGNhbiBvcGVyYXRlIGVudGlyZWx5DQo+IGluZGVwZW5kZW50bHksIEZCQyBBIHNl
cnZpbmcgcGlwZSBBIGFuZCBGQkMgQiBzZXJ2aW5nIHBpcGUgQi4NCj4gDQo+IFRoZSBvbmUgcGxh
Y2Ugd2hlcmUgdGhpbmdzIG1pZ2h0IGdvIGEgYml0IHdyb25nIGlzIHRoZSBDRkIgYWxsb2NhdGlv
biBmcm9tDQo+IHN0b2xlbi4gV2UgbWlnaHQgaGF2ZSB0byBjb25zaWRlciBzb21lIGNoYW5nZSB0
byB0aGUgYWxsb2NhdGlvbiBzdHJhdGVneSB0bw0KPiBoYXZlIGEgYmV0dGVyIGNoYW5jZSBvZiBi
b3RoIGVuZ2luZXMgYmVpbmcgYWJsZSB0byBhbGxvY2F0ZSBpdHMgQ0ZCLiBNYXliZSBGQkMNCj4g
QSBzaG91bGQgYWxsb2NhdGUgYm90dG9tIHVwIGFuZCBGQkMgQiB0b3AgZG93biwgb3Igc29tZXRo
aW5nPyBGb3IgdGhlDQo+IG1vbWVudCB0aGUgYWxsb2NhdGlvbiBzdHJhdGVneSBpcyBEUk1fTU1f
SU5TRVJUX0JFU1QgZm9yIGJvdGguDQo+IA0KPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xh
QGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9s
YUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2ZiYy5oIHwgMSArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgICAg
ICAgIHwgMyArKy0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmgN
Cj4gaW5kZXggZGI2MDE0MzI5NWVjLi40YWRiOThhZmU2ZmYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmgNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuaA0KPiBAQCAtMTksNiArMTksNyBAQCBzdHJ1Y3Qg
aW50ZWxfcGxhbmVfc3RhdGU7DQo+IA0KPiAgZW51bSBpbnRlbF9mYmNfaWQgew0KPiAgCUlOVEVM
X0ZCQ19BLA0KPiArCUlOVEVMX0ZCQ19CLA0KPiANCj4gIAlJOTE1X01BWF9GQkNTLA0KPiAgfTsN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jDQo+IGluZGV4IDlmZDc4OGUxNDdhMy4uZDg0NDZiYjI1
ZDVlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMNCj4gQEAgLTExMTEsNyArMTExMSw4
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gcHZjX2luZm8gPSB7DQo+
ICAjZGVmaW5lIFhFX0xQRFBfRkVBVFVSRVMJXA0KPiAgCVhFX0xQRF9GRUFUVVJFUywJXA0KPiAg
CS5kaXNwbGF5LnZlciA9IDE0LAlcDQo+IC0JLmRpc3BsYXkuaGFzX2NkY2xrX2NyYXdsID0gMQ0K
PiArCS5kaXNwbGF5Lmhhc19jZGNsa19jcmF3bCA9IDEsIFwNCj4gKwkuZGlzcGxheS5mYmNfbWFz
ayA9IEJJVChJTlRFTF9GQkNfQSkgfCBCSVQoSU5URUxfRkJDX0IpDQo+IA0KPiAgX19tYXliZV91
bnVzZWQNCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gbXRsX2luZm8g
PSB7DQo+IC0tDQo+IDIuMzQuMQ0KDQo=
