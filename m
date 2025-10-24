Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A16D3C067C9
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 15:26:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11BF810EA86;
	Fri, 24 Oct 2025 13:26:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YCEow5YN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55D0810EA86;
 Fri, 24 Oct 2025 13:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761312408; x=1792848408;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yzRIy5sCrKglcTNyav/r0I+S1a3KWD26PRFgEhgETD8=;
 b=YCEow5YNep1Zxflcztt0T3r54ahlpfD304J+6BATG84M7yrKmnGHd9cL
 rXD0iU6AmF+Dk4D60wpjQFQsjNFpx1GOblaxKwRmbX8Wu2GwxTC1oBDQ/
 GKBY3AIaFllzc6awOtXRt71zdl92rMRxur9oRViRAXZ1TP15xAcCZsNPE
 cwZSDmGSQfPGYkMEHXUPShn3K/SVBKXrtpUwCIHCv0qXL7TkYgazYYZE9
 DHZrOu/OWcsMyob/pwQQh+1qJlfmlPlwyEdWZF/b5DPDDdKLWwzJtXI94
 cs9kiFUpEK56CvGMxt2u0C0jVsYdk4D7lqilIUx9UlnSG4Bb4f82ePLg6 w==;
X-CSE-ConnectionGUID: 0SEB4UfQQuioiau3GBBwKQ==
X-CSE-MsgGUID: R6Z3Z5NgSEaRp1hXF0EoFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63399967"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="63399967"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:26:47 -0700
X-CSE-ConnectionGUID: JwSsUbDaRj6SFWcGSRz0ag==
X-CSE-MsgGUID: o5j85UOhQriTTR6oC6DwMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="184350183"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:26:47 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:26:46 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 06:26:46 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.67) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:26:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GC5IongH4WSXn6uLgexDhuyn3tzuKmySpR+z6xzfHKtuAEOoY3IW/LsqGafk36nBOaWkSneBwRWu7RcgWa9xjVDkrNO05YTIjqR0kJbcGEF4Q5mD4ROVg3o5ToXW/fz1sjFaTK29Eb385AIqRjk30oaoJusGzHpXjJxVE0NyHjX3WHAf7AMEiketTCeSWY/3dU1MfymtB/wmh7eSQ+6MQFwlBfTe5JMZXJ/tErI2VuSO0rRAGJ7kXJWo4mPKzB6YZY4Dw/IGVyR6AdJSmi34Gdg35zCKETWrIiCZiWAKr4VRgWCh/LlJZgGRiJ4dFSM885jEdk8opMWxIo2aIXM0RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GFT6+S/QBjr+ULyExgWXPmHsFy0WGcRJeFTwd2W0LN4=;
 b=jx6+TZxldRsZgrEpR25XQ7FZt9ijEt7N+Q8BWZLFU1rWZDEvXg8774hQ2l/6yMWoTlJPPH9dPaAfmoiBihmVkqqgHDl+/6b0V6l9YrxFfDlrm6mwkpiIF0U3dSnyHF/oNdPXmljEyzCa6jpM/SzTccF6YZBdHxqQQ+Yh38GfCh+g3NHJ61dgkFJ98DAfyYHwK2bDn8ggL0N4w2YmJsB5BLTCAnHZjIY1nv1gpTPb3ZyX1P/3NWpiqDTrhTfYG4HgO7qCxGoX2MdxJCx1LC9DqywWdmjy612Azl5sHydEFOGYf3ZcbXbnBDWFgmxlDbFBZhZ+I+NpbyjS6Aa4tTL6XA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB6369.namprd11.prod.outlook.com (2603:10b6:208:3af::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 13:26:44 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 13:26:44 +0000
Message-ID: <d2289986-053c-41c5-9331-a8a2a9a563a4@intel.com>
Date: Fri, 24 Oct 2025 18:56:38 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/22] drm/i915: Remove the "vblank delay" state dump
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-4-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0057.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB6369:EE_
X-MS-Office365-Filtering-Correlation-Id: d453372b-be7d-4cc1-3fd9-08de1300f9ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YjcyTy9CVnNrRkhpQlpJUnMyWW1LNm9jWmV3RzlIc3RpelUzSW8yZzNSL3pM?=
 =?utf-8?B?NnRqb2d1VTc2YU9mbnpodC9GdHA0bEZ2UUFFK0l2M2NDVGtxYUpFVzR0MlJS?=
 =?utf-8?B?RTNzNVlEdTY4eFNDeml5cWplMmYxMmtvYXRSYy9PYzVCcEJ2RHhGNTdQNzk3?=
 =?utf-8?B?a3RqQWtiWjBxUXlkbi9xenFuZWtWL3pFNWNoZkJSb2JvNXI4Y1RHYm1QcXp0?=
 =?utf-8?B?blp5dHNVVFlZSTl1VXR0ak9QL1FHRkVpK1E0Y0loY3VWL3RBZmhKd0pjTTJj?=
 =?utf-8?B?R0dZOXBLT2RGYmRSbGFKenJBT1Z3M05uWXl1MXJ3cG5BeEsvdDB4clpRL2NM?=
 =?utf-8?B?NmRtMTl6Umh6dDN6VHBJdCtPbk1MMWxPZlIzaU5Qd0cwSkZLUEJCOHc5N1ZJ?=
 =?utf-8?B?ditDN1g0U3J3bEJoejJBQWREV1lvWllVaklkS0l5ZmNhNDFnQlYzdktjUXRR?=
 =?utf-8?B?dEMzbjVGVk82K1hBNDFjT3FZd0EzSGtwd1ZZSW9QMTdlcW1TRXVWaGlZbzRD?=
 =?utf-8?B?dTBMalFlYVFWWnpNekFXWFNZWSs1amJERVpIa1hFeVhlQnZ5Z01VUjdoRFR6?=
 =?utf-8?B?VStKdWV5bytWeUlmWEcvRFBoQWFzZU5xaU5FcUJZSTRYV2J3ckZJdWJsN0wv?=
 =?utf-8?B?N3dSck1XU3R5ZXIxZm13Y2hmN3pZaHJtYmVVbXE1UkpjZllQaS9YV01KdEt4?=
 =?utf-8?B?SjRRbkJ3SkJXR2xyQU9NUDNQbzQyTWdoM3FLSy8xNmRsaGxxZGsyU0ZpOVpk?=
 =?utf-8?B?VldjVUpGL2FsV2hZazVXTFRDYVpuN052MWEyalIzZ1Qwa1ptek51dmhVZVFr?=
 =?utf-8?B?WDBXbVVRNllnMkE4R3BmcGtOYUR3U1crU0JaYyszYzJNQmE0RUFEb1N3NGZT?=
 =?utf-8?B?ZDVTQ3BFaWVqTDdrall4d0VBVi9BcXREbVI0dmYwdGs3VjBkcXJEamJ2ZVVU?=
 =?utf-8?B?Q3N3a0R0RzAyUlZFS3B5UG5kK1ZBUkdIYzZ3U1dwWS9XL2l1b2ZwNFkzRDlQ?=
 =?utf-8?B?S3Z5RG5HQTZraU9uT1cvUTNlY0M4RHU4VlJ2UHZFTmRFODR3SUpJbU5EUEl1?=
 =?utf-8?B?L0VmckVqQjBhc1RjTktyQXptNjlyam9HU2llR1dxc21MSEJlSEpDeU8yYjlL?=
 =?utf-8?B?UjVFZitKVGo4cXpPY3NzdktjcXNMZUFWQlZsL1ZmNzJZcmY2Z3NjL3hYcFgv?=
 =?utf-8?B?NndRa0VmV1pETTI1bDV2T0I4eDN0L2R2SE1xdnBmK1pCcXE2MlcrS1VKOGEr?=
 =?utf-8?B?VWtvdzFPZUtzNC9GbnZMc0dYL3lhcDBwTjdacHNnL2w2U1BHOThnSEVnVlBt?=
 =?utf-8?B?QjFqSUI0eS9OQmNGODNDaE1oRFdMTXpjYTJGVyt4VzhXTnBwWENkdHd2RUg1?=
 =?utf-8?B?a0svaFFlOGFwbmljeHpOMGErdTIvNThHcnE3bkxKc21vZlhFb0hrTHdvWHVQ?=
 =?utf-8?B?NE5tb2dXZExXNk5aNkZLcTljL0svcVllNGN4R2RFdWVaWnFDcUQ1RWl5QTFv?=
 =?utf-8?B?RnNZNFU2L3ZVRDEzN0ZGcU1YckdQOVZzbzQ2ak9nVmJ1ZEEvUzVJNUl5bXIv?=
 =?utf-8?B?M0c1b2V2UFVLdy9jU0pTS3NNUnRNWTJMcTRmS1pzL3Bja3JyNWk4d0YvRldm?=
 =?utf-8?B?TVZMczZZbGZYcUtYRGliQmRuVnRzaFRaaHkzOVp6YXBKUlArdnJDMHFjR3V2?=
 =?utf-8?B?TUJaVTZSNnlRc0orMHpWb1lsSUxxNERNWEFET3dOVzlzR21HYTBzSzI1QjZw?=
 =?utf-8?B?TU1Gd0hNc0phYTBkelZDbDJaYXprZnRXUzZ6cEdaaTZmK1Z2SjFoMktTSEFE?=
 =?utf-8?B?V2czMFJGK2lsWUJOY1BPanI1Q3VyTW1ZN3l5NmVmTm1HNDJyNG9mNXNHbjQx?=
 =?utf-8?B?LzNzdTU1VFRETmVrNEJxbmZFM1licGlOYzVMaU1CaURjanFHZDBpTzM1cjA1?=
 =?utf-8?Q?LWwJGd1kmavsokpQfwsIlKkfOSEWiX3q?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QkFackdDWDBhRXJ4YzlKZWNHZGRLNDZPV0ZTZ0NlZU5UYlNrdzFGb3h5SnlM?=
 =?utf-8?B?K256Y3FkcTFDSFRSL01uOHhoc1NNRTFuZ0lVZ3d5cFh2NmhBbHBLTTM3SkIz?=
 =?utf-8?B?ZUNnNUsreW9RdHovY3AxZ0d1d3ROZ3FRWkV4RUg1eGp6TEF5Rm4xK2pDMTh1?=
 =?utf-8?B?UHEwM1B3b2tLS21FeU83MUhQOGtHSmc5bS9TTDdUNmVEWGJuNFFmZUlXWjVB?=
 =?utf-8?B?THpORmphVGVQZzRXMGpETnQ1NW90OXlQQVdvZFpjalljbHNZRkhzdEFnWjZM?=
 =?utf-8?B?d2pHcjFtalJUL3Y0anZPUndZTEdLNTdxWFpRVnNFQVkwMU5PeGFkYkZqaUhi?=
 =?utf-8?B?Vk9odU12Tkg0WmR3WFpDODFuaktITHdhR0RiVEloZ2pQNGlVR0J4azN1bC9r?=
 =?utf-8?B?QUFSMmZaa0x2Q3VEbmZ2eDN6OWp6V2tRc1ZqWmFNaWdsYjFsaFIxUkdTT2Fo?=
 =?utf-8?B?dWZKQUpkdDVVcTNTak9ndTRBQnVKVkUzejlFengyK2tLbzZPN0pJMHdjdEd0?=
 =?utf-8?B?VGFCTHkzdmpqVGdSS3JwQXhJK09OTTB4Tm5mZ0gzV0k5VjFLNE51OHdxTWVB?=
 =?utf-8?B?eGE0azYwbEFtOE9oS290dHY5eHR5WnhVZ1FWM2dZMmk1OXVrdzk3OVdZYkZh?=
 =?utf-8?B?YVFBT0NFTmhZb0JWOUx0M0FoMjI5aHRMMm1ycXBEd0o0US9pMlNVVVJJL1or?=
 =?utf-8?B?NmJ6amZ1VUZEenJac29FZzVKOTFDVGQvUDZ5TkptblQ3ajJFUXZxTFViaE5q?=
 =?utf-8?B?YmxFMUw0N0duSDVCSEJXelo5YU5NdGhmMmhLKzZ4QkZtcXFuRFluY1hhMGsr?=
 =?utf-8?B?TkJVNC85bWtBdmF4bVAvSTZZblBkU05CeVJkUFNCQzFxSHd4SXVQdnRGTzVL?=
 =?utf-8?B?SlFYeGNVb3U3cDBvV0d1ZXorOGZzWVZmMmc5Vkk2eWhNUzRjK1RmYmZ6eDB4?=
 =?utf-8?B?aDIwVUNrTFhDd2o5ZmdBbnl3VHhBR241MWRrUXdoR0loOWx3RWlHUFdNOXB2?=
 =?utf-8?B?OWVBQ1FEd1dJbUVCQUJncW5IK2NBMmJ6cVlUZG1WeHYweDFibWhxUkVDQ3B2?=
 =?utf-8?B?UWVkYVdrMkVFQlQ3NTdTUWR1cHRiOVZSUGxURzRzaVpmTnliNnhLczI4RzIw?=
 =?utf-8?B?UlRiV2I1aEt3bDZBeUVYZ3VHanZFTXZPYXdTUjBoY05rM1hRTGhYKzFhbDho?=
 =?utf-8?B?YTdWZktJd3F1TTR4TnVrbTFmV1VkSEFWVjRkVFVob2ZGTTFySStFYVAzQjE3?=
 =?utf-8?B?c3cyYUVlTEpOU2JNTDFIZ2MxRUNSMUo3dm1VYUZIa0ZYaEVheERET2dHOFpt?=
 =?utf-8?B?U2lPTjJZa29rYjdPb1B4Z3hZOTV1TUgrdElTMjRUejBZR0loOUdCNm5lZkRZ?=
 =?utf-8?B?NmFDeG13V2Q3b1BMcDdYMEtNSWJSUVpMWXVwTFUxRGw5bEcxcVpudWFXbHc1?=
 =?utf-8?B?eXg4K1ZsS1Jnd0swcGNJNndPdHYvZEd3ZUJ1ZmNQZFJMWWR0bkNaQ1JzQUo0?=
 =?utf-8?B?MlcvMU1KK3MvS3p4VzF3K0pSRFhjVTZ2RVNONjBuYnV3b0FPUUtEbE0zY1pv?=
 =?utf-8?B?RzYyUkdQS1hxMjd2VGVlT3g1d1owSjFJRm50OUN2dE8wajQ3OGQ0SXhOMXph?=
 =?utf-8?B?aVpsYnVTZnppdHdYYkVWY3krbXlxV3RHRnk0Y3FVVXlTMFRhOEh5VUhKTTVC?=
 =?utf-8?B?OVpuV2ZVUnIzSnlhaldSYnRuYzVqc1JGWWs1TDc2RHRUL21QYjZsRStrS0Z6?=
 =?utf-8?B?RmxlVXJNQk5nOFozcVF2cFJCT1FibGJJVkNubUsreFMrL0M3eDd6RDMveDdB?=
 =?utf-8?B?S3NQeHp4VTZqS3lnNGNiVWp4bUo0Qlh6WTFKbDN5cm9maGhiSjlOTDBiQlFY?=
 =?utf-8?B?QzNEUFltaHI5MFhDVmhvYjNkdG1BeW5NdEZYNUJrRXkwd1pESUdhMDZSd1FN?=
 =?utf-8?B?T2YwcTRCaktoZ080UGVQdjF0Mlc0QzNDYVFxc3ZZY2RsS2dNcHQxZTVxMDF0?=
 =?utf-8?B?TExoQmlNbGgxUnhmQ1pKVFhjNlRGYUNkc1VwbnF0dmhsVEpNYjFlL3Y5d25X?=
 =?utf-8?B?YkRXTWdCOW1ibitFRmJ1OUdiVXBtbGJpS0dzaVlsQkVqKzFhcGwxZHYxUlBi?=
 =?utf-8?B?bWdhMy9NWkl5QmJJbEFhSWY3b0Q0eDAwdng0QUcvWU5qU3lCakxyaHgralRV?=
 =?utf-8?B?WFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d453372b-be7d-4cc1-3fd9-08de1300f9ae
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 13:26:44.6161 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ULip3QYERKwHnrvyohnqpa4+Hzv9Vg2dM+YAijOI5NLYFZTCHsKjegaRYgxuSRISyJAgr9drt4U1Tzfq/2lr7aSP8IFZb4bh6vSlWD1Ftm8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6369
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


On 10/21/2025 12:20 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> The "vblank delay" we are including in the crtc state dump is
> meaningful only when running with fixed refresh rate timings.
> With VRR timings one has to look at the VRR state to figure out
> the same thing.
>
> Since we already dump the position of the delayed vblank for
> both fixed refresh rate and VRR timings, this "vblank delay"
> thing seems pretty much pointless now. Get rid of it.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 23e25e97d060..e6f300dbb5ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -289,9 +289,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>   	drm_printf(&p, "scanline offset: %d\n",
>   		   intel_crtc_scanline_offset(pipe_config));
>   
> -	drm_printf(&p, "vblank delay: %d, framestart delay: %d, MSA timing delay: %d set context latency: %d\n",
> -		   pipe_config->hw.adjusted_mode.crtc_vblank_start -
> -		   pipe_config->hw.adjusted_mode.crtc_vdisplay,
> +	drm_printf(&p, "framestart delay: %d, MSA timing delay: %d, set context latency: %d\n",
>   		   pipe_config->framestart_delay, pipe_config->msa_timing_delay,
>   		   pipe_config->set_context_latency);
>   
