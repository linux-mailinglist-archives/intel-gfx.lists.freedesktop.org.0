Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0305A9AB5A8
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 19:59:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A081210E6F6;
	Tue, 22 Oct 2024 17:59:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aIl0T6RD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABD1510E6FE;
 Tue, 22 Oct 2024 17:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729619995; x=1761155995;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=y7HU9VTWXNJG8mf9SvsuLGdX8sWIX1wt9sssAo9gd1E=;
 b=aIl0T6RDpdZnc2wZGK4m1VV3VarBpu3SpoUpSyN0tHPGelb/07QJ8P0M
 Ex5JxIer31lsWL8FHkHpJMWlpHcgdK9P5GFvkfa0HLHxqb0EFaiJP+rPT
 WT8K7/gYfNZJA/Xi8tqspydh6GZna+h37lXAuost+6MukNzBFSm3sz3HO
 tB8H04MDeSV35YRtm5U2fYciH6NYz4lGFkU3WgB3W+m2n8m3GFyDRPGc2
 cNdJbEygS4uy9LyCUWGltnFy3S21Yxxa8tknbCJTrtaEwmbt1A2taXAXC
 Cohh+LWDXBx9Eix8lJM78IgD9RoMGliuEUSgiZcYTyQwinogVxwemU6Ag Q==;
