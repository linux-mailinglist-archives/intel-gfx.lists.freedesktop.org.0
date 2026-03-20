Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHFjDb8jvWmr6wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 11:38:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9201B2D8D31
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 11:38:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2562A10EA6C;
	Fri, 20 Mar 2026 10:38:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ph1716s7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8523D10E97C;
 Fri, 20 Mar 2026 10:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774003131; x=1805539131;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=4dTW7i/6gGzhnBKdiB2St4f+HGA3riZDx6ZVp6vTV3w=;
 b=Ph1716s7vRy3ul/sBKwKp66YfakJlTHx6Q0jIu5OXKLiV/arWfGvmbp7
 VvEf7afFZIg7ZffBPeNKE17kHY4x1IkJFEEsZ3HGkdedE1PzXbqmOXZ3q
 Ouj2zr1NCjiXSaoYBjZn7Cf9Ive99VYo7iazCnFDpxJICmqXEx4CRhPEK
 c1XNjCaj12eRF6XKemejw0uCNl2d7+dmRqNc5p06+elKrKt0fNDMOwZqV
 w5yUOd4SEwRXdWbO5HMba+S9ALrYYUtf98jhrOB8rug5fcWWzkaf7Gecz
 PJonD6PQ5JFzZleRbbESPlsGgdYpZtE3zLsZ/8ecP9ZiND7hZ20qbVIe8 g==;
