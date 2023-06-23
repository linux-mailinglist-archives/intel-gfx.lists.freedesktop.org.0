Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCA573C42B
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Jun 2023 00:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A82A10E6D1;
	Fri, 23 Jun 2023 22:38:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 499F210E6D1
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jun 2023 22:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687559932; x=1719095932;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=qNXK8Fw+lkbwQbhw3+/blP+CQdn00j2OXqKjOtlqhDo=;
 b=PzGWmR5Ckot8PzjEFb4SrRQMTvvosfKIAK1MJjAh70t73bvR2hM3gL/l
 +FxoOC9eY6lFZXbZIVGx+E1dnQW6K4rkqsL3yPj0yVbO+Rjzfd1P6begB
 m5veOgGXR3StfydYK7PFMJt5hEPNVxfA5ALeJ4P32Hev5+FdOQYDB8A2G
 tobla71IUwSnDqtvxFHnXZErLWLiS9WmoVQWmHNn5ePMfjHmX5L/TfHZk
 +v/kLVjRikABKbXLPdlzCKHWSYdo8Ta7bZqVegYLITRBt/UyOIJXww1pw
 YnwwDqSLsKaKJqVSTxKdbk/tMgjAotKGmBuMUNpdqERfNcrqiUvhww4iC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10750"; a="426863535"
X-IronPort-AV: E=Sophos;i="6.01,153,1684825200"; d="scan'208";a="426863535"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2023 15:38:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10750"; a="805353292"
X-IronPort-AV: E=Sophos;i="6.01,153,1684825200"; d="scan'208";a="805353292"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Jun 2023 15:38:47 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 23 Jun 2023 15:38:46 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 23 Jun 2023 15:38:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 23 Jun 2023 15:38:46 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 23 Jun 2023 15:38:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VEShlrRZzj24XyRkPlap304iXddRh6UBvkboDb5Da62XrwMa3Pf3mtVYgMpObUbz/QfSGjRmIsxwj6eVwsQ0pu70FGZIzLWYM8GvjhsSSN9g0K5drVrJJi39QymHyuqJgFNzUgtcfnlnD1zmuIcEAGqk2yfO6GPxQ1+uIXN2/TuzYT0wk+a9nr9gu12ODml98Bc7ThFCX2NlthrvmUcruNk8DbIgzu7r0dus0FM5+1Jz5BLynXnKaqeAbkCc4vy82invhJhXD2OkUGySJXisk1x/VrpHLtcQuRvhUJoU2P327bAIi24kqrpYPWO8XN2ZZ2lZ8ATeq6nodLHcrW7y2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qNXK8Fw+lkbwQbhw3+/blP+CQdn00j2OXqKjOtlqhDo=;
 b=DhAt6mjjUVs3Ri8NvJfg5SJk893LUxsLiVbH24WYyxZXGEgeMPpRH2GdBvsPJeTt1xbhq3q9VIlEf7QZbe+W36rhDCczoXnuxzVMgAdo2dv0mmGnPIPKQLP/GkZ5BsOilv0KtGk3m1HhTWjw3nNLQ97Oc4C3RpIWBD7mTJTj6EQt7hgiGExNR6P1BWx4YOiS9VsITAojFKxrtIaDDwbZxJXXDFerrVAfP1rjsqwouvo+5G4LPImeGeXgul4QVj9frliCB2DnV1GHh7ANwNjl3NQ6gOL7i0n1JfH4K8cxMT6k/LPNgDtxWsLaJ9YIm9VJbj/GM3zj9MU3me2o0hAJig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by MN0PR11MB6011.namprd11.prod.outlook.com (2603:10b6:208:372::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Fri, 23 Jun
 2023 22:38:44 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::5cab:9ad8:a5ad:6e0]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::5cab:9ad8:a5ad:6e0%7]) with mapi id 15.20.6521.026; Fri, 23 Jun 2023
 22:38:44 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915: Swap ggtt_vma during legacy
 cursor update
