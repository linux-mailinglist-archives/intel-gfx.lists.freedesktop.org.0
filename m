Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4753967E9F
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 06:51:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EA8610E1F6;
	Mon,  2 Sep 2024 04:51:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i8sK1F1F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D5C210E1F5;
 Mon,  2 Sep 2024 04:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725252678; x=1756788678;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=17T2qPOT7O+xcuF/9t8o5VXYdLTa6BigOt+WWaya2v8=;
 b=i8sK1F1FCOy2IRrPTNVEVIkcDBWR2dXnEt5HiuCTkBIuBm+u2FFh47W5
 2YJA9vP4hhC5wZhYOe+uaQg8/3x+6hD+9cqxFQ9JxMg4MqCAJMqXHV8zB
 QPeECQrZIukDxav+abZtVj+2jMcgkcLz9rjlL0x5rjOkxB7qOyyWAU2Px
 AKFrUnHYO11m4rC8y2jpF0e1rlt8znshwzFD8blvHIG7NL6rFn1kIQh/f
 1e3E2gt1VJ2ZSI+JOkKHkkEW+3QvSUM+NzFQDtsKhAML47ElBVjuq+z0m
 8SkThN/+DmJ7XGN0OO1uEI44jATBQ/kELVCtm3BHoUg3eYMafW1YrkA+T w==;
X-CSE-ConnectionGUID: m1IKP/bfQPqj2DveMF2YWA==
X-CSE-MsgGUID: IgoYaOiiS/+N679gjmVMzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="23625987"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="23625987"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2024 21:51:17 -0700
X-CSE-ConnectionGUID: ou92Z8d1RH2+x/uOOm2Yug==
X-CSE-MsgGUID: hKWk+/UFT/SI01WUnWFn/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="69378710"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Sep 2024 21:51:17 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 1 Sep 2024 21:51:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 1 Sep 2024 21:51:16 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 1 Sep 2024 21:51:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mk/Q82ws7y9E7frldEUk++pWryknnvZ7E3P7W/lFGQxiIROP8cNWTKzzJaRI5JuPUHbuvw84y/YAANxUXtqKIvYwdQ9ver4a7Ckkd62A28TM9rj9qW69OIHIFtX/xC7cYkD5bPdNhBLElgLUWk4UPtMgxnMDWXbv+008JQ97dGL6u3VcndMwvKJAppC8/SHdg0STUr7jjhJA4d6YKd9pBvExtgDgsdcTbsOX+iCs5xdIqrQGZyLohT1WuVvpKGIzE8HCPDL8iOJZggNovKNiIMt7wC91ZxMul+AUPZX/pUH80TbxCSVTNIVGm0QALjSHpDR7NkpHBwuY3HeC3ZJXGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2grRqp0Eezow0b4uiEHMeMtlq98CbbPG5/c2fTQi9j4=;
 b=ngMRwU0v+7liFkaksQTrWzo58AUsuUytrM8O1I5b3b0EEuE3YdOKCFfXwNp3IaSZ89lANAxTEFZBfBxfDevTY4MLM4kU6/l3ddFsNZxq+AsRVdavVwfAro+3uS/N6JMVY0IGIFrxOtLQwqeLWPaWqI73MeWG1oODcZ2RruojHI5ayeHLzIdDfNAWauJYPvDYASO83f0+A1ZboPIo2K3SRqK0grFz0GiTgSrTTxYtin9x2aJFmYwtKyd1kCUCsC1YIncau0yJzCZQfhZfm3qKS+flEVoYcvSznAj0u4OFOYydcFIbEn3C5jMPQYHcm+rYLEVI1qeATeLiBcn8eVN3pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4584.namprd11.prod.outlook.com (2603:10b6:208:264::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Mon, 2 Sep
 2024 04:51:13 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7918.024; Mon, 2 Sep 2024
 04:51:13 +0000
Message-ID: <8475ec64-50a8-4110-b49e-bd1060255b19@intel.com>
Date: Mon, 2 Sep 2024 10:21:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/19] drm/i915/icl_dsi: Move helpers to configure dsi
 dual link to intel_dss
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <suraj.kandpal@intel.com>
References: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
 <20240830050950.2528450-8-ankit.k.nautiyal@intel.com>
 <ZtGsD-504h1UmRDu@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZtGsD-504h1UmRDu@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0121.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN2PR11MB4584:EE_
