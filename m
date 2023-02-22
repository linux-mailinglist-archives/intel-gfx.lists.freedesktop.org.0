Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C09BA69FA9F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 19:00:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B7C510E41A;
	Wed, 22 Feb 2023 17:59:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF32C10E41A
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 17:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677088796; x=1708624796;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+3f7VuBsMVo0YhPzjBKW8MpbbkYl+x8OG4asvJMnAi4=;
 b=TsThtzc3aM0vTP1vaR4zaKjIyg+oul5RXWdoZWYq5cnHzCog7S71dqZf
 u03yEaRltE+nibf1XIhucLlueRA4th6yXwb2ezbx2bGaGHHshL5RY3h/t
 KSAdEX266FeogAv1RX5WPnVB3EHEJlvbd08EvNfI8xfhj0k6rB8KArwIN
 emQ6y9KuFMdFrOn6icx4t+RPJWRi1XpPoZpVfT9TJTnSjQ9Iy4G/YD24A
 /jmGL6/hkjKNJJZtVAWScZHdtx/0H+dO3Kee0aGZcAd2YHq6tRQLDgi9Y
 XXKx0kqVeLhW2xfqNmspqh3EP0kgOWDvUhZtoLZyv0h9E46BY4Tu4pqTB w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="335195226"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="335195226"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:59:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="1001085847"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="1001085847"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 22 Feb 2023 09:59:53 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 09:59:53 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 09:59:52 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 22 Feb 2023 09:59:52 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 22 Feb 2023 09:59:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OZE5i8UMe5UdfshFORlBstHZb99QhgU7pJs0uS8B1TfoQpRXBYWnBFzP1rbj3Ta4gPnNEiffw+Yk17f9VAxy0znelYXJKG9Iwaj+t6w5fxGxSM1zwffWamoBrkEp5P6AP1RYpoaHN51tmKwRSF5QEU7C6ER/Hxl0e7qWfFUf4dSHWS/vt9E0hzUAUbRfa0yCGNtw8zxmdy+X7dETtEW0sm5gkwLAZ7iwv5Twd/u+wu0EdI97aXZaViCsCV/aMX1Hs9QA9xTb6Sz2zFPyhniITxHzRqpynMdkHhfjnlRFedJd+hi2PlL1C0+QipxxwcZFRLEDHcNXXCZFYL+wwm221Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+3f7VuBsMVo0YhPzjBKW8MpbbkYl+x8OG4asvJMnAi4=;
 b=BGAVAJT1fyY0Odhqm4c9XdjOhCqzMU9u4jZKUm+h1q8NGz7KXEIBjZwAbWbGoDJL2sDrA4HXQd1R3uIBnLovNchpnrcm5C2qsKxNJBeHVMlwc9CYeH8lMV4MVMs8L7LlH8guYDG+S5Tyzw+8oY7lLQWkMsbwHJqP8IzlJtNPBfLtMSdMY/PJBqPC0pZCr7d6AJdCApeJEvngj6HjCGi1Lcc4oj+MWXpB70X57HtEw9H7ips3ne9W4JMXegHpchRH0cocBFset1rB76kFujMVRzwVq8p55ImFzciSS85eTo+zKOwifJPROqEElBa4LOER3tOfybPt2uERa+Om1Z9B4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM6PR11MB4610.namprd11.prod.outlook.com (2603:10b6:5:2ab::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6111.21; Wed, 22 Feb 2023 17:59:46 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1%4]) with mapi id 15.20.6134.019; Wed, 22 Feb 2023
 17:59:45 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio ELD handling for DP
 MST
