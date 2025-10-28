Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA59C135EC
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 08:51:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D52810E366;
	Tue, 28 Oct 2025 07:51:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QTyxL6ZQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8E9A10E366;
 Tue, 28 Oct 2025 07:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761637895; x=1793173895;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GT18OvrKy0vACor8NaAP76ey/eB+D0mhso2AfDaWycA=;
 b=QTyxL6ZQHnyalKetO07Y/hpF+Lg9n1QOFJMZIdKl14IFnrwCJP4rgN7Y
 cH0tVdc52HmzatPHPaNeRahbGFp4ADB7Wl6wwlAw+AzYgT20uDJiZTITN
 HI3G3BpiZPXwyxt8jmlLZD2Ath+Ao0eiYX+pwe1PYQSeiwHFlizHt+xlQ
 XOGynUvkP3r2CqrI1G69u5HW9UUvJGln7JICTDYhIVZ4i+IXHFi5XUTuO
 BMfbYfVjTjCraHW2XrQRM1jkaJMdEMZkzbivttqAwJpvTT8CO/FIVirIp
 poZR3X4bzJyeVgrbiLPEnfeSrTmcOmJz/2rObRbzOvlkHJgOBo/G5sVmo w==;
X-CSE-ConnectionGUID: Cwk1dZ4tS9CV6QEFyNHTZQ==
X-CSE-MsgGUID: h1gcEbmsRc2iDFBp9RJLMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63617232"
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; d="scan'208";a="63617232"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 00:51:34 -0700
X-CSE-ConnectionGUID: 9pr7Yu9NQfK6kVub6u1TRA==
X-CSE-MsgGUID: D2nD6FE7TKCFbx3ZUNB7RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; d="scan'208";a="185607470"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 00:51:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 00:51:32 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 28 Oct 2025 00:51:32 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.49) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 00:51:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OYwJ/9hyeZJczRwgiq2xHD9+AlmulY7U/WBdp+w2+s4W1j4paT2XV3f6BatvY9crZq7uJVL6JTBAPfqs8bMc5Hl7p0NuwslItJIFIC76pDjxRpHoOOcvtZhnQuiejsR1erKWJMrJeoAH4pzzs4TNwN35ep/hQIbKlBrn9JnNHT32QvEWVTOgtNfTMfqZWBbjLgNrwI56bFJ31GBE4fFnbHZJoqJ1v2dqesBDBDi40LL/xvEo0v4Dvec3wrAfLhCM+SVGO/l8LijaK7HlH+TGtaZiBCf/dxSjMeO/zT0Mr3+1uCyWcdXA9nE4uwwe3k/8CzHOSQ1UWNa2SJz4xfgdaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mg1kD9ioE5VdW6gu2g/lg5UslHPZNA8BQwNQQflGdbI=;
 b=GZPTkqGWrHEkwxjGd69p86A6lgCr2vgqG23hYwUI9f2TuMjwSHVoaex7El55jE5urgOe4Jo6fH6Rqn1Np0PAHBZ0mkshHjrQ2SAAwvNEHYv5nEILOQiHwulW91jLdCh2mZWWGj3NB6sDXouWdnJvpxmLP6MOnv4/pIzzkayR3BH8GYDkUcnIJ/UnHBJq26+UbeJUFv2zXsSq5p5qx88SJmIU8vTB+CNTyNTuwnixrWgNrmGEdEHYyeplUcGvtzlJm0a6/MXSgySc2WH8LiRdbOp/xFJCzr3NTk8RzIT8Q7o00VyGymrUptAeEBvJipJJwkuDS9S+mN9fzZkwc2or4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MN6PR11MB8147.namprd11.prod.outlook.com (2603:10b6:208:46f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.19; Tue, 28 Oct
 2025 07:51:29 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.017; Tue, 28 Oct 2025
 07:51:29 +0000
Message-ID: <3f7e975f-76b0-4ba8-980c-e9e9df7e6e37@intel.com>
Date: Tue, 28 Oct 2025 13:21:22 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/26] drm/i915/ltphy: Program sequence for
 PORT_CLOCK_CTL for LT Phy
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251024100712.3776261-1-suraj.kandpal@intel.com>
 <20251024100712.3776261-6-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251024100712.3776261-6-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0204.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1aa::16) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|MN6PR11MB8147:EE_
