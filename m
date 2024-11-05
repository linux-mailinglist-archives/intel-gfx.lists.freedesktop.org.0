Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0CF9BCE3D
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 14:47:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49FB710E5A4;
	Tue,  5 Nov 2024 13:47:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A30C9Ak5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC68D10E5A4;
 Tue,  5 Nov 2024 13:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730814424; x=1762350424;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=DZQalc34TyLjgyv3il7wbn+/wqME4IBCQXVW7uhZUrA=;
 b=A30C9Ak5Y3V7WMRcgT7DltSE2BvKHtiAy3dFwvvL0OsvzV7MVzgIZgdX
 7p5wCGOPMxuqs+sEJooTnKfzcNj/tyVzxNYMu0ALrcHMYmKB/rFRk0NdX
 UtzT5zmx7kj/gj8UXtclWLJBiWgrefii6JJJnBGyCDiH9Sa3ZJKpIsG8o
 oeyinFKSR1VlfEie+E06/ZAaII1IthhAtiOazO65uWrNuvRXTPc9HWZxJ
 2HexHh5sIHpBMNtdGb7VdXIvOkFp3EIca0Sk1a6eGljiwzPjrdGN0OqAV
 soP5VghTIvNc7jBh0HaQJHlNwpCyapAIscsmA2dcGAI/UM1l/O7T0n1y5 Q==;
