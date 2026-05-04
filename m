Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BnfBDyk+GmxxQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 15:50:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9B64BE08B
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 15:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BD1810E6EA;
	Mon,  4 May 2026 13:50:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OjH9KtVH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2FBA10E205;
 Mon,  4 May 2026 13:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777902648; x=1809438648;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5YZHzT139d+LHTgJxAa8kA0dRzr6exlnMaOovUconIg=;
 b=OjH9KtVHGQSi7O6UNIMyR6B09OGqbhfoZL7pcxXfEWZJWZcvTGGuqAvt
 s8DnDIxbBDHl1sjgztvW3YTdwCTwycz53+nUGVcU09xtk3E8QFQykrGta
 LHbMOkhAM1vDrLb1UH+d0O5kqjowr9JaqK4pvDa01UYGQvGn4K+gx+wLF
 Dy3JinKxzpipQ8ZP39T/gi+VHcDUD75KhPrObaC7REMcemKxNVpj3XIyE
 MbcfVxRciqG9pdLqVRKZX2KhU4g1o+6M+Af68EihfCYzbnpY86nnOiRU+
 jAyYTeuaFRZNNYND2IRKtpA+F1UiGpT5nrlnBmmDxTcBmXdZnDyMKKfT/ A==;
X-CSE-ConnectionGUID: VXCG+npNQXm54g/qqyKfWw==
X-CSE-MsgGUID: a0OdhzziRBaGJpIwowJEtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="90215862"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="90215862"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 06:50:47 -0700
X-CSE-ConnectionGUID: fcJo1OGlSP28OD01XfvaWQ==
X-CSE-MsgGUID: /aHGL63LQLGQ366ul1AFBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="232859724"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 06:50:47 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 06:50:46 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 06:50:46 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.9) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 06:50:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dH+7MLnxeDo+vOaHTgctUhxlW3U0WLhXaEdp+9m2JCuyDfNoiLEC/NpGFNuNX9Eedue8HLH0h8l9VPLu2prJtSn+4t8DsxvvfU5YHCcukG1zhgpPnh23LpvR/DSjV3K48z4G+QUcL/nDDIhmsz3SqlKcmxlhVgp2EC8hRALlcyvii9Fh0juO2CN/LxsCsagBNMdAJD0Y1Zi4vpzqFKwvlSRYuhRq8UJcFMm6LlyPRpjP3XxDS8uEFbwG//CWL2UeZCSWSRXrKPdLWjlLD4NLUj5F0uGa8LO8+gIWXxU9bvRNg4egQPIjzVcQ1Qy7AMjKDe8NGjdbAc24wkVx7oy+ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gB+dswHoOR+lnyBL4FbTC7DOAlrfGxfp1Il/B8NKSSo=;
 b=dgMRuucrK5tst1FcKbtyevdUkCPlJOibviIoxMB2M4YzJ0oc6Kthlb8749Ou3N9XxMH55TWD/cFPln0YNKQbVtwD4m0QHMzv/SV7dd7rvk4cjdTt/2Eh6T+HbvBOsAZdZk1ULYNoJluH7GyhpoTxv+sb7GssjRDgt+l7SiUMWMQ4UwVemkfRwy81Sy/zMb1a3g2LJEdYTdI+qzBtTP1ORBMACbDut2VKEEpcZqqcrz7CuV6IA6XmJGA5/V4blxAswtxkwhfuKjB0oYj/wOt5vi3vi82ofiVXInLT9UpQ0uJk9a+2zeSvGS+rZSUgxs9Qpx4tVwfgQUXI7hd4uMn9ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7749.namprd11.prod.outlook.com (2603:10b6:208:442::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 13:50:43 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9870.022; Mon, 4 May 2026
 13:50:43 +0000
Message-ID: <d9b7108e-2902-48a8-9ffb-08043812400d@intel.com>
Date: Mon, 4 May 2026 19:20:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] drm/i915/intel_panel: Avoid calls to
 intel_panel_fixed_mode() in mode_valid
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20260430131220.3891497-1-ankit.k.nautiyal@intel.com>
 <20260430131220.3891497-3-ankit.k.nautiyal@intel.com>
 <DM3PPF208195D8D1843C2EF191CBC73406EE3312@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <DM3PPF208195D8D1843C2EF191CBC73406EE3312@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0160.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::30) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7749:EE_
