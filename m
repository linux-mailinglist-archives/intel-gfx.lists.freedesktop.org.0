Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE4C4B5A80
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 20:20:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 059A510E2EC;
	Mon, 14 Feb 2022 19:20:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08F3C10E2BB
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 19:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644866406; x=1676402406;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=13Zzd1KbbDidxlJdKPOyvxHI6ZR17LKu7n586mDLAho=;
 b=YXzwjENL08PBPcg92exHoQGNNnmop/hpam/t/qnzMjQlmDA8gOanlOaB
 QU3LacouEHzcij3Fe3FX6ehKX4oPPJPwbeU4lSatHISq0FcaAvFmZrAaP
 oHtytK91LYCm5bbH2pzYpO1FgaKbsyTq67+t2zg29ZgsrqE3W8UDRA1Kb
 6d6TKJhhDUBBJKf5vtAseWUKIBq/kjkU0oOWZQzoozGoTgmX7acXKaVRA
 OlyqGQ9R0Uou4kbyDgomaIQLShJoqkLl45JHOWEMwhIrnFyRn1/9L3sdi
 ++xwkGGcFlV8SiMiUcBxAbTs2+8NjJL0ryifqV/F0wE+PGLZyg8EXBuxh Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="249913806"
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="249913806"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 11:20:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="775382551"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 14 Feb 2022 11:20:05 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 14 Feb 2022 11:20:04 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 14 Feb 2022 11:20:04 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 14 Feb 2022 11:20:04 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 14 Feb 2022 11:20:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Swakceh1mvEPEhPCcq+A/+mLQfRoteRKXHwHvjf5ZxhIe0tsDhMgfNdBeFdeoPnGeywK4v52Vhe0uGvuHYrtQRcwg8QN+A7imhHtmn+vryffuOmK+t3KZ+aQAUBmps3G2RyxCQpPbOT3gMUALUZDeci5IF8F7hw3+ukKu0hNyUwWtSoMPmD3OUbOlRUW+YSXYcypd30CXRFlXo6aSTW2qckSlHZnfUdunCHT/4tObA/GSNDxHvNe7uXx02u0hRjk7XY92EGXgF0Mj9bhEnjbsCqXc/pxj0j7ao9cBbpMpyWpUID4PXP7yqD5+XyahK7wjz1CbHLAXKu+mjjM/d1JXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=13Zzd1KbbDidxlJdKPOyvxHI6ZR17LKu7n586mDLAho=;
 b=A47RIDJ51Zq+MAZgSWeq/wxId/M/sHgjyr/gkmh3xHELFSSrIE+IA8EnaLjzWTSF/FgGAfxR2Ecwxiz9dBM/3YKsgGNA5a6latXzIGFCyQ59iGCeKcMH0XqmlO3EZE/kDSV5MmryxWCl8mG7cWCSiWXpzE9kjqQKRt8NivPO8RT0BTDCQDmy278CDa1uk2X3AqV4GEaMtTRZUczPwxWZdbg/KsEjkHIL9KkDqrLHRy7F0gcloZ5pqfDVBLT3Kp7bUEgamUXIOPQd1O3qxNsQJuNogXhHaqqWFs1FM/VYBAKcHif6fCNzj79SsZ0Xcy5iMvGPpB9huT0fkshQzcMp0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by PH0PR11MB4789.namprd11.prod.outlook.com (2603:10b6:510:38::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.12; Mon, 14 Feb
 2022 19:20:01 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::20ea:e883:512e:a34a]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::20ea:e883:512e:a34a%4]) with mapi id 15.20.4975.017; Mon, 14 Feb 2022
 19:20:01 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 06/10] drm/i915/guc: Update GuC's
 log-buffer-state access for error capture.
Thread-Index: AQHYEqH5/+h2jkBMckGW0JGoCGdjO6yDwjUAgAZf6ICAACwmAIAACt4AgABNh4CAAAUzgIAI3zCA
Date: Mon, 14 Feb 2022 19:20:01 +0000
Message-ID: <f600f42b1b7f1ba0b47133709671da012464eefb.camel@intel.com>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-7-alan.previn.teres.alexis@intel.com>
 <20220204181924.GA18242@jons-linux-dev-box>
 <86faa4f1dd88a52b0ddf13a1e6804d01732b14ea.camel@intel.com>
 <20220208221814.GA24152@jons-linux-dev-box>
 <f3cdc0a3a56eb452216b74bf0a12b112896b47f7.camel@intel.com>
 <20220209033436.GA25278@jons-linux-dev-box>
 <bad2d5ae25604173682960a95d81d2d0debac585.camel@intel.com>
