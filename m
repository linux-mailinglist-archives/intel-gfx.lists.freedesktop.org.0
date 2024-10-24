Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD8B9AF056
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 21:06:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E39BF10E991;
	Thu, 24 Oct 2024 19:06:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZYKH6INL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5414F10E991
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 19:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729796786; x=1761332786;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7VZpW2SLdLyDi/Npd0NJlrIsFnZKAX0lmPGqZTT7QH4=;
 b=ZYKH6INLZ5Y8yg8CdbR6aJJEk/Ald12YPfqwpi7T5g00yoK6RsrcJyTO
 9ZKomA3e3Oaarpxf89lEt80bumMwY7+8NQdgGqUGVWzXPczjv9MvMePg0
 7JYIhAlCv62EnlG+kg/yedGXvid4ns+vb7+/HHPbmlMjGmmzVCSA68zxc
 Q8uk/d02NpGgDqJFqjfbagp2Wy7/Yge5HdSb1oy4s0led+3xhCxJpYcIw
 BZK4dSAuBEvwg4CPE/4OHsg8+SN1ci8AuCrN9VpOLUr4Fhma+yFqw5SW4
 3Rz1xEXO7P2osNIbTE9KfpvPlqPcwYkDs+sR0oZZ3z5KIobpwbYNpPdF3 A==;