X-MS-Office365-Filtering-Correlation-Id: 90e2fe1f-6680-479c-53aa-08dccb0adef6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L3l2eE1Ub0dNTlYwNGRFcytqeC9hWmdkdGJXcGIwUUpuNnJtVkg2T1pWaVhO?=
 =?utf-8?B?d0pWeExOUkdEb3A2TzE0QmxlMjk2dVZNQ0F0WU9YTkwvc3lib290WGF1elk4?=
 =?utf-8?B?c2NUUWFIMXlWUjNNa1dwVEZNV2Zmb1hsK2R1aW5sa3h4N0M0Q3Z4R2lEQ0dK?=
 =?utf-8?B?UkYwdnFkNTBWYkd6UHhPbCtsb3Y4cURNNVdTcE91L0ZTTGo5SFQ2akI4QmYx?=
 =?utf-8?B?Q1BRVVVwcGV5WHdiQ3hjbEN2WmRkTUJWdmZHbFFHTDNqTTRiTzFZNFN5eERL?=
 =?utf-8?B?dW9FRTF1aVR3c0NyNTI2VnVNY2Q3R1JXWCtla3pxY0FsRFlQVFJJNzBGUTgr?=
 =?utf-8?B?Qnp6SkhlTHBaTFMyWGRkNG0zdTJZU01SdHlVbmsrVDAxeVRCaWl2S01RbW92?=
 =?utf-8?B?c3lZL1ovT1Z6aEdlUHEvbFZuWG9iRHI5aHNSUEl5U0h6Rm5haWJ5aWx4Wk1Q?=
 =?utf-8?B?V1RqeVNTNXlyVnNJMzJFZFF1WDBzM3Rpbi9FTC9EVFpITkZ3eWZJUGxqcjYx?=
 =?utf-8?B?MCtWNlVlMDZ1YlhYTHJlWjIyNE43Z3lLZUZ6Sm9IbXZ2MkRML1FtNG9jZ1hL?=
 =?utf-8?B?L2VsNi9yaDdXc3V2NVV1YXRlRFVjMTQ5eDZwU2hMd3dJZFFVbEd2MURSZitK?=
 =?utf-8?B?WDhOQVhURGtKZHlML2hYQVI1KzNxenhOMlMva1h3K3pjeWcvdWR4OE5oT0RY?=
 =?utf-8?B?aENEd29NbkFYa2lWamVldkhGY0RDd3dva001NFIvQXZZaWd4MjVDLzFFbXhC?=
 =?utf-8?B?eTNhcXB5alJFLzFJKzhMbmkyM1J1eGt5bzBBeWhRUFV3aFp6ZmtWdW93eVAz?=
 =?utf-8?B?QUpPWHIwWTcyRUFwWjRUbnBKMW40bFFqa0VGZWYzaC9hYkxIRzY2NTdoSW5r?=
 =?utf-8?B?U01yQXVHZjBtMWx5TDFnQkZPMnBZZjZkcDE0aWtsYTI1VUVjbVIwcTlHQ1l5?=
 =?utf-8?B?N05lVElRcFFZU2MvSTljVHB0Q0h0eU94ZDBXZzF1N2lIc1g0MDhlSG5XdS9Q?=
 =?utf-8?B?bWFyRGJvdTVhT1hsMEUrYy9ocUZHVjRJbysyVWJPUlViWmZrRExhZ0dsK05Q?=
 =?utf-8?B?WFpqb0hlZ0E0dVMwbnB4SkRQUUhOZHVoZ2I3Zm5YTG94cDN3UjJRVnAxL2ZP?=
 =?utf-8?B?eTZITW9VcEpCVUtLYzF5YStSUlJoYTY5eHBlanpYMzNBK254L04zL1JYMDR2?=
 =?utf-8?B?c0lxVjIrTDRGUG5OWTdTaWZubFQ0RTY3UXpvaGdxQXlBdzJST3h5ZnI5d1Mv?=
 =?utf-8?B?Q2hoR0F6T3pWemhpcnlMaWIyUnR3SXpoaTRUY1FQSFRKTWdXUXhVVVVWVFR2?=
 =?utf-8?B?U3crM2JNd2Vzd0NQMnN5SmdHQW1pMXJodGMvZG5qSjJXTlJGeUVrZzM3Uno0?=
 =?utf-8?B?N1RWaFcyQzNaUnIxdUtYRnVNMW1nM0NLM2hnNXllSFNTdEJJRVRmQ1pnOWJG?=
 =?utf-8?B?QmFPUGJQajAvZk8rUVFTQlowdVIvSCtsekVqNTdSRC93SW5UZndtUTc5RTZG?=
 =?utf-8?B?anZnTVMxWjJKS2tmNWhBU1g2OEV0bjdJK1lsa3VnRkJZOXZlNDhYSzZYZm9m?=
 =?utf-8?B?Q0JidWVKOWczaDJrYm9KQWNBVTkySlpuUGZmdW9mOWw4UTk3ZjFGQ0FNcWlN?=
 =?utf-8?B?Wm01T1FDc0JyUVo5Rjl1NjJTM0Z6Z0FFNDNNUkFQL25vUW9ZVGUvUWhDK2Ns?=
 =?utf-8?B?Wm1ZWVpsQXNwZFEyWDF5NDlDcFVFMERHYkJIRTY3MFBvVjVtZWJsSkdDMGVL?=
 =?utf-8?B?MGpvTjVqRjJheUJZMU55UzNucVhrT01sUkZvUG1Xb2NiY2xxN05GbDQyQmRY?=
 =?utf-8?B?RWlMTDJyUTRibkIrLzRUUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a3JITEt4SW5JQ0lZQjN2Uks0a0NpN2FaYjJ5bUZQeGhKa2RYRFVGZGZVMTc3?=
 =?utf-8?B?c3lKZTZuVnhGTnVrbW44eVc0SzZtSlZOTkM1Ui8zalZBcUxEWjRWcjlDU1J5?=
 =?utf-8?B?T2p0dk4zZDFBNVRkM3dhUm55eGN2Y0JYRXYvdXpZRURMUTluU0RZU3UvbHRO?=
 =?utf-8?B?STdjalNXQ2dtOFA3Q2pGRDBYSVYwOGZ5SmdtWHBrTFY1NnNyTVZVcEhUL2pM?=
 =?utf-8?B?REwwOUcyUmpoZ01JTVBWelZOZENoYkp6VmRlZVJacW4rcUhPVmNnUXhEelpE?=
 =?utf-8?B?dXc1WFFBK3NXY0RSeHJicytkM0pqRVJrbHEvckdOTCtRQ3BoL0o0RnpvOENt?=
 =?utf-8?B?cUd1c3h0cGd1c0d1Yk5PZ3lQb2ZMaTVPUGtNeml0QTIyZEVVRVlMMnNDc2Z6?=
 =?utf-8?B?SFg2NmtPRk1CQkZpR3JIbnNub0drRU5GdDkxcTBWUURwbXFDc0ozY2hXbzlK?=
 =?utf-8?B?U3ZuNVlyNWU4ZHlsZXU3N3lwU3FtQ2hZRlVZc3ZrVTRZVWVNY3FrOVhRV0sv?=
 =?utf-8?B?VC9XOCt2L2JWekl6K3d5Q05LaEJWc2FuNUl5Wjd4NXFpSkxaMTZKTkNDbFhu?=
 =?utf-8?B?SVdpdWhHaXBIdXo2Z3FzM05yY0JXd1NqeHl4U3ZzMWE4ZmZFcXdnM0NqNWo3?=
 =?utf-8?B?WjlQUFpscTRjUE5TZ0JvZ2FaTWxZZnh6emF2UDBRZnlyd2V4Wno0SFh5OUNH?=
 =?utf-8?B?TzlRR3czb0Y2OVBUSEp2ZE4vVXBuYkkzQlRsOVN6WjZnM3BsR1d5L09MRjVR?=
 =?utf-8?B?TEtocXVaczRjTS9HbWZuMjdUaTlFTHpQUU1KVEtJV1RLWWR1TXljakVKbGJ3?=
 =?utf-8?B?L1J3OXBoVWhwTXhqRC9KL3VyQUFqYngyQW5GbzBjQUxZQmd5Q0ZBU0EvN3Zt?=
 =?utf-8?B?OTRrOGp0QXlJTUNWUi9JMWlCTFEyeS9hS2pyQ3BFeHowMjJmOG10bUpSbGJZ?=
 =?utf-8?B?Q1BhbVFoNkpkaGdJK29QNkdkNTN6dTBuTDg2TmJBTXZLUXd0NjdZbk05ZkFZ?=
 =?utf-8?B?bGQ3bG9UTlI0ZnV5NHgvbmlBd3pEUEFzZld0cEV5SzhGUldpNVdvcVZqQmx6?=
 =?utf-8?B?OVYxeUwyc0J1UERSMElYR1hXTU8ycWJWdmg0cEptc1F6VDNZTDRXVWNJZS9B?=
 =?utf-8?B?SHZYMGhOcm1uQy9tbjVYSzV3Q2Q0UHZGNjcySW5XTzBYWmVXRWtvS0lrN0xk?=
 =?utf-8?B?ampYdVlsWjZUM0tkZGFZVXB0eE8vSWpRczJCZzJQSTdtaTBMbUt0RlVsV3FQ?=
 =?utf-8?B?eE15TzlBVTFIdVM2eXRHdjFxd0ZCazJBYVR0ZE8vbCswbENIeWRYUWlaY29C?=
 =?utf-8?B?WEUxR2pKdzVCcG52SUhoMUtYN0dsUEZzQkkyb2h4UDF1Z1dYMnhjVEhmNTZz?=
 =?utf-8?B?NmExNk05cVpIWnpoZlQzVGxQdFFILzBXL0dqRWZOV2JhRXYrL1lVRnU3UVpB?=
 =?utf-8?B?M2V1U2ZJRmtsNVhsZkpVUjdOQ0FQYnVYZ2tmMm1NejF5UGVwbDl2RGZNRTlW?=
 =?utf-8?B?MG1MUUl0di9wNEJxY3VXS0JKdVJETmJ1TnVXZjIwOHZoMFlQZ2ZyS01sSTRB?=
 =?utf-8?B?NWVoY1NOcTFaZG9WNkZpek1tQzRmaEUwdThNM01seW9QSlZUZXRtbGRSUUZX?=
 =?utf-8?B?bUVYamQ5dzd4Mm8wUThPVFhZQ092SDVKZk5aY256V2lveGhqVzlRYk9TNys3?=
 =?utf-8?B?aHFXbDVRaW9mdGp5OFVLaUNWNWF0YTcwb0dXQmRvelQ5SU5aelpLQjVPeGZv?=
 =?utf-8?B?bmR5WXl1U3BtK0JkblErbFdXSEpxNUE2TWJkOHpZWVEvdkNMQ3VFVHVHTmNj?=
 =?utf-8?B?OXBTam11MkxDYjlFdG9SdmMva2dTbzF4WndsYmJQZmdadHBlL0FSekZzUzRx?=
 =?utf-8?B?QWxKSVlFa0UzMVdQUVVXeVN1UnErODVnUUI4Z1JYM0pWYmQxVmgwMHVqaXQw?=
 =?utf-8?B?VTZ4SEJobkRpNldidTNmcjZQUDdGOFhnNVdjQ3VPeXpuYmEwUWJPQTN3Wjlz?=
 =?utf-8?B?VlhJdXVkNy9GMzAwWjJGQUplSnJvTUhoWlZ6aUpBQkIxM2lZZ3p1Sm1jREI5?=
 =?utf-8?B?SDhKcGhwKzlIWC80Sm5BeHNUdDBiVmFNbmpoM0JoMXNKcWJ0dThrZEZ0eTNN?=
 =?utf-8?B?MVlWVmJFcHlWVUFSbGY2ZUVtbWthNnVVamRwVGVzYVVxMnMwRFErWm8vQms1?=
 =?utf-8?B?Mnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 90e2fe1f-6680-479c-53aa-08dccb0adef6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2024 04:51:13.1515 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ufo2KOxsd2S1/Vr4UM1IqLtU83KKqnflUdXMpTKyac6WSA8a8GzEhNloN36mEH6LVGK8FbzwkBkjCNDOIoZASt1V2R57KXPDWAlKbC/SWFs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4584
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