In-Reply-To: <bad2d5ae25604173682960a95d81d2d0debac585.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b65fc1f3-1cb3-4c02-50b0-08d9efeeff8b
x-ms-traffictypediagnostic: PH0PR11MB4789:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <PH0PR11MB478994114C6E94C384B7D04A8A339@PH0PR11MB4789.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:370;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R8fjC70D5bphQ4Oa4XhyRK0icP3a239mn8MimlQGPEkkfg2+cU2OGZKWqaCmmiVcZlKL5plc9K2+zfLuh7P8+dVwuSEdrLRxSXGGKMHlGWj+QCGgzm1lFzQ/yAY6n82eSI3PwmP6/svT0hN3HnatH46BP+rDUI4NNr7KAmWaO/wUXBeA18SafmqOeFRY8MjeAiwRQgUDUprrx1Jqrgco3kzFlyk+s58nBhSVgnOFur5tiILweibOJmhMft+PNMBdGF3JNgJT2CB6at2V5IcdRp4vqR2CtMQ3IK/h7ms97+lW6B/KdemAB6bazfbkQ9BCcIeFVR8hFnJrx6oWTtOrnSYD93lei4K6ChbVoFDk8Fp3KV8XK4EENnIFHjyGqj7eyYdLXt+kQ3FyF8yyZ9fxbosdjrEsFuKh30dGPCYCjBdJ6GsKY63c0ApglNvymz00qeiRG7VXM+pOk5nICN5274sjAe6ODpU4njZmm3SkI4DUK5J8J/3gJJ6GQI8wvoa4wCZ6UDRfWtImpwOqEyhf/GiNNmCg0TtPxxcf24JFZeeqx7SxwdSsOFoJ4oBrFgvAY8h0ZJO0JHq6JtWp+DQKdkM8oyUSgGlltEkRCGAq1Kx7eBgM2Zos6+uPAu6zNYBzzpLX0rC/0RiHXrxhicktCT30lR9zZi0gFps1h/Sx2306dJTvUi36vAZbj/ka5FrQcPGrh4oPP63r5IrXx0ADDg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(86362001)(82960400001)(5660300002)(2906002)(508600001)(38100700002)(38070700005)(122000001)(6486002)(71200400001)(6512007)(6636002)(37006003)(6506007)(8936002)(26005)(316002)(66556008)(64756008)(6862004)(76116006)(66446008)(66476007)(4326008)(8676002)(66946007)(36756003)(186003)(2616005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dm1RYVh1UVBHUzNnM05pVzg0eTFCeFlGTkM3VU5aV0ZtQndhWEtzNmJpZXJl?=
 =?utf-8?B?d0NKbSt4TjNWeVBlRURUWUpmSUJaaVVRdzdlcG9qcXZ0bHVLZDZqS01nMmxs?=
 =?utf-8?B?Tm9XSkJ4Z2V2OWZjZEMyZDBHZGRVR3NzM2JJV2VFcjJ3V3lIVHIrT290ZTJ2?=
 =?utf-8?B?MEsyQmpqMkVVZ1NMN0ZQUXhaLy9TdThRVTE0ajdiWGd5NithZEQ3L1J0MlpI?=
 =?utf-8?B?U3BiVFBaaHgrRWo4aXQrc3RUY2JnMjFVV05xZ0cyTWFoMC9wVVlTKzVYZldw?=
 =?utf-8?B?OU16c3dZMEFlRTlSb1g2TXU5R1kweDV4NmtiOGtzQWg3TVl5Y2tLV085VDRk?=
 =?utf-8?B?cy9GRXBDbEJyN05YMms3N2gzemIzbnViL2FiRHZLSklJdXVkUFFjRXhFcHla?=
 =?utf-8?B?Q3REYS9GVEhBRk5oaVBiT0c3S0RiUU1QbFhYV3NZUHdNQnZiNUorWXpFYjgz?=
 =?utf-8?B?R3IyWW9SQWptcW90LzBhZXBrMGp4UFQxSUo3bmlaYWRGSEo3dC9xbEY2aUxY?=
 =?utf-8?B?UWpaNHZiOWwyMnZTdkx0SlZIYXNyWGhiSWpjRmFHZnk0bjBXbFh3WFo2UStW?=
 =?utf-8?B?d2VrYWZPS01YS29YM0ZyTTYrR0JzQmczejY3TVBNakZ6UHI2RFdjQ1BEZy9v?=
 =?utf-8?B?YTJVRWdnRzZFUjA5Y2NTL1p1ajkrOHBXOEdWNW5aZ25LRTFpcUpZRmd5RHN6?=
 =?utf-8?B?c25ZMEVVMlBjKzVhUkVKMWt3R0NRbEdqSERhbEtQSHNpRWRkL2tHVmxDakR2?=
 =?utf-8?B?V3RYaTZyd1pld0htejFzWHlwUVJMSHBOeDF1MTF4elBXZTdwMVRkWFIvSkwr?=
 =?utf-8?B?dVh2dmdoamc1alp2OGE3NktxeUVPL3g5K005QW5XRGVTWEN6N256cTc1bzhI?=
 =?utf-8?B?Yko4TEMwZ29sdFFkZ3JwVFpVVFVIMFVRRDZMcmxwU0RMQWtMei9nUFFrRnI0?=
 =?utf-8?B?UlQ0bmdkWlg3bmFBSHZHakgyWUNWc3lDMk9LYlFMTzVqdlBaQ3I5NXVYM3lG?=
 =?utf-8?B?a3o0b2hvRHRONjdmU0Vwd2NDNlFkTXJyblR1bmxZdURsVmwyVWwrdTVFeDRG?=
 =?utf-8?B?emp1UGVZR3VubTU0dmkwYVZZNDlYTk45VHh5YTM1WWlsa0phSXlmbnNHUUwr?=
 =?utf-8?B?SWV3KzJPait1eWJoRnBUaTUxdGZtWGVGbE1kaEtHblhUbFM1MnlJdHRxdnd5?=
 =?utf-8?B?RFo0QWkvKytBTjZxd1dPN21yYVg4TXJLNXNFL0czZ0U0b2dVMHhCV0lhSk1p?=
 =?utf-8?B?eUpLNmNyZG5nNUl4UkVkUmRZczJsS0dieFlqR0lBYWQ3K0haeHFtb0VHc2JM?=
 =?utf-8?B?YmhnZ3ZkNjNWNjZnRFAwRjlod1BkUHF6MGtteWpqaU0vdXljU0ZGZ0ZnZ3pX?=
 =?utf-8?B?SzBvc1ovQWFoVXFQaWVJSEU1Sk9wR2JUODRzTkVvY1VqOVRldk5ITk5OeEZp?=
 =?utf-8?B?eUVuejFRRmNOcGNOc2NNYitSWGxGTEM5TVd6aC9wNFMzbzNoT2w4RE8vQ2Fu?=
 =?utf-8?B?VHl5cEVUUXRhOUNWNW5mRWV0KzdReEZqMHQ3Z3F0MzEwVFBNRE1rWHk0UTRa?=
 =?utf-8?B?SHovN29reUxkalYraExZWm5IWGp4SEZWYlJtMGRBMk1ISTQ1K1p5eU1XNDly?=
 =?utf-8?B?eDk1UUY5UjhJY3ZxaGQrU2hqbDhVWkxvVlBnaC9VVFJ4Ti8vcTkrZ1BCdklE?=
 =?utf-8?B?VUc3RnVxS2xCTFoxMnF5ODN0YkVpTDhYRG8wa0RkUHh4QzBPN1k4TFkyWHYr?=
 =?utf-8?B?cU5uMTBuQnJGeHp3VVE4dmxSLzhHcDlOTVFkTUUvdUJBOVd1Qm90YXlRNGw1?=
 =?utf-8?B?ZFR4VEtwZ1RNblhMOG5nSW93Vnh4K3NCZDI1ZC93eG5UQUZQVGUwaEVsQzVl?=
 =?utf-8?B?OUY5RXlCVWphVHR3TXczc1UyYVQwZ0NtYzJoUEY0T0NiTWRrcW5PMGxWWlBx?=
 =?utf-8?B?T01iUU9ORERwU0lnU3ZpZDhkeFlqUTd5SUlwQVZuZGZBNGhrKzZnNW8zcUNw?=
 =?utf-8?B?a3dPSXl2RXJCTmVEZjU0bUxUazRhUGVvQS96MjcxaVI5djBUdFFtZ2V6bmV5?=
 =?utf-8?B?WlNvWFViRjh6VDB3cEV4cTNlNk1NT29xTk1Tb2tKUmZXVEZkRG9KMmsvK050?=
 =?utf-8?B?bnpJTWQ1MUZncGxkcnBiNE5KVEJDNnI0d3N0UUsyeHc1dEtlb2JtcVJZazFI?=
 =?utf-8?B?R21acW1NMUVka2lpVjNncUVmNHMxSzJLTDhGVldKbzNXSzNNS0N0NUN4Mmkr?=
 =?utf-8?B?SnE2QldUVEdkdHJvVnFJZmZrOW5QNDcvMDduRS9EdjN2QldtazRvc1djTHl5?=
 =?utf-8?B?QTBkL2lGb3V2NUZkQU8zWDRMb2dSellhOHdkYUQ2T0lnT0l5Ny9xQT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B7D7109D83E6404DBE1C4EB3B90F25F2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b65fc1f3-1cb3-4c02-50b0-08d9efeeff8b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2022 19:20:01.7429 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 02bpq62/parqrPelESfTnYQ0oYMHp10aSKNeG0ht/Q/wMrXxfJMEHRxTrH+/diphv/e2MIx3TK1gmKmAcJ20h4xnoUmMShK5amjyIlHf9e4lZOfqv+tmXV7DEE1KDYp9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4789
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 06/10] drm/i915/guc: Update GuC's
 log-buffer-state access for error capture.
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TWF0dCwganVzdCBhIGZpbmFsIGNvbmZpcm1hdGlvbiBvbiBiZWxvdw0KDQo+ID4gPiA+ID4gDQo+
ID4gPiA+ID4gT24gRnJpLCAyMDIyLTAyLTA0IGF0IDEwOjE5IC0wODAwLCBNYXR0aGV3IEJyb3N0
IHdyb3RlOg0KPiA+ID4gPiA+ID4gT24gV2VkLCBKYW4gMjYsIDIwMjIgYXQgMDI6NDg6MThBTSAt
MDgwMCwgQWxhbiBQcmV2aW4gd3JvdGU6DQo+ID4gPiA+ID4gPiA+IA0KPiA+IElmIHRoZSBvYmpl
Y3QgbGl2ZXMgYXQgdGhlIEd1QyBsZXZlbCwgb3BlcmF0ZSBvbiBpdCBhdCB0aGUgR3VDIGxldmVs
Lg0KPiA+IA0KPiA+IGUuZy4NCj4gPiBpbnRlbF9ndWNfbG9nX2luaXRfZWFybHkgY2FsbHMgbXV0
ZXggaW5pdCBvbiBndWMtPmxvZ19zdGF0ZSAtIHRoYXQgaXMNCj4gPiB3cm9uZyBhbmQgYnJlYWtz
IHRoZSBsYXllcmluZy4gaW50ZWxfZ3VjX2xvZ19pbml0X2Vhcmx5IHNob3VsZCBvbmx5DQo+ID4g
b3BlcmF0ZSBvbiBndWNfbG9nIG9yIGJlbG93IG9iamVjdHMsIG5vdCBhYm92ZSBpdC4NCj4gPiAN
Cj4gPiBUaGUga2V5IGhlcmUgaXMgY29uc2lzdGVueSwgaWYgdGhlIEd1QyBsZXZlbCBvd25zIHRo
ZSBvYmplY3QgaXQgc2hvdWxkDQo+ID4gYmUgaW5pdGlhbGl6ZWQgdGhlcmUgKyBwYXNzZWQgaW50
byB0aGUgbG93ZXIgbGV2ZWxzIGlmIHBvc3NpYmxlLiBUaGUNCj4gPiBsb3dlciBsZXZlbHMgc2hv
dWxkIGF2b2lkIHJlYWNoaW5nIGJhY2sgdG8gR3VDIGxldmVsIGZvciBvYmplY3RzDQo+ID4gd2hl
bmV2ZXIgcG9zc2libGUuDQo+ID4gDQo+ID4gWW91IGNvdWxkIGhhdmUgMiBpbnRlbF9ndWNfbG9n
X3N0YXRzIG9iamVjdHMgYmVsb3cgdGhlIGd1Y19sb2cgb2JqZWN0DQo+ID4gYW5kIDEgaW50ZWxf
Z3VjX2xvZ19zdGF0cyBvYmplY3QgZm9yIGNhcHR1cmUgYXQgdGhlIEd1QyBsZXZlbC4gVGhhdCdz
DQo+ID4gbGlrZWx5IHRoZSByaWdodCBhcHByb2FjaCBoZXJlLg0KPiANCj4gVGhhbmtzIE1hdHQg
LSBJJ20gaW4gYWdyZWVtZW50Li4uIEkgd2FzIGNvbmNlcm5lZCBhYm91dCB0b28gbXVjaCBvZg0K
PiBjaGFuZ2UgLSBidXQgeW91J3JlIHJpZ2h0LCBJIHNob3VsZCBiZSBmb2N1c2luZyBvbiB0aGUg
ZGVzaWduIGNvbnNpc3RlbmN5Lg0KPiBBYm92ZSBzb3VuZHMgbGlrZSB0aGUgY29ycmVjdCBkZXNp
Z24gKHRoZXNlIHN0YXRzIGFuZCBsb2NrcyBzaG91bGQgYmVsb25nDQo+IHRvIHRoZWlyIHNvbGUg
dXNlcikuDQo+IA0KPiAuLi5hbGFuDQo+IA0KDQpTbyB0aGlzIG1lYW5zOg0KMS4gZ3VjW3VwcGVy
XSBhbGxvY2F0ZXMgdGhlIHNoYXJlZC1sb2dnaW5nLWJ1ZmZlcg0KICAgLSBidXQgd291bGQgYXNr
IHRoZSBsb3dlciBsZXZlbCBjb21wb25lbnRzIGZvciB0aGUgc2l6ZXMgYmVmb3JlDQogICAgIGJ1
ZmZlcmluZy11cCBvciBjYXBwaW5nLWRvd24gdG8gbWF0Y2ggaW50ZXJmYWNlIHNwZWMuDQoyLiBn
dWMtbG9nIGFuZCBndWMtZXJyb3ItY2FwdHVyZSByZXF1ZXN0cyBndWMgZm9yIGEgdm1hcCBhdCB0
aGVpciBpbml0Lg0KMy4gZ3VjLWxvZyBhbmQgZ3VjLWVycm9yLWNhcHR1cmUgb3ducyBpbmRlcGVu
ZGVudCBsb2ctc3RhdHMgYW5kDQogICAoYW5kIHNlcGFyYXRlIGxvY2tzIGlmIG5lZWRlZCkuDQo0
LiB3aGVuIGxvd2VyIGxldmVsIGNvbXBvbmVudHMgYXJlIGRvbmUsIHRoZXkgcmVsaW5xdWlzaCBh
Y2Nlc3MgdG8NCiAgIHRoZWlyIHJlZ2lvbiBieSByZXF1ZXN0aW5nIGd1Y1t1cHBlcl0gdG8gdW5t
YXAgYW5kIGZyZWUNCg0KQSBzdXBlciBjbGVhbiBzZXBhcmF0aW9uIGxpa2UgYWJvdmUgY291bGQg
bWVhbiByaXBwaW5nIGFwYXJ0IGVudW1zDQphbmQgb3RoZXIgI2RlZmluZXMgdG8gc3BsaXQgdGhl
bSBhY3Jvc3MgZ3VjX2xvZyBhbmQgZ3VjX2Vycm9yX2NhcHR1cmUNCmhlYWRlcnMgKHN1Y2ggYXMg
cmVnaW9uIHNpemVzKS4NCg0KSSBiZWxpZXZlIHRoYXQgc2VwYXJhdGlvbiBjb21wbGljYXRlcyB0
aGUgdW5kZXJzdGFuZGluZyBvZiB0aGUgZncgaW50ZXJmYWNlDQpmb3IgbG9nZ2luZyBhcyB3ZSBi
cmVhayB0aGF0IHBpY3R1cmUgaW50byBpbmRlcGVuZGFudCBmaWxlcyAvIGNvbXBvbmVudHMuDQpG
b3Igbm93IEkgd2FudCB0byBrZWVwIGd1Y1t1cHBlcl0gYXdhcmUgb2YgdGhlIGluZGl2aWR1YWwg
c3ViLXJlZ2lvbg0KYWxsb2NhdGlvbiByZXF1aXJlbWVudHMgKG5vIHJpcHBpbmcgYXBhcnQgb2Yg
ZW51bXMgYnV0IG1vdmluZyB0aGVtIGFyb3VuZCkNCmJ1dCBvbmx5IGtlZXAgdGhlIHJlcXVlc3Rp
bmcgb2Ygdm1hcCBhbmQgaW5kZXBlbmRhbnQgbG9nLXJlZ2lvbi1zdGF0cw0Kd2l0aGluIHRoZSBs
b3dlciBsZXZlbD8NCg0KQXJlIHlvdSBva2F5IHdpdGggdGhpcz8NCg0Kc2lkZSBub3RlOiBlcnJv
ci1jYXB0dXJlIG5vIGxvbmdlciBuZWVkIGxvY2tzIGFmdGVyIHRoZSByZWNlbnQgRzJIIHRyaWdn
ZXJlZA0KbGlua2VkLWxpc3QgZXh0cmFjdGlvbiByZWRlc2lnbi4NCg0KDQo=
