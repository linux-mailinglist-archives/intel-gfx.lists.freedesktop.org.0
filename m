Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A52717DB3
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 13:08:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 031AE10E4B1;
	Wed, 31 May 2023 11:08:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F99110E4B1
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 11:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685531297; x=1717067297;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w0Om1ETqr3bWrK3xM2JtfWoM3ccK9JTWzU/Z74tYe0w=;
 b=g+dUIeEk3oGqxLFsEkDphFVmpLcsj3J1kr2uL04zEAQVR5W5+v3CNurM
 snpLYsPeV8hB05IJzskOS2Flw9sgvhDKFQELwYEc2Y1+WEAU0S8csSA4L
 9isUyXrop3xnHDi2JfrCHdCHBOEf2NJKAfIgFmwpMBuYpCi4yxNgmanaP
 lVU+k8Z/6CiHFKsS9kF8AbO4ftaHTOzLxYuOQ1A6B9SAZNSFUtwRdtOlv
 L9uLSnH3AxXQ5lxCmAs60+Q3O9V5kqfFgMt3v8SgcqE9Hr5ErjsMLM/aX
 fIdqbI8CZk+Ao77HB5WOj7aERTQzHmMBdl1mTE+O3A1pzu1A1M1Da3ss2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="420970149"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="420970149"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 04:08:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="701070802"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="701070802"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 31 May 2023 04:08:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 04:08:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 04:08:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 31 May 2023 04:08:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 31 May 2023 04:08:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P/GSBiA+MJ2MviPKoEJtPGnF8OdXUTR/3G+eQZCQnsSuMV1VTaOzqoQfBRibJIxuRiH6bQyjbhePA2hz9vQe7uAjT9lg4TAJHGzWYfpm9IvTJmlGs2jmojDfz8LIC8QQTTqoGqiYNc0qnmkWfkc49seYN9dMq7rZQWTx6juPflGUk6j+E4b5Pn85PW00VpxExolCU6PspY1/oc3rq/QLixhSvZjD05xydx/BUPiarI1uFn495jL9jG8bDTGn15dS3LNfduviOHoj3psKhdJMKMxDs/XhIGjElacPBYUYgSy/1BilrPS+JNnvdJpXbc2aOlDiTiEzBcv020paDLGJhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w0Om1ETqr3bWrK3xM2JtfWoM3ccK9JTWzU/Z74tYe0w=;
 b=JldlTahfl2gTPnw0FLqGGff+zcjKw4gJ2fsvZJ0DcJ5SzRzXYh/e5+CqFyFWMFJl58080MMDYXejAFMEHgA6L33jZQtGMy5IrCyFmt4n7UndusevaFTI5HhkaNoy47omxlZ5AjdbzCoGyFFE6WttmynMb8VgWWshl+VTuuxowfKMcArwrJqRf8liJdeJGlfEgOU7duu5A6KJubBrsxMlCihKVA/t98VUVh/VeM3roXayncC6uhQ19/NYKIxpZPROsg0bbM67gaJ52UhjkiPmTAy598ii9KnFUW1CAX64nT23VYFSBaXTRh0ijMT5RPdOVBL/e90KRFOwic5TYM5fEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7041.namprd11.prod.outlook.com (2603:10b6:806:298::15)
 by BN9PR11MB5292.namprd11.prod.outlook.com (2603:10b6:408:119::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Wed, 31 May
 2023 11:08:12 +0000
Received: from SN7PR11MB7041.namprd11.prod.outlook.com
 ([fe80::fadb:2488:f86:2632]) by SN7PR11MB7041.namprd11.prod.outlook.com
 ([fe80::fadb:2488:f86:2632%3]) with mapi id 15.20.6433.022; Wed, 31 May 2023
 11:08:12 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/display: Set correct voltage
 level for 480MHz CDCLK
Thread-Index: AQHZkfRFaqkksaYc502KWP1c0Bddra90O1YA
Date: Wed, 31 May 2023 11:08:12 +0000
Message-ID: <SN7PR11MB70412EA6407414E20629DC3EEF489@SN7PR11MB7041.namprd11.prod.outlook.com>
References: <20230529060747.3972259-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20230529060747.3972259-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB7041:EE_|BN9PR11MB5292:EE_
x-ms-office365-filtering-correlation-id: 76f9e15c-0972-4078-c62e-08db61c7534d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DtjOhifVNJvgzcmiiE6qHv4zlhM324yMPKcaQogyUiVXZ2vGh4gJrwCWcUnmK3ej8dSnLnF5b+NsEU3XrLnCad7wHIp/zqH1BbMfdAbNyfLFySskhCHgZV8RD6Mpg/sCDMY/Bsine9bpHBQTkFC+9C2Gq26q1k/jMTj/rPGayl/zjKVFlQJ3SCA3UFTURMGMLIRY3orsXblgnpF2J8WTFW33P9slJOp+VvDOx5TzjTNPg1njMzak0CGBXZ51FJY3FwpOAFZ844KvhSobyrRGrqa9wyEh80Vo5eynBgCaG8wwQese7PShTiRNd7XecdSvOQSrSwyvHmioDX7UwHriAPELtmheZyzuABxfYpm14UN2DEE8fbfW0hdrnIDy7xLavRA85vSDCOtqKJ2YnIr0z+nBgW9CFxFtli1y9Z829aexqFZMZMinqAoJTCmzT0pG32iqsSb8PMl8kHassSYt8Wgw0qjufu1D54itX1znaUSIPtPVERidHxbSjpAUA+OaW9m5IsLM+4sWX+hi94IzXNlcAodhkR7tX/0xYvcUyVJ93onlvl5PdwPK5QD13KKWbE8pC0ogujWPCfFyENxNxXTjZRMKNZEaalu5GKD6PnFnncjKQZlw6q3A2LiY0bJ5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7041.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(376002)(39860400002)(136003)(346002)(451199021)(71200400001)(478600001)(110136005)(8676002)(5660300002)(8936002)(52536014)(2906002)(33656002)(86362001)(38070700005)(64756008)(82960400001)(4326008)(66946007)(66446008)(122000001)(66476007)(76116006)(66556008)(316002)(55016003)(38100700002)(41300700001)(186003)(107886003)(53546011)(9686003)(26005)(6506007)(7696005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MmpLM2JzQVBLdngzVEhKTlhlTHNHbHhKcFJMbGtDTkw5WkdvOUVoNlNqT3Za?=
 =?utf-8?B?TEF4WXlTY0hpallmb284L2ZDeDI1cnlocnBaakZucC9HTnhGSkhFYUoxa1oz?=
 =?utf-8?B?MUFhSitjM0RTU3owSVBNTWwwL3c0Y0Q4cHZ6cGFRTXRQYVgyMVNzL0hnbXY1?=
 =?utf-8?B?U2xlWjMzTHAyRXJWdlFCdUNjNnh4ZzlNYldGR0RRTDZGdVpGOVB0VkEySWIw?=
 =?utf-8?B?ZVdCMENLQ2x6akVzaThVR3IxZWExV1FFd1dMb1ZnRWZXVFhNb1NQY1BaZkIv?=
 =?utf-8?B?ZXlnS3MrZFlKY09CcXc1eDc0d0twNFMzYUloSzdkdjJzcldRRTZiTkxzRTFU?=
 =?utf-8?B?RDFXQTVXaUhxeHBUc0tualdTY0VJbzkzMDhSTlJUQTNwellBZ2czVFcrS21D?=
 =?utf-8?B?bFFYQXlSVTd6YU96MmVlaTdwZnpwWEJFdHpVUDcrMmlUVEhab21pMWFUbTUz?=
 =?utf-8?B?S0hvNVNwSnNsUTIzVzdld0t2ZDhQb3krbVA1NGZ5cFRqcFBRWk1UeS9uNGxi?=
 =?utf-8?B?bmg3ckdPMTNmNjhXdzMzRXBTUGJLelJqeUhiUmYrTW8zQklBaDh6QTYrVVk1?=
 =?utf-8?B?dHFHbitWTkJQM3VydE9RWmNjT0xFZDE5T2FndC9YL1cza2VmSFI0OEVCb2VY?=
 =?utf-8?B?dy9QMElZdzhYQ042aDdkM3lrSVJFOHB5L25XTVNIdmcwdlRoS0R4eGlXcnN5?=
 =?utf-8?B?S2p0cm1zN3pFemtnVmRDMHV2d1ArdmkyNktQSmV2L2szd3FIMDJKSTZKT0Iz?=
 =?utf-8?B?NWp6ZnFiL2k1azBMYlFSZysvTGZTMnNjL2pPbnRUblBjMVg2U2YvbTArODlk?=
 =?utf-8?B?WGtTYXlxM3hOTXJnTXJxNlNBVzhtRCtGL21qV3NobDNGZUhoUUQ0dTJGVGhh?=
 =?utf-8?B?dVBISEJYT01iVVZNVm9naEp1SlJyK21sSkxnMnpMVGtUZENlcGh0V29ISk14?=
 =?utf-8?B?ZVNMdVhKeTZrb0ErT2JkSFNhcUZQTDFmOHRNbVlVREVZVmhSdk5ydDNER0l0?=
 =?utf-8?B?MXl2OTRhaXVJb3MwQ0hzV3NpZGtJWlF1QWFPM1JGUHRJREt5SndES01GNHNV?=
 =?utf-8?B?QjRsR1oxRzR3TS81eW1GNGNXNlUybU9BM0VLd1JzMGVNb0JjRXMxTWRSWG94?=
 =?utf-8?B?cEM4NVBjdDdHV2VYZW1Qd2dONkVOOERhaEl4MXFKTElNbCsxRXpxNGVDdEh0?=
 =?utf-8?B?Y081M2k1M2ZnQ2d0cnRPbVNVVk1TbS83R3NyNG5nNU44UXVTM2lxMEJKMEVX?=
 =?utf-8?B?eHBHVGxueG94RVhMWWFHcCtmWFBDRXNGd3BNcDY4elR0bDV0YmcyTDUvQVU2?=
 =?utf-8?B?RU5PYThCSCszbURVRHFrRlg2bjY2YzUwelJFdFZ5RklmSTQ1T3p5R1EyTGF6?=
 =?utf-8?B?MHUyaHVBTldDNWZCOFFSdk9LREtnU0hOY0krZ05QY05yendOcTdwQnlsRWYy?=
 =?utf-8?B?ZUdoTi9NendVL1lzaWJ1dDJvWmZNTytMd0JhUmdKc1QwMit6MUJlQUtMdUpM?=
 =?utf-8?B?eS9hNnlnN0dDUFc2TzE1TDY3LzJuWFkra1dHV1dJcEY0OU9nRkExeFY1RE1G?=
 =?utf-8?B?eHlBN0JSbkZmQlM3eU1tNE5jMG9MM3BVb2xYUmxobnlYNzI1WmVWc2F3bTJL?=
 =?utf-8?B?VU1GRVN0STFkdlE1cVJ4akxJZjdINmJObm9PZ0tXRWhVc2hxOVFBalRtakFl?=
 =?utf-8?B?RXBFanRDekVBYUFTSXNmRVZoZXdHMFZxQTVQU21lanRaYWVYSDA5VlBUdnVy?=
 =?utf-8?B?OXJpd1JYeHMwejlSdWY1VEIyMm5QNlhjb0g5UFk2eG43Sy9BdWRwWmdpNTlE?=
 =?utf-8?B?WUlxNDFMWStOL1FUcUdYRmNwcUVyQXhPVmkxdm5rZHppMzcwaWRpcjBuNktw?=
 =?utf-8?B?OHlwTlJTL2M2MjhXZ0ZoVjZVd3BENW5DNWhEaDZiMC9XdWdObmR3UlBkbThI?=
 =?utf-8?B?Vk8wdUk5WnBUQnpuekpMdXVaeEg1eHZMTWJ0WFpqbkdSSUYvVVZHcEhNditI?=
 =?utf-8?B?MGZFVmhoNlVFdWViNElrUGhTeXBSVEQvU1Q4ZWJIaS8yN09na3RFaVZhNkc2?=
 =?utf-8?B?R1dTRXFIWkxIN0NpV0gxNGtjUHNIL2gxdVRoRzFPMkUvdk5Kc01DUXJDckFN?=
 =?utf-8?Q?tJrGoOxcSXc2lekBMw6JUfHuH?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7041.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76f9e15c-0972-4078-c62e-08db61c7534d
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2023 11:08:12.6753 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q8NtUzqwcaNjfqYtXg98TsGEgoEYhSi5lCPaHZADM0h4cKGTBwJFmZBu3wdXRATEw/U0Yz5VPuUazQS7m1wG0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5292
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Set correct voltage
 level for 480MHz CDCLK
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIENoYWl0YW55YSBL
dW1hciBCb3JhaA0KPiBTZW50OiBNb25kYXksIE1heSAyOSwgMjAyMyA5OjA4IEFNDQo+IFRvOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBSb3BlciwgTWF0dGhldyBEIDxt
YXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
djJdIGRybS9pOTE1L2Rpc3BsYXk6IFNldCBjb3JyZWN0IHZvbHRhZ2UgbGV2ZWwgZm9yIDQ4ME1I
eiBDRENMSw0KPiANCj4gQWNjb3JkaW5nIHRvIEJzcGVjLCB0aGUgdm9sdGFnZSBsZXZlbCBmb3Ig
NDgwTUh6IGlzIHRvIGJlIHNldCBhcyAxIGluc3RlYWQgb2YgMi4NCj4gDQo+IEJTcGVjOiA0OTIw
OA0KPiANCj4gRml4ZXM6IDA2ZjFiMDZkYzViNyAoImRybS9pOTE1L2Rpc3BsYXk6IEFkZCA0ODAg
TUh6IENEQ0xLIHN0ZXBzIGZvciBSUEwtVSIpDQo+IA0KPiB2MjogcmViYXNlDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBDaGFpdGFueWEgS3VtYXIgQm9yYWggPGNoYWl0YW55YS5rdW1hci5ib3JhaEBp
bnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
ZGNsay5jIHwgMzAgKysrKysrKysrKysrKysrKysrKy0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDI2
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IGluZGV4IDZiZWQ3NWYxNTQxYS4uMWE1MjY4ZTNk
MGEzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nk
Y2xrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5j
DQo+IEBAIC0xNDUzLDYgKzE0NTMsMTggQEAgc3RhdGljIHU4IHRnbF9jYWxjX3ZvbHRhZ2VfbGV2
ZWwoaW50IGNkY2xrKQ0KPiAgCQlyZXR1cm4gMDsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgdTggcnBs
dV9jYWxjX3ZvbHRhZ2VfbGV2ZWwoaW50IGNkY2xrKSB7DQo+ICsJaWYgKGNkY2xrID4gNTU2ODAw
KQ0KPiArCQlyZXR1cm4gMzsNCj4gKwllbHNlIGlmIChjZGNsayA+IDQ4MDAwMCkNCj4gKwkJcmV0
dXJuIDI7DQo+ICsJZWxzZSBpZiAoY2RjbGsgPiAzMTIwMDApDQo+ICsJCXJldHVybiAxOw0KPiAr
CWVsc2UNCj4gKwkJcmV0dXJuIDA7DQo+ICt9DQoNClRoZSBzcGVjIGRlZmluZXMgdGhhdCB3ZSBz
aG91bGQgdXNlIGxldmVsIDEgaW4gY2FzZSBvZiBTS1Ugc3VwcG9ydHMgNDgwTUh6IGNkIGNsb2Nr
IGFuZCBtYXggRERJIHN5bWJvbCBjbG9jayBpcyBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gNTk0TUh6
LiBJIGRpZG4ndCBzcG90IGZyb20gdGhlIHNwZWMgYSBzY2VuYXJpbyB3aGVyZSB3ZSB3b3VsZCBo
YXZlIFNLVSB3aXRoIDQ4MCBNSHogY2QgY2xvY2sgZnJlcXVlbmN5IGFuZCB0aGUgRERJIHN5bWJv
bCBjbG9jayByYXRlIHdvdWxkIGV4Y2VlZCA1OTRNSHouDQoNClRoZXJlZm9yZSwgdGhlIGNoYW5n
ZSBsb29rcyBvayB0byBtZS4NCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9s
YUBpbnRlbC5jb20+DQoNCj4gKw0KPiAgc3RhdGljIHZvaWQgaWNsX3JlYWRvdXRfcmVmY2xrKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gIAkJCSAgICAgICBzdHJ1Y3QgaW50
ZWxfY2RjbGtfY29uZmlnICpjZGNsa19jb25maWcpICB7IEBAIC0zMzk3LDYgKzM0MDksMTMgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jZGNsa19mdW5jcyBtdGxfY2RjbGtfZnVuY3Mg
PSB7DQo+ICAJLmNhbGNfdm9sdGFnZV9sZXZlbCA9IHRnbF9jYWxjX3ZvbHRhZ2VfbGV2ZWwsICB9
Ow0KPiANCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfY2RjbGtfZnVuY3MgcnBsdV9jZGNs
a19mdW5jcyA9IHsNCj4gKwkuZ2V0X2NkY2xrID0gYnh0X2dldF9jZGNsaywNCj4gKwkuc2V0X2Nk
Y2xrID0gYnh0X3NldF9jZGNsaywNCj4gKwkubW9kZXNldF9jYWxjX2NkY2xrID0gYnh0X21vZGVz
ZXRfY2FsY19jZGNsaywNCj4gKwkuY2FsY192b2x0YWdlX2xldmVsID0gcnBsdV9jYWxjX3ZvbHRh
Z2VfbGV2ZWwsIH07DQo+ICsNCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfY2RjbGtfZnVu
Y3MgdGdsX2NkY2xrX2Z1bmNzID0gew0KPiAgCS5nZXRfY2RjbGsgPSBieHRfZ2V0X2NkY2xrLA0K
PiAgCS5zZXRfY2RjbGsgPSBieHRfc2V0X2NkY2xrLA0KPiBAQCAtMzUzOSwxNCArMzU1OCwxNyBA
QCB2b2lkIGludGVsX2luaXRfY2RjbGtfaG9va3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQ0KPiAgCQlkZXZfcHJpdi0+ZGlzcGxheS5mdW5jcy5jZGNsayA9ICZ0Z2xfY2RjbGtf
ZnVuY3M7DQo+ICAJCWRldl9wcml2LT5kaXNwbGF5LmNkY2xrLnRhYmxlID0gZGcyX2NkY2xrX3Rh
YmxlOw0KPiAgCX0gZWxzZSBpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpKSB7DQo+IC0JCWRl
dl9wcml2LT5kaXNwbGF5LmZ1bmNzLmNkY2xrID0gJnRnbF9jZGNsa19mdW5jczsNCj4gIAkJLyog
V2FfMjIwMTEzMjAzMTY6YWRsLXBbYTBdICovDQo+IC0JCWlmIChJU19BRExQX0RJU1BMQVlfU1RF
UChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9CMCkpDQo+ICsJCWlmIChJU19BRExQX0RJU1BMQVlf
U1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9CMCkpIHsNCj4gIAkJCWRldl9wcml2LT5kaXNw
bGF5LmNkY2xrLnRhYmxlID0gYWRscF9hX3N0ZXBfY2RjbGtfdGFibGU7DQo+IC0JCWVsc2UgaWYg
KElTX0FETFBfUlBMVShkZXZfcHJpdikpDQo+ICsJCQlkZXZfcHJpdi0+ZGlzcGxheS5mdW5jcy5j
ZGNsayA9ICZ0Z2xfY2RjbGtfZnVuY3M7DQo+ICsJCX0gZWxzZSBpZiAoSVNfQURMUF9SUExVKGRl
dl9wcml2KSkgew0KPiAgCQkJZGV2X3ByaXYtPmRpc3BsYXkuY2RjbGsudGFibGUgPSBycGx1X2Nk
Y2xrX3RhYmxlOw0KPiAtCQllbHNlDQo+ICsJCQlkZXZfcHJpdi0+ZGlzcGxheS5mdW5jcy5jZGNs
ayA9ICZycGx1X2NkY2xrX2Z1bmNzOw0KPiArCQl9IGVsc2Ugew0KPiAgCQkJZGV2X3ByaXYtPmRp
c3BsYXkuY2RjbGsudGFibGUgPSBhZGxwX2NkY2xrX3RhYmxlOw0KPiArCQkJZGV2X3ByaXYtPmRp
c3BsYXkuZnVuY3MuY2RjbGsgPSAmdGdsX2NkY2xrX2Z1bmNzOw0KPiArCQl9DQo+ICAJfSBlbHNl
IGlmIChJU19ST0NLRVRMQUtFKGRldl9wcml2KSkgew0KPiAgCQlkZXZfcHJpdi0+ZGlzcGxheS5m
dW5jcy5jZGNsayA9ICZ0Z2xfY2RjbGtfZnVuY3M7DQo+ICAJCWRldl9wcml2LT5kaXNwbGF5LmNk
Y2xrLnRhYmxlID0gcmtsX2NkY2xrX3RhYmxlOw0KPiAtLQ0KPiAyLjI1LjENCg0K