X-CSE-ConnectionGUID: FcIK9YujRFqgFUAhb4s41w==
X-CSE-MsgGUID: BteT4mYAQoOCko8yo0UmMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="78990163"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="78990163"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 03:38:50 -0700
X-CSE-ConnectionGUID: +qjz03MWTw+sqaSy/isjWw==
X-CSE-MsgGUID: wNl98z/7SmCJFJvdjHTSmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="222342133"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 03:38:50 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 03:38:49 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 20 Mar 2026 03:38:49 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.70) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 03:38:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c7xKusLgWuU0B7BqIa9851hvSXXyL3oV+mh3lPIt9Oh1T/BjHWpKRH9nxsgzORty9VZloOOP2dHzl09dA2VrfN9Elk6xpQIsq0Er7GOFCOTJF/qBK0lr+47i4RK7n+4EE03MIduZzpfNI+C531aycNeDVpBw3c/dmCwhxf58t31OsECmIbi8wCtfEi9CCSRRmp3eHq2inJEok+huHoWoUD4q1tgn+r5CwA/HNtOCRlNqu/5SfNFXPXsGoFuMN3Rhc5eRvvgopGZJA3d4iKOWl+VGkLVgrp5DnFzlE5LsObX8RGKnKEwBKJ9BQlSRnA8ZVlIkjm0Gk/ykDK0Kl58k7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jF4+/HENIvRmUqhFAx9rJIMw+qjQFuxe0S3S2MS5cFo=;
 b=kyFRgMQmrx/cQHZ8n19/ZhlJ9490PTgF+Uz99c3Wzujxjcv5MP5u8dz1dDaSoKNaa4cDgL4p7f3HSLweICpI+xQ+ZMecFTxxpqK8cQPs6xak9BHda5EWTyn6JbvTBJtj5T02NjvmU5nL23Jt3DafCbqOMM6qCTNRY02zUnmdfFFbCaEp4+4foJvsQKBvTwKrfq0Rv1WG57ddaRZyJ8UXHpMDZ38bZAwCpoqYd6CKGkLEPzXK5ftrL/uvn0DjWEzExR1MtWo/Xx+AXOKfCJIdq3TSaiX+W2gRUF0lYXLAKcALAfzComcfHJpuSMZ8wR0ljKT5ea8n8qhy2F8Vvk2PSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH0PR11MB8190.namprd11.prod.outlook.com (2603:10b6:610:188::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Fri, 20 Mar
 2026 10:38:45 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9723.010; Fri, 20 Mar 2026
 10:38:45 +0000
Date: Fri, 20 Mar 2026 12:38:09 +0200
From: Imre Deak <imre.deak@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Uma
 Shankar" <uma.shankar@intel.com>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>, <stable@vger.kernel.org>
Subject: Re: [PATCH] drm/i915/dp_tunnel: Fix error handling when clearing
 stream BW in atomic state
Message-ID: <ab0jkdfhqXjzZj08@ideak-desk.lan>
References: <20260320092900.13210-1-imre.deak@intel.com>
 <bbaf3e50-4660-877f-579d-82fa406e077e@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bbaf3e50-4660-877f-579d-82fa406e077e@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F6C1.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::657) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH0PR11MB8190:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e48d82c-d714-4fa2-a249-08de866cdcc6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: kCOs8tHWY26GQT/Xv75ujsKsdy7GDunNF8mvTkwg/70W/L358gEXLSCD9O4rA9GG/QF5Wo45gD1sKg464cdKB1AyA+YSZOD4dDPDAme8YZ6YCtGOldNcMGmlI4GPRT2DNWVyKDp4IDivrdDgUqYhH4VsPMRgrzjYoNdiIZAFyAv6jdjx42OmKrKVRkZIbYkzBoRpXrkWd0SD9AcWG2e5tD5fdl/uTyUeleLOU7hcNJtV74HPOlkc+VcRZtd+EmLWcPT4AD4dX6pACkq4596ZZA89z47ujKtDONRS1RHnI9w5JYmLIugiNFF7sk8zdbC4nqa5pPlfQi+9Sc36I+wc2XrHCpogiewfwr+cYUe9NEXzVLvkqPBKUljnJafqASiswkwpNGM5JonV7KNSJen0jyPEhphktvzHWzWnLWzZo7XXLu93BVZRyOsO74ILq4eV21seaSjUVC+vKwo3AmVV/qUo60oaI9fysROt7g4bM2VnigmLMzsYO18/9GyTBAb7qBOs4l1ojpI7YujglmSrNi02STvYDtN6fDwGRs+6DNBGg28CqjJ9myfokXi/v4cS9eOUrdnxjv9eKlAgeFrI39YkknsLip9eNjf4vT8equs6IxE1DXj2PmRcMNiEE2AWpjf2biFesNyqbJbEw7woZavWzuqZbl36cGfb7yrFO/u/NQ4hM1mquu1QNw5N0qbBFs0oudr1l25n+L7NjymhjUB7t3nOYNnpl3trl8hiFy4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWV2eThwRCtESXF3Z296ZHBMYVQ1SkE3M3p2WGx0QTB1aTlOR1pKYTFnY2F2?=
 =?utf-8?B?UU5lZXFFNmpFV0M5RWpXcVh2cFk3MGJsS0k3ZGowTjhRMEhaeDBHalRYd09V?=
 =?utf-8?B?R1pKMmxYaHNUZHJpZXNGemN6QjBsdW9qUTdXTnA0elVsdDRkTzZybGdGUDRC?=
 =?utf-8?B?QnlyV3o4bXNUOVh3K2ljODB0Z3djdmhJM290c2RiWUZXTlFQU3dPMElwNU0v?=
 =?utf-8?B?Mm9GK0FYd0Vpd0dXdmFLUXdDci9PTUdvM2l4dytIMmJIWWdLdFJ4YzFSNG5M?=
 =?utf-8?B?Q09vNy9TYkROUUY1LzlmcWRTUGdzRDNOeU9ydGVoMGs0VWFZQzZwVWM4RXdi?=
 =?utf-8?B?V3JJa1VaOG51NkU1ZkZzRmFxUEpqejgyc2hzWjFSR0RPZkkxdXl3Z0tOVmkw?=
 =?utf-8?B?TjZZaTQzeDFLMFJsSU5yb1c1Vmh5UXFTbHpqVzN1eUxzL0w2Vy9DdDZ1ZmZp?=
 =?utf-8?B?a2QwTFA1cmxyaEtwNEsrMkpEZzBtb0k2aFpjQ2pONlZxeDFQd0JEQmVieEpO?=
 =?utf-8?B?YTVWMkpoMWpGUDZxUHYyamRZUE5yejZUMzlNNFoyd0FDSHZVb2M0MjdZZWM1?=
 =?utf-8?B?Rm9OMGVYaFIwTWdwTDB3bDJrZzFhc3V5MTc4SStkVnh5cDBiK09NVSsyZW85?=
 =?utf-8?B?bVhIZFBjaHFtek51SWZJcmJyWWI3NndyMjJ5WFcrYmovc2pSMlVTVjFIbUw1?=
 =?utf-8?B?VjMyd2dPS0FOM1lXSDhQN2FIYTFHNUlHUXlLN3E2L0J3L2FPN1RKQWI4bG9x?=
 =?utf-8?B?NTZCdVlNaGdDVmx2NFNOTGxtQW1WbmsvZGRqbXZibHFjajRyYWR2ZUdYc0l0?=
 =?utf-8?B?SXVXSEV4OWJ5WGxuVGp5L3JkM1FZbndsZFU1bktWM2Z2amQzeWxSUUhwWUpo?=
 =?utf-8?B?enkrNm9YOTBJeUVBeEd0VG1XWnp1VXBZd2JHUmVsaDQ1UlcxWFN5bmh4WG50?=
 =?utf-8?B?SXJoWE1LYzZYVE5yU2ZFT01SL04zTHVGREpwdFUyYW5yZEkySFBKWkhaSjEz?=
 =?utf-8?B?RGRXai9Ed2pwdDluaTRHODgzVzRZcGxKejZPbDRKcWZVUnlRV1J2dXpNT1VB?=
 =?utf-8?B?MDR4SlBPK0NvTlNSRlJFTFVCY0pLYXl1VkU3U2RjY0ZRQ3V5SlRicC9zY3ho?=
 =?utf-8?B?TjVCOWU1UnRKb0c5dnF4SmJ3QmtrT3M2YTdqVitlZnNpN3k0VXFoMnQrZDlL?=
 =?utf-8?B?cjluTzZTZjdoc09nTWp2WmxZQXk0YzFxaXpxMGtFUFhSUTNlbys5QURtQ3FX?=
 =?utf-8?B?Z0lqMDR3VkJ0QTJrVzk5STh6Y1duVEs5c2ZaV0FKUStMYXZxUk5vd0x6Z3ZO?=
 =?utf-8?B?eDl0Y3hZbVNNR0szM1k4T3NIZDZhZ205ajV0K3FRalYxenlJblNBMmlGcDRT?=
 =?utf-8?B?cW0xZG11MmJ4YWZIZ2g2WTQ4SUIvQlFqa3dqeit4dzZ2OGY1NW01c0JjMDUr?=
 =?utf-8?B?SDE5Q2J3Ty9FdDYzM005NExKYlA1WjV0UE03RndiSjE1bnduWkpVV0d5MWVC?=
 =?utf-8?B?eDNOaXBKK2k2NU9SdXdNVmpsSCtsTGQvYldyOWJ5UVIyUEVOTklFM0hUQzRW?=
 =?utf-8?B?ejYzaFJQNlNidnExV2Zpa3hLNEx3OVRMVlBweU12UFhGMDFjQ29TcXk0TzNZ?=
 =?utf-8?B?c2lGWlAxT2hKVVBFWjJIc3VoVTIvWkdOdlErR1NyYWZnVTIyMitXY081YVFH?=
 =?utf-8?B?UElmc0phNEZYSHJzc2lsc0EzQlFaazVJYW93eEJTdW1KRDBHSFYzdlliQ2JX?=
 =?utf-8?B?RzhtY2lXcTI5ZDk0UkVsd1hkMVJOa2hXUzkyTC9JbS9iOE5CVHBLUWxFUDZk?=
 =?utf-8?B?Q0dNNXdiMWI2N283WHFmemJkY3lRQVpHdEtmaUJodlozY2YxbjBhSHREWGNF?=
 =?utf-8?B?ZkJ1S1BsR0dwZHJMckswdnJsYzZOa3FqZjJkd204THBNT05LdzBOamlxT1F5?=
 =?utf-8?B?Q3NDTThtSVMwNVBMMmlISjRpV05jcHBSYzVFdjllUVkwbFZhcWJhVjJmUHBX?=
 =?utf-8?B?c2Y3V3grVmNLV0w0V0VSbnBYZnpIdW9NSG1LK3VMNXIzZkQ1WXFESGMvcmVJ?=
 =?utf-8?B?TU85czR6QVV3QW9TT2lGQVdGZUJMUDd6SDZTNFRabzZmVHpUbU93TDN5UFFU?=
 =?utf-8?B?ZHkzTmpZZzFEUTdhcW0xckZEdzFBS2RBWmQwQ3hnR3NxV2ZWeFJkZXJjUlBR?=
 =?utf-8?B?U3pDQmY5TE5nbFYyYjZJQXc2Z1Bha1VmT2tlbHlhMXhlRCtIN3c2RWxFZ2pL?=
 =?utf-8?B?WG91RGZoR05hM01waTJYSTNrbE5xcU9GY1g0a3pqSTJoNFl1Z3VLQ29DL2Nx?=
 =?utf-8?B?RERKK0EzK1hDZHVGV0VzdlVTRVZqZUFmTTJjU0diOWsxV0ZtaEF3QT09?=
