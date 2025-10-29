Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D36C1D49B
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 21:50:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7B8F10E84E;
	Wed, 29 Oct 2025 20:50:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LTMQPtps";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A76810E844;
 Wed, 29 Oct 2025 20:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761771011; x=1793307011;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=DJRHfvAJsTsGGfdVS2fQBjitBF2Lc5ZepeCjbyR23RQ=;
 b=LTMQPtpsyt5n6m8jDuXWswx4CZS95zWUvXCl6Ukrfy1iqIfyLzbVcGQK
 5PyLRMzzldyVLoVBtpR0R/qNavZ3CR20byZiXM35RJoXxyV/E9mKAf/lF
 8KpPIIQmKnw8lqDv2SLkTti2vY7z3jiKNiUr8giYSN4++6otBk+ELOgyN
 9IAuE3AtE0PL4LmgiodxVTR6z0EyVWyBC3nkr2qX3jbXkb2xtcKzjRHJ3
 1sS+GJPLs33pBn5NN7lXYlZKAStFmi4ps3APA7Qi3dObjOsBwM8jDtcQF
 bHBEEQC8p1p4QZTOb4Osao74G9SKH/R4S1LHHD3tq3fSRG9zgC50aq/bY w==;
X-CSE-ConnectionGUID: QOu1mxRcQHmq79bjF0FUzw==
X-CSE-MsgGUID: VzINsMoYQF2cVts1wN4qow==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="63110843"
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="63110843"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 13:50:10 -0700
X-CSE-ConnectionGUID: J+JdnDekSMqGahoCwbg48w==
X-CSE-MsgGUID: oBUdvD1vQGGRud1qTjpTUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="190127499"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 13:50:10 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 13:50:09 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 29 Oct 2025 13:50:09 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.11)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 13:50:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qbFNoEfYrirTbkBZo8F3M+wpyEhl60F2BmOKepK4p4VY1dclhriAmswpxTzS4yiG9oNVtBgKHwZOmdl35ri7cU1xWOBtNo/sFWk2dvhfcvqKy0RhCZrO6Vx/SVDN1i+iUf9uiaBKTiaHGvDtKuCmRimdePdWdPT6B2/vNtSojHAKC6fFXY8VsTMqqLUPUTaQzNCv1R17cOAjCTFno5de7RA1o0hgFAiRzG9bQVesuQoO/uS3/y6xbeuRAW9h4G9ycndv2LvgjBrTUtw1DDzYDiGdz/s+lkFF5Xn7p90yV8eHT7vcEKbECVYUOjI0QbVIugDN1TCntHIsoiWI28XH7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HXLUwQtB6EsnBV+f2Hx5BfbObOWCSbxchJtVZF3rywo=;
 b=dYAwYKGUymN1gKczQJUq+ZhDRLQk09lO8ydVjD8htc3/Nj1u3RW3t/kL1aD5Z//hTPYIiA6Ws8S9cTFjGIrcQ7OtSiP+YvQ//07tuOMGxGEs9Ivjwacm/YD+uXkXx3eFQnbvzAIbSC1rRHtssCCdfa53CnkGY/etK5rh/6ppOzOICxzOEdZb62PQNl9vZc6wbO2Uf9S/coe7v/dMtbH6pYiCutVXmL+9W0PP3T4/GGWUcG8zYJ9OXlG/HZsrkCJCLp7WRDnjq13aCm+3hqvOrJ2BAYkBKMnsKYJe6wWm/+YhQAQcyqmiQpLWy3+rTg3hJPBszUFoDprMllUpnzOlpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ0PR11MB5040.namprd11.prod.outlook.com (2603:10b6:a03:2d6::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Wed, 29 Oct
 2025 20:50:07 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9275.013; Wed, 29 Oct 2025
 20:50:07 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251029200628.GA2806654@mdroper-desk1.amr.corp.intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-10-10eae6d655b8@intel.com>
 <20251029200628.GA2806654@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH v2 10/32] drm/i915/xe3p_lpd: Wait for AUX channel power
 status
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Wed, 29 Oct 2025 17:50:02 -0300
Message-ID: <176177100216.3303.3999917406685130963@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0P220CA0014.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::22) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ0PR11MB5040:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e34f0bf-29c9-4050-c846-08de172cbe48
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WXRna3puRTREV2lEenR2NDg0VitvYnpjcm5EczQwbHdNU1ZHZ0JleEgwc0Fz?=
 =?utf-8?B?RmJlcHJjVVRxeFFqeU5NS1kxaS84NjNmUURyZE5lWHk3cjUzSkFiMlU3djFh?=
 =?utf-8?B?K0xmelRGT0V1N0J3ZEk2MWszMFFQLy9QNXZVUG9mSDFwMWR3Z0FzelpnSThT?=
 =?utf-8?B?cG5DNlYvS1N1SW9mQWVBaGFBOVV2N0xMNmdYYThSY0E1Rk8ybzIzckFaeEQ3?=
 =?utf-8?B?N3JHLzJtQy9RR3BWc3VuN3RQZEpRNmVYQUQyQkJYN2NXV1Naa1FXTVRmTWhw?=
 =?utf-8?B?NzFpTDcwbkhIcVdmSmdkSEFlV044S2RmWWNpcVJqM1VUKytOZ1JYeS93aVRJ?=
 =?utf-8?B?cVdWczN0bVE1ZkNHdkp1U3RCK0ZoMmR4bW1iWnd1ZXdQcnY3QTArbkdaM3kz?=
 =?utf-8?B?RzlTOTFFOHFoTDZHVUxESW1HaVl3T1pDODVuamZTL280M0Q4RUpJOFBnaTEy?=
 =?utf-8?B?bFlldFd1NG5rQmVZV25hUGUwQnF1dXNsekJESDA3dHYxWmJuNEo3KzVtZklP?=
 =?utf-8?B?MkFhY0Rxek1LeFlYUVlJaHBSdWU1MVBHc0ZYL1Bub0ZHSXI2cHIyMkVDU1Ny?=
 =?utf-8?B?dWZDaTJIMG41Zy9rYS9tMmpXVVNkOGpKeTZmVUJpcm9jZDJ1MVVjcnprQ2l6?=
 =?utf-8?B?QzJoUmJMSENqOUhISVBRZFZ5dWRmbWJGKzFabk8yMSsxYXlTWFdQVXRYajVT?=
 =?utf-8?B?YzgweVh5RHI1NUJkRlc2MTBqaGRUM0NxbUlTbzRWdDE5eGhDekIxNUlEbzdq?=
 =?utf-8?B?UVk5QWpGckNlcTVzYWNkMitSOUJETW9VTUI3citMd1pWRWpPSFNuRFQwaVMx?=
 =?utf-8?B?T2xVMFR6ZVIrdEdzN0Y3R2lQaGxoZnpOYzU2MDhqQkROajkvZ20rRGFnbjdO?=
 =?utf-8?B?ckkrditRS1d6QnJnYlVlRmRMYmhCMURGbWhvUXAyVG5PUkV3SnkzSlQ3ZDY0?=
 =?utf-8?B?ZVo3anlLQmxQeFN2aWFFV1prajBheDlhNHBrTXp4QjNKSHE5bC9jWGkveEp0?=
 =?utf-8?B?UjUyTEZBTWNtQXZlaWovQVZsY29GdURaN2tHOVYvK0dFUUZMRm1IWVlkaWZl?=
 =?utf-8?B?cTRGemZLSTVRN1FRcTVCSkZMSFZlTkxWUXdEN0liUUNnUFJOR2VsU0F3czc5?=
 =?utf-8?B?Q1VyUHVLQjY1QWJGcGRsclMwcjVKRGFRSm9pK2Foc09qcVllMTkwRStldmcr?=
 =?utf-8?B?VEYrY011QnFOa21UQmJwYjhsMlZsL0xKNFd0TWo3elp4ZEE2VnZlbnVDWUNH?=
 =?utf-8?B?dTN2aEMxSHpscXB4NE5oQ3dXS2pXSTViU2ppajE5RWVraVJnVjZ3SVNiZVB3?=
 =?utf-8?B?Zm5LWjk0NkhXWGc1NEIrRThDYU9HT3FkTGc1YTF4Z0xVckJlSjRiK2lrMmtN?=
 =?utf-8?B?NWRJeHdYQXpaTDlHL1VsakJTbkxKNmlCYzgrZGl3Q1Yyd0toT1JoOHBVVGFH?=
 =?utf-8?B?UnhMNWtzQXh5UTVLSVhIZUhTUmt0anpkZUV5YnJEM0t6WWtaVldQQUk3TU8v?=
 =?utf-8?B?clBCRTAwbFFERWlPdkRURDRMNStzSUd4bjAwSU84akJtZWZVZ1dhZ0pNeVgr?=
 =?utf-8?B?SzZ4dXpyY0VCRXpiUmlUOHZPbTRUSHVKM0E5ZERxaklTU1R2eU5FZDRJd09C?=
 =?utf-8?B?bHBWNG9NMzlOUTdsbStqU3NxQmx0RzVvVUpVdWFQb2l4QVFqWjVmT3lwdHRp?=
 =?utf-8?B?eitmUzdqc1hKWEZtWVRYekxHbVIvS0NSeTN0SWp2OXRpMVRMSGN4UUFqVThY?=
 =?utf-8?B?WVZkYUozdnNsQXF4MGZ0MnZ2dEJtZE9SK25KcUFsK0VBVG04MFVhMkZ2M0lE?=
 =?utf-8?B?cFJNalh3Q3lnS0orVTdkS2NHQlpzd2gyb1RiOWxuR3UzV2IvcHU1bXJUL3ZO?=
 =?utf-8?B?YVhvVlhKeFdqYnpCUUQrVFExQ1g3QTBSbjdTNHY4bGRUZzdnaUtDYU1NMFBu?=
 =?utf-8?Q?EK4WL15Eeep5BsYDQGilxe14vlM7TcZ+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OTl4cElidHhXbU50Z3B4YVRrdFJEN1dXTmk2VTBrSVdBNGxxb1pIbWN3dlRN?=
 =?utf-8?B?WENRemd0c1BLYmpYb0xYYWUzZXA3RFBvVDBxbGFzclk4N0tVSEVmZFVESXc3?=
 =?utf-8?B?VWsrTGRUUFY3Q0VpZURQVWNiS0s4YUwxaUZ2M3NWbVpOTjJ3NC8rb1ZWaE1X?=
 =?utf-8?B?bWEwWjFsZjlsSnJuQVl1Z0hsT2dsZTBOaThzWnZNZm9iWEF0YVd4VVRLYWpU?=
 =?utf-8?B?ZGlMK01JdmI0SEpJa09kamp5ZTdhS2FueHIzU0R0eFQyS2Y5ajVYVzNkTXg5?=
 =?utf-8?B?RjEvWVU0Sjh6M2k0RkJvdDRQNUo5d3Q1OGpacHBLc0Nra0dvcWNBT1h0VHlZ?=
 =?utf-8?B?NW8ySUlrOWdyY1Vxd0Jmazk2dEhQekh6SGxJdVcxRTdrRXdwREgwZHBHbDV0?=
 =?utf-8?B?YkhwMGcrSUJoRjhPOWFBZTB4NDVaaVVuTzRXbzdzcWM5em9HSHFKVE1UUnpv?=
 =?utf-8?B?bmRRT1VkWkRWYUhZM0tNWHAwd2thb20rR3ZYNE1QMS9KRUMxZ09UME9RcEpI?=
 =?utf-8?B?WG40cDNnZ2RLekNGWTlKOUNSc09uVnlQWWtnc05rUmJUK2tIbVJnb3hBNWR3?=
 =?utf-8?B?Ni80WEVRcTdtaCt2ZG9tMFlhUStlTGY2YnpydThRWG9JUHI3MzJCWk9vcFhj?=
 =?utf-8?B?V1hBVHk3R3AwS2VMZENndUxuVklDZmU0TU5qK0luSENSSDRNb29oUjVIMkVX?=
 =?utf-8?B?RjF5K1Z1RWdqemVLS1FETk9yUTVreEIvS1BGTlAvK2FicEZSSjdWeVVmWjdL?=
 =?utf-8?B?Mnl0UjVpNW9NRzl1RFNmTTRtUFJXc01IVXF3MW1zQ0pBNldUZGh2U2NiSzRE?=
 =?utf-8?B?WFRhbGtiL084Z0l6YTJhVi8yUnpScVl3dEd2QW1ieFlwSmdBdUM5ZzBNQWdK?=
 =?utf-8?B?eERGZEVSUWdOeHJwZFhhaEk2dm95ZTBPNmJOSmRvaU1jRVpHNmRWVDJPWmFE?=
 =?utf-8?B?cWJvNzB4OVQ4TWpTMlZBc0ZsZjAvMDhXNGw2Y1hPRy9CZ0pxbGYwWDMwcTFG?=
 =?utf-8?B?TWZwYkN1S2gwbHNZdmRGTk9Ja0ltODI0dWVPUW5LTFg4NGVYWUVCNkMvbmRu?=
 =?utf-8?B?TE13MFdFOFBPQklvZHhKSGZtRE5qOG1iYzFqY3NYcWY1dXZ2VXQvT3B4cmM0?=
 =?utf-8?B?MzZpWnRXa2RTWEFLWTk0TWVibEVqdnRXOGwwMkxOWGVpcTl4S01KdWM5L2dz?=
 =?utf-8?B?ekNVVWQ0elFpRjZ5b3h6Z2oxUnc2KzFaRWFKRGp6a21hVDFsS1BNdUhBYURv?=
 =?utf-8?B?dkFwZXVoeHMrYzZPOHFTZERHVWpLMk5wTzhaeXlqVldxak00bDVHZTlma1FL?=
 =?utf-8?B?a2txMXdQdnBLSW4vZXoxSmRYbGRnTUcrenJmUnpjTnBuRWxTOXp0L2tnYUoz?=
 =?utf-8?B?VDhKZlViUUhhcHJUT0V1THEzVU1wemo1U0tWamJCd2gxZWU2dnNrNkFFSlQw?=
 =?utf-8?B?cVhWb05weS85dXpoempDQkx5RnVEUy81blVOM0wzV0JTN1pkNnh2blp5eWtK?=
 =?utf-8?B?bWprV2NaaElrRVJXdXpFa250djhqSUJWZ0VGSkR5R2IyYktiMmR0dzRiQkpZ?=
 =?utf-8?B?N1o4L2lzZkdvbzhOT0ZwTCsyR0hVdEREN2NkcGhWZkh5MEliazlxd3pKQlAw?=
 =?utf-8?B?cExDOEJJTlE3S1gxYW1LdGhWRE1OQjUvNDhpb0Fra05vYW50TWFvVEtaOW45?=
 =?utf-8?B?T2dmN2pSaFd2a3dUby9tSXlRdDNHTktUSlZsN3p6TEc3V21KSXhRc2hvSDZn?=
 =?utf-8?B?b0pQLzNHMklVR3JIdFdkcHNqcDhobytWWExvRmQzeHpVZzZYRktpNExwNEVw?=
 =?utf-8?B?UHdWTG5RQTArekYzazZTK1FZQVpwSGdXUk1HSzllZlRyaElPUmRoUjZNb1lt?=
 =?utf-8?B?TkV3c1JlOEFnM215Zi8yNXMydjNUQ2djejZqTWsvb3pBNEd0K3pHeWFEY0dw?=
 =?utf-8?B?ZW5jVS9YNDMyM3lxQUZhdk82NTlYYkZnZFkzTHhQSlZMQmdZNzFUZFAraWRL?=
 =?utf-8?B?YytrNWR4ZkpWdUEyMkNxbWdKTHc0MjVERFo1WXBhazNoWlJ2UTg5OThkcTc5?=
 =?utf-8?B?eGJqb0NwempITmZ1L2NvaXdWNS9RL2RwNVpsdGJhYlZyODdnRlJIN0FlMFRy?=
 =?utf-8?B?bU40OTZ4Rm00SFBBcDhtU3JxQWh2VStSNi9XNUNqRzNFQ2VmRXNMUGxOR3Zo?=
 =?utf-8?B?Y1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e34f0bf-29c9-4050-c846-08de172cbe48
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2025 20:50:07.3427 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fhG4Q+boZ5LDvTdXCIZQJXW6CUVjz0dvG0nJ9Ea+VWAzhyf41itcaQFFLTnNosCRW5yfzcIyawaz0t2TPRgWqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5040
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

