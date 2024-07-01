Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9B591E1B7
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2024 16:00:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07B8F10E44A;
	Mon,  1 Jul 2024 14:00:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eAGp/KoU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03FAC10E432;
 Mon,  1 Jul 2024 14:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719842404; x=1751378404;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=WOaZB6Bmc7frqdsQ+Akcyc4AbFt9QF2b6xGe0fLmrmI=;
 b=eAGp/KoU3M82GfH+8hEZ14V8P2qHv6GcOZsw0fDz2EvkB5CgGCAWo8kP
 mFwx7AnMoTyXXgGm3JfgdpROTwaownBCdYCj6Dx03sok1EHD2yMNhg2te
 nDvKOi60sDARZo2e0iuTX0KsZsXH5CJXVy88eHThkVNV2uGUs9cD0w/vw
 mKuFe6TBvnPuPqe7LztvLxY/w/Lz1wxulEpgSc/e6w9Q006m6yZBiQ4AN
 NY/fcY6H3d6A0PvDQwASVNvK1p32fUm+AA1GiEFgliv2QcnjGqkWn+2ZZ
 ZbudffHixL2XUWiGLmM+k013IjEJTSGm28DvFpDT3WDUQ1po0+k/7ENFP w==;
X-CSE-ConnectionGUID: MafkdLyKSCGNRNgE1pJDPg==
X-CSE-MsgGUID: GJoBlk/8SX+IvF+7UoexKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="16699703"
X-IronPort-AV: E=Sophos;i="6.09,176,1716274800"; d="scan'208";a="16699703"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 07:00:04 -0700
X-CSE-ConnectionGUID: RpfjXkl5SNOX01LLCfz9Zg==
X-CSE-MsgGUID: lkI1wtJ3SdCHqHN5Qv1PHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,176,1716274800"; d="scan'208";a="68762380"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Jul 2024 07:00:03 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 1 Jul 2024 07:00:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 1 Jul 2024 07:00:02 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 1 Jul 2024 07:00:02 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 1 Jul 2024 07:00:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e0EE4BWmLLvzGBB/QgK6zAg0UwXnbNXehpfNhnechlewOEeuvjAp/etj80n6l05XeqBjkCAmxHW2H4M0C6sa9bmkdVRTdy0cM9USIspXrHOu3Y4IMb66SCZ8QAICdHY5PQi/aFDK59gzTS6X+mO37sQbMjEWqes0i9do+websf5OdE5Pr1YtAhj9Ott7EfKp7Kn9rXkZlKOVyJAmezvxeEll5nO+CuCKXaRFWAwQgUXnggZsK/l2+tSgNd+hrXTb5ZykfzJYMMWzXy+ppFWFu6SZfuOT0/Qi3PU3CH6qhpBV53gVYDVAwezr5FmVnPHha8cy6LpkucqCIvL/0w5IQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DZq4KWQ/oVZawldo1f+u++jKV2UDgitYd+a6Y6rn1bs=;
 b=X/qP/VSF9oYqze2o0mfey48gbmy/h01gLC8GrLVQGp80wVcP8hD/mc72+1+Nx95NV4z9+W0HLuky8K+zMZJec0LnoAwnWAE6voXvMqO9IQhtODH8VvVttDPt3VJLcclnbJRPniSweU5OPhaER4uzXplE0cymDnSOCPeZy8yfZo2PbP+jFw4aGibNIrDKSeanhbksBjdEZMW5JlGBH25z90YYuG0ylgl4PfbaboFZ226bu0lrUB7A52igr0RJlinaLXnahxFiKmKJ77j35q2QYuDBXSxBP6meh5VfrI+5JITDB0GofVDqlagN4btY0pB8jVYixXJJDGSq8C9Ih1U02g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.32; Mon, 1 Jul
 2024 13:59:59 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%2]) with mapi id 15.20.7719.029; Mon, 1 Jul 2024
 13:59:58 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <c7624206-da33-4bfd-877c-159b4a8af89c@intel.com>
References: <20240625202652.315936-1-gustavo.sousa@intel.com>
 <c7624206-da33-4bfd-877c-159b4a8af89c@intel.com>
