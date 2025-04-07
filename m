Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C39FCA7DD2A
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 14:08:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DE6510E443;
	Mon,  7 Apr 2025 12:08:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T9rTqOSW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D60A10E442;
 Mon,  7 Apr 2025 12:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744027699; x=1775563699;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=HUMiocaEbczhYLS+oC2HNg2nusxVNkF7L23BDw9O0eI=;
 b=T9rTqOSWX5H+7HyM9dGbTHGL/vOi1+AD7Wl8e6ao9Gu1pSpwALTylqJg
 /hMm0nvBrGRsjPueHxEAfV63WpUzDRAqToer71tV9yNAWB3H0Z+JYY0nd
 c7LK1Lv3touSdlxBxmu+k9ruByezX9PRiBDSZEFZ1lupDxAoZQcOURJcl
 WUEZOAbnLEI/8cIXDc/oZdmLlLPQ1iYGrFsIZNSjd+ZrT9FVVhCIMD+FN
 WSjH/833zTzcvAMyftDbaA5SVab6HYsFcBTRQ8ECkjFIpdfW3NJiLpGcw
 jKT7OOABx7x60DKOQHjICW8iUDhmVEMwQnLBAt15Q7U/YoCliv3uv+xbG A==;
X-CSE-ConnectionGUID: Movd8ZzfQZW25VlTnhUOSA==
X-CSE-MsgGUID: 3SCSB6CZSR2nR7awBHpZPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="44656562"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="44656562"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 05:08:19 -0700
X-CSE-ConnectionGUID: hRd97P86TwqY7V2mLUiJOQ==
X-CSE-MsgGUID: zEAwer4NRIuX0WpZkTdVQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="133149735"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 05:08:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 7 Apr 2025 05:08:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 7 Apr 2025 05:08:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 7 Apr 2025 05:08:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ufK9nKzpQH5s+EWQh1K/PnpCjyNZX+M/x0uROJDYkX28nKn8PSal5RSAh3YRio1pmoDz/AIW3DnnIdQIQO1Wf6Qi+hb5VoARtYA5qgtKT+z0uJs6T501q35JqnSznDPr2h7n8B1pxV/jEX2tT3cj9y9+nd2JovYjYxV6W31+NurPapok8Dv69ua+svmWmhIyMiRoNafL0iLaKfOT4PuPhuZyQsRzEro1bTjJLvajnXm11aFhT8/0kFe68JqBU/FP+8iCQW5f+WZlmRgiYXH6ekUo9o9QsbIJV/pIq9yuE0vwqHwvFcVa+U0T9LTgSU+ukvBghFKVL1bo+BIXgH9F1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HUMiocaEbczhYLS+oC2HNg2nusxVNkF7L23BDw9O0eI=;
 b=IFkYUXjLqK6zXMjsZnj1xYxb8rknjaFj/a0uwnB9aznLwebIZvSZZTXGPHRYrqJCA3XsJ2/a3PAVP9GPncelML9Tv2t6+Ga67x7R4Dx+Tg8Av3INkfRm8+EUMFGBGc1cXOUyunCrrBbrAgj9EcjcpgK4DY5duL6A+b9S5O/XIWIv0F+1GGjD53brUKKDx3nmMVPEBcXLtngW6qWWqFsbF6p1iyttJW2rQMgjzjkKv4sCMajNnYICB8u7my3AnIRhDSCA138eLJwrv0BD0LkJvghL8ybL+ggqag0lwz7PmuB2vrJPT+6LuQLETwFYmenl9hwQvHDVjT96/ll3Q4lkAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH3PPF97652A3E1.namprd11.prod.outlook.com (2603:10b6:518:1::d3a) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Mon, 7 Apr
 2025 12:08:01 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8606.033; Mon, 7 Apr 2025
 12:08:01 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/vrr: Stop writing VRR_CTL_IGN_MAX_SHIFT for LNL
 onwards
Thread-Topic: [PATCH] drm/i915/vrr: Stop writing VRR_CTL_IGN_MAX_SHIFT for LNL
 onwards
Thread-Index: AQHbp4e6vzRU9WLe0kaE84U2k3Fbn7OYDfEAgAAChYCAAAvjAA==
Date: Mon, 7 Apr 2025 12:08:01 +0000
Message-ID: <5c07036cd04003e2e0b5fa555c9abb002f98353e.camel@intel.com>
References: <20250407063758.3131498-1-jouni.hogander@intel.com>
 <ac0c7885-ce03-4bdd-979c-5d1c050b3fa4@intel.com>
 <af069dda-95f5-41f0-9ff5-707759e5dc6a@intel.com>
