Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C31C74E670
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 07:43:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 153C710E2FC;
	Tue, 11 Jul 2023 05:43:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A554510E2FC
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 05:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689054200; x=1720590200;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=XrFYboXklYjv0aXQRXIqddSfhCg0KtUNyKbIUiV2Rqg=;
 b=nQ4Oj/rDUvomCnWOHQts6E0gWK2mNKEC6tiazo1DwrihsGF5pCNtJTag
 PnpFjltL14iGknK3uVShvaAsfVNjtGTWuMWJE3MS0Qut0Mpc9KkNy7CBE
 sz4WI+MV35mD0+rR201d0Tf2xMoKcH47eJI1KdwTCg/PY/63AT5FR2f0Q
 NeV4gfUiJ6jXJlO8gxnmOSPyZj4LXBgJuSRi8Mu/SwW/wyPTquIMOeQaA
 7419+pyK2LN+rbqO/z56UFSirz/tn8id4vsPUWOa9S17jqA5SduRqPgmJ
 KwUBuLtyyZ2V6Fvsdj9mhRXEVEOPiixlsPf3WiWZgQeVZd02xbDYxkKgC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="368027275"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="368027275"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 22:43:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="845146553"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="845146553"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 10 Jul 2023 22:43:19 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 22:43:19 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 22:43:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 10 Jul 2023 22:43:18 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 10 Jul 2023 22:43:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mOK+lXi4VH3QCOxQxVl9SVBjaQDyd7S84FEOsI2dZiQ84fxZds1QLclnhNQ2Fm+wO1F8Ilvjr/wIWP02WELzY9KtgDLptH5H1SaMFwHK8y+KnjjySRB5Q0qf8NxGfIK0joFqzb/Yyqs6VD360hyYm+JNg1aR4K6v3NYi35GXs3vIkBQ0hETo3AB1NOfytmBhEi3U3bHI9P5cW0cKrZFU6i1OQbIeeKMB50itPCaF95fR5JPDhVwZKyoCcPl3kmqEBKfY6zsejsHsYk+gOvxw85gJmjrnu0CuJo4n5/ZWmjJFHSRRCQYfKOQjM3XsM5Ek6GwWzrP5slViDVAGdYgyoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XrFYboXklYjv0aXQRXIqddSfhCg0KtUNyKbIUiV2Rqg=;
 b=SLwhlLzXLnGfHpmVs2vyq1DT2th0pCNJfTTJo/ElezWTzdVKLqxGgriYKoIyPUkUPM6ffGTe7NUmJgt/N0nv9+pZ06JXJktUZU4/Vy8DBeJyNddyNR8tbwXVDof4wbjyxqFFSMtzZFL+Xrm1IPlSnZyHC4BwMf4kc+qDpM57fajPzBb7sLoxP6lLG93xhD1DEVYOcq0XOy3wyIFBNZQ7FZ5N8il4kyKj+Vt63zp6YvLT8rnAuelvE6bj4QbTAFA6h9avXWHRBPxuuJedthYp+qewnuH8h1yypVO4D9NoDUESG01FbtSS1L4mnr/DPSSkihYBwA+/FDFfkcHGkMc9Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH0PR11MB5173.namprd11.prod.outlook.com (2603:10b6:510:39::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.31; Tue, 11 Jul
 2023 05:43:12 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::b1ca:50cb:3a43:b448]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::b1ca:50cb:3a43:b448%6]) with mapi id 15.20.6565.028; Tue, 11 Jul 2023
 05:43:12 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 10/19] drm/i915/dsb: Add support for
 non-posted DSB registers writes