Thread-Index: AQHZpDaEpLkr/WZzVUi8HjdozmTJ8q+Y/oCA
Date: Fri, 23 Jun 2023 22:38:43 +0000
Message-ID: <8ad44c98e60e7e553a05c4bead15446feaba6088.camel@intel.com>
References: <20230621114827.167713-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20230621114827.167713-1-maarten.lankhorst@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|MN0PR11MB6011:EE_
x-ms-office365-filtering-correlation-id: ee448d11-000d-4564-9167-08db743a99c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Fd4Z2vxKkMfPJprNHFxS/FKS38UTuSO2iqWgnmHjz4G/5+A2y1cjELya77N22JjOLkV5ZvGPOSBH+6qikufGyaRAARkZtIak6uQzHmgxi1FN8UDhUW+cEcKoIr44yiOQ0g4iNmySGP3+AIlbTimeGSc/pkOsnKHFHGAB9KDEM9lnW+iW6XEGKbp5Jem8Oi9ivpz9/l58DYBWu2QAJ4vnOfGz5BMTAIOZfz49Ud66bFt8BK+EcPciInqzFM1jsmJIn1Ssg6skD+XK0uf2CK9Y/7VlSgmQgDZdcYh/t7tfVG/O0dm6tadyVZ153oC7O0gpRT5OoySSyhI2VEkI1BxK5MZgy/34NXPMuY++kdWucV9ArtICWG1l9lKd00hSViTSAv8Urwx7H0cONpfDw8UKzVnDSPNusfSPc5y6BjQrjcsUoZhabrNN7Jr/oK5mw1H5xrPxyL9QUA/Leotil6tJu78P/Yzi03wl0xY5MXXZlOX+Ek3yzmu24PH7gNMrEbCCKFrXxRXQ3r13LpNBegq+u/qvpZYClHZXnldfcdQC7XmI39ZgZGhANG93s2KKQKcZ8kVbloz6rZQ7AetGO1ciXI4kiySdFmDGE+wE3tSeFDE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(366004)(136003)(39860400002)(376002)(451199021)(66556008)(64756008)(66476007)(66446008)(36756003)(2616005)(316002)(82960400001)(66946007)(76116006)(122000001)(91956017)(83380400001)(71200400001)(6506007)(6486002)(5660300002)(86362001)(2906002)(8936002)(6512007)(45080400002)(8676002)(26005)(186003)(41300700001)(110136005)(478600001)(38070700005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SHI1NXp4UFhtQmEwNkhSVFdQNGN6ZDFlbTJONG83TldPODVpbnJSNUpUTzVq?=
 =?utf-8?B?a0E5WmpUYVRRaE8rdUJkaVFFSUVFQ1pHaG5HRVQ0OXlmZnJhTk05VVZEMkF2?=
 =?utf-8?B?SXdhWFlhZlV2cFdvNHp2T3pFblJYYktPcEF0T3RwTnFaenNvVXl5eDJqbVlH?=
 =?utf-8?B?bm44VENCTURMZE1nTkFTYUw2VDd1SWVtUzBFbnZoTFp2S3RGTUVHUFdIME1J?=
 =?utf-8?B?ZzJoSzFjbUxTcWhFb0VydjFVSXM0aURnaDF0UzJ1Tk1zYlBCZllsTUsyM3VO?=
 =?utf-8?B?Rmo1SGFON1ZyMGhvczBRZjB0b2lnS1ZDT2ppM1NOYitVVFhtSVNiK1FaNzFr?=
 =?utf-8?B?KzFxYXNWQWdoOUFHYUhiamlnRW9tREVzWXV0QlFsbUlXbnZFYUJ2NnhRYjJD?=
 =?utf-8?B?aGZlZ3RvNDhKMmhjTzJBbDNNUWJ4WG1kNWdDV2IvYUtlWVdITk82cXE2QlNS?=
 =?utf-8?B?T0FYU2dJUU1VZjV5YW81dXQycllRYjBXS3ZPbTdnSlVaR0k2YjRrMW9zWlVS?=
 =?utf-8?B?TExidTljSnpiT01MWU9BaXlpTFVzNk53dTlIY2NyMXd0YlRQZWFLTTNFM0Zz?=
 =?utf-8?B?MXF6MWZGV2pKUHMxQm9EK3gxQlVUQVY4bDdtbU42Rk5oaGdFMVF3Wi83TDNl?=
 =?utf-8?B?T0dzYXhJczJWSTBteVBYQy9aVFA1dHZqUzRLVWN4dHJmVzZsZEtUdGxmRm1h?=
 =?utf-8?B?ZEIvckNta1FlZVNMVmZFcXRFdTEvWUJBNjZpY3YxdlZwVkpTdmpPd1hkTkcx?=
 =?utf-8?B?aTVmcnppdGJpN2xxRW5FSllJbFlHcmF0dFZKQjVSVm9VSkV1TGtTdVh5RWxr?=
 =?utf-8?B?OEtNcHVzbjVBRm9leng3cUF4cUFVaVdRTnZONitPWUJmWkMrSHliaFFQL2pZ?=
 =?utf-8?B?V3lWVzNpZG9VbDVFbU9weXpxLzFKdEhZSWE2NzFXTngvTVJGVDdESUY5MGRw?=
 =?utf-8?B?MU56YlRxc0Z1REQyaU5xU24yUDRJTnhxa1JjUnZkZjRVVS9oZVplY0x6eDhj?=
 =?utf-8?B?Wk1oN3R5aHVLZDVBOWFBR2t2U2FpcnQ5T3RCZE51ZEZpQ3dDcmM5YWcrQzZI?=
 =?utf-8?B?SWFlUTJLSTZiWDUzVGtheXgxS2pOSzkvdFBGVVA0NWNQeWRTcUt3TXNuaXp6?=
 =?utf-8?B?QzZjb04zdDZTU3AxeVQ3UERLQ2ZPeWtQcHlxRmdGR25lblZpaVBacHJqZDJL?=
 =?utf-8?B?N0ttWUhkd0ZwZlJ3RGRTZDNHY0wySWx1T2wrQnJwYjhiSVVEcThpY0V3VzBm?=
 =?utf-8?B?WU1zYVFPRTlKTjFaOTc4UkJ4MThHcGhOd0dnSDRkZkZKc0VRemtab0R0Vnc1?=
 =?utf-8?B?UW1LTlpBWlVPWlN6NVJDNUNQS3UrOHQ3Q2xDSkFrQ3VFaE5tanZSMHQ2cHpz?=
 =?utf-8?B?cWlMNVFIL01lZHE5VjlhK1pWcEI2S1RpQ0YvbUxJalBRNEVlT2UzMW1ZazZi?=
 =?utf-8?B?N0ROc0NyTnVMeG9PMTRhaTV0M0M0VXA1MEhndS9EK0tnY05KRXo4OExHV1BQ?=
 =?utf-8?B?b1RZSkg3N2F4TXN5NW1NTW1XVlBocWZQaytkaXlKZGI4cWI2RTFNU3hCeDR3?=
 =?utf-8?B?RWxQcUNhdFJ3TGRxNkdHV1RHbndzTThOcGErV0M5WFRpY2RNRVRjSlNNei9K?=
 =?utf-8?B?OERrL1JmUmJHcVRNNG5Bd0lPZldOUFFKaDlMVk03eThBNVBGQUxQVjdieXpG?=
 =?utf-8?B?QlZWak54bUJlRTZGQ0JhNDhvVGJoVWNBcG9FSUlvQnNmY0FRSTViZTBQNXV1?=
 =?utf-8?B?TWNEWWVnRkVqdkdqSVRBTFk5OGR2b1FMck1WeEFVcWJUMnIxTHpxbENmUFBW?=
 =?utf-8?B?cDZ0ZWJoZUZVNWhvYVhWNWFrTklqS2xaQkxVTmh6SEplMk02NDF2Qmpla1px?=
 =?utf-8?B?WEwvbENFR3ZxZ1pVNU50aGdsT2pFWjM4NGtqMmtNSUFCUzF2RXc5RlZ6N3Fh?=
 =?utf-8?B?K083M3VzZmo5di9mRER5aHNlTTFDYTlRMjkybVpjQ0V4VlBYd1pKSFJVZ2tw?=
 =?utf-8?B?YWl1aXhvV1VpRmVWdTBkK1FRYzFPVWN3WVZTSHBjUTdjN0VFUmhBRGxtN0hL?=
 =?utf-8?B?T3o1M2RrMnFwMTJQT1Z4TnB4OGRMOEpJMzhsMEk1cnNDWGM0WWxmaEcrcnNO?=
 =?utf-8?B?KzlKdmpJRVhUbDhUT0NnWjFBdElOTXdkS3Q5QVYwZ1VJdFlqK25PLzM4QTcr?=
 =?utf-8?B?Wmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EB6208114287AC4683A7C72B5378A50C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee448d11-000d-4564-9167-08db743a99c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2023 22:38:43.9599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z0BZHWmhqQjXbgTEdgtqxk9ZmFRmBhuQ/z5injVyS+rha0UGfmNvvPBvRoh3kjnv0PoHeG5YFo+DCW+fAenerg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6011
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Swap ggtt_vma during legacy
 cursor update
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

T24gV2VkLCAyMDIzLTA2LTIxIGF0IDEzOjQ4ICswMjAwLCBNYWFydGVuIExhbmtob3JzdCB3cm90
ZToNCj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0
QGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2N1cnNvci5jIHwgNSArKy0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jdXJzb3IuYw0KPiBpbmRleCA0OTYyMjQ3OTExZDQxLi42ZjM0MDk4ZWEzMTRkIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMNCj4g
QEAgLTY4OCw5ICs2ODgsOCBAQCBpbnRlbF9sZWdhY3lfY3Vyc29yX3VwZGF0ZShzdHJ1Y3QgZHJt
X3BsYW5lICpfcGxhbmUsDQo+ICAJaWYgKHJldCkNCj4gIAkJZ290byBvdXRfZnJlZTsNCj4gIA0K
PiAtCXJldCA9IGludGVsX3BsYW5lX3Bpbl9mYihuZXdfcGxhbmVfc3RhdGUpOw0KPiAtCWlmIChy
ZXQpDQo+IC0JCWdvdG8gb3V0X2ZyZWU7DQo+ICsJLyogbWFnaWMgdHJpY2shICovDQo+ICsJc3dh
cChuZXdfcGxhbmVfc3RhdGUtPmdndHRfdm1hLCBvbGRfcGxhbmVfc3RhdGUtPmdndHRfdm1hKTsN
Cj4gIA0KPiAgCWludGVsX2Zyb250YnVmZmVyX2ZsdXNoKHRvX2ludGVsX2Zyb250YnVmZmVyKG5l
d19wbGFuZV9zdGF0ZS0+aHcuZmIpLA0KPiAgCQkJCU9SSUdJTl9DVVJTT1JfVVBEQVRFKTsNCg0K
R2V0dGluZyBhIG9wcHMgd2l0aCB0aGlzLiBUaGlzIGlzIG1pc3NpbmcgdGhlIHVuYmluZCBibG9j
ayhodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL3hlL2tlcm5lbC8tL2lzc3Vlcy8y
ODIjbm90ZV8xOTQ3MzU1KToNCg0KWyAgMjE5Ljg2Njk5Nl0gW2RybTpkcm1faGVscGVyX3Byb2Jl
X3NpbmdsZV9jb25uZWN0b3JfbW9kZXMgW2RybV9rbXNfaGVscGVyXV0gW0NPTk5FQ1RPUjoyNzY6
RFAtNF0NClsgIDIxOS44NjcwMDVdIHhlIDAwMDA6MDM6MDAuMDogW2RybTppbnRlbF9kcF9kZXRl
Y3QgW3hlXV0gW0NPTk5FQ1RPUjoyNzY6RFAtNF0NClsgIDIxOS44NjcwNTNdIFtkcm06ZHJtX2hl
bHBlcl9wcm9iZV9zaW5nbGVfY29ubmVjdG9yX21vZGVzIFtkcm1fa21zX2hlbHBlcl1dIFtDT05O
RUNUT1I6Mjc2OkRQLTRdIGRpc2Nvbm5lY3RlZA0KWyAgMjE5Ljg2NzA3M10gW2RybTpkcm1faGVs
cGVyX3Byb2JlX3NpbmdsZV9jb25uZWN0b3JfbW9kZXMgW2RybV9rbXNfaGVscGVyXV0gW0NPTk5F
Q1RPUjoyODQ6SERNSS1BLTNdDQpbICAyMTkuODY3MDgyXSB4ZSAwMDAwOjAzOjAwLjA6IFtkcm06
aW50ZWxfaGRtaV9kZXRlY3QgW3hlXV0gW0NPTk5FQ1RPUjoyODQ6SERNSS1BLTNdDQpbICAyMTku
ODY3MTI3XSBbZHJtOmRybV9oZWxwZXJfcHJvYmVfc2luZ2xlX2Nvbm5lY3Rvcl9tb2RlcyBbZHJt
X2ttc19oZWxwZXJdXSBbQ09OTkVDVE9SOjI4NDpIRE1JLUEtM10gZGlzY29ubmVjdGVkDQpbICAy
MjIuNjM1OTM1XSBCVUc6IGtlcm5lbCBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UsIGFkZHJlc3M6
IDAwMDAwMDAwMDAwMDAwMDANClsgIDIyMi42NDI5MzBdICNQRjogc3VwZXJ2aXNvciByZWFkIGFj
Y2VzcyBpbiBrZXJuZWwgbW9kZQ0KWyAgMjIyLjY0ODA4MV0gI1BGOiBlcnJvcl9jb2RlKDB4MDAw
MCkgLSBub3QtcHJlc2VudCBwYWdlDQpbICAyMjIuNjUzMjI5XSBQR0QgMCBQNEQgMA0KWyAgMjIy
LjY1NTc3OF0gT29wczogMDAwMCBbIzFdIFBSRUVNUFQgU01QIE5PUFRJDQpbICAyMjIuNjYwMTQ3
XSBDUFU6IDAgUElEOiAzMDQ5IENvbW06IElucHV0VGhyZWFkIE5vdCB0YWludGVkIDYuMy4wK3pl
aC14ZSsgIzEwMjMNClsgIDIyMi42NjczNzhdIEhhcmR3YXJlIG5hbWU6IEludGVsIENvcnBvcmF0
aW9uIEFsZGVyIExha2UgQ2xpZW50IFBsYXRmb3JtL0FsZGVyTGFrZS1TIEFEUC1TIEREUjQgVURJ
TU0gQ1JCLCBCSU9TIEFETFNGV0kxLlIwMC4zMzg1LkEwMC4yMjA5MTYxNDU3DQowOS8xNi8yMDIy
DQpbICAyMjIuNjgxMTk2XSBSSVA6IDAwMTA6X194ZV91bnBpbl9mYl92bWErMHg0LzB4MTkwIFt4
ZV0NClsgIDIyMi42ODY0MDRdIENvZGU6IDAwIDAwIGU5IDY1IGZmIGZmIGZmIGU4IGVhIDU2IDll
IGUxIDY2IDJlIDBmIDFmIDg0IDAwIDAwIDAwIDAwIDAwIDkwIDkwIDkwIDkwIDkwIDkwIDkwIDkw
IDkwIDkwIDkwIDkwIDkwIDkwIDkwIDkwIDQxIDU0IDU1IDUzDQo8NDg+IDhiIDA3IDQ4IDg5IGZi
IDQ4IDhiIDZiIDA4IDQ4IDhiIDUwIDA4IDQ4IDhiIGJhIGU4IDIyIDAwIDAwIDQ4DQpbICAyMjIu
NzA1MTYzXSBSU1A6IDAwMTg6ZmZmZmM5MDAwMzUwZmI1MCBFRkxBR1M6IDAwMDEwMjA2DQpbICAy
MjIuNzEwMzk4XSBSQVg6IDAwMDAwMDAwMDAwMDAwMDAgUkJYOiBmZmZmODg4MjFmM2E0YzAwIFJD
WDogMDAwMDAwMDAwMDAwMDA0MA0KWyAgMjIyLjcxNzU0NF0gUkRYOiAwMDAwMDAwMDAwMDAwMDAw
IFJTSTogZmZmZmZmZmY4MjUzYTk5YiBSREk6IDAwMDAwMDAwMDAwMDAwMDANClsgIDIyMi43MjQ2
OTFdIFJCUDogZmZmZjg4ODE0MmRkYTgwMCBSMDg6IDAwMDAwMDAwMDAwMDAwMDEgUjA5OiAwMDAw
MDAwMDAwMDAwMDAxDQpbICAyMjIuNzMxODMzXSBSMTA6IDAwMDAwMDAwMDAwMDAwMDcgUjExOiAw
MDAwMDAwMDAwMDAwMDAzIFIxMjogZmZmZjg4ODExYjVmYTAwMA0KWyAgMjIyLjczODk3OV0gUjEz
OiAwMDAwMDAwMDAwMDAwMDAwIFIxNDogMDAwMDAwMDAwMTAwMDAwMCBSMTU6IGZmZmY4ODgyMWYz
YTRjMDANClsgIDIyMi43NDYxMjVdIEZTOiAgMDAwMDdmZDNlNGE0ZjY0MCgwMDAwKSBHUzpmZmZm
ODg4NDllNjAwMDAwKDAwMDApIGtubEdTOjAwMDAwMDAwMDAwMDAwMDANClsgIDIyMi43NTQyMjFd
IENTOiAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6IDAwMDAwMDAwODAwNTAwMzMNClsgIDIy
Mi43NTk5NzldIENSMjogMDAwMDAwMDAwMDAwMDAwMCBDUjM6IDAwMDAwMDAxMWMzMDAwMDYgQ1I0
OiAwMDAwMDAwMDAwNzcwZWYwDQpbICAyMjIuNzY3MTI1XSBQS1JVOiA1NTU1NTU1NA0KWyAgMjIy
Ljc2OTg0N10gQ2FsbCBUcmFjZToNClsgIDIyMi43NzIzMTFdICA8VEFTSz4NClsgIDIyMi43NzQ0
MjZdICBpbnRlbF9wbGFuZV91bnBpbl9mYisweDEwLzB4MzAgW3hlXQ0KWyAgMjIyLjc3OTEwNV0g
IGludGVsX2xlZ2FjeV9jdXJzb3JfdXBkYXRlKzB4MmZjLzB4M2QwIFt4ZV0NClsgIDIyMi43ODQ0
ODFdICBkcm1fbW9kZV9jdXJzb3JfdW5pdmVyc2FsKzB4MTI2LzB4MjQwDQpbICAyMjIuNzg5Mjg2
XSAgZHJtX21vZGVfY3Vyc29yX2NvbW1vbisweGZjLzB4MjMwDQpbICAyMjIuNzkzNzQ2XSAgPyBf
X3BmeF9kcm1fbW9kZV9jdXJzb3JfaW9jdGwrMHgxMC8weDEwDQpbICAyMjIuNzk4NzIzXSAgZHJt
X21vZGVfY3Vyc29yX2lvY3RsKzB4NDYvMHg3MA0KWyAgMjIyLjgwMzAxMF0gIGRybV9pb2N0bF9r
ZXJuZWwrMHhjMC8weDE3MA0KWyAgMjIyLjgwNjk0N10gIGRybV9pb2N0bCsweDIxMi8weDQ3MA0K
WyAgMjIyLjgxMDM2Nl0gID8gX19wZnhfZHJtX21vZGVfY3Vyc29yX2lvY3RsKzB4MTAvMHgxMA0K
WyAgMjIyLjgxNTM0MV0gIF9feDY0X3N5c19pb2N0bCsweDhhLzB4YjANClsgIDIyMi44MTkxMDRd
ICBkb19zeXNjYWxsXzY0KzB4MzgvMHg5MA0KWyAgMjIyLjgyMjcwMF0gIGVudHJ5X1NZU0NBTExf
NjRfYWZ0ZXJfaHdmcmFtZSsweDcyLzB4ZGMNClsgIDIyMi44Mjc3NjldIFJJUDogMDAzMzoweDdm
ZDNmODMxYWFmZg0KWyAgMjIyLjgzMTM2NF0gQ29kZTogMDAgNDggODkgNDQgMjQgMTggMzEgYzAg
NDggOGQgNDQgMjQgNjAgYzcgMDQgMjQgMTAgMDAgMDAgMDAgNDggODkgNDQgMjQgMDggNDggOGQg
NDQgMjQgMjAgNDggODkgNDQgMjQgMTAgYjggMTAgMDAgMDAgMDAgMGYgMDUNCjw0MT4gODkgYzAg
M2QgMDAgZjAgZmYgZmYgNzcgMWYgNDggOGIgNDQgMjQgMTggNjQgNDggMmIgMDQgMjUgMjggMDAN
ClsgIDIyMi44NTAxMjFdIFJTUDogMDAyYjowMDAwN2ZkM2U0YTRkMWUwIEVGTEFHUzogMDAwMDAy
NDYgT1JJR19SQVg6IDAwMDAwMDAwMDAwMDAwMTANClsgIDIyMi44NTc3MDFdIFJBWDogZmZmZmZm
ZmZmZmZmZmZkYSBSQlg6IDAwMDA3ZmQzZTRhNGQyNzAgUkNYOiAwMDAwN2ZkM2Y4MzFhYWZmDQpb
ICAyMjIuODY0ODQ3XSBSRFg6IDAwMDA3ZmQzZTRhNGQyNzAgUlNJOiAwMDAwMDAwMGMwMWM2NGEz
IFJESTogMDAwMDAwMDAwMDAwMDAwZQ0KWyAgMjIyLjg3MTk5MV0gUkJQOiAwMDAwMDAwMGMwMWM2
NGEzIFIwODogMDAwMDAwMDAwMDAwMDcxMCBSMDk6IDAwMDAwMDAwMDAwMDAwMDENClsgIDIyMi44
NzkxMzddIFIxMDogMDAwMDAwMDAwMDAwMDAwNCBSMTE6IDAwMDAwMDAwMDAwMDAyNDYgUjEyOiAw
MDAwNTYzOWM2NmFlZjkwDQpbICAyMjIuODg2MjgzXSBSMTM6IDAwMDAwMDAwMDAwMDAwMGUgUjE0
OiAwMDAwMDAwMDAwMDAwMTUwIFIxNTogMDAwMDAwMDAwMDAwMDE1MA0KWyAgMjIyLjg5MzQzMF0g
IDwvVEFTSz4NClsgIDIyMi44OTU2MzVdIE1vZHVsZXMgbGlua2VkIGluOiBzbmRfaGRhX2NvZGVj
X2hkbWkgeGUgZHJtX3R0bV9oZWxwZXIgZ3B1X3NjaGVkIGRybV9zdWJhbGxvY19oZWxwZXIgaTJj
X2FsZ29fYml0IGRybV9idWRkeSB0dG0gZHJtX2Rpc3BsYXlfaGVscGVyDQpkcm1fa21zX2hlbHBl
ciBzeXNjb3B5YXJlYSBzeXNmaWxscmVjdCBzeXNpbWdibHQgbWVpX2hkY3AgbWVpX3B4cCBwbXRf
dGVsZW1ldHJ5IHBtdF9jbGFzcyBzbmRfaGRhX2NvZGVjX3JlYWx0ZWsgeDg2X3BrZ190ZW1wX3Ro
ZXJtYWwNCnNuZF9oZGFfY29kZWNfZ2VuZXJpYyBsZWR0cmlnX2F1ZGlvIGNvcmV0ZW1wIGNyY3Qx
MGRpZl9wY2xtdWwgY3JjMzJfcGNsbXVsIGdoYXNoX2NsbXVsbmlfaW50ZWwga3ZtX2ludGVsIHNu
ZF9oZGFfaW50ZWwgc25kX2ludGVsX2RzcGNmZyBzbmRfaGRhX2NvZGVjDQpzbmRfaHdkZXAgc25k
X2hkYV9jb3JlIGUxMDAwZSBpMmNfaTgwMSBwdHAgc25kX3BjbSBpMmNfc21idXMgcHBzX2NvcmUg
d21pX2Jtb2YgbWVpX21lIG1laSBpbnRlbF92c2VjIHZpZGVvIHdtaSBwaW5jdHJsX2FsZGVybGFr
ZSBmdXNlDQpbICAyMjIuOTQ0NjU1XSBDUjI6IDAwMDAwMDAwMDAwMDAwMDANClsgIDIyMi45NDc5
ODRdIC0tLVsgZW5kIHRyYWNlIDAwMDAwMDAwMDAwMDAwMDAgXS0tLQ0KWyAgMjIzLjAwOTUwOF0g
UklQOiAwMDEwOl9feGVfdW5waW5fZmJfdm1hKzB4NC8weDE5MCBbeGVdDQpbICAyMjMuMDE0NzEz
XSBDb2RlOiAwMCAwMCBlOSA2NSBmZiBmZiBmZiBlOCBlYSA1NiA5ZSBlMSA2NiAyZSAwZiAxZiA4
NCAwMCAwMCAwMCAwMCAwMCA5MCA5MCA5MCA5MCA5MCA5MCA5MCA5MCA5MCA5MCA5MCA5MCA5MCA5
MCA5MCA5MCA0MSA1NCA1NSA1Mw0KPDQ4PiA4YiAwNyA0OCA4OSBmYiA0OCA4YiA2YiAwOCA0OCA4
YiA1MCAwOCA0OCA4YiBiYSBlOCAyMiAwMCAwMCA0OA0KWyAgMjIzLjAzMzQ3MF0gUlNQOiAwMDE4
OmZmZmZjOTAwMDM1MGZiNTAgRUZMQUdTOiAwMDAxMDIwNg0KWyAgMjIzLjAzODcwNV0gUkFYOiAw
MDAwMDAwMDAwMDAwMDAwIFJCWDogZmZmZjg4ODIxZjNhNGMwMCBSQ1g6IDAwMDAwMDAwMDAwMDAw
NDANClsgIDIyMy4wNDU4NTFdIFJEWDogMDAwMDAwMDAwMDAwMDAwMCBSU0k6IGZmZmZmZmZmODI1
M2E5OWIgUkRJOiAwMDAwMDAwMDAwMDAwMDAwDQpbICAyMjMuMDUyOTk2XSBSQlA6IGZmZmY4ODgx
NDJkZGE4MDAgUjA4OiAwMDAwMDAwMDAwMDAwMDAxIFIwOTogMDAwMDAwMDAwMDAwMDAwMQ0KWyAg
MjIzLjA2MDE0Ml0gUjEwOiAwMDAwMDAwMDAwMDAwMDA3IFIxMTogMDAwMDAwMDAwMDAwMDAwMyBS
MTI6IGZmZmY4ODgxMWI1ZmEwMDANClsgIDIyMy4wNjcyODhdIFIxMzogMDAwMDAwMDAwMDAwMDAw
MCBSMTQ6IDAwMDAwMDAwMDEwMDAwMDAgUjE1OiBmZmZmODg4MjFmM2E0YzAwDQpbICAyMjMuMDc0
NDMzXSBGUzogIDAwMDA3ZmQzZTRhNGY2NDAoMDAwMCkgR1M6ZmZmZjg4ODQ5ZTYwMDAwMCgwMDAw
KSBrbmxHUzowMDAwMDAwMDAwMDAwMDAwDQpbICAyMjMuMDgyNTI5XSBDUzogIDAwMTAgRFM6IDAw
MDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMzDQpbICAyMjMuMDg4Mjg5XSBDUjI6IDAw
MDAwMDAwMDAwMDAwMDAgQ1IzOiAwMDAwMDAwMTFjMzAwMDA2IENSNDogMDAwMDAwMDAwMDc3MGVm
MA0KWyAgMjIzLjA5NTQzN10gUEtSVTogNTU1NTU1NTQNClsgIDIyMy4wOTgxNTldIG5vdGU6IElu
cHV0VGhyZWFkWzMwNDldIGV4aXRlZCB3aXRoIGlycXMgZGlzYWJsZWQNCg0K
