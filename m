Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAqBAZqGsGlbkQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 22:01:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 645D525811A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 22:01:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92E6710E786;
	Tue, 10 Mar 2026 21:01:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gEH/8z9Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC03510E23E;
 Tue, 10 Mar 2026 21:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773176469; x=1804712469;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uoJsPCkuAc0hd+p6xasgaktIeT0hJvN+x1dpyUFFMhU=;
 b=gEH/8z9YiHDDKIDv95bhzkCtL4k1O4fdIqx4z0uGyQnj9wImTcHDNYld
 X0SlljyyIfTX3EJ/OdFgw0ntwDcBcVcbLpK8CKiumlNAYVBOvm3VBkgqx
 0I3sKlXqkmwUrLHcSof2hoTbybqUCMK8YRndAH5WY3cGDXK8Kq+wx+K+O
 NQMzZq+Dz8MRvnSiADcvltjjLkKIFEAylQytBo5Kee3j3FT+lkgonIphS
 InDmB+2zle2Z5kIPL1tSwE8LkOWo54L5FHkOoHMcEt2F58EuRx+K1gPVx
 sYmRzc7juaJzfGthCm2IB6z5YciCyAh5snFBT/QgDpSAERiksmi41ZmQL w==;
X-CSE-ConnectionGUID: ZuXNyenTQua+TPdG8V3rjA==
X-CSE-MsgGUID: QKy4iskoTiyhNI68j64lIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="85590896"
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="85590896"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 14:01:08 -0700
X-CSE-ConnectionGUID: 3KH9t3kKTE+kpDGA+/08hw==
X-CSE-MsgGUID: QQjfoYLAQZ+pfQZBV47b2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="224422006"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 14:01:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 14:01:05 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 14:01:05 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.46) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 14:01:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FU1k5dRkMihN+MZTb3tn6r4c3dzXPCp023vZVK//9+IyEJK+iIPSOMkDi+qJDsQoNloARp55QJVOqCTwWPFh92aQsIqlf5NXX/pHTnEFb8vuwsOS2WzXK6hc6n+JOZhu93bRrUkpNjdZMyatG/CAG0OtBZD0Es5p3o5EkfRXjI2dGI6KbnBoWkwuTZwhJac/U47ZG/YpYdAOPsuQZQlE9QtMoOCgnlfS7OiqJrztNcWWxPqTIYVuJ7qZFsj10n1XLkiPt1lZOvZK/+MxYINUvsunKXz2dBRUteRg22fjAyqE4gDi41+uYy6O12btiHmJNylNZ5NTR/+b6vgjmQ0gbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hd06NxTlkygT5AvC4y2NjrMh6e/cnh1i/FaVOj7V7cQ=;
 b=XsM8XkIaNCcIwGozknjAxRPMVnqHST8Rt6aGY2uKetmPZKMfSUTwd5a+hORjYxXz//2oR/UKAs/nI/kuo/ADD7zc2a18ueJEaz8MLyV0/hT+5C2pDtKC+PP/ii79Jhz5u3WFhb0gYjtMHd2d0htXLjBXdRkcQwEzUZ/Gl9AGGUmPynllacUdmg3WOOauxyBivRE/y4t18J3LvbQV9fgnr8gvryGfLb9ywU37+5Ayxb36tIgY3KqixNFRGQCOdQgEc7wWANVfGnNNkUQWmYa2E04ehEAIOqmWycX7IIlH2GptLT6+BDagM8ewpyPHp3MAI7ASiWmCGcKFJa/6Q5TG7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SJ2PR11MB7618.namprd11.prod.outlook.com (2603:10b6:a03:4cc::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 21:01:02 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9700.010; Tue, 10 Mar 2026
 21:01:02 +0000
Message-ID: <ae1018a5-b7ae-4a84-82c7-e55c8873b45b@intel.com>
Date: Wed, 11 Mar 2026 02:30:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] drm/colorop: Keep colorop state consistent across
 atomic commits
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Harry Wentland <harry.wentland@amd.com>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: <contact@emersion.fr>, <alex.hung@amd.com>, <daniels@collabora.com>,
 <mwen@igalia.com>, <sebastian.wick@redhat.com>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>, <maarten.lankhorst@linux.intel.com>,
 <jani.nikula@intel.com>, <louis.chauvet@bootlin.com>,
 <stable@vger.kernel.org>