Quoting Matt Roper (2025-10-29 17:06:28-03:00)
>On Tue, Oct 21, 2025 at 09:28:35PM -0300, Gustavo Sousa wrote:
>> The LT PHY in Xe3p_LPD allows polling for the AUX channel power status
>> to verify completion of power up and down. As such, let's use that field
>> to have a more precise waiting time instead of a fixed one.
>>=20
>> Bspec: 68967
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_power_well.c    | 32 +++++++++++++++=
++-----
>>  1 file changed, 25 insertions(+), 7 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/d=
rivers/gpu/drm/i915/display/intel_display_power_well.c
>> index 5e88b930f5aa..ba2552adb58b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> @@ -1858,23 +1858,41 @@ static void xelpdp_aux_power_well_enable(struct =
intel_display *display,
>>                       XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
>>                       XELPDP_DP_AUX_CH_CTL_POWER_REQUEST);
>> =20
>> -        /*
>> -         * The power status flag cannot be used to determine whether au=
x
>> -         * power wells have finished powering up.  Instead we're
>> -         * expected to just wait a fixed 600us after raising the reques=
t
>> -         * bit.
>> -         */
>> -        usleep_range(600, 1200);
>> +        if (DISPLAY_VER(display) >=3D 35) {
>
>Since the bspec specifically calls this out as a flow for LT PHY, it
>seems like it would make more sense to make the condition here a feature
>flag check for LT PHY.  As I understand it, the selection of one type of
>PHY over another is more of a business / per-platform decision than an
>IP progression thing, so it's quite possible that some future platforms
>past Xe3p may not have LT PHYs.

Yeah, makes sense.

I know that the LT PHY series[1] does include a HAS_LT_PHY() macro, but
it does the same IP version check.  Perhaps we should define that macro
using a platform check.

For this series, I think I'll add a patch to include the HAS_LT_PHY()
macro with platform check and use it here.

In the long term, I was thinking we could have an enum intel_phy_type
and have a function that returns the correct value based on the port.

--
Gustavo Sousa

>
>
>Matt
>
>> +                if (intel_de_wait_for_set(display, XELPDP_DP_AUX_CH_CTL=
(display, aux_ch),
>> +                                          XELPDP_DP_AUX_CH_CTL_POWER_ST=
ATUS, 1))
>> +                        drm_warn(display->drm,
>> +                                 "Timeout waiting for PHY %c AUX channe=
l power to be up\n",
>> +                                 phy_name(phy));
>> +        } else {
>> +                /*
>> +                 * The power status flag cannot be used to determine wh=
ether aux
>> +                 * power wells have finished powering up.  Instead we'r=
e
>> +                 * expected to just wait a fixed 600us after raising th=
e request
>> +                 * bit.
>> +                 */
>> +                usleep_range(600, 1200);
>> +        }
>>  }
>> =20
>>  static void xelpdp_aux_power_well_disable(struct intel_display *display=
,
>>                                            struct i915_power_well *power=
_well)
>>  {
>>          enum aux_ch aux_ch =3D i915_power_well_instance(power_well)->xe=
lpdp.aux_ch;
>> +        enum phy phy =3D icl_aux_pw_to_phy(display, power_well);
>> =20
>>          intel_de_rmw(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
>>                       XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
>>                       0);
>> +
>> +        if (DISPLAY_VER(display) >=3D 35) {
>> +                if (intel_de_wait_for_clear(display, XELPDP_DP_AUX_CH_C=
TL(display, aux_ch),
>> +                                            XELPDP_DP_AUX_CH_CTL_POWER_=
STATUS, 1))
>> +                        drm_warn(display->drm,
>> +                                 "Timeout waiting for PHY %c AUX channe=
l power to be down\n",
>> +                                 phy_name(phy));
>> +        }
>> +
>>          usleep_range(10, 30);
>>  }
>> =20
>>=20
>> --=20
>> 2.51.0
>>=20
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
