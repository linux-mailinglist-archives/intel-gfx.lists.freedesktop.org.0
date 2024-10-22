Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3558A9AB987
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 00:33:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF25210E21B;
	Tue, 22 Oct 2024 22:33:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jSXY96Gy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E57910E21B;
 Tue, 22 Oct 2024 22:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729636381; x=1761172381;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=qtVk9ZlJxRAXtytqDSIG+XnI3Ef3L8xZTmuVWOoZhI4=;
 b=jSXY96GyAS7TmBg2TQqiD86G+TT0Nf0ppSPfTx3UssK3h2QnMriG/aCy
 GaboOq9uX5bJnvUAAU86hyLCKNvOYcfCvYTJC7tSCHNmPqJNLw3Kzs/Nt
 2CRzkNMg7zxszMgktqTO9xZMNo1UQcpzmU6pJUHGt+URugvcanbjOSLdc
 3pnRNA2MSSRnRnDCJ7cYJm+3QLIUDvybX1JO4rl4/DfmU65hZCWv0dVCN
 fvHY7vAr4rg4M1RnIiYuL42ioaCh2Dpl7UaB1zfCv85ya3a2mVj7WuSb8
 4fjxYjsROvdmvglUIROyLqqgF9AqrvaaypCvW+m/kgWMDrLfjvSUsUQKt g==;
