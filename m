Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89279C2DA08
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 19:18:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0153A10E214;
	Mon,  3 Nov 2025 18:18:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BvkWzGH3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6A5D10E214;
 Mon,  3 Nov 2025 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762193896; x=1793729896;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=vikALWBab/eYICzix5i1bC5RFE3bNqTXlcN/d6O3CHE=;
 b=BvkWzGH3VshjlFYDjr57HjqHgmPwpTbyFPb1uU8LwFbmdn13T0Yta0ql
 CxcXbAe5jev9lpGXUD4dugm1ZriLqnuXLDpv1Napk10FQmYqRbPNI8he3
 Y+P2EEr8j4T09NzHh+ob0enV2XPzL/ORLlZWPGjchHYwgqAYsTu0RKs6V
 1qe/fUw6UHsiWbfUk8ob+cFFLjhfvGhKkvXjN3W3WMdf3zeGF4dl8lTAK
 GMB0ZD1TdirbQ/S7aoXanuuj67OoRlBwouL9hbyPnceKXxrONlBSj1ta6
 Clv+DMnocvlp9k3pVmsqb/2qDVa7d11rq+WdBnr1RT0QmD2SgmxndIo9w Q==;
X-CSE-ConnectionGUID: HpfU/UVbQwu0SVhFwUq0aQ==
X-CSE-MsgGUID: PqlFE15gQOGAXgegms1XZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="63480461"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="63480461"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 10:18:16 -0800
X-CSE-ConnectionGUID: XRBSYb9ORA6VUkruwruDbQ==
X-CSE-MsgGUID: h/oOVvdSToWE3RCMx0lUPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="217755182"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 10:18:16 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 10:18:16 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 10:18:16 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.16) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 10:18:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h3/sUGotfcYiJxrN6+LlOWDZVdJfnHvZI7cMDwP3YSHTtsZex5ZM8iM4ByYeygo3Bet+na2L8uf7gX2vuaJd97RgcQaJLyZJbIosb/vNkhuitN7RP0bVVFKWdlN3V4KaelZiH75TepIwlP12PVNTL96tkDGRsnxy6LqJK5+FXK/pV/WahSgTWOJA88lW99eerVRaKW8UDZC+MCHQpFCb4/RhhQHChJEYU/aOtxzz+2zsIK1hqIxthmnSHCDn3yU05Z42en28q+5I/DyPTY5gIU2NlKnO9zTi5L9RJBErMrUUCXHgz0Pet16O1cz6re2QKBtKd2VFKBp2S/xFGAGWSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yf4q0ymngIttk6Y0JADYDls0S1/dfLnXH/A/UBaMxz0=;
 b=MvZllueSKHhkPNb/w4ery4zviCtbAtfyPJ/3rkfb9oJ6SBEjNXfkd1JukEEgTFatYKLd0H2HSglKv/kAKI1IqwRe7ZQKAWXnqjPxq+r5t1VBQgrTS0OBFHMjKIPtDAFmrlg/V5fqwyiQe4+ZA0gakX1+AeBuv0L7Ch9/t1A1yKpDPtVxkB81p0q92XgtkzxRoUgdtvkFAN34d/aRdYIQuhlg+CUcbjXMc/UDoqWkWi5rkRLyoifcs+k8KRATSvtlLzaYQOwrVt7JlpVLyz8yIOf1fTxepjUANuR0aF8AV7dRRNVrguPsAwFLxaoMu5+30WOr16UG3Y0n6npesFLTvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ0PR11MB5086.namprd11.prod.outlook.com (2603:10b6:a03:2d1::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Mon, 3 Nov
 2025 18:18:14 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 18:18:14 +0000
Date: Mon, 3 Nov 2025 10:18:10 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 20/29] drm/i915/xe3p_lpd: Always apply
 WaWmMemoryReadLatency
Message-ID: <20251103181810.GH2980942@mdroper-desk1.amr.corp.intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-20-00e87b510ae7@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-20-00e87b510ae7@intel.com>
X-ClientProxiedBy: SJ0PR03CA0089.namprd03.prod.outlook.com
 (2603:10b6:a03:331::34) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ0PR11MB5086:EE_
