Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBb2Im6v1mkLHQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 21:41:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E68F13C3495
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 21:41:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4565110E050;
	Wed,  8 Apr 2026 19:41:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M2fuKgpk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE26510E050
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 19:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775677291; x=1807213291;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lD2oU1tpiCKEPSxvYs0dt16rKkLQwEdpvmqdlGjxdUQ=;
 b=M2fuKgpkdrvmUVFQgUvqwYDxZXXz1DSUW4SaCpnMsS1ZCimNqlboM65S
 /CFcW6qZ3KD4HvqdaYUaPfuxRSTeG2q7KrdrsV5B76pVOhPCmsRfvI2ga
 fX5lfG8zKBUyadNb2IySjXEWJ7q228vD+NNimWK8wbjdPmCMZAUfxAJQJ
 TX3lnSZG33NCxrFLZY8hLB5u0rxke0zNjhZNiClEbQlzcLH7rUcNkvDzk
 1aaUrWOSzz/Zr8GFlfAomuff8aL1XbIA0zRrBzoOqaXF0Kg1aa+2mjHbV
 0qHZ2ki193wFQpMT/tonaqFUs9xn85atYRsGK6LRa4fZ5IY4yuQyPUpnb A==;
X-CSE-ConnectionGUID: A8qWAWW+RFeeh1iuXDy7pg==
X-CSE-MsgGUID: SuRe/9CbQieA0C+3c57vpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76389118"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="76389118"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 12:41:31 -0700
X-CSE-ConnectionGUID: mWLV6dVnQ7at0hkL380obA==
X-CSE-MsgGUID: iKMnH1SNSjKjUN566a12aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="225788728"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 12:41:30 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 12:41:29 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 12:41:29 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.48) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 12:41:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QMkEkVnWENSoVSi091PcgZmDtFqEQvvRSeJ6dr9BWDJGU3RGJ+TLiVLFChsnHnFdZaPJIg87YQq/35Bsr7EN5F0xCCiC2Bmp5ZurQ1TbtS4ar4pI+2cDuUV9AGArRdqoVX4UTPvAaGTcl7J53XitqLMcdvIkiSA6Hz1z3JiCU2EgCE7Erj3xRxgyo0fNDkx4sTCzbuuh2jBeEoxjmhnNLHW3dsxJPhjbY7LCDnB+/5/GrNm8qq4DM8A3dX13dj9Qo8cDeGfQ4IbM6T4ESqK8cSUl2fHSgS3iEhpOS9mZtSXkWQrnuBWtbvXEfX/9KW2gbAyIPiqjplFXMeMY+4sgnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y5UWWqTF1vhnbDK6rSzryABj0mkTrKfNSXMSed57mPo=;
 b=gK7m5dXHj8DHqGIUxbtA2pt1wvGww1uS4uzeX6jqQuoQxSMJNBTYlmod6o8jVMlmhsw5QTV94Lprfu+b93Be+h/ZIT6NLVVtr83x0tEVKFbRhGvQb7pDvkxbgy1aaliwwSmEh8qofqyFBOoL8qchOJ84tc7hsdeqboQHw9cWo1lAOa708jRVnlBdnsoNb3/r6LeuYuOqLZPCWjLf2mdizwy8su17IkM1B4i4pBPkfgdZw79FhUoC3M2pgU3jwphBW95YGm+80ydWrynBmqkM7AK1H0RkHht65knOt1/JtS0ngofdwDlNKG6vakCOMqU5yFEbljnHFbJSJdJjN19g6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SN7PR11MB8042.namprd11.prod.outlook.com (2603:10b6:806:2ed::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Wed, 8 Apr
 2026 19:41:24 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%3]) with mapi id 15.20.9769.016; Wed, 8 Apr 2026
 19:41:24 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Matt Roper <matthew.d.roper@intel.com>
Subject: Re: [PATCH 1/4] drm/i915/bw: Extract platform-specific parameters
In-Reply-To: <5a2fefe3f3d7ee92d3cc1bca1ffe88370d54c822@intel.com>
References: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
 <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-1-23c53afa7db0@intel.com>
 <5a2fefe3f3d7ee92d3cc1bca1ffe88370d54c822@intel.com>