References: <20260218065713.326417-1-chaitanya.kumar.borah@intel.com>
 <f670f350-7230-4bbc-9443-a6307429d7b3@amd.com>
 <8639961c-9395-4bbe-941c-c1511c72af69@intel.com>
Content-Language: en-GB
In-Reply-To: <8639961c-9395-4bbe-941c-c1511c72af69@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0017.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::36) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|SJ2PR11MB7618:EE_
X-MS-Office365-Filtering-Correlation-Id: f2d8ee29-51b9-4bf6-1e6e-08de7ee82345
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: rIa3iphvBLJnuEY3TSfK+PO/lbg5QGXe1UZv6JQugrJk+XGkQYnmlwmzhCRYmExWeKEasn7NV9VdtuGs11f4pwXzG4TO8nHlbQBftDvOQmvg/8jgkL+Dqr8GIDQJEoLrJOjBdnkALsUfFwNAjBJyXNRlW8TddJcp352Lgr7AVK+Td/I0qjLLgJnkXbul8CAWhez8cBXH9+4yylcDIilqFaLveunq++07pFpl45fAAKZdRfl4UC6ErdN5wWB3LkeA8kF53JyGjU1Q/16m1yKFm0vFcIgGiEWaBvZ6DuwJECPhIwwg/pXUgCGjUcL/niRobZK4AA+rwsXb+e5ctP//Sa+JtZVzqfQX/HQDc/+6Rjs2xEPfTA2dH88ae6xe0/R80VYFrvrQXrnV72EQN9etSgOb4y9BtCmKxq9Z2lWRfclWP359y7V+/FPzez5XVb2ez5MVndOMVS8YHVGHMBKkh42aT2Ycd+M1Mm/MzEIAjdvRh7kBLpjbpbvhaWpJPTXcVmwEoI3lU+p0MuDCJv/2J3BlO8rAsxJXJudfJt/Tvp6f7kYgoNe5XHRskujpCL90l6s6OlfHvrdMC29DyRJmgYwMd7jfy58rr6Cwgr6zYxzwG1kxxCNcD88gIy+72TAALjjHaRdctY+1TO/MKf3+BHtpzBIfWmeBEjgGqml+MdWrwa82Yc++EAOC3osot48Glzj61CAtbTCWdXUv+QmcSQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q21UZ0gxMExzUWs3NVVUK3A4NENHQlJIU0NsOWhoSnJzWDhmbUhQdmI1NVBH?=
 =?utf-8?B?NHQ5WjRwN2Rqa3YzSnh6dm05N3M2ODRvbEg2ZU9saStKK1R3SnRpaEdJTUdZ?=
 =?utf-8?B?b2lvenI1VnhaK3ZsMHFDd2VZVncySTg2RDdBcm1ST2tKM1NtV1ViTDJXNjA3?=
 =?utf-8?B?cjNvd0MvV2ZKRTZmK1puZ0dMS2cyT0RaeWh6bHZqQ1pjQ0hYQzhmRHRmZmdu?=
 =?utf-8?B?cE0vdlMvbHhIejZXMnJ2UUdiSGNsVjRoWStGUVBmSzRxQmFINGdkUVl1K296?=
 =?utf-8?B?Y2RaQlN2YVkyOUpvUVRvZHNld2Y4elZtcHVndTQ1QzJsTHdXVTF5Qkg2YzQ0?=
 =?utf-8?B?UTlpaG44YXZBTFlwSmVWRHpGUHlTUFA4R3BYcmdnMC81amErTEdCV3cwSUxw?=
 =?utf-8?B?TTFnRkJBcjRFOGswL3J3V2k0dWRGUnRsT1I3Q3g2eHAyYUtzVndHeHMraGZ6?=
 =?utf-8?B?N24zcGE5RC9RMjJpRTU3QXFtb0sxbFNXZm9KZ244S2tPWUZvYmFMQTNNTnFC?=
 =?utf-8?B?V0Y1amYxMTluUFhEaE5EdnhkOW1iTzFWeXNTOWEyUVJ3dStma3g2QTNONGxh?=
 =?utf-8?B?dlZ4WGt0Ymk0Q2orNVQ2a2g0a3VNYStRWGpZQ0hsYWxIMnA2OFJ5RWZDb09M?=
 =?utf-8?B?Sk9hdGQ5V3p4TjZJdUQ2a3RWc21aaG5LRjQyTEJRWDd6MCtIRktMSkpDSkNY?=
 =?utf-8?B?ZlVwckUwRWoyZHdBN0U5NVpjNjBPU3d2MTdUaEdta2JtV3E5Y05DMHVKdFlK?=
 =?utf-8?B?ZWY0aEdsSVJIc0R3OVFVT3RnTzNCbkxUbUx5VFcrcmNaWVJJVzh3eTFWOWJz?=
 =?utf-8?B?aTdXNm8vZS81bWk0clZ6Y0VDMnJITU50cXd6MFVhQWFZakxxZTFCVEJYOWI1?=
 =?utf-8?B?eWlna3loNWRGekNzc3plKys1TTltQUl2R0xtNUVMRElaR2x1MkNuejBSZkZW?=
 =?utf-8?B?bTJwWk9OdVoyV2tPcks3RDlYSWg0SXM3OTFaOE9zMXZlSHRqTWtJTXYwQXNN?=
 =?utf-8?B?STdTV0w2eGpudWR1RDdML0Y1NGNIS1g4OEl6QjZ2dTlKdnlKTEt0ek1sSDh6?=
 =?utf-8?B?amhNTW53VjVuOFlRV0RGaXpwdDJXeUNxdWhTa3pPVjNlNUMrdVVqT3YxZmU0?=
 =?utf-8?B?L3pWaFp3SlF0eWNwaEc0N1lnZmZvaGpHd0lRa050aUowclJOWndxcWJhOStV?=
 =?utf-8?B?WTNTSmllYllMRlVhWFFZZEZDbmdpbzRoa21NVW9Pa2RLRjJzcmRhRENpdXBM?=
 =?utf-8?B?NGZQSCtIOStYZ0lMQ1BuN2tkQU96WlRvY1hZWkdISjZSWndxRnFtOHpZWk1w?=
 =?utf-8?B?cU1mQU8xN1lYZi9ob3g0MnJRL1Z6aENtckhMVEhQQ0xxUldaREx3aVZBQ2hI?=
 =?utf-8?B?a0dlZTJlS2NUaGFmN0pXV3g4ZUN0S0g3WFZabG5CQ2g4OStCSDNWeHkzNUZS?=
 =?utf-8?B?eUVBY0x1NEdzZyt5WjhWM00yUU1tampMU3Jaalo2OFdMdERBZ2V1NEE1bG9y?=
 =?utf-8?B?ZlRnT1I5bms4Z2NrTjVjQ25GamZ4clIyS0Fxb3FXNjdCdkowQkVEZVArbkdr?=
 =?utf-8?B?TG01TTZ2cEE5eTJBazROSk5JZHdiK2x0SHBwR0tXTHJTVXRjT3RxZUhHK0p5?=
 =?utf-8?B?WnVqWFpJVWFZRHg5djZUSVA1aUw3L3pJdUhMdjh1eHZFK1RSUTZjV1IzMTZH?=
 =?utf-8?B?RER6cVp0Z201QUNCRXVuSEdWclNUSFpFcDlJWmJ6OEVsek56M1duMERkb0t1?=
 =?utf-8?B?Q1R2SlNLSjJwUkFxWlBLaXR6QjVBU2tyM2xOcWNKa04wY1Z1a244WlZxMzds?=
 =?utf-8?B?dS8wU1VyeUdXVGtvdmJZZHBVRWorSVVLbFNIaUJYL3h5eTdhKzMwVFVCK3Ey?=
 =?utf-8?B?UHVkOEsrb2l2dFpkQUsycVlxNmxycTFXcHVNUGxaOFJEMDFPR2hQNVRBSUhW?=
 =?utf-8?B?OE1XczFtNnRXSmF0V1lGQWZMbjl0TW9YNThJcU1HNGlWQ1lCdGN6dVFKYm9x?=
 =?utf-8?B?VlA1TzdlSHBLM0RubFRHa0hBVFBqU3BvQUx4b3Jid29QWUNsWnZuYm5vZDBE?=
 =?utf-8?B?aVEwWWUrek03d2JYK0FHZ1FMU2ZURVdsVHZVaEtkZnFrSTVGdGsrOUlIZnFG?=
 =?utf-8?B?WkU3OE1WaFRHaGd5WUg5bFhsdDlSelBhZ1prNTFyUXBrY0FIMm1TdzZkRTRY?=
 =?utf-8?B?cDhGQjJtNkE2a0ZSYnJtUEpNd0Z0SmozUFpXZ2E1c00zWi9iVzdMM2FOVC9l?=
 =?utf-8?B?NzBvVFUyTVJXTHhvb3gyMWJJZzRkNjYzblMwQm52bWhGeHUrWEI0M2dVMWVK?=
 =?utf-8?B?UG1qLzd2bHBjWkIramZOTjIxRXNrWHpHV3RGSjZQL1JFM05oOU5qNlR6UEUw?=
 =?utf-8?Q?KOG7fkjuMY0MuD2M=3D?=