X-MS-Office365-Filtering-Correlation-Id: 4aab6bad-e13d-4dbc-59a5-08de1b055a5d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?Z9xAYBc7Zdljia46qj8vikbpDtNsdla80LJqxLp6REAElwvvt7vyNb3Rzm?=
 =?iso-8859-1?Q?eIJTRS4n1mWGfJd4i6AEHAdX3nb00mA7oBjAgDxB9ouB9g0t9By36P2+Ua?=
 =?iso-8859-1?Q?YdZt1Wo8ltUY2LcUWoe7FBYbRUfdUe3NZnkzbCcRQ3pOEOeyfdyROOBl61?=
 =?iso-8859-1?Q?LYWsyuOfycVFcgjnBqt0EaEVK98l7rWQ5WhT/ldayiq967EOiFy+kPrmz0?=
 =?iso-8859-1?Q?UY2HIWq2mY23PRW2xTsJl/kS8N5ZLDLLtafk7cYA8tHSy+bW0S2yea+WAr?=
 =?iso-8859-1?Q?VF4i1ql3+vmK5Szfw5eA+AMgZDcI0Ybqip8oCGRixv9jgwPEMEhRg5e63Z?=
 =?iso-8859-1?Q?dejGoT9XV7JpRcTmICQ+qW+J9PPj5HzeI9ksSTY/xBcNJIdohzkTs9R+Fh?=
 =?iso-8859-1?Q?z9D/jZhijhapKAj96coYRu81hYXUSiejG9QOSkTcOyk14xp4PigoCqrjNF?=
 =?iso-8859-1?Q?iI0aGmgDUgNDjKxEV1Bk4uK+Reog4Lp5vNnHGZNVRDU05sWFv4FIe0xN5Q?=
 =?iso-8859-1?Q?nkehselENkH4ewhtSaC6pW2oeI7ILFj7bM0srV0I3c3OlIyOcWdGeID3Q+?=
 =?iso-8859-1?Q?7HxS9oqrLO4oTtbRqTE1BnmVA+WrCdgforYXeRa3oTDG7QOs7kirZkWdWm?=
 =?iso-8859-1?Q?TfZGL6K58jYnBnc9ZxI+BdWwl0DCo0GhOMQWjmVStXF7IWGUydgum1qo3T?=
 =?iso-8859-1?Q?SIg16dlzoDt8Mj5UwGno0okhQrceV740QLbJrnjQh6K/ruZ18F/DeJCOWI?=
 =?iso-8859-1?Q?rpwZGuvvHrM6iwE1FQjT1owTey55P1+U0i1bAfrZ/VI4wTVF2o2lcF7KVN?=
 =?iso-8859-1?Q?RQsNIbqOX310LJwvQw8a3KKx5l8FKLt7xYkTPaU2ptpPnu1jcpGT6g5Vla?=
 =?iso-8859-1?Q?HJnQtvJ7TGcX4Ooiy5tMQ4oAQMpR9ZN2qLx2eLBaQiUbSlkuSg+gHqhwN+?=
 =?iso-8859-1?Q?LJ3XLk6HwT9cGkMn78okgGaTMWvFJjcRF7ZGlWLJZkXAbOWoptO7ZfN8jq?=
 =?iso-8859-1?Q?kzZXdDwlnDCeZgLQPrfp/1W5aGILMfx7AY1i6+UKQNPVOhuVx5/2mmW/6H?=
 =?iso-8859-1?Q?mJt8zmu+4XRpIkpGUDwWZC4sSlCITLLUxR6DW3X4D1OhGNMoEx2kfOLRWU?=
 =?iso-8859-1?Q?lhtCV+VExX2ZB/g30Xd3AsPhdClHl+kIpsPPwrM+0vwbHiEAweQdUz2IE5?=
 =?iso-8859-1?Q?94aPi/I6LETt1rjgsVWvkDn/ttKXPkdAZUMVYy554GSKZ8MZKiCv4r1T/J?=
 =?iso-8859-1?Q?siqyDojconR2Vt5s3FIgIBrtPAMiMut37NiRWyubvnoMgJGwEPknWnRWnJ?=
 =?iso-8859-1?Q?bY3UeZD0mhpfGsRFvyaKaEGQcfDzaZ7YpO8cczp0tc5sfoMsJDHfO+4WO5?=
 =?iso-8859-1?Q?8ZIGvlcXyYTqt6/GwCichlNhf8oa4bFZWSuIjXTx/jEyXkfvOtXxh6VuK3?=
 =?iso-8859-1?Q?6iyYrpY+eI0M1SU6sPsadmzh8ZtI9+UkujqccrM4KOyxk1fyfq6EUoXBBZ?=
 =?iso-8859-1?Q?gTbTh6WuFX+j61y8ZqYwnF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?eCy2t3SEF/AW+rXAHe8Z5KYL1rO0Ii4x/SleGoat4Wgn1GNs/uhNuVzxMP?=
 =?iso-8859-1?Q?na+y5br6R9MhoxEGKkKthJviSN5W1swkmZ1OmFVn/5rnnWAe8r7xh71htP?=
 =?iso-8859-1?Q?ku/U5eY5015Rp6IOf54aj2PNUnIO2MOMmi4IbXzlGwj7E52BIl5U3CEvWc?=
 =?iso-8859-1?Q?iJpSIV2SY4v8zfRCPa9XkbupfoPuD3KSSv7sg+MDFQZ1QgCrAHSxnOVDnJ?=
 =?iso-8859-1?Q?9HuEhTD/zziIy2BvjeqGRRvdK+xshcpV+BwLNKbUBspBncowYH7UKSkof4?=
 =?iso-8859-1?Q?UdwkenE9Yv8I/rkd3KdJGfj4fD2rDmiGOrEpI0CsWhG7Dq//86V3LbokKJ?=
 =?iso-8859-1?Q?N2nhnx7EfGnaOZhDHrqkwYlS0+cGa13kttih5Rc1nHH8aH+O/8CyhCrTcX?=
 =?iso-8859-1?Q?Ws3kpnJPnVrRQrP0cNJlLRDApOFUJNxFNjd5XoxE8NmW07nsmXF9iKPqu7?=
 =?iso-8859-1?Q?zlu4UvfzgJSNnd4QTFIe4OH9GimB5N8Mt/X/7aOoLaLMNVHYiHCxV/d1Jv?=
 =?iso-8859-1?Q?duRRTEibePSH7tLNsSR08Fr32q7OUa6EDqiuF6UwWraq9VUig9bb5nIT2u?=
 =?iso-8859-1?Q?ovo/6ZCz50ao3ZnYjAAiRxjCXHQJ+8F15+Jf+k/MYA4+mPHsLe7IAzyhn/?=
 =?iso-8859-1?Q?/qgq72xoddhiAHW9nzX/vcCvT9nw3nXuICDbcQa1YQoXh/XvBC019Jxssf?=
 =?iso-8859-1?Q?FPQj48IvdqtTvH+lVazXSBk1Bm/2K4ujNrfA2cQ5j9+LjjunIVmYvRPTOF?=
 =?iso-8859-1?Q?NgRtvt9L5tfcrqJgPbj2cSYuvIWgIePr0ctn8/AVSIQYGNDFAm+k5SFAj4?=
 =?iso-8859-1?Q?Q4l2al09sPMy+HhAbIpSnGR1O0MMnpBrGU8BvWJz+EWo+PFYY4yZxd9PW3?=
 =?iso-8859-1?Q?eNNMz6DhEWIGT5QuaKmDnZtZ/f0wEn4A/J4rNhv2bz/kMT5pCO6lP5rjGv?=
 =?iso-8859-1?Q?5XIW74KxbINJdoHbARQC/HjSHuW0lQUvgiukNlaqIC0oTyLkyVxWdrCghw?=
 =?iso-8859-1?Q?nsgAB04YATOQSsKsoxjrz1WpzGkteRC8bFfHmSd2GOPR9McQ1EdAIQ/8MG?=
 =?iso-8859-1?Q?Tz4NFWbHfcZjvWKxXr5/jA6u8LQO44sHCwBMlMpjMiLdIoNHcF51gbRAhX?=
 =?iso-8859-1?Q?7d/tvq+oqwbnpamXf4S4PUIQ9rrd3qTGMt5Jun5PsTYn/fGOdRg6uI60tr?=
 =?iso-8859-1?Q?RbfBBZ85ck1DdGkh+rL1VuvleS+cgTCCW2tX+gKvwLIsuxvptMj0K6L2Ek?=
 =?iso-8859-1?Q?IJjELTjqbLCuR9SKouWsmtBgE1sobZY03BQx6/jPk5f6KZ/uGL4/0fe6pO?=
 =?iso-8859-1?Q?5rqasIotC3XBBzYZdzLqJgadxO7SspFHSz75Ry+ugUKtKF8KkcaR5+bI+D?=
 =?iso-8859-1?Q?DFC5RPZ41X7CCNwtzXdSHcdIvical6aTw6fooDMxNh2VptdNySx31hHLVR?=
 =?iso-8859-1?Q?wGJWrtguvw9fN02SuXV343DBiqc/in0IF9ca2eAQb77xBvatv3qaYguAJ+?=
 =?iso-8859-1?Q?8ANEF3fzRsNPM+oUQcNpV677zozASA1v2kdFOojciH8Kda6Glu7KhAsuIF?=
 =?iso-8859-1?Q?7R5snJJhWiaYc+r+TqGC9YNaLlTxBVlf4PEg5Ek6S92FBtvCXpeVq6KWKi?=
 =?iso-8859-1?Q?G/kPgF7aawaxBaTID4CoOoYlsE7HRA0T6LUcGzMkdWsPO4mCuHz7pWeA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4aab6bad-e13d-4dbc-59a5-08de1b055a5d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2025 18:18:13.9662 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h3U1W/xvQoq/cRXzXDCBn/cRGCr6w/qfYpxJpVfCy7+kwK9IBw/z8xVrRjsCX0DMKP+SN0xXPN8qmWKhmCu9JqsotxAkDIUtlxRw8YH5EJ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5086
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

