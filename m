Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 993CDA11538
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 00:18:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F5B810E386;
	Tue, 14 Jan 2025 23:18:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QkL6vhTI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97DBC10E396
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2025 23:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736896685; x=1768432685;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EW33QqARLnfGzhCCM2g9iwN8Bp3DY01stSezeJE4X4Q=;
 b=QkL6vhTIKae3pGqNE/iG4ZOJN/lnNv1RX4M8yOQT+mBq6qSF2prbxciP
 rtIdODUpk0nzqBasO3AJkumgovV5ZvIang/+P26XFFspipqbu/WrifkBr
 cJmfD1EQHdaZAzzbXeDHBVteTWAKYu7RZmYLQjrAo1/MVvkHC2/Z8eQvG
 bgpV8rt1HFvrJ6/oi1ftCrnQWGQxyxdrmkBTqmMV4ZCZaHo32uLPGCMaV
 hwzI9ziatlzHUy5KTXHKfzhxh8E41Dp5/xgDlwFrssu7YvQNF198/ARyL
 utT8AsVhwjwodYAqDs9OzX4XHKIUtsPhmnSLwnRTnkuZ6uySRn14T6ICC w==;
X-CSE-ConnectionGUID: shWrFUE+TQa/7IE6MW8VVA==
X-CSE-MsgGUID: qAm41p5GTt2hn6o1m3S5zQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="36910968"
X-IronPort-AV: E=Sophos;i="6.12,315,1728975600"; d="scan'208";a="36910968"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 15:18:05 -0800
X-CSE-ConnectionGUID: vMCJuUyYSaSSrhSBWr1+0Q==
X-CSE-MsgGUID: 3v5UBau4SNij/Ssc/Wtucw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105443683"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jan 2025 15:18:05 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 14 Jan 2025 15:18:04 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 14 Jan 2025 15:18:04 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 14 Jan 2025 15:18:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a1bH+LcZmGhvxkX02mDjnx/y861qMX8DeKHViS1XM8uAFz6pCHvrHntYcjv1vb+f5MxIr8SrJg+LhOM7n/FT6TBWEHidCUeh6aYMXlyk+HGe31fEquiCvJq3YoL86RY6gE2ezl68Avk1wROu6diOvpo45KmhclFsD+6zKfRR4EuXtiyY9AjPilGeg7FBmwfPcbqGp5bbTjYiBs7B6j3px8BoQYiUNne8beguboy7u1uNqIaj/0aiJJKlkDyuVpytYmzuM0TqjKLbz9tHzpduB8t4I6fW4JOlQqe5NjD8mY8UX7jp7wfKk8Sd2x6a9bIxnsUg4KTd1/FZR3yi+cp5XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yj46WvWsk8vEWU39eDXMKihwWzauHdWF+GwnghybtMs=;
 b=ogR3nQqDLeu4pPQ74c45N78I08YqAyOLtOLAzOtfmb/y8dWKGjRy5npfPrBtFPWR6JdxeqAQEJ4BHOlht6V7TtLXfP5H7VtNNX/Qj6Lki2ZgMhHkHRA2Jh7a4R03RKlNHLKC13+CzkqRLee6LInmKYBfOE8Omh9/NAcWLSZ9spoP3tXNWJkclcZXtDMCci1y8TLk5PLShS+evqWcB2DYGEZ6JsZlV96J3lHYwXx5CD6L/8h0dMzyAxozqVR8qapiz2dLpz2fcvJJQt3gJE2rE83RohfEybsqg8ZxCoxcG4gJu2un1xNf2LNCleuMAkRL9c01wQhklNUW2X4N8k81lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by MN2PR11MB4549.namprd11.prod.outlook.com (2603:10b6:208:26d::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.19; Tue, 14 Jan
 2025 23:18:01 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550%4]) with mapi id 15.20.8335.017; Tue, 14 Jan 2025
 23:18:00 +0000
