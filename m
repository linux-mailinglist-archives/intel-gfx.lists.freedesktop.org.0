Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D160B5E5645
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 00:31:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A749410E954;
	Wed, 21 Sep 2022 22:31:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2984110E52F
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 22:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663799442; x=1695335442;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=B8aYiMEJ/LlwrsdBRx7zBDMBlLpi4OA2XO8WZSPcoX4=;
 b=EJnga5U8dQYTycTP+Y2K/2/x1A5U4+5BPCX6fyqQz9PTp/WXGFVnRW2b
 qJAr8CWWhc8cUHCDkoss2mc3uIT0O0Vcxckw9TOzpfvnzcKk+dYT3P1uA
 Y1VzHttR25NHB6I+9dJ4lba/4A2KJLa7zcDlZwG27r6Lq9lo1OdQlmHMu
 s1j+xeHa35/k9CVVkn6XiknK4iHQK+eRgY4Pwmg04EpBlmeU60Y3sv4cH
 tR6FYjdJkDaOthLvTh0VTa+ha2D4paNmxQhzBjR6gIYnDvDsAYymNFF4z
 GcPEKL39plwjmMLlBkPctgwkoAD+0YWzc1YciyGkHF83Nki99FluUGKX4 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="326456675"
X-IronPort-AV: E=Sophos;i="5.93,334,1654585200"; d="scan'208";a="326456675"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 15:30:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,334,1654585200"; d="scan'208";a="650265754"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 21 Sep 2022 15:30:30 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 15:30:30 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 15:30:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 21 Sep 2022 15:30:29 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 21 Sep 2022 15:30:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m/DAyhaNfGXyhrY9AfKCwxaMpYjzzCFaovxLLAlpxyXAJ/BCIknShX3mw6zYEgjbU/OmV45rSRBKv1jwdJGjCAz/o8jzjDlX918uixYv1TY9V6c6xKEBuJv0k2Ur3pUghJodbPmo1GAF+HlxB1A365TxjNbQMC+u8AiA44NFA3MQOhuRf/mXRocQ47xNqLMLeMlyniIMwHjlWxP0bva0CrIw4tYmCYXj416vQarVEL3RM89c0J2YYkYFCHfBRNfh5vMHMnjX942BJ2eO/RnKwmsxWvDJ1fxWetmFuum+WyqaycsklriiY5VdEc9PqQWeYql3adojDQxw/NrOZyyTDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B8aYiMEJ/LlwrsdBRx7zBDMBlLpi4OA2XO8WZSPcoX4=;
 b=gYz21B8KWGp7AVcn38S88SJIzzhYFW+yN8Aeji28hLPJYnlibuMB4kn+96GoYWePE/Ob291JVbsY5K3ruB42iNYnFT4vTh7c6AqyNsXGDdLxUi1g+TUJGKGawlbo0hnMLuwfEFZb3trT24p5r+4TGDgw0kwLoHmIg+RgM21rdnaMiJpfZadTstHODsdt7Usk8t5v2n3oEH+dzgaPnhz2VJY4AvcvsHLGWzrvRzakKTEVpf4AfMdPfVL25XlZ0tGFdid4Fcx/zfbOJQpxZZvkyt0ytdXZE7N5wrfrTD6PRKTAlzIDEkd3KQEH/hlnc8LwnS+oyJapOm0ql8fclIZ6Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH0PR11MB5612.namprd11.prod.outlook.com (2603:10b6:510:e7::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.17; Wed, 21 Sep 2022 22:30:27 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%5]) with mapi id 15.20.5654.017; Wed, 21 Sep 2022
 22:30:27 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Delay disabling guc_id
 scheduling for better hysteresis
