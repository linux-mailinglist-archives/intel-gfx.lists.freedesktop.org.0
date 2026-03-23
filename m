Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHZaEBfFwGn+KgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 05:44:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A4C2EC863
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 05:44:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB9E610E3BD;
	Mon, 23 Mar 2026 04:44:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WlJ7UWuL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 267AB10E3BD;
 Mon, 23 Mar 2026 04:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774241043; x=1805777043;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EG6tZNqPQbH2MRWgaXmvZyuFgq82oD5/JEIkah/cuvU=;
 b=WlJ7UWuL0qo020zX7LIxpmJva5WdURWA+dSQ+KCJchypkTuUrVWk91uM
 ZFJnaTpBnJOC7swIP9OMPBVld2++MsP2ZEZ5SKKVRudKnJVEtIc5vA1kk
 q5SPiLMHJEkZrNhtNXZcMzrRQQWaZBvtKT+5k1i4ZlGshUfP0j8mtPs86
 owI9AplUCo998FoB0ldle6/osFGtBgqQcj7cGe1Gh9JIAt/p1A9Y4kEM3
 0+DxObL5H7OqBlMlwt1JkbrhVxmNiKXUILQABwM8dOb0Iw13O3nrAzmVW
 Ss5vyPlBF9k2KbKBG7iLrmAvJAmzwHDqFrzKOPdFQmzb7j3InXPqGb/TT Q==;
X-CSE-ConnectionGUID: rgN8MlOhQM+yKA8il0hMMQ==
X-CSE-MsgGUID: UH6x/pZKSC6cVhtsxY5SWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11737"; a="79094253"
X-IronPort-AV: E=Sophos;i="6.23,136,1770624000"; d="scan'208";a="79094253"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2026 21:43:58 -0700
X-CSE-ConnectionGUID: TB46MqPSQaiXUPlpJXZcYg==
X-CSE-MsgGUID: eOnCheXBRGioMMoMDlanxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,136,1770624000"; d="scan'208";a="246946733"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2026 21:43:58 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 22 Mar 2026 21:43:57 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 22 Mar 2026 21:43:57 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.22) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 22 Mar 2026 21:43:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RGsT/9LP6SAS/B2DvfgjQ/LgqS8ULRnAXV2pqsRUbzEtXShvFQYRPa/vTi5AhfBPz7KfeFrFelxy3cv+L2w3Sbgq3vJyDF3Sf9rZ9oqprljes8AgIw/EE0zco1gRgSAJsWn8MXhNSgs7h9h0B0VjQTdlTNLjBxCS3LQ6bZGdFF1VfhsOa5EUXTFMcnvQ3H5pL18UnTKTVRjCPcO26JPgVblnMGth4mx17tFcMnsKFQDXQcdr/G8HAwWib5wUmP1uk+WAYSPPcHtn1n4WT70dV97qniY7APtqN5hLS8puSTGjoO4vY5bXL5QgiCA1LPpqctZcd4bJqq86g1UShU0MlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iHy70k6HDvX8+4ShiwXoBFcsAb8J68/H4tYZyWvN8CY=;
 b=mQmf1r08F7HYmvlu7SEOTqQVb3IbiGOklCRWhKQ3eFZNeY39D1SWmgjYKh8SpIBxKxsta70TthtUIRW+NTlyeET3YcdCbffW4t9YVDEjUOnjX5TVKpY0eibv+41vUXOFIlJM12xuW6tBtwN2clJVkj90vRYQCXi8stBRwt+LXcNCNOqUABXTBlpUhupI73QH8BdigkIOB93lyoMOJp1IRrCBWeXfx9L+jwenAE5hbfSAVV2RKcOPaXQC6xeFrOiTtpUsbo99RaREHW1r1CDTmSOeuE8HmSBk6uFoYlshDxYHtF6BapBCco5qoKY2DjBa3wcSPKdiXqGOH+bN/CT27g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by DS7PR11MB7836.namprd11.prod.outlook.com (2603:10b6:8:e3::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.15; Mon, 23 Mar
 2026 04:43:54 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9745.019; Mon, 23 Mar 2026
 04:43:53 +0000
Message-ID: <4d7f5f9a-9ef9-47b9-9494-b7b67c2b774a@intel.com>
Date: Mon, 23 Mar 2026 10:13:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20260317063713.3288576-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260317063713.3288576-3-dibin.moolakadan.subrahmanian@intel.com>
 <DM3PPF208195D8D35471EE2EBE5EA7E3E92E341A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DM3PPF208195D8D35471EE2EBE5EA7E3E92E341A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0280.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1f2::18) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|DS7PR11MB7836:EE_