Message-ID: <24b817f4-989f-4080-9cae-b66353717973@intel.com>
Date: Tue, 14 Jan 2025 15:17:56 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/guc: Debug print LRC state entries only if the
 context is pinned
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Matthew Brost <matthew.brost@intel.com>
References: <20250110002851.3584310-1-daniele.ceraolospurio@intel.com>
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20250110002851.3584310-1-daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0108.namprd04.prod.outlook.com
 (2603:10b6:303:83::23) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|MN2PR11MB4549:EE_
X-MS-Office365-Filtering-Correlation-Id: 858af959-8ba6-4f84-cc4c-08dd34f1b048
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bXdIK2RRa2R3K21razYrUm5GYTdKajN1b3FOL1J0anMwNmFJVENsenBsRWJ6?=
 =?utf-8?B?WnE2b21GMDVabXpDSC9mTWVwU0EwSmQyMjNPRDRiaDdBUHlNa1BZZ3UxNmUy?=
 =?utf-8?B?OXBWOEF5L1VoR2FnMWJ5UjYvdlphQm0vMWRHUnJ1NHgrZGJ4bHBIL0N3a3Bt?=
 =?utf-8?B?RE51Nmp3N21Xa3FxdjYrVmFZeGdRNUJpbDdVVnMvTjVqNWFJS0daWWltZmdO?=
 =?utf-8?B?aE95bFRGLzVDS2RBSVpBSzFVK3d0cENMekFoQ0IrMTlwL1BlancyOTBycVhL?=
 =?utf-8?B?SDFxZlpyVHdIQVJtV0ZrWE9TS1VHWURnQUhBQVN0dUx1Z2puN2ZPNmF4SFM4?=
 =?utf-8?B?NGI0TERlNUtLOGdkNHh2SUl1VTBudWtQZHcwUzQ5azZjWEhiWTZPdHQ2NHFq?=
 =?utf-8?B?N0dDUkRBWFhUYjZNZHoycXdOczM0NE5oWXNqOG1vM2V0SEFZQjZWUklJQVdG?=
 =?utf-8?B?THNiWThJejczUXozdjg1WDZkeFk5RGRCd1hGQWVHODkvZlZUeXY0QmZMYTRs?=
 =?utf-8?B?aW5yaUE5N29aZEM5Ylc4KzloVnJJZGdpVG9xWEJaMFNpTEtENTJ6a0x3ekFM?=
 =?utf-8?B?YnlianJrTHAzL0lwNlpwRlRrZEh2NzY3c3NFSkpsbXUybVVjaFVDMUNoTFRR?=
 =?utf-8?B?cFhEcmNJYWNiY1duTDlMR1RJcmZVTnpna21FWlFQNDg3eHp4b1V4U2psM2Ew?=
 =?utf-8?B?Tk4xWE9lRDA4Nm1oUXkyZ01pS2JTdDBrdlZZTUFSNEVLYllnZVRsN0NIUW1R?=
 =?utf-8?B?eExvVzRZb3JFL2pNUmhQaHdDejNCYU5SbzB5QmFmdWtZc1IwWGF2SUFpSHZk?=
 =?utf-8?B?SjhNcDQxRWx1Sys4eTVQbzRqUFdDQ3dxNnNobnFiZzQ2MXpQaWdMNlBYZnZF?=
 =?utf-8?B?ajA2Yk9YR2pzQi81elhMSG9xYWE5cmx2QTh3S2ZyamdhOEVHaGx6T0x6SWlk?=
 =?utf-8?B?eHBrZTI0bE5sYis1aEV5QjZEbUZQK1Q4NWp6dUdNOCtiUktVV2pzUjNkQ2dE?=
 =?utf-8?B?Yk5XVXc2ek5jVG5YSjdUcTcwY1EyV0pqMndISHowZFdhcmg3dkJSM1ZGRUVl?=
 =?utf-8?B?U3I5UFJ2SXY5VHZtazF1NEZhOUVGSFg4WFJxUXNlbVcvdGtjM243TktTTjN1?=
 =?utf-8?B?dnl6QTl4YTVHZVlzbFZ5NjZKc2JmNVNQQmh5MVdHSXpkdFFjRytPQjhkSzBu?=
 =?utf-8?B?ZTdNcHM4bVV5T2t0eXZXZGNxR3VXaEp0dEZTK3BGUHovSmtTSWJ2L2VmRlFI?=
 =?utf-8?B?eWRVd1pTa3R6SDhFdGxuM3Q5YldBYjc1QU9POG9YZWZ6WkZCNU0vTHNFS3NW?=
 =?utf-8?B?YVNMQW0wNlV6ZXJaUkZGeSsyR0pJMnJqcmg5VUlTWnhGN1NxRzZqbVhhVlEy?=
 =?utf-8?B?QnBaZlhGbTN5alllWGRiUlFFR3l5dnd1ZU9RbVFqV24vZ04rbS83cW1rdlYr?=
 =?utf-8?B?bVdEK0ZyajZLTHpKKzlmVERDZ0haYlhtdG5jb1crRnI4QjV2QkRlYXJ3N1p1?=
 =?utf-8?B?NEFvNXpXNjR2dTFDVEZIMXRka3hPKzJJMHdwbmtMaG9rNGcrK0RkTW1pMWZM?=
 =?utf-8?B?TkoxRE9uQWpyRGdFR2NuRXR3N0Vrbkh3WEhRdUtjcVdyMVFFTFZxTm9CN0k0?=
 =?utf-8?B?WWFmZDJqQTlxVUVUaDlHT29XWTRGUlJJSkFsbHphMlB2MmZYN0tzakVucDVx?=
 =?utf-8?B?MVBxV0cwcndwbXYwRGg5QU1MVXZBYzI0cFlvN1BpaUZvTy9rRUZodU5EekRj?=
 =?utf-8?B?b2xhVEJIb2VkKzUwTDYxY0JIV0lTdFVCYmtrTW9kTFd6VG9CbjRveld6RmJj?=
 =?utf-8?B?SVBDczFQTFNUK3YxNy9JRUZrSkhjVzFxZ2ZkTXdmM2VqTDdSelNCSWNDd28z?=
 =?utf-8?Q?DSAAHxvNqrr96?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZGpXdVJmWVVlU0dNc2xreSsrRkUvdEI0eG5xQS9vaVB4TTFXdmtBSnRVVDh0?=
 =?utf-8?B?Zjl4Qy9HVkJNY0QzS2E5LzQ0blN4RVozeTRWUi9udGRWM3lUeUg1MkFSMGR2?=
 =?utf-8?B?eDFjakwzdzg0WEpCZU9IaHp5K0pZNHdmRFZsNUxVSTU5NTZVQ2Z5VUhsZnFP?=
 =?utf-8?B?NUlVaXU0MGFhZnJnalZTalBFNDA3Tm0ySjMxSHZEdnRYSy9WeXJWWkdYWnlN?=
 =?utf-8?B?MWRmYXpPRS95TWsrVGtqTEV3TUR3RXNFRUFxbEpkMmdYNXFXMkQ5cGxUeWVZ?=
 =?utf-8?B?bWE3TEVFTzhYaHVzZjAyUXVTazZ5Mk9RWHY4bk1temlYay84N0I1QlhuV0sz?=
 =?utf-8?B?a0VPeHU4cTdFUGdneGdKY2Fndjdudnh6ZHlzeEFjNFFhcUNQSGJlaWpYVURP?=
 =?utf-8?B?Y1RLbW9KcjZvTkFKNGxhZzJkQmxNQjh6Y0F5S3BTdzZuTGxHcXVXV1hIbHFW?=
 =?utf-8?B?MnNsYlI0bE1QVW9ocndBQVlUd2llK3dUb0tjOVBnNUhjcUVOS2liZ3ZiQXdr?=
 =?utf-8?B?VTUxUU9CUTZuSmJKWThVT1lUaEhrekYzR0EvcTRpWGc2ZXkveHlUR2p5VEs1?=
 =?utf-8?B?NXFtbnZwS0JCcVJKQmhGL0Q5Ny9YajBmYXBTYmZLeU5zSnJVWEJpODZwMDFS?=
 =?utf-8?B?YmRYblhDZkZ0ZGJWeC95Z0g2MDVHYnB2bEtLcFlsR21hckh4SzBKRWxkc3E0?=
 =?utf-8?B?R01DTmpRWmppZ21VTEQ2Q2tOS0VrOVNjdk56WjdueEh1TkF6dldKZ1hxSXh0?=
 =?utf-8?B?ZGg3QUFLNXVJSkRIZFpDdFdieE9Fek9HSVpjc1M4L3YrVW91SUp0S3U4QUJl?=
 =?utf-8?B?M0l1WjltWmdodzdTWmtHMmJOaTVqbGtVaW92aFhlZUcrUEtyYU1DckFVYkZY?=
 =?utf-8?B?enZkV0hkMlhGd3hxTHBVZTFSMk9vUmRSTGQ3QzVydTdjSU40Z3UxYlpsOGNY?=
 =?utf-8?B?dEdUNlluODZlOFM5VTJXaXM5VUVKZzVVdVZnd1Ruc1piNDEzVmtaY1paNGVF?=
 =?utf-8?B?Nm84cVdJbUx0TzdFdGpTSnRPYWpIcmUvSzBLTnNpRTZnR0taSTdOWko5WG03?=
 =?utf-8?B?RHZ0SlNrTGhMZzlFRFNzVlMwTnJjdlB0ZFp2OU5jcDUxa2RNMk4wRWNyeDY3?=
 =?utf-8?B?OVg1dE1rblQyWjBBUStrbVdLUzA2c2Y0eTBrNHhtNHhnVDlIb3pkMkxFZktX?=
 =?utf-8?B?c0RhYU1Zc1FQMHE3SUl2Rk5udW9lSHhIOTNsN05MK1ppckZuQXJaKzFhaHc5?=
 =?utf-8?B?ai9Dck1CYnYvakorbzFjaHlMa1dsNnBHekVKelg3Nm5GRnNZRUxabTVNVnQx?=
 =?utf-8?B?czlxRGg5emhLYWVNdmZpUjVDQkRjOC9pVXVwT0pobFEyd0FpR2M0Y1RQZTRO?=
 =?utf-8?B?Q2dQamlTZHhkNjU1bkt2MVVCQ3pKaXA2a3R6UG9GYVRJbmVVenNlK203Q3lO?=
 =?utf-8?B?YWpybGFXckcyc0l6c3lnQWwwOXZHSE9tUE5YKy9LTDBDRHVJQUxCWTRvWlBZ?=
 =?utf-8?B?MkhCVDlIRndEenp5TVBQQXNacEtnTFFYNnl5TlFSWFZ0WlAyYmlnVks1eGlL?=
 =?utf-8?B?WERzejBsMlpIVVFVWFpPQThidXhrMFJEdUc2eXFNMXF2VlpFa3dETGRFSHd1?=
 =?utf-8?B?eGN3aDJ0enpSeGdBS0lZQll3TU5ic3EwTUl0L0NtNkVPOWw2aUxLbUNBU0c4?=
 =?utf-8?B?TVZqaElnN0l5MFYzNFJQYWhhd3FRejRTMWMzOXk3MmNWQ21zV29MK0tGMUhj?=
 =?utf-8?B?RWNnbW1yeGFOcTJmYXpjQ1RPTEYwaE11UmlOWjNpR0drZE00N0dZUDJDbDZU?=
 =?utf-8?B?OVNjRkJiMTdQTjkrVWZ1L2F0VXZMa3lVazVsZ3dqZkxtQWFhQUNRSUFvQVJZ?=
 =?utf-8?B?dVFrdHhvdE5NTFpSQ3RoY2Q1a2Q5STQ5TnR5b2Q5d1pQdHpvSkhwcGlZcUZH?=
 =?utf-8?B?WVRPbHFML2RzQVpwb2NXTGtac2E5MXFWMmJ5QUovWVVTQmRQZFdNOHB5S05U?=
 =?utf-8?B?Y2IzbDhCYjd2WkZlcjVYR3JuWjU3eGE0UlNMSFVJbXo0TW42WVFCU29jQll0?=
 =?utf-8?B?Z0Znby92ejhFeE85WTdpaUI0T2JyQVhBcEp5YncwejFzdWFpS2NEelphdkZR?=
 =?utf-8?B?UWc2bkY1R3EzRzM1MnhhTHFYNFdFazdZMmhhakVRQzlYUnhnN2tCa29nQkhv?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 858af959-8ba6-4f84-cc4c-08dd34f1b048
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2025 23:18:00.7760 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I4jS7oCo4qRNgHkYt43cDXacZKgoFq+4izuM2sgYu84nznMnoyu3A4Vf5+x2F8boBcy6PFeOrVJYsT044DEvjRV0c+8TmPcRJE2NKIS0FSI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4549
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