X-MS-Office365-Filtering-Correlation-Id: 66dd74ac-6ac7-48f9-7457-08dea9e4226d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: MUfWSQYn4xoBXSTtNAZlMiTNzuNkH+NedBecn1ZpsaSSA5qW0R1o0QI5e665T++uwdDuad5D86/Iwv2/8AzJ1nmFGlLsmfuAnN/mxtA51I8m4G8GrYd1GWxjY1XmRGwIcIfQeLFJQSs6A+DhQB3VleoopiTZJD/3keZu+h+KP3YWAVECoBtEktfNFqqPLbjuWKleym+k0WybFotpFelBxWV4wV1tzbnHcEaN4bcu1h4BvT0u8fZS+yfIDyp0d+ZlEYvsB+8TTgGlNoQItjDj9UwRr7p+V7yNhDp7rhTKsf4c301m/1faLoszqRSKhAikOElB3Mtt8czegKgV7/w5kr43lvxZHF6ZTj3KPSM1IBzS2KNIn0Y+bm2j7U4aIuBtmq3nTdF+8zADOOZEpnXMjiLCAcs870hVQSe13wk9VIueX0w+a5kGvPoPeEmUrNANYlCQRZ4th+bOUulPQNAwzHGfEraX+iKEnZ78osZAhEwvtyPXssFedPiwMQUqQmrarKila/B9xrPvxOll/wUQAjo52Pvu0xp8jvTSvkNIbYWjxJge1CPFalaPLSjvpthwrkJooHGq5DFmEdGwLqBz8eRtVuF69VdKZ4B2SvULWjM6XIdH3f09T1y9cz+1lZUTmtJcWNmY95cRVlBkPLY0tui1r7NAQA0Fs37lsPpJJ9jeDd3HNr5btTJcaIe24peL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUxHQ0NaVnhrb1EvejZjZlhldlFCMEpOVS9xNm1EejBSc2tRRlZ0UTNwcncv?=
 =?utf-8?B?c2h0YzlqMitSNkYydFhDOWtyTlhOMjdxYmRndmlaSjdpWkNkZ3ZzRm1HMmlv?=
 =?utf-8?B?TVZ0b3c1MkxnbE4xeHkwbG9XZ2JveEZWVUdXZEVBMmk1NTczOUIvQzQwbldJ?=
 =?utf-8?B?VURKcXRTTGpvckl1bTJsR1ppc1h1VlFjak5FTHBrUzBqZjYrdHRyblJDQmhB?=
 =?utf-8?B?QnozMnBNMzllaSswMHVLVjU4bGd3ZFZvcUIzdWtKdVlxUjEyUHc5UyticXBq?=
 =?utf-8?B?cklUL2sxc2E5MDkxVlhvNUI0MlN6di9TdmtFTXJ2Ti9NcWJITk12UTFnc3Vk?=
 =?utf-8?B?RnRGZ0tpSlpVbW84RnNFR1VISHFPMGNTZFRPMmh0Qy9jd0NzczhNeUNkdWxV?=
 =?utf-8?B?YUVZV0wyTjh1Z1JuTVpSTldoZnhiaENFQ3AzUm1Fa0ZKZDQrT1B6cEIwTDFu?=
 =?utf-8?B?Wkg2MHY0dTBoUk0rTWVqSTFWVkJteDUyQTJBdUZHZXZyU1FGLy9GR29xQ1pF?=
 =?utf-8?B?SmhQZUxXNVF3eUlMM3RoTjBIb0hKNjMzZ2ZHTkM3RUZ4d012TTZWZG9ZdjRi?=
 =?utf-8?B?N2FPbUYrak0yZUxKUFVIWmhBYVNWeVdUNjhWc3hOVFFWRjJGSWVWM2FMV0Qy?=
 =?utf-8?B?cDNRa3NOTHFiR3gwaUFJMjFpejVFdzRNcWZPV3lnM2tObTJtd3AvUUZ1WWdI?=
 =?utf-8?B?R2owNDJKM2orQWhHaDRUY2M1eGIzR2M2SGpDTUFweklsa3RpaG91MmZNUVl0?=
 =?utf-8?B?V2dsUWFmZVRJeDZJaTJRSVk2NnFNSkxFbllxbjlNQm9hTE4vK2pKTytUa2d2?=
 =?utf-8?B?dktpejBKMWY4MHNHSCt5dGt2UDJWWUNtVkdUYVJSTjZmNGF5aXhoWG1FZVFM?=
 =?utf-8?B?WmlQK2xkOTdncTJXYXc2YnkxaU0zZk5mSE8vdW10aG5xVzhMOGNWVWVLN0F1?=
 =?utf-8?B?STlzcU00WkVqMDVITEtLVkFiZDM1eGM5UEJ2TUdVUDkxTlJET2RHM1BRMGZ3?=
 =?utf-8?B?UmltbS9ZdGZwdzF5M09Jak5XVHducUxCSWVkblFUZjBud3ErQUxpLzcyNGdq?=
 =?utf-8?B?cTRUZEFHSVRyV3lPeStRbkY3R3J3a2tvMVZLYVI5QUlUSkpGRDFaZC84TFdO?=
 =?utf-8?B?ZTNDV3piQ3NidXJvLzNIV2FPUyt2aXpJREcxS3RIMTNZcTVvTXB1blhSUk5s?=
 =?utf-8?B?S0tkdXF0bS82bzNRVWttb2w0cTRkTUJKcXFtSkxWb05pS2NSVXhHbm0rbnFv?=
 =?utf-8?B?VnljNkdnMVRXSUtpTDVpbXR1d2xHSlI0WEJ1NEVvUDlYOFdpWTFCU1JnT2ph?=
 =?utf-8?B?NzRZUHl0anRSZllQSktPR2ZMdURHTmluRmdVNFU5ZGd5Si93V1Urd1VYR1dl?=
 =?utf-8?B?WEd4ejlSMERTNEF2UDFkcnJtRUJ5S3I4TE94UVNwVGtiQld0T05xaEo5RWxN?=
 =?utf-8?B?TS92Q3o1QkFPTUlObU9rRDh1c0dwVjBBZHZwenJlUkYwMlBidlpwY2EzNFRE?=
 =?utf-8?B?eVBqV3VIbjhnbC8yOHVSd09FdmVDRW12SzAwdlBGZlo3ME12NGJ0cFNqMWNS?=
 =?utf-8?B?MEpDUnR3MEg0TWVpdHhOSStDdVFtZ2taTlAxd3ppUnpHT2dUcU9kYkRoeGkz?=
 =?utf-8?B?c2FqVzVZckszWkJLSmlaSnJzVFFEemIxN2xVc09XTCtVT2htZFQrUVF5NnBu?=
 =?utf-8?B?eDI4SUlzV0xtNjFhSHVIZ0tXME1lZTdUNU4wR1ZERmg4Q1EvalFQcWMycGRp?=
 =?utf-8?B?TEZGUUtiK0Q5ZWU5UzRYYWdKVkQ4ZmVaRlY2dnNvR3BIWDVlczUxOVA5VmxJ?=
 =?utf-8?B?LzZsMkpsdGxtZnJ1c3NCZTRwcVByUHUwYmNYM3Y0Z1lzRVIva1JQMjRJWERV?=
 =?utf-8?B?UjBiVjhsS2l3YXpOa0RQZkdCVlV2TlhyTVM4TDRlUjNhMzRkQlFmeDIvcXZX?=
 =?utf-8?B?cmkrTEFpM2VLQ2Z2RjVwbVdLYldWM2JOdnRDdGEybEoyZkwzR3BlMHBmNDh1?=
 =?utf-8?B?U1ZkS0VDdW5Ycm8yaklHVkpCRVpXczgzZlBQN0dIS3lmUUdhWEZQVUdEMURh?=
 =?utf-8?B?anB5T295MWRTQk5ZallFczZYZUdiSTYyVndIYm0ya0ZWbTF6TFNMVmFveE1N?=
 =?utf-8?B?RllLVlNtQUp2NTVoUFVIVktRbDQvd2g3UHRaNjVHNkMrc3FzMzlmU1d3S3B4?=
 =?utf-8?B?QjRDdDZRaUlsdXlUUFJPVEZLOWh0NXc0MGowOFhQdjRVeWNwQ0lsekJCT3hz?=
 =?utf-8?B?KzNsOG0wMWY5SmZUc2VBcjFyYVVvUHFCNjFHZlpxMjU3UzVTK2Y3eXB1Vlln?=
 =?utf-8?B?VndmYURRZ3J6MVpJZ0w4aGJhRXZJSG9CbFc0dUl0aG9ZREFyNlZyWjE5WTd5?=
 =?utf-8?Q?f3Zjwo/EGOOzYHWU=3D?=