X-CSE-ConnectionGUID: z7Wx6xt9SvOC4qOzme0UUQ==
X-CSE-MsgGUID: DvWHODWKSO2lDbUDnqJyng==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29336194"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29336194"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 10:59:54 -0700
X-CSE-ConnectionGUID: LI2KOZqzQFemwcxB7pZ9NQ==
X-CSE-MsgGUID: Q5t1CQsWQHax3HM6Of+SlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="80020049"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 10:59:53 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 10:59:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 10:59:52 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 10:59:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WcedrpwnrlVw/TO9HLPxViXDr8MYMUr9/+y7B2/Iw+VxcPeqgLw8paOrjokQCRz8tgB9O8VXuQLLyRWqIbRdGCHY1vRc8f8nsHqYjl5DEptYLOo/dBzaWac498ss20yy/ubTJwsvyQ9A0CyoIIV0qct5d43fJOJ+vT/IkafQ76eAStcCUfMzWDrKa+VYz900d3dJ+7s9qoU+dTzNA4rLv+rDhFyP4v9SHNftsUhajd3FSRzyRakObw71p0/5yE884XtUT+8VxXEaU4IH0q5mOc49lev9F/pbemb0VhYZxiH97X+Vw6Geyn2eSvOuIcE3VhVd5o9K9JT+3++DtGngLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XKeFCSA6fgJeCplNhYcHvsvVPgETtXsIIRigPgkvJQw=;
 b=FDSvktVhm5HwQtZXJD4eQuQN8PRZiTuAg+Hk3ajTRVw6QS5Cz9N8V9t0IlL4u7jfLs1wji7ETTifQ7LqW/9o6Ifz8sDAkhw3LWc/WhrKCbyTXRs/KtJOkgcz864DJ5Oc+BGx2/kx2j3XSk3rxH0dG6vdYiJ+w4YB3GLb3RjXlslA3Us6kR7IiUOn9/SfM2+i4fH0Kota7+WkVluWYTy4IP4qopKBAtfdz/y2Lhb/d57gMEbS0R57OKZPgUjSyzuCiSNuSP2Znt17qk/SckoxI7hAjVHl7YpB/NBIjYHc/u5mZgxhXjFsBgGTbO0Cy9jKDb3P77D58NVE5vyzE8sA7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW5PR11MB5764.namprd11.prod.outlook.com (2603:10b6:303:197::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.27; Tue, 22 Oct
 2024 17:59:49 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 17:59:49 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <172961600026.1310805.14287937725795065379@2413ebb6fbb6>
References: <20241022155115.50989-1-gustavo.sousa@intel.com>
 <172961600026.1310805.14287937725795065379@2413ebb6fbb6>
Subject: Re: =?utf-8?b?4pyX?= Fi.CI.BAT: failure for drm/i915/xe3lpd: Load DMC
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: <I915-ci-infra@lists.freedesktop.org>
Date: Tue, 22 Oct 2024 14:59:43 -0300
Message-ID: <172961998366.3700.10809637665542627239@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P222CA0010.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::15) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW5PR11MB5764:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d3a1331-04e0-454c-ebeb-08dcf2c35208
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NzdkSXUwaFVxckUrRDcydHJmWE0zWnhKZXY3RUU3cjFzL1JwcGkvcWV5WmNY?=
 =?utf-8?B?ZGd0UUYrMk04YjhoU3dlL0EzZzIyMUVLaURXS1NkVURzRGFycnQzK1FpaXp6?=
 =?utf-8?B?dnRacVFuZmRESFR6NWpoQjVldFJjcGEwcCt2UUVlNTgzMUtIckdoWnVWSXlR?=
 =?utf-8?B?ajdhN0QrR0ZYVENWUFhwanNOWkR1cXNWUis4cUlqUVdmNjFuelVmV2pFRElN?=
 =?utf-8?B?WXdGUXEyNHdJS1FEOGtWRUVnL2Z0TnduQ3NJNGJzQ1pzQTZtWlRMTnM3TjJi?=
 =?utf-8?B?eGQ3Ymh6RU9FRDdBR0hLOG5ZQ3lzRWNsZThwR3piUm5ScEpWSXh3QzJzUUdi?=
 =?utf-8?B?SVlCa2JWaDVDc3ZpUk1CbXR2MTBhVndoZHoybGVZSUx3UU0zWEpTMUR1NFNJ?=
 =?utf-8?B?R0RHNk1nVmxTdFEzZWp6NVlNRXZ5ajlrMVErTVErT2JYZGc4Z0t3blRtNDRK?=
 =?utf-8?B?Nkc2MnBoWnpkMnl6ZDk4Yk8vRnM4WE1zQkc2Z2xGUGYwbWU2MStHZzQyZXo0?=
 =?utf-8?B?M2I5ck1HbUhqNE1tcFEybk9XaUFKWDVJN014aVhmUEZoRnF4Y21uNzc1dDZ6?=
 =?utf-8?B?L1RBNUhvbE1hTGRkdzNaVzExc3RYaml3K3NoOFVZNjVjU29LbitQTmtKUmp4?=
 =?utf-8?B?Tnc4bUJ4NEU5Rldxc3pXSGZ2UEVPOGUvVStmYVoxSVE5ekUzNTMxK2NnNEd3?=
 =?utf-8?B?UnF4Q2lOZnp1bXRtbm1lN09iQWorTzB4WlVyckxXcG5oYkNWNEdFNWxmVEI1?=
 =?utf-8?B?dlJwZHI1ZUtKTjZ1QzE0ZUlWTXBNYUxCMENmN291WS81ZUhaWUErZU5pdFd6?=
 =?utf-8?B?SHJDcEltbDBSMWt2Z3Ayc0FkdWl1TU0xbml3WU05VXpxaTZ3RitZOEJIMzFl?=
 =?utf-8?B?cE5zNm9SMWlxb0l6ekEwQTFVTURhY254YUp0eXdya1VHbUdIbVk2S0E5ZUdi?=
 =?utf-8?B?ZmQ3WTdwY09tdmI2dnZobzlsd0tmTE1iS0Y5RWNFWnJXa29XN0o4cWNUaUsy?=
 =?utf-8?B?L3FMOUxEWU9PcUxMeDFQUWtZMXBuUnJCNTdvRGNLM1JXMUV4NDRDUE9TZE4v?=
 =?utf-8?B?cFZIWlJ2b3NhMDhqL3RkdXliaVE1MEVJZzFKVTdpMklEQmNTcDZudXE4YlJV?=
 =?utf-8?B?VGVSZ3JxbG9ZOEU2WXFldmUyVnhYTFc4ZzFncFg3bnlPWitBMzhIRUxUWklC?=
 =?utf-8?B?VUZaMDhHQ0dDQTNjTGVGbkJkUVJzd3JFVmVTaHVFMThGaEF2NCs5Njk5dHZU?=
 =?utf-8?B?MWRUdTQxM2xHOWxDMEN3R01PQ2tYN0M2OElUQzdIM1NpQWZ4aTY5RmhsaTEw?=
 =?utf-8?B?TjlvT2FPNVc2MHlLTXpORTBiRmFlQ1FzaTYxT1U0YnVXcWk5Q1lqZ0QrdTEr?=
 =?utf-8?B?MVdSNWZTUThueUxtU0xLVjRXZm90VGg4OU1SRmVDNzMxdzI2UFRZbFoxdW1r?=
 =?utf-8?B?OXJQQzZ6RjVNNk9OUm0rUzRxc0FLN3NadFlGQXlSNVErb3BHUlU3SjBEbWpL?=
 =?utf-8?B?UVpYRyt5UzlISWhGSW9HZURRNjhMdi9NSDRRdUpWV1ZFVHN2MUc4MFlaNE5m?=
 =?utf-8?B?OW5sUGRWcmFoN3ZGSmtSNHAyUFpOb1QyazV5ZVlRVnJnZ3FjZFZLOHVXZzN0?=
 =?utf-8?B?V0dJdzBWRFIrVDdJT1kzYWpyd0FKbDJxeGcwRlJHOFJiUHd2Tm94cW1xL3hE?=
 =?utf-8?B?UEZHbVViQWYyaUhlZFBaU0hyWHJscjZDMGo5cWxOMnYwS2dnMnVTdnRRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VisxZXNmdHN4dUtnaHZ6bm4rckg5L0NDa1F3Z3VBbWt3cnBCVWxyL1gvaWFI?=
 =?utf-8?B?S0NUTTZ4dWc5Rm9MZGlLWXdicFYzMENFRzZEVWQ0RWJkM3UrSmpBYXVwWThB?=
 =?utf-8?B?cDZ2Z0FNTXgyWENTbm5rMUVjKzlGeWtKNTJ5bzF0LzhnWngrNFZEWldtMTAv?=
 =?utf-8?B?ZE1yK0NKU2lKbmJaNGtoZm9Zak9Oa0E3SGtOVXFDUTJZbnYxdnIzMmpnaCt3?=
 =?utf-8?B?akV4S090enkxU2hTOTNCV1ZubE95LzdoMi8xbURCVjdmMmp3RlV2RVdJZFkv?=
 =?utf-8?B?NlNMNkZzK2FlZzFQaGJUOFNsYk1XQlREQWQrNVBwMmpjVFBWb0pQQ2xlSFNO?=
 =?utf-8?B?bGRoUEdjSHhTeUVnWWlYYlVoYVVTeWRnUldNVWc1ejBDNWFhZ290SFkzNkE1?=
 =?utf-8?B?bGRTMXBHR2xsK3pCRXFZN0YrbkUyZmg0dnBnUmcxdVRiMFVWNkc0RnZHbTdC?=
 =?utf-8?B?WkMrM25mOWM3R2h5SmNZNEFpOUIvVUNXM1Y5NWtxY3YwU0hPZEt5bVRqSGVY?=
 =?utf-8?B?TkJIY1E0Q2pkMXU2V3BkVm5tK0k1YS9jY1E1T0VHdzcrMzRGYWtMSHh1U3JV?=
 =?utf-8?B?YjJaMm5heU1EMkxHcnVMNVJaNWRIVFo3eVBFVmZyckQ0VDJCcU1TOWNOcnJ2?=
 =?utf-8?B?U3UyZWp2d3RUYk0xRlRYRFUxNUhVTHNrZFlFWDViR0RXNWVxdUxjYnBzNm84?=
 =?utf-8?B?elhob2xUU2xLSXZvcXh3cUd2RDYrM1NXd2pnVEQ5dXVEcGtCQ0NQbmh3TUFI?=
 =?utf-8?B?OVFwWUNYRjFkRzhNMmp6UEQrbTd4cDg3RGZiUVBqNFhhUHV4bVFieThpYzJz?=
 =?utf-8?B?dnA3R1VEcjU2OFh6T210NVVWUEtxQnVNdHk3akl1UDBxclJwc1Z0S3p2ZFE4?=
 =?utf-8?B?aDFlSHhHR2IwSE1GQ0ptbGM1czQ3SnhRc29LeFpORTE1SFBZcHBJUHE0dzZR?=
 =?utf-8?B?TkczVU5IVUFjYStkdmlXRFVud3F3c1BsME1Bb2w5VjIzd1dtTWlyajZCQXVv?=
 =?utf-8?B?Ri9QUktzU1NVeFlyNEd6UWlndndkN0xaajRidm9uZTRsS0hINGF5RmNhU3JO?=
 =?utf-8?B?aFlRUk1ZZGNMd2pzbWlnaElha2hBb3FlMWhkWkFGZnA2QUZuWjBhc2dNUWIz?=
 =?utf-8?B?cVJ4THRMZ3drNnd4eXlWeDNSZWxsaHJnb2V1R3VTMFlINHV1cjBkblduNGZ4?=
 =?utf-8?B?QXdiVEg4bkNlTm9SS25uaEZ1N0tpSWQ0VDVtSlA4TUt0VEx2aEdMTFJDenZz?=
 =?utf-8?B?VTlnSHN4QWFiNGtrSHhLRnVDcG1YN1ZyOGNlVjFkR0l1M21BMHhoRC8xQVA1?=
 =?utf-8?B?VnRKSTVtTnpvaldtcC9LSkpkY0g4aE1GQ3lhV2ZlRys1eTRpL2g3NFJnTG12?=
 =?utf-8?B?KzBCaUFOSG05MksyR0Q0Sm91K2xwcm12dklxdmFTRi9hcjVuREwreEtLWWZ4?=
 =?utf-8?B?Vk5uem03elVPQWVBdC84VkRsY3IzK0lzdkFucFpPaUo4emhTMUdXalN1U2Rk?=
 =?utf-8?B?TzdoSmw2OElMZ29ZNUVxM2NTU0NnYmVQYVhDZTBvelNjeGVQNWR2QWlmVmdJ?=
 =?utf-8?B?UUNrTlMrelllQ2JKL0xMbmE3VWR5cU4xZllrU1RDV3VPaUNwSTVWeXdIei9z?=
 =?utf-8?B?eUNRR2pvTzdGeDZ2em1ZWllZUkk0V3RPTGZJSmsvaEpvQVpKeDkwK2hablFa?=
 =?utf-8?B?UzBFWUJLMG9SYlY2aGh6NzBDYm1GZGVpaXBlSTd3V1U5a3ZvTnNhdXN3N1Ft?=
 =?utf-8?B?UGx6SU8xY0NHL2hBaXdJNWRyRGRYVmViaC9nVzNSTVdhRTlIdzhqRW92NVIx?=
 =?utf-8?B?SXVFRlUyQU1UUUJzdUswNjhQaE92U2t1M2lCbWZPSjM1WGhRcXNQR2k5WFlJ?=
 =?utf-8?B?enFLVFdXME54d1grZWx5bGxjcHZqcm5uempwWnVaa3RCR3NlbCtncDNtbjhZ?=
 =?utf-8?B?RFF1UllFTGtLMkhZM2o4dEhHYkptMEN4N2ZyYmhWQTd2bERMc2pCc1I3QlE4?=
 =?utf-8?B?dU5xRWdMTXJlUWFCQ3Q2V09VT09FRWdYdGlsZmFpZDd5TVlNclE4Z2pmQmV3?=
 =?utf-8?B?Qnp6cjFvckVjNzhCMGs1TVdEL05LbWc2M3hUUll2MnFsSVdRMnZIOHMySnhz?=
 =?utf-8?B?bCtyQkJkblhRbzJWSXFkQkZSVk96cTB2UUxUeFBxRzgwVlREVnpQc3Nkakhr?=
 =?utf-8?B?VFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d3a1331-04e0-454c-ebeb-08dcf2c35208
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 17:59:49.1653 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6dY23xp12LGGLYHImembcAfDq6j2HaHisq183D1Puix4IhHV82x2N2Xj06Gy32LeT37nZOAPMBefuFNxSAwK6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5764
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