Thread-Index: AQHYyKhoBCHXprrm7U24rox/6Qj+2K3gLo8AgAGDhgCAABGfAIAAbyGAgAdqVwA=
Date: Wed, 21 Sep 2022 22:30:27 +0000
Message-ID: <99ed67a5ed201b80affcc6aee05e74c8de6e8f6d.camel@intel.com>
References: <20220915021218.1412111-1-alan.previn.teres.alexis@intel.com>
 <20220915021218.1412111-2-alan.previn.teres.alexis@intel.com>
 <5aec4a0d-e99b-011d-68a9-84ad1f1120bf@linux.intel.com>
 <2808b0f67797543e453e74b4e156df4a5cdd8656.camel@intel.com>
 <70636d43-57e8-46ac-7751-d8fd0fb13d72@linux.intel.com>
 <c6e968c8-aaa0-949c-61c9-857ef5d9f617@intel.com>
In-Reply-To: <c6e968c8-aaa0-949c-61c9-857ef5d9f617@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH0PR11MB5612:EE_
x-ms-office365-filtering-correlation-id: 584eef96-0fa7-4183-fc68-08da9c20e20d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h8DYx2o9f0ZkLhpIGdQZqGkL9LPoX5gNr7lbGs/tCTK/ulFjiL5+feZ4RDcZmgn998fSjOYO73qNbp8z/aaxZkOVcHCXEYDIWiDmyUWqo1N0KZDCCb0VzXsJ1tu21NdQfbGuCbAesvLmcgXQz4tiFY0SQPcyQeg6o8l6qS0I8/tshlNOFq5stqFB1fSckQX3Iy21p9X8tYbr8ZMacekA29TxFgPDXlHwJ0opaeyFHYReF5/z4cQJZNZYUPfY6VLoUm8Mkq9vfm2T2dqwO/nHyVFAqRjtiyj5aTI4KDe3PQTT22WrZbf6QmqnqhszsM8Ud7RQqq4P5HYf1h71M1Lz6jXxpfTOcPYcIszvcmP7KI8m/69ZTMPtDoDc7BZyM1mlaif8d65Uvo6dlpl41N4bIO9bnjV/q4ajVa4ewfZMmFpkpnR5ZeBcsgBRkCofqM3VFGh8224zrh0Qz1LpAmXZRDdV13eFfuOeXpzedqsRxCM8VjVibv6wbt2NbRJWOVVghgcdNueCX1EchFn7JqTGxXtL+fz06CbNTXVv5BMoWRbnUUhARWX/ig+Yi3iQkJKCwCFu2WkSDPXHBd5MUBflV3Ngeilb/36ynIyzuWBIVh7jLDQjEesZ2KlAXqOqG5joJDHxkTRByah2D/d7Yc+eL7pLSJGLWquWXZG91gWAxMGOItOsRZEAI08Pps4F/mg/r6W4X79B2WCvIz7uKJ8tgt4KZpoyLGLFzbiqxwYakQNOqjN5XSM115xVxU2NCfnSSG/e3bSIrkdQIJGWIBBJ6g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(396003)(346002)(376002)(39860400002)(451199015)(110136005)(6486002)(316002)(2906002)(76116006)(8936002)(53546011)(38100700002)(6506007)(66946007)(66446008)(64756008)(91956017)(41300700001)(38070700005)(66476007)(6512007)(66556008)(82960400001)(26005)(8676002)(5660300002)(36756003)(86362001)(122000001)(478600001)(186003)(2616005)(83380400001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cjRqT283WWVFR1kxbkRsNlZpeERkYjBpWTIrM0cwU2N1cjhSTldWTlAzSlU0?=
 =?utf-8?B?dXBEUGxUMCsyUDk0RlhjZEluMC9BVy83aDF0NGloMGM1amRvQVdlQUNuL1k1?=
 =?utf-8?B?N2RlblNTRTZxMXBIMWVhME1VV2F4VlZ0UUoyMlowdkdXSHpUbWpFMi9Hb0dU?=
 =?utf-8?B?VGdhYzQ5YTFZSjduNk5NcmpwL0dGOUJDbThzZ0dhMUYzL2Era0xJOUpnU1lq?=
 =?utf-8?B?WSt0VTZ0QnMvajZoam9TT3FWbk5aQ01oVmtLTHdhUzJ3WkRWc3JNT1p0RHFH?=
 =?utf-8?B?c2g1WWtqQ3Qzb1JmT09VKzRja1IrcHN5WWpzNTBGMUJpdW90QlU3Z0ZQYUJz?=
 =?utf-8?B?ZEF6aEtCKzZNaXBKRzY0K09LSE14c3RGTGg0bnp1YXNCeC9MWlB0Qk85QjVE?=
 =?utf-8?B?YnQ2aHlSR25hUzMvbWx6TzlueDhNY01OWE80RkZ2OGpMOE9WU1FsdzVyd1Nv?=
 =?utf-8?B?RXowK3R1eXdSa3BSWHFnTkVtajVXd0M5NVJ6ZkVHZ2FiK2ZJOGZiemRwUDh1?=
 =?utf-8?B?b3FtR3AxZThwLzZ0MlZWbjV3a1JHNzNNZDlZWEEwRlJZejk1a243Ym1Lb1JM?=
 =?utf-8?B?MWhMOENaZkhPeWdnaXI4c1FHQXZxYWRRQXZmTWJXMSs2L1U4WVhqdnliVG5B?=
 =?utf-8?B?bXJQWDIzRGExVVdkREJzK2JCVHo5M0FiQjNLTFBGOTdrK1hxTHdUMmgycDd4?=
 =?utf-8?B?dFE3VlRrNVVsNXNsMll4K3Q3bHd3OThNMlRjdjNZYlBFUXdGNHhMNk1vL0Fs?=
 =?utf-8?B?UERwVU9TK056VEdFKzk1UENNWGVqU0ZUL0thczdnRDRwZCthcWZCWU5yRzBw?=
 =?utf-8?B?YXNEWjFaN0NOdzhlY1phRmt0cnF5am1NTHVnbGN4MUVZdUQ5dmg0SEswdWtK?=
 =?utf-8?B?ZTduWVpRZk9HaGtRVGlMWDRpQnAyV0wwbWZFV1hITVBodHRiVW5udmNPQnlm?=
 =?utf-8?B?Rk4vdGlWY1RJUWtQNnBxK3JLamRUdXFiODk1NnpLc01Nc05jYkE5dmMwUklk?=
 =?utf-8?B?WlBqQktsSHhvRFM5OCtYN01GTHp0NEpCalZORkhhb3dhQVprNzBvRTZNU0lY?=
 =?utf-8?B?WWJRQXRDQVNSamticGtYaXYrSkMxMzAra0pmbktNdmhjWVpqdS9JZytCbkh2?=
 =?utf-8?B?RzVjVEFQOVp0Wk41UWJvbjU2d3VaZFJPTitYSlZzaG45ZjZQdktvbk9EU2RP?=
 =?utf-8?B?Sm9NdnBuVk5vdXIvQkhOeUtnditYZzgvc0dqbFIxWUliMkJhZ1ljVU53VHRy?=
 =?utf-8?B?Q2JLMEpDYTJWcFZZSEFIbXI2b1VyOVB5YWxBM2ZBWnNEcHFrcnZucWhCY2hz?=
 =?utf-8?B?UlE1ZDhsbktuQjBpMmFJU201STJSd3NIRlNjNmN5dDhFdllSM3RZVzlLdkRY?=
 =?utf-8?B?Nk10ZTRxOUlJZUtMNmxPSHExWlFwMkwxaHZZTDZxenE1dzM3Sm5jVFpSb25W?=
 =?utf-8?B?aW5JOHZnU0xDc2RINTNYVGFhVEtJRk9MUXp4M213dTNrZy9neWd4dDNhS1g3?=
 =?utf-8?B?eHNQdmxPYnZNK0hIcWFBdlFIL3VrcWdVcTJHQ003YmhjeXdncDA2RWRhWllJ?=
 =?utf-8?B?TkwwdVhWU00yMXFLVHNXNUFBRVRCWCtpZ09BeG1HUjFnbFFaeFBWeFJYdS9k?=
 =?utf-8?B?Q0RscnN6WHpOYzZ0Q3pMR2JyNU50Rk5XR0xtR0JEaVVWbmlQTXdDdysrcVhC?=
 =?utf-8?B?SHZXT200RTdpTmVjRXIrY1dzNEhwTU5ITElOUEYwaThCSGNTdlZrcEgydXgz?=
 =?utf-8?B?V1RmSVQ2RStKMHNzMVNkemI3YzVWOHI3ejlrcEU5SkZCSVZENHYrRjRyOVUx?=
 =?utf-8?B?UmdlSllVZnJFVndmaE9UNTFYYXRBTmhNOVRJV0s1SUdqdSt4WWxSaGN5SytI?=
 =?utf-8?B?RHVxR2pnZmZSTE8venhCSnZRMnlXYnp3VUFJcFNrYU0yOFRBcVQrdkhUWXRO?=
 =?utf-8?B?MmtCbWt2SGFDVDdHcTU5eFMvKzZvV2p3dEd1NnEvREw1blRsMWk3N04yN3Jy?=
 =?utf-8?B?bGpqZWY1M1htVzVvVHlKbERzRkNTWlRtWFdIMDF5UVVBQUxiek9VRm1YMXRF?=
 =?utf-8?B?TTdwbllrM0ZOUHgxa3hLTklPY0lzelh4UjJaa0gyNlNjaGd0ai9WOFZKZ1RF?=
 =?utf-8?B?NHVJd0VPekJRdkc2eHRMTGFCRGtuT1pOMVZBMmVocjdHRUJwTkE4c2pyNnJp?=
 =?utf-8?Q?EYMCg7vHQ4ls4A0gTdMv3NyrbNAv7mrXBNcRRQv1FwA+?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <42ED4961826BBA478519EE359CC47800@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 584eef96-0fa7-4183-fc68-08da9c20e20d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2022 22:30:27.1487 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sglgYMCcYQnGZFPRcy9VikrKjh1gaNHFAHYx19P4OB5YkSDeD3oYBxa06Dm3aWBvp5TI2yjYUvW5l5nQdGrT4d/535W7+dZ/VqNeIaY0ttAfAg2QBeOOhYcYwSVMsmf9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5612
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Delay disabling guc_id
 scheduling for better hysteresis
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

DQpPbiBGcmksIDIwMjItMDktMTYgYXQgMDg6MzYgLTA3MDAsIENlcmFvbG8gU3B1cmlvLCBEYW5p
ZWxlIHdyb3RlOg0KPiANCj4gT24gOS8xNi8yMDIyIDE6NTggQU0sIFR2cnRrbyBVcnN1bGluIHdy
b3RlOg0KPiA+IE9uIDE2LzA5LzIwMjIgMDg6NTMsIFRlcmVzIEFsZXhpcywgQWxhbiBQcmV2aW4g
d3JvdGU6DQo+ID4gPiBPbiBUaHUsIDIwMjItMDktMTUgYXQgMDk6NDggKzAxMDAsIFR2cnRrbyBV
cnN1bGluIHdyb3RlOg0KPiA+ID4gPiBPbiAxNS8wOS8yMDIyIDAzOjEyLCBBbGFuIFByZXZpbiB3
cm90ZToNCj4gPiA+ID4gPiANCj4gPiA+ID4gDQphbGFuOiBbc25pcF0NCg0KPiA+ID4gPiBJTU8g
aXQgY3JlYXRlcyBsZXNzIHJlYWRhYmxlIGNvZGUgZm9yIHRoZSBiZW5lZml0IG9mIG5vdCByZXBl
YXRpbmcNCj4gPiA+ID4gd2l0aF9pbnRlbF9ydW50aW1lX3BtIC0+IF9fZ3VjX2NvbnRleHRfc2No
ZWRfZGlzYWJsZSB0d28gdGltZXMuIER1bm5vLi4NCj4gPiA+ID4gaXQncyB1Z2x5IGJ1dCBJIGhh
dmUgbm8gc3VnZ2VzdGlvbnMuIEhtIGRvZXMgaXQgaGF2ZSB0byBzZW5kIHVzaW5nIHRoZQ0KPiA+
ID4gPiBidXN5IGxvb3A/IEl0IGNvdWxkbid0IGp1c3QgcXVldWUgdGhlIHJlcXVlc3QgYW5kIHRo
ZW4gd2FpdCBmb3IgDQo+ID4gPiA+IHJlcGx5IGlmDQo+ID4gPiA+IGRpc2FibGUgbWVzc2FnZSB3
YXMgZW1pdHRlZD8NCj4gPiA+ID4gDQo+ID4gPiBJIGFncmVlIHRoYXQgdGhlIGFib3ZlIGNvZGUg
bGFja3MgcmVhZGFiaWxpdHkgLSB3aWxsIHNlZSBpZiBpIGNhbiANCj4gPiA+IGJyZWFrIGl0IGRv
d24gdG8gc21hbGxlcg0KPiA+ID4gZnVuY3Rpb25zIHdpdGggY2xlYW5lciBpbi1mdW5jdGlvbiBs
b2NrL3VubG9jayBwYWlycy4gSSBhZ3JlZSB0aGF0IGEgDQo+ID4gPiBsaXR0bGUgY29kZSBkdXBs
aWNhdGlvbg0KPiA+ID4gaXMgYmV0dGVyIHRoYW4gbGVzcyByZWFkYWJsZSBjb2RlLiBJdCB3YXMg
aW5oZXJpdGVkIGNvZGUgaSBkaWRuJ3QgDQo+ID4gPiB3YW50IHRvIG1vZGlmeSBidXQgSSdsbA0K
PiA+ID4gZ28gYWhlYWQgYW5kIHJlZmFjdG9yIHRoaXMuDQo+ID4gPiANCj4gPiA+IE9uIHRoZSBi
dXN5IGxvb3AgLSBpbSBhc3N1bWluZyB5b3UgYXJlIHJlZmVyaW5nIHRvIHRoZSBhY3R1YWwgY3Qg
DQo+ID4gPiBzZW5kaW5nLiBJJ2xsIGNvbnN1bHQgbXkNCj4gPiA+IHRlYW0gaWYgaSBhbSBtaXNz
aW5nIGFueXRoaW5nIG1vcmUgYnV0IGJhc2VkIG9uIGNvbW1lbnRzLCBJIGJlbGlldmUgDQo+ID4g
PiBjYWxsZXJzIG11c3QgdXNlIHRoYXQNCj4gPiA+IGZ1bmN0aW9uIHRvIGd1YXJhbnRlZSByZXNl
cnZhdGlvbiBvZiBzcGFjZSBpbiB0aGUgRzJIIENUQiB0byBhbHdheXMgDQo+ID4gPiBoYXZlIHNw
YWNlIHRvIGNhcHR1cmUNCj4gPiA+IHJlc3BvbnNlcyBmb3IgYWN0aW9ucyB0aGF0IE1VU1QgYmUg
YWNrbm93bGVkZ2VkIGZyb20gR3VDIA0KPiA+ID4gKGFja25vd2xlZGdlZCBieSBlaXRoZXIgcmVw
bHlpbmcNCj4gPiA+IHdpdGggYSBzdWNjZXNzIG9yIGZhaWx1cmUpLiBUaGlzIGlzIG5lY2Vzc2Fy
eSBmb3IgY29oZXJlbnQgZ3VjLWlkIA0KPiA+ID4gc3RhdGUgbWFjaGluZSAoYmVjYXVzZSB0aGUN
Cj4gPiA+IEd1QyBmaXJtd2FyZSB3aWxsIGRyb3AgcmVxdWVzdHMgZm9yIGd1Yy1pZCdzIHRoYXQg
YXJlIG5vdCByZWdpc3RlcmVkIA0KPiA+ID4gb3Igbm90IGluIGENCj4gPiA+ICdzY2hlZC1lbmFi
bGVkJyBzdGF0ZSkuDQo+IA0KPiA+IE1heWJlIHRvIGV4cGxhaW4gd2hhdCBJIG1lYW50IGEgYml0
IGJldHRlci4gSSB0aG91Z2h0IHRoYXQgdGhlIHJlYXNvbiANCj4gPiBmb3Igc3RyYW5nZSB1bmxv
Y2sgcGF0dGVybiBpcyB0aGUgd2l0aF9ydW50aW1lX3BtIHdoaWNoIG5lZWRzIHRvIA0KPiA+IGhh
cHBlbiBmb3IgdGhlIENUIHNlbmQvcmVjZWl2ZSBsb29wLiBXaGF0IEkgbWVhbnQgd2FzIHdvdWxk
IGl0IGJlIA0KPiA+IHBvc3NpYmxlIHRvIGRvIGl0IGxpa2UgdGhpczoNCj4gPiANCj4gPiBzdGF0
ZSBsb2NrDQo+ID4gLi4uDQo+ID4gc2VudCA9IHF1ZXVlX21zZ18yX2d1YyAodGhpcyB3b3VsZCBi
ZSBpOTE1IG9ubHksIG5vIHJ1bnRpbWUgcG0gbmVlZGVkKQ0KPiA+IC4uLg0KPiA+IHN0YXRlIHVu
bG9jaw0KPiA+IA0KPiA+IGlmIChzZW50KQ0KPiA+ICAgd2l0aF9ydW50aW1lX3BtOg0KPiA+ICAg
ICAgc2VuZC9yZWNlaXZlIHF1ZXVlZCBndWMgbWVzc2FnZXMgKG9ubHkgdGhpcyB3b3VsZCB0YWxr
IHRvIGd1YykNCj4gPiANCj4gPiBCdXQgSSBoYXZlIHRydWx5IG5vIGlkZWEgaWYgdGhlIENUIG1l
c3NhZ2luZyBpbmZyYXN0cnVjdHVyZSBzdXBwb3J0cyANCj4gPiBzb21ldGhpbmcgbGlrZSB0aGlz
Lg0KPiA+IA0KPiA+IEFueXdheSwgc2VlIHdoYXQgaXQgaXMgcG9zc2libGUgYW5kIGlmIGl0IGlz
IG5vdCBvciB0b28gaGFyZCBmb3Igbm93IA0KPiA+IGxlYXZlIGl0IGJlLg0KPiA+IA0KYWxhbjog
SSBjb25zdWx0ZWQgd2l0aCBteSB0ZWFtIG1hdGVzIG9uIGFib3ZlIGFuZCB0aGV5IHNhaWQgdGhh
dCBkaXNjdXNzaW9uIGhhcyBoYXBwZW5lZA0KaW4gdGhlIHBhc3QgYW5kIHRoZSBDVCBpbmZyYXN0
cnVjdHVyZSBjdXJyZW50bHkgZG9lcyBub3Qgc3VwcG9ydCB0aGF0IGJ1dCB0aGUgYmVuZWZpdA0K
Y29tZXMgaW50byBxdWVzdGlvbiBiZWNhdXNlIHN1Y2ggYW4gdW5kZXJ0YWtpbmcgd291bGQgYmUg
YW4gZXhwZW5zaXZlIHJlZGVzaWduIHRoYXQNCmhhcyB3aWRlciBpbXBhY3QgKGNoYW5nZXMgYWNy
b3NzIGFsbCBjYWxsZXJzKS4gSSBndWVzcyBmb3Igbm93IGkgd2lsbCBsZWF2ZSBhYm92ZSBjb2Rl
DQphcyBpdCBpcyBhcyB0aGlzIHdvdWxkIGJlIGEgd2hvbGUgc2VwYXJhdGUgZmVhdHVyZSBjaGFu
Z2Ugb24gaXRzIG93bi4NCg0KDQo=