X-Exchange-RoutingPolicyChecked: vr0aALZG1BB6LzXZCFrzPT4eF3NHU/q12TSrE2U8Ul5zaXM00LtsdPv6dsk9uQt9ss4sZm+ngKS0jMxKXhcocG48UVkPLsSh+UT8FtKiymU1WKXB96r9+L3C/+9sHv9TOZGksc6zsku627q9vvTwzJ7Zwc+yjwd9F3Xd6+H2wPp2Ug8VaYkNGsjQSP8Qs+H7krwYwZiE8cnHmpYd3TSvL7i4+U97UydUuiO98674F/rkOyZa33GQkm0V4jPWXoaU7lXPcVp/hwVs6CmdD7amEs2UdThQr+M+doEDzqWVZUo3AVjpVoYELMucHpe7mp+pXfVNlI+UpyvTu/QnsRjBpQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 66dd74ac-6ac7-48f9-7457-08dea9e4226d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 13:50:43.2054 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jHfiRytWueg5ZCOhtbvBE5zhwPbhsZdNF5OkTovxYE2DoRDwptepp3QXFrEaFRP/T2FZSI0Hakz9H8JPVPIUw3g4noN17bAQuvbj+27zVY8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7749
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
X-Rspamd-Queue-Id: 6A9B64BE08B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]