X-Exchange-RoutingPolicyChecked: SbKYrbXQffZ9WTIIkgagYRsG7k5fJubvix4ZO0EePlG/M4ScnTM5NXO2Yi+X9OmLlEVPYyDKgr+8iLD8lANKi9Uap+ckOTn4iSY/0KMSrr4YkVdxBwXuoG8hIcIdceHlg5PHYCzf8Tlpvdc8w/BvJTGEA7/omBMfnbeP2/oTH1B0r2A/FcfYlDR//wFP5IuDdIPGRqM4XisKzuRcfuKnRzBWJk3auRAnOtiZ7F5hx9xlVesRfDyra/E05zRQMNy93mdPpagy6gc+XqLex+bMYibVCr5Rg03D9LZdaT9QnI+7xZYEGT3RdODLV+J8cqFjYuZaZaGZHFAL8Ji956k2vg==
X-MS-Exchange-CrossTenant-Network-Message-Id: f2d8ee29-51b9-4bf6-1e6e-08de7ee82345
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2026 21:01:02.5854 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /t/VK7DxkK2uv1HkT7B7fOPtDQ6Nm1MXJVPT92rc/eoh/VXZKCjqa8U/vQb626xPSVS9PZqmBHooto+RYFrHVH0MF9ZZBEWqVv394JvCFgE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7618
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
X-Rspamd-Queue-Id: 645D525811A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCPT_COUNT_TWELVE(0.00)[15];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action