Thread-Index: AQHZRT6GmpVcIpIFDUmPF89t9jCyGa7bRADQ
Date: Wed, 22 Feb 2023 17:59:45 +0000
Message-ID: <DM4PR11MB636060CF5C30347EF0EBE755F4AA9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230220151731.6852-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230220151731.6852-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM6PR11MB4610:EE_
x-ms-office365-filtering-correlation-id: 74ebf9db-37da-4142-7df3-08db14fe9514
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Uf+G9wrc5q24RpJazoyddh+xPLJu8XRhy+2o5Cx5ZCq4eBtJ6tOmciF/hEQizRUoutILYbJs7qzkL5gMY86WOwK2p6QN0hsb8trLJP7nFkc48Pv0F52BiD4jydWiI0MY3NQLQ/r0zk7fdiJy/g+X7yduVFSJYENAR9u/WNyzbul4jWS4REPaQwNZkwbQrhYpD5VU2lRqpGjb63t2Kme7Dtlz/9RqNzJSqVN9uWoAtpfvdeGYjV3a3W6QfsDQXb4TfNXeewOb2fhBkQq2vltxYIHbV/lrzf7tT9LiMiEQu3beWZBQLppsoUHEP0kSmq/ahEaZfcOC68O6IfTiErVGAq1iChwDleWWvhgBGrTE3k3LR5zeoqnmGDzR9X6iVCo8d2sCDpo9Eemeps5UaaJp6sU6MPdffIeGHFuz8FOebww8bsfQbmtmg6/xn+JA/clFz337NpeRI3SJ/DRvBSgzs1otmBcXTjhhjMSAeBv65JPICNJt1AyjlnbAkGMmp/o4jKkF2CZj9nhws8aakSvhSp/iBdDV7DqNQqtJq/gtCcYOCy2thvu+kAjF9iRGfMamdgWPhZGMQGNsE6zmKYuy09d0wRjyUIOdhOMJToHwN82DFRRAs9PXJwRJdmvFwvuZ7ChjLQEo5XJNof4KYcLLeQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(396003)(376002)(39860400002)(346002)(136003)(451199018)(122000001)(8936002)(5660300002)(82960400001)(38100700002)(38070700005)(71200400001)(41300700001)(2906002)(52536014)(66476007)(66946007)(64756008)(76116006)(66556008)(66574015)(83380400001)(316002)(110136005)(478600001)(966005)(7696005)(66446008)(8676002)(86362001)(33656002)(186003)(55016003)(6506007)(9686003)(26005)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z3k4MklGR0Y0VjB5VnFQa05HNGxBWTBWRk5zMjNFeW5zMzFjSkdkb01ySys2?=
 =?utf-8?B?ME5TTjU3cXMwODlPSlBHOWlYeHAwZHlGcHEzcEFPMDZ6UVZxcDg1a1VlcXF6?=
 =?utf-8?B?NmhiSk8zL3NaYXdXdXNrYjdzMUE5eG1Pb2FXcE4zclJYM3NoUU9LOFJPL09X?=
 =?utf-8?B?dWYwbnFKSHIyM25QRUt6Mm8rVGRDRGlkaWsyT0N3d1lIc01kMDZsM1c3ZGZV?=
 =?utf-8?B?ekxnSXZsMFFrV09nZWg2QzFEQ21xZUZ2R0k0bDBUTmsycitBNWhtdnYwRXhu?=
 =?utf-8?B?THp5b1pJWXhSSDN3SGI5QzBGYTB1bGlaRC9qOEU2SUpOMHpmYUZ1eDFuMy9V?=
 =?utf-8?B?UlJKUU02Qy9zY01JSnJYcVFYeXhjU3RjQ29ZQkgxS3JSRFExY2paUjFlV1FG?=
 =?utf-8?B?bm9FL0kraVU4VDBPYkl5T2NVTEdEa3czY2FYQjRQWDQxallHbHhMZDlWc2FP?=
 =?utf-8?B?cDlmVzQza0FhbVdYa2xvYUx2UnU4Q2NUSjZyV01TSm9jT1dmQTgwcGE5N3Bl?=
 =?utf-8?B?TnlYUVBYTk9mTk5aQ3dTNWJVZ0NLRFBzT3VieFFMMlc2cy91RjNTNkhMancz?=
 =?utf-8?B?a3M2cVhJRGRweUF2WnQzU0liMnR2QlJVZGZrWUpHLzVxL3RFZks4Q3JLOHRI?=
 =?utf-8?B?WkZBcG1SbVNaMW4vTWNyb1J4cU1KZk5RbEJQMnJCRkhJU2VLdEx6cHF6RGg1?=
 =?utf-8?B?clpEQ0NrYm9xSU1ETFBYK3g3L3RlWmZDNmordkVBYmlPSXovQ2FuMmlaenBj?=
 =?utf-8?B?QzdaZ1ZndWJnTStRSE01bHRpL2hQR1YzeUloQnNldEdoYVlzU1UyTU85ZXRy?=
 =?utf-8?B?VlhOUmp2SzlkYU1kNENLUE1qTVNZMzJnOG1LSlMzK1F3M2J4dzNmbTVhRzhv?=
 =?utf-8?B?OThhamhKckJQWVFyOUxIcW1VNzhmZjNQSmUzbUJNQVJybGNHemNHTVFZQStt?=
 =?utf-8?B?MlgyZSt0SlRRbXNrRDNiSUJEdGdnV1R5cG5GaUVaamgvRFZZSlJsaUhQakJP?=
 =?utf-8?B?VHhxcnZLM3dCdEg0VG1EUzhuWm5oVS9VTllWUll4a3Bjb1BsMG5NaWhoNnVz?=
 =?utf-8?B?aFZFU1Q1czE5MkxYOEV6cXNSMFJDL0g5RldVYjdpT2lDbGUzVnlTVHFsVnRH?=
 =?utf-8?B?WUdQbWdNS2J3MnBMWERWclk5WDJmZFJ3aXB0UFlhZitCRHkwSW9NOHhZOUo5?=
 =?utf-8?B?YkxSd0RUVXFoZUpmWkFsSHI3WHVNeDlOMDJ5RUlmQS9tUTZXWmZZWEwyOUdr?=
 =?utf-8?B?YjhBVlNBbHE1YVducXEyRUZtWUtvd3VsZDl5cDg5ZnpoeEZ4SWtKdGZQamVX?=
 =?utf-8?B?NnBIU3JseG1sR21OR0lHNndpWjlBUGJtMU1iSFVSRUViVFJFZlNOSGZDMUcw?=
 =?utf-8?B?Mit1TjI2aXN2OFJuZU5TMnlScWt5U3l2TmVIcW1HZmVkYmZhZTBVK0dudlBU?=
 =?utf-8?B?RzN5Wm1jQ2YxNExtVlNrRU9BQS9jMzY5MldqbHZabUhZUG5lQmdIbXpJV0Q2?=
 =?utf-8?B?T2l0NjQ1NDNzRVVMQVVwQlpJcmhtZEdtc3JPalZpbytJV1VGbUR3WFhNRURZ?=
 =?utf-8?B?eEZqclhrTzNyVUMwdURieklUbjZtajlyN0tLNkhYUWRwbGxGQUlBWkZEeXpH?=
 =?utf-8?B?enh3Yzl4SEY3d2JJSlRpSzRIQjNsWVhUVDMzUUVJM2lvQ3lOVVJGWkliYXly?=
 =?utf-8?B?RGlZd1V0SmMrbTl6YVcxdWF1THdQSi9zWWxRZkhPakRZbUxSWHNwVHNudm5H?=
 =?utf-8?B?UmNHMmJyaVJIMW5nR2dhZkRrZHIvWVZDZW00c0RxaUdHZU9hYVkvd2Q2S2xy?=
 =?utf-8?B?VXJ0Wjc3bm1KamVFL2hrTzN0bkVoWk96SmxVQTBFa1dsZXpVZzVSMGFJenJS?=
 =?utf-8?B?QmxsenNzWXpIMmc3UkxVNEN4Wld3WXNza3l3SjQ3NHQ2MTFEMHNtUXV5SjFr?=
 =?utf-8?B?Vk8vUzhRUER3TUF2SDdXZW5kUGZDdUg5WEpJaHZkVE1xN1NQSXE0ZEROZmxK?=
 =?utf-8?B?QlBMSkNYK3lyNjE4ZU91MTNSRExObEF2TXdhZGRwOXpFQm1VOXZ4ckVWL2sz?=
 =?utf-8?B?cXlqcUdZdk5EOEdPOWczdktOelovOTZ0RVlSKzFpRW5zMS9qUU5aM3hETFlC?=
 =?utf-8?Q?ui0mRhKyR2Rs0AerMqsP79c4V?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74ebf9db-37da-4142-7df3-08db14fe9514
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2023 17:59:45.8141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y7cN1xVIKsLbwvVksbFvknWf/vy71h0jXD1yeMbWjoDW8JMUDV0wlaS+3YekiRKfwM1+Z4dtw4QcoeR2nG2WqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4610
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio ELD handling for DP
 MST
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgRmVicnVhcnkgMjAsIDIwMjMgODo0OCBQTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBb
UEFUQ0ggMS8yXSBkcm0vaTkxNTogRml4IGF1ZGlvIEVMRCBoYW5kbGluZyBmb3IgRFAgTVNUDQoN
Ck5pdDogTWF5IGJlIGFwcGVuZCAiZGlzcGxheSIgdG8gZHJtL2k5MTUuDQoNCkNoYW5nZSBsb29r
cyBnb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRl
bC5jb20+DQoNCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gDQo+IEkgZm9yZ290IHRvIGNhbGwgaW50ZWxfYXVkaW9fY29tcHV0ZV9jb25m
aWcoKSBvbiBEUCBNU1QsIHdoaWNoIG1lYW5zIEVMRCBkb2Vzbid0DQo+IGdldCBwb3B1bGF0ZWQg
YW5kIHBhc3NlZCB0byB0aGUgYXVkaW8gZHJpdmVyLg0KPiANCj4gUmVmZXJlbmNlczogaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy84MDk3DQo+IEZpeGVz
OiA1ZDk4NjYzNWUyOTYgKCJkcm0vaTkxNS9hdWRpbzogUHJlY29tcHV0ZSB0aGUgRUxEIikNCj4g
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21z
dC5jIHwgMjUgKysrKysrKysrKysrKy0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5z
ZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiBpbmRleCBkZTg1NmY0Mzc1ZmIuLmE4NjBjYmM1
ZGJlYSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9tc3QuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21z
dC5jDQo+IEBAIC0yNjUsNiArMjY1LDE5IEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfbXN0X3VwZGF0
ZV9zbG90cyhzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlciwNCj4gIAlyZXR1cm4gMDsN
Cj4gIH0NCj4gDQo+ICtzdGF0aWMgYm9vbCBpbnRlbF9kcF9tc3RfaGFzX2F1ZGlvKGNvbnN0IHN0
cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ICsqY29ubl9zdGF0ZSkgew0KPiArCWNvbnN0IHN0
cnVjdCBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSAqaW50ZWxfY29ubl9zdGF0ZSA9DQo+
ICsJCXRvX2ludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlKGNvbm5fc3RhdGUpOw0KPiArCXN0
cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciA9DQo+ICsJCXRvX2ludGVsX2Nvbm5lY3Rv
cihjb25uX3N0YXRlLT5jb25uZWN0b3IpOw0KPiArDQo+ICsJaWYgKGludGVsX2Nvbm5fc3RhdGUt
PmZvcmNlX2F1ZGlvID09IEhETUlfQVVESU9fQVVUTykNCj4gKwkJcmV0dXJuIGNvbm5lY3Rvci0+
cG9ydC0+aGFzX2F1ZGlvOw0KPiArCWVsc2UNCj4gKwkJcmV0dXJuIGludGVsX2Nvbm5fc3RhdGUt
PmZvcmNlX2F1ZGlvID09IEhETUlfQVVESU9fT047IH0NCj4gKw0KPiAgc3RhdGljIGludCBpbnRl
bF9kcF9tc3RfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+
ICAJCQkJICAgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywNCj4gIAkJ
CQkgICAgICAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpIEBAIC0NCj4g
MjcyLDEwICsyODUsNiBAQCBzdGF0aWMgaW50IGludGVsX2RwX21zdF9jb21wdXRlX2NvbmZpZyhz
dHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlciwNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsNCj4gIAlzdHJ1Y3Qg
aW50ZWxfZHBfbXN0X2VuY29kZXIgKmludGVsX21zdCA9IGVuY190b19tc3QoZW5jb2Rlcik7DQo+
ICAJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9ICZpbnRlbF9tc3QtPnByaW1hcnktPmRwOw0K
PiAtCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciA9DQo+IC0JCXRvX2ludGVsX2Nv
bm5lY3Rvcihjb25uX3N0YXRlLT5jb25uZWN0b3IpOw0KPiAtCXN0cnVjdCBpbnRlbF9kaWdpdGFs
X2Nvbm5lY3Rvcl9zdGF0ZSAqaW50ZWxfY29ubl9zdGF0ZSA9DQo+IC0JCXRvX2ludGVsX2RpZ2l0
YWxfY29ubmVjdG9yX3N0YXRlKGNvbm5fc3RhdGUpOw0KPiAgCWNvbnN0IHN0cnVjdCBkcm1fZGlz
cGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0NCj4gIAkJJnBpcGVfY29uZmlnLT5ody5hZGp1c3Rl
ZF9tb2RlOw0KPiAgCXN0cnVjdCBsaW5rX2NvbmZpZ19saW1pdHMgbGltaXRzOw0KPiBAQCAtMjg3
LDExICsyOTYsOSBAQCBzdGF0aWMgaW50IGludGVsX2RwX21zdF9jb21wdXRlX2NvbmZpZyhzdHJ1
Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAlwaXBlX2NvbmZpZy0+b3V0cHV0X2Zv
cm1hdCA9IElOVEVMX09VVFBVVF9GT1JNQVRfUkdCOw0KPiAgCXBpcGVfY29uZmlnLT5oYXNfcGNo
X2VuY29kZXIgPSBmYWxzZTsNCj4gDQo+IC0JaWYgKGludGVsX2Nvbm5fc3RhdGUtPmZvcmNlX2F1
ZGlvID09IEhETUlfQVVESU9fQVVUTykNCj4gLQkJcGlwZV9jb25maWctPmhhc19hdWRpbyA9IGNv
bm5lY3Rvci0+cG9ydC0+aGFzX2F1ZGlvOw0KPiAtCWVsc2UNCj4gLQkJcGlwZV9jb25maWctPmhh
c19hdWRpbyA9DQo+IC0JCQlpbnRlbF9jb25uX3N0YXRlLT5mb3JjZV9hdWRpbyA9PSBIRE1JX0FV
RElPX09OOw0KPiArCXBpcGVfY29uZmlnLT5oYXNfYXVkaW8gPQ0KPiArCQlpbnRlbF9kcF9tc3Rf
aGFzX2F1ZGlvKGNvbm5fc3RhdGUpICYmDQo+ICsJCWludGVsX2F1ZGlvX2NvbXB1dGVfY29uZmln
KGVuY29kZXIsIHBpcGVfY29uZmlnLCBjb25uX3N0YXRlKTsNCj4gDQo+ICAJLyoNCj4gIAkgKiBm
b3IgTVNUIHdlIGFsd2F5cyBjb25maWd1cmUgbWF4IGxpbmsgYncgLSB0aGUgc3BlYyBkb2Vzbid0
DQo+IC0tDQo+IDIuMzkuMg0KDQo=