Date: Wed, 8 Apr 2026 16:41:19 -0300
Message-ID: <87v7e1ck9s.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR08CA0064.namprd08.prod.outlook.com
 (2603:10b6:a03:117::41) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SN7PR11MB8042:EE_
X-MS-Office365-Filtering-Correlation-Id: 94890a42-ca6a-4f28-c166-08de95a6d16c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: fN5RGqAvf4mXy9yjuv6TSpbkXwSuBLAwLVNMzfxZf2MEWHRFYnLMU+GbU+iRUp5F2X6Q/ifGUnAVFObHykURCfXB+UfP5k+olmtMf763J6h/FAiiAbwJ8Ledt091Gn5Qn2HVBvOko5x5gxZJLq2qxKHeB6D5NuAjWtxNsiDiYIP5eDjt6OUijT8078lxHEDgrnrTBhaPg2PgZ7VSBoVpNqNSoe9/KXusJeX7csqY/sxfVWEBIIA9FLwjJ/eNLShoKGd5dPwdUEB4kmIYg9U/m7qi8qmAhVRVNMAscgDeIDyBTijyzWuNW8mFYKQnF9iVRmo7THxyikM9+1so2+qB7UCSb9120c985FTFPv10pnAqwCTcv4N8C+XLF9y9mKy27j+BaUnSL/FeWT5gItFEgtkLNVW0t/2xxdLWoiMqRcW7BQuWeESBHxTiX1a9Ap6miWyLNuwz9yMFG5FvqqU4Q4gl1gTP9FvDgMFq5SQkTZt36GvJMLxTFAcM2KFtrI8ETWm6ryh3McvzNtRiyeB4LAao3rGqF2ZDxFufUTbLMmfKojxLwcxoiHtMxoXeYOt4bgTXYpaoN9BkWfIbLixn7v6aBnc5Pw/nPvWaAXwjgsZ8zp+l0zcVmDI89LEi2GJOm45kluvTFr/bfbUl5Qw5dTqcjJXSFg4mRzskPq1sMrZTXuPvnxftG5LBE3NbUAZHEAmADLZvhgFxWW81AHdzn/8JxpBoOiMjTb0e0gqPIhc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mTqS3QnPpjzr1pCgZjYN7gQ8sP7XL3Q1XFyyQbYhWXYuJydCtgTBs/L/Y9ED?=
 =?us-ascii?Q?TfXQx+CZhQQb3vqq2K8XjY1oDxpacnXs6O6O+E8yaJYICCtt3mLM6ex10yMY?=
 =?us-ascii?Q?XeVdXTCn6tfSEmdYTo+jlO62HZ4ArXsrrWxLNCdxnanxUgw8mHkycuMGw/UY?=
 =?us-ascii?Q?jGl+hReHPEu8JS11ek1srtY/BlhY7NkIiIICONeiHcnRdj8brMAo/nO6biHZ?=
 =?us-ascii?Q?GXXVi6dPzAnsUIsrm8n504OL1rbK5DBb0TndGt8Yk4iYLR4MDnC/MzbPlPkU?=
 =?us-ascii?Q?EFQwL8wJZzKD8rhcI9Z0+ou9uhcFm5HalJUAUhsUq5UPz5AafZvW8it16NV7?=
 =?us-ascii?Q?jEhCU5z+dFqEq7YvQROCqeIhES4yH+UdPkW7+LeCyN7Cctoy2Gx0/synWZNF?=
 =?us-ascii?Q?NS4WHcWKJNR4CuMi4pf3vmjoK6tcdGwojjitHchQoZVWykKb7ejIk3MShZ8C?=
 =?us-ascii?Q?CiD+Z7imsW7rOxk4tD0Cuws+TnrphxXuy0SsBi2qypzeUT6/1HZEjqQKGloU?=
 =?us-ascii?Q?b1EyU1EZsMHOg+xNm1adH3WQIRLDSCEoIx7Q7csjyTP11cP9ZXBxcfCM8mTv?=
 =?us-ascii?Q?XRrrvBkZfHvVmYnJ6Y8GRnF+4PtL4Mu9xOOXLCj/zfvL030NgcER2H0fCL/9?=
 =?us-ascii?Q?mKKguFqJN4RopBMwV+JUy8L1rj5VKhJSWK83waqTHEJdx5QOzS5qnbd1LPr+?=
 =?us-ascii?Q?80hUXdNkYQvDpH4jezA6QyhndW8rokDTiMMkKWJcThOuMnU+9B0rX1kNxKXM?=
 =?us-ascii?Q?H5UB9g4vIPAyacy6KCZMNiJnv6CJBHINWZPZpaKlRNycIpoK8YuTKyNtQtYg?=
 =?us-ascii?Q?hzMDWeXC93qWEEnuOEhYAINC3wyfF4rvn8mXW2kw89UF8UAF9Ly8z3xQEtfJ?=
 =?us-ascii?Q?+tzZl4XWxnHlOXKBqZ995xpe9vMXnPW/YaYIGeiCsL6AskcFaMD2pWaIe1Lu?=
 =?us-ascii?Q?PyPO1aa01BfHWG/bIF/AkP3XDI+/FypdChXj6K8ZLiwA0FjtaBCtCnxVtP2h?=
 =?us-ascii?Q?zEGuyPeLx0rqeZN02HPlMNga8aHgenEHlk4U/tVNVhHCCUm/aYJK0v0/mXBI?=
 =?us-ascii?Q?KLWmpGgXk5UKNJZWsPpOwudwIvyrpSC9TSfbJ21JG9SkNR15YLRWAoVc+HHk?=
 =?us-ascii?Q?0I22XdTMgNekMUmLcYCs+/MoYwBpoAlGu9MCgpvhYl3fwUBoVf2tj605nmCr?=
 =?us-ascii?Q?i+tKgMxZepBPcsxI45Rp+oQ0sOFoXk081yrs62EaZjsAzZdjW9qZeVvPTeba?=
 =?us-ascii?Q?1GxnIBzJrDogBFHiNTkynKe/1fvT5beuDhkqwy0FRIZmQMk5BmDA4n76RPsF?=
 =?us-ascii?Q?0OpUBV4HRq1WKXItNX7m2yzGHSWoVFovKenyluh5SdbYGAx54OqVt3DmvchJ?=
 =?us-ascii?Q?AZ8wW2DTnkqEUcuSMhwnNHluSQvblr/QbBvWUgwSWowPvRmjhfBQwvfWvXr8?=
 =?us-ascii?Q?7vCXezW+UAYcX0pvByTDiCVVPoauGaisyS86oFUU1qk8Qub/VYa28YYb6woh?=
 =?us-ascii?Q?YHbSFFa2HzeYduxDFJMJcvieqgthblDPo5kxb7ZAYFf1G0FG9sBoBUVxHbtl?=
 =?us-ascii?Q?qcwqXJUaExReMZciY3NbyE0DRleL8Rb4q4XSs4psjV5zHaAxpfX/013tJ7Lv?=
 =?us-ascii?Q?rzbpZJ4Y7ybPgZK2ETpZM7ZtFqwuSbtA1dkg5lCaan/tmJEiaS/z1maIu1vb?=
 =?us-ascii?Q?1q8liUEbWB5azCLtYnkyDy6dcaE14WslB0A8bUOqlQYZW3DGinmJ1UpN6uzb?=
 =?us-ascii?Q?eq2LQQOrlQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: k9uvW8diwkQd31xWvd8NxQBI7rUd8ATRyvEDmVX4B68QYOL2N7kwsRS1jfY1/IpKKYm+WqLQkrpgG+ATBiOTC8Ldjj+BcHVZ3WMdF/SDp+3vp24Yv88zLfk34Uq6x28l4HOqDzdg+rQlnRXhNyuks+ndWccv1yy8OYv6UuDd320P8AOEoWkQqINdDFdpKtAEAr2u935G3vS0Tz9CbUx5VnQj8O8bWpa1UqoCJ/mN4fuPz7rGnA1l02CjIUpBiKwlTuLje5qWGCR3IL4nIEwiBPl55HmxIlusCueYkLdMKD66huYNb2D4c995LLdonwAKx5Vk3KIFkySb1DXMmN0Www==