Thread-Index: AQHZmKtVUdWlz4YCp0yX6R+44j++UK+0P/Cg
Date: Tue, 11 Jul 2023 05:43:11 +0000
Message-ID: <PH7PR11MB598121C453A9C54A11C43AA2F931A@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-11-ville.syrjala@linux.intel.com>
In-Reply-To: <20230606191504.18099-11-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH0PR11MB5173:EE_
x-ms-office365-filtering-correlation-id: a8340fc1-5b8e-4246-1487-08db81d1b6ca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RdebsyRZK3jKPfoWfJFQKvlSdAEudKVkjgvMu3DAH5fpu4RIYsLMtFHvTDzj1Kn/FmAqUOb7eOW2FxS9442ktvxs2QcUMzTxSRGUOI7Wyj0ggZIqpXupimCc9Zmfdd2PWlh8bcYN2QOBvuFnTZYsSbY1GiRYQF73RDl24Lvr4gT8VOFJT7E5edhdipCDgqpNNeLMYMr5wlsxNrcJzlcxCtj8d8Ox+lazLprOFBS98mcaL7She/hVc6AMMm7edGqvM2wsXSuWHWbabv++Aw3s5PZzlQZSUJfWi5N3VHO6I7h/jCVmjR8DtU6ZzyxoaLe5KqgNlJDv4gJ1l3B6P7LO7iZW4NA7n93DjZw4oOQfxhA+RI2wyej+vgT4rjfx/euM5perapSmbbLDZeArrH+7vxep8NL2b/h0CbxvkTL3FkG2pw6YHmXsSQ84gudwjSJDt5cKoTNoB4urVfrS/GuRA0Y/Yi+5SZhP4np+T+OaOajPLDckQ8sx7arLMSpfnRb2F2Z7SZa/qscCIDTwC/kU+xqvn72KiasfWoDL8Ra8qmRwCM/RJ94MczoiDuye4UAiOb3PKz94KUbO5RXG9MsZ9T5MAi0qtHxl/m4gKFjL46gL5wN0+c/Uu6+zCV3DExN/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(366004)(39860400002)(376002)(346002)(451199021)(110136005)(7696005)(76116006)(478600001)(71200400001)(53546011)(6506007)(55236004)(26005)(186003)(9686003)(2906002)(66946007)(66476007)(316002)(5660300002)(41300700001)(52536014)(64756008)(66446008)(66556008)(8936002)(8676002)(122000001)(82960400001)(38100700002)(38070700005)(86362001)(33656002)(83380400001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TWo5UkFocXZaZkFzbHVJNTlXQVMwdlVLeDZHd05iTXMxbWx3QjdocW9QSlRC?=
 =?utf-8?B?cDRQUHpIRVd4TEZHam0zRG42UHZSSDgyM1JBMjZpNnNVaGRpRnppVVZ1Vlk2?=
 =?utf-8?B?RTBQR0pnR2taRmNieDlkaXdLbEZ2WWxJV1Z5cnA5UHdiVXNDalRPV1pmLzI3?=
 =?utf-8?B?bjRLV21mdno1OTJCYmNFRDlLZzdaZ3JDa0pES2JReVE2djdPaTFta2dxYTBw?=
 =?utf-8?B?Mk5MbERFTW1kemlkMWxWT2ZoVDRlNlBHVjcxanJibmZLY25TOTBqaWFLR2Jo?=
 =?utf-8?B?d3BWWDRacHZoaUkzVTMydFl0dHA2L3lsK1h0V1grRXBXZHBWaitnM0NocFBL?=
 =?utf-8?B?MUF6ekhPeUlCTmxDeUJndXBLS0xQb1p2YzNQMGI0QmQ5WCt5ZU5EMk0vTWZT?=
 =?utf-8?B?Y1FJVXFpTlorMXluU0FmT1F0ZU1oVFNGN1pNSjdLeUpuSldnZG5qRnc4YzFq?=
 =?utf-8?B?bXpmeXk0YVk1a05MaGx1QU9LVHMyaDJKVDJlSHdEQVJRUXduOGx2RFdjdkxv?=
 =?utf-8?B?RXNtak9rc25MSTBsTm40eklGSEx3MlZTamVxdks3Uld4RTQ4U0VpNERhbTM3?=
 =?utf-8?B?YjlrdXhFY05Gc2lnSC9iNHZJNVBUQmRiWFRwTHlSdTl4TXZqT20yZEg0aHdE?=
 =?utf-8?B?YjZkdHhaZjdnemlVWlRBdHFVM2M5SFU4N0toWjBBUUlOQUxUS2gwcFRJdERP?=
 =?utf-8?B?SU1pUHpuRSt5bjhmVEFEYzVNZGJvejlSTm14QVVmWmo4bzhsM3Q5TWNOdjMr?=
 =?utf-8?B?TWk2OTUwUm5WVEZtYXl0MjlxMS9HT1hBZmc2VllDTjdjZEZFNDZTTE9Da2xI?=
 =?utf-8?B?Q0FjZS93OXo0YU1NbUQ1N0FFOURNdit3VUpuYTF2YzNaKytnRHVBbjRReGZw?=
 =?utf-8?B?em5HZ1dYbVpZSHAzcmhoZUIxcTRUbFByWTJxSndpeURkYjhhSWhTR0hNSTBS?=
 =?utf-8?B?TFBaVzM1MG1HNGk5VXl4TGFFZ2JFS1Z1MG9xTkdRZFlyUGMweXNVb25zUTJF?=
 =?utf-8?B?cnhHdEtlbXVFWmRjaHN1RkFnYTVKTGcwc2gwV3NRY0VrWmtXeWZVQ3lkaGd2?=
 =?utf-8?B?MXJkSithUm9pWGk4V0k5cEtDb3ZKK3RKNVd3L2RFaG5NWWducnJUbGY2eWJ4?=
 =?utf-8?B?REYwbmxqUTVhY0grUCs1QkJBV3NRSEF6Rnc5dkd6KzNVODE5cTRyTlFlWmNR?=
 =?utf-8?B?eitWc05GVDNYaEdXNHJUL1pBYnJkWklYRlF3K1Z1dEc1WHJhTEpwNmZxRHh6?=
 =?utf-8?B?NXRuanUzakUxU05SbHZMb3BRSXRwdXNBTUVNdWdGL1JLc0JBWEcxS3pmMzZ2?=
 =?utf-8?B?aWRKdTczYXZLNnB2S1NEby81K1dkVXYyRlBVeFJkLzV1eHozOTJZcjY5YWpD?=
 =?utf-8?B?cFQ5bU5Ycy9qMXNJcnVVeWlOZkVMRmtCYkg4VDRlZDI2dzhQNEZaYTV3R0dq?=
 =?utf-8?B?TWNacG9KUWlkaGxpZDlOQVJwaEI1ZmRaMHQwaW8zYnJMQlc3K1lGYzNtWTVa?=
 =?utf-8?B?TmUrMHNoS2ZwU1IvNGYwZEVaZzdrVkZnV1dkNi8vUVFJRmRWWkhkTjVpKzZq?=
 =?utf-8?B?c3p5Y1ZXL0c0S3ZhVlRiZVFYcmZxdSs2TTRrSW45TmNFNUtlUkFDdjgrVmRq?=
 =?utf-8?B?NldKRjhqYVdvQU9GM21TRFBRUzM2RlhDQnVMaytoRHd2Vm5YV3RDNFZROWNJ?=
 =?utf-8?B?UEllRm85Y1hHekc1cE4xQ09kSjBmNmpCd3cySHlMQ2RNUnpydW92Q3h6c0Ev?=
 =?utf-8?B?cnhFbkdqMGdabFBaTllVcStrYXgxald5WHVIQUo2TDVPYzdEYlNPYUpTTGFh?=
 =?utf-8?B?RGxEbENHQzZQTk5KL0JwSlVFRkVhZVhFRmE4OG95bFNrWTVuMTJvUmFGanRo?=
 =?utf-8?B?TE9HWjR5dDFrYlJWdC85SVhVZmEvRG1XQjNobzlRMXJDTW5Ja2sxcDQ0Yzdm?=
 =?utf-8?B?aXRrWWFLcEMzR0lTdE1TSTZGNW9vNHI0d2ZIZGJ6S2UxNitXcmtpNHRuSm5V?=
 =?utf-8?B?QmpPY0pWN1JDek1OTkNjcVU5cVlIZmRJSUUxU0lIeExMUTFuRTFJN0xIRnFa?=
 =?utf-8?B?Y0FRV1l3TjcwMDFUS3RmK3NUcXpSWUM1TmJqazdZMWdsdVFkblNPV0p2WktM?=
 =?utf-8?Q?S9t/cvqBS5yY+QP77sh0aW2vo?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8340fc1-5b8e-4246-1487-08db81d1b6ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2023 05:43:11.7550 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9zzgvkmxsuhJX832Cy1tKU28rcn+SMczocK0cUijp/GFHH9ASQQ4uo5BZyQiajElYkCf5oNRYqMuY2hQaAI5iA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5173
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 10/19] drm/i915/dsb: Add support for
 non-posted DSB registers writes
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
IFtQQVRDSCB2MiAxMC8xOV0gZHJtL2k5MTUvZHNiOiBBZGQgc3VwcG9ydCBmb3Igbm9uLQ0KPiBw
b3N0ZWQgRFNCIHJlZ2lzdGVycyB3cml0ZXMNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBXcml0aW5nIHNwZWNpZmljIHRy
YW5zY29kZXIgcmVnaXN0ZXJzIChhbmQgYXMgaXQgdHVybnMgb3V0LCB0aGUgbGVnYWN5IExVVCBh
cw0KPiB3ZWxsKSB2aWEgRFNCIG5lZWRzIGEgbWFnaWMgc2VxdWVuY2UgdG8gZW1pdCBub24tcG9z
dGVkIHJlZ2lzdGVyIHdyaXRlcy4NCj4gQWRkIGEgaGVscGVyIGZvciB0aGlzLg0KPiANCj4gU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCg0KVHJpZWQgdG8gY2hlY2sgaW4gYnNwZWMgd2hlcmUgbm9uLXBvc3RlZCB3cml0ZSBmb3Ig
RFNCIGlzIHJlcXVpcmVkIGFuZCBpdHMgYWR2YW50YWdlIGJ1dCBjb3VsZCBub3QgbG9jYXRlLiBO
b3Qgc3VyZSBpZiBpdCBpcyBjYXB0dXJlZCBpbiBic3BlYy4gV291bGQgaXQgYmUgcG9zc2libGUg
dG8gYWRkIHNvbWUgcmVmZXJlbmNlIGluIGNvbW1pdCBkZXNjcmlwdGlvbi4NCg0KUmVnYXJkcywN
CkFuaW1lc2gNCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHNiLmMgfCAyMCArKysrKysrKysrKysrKysrKysrKw0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RzYi5oIHwgIDMgKysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDIzIGluc2Vy
dGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2Iu
Yw0KPiBpbmRleCA2YmUzNTNmZGM3ZmMuLjczZDYwOTUwN2YyNCAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IEBAIC0yNjEsNiArMjYxLDI2IEBAIHZv
aWQgaW50ZWxfZHNiX25vb3Aoc3RydWN0IGludGVsX2RzYiAqZHNiLCBpbnQNCj4gY291bnQpDQo+
ICAJCQkgICAgICAgRFNCX09QQ09ERV9OT09QIDw8IERTQl9PUENPREVfU0hJRlQpOyAgfQ0KPiAN
Cj4gK3ZvaWQgaW50ZWxfZHNiX25vbnBvc3Rfc3RhcnQoc3RydWN0IGludGVsX2RzYiAqZHNiKSB7
DQo+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSBkc2ItPmNydGM7DQo+ICsJZW51bSBwaXBl
IHBpcGUgPSBjcnRjLT5waXBlOw0KPiArDQo+ICsJaW50ZWxfZHNiX3JlZ193cml0ZV9tYXNrZWQo
ZHNiLCBEU0JfQ1RSTChwaXBlLCBkc2ItPmlkKSwNCj4gKwkJCQkgICBEU0JfTk9OX1BPU1RFRCwg
RFNCX05PTl9QT1NURUQpOw0KPiArCWludGVsX2RzYl9ub29wKGRzYiwgNCk7DQo+ICt9DQo+ICsN
Cj4gK3ZvaWQgaW50ZWxfZHNiX25vbnBvc3RfZW5kKHN0cnVjdCBpbnRlbF9kc2IgKmRzYikgew0K
PiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gZHNiLT5jcnRjOw0KPiArCWVudW0gcGlwZSBw
aXBlID0gY3J0Yy0+cGlwZTsNCj4gKw0KPiArCWludGVsX2RzYl9yZWdfd3JpdGVfbWFza2VkKGRz
YiwgRFNCX0NUUkwocGlwZSwgZHNiLT5pZCksDQo+ICsJCQkJICAgRFNCX05PTl9QT1NURUQsIDAp
Ow0KPiArCWludGVsX2RzYl9ub29wKGRzYiwgNCk7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyB2b2lk
IGludGVsX2RzYl9hbGlnbl90YWlsKHN0cnVjdCBpbnRlbF9kc2IgKmRzYikgIHsNCj4gIAl1MzIg
YWxpZ25lZF90YWlsLCB0YWlsOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kc2IuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmgNCj4gaW5kZXggOTgzYjBkNThhZDQ0Li41NGU5ZTFkYzMxZWUgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0KPiBAQCAtMjIsNiArMjIsOSBA
QCB2b2lkIGludGVsX2RzYl9yZWdfd3JpdGUoc3RydWN0IGludGVsX2RzYiAqZHNiLCAgdm9pZA0K
PiBpbnRlbF9kc2JfcmVnX3dyaXRlX21hc2tlZChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+ICAJ
CQkJaTkxNV9yZWdfdCByZWcsIHUzMiBtYXNrLCB1MzIgdmFsKTsgIHZvaWQNCj4gaW50ZWxfZHNi
X25vb3Aoc3RydWN0IGludGVsX2RzYiAqZHNiLCBpbnQgY291bnQpOw0KPiArdm9pZCBpbnRlbF9k
c2Jfbm9ucG9zdF9zdGFydChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpOyB2b2lkDQo+ICtpbnRlbF9k
c2Jfbm9ucG9zdF9lbmQoc3RydWN0IGludGVsX2RzYiAqZHNiKTsNCj4gKw0KPiAgdm9pZCBpbnRl
bF9kc2JfY29tbWl0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwNCj4gIAkJICAgICAgYm9vbCB3YWl0
X2Zvcl92YmxhbmspOw0KPiAgdm9pZCBpbnRlbF9kc2Jfd2FpdChzdHJ1Y3QgaW50ZWxfZHNiICpk
c2IpOw0KPiAtLQ0KPiAyLjM5LjMNCg0K
