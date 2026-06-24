Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id n02EBdB6O2opYggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 08:36:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 259A06BBCC9
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 08:35:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=QY0kacJn;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB04A10E039;
	Wed, 24 Jun 2026 06:35:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A33BC10E039;
 Wed, 24 Jun 2026 06:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782282957; x=1813818957;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rVpFA5jBUhJLyWjVsUE6tPLrQc4WW6D2bOzHD2bHUnM=;
 b=QY0kacJnUckzO/0RRXKHntJ26+ASB60soB2Cgf7SZYHFWkeKMllOqCry
 5U5J3hork6R95ct16llv79i3ETDvG6SB+RR1gXmo/5MsZ/FFpDsMBCz9d
 P4GINFXpaLA1UOjkS/q6AEKGD7rs57TZMPeb0Tc95FW9vTi5/fuiicZkL
 wuJLBRTFMBCbt7RchieEheOMlHm52qbPRDZwZX35S3GeXtTB6nPdA/dZz
 hU9dBBTi9U4Q+0/X7FqanGLvVsuxqzs8wR0nOh1IoGdHyqgrMo3XkzzGR
 99urXb+cT4DeITVa0rv02pcWThQG9fePzNzetHmy4H8vnHhaze8xIw/Lc A==;
X-CSE-ConnectionGUID: HjXprGmRR/+zgf0UrqdDfA==
X-CSE-MsgGUID: zBk2uC+vSGammuixB5Fgyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="94528916"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="94528916"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 23:35:56 -0700
X-CSE-ConnectionGUID: 9bsDj65VQyavDAsOYULdvQ==
X-CSE-MsgGUID: 8hGLVsprSI20DY7Rk/kSjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="247392237"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 23:35:55 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 23:35:55 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 23 Jun 2026 23:35:55 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.18) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 23:35:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tmZRJOC6ppFZ6xxSqyxQWnLKFBxZhXkTtOzPFD5VLRUobzJltD2OANhGt+4IMsvvpsg3DF+Ge1GW7Va0EdwJ5ExucdjOFaVaOEn4guWs7mnhGWyO6w23Jg+ERfKW9eUxNmgfKSyiAxKSP2+oWzkX5foaZuXL8pawfzaNdInCsI9H2wwfV7V37No/vCX+JYrFCImUn0wyiTuz4X/S4+gsm/hcEOId29Yfg4zt2gI125UbcdDyPsB9jXEBubdEfoWveMIqnmVaZV+2EDh+MbrjYSsVWlCabojkw38yW1ZTYaManOM/g53FeBruGDG9lX/IBCWuEahNeyfJ1vg2qejsdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=57EhqVAAysm1NMyrD5pEsBkrQoiHH9MKqYZtbuw9z8o=;
 b=tmwyjpBkuR9KBTjG/on1nlXMiVlADikxpoiLVrrpRLeqD/b9dv2r4cWaADwX6J3xJScagJg9zimi2fM/A4FOgtt6+0/gYewbUA1HRcmSxL+o5efiitzJ74k+8yRT4OE/0b6wEiwJAqPXYH4O/VXgyXxt4/UdVzuYglpG8QSL4T//8tVUOsXlZ8mtYeqN2ivBFeCyuPTeoYt72LBzhOI1RyB+/op0Dk5J7VoGFCdwzyP2nUNURQKPnstFvoqpyarSsrnu+warJUcg5SMnVvuL9GJZUm3j9vGLQJovSMELYKuxTshPKskxZbfzVvSMpzx96TKWGQi2xYqifhTg1w8mUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 by IA1PR11MB6194.namprd11.prod.outlook.com (2603:10b6:208:3ea::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.12; Wed, 24 Jun
 2026 06:35:46 +0000
Received: from SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b]) by SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b%5]) with mapi id 15.21.0139.018; Wed, 24 Jun 2026
 06:35:46 +0000
