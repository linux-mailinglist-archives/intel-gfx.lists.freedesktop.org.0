Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5C0A1D531
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 12:18:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FAB510E2FB;
	Mon, 27 Jan 2025 11:18:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i+mlMMwT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93E2310E2FB;
 Mon, 27 Jan 2025 11:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737976692; x=1769512692;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=2ImD8TBrcstmzfGuMY4zEGCCMln2V9r7u1Y43TyiEt0=;
 b=i+mlMMwTUOzpXTWSN6L11xeoSl5RRtEdtx9Orj07kSTGib1TA3EpwTuL
 D1QtN9rddyCPw3OZpyStmjtvzv6FuJYjXysw7iQkk97tGwBfCxmvWN+gn
 Luinw4YPDARERtRCt0ZJVsHyd81UK24PfliFWMw/rurFfkR+TuB7d13MB
 zl1X2HauKw+96DEKGOLkQZLy+QErShhtjbj22fCemGbjPfL6/TIBID+5L
 O9wHPXRdPfgGtBIwp+e2YY8vevqcMc2Br/431KNmDxkH9Ir0I36IBNVuz
 nntFiQDZ5jj1Wny9yZrRMSQaFRJeOs0Jg0ERsnKlI3WG9dRVn7NOlIGsz Q==;
X-CSE-ConnectionGUID: Iz/DoX7hQgGla4yUgl0gmg==
X-CSE-MsgGUID: H1sPAyviQUGguw1o99mW4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11327"; a="55973233"
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="55973233"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 03:18:10 -0800
X-CSE-ConnectionGUID: lImCm3zFQzuddWbCPk9o/Q==
X-CSE-MsgGUID: 52k37daeSKaGsWNfU5DG3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="108208789"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jan 2025 03:18:10 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 27 Jan 2025 03:18:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 27 Jan 2025 03:18:09 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 27 Jan 2025 03:18:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uA+yEBDPaDVkiJCA6vq+qhnTeGFPiyn25w/9ZFVB2z+nAkJUt1U6cCQx3OFGbUdFDFwu99ptHIBf5NhVwzbSnbxT8xOlVh5WEJT9bJ5Pu8L3zB43tcLV0vDpp8Kn95N7LKBRxzt1KKM4LamJIe/uneyt10ZweWXUAHneZYjnUsXW0gaGW/g7a/Ynnkm6WQqtsPflm+uXe0TSnQj/87uKLA7Equ/ztyB1N6F1v/+Fj0F4kNeGgfYFB/ZR1jtjDYEo4JV/vL865LaEy8poIXbOjdRxK87wzeihbBGKk/sZMI1YEltX+xQm7MOLjJhI3insCD9asCbpMde5WbdnjqXNXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3qv+lRIdPr4fRSoav83Dh11k+ZNgkUF0er+2/NSNlNc=;
 b=ee9oFgOymqPT5Pv0UavEiTpuKl+MqSI5mBGE8/f5PEWZmbUo549iu+VGuPUTQK0qUv/0jlzRALOxCxt+cowQ2mVYdRSTbMhHN5eRIAanaUi3CqF4O6GG8SF6nm0dvFIJmDinRb3y1syk1cYpSMvFr3J0HHEyuCzi6DvFzUjiE8Lqh086ROsBjpBTZagErqzN0jOz0FwqRl7t9RICCbyuqHbRElnivlKBkllRM/y0rooEHKrfOtD7AchO9q1BISJ8yqgUj9LXD7SYNSWyIdwiI60AnwLVbKll1bSvGawryICFcyD0W79kMbCI7YL8lZ0f0+zHcryR1WHaKis3RVU8Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CO1PR11MB4868.namprd11.prod.outlook.com (2603:10b6:303:90::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.19; Mon, 27 Jan
 2025 11:17:53 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 11:17:53 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87bjvsbnap.fsf@intel.com>
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
 <20250117220747.87927-3-gustavo.sousa@intel.com> <87bjvsbnap.fsf@intel.com>
Subject: Re: [PATCH 2/4] drm/i915/dmc_wl: Add debugfs for untracked offsets
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 27 Jan 2025 08:17:48 -0300
Message-ID: <173797666856.2736.14360802368974999515@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW3PR06CA0018.namprd06.prod.outlook.com
 (2603:10b6:303:2a::23) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CO1PR11MB4868:EE_
X-MS-Office365-Filtering-Correlation-Id: 421b2a4f-af32-4450-dbbc-08dd3ec43e41
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UHBIR3RIckFJVW56TzlRZmRCOXJBSUxNMys1WEtaRkVWS2p1RitIN3Jsb1U1?=
 =?utf-8?B?TFRsdUZmUDdqMEZlZEloMk9odDR5aXVNL1I3L2hlM3ZzVHFDYnFMVGF3TDZy?=
 =?utf-8?B?cy9IcFVjdmYvUEVyVW1MR21nMVR5SFNkczU0U20zVVJxUHVqZzFkek84QjJ6?=
 =?utf-8?B?THg5ZFB4NUZiRzdTNm1nZWlsRWsydmVMT2YzWFo1bnpwcDljZnhCaHMrVndk?=
 =?utf-8?B?OFBDenk3eUpUWXpMOUxCUnIvTGhXZmtQVGVLTzVDLzNXSFJXb1MrMVJVYVVw?=
 =?utf-8?B?VTR2VXZ5ZmZ2UHBvMVhwOGVWdkxCY05DMTFlZ2pldjVpcE5vOGNTaGNGVXo5?=
 =?utf-8?B?UG1TNWMwSTA2b2FKWnQ5bkNNODJUc3VzKy9UT3hSZUNPT2FmU2VQcmJvbDZZ?=
 =?utf-8?B?S0JDcmNrRGdIdFdWQlllUzJ3QkJhN2p5b1Z4OGxoR3hVZTJXY2RtWXFWVlQ5?=
 =?utf-8?B?MXRmckExZGwyZ01tUmRrSCs1T1piMzUxeGJ0UnVBVENIdFpBd3VBbGNOcG54?=
 =?utf-8?B?R3NmakxESGJNck9FVElNKzh0ektNcE1KYWZJbEpIeE92V3FJVnFGQi9SY2Vh?=
 =?utf-8?B?dmZOWEw0Q21XdXVzcC9GSWF3M1VxVHVJa1B6b1htcDNQSkNpamU3TnB1TXB1?=
 =?utf-8?B?Y0d2dlN3RWg5Y3dnTVpYM0lZQzVlVWc5LzFWYmhIalJ5dkRQREZCMzJpT2NL?=
 =?utf-8?B?bHpLWWxaeGlQMDgyQlRwWDVtODQ2ME5qUzBTZ1ZLcmdza05sbGZTWU1CTlB5?=
 =?utf-8?B?T3J1TDFkWm9JVnNhRFBFck5FYVU3ZDMwTlovNGdRVVF5S2tLZVZwcStaNmJB?=
 =?utf-8?B?Tld5UTFxZ3RVTndaWWlXL1hIRW5OYWl4Q1M0M2xtSFpKbWluMkhKOHVqVnV3?=
 =?utf-8?B?SjdpWXd1SDdpWGR1LzlScjVwdytadGlSWGxYWU9rNDhxUWFmbVV3NTFyaW9v?=
 =?utf-8?B?M0JDbVpEcFR1MGwzVFhUQTRQWVYrMWRiNTJlR1hqZko3MFRSNjg4TFBRUFhj?=
 =?utf-8?B?bDhFbmxLdkNDcGRHZVluQkE1VDQ4YzEyRzVncGJjam9ELzViakRGSkxkMkxp?=
 =?utf-8?B?VmpxZ3owSzhVNnJFL2YveVVxK3k0Ym1tVzlQR09URXZrRGdrYWMrQVVOUzN4?=
 =?utf-8?B?SzRDK2hIV2JMa1JSYW5TSC9GUUZWS0ZIZzVYcVZlYnRHTmpaNktYSDVFenN1?=
 =?utf-8?B?SWgrbVBBdTFSWDlxY1d1Z0tSd2dIVFlwblMwWk1RN051OFpPTzUwbW9PU0p3?=
 =?utf-8?B?SVRjS3NOUmU3SytIR0VrZDRWalJuaE5YODR6L0Fuc2tkTGNvdUh3V0lmaEs4?=
 =?utf-8?B?Sko4NEkyMEJYclFWZXUyaVpNMW80MFQyNEt0RlhlbjJnYksrM25XRlRBd2kr?=
 =?utf-8?B?YkFtSDBmRDBnUXJEeEx5Q0NhWWFDSFZ4N1pPL1J0aUxXdDdxV0lwNXFTNDJl?=
 =?utf-8?B?Ym9oK2tjZ01yK1FxUjFCVWt0TlZkZ0IvTEJScXpvdTc0TzZNdjJhaDRvVVA2?=
 =?utf-8?B?ODJhUlZKdmhRSmx5dkxXRUU5Q2E2UUY3MnlvUVdVTXorTkd5NXJhNXZTYzBN?=
 =?utf-8?B?YlJWWkFHT3BlcHkyRXhoK2djdEdYNktvVGJuZGxUelZWZ0VuUnFNaUduRmpi?=
 =?utf-8?B?ZmtnV0djcWt5SHg2aE1hcTdFNmJYYlBYL241MkFVSXZ4RFRQbWpLRVJqU1lH?=
 =?utf-8?B?SC83YktPYlZheEM4eHk4L1U2UmpUalFXRlpCK1RCMWQ5SmxFY2pneDV2N093?=
 =?utf-8?B?RnE4cU5TUzdocnkyU09pNkRNQjQ3c3M0ZkhTQzBFRW1jajdidWZzVWVOTEM5?=
 =?utf-8?B?NmIxT0xmYkltSXgrOEdUdjhNQ0RtaE9XM0w0Y0tpNlp6UkthVTBiVHUrM3Zm?=
 =?utf-8?Q?zyk2TIHbUMU/3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UE1NY09TSlV3WDBrOUgrblM2M29weWtIZWdtQWlIcGpBenBSR1RRQ0daVkVl?=
 =?utf-8?B?Nk85S0NOT2hxd0ZGenJtZ0FoZ2JuaTZFUEx1cE9LVUVOdCs5SEZqTkJOK3Ji?=
 =?utf-8?B?R0NKU3lwV0pFV0x3WlcyV3RVSnhhYTBiTGF0Z0pNUVgrdi9weWorWVcwSW5l?=
 =?utf-8?B?ZXR4TlFaSTdVdk02bWJqYlVlR1ZZajRlNlRWOFdKclV1U0VaMlhNU2tHOTQy?=
 =?utf-8?B?azVySk9IdG1JejNLRXFuN2VILy91d21vWVptV01zZFlEZUdGQnl4TXhmWEdO?=
 =?utf-8?B?d2J0WFpTQmR3enhQM3FFNEVydnZhQTdQdk1zZ214WUU0NHlFSVBtT0tJVVhI?=
 =?utf-8?B?NjU5SDBuQ1plcnN3b1dGTmN4MngvSXhPQUdsTDJoaVplYWpjWVc4aVZWbE5U?=
 =?utf-8?B?NlBiL0svanFHOWprbk1nSG8weTg0SHRNWWtBYnloV0tVYmgweTdtaEhEajBq?=
 =?utf-8?B?Qm5FRTB5RjJxeTVhcHNwLzQ2STRHdEM0ZlAyTUNBYTN5TGViZjRCb2NxTUpG?=
 =?utf-8?B?TDBGcjQvS2xqajh5YUVjamJKcXgyZWxQWm1FcDE4eVJLNjJDVGZ4enVYMWU1?=
 =?utf-8?B?UU1ESHlGWGI4VldFeTg0K25ZVGZFakpZM3lCWUJrTFJoY291UHhmSTNqUGtz?=
 =?utf-8?B?K0R3NUlVN0xLZkRmc2VRZFhyU1VMQzB1dEtZN0ZvU0xvUUUrc0ZZNWxCMUM3?=
 =?utf-8?B?NFk4aFh3aHNTTEhDQmtNejlxSFh4bFZCL2pYMk1jcW9JK3RSSlhKdkdzYmJV?=
 =?utf-8?B?byt2SDk2bnNQcmU0bVFVUGRjaEViZGxKWTVSc3BmRGx1VUVsUEFNMWQyVFla?=
 =?utf-8?B?Y3pBdDhYalRGMW10ZjlWanYya0NJN2tJZk0vK1RYSzFNZEt4cFJTeHh0SEx5?=
 =?utf-8?B?RnRLa1FtZDQzeXA5UkozUFE3ZmNXeUcxTlI4QzVUcGpySWV1YzdMUklzWmdX?=
 =?utf-8?B?YkMyQmhuSEhRaVozNXB5RlhHUU1zUEpWMHVHaHJOeU5VblZxbWtTZ1VXeEFD?=
 =?utf-8?B?aC9rZFV2M0V0L1BjVDdzaCs5V2d6bC9OaUhXaEkrODd4ZXFnNm1sR2ZiTWJB?=
 =?utf-8?B?Q053YUVheDF2N29XWU9qWjFzcm9UeDdkRWN6Vm5UcGZpbVQ0TE8zeE1vOFQ3?=
 =?utf-8?B?b2xOaEFxbnJKVGZQMHE2QWt2dnNCdHo1Zk9XUWFjcVp4V3M5Z1V0ekJ1TkhU?=
 =?utf-8?B?KzhVTGRMMnlKbFdBYjRwcWNSY2ZHRldSbDhDOUdGdUdWeEtnSWFzMFQ5UjVF?=
 =?utf-8?B?L3VJWUhUR1J5czRaVERkK25uRjdEWFVwc2s1c1lqS05lTU5LWXJyUzdZK2Zx?=
 =?utf-8?B?cFBqSmxjOGxHVUxtU1F6N2p3cStJQVRrUmxGdjlXUDFBcmZkejFvaE1yMU1D?=
 =?utf-8?B?MHh5KzI1d2NUKytNY1ZER3RFUHFUV3Ezb3hJYmRqeVpqTEI5aDNYczh2SlVt?=
 =?utf-8?B?WUVTOXVGUkNOdUIzMXpVU2NFQjM2SzRYTFRNTmtaKy9pdytjOHNCOXVueHlv?=
 =?utf-8?B?dFc4U1RMSjMrZzR6ODhodHpjR0hnOE1rbnVOTmNzRzVJTjRkTkRxdHo4eGtR?=
 =?utf-8?B?M0x3NzlOQ2dvTkJsWkQ5RC9vRE1HYVdNRVp6ZGN3UTBhQ25MczhoMmN1bVVq?=
 =?utf-8?B?WGcyZ0lJekZKVy9OTzc4Q0ZlNkJxYlRvT3dGdUhHbXNnU0szZVlnRHFDWEVu?=
 =?utf-8?B?MDQ3Zm90cGY1S3drTVBUb0NrbnozVkRWWEhSQWxRMS9oVnRWUll0Mm9Wa21B?=
 =?utf-8?B?bVZEV1A1YUtIUVpYTExwdERzVmJZNzBiRXNtTTI1aFRpT0N5by9INTZ4amg1?=
 =?utf-8?B?RkpxWUJYNEVkRVNTUXQ5d1RDUHVQWnZ4RDJYVjlBNE5NZXlJQUJnL3dCWE1R?=
 =?utf-8?B?VHR6RVp4MTd6cm1SaUloL2Q1NElMYi9qbmcxclU2UXhWYXI5djNDS0dKb2Ew?=
 =?utf-8?B?N3dqNnRvR1hvM0xsZCtscW4reTlGZ2FLeEFKTXFxbFhoQW5YTy9iKzczcE5m?=
 =?utf-8?B?T1BPMmxmNWJsRDZUNmlXTFVMM2w5QkljcU55dHNkWUw3QW1FN3NUdnRUL2Vy?=
 =?utf-8?B?Z1k0NlNqcHF1QTZpVnV1ejN4WDdVWGVVd1FRS3liRVlnanlwSlN0bWplWDZV?=
 =?utf-8?B?Y0djMnVjc284RWV3NWVNUnNLcFVubjJ5UmI0dVQ4ZzJHSFI0Wjk3clBCc2tp?=
 =?utf-8?B?Q1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 421b2a4f-af32-4450-dbbc-08dd3ec43e41
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2025 11:17:53.8543 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VMtr8o1Mr4VWxaJecxRs8PSYkMM74RNuMXaomZ4JgE7QBYJvxPWxAisthk3GKVpoSu0dTQF53ZppABzlAHHR2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4868
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

Quoting Jani Nikula (2025-01-27 06:47:58-03:00)
>On Fri, 17 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.h b/drivers/gpu/d=
rm/i915/display/intel_dmc_wl.h
>> index 5488fbdf29b8..d11b0ab50b3c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
>> @@ -11,6 +11,7 @@
>>  #include <linux/refcount.h>
>> =20
>>  #include "i915_reg_defs.h"
>> +#include "intel_dmc_wl_debugfs.h"
>> =20
>>  struct intel_display;
>> =20
>> @@ -27,6 +28,7 @@ struct intel_dmc_wl {
>>           */
>>          u32 dc_state;
>>          struct delayed_work work;
>> +        struct intel_dmc_wl_dbg dbg;
>>  };
>> =20
>
>With intel_de.h including intel_dmc_wl.h, we'll have almost all of
>display include intel_dmc_wl_debugfs.h, and getting the definition of
>struct intel_dmc_wl_dbg, really for no good reason.
>
>I really like to flip this around. You need to have a *good reason* to
>expose stuff to the entire display driver all of a sudden. Instead of
>requiring a good reason to hide stuff.

Maybe make dbg a pointer and have only intel_dmc_wl.c knowing its guts?

Or do you have some other suggestion?

--
Gustavo Sousa

>
>BR,
>Jani.
>
>
>
>>  void intel_dmc_wl_init(struct intel_display *display);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
>> new file mode 100644
>> index 000000000000..41e59d775fe5
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
>> @@ -0,0 +1,251 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright (C) 2025 Intel Corporation
>> + */
>> +
>> +#include <linux/debugfs.h>
>> +
>> +#include <drm/drm_device.h>
>> +#include <drm/drm_managed.h>
>> +#include <drm/drm_print.h>
>> +
>> +#include "intel_display_core.h"
>> +#include "intel_dmc_wl_debugfs.h"
>> +
>> +#define DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX 65536
>> +
>> +/*
>> + * DOC: DMC wakelock debugfs
>> + *
>> + * The DMC wakelock code needs to keep track of register offsets that n=
eed the
>> + * wakelock for proper access. If one of the necessary offsets are miss=
ed, then
>> + * the failure in asserting the wakelock is very likely to cause proble=
ms down
>> + * the road.
>> + *
>> + * A miss could happen for at least two different reasons:
>> + *
>> + * - We might have forgotten to add the offset (or range) to the releva=
nt
>> + *   tables tracked by the driver in the first place.
>> + *
>> + * - Or updates to either the DMC firmware or the display IP that requi=
re new
>> + *   offsets to be tracked and we fail to realize that.
>> + *
>> + * To help capture these cases, we provide the intel_dmc_wl/ debugfs di=
rectory,
>> + * which exports a buffer of untracked register offsets.
>> + *
>> + * Untracked offsets
>> + * -----------------
>> + *
>> + * This is a buffer that records every register offset that went throug=
h the
>> + * DMC wakelock check and was deemed not needing the wakelock for MMIO =
access.
>> + *
>> + * To activate the logging of offsets into such a buffer, one can do::
>> + *
>> + *   # echo -1 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_siz=
e
>> + *
>> + * This will create a buffer with the maximum number of entries allowed
>> + * (DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX). A positive value can be used in=
stead to
>> + * define a different size:
>> + *
>> + *   # echo 1024 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_s=
ize
>> + *
>> + * Every write to untracked_size will cause the buffer to be reset.
>> + *
>> + * It is also possible to read untracked_size in order to get the curre=
nt
>> + * value.
>> + *
>> + * After enabled, the buffer starts getting filled with offsets as MMIO=
s are
>> + * performed by the driver.
>> + *
>> + * In order to view the content of the buffer, one can do::
>> + *
>> + *   # cat /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked
>> + *   0x000c4000
>> + *   0x0016fe50
>> + *   0x000c7200
>> + *   0x000c7204
>> + *   0x00045230
>> + *   0x00046440
>> + *   0x00045234
>> + *   0x0016fa48
>> + *   0x0016fa40
>> + *   0x0016fa5c
>> + *   (...)
>> + *
>> + * The order of those offsets does not reflect the order the checks wer=
e done
>> + * (some recently seen offsets are skipped to save space).
>> + *
>> + * Once done with it, the logging can be disabled with::
>> + *
>> + *   # echo 0 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
>> + */
>> +
>> +static int untracked_size_get(void *data, u64 *val)
>> +{
>> +        struct intel_display *display =3D data;
>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>> +        unsigned long flags;
>> +
>> +        spin_lock_irqsave(&dbg->lock, flags);
>> +        *val =3D dbg->untracked.size;
>> +        spin_unlock_irqrestore(&dbg->lock, flags);
>> +
>> +        return 0;
>> +}
>> +
>> +static int untracked_size_set(void *data, u64 val)
>> +{
>> +        struct intel_display *display =3D data;
>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>> +        s64 new_size;
>> +        u32 *old_offsets;
>> +        u32 *new_offsets;
>> +        unsigned long flags;
>> +
>> +        new_size =3D (s64)val;
>> +
>> +        if (new_size =3D=3D -1) {
>> +                new_size =3D DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX;
>> +        } else if (new_size < 0) {
>> +                drm_err(display->drm,
>> +                        "%lld is invalid for untracked_size, the only n=
egative value allowed is -1\n",
>> +                        new_size);
>> +                return -EINVAL;
>> +        } else if (new_size > DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX) {
>> +                drm_err(display->drm,
>> +                        "%lld too big for untracked_size, maximum allow=
ed value is %d\n",
>> +                        new_size,
>> +                        DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX);
>> +                return -EINVAL;
>> +        }
>> +
>> +        if (new_size =3D=3D 0) {
>> +                new_offsets =3D NULL;
>> +        } else {
>> +                new_offsets =3D drmm_kmalloc_array(display->drm, new_si=
ze, sizeof(*new_offsets),
>> +                                                 GFP_KERNEL);
>> +
>> +                if (!new_offsets)
>> +                        return -ENOMEM;
>> +        }
>> +
>> +        spin_lock_irqsave(&dbg->lock, flags);
>> +        old_offsets =3D dbg->untracked.offsets;
>> +        dbg->untracked.offsets =3D new_offsets;
>> +        dbg->untracked.size =3D new_size;
>> +        dbg->untracked.head =3D 0;
>> +        dbg->untracked.len =3D 0;
>> +        dbg->untracked.overflow =3D false;
>> +        spin_unlock_irqrestore(&dbg->lock, flags);
>> +
>> +        if (old_offsets)
>> +                drmm_kfree(display->drm, old_offsets);
>> +
>> +        return 0;
>> +}
>> +
>> +DEFINE_SIMPLE_ATTRIBUTE_SIGNED(untracked_size_fops,
>> +                               untracked_size_get,
>> +                               untracked_size_set,
>> +                               "%lld\n");
>> +
>> +static int untracked_show(struct seq_file *m, void *data)
>> +{
>> +        struct intel_display *display =3D m->private;
>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>> +        unsigned long flags;
>> +        size_t remaining;
>> +        size_t i;
>> +
>> +        spin_lock_irqsave(&dbg->lock, flags);
>> +
>> +        remaining =3D dbg->untracked.len;
>> +        i =3D dbg->untracked.head;
>> +
>> +        while (remaining--) {
>> +                if (i =3D=3D 0)
>> +                        i =3D dbg->untracked.size;
>> +
>> +                seq_printf(m, "0x%08x\n", dbg->untracked.offsets[--i]);
>> +        }
>> +
>> +        spin_unlock_irqrestore(&dbg->lock, flags);
>> +
>> +        return 0;
>> +}
>> +
>> +DEFINE_SHOW_ATTRIBUTE(untracked);
>> +
>> +void intel_dmc_wl_debugfs_init(struct intel_display *display)
>> +{
>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>> +
>> +        spin_lock_init(&dbg->lock);
>> +}
>> +
>> +void intel_dmc_wl_debugfs_register(struct intel_display *display)
>> +{
>> +        struct dentry *dir;
>> +
>> +        if (!HAS_DMC_WAKELOCK(display))
>> +                return;
>> +
>> +        dir =3D debugfs_create_dir("intel_dmc_wl", display->drm->debugf=
s_root);
>> +        if (IS_ERR(dir))
>> +                return;
>> +
>> +        debugfs_create_file("untracked_size", 0644, dir, display,
>> +                            &untracked_size_fops);
>> +        debugfs_create_file("untracked", 0644, dir, display,
>> +                            &untracked_fops);
>> +}
>> +
>> +static bool untracked_has_recent_offset(struct intel_display *display, =
u32 offset)
>> +{
>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>> +        int look_back =3D 32;
>> +        size_t i;
>> +
>> +        if (look_back > dbg->untracked.len)
>> +                look_back =3D dbg->untracked.len;
>> +
>> +        i =3D dbg->untracked.head;
>> +
>> +        while (look_back--) {
>> +                if (i =3D=3D 0)
>> +                        i =3D dbg->untracked.size;
>> +
>> +                if (dbg->untracked.offsets[--i] =3D=3D offset)
>> +                        return true;
>> +        }
>> +
>> +        return false;
>> +}
>> +
>> +void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, =
u32 offset)
>> +{
>> +        struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>> +        unsigned long flags;
>> +
>> +        spin_lock_irqsave(&dbg->lock, flags);
>> +
>> +        if (!dbg->untracked.size)
>> +                goto out_unlock;
>> +
>> +        /* Save some space by not repeating recent offsets. */
>> +        if (untracked_has_recent_offset(display, offset))
>> +                goto out_unlock;
>> +
>> +        dbg->untracked.offsets[dbg->untracked.head] =3D offset;
>> +        dbg->untracked.head =3D (dbg->untracked.head + 1) % dbg->untrac=
ked.size;
>> +        if (dbg->untracked.len < dbg->untracked.size)
>> +                dbg->untracked.len++;
>> +
>> +        if (dbg->untracked.len =3D=3D dbg->untracked.size && !dbg->untr=
acked.overflow) {
>> +                dbg->untracked.overflow =3D true;
>> +                drm_warn(display->drm, "Overflow detected in DMC wakelo=
ck debugfs untracked offsets\n");
>> +        }
>> +
>> +out_unlock:
>> +        spin_unlock_irqrestore(&dbg->lock, flags);
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h b/drive=
rs/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
>> new file mode 100644
>> index 000000000000..9437c324966f
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
>> @@ -0,0 +1,29 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright (C) 2025 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_DMC_WL_DEBUGFS_H__
>> +#define __INTEL_DMC_WL_DEBUGFS_H__
>> +
>> +#include <linux/types.h>
>> +#include <linux/spinlock.h>
>> +
>> +struct intel_display;
>> +
>> +struct intel_dmc_wl_dbg {
>> +        spinlock_t lock; /* protects everything below */
>> +        struct {
>> +                u32 *offsets;
>> +                size_t head;
>> +                size_t len;
>> +                size_t size;
>> +                bool overflow;
>> +        } untracked;
>> +};
>> +
>> +void intel_dmc_wl_debugfs_init(struct intel_display *display);
>> +void intel_dmc_wl_debugfs_register(struct intel_display *display);
>> +void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, =
u32 offset);
>> +
>> +#endif /* __INTEL_DMC_WL_DEBUGFS_H__ */
>> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>> index 81f63258a7e1..f03fbdbcb1a4 100644
>> --- a/drivers/gpu/drm/xe/Makefile
>> +++ b/drivers/gpu/drm/xe/Makefile
>> @@ -221,6 +221,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>>          i915-display/intel_display_wa.o \
>>          i915-display/intel_dkl_phy.o \
>>          i915-display/intel_dmc.o \
>> +        i915-display/intel_dmc_wl_debugfs.o \
>>          i915-display/intel_dp.o \
>>          i915-display/intel_dp_aux.o \
>>          i915-display/intel_dp_aux_backlight.o \
>
>--=20
>Jani Nikula, Intel