Subject: Re: [PATCH] drm/i915: Skip programming FIA link enable bits for MTL+
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 1 Jul 2024 10:59:53 -0300
Message-ID: <171984239327.17689.17652781146146614386@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR05CA0028.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::41) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CH3PR11MB8313:EE_
X-MS-Office365-Filtering-Correlation-Id: ede96f1e-1f23-4b5c-fa8f-08dc99d6182c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NTk5VW5HMkI1QmJvWWpVd0JySnpvSW5yRjJ3UzJFZHB4S0taaEhXcU1SbVh0?=
 =?utf-8?B?d2hOTDcyRHh1cXN3WDJZQ0lScmJxc0hJTG9YaVo5U2pkK3hPZVNQNVRFUXpt?=
 =?utf-8?B?Uys2WGV6MGVLWmFGRTNmTkVUZGhkSDFjaWduNGdONWpXNmVmeGRmZzdNRENS?=
 =?utf-8?B?QnRTRlowQitpL1Urc25JdVdtYzVOeHpQTHBsNGVUYndvQksvNWQvTmpkazkx?=
 =?utf-8?B?QW1COTh1QllJaVhNNzlEWEdFVXVnUTZyelBxNlhPRG1tMFhEMmhCRXBuWmRQ?=
 =?utf-8?B?OGpneFN5b1VDS3BjMFY0VzhlcTJROTlJS2xRL2hwdzZqdEIyaXRoVUpla0lG?=
 =?utf-8?B?WGdJUktXLzgwNnhGb0pFeUk5MXNSWUhiZGxkYlJNaGl2dHJOTTBQQ2hxT0J3?=
 =?utf-8?B?WFZzemxwVUVVY1FSQW1DK2NrVi8vbkZYMFdmdHRmeWNCNmxzZGdMWWY3MFJi?=
 =?utf-8?B?TE05anc1YVNaYWh3UzZYaU9mQW94bzZmUXpRZG4xNWt2MkhnVmlPZU5GdFdp?=
 =?utf-8?B?b3dnb1d0dC9pTEE5bmU5QWtlQ2V3Yk5aRjhyaEk4a3JlT3BXSWl1WGFUdWlJ?=
 =?utf-8?B?dXZlWCtCTzVoQjEraE5acW9HaWFTc04xenFzeGhWeTdYcXJ0YjJERWEzaGRk?=
 =?utf-8?B?c1F3WFVNZmlZMDNwSEhmRTZmNndJRlZGcFhUNWZTWWJNT2toeTQ0OGJmcHZS?=
 =?utf-8?B?L1U3SERnR3ZPSDNYbUt5Tm1qUGdESlVuY2JQSGNDWnBkYWJTeG9pRlVOUVhw?=
 =?utf-8?B?UGs3OFJ1SW4ybGE1dlVCUmxESllPS2p0YzdibUY1Q2RoNk85YkNvRG9iVGVK?=
 =?utf-8?B?b29BSktLbXpQUkpKMTJ6VS9lcHRaTy9OOEZDaU05L2NVbWlPSmdDYjNlTjJt?=
 =?utf-8?B?bFVQZmVCdGNqTWxodGkrMkhsZ1MzMjZrbkJXZkM0QStQbWRxV3B4RFhoWS9o?=
 =?utf-8?B?V1VIeHhMcDRkeWNIL3QyalhOSldoNkFjK0VFUElkS1crWHBjeWFXRjNwS1dq?=
 =?utf-8?B?NWFLdkMvUStMMmxndEllbmYyYW51V01jOXVweVFxbUdtM1YzMkhVS3ZIV0VD?=
 =?utf-8?B?QXhiV0JYS2gwMFlNWmFCbGhHUjIrblcxdERPVUtSczlyL2VMdTNFd2NKN3Rj?=
 =?utf-8?B?a1d0L2hMRHQxMW9GczVqcG5mNXZMQm10UUloWEw1bVg2amlNS3FVNUxVcGY4?=
 =?utf-8?B?alM2S0hGdm5CNDB3ZXhZQmY5d3V3ZTFCNVRUbE1XWldla3YzZURHdHQ3a3M2?=
 =?utf-8?B?QThhSEE5WjlFQzlLWVRpQnUwS3VvVUpzcU1SQ0l1alRPckN5bldhY2RoSkJy?=
 =?utf-8?B?R3NJVitXYit6ZVdPRmo2eXBGTU1sNFczZHhtM2VCQStYVWh5aUhNTTZIZmNh?=
 =?utf-8?B?cUt0d0IxVTV6b2hNc1h0VWNsb3VjS01ZY0RoUGxOemwydXhnVTROcEp3ZTdo?=
 =?utf-8?B?YzEra1FuVEtTMFRsZnh6L3k1eHRwTDZCRDE4ZkFYTEhoTVNlUk1VWlBIZ0VS?=
 =?utf-8?B?bGZDb1Z3ZXZqcGl6U0grb2MwYmxpWUhJSndTOHEyM1QvV0JhV25YQWt6eGJB?=
 =?utf-8?B?NkVsUlkyVjBMbW9xUG1qL0JrRUJDUGRobTJyQytOY2I4SVZyWldjN0hJUHVU?=
 =?utf-8?B?K2NqRmJMcDc2U09tak5rUHdnYUNFbnRKMm5hTkpKM25DK0RzYWhzOGRrOUlB?=
 =?utf-8?B?NjE0c0l6RVV5ZXcwaGxSVFRWMFQrYmZjcGZsRVBBN0tDL3BHY09xWExrUnl0?=
 =?utf-8?B?UGZ6M1FjV0gwVEtkK0xTZWkyQXVJcWpWTDBqSGl5TllCWUp3ZzZCMFlHVmJN?=
 =?utf-8?B?OVFwSzRIQkdEQjFEc01qUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHVJblpRZG9Nc1JCTmx6OTlQdHlDMEMwNUlBaW51ZzRON2F4VVVYOGQ1eEZw?=
 =?utf-8?B?TzlhUnA5SEdJcTRRMFRRTkpmbUM2a2VrcEpocTcxVEFCMXVwdi9TakJ3bjVV?=
 =?utf-8?B?ZEgxNENLU1BoYnQrdnljMFU3aXE2Q21FbEhJUm5abElzMWgzUWFSODkxYUtW?=
 =?utf-8?B?VS91TGZvRlRHellIUmFDcjFmVnhnV3pjamVlRVJ6V1ZsSU8wMnFGWEN0Z1pL?=
 =?utf-8?B?SVdUNi9RYzRxbTYzU3VtVktJcUM0VFludlJyVldWVm4vTEpoa3ZyNDlRR2Jv?=
 =?utf-8?B?N01EbXFYSWxtUGYzYTNLdmh5b015MjQ1SXYxUEZvN0EwRXNyZVNMbGRBZWRj?=
 =?utf-8?B?WEF1UXZwVGIyeEtSU1dQSlliZ05uNlhnRGIxNzdEeGtwYUM1VGlxL2o2MEJ3?=
 =?utf-8?B?ZFBKMzI0L3NkalcxWEhlL2g3WWhkazUxakRjRVZRaEJzREs4N1JsaXBtMWl1?=
 =?utf-8?B?THlUbi9NVHdBci83YzlqMVE0YUpTY3Q1MzErbVY4aEYwR0dobUMwZWd6RnRv?=
 =?utf-8?B?d2hCenc1K3FMYTd6VzlEdUZ6M0RkL083dzJSRkl5ZllpYXBaSzNqS1FUMU5J?=
 =?utf-8?B?cjVWY2E2Zk54MzYvWFZ1WGJrTlJZQ2U3cUhPdnk3TitrTXlob2hxcld1V2Zv?=
 =?utf-8?B?eFA4Q240RjZOdTU3alVCek5LMFBYVEJqL1pZMXM4T3AyckJrSXJlUmg4WVZX?=
 =?utf-8?B?eW5CYTR0Q1crbjNSTGJ5cmI3YXZtWEIxc2xhNGlsenpMRllLNjk5ZnVqYmoy?=
 =?utf-8?B?bHFyUFBPY3htRFRpME5xT1grK0FVKzRFVXIwanpHS1lucTlST3J3a21tVGE4?=
 =?utf-8?B?MVhPcEUwdXdQNVd6ckJMZXBpRHlTVEg2Z0lxMlFpVmNLSzJWN3MwZE5jaHhJ?=
 =?utf-8?B?Q2YrdElWZGtZOVZsUVdyMnBudXVhenVwaXZGTkhIMTE5Zm96T2JZUjg3K0JQ?=
 =?utf-8?B?WEFCS3JuOGJJMUJVSTZ0dStpQ1pxenV2Y0NzYndobnd1cElNVHlYZTN6NGE1?=
 =?utf-8?B?MUR4RDcxSnBqSkFSbld6c0tCVkRBY3NJSkQzbGJqVUNRVGxyb3U4eFNrWHJ0?=
 =?utf-8?B?RjFPek9xSlp5NnJBT04yNFUzQjM5ckFvODRWTHBuWjdOMTBlWVYxS0hRQnJs?=
 =?utf-8?B?aEN6eGg4M0d3NGFOSE9RLzBKZHJxbUtUd2wrWGNvMFBUYlh2TnMzeXZsRE5G?=
 =?utf-8?B?S0xzYnRCNUwwT2k1SFEvblhXa1B2Y3g0QWVac1BtQjFsWHNPcnhvaU1UbjJ1?=
 =?utf-8?B?djBRRXhYV0t0SFVWb0JZc1lMOGp6UktRelZnclFjcTI1R3N5NHhraUNaU3dv?=
 =?utf-8?B?SU9qSk1iR0I1MTdwOEFsbkx2K1FLcVZsT3lQY0NQNHViN0JXenB5RWx1WlBI?=
 =?utf-8?B?ODdTcVNmaXFEY3N4bURGMi9sRXpGbEduK3dzRUUyL0dSdkNhbGJzSmJFeWpo?=
 =?utf-8?B?TEl0NkdNQllIL0EvbTZaK3FFaW0vSXRobFVBUDJ5cFBFZm1mbkI4OFIxWjlm?=
 =?utf-8?B?bW4rUGU5OC9vbml2K1E3WklWQ2hHK1QzSldKcUtzMWR3MGVEVURhMGhhaUhN?=
 =?utf-8?B?Y3d1SWVDWThpYmhsMldqTmpVVXBaWERBZlJGUThKWjNsd2xaT1MydGtaakhD?=
 =?utf-8?B?Ymh4WUxqb21MS3diMXNXTXdCTWwreFJ6d0ZFc0tDSmJSa0svbDhrdXZpWlhR?=
 =?utf-8?B?VVhrbkMyaEJpcmlseDJmMXBtVkE3ZWRhRE9VSEh1TUwrYjAyNnRRSHdjTnE0?=
 =?utf-8?B?bFVhVmRxR0dpVnVhN0UyeGUxL1pGdUpBeGdoWDBqd01qS3lDMGlQQ1RVaFM3?=
 =?utf-8?B?ZGZyaVA1dFJrcng3VEdKZ2JmQUNNdUFsWHh3TS9yQXR0dmcyZHZyaHE4UUpR?=
 =?utf-8?B?bGt2VkVWclRKYzZUV2lCUjRGMGhMc1RIUVRwOTVHb0NzMFZKNzFVQjduVkZa?=
 =?utf-8?B?NUFSMzc4NzVmczdZOXowM0g5SWxCemg3cG9QNlRSL2J1bWhUYU9Fc2s2RjRM?=
 =?utf-8?B?bE1HcTlVbzQ5N0hQWlh3VTkreElFUzAyb0xORFd3WVBGSmNNT3VmVHVqQVdS?=
 =?utf-8?B?aXhjdHNEbmZ4ZE1GbWhCMHVqTkV3Z1RVWk9JVWtOdFdjdHE0Ym9lbGpRKzBz?=
 =?utf-8?B?ZHQ0NUdLcEluMHdMUDFOakh0bFZBM1hDTEV5ajVuTWtycHNVYnJ1Tk9HcmJ3?=
 =?utf-8?B?clE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ede96f1e-1f23-4b5c-fa8f-08dc99d6182c
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2024 13:59:58.9044 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Toru74b75bLQ7R/vFwwx8GCDQpU/4gErg31l+pz7k2QtP3pAuqRJUBf7xmTAKgqU/x7fIQKH8Lfs+tXX+JX3bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8313
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