X-MS-Office365-Filtering-Correlation-Id: e3db5d9d-b079-4a39-3cf1-08de8896c92d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: 5HnpgwNvxUyUEA3PyW0SQc29O79RDRrOFuS9COulOXbX9tWG4EUuklNLcSO/cFm3qQlMkFOz18KlPI9KfVGApCwYm7TjU7reNyEnP8ZDLkjx9/aFhIjRcFwec8JyBv/8Vag1XVCzL/v2jB9noW8D2EmxyacZPICZqCYHzjR9VUWRGRhsXr9NPxJlDQWoHf3A983YQIkO1IPt18OOG3ZLoX/jvsdAUjrELvAYK4j+ZTV3rXw/WxCMdAVFs+lX0IP7mH5ZaZT1guioqmzKDJ7rSDBk6oOS7E2JZwUAqUACaYBcBCt3qupxchLssKBTsxkc3WNngHP4EtVZf5emq+1rHzqG6CHwlqGPxBr3vYlIoE3/7iWNceWH7b2vCYJta1WpnhwqWxA06ZA1ZDi/j/YJnf08wmyjGhJ3dppl4E/w5P9rTMmvqbRUjuttZpvlsFTIJrYwdRAGDAgIqkX9GCGZZ4uWvsq5f7OME4nyKXtmeSuUXGq7YHHRvSO7GTFZuKWSd0HErSg4YxqLxLLZLSn0kVamul5i7b+ZSfkFl9WUgiRJuJFyERs0oZe67QChTsRW47Nup4lnTjQe4MK0tc9zzVaROAU2JOdeUSxXffFI02xatqugzrUCEyDppTDl7uxCHHV1FntbB829KRBLkpgBCx26S/LbHm//qobDf+jXYbPFnt4oCd9V5EXrot56x1hbHa/HBYZyJkY3lfRKz9JGRs+kR/C4hH7R3DYBfrimRmk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SHR3Nk1ZRS9iOUJnajlNcHkxaWVvZG9xWkRNWUlIQjdnMXR6alVEMm1uRlF6?=
 =?utf-8?B?QWNaeTRhNmpFR1JnVkkwR2tMWWk5V1hPQXViOC9oNHJyRlR6SkdMS0tiWXph?=
 =?utf-8?B?YmEybEQ5cVdVU3FCVHVOeXo1UFNyMWxlR1FkcW5xMGZCWkFsSkFGM3gvTi9W?=
 =?utf-8?B?Q2JUeS96NjZ4RGZRVFNKWG1WUlNxT3BLbG9ZVkpGZUJQNkl3YXQ1RnA5dkdn?=
 =?utf-8?B?aEJLcXd4SktQMGJjeGt2U1N2dnpDZVpDOVV1NkYwNjFJd1lWUXdJbDFRYW40?=
 =?utf-8?B?ck5jRFZxQklacm1BRlZDSzEzTldVaUFUVnVoZXdWZDZxWERpOFZ5S1oyZTV2?=
 =?utf-8?B?Z0tZRm1QRGQ2WDJEeUdqYUJSNlNLOTN0N1c0b2h4Njd6U0k1Z3dDY3FEdzRW?=
 =?utf-8?B?VGdIc0ZJLzJUZncxUmJNTE96bzNwa25Oa2ZLL3V6a2VKT3ZJVUxJbERvc3Ns?=
 =?utf-8?B?NkRaVkh2bm5uZTVTNVdJbHY4cDBmQW5wc20rRGR6Z1V3T1l0bFZ3MkNyUkVC?=
 =?utf-8?B?eXdINmpQNm5lYi9qNWkyc3haVlVIZ0UrdDYrTmxJZnk1djA0d21VRkEyVWQ0?=
 =?utf-8?B?bXVpZjVWM1Bmam1pdHNYaHc1SnEvckN0aUZSVEpIQkRra3h2dEpBd0FmMy9L?=
 =?utf-8?B?TzBNVzVDRTdWUjFVdURpUW11Q25pZDdwSldqUlNLR3NnRnRFci96YXNmNkt0?=
 =?utf-8?B?NEJGQzVMWUhZemRaZUxzNkVMNWtNcWpvMXpGSVJORDBXb1JhQWJESS9sUjNw?=
 =?utf-8?B?OEVqMjFqd1FUdHFUWXFiZ2NxU3RrRGRXL3BzQzFPekMrQ2NKaTErU1J0NE9j?=
 =?utf-8?B?MFNhUmJRc3NOaW5UN2pzQUMrclkwZjhhTVUyZFF5WVZRTjVoM3FobVp2Mnl0?=
 =?utf-8?B?cExieVQzeDEvbFFTS09rVGlpYnF5Q09VNlQ4ZEgwMGZCeHh1aTVGV0JNYlhk?=
 =?utf-8?B?Z2JqWnNUa0lEczZSdlA4SlJqaHpUWEwrcU16N3RMcWo1TG12bm5aU2tRNzh0?=
 =?utf-8?B?WDNpVEZLRWp3Ry9zajAxYUhwVUpWa0szellQYVB0QllwRlpJMm1lYzQ5SXVa?=
 =?utf-8?B?aFgxaHFHVGxsSHd3dkpXMjIvS0hrUnBhMjJ4azNKejY0dk1DdEhkQWozaW02?=
 =?utf-8?B?NC9mV2lldHdJS0ZmWnV2citKcUhCN2NoRC9mM3JiaU1Bb2J6aFgxSWVUN0Vh?=
 =?utf-8?B?QURrcXlHeFlzd0ZJQ1RtUFhSRC9aWFBSWks0NzF4UmpLbnBwVGJhRXFVVngv?=
 =?utf-8?B?REJXNWVxZXh2VElUQ0tQSFY5MHpEdFBlZUcrampsYkN5bGFwSWkrbmVRd2xG?=
 =?utf-8?B?UHE3NVdEeGR3cGJHeXVyWHZ2VWFlcHNrdms5V0JkcWpjcWNWS0NNZVFhMVlE?=
 =?utf-8?B?RlNYMVRCRHdUMTVWdURFY3VIMUkrRUpPZy9tbXkvUUpjRTRsckxQQVNVZ1Iz?=
 =?utf-8?B?cVVYWU5nR2JRMkRhRVY5SWt6U3didVp1ZU90TitLSU96MlAvSVFwZFRNK0tl?=
 =?utf-8?B?MjNrTjN4cjBRbEQ2b2tIM1Y0QWU4Tjh4T0xYQkl2c0FGNlZLSWhHeTZOMEpP?=
 =?utf-8?B?OHRabUhFTDZ6cU5mTVh6T01scDJkcEZoaUxoQVRGV1Y4aExLaGNqK3pDVUdY?=
 =?utf-8?B?WGxlOHpuV1V0Mjdxd3Z3bXp0bzJmcVN0WUVTcFZGSkg2cyszd1BXc25YaUpN?=
 =?utf-8?B?THdZNlJrZWRVdE9MT2V0VGF1Y24vVHdrSWFYZUZOOWdzNUdWT1hPKzRUZEVE?=
 =?utf-8?B?L3hDYTdrOFZnZ1NwQ1p1azUwdDNJK1JvS1FDK2t1R0hGZENLSjk0aC9QdTlr?=
 =?utf-8?B?cEdXVmxnV2NySVVvSjFGYWZnU25LSW92THdENjkwdldTdTM4Wi85U2RycFBw?=
 =?utf-8?B?a0tqbDNiRVEveDhjNVQ4alRPRXI1eFo5eW5nQklmdW1BUnFTUndoRHE5TFVt?=
 =?utf-8?B?anFVYSs2aHA4Wk1mOWc1NkhCMkRuRWZjQnlRRWo4aG01WlNsU1ppTk9GUzNu?=
 =?utf-8?B?WFJ5VExpbTEyU1VUbEh3WjdNNmpnNGgvUFlFSUNxd3lFcHVVODhDcXVteFM0?=
 =?utf-8?B?Yk5zTHdheWtQcUY4UGREMEliVFgyYXIyVEpoSmdvS1lsSXpkdHo4OGVCYWFz?=
 =?utf-8?B?TVBGUDNOLzBvM1Bnell0ak1lclpxTmQveFFiRTNKR21laVdOU0g1dEIzTUI0?=
 =?utf-8?B?VTd6OU90WDNMWWJySy96WjdGVjRUSm9hTTc5M0lIRGh4ZFZIVTJ0ZlhKY2Qz?=
 =?utf-8?B?cUpCdEZsUTBnVDc1UkhCV0xOd0UzRVJLQXlzZnlrclN2ck1ZOHJtZnRQWEZH?=
 =?utf-8?B?Z3hJOEp5c25tTFdDTjhFNGFDekZIZm0rQm9qRDQvekFFQjNzQTFtV21vUy9j?=
 =?utf-8?Q?Oy/7d6U1nBsW9pC8iqKbXhJutSIo6vgh9B5en?=
