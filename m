Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9866062FCF6
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 19:48:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD14B10E1F6;
	Fri, 18 Nov 2022 18:46:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5D9610E1F6
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 18:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668797164; x=1700333164;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=eP0CRZ5rGHGqdF/c9QnquQbtXNlHfKEQ8f7sdTLlU9Y=;
 b=ZWRqmvacj3JlyIUhq4DuTq9sTxjc4N07ozrYLgOli2fY4NQ2Y3FtybU/
 lD0KQgJmt/wFrtCWx4QA1538peu4fg5GmWoWqzSNBuCQ3pmudkW/1wjeC
 WAf/rN6dtXqAqE0jp5qq50BgjZfNCFtV8D+1D4WW5qHUGgn9v5oR/Nuqm
 gBimc9zQvnxKtmlUKo4QD6u7RMAVqGqYCVVGTlfzt2sLHUBIJqx3Ca43q
 uSDgKICYAaKK21vN5Jd/E6d7M0XbpNFnaiYXfuVc+pcM+K3y2uiDlPHmL
 X854QHAqeZNtxsnjlBA2nbt4Bp6ZpVLuCrY4KJy0GwOp9ch/keD9uXchj w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="311909330"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="311909330"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 10:46:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="709127497"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="709127497"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 18 Nov 2022 10:46:04 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 10:46:03 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 18 Nov 2022 10:46:03 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 18 Nov 2022 10:46:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QhQZdWc7d6g7gIP4+F64v8R8vLqtiS5Ce8QS+xpaRcOp2FvzZer+OylL543qLmK+FLkaui9ud+bSWG6grRnj1bAzUSbdSazrqw6TXY6xNve+0C6hqSDhLS1XalY4yKYsTfAhiVzc3b///WPmyD0CyT9bcCkX3Ah5gdagBoXIsE1He00EmP/8j7qTjIyaFkJd+AjRSY63gyDOTSnch/eTmKon2PZiuC4utXxsfW4VVOof5nwrlMulXep5nAAvpsS1LU4On2ikNkHq4UqOPtfdJgLRDms47+Evvya0VxrZckOZ1/CBW29kCDOFo5CrPICUiQtYfUJc+ygjOCYXv+ax8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eP0CRZ5rGHGqdF/c9QnquQbtXNlHfKEQ8f7sdTLlU9Y=;
 b=BqGG8Cxa3Y8pbUODoTfOMmKRiR7Kol645z3IxOtmjY6msgJCYVFYKMxnoxCLpaomRhddfpR6M/637VQIIEKoGz7w6dNpD7GEUKsfyekGvENTgLTafc5IuOdhtwoRY4V1eab5fn0r1THYNy4Dm71gptArGf0E2bCZ5nXnN8ddgcd7s0+6ZkrTp9a3eGQaX3E6N+ZAOhjvE8pjeYPfJA3Mb1pHqCGCni3WK7i80Qni3IAK/N/4Z4bAVqOZycWBYZ2+OAKUA3lDvCKcE4CxGvFAyTPxv5JOC2CjMOuzgCVZVbShpEIDyeLfYZGZOuEsoym/fZcMarfmL4dOs4FIQxNPCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA1PR11MB6443.namprd11.prod.outlook.com (2603:10b6:208:3a8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.9; Fri, 18 Nov
 2022 18:45:56 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488%4]) with mapi id 15.20.5791.022; Fri, 18 Nov 2022
 18:45:56 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 20/20] drm/i915: Do state check for color
 management changes
Thread-Index: AQHY+D89tOEIZGVFNk2+Hb8z91Huiq5FCrbQ
Date: Fri, 18 Nov 2022 18:45:56 +0000
Message-ID: <DM4PR11MB6360DBB912B6ED0D6355D25AF4099@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
 <20221114153732.11773-21-ville.syrjala@linux.intel.com>
