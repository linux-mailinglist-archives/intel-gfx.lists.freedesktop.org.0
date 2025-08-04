Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2CCB1A552
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 16:56:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BDC910E584;
	Mon,  4 Aug 2025 14:56:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X6qTnd6r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB70410E584
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Aug 2025 14:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754319374; x=1785855374;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=q/hX4wH3i0D22DMy8fkoUiAj4QcVEt/FWrUsPr9ixxs=;
 b=X6qTnd6reLLaw/RUl28SkqnRHuLbttbVHBtEv8aT999iDzNq1Md2El46
 VSzKcAbPr+MnbwmED/ouNOWuk68lNZ0a/w0BGNb3mwg0h1Nv5VIeSh/nb
 UpVjfGXUjClfYqjdvfOU8XFRhwsBXitDvnyUucNndcg2VmAv48ct6HWDa
 +kn4GErRFwpYrM5Bv++pmdqYaz5jgthR2EdndDXpPNLnIwDrsD/jziqnn
 f40L8yG5IAUUbWDfTdDET6rv0isW9yWU1y6mTWnGqm9AvRsT2IHp5kHGu
 xxG9aQSnHDGMEh4M5LTAXCc4D2dC8yLbm3P3CEDJF9uRmZtDuYPWonRlb Q==;
X-CSE-ConnectionGUID: ljlD/P/nQYOeAvi0w4l4sA==
X-CSE-MsgGUID: eNyyWUSxQ4q/xk0bbNU/CA==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="67651264"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="67651264"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 07:56:13 -0700
X-CSE-ConnectionGUID: wZf2CTSjQlyjPnzIvqodzA==
X-CSE-MsgGUID: 0iXVU2U5TxiG9k2O5IF3cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163733531"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 07:56:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 07:56:12 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 4 Aug 2025 07:56:12 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.44) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 07:56:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MMDLT5zeRw+Nwq0YLBJLqVrWdwTdkoxk6MiTLtOlPTyt1MEU9Ifx9+phLhYQ8D2RHfzlvwGtdGbh4viJOz6/CUut6XkfWEQXghvHIUTUE/aNC77dxeShap78+Prnj7hLTjIz9dqKF50u8t/AsDQ+VblDmocqzBH8e0mSGAhZfGqWXk1wgO3EmHtiwvorlez42bsCjFJEetii+RQH8e2s3HTTSiHd3IWub2s7G6yNWrvA3+2eupP9QO1CSUadT1o3AKaXGcJFVgsY1XhT9qEaToYvh+gKP/PeVtNeuC8GxnATflVfucGBk6Wdu3wfnzxIpZK6iRnnDQ5a0LRqI1NN/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jJNsYTM4gKRvUoKb4gb5HVm2jLDzChKpM5sXFdsI6ms=;
 b=TE76oV8/iDHLNU/DvBWPOT2uLhE/zPW7qWIbuK2nKqBBqwgqoPSdESyJscVsE86hoM/jZcCMzXn74YEjI/1QDog46CkBsM11Wd3iHto8AkW4PD2t3Dr1J5GYDRMwV4vxWiSLEV5eYPm7G94RSFw0pM8aMRPKZz5UkN6fXmLXsFQwXk3j+Qi/TTX/I6H83W7mOmdREbWmP945NraHhXE1qzfn3yIj+GymMMrX24AOwPFi9LLavFvZ9I3WoQho6R0dSRCzcaSdDcQDNOHJD60GvjRat7mYf9e6/YgNlcV3W2ed5yWgmo+kIrXQufwJac723K6cHViAqCegtOoNJZJnUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ0PR11MB5119.namprd11.prod.outlook.com (2603:10b6:a03:2d6::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Mon, 4 Aug
 2025 14:55:55 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8989.018; Mon, 4 Aug 2025
 14:55:55 +0000
Date: Mon, 4 Aug 2025 14:55:46 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>
Subject: [PATCH v2] drm/i915/gt: Protect against overflow in active_engine()
Message-ID: <ifjlp3lvgfd47mkhzg2jnsyiwfofzqj5liuj7u34r5uel7d66e@d3mar5w3hhp3>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: DUZPR01CA0017.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:46b::8) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ0PR11MB5119:EE_
X-MS-Office365-Filtering-Correlation-Id: 7397f313-4613-43f4-5b66-08ddd3670372
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZWF1eHROVk5NODRRNHdFSS8zaFk1ZW80YmYxSUtHdmg3VnVnUUpHZnhpdGRD?=
 =?utf-8?B?Q3c4Z0ZMQU1iWUJSOXgyRlFjKzhBakdxb3pTNTdPR2xyOUNSc0pVR3JZUWFD?=
 =?utf-8?B?ell4bVFIQ3FhV3ROckduSGtLMTZrMTJ6QlNFSGRoaTduWEo0V3dkUDBpUkla?=
 =?utf-8?B?Sks4OUM2R0pBSWNGNlZTalNrei9oVVhBbk1vaStrMm9JenFBVDE3R2ZZYjBh?=
 =?utf-8?B?ejVPczNudDRmeXg5d2FIMmhnZ0NrNG5aenR5L3AxSHVSZFVySzZ6eDF6NmJH?=
 =?utf-8?B?MHVidTZhMUIxRThHRklsaElWUXZsUTQ2b2JnRjFRT2xYT1NKVjExaWtFbVht?=
 =?utf-8?B?RnlvYm5RWWFndER6ZytmVWdoSmdvWVoyY1M0bWduYXYwc0MyMG1qY1V2dmxT?=
 =?utf-8?B?cVIxbU5Ec2NDdnRqM2h6aUN3K3lrbVpyLzRmY3ZSSVRmQ1ZpV1NZc2w5VGhl?=
 =?utf-8?B?ZE9NMzBERjZGU2VtdjdCVVZqRHl4U2xyNjc3SjhWK0MvR1JuYThjZmhCTE8w?=
 =?utf-8?B?QXVVU29HRkE1R3JMeHRkOTl1TUNDOXBrR1dBcnFnWTBYWUdZZmpYNG5vNC8v?=
 =?utf-8?B?NFk5MlUrVVoxN1RYQzhXRWtubStuVzUxNG0zUTdZVzdaRW9CY1FITmJQSWRN?=
 =?utf-8?B?bnpaYy9OejlCNGdhQ1dDdUVTYTlYS3RpVXg3MG5yQWtvOG41aVJZZDBjbWRE?=
 =?utf-8?B?OWhWU3hlamN5SFF2RFp0N0FsRXcvSFVrTVhSNFdWTlVlMHFQbGl0U0FSR1VC?=
 =?utf-8?B?WFM5eFhFZmdtV2RzLzhGVUlUT2NlREZabmRvQmhFZncxT2M2WitkV3pRWGZH?=
 =?utf-8?B?SG92eWF3OG9kN1BTYUJMRkFSWUpOZy9IWTVxOFMzNHY3VTJXMXJ4MzJrN3VH?=
 =?utf-8?B?SUtXSzRwbm5MVS9UK0N3OS9OUEZhbVR3eDlWaHV1S3F0NG5acmhKV2E3OXhQ?=
 =?utf-8?B?REFSbktYZFlOSHdrK1Y0dXF4RGI2VzFkcG9rR0dFWVhQUjJMdzdScTR2VTZI?=
 =?utf-8?B?QmhvKzJNeUtrUTRlajE1MEs1SVZFR2xpOUc3S3E0RGU3Y01jdUZqWUlUTndJ?=
 =?utf-8?B?NTBXRHo3cU9zTDRvVjluNGtwRStLdkI0OXA2bkZ0R0U4NGZURWpPdVBHY3Ju?=
 =?utf-8?B?VXRvTGxwME1OVnhIeTJsOCtSN3F3MFVoZWwxbjFHYTB0SzdEWElITFJidFVO?=
 =?utf-8?B?eGJIdWJLMFVTbDZmUzNYcGNDNndOM1FUcE5sTFAraVJoSGxMajlSTGJmeENE?=
 =?utf-8?B?L04ySVdCSUdjdWpwTmlvZkJxTVBhTDBuSExFWjcvRHlpMEl6Zi9SQXBhSGxn?=
 =?utf-8?B?OGowTGVjNGdaRko5M0hUQ2tWVitBdEE2YTZKUE9iUC9uSzllYjAzYngzZm1F?=
 =?utf-8?B?T0xyZmliNXE0WHUwLzhGRXFiT0tEU1MwbGRwM0NTZUo3RnpJa0pHMXY4S3k3?=
 =?utf-8?B?eCtDdW1RNUNCYTJLWGJLempZNkJmUDdDRk9qYnkxRXNPUFZ2NnlSekduM0Ew?=
 =?utf-8?B?R3BYTFlraWtmSkx4SDNRR3BOQ0VPREJPMytna3ZOZXljeVNWamlqQzlFV1hT?=
 =?utf-8?B?dGlUbThHV3JXKzBTOHVZM01ENWNlckEvSGN1c2ZWZ2Mwc3MvMXZ1bHBXQ1hL?=
 =?utf-8?B?T0J2NFJKbnFrbWluZ09xOTdWbjFZc0ZMMk5MWk0xdFBGMlJFZmhxMjZRZFd2?=
 =?utf-8?B?UmJudWxsamVaMDh0Y3BuUHVXc0JUVkk1UjYwVlBkZnZlS1NxSkR3eXdVZWo2?=
 =?utf-8?B?MnZycE9BMFd0QnRKb1p5Slk2OSsxYXVsSVg1dTNBaFZVMlFGV2duVnoycndU?=
 =?utf-8?B?dWpKa210QzQ1alZKbjB1M2ZWSHg2dTB1UU5taFl2VXh0WktQU2hsME1YNXBh?=
 =?utf-8?B?K0twV3RNWTFpYm1BMWJQZnYvVW9CMlFXb2hWNlNQMVlndVZFaEdxNURpQlZz?=
 =?utf-8?Q?rMrl1xxY9gE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2FUbTFrNndZVlQ0dThuRFFOeWIzb2dwcmNoSGFFNmFoTStvU1UzaCtkSTRF?=
 =?utf-8?B?Qkt0NFB1eFNEUSszWWVGWG8xaHk5R2tMVkNTUjlIbHFoZ3FiL2FaaXZKRndB?=
 =?utf-8?B?YUtMZUoyV09xbDd6T0hJc2tMWHRKalYvVTBHQ1kxVkhJbUhaeGtaTGJvMlRS?=
 =?utf-8?B?Nm02SnpvLytqNndna2JkcW9OeU9rMHBqUEsrdXFjQ3c0azEvNkU5Y0YzNmMw?=
 =?utf-8?B?TkZPMjVhMkdQWW0yS2J1T1pmanA3R1hreGJkMnVSaXFPaStUWUp1SUlnV3l4?=
 =?utf-8?B?VUtwS05Bck1saVhSSjRMT1d2WW42MGVqUDg1TTRVdXRkc1NTVjZYWU84enJq?=
 =?utf-8?B?ekduUXhveWFJcWNMZ1JnSDZoVEhLQVphdm1YRThmVmpIRGd6d0xENXBGSTNy?=
 =?utf-8?B?N0c0SjQxSlJrZmM4ZXZwYUpzU0NvdzN6bG9hWDBPTUJ5djN4WW5wR0lWRklv?=
 =?utf-8?B?ZzdmRDZlclErNlI3cTVBMmxhYnQzVk15eFJ3K2tGeTkxNkpOQVdwYlZsbml5?=
 =?utf-8?B?NGVjOHp2a2EzVmpVU1dPRzZMZ0ZvRUo0eGtUUC9WWTVmNXJZRUNYbGpNVkE3?=
 =?utf-8?B?N2lBSkliNExpa1BKUVI0aC9tejBwcFdCZys1aXpiZ3M2NDFDL0QwNVhzSHAx?=
 =?utf-8?B?Y3hVY28xSnVtVXVYMGxQZG9HK3pjYnlGWVZDRUx1Snp3YTBvcU9GKyt1NVBB?=
 =?utf-8?B?b2ZlWXlBTEtMT1BYYUppcUZjc1k2eTlMdzI2Mk15MlREK0pkNFhCcExlUXBS?=
 =?utf-8?B?c3hYR0dTbnozSmt6czErdEd1OTNpVUJ6bkRSNFRtek8zdmw2RFYwVk50NnB0?=
 =?utf-8?B?RndKeDQya0EvNEdRcHlSNDBWbTdvdERHRllJeXdxYTJ4TUVKNFRzUVYzNWhG?=
 =?utf-8?B?M2dkWDNHbnRKSmE0RnRVSjR4SDdJMDZoamRHcDZwdjMwOE04czJxRjEwcUJz?=
 =?utf-8?B?cGVyanJYczRheExaRHVwL1Fybmo0U01ZcWtuNTB3K0MydlNYdDZTQzBSZ01k?=
 =?utf-8?B?cG1hOFNzQ2xEdFJIRWRnUStzeFBxMmlzeTRvdWVJUUErUU52RW5sZEhJZHlv?=
 =?utf-8?B?LzJXQk5wQU9xSnBGMEZ1eVZuSzkwaFExUDE5SlZLa3p3eHBMMjZFci9IeDNH?=
 =?utf-8?B?TURMVTVWTW9MSktOSllLcUZXbnlNV0Zqd0IzQVlXUGEvOEYwOXBMN0hycVFM?=
 =?utf-8?B?U2dISFpEMVM5S0dtZmw1aWFuL2w5N1dMa25iWDB2VDhURTVUK3VLVk1BQ0ZL?=
 =?utf-8?B?aUwzbGRtM1hYSXgvenFCSlJIV0NtL2ZnL3dOTGxteWY0NWlHWjVVSFVuM1pS?=
 =?utf-8?B?aFBLaGpJTGRmNit6RUZyMkNjcEJzeEtLZmtQbHJOWXZaeG4waDQ0RGcxMjBl?=
 =?utf-8?B?N29sQ2FEdWo4YXROMEI3YW5lWXduTFo5N1ZyYzNJN0V2M2dFOThyVThLU25x?=
 =?utf-8?B?YmxUc05OdFNEQ2cwbkN0UzZESENBWXNMT3BuUTZtNHJDMFAwdG84MExobnl5?=
 =?utf-8?B?NTAyb0FQbGxTaTBTcThJWEdKUVZpRk1sZnR0UUt5NFVLZ3hkcWVhbWRXclp3?=
 =?utf-8?B?NW45dEJZdjNYSUxscmZXU1JqOWE2ZVRmaWN3azFBcTRIQVJxTFh3aERlWGlS?=
 =?utf-8?B?SkcrYkQ3VmEzenYwc3kxT2E0Ty9iTWlYSUVRdElOOFd2cGNidUxSNkJCdThU?=
 =?utf-8?B?clQyb1JQdjZpSUlrZnNZRjIzdm8xTXZxYkJrcnhLRTRVajdjYkphdXJyMHQ3?=
 =?utf-8?B?YVZnVVp5aFczRnNod3hxaDNQbnZuTUVBaG10RlpySDRRL2NPdUxrL2p6cWtP?=
 =?utf-8?B?MmtXU2NMeHJ6VVBSanBKczBmU3JzaldSVWNjc2RmWFZqa2dkSmdQNUlvTDlJ?=
 =?utf-8?B?cEh0MzdrcDNrNDhKK0t2ZXMzSkdmOUhkMjEzdEpFbmZTT2VQQlJaaEF1QTFC?=
 =?utf-8?B?NDNtdmU5cVJwK1FzUThNeDF6MkE2c1lMMnNUL2lpSXZrZFJuNUlPc3R5MExR?=
 =?utf-8?B?dEpsbi9xNFdHaExhOWJ3aWRydjRCUmxqaTVROVRFK29kMHlQaFZyc2JVL0d0?=
 =?utf-8?B?WCtVWjJyQkxHT1B4YmJ6QXphYUdXSy8ySjRNMllkVjZCTnNPdk5CVStuUXBO?=
 =?utf-8?B?V3pnL0g2V2U3NGNkS3dXbVhUbkpleFYrOWlxd0hnM2hSQ0lPZ1ZZeGZzVUdy?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7397f313-4613-43f4-5b66-08ddd3670372
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2025 14:55:55.0942 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QqHVmaU3Hoc2IyrD3lGPgryW+knqYGyexwdxYQIDJCoMeEcKDLZ5F5F/oC0EZqohYgzwzIHnHbpDvP3FJ0LF5glmV7Z/lU46/R2DW2ltPqw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5119
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

It is unlikely, but possible for the first call to
intel_context_create() to fail with -ENOMEM, which would result
in entering the following code block and decrementing "count",
when it is set to 0 (initial condition in the for loop).

Protect from overflowing the variable by replacing "while" with
"do while" and using decrement as postfix to make sure
intel_context_put() fires at least once.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---

v2:
 * remove unlikely() - Jani
 * replace "while" with "do while" - Andi

 drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index f057c16410e7..4ec97024665a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -904,8 +904,9 @@ static void active_engine(struct kthread_work *work)
 			arg->result = PTR_ERR(ce[count]);
 			pr_err("[%s] Create context #%ld failed: %d!\n",
 			       engine->name, count, arg->result);
-			while (--count)
+			do {
 				intel_context_put(ce[count]);
+			} while (count--);
 			return;
 		}
 	}
-- 
2.34.1

-- 
Best Regards,
Krzysztof