In-Reply-To: <af069dda-95f5-41f0-9ff5-707759e5dc6a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH3PPF97652A3E1:EE_
x-ms-office365-filtering-correlation-id: 8235f2a9-adae-4357-e41b-08dd75ccd81c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|366016|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?V3BZUElFQ05WbFVNR2ZXM3dpaFY1Yzk5ZEVOZjF2VFlIcnVOa3o4dng1dHZs?=
 =?utf-8?B?MnRiaDhWazJHc0VnQjl3cm5XQ1FHdk42QlRBdFYwZWxZdWZGUG5Rb1ZaV2Zv?=
 =?utf-8?B?OE50WWlGTXBJMWdUVjhxa0Q4ZlhoUk9xb3g5aFlPRWQ5VzZFak85VmNLZktL?=
 =?utf-8?B?MERZQ2dIS1dpTURTT1pZblpYQ05qRGJtdnJCMTVvK2wrRzVDRjdBazJlSFli?=
 =?utf-8?B?S0FvR0FQemU5VVQ1THFIcFNoWHBGbWtBWitqTXVWdWV3MkphOVBVZTFWRzJW?=
 =?utf-8?B?aXozZzdrdmk5M3RpSkVVditqRUdxTVNsMk1OQlQ0a2dkQ2RRZFNvRC9nQlhT?=
 =?utf-8?B?V0d4clhQa0dzOXBuOHdTZkhRaXFFd0RtaFgyTXNSQ3pKSFFid01WckswM0o4?=
 =?utf-8?B?OGNSMWg0YkRMbzNtallpOGY2NldGTUVHc3BmYmt5aHVoa1JZSGlEZVJFalBX?=
 =?utf-8?B?YVJZSlJ3SFdiVVFQdnh3VXIxb2lWb1NSMUFaY0NvSzJiWElrenpuVFI0ajE2?=
 =?utf-8?B?VW9XVVFNWit0T1BQS3JwcFRIeStrZXBTc0pxdEVCTExqSDI0ZXBvbml6ekRY?=
 =?utf-8?B?RXU2S01YTk05NWROVmJGZ2FqanMyNW1NWWVWYlpEdm5KeTM5YVVXM2dFUWtF?=
 =?utf-8?B?RGxWWXFDekkvUTlaVk50WkJ5MjRQUVQwUHcyUG9CaWNZeDV6aSt1WmNqSGRr?=
 =?utf-8?B?Y1JMV2VUbUJOOWtPSlU3YVRDSFMzeDdGa3h4Nmk2MWZLU3BYL0tLd1BMcGxm?=
 =?utf-8?B?d09JSDJ3aTZRL3NXVWhMdE5TMEpyT0hOZXhzdFE2VXhoVzdMbFdiaExjUkZT?=
 =?utf-8?B?cGZqMTQ3T053Y1VXZkVQRUtCaE92WWdaY05NeTRibjA1ZnVCNjlaaFRRNlJX?=
 =?utf-8?B?cmo4elVuTndXTkx1MHVHb2JWS3lMVE9weGpKdzlGL0luVVNra3NuclBvdGpL?=
 =?utf-8?B?cFNnTHhCcnhKV2l6Zm9tcGZqbmpNL0tXWStJMUxRRHBDVkZLOTE0V2hHRXNG?=
 =?utf-8?B?eGlNeUdjbHZhZGJMYXRQMDVIQ2R2ODRHbDVBM2dXZW0xZ2NZc01haDdrR28w?=
 =?utf-8?B?TVdacDZ1amRValJnMVhDenNWWXhxYjB0YTBwR0F3ZjJocVA4Q0FuT3d3MTl6?=
 =?utf-8?B?Q21Ha25IQ0ZWeVMzVHovQVA2eGxrdVN6Y2VhdWVpN1AwNWxzd09UMHA5OUpq?=
 =?utf-8?B?ckhPSEpUbVU5M0VJS1dlNlltdVZOd2tRTDRnRXJGY2ExS2pwYng0eUJ1YVpk?=
 =?utf-8?B?R2ZQNXlUR2FRNUxTUFhmcHBYNGMrQ0l4RmJpLzdYb3N1SUdNMHBabzBlTlJh?=
 =?utf-8?B?aG5URDdGQzMrbitoSTRjWm01YjZMa1JMZ2FjNkVTby9MRXk5VVBXVllTbjBV?=
 =?utf-8?B?YXYvU29nMDRjVXJ4VnB1dWUwcUJPUUl4NStYWUNET0NQQ3BVUGhhY2tJaGFJ?=
 =?utf-8?B?TFJmOE12R3NDMW5YL0o2OTZHcm1zekNPaVBlcy8rcUV5ZllUSlhRT0tpeFFV?=
 =?utf-8?B?UVZQVjAzMmFEUWxHOEZ4YWJYUjZIQ3prZzlYRGRjenlPNzdwQ3RkZ0M4Y1lC?=
 =?utf-8?B?SGhsTjVlOVVyczYyTGhFTWV0SXZEb2s5R0psVGZCRUJzSloza1VKcHNOSFFp?=
 =?utf-8?B?ajVFMGI5NUFGSnNRU2c5QlRhN1YvTHVlWnNMYVhydlBqeE5BZ2FzMFYraWps?=
 =?utf-8?B?ZXJzSDlMYndHcEdoelY2Uk5IRkhoTE9LejZJc2UvaUdsd1dvNmFKRzd5aTky?=
 =?utf-8?B?S3RVREI3Q0lXb21YcFJwb1orZmJUbWVsWVVZd2VEOEJYb3c1MktORzNQODRO?=
 =?utf-8?B?V1ZrVUxtQzdmeU5udlRkTm8rS2wwMHFkazZ5ME54d3huWWhhS2ZxWUNMem9S?=
 =?utf-8?B?cXpBdUJHOC9pR2lNU3dSaWFEcS9PVDh0Um94b3hhb3B1d1dSNnhnUXArUzRo?=
 =?utf-8?Q?LmeGuIkCiNqRMwGi8A3VpB1UaT88k0Zf?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cjh5Vmo2clN1OGs0a3R1dlc5WkVESkRZZ2d1QnJWbGI2cHpwK2VHSzFaQ2tE?=
 =?utf-8?B?RjIxYVZvUVR3UzkzZ3dVbHNFcVF0MDZyU3MvMmM5cG5tR05COWZFU1lBZlQ2?=
 =?utf-8?B?VU9pVHlMYWlhVzhGOFUvLzUwa3RJWVBTQ3VvL1JjWDFJQmUxeWN4My9qMlBx?=
 =?utf-8?B?RTF1M3VhWEhDc0ZwWFBUT0xXa1V1NTUvVEMySXBlVDFPUFFwYmhyRDFLclRl?=
 =?utf-8?B?TzhLWGF4UjZ1UkZ2TlRESUQxSDJLMEdicGxEY3daUC9jSVA2cmJzWVlEbjhY?=
 =?utf-8?B?eTdGamRlbXY1bG5pS28yVUtHazlPRnIzWThsQklqWWFBQmtGcHcvQys4dVNk?=
 =?utf-8?B?YjBHWjVJQy9YelVpaUVvdnE0Q0hadHhRSWZtOUdOLzFncE5FNTVRdmdWaXJ4?=
 =?utf-8?B?TDQzRFBMMXBFaDdzRGZMZGFmNWdSemlsV1IzZEVvK0pwWlE4MXJNeHJyWHdP?=
 =?utf-8?B?Yk5scWVKeEc0dkJ4cXNQbDVFNjNvSmFiMDN6MlFYcWpQazJWdHZ6VmdjY1lr?=
 =?utf-8?B?UXlNNWVkYVJVWDVhdnZJK0RvSnFlbXRBK0xDRkk1M0t4bDZwTGg0MFJhYmpB?=
 =?utf-8?B?a2dVdmpLWGRoSm5ZSGlKM0E3RkdZY3QzaEQ3bUd1RnF6NzlsRXdkR1hPY2tV?=
 =?utf-8?B?NEd2YmZTSXNLbmQwbkxjaGZQTURYVlIxUGxEbUl0SmVBWGFnTzVhM3BWT3FV?=
 =?utf-8?B?ZmYwM0hhYWpuc3ZzSTJTMFdsVkN6VGI0S25kMGRxbUNKZlUrL0lDZm5ORTZQ?=
 =?utf-8?B?Z2I2TjVlQ2pJWnpBWi8rMEo1bjRpa2gwU3U1YVZwTnJHMFhWeTJyNTJGZ1dy?=
 =?utf-8?B?WUpNcy9LbFJrR2pBcmZiSzRSbUFQOHE5SXVwU0dWVXIwMEJWb1B6cDJwZUVE?=
 =?utf-8?B?WG1HZWtwSHZnZnk5em1DWjEzaGxxUlR6aFREY2RGa05uWnRsT3pQTzBCaXll?=
 =?utf-8?B?OThKdmt0QU4xSlZxQWpyaHZZSU0vazAvV3dXVSttTEVrQWpybC9RRXN0REdq?=
 =?utf-8?B?MTd2MzJ1WER6d0xxT00zdkJGd1BDRTNhNjNNRXBJY1UxVm5PSDk2MnROdGdy?=
 =?utf-8?B?UHd4K1c3TzltOUVRRWx5cDd1aEp6c2FZcm9yNVowQUc2a1V0eXB1dXFsQnds?=
 =?utf-8?B?ZUJNN09La0NhcHBxNTFEZ0doME9EOGRxY0hzSDdlRTFvYmZYMXY1dThHK3NI?=
 =?utf-8?B?WGVybWpKTTB0VGtZS0EyYXBnZTNPT0pnRWhKN3lrblhCRFNPRVpGb1ZQZW1I?=
 =?utf-8?B?aHNHc1hiZnl3SzMzdFBsS05DMEZvQm8weXBwL3IzTnpHdTI5WTE1VS9sMjJ6?=
 =?utf-8?B?cGFZU1NuYWhQRGxWWlI1ZzhtVGNGeDhobmNCdUxDa01wbk1yT1dSRCsvWW9D?=
 =?utf-8?B?SzJjWkVmcGZBNG5BbFNLd1BGUWhwSWx0bkdTYzN4dUIraXVNZ2h1VVZhem1z?=
 =?utf-8?B?WTFBZTNqMnFWWFVxSUc0NzNOSSttWFV2MnVGdUlIRkF4S1lVWGp1K29Yay9m?=
 =?utf-8?B?Y0JqcUNnUGc5bkRIUDBSY3RHTjQ3dGFTcVZxVGd1L25xb2VVL0FRUnl6dUFU?=
 =?utf-8?B?dVdwRXRLZVV3M1BibjRRcnN6V2R4UCt5VW1mSHlBOW91bXkrYmZsNWlKYkZa?=
 =?utf-8?B?Y0JndlNVOEsyYkY2OVl2S01ERXJtRmgrempsMzdqcDBrejh5RXJvbHpZbmk0?=
 =?utf-8?B?YUtKZGR1aWF0NHoxQTIrK0xjUHh3aSt1Z0ZnMWFZMTNNUGpaZDAzRmtqTmhm?=
 =?utf-8?B?YUpIQjNSMnpCTVNnVSt3d29YK21ON0xnYWxnenJtQVFnNEhhbHB1a0p6NUNQ?=
 =?utf-8?B?bm50S0NBR2I3T2xhTkFaOUx5YTFXRVZGb2U4elJxMGJHRlN0c0cwb3p3UGEy?=
 =?utf-8?B?dTFjTzJCbk12NjJKNzlJZmtEN1BySnVlcnlUWEZ2eFNMZEFLT2ZaQ1JFZ3lT?=
 =?utf-8?B?TUF4RzlBT1hWd0Q0RWRNeUY5YytrMnhnUUtuODhsWW13ZjhVZ3cxMTZadFls?=
 =?utf-8?B?VzUxU21GaGtKZndtajFsRkhhRXp2cXB6WDQ5RDBZenJESWhVRTJKK0tqMVJS?=
 =?utf-8?B?dEpjWU1pc3EyV0JTUnBncXZrcmdYcGlyWDNMc29VN0cwMC80dE93Qm5uWld2?=
 =?utf-8?B?bDlNV0l2c29WN21CY1BvWWdNZloyNXBZNGpITXRmeHhGenJMK0tSUW0zUGVV?=
 =?utf-8?B?QW4vODl4SWFTK0Rqc1BrRWNiN2ZaRzVPMThJcDVEUE5JSXN0RHJRVXdCb01H?=
 =?utf-8?B?WU1QbkJBZjM4ZGlCZzJoOU1qZURRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A77876A55A58814EB6A3EDD9135207A7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8235f2a9-adae-4357-e41b-08dd75ccd81c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2025 12:08:01.5930 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UBZVWRiimGkAtZiSk/21qG9uXIRejX9zv1utyTWi7WC0uos+7+SCnTMjBMG52/B28t1Ffp8UewonfmbqZ+DsO23FEXrNa7pqeCpZjHlyUjU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF97652A3E1
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

