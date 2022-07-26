Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 208965817C2
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jul 2022 18:44:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A96693FD1;
	Tue, 26 Jul 2022 16:44:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 516ED93FAE
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jul 2022 16:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658853894; x=1690389894;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9nIWCUQB71OpwyQFU79/WDUJtvaac2ZNAgoAGdv8Y/k=;
 b=YB2OhVsCuhyea83bZgQmahr0UFknKpuOGDAsox4dhDgpYlyf6+7tMncs
 P6GQKOH9VoNkUP4l+YRgynv15/VC00sNqsps9Trzpca+AtIkE06SekeWN
 T6OF5atvYdSt0JVWvR3dU0teKJ0QaUOV6E/BWFjqO+XSifHBeVFBbBUUS
 V/N4F1RjyhUQwWzmfBwV8ACywTg0QH96lrnj5dwXDMpSFG6tpuPSE5Gle
 CErMMwFGzz8U3jhd1Bj+iM+Xy8nBrIXUmiBKpPoE1YuQs3MfTL4VQPLeJ
 l9PYrUgCb/BzdgDwaOVfbpCfp/sWnjoJ2aZrFVcD1zk+8jtVMbkXo0MqW A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="285550775"
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="285550775"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 09:44:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="658765184"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 26 Jul 2022 09:44:42 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 09:44:42 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 09:44:42 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 09:44:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=guGp2a5Q197lqFkRFE3Y3fjAc1H7aqUW8FfEIOjWRypcYeS/I5VlFwOqfaYBNrtIKSxpLqeCAUx3UhNAIKBd1Q0LUIloghGFqdsSF5N9NrkALsfbTdGlBpPWJOx1a/EAX7aHV1B8b9DeqofG2ZRHuCuY8nQkCf6rPQRT+xm4KceyAwmPQldo5aKXwJLA6owN6v32MP+qZfMnRJ0uyxnKLnkaTUtSHIU9AM1X0ebKtTzwhNSqLfVvlCS5b9uBiamX8kHH7+a995Zm/X5erhh6lBLx+UNGoT78U+Y61gQk5FqPVeGUA6DYRiqlVjtv/L4hYh6VCbbuz1gRyfjiZLeRwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9nIWCUQB71OpwyQFU79/WDUJtvaac2ZNAgoAGdv8Y/k=;
 b=lvu1rIanFR6dF8QhCUVokI1nidOPSty9dbbN7QJvhTmGAz9CekIETaUvtoK8OBFhgLBXdZ9VMUDfjwPuIjJM0ID3qEx2vD3o3ATurIKFqwHji8Mfw/fTUrnRKnQoUCuhHWl9f4oSukwo2zQyCuiHGKGXOePuitVt3gy34/2CiLntTzQqkmwR1DoaZrP4Za2j64AlIhyNbxsn+rJHTp/tpQYT8NRUCWOo0Mt+mF8MmqrBzJ3HlE6UKvJWiosYkh9R68Gkb1g5z+8uR6FURVO/iwNThazpc7u+pxJiucdYeWvYzVQP9c88BpdHqpc+vCnk35s1MWTxbuvNX6/53lpA4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by PH0PR11MB5877.namprd11.prod.outlook.com
 (2603:10b6:510:141::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.25; Tue, 26 Jul
 2022 16:44:38 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::d5ef:be62:3e97:ba64]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::d5ef:be62:3e97:ba64%11]) with mapi id 15.20.5458.025; Tue, 26 Jul
 2022 16:44:38 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Ursulin, Tvrtko" <tvrtko.ursulin@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Pass drm_i915_private struct
 instead of gt for gen11_gu_misc_irq_handler/ack()
Thread-Index: AQHYnVR3bKelK4zoJUSxAHPBm1cpW62PcLBAgADwkYCAAIFOEA==
Date: Tue, 26 Jul 2022 16:44:38 +0000
Message-ID: <CY4PR1101MB2166539024EB2C6849CFCBE4F8949@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20220721225100.693589-1-anusha.srivatsa@intel.com>
 <CY4PR1101MB21665FF0EE500E6A0344B41CF8959@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <f7c084d1-1e18-04f4-970a-faa5e0761d21@linux.intel.com>