Quoting Chauhan, Shekhar (2024-06-26 02:33:02-03:00)
>Had formatting issues with the first review, sending it again for clarity.
>
>On 6/26/2024 01:56, Gustavo Sousa wrote:
>> Starting with Xe_LPDP, support for Type-C connections is provided by
>> PICA and programming PORT_TX_DFLEXDPMLE1(*) registers is not applicable
>> anymore. Those registers don't even exist in recent display IPs. As
>> such, skip programming them.
>>
>> Bspec: 65750, 65448
>We can add the Bspec (49190) of the last platform which had this reg=20
>DFLEXDPMLE in the Display Sequence, so as to have a better reference=20
>point for a reviewer.

Added that as a comment in the commit message as an example of a Bspec
page containing instructions for a previous IP. I thought that would
make more sense than using as a trailer, as the changes are to
accomodate to the new spec instead of the old one.

>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>With that,
>Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>

Thanks!

--
Gustavo Sousa

>> ---
>>   drivers/gpu/drm/i915/display/intel_tc.c | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i=
915/display/intel_tc.c
>> index 9887967b2ca5..6f2ee7dbc43b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_tc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
>> @@ -393,6 +393,9 @@ void intel_tc_port_set_fia_lane_count(struct intel_d=
igital_port *dig_port,
>>           bool lane_reversal =3D dig_port->saved_port_bits & DDI_BUF_POR=
T_REVERSAL;
>>           u32 val;
>>  =20
>> +        if (DISPLAY_VER(i915) >=3D 14)
>> +                return;
>> +
>>           drm_WARN_ON(&i915->drm,
>>                       lane_reversal && tc->mode !=3D TC_PORT_LEGACY);
>>  =20
>
>--=20
>-shekhar
>