On 8/30/2024 4:55 PM, Ville Syrjälä wrote:
> On Fri, Aug 30, 2024 at 10:39:37AM +0530, Ankit Nautiyal wrote:
>> Move the function to configure dss_ctl for dual_link dsi to intel_dss
>> files. While at it, use struct intel_display wherever possible.
>>
>> v2: Avoid modifying the code while movement. (Jani)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/icl_dsi.c   | 57 ++----------------------
>>   drivers/gpu/drm/i915/display/intel_dss.c | 50 +++++++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_dss.h |  3 ++
>>   3 files changed, 57 insertions(+), 53 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
>> index 79e149d51cb2..ec880d1cbbee 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -44,7 +44,7 @@
>>   #include "intel_de.h"
>>   #include "intel_dsi.h"
>>   #include "intel_dsi_vbt.h"
>> -#include "intel_dss_regs.h"
>> +#include "intel_dss.h"
>>   #include "intel_panel.h"
>>   #include "intel_vdsc.h"
>>   #include "skl_scaler.h"
>> @@ -274,55 +274,6 @@ static void dsi_program_swing_and_deemphasis(struct intel_encoder *encoder)
>>   	}
>>   }
>>   
>> -static void configure_dual_link_mode(struct intel_encoder *encoder,
>> -				     const struct intel_crtc_state *pipe_config,
>> -				     u8 dual_link, u8 pixel_overlap)
>> -{
>> -	struct intel_display *display = to_intel_display(encoder);
>> -	i915_reg_t dss_ctl1_reg, dss_ctl2_reg;
>> -	u32 dss_ctl1;
>> -
>> -	/* FIXME: Move all DSS handling to intel_vdsc.c */
>> -	if (DISPLAY_VER(display) >= 12) {
>> -		struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
>> -
>> -		dss_ctl1_reg = ICL_PIPE_DSS_CTL1(crtc->pipe);
>> -		dss_ctl2_reg = ICL_PIPE_DSS_CTL2(crtc->pipe);
>> -	} else {
>> -		dss_ctl1_reg = DSS_CTL1;
>> -		dss_ctl2_reg = DSS_CTL2;
>> -	}
>> -
>> -	dss_ctl1 = intel_de_read(display, dss_ctl1_reg);
>> -	dss_ctl1 |= SPLITTER_ENABLE;
>> -	dss_ctl1 &= ~OVERLAP_PIXELS_MASK;
>> -	dss_ctl1 |= OVERLAP_PIXELS(pixel_overlap);
>> -
>> -	if (dual_link == DSI_DUAL_LINK_FRONT_BACK) {
>> -		const struct drm_display_mode *adjusted_mode =
>> -					&pipe_config->hw.adjusted_mode;
>> -		u16 hactive = adjusted_mode->crtc_hdisplay;
>> -		u16 dl_buffer_depth;
>> -
>> -		dss_ctl1 &= ~DUAL_LINK_MODE_INTERLEAVE;
>> -		dl_buffer_depth = hactive / 2 + pixel_overlap;
>> -
>> -		if (dl_buffer_depth > MAX_DL_BUFFER_TARGET_DEPTH)
>> -			drm_err(display->drm,
>> -				"DL buffer depth exceed max value\n");
>> -
>> -		dss_ctl1 &= ~LEFT_DL_BUF_TARGET_DEPTH_MASK;
>> -		dss_ctl1 |= LEFT_DL_BUF_TARGET_DEPTH(dl_buffer_depth);
>> -		intel_de_rmw(display, dss_ctl2_reg, RIGHT_DL_BUF_TARGET_DEPTH_MASK,
>> -			     RIGHT_DL_BUF_TARGET_DEPTH(dl_buffer_depth));
>> -	} else {
>> -		/* Interleave */
>> -		dss_ctl1 |= DUAL_LINK_MODE_INTERLEAVE;
>> -	}
>> -
>> -	intel_de_write(display, dss_ctl1_reg, dss_ctl1);
>> -}
>> -
>>   /* aka DSI 8X clock */
>>   static int afe_clk(struct intel_encoder *encoder,
>>   		   const struct intel_crtc_state *crtc_state)
>> @@ -791,9 +742,9 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
>>   		}
>>   
>>   		/* configure stream splitting */
>> -		configure_dual_link_mode(encoder, pipe_config,
>> -					 intel_dsi->dual_link,
>> -					 intel_dsi->pixel_overlap);
>> +		intel_dss_dsi_dual_link_mode_configure(encoder, pipe_config,
>> +						       intel_dsi->dual_link,
>> +						       intel_dsi->pixel_overlap);
>>   	}
>>   
>>   	for_each_dsi_port(port, intel_dsi->ports) {
>> diff --git a/drivers/gpu/drm/i915/display/intel_dss.c b/drivers/gpu/drm/i915/display/intel_dss.c
>> index 3f7f416eb3fa..969e32143983 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dss.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dss.c
>> @@ -7,6 +7,7 @@
>>   #include "i915_reg_defs.h"
>>   #include "intel_de.h"
>>   #include "intel_display_types.h"
>> +#include "intel_dsi.h"
>>   #include "intel_dss.h"
>>   #include "intel_dss_regs.h"
>>   
>> @@ -87,3 +88,52 @@ void intel_dss_mso_configure(const struct intel_crtc_state *crtc_state)
>>   		     SPLITTER_ENABLE | SPLITTER_CONFIGURATION_MASK |
>>   		     OVERLAP_PIXELS_MASK, dss1);
>>   }
>> +
>> +void intel_dss_dsi_dual_link_mode_configure(struct intel_encoder *encoder,
>> +					    const struct intel_crtc_state *pipe_config,
>> +					    u8 dual_link,
>> +					    u8 pixel_overlap)
>> +{
>> +	struct intel_display *display = to_intel_display(encoder);
>> +	i915_reg_t dss_ctl1_reg, dss_ctl2_reg;
>> +	u32 dss_ctl1;
>> +
>> +	if (DISPLAY_VER(display) >= 12) {
>> +		struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
>> +
>> +		dss_ctl1_reg = ICL_PIPE_DSS_CTL1(crtc->pipe);
>> +		dss_ctl2_reg = ICL_PIPE_DSS_CTL2(crtc->pipe);
>> +	} else {
>> +		dss_ctl1_reg = DSS_CTL1;
>> +		dss_ctl2_reg = DSS_CTL2;
>> +	}
>> +
>> +	dss_ctl1 = intel_de_read(display, dss_ctl1_reg);
>> +	dss_ctl1 |= SPLITTER_ENABLE;
>> +	dss_ctl1 &= ~OVERLAP_PIXELS_MASK;
>> +	dss_ctl1 |= OVERLAP_PIXELS(pixel_overlap);
>> +
>> +	if (dual_link == DSI_DUAL_LINK_FRONT_BACK) {
>> +		const struct drm_display_mode *adjusted_mode =
>> +					&pipe_config->hw.adjusted_mode;
>> +		u16 hactive = adjusted_mode->crtc_hdisplay;
>> +		u16 dl_buffer_depth;
>> +
>> +		dss_ctl1 &= ~DUAL_LINK_MODE_INTERLEAVE;
>> +		dl_buffer_depth = hactive / 2 + pixel_overlap;
>> +
>> +		if (dl_buffer_depth > MAX_DL_BUFFER_TARGET_DEPTH)
>> +			drm_err(display->drm,
>> +				"DL buffer depth exceed max value\n");
>> +
>> +		dss_ctl1 &= ~LEFT_DL_BUF_TARGET_DEPTH_MASK;
>> +		dss_ctl1 |= LEFT_DL_BUF_TARGET_DEPTH(dl_buffer_depth);
>> +		intel_de_rmw(display, dss_ctl2_reg, RIGHT_DL_BUF_TARGET_DEPTH_MASK,
>> +			     RIGHT_DL_BUF_TARGET_DEPTH(dl_buffer_depth));
> Leaking the DSI mess outside of the DSI code is not great. The DSI
> code should really just be taught to use the crtc_state properly.

I do agree. Perhaps have a separate structure for DSS in 
intel_crtc_state with relevant bits, which would be computed in 
compute_config and then we write it one time.

Can we have a separate patch series to fix this and mso part, and just 
have DSS, joiner things separated from VDSC as a first step?

Regards,

Ankit


>
>> +	} else {
>> +		/* Interleave */
>> +		dss_ctl1 |= DUAL_LINK_MODE_INTERLEAVE;
>> +	}
>> +
>> +	intel_de_write(display, dss_ctl1_reg, dss_ctl1);
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_dss.h b/drivers/gpu/drm/i915/display/intel_dss.h
>> index d4629052979a..aa8c67c15855 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dss.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dss.h
>> @@ -16,5 +16,8 @@ u8 intel_dss_mso_pipe_mask(struct intel_display *display);
>>   void intel_dss_mso_get_config(struct intel_encoder *encoder,
>>   			      struct intel_crtc_state *pipe_config);
>>   void intel_dss_mso_configure(const struct intel_crtc_state *crtc_state);
>> +void intel_dss_dsi_dual_link_mode_configure(struct intel_encoder *encoder,
>> +					    const struct intel_crtc_state *pipe_config,
>> +					    u8 dual_link, u8 pixel_overlap);
>>   
>>   #endif /* __INTEL_DSS_H__ */
>> -- 
>> 2.45.2