X-Exchange-RoutingPolicyChecked: lM5eMIIXUrVfP64cmm7Xa8DySq8eMA3jFP87nzv4Ol5Dx7BNrycTNnUp+RaijFxT8mi9JHBeP3Ig9iPh5eO6SxeHT+KRJkffSBzh9bjvcQYeiujHvqGTaDEjr79B5lPwZV33CgWSrkIurPvrOcvsNAN2T6TBmZDCh4dyQrOZfbM2Ep+cl9VJ0sTOHZWrAi7zt+lgy68Ve0Fyendf4nL/xCyO3lCTMiqO1B90QyPE5Ydkg/Eep5lT2JtA8dJbcwu7V11/WCxtrq0Kmd8+I6w1qTJHRTphTIcTrqcekp/jd25PbdeJ8t5TfMTo1+cdbdICM2hhU7zsATHcheu+PGnBZw==
X-MS-Exchange-CrossTenant-Network-Message-Id: e3db5d9d-b079-4a39-3cf1-08de8896c92d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2026 04:43:53.8450 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uREAoNYjmrqYstNkCkBlLI9y19S0/QMcYo6j2W9U4hlYPieHCjGfr6xD/SsfJrcXJaSfsLilRpPxk9htkVOP/upPfJpKFbm4xsR0Yb8weo90Dpk8qS+K/OEhtn9lPVpu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7836
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A4A4C2EC863
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 17-03-2026 13:06, Kandpal, Suraj wrote:
>> Subject: [PATCH v4 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
>>
>> Enable PIPEDMC_ERROR interrupt bit for display version 35+.
>>
>> Changes in v2:
>> - Move PIPEDMC_ERROR interrupt enable to a separate patch (Ville Syrjala)
>> Changes in v3:
>> - Add Bspec reference (Suraj Kandpal)
>> Changes in v4:
>> - Add TODO to check the enablement of PIPEDMC_ERROR for PTL (Suraj
>> Kandpal)
>>
>> Bspec: 70296
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dmc.c | 8 +++++++-
>>   1 file changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
>> b/drivers/gpu/drm/i915/display/intel_dmc.c
>> index 38b284a0db82..6c803b2dcbcd 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -510,7 +510,13 @@ static void pipedmc_clock_gating_wa(struct
>> intel_display *display, bool enable)  static u32 pipedmc_interrupt_mask(struct
>> intel_display *display)  {
> The TODO comment needs to be moved here

I placed the TODO below 35+ version check,
so that after PTL validation it can directly replaced
by new mask as below.

if (DISPLAY_VER(display) >= 35)
	return PIPEDMC_FLIPQ_PROG_DONE |
		PIPEDMC_ERROR;

if (DISPLAY_VER(display) >= 30)
	return PIPEDMC_FLIPQ_PROG_DONE |
		PIPEDMC_GTT_FAULT |
		PIPEDMC_ATS_FAULT |
		PIPEDMC_ERROR;

Are there any specific conventions regarding TODO placement?
The current location  seems to be correct to me, but I can move it if
i915 prefers placing TODOs at the beginning of the function.

> Otherwise,
> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
>>   	if (DISPLAY_VER(display) >= 35)
>> -		return PIPEDMC_FLIPQ_PROG_DONE;
>> +		return PIPEDMC_FLIPQ_PROG_DONE |
>> +			PIPEDMC_ERROR;
>> +
>> +	/*
>> +	 * TODO: Check if PIPEDMC_ERROR bit enabling causes errors
>> +	 * on PTL, enable it if validation passes
>> +	 */
>>
>>   	/*
>>   	 * FIXME PIPEDMC_ERROR not enabled for now due to LNL pipe B
>> --
>> 2.43.0