X-MS-Exchange-CrossTenant-Network-Message-Id: 94890a42-ca6a-4f28-c166-08de95a6d16c
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 19:41:24.5169 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oFJM+LfOaRnD/21G5broi8ccVzCH5OhIqhdQi1ntJY/vtQGqG2c3NzmZAun5lxcCnP12wsfCqNUQkvFHOBd5yw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8042
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:matthew.d.roper@intel.com,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E68F13C3495
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Jani Nikula <jani.nikula@linux.intel.com> writes:

> On Wed, 08 Apr 2026, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> We got confirmation from the hardware team that the bandwidth parameters
>> deprogbwlimit and derating are platform-specific and not tied to the
>> display IP.  As such, let's make sure that we use platform checks for
>> those.
>>
>> The rest of the members of struct intel_sa_info are tied to the display
>> IP and we will deal with them as a follow-up.
>>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bw.c | 174 ++++++++++++++++++++++++--------
>>  1 file changed, 133 insertions(+), 41 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
>> index 474438fc1ebc..ed840b592eff 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> @@ -375,77 +375,170 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
>>  	return dclk;
>>  }
>>  
>> +struct intel_platform_bw_params {
>> +	u8 deprogbwlimit;
>> +	u8 derating;
>> +};
>> +
>> +static const struct intel_platform_bw_params icl_plat_bw_params = {
>> +	.deprogbwlimit = 25,
>> +	.derating = 10,
>> +};
>> +
>> +static const struct intel_platform_bw_params tgl_plat_bw_params = {
>> +	.deprogbwlimit = 34,
>> +	.derating = 10,
>> +};
>> +
>> +static const struct intel_platform_bw_params rkl_plat_bw_params = {
>> +	.deprogbwlimit = 20,
>> +	.derating = 10,
>> +};
>> +
>> +static const struct intel_platform_bw_params adl_s_plat_bw_params = {
>> +	.deprogbwlimit = 38,
>> +	.derating = 10,
>> +};
>> +
>> +static const struct intel_platform_bw_params adl_p_plat_bw_params = {
>> +	.deprogbwlimit = 38,
>> +	.derating = 20,
>> +};
>> +
>> +static const struct intel_platform_bw_params bmg_plat_bw_params = {
>> +	.deprogbwlimit = 53,
>> +	.derating = 30,
>> +};
>> +
>> +static const struct intel_platform_bw_params bmg_ecc_plat_bw_params = {
>> +	.deprogbwlimit = 53,
>> +	.derating = 45,
>> +};
>> +
>> +static const struct intel_platform_bw_params ptl_plat_bw_params = {
>> +	.deprogbwlimit = 65,
>> +	.derating = 10,
>> +};
>> +
>> +static const struct intel_platform_bw_params wcl_plat_bw_params = {
>> +	.deprogbwlimit = 22,
>> +	.derating = 10,
>> +};
>
> In the above, "plat" feels like tautology, since they're all prefixed by
> platform acronyms.