On 2/26/2026 11:29 AM, Borah, Chaitanya Kumar wrote:
> Thank you Harry for looking into it.
> 
> On 2/24/2026 2:44 AM, Harry Wentland wrote:
>> On 2026-02-18 01:57, Chaitanya Kumar Borah wrote:
>>> This series aims to keep colorop state consistent across atomic
>>> transactions by ensuring it accurately reflects committed hardware
>>> state and remains part of the atomic update whenever its associated
>>> plane is involved.
>>>
>>> It contains two changes:
>>> - Preserves the bypass value in duplicated colorop state.
>>>
>>> _drm_atomic_helper_colorop_duplicate_state() unconditionally reset
>>> bypass to true, which means the duplicated state no longer reflects the
>>> committed hardware state. Since bypass directly controls whether the
>>> colorop is active in hardware, this can lead to an unintended disable
>>> during subsequent commits.
>>>
>>> This could potentially be a problem also for colorops where bypass value
>>> is immutably false.
>>>
>>> Conceptually, I consider 'bypass' to behave similar to 'visible' in 
>>> plane
>>> state - it represents current HW state and should therefore be preserved
>>> across duplication.
>>>
>>> - Add affected colorops with affected plane
>>>
>>> Colorops are unique in the DRM model. While they are DRM objects with 
>>> their
>>> own states, they are logically attached to a plane and exposed through
>>> a plane property. In some sense, they share the same hierarchy as 
>>> CRTC and
>>> planes while following a different 'ownership' model.
>>>
>>> Given that enabling a CRTC pulls in all its affected planes into the 
>>> atomic
>>> state, it follows that when a plane is added, its associated colorops 
>>> are
>>> also included. Otherwise, during modesets or internal commits, 
>>> colorop state
>>> may be missing from the transaction, resulting in inconsistent or 
>>> incomplete
>>> state updates.
>>>
>>
>> That tends to reflect my thinking when I wrote the colorop stuff.
>>
>>> That said, I do have a concern about potentially inflating the atomic
>>> state by automatically pulling in colorops from the core. It is not
>>> entirely clear to me whether inclusion of affected colorops should be
>>> handled in core, or left to individual drivers.
>>>
>>
>> Could this lead drivers to reprogram possibly expensive colorops
>> when they didn't change? It won't be an issue for amdgpu since we
>> have another level of state tracking, but for drivers that strictly
>> follow the atomic model it might lead to issues.
>>
> 
> For xe/i915 too, this should be something that we can handle in 
> atomic_check().
> 
> I guess the real question is whether this violates the atomic design 
> contract. As far as I understand, when we pull in affected planes for a 
> CRTC, we don’t actually verify whether any plane state has changed.
> So by that analogy, should this be acceptable as well?
> 