On Mon, Nov 03, 2025 at 02:18:11PM -0300, Gustavo Sousa wrote:
> When reading memory latencies for watermark calculations, previous
> display releases instructed to apply an adjustment of adding a certain
> value (e.g. 6us) to all levels when the level 0's memory latency read
> from hardware was zero.
> 
> For Xe3p_LPD, the instruction is to always use 6us for level 0 and to
> add that value to the other levels.  Add the necessary code in
> sanitize_wm_latency() so that WaWmMemoryReadLatency is always applied
> for Xe3p_LPD and beyond.
> 
> v2:
>   - Rebased after addition of prep patch "drm/i915/wm: Reorder
>     adjust_wm_latency() for Xe3_LPD" (dropped in v3).
> v3:
>   - Back to the simpler approach of doing the 'wm[0] = 0' step without
>     modifying the rest of the code, and that inside
>     sanitize_wm_latency(). (Matt Roper, Ville)
> 
> Bspec: 68986, 69126
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index e13324af7afb..ed55fe84e930 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3184,6 +3184,13 @@ static void sanitize_wm_latency(struct intel_display *display)
>  	u16 *wm = display->wm.skl_latency;
>  	int level, num_levels = display->wm.num_levels;
>  
> +	/*
> +	 * Xe3p and beyond should ignore level 0's reported latency and
> +	 * always apply WaWmMemoryReadLatency logic.
> +	 */
> +	if (DISPLAY_VER(display) >= 35)
> +		wm[0] = 0;
> +
>  	/*
>  	 * If a level n (n > 1) has a 0us latency, all levels m (m >= n)
>  	 * need to be disabled. We make sure to sanitize the values out
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