X-Exchange-RoutingPolicyChecked: O1+Wm/rdZle8nDCTajdd77ydxMIgyA0vT1ELn6wdtlWZYtCgK0vyviksPCSiL1nwtjfmjRgRSpHtDQ00/quUc8erax+/z8FV7yqpggdfYNzbADb1yUfU7zJlks9oOQksxxtMcwPxi7GLeznTxXr7r2IWn8B3It9yjdBkD24hgMPdK/ocb4+gw7X16I7wPQz9I/dM5KY1C6u90Pda+QaI3/+FrzZI1yFEbjyOLhRTVrWG+S83dg8+wvVzdVYMnt/Zv3qb79ln1LyWhYoh24F9rYMXYidcPUeEvHZikgzCm7o+YFvnBEPqqeQffQchIDPXN7ogvlPVbvod7lwDZGchbg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e48d82c-d714-4fa2-a249-08de866cdcc6
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2026 10:38:45.4448 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yM+ZpydEWoi2eaRJygCpFsMNHtbaAsEouuxjP7z/yaV9++NgXdMiIXH9sqUxw+lNCVVB1oWABRfuq9tKeE+SvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8190
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:replyto,ideak-desk.lan:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.732];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9201B2D8D31
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 11:20:28AM +0100, Michał Grzelak wrote:
> On Fri, 20 Mar 2026, Imre Deak wrote:
> > Clearing the DP tunnel stream BW in the atomic state involves getting
> > the tunnel group state, which can fail. Handle the error accordingly.
> > 
> > This fixes at least one issue where drm_dp_tunnel_atomic_set_stream_bw()
> > failed to get the tunnel group state returning -EDEADLK, which wasn't
> > handled. This lead to the ctx->contended warn later in modeset_lock()
> > while taking a WW mutex for another object in the same atomic state, and
> > thus within the same already contended WW context.
> > 
> > Moving intel_crtc_state_alloc() later would avoid freeing saved_state on
> > the error path; this stable patch leaves that simplification for a
> > follow-up.
> > 
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Cc: <stable@vger.kernel.org> # v6.9+
> > Fixes: a4efae87ecb2 ("drm/i915/dp: Compute DP tunnel BW during encoder state computation")
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> > drivers/gpu/drm/i915/display/intel_display.c  |  8 +++++++-
> > .../gpu/drm/i915/display/intel_dp_tunnel.c    | 20 +++++++++++++------
> > .../gpu/drm/i915/display/intel_dp_tunnel.h    | 11 ++++++----
> > 3 files changed, 28 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index ee501009a251f..882db77c0bbcd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4640,6 +4640,7 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
> > 	struct intel_crtc_state *crtc_state =
> > 		intel_atomic_get_new_crtc_state(state, crtc);
> > 	struct intel_crtc_state *saved_state;
> > +	int err;
> > 
> > 	saved_state = intel_crtc_state_alloc(crtc);
> > 	if (!saved_state)
> > @@ -4648,7 +4649,12 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
> > 	/* free the old crtc_state->hw members */
> > 	intel_crtc_free_hw_state(crtc_state);
> > 
> > -	intel_dp_tunnel_atomic_clear_stream_bw(state, crtc_state);
> > +	err = intel_dp_tunnel_atomic_clear_stream_bw(state, crtc_state);
> > +	if (err) {
> > +		kfree(saved_state);
> > +
> 
> I am unsure if the blank line above is neccessary,

Yes, it's used for readability before returns.

> but I might be also
> missing style guidelines. Otherwise looks good to me.
> 
> Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
> 
> BR,
> Michał
> 
> > +		return err;
> > +	}
> > 
> > 	/* FIXME: before the switch to atomic started, a new pipe_config was
> > 	 * kzalloc'd. Code that depends on any field being zero should be
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > index 1fd1ac8d556d8..7363c98172971 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > @@ -659,19 +659,27 @@ int intel_dp_tunnel_atomic_compute_stream_bw(struct intel_atomic_state *state,
> >  *
> >  * Clear any DP tunnel stream BW requirement set by
> >  * intel_dp_tunnel_atomic_compute_stream_bw().
> > + *
> > + * Returns 0 in case of success, a negative error code otherwise.
> >  */
> > -void intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
> > -					    struct intel_crtc_state *crtc_state)
> > +int intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
> > +					   struct intel_crtc_state *crtc_state)
> > {
> > 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +	int err;
> > 
> > 	if (!crtc_state->dp_tunnel_ref.tunnel)
> > -		return;
> > +		return 0;
> > +
> > +	err = drm_dp_tunnel_atomic_set_stream_bw(&state->base,
> > +						 crtc_state->dp_tunnel_ref.tunnel,
> > +						 crtc->pipe, 0);
> > +	if (err)
> > +		return err;
> > 
> > -	drm_dp_tunnel_atomic_set_stream_bw(&state->base,
> > -					   crtc_state->dp_tunnel_ref.tunnel,
> > -					   crtc->pipe, 0);
> > 	drm_dp_tunnel_ref_put(&crtc_state->dp_tunnel_ref);
> > +
> > +	return 0;
> > }
> > 
> > /**
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> > index 7f0f720e8dcad..10ab9eebcef69 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
> > @@ -40,8 +40,8 @@ int intel_dp_tunnel_atomic_compute_stream_bw(struct intel_atomic_state *state,
> > 					     struct intel_dp *intel_dp,
> > 					     const struct intel_connector *connector,
> > 					     struct intel_crtc_state *crtc_state);
> > -void intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
> > -					    struct intel_crtc_state *crtc_state);
> > +int intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
> > +					   struct intel_crtc_state *crtc_state);
> > 
> > int intel_dp_tunnel_atomic_add_state_for_crtc(struct intel_atomic_state *state,
> > 					      struct intel_crtc *crtc);
> > @@ -88,9 +88,12 @@ intel_dp_tunnel_atomic_compute_stream_bw(struct intel_atomic_state *state,
> > 	return 0;
> > }
> > 
> > -static inline void
> > +static inline int
> > intel_dp_tunnel_atomic_clear_stream_bw(struct intel_atomic_state *state,
> > -				       struct intel_crtc_state *crtc_state) {}
> > +				       struct intel_crtc_state *crtc_state)
> > +{
> > +	return 0;
> > +}
> > 
> > static inline int
> > intel_dp_tunnel_atomic_add_state_for_crtc(struct intel_atomic_state *state,
> > -- 
> > 2.49.1
> > 
> > 