T24gTW9uLCAyMDI1LTA0LTA3IGF0IDE2OjU1ICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDQvNy8yMDI1IDQ6NDYgUE0sIE5hdXRpeWFsLCBBbmtpdCBLIHdyb3RlOg0K
PiA+IA0KPiA+IE9uIDQvNy8yMDI1IDEyOjA3IFBNLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6DQo+
ID4gPiBBY2NvcmRpbmcgdG8gQnNwZWMgVlJSX0NUTF9JR05fTUFYX1NISUZUIGRvZXNuJ3QgZXhp
c3QgZm9yDQo+ID4gPiBMdW5hckxha2UgYW5kDQo+ID4gPiBvbndhcmRzLiBCaXQgMzAgaXMgIk1h
c2sgQmxvY2sgUGtnQyIgaW5zdGVhZC4gU3RvcCB3cml0aW5nIHRoYXQNCj4gPiA+IGZvcg0KPiA+
ID4gTHVuYXJMYWtlIGFuZCBvbndhcmRzLg0KPiANCj4gU2VlbXMgbGlrZSB0aGlzIGlzIG5vdCB0
aGVyZSBmb3IgTVRMIG9ud2FyZDogQnNwZWM6IDcxOTU2Lg0KPiANCj4gVGlsbCBBbGRlcmxha2Ug
dGhlIGJpdCBpcyB2YWxpZC4NCg0KWWVzLCB5b3UgYXJlIHJpZ2h0LiBJIHdpbGwgY2hhbmdlIGFj
Y29yZGluZ2x5Lg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiANCj4gUmVnYXJkcywN
Cj4gDQo+IEFua2l0DQo+IA0KPiANCj4gPiANCj4gPiBHb29kIGNhdGNoISBJIEFncmVlIHdpdGgg
dGhlIGNoYW5nZS4NCj4gPiANCj4gPiANCj4gPiA+IA0KPiA+ID4gQnNwZWM6IDY4OTI1DQo+ID4g
DQo+ID4gDQo+ID4gU2hvdWxkIHJlbW92ZSB0aGUgZXh0cmEgbGluZSBzbyB0aGF0IEJzcGVjIyBp
cyBwYXJ0IG9mIHRoZSB0cmFpbGVyLg0KPiA+IA0KPiA+IFJldmlld2VkLWJ5OiBBbmtpdCBOYXV0
aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20NCj4gPiANCj4gPiA+IFNpZ25lZC1vZmYt
Ynk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gLS0t
DQo+ID4gPiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jIHwgNSAr
KysrLQ0KPiA+ID4gwqAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92cnIuYyANCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92cnIuYw0KPiA+ID4gaW5kZXggNjMzYTY2ZjZiNzNiZS4uZWQ1OWU4M2EzODU3YiAxMDA2
NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMN
Cj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4g
PiA+IEBAIC00NDQsNyArNDQ0LDEwIEBAIHN0YXRpYyB1MzIgdHJhbnNfdnJyX2N0bChjb25zdCBz
dHJ1Y3QgDQo+ID4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+ID4gwqAgew0K
PiA+ID4gwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+ID4gPiB0
b19pbnRlbF9kaXNwbGF5KGNydGNfc3RhdGUpOw0KPiA+ID4gwqAgLcKgwqDCoCBpZiAoRElTUExB
WV9WRVIoZGlzcGxheSkgPj0gMTMpDQo+ID4gPiArwqDCoMKgIGlmIChESVNQTEFZX1ZFUihkaXNw
bGF5KSA+PSAyMCkNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gVlJSX0NUTF9GTElQX0xJ
TkVfRU4gfA0KPiA+ID4gKyBYRUxQRF9WUlJfQ1RMX1ZSUl9HVUFSREJBTkQoY3J0Y19zdGF0ZS0+
dnJyLmd1YXJkYmFuZCk7DQo+ID4gPiArwqDCoMKgIGVsc2UgaWYgKERJU1BMQVlfVkVSKGRpc3Bs
YXkpID49IDEzKQ0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBWUlJfQ1RMX0lHTl9N
QVhfU0hJRlQgfCBWUlJfQ1RMX0ZMSVBfTElORV9FTiB8DQo+ID4gPiBYRUxQRF9WUlJfQ1RMX1ZS
Ul9HVUFSREJBTkQoY3J0Y19zdGF0ZS0+dnJyLmd1YXJkYmFuZCk7DQo+ID4gPiDCoMKgwqDCoMKg
IGVsc2UNCg0K