X-MS-Office365-Filtering-Correlation-Id: 451bfe87-a9ee-445f-1bb1-08de15f6cddb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a3lFSU01V0NVeG5YSWw2Q1pUREtiK3lQbFJ1TnA2ZS8yR3huOFdRVWVHUk9o?=
 =?utf-8?B?cHlWZUhjVmJ4QmxVRlFmdjZ0WnJSZTk4d1ZuQW1GRjNIRGdaWU9NcStHdHJz?=
 =?utf-8?B?dWdxNktTaW5QMjlXeHRjN0dSUW5yOHlMT2F2b0lDWUNpOGljUmJHRi82elVX?=
 =?utf-8?B?cTVSamJ6UHBPaGRuUmFKbmdYZE5wSG5aTEp2L2pjN2ZXbTVvbTNRT0ZsSlJQ?=
 =?utf-8?B?UVMrYXVHMGRLOUNwOVBFT1krdTZUSTB1VjRvMUg2bzVBSVFBd2lHSlgzUi9o?=
 =?utf-8?B?RjFIemU0ZWw0QXhzYWhRS3BGVDhWMEJyS1ZycVZ5T29HbkhQeFZoOXpraDln?=
 =?utf-8?B?b3ZIS1BBTG5PZXA5V0kzdGlkTmx4d1RuaVA1eWF0dHdNVzY3eSs5ZjdQYU1t?=
 =?utf-8?B?OS9Sc3ArU3JLNVRnZVBBcUlHN0JidnRwTVp4aG8rdDNNLzIvNlhVSGJham5Z?=
 =?utf-8?B?eWNCV0xmVnVwNmZ3UVpDb2hyZjcvQkpPYTV3ekVscGJPU0JPRnFSVHlrSVZY?=
 =?utf-8?B?a0lmaXdGQVM5d1lGdjlqWWtQdmhrNlRhTmZQYVlqdWkwNm9XN3VJOEQ5TlFl?=
 =?utf-8?B?M0l1aXhtVXdGbEQxYk1jcWxoQWhmVzl2UC9ESmpQUHBIMEovOURFQVJoZlJG?=
 =?utf-8?B?VUdPUVdxbzI1dWlld2hROFRIdU1PV0tqYWRQZ0J6OXhlbnlXNGZBdkhBOU1a?=
 =?utf-8?B?ejIyaFZEWFRiNWhYUFhJUTFKV1MzYkRtTHlReVhSQllGUi8yWjdwYVZKZTJF?=
 =?utf-8?B?ZzdmaWhmaE5TaG80VUE5TmNjNktSMCtad0h1RmE5SG1ubDF4ZysxSVZheEZC?=
 =?utf-8?B?bnBBV1NieDFkblFXM2hYU09ONy9hazlkUDRwRDFHQm5iUDA0SFIzYStnZDNK?=
 =?utf-8?B?MFM4QTNXUFZlZE1PLzZYVjhOajE2NDNMMjZQQWN5STBqTGtaQ2ppbjZPN0c2?=
 =?utf-8?B?Y2lVZjRrZnZYSjNwL2pRZVlaRnZWek5jZytDMVJUOWwvUnUyc0Njd25tYzYr?=
 =?utf-8?B?aFNjTkJ4Z3l5Z25mVFVUeFJNME5sRER5SnIwQ1VpcDE5MkZ6cmNML2pxVjBJ?=
 =?utf-8?B?b0VWcmYzc0hYcS9JNU96RFU3TlBWSWVDRE9jKy81aEx3K1E2TkY2R1RhOUVu?=
 =?utf-8?B?ejJ1eG1CdC9yamgyZjBhM3NQN08vZXhZTUczY3FGc1dKVjBSNUlidXRES1l0?=
 =?utf-8?B?cnlXUGRJYWNJUUs1S0VjKzlwSEVXSGJuMXdOVlVZdjdTWWZibDFUVGlxMzhr?=
 =?utf-8?B?bDlaMytFRFVUMXFJQjg3SThnS21OK2xXUjh3VFNwdWQwYzczQ1kzWG5vWHlE?=
 =?utf-8?B?SnUzRGVxK2xLc2k3a004bnZIWjdCcmU4cGpYU2NMbjVjSlJuRFlKbFc5Ujg0?=
 =?utf-8?B?bU95VGlZS2lEODYzMms4WjZMM1NPcnhxaW0yRFZ5cGtaTzdNZkc4bE1heVQ4?=
 =?utf-8?B?VHRiK08wMTFKMGJraXBUS2t6ZXdSd1hIc1FqUlRnSW15L0VaQlhiK0hXcHVV?=
 =?utf-8?B?bS9ka2NYb3N6R3NnamRsVGdSQUJaeGZobWJYV2dONmFGSjFnNVlzLzh2N20x?=
 =?utf-8?B?OFp3dE4zb1NreC9QZlZDdDlMR0JrYUtENVdLTzI2bFNBd01TeTlqdDJGQjlj?=
 =?utf-8?B?RzAvQkNYVU1GYTN1eUtqcjVzV1FJYk9TUGN5c1Z2YTFZc2h5NE5KMUxvNURn?=
 =?utf-8?B?NEx1akp0L2RLbU5McGl5OVVNSzFKbUpPM0pQZWxYQWR1ZjI3NUk1MVBuaTlz?=
 =?utf-8?B?eWVLNThBdVJXT1VJQnlLSVRoUVM4OXlQM0lrRXlRNzBiM0FZUDdOdlpwdlpC?=
 =?utf-8?B?Q1dUa1BsQVFSNHkwZDBTWk1UczQvYWdtZ1IwU0JwT1A5bVZGNHQ5L3NtL0VJ?=
 =?utf-8?B?cy9obWZ4aUhVOWdRZFdSV3RINnJYTXRUaU1uREtPbzBnalBzL1FwUHlibkRk?=
 =?utf-8?Q?6ej0QyQdtlwBw+UQJD3Kv87/KD24HBpv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QjQyN0pUMmJtc3NEUURqZnRNWi9vS2RPcVlCRWZoR2JHZC9aSkhzZkZFOHVW?=
 =?utf-8?B?T25NMHNLR0JzbFYwNnZUV3RIYWo1N1RGVVMzZGJEamtIY1JzR3RYVVp6S0Rn?=
 =?utf-8?B?eTFNcTFBNmhVOFAxOFE5N281NEVXK2FLb2ZINUlJSWtQeE5iQlJScFJ4b0hZ?=
 =?utf-8?B?YU9PQzY2cFRDdHBLN0RhTEFKRkcwTkVOVWZSVFVWMUloUGdWUVBPVlc1NkM3?=
 =?utf-8?B?aUNwTEZqbUZZRk1mVHFzdDd4YmNoak9VRXBXYWF0dzFNem9sdVhzWjd5MWd3?=
 =?utf-8?B?ZTlHek1NanU2QWN2OGJqQXIwQ3JhWEdyWTZEdE1lTXhjNjVHQjBWUjJhbzky?=
 =?utf-8?B?V0U3dGhmZzd3MjMwMURtVEcvTHFvVWFSWWV1c2dkV01WeXNqQWNxMllqakhG?=
 =?utf-8?B?eWdMWnhzSVRuRGpUNC9PZXhoV0NTUmVYQ3R6RTBFajkyQURJeXRZUTBtbkdN?=
 =?utf-8?B?VDdhMURqbG5WMk9rTUhwSitsZEFFa213NC9abDVWL3ZZSmxmdGNMbUpDMTVo?=
 =?utf-8?B?czFXaFVqWVBONDVzRHczWHB3eU5yRDA1dzVTU3lTMjV4NHFyNVhmY0FYVjZO?=
 =?utf-8?B?T0FjTWw3OWtUalMvclBPblJnRjBIMDNyaFB1bk03dDQwazF3SG9QbXhWOFRO?=
 =?utf-8?B?WkR6dm1iL2RvaUtJQ2hHd1RpM0trLzNycmlXZ0Z6MVNZelhxRnJneERFN3N1?=
 =?utf-8?B?ZVZJd014UUorektRTXpUeEx2bWNLM1IwRllmNEJmU01VcXlrS0JYN2plbzhC?=
 =?utf-8?B?S2NxbGNCWHlQTE5hZThWZEw0bkl4cnZpT0dtdFliOEdLY1E2bnp3dy9YMWlr?=
 =?utf-8?B?ZmdMVTFGOG5LWDhXYWY2d0NQS2ZEeWltcXVrbitGMEsyOVRmV01XRDFsendo?=
 =?utf-8?B?TjJFTDBWK3V1Z01vV2swNkdxd0craDhpTTJDS29qU1d0djlXYmNnNVlKM2pj?=
 =?utf-8?B?TzRkemZuR3FtdUUxZjFFdHcweFA5azhERVdRSEJQczF2SUxQaHJuQndoVS9U?=
 =?utf-8?B?UHIwZ0E4Z3JrSW0xenZOWk5DRndKR3l6cHJ3SS9YMzhIZHVhbzh2Vlkwb3VP?=
 =?utf-8?B?RnZ4azlBNDJZQ3YvQ0RVbXp1SGIzOElyTnZXaTRGODdCd2swajF6QnZLdXVP?=
 =?utf-8?B?cXJKMm9hMW9Wa0NPMVFUTHpKQWtVV09VZDB0aVZGRVl5R3BySDAvV0VaT0E0?=
 =?utf-8?B?dU1ranRCbTY1UEpuSWFhbDAwWlo2TkgvdGVMQmpwcUJTMkd3dldURmFSNXpO?=
 =?utf-8?B?SWtnRFp2dGdUNndQbVNTbnR2TFpiK1d6N0xBRHdkb2VxQTRFUGhRZWNwV1ZB?=
 =?utf-8?B?TldLU3U0U1RvZXBUaitOd3FRc0h0TDRZRklaNGp4ZzJDZXZic0xWeUkvTHBB?=
 =?utf-8?B?TG9ycEpvMzZrZ3FvSnFGbXpVOERrMDFGMDlkejZpRHArTTU2SklxRjNwUmpn?=
 =?utf-8?B?WmNIK3dpTVdoT05pNkNISC9jc25JcnNwelUvMWFycXRVRVRReEFqQ0JFRUFo?=
 =?utf-8?B?UTBTeG9VZUlXaUlpc2hPbUoxdFFzbkRLTTk3TWpNdWlUWUxHTGNvWUJNMGhl?=
 =?utf-8?B?cHhTaXozSUcvSEk0MUNOUTdIREUyNjZtcjhnendweHpmcGZMb0pGZWh6N3FT?=
 =?utf-8?B?NlEwdU1Kekx0SXBGektxVlBKTlM1d0Vrd1l6QkttUFd4V0pteWFjYVBMakpx?=
 =?utf-8?B?RmVNZzJBSGVtWXkxZ0JZSGpiVHpIZlJyTEVxQk9odjhmNzZDTS9hWXRUSFJl?=
 =?utf-8?B?eUtKa2dmWjZtS2o4MWxzRlhqUEd1S1ZVVktndlZXTFc2a082VjVwbXhRclUw?=
 =?utf-8?B?OEdjTGlGdXNyT1JwZWVlcUZmRnVYQ1plbWxsQlIxYk1qaXYxbnBSTXRxVUs0?=
 =?utf-8?B?S240c21rRWFEU3p0cGQvOEoyaGZzcytRNmdvQkJydnRFcGtERTByTG9yVVdw?=
 =?utf-8?B?TWJqVWpERjFra0VvUC9uWVAySzB6OXRWU1JxTyt2R0VxMkdyd2VWNENwcUlp?=
 =?utf-8?B?TGxvamxrRm1JR0tMRDZsZnBiVlg3S1pIMzRrWVFkdUtZWjlNUWhVMlIvYndp?=
 =?utf-8?B?c29VNFNjM1hhK1l4c0R5UVVPakhNNTBMeDRvYjByNUNkcndQYk5GZnR4VmVQ?=
 =?utf-8?B?Mmtja0RKelVHSkxXZTQ4K00xWmhoWUk1cHJva1RTc0t0TTIwOGdmSmVjZUdY?=
 =?utf-8?B?a1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 451bfe87-a9ee-445f-1bb1-08de15f6cddb
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2025 07:51:29.6201 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hdcco89wQcpnVzwX12QbJPlHZJqWNCIGif7SqysWACnKX+LYhEKlALdneea7syxrL1SogNBZbc1QySBdNbXFYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8147
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

