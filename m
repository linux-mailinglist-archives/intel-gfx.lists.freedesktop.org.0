Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAeYI9/6DmoSDwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 14:30:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DA15A4D6C
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 14:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6959210E4DA;
	Thu, 21 May 2026 12:30:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O1Z9hOO1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A69E10E4D1;
 Thu, 21 May 2026 12:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779366619; x=1810902619;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=+k4idiXV+587TxazonVlyMzzzU4Ohe7kv9ouxgNFOtA=;
 b=O1Z9hOO17BCwV6BAd02CoQz61Y87FN1mjxlxUz39uHgFCa0tl9fb03VD
 66X8cX+nmKtDp3v3BtXWgr74ZIq8PD6OZspR+4CW+d9KsW/uqo57ZzRps
 3wa9lBOXRKAmRTou/aDC+woGmI2HThPaqzQgcBGlRrDKsfmA9rDhRNlAb
 gHC+OO1dfE9J47/a/bJzmqfGzVB/2Q9RvNqPwZssV+NU3eqfnZOSJTBm9
 dq/jQRkol3nwOA62fht6h1Zz27jv2n1Fs6P27tPYYsWcJhne9Bv2yGlCN
 cVVSJjsnTRjLD7hJTXoDUX3b6vMzFv/4oMS1b6U1Yo/hwIIuSxhZvnJ0h Q==;