Yeah, true.  In an upcoming patch I also introduce display-IP-specific
structs, and I decided to use plat vs disp to differentiate
(e.g. tgl_plat_bw_params vs tgl_disp_bw_params).

Any suggestion of how to make it better?

>
>> +
>> +static const struct intel_platform_bw_params *get_platform_bw_params(struct intel_display *display)
>> +{
>> +	const struct intel_platform_bw_params *ret;
>> +
>> +	if (display->platform.dgfx)
>> +		goto dgfx;
>> +
>> +	ret = &icl_plat_bw_params;
>> +	if (display->platform.icelake ||
>> +	    display->platform.jasperlake ||
>> +	    display->platform.elkhartlake)
>> +		return ret;
>
> What's the point of assigning and returning ret?
>
> Why not just return &icl_plat_bw_params; directly?

I would like that we always have a default to be returned if somehow we
miss adding a new case for a new platform (hence the "missing:"
label).  The idea of assigning to ret is for it to have a valid value
when hitting the missing: point.

Arguably we could also only use this pattern only in the last case, but that
would feel like an inconsistency and prone to someone forgetting to
"push" it to the next new platform when the time comes.

I would be much happier with a switch-case statement that would have a
"default:" combined with "fallthrough", but I think that's not possible
with the current way we handle platform matching in the display code.

>
>> +
>> +	ret = &tgl_plat_bw_params;
>> +	if (display->platform.tigerlake)
>> +		return ret;
>> +
>> +	ret = &rkl_plat_bw_params;
>> +	if (display->platform.rocketlake)
>> +		return ret;
>> +
>> +	ret = &adl_s_plat_bw_params;
>> +	if (display->platform.alderlake_s)
>> +		return ret;
>> +
>> +	ret = &adl_p_plat_bw_params;
>> +	if (display->platform.alderlake_p)
>> +		return ret;
>> +
>> +	ret = &adl_s_plat_bw_params;
>> +	if (display->platform.meteorlake ||
>> +	    display->platform.lunarlake)
>> +		return ret;
>> +
>> +	ret = &ptl_plat_bw_params;
>> +	if (display->platform.pantherlake ||
>> +	    display->platform.novalake) {
>> +		if (display->platform.pantherlake_wildcatlake)
>> +			ret = &wcl_plat_bw_params;
>> +
>> +		return ret;
>> +	}
>> +
>> +	goto missing;
>> +
>> +dgfx:
>> +	ret = &tgl_plat_bw_params;
>> +	if (display->platform.dg1)
>> +		return ret;
>> +
>> +	ret = &bmg_plat_bw_params;
>> +	if (display->platform.battlemage) {
>> +		const struct dram_info *dram_info = intel_dram_info(display);
>> +
>> +		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
>> +			ret = &bmg_ecc_plat_bw_params;
>> +
>> +		return ret;
>> +	}
>> +
>> +missing:
>> +	/*
>> +	 * Use parameters from the most recent platform,
>> +	 * but raise a warning.
>> +	 */
>> +	drm_WARN(display->drm, 1,
>> +		 "Platform-specific bandwidth parameters not found, using possibly incompatible default values\n");
>> +
>> +	return ret;
>
> I don't understand at all why the function is written the way it
> is. Seems like it should be a regular if-ladder like we have, with zero
> gotos.

Just wanted the default for the missing case to be the most recent
platform in an "automated" way, with separate ordering for dgfx and
integrated.

Do you suggest we do not have such a default and cause a null-pointer
deref (on purpose) if we forget to add a new platform?

Or always "manually" update the default when we add a new
platform-specific instance?

>
>> +}
>> +
>>  struct intel_sa_info {
>>  	u16 displayrtids;
>> -	u8 deburst, deprogbwlimit, derating;
>> +	u8 deburst;
>>  };
>>  
>>  static const struct intel_sa_info icl_sa_info = {
>>  	.deburst = 8,
>> -	.deprogbwlimit = 25, /* GB/s */
>>  	.displayrtids = 128,
>> -	.derating = 10,
>>  };
>>  
>>  static const struct intel_sa_info tgl_sa_info = {
>>  	.deburst = 16,
>> -	.deprogbwlimit = 34, /* GB/s */
>>  	.displayrtids = 256,
>> -	.derating = 10,
>>  };
>>  
>>  static const struct intel_sa_info rkl_sa_info = {
>>  	.deburst = 8,
>> -	.deprogbwlimit = 20, /* GB/s */
>>  	.displayrtids = 128,
>> -	.derating = 10,
>>  };
>>  
>>  static const struct intel_sa_info adls_sa_info = {
>>  	.deburst = 16,
>> -	.deprogbwlimit = 38, /* GB/s */
>>  	.displayrtids = 256,
>> -	.derating = 10,
>>  };
>>  
>>  static const struct intel_sa_info adlp_sa_info = {
>>  	.deburst = 16,
>> -	.deprogbwlimit = 38, /* GB/s */
>>  	.displayrtids = 256,
>> -	.derating = 20,
>>  };
>>  
>>  static const struct intel_sa_info mtl_sa_info = {
>>  	.deburst = 32,
>> -	.deprogbwlimit = 38, /* GB/s */
>>  	.displayrtids = 256,
>> -	.derating = 10,
>> -};
>> -
>> -static const struct intel_sa_info xe2_hpd_sa_info = {
>> -	.derating = 30,
>> -	.deprogbwlimit = 53,
>> -	/* Other values not used by simplified algorithm */
>> -};
>> -
>> -static const struct intel_sa_info xe2_hpd_ecc_sa_info = {
>> -	.derating = 45,
>> -	.deprogbwlimit = 53,
>> -	/* Other values not used by simplified algorithm */
>>  };
>>  
>>  static const struct intel_sa_info xe3lpd_sa_info = {
>>  	.deburst = 32,
>> -	.deprogbwlimit = 65, /* GB/s */
>>  	.displayrtids = 256,
>> -	.derating = 10,
>>  };
>>  
>>  static const struct intel_sa_info xe3lpd_3002_sa_info = {
>>  	.deburst = 32,
>> -	.deprogbwlimit = 22, /* GB/s */
>>  	.displayrtids = 256,
>> -	.derating = 10,
>>  };
>>  
>>  static int icl_get_bw_info(struct intel_display *display,
>> @@ -453,6 +546,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>  			   const struct intel_sa_info *sa)
>>  {
>>  	struct intel_qgv_info qi = {};
>> +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
>
> Perhaps it would be better to pass this in instead of every function
> having the call.

Okay. I think I'll have to rework patch #4 as well
then :-)