On 24-10-2025 15:36, Suraj Kandpal wrote:
> Program sequence from port clock ctl except for the SSC
> enablement part which will be taken care of later.
>
> Bspec: 74492
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Arun R Murthy<arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------

> ---
> V1 -> V2: Break patch into two (Arun)
> ---
>   drivers/gpu/drm/i915/display/intel_cx0_phy.h |  1 +
>   drivers/gpu/drm/i915/display/intel_lt_phy.c  | 37 ++++++++++++++++++++
>   2 files changed, 38 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index c92026fe7b8f..b111a893b428 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -43,6 +43,7 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>   				     const struct intel_crtc_state *crtc_state);
>   int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
>   void intel_cx0_setup_powerdown(struct intel_encoder *encoder);
> +bool intel_cx0_is_hdmi_frl(u32 clock);
>   int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
>   void intel_cx0_pll_power_save_wa(struct intel_display *display);
>   void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index c65333cc9494..b6f71425cd19 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -11,6 +11,7 @@
>   #include "intel_de.h"
>   #include "intel_display.h"
>   #include "intel_display_types.h"
> +#include "intel_hdmi.h"
>   #include "intel_lt_phy.h"
>   #include "intel_lt_phy_regs.h"
>   #include "intel_tc.h"
> @@ -108,13 +109,49 @@ intel_lt_phy_lane_reset(struct intel_encoder *encoder,
>   	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_phy_pulse_status, 0);
>   }
>   
> +static void
> +intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
> +				    const struct intel_crtc_state *crtc_state,
> +				    bool lane_reversal)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	u32 val = 0;
> +
> +	intel_de_rmw(display, XELPDP_PORT_BUF_CTL1(display, encoder->port),
> +		     XELPDP_PORT_REVERSAL,
> +		     lane_reversal ? XELPDP_PORT_REVERSAL : 0);
> +
> +	val |= XELPDP_FORWARD_CLOCK_UNGATE;
> +
> +	/*
> +	 * We actually mean MACCLK here and not MAXPCLK when using LT Phy
> +	 * but since the register bits still remain the same we use
> +	 * the same definition
> +	 */
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
> +	    intel_hdmi_is_frl(crtc_state->port_clock))
> +		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
> +	else
> +		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
> +
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
> +		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
> +		     XELPDP_DDI_CLOCK_SELECT_MASK(display) | XELPDP_SSC_ENABLE_PLLA |
> +		     XELPDP_SSC_ENABLE_PLLB, val);
> +}
> +
>   void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   			     const struct intel_crtc_state *crtc_state)
>   {
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	bool lane_reversal = dig_port->lane_reversal;
> +
>   	/* 1. Enable MacCLK at default 162 MHz frequency. */
>   	intel_lt_phy_lane_reset(encoder, crtc_state->lane_count);
>   
>   	/* 2. Program PORT_CLOCK_CTL register to configure clock muxes, gating, and SSC. */
> +	intel_lt_phy_program_port_clock_ctl(encoder, crtc_state, lane_reversal);
> +
>   	/* 3. Change owned PHY lanes power to Ready state. */
>   	/*
>   	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config check enabled PLL type,