In-Reply-To: <f7c084d1-1e18-04f4-970a-faa5e0761d21@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: matthew.d.roper@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e7567dd-0a44-4679-2e6b-08da6f262151
x-ms-traffictypediagnostic: PH0PR11MB5877:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4/uG1J28nmlBTD2Ef44/Ke1iemVdSll0/xww5PHgk9jeCHOi9x3MIUY6i9MgszM69P6+dIVvV5z3cpx1GtE4EH+F4MCYsWHKqfGAC4336SvIyKvTrJBNtOTzp9YOX1U4NfH7is8cqyyE3i8bHXGZpmmQ5igWt1JEViR4Fa2Rj3xIwgSXMeK8D4yCachkFnKo3wqRLdIJQ5U7JxE89aI4FcN9/IJK91zCwryOOIdS2YUHpVYL6cLqxA+K1DhaUO3IU7tbVqx6DWyQv5G2uIW1uzevlyr3s7t744ajzNtytNhbTrutsNDOr4sswH7YBjOkuA7+35dUHGusn7mMDNEoV0erKnr+S0ICXV+dpgTCg/wUyJYCDdqan9gNRd6CsJWG3pAVO36VFg8S7kyiAzQYdMoNSWSGVDgauouOPxg4trrL9S9XWF882Lm2SQx2SZRdrZ2F57DbOl1b+9N5mhRM/JwRfPliQJROp4T7vNL0ieEfWAW6acnjcud9UNqYFvZyKfcHDLEIeq5TjJ6SPtCtyccLtDvd90sMdT+wYTEzIZOKmWsR3DLSbjIxB4RMbdObdExuRjmMLGeWuv0oMAtbfhJ+znlaBnH6qTnYodmoKlqO6OpbKUZ56UFUfDhjYCvs5+bR0CYwqoKiUm/yVDkuu2fSO/uoQZwiT+2xxU+mC8BZhCZZW3omEhEj1/Jd2+Rrk4ISucFNNvvwx+EyW9+8F6ZilnS9cnZRfi+Ydz9NruU2tsMPeTEVht3vSv2ubUiRWllL4A4VzjS9Lit+ET4XLAGnAzWTT+kpHfziaJMWnoEO8Sfo2qgXI/QLyQqGczhl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(39860400002)(136003)(366004)(396003)(346002)(6506007)(41300700001)(53546011)(7696005)(9686003)(66556008)(8676002)(76116006)(66946007)(66476007)(71200400001)(64756008)(478600001)(26005)(86362001)(6636002)(2906002)(66446008)(186003)(110136005)(316002)(82960400001)(55016003)(83380400001)(52536014)(8936002)(33656002)(38100700002)(122000001)(5660300002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cXpCRmlkRXhBOCtwQ3QxSi9JMUpzZGZLOEU3V3k3MVcyRHAvcDdIYThRZEp0?=
 =?utf-8?B?NEVISVZneVY0cEl0ZXlMSXRKaTdEb3czOUp1NEJSOGMzRGxVZjNpbXRWbGZl?=
 =?utf-8?B?SjJZaytaOThYRUU4NGlidGFTeEdwV2swV0huS1pSWU9rcktGUlFlWTIwRkNB?=
 =?utf-8?B?bC8wVUZ1YjJLSUk5amxVZ0NYNndYcGMrbkRybWRjR1lSV1BadkxnaHhLSHJ5?=
 =?utf-8?B?MEQyRGU4cnpKKytUSVZEbGpCN2JSNXF2Mmp3ZUR5TmgyOW1YZE5kSXhUVTNz?=
 =?utf-8?B?UG15akwyZXZSOURYSVdRN1UxZWlyc1lOaWI1REovM0VzTlJ3cDEvQ1lyWVZ2?=
 =?utf-8?B?UkhpdTZ4c09nOVMzRXBTNVBwb0piQm1yblBQb3JxVzk0WFdWYTJVLzhuMlFv?=
 =?utf-8?B?ckJ2NG9HSEFqeU5wK1lvVzBPTFc2VHFYTUlnZ1NyT3Z2U05Dd1NzNHg3c2M4?=
 =?utf-8?B?Z3YzalQzb2NDYlNDVzFKTzBzL1BSTnIweU1WY2pIQ1FadVRPbkU0QlJPK1dU?=
 =?utf-8?B?bTQ2WkJrTXJONjQ5eTVIblU3T3FsblJzVDBOQ0RqaVJFaHFLTXlMVjNoT3Vw?=
 =?utf-8?B?RXg3NGQ0YUxjT1hVL2dYL2djbjVRYWFndTlBVHdJVGlTcXVDek1sU3VQdlEv?=
 =?utf-8?B?WXdCc0pjNUltVDk3VEIvY2dHcGFLNWVraGlETS9aVERCUStuenAvSDZ1R3Qx?=
 =?utf-8?B?SzMzaXdSTE9LMkpVWWt5S3dkSjg1MnhrYkUwWUdzMVZvRVd0KzAzWm5WTEhH?=
 =?utf-8?B?c2piOGR1S3FLbGVVVkFBMmxVM2Y4aFRKMVpqYUJ3ZlR4M3BWekwyOUNSYnRl?=
 =?utf-8?B?ekZaYVdUQ2dMS0ZVRDdvUnQ0ZXhuQ01ZejNJc29tU0ZyOWJhbCtteDdnQnpm?=
 =?utf-8?B?K1NVRFFMbU9BMzVpNStmQS9ZajJWSXg0bUN4aGk1MTNWdmZEa2ZiNGtyUytu?=
 =?utf-8?B?cGRTNHFBYyt0Y3BQN3IyODZJT1lXdXl4S0JoRXZSeWl4UlVPQ1ZJQlpadUR6?=
 =?utf-8?B?TmxZRmRWRGFzNVhmaXRUNjhiVnJUZU1Md3hXVE9EcURjM3hJamRXak84TEov?=
 =?utf-8?B?UHAralZDTEcrcElUY3NPTThOc0IyeTIyQUpjQldOaUZDTGJWaDd1NlhvTEJL?=
 =?utf-8?B?Rjg1SXQ0YzlhUWc0NHlBcFQxMVQrcTNaMmZwTVBrK0hRdVc0MmxJdXJnZjVl?=
 =?utf-8?B?NkcxS09ibSs4THFuamozd3ljU2hTcU40MnI0TkR1UnNOSDFtMjdidFNhNVpF?=
 =?utf-8?B?N3pYNjhRQ1NTdTNMUlg5TjlPdVpudXhGTHVyWEgyTHVkMnd6T3ViVzZIZmNm?=
 =?utf-8?B?STRoRXJ1ZnhENThESlpuVjl6alBVYlRDOTdsTGRxNVNJTTlIQU94THp2eXhw?=
 =?utf-8?B?bEtEZHhDL3dSMEtub29tcTZqajRXQmxqajdZMkh0MG43bndlOU04R0RUMjZn?=
 =?utf-8?B?WTFIbngxeFM3TWorem80cU5ocExWcU5WdjdEaHAvRFRPWDFtdk5xQmxqWkgr?=
 =?utf-8?B?RTZ0dHRIZ3VldU5nRFYwZHBBRlR4RCtpaDNmdTFOdm1uZkVWWXZwaitaSjdZ?=
 =?utf-8?B?RXhFYUFXSzRrM1ltbVZ3Zy9BMGUyRWdyWG01T1V0R1J3QXhzdGt3QXpNU2ZC?=
 =?utf-8?B?dFVUTDkxbDhJV1oyd2diZFFFRUM1bnBTblQ4Y1NMVmNzNUhpS2tLS3dQdXky?=
 =?utf-8?B?TlFKUlV5aHBZMHFZMFVValN3VXJOd09vbW14cnc0SmlJMXN4WWtqUWt5K3Fu?=
 =?utf-8?B?Y25hNnRjVS9JdUs0cmgrRWZKNzY5NmQ5cEJtdFp6TmxSaHNHNHdEYkR2MFBj?=
 =?utf-8?B?NmYyMGU4MVpUS3VZUTFuQjgwZEQxbSsvV3RPbXdOVFBwbHNJU2R3bnlOeTVU?=
 =?utf-8?B?ZDBPQ2E3Vy9Cdi9LYzcxQUJ0R3lERzJjcmRBaW5KR0FOM1AzYXR3bEg3SkFV?=
 =?utf-8?B?VW9VVjhDOStqL1Z6UlloaWF2WmJoZmg2SFhrdEFjUEF0dUxmMVJWR3I0UU4z?=
 =?utf-8?B?VS9oZEx1OTh0SXhIclFhNTFtaTVUd0p5ajF6NzRpK2tFaDVtZlNtbVJSOGRE?=
 =?utf-8?B?MUw1ZFFkWlpla0hkWDV0bDJrcFlPSUFnaHQ3N2F6RGlaaHkvcTNUUFQ0dS94?=
 =?utf-8?B?RWxzQzhPeXRTRVJ2bE5RSWFCSmF1RnhSQ0ordzlSOUFVaE9Ra2dCTDFoeS9J?=
 =?utf-8?B?QWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e7567dd-0a44-4679-2e6b-08da6f262151
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2022 16:44:38.4599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nW/F0POwXs6d0sXK/Qo6PeaTqe6uBDzgeNgfjAB7Qbr+Z/IWIJZm4wwKxZulTXHknGJgP81AJNsmpNXleBfemvWp6yTAFoFt1PAXIM8Fx6s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5877
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Pass drm_i915_private struct
 instead of gt for gen11_gu_misc_irq_handler/ack()
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

VGhhbmtzIFR2cnRrbyA6KQ0KQFJvcGVyLCBNYXR0aGV3IEQgRGlkIHlvdSBoYXZlIGFueSBvdGhl
ciBmZWVkYmFjayBvbiB0aGlzIHBhdGNoPw0KDQpBbnVzaGENCg0KPiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQ0KPiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXgu
aW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBKdWx5IDI2LCAyMDIyIDE6NTkgQU0NCj4gVG86
IFNyaXZhdHNhLCBBbnVzaGEgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+OyBpbnRlbC0NCj4g
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgVXJzdWxpbiwgVHZydGtvIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1
OiBQYXNzIGRybV9pOTE1X3ByaXZhdGUgc3RydWN0DQo+IGluc3RlYWQgb2YgZ3QgZm9yIGdlbjEx
X2d1X21pc2NfaXJxX2hhbmRsZXIvYWNrKCkNCj4gDQo+IA0KPiBPbiAyNS8wNy8yMDIyIDE5OjM4
LCBTcml2YXRzYSwgQW51c2hhIHdyb3RlOg0KPiA+IEBVcnN1bGluLCBUdnJ0a28gSXMgdGhpcyB3
YXQgeW91IGhhZCBpbiBtaW5kPw0KPiANCj4gVHdvIGZ1bmN0aW9ucyBhbGlnbmVkIGluIHByb3Rv
dHlwZSB5ZXMgLSBidXQgSSBsZWZ0IHRvIHlvdSBndXlzIHdoaWNoDQo+IHByb3RvdHlwZSBpcyBj
b3JyZWN0LiBBRkFJQ1QgTWF0dCBsb29rZWQgYW5kIGNvbmNsdWRlZCBpOTE1IGlzIGNvcnJlY3Qg
c28NCj4gdGhhdCdzIGdvb2QgZm9yIG1lLg0KPiANCj4gUmVnYXJkcywNCj4gDQo+IFR2cnRrbw0K
PiANCj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogU3JpdmF0c2Es
IEFudXNoYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCj4gPj4gU2VudDogVGh1cnNkYXks
IEp1bHkgMjEsIDIwMjIgMzo1MSBQTQ0KPiA+PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiA+PiBDYzogU3JpdmF0c2EsIEFudXNoYSA8YW51c2hhLnNyaXZhdHNhQGludGVs
LmNvbT47IFVyc3VsaW4sIFR2cnRrbw0KPiA+PiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPjsg
Um9wZXIsIE1hdHRoZXcgRA0KPiA+PiA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gPj4g
U3ViamVjdDogW1BBVENIXSBkcm0vaTkxNTogUGFzcyBkcm1faTkxNV9wcml2YXRlIHN0cnVjdCBp
bnN0ZWFkIG9mIGd0DQo+ID4+IGZvcg0KPiA+PiBnZW4xMV9ndV9taXNjX2lycV9oYW5kbGVyL2Fj
aygpDQo+ID4+DQo+ID4+IGdlbjExX2d1X21pc2NfaXJxX2hhbmRsZXIoKSBhbmQgZ2VuMTFfZ3Vf
bWlzY19hY2soKSBkbyBub3RoaW5nIHRpbGUNCj4gPj4gc3BlY2lmaWMuDQo+ID4+DQo+ID4+IHYy
OiBnZW4xMV9ndV9taXNjX2lycV9hY2soKSB0aWxlIGFnbm9zdGljIGxpa2UNCj4gPj4gZ2VuMTFf
Z3VfbWlzY19pcnFfaGFuZGxlcigpDQo+ID4+IChUdnJ0a28pDQo+ID4+DQo+ID4+IENjOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPg0KPiA+PiBDYzogTWF0dCBSb3Bl
ciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gPj4gU2lnbmVkLW9mZi1ieTogQW51c2hh
IFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPg0KPiA+PiAtLS0NCj4gPj4gICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgMTYgKysrKysrKystLS0tLS0tLQ0KPiA+
PiAgIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+ID4+
DQo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jDQo+ID4+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBpbmRleCA3M2NlYmM2YWE2NTAuLmVi
MzdiNmJhY2FhYw0KPiA+PiAxMDA2NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9pcnEuYw0KPiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jDQo+
ID4+IEBAIC0yNjUzLDkgKzI2NTMsOSBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgZ2VuOF9pcnFfaGFu
ZGxlcihpbnQgaXJxLA0KPiA+PiB2b2lkDQo+ID4+ICphcmcpICB9DQo+ID4+DQo+ID4+ICAgc3Rh
dGljIHUzMg0KPiA+PiAtZ2VuMTFfZ3VfbWlzY19pcnFfYWNrKHN0cnVjdCBpbnRlbF9ndCAqZ3Qs
IGNvbnN0IHUzMiBtYXN0ZXJfY3RsKQ0KPiA+PiArZ2VuMTFfZ3VfbWlzY19pcnFfYWNrKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBjb25zdCB1MzINCj4gPj4gK21hc3Rlcl9jdGwpDQo+
ID4+ICAgew0KPiA+PiAtCXZvaWQgX19pb21lbSAqIGNvbnN0IHJlZ3MgPSBndC0+dW5jb3JlLT5y
ZWdzOw0KPiA+PiArCXZvaWQgX19pb21lbSAqIGNvbnN0IHJlZ3MgPSBpOTE1LT51bmNvcmUucmVn
czsNCj4gPj4gICAJdTMyIGlpcjsNCj4gPj4NCj4gPj4gICAJaWYgKCEobWFzdGVyX2N0bCAmIEdF
TjExX0dVX01JU0NfSVJRKSkgQEAgLTI2NjksMTAgKzI2NjksMTANCj4gQEANCj4gPj4gZ2VuMTFf
Z3VfbWlzY19pcnFfYWNrKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIGNvbnN0IHUzMiBtYXN0ZXJfY3Rs
KSAgfQ0KPiA+Pg0KPiA+PiAgIHN0YXRpYyB2b2lkDQo+ID4+IC1nZW4xMV9ndV9taXNjX2lycV9o
YW5kbGVyKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIGNvbnN0IHUzMiBpaXIpDQo+ID4+ICtnZW4xMV9n
dV9taXNjX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBjb25zdCB1
MzINCj4gPj4gK2lpcikNCj4gPj4gICB7DQo+ID4+ICAgCWlmIChpaXIgJiBHRU4xMV9HVV9NSVND
X0dTRSkNCj4gPj4gLQkJaW50ZWxfb3ByZWdpb25fYXNsZV9pbnRyKGd0LT5pOTE1KTsNCj4gPj4g
KwkJaW50ZWxfb3ByZWdpb25fYXNsZV9pbnRyKGk5MTUpOw0KPiA+PiAgIH0NCj4gPj4NCj4gPj4g
ICBzdGF0aWMgaW5saW5lIHUzMiBnZW4xMV9tYXN0ZXJfaW50cl9kaXNhYmxlKHZvaWQgX19pb21l
bSAqIGNvbnN0DQo+ID4+IHJlZ3MpIEBADQo+ID4+IC0yNzM2LDExICsyNzM2LDExIEBAIHN0YXRp
YyBpcnFyZXR1cm5fdCBnZW4xMV9pcnFfaGFuZGxlcihpbnQgaXJxLA0KPiA+PiB2b2lkDQo+ID4+
ICphcmcpDQo+ID4+ICAgCWlmIChtYXN0ZXJfY3RsICYgR0VOMTFfRElTUExBWV9JUlEpDQo+ID4+
ICAgCQlnZW4xMV9kaXNwbGF5X2lycV9oYW5kbGVyKGk5MTUpOw0KPiA+Pg0KPiA+PiAtCWd1X21p
c2NfaWlyID0gZ2VuMTFfZ3VfbWlzY19pcnFfYWNrKGd0LCBtYXN0ZXJfY3RsKTsNCj4gPj4gKwln
dV9taXNjX2lpciA9IGdlbjExX2d1X21pc2NfaXJxX2FjayhpOTE1LCBtYXN0ZXJfY3RsKTsNCj4g
Pj4NCj4gPj4gICAJZ2VuMTFfbWFzdGVyX2ludHJfZW5hYmxlKHJlZ3MpOw0KPiA+Pg0KPiA+PiAt
CWdlbjExX2d1X21pc2NfaXJxX2hhbmRsZXIoZ3QsIGd1X21pc2NfaWlyKTsNCj4gPj4gKwlnZW4x
MV9ndV9taXNjX2lycV9oYW5kbGVyKGk5MTUsIGd1X21pc2NfaWlyKTsNCj4gPj4NCj4gPj4gICAJ
cG11X2lycV9zdGF0cyhpOTE1LCBJUlFfSEFORExFRCk7DQo+ID4+DQo+ID4+IEBAIC0yODAxLDEx
ICsyODAxLDExIEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBkZzFfaXJxX2hhbmRsZXIoaW50IGlycSwN
Cj4gPj4gdm9pZA0KPiA+PiAqYXJnKQ0KPiA+PiAgIAlpZiAobWFzdGVyX2N0bCAmIEdFTjExX0RJ
U1BMQVlfSVJRKQ0KPiA+PiAgIAkJZ2VuMTFfZGlzcGxheV9pcnFfaGFuZGxlcihpOTE1KTsNCj4g
Pj4NCj4gPj4gLQlndV9taXNjX2lpciA9IGdlbjExX2d1X21pc2NfaXJxX2FjayhndCwgbWFzdGVy
X2N0bCk7DQo+ID4+ICsJZ3VfbWlzY19paXIgPSBnZW4xMV9ndV9taXNjX2lycV9hY2soaTkxNSwg
bWFzdGVyX2N0bCk7DQo+ID4+DQo+ID4+ICAgCWRnMV9tYXN0ZXJfaW50cl9lbmFibGUocmVncyk7
DQo+ID4+DQo+ID4+IC0JZ2VuMTFfZ3VfbWlzY19pcnFfaGFuZGxlcihndCwgZ3VfbWlzY19paXIp
Ow0KPiA+PiArCWdlbjExX2d1X21pc2NfaXJxX2hhbmRsZXIoaTkxNSwgZ3VfbWlzY19paXIpOw0K
PiA+Pg0KPiA+PiAgIAlwbXVfaXJxX3N0YXRzKGk5MTUsIElSUV9IQU5ETEVEKTsNCj4gPj4NCj4g
Pj4gLS0NCj4gPj4gMi4yNS4xDQo+ID4NCg==