Message-ID: <d897c260-df4a-4201-b637-083902f9f43f@intel.com>
Date: Wed, 24 Jun 2026 12:05:38 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] DSC max delta bpp support
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@linux.intel.com>
References: <20260623094236.1586318-1-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260623094236.1586318-1-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0067.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::13) To SA3PR11MB7554.namprd11.prod.outlook.com
 (2603:10b6:806:315::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7554:EE_|IA1PR11MB6194:EE_
X-MS-Office365-Filtering-Correlation-Id: cd19853e-9eaa-4731-eb2d-08ded1bad2bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|18002099003|22082099003|6133799003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: D0dTCYU9st8pBk9Z4RJ3OWU45FsZlcjVBpshikbe2V3SpXK62gbSaSy3Y9ECQpdB4p4ZCxHvQA/dqvlw7FvUOtfF59k2sr9/chaVtsysdO9S8vf42SEjRn0YONbWm2zdkxclX6OvdRivzpIHq4JgnyVfe9sX38KJLSBPPjOnf2RM9QwRqWn+VsVOahQPFU703bg+ZBufqiJDzNGZozLr+037TxDUidTZHOzmtiRPszc1bn8b6xVUfqT4gNIXIL2FM3NLbrRqH4dBF3ZDeJweCR4mRgNsfMioCE85ZXY3wWgB9SUczfVqQXRG4ujxkexjm5gn9kULwoHr5Y/mFWyBrUdzjxWL0gIvbwnjF26AJtGrNzDSZiLCO2Rk9qDNy9CA9gppPUylchJSGnXV6FCLvTN/eeWEMpvUOqbTU9+GykkCqfvPrV4XGhL/iXvo/wheAtbqGwilASU/xBfmD1OfHQ3AibhjAGLAIBTQSeWpycSmcjhKN3KJjFDMbXTGV33biuCiOzRkKrOVcM3Y2BCUg+7oXF622apM2VCqkT5r2mjEmP6yr1KbBNBKSgA+JJnzd8svlG/PGNTFVCuRlMXLA278bNvIv1JEhrAGj3mVCLShx7MfYhn3muP7ID132xz4vXNVXdLa10oLv2p1UqE7M1IH4DvXIM2qahU3M/ajxSg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(18002099003)(22082099003)(6133799003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RFFtd3I3Z3dyR3hEUEc3bUJqYWhQMlVjNE5LcG9DZCthMUdjVUJQRzBaRWhu?=
 =?utf-8?B?OXFVUHZ5MEFjTk5PU1ZYS0J4RDNRN3RtZFl5NElvcnB2Wng3VnltMXl4UmV1?=
 =?utf-8?B?ZlJUM2xWWG9zZHlCYjZaM1hZUlpCZmZnckExN0k2Qks5OHAwWVVqWXFmUEM5?=
 =?utf-8?B?eXZVcUdzclEyeDRBMGNBUUZsVVNOVXdYNVVXZUlzQ0dmOVFoM3FlandRYXd2?=
 =?utf-8?B?cmNpRm5iTGFkYlYra3dzaXRPUmtrREtSUFRJN3hlaWJrU2hZb0lQRUZFNVRn?=
 =?utf-8?B?SHhTY3Q3L05DbDhSelRGeEZvUHI4bjROVTJ5dzVZY0RNcGZEdGxJaHlPNEpI?=
 =?utf-8?B?SzU5SEZnSUZPRitYbktGTE9XdWROUVdTQVExQkRjU1h4QmVYM2FPNTJTNkIr?=
 =?utf-8?B?citSUk9CaGQ1TXdwVGhxaUtXeFRuNEYwQktEcWtjMXlFOUVYQ05CcXdhV2h5?=
 =?utf-8?B?QjFOcnVlM3R2SnJaMXgrRlgyYnp2STQ5cDFyaC9TMDR2WGxIY0laZ2g0bTlN?=
 =?utf-8?B?QU84Z0VaZDhiRnFsNlZwaXJJaUZWT2c2aUthU1JENTVqNU1uVEdXeFpUaW1q?=
 =?utf-8?B?a21uNVo4UDlidXM5TlNLWW4rUjJiTEE3eXZqY0xQYWtyaWNCQnlTZkNobXJi?=
 =?utf-8?B?WEMwTTdEclQ1NmN0ZEZmeVNnYWVXSTlydXhwYnoxZC9uZzg2T2NPdWxSdkFE?=
 =?utf-8?B?dHA0MjJHT092ampvN0VIMlpRYzBOMjZma0krRkx4L1BnMGlYYUVSMkZnMmRW?=
 =?utf-8?B?SUdIOXV6TFpyWGhzRnZjR2NMUnVvamcrTk53Q25LdEdWL1NjbGdVblRsR3Ex?=
 =?utf-8?B?Uk9qSW43bFROZ3NJdmE0T3NGbmhFYlhFYklqUnBGVXBySkxZSWE2bjEvdmli?=
 =?utf-8?B?ZlB2ejhSUmNZRHArSW90VmwyQnJJbHdZVS84dzl3ZXVkWmtxZitOaUUrVFh1?=
 =?utf-8?B?Z09LZXFSOFFva29aYk1yYXVKUFJpTWJnRGNRYXhvY1kxZFh1TmV4RWczMWt0?=
 =?utf-8?B?VDk0Nm5jTTdVbndRUXI5dUhqUlR4cGlNQ255cmU0WWpzVFNzYy81V3h5RVdh?=
 =?utf-8?B?Smwzc2hIK0hWajdzYjdzUWxyUGY5a0tObXZFRGFXOEVZM0tJdituUWJqMldv?=
 =?utf-8?B?RFZNQjdMNktEVDNuTUJhK3ROK2UyZXBuQzZLQ3FlOU9hN2JTajFWd2lxdk5G?=
 =?utf-8?B?ZmpQelNKb0tSU1ljd1Y2c2FEU29naUs4dWFXODRKdmlXdFIzMnBxMHFJcWpW?=
 =?utf-8?B?bGo0aDhvOXp5MFo2NjM2Q3VuUWswZ0ZMWlpXMXA1aDJJeE03YytqNVBUZkxj?=
 =?utf-8?B?ODY5dE9zeUZpZHFjTTQvZ21MbkhCcnFoQlFWU2EvYnFEYmc4NG1zZjU1MDZP?=
 =?utf-8?B?Zm9VdG1lL2ZGRVdGbS9qWnlxSGNwZi81Wk1IcVJsWmlqVVk3ejBZNnBVY3l5?=
 =?utf-8?B?aGI2S3hEcjVaTlIzc1Nwb0lZT2dxOElGcmdmYmVxK0ZMUXFFcUVYSFlsZ1lx?=
 =?utf-8?B?ZW1yVUd1elkxZlBJZDBSM3U5aGZtZldMc3pVbC9BS2pBamxzLytZM0ZhSERi?=
 =?utf-8?B?WVc4NW9WNnhsZDlsVXVlNnF4NDRuWE00eU9Ja05CamFFc2hFdk9aMVdRNFlQ?=
 =?utf-8?B?bGZtMllqZ0lyUERnN2w5Uk04U2hDNTlNM0FTS0ZFM1dxUUJNZjJRV2hUNXlm?=
 =?utf-8?B?ZUJjbElrZFdoMVA4S0FBamd2eW5seFZOY0pqaVVtWWFRdFNlU0VRdHJ3SWVt?=
 =?utf-8?B?MEV2aEJhNDZpZjI3V1RnNDRkRHNDUWVRNk85eURMdW9LYitCYmNNTUplOGtI?=
 =?utf-8?B?ZkVVV1lYMFJEUDVnUG9tVDRMazEzcjIvYXFvSVlHY1ZITENiZmIwMDBZZk9C?=
 =?utf-8?B?QlNkaURqbkQyc0tucUF2VlB2VkFBd3JnaGlvVTFneHZKSXhFUk5pWlRHNExV?=
 =?utf-8?B?MUFKYndac1Fwb1hkYldnMGovdDAxUTE3Nk1seUYwSmtsaGl1TmxNTmZIQklY?=
 =?utf-8?B?eG00OGdocE85VzJtME1TVGE2RVhJNG9yblRQZTRnbkRzMXowTVVCa2xQelNK?=
 =?utf-8?B?WXlPZVRma0RKZEhOWWVEVGttVGE1WVRhRVZCWW1DSTJoeVIvYlpRMU40Zis1?=
 =?utf-8?B?QXd2RGppMGxVS1hrZVdUc0VieFNrbW5nSTR5aTlOYWkzeUNlQjdkYVpOaTYv?=
 =?utf-8?B?SDh6RTR4bDc0eEV5ckVDNDN4OTBNR1BvSGJWNnBiTmpud3NqZmNsOWhnM3Az?=
 =?utf-8?B?RWg2YVNKNlJrMjlJSjJMcE9ndzE4TDFtL1I4bnBud0kycDNXdDNoQ3lEN3BW?=
 =?utf-8?B?ZUx6KzF0VzBjTDZXbnJHdWNVQWFvMmliTGw3a0RHMUVoS1hNK2NyNzFQSWdv?=
 =?utf-8?Q?5AUeb7nJ44oR0Du8=3D?=
X-Exchange-RoutingPolicyChecked: DhTQ7bldoTLtc26HLE17iEh/eQkxHZNeOmv2vYsvgRO5Yn6FnWID1qZC+imzHUAOhY6x5CXYqD3greqaTLOUvUbhrQ4X9tpxTntri8aVuqK4qd8REsaTCWagBQGvx3mKM2d0/jbxuz3sU0pV/v4HEaiAUdFFUDEhktH+uuZkx//e8VO1QEqN15IPhqAnZ4iRAXGMt9+x77sjS/g3vugE3vPvWHJQXnK9Q2PQFZgCNQrursBs8HdEq3yGPhm+uZY5fYkMIASRPS5kVqZ4Q9OVxNN3grMYn812tZEIXIOQqTMQCV5j40VnMksWYi4jyQj7zfyev46PPQoKvREWjl4kVA==
X-MS-Exchange-CrossTenant-Network-Message-Id: cd19853e-9eaa-4731-eb2d-08ded1bad2bd
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2026 06:35:46.6293 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bVtow2ei4t8b0H5yrXnA27lxLQ751UCydxYMwwRnUf8sHwUIfzz4ZVglS/+JNWjrpSR3S2h0/9mIx+eNIDdkGK7dVlqDTwaTmSi4sCvSFP4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6194
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:mid,intel.com:from_mime];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 259A06BBCC9


On 6/23/2026 3:12 PM, Nemesa Garg wrote:
>      Some sinks exposes DSC max bpp through delta based
> DPCD fields. To support those sinks, add DP DPCD field
> field and logic to decode the delta value in bppx16
> format.
>
> Resending this series again as missed to send v4 to
> dri-devel.
>
> Nemesa Garg (4):
>    drm/dp: Add DP_DSC_MAX_BPP_DELTA register
>    drm/dp: Rename YCbCr420 bpp delta mask to native
>    drm/dp: Add max bpp delta computation constants
>    drm/i915/dp: Decode dsc max delta bpp from sink dpcd

Thanks Nemesa, for the patches and Jani for the ack.

Pushed to drm-misc-next.


Regards,

Ankit

>
>   drivers/gpu/drm/i915/display/intel_dp.c | 43 +++++++++++++++++++++++--
>   include/drm/display/drm_dp.h            | 13 ++++++--
>   2 files changed, 52 insertions(+), 4 deletions(-)
>