In-Reply-To: <20221114153732.11773-21-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA1PR11MB6443:EE_
x-ms-office365-filtering-correlation-id: 4414d950-0c39-40d6-c91f-08dac995210d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N5zGUIuCP9DUAIW+/u/trQ6KhW+mF+MCXCqFQ++n9brn+gid+J98NDko3QoHVUePwLe0nOFWe/P5nKWo7LVkjK3TyH0QEsy975UDUIZ7oZz1GcV7V1/uUXQ6TSYhrK6fn1FfH1OqRz7ucMmNT+jPh3E6JiDUaB7yHmwSB4Oe9TFmu+qwNFR6R39SwZd/Hx3FkFNvTIaJ9fbjMrf54EPHP759r+OuoVdhxV7nHEvRJi8ifxGL55y19bAVhYV1CT+Rai/Cq3ptPz8OwszUj3lVQJYebNmeAlW332q466ZceDvPL7QjbA0Bt9uciP7tyUoFHKra1mI5OjjbwjA5ejPN8YeyI/lX/o38VA/w8ihhh0WmQPHnVu4GlJt2Mg7UCpWCjbI4CeFIOSN0r8YHQkPVkHq3WY0CSHOZRbhEigpldWTGP0XGtWNe105Ce7mHc2zmkG/tdkHWhxHKdyWHlVUukCnAGwMj1JOtj2hl+4G9oNRUwccZe7oLEwXTipNxh093fozKxVmydhDxNfM5c13mp7shJoJ3anIYgNrDRxwCJaVho3oQRUmQ1v32xRsBOxwpa6540l7EDRea0eGpHhZD2uTHoDIaMBtHHLcAnu0Ko1lxC+DrZ/mXsjf/79eZc85qApE4NEKdHvQ0rHMP2q7r0qg4WzoJYY8pI2AKj+5VHcFbSmJadBqHTmWxkgx1448i8IjpRyg/rVCCyeA79Q0rgA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(346002)(136003)(39860400002)(396003)(451199015)(110136005)(316002)(38070700005)(66574015)(186003)(122000001)(52536014)(33656002)(5660300002)(55016003)(8936002)(2906002)(83380400001)(66476007)(66946007)(66446008)(66556008)(64756008)(76116006)(8676002)(38100700002)(82960400001)(41300700001)(478600001)(6506007)(9686003)(7696005)(26005)(53546011)(71200400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NzA4RXRSZHpLZUUvUTQwNDdvVWZZRkcxSEF1Tk9mbG9hK2RpM1pBOXVVTGF4?=
 =?utf-8?B?bGcrZnRsV0daMGN6MnMxQWtIZkNNWEI0QysySmlrbXZkU2c4a2ZuUzJqZFRF?=
 =?utf-8?B?L0ZhaHRkMitvdTNjTVpKZ0hjREZ2bWZhSzdUODhjUzVvc2xXR3VydkZoWnV2?=
 =?utf-8?B?d1JlY244cUJtZjBySFc5U1lrVjFmV0dpaG9iUnBxd3JMbVk0V0h2Y1FiNWFL?=
 =?utf-8?B?MnMyY251VENWcENIc0U2OHoxdWR6ejZGL0F1YTBjRVRvcnNBU3BVY0EzK00y?=
 =?utf-8?B?N05FbXVnbnRFek1uYThqVElVMFVLTXJmNlN0WklUalhhOHFaNXZHN3dQY0px?=
 =?utf-8?B?MjdXWnkyOHlzN09SSGxVM252ZCtic0o5Qm9JZ1A2eU5QamExTkpneFU2YlRS?=
 =?utf-8?B?djRGUUJaTThFOWVSSFltdWJjMUpsc3lYV1U5RDBTSG9HbzVlTGNseTZZY293?=
 =?utf-8?B?VG52VzBneHJiTjVHeGtJYSt0MCtaM2l5bmhmd2JtbWlCaDRQbEFHZnhSU0Fx?=
 =?utf-8?B?RCtOOXBpcWZhaHJ3eU5nZHpiTko5TCtGSVBxMGFjY3RDVW5TOWtQdHY1MVVy?=
 =?utf-8?B?eWY4YmF6ZHhiTHFkd3I4d3VOd0RHMmQxaVFUdlFkMzRyQlhQa2RkVTI3Ujhl?=
 =?utf-8?B?UUtqMC8vWlBEM1lmNThOS3dvYXZoUnRwc1IvakRLVjJ5aXFzZFFkUmxCRnVQ?=
 =?utf-8?B?ZU9ObzlwMW45TXE5T0MyTzYvb0FCdkFtRHpsVHZuNnp0M2lqdE1EQ3dHc00v?=
 =?utf-8?B?WnBZcUhpb0dCUmJySjNaekVPYWx1K1hLSkFjMTE3dlRFZ052VzYyK1BhTlFT?=
 =?utf-8?B?R2ZjZm42bHFpcjcybVZkWlB6WjlDeldWdGJrdVlwQ0VrdytCdUJvajBsdVZH?=
 =?utf-8?B?Zk9kSU80UGNISmwzZ0hYdFE4RC85TVVMRHd4Nk13RDFPQ3h2ZGpkcTFvWGtS?=
 =?utf-8?B?dVUrenFhRVlxRU9TYkQ4TDJxc1d4S0hrQU1qcFZqM3BNQk1JVUVNLzhndXRj?=
 =?utf-8?B?b29BWDFKSTBuNVhFV2ZITlJSbEJVVS9pNTEyV2xFaXY2dVZxQmxESms2NGQy?=
 =?utf-8?B?aGxBaU5MTUpWN21LN05zU2orZVRCd1lvTURUTGRFOWQ3NFZJRXZ4VkRMTndz?=
 =?utf-8?B?OGtIenF5V0ZhZG1qbDltWDRLZWtrSU1nV1F0dkQ3akJ0ZHFkMlFjRmhqOHpH?=
 =?utf-8?B?Uk1FZ0VCM1BQTENiRit4RllQMXZkUVFXQ1pBOC9IeTFsQmtRb0NmUFdmUHFq?=
 =?utf-8?B?WTcrbG0zWE1xSWhnTHlidFJNaHkveEI4bjloZmJBZFpBOUNtTk1WTGwxb3Bj?=
 =?utf-8?B?R3JBcnZpY2laSlBXdThVdEtaVlk4S0hHK0hqdEpHUnQ3YktDeDRHODlCMDRZ?=
 =?utf-8?B?WE1EZFFwSUtZK3NlVmdJRUtlRWY0amw2aHYyRnpJQ2lkRGxQRmNnUTBqbHNp?=
 =?utf-8?B?L3dzM0J3MXhBak9ON3V2cGM5cll2RDVqb1RZd2RwNWhvV0VCRGgzU1h3M3p3?=
 =?utf-8?B?ZmdlTHZBNWowMWc3R0JFVTlnYjMrcEc2VzhVT2g3M0NpdkZjNHBvaFlTU3o0?=
 =?utf-8?B?a0NBbWkyUUxscmswYVFRNUNGeDRSRDZEa0hSZnlWZnU3U3RCMW5JR2t0dHRY?=
 =?utf-8?B?M004M3lMbGE5K0JwM3U4azN6UE9mdmFnM2o5MlpwYkVYOHpPK3ZEV3ZJUExL?=
 =?utf-8?B?K3Y3VUh6aVA0YXl3NUdYQjdDZldpR2ErVkxmT2NQWnBzR1NIWHQ3WmFxdlph?=
 =?utf-8?B?RmFnWW03Y29oRjR6OHdmcndma2cyNUFrMW51OXJSS3ppT3hhUEFPdnV4S1B4?=
 =?utf-8?B?azFQUExJdzhZRVNQejdKR0VNWEhRMFNMc0NuWkFYYUFITjRtSmlxYzFUYjY3?=
 =?utf-8?B?eG8vbnYzeUNEMS9IUUFEaFAzYmJVdDV0cTJ0MHVUZ2dOY1dNVFFxaDRYYVlR?=
 =?utf-8?B?cE5VSkJqU2tJL0NHa3lHSmpyOHFLeVk4U1hxVXVpZUJHblBVMnFBTC9TS080?=
 =?utf-8?B?KzRCMmdlZ3ZrazIvdjhXNVZkdGp1UkttdnNTNGpTSElRT2JIOXk1NlphY1hC?=
 =?utf-8?B?bmJKakNKRW1ZZEI4d3R6cmhIeW55RUJIeFYyNkh5Vnc4RDFxb1ptZThTMW41?=
 =?utf-8?Q?aOd+jVDIuI0wEbisGKvhqAxnf?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4414d950-0c39-40d6-c91f-08dac995210d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2022 18:45:56.8051 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hLGo0b4Hfi/NwOoJhMyELBSrHhVn2wWXA9sT2yWmZyERYkIutjc3ctRcME32YiEqU64Yu40pjppKRhY/1xKBsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6443
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 20/20] drm/i915: Do state check for color
 management changes
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
eXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMTQsIDIwMjIgOTowOCBQTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBb
UEFUQ0ggdjMgMjAvMjBdIGRybS9pOTE1OiBEbyBzdGF0ZSBjaGVjayBmb3IgY29sb3INCj4gbWFu
YWdlbWVudCBjaGFuZ2VzDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gSW4gb3JkZXIgdG8gdmFsaWRhdGUgTFVUIHByb2dy
YW1taW5nIG1vcmUgdGhvcm91Z2hseSBsZXQncyBkbyBhIHN0YXRlIGNoZWNrIGZvciBhbGwNCj4g
Y29sb3IgbWFuYWdlbWVudCB1cGRhdGVzIGFzIHdlbGwuDQo+IA0KPiBOb3Qgc3VyZSB3ZSByZWFs
bHkgd2FudCB0aGlzIG91dHNpZGUgQ0kuIEl0IGlzIHJhdGhlciBoZWF2eSBhbmQgY29sb3IgbWFu
YWdlbWVudA0KPiB1cGRhdGVzIGNvdWxkIGJlY29tZSByYXRoZXIgY29tbW9uIHdpdGggYWxsIHRo
ZSBIRFIvZXRjLiBzdHVmZiBoYXBwZW5pbmcuIE1heWJlDQo+IHdlIHNob3VsZCBoYXZlIGFuIGV4
dHJhIGtub2IgZm9yIHRoaXMgdGhhdCB3ZSBjb3VsZCBlbmFibGUgaW4gQ0k/DQoNClllYWggZm9y
IG5vdyBpdCBtYXliZSBub3QgYmUgdGhhdCBoZWF2aWx5IHVzZWQsIGJ1dCBpbiBmdXR1cmUgdXNh
Z2UgbWF5IGluY3JlYXNlLg0KSSB0aGluayB3ZSBjYW4gaGF2ZSBpdCBlbmFibGUgdmlhIGRlYnVn
ZnMgd2hlbiB3ZSByZWFsbHkgbmVlZCBmb3IgdGVzdGluZyBhbmQga2VlcCBpdA0KZGlzYWJsZWQg
YXMgZGVmYXVsdC4gDQoNCkZvciBub3csIGxvb2tzIGdvb2QuDQpSZXZpZXdlZC1ieTogVW1hIFNo
YW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiB2MjogU2tpcCBmb3IgaW5pdGlhbF9j
b21taXQgdG8gYXZvaWQgRkRJIGRvdGNsb2NrDQo+ICAgICBzYW5pdHkgY2hlY2tzL2V0Yy4gdHJp
cHBpbmcgdXANCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9tb2Rlc2V0X3ZlcmlmeS5jIHwgMiArKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfbW9kZXNldF92ZXJpZnkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfbW9kZXNldF92ZXJpZnkuYw0KPiBpbmRleCA4NDJkNzBmMGRmZDIuLjllNDc2
N2UxYjkwMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9tb2Rlc2V0X3ZlcmlmeS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfbW9kZXNldF92ZXJpZnkuYw0KPiBAQCAtMjI4LDYgKzIyOCw4IEBAIHZvaWQgaW50ZWxf
bW9kZXNldF92ZXJpZnlfY3J0YyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gIAkJCSAgICAg
ICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpICB7DQo+ICAJaWYgKCFp
bnRlbF9jcnRjX25lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpICYmDQo+ICsJICAgICghaW50
ZWxfY3J0Y19uZWVkc19jb2xvcl91cGRhdGUobmV3X2NydGNfc3RhdGUpIHx8DQo+ICsJICAgICBu
ZXdfY3J0Y19zdGF0ZS0+aW5oZXJpdGVkKSAmJg0KPiAgCSAgICAhaW50ZWxfY3J0Y19uZWVkc19m
YXN0c2V0KG5ld19jcnRjX3N0YXRlKSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gLS0NCj4gMi4zNy40
DQoNCg==