On 1/9/2025 16:28, Daniele Ceraolo Spurio wrote:
> After the context is unpinned the backing memory can also be unpinned,
> so any accesses via the lrc_reg_state pointer can end up in unmapped
> memory. To avoid that, make sure to only access that memory if the
> context is pinned when printing its info.
>
> Fixes: 28ff6520a34d ("drm/i915/guc: Update GuC debugfs to support new GuC")
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> ---
>
> I believe this should fix issue #13343, but I wasn't able to repro
> the bug to confirm that it is indeed gone with this change.
>
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 20 +++++++++++++------
>   1 file changed, 14 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 12f1ba7ca9c1..22a73e2e6340 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -5519,12 +5519,20 @@ static inline void guc_log_context(struct drm_printer *p,
>   {
>   	drm_printf(p, "GuC lrc descriptor %u:\n", ce->guc_id.id);
>   	drm_printf(p, "\tHW Context Desc: 0x%08x\n", ce->lrc.lrca);
> -	drm_printf(p, "\t\tLRC Head: Internal %u, Memory %u\n",
> -		   ce->ring->head,
> -		   ce->lrc_reg_state[CTX_RING_HEAD]);
> -	drm_printf(p, "\t\tLRC Tail: Internal %u, Memory %u\n",
> -		   ce->ring->tail,
> -		   ce->lrc_reg_state[CTX_RING_TAIL]);
> +	if (intel_context_pin_if_active(ce)) {
> +		drm_printf(p, "\t\tLRC Head: Internal %u, Memory %u\n",
> +			ce->ring->head,
> +			ce->lrc_reg_state[CTX_RING_HEAD]);
> +		drm_printf(p, "\t\tLRC Tail: Internal %u, Memory %u\n",
> +			ce->ring->tail,
> +			ce->lrc_reg_state[CTX_RING_TAIL]);
> +		intel_context_unpin(ce);
> +	} else {
> +		drm_printf(p, "\t\tLRC Head: Internal %u, Memory not pinned\n",
> +			ce->ring->head);
> +		drm_printf(p, "\t\tLRC Tail: Internal %u, Memory not pinned\n",
> +			ce->ring->tail);
> +	}
>   	drm_printf(p, "\t\tContext Pin Count: %u\n",
>   		   atomic_read(&ce->pin_count));
>   	drm_printf(p, "\t\tGuC ID Ref Count: %u\n",

Looks good except for the whitespace alignment issue that checkpatch is 
complaining about. With that fixed:
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