X-CSE-ConnectionGUID: dfKuwgQUQzaJNG7riKXMJA==
X-CSE-MsgGUID: qGgArn0wS32y/3esG32aBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="28662510"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="28662510"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 15:33:01 -0700
X-CSE-ConnectionGUID: UNwcM8+VS4ShPP/3aVZulg==
X-CSE-MsgGUID: qqsVa8zyQb+i7Blt9Ff9vA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="80820507"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 15:32:55 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 15:32:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 15:32:54 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 15:32:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T/q3loKcWfi+IamY+4/cN5ckc3NBopky0PvVkgHfEYpKiCi6VAlRYyxKr9FbjmGeF1f9O8Rk+8BemBGbnstI5GH3uHm9dgXHIjEVt/cJm8Us2qXXwvnHBXyTo6CvdOeA8sGGch33f5aROF3lWbFKHMEBRjaiKc1Fiagl0wNk9MDKBkKCqnZ+TevRPKu6CuAKWE/ca8FlNtKb+sWF6oEbVrjpWP2ihrLc2PMD5uSpm+6jzqio0GDdr2u2p8fpuVTZuyPluw0x324Gzfzx+WGuJGziiqP2op3YU2LCYBwpTcAwOmqvh1hqBBTyMIhFQPTQ1xt7+R12lccED912DcSRbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RCkxsJNTzSc4s5sfeQRxJuGj2ToR2AN460AAwD+oR/M=;
 b=S21AQVIxY7EZ11fA9wxiKHBzQW8ng2yIZ9n4gyKNRL4nEZhiiBeXEig8ufZO5pZtbaEF8lQrrB1xjJwHkP8g1DnCOXg9jD714f8WAO+7F2L7IWMAhjCOniHIvByBA7M/3aqL/XVU93v2SRux7Eir0bvOIeCuOo8SdCJoizNrTOruESFFVWDaLUDWBNnPP9rx0ZFiJLPOJZeJp6WPCx4JqCzmEVD0iElq7lRTIK6NsGQlHrLT0xzrZuL7j9Dp3UDD9QXnBv8FDMH+YE0aqQHhVK22ejvwZ4gbuVWgUOclbDb4RdsvddBCnLKEc9ccogBLpsGuwDs/XaWTgZJJ3Ve9PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ2PR11MB8469.namprd11.prod.outlook.com (2603:10b6:a03:57b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18; Tue, 22 Oct
 2024 22:32:52 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 22:32:52 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <IA1PR11MB6266E9F7B9D6BA9D1B812EC3E2432@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20241017205444.102979-2-gustavo.sousa@intel.com>
 <IA1PR11MB6266E9F7B9D6BA9D1B812EC3E2432@IA1PR11MB6266.namprd11.prod.outlook.com>
Subject: RE: [PATCH] drm/i915/xe2lpd: Update C20 HDMI TMDS algorithm to
 include tx_misc
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Date: Tue, 22 Oct 2024 19:32:48 -0300
Message-ID: <172963636813.3700.12275974398582569427@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW3PR05CA0021.namprd05.prod.outlook.com
 (2603:10b6:303:2b::26) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ2PR11MB8469:EE_
X-MS-Office365-Filtering-Correlation-Id: 18e78589-a6c7-43b5-6248-08dcf2e9770d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q1o0aHRnZytmU2VYVWNPMGw0MExEMVZpMHU3YlBMaWZWRzFDWWJVVUhLZzNG?=
 =?utf-8?B?UlNIbVRKeXBkVHFXcjMrK0hjaHB0RjIxRm1pdytjcEZtQVpoOHNPdFNsYTh6?=
 =?utf-8?B?c0Q3SDZmZk9POWhWVDAxQjhOL1ZtSXpLYWcva3ZRZHo0UXRSSVRYNStaNDVU?=
 =?utf-8?B?VXhQaDRGTHAxYW1TUW5qZXU1MUFNang2bEt4WmZhem1ESHl2dGpjd0JYN0Vh?=
 =?utf-8?B?YUJMd1QydHpPRzNNOTJ5Y1NlU2pCN08vRFdVQUtGRnR6VDYvSTcyNXR6RS9I?=
 =?utf-8?B?TUFZSnJpTHljc3hOYkFQbmNXcEd5N3lKaFZWTWFNL2pObFV4S1l1NkJkU2o2?=
 =?utf-8?B?Q25HVUhSNitxR0FTd2ZyNnh0T28zT0VicVMzenhpWVZUTW56dEhpdkdkRyt4?=
 =?utf-8?B?OHpCMEZBS0NTdjAzRXJGOEtLN1U1K2wremcxdTlIZ1Z2VzRwcm1zUUIzdzRh?=
 =?utf-8?B?bmJQQ3RSUTBTeEh6K2ZldCs0K0xWL0Y2SlNuMW9ySlJZSXZZY2k1aEtWSFlr?=
 =?utf-8?B?SUptSkxlZHUzSFAwenltSFZJMk1Xem04dGNkTE5IY05iQ3pyU08yZW0rbXJ3?=
 =?utf-8?B?cXpOaHlVdFFIeHhyaG5GWmprcWRTVXBmeVNwS2MzcDQyZHhuQjg5Sk9VMGh4?=
 =?utf-8?B?d0lxdkdzempIL3QrcGYvc0ZlUUs5T3ZYM3ZxckQwM1BvUVpKRzZTcGk3MEFw?=
 =?utf-8?B?eUNLTVNmdDJrZkRYZyswMUdER21rMi9nQjJRc3JlUEJ0Yzc2MzJET21GcFl6?=
 =?utf-8?B?bTE1VjZoTndrQVByTkllVkkxWUJvYmZPZmtlUVNRb2tFNUN4NkdvbU9YZ09D?=
 =?utf-8?B?aW8yNnZmbHhZUDBlVkNKWDF2MW5sL01KcVpIRTU5VHpXTC9BU05vSTZrMFZq?=
 =?utf-8?B?empaU1UzZkswbHM2YmtrVWNSSEZjTWRJZUpkSnQrTVFmZm1yYWo2VUFNRzEr?=
 =?utf-8?B?eTZUUS8xT3dPeWVVQ21DdS9pcXk2dml5TytBMWxUYzhpMzYva3c4V0lKaTFQ?=
 =?utf-8?B?Y3NqSzRFNkVtb290SnV5NXJFdjZsVGVjdnlzaTByTWhqWWZXVWNraVBMN1BH?=
 =?utf-8?B?eEkxa2s5dHRIbjQ4eW9lQ3I3S2tjclB5clpFU2QrUVRBOXhRSi82ZEJmc0s2?=
 =?utf-8?B?K1NkMGVlZVlZakx0OWgybnR6VmIwRGJsRjB3S0J0SVNTY1BNMERpL0lFQlV6?=
 =?utf-8?B?MkJyT2xrYVE2R0xMNE85SXI3ODl6ZENQVXN1WWtZRk9IZWFPWkJxYW51OFpt?=
 =?utf-8?B?cDF6Yng1ZFBqRW82QVFUNzJ1RDZiVGw5MUUzd1RubXRLRGFZWldjZEdaM2xZ?=
 =?utf-8?B?RlNoUnVmaWNaeDFMbGg2VEFzaWd4WVoycWpmQ2lyZTBVMnVucUxyYjhIZVBl?=
 =?utf-8?B?V2hkVVNDeDhxS3hWYnVSMEsvQ0xSd2FOQUg0YXJDYnF3SmErbG9CTDA5cmhF?=
 =?utf-8?B?UVk1L2xtbjFXdTdJeis4SFVGTXRLTWVRb2FmV3M1RDdxYnJ5Znh4R1F6eHY2?=
 =?utf-8?B?d3NpcGNjemM5eGZDWmN6ZlEzZTRWOGZVWWNUdC9MV0o0Z2R2M3NtRzZuVkNY?=
 =?utf-8?B?ZkFMamRWRXdzWVFFcjBiS21LbnMrWkRBUjdqb3VxUHBGQXJIbEFMOUJjRTFl?=
 =?utf-8?B?aW9TUklqLzRvQzZKcUdKNXBPUGtWQ0JPR0NHZjF5QzB0QkxHY1htOUM5ZzVq?=
 =?utf-8?B?Nm9ndjNtSHBMSTFVSmdnTkc5L3h2bjhUYkpWd0IvVU5ScHMvOEIzUnUyRmNE?=
 =?utf-8?Q?jF9Xh2e6FUnMkLyNiI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXZkRTMzMmNRNGQyaXF3V21VVGp1UTBjaVJMMnNVZVk5SkR6djc4ejZzdG8z?=
 =?utf-8?B?QkRUc3dmS3dxVjRHT0NkODBsaVFvaGRlbWtkREZUKzZuU3J6aHBvajFtRk96?=
 =?utf-8?B?UXpQcnc0QTJqZVVKbUlJZitDaDNZdk9VMkdXVnVJWUtmdm9zMnFKUUsxZk42?=
 =?utf-8?B?d0hscG9sOGpzL3hkRGpWM1BJb212amFHelQxUnZJeE1zbUtOV3dIZDhzZGEy?=
 =?utf-8?B?aTVQNExxZEZ2Mzk5N0wzZUY4Zk1NNzdXSWZDbG02UWNZd2s5VW9qUSt1KzJq?=
 =?utf-8?B?QVNwN0ZCWjN3RTRYWE80SFJ5RlA5RE95UWZYZ0JIbFlCNG5IQkcxQXppemkr?=
 =?utf-8?B?NW9HY1VSUGpVTjhzS2UvekhPVVNGMnAyNUNmaE4zUGs4YlJtNDhtdDlsSks4?=
 =?utf-8?B?eFA3TDQwb2VkWVV3ZFpVWXR1VGkvUGtOSjFoa3FzRGJnTzUvZmFETm5qSGtZ?=
 =?utf-8?B?QTRIMzFtS2NFMzBObGpQYTV6UHZPdU02NUZQUDR1UXQyN3l2R0RwNHFKVkZI?=
 =?utf-8?B?NnNONSsyQ2Y1YzRIMFlRN2Q2WnloRmFEY1laN1Zzelo3V2o5V3VxejY5ZFBr?=
 =?utf-8?B?ZUU0WkxYWjRhNzdLY3pQS0ZVaS8rTFpycDJ4OFhLejJxYU5iTjREMHNISGVl?=
 =?utf-8?B?UTVSbzNrdU5Nb3BTenhLMFJwajJ2ZjNxM1l2RTY1STlzb3JwbURYNkZYZW43?=
 =?utf-8?B?UExLdFFKRGgvMWpyZTI5elF4dkhkSjJPZlhWOGovZVJPYmZGaVdzdFVkaFYx?=
 =?utf-8?B?aUdBZXBZNVpHRXRlTjZ2R1ZYU0hKMU02QWNtU3czSHVDUTNzVmNXMVVHNzBi?=
 =?utf-8?B?RE1rd1FSVmZPU0dYbHhtck5SNHhPTW9iOGJJcld4b0Q2bGttTm9tTGVtMjNm?=
 =?utf-8?B?NURnUHFZTHE2VGVLcEd5eXVTS0VmcEVlTGlrWUlMbktjZS9XMHI0U3VJRFhR?=
 =?utf-8?B?MzdaTmwrdHNzZkpKM0Z0bHdWY21iYVR2bi9pU2NLdU51ZTgwY0ViSE9BZUJm?=
 =?utf-8?B?WXJoeXcxWUtVOEsrUE04SEVlS0VweVg1ZHNGM1JQWTE0T1JoQjlCOUl5d1NR?=
 =?utf-8?B?YTc1OU5NNlZ6UFJ0WmIybFZ0eXd1MkZyaWtlelUrMndMZ0NmcTM3Zm1jQWR1?=
 =?utf-8?B?b25pY0Ztc3NhVWtKcjQvWU9aWU1lK2t5ZDR0QnJIVGcxMWdxQk9iUHNEMmZa?=
 =?utf-8?B?eWhiWElkalRuL1NCOG0zaWJhbGJuSXJTZUxYTGRsaWFSbWc3SFpxaHQxMkkx?=
 =?utf-8?B?NWc1Q0V2NENQaXp0eVJwQnI0d1gvaW5WRGNYNzBSQXN3enloc3h3MW8vUTNV?=
 =?utf-8?B?Yi81eWRmMWtXaEgvTHBTSm0yK1lKRXgzS0MzS3VzNENqMTBaRzJaVEtaYjI1?=
 =?utf-8?B?YWd0aUZFcVVTNThtMmRBb2xKVWd6bzVUUGtXRlN0QVlYREVHSFdGeFpyNjhI?=
 =?utf-8?B?RHphd0RhQ0VQTjMwNkZpZ1B6MFlHNVdKUjFWOERrTEU0WjBFZTRRMUJGN1hV?=
 =?utf-8?B?UjAyNm9TenZ4V0tYZXIxTkl3dUwrRllFQzV5ajkvNkVYRGdpb0ZDTmFyOThD?=
 =?utf-8?B?U1hQK1lOdGx0N0llTmxiTFV1SmwyRjE5emJHcTBhYTlXUWgycWl4T0xwVkZt?=
 =?utf-8?B?U3M3YWZwS3AxUlFXUjdQWnI5emxnd2VMcVg5R3Y2YXgrNitKU2c3RWVBUHJ6?=
 =?utf-8?B?cHBWVHNIYmhHVnkrMDJWZUtRbWN4TmREbDAyeVpaQmd6K0E5QThQWm9neGNS?=
 =?utf-8?B?d1B0MkNHWDR5R2ZtZ2U3UGRDWWVrbS9kUlVRLy9HbTBQT1k2NHAvYUZ5TGpv?=
 =?utf-8?B?Mi92ZzlFSlI5N2VtNjBWT09qWmo2ZU5TNnV3VmlTQnRacW95dmszSWFCWjJV?=
 =?utf-8?B?cjJCVTE2YlFVbE9MUGZKS3RUNjZJVm9HaHJuV0xKak53cUhoNXlpemtPYVRY?=
 =?utf-8?B?MkFpRldiOUFBMEo2cU4xcTVBTUtrS0FwVUpZN1R2alQ4M3N4RDlINmQwTkgy?=
 =?utf-8?B?T1l6eGlFanJBT2xqa0hWVDZyOXNCQXpJK0ZFa0RjZWZLN3hWYTlSRGhFMldI?=
 =?utf-8?B?QitmdmVLNjRlWlhLbFJvcU5CRks0MXNsY0s5YVU1RHNFM3plMXB2NlA1cjZh?=
 =?utf-8?B?Rkh6THcvQkh5QStKQmxtTitGNHJleVI4MDhZZUc4S2FpOHNmVENOTWJzVjhW?=
 =?utf-8?B?Mmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 18e78589-a6c7-43b5-6248-08dcf2e9770d
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 22:32:52.1946 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: poJVQaLX8rjF3IWQLWokdLBXsiYu6GSVUfX/rFpSchK8qPHXClFSifJB52jTgKF0c3zrb6piYP+MDY46/wrbvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8469
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

Quoting Bhadane, Dnyaneshwar (2024-10-21 17:09:00-03:00)
>
>
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>> Gustavo Sousa
>> Sent: Friday, October 18, 2024 2:23 AM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Subject: [PATCH] drm/i915/xe2lpd: Update C20 HDMI TMDS algorithm to
>> include tx_misc
>>=20
>> There has been an update to the Bspec in which we need to set
>> tx_misc=3D0x5 field for C20 TX Context programming for HDMI TMDS for
>> Xe2_LPD and newer. That field is mapped to the bits 7:0 of
>> SRAM_GENERIC_<A/B>_TX_CNTX_CFG_1, which in turn translates to tx[1] of
>> our state struct. Update the algorithm to reflect this change.
>>=20
>> Bspec: 74489
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cx0_phy.c    | 17 ++++++++++++++---
>>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h   |  2 ++
>>  2 files changed, 16 insertions(+), 3 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> index f73d576fd99e..22184b2d5a11 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> @@ -2142,8 +2142,12 @@ static void intel_c10pll_dump_hw_state(struct
>> drm_i915_private *i915,
>>                              i + 2, hw_state->pll[i + 2], i + 3, hw_stat=
e->pll[i + 3]);
>> }
>>=20
>> -static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct
>> intel_c20pll_state *pll_state)
>> +static int intel_c20_compute_hdmi_tmds_pll(struct intel_encoder *encode=
r,
>> +                                           u64 pixel_clock,
>> +                                           struct intel_c20pll_state *p=
ll_state)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>> +
>>          u64 datarate;
>>          u64 mpll_tx_clk_div;
>>          u64 vco_freq_shift;
>> @@ -2154,6 +2158,7 @@ static int intel_c20_compute_hdmi_tmds_pll(u64
>> pixel_clock, struct intel_c20pll_
>>          u64 mpll_fracn_rem;
>>          u8  mpllb_ana_freq_vco;
>>          u8  mpll_div_multiplier;
>> +        u16  tx_misc;
>
>In the case of tx_misc, it seems that using the u8 type have been a better=
 fit.

As Jani mentioned in another reply to this series, fields should be of
same width as their target registers. So I think it would make sense to
keep this as u16.

--
Gustavo Sousa

>
>Dnyaneshwar,
>
>>=20
>>          if (pixel_clock < 25175 || pixel_clock > 600000)
>>                  return -EINVAL;
>> @@ -2171,6 +2176,11 @@ static int intel_c20_compute_hdmi_tmds_pll(u64
>> pixel_clock, struct intel_c20pll_
>>          mpll_div_multiplier =3D min_t(u8, div64_u64((vco_freq * 16 + (d=
atarate
>> >> 1)),
>>                                                    datarate), 255);
>>=20
>> +        if (DISPLAY_VER(i915) >=3D 20)
>> +                tx_misc =3D 0x5;
>> +        else
>> +                tx_misc =3D 0x0;
>> +
>>          if (vco_freq <=3D DATARATE_3000000000)
>>                  mpllb_ana_freq_vco =3D MPLLB_ANA_FREQ_VCO_3;
>>          else if (vco_freq <=3D DATARATE_3500000000) @@ -2182,7 +2192,7
>> @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct
>> intel_c20pll_
>>=20
>>          pll_state->clock        =3D pixel_clock;
>>          pll_state->tx[0]        =3D 0xbe88;
>> -        pll_state->tx[1]        =3D 0x9800;
>> +        pll_state->tx[1]        =3D 0x9800 | C20_PHY_TX_MISC(tx_misc);
>>          pll_state->tx[2]        =3D 0x0000;
>>          pll_state->cmn[0]        =3D 0x0500;
>>          pll_state->cmn[1]        =3D 0x0005;
>> @@ -2266,7 +2276,8 @@ static int intel_c20pll_calc_state(struct
>> intel_crtc_state *crtc_state,
>>=20
>>          /* try computed C20 HDMI tables before using consolidated table=
s */
>>          if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
>> -                if (intel_c20_compute_hdmi_tmds_pll(crtc_state->port_cl=
ock,
>> +                if (intel_c20_compute_hdmi_tmds_pll(encoder,
>> +                                                    crtc_state->port_cl=
ock,
>>                                                      &crtc_state-
>> >dpll_hw_state.cx0pll.c20) =3D=3D 0)
>>                          return 0;
>>          }
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> index ab3ae110b68f..c1949aa1b909 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> @@ -280,6 +280,8 @@
>>  #define PHY_C20_B_TX_CNTX_CFG(i915, idx) \
>>                  ((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_TX_CNTX_CFG :
>> _MTL_C20_B_TX_CNTX_CFG) - (idx))
>>  #define   C20_PHY_TX_RATE                REG_GENMASK(2, 0)
>> +#define   C20_PHY_TX_MISC_MASK                REG_GENMASK(7, 0)
>> +#define   C20_PHY_TX_MISC(val)
>>         REG_FIELD_PREP16(C20_PHY_TX_MISC_MASK, (val))
>>=20
>>  #define PHY_C20_A_CMN_CNTX_CFG(i915, idx) \
>>                  ((_IS_XE2HPD_C20(i915) ?
>> _XE2HPD_C20_A_CMN_CNTX_CFG : _MTL_C20_A_CMN_CNTX_CFG) - (idx))
>> --
>> 2.46.1
>
