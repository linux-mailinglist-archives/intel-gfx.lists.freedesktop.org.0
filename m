Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D4174E62C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 07:00:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A4A910E2F9;
	Tue, 11 Jul 2023 05:00:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EF1110E2F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 05:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689051645; x=1720587645;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=cZyklx1+h4fsZfRHv6agfM/iVz4OJP9sF4zYupoFEQI=;
 b=mQ4qzVFC6QSlJeZ7tnE91MP2cTlnJ3HUVeMJNvc5bt/V9fVqrSP7HWEv
 3JrHH9DERF4SbhWbH2pB24R0JD3RYSYTOB9ChvswhyAN1La4UKqFe+A+L
 Advre3ZNh/q9tiASSbp6pm9TrEJYEt02L305Z8iNGpjo3Mfr2sWW6zcnN
 mZ9otR4WZ1SxocHsjT+8/6tQNOpVkciMJttgDvE2L/nCjokRS7DhBNqCi
 t7QhJU6sbDjUHL4ktmU7HqoXt9tH0Q3XS3X6qQNLJGc+BYXKXzH8FdM3v
 8cX8qa1EVSys/PZv59YHfmhOtNzibTzWNxcK5xgiZ5qgrBG+Gxb+iZhzH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="344121910"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="344121910"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 22:00:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="750588437"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="750588437"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 10 Jul 2023 22:00:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 22:00:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 22:00:42 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 10 Jul 2023 22:00:42 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 10 Jul 2023 22:00:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j+qy7a6JVZF4WepfKv2Uc3/FbJwPQlHS1WsCSxf9KOvzLAI33S04Z1sTuW3Fd3O8USrNm+saKkI4YK81dmzfv+1Jl3zaiKWdWsdPpQEdpnjGCl2EAxzH3z4/AS6x4e5h+cyih+mwjvtF3Lgo/eUOwf9I+FWhP4cYoo4frOgn2dz7rccU2Z0FCwuxzw8osc1WiENLWIaC/QOpZQpuwAXAmwC4+0EINxqlHPfEsGt65jz/F9+8CUbrS3AniP7rRpQlRS51pb3MymmIMnA2U6YqY6rI/HhB+Gh8YcE91wehcJi3x4o/FfkSUwXkQzjYYehxAMAqWiboJT3T2G21ZPB5lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cZyklx1+h4fsZfRHv6agfM/iVz4OJP9sF4zYupoFEQI=;
 b=Jq0RAduiZps+OR4PoWIEwJJ8GZbdhWLkSK1gPSmiuZokGLdvzkHE90H1MfkyCN2xFaZVNE9NGeMabH2M2+uWQeZEGDPFO/YGBWkWWq8+Q3kCY/IqOIamLAuQNCSuWF00UEiPcfrQ3Hy+0X+/7OTprRZNYIIFeTOfzWp91cMM5CqAKm0QtMD8vDgfuUVRJtIrI8NZt+KRKumPpInzKXO5WyTxKF0lC26M8I0edDx5uXBRVrxyI6b7s3Y7Xml5c7XBB4ezRKjpMGW5Hx5ZsVvJsYW/EgzRmIlntPZBxgX3kXy2M2jNDyQwn36XgkQWPwuPSU8deeiOmNXJAvxjfNhrzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CO1PR11MB4929.namprd11.prod.outlook.com (2603:10b6:303:6d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.31; Tue, 11 Jul
 2023 05:00:41 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::b1ca:50cb:3a43:b448]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::b1ca:50cb:3a43:b448%6]) with mapi id 15.20.6565.028; Tue, 11 Jul 2023
 05:00:41 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 07/19] drm/i915/dsb: Don't use indexed
 writes when byte enables are not all set