X-CSE-ConnectionGUID: 4kt/leVGS2qtRhkJwnm26A==
X-CSE-MsgGUID: 1kVf2I8+QJuZgmMpkYIOJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="83902589"
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="83902589"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 05:30:19 -0700
X-CSE-ConnectionGUID: CvDhJa54RGWYojWGVwkp8w==
X-CSE-MsgGUID: Rw+jFOVZQf6WuZE1HIGwvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="237914744"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 05:30:19 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 05:30:18 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 05:30:18 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.47) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 05:30:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RBH4YJ15GY+Ybs+Q4X01/8bCp8y9W71QyMf4sQ/c+173Nc6EI7F+5jgLbSAVyEPqk/aAUqAE5cWmOHluBsMZ/XYQiZsUurimZ8o3crA85S2VxFU2MPYZooAt6+VIMoxJnvc23n6WJRbTLvbuLC1MREjCeDgjowPQSEn7IN6FcGFGOd2ioBmOwCsskTKxElghjYv97Odu9E6apgreALzRAXXJrmHSwBCypdQSBuE1ShsRBMrN1oJIBZ3p43bUVRH4GFlyTnkMpiI1AgHP8cOt69YNiQVnaAQ9aRkyKDsRbEKmx5fFs9s2NNwTizMTkeDVlMSx+GZ9M/NEncblqF2fcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+k4idiXV+587TxazonVlyMzzzU4Ohe7kv9ouxgNFOtA=;
 b=FxDMJWsXZn41K649LSvVzd54TKYo0k47xC8RNNok9i5SGBzMgrl5DVkMZqEOHLtVktfXtc4D4EWiw+ZRAZkzIPxXAyj00lHIyV7WJip5UclAt8Ftkg5pvgMHk0ihIfFeUVu68r+f8raMw994heqj2AwS0kEDWSBZvILtc7AWEmCJNt29Y7zom4qfEtCME+xvEBZrUbwDEXzcGSY6SGQi3nxy4vuB8I/ZJQYkhALd823hbjj1wAs/HkdT6EplCLUDh7DuvHAJm6Z9Nv26aDt/Wxhr7Tt5EafbMS59yeLP0pPAHR5dq6NglYkVRfTHmJ3figl+c4LMx1RB49i43PkUIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SAVPR11MB9574.namprd11.prod.outlook.com (2603:10b6:806:4e6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Thu, 21 May
 2026 12:30:16 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.21.0048.013; Thu, 21 May 2026
 12:30:15 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915/psr: Allow SCL=0 on platforms with always-on
 VRR TG
Thread-Topic: [PATCH 2/2] drm/i915/psr: Allow SCL=0 on platforms with
 always-on VRR TG
Thread-Index: AQHc5D+TcZIElk43zki5Y/MYpKNsXbYYcqKA
Date: Thu, 21 May 2026 12:30:15 +0000
Message-ID: <5ee0e36676ec179366efd70233f30d3a3b51bc9c.camel@intel.com>
References: <20260515073616.2794146-1-ankit.k.nautiyal@intel.com>
 <20260515073616.2794146-3-ankit.k.nautiyal@intel.com>
In-Reply-To: <20260515073616.2794146-3-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SAVPR11MB9574:EE_
x-ms-office365-filtering-correlation-id: 6047723a-4759-4289-341d-08deb734b649
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|56012099003|22082099003|11063799006|3023799007|4143699003;
x-microsoft-antispam-message-info: sp06JQRvAtemJa3Uqa9jFkkEiC3zTf1/txJQ6a2jExfN7/n80cNvZBcVdHMkcuPdM83KiRMDaWtjVNiAega71LO0lWdTmDOaTIUo0CwHrz5phlUhh/qdm06o+ovc+bgyMyWBTmOOy5WPQMrcguw0iANkL23x0EFZQtTBbCTvbj1BS3Z7H4p+WM2OeC2/DrsrnN1rFc3NxZKUY8qCXGhjsBUqw3LPxwEs2/Mkzc6IQ7Vk3BS15GusO1Hoafj372cRCz/CDrXWh8g3sP0vUoAmnIOAErq+cEbu5QnwD60GtY/ZTvzf53kTaar/WwMbg167KRVDL821ykhWfonnbeB/B6yEsnPrbBH//qUlY27db4HOtUk9tygPW9Jhq+ZG9l5anQ5qZLHNBzmtyVcBWhIgKMWSgKDkmguwLkMuurdr2rKIPdWISoee1R9C05K/y6ud20EQiJ+4UdnDdhSfZyTAmE/nXgmrz7dtZc/gMtyxPWjqj+tqz6dMGko7SdKeX8XEi9hP72izdEWcT0Z70AxdPslDZ9MH19oQoOm4GwqiqB6G+a6wuDUoiSiMIWKT+KeoYJiO4Q9cyiUZ7RXgG8/3M3TUN6dzzGqlUDam6XEQcN2k+7sTRHX8eOU278H3/27z3NbNZmp32p9Hqs57cVTSB3N0pXNgZwuFsusaDh1MF+MEZmBFTEI2TB1Szq6hvLWCoH3HHK/xsJpjinu3X4nKvKSaJZROarVqJESHdigVul7Vr3W0HNwfxbeLTkaP4g2/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(56012099003)(22082099003)(11063799006)(3023799007)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MkEwOUx2MnI5VklNSW9nd2Q4dW9FOHZ1TDNXRlBaMm5jRmFxLytPWkhJVWt0?=
 =?utf-8?B?MkhyRzNyNDRaK3RSRzVSdEtpTm8renBMTmhtSUFXdUFWczUzQWc5MVRvTFow?=
 =?utf-8?B?OC9sVDN5VWI5OTh3RVBZNm4vMVhDNENmeDhXc3ZZL1N6WXlNY1I3cWtOUkZs?=
 =?utf-8?B?VThlajMvbExTNVBJRmNWOEtmcUM1UDF6c2RjaXViODVtcHlhYUNlUVRUR3VB?=
 =?utf-8?B?L09XMlpvM2VJZExjWEQvb0xIWUdtT3VzK2M4Nm1hK25XcXB5eHhSQWtld1BQ?=
 =?utf-8?B?QmQzQ0h4bU9STGJtUG01U1F3Y0FYZkJpcVZYU29KbTZ3M2ZEMWpUbHJ6ci9L?=
 =?utf-8?B?cWJ3S2YxZkZVYUhhbzdtWmFqaVFUMjUxNEovN3Zmb2lvYzEyZjJ0UHFBLzlF?=
 =?utf-8?B?VnRlbk9EMkZvcVpRaWY3VUt4ZWZEaDloaVh4SGVHUzJXOWs2ZzF2RTA3UXZo?=
 =?utf-8?B?UXdzUjhqYUNKV0FEMHhEMlZCK1F4a1dVb0NDd29CNzNpSnFqVGxERCtLaGFj?=
 =?utf-8?B?ZHZuQm5wWkpTaURPT2xReUdJWkRYcWdTcVJxNS9zS2hNYkdHdkZ1N3NLNEVP?=
 =?utf-8?B?MTNSTEY4VUhEQWw2d1NTZnpzazJDWVpDOVNXYVhSbndTUXJJMlFUWUtHZzV3?=
 =?utf-8?B?N2phS0t6d2VONEp6RTZsbG4zemJZS2RlNm9BaDY1aDJHMmhmNjViREw4Yldw?=
 =?utf-8?B?VTBUbmZCSWF2Y3BvR1lhdVZSaXI4bERwOUE2TVBLUmdWcC9oRW0wQWRyR0RC?=
 =?utf-8?B?eS9XREdZL042SDVsOWgrQmZDWDJmQUtrVTF5UjdxdTNXZXBNZlNZeFdDUWJ5?=
 =?utf-8?B?VHJhQmNJaFNjeGR3aW96V0d2dnZIbnZZdUE4QSs4NzJ2bVBCWkVKVWd0d2JE?=
 =?utf-8?B?d013b2ZRWDAwZ3BFeG5haE5DSldZTHBneE5XN3FWYnpqRm5EMU9lbWJPYkEx?=
 =?utf-8?B?ZnlqTUtRVy9xTk5YY3BDRmtBcjBWYmYwRFZqNzA0QjIzdG5XbCt3M3FTQTRv?=
 =?utf-8?B?RkJWdHNzb2Rxc3lEakU3VEFPeVY2T0s2WUZRbHdwU1BpMk9KRGErVEJSU0Z4?=
 =?utf-8?B?MXRKa0swRUMxeU1RbE1Md0prS3lBWktpZW91T1RPYzlIVEJiRnBXZXVCRFo1?=
 =?utf-8?B?N0NKV1Exa3Y0WDZ0Z3dodTVmV0pnN0RlZ1dNWVUyZnVIU1drRHdaZWhWaVNp?=
 =?utf-8?B?Q1lnZXBUYXloT2p4TVB3cTZieC82KytMUjRkYXFSd3h5b1NGNW5CekpERXN6?=
 =?utf-8?B?QUJwUDJ5bWFrZm1nMzk0QUtkWUlld2NPL09UVGhTb0xVS1hNWjhJRWJCZ3o3?=
 =?utf-8?B?VWhKQk1tM0ttUEk3Nk1DUzI1eDd2c0xXcnh6V0FEVHluSzBsS2xMTy8yRmps?=
 =?utf-8?B?R1U1NUtsekhlYWQrZ2txajY3emx5RGRJOW44UG8vbkZycm00K1UraGg4azI1?=
 =?utf-8?B?N3RwbjM2UGkrN3Q5WU5ocml5OS9jSWsyL0RHVFRwTnhYOFN6MU5ybWg1T1Nm?=
 =?utf-8?B?QTdBb0p4L2dLTU5iSVc5U0E0NXBzL2NzQjRWTmc2cGd4MXgxN09QS1FYT0dR?=
 =?utf-8?B?eVJLaFZSQzc1M1NPYU1YVm5Kd2NKQTFtYnJuOVF4K3RWTXNZbC9tZDBHTnBH?=
 =?utf-8?B?TG5XT3IvSHQzbmVIOVBVK3RYNnVHSlN2VGY2ajZQMTVDaldycUFIZkphV05J?=
 =?utf-8?B?TUkyekJVanQ2OXcwQ2Q4N3lsM1N1MGlEaWppOVkySjErL0liMmNySVBWV2o5?=
 =?utf-8?B?QkloemxFamxudFlnY0hzWkhUbGVzZ2hMZndMYVIvNVhHMFNQbUNkeGdwN2lD?=
 =?utf-8?B?bkM5WlYrZjlsTjIveE1wR2R4VTU5L2dVcHZIS3dWbEZ3bGt5WTZOU3l3TnMx?=
 =?utf-8?B?V2tkelcrMW0vdXRFd0NmRmFuaDdFcmtseVg4QVZnWVVKSW5SWVk4M0ptL0xy?=
 =?utf-8?B?aVd5dUp4ejFrZnVidHhIbithOHY0bnBRUGlUKythT2lwL2xCUDRaeHQ3S1U2?=
 =?utf-8?B?SWwrSzhKVlAvZFNXYW02SGpaampIT3R5YnErNFZGbXh4L29pOE8yM21FR3RX?=
 =?utf-8?B?UGVMQThRVis0SFpmRWdRRGxEL3Z4ZmVleEhxTmt0aHNxNWhuSC9SVWdJajcr?=
 =?utf-8?B?YngvWk8rSVF4QjU3bG1oYndHMGliRnR6OXJnYWNTaU5ZOXdQQ1ExMnZ3aVd3?=
 =?utf-8?B?ZllscUNXRzFUdktLV09nOU1sQXhkNGczSWtEQUdBdk40cGFYQVJSTDRFQklz?=
 =?utf-8?B?UEJkL0VkMFo5dmcwRnVXbVNHRkFUdFYvSXNldkdCY0hWWWZjY2FDZlJ4djFG?=
 =?utf-8?B?S0o1eU91elBEUlZEKzlYUFpXaGJ0V2szN0lFL29SanFkbTNRTm4zb1VKbE5x?=
 =?utf-8?Q?yFqEqHCTSR83pPGo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7C517CA8D3B28C4792ECD9880764EEBA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: MPInZn/lovyLHGQLl+nh1/xm3ofjEcbX5aRCh/0hS981Yb1Ir/ps7u2V8dn1j+EhttDj0WQ2TK5Rftx5SI48ghGeCtPnLcO74BWRmwoK/Iisav3Rq48eicCQ5sRbF5CLnNbkyhrpFWS0qyX8+2lKzzCiHRz71npp7q28GQ35nv9bXy7le3Dnh7CNX136BOEmfw175RwqFsCJ7LxDDW5HGKTWJkkeyFbNI2QPQp5aS5hBe/qBYOIwSsvL/yVtYY7BeWYgTN8AdW1sT+F3gsaHv+5n2eRM1LRpxtQAK0n4MWm5rozWoBQ6dHmSDbUsIr3J3uinIBVwW/1JhPgqjF3Ysw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6047723a-4759-4289-341d-08deb734b649
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2026 12:30:15.7026 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jOfcFdNxuGNrz9lDvI0/u0VDyY2FgLuJ48OLtNimqpzsxn3mxMqsc2fgRpICfPrLDoYBAUE/ok2x30YqAQubz9BPHqZKMWMPhSdCxC4tg/U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAVPR11MB9574
X-OriginatorOrg: intel.com
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 09DA15A4D6C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI2LTA1LTE1IGF0IDEzOjA2ICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gRm9yIExlZ2FjeSB0aW1pbmcgZ2VuZXJhdG9yLCBpZiB0aGVyZSBhcmUgbm8gcGFuZWwgcmVw
bGF5L3NlbF91cGRhdGUNCj4gb3Igb3RoZXINCj4gU1JEIGNvbnN0cmFpbnRzLCB0aGUgU2V0IGNv
bnRleHQgbGF0ZW5jeSAoU0NMKSB3aW5kb3cgc2hvdWxkIGJlIGF0DQo+IGxlYXN0IDEuDQo+IA0K
PiBIb3dldmVyLCBmb3IgVlJSIHRpbWluZyBnZW5lcmF0b3IgdGhlIFNDTCB3aW5kb3cgY2FuIGJl
IDAuIEl0IGhhcw0KPiBvdGhlcg0KPiBndWFyZGJhbmQgY29uc3RyYWludHMsIGJ1dCB0aGF0IGFy
ZSBjaGVja2VkIGR1cmluZyBndWFyZGJhbmQNCj4gY29tcHV0YXRpb24uDQo+IA0KPiBBbGxvdyBT
Q0wgdG8gYmUgMCBmb3IgcGxhdGZvcm1zIHRoYXQgaGF2ZSBWUlIgVEcgYWx3YXlzIG9uLg0KPiAN
Cj4gU2lnbmVkLW9mZi1ieTogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwu
Y29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+DQoNCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyB8IDMgKystDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+IGluZGV4IDViZjFkNzgyMTg4Yy4uMTJjMmUyYTcwYmQ4IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTE0NzcsNyArMTQ3Nyw4IEBAIGlu
dCBfaW50ZWxfcHNyX21pbl9zZXRfY29udGV4dF9sYXRlbmN5KGNvbnN0DQo+IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlDQo+IMKgCSAqIFNSRF9TVEFUVVMgaXMgdXNlZCBieSBQ
U1IxIGFuZCBQYW5lbCBSZXBsYXkgRFAgb24NCj4gTHVuYXJMYWtlLg0KPiDCoAkgKi8NCj4gwqAN
Cj4gLQlpZiAobmVlZHNfc2VsX3VwZGF0ZSB8fA0KPiArCWlmIChpbnRlbF92cnJfYWx3YXlzX3Vz
ZV92cnJfdGcoZGlzcGxheSkgfHwNCj4gKwnCoMKgwqAgbmVlZHNfc2VsX3VwZGF0ZSB8fA0KPiDC
oAnCoMKgwqAgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDMwICYmIG5lZWRzX3BhbmVsX3JlcGxh
eSkgfHwNCj4gwqAJwqDCoMKgIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDMwICYmDQo+IGludGVs
X2NydGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0VEUCkpKQ0KPiDCoAkJcmV0
dXJuIDA7DQoNCg==
