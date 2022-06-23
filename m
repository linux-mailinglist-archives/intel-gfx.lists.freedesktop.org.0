Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B025556F5D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 02:25:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52FBE1135DF;
	Thu, 23 Jun 2022 00:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E62351135DF
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 00:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655943928; x=1687479928;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=MzW+dX0oGOhXIfz8pRqzw1Q3i3FxDSoU6jkEgY1kBmw=;
 b=h1HELgxllhgB0KVC1JuLy3ilwGT3w6seZrMuxWTNc3lqSrAyWtyxwNR5
 n/GZn//ZElI6WQMfMnjJsDHvLtySYPs+6UVvbAHzzWJi3c+R37RlA05m5
 i8tdPelCBWB2W+7ZGxZPPkOfC2v8BNjzjgvhlnfok2Zid5a10XN1Vwk7p
 J2dHumw8HdILD+PlZi2FdoadS6M5HjFnYJGah9pmqUvtM4I9d8pGf8fiB
 CXDe/9m7gVmXUeZm3TzcrU6C9aQiKXEu8FW48PDWPq1mp6fvV0V9KVVaa
 pM9pg2V9MRT2DWYRP/ZkOPWNfNDRJI7ZWg2kl58OYu6HSOeboAgQPgg79 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="279351110"
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="279351110"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 17:25:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="644463682"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga008.fm.intel.com with ESMTP; 22 Jun 2022 17:25:26 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 22 Jun 2022 17:25:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 22 Jun 2022 17:25:26 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 22 Jun 2022 17:25:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g+ZeO4Pr3c3qktUwQMYfxP5FblqhTePTM/qrmE3gDTQvnT98aJ1omTOnSd7COboDCbXkoauWPg3nyIH1g45MaxMPzolRZvmaAwd7eCoRIna4gO45SkQ6BM8zVdL87CPNcKfMzPpuK8zzRKZYQisHbKYkuAtrZAq4CCnKJD7KcL2/145fatemHi9pmuU6Jj1vZOODO2Jwsq+ugZM85KfaQPvSslIeW8aFJUIfIaFIdfKAAFx/zNEGv4xHhZTxjakZ0vYJ7IiGUChfoSgehfWdQ1ZszyqcnMSYMnMLlY5hl67FuU+CTynFuqRIEu2YRSjVS5A1M15poeWrZDwUqi2QiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MzW+dX0oGOhXIfz8pRqzw1Q3i3FxDSoU6jkEgY1kBmw=;
 b=Ed/cEZ3vzzWWsx4gX1jwDBLRP9rYQbeDlFw9Pn5VuU88t3AcHGRRoizn/I7moFyaWIbqn24f+1mIJ3KgQdgebE5PNqWnRvxbONKPMqFgoBklrCr3bX1i1h3aszFv/NMsSTxc07WM7gACZ4xcO7Pf5yRK5T9mBejjXu/w1qcV/x355I5mPU5ZSWY55SSygWxzNGXzBTZKwVUzOX56gsQ7b0gjZwtPUEXexdd7kXKB62qMTz3ulFfJLHCG/7Q32F2mbr6P+m5upigW2EXkArSzf/HwPg59ii4CUH2L4rVvsdGax5GIemVjyJhvZi9WlQwMJWtOmDimksMq7yIsTVM8oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 BN8PR11MB3780.namprd11.prod.outlook.com (2603:10b6:408:90::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5373.15; Thu, 23 Jun 2022 00:25:03 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::61bd:a251:1543:93d7]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::61bd:a251:1543:93d7%6]) with mapi id 15.20.5373.016; Thu, 23 Jun 2022
 00:25:03 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [Intel-gfx v2 1/1] drm/i915/guc: Don't update engine
 busyness stats too frequently
Thread-Index: AQHYgtZWP+nB+1ptmkaHxLwH2XF9/K1X/ssAgAQrFQA=
Date: Thu, 23 Jun 2022 00:25:03 +0000
Message-ID: <51b5f7db9c97319c22f636a2d1b2bc3b6548107e.camel@intel.com>
References: <20220618054345.2086300-1-alan.previn.teres.alexis@intel.com>
 <20220618054345.2086300-2-alan.previn.teres.alexis@intel.com>
 <ae671cd8-df50-ea8b-0a3f-bd8ec1bea049@linux.intel.com>