>
> Nitpick, "plat" is not an abbreviation I'm fond of.

Noted. 

Out of curiosity: because it is a noun of its own? Or is it something
else?

--
Gustavo Sousa

>
>>  	bool is_y_tile = true; /* assume y tile may be used */
>>  	int num_channels = max_t(u8, 1, dram_info->num_channels);
>>  	int ipqdepth, ipqdepthpch = 16;
>> @@ -469,7 +563,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>  	}
>>  
>>  	dclk_max = icl_sagv_max_dclk(&qi);
>> -	maxdebw = min(sa->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>> +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>>  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>>  	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
>>  
>> @@ -499,7 +593,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>>  
>>  			bi->deratedbw[j] = min(maxdebw,
>> -					       bw * (100 - sa->derating) / 100);
>> +					       bw * (100 - plat_bw_params->derating) / 100);
>>  
>>  			drm_dbg_kms(display->drm,
>>  				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
>> @@ -524,6 +618,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>>  			   const struct intel_sa_info *sa)
>>  {
>>  	struct intel_qgv_info qi = {};
>> +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
>>  	bool is_y_tile = true; /* assume y tile may be used */
>>  	int num_channels = max_t(u8, 1, dram_info->num_channels);
>>  	int ipqdepth, ipqdepthpch = 16;
>> @@ -557,7 +652,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>>  	dclk_max = icl_sagv_max_dclk(&qi);
>>  
>>  	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
>> -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>> +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>>  
>>  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>>  	/*
>> @@ -602,7 +697,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>>  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>>  
>>  			bi->deratedbw[j] = min(maxdebw,
>> -					       bw * (100 - sa->derating) / 100);
>> +					       bw * (100 - plat_bw_params->derating) / 100);
>>  			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
>>  							  num_channels *
>>  							  qi.channel_width, 8);
>> @@ -663,10 +758,10 @@ static void dg2_get_bw_info(struct intel_display *display)
>>  }
>>  
>>  static int xe2_hpd_get_bw_info(struct intel_display *display,
>> -			       const struct dram_info *dram_info,
>> -			       const struct intel_sa_info *sa)
>> +			       const struct dram_info *dram_info)
>>  {
>>  	struct intel_qgv_info qi = {};
>> +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
>>  	int num_channels = dram_info->num_channels;
>>  	int peakbw, maxdebw;
>>  	int ret, i;
>> @@ -679,14 +774,14 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
>>  	}
>>  
>>  	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(&qi);
>> -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>> +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>>  
>>  	for (i = 0; i < qi.num_points; i++) {
>>  		const struct intel_qgv_point *point = &qi.points[i];
>>  		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
>>  
>>  		display->bw.max[0].deratedbw[i] =
>> -			min(maxdebw, (100 - sa->derating) * bw / 100);
>> +			min(maxdebw, (100 - plat_bw_params->derating) * bw / 100);
>>  		display->bw.max[0].peakbw[i] = bw;
>>  
>>  		drm_dbg_kms(display->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
>> @@ -814,10 +909,7 @@ void intel_bw_init_hw(struct intel_display *display)
>>  		else
>>  			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
>>  	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>> -		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
>> -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
>> -		else
>> -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
>> +		xe2_hpd_get_bw_info(display, dram_info);
>>  	} else if (DISPLAY_VER(display) >= 14) {
>>  		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
>>  	} else if (display->platform.dg2) {
>
> -- 
> Jani Nikula, Intel