Quoting Patchwork (2024-10-22 13:53:20-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/xe3lpd: Load DMC
>URL   : https://patchwork.freedesktop.org/series/140321/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_15579 -> Patchwork_140321v1
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_140321v1 absolutely need t=
o be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_140321v1, please notify your bug team (I915-ci-i=
nfra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
>  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v=
1/index.html
>
>Participating hosts (45 -> 44)
>------------------------------
>
>  Missing    (1): fi-snb-2520m=20
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
140321v1:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@i915_module_load@reload:
>    - bat-mtlp-8:         [PASS][1] -> [INCOMPLETE][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/bat-mtlp-8/i=
gt@i915_module_load@reload.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/bat-mt=
lp-8/igt@i915_module_load@reload.html
>

This is unrelated to this series, which applies only to PTL.

Please re-report.

--
Gustavo Sousa

> =20
>Known issues
>------------
>
>  Here are the changes found in Patchwork_140321v1 that come from known is=
sues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@i915_selftest@live:
>    - bat-dg2-8:          [PASS][3] -> [ABORT][4] ([i915#12133])
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/bat-dg2-8/ig=
t@i915_selftest@live.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/bat-dg=
2-8/igt@i915_selftest@live.html
>    - bat-dg2-11:         [PASS][5] -> [ABORT][6] ([i915#12133])
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/bat-dg2-11/i=
gt@i915_selftest@live.html
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/bat-dg=
2-11/igt@i915_selftest@live.html
>
>  * igt@i915_selftest@live@active:
>    - bat-dg2-11:         [PASS][7] -> [ABORT][8] ([i915#12305])
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/bat-dg2-11/i=
gt@i915_selftest@live@active.html
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/bat-dg=
2-11/igt@i915_selftest@live@active.html
>    - bat-dg2-8:          [PASS][9] -> [ABORT][10] ([i915#12305])
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/bat-dg2-8/ig=
t@i915_selftest@live@active.html
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/bat-d=
g2-8/igt@i915_selftest@live@active.html
>
>  * igt@kms_chamelium_edid@hdmi-edid-read:
>    - bat-dg2-13:         [PASS][11] -> [DMESG-WARN][12] ([i915#12253])
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/bat-dg2-13/=
igt@kms_chamelium_edid@hdmi-edid-read.html
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/bat-d=
g2-13/igt@kms_chamelium_edid@hdmi-edid-read.html
>
> =20
>#### Possible fixes ####
>
>  * igt@i915_selftest@live:
>    - fi-bsw-nick:        [DMESG-FAIL][13] ([i915#12172]) -> [PASS][14]
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/fi-bsw-nick=
/igt@i915_selftest@live.html
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/fi-bs=
w-nick/igt@i915_selftest@live.html
>
>  * igt@i915_selftest@live@active:
>    - fi-bsw-nick:        [DMESG-FAIL][15] ([i915#12435]) -> [PASS][16]
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/fi-bsw-nick=
/igt@i915_selftest@live@active.html
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/fi-bs=
w-nick/igt@i915_selftest@live@active.html
>
>  * igt@i915_selftest@live@late_gt_pm:
>    - bat-atsm-1:         [ABORT][17] ([i915#12133]) -> [PASS][18] +1 othe=
r test pass
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15579/bat-atsm-1/=
igt@i915_selftest@live@late_gt_pm.html
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140321v1/bat-a=
tsm-1/igt@i915_selftest@live@late_gt_pm.html
>
> =20
>  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
133
>  [i915#12172]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
172
>  [i915#12253]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
253
>  [i915#12305]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
305
>  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
435
>
>
>Build changes
>-------------
>
>  * Linux: CI_DRM_15579 -> Patchwork_140321v1
>
>  CI-20190529: 20190529
>  CI_DRM_15579: 2d11d2602dc35b03fd68309c96fedeea423beb42 @ git://anongit.f=
reedesktop.org/gfx-ci/linux
>  IGT_8082: c8379ec8b26f3c21bae5473706b23da78bd26ffa @ https://gitlab.free=
desktop.org/drm/igt-gpu-tools.git
>  Patchwork_140321v1: 2d11d2602dc35b03fd68309c96fedeea423beb42 @ git://ano=
ngit.freedesktop.org/gfx-ci/linux
>
>=3D=3D Logs =3D=3D
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
40321v1/index.html