Thread-Index: AQHZmKtMIiFo8J754kGQQC320D1gSa+0N6oA
Date: Tue, 11 Jul 2023 05:00:41 +0000
Message-ID: <PH7PR11MB598123C085A942E266EB29C3F931A@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20230606191504.18099-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CO1PR11MB4929:EE_
x-ms-office365-filtering-correlation-id: e10600aa-6fc9-4404-d850-08db81cbc680
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AP3snGt6AdXrdfWpos7nXQ49iO8N06I7t2rode6HUk/OKHgJDAdzPsS4/3az3QiWhcbl23uJ97w/dWokspe0pdp8NEENmRGBW+aWMEzJkldQPC9iDIorcDwCIF7qxRauP7EWVYbaPaY9YUuLfFhNQ22ghfJuWz7phpd2WKPR+HEpphOlKeBJCH8DQtp73xtCOIauUEyF5l8HtpnVgTE2g0hQz1PzI1elJll1UWhwPTz99+ciURollIPsFoJyJf7fgSrTB7HcGVAV8g87TKMXCDu5x7y2GzyS501Yk0yP2enGBfFma+pBLCyTYILGt/Yyejzw24+7JFF0O5UETb2XnFacTQb/8z2TSMhsdlmx99LkZFXcWVXf+8Gs6i6CKCH8tbDcIQatuK2xzLEMPSYUb3vUhi5SOW22gSZTqbf4e9q+bvxHP6eY+9Qjh48C1cfv/+KS4s8qlabwXRMEhskMSh3VpRXERaGDbWoq68TR9dwC2gg10qvcG1Z73tPotvYlaeys7xmxA3Z1XS4YKxnDYLO94OdvKOkOaljrnFD8CCcdY+EvDqv1XqRvfhLZfrA5f0pwyHd3ERRhje24fOmu/QQ7PHmewcLaytOdr8DYLcHsMAycBSLYFGSO9ID4dvaz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(396003)(376002)(366004)(136003)(451199021)(52536014)(5660300002)(8676002)(76116006)(66946007)(66556008)(66446008)(66476007)(64756008)(2906002)(316002)(71200400001)(8936002)(9686003)(7696005)(53546011)(26005)(6506007)(55236004)(186003)(83380400001)(41300700001)(38100700002)(122000001)(478600001)(110136005)(82960400001)(38070700005)(33656002)(55016003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZFk0N2V3NHUvcStzL2xDUnFqL0U1RXF6Y2x0TlA4Mytuc080ZlpENUJPWnhu?=
 =?utf-8?B?ZnZ0Nyt2OVFFYUNpSHlnUm9PZ1BBSFJQTHV2UnY5dzhOdHJqZ0h2bUFhaFZH?=
 =?utf-8?B?VkVzRW9SWG85aCtjVXlWc1JZaUZZUzNDUDc2ZVMrSnduTWxvSWRBZ3I1SXc0?=
 =?utf-8?B?ZnhsTEpIUjFhSmFQY2ZEaHFlNEhQNy9reUV5Tzh2cW1XWHJaSHFVLzJyWGp0?=
 =?utf-8?B?ZDFaamp0bStuNC81enJTa04zRTVWajlZYWFWNWdhTjFQMmVXSDZYQVNjYzlJ?=
 =?utf-8?B?ckRhaXIrUEQwcDY3UGloL2lQZW1JdE5oL1JPV0pjUFFMRVRLcnk0QUlSbmRp?=
 =?utf-8?B?bFNEcmlMdDRYZHlaRElQZGdzL1lUSnkzc3hJS3RvaGFpVlc3MmlkTVFJRUxO?=
 =?utf-8?B?S3prK1c3QWZXc2xBeWlsbzFNRUZxZVR0Und3QldqWm54QVRkNVEwMEFFZm03?=
 =?utf-8?B?S0MrL3RQL2xyUzRiOVBqeVRRYVlTNUgvaEJZOGhnU1M0UWJ5QmZIaWVXNnor?=
 =?utf-8?B?aTJiM3NYZ2hRRWhwT1VMcnkvZGxRa3ZEU3NMWS9EVjdwL2I5TWdFeGhEOFdy?=
 =?utf-8?B?WFBFZnVWRGZQOTZhUjRqWHBTUkRSUmMxOU9lbTE3V21GSFVuM0NRZFBpQlVy?=
 =?utf-8?B?UW1zYVlQN2pKaFdIZmV2VHpobytKY1kvdW1pOVhweDd4QXpqdFlUSnhMSGpD?=
 =?utf-8?B?a280S2krOWhEM2V2Qjh6L0g5amZWNU90dlh0SExINEtpU0VlU1g0V01FaHB4?=
 =?utf-8?B?VXphRlptUWFFUFlLSVpVWDNqYzF2RGlRbUxCYU5KM3h3bnd6QXJYcWFhb0Uv?=
 =?utf-8?B?OUtIeGdWdlhybXpmVldJMUhvUXhHSDNLWThvK3JzUWt3dkFBWWNRMy80M003?=
 =?utf-8?B?L3kxNGVpS21HcW5Vak40dWJoT1FkZHFYdFlBUWFQaFY0aE5nL1NIZ1N4Wmhw?=
 =?utf-8?B?QmpXdzVWN1JEUmdwYzU0aWgxYkdqVHMzUWN6NzZUTlhYQStnK2wxdjdCbCtu?=
 =?utf-8?B?NEl4UHFBZGtPUWR1SG5Rd1VTMjJnbFArYnRaenFLVWEvbFN5dVFYaitLanFh?=
 =?utf-8?B?dkVsZmhIdlZudTFrc0tFbTlXbUMyWEwxN1BiWlB2YXlWLzMvSmFMSVNoaWwv?=
 =?utf-8?B?em9zZ0lXT3ltdHZUSkkyNUZrbXoxbXArQncwTWN1UVppQitnTTRselQ5VitS?=
 =?utf-8?B?T2pUSkpLWDNTb3RjOUJheHRoVmpUbjRadE16TmxJNC9UTjlZYldHWHJ5NVRP?=
 =?utf-8?B?eThBMlRPcWFKRDVFSXM4cmxMN1FFUEhhWUhsb0hTbGM1Tit3VDh3TTZtVFVN?=
 =?utf-8?B?UUdnSFBFem5OYmM0L295UFZueGhkSXgvMG51NExzSWxBQm5hZWRKekhEdVNP?=
 =?utf-8?B?d2pFSUxtbnB0cDAyRm5mdE1rL2lXeW5ydmkwZW0wd0l4NmtuRUN6SjVHR1JB?=
 =?utf-8?B?ZUN5QWFTSmFXL0srT2xJSUlTU2gzNlVwOFpobFBQMndqRmErZi9UNUJLVncx?=
 =?utf-8?B?WXh5U1pMUlgraGQ0ZUUrMUFJNlJ5SFkyY3IrVmdTUk5RckJISFFrc0V2dVE0?=
 =?utf-8?B?a3IwQS9XanFTc0pCOUgvelRTU3hYUUVWWVdjVDlVOEdwZzgxbWREVTVKYVJN?=
 =?utf-8?B?amFuTHAwOWxKV3NUYWZxVlo0QU9CS2ZqdTFYUGlVUEVrSzlZZGR6NjVSYmZU?=
 =?utf-8?B?V2NscnVxUnZWaVE5ZDZLblBTTm5WY2ZjZTZpSFM1Q1FaM0dIRmU2STRSUW9K?=
 =?utf-8?B?MXRGYVNNN25hWnpVUnpXNEdIYmhzUW9BUVdJL0h1VXhGYjYxZ0tiSnVMVXF5?=
 =?utf-8?B?WjVOTnVOVm1lZ0N6cjB6WXhxdDJLdlhNNGhjTE9hbmlmeThUTDhNN3U0ekdJ?=
 =?utf-8?B?TWNSeHYyUnM2K2pEbSswamZCRUFqVG5LcVQ4RDd0K3RhRUdna1E1NmdneDJj?=
 =?utf-8?B?SnI1bkJtbkFPa1I2SUxvOFRPcktPcUsyc0FhVzVQSmFmRlczaHFYZEMrdnNs?=
 =?utf-8?B?cW02TkhaUHFpNXA1UXlnYmZjOFZldEF6eERsOE81QlRUdnZ1b2ZMcCtqK1ds?=
 =?utf-8?B?OFlJOWpOdlY5aDNwdHFRSXlEMnFCYy9IdTNpWnkrMWFqcjJsQzE3MWI1V245?=
 =?utf-8?Q?VwS2pzsAHwdtsp1aBtPJfHTO1?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e10600aa-6fc9-4404-d850-08db81cbc680
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2023 05:00:41.1484 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o2YOHq5Asavh04JPzzVbWWPhk9Dy4KtkklsjK/gD5uFbwVSCetaOhjLmkQ5qilzndXGlTxWBrCV9mej78i73ww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4929
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 07/19] drm/i915/dsb: Don't use indexed
 writes when byte enables are not all set
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA3LCAyMDIzIDEyOjQ1IEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCB2MiAwNy8xOV0gZHJtL2k5MTUvZHNiOiBEb24ndCB1c2UgaW5kZXhlZCB3cml0ZXMN
Cj4gd2hlbiBieXRlIGVuYWJsZXMgYXJlIG5vdCBhbGwgc2V0DQo+IA0KPiBGcm9tOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gVGhlIGluZGV4
ZWQgd3JpdGUgaW5zdHJ1Y3Rpb24gZG9lc24ndCBzdXBwb3J0IGJ5dGUtZW5hYmxlcywgc28gaWYg
dGhlIG5vbi0NCj4gaW5kZXhlZCB3cml0ZSB1c2VkIHRob3NlIHdlIG11c3Qgbm90IGNvbnZlcnQg
aXQgdG8gYW4gaW5kZXhlZCB3cml0ZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNCkxHVE0uDQpSZXZpZXdlZC1i
eTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgMTIgKysrKysrKysrLS0t
DQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IGluZGV4IGEy
MGFlNTMxM2QyMy4uMjJjNzE2ZWU3NWUyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHNiLmMNCj4gQEAgLTE0OSw3ICsxNDksNyBAQCBzdGF0aWMgYm9vbCBpbnRl
bF9kc2JfcHJldl9pbnNfaXNfd3JpdGUoc3RydWN0DQo+IGludGVsX2RzYiAqZHNiLA0KPiAgCWlm
IChkc2ItPmZyZWVfcG9zID09IDApDQo+ICAJCXJldHVybiBmYWxzZTsNCj4gDQo+IC0JcHJldl9v
cGNvZGUgPSBidWZbZHNiLT5pbnNfc3RhcnRfb2Zmc2V0ICsgMV0gPj4NCj4gRFNCX09QQ09ERV9T
SElGVDsNCj4gKwlwcmV2X29wY29kZSA9IGJ1Zltkc2ItPmluc19zdGFydF9vZmZzZXQgKyAxXSAm
DQo+IH5EU0JfUkVHX1ZBTFVFX01BU0s7DQo+ICAJcHJldl9yZWcgPSBidWZbZHNiLT5pbnNfc3Rh
cnRfb2Zmc2V0ICsgMV0gJiBEU0JfUkVHX1ZBTFVFX01BU0s7DQo+IA0KPiAgCXJldHVybiBwcmV2
X29wY29kZSA9PSBvcGNvZGUgJiYgcHJldl9yZWcgPT0NCj4gaTkxNV9tbWlvX3JlZ19vZmZzZXQo
cmVnKTsgQEAgLTE1NywxMiArMTU3LDE4IEBAIHN0YXRpYyBib29sDQo+IGludGVsX2RzYl9wcmV2
X2luc19pc193cml0ZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+IA0KPiAgc3RhdGljIGJvb2wg
aW50ZWxfZHNiX3ByZXZfaW5zX2lzX21taW9fd3JpdGUoc3RydWN0IGludGVsX2RzYiAqZHNiLA0K
PiBpOTE1X3JlZ190IHJlZykgIHsNCj4gLQlyZXR1cm4gaW50ZWxfZHNiX3ByZXZfaW5zX2lzX3dy
aXRlKGRzYiwNCj4gRFNCX09QQ09ERV9NTUlPX1dSSVRFLCByZWcpOw0KPiArCS8qIG9ubHkgZnVs
bCBieXRlLWVuYWJsZXMgY2FuIGJlIGNvbnZlcnRlZCB0byBpbmRleGVkIHdyaXRlcyAqLw0KPiAr
CXJldHVybiBpbnRlbF9kc2JfcHJldl9pbnNfaXNfd3JpdGUoZHNiLA0KPiArCQkJCQkgICBEU0Jf
T1BDT0RFX01NSU9fV1JJVEUgPDwNCj4gRFNCX09QQ09ERV9TSElGVCB8DQo+ICsJCQkJCSAgIERT
Ql9CWVRFX0VOIDw8DQo+IERTQl9CWVRFX0VOX1NISUZULA0KPiArCQkJCQkgICByZWcpOw0KPiAg
fQ0KPiANCj4gIHN0YXRpYyBib29sIGludGVsX2RzYl9wcmV2X2luc19pc19pbmRleGVkX3dyaXRl
KHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwNCj4gaTkxNV9yZWdfdCByZWcpICB7DQo+IC0JcmV0dXJu
IGludGVsX2RzYl9wcmV2X2luc19pc193cml0ZShkc2IsDQo+IERTQl9PUENPREVfSU5ERVhFRF9X
UklURSwgcmVnKTsNCj4gKwlyZXR1cm4gaW50ZWxfZHNiX3ByZXZfaW5zX2lzX3dyaXRlKGRzYiwN
Cj4gKwkJCQkJICAgRFNCX09QQ09ERV9JTkRFWEVEX1dSSVRFIDw8DQo+IERTQl9PUENPREVfU0hJ
RlQsDQo+ICsJCQkJCSAgIHJlZyk7DQo+ICB9DQo+IA0KPiAgLyoqDQo+IC0tDQo+IDIuMzkuMw0K
DQo=