X-CSE-ConnectionGUID: CVpnlUN3Q8O0+WWrFx0PXA==
X-CSE-MsgGUID: Op+646F/QX6Qa9EEhatN6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="40068195"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="40068195"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 12:06:26 -0700
X-CSE-ConnectionGUID: cdlOie3NR3KBF3yF/QOAgw==
X-CSE-MsgGUID: SYEwadS8QYyJHBpplk8Mrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="111536088"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 12:06:26 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 12:06:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 12:06:25 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 12:06:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lhzIcx8f1VOdpbLQXEbHfYdtDP5aEYXjpvSNvUfrOrxmnII17mHAIYlYwCiQLyUvnvReL7WhkfDAqXCz2RIl0RXO2v6y3xRKMBEnDZOz3Wy4D9BnUPqZehjPLocOmD7johKEgERlfsSCya4VGwI/NT8MNQ277bq1sHhDtoBvRUwpb/53j3iA5y0OnRQcrBQ+lNCbX0pfHDePckUWmmNimn1FMyZ1h0VbIidIwEbnKfyVWevXqpuxm3Bq/V+EHiyhzoEF1DvHdW8ABZtDzcS7fJ0ooPhQ7R738CD9/i2Ef46z3co0RRtm3iOfQuH02pUeoWP6h5VD4WO5yoKTJt5mhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kMomOI4ouUsoLqL1/eKgXqgmmJq5cFOLXosi1H/NOQA=;
 b=Q/fwjecUbXZRHZmWnygEVL54lJoioAgA3mhLsWtZxUdussPFF5sPXXRg0YsiVj3zMIoF0sq7D9Ae+bS9c7iti4z4/BA8IejsXGri2MmiVmL/BhJ7hshRsvSRRZJYmWxjYAdWVcrnrtchv7/n9WwV63sO6VoLiD6Zqm97ji9fOlK/fWqqhJZJBnY7vJqeTC5VnjPBQbVY2XAwzvS4yneChlQtM+OlQO/TCBAXydFwisqB8w3KZ3nDRbJ88c5soh4uGCj7EqD2mnEEQJzDFIIkpvzuc2Rnf6etxZX7mguwSube+CShzRwnfxR7Viq0O/fnNeRek/7FBqXpJQlgJYXViQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5536.namprd11.prod.outlook.com (2603:10b6:5:39b::15)
 by DM4PR11MB6068.namprd11.prod.outlook.com (2603:10b6:8:64::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8093.18; Thu, 24 Oct 2024 19:06:14 +0000
Received: from DM4PR11MB5536.namprd11.prod.outlook.com
 ([fe80::e353:636a:37f:21ef]) by DM4PR11MB5536.namprd11.prod.outlook.com
 ([fe80::e353:636a:37f:21ef%3]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 19:06:14 +0000
Message-ID: <d19f8fba-2430-46b8-b4f6-3e84f567db86@intel.com>
Date: Fri, 25 Oct 2024 00:36:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/rc6: Disable RPG during workload execution
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, "Gupta, Anshuman"
 <anshuman.gupta@intel.com>
CC: Andi Shyti <andi.shyti@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "chris.p.wilson@linux.intel.com"
 <chris.p.wilson@linux.intel.com>, "Belgaumkar, Vinay"
 <vinay.belgaumkar@intel.com>
References: <20241022132226.1110383-1-badal.nilawar@intel.com>
 <Zxeoi1baLtbqDKIr@ashyti-mobl2.lan> <ZxfcPLgi8tmLiomr@intel.com>
 <c94a44fc-0211-4b83-9faa-cb8d0765f76e@intel.com> <ZxkMo6BVeb7xvhs2@intel.com>
 <3416b828-2040-4deb-8df7-e5a0e7db51b4@intel.com>
 <1f218b09-8385-4bc2-9296-28f7ec4ed2e8@intel.com>
 <CY5PR11MB6211F54A4FF6B214B71CC52E954E2@CY5PR11MB6211.namprd11.prod.outlook.com>
 <ZxqFFflwleAwP-ly@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <ZxqFFflwleAwP-ly@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0113.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::14) To DM4PR11MB5536.namprd11.prod.outlook.com
 (2603:10b6:5:39b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5536:EE_|DM4PR11MB6068:EE_
X-MS-Office365-Filtering-Correlation-Id: e7e29d65-df04-48ce-c6e2-08dcf45eedf3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Vmc1V1dXVHhaSWVDYWFZa3VTbndDK2RlV25KNTdqNkxsL3VuRzF3QnJaQzRF?=
 =?utf-8?B?cmgwOXZXWFE2dU1uMFUrQkVPL0huVVNETkRMTUpHSXRhbllDZ1g2WnNKcTgr?=
 =?utf-8?B?R294VGN5TElEUUpHdktQMVQxRm9xeWF0VjBWVFNUSWhKVTBTS1QxK09UMGdG?=
 =?utf-8?B?ZkhHeGQzRldqTnJjd3FBeDN3aUlGR3hydWh2UHJJcFMxWGF3WnR4Y2lSeEtE?=
 =?utf-8?B?QldPSGNtMFRRc1BDcU5XamNTT29RSmVocWZ5SVlXSDdiTGQwV00xNW5LSk82?=
 =?utf-8?B?U1JvQ3M3TGc4S3NtckgvRC9qTS85ck80ZXN1UHVFb3pqS095K0J5dWVYTkht?=
 =?utf-8?B?S2xteDVza0lzSnFKM2RGczBZWkNZQVAyeURXeTNmWmRMZ1B2a3NxSEJSUG5h?=
 =?utf-8?B?WUxkOVY0eFJUVkRrL2RDazhXVG5Tc0s4TjlhMTg3SFkrWnk4T1Q4R3k3WkEr?=
 =?utf-8?B?K0hXODdOSnE0Qi9veGRzOU43dDR6QlJ1SysxRG9tcnV2eCs5Z1ZHaC9QMEV0?=
 =?utf-8?B?RGhBVVFCRHBsRUtyK3A4K3BCNXluSlZiK2VWcDVQWXdDbTZHVGd1U2ZUeWJM?=
 =?utf-8?B?VUFNV2lud3kydHF4RU1Yb1EwMjlVdkkvWXhrZHRETy9mRGp1Ukt5RDlSaXYr?=
 =?utf-8?B?M2VYUlBONEQ0MDN5K0NGZnFvWTFPeHhIUUoxZVNJSE42UkxBMW5PblorOHda?=
 =?utf-8?B?MGFFODhwcXV3b1lZZjRNSnA4M0hwTkYwMTlxR1oxZzhNdEpzSVd5SFI2K0ZL?=
 =?utf-8?B?RDdvb3c3Sld5Q3hqMDIwd29PYi9sZzBjMXVBUndMVFhFT1pHK2hwZktJcjBI?=
 =?utf-8?B?em1ER0tESHZnajJJc0g3cFVSM1JkYTdVN2lZNWVidEtyN1ZZSXZVYlNLdS9t?=
 =?utf-8?B?aTJTUTQ1YlFEY2ZJMmVVNTN6MTEvNFZHS1FuTWZsRnFsQ0NSdWpid0xDdlcv?=
 =?utf-8?B?emx0OXNBOHRFMERuL2lvazh2c0JFU3pXWGE5ckxEdk9URVFBMnI2NkkvaVBp?=
 =?utf-8?B?em0vQnlxSjNCY3NOZUVuZFhWOHFsLzNkUkRVU2JBbFB3aFp1dzNKWnhqZGFF?=
 =?utf-8?B?azlCL3kvVVJSakJDbDhtazlBRW4wYXZqWERpcFdjS2VoM0p0eUxyOGxBbE5X?=
 =?utf-8?B?ajNobkg2Y2hnZDN3NnZtQ3hyWElua045MVNMR1FGdDk2NDFYckJLMy9WdVlO?=
 =?utf-8?B?cWFtSEdZVDhLQTA4VHc4MmZNWmtyb0ExdHlCVjdoV2x6cHQ2VkpqVVFvSDND?=
 =?utf-8?B?bEJvZDlrSDV0VHBIdDZ1UjQ1VUEzWGFUMk1Salh2OXJjYVE2OHdVR25zd0o1?=
 =?utf-8?B?SktxTTV1UHRHNjl4MVQ4S2FsVVg4eXA4QnVlcm9DenJNU0tUQ01CYnZGejBy?=
 =?utf-8?B?Q0pkSUJCRHF4enh5WTcrZC9mK3hpMHRiTzhPMk5DNjdvWmtESWdnS0dNbXph?=
 =?utf-8?B?eW1KUmNRU3BmN2d2WlRuQUJRQTZzbC9hVlRYc010T2tWejBLb1MrYTlKd0ZB?=
 =?utf-8?B?ckNzcHhPVGdSL2lkKzFhbjc2TDNMWlhSZEVaeDlYa2QrOXpzbEdTNWxrZE5z?=
 =?utf-8?B?bHBQZHNSR3hVbTRvWnpJQ3FCa0czUy9VWnpROW9qbTgwVnhBeFJvc3JSbzg5?=
 =?utf-8?B?ZDRxUUtUTXZ4MVVJVGJlMmplL3VrVzFCSkZVZzJORHp0R01ySGFEakRYaTlU?=
 =?utf-8?B?dDU0eDBCdHdUdmpndkpiM29qdVdrRmtoRU0yQndDeGtWQWlyZ3Q1WlMwakU4?=
 =?utf-8?Q?mTArsaTjXizv43jnbfsROetZFGn9faIhtdDxJ+i?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5536.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0NWSTlpZ0xQTVFsd1YyTjZXSUpjaFdpU1lrVVN3WUJvNTZ3bzh1aVk1NXRD?=
 =?utf-8?B?ODRvSm9ENFozeGdaZW9wTW1vbVpkVURUR3FLSUUxaWwzRnBVOVJsZUFDaml0?=
 =?utf-8?B?eDVSVVArUGZ1OTZ1UUF5V2o3SDQwSUR2R29ta1lFTEIwRXhCVDBkNGxWV2s0?=
 =?utf-8?B?UmlVRDY4dnJjTXBJeEpFT290cmp4NmhXcFFPYTZCdStRZjRNRWlpazQ5V0Vk?=
 =?utf-8?B?MzVPS0U2M3Qrazl5V0dobW9hZ2g3dWJWWkFoNWJwWFR1dm55UG5oQnpublJK?=
 =?utf-8?B?ODVpWEZnTFcxOW44R2Q5UVJMUnF6QTY4dDMyalNjbyttQ1JtSjFPL1N3aWM4?=
 =?utf-8?B?a3NBUm9XRVZOaGRxdHM4VjFWWmxCRDdIWkJCN3NoWGNybFZOK0RlNzZHZ1dh?=
 =?utf-8?B?ZWo5S1FUcDdWbWpxdXE3K2szN2J4MVhsQ203UXE4UU1UZmhlNk5JeDJuZFJE?=
 =?utf-8?B?RzU2REcxTGpaM002UGN0Nm1yUVpsT20wZExWMFQ1a1NBdzYwek5IZXkrVGZp?=
 =?utf-8?B?alZ2TFM5bUFYWUxGK0lkZVZMMkRXa0J3cE9pMkRScDZXdjg3Z1Myblc3SWQz?=
 =?utf-8?B?WmxSay9SeHIwRGRJRk4wRnVXUlFtSmJ6R0VjK0ZBUi96QU9LUWtKaFB2TnlP?=
 =?utf-8?B?UDE3Q0ptTzJlY1E0OHdZNGNIWnN0QkhNdVVXMmlaQU9RbjhSUFZ1cTdRZG5W?=
 =?utf-8?B?TEJyTWNwc0ZHUWpvNlBucmtnUlVxWStwaEs5aXRXa1NlUDd0Y3dDc2I5eEhP?=
 =?utf-8?B?WDFhL0h2YU5YV2lKTSt1TmszTXBwSjI0cnFRRklUbFN2akFGWkRPN2ZwVWxG?=
 =?utf-8?B?SDhqVk1pNzVKZVQwdE4vOERPdGE0cVc5YzhnaGZNKzFxMWZVZ2EwVHI4QWc2?=
 =?utf-8?B?VkhBWDNPYWNaQ3FOaXZ6UmhXTkxKamJyaUxxMWtDYTNZemJKcFVEWndUMm0v?=
 =?utf-8?B?K1VqVmxMMk9CVm9oK2MvWXl2QUdHOVdERlRKNlkwaTV4amRPTFdtcjdHUHhF?=
 =?utf-8?B?bU12TnRRRzdoNU5mWHBGUFpudnpqcUJ6RWVLcFlPa2cvTUl0cUpmd1NkK0Y3?=
 =?utf-8?B?ODdVbjkvRUxscmk1TmxZeHR2WlBDU3NGeFhzWDREakZTZnRRMlo1VXFUTzQv?=
 =?utf-8?B?STNQNFBwM1U0b0ZCUDA3NjFDMG9uL2prb3BFQWdkSVVMMVZFckc1U3Q0eXo0?=
 =?utf-8?B?d243NWsvZW9ldm0xb3RpTzVJZXUwYldzWUpIZmpZWHVRR0RBcDRVZlMrOUtV?=
 =?utf-8?B?cTBFMVhaa0Q0RWNQa01pNkNnUDNYNk1MU1I1U2dRM08yL3d1VVhXOHFjVXlO?=
 =?utf-8?B?QzBreDVhdDdUZ2JaN2dLWllIVUdwUEk2RHJ4cXNockcyTThGY1hONUx0bmZn?=
 =?utf-8?B?aXpuREZtc0NPeld0L3pOSnhydTlOK0pMUFdoV09PTmpkQnE3S1JoRkhab1Zv?=
 =?utf-8?B?RlhtdW5FQUVIWkpDY2JjYzF6VDBzUXUvcG5NcnZQSnh1K2xIOTFvcnpGVFQz?=
 =?utf-8?B?MWdBeTAyVzQvNGVmUDVoYi9jQS9XMEFvMjVEdjJENGh6R0Rxb2QzZ1lmMC9E?=
 =?utf-8?B?SVAyU0h4V0Z0QWpHVlJkQkQxa24zZHdhbFBLRzVXMVZHeFlwYlh5MTBBQUlC?=
 =?utf-8?B?cG1YcTBPU0NTbGh3TDQvOEVtQzd6Q1hDUzQ2WFZVczBraitSMHNBWEtDL1NX?=
 =?utf-8?B?eklRaldkdG9DTTBQb3lsWFg4MThHSlNkZVV0SHFZMno0WkZyRnZia09OdXEv?=
 =?utf-8?B?S1B5ZnhhZjNWdnZYMmFxMDAxVGpzc1J2QWVJU09NTWxEWk1salJzMVdtTjJP?=
 =?utf-8?B?SElBZHBXUUU4WTZqMk9FeUxEYjRGZVdwZVBKY0xKdm9mQmxXZ3VuWmFkWGI1?=
 =?utf-8?B?MGQxSitSakhNRUU3c3h3ZTFpMUs4VTB6Zjh2TzJwdjhQbE9UcjFvSEFFcXNS?=
 =?utf-8?B?YnRjYytzY25lbVV3cnhzTDJuejNnRDhUMXdCaUdqNzZOajdQRVkwa3d1WWNw?=
 =?utf-8?B?eWthQzJFQjNBeFRFWnlMRVhERVY4WTdqU0hQMmhzZHNScjlxMU1JbFdzVDA0?=
 =?utf-8?B?RTdaV0ZVd2xIMFFRRmxHbHpRdEZ1dkdCYkNyVHlnNlVsY0ZaUVlxenRSeng3?=
 =?utf-8?Q?w7puTbWLVz1WNqlfLNBUMJuWF?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e7e29d65-df04-48ce-c6e2-08dcf45eedf3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5536.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 19:06:14.0057 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DhWpaqjSJaRXT037SSK++ZbDbCJrj7TF5bZJJWaWn1y2MQm+1qxjl8g/xI+XUXIq/Z/Uj4XhgcoU8p3MIqXI+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6068
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



On 24-10-2024 23:04, Rodrigo Vivi wrote:
> On Thu, Oct 24, 2024 at 10:28:38AM -0400, Gupta, Anshuman wrote:
>>
>>
>>> -----Original Message-----
>>> From: Nilawar, Badal <badal.nilawar@intel.com>
>>> Sent: Wednesday, October 23, 2024 9:42 PM
>>> To: Vivi, Rodrigo <rodrigo.vivi@intel.com>
>>> Cc: Andi Shyti <andi.shyti@linux.intel.com>; intel-gfx@lists.freedesktop.org;
>>> Gupta, Anshuman <anshuman.gupta@intel.com>;
>>> chris.p.wilson@linux.intel.com
>>> Subject: Re: [PATCH] drm/i915/rc6: Disable RPG during workload execution
>>>
>>>
>>>
>>> On 23-10-2024 21:31, Nilawar, Badal wrote:
>>>>
>>>>
>>>> On 23-10-2024 20:18, Rodrigo Vivi wrote:
>>>>> On Wed, Oct 23, 2024 at 11:03:57AM +0530, Nilawar, Badal wrote:
>>>>>>
>>>>>>
>>>>>> On 22-10-2024 22:39, Rodrigo Vivi wrote:
>>>>>>> On Tue, Oct 22, 2024 at 03:28:43PM +0200, Andi Shyti wrote:
>>>>>>>> Hi Badal,
>>>>>>>>
>>>>>>>> On Tue, Oct 22, 2024 at 06:52:26PM +0530, Badal Nilawar wrote:
>>>>>>>>> Encountering forcewake errors related to render power gating;
>>>>>>>>
>>>>>>>> Can you please expand your explanation here?
>>>>>>>
>>>>>>> yeap. More explanation please. All platforms? really?
>>>>>>
>>>>>> We are seeing Render forcewake timeouts on ADLP, ADLM, ADLN, TWL,
>>>>>> DG1, rpl.
>>>>>
>>>>> Is this a regression? or a new issue?
>>>>
>>>> This is old issue, first reported year back.
>>>>
>>>>>
>>>>> Is this happening with Xe on these platforms? or i915 only?
>>>>
>>>> i915 only. This is not reported on Xe kmd.
>>>>
>>>>>
>>>>>> Issue disappears after disabling RPG. Instead of fully disabling RPG
>>>>>> I am disabling it during active submissions i.e. during unpark.
>>>>>> For MTL and ARL RPG is already disabled permanently.
>> IMO this patch should be extended for MTL and ARL as well.
>> Don't disable the RPG completely, only disable it during workload submission.
>> That should save power on both MTL and ARL platforms, and right thing to do.
>> And patch should add the Fixes tag accordingly to the commit which disables the RPG on MTL.
>> @Vivi, Rodrigo what is your opinion on above ? it seems both MTL and ADL issues are same signature.
>> MTL issue got disappear as RPG is disabled globally but that will burn power.
>> If window does not have this issue then it is always difficult to get proper SV support.
>> But OS like window may not catch these kind of issues as they don't reload the their graphics driver like
>> Linux reload module multiple times during selftest execution. Even chrome-os does not do that.
>> Not a real world use case.
> 
> So we should change the tests without impacting the real world use case.
> 
> Let's try to grab the forcewake_all when using these self-tests, except the rc6 one.

Sure, I will try forcewake_all on affected tests first.

Thanks,
Badal

> 
>> Thanks,
>> Anshuman.
>>>>>
>>>>> uhm. Interesting. Why that is disabled on these platforms?
>>>>
>>>>   From commit log its temporary wa to avoid fw timeouts.
>>>>
>>>> perhaps we should be
>>>>> doing the same for all GuC enabled platforms?
>>>>
>>>> I think so as temporary Wa.
>>>
>>> Correction, DG1 we are not seeing this. I think we can go with platform check.
>>>
>>> Regards,
>>> Badal
>>