X-CSE-ConnectionGUID: AfBEvVG/TT+RLkFBRc7giQ==
X-CSE-MsgGUID: cg9WZ83iTv2biIbrJZ4GbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30335110"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30335110"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 05:47:04 -0800
X-CSE-ConnectionGUID: YqIA73SuQpqkbTHeWdvMFA==
X-CSE-MsgGUID: ip6LxJZGR8mHpobFBybTpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="84359956"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 05:47:04 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 05:47:03 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 05:47:03 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 05:47:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XMHBIq8xPj+8f9oOC4pJt22bGG/5CnuZBKgfIVCitsPBzgEmFrefDv27NjQiAyVdB2tjxq1rz+pFG3CYWWDFHcfG+l/GszsCWEjAYNwjWRJ0T1sfdoH7hUh3KMPpWsrKa9j8on60FCoue8BVgdjrwzbFxfxBCyjgjyTl7sPE7gJopK7aXQlJg/DPuzfJYKpGN3qWgwQ78PngL2AJ8uY0j+0ZTduMw3rmUh4E6c74zpjNrfTBBWaVBXXjbDIt9/acYP5EJpDm8q6dEQNX35TY6ubWI+mNak+V3FruOJfWsXieTVv923nqS2gtFGOcBcho5OErmpQ68Vm9NVPGLEL+yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HTXhx0m4Xv6CQ13df5WupooqMhdmkoI01+7gS+xYdXs=;
 b=iYD0rdxqNkED4fwBGaQ3FfK9/lAyd2zKUTD9s1FbONvGLsN/++X7VgxbqkExfY9dK1bQAPPg8wn4P5GpqQa/Gx3/Wto6P8AXZtBR/O/ed1gQHkqofhmk+l7DmW+RSdib/Ncw2FJMEwzUT820vk4HZ9kXHcYTELIZT1IShvM553zezXYmKZBZNlEUT1ltxrdpcpoetRAJT1stb7jWtEiHl836q2/ambSfhu23XujTAw7syucGd6tK3GmF1KvYYg6rgP3XxuOxSHeyQWC8abQyeiSpwFYFOiITcOXv5ivZQHLAoXZVxCRB8U+nWSza23VTv2g5iV6U2JZCESltsnnRQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB7642.namprd11.prod.outlook.com (2603:10b6:510:27d::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Tue, 5 Nov
 2024 13:46:57 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8114.028; Tue, 5 Nov 2024
 13:46:56 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1b9bcc81c5eada5cf7d3cc4610cee6ef9b69aac9.camel@coelho.fi>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-14-gustavo.sousa@intel.com>
 <1b9bcc81c5eada5cf7d3cc4610cee6ef9b69aac9.camel@coelho.fi>
Subject: Re: [PATCH 13/13] drm/i915/xe3lpd: Use DMC wakelock by default
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
To: Luca Coelho <luca@coelho.fi>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 5 Nov 2024 10:46:52 -0300
Message-ID: <173081441222.2525.7518849812502214612@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0245.namprd04.prod.outlook.com
 (2603:10b6:303:88::10) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB7642:EE_
X-MS-Office365-Filtering-Correlation-Id: 16c6fa95-8f4f-4454-93eb-08dcfda0508a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UU9BNm1tRWlhM2lyNWZEWFdjZTcvYVpqMjFUL3JwSmI3TkR3K1hVL05BU28r?=
 =?utf-8?B?NkY4OFIzTFZhTlhEbUF2ZTA3aTd3cW42YnF4amdEaVpZbmloYjQ4OVJxQnNS?=
 =?utf-8?B?VVllU3czMHpadHg1Y290ZGhUbGxZdURuNmpESFhXOTEveEZpbVFVbXlQTzNT?=
 =?utf-8?B?a08xN0E5NDR0c0RQRk5oNC9jT21MSGEvdlE1NHlKR2NZaFNHb0dzMzZuTUVO?=
 =?utf-8?B?c3V6OWRELzRma3BVY0JkRG1kQ3pMOE1xRStWOXd3dDRKSksvN2JERit6b3hs?=
 =?utf-8?B?SDlRM2toNzkxMjZGeTk3NGpWUG1yMkxKYW9Bd0J0blFqMVMyVWNPc3FSenJJ?=
 =?utf-8?B?WHN3NXVOU0RrTG5GMjNHUDB1Uy9TWXRxQUY4TXpsSElyd05JNjlGa0xyWjBV?=
 =?utf-8?B?QUZQMSthV1lKMWNCdHNFMmhHOElkVWJOb2syMDltS3RSYVNzcE1IZlMycjFv?=
 =?utf-8?B?NTY1THlGRmE1eGxZWG0yVk1uY2VIWk1JRmhybjBMSTBzaTR1WDF0QnV1MU5Q?=
 =?utf-8?B?ZGRvQ0dwMGpCeHQ5RmplNHl4d3FtaTNiV0ZnaFk1YnVsU2lWNGpLM09UcThK?=
 =?utf-8?B?aUV6aDVBM0dhRUpqemd2TVcyNWJHbCtvUjVmRlhEcEZxQkdDWS9BNytCbEZ1?=
 =?utf-8?B?YWFrL0Z1aUlEQ3lRRStoY29XcFN0TkYvWHgxckxtcVJ2Zk5lbjRSUDNLc2Z1?=
 =?utf-8?B?L2d4L0UrOHdmVGJIaXZmODVtK0NMN1g2K2tMYlp3RXJpc0dRSDhYZzA3eHZW?=
 =?utf-8?B?K3A1OEt6NFNIL0M2OEVibUpqc2pJRit3V0MvSFgyazNKTUV1RHJKZ0FnVnRv?=
 =?utf-8?B?ZHo4OVNqYjlrQUgwS21wdVZPMWJXcVR4WktBU3V6Qy8wVzducWt1NDhpaGxZ?=
 =?utf-8?B?cE8wUWtIc1dTakFGZitva2tMcWZxSGNRdkhKUXlsK0tGY1Z1SDBLeXFxNDZq?=
 =?utf-8?B?dEJkSmhsNml1eXhwdmp4Wk14UU1uMldGdDZnWmZQcVh2U2JjSkgwamovZDdG?=
 =?utf-8?B?V0xCOGREYm83Q2VBdmlTeE96T0w2TVBydVRMTktWclV2U1pIY0lvOUx4WUJo?=
 =?utf-8?B?WjdNYllaSVFvMDYrRS9vODVTVGRRQVJkMEJESWJhL0hRUmxOZ0lnVytPK2hN?=
 =?utf-8?B?WnU5Nm9ZRG9jdUpCaEpLeGV5L3ozeUFzVUxoWmsvZzFTS09pTWJ2ckdHSXlR?=
 =?utf-8?B?QVBNaXRMUXA5OU9nbkV3Nng5WlltdjVWcnFFVDF2bURLaEhrUUFkd1ZRVmsw?=
 =?utf-8?B?dEZJNzgzMWxMZmZKMmRCdXBDemFoa3ZJV1VvMWcxd2pzb1puWTM2U21SenRX?=
 =?utf-8?B?bkFac0Q5VG5tV3pvdXFqUzBONjloUllnSEJCQTFGY0hsenBlWElXSjlETGNL?=
 =?utf-8?B?aU5kUm1yQ3g3L0dLZ2N4VnZza0Y1TFFSZlBIeFJXL3JkUXJUVDBsMEtsZ1B4?=
 =?utf-8?B?bWMwcTBMWm9ZZitSSGY2d0ZBeHFsYmU2VWw1Qmc4ZlpreDdJMG9zS0xqcUpD?=
 =?utf-8?B?eFVEeUZ2NUF2a3NRTklxRFVqd0YxRmNaYzVqYVM5dnBSdEUzY0tuMHFOMTNu?=
 =?utf-8?B?bWxDNld1a0dhMHN1elFKN1pXdnNOWjJ4cS9hWDdacWdqRDUwL2dRS21ubkRT?=
 =?utf-8?B?OHBPV0F0MkxXZ3djbEFIWUdldmxSTXhHV3lSWlREYU50R29sUUV5SHpONGps?=
 =?utf-8?B?cmZWUzdwRzdLR2dNYUEvb2pGaHZBTWI3c09WdTNzMFBaUVQ1QThkcHNyc3p5?=
 =?utf-8?Q?XKyaPZYFQCFYaFjdy1azOxXvPMBVpQ72qtYWaGF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0t1NkVraWtTN3NMMGRHMlFwT1VrUFBwa2wvb3NzRXJJYys5UEExd0U0QVow?=
 =?utf-8?B?UzNIQU5zaWtrMFNCMTVoSlZ1anQ1akc0THFtcnJaRmJFUUZEMlFRdGhWbUJ4?=
 =?utf-8?B?ZDhvMnNiaXdVYTlqMk1yMDNsMnhQS3l0YU9uSU5oT2hXSGFBK1pLaDhPcFVS?=
 =?utf-8?B?Ylk3T1dkMmwyYTJuNnMxTmk3NU5ya3Y4MUpOeEoxc0VaWm5OdHJXa09qc2xw?=
 =?utf-8?B?NmM0VzNpQzBtYVNtb1NoNVM4L25INVZETEIzMDVYT0hiOGkyNy9jeWlsdzd1?=
 =?utf-8?B?UC8wZ0hFMXdpWHhDMHR0bDJGaVA0MXFkNmNzeXJnVUhFR09PVnp3T0dRcEpC?=
 =?utf-8?B?ZGRDMHhzRUFoRDlURDVRdUZLK1ErY1ZkclYwNXZtUW1jQVBldUliVUpCbTlW?=
 =?utf-8?B?MzluT0htNFNSZ0dPK2pZWFNzK2xVdFJUK0JkRkNzMUgvRXZSc0dOaFNiNkdM?=
 =?utf-8?B?aVl5NUl6Y0k3QnZKSEtFbDhTZXVGMVpiVlM4K2NXRjNTYkV1WjB6Z3JNK3h3?=
 =?utf-8?B?VFNlQi9Fbzg3U0kzSUlOSUZidUUwZ2FBT2FCWUh6STJRK2V0TnRDeGsvVGw2?=
 =?utf-8?B?TzNocnduNmJXSVdQM2FKbUM3TmNXMmxjb3pla0F1VC84KytoMnN1SHhqQVN2?=
 =?utf-8?B?OUJOa2RmR1NraVpCZjBCeGxHNTNEem5oZWVuVlZ5U290Ry9EeUdkRTJFYWZN?=
 =?utf-8?B?bEVyMW5rWnFXeGF1elR5Vk1YeXJiSmY2L1k2WEJ1cHZxeUtGYlRmK21UU3Yz?=
 =?utf-8?B?MVJVb1BYSXlLaWNidUhJSWc4NXhGZkhUR1B6SERUazkvZTd5M0xjQkJMWUFG?=
 =?utf-8?B?MVEyc2p4Z3NyUHF1a0RFUUxUNnp1dzQzQ25CMVFCRTMwTUF6VXJyL0ZJakNX?=
 =?utf-8?B?QVlFUElHVnQvQjArb2Y1QXl6ajdWaXp1Mk9veldzM3puNGU1dkNKRWZGNTJz?=
 =?utf-8?B?dGtsdXQyekRSVktrV1RuNVkvNFk0K2NORml6U09GTUxwekVNSC9iZ21NMUxV?=
 =?utf-8?B?azl4eDFVNzg5TWl2ZlozVnljd0VzaDJTcHpWL2tzVk80Q3FybzMydTlsWjYz?=
 =?utf-8?B?Tkk4clZLbkVvaWRkaDJjTER0Mm9neDZSZVYydG9MbWNpa2NsR2hGbzdXaExF?=
 =?utf-8?B?eW9ubmV1Qno2OXZMMFZBYVJneHIwUW9tVlVGeUxKWFRaaWFNeUQxUVJNNlNu?=
 =?utf-8?B?UkpBTWFNRDhkbkVBamlReko4MjRPR1ZvM1A2TytQQmQvS2NaRFlZdjJ2N2E2?=
 =?utf-8?B?STFqa09wQmd4MFZXdmNuK2g5cUdiaG9OTExVMWhTV0M3cHZoRW5MU3ZPdEw0?=
 =?utf-8?B?aDZ2d1E5T281RU5JSElrYnJVRDcwZU43UUNpaDFheUlyK0t0N3BOeEc3NmNK?=
 =?utf-8?B?NTZXS3VUYkprbUxiSDZLTlE1WDFFYzRLUzFoOGJQekcxWHdkV01OQjMxR043?=
 =?utf-8?B?QWx1TWIvT2dlclZKbk5Ba01WMkRMaTBnUnEwQlowUk5jN2N3Q1lxVUxZZmxD?=
 =?utf-8?B?OFNiNTl0UmNoKzlvTTNYdFJJK2R1VFZLVE8zK2ZiWXJrMjBYSTJNOVQ3R0JB?=
 =?utf-8?B?QktjaGRsZGJBRHl5dms5UzRrN1FnV2gzam1YTUYybndsR01BOWU4ODNMcFZB?=
 =?utf-8?B?OGpkNzJHSG5NU0MzYmc3WHlFWWFIaHlkUUlMbHI2U0hJT0lCTkFxMTM0aUJw?=
 =?utf-8?B?aU12bHZkcXc1RklzbDl6Q3VpYWYyMFN0Tm9Pb1I4elZEOU1wK1IvUVJVZU5S?=
 =?utf-8?B?QzhPYUh2KzlvNmRrVkcwZlJPc3lQdXlJTjVVYU00MFdSNUF0TlVHZDBwbis4?=
 =?utf-8?B?aVRDRHcvdEJXZms3UjR5TlNkTzFJUytSVjlHeHhzYlZmWHh0WlA2MTRxdFpw?=
 =?utf-8?B?aGpVUmNGdEtNT1I4akpxakI5UGxtNGQ2S2I3TllhaVRQRUZJcmZCTTFYWnZV?=
 =?utf-8?B?U21wcDhTSEtXT1VKbTNxTGJ4SUNBUjh3N0MwY0txNmFNa0VQbCtsbitZUWo5?=
 =?utf-8?B?RGo2Ui9KVzIySXU5c21zWFcxVmRLZ3Bkd0g2dHRla3h2eWtJbitZdG8zVW95?=
 =?utf-8?B?a2ZtYjVXN2lyd3Q3a3o5eS96bTNENXduUlh0eXlGUld4azBmTWJPZE8wODRT?=
 =?utf-8?B?WG9Sb1BjUnoxN0VYdjZXck83SGRnM2dhT2hhQzdtQlM2TWJVTkZ6aE9VOWF5?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 16c6fa95-8f4f-4454-93eb-08dcfda0508a
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2024 13:46:56.9102 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m14OYavcn/XtsQsWNrg2ryj62celiad2yXvwhuMRTktQpRhTeUX8igmfehguh1UHsoMK0vLWN4hYJ8mjlOxCdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7642
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

Quoting Luca Coelho (2024-11-01 11:27:10-03:00)
>On Mon, 2024-10-21 at 19:27 -0300, Gustavo Sousa wrote:
>> Although Bspec doesn't explicitly mentions that, as of Xe3_LPD, using
>> DMC wakelock is the officially recommended way of accessing registers
>> that would be off during DC5/DC6 and the legacy method (where the DMC
>> intercepts MMIO to wake up the hardware) is to be avoided.
>>=20
>> As such, update the driver to use the DMC wakelock by default starting
>> with Xe3_LPD. Since the feature is somewhat new to the driver, also
>> allow disabling it via a module parameter for debugging purposes.
>>=20
>> For that, make the existing parameter allow values -1 (per-chip
>> default), 0 (disabled) and 1 (enabled), similarly to what is done for
>> other parameters.
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_params.c | 4 ++--
>>  drivers/gpu/drm/i915/display/intel_display_params.h | 2 +-
>>  drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 6 +++++-
>>  3 files changed, 8 insertions(+), 4 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drive=
rs/gpu/drm/i915/display/intel_display_params.c
>> index 024de8abcb1a..bf00e5f1f145 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
>> @@ -123,10 +123,10 @@ intel_display_param_named_unsafe(enable_psr2_sel_f=
etch, bool, 0400,
>>          "(0=3Ddisabled, 1=3Denabled) "
>>          "Default: 1");
>> =20
>> -intel_display_param_named_unsafe(enable_dmc_wl, bool, 0400,
>> +intel_display_param_named_unsafe(enable_dmc_wl, int, 0400,
>>          "Enable DMC wakelock "
>>          "(0=3Ddisabled, 1=3Denabled) "
>> -        "Default: 0");
>> +        "Default: -1 (use per-chip default)");
>
>We're already explaining the possible values in the previous
>parentheses, so maybe the -1 should also be explained there?

Yep that makes sense. I was following the trend of what was done for
enable_fbc and enable_psr, but I guess following other examples in this
same file where we tag the default one with "[default]" is better.

Thanks! I'll update this on the next version.

--
Gustavo Sousa