In-Reply-To: <ae671cd8-df50-ea8b-0a3f-bd8ec1bea049@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f468cb60-b4b3-47d6-120a-08da54aed0d5
x-ms-traffictypediagnostic: BN8PR11MB3780:EE_
x-microsoft-antispam-prvs: <BN8PR11MB3780CCBAC1C7862C306429E98AB59@BN8PR11MB3780.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yojj6Dux5u0E0q6XiPhsA8XOWE4M9AyzLuRpME5WGSDwKtuDyvP29T2AdeA5kSpPTDOWZ6E5vzYphTLqGOPK94uZmvhggMuVrgBFolB2klPlQR9tHi2ApicCndEQgcCFLoJJAz1rcmz+c8q91Di9PGrpE3rdo+m4lifoizjemJ83RJqK4aL+grWU0h4YiPPLysvLsI5Y07OqGO1biWNJxlnlrw8sTSyxROnIzsTzcKRxh7FMW+YLELBldZXqk6fxUbZxY66oSqrZLS5M7ZKZJIPwYdo1hjPpimB5+UzJGb8pe5AWP3rsszbhO1nF7C4b6mXOr/RP0u4yKqhPTnaZj/rBq8mvn6t9rV42wdmNQBNTdLLWBAegGT+er/Xki7bjDcURnsP12hKvWSaxHDbVmu831WSsVLnKFi883ZiJeAY6Rvva4kCLhceHScmbSgbnV6BvAzxECPkEbUheNo1YozExadeuUnZzvdH1A6+nE0oggRJr2H0A+8Unmw8YK3TLsAOI6qTn8vYl/lwYoYXTTvRgpA0MYLVRFtD1b2Hk78Hhrw0apobVb7IsWX/b38fya5d1W9A6pLL4wV3yarEDMB7HWA0WKhCgFrVnCcbYohpkQDtOx9fnYo9KiX8C3Q/2ygey4YVz8wURoBdA9lVtvDzhO+0zRSkxGuV7gJZ1t6DBvVn9kYVl+FiFlgPIWlJeHX8GipIIJq5jjTaHzNHUQPK5Md+VXIkH+BnDcnjJjt9ww81dngfJtmaU2yq48r1FtzNRq/HB3F2o749aJAi52A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(396003)(366004)(136003)(346002)(376002)(38100700002)(186003)(64756008)(2616005)(86362001)(36756003)(66556008)(66446008)(76116006)(66476007)(66946007)(38070700005)(8676002)(110136005)(316002)(91956017)(71200400001)(122000001)(41300700001)(8936002)(478600001)(26005)(6512007)(6486002)(83380400001)(5660300002)(2906002)(15650500001)(82960400001)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QTZ3WHJ0VmlOeWRqb2tXaHlmZGNnc0UrQzFvQTlqOHVIUjhNM2dsYXVwZGdZ?=
 =?utf-8?B?cUxnQk0rYzBJd0ltS0VnL0dhUGFOT3pMT2JJN28xcHNBa0NqR1ZFMXJObjhC?=
 =?utf-8?B?eGpuOFdqY05CelU4Q0xHTHdQbDQ2ZElMQWVTaFVtZzU2QXQ2N01VdXJrRFBZ?=
 =?utf-8?B?bFZoVENjTVlxaVdLRmxaOVJpeXRFS1ZxVGdpbThjdXZxeWZWUExUcnpONzM3?=
 =?utf-8?B?R25obldLL1puenMvNWxnVjMxNlE1Q1Q0aG8wZWd0ZjZibnNXUjk2V3dxTmJX?=
 =?utf-8?B?S1pJN0h0cmp0OVFoYXFyekxJT1hYdmUvUHZoeW9kN25CSkZYaXI1d1l1SU8v?=
 =?utf-8?B?dkpVMWxZOGRCbndzcE1YSnJjTEV1RSt5ckUyN3kvQmI3azdscENHVlRwTWJq?=
 =?utf-8?B?ZlJnUWtxZHJidDRsUk1NcVhCTjV4MTBmWUJRajFjSWh1WHIzYzVrcUNYWnNx?=
 =?utf-8?B?K1hocHI1WVl2c3JSTU9GVjJQNUFhTUhWSjlzVk1BMnR5b1lQR2xtQXZ0cExH?=
 =?utf-8?B?MWNGWXo4aCtBQ25hVEk4ODloTnRLOGRuZTZZd0E5clRSTW8vL2lUM1FPRWpG?=
 =?utf-8?B?VTI1S09GVFBhM0RCUllvNVY3dE5UR2pQVzFxVVArSTJyOVA4WHVzbVMrSTZw?=
 =?utf-8?B?Z3k5UkpnOE03OVh4WTVlcDVRcTcramZwbFBHQ283L0V6SmtMOG1zOElVY0Ra?=
 =?utf-8?B?VVZObkh4VWF2UU13LytCeDBpRGZyTm90SkhBT05QdkpmTHpwOE4zcndnajNr?=
 =?utf-8?B?U25QdnJvWHgzeVBZQlVMZHdaTWJnRTluY2NFcCtKdDVuYlRid0l0SFBNdEo0?=
 =?utf-8?B?WnJpTzBIODUwbUp5MFMyNS80RUZSZnhkWVRkSWRNQjJSUEZXYnhEcUsxZXJX?=
 =?utf-8?B?TU5YSkk1NVBBVmk5clcxR011ZlRIa3RWTU1Ta1JhT0VDZ2dYa2k1V0JjQXhF?=
 =?utf-8?B?L0ltemxqdnU0SnpYWjVmVnJ3K2p1KytEUlgrL3BjUUFCNlNndFU0Y3dSZFNw?=
 =?utf-8?B?VGxoSGpBYmdHYlB5Q2NCKzVMemxUaENaVmhPUXlUWEMxNUZLZTZJUXRLSzlS?=
 =?utf-8?B?RW1XM2NpaHY2azdRWlFhYTJJa0drQXVFQmdMQm1hOVBROEJvTkN0YklDaEdp?=
 =?utf-8?B?d01GRkFxbXUwMzc4L1ZjbGpIN3NvbnNtcHNzTStqRUs1RXpWbmthZHFkRStS?=
 =?utf-8?B?K2Z0d0ZNQVk3RlgvdGFCODE2L0tpY0VJdjlEc3YyeEhoMyswQzcyeHk4Zjhv?=
 =?utf-8?B?ZGlCM3Z4K0lTWmIzNlU4SFZCWUhVRW9KYytMb2IremYyZVVsdFBzRUlmNGZM?=
 =?utf-8?B?UVl6VHgvb1JCeU90YUpTMEJjeVVUZ3B6UVpiVWxVazlFWWRNMDlBR05wNDdT?=
 =?utf-8?B?Z0oxL1ZOUUJMY2RLYkptM24xV0c3OW1GSWdMdW9URUYySkFNNFRKYzVXVXkr?=
 =?utf-8?B?UTRpeDlrWnFpY1pYcnRoTDUwU2ZVZEN4aU0vV3JBN2NCWDVYTzRzS0puTHhT?=
 =?utf-8?B?TzFaZmMyQk1YcE1XcGlxOEplRmFyZE1ZREdWQi9qT2I0b09GVWt1cmkyV2Jh?=
 =?utf-8?B?V1VOK1QrNzhoUk5wa29rWWdGT2l3NFdxOWY5S2V0TWpIb2hRbzVtSTQ1TlRH?=
 =?utf-8?B?S1Z2dEJMVGh3YU1pUmI5c292ejBjQlBzUERneHZEZ0JuYTY5RERwTDJQS2Vw?=
 =?utf-8?B?YmwvMDQ3c2krMnJaT1RGekVQaXV3c1pLdmZsQ3k3aXZrU01pdDFzbjNLblFP?=
 =?utf-8?B?TWpoQXZaMFp3ZFdhVTdlL0VYdnYwRStXTUpSUlhLQnhCazcrdnppbDhNcEIz?=
 =?utf-8?B?TkszaU45eGVXSlFwYTA3Y0hoYnFKYWt3bTh0KzRpQ0kvSjdRaG45VHJyNjhS?=
 =?utf-8?B?T1FaTm1VQ2x3b2NSRm5uTUhEUDdRS1RKTkdpLzJoRFQ5VWNwQ2RJWTErTXFw?=
 =?utf-8?B?bWZ1ZXdZemUxUHozM1JQUjJqa3RWdHZlcFhzS0VSbmt6TGdhNWNvbGZFRzk3?=
 =?utf-8?B?WGo3T091Tkh5Y0RhMGc1djMyT0RxRGlTV21DVXBDWTMrRnducHJ3Q0JhaEZY?=
 =?utf-8?B?ZGVkTFVmaTlNdm5UV21MOWFjdkNkemNnWHF1VzFMZGhWanZuYUJvVk5McXBX?=
 =?utf-8?B?eDNBb3REZXQzamx3YVhQM2ZmYjEzK0pqU0EvMTBqK0U5MDduYlNUamFlMnFU?=
 =?utf-8?B?OW5MN3dEcCtnUHdHWnloKytDL1dVajdJdVIyc3pvTGgrOGF3T01iT1JDZHQx?=
 =?utf-8?B?YUU2elZ5dmV5SzYxMTJFM1Vic2lvK3hPSlMyMVMxS1V6eUIzdVRZM2JyY0R2?=
 =?utf-8?B?Y1N0V1lIZ21tN0YyTHRVdVlYS0o5dXlKTWJtZXFXenhoMkF2SmlQaVV3SU5P?=
 =?utf-8?Q?lyYAO6fprIOdAClbySSzBC0Pl88I12CMkx8nsEsNQ360W?=