One downside of adding colorops indiscriminately is lot of logs.

[drm:drm_atomic_get_colorop_state] Added [COLOROP:288:1] 
ffff88810db07240 state to ffff88810e040800

So I created a version where we add only if a color pipeline is selected.

https://lore.kernel.org/intel-gfx/20260310113238.3495981-3-chaitanya.kumar.borah@intel.com/T/#u

Harry, please let me know if this approach still work for you.

It would be good to hear others’ opinions on this as well.

>> On the other hand it makes colorop handling less error-prone in amdgpu,
>> and possibly fixes a bug I've come across where we get confused if an
>> active colorop isn't part of the state.
>>
>> Harry
>>
>>> My understanding of the atomic framework is still evolving, so
>>> I would appreciate feedback from those more familiar with the intended
>>> design direction.
>>>
>>> ==
>>> Chaitanya
>>>
>>> P.S/Background/TL;DR:
>>>
>>> I discovered inconsistency with the colorop state while analysing CRC 
>>> mismatches
>>> in kms_color_pipeline test cases[1]. Visual inspection reveals that 
>>> while CRC is
>>> being collected degamma block has been reset. This was traced back to 
>>> the internal
>>> commit that the driver does to disable PSR2 and selective fetch for 
>>> CRC collection.
>>>
>>> crtc_crc_open
>>>      -> intel_crtc_set_crc_source
>>>          -> intel_crtc_crc_setup_workarounds
>>>              -> drm_atomic_commit
>>>
>>> During this flow colorop states are never added to the atomic state 
>>> which in turn
>>> makes intel_plane_color_copy_uapi_to_hw_state() disable the colorops.
>>>
>>> If we add the colorops, to the atomic state, the problem still 
>>> persisted because
>>> while duplicating the colorop state, 'bypass' was getting reset to true.
>>>
>>> The two changes made in this series fixes the issue.
>>>
>>> [1] https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18001/shard- 
>>> mtlp-6/igt@kms_color_pipeline@plane-lut1d.html
>>>
>>> Cc: Simon Ser <contact@emersion.fr>
>>> Cc: Alex Hung <alex.hung@amd.com>
>>> Cc: Harry Wentland <harry.wentland@amd.com>
>>> Cc: Daniel Stone <daniels@collabora.com>
>>> Cc: Melissa Wen <mwen@igalia.com>
>>> Cc: Sebastian Wick <sebastian.wick@redhat.com>
>>> Cc: Alex Hung <alex.hung@amd.com>
>>> Cc: Uma Shankar <uma.shankar@intel.com>
>>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>> Cc: Louis Chauvet <louis.chauvet@bootlin.com>
>>> Cc: <stable@vger.kernel.org> #v6.19+
>>>
>>> Chaitanya Kumar Borah (2):
>>>    drm/colorop: Preserve bypass value in duplicate_state()
>>>    drm/atomic: Add affected colorops with affected planes
>>>
>>>   drivers/gpu/drm/drm_atomic.c  | 5 +++++
>>>   drivers/gpu/drm/drm_colorop.c | 2 --
>>>   2 files changed, 5 insertions(+), 2 deletions(-)
>>>
>>
> 