On 5/4/2026 11:07 AM, Kandpal, Suraj wrote:
>> Subject: [PATCH 2/5] drm/i915/intel_panel: Avoid calls to
>> intel_panel_fixed_mode() in mode_valid
>>
>> Currently, most callers of intel_panel_mode_valid() also call
>> intel_panel_fixed_mode(). This is done either to check for the presence of a
>> fixed mode for the connector or to get the clock of the fixed mode, which is
>> then compared against the max dotclock for the pipe.
>>
>> Since intel_panel_mode_valid() already calls intel_panel_fixed_mode()
>> internally, we can avoid yet another call to intel_panel_fixed_mode() from the
>> caller.
>>
>> Remove the redundant call to intel_panel_fixed_mode() in mode_valid paths.
>> To get the clock for the fixed mode, extend the helper
>> intel_panel_mode_valid() to accept 'target_clock' as an out param.
>> The 'target_clock' can then be used by the callers to check against the max
>> dotclock.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c    |  8 ++------
>>   drivers/gpu/drm/i915/display/intel_dsi.c   |  7 +++----
>>   drivers/gpu/drm/i915/display/intel_dvo.c   | 15 +++------------
>>   drivers/gpu/drm/i915/display/intel_lvds.c  |  7 +++----
>> drivers/gpu/drm/i915/display/intel_panel.c |  9 ++++++++-
>> drivers/gpu/drm/i915/display/intel_panel.h |  3 ++-
>> drivers/gpu/drm/i915/display/intel_sdvo.c  |  8 +++-----
>>   7 files changed, 24 insertions(+), 33 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 8631df908b07..eef85598bcd9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1571,7 +1571,6 @@ intel_dp_mode_valid(struct drm_connector
>> *_connector,
>>   	struct intel_connector *connector = to_intel_connector(_connector);
>>   	const struct drm_display_info *info = &connector->base.display_info;
>>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
>> -	const struct drm_display_mode *fixed_mode;
>>   	int target_clock = mode->clock;
>>   	enum drm_mode_status status;
>>
>> @@ -1588,13 +1587,10 @@ intel_dp_mode_valid(struct drm_connector
>> *_connector,
>>   	if (intel_dp_hdisplay_bad(display, mode->hdisplay))
>>   		return MODE_H_ILLEGAL;
>>
>> -	fixed_mode = intel_panel_fixed_mode(connector, mode);
>> -	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>> -		status = intel_panel_mode_valid(connector, mode);
>> +	if (intel_dp_is_edp(intel_dp)) {
>> +		status = intel_panel_mode_valid(connector, mode,
>> &target_clock);
>>   		if (status != MODE_OK)
>>   			return status;
>> -
>> -		target_clock = fixed_mode->clock;
>>   	}
>>
>>   	/*
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c
>> b/drivers/gpu/drm/i915/display/intel_dsi.c
>> index 9005c1f5d857..3a111f041071 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
>> @@ -63,18 +63,17 @@ enum drm_mode_status intel_dsi_mode_valid(struct
>> drm_connector *connector,  {
>>   	struct intel_display *display = to_intel_display(connector->dev);
>>   	struct intel_connector *intel_connector =
>> to_intel_connector(connector);
>> -	const struct drm_display_mode *fixed_mode =
>> -		intel_panel_fixed_mode(intel_connector, mode);
>>   	int max_dotclk = display->cdclk.max_dotclk_freq;
>>   	enum drm_mode_status status;
>> +	int target_clock;
>>
>>   	drm_dbg_kms(display->drm, "\n");
>>
>> -	status = intel_panel_mode_valid(intel_connector, mode);
>> +	status = intel_panel_mode_valid(intel_connector, mode,
>> &target_clock);
>>   	if (status != MODE_OK)
>>   		return status;
>>
>> -	if (fixed_mode->clock > max_dotclk)
>> +	if (target_clock > max_dotclk)
>>   		return MODE_CLOCK_HIGH;
> Maybe this check needs to be move inside intel_panel_mode_valid()
> I see almost all places call this check right after panel mode valid call anyway.
> This will reduce that repetition. Also I feel "Mode isn't really valid if clock is higher than max_clk".

I do agree. Infact this was the first approach I was thinking about, as 
mentioned in [1].

But as per the existing role of intel_panel_mode_valid(), it is just to 
compare fixed mode to the requested mode wrt vdisplay, hdisplay, and 
vrefresh.

So adding this check seemed changing that semantics.

Also, idea was :

  - if no fixed mode is found the target clock is the clock of the 
requested mode.

  - if there is a fixed mode, the target clock is the clock of the fixed 
mode.

  - Check the target clock wrt the max dotclock of the pipe.

Having said that, passing target_clock as out param also looks out of place.

In all, I am open to change it if makes sense.


[1] 
https://lore.kernel.org/intel-gfx/60dab503-9180-4167-a0f3-b65c7d54066a@intel.com/


Regards,

Ankit


>
> Regards,
> Suraj Kandpal
>
>>   	return intel_mode_valid_max_plane_size(display, mode, 1); diff --git
>> a/drivers/gpu/drm/i915/display/intel_dvo.c
>> b/drivers/gpu/drm/i915/display/intel_dvo.c
>> index 405b33aca9dd..65015477abed 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
>> @@ -223,8 +223,6 @@ intel_dvo_mode_valid(struct drm_connector
>> *_connector,
>>   	struct intel_display *display = to_intel_display(_connector->dev);
>>   	struct intel_connector *connector = to_intel_connector(_connector);
>>   	struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
>> -	const struct drm_display_mode *fixed_mode =
>> -		intel_panel_fixed_mode(connector, mode);
>>   	int max_dotclk = display->cdclk.max_dotclk_freq;
>>   	int target_clock = mode->clock;
>>   	enum drm_mode_status status;
>> @@ -234,16 +232,9 @@ intel_dvo_mode_valid(struct drm_connector
>> *_connector,
>>   		return status;
>>
>>   	/* XXX: Validate clock range */
>> -
>> -	if (fixed_mode) {
>> -		enum drm_mode_status status;
>> -
>> -		status = intel_panel_mode_valid(connector, mode);
>> -		if (status != MODE_OK)
>> -			return status;
>> -
>> -		target_clock = fixed_mode->clock;
>> -	}
>> +	status = intel_panel_mode_valid(connector, mode, &target_clock);
>> +	if (status != MODE_OK)
>> +		return status;
>>
>>   	if (target_clock > max_dotclk)
>>   		return MODE_CLOCK_HIGH;
>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c
>> b/drivers/gpu/drm/i915/display/intel_lvds.c
>> index cc6d4bfcff10..ab6ba08ac091 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
>> @@ -395,20 +395,19 @@ intel_lvds_mode_valid(struct drm_connector
>> *_connector,  {
>>   	struct intel_display *display = to_intel_display(_connector->dev);
>>   	struct intel_connector *connector = to_intel_connector(_connector);
>> -	const struct drm_display_mode *fixed_mode =
>> -		intel_panel_fixed_mode(connector, mode);
>>   	int max_pixclk = display->cdclk.max_dotclk_freq;
>>   	enum drm_mode_status status;
>> +	int target_clock;
>>
>>   	status = intel_cpu_transcoder_mode_valid(display, mode);
>>   	if (status != MODE_OK)
>>   		return status;
>>
>> -	status = intel_panel_mode_valid(connector, mode);
>> +	status = intel_panel_mode_valid(connector, mode, &target_clock);
>>   	if (status != MODE_OK)
>>   		return status;
>>
>> -	if (fixed_mode->clock > max_pixclk)
>> +	if (target_clock > max_pixclk)
>>   		return MODE_CLOCK_HIGH;
>>
>>   	return MODE_OK;
>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c
>> b/drivers/gpu/drm/i915/display/intel_panel.c
>> index 2a20aaaaac39..20c548eea6da 100644
>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
>> @@ -396,11 +396,15 @@ intel_panel_detect(struct drm_connector
>> *connector, bool force)
>>
>>   enum drm_mode_status
>>   intel_panel_mode_valid(struct intel_connector *connector,
>> -		       const struct drm_display_mode *mode)
>> +		       const struct drm_display_mode *mode,
>> +		       int *target_clock)
>>   {
>>   	const struct drm_display_mode *fixed_mode =
>>   		intel_panel_fixed_mode(connector, mode);
>>
>> +	if (target_clock)
>> +		*target_clock = mode->clock;
>> +
>>   	if (!fixed_mode)
>>   		return MODE_OK;
>>
>> @@ -413,6 +417,9 @@ intel_panel_mode_valid(struct intel_connector
>> *connector,
>>   	if (drm_mode_vrefresh(mode) != drm_mode_vrefresh(fixed_mode))
>>   		return MODE_PANEL;
>>
>> +	if (target_clock)
>> +		*target_clock = fixed_mode->clock;
>> +
>>   	return MODE_OK;
>>   }
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h
>> b/drivers/gpu/drm/i915/display/intel_panel.h
>> index 56a6412cf0fb..23bd227826c9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_panel.h
>> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
>> @@ -43,7 +43,8 @@ int intel_panel_get_modes(struct intel_connector
>> *connector);  enum drrs_type intel_panel_drrs_type(struct intel_connector
>> *connector);  enum drm_mode_status  intel_panel_mode_valid(struct
>> intel_connector *connector,
>> -		       const struct drm_display_mode *mode);
>> +		       const struct drm_display_mode *mode,
>> +		       int *target_clock);
>>   int intel_panel_compute_config(struct intel_connector *connector,
>>   			       struct drm_display_mode *adjusted_mode);  void
>> intel_panel_add_edid_fixed_modes(struct intel_connector *connector, diff --git
>> a/drivers/gpu/drm/i915/display/intel_sdvo.c
>> b/drivers/gpu/drm/i915/display/intel_sdvo.c
>> index e7aaa5b203fd..7843eb13f2e3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
>> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
>> @@ -1967,15 +1967,13 @@ intel_sdvo_mode_valid(struct drm_connector
>> *connector,
>>
>>   	if (IS_LVDS(intel_sdvo_connector)) {
>>   		enum drm_mode_status status;
>> -		const struct drm_display_mode *fixed_mode;
>> +		int target_clock;
>>
>> -		status = intel_panel_mode_valid(&intel_sdvo_connector-
>>> base, mode);
>> +		status = intel_panel_mode_valid(&intel_sdvo_connector-
>>> base, mode,
>> +&target_clock);
>>   		if (status != MODE_OK)
>>   			return status;
>>
>> -		fixed_mode =
>> intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>> -
>> -		if (fixed_mode && fixed_mode->clock > max_dotclk)
>> +		if (target_clock > max_dotclk)
>>   			return MODE_CLOCK_HIGH;
>>   	}
>>
>> --
>> 2.45.2