x-ms-exchange-antispam-messagedata-1: UNNx/rJoovFGTQ==
Content-Type: text/plain; charset="utf-8"
Content-ID: <7EFAE27937D2464A92C6107FC603B0F9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f468cb60-b4b3-47d6-120a-08da54aed0d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2022 00:25:03.0544 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yuAbVPwxLj34Y2+8F46EunbwZk4A6qmssBRsN+4BE0D2Y3srK7BeCgR+qw+hNWahCFLAJeKod8/CvIRtEs8Mj/45gaINaN5mvvHmQTJI/sLKXVcdz3jN3YOsvHrU1JKB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3780
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-gfx v2 1/1] drm/i915/guc: Don't update
 engine busyness stats too frequently
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

DQoNCj4gPiArCQkvKioNCj4gPiArCQkgKiBAbGFzdF9qaWZmaWVzOiBqaWZmaWVzIGF0IGxhc3Qg
YWN0dWFsIHN0YXRzIGNvbGxlY3Rpb24gdGltZQ0KPiA+ICsJCSAqIFdlIHVzZSB0aGlzIHRpbWVz
dGFtcCB0byBlbnN1cmUgd2UgZG9uJ3Qgb3ZlcnNhbXBsZSB0aGUNCj4gPiArCQkgKiBzdGF0cyBi
ZWNhdXNlIHJ1bnRpbWUgcG93ZXIgbWFuYWdlbWVudCBldmVudHMgY2FuIHRyaWdnZXINCj4gPiAr
CQkgKiBzdGF0cyBjb2xsZWN0aW9uIGF0IG11Y2ggaGlnaGVyIHJhdGVzIHRoYW4gcmVxdWlyZWQu
DQo+ID4gKwkJICovDQo+ID4gKwkJdTY0IGxhc3Rfc3RhdF9qaWZmczsNCj4gDQo+IFdoeSB0aGUg
bmV3ICJqaWZmcyIgbmFtaW5nIGFuZCBub3QgdGhlIHVzdWFsIGppZmZpZXM/DQo+IA0KPiBPdGhl
cndpc2UgYSBnb29kIGNvbW1lbnQgLSBqdXN0IGFsaWduIHRoZSBtZW1iZXIgbmFtZSB3aXRoIHRo
ZSBrZXJuZWxkb2MgDQo+IG5hbWUuDQo+IA0KbXkgbWlzdGFrZSAtIHdpbGwgYWxpZ24gdGhlIG5h
bWVzLg0KDQo+ID4gICAJdW5zaWduZWQgbG9uZyBmbGFnczsNCj4gPiAgIAlrdGltZV90IHVudXNl
ZDsNCj4gPiAgIA0KPiA+ICsJZ3VjLT50aW1lc3RhbXAubGFzdF9zdGF0X2ppZmZzID0gZ2V0X2pp
ZmZpZXNfNjQoKTsNCj4gDQo+IFdoeSB0aGUgNjQgYml0IGZsYXZvdXI/IEl0J3MgYSBmaXJzdCBp
biBpOTE1IGJ1dCBpdCBkb2Vzbid0IGZlZWwgc28gc3BlY2lhbC4NCj4gDQpzdXJlIC0gd2lsbCB1
c2UgdGhlIHJlZ3VsYXIgamlmZmllcw0KDQo+ID4gKw0KPiA+ICAgCXNwaW5fbG9ja19pcnFzYXZl
KCZndWMtPnRpbWVzdGFtcC5sb2NrLCBmbGFncyk7DQo+ID4gICANCj4gPiAgIAlndWNfdXBkYXRl
X3BtX3RpbWVzdGFtcChndWMsICZ1bnVzZWQpOw0KPiA+IEBAIC0xMzg2LDYgKzEzODgsMTYgQEAg
dm9pZCBpbnRlbF9ndWNfYnVzeW5lc3NfcGFyayhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQ0KPiA+ICAg
CQlyZXR1cm47DQo+ID4gICANCj4gPiAgIAljYW5jZWxfZGVsYXllZF93b3JrKCZndWMtPnRpbWVz
dGFtcC53b3JrKTsNCj4gPiArDQo+ID4gKwkvKg0KPiA+ICsJICogQmVmb3JlIHBhcmtpbmcsIHdl
IHNob3VsZCBzYW1wbGUgZW5naW5lIGJ1c3luZXNzIHN0YXRzIGlmIHdlIG5lZWQgdG8uDQo+ID4g
KwkgKiBXZSBjYW4gc2tpcCBpdCBpZiB3ZSBhcmUgbGVzcyB0aGFuIGhhbGYgYSBwaW5nIGZyb20g
dGhlIGxhc3QgdGltZSB3ZQ0KPiA+ICsJICogc2FtcGxlZCB0aGUgYnVzaW5lc3Mgc3RhdHMuDQo+
IA0KPiBidXN5bmVzcw0KeXVwLg0KPiANCj4gPiArCSAqLw0KPiA+ICsJaWYgKGd1Yy0+dGltZXN0
YW1wLmxhc3Rfc3RhdF9qaWZmcyAmJiAoZ2V0X2ppZmZpZXNfNjQoKSAtIGd1Yy0+dGltZXN0YW1w
Lmxhc3Rfc3RhdF9qaWZmcyAgPA0KPiA+ICsJICAgKGd1Yy0+dGltZXN0YW1wLnBpbmdfZGVsYXkg
Pj4gMSkpKQ0KPiA+ICsJCXJldHVybjsNCj4gDQo+IDEpDQo+IFJlY29tbWVuZCBhIGRpdmlzaW9u
IGluc3RlYWQgb2YgYSBzaGlmdC4NCm9rDQo+IA0KPiAyKQ0KPiBJcyB0aGVyZSBhIHRpbWVfYWZ0
ZXIoKSBtYWNybyBmb3IgdGhpcz8NCj4gDQp5ZXMgdGhlcmUgaXMgLSB3aWxsIGRvLg0KDQo+IDMp
DQo+IFNob3VsZCB0aGUgbG9naWMgYmUgY29udGFpbmVkL2NvbnNvbGlkYXRlZCBpbiBfX3VwZGF0
ZV9ndWNfYnVzeW5lc3Nfc3RhdHM/DQpBcyBVbWVzaCBtZW50aW9uZWQsIF9fdXBkYXRlX2d1Y19i
dXN5bmVzc19zdGF0cyBpcyBjYWxsZWQgZnJvbSB0aGUgbm9uIF9fZ3RfcGFyayBjYWxsZXJzIGFu
ZCBpbiB0aG9zZSBjYXNlcyB3ZSBkb24ndA0Kd2FudCBpdCB0byBza2lwLiBJIHdhbnRlZCBhdm9p
ZCBhZGRpbmcgYWRkaXRpb25hbCB1bm5lY2Vzc2FyeSBwYXJhbXMgdG8gc2lnbmFsIGlmIHRoZSBj
YWxsZXIgd291bGQgYmUgb2theSB3aXRoIHNraXBwaW5nDQotIHNvIHJhdGhlciBqdXN0IG1ha2Ug
dGhhdCBkZWNpc2lvbiBhdCB0aGUgY2FsbGVyJ3MgbGV2ZWwuIEhvd2V2ZXIsIGZvciB0aGUgdXBk
YXRpbmcgb2YgdGhlIGxhdGVzdCBsYXN0X3N0YXRfamlmZmllcywgaQ0Kd2FudGVkIHRvIGVuc3Vy
ZSB0aGF0IGl0IGdvdCB1cGRhdGVkIGZvciBhbGwgY2FsbGVycyBzbyB3ZSBlbnN1cmUgdGhlIGFi
c29sdXRlIG1pbmltYWwgcmVxdWlyZWQgYnVzeW5lc3MgdXBkYXRlcyBhcmUNCm1hZGUgd2hlbiBn
dF9wYXJrIGlzIGNhbGxlZCB3aGlsZSBvdGhlciBjYWxsZXJzIGFsc28gZ290IGNhbGxlZCBpbiBi
ZXR3ZWVuLg0KDQo+IA0KPiBUaGVyZSBpcyBjYW5jZWxfZGVsYXllZF93b3JrIGluIHRoZXJlIC0g
aXMgaXQgb2theSBmb3IgdGhhdCB0byBiZSANCj4gYnlwYXNzZWQgZnJvbSBoZXJlPw0KPiANCkkg
YmVsaWV2ZSBVbWVzaCBhZGRyZXNzZWQgdGhpcy4NCg0KPiBSZWdhcmRzLA0KPiANCj4gVHZydGtv
DQo+IA0KPiA+ICsNCj4gPiAgIAlfX3VwZGF0ZV9ndWNfYnVzeW5lc3Nfc3RhdHMoZ3VjKTsNCj4g
PiAgIH0NCj4gPiAgIA0KDQo=
