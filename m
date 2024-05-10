Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C74EC8C2357
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 13:29:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FD4710E933;
	Fri, 10 May 2024 11:29:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m9k4fTBd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B480B10E933;
 Fri, 10 May 2024 11:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715340553; x=1746876553;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=Fdj8JgN5fLe0yi6I04UuZPC8E43ilSbxZ82PN3d8T4Q=;
 b=m9k4fTBdNaTGSQb/65VQqFq6MkC+8t8VDaasO0wJKVWRTsfHJcUzT1fB
 nnZ6wyrl6xJRUmzbYH8KRgdCkhVhffv+7T5aXr8CSYGRS49OiG4Uw6Uy4
 kW1gRYclccHvamk/RlbxZjAJM9a6E/5UwD8D/nu+UIbXp5ZlkuZLZietw
 0vQ69F0ezPNkKpNzKmFobx6Maf06nqTg/RvPdKG1njo6Ok3sjtrhXS0js
 fWWx8A2nn3qeREAWrrqFZ3c7ebJN4boa56rUOC8sBr+jr0iJ2q7aPxG7X
 vvD44/T16Wwa58OjTjNL2WFDAtXyLevWDm2u33hzS1FrXiCM4Vbibg2RP Q==;
X-CSE-ConnectionGUID: Go9KmjPmTWqGgYLc/vC55A==
X-CSE-MsgGUID: xLGcZrSSS2Ssyv25RTZEGA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="21988188"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208,217";a="21988188"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:29:12 -0700
X-CSE-ConnectionGUID: yDnY6UulS1OUy2KWvn7dwQ==
X-CSE-MsgGUID: 366xtM1TQwyHZgO3g9Cppg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208,217";a="60757956"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 May 2024 04:29:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 10 May 2024 04:29:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 10 May 2024 04:29:07 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 10 May 2024 04:29:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ei2W0N3AQm3OKBow2qpgiJ7SL7ebMDJYAB+XGLkupybHC48JIPxqq6vfLwVIA5QNky8Hc42yKFZB5omkwENPHMUfHs+5iwA5BHywKooWGWL/DPCtCxan8AXS77fddR3PQPoo7WQOZJ3RfBmpUlXySFKf18KJGKsMdr1aAD/1te+9Nc9NtLL/b8rH/s/MSBQSijEOs4wF8x8FXKfdkWP2zaZ2tvXa/CpG7kSAwPflnyIa9SQkTKDJABCmZXDCvQ7EzBZTKaahJgRL4JCtER4ZlQkuPINuviocNPwFti7ElME2XNxaCgfDhGe6aD30TJdsJeaUp/hafNQm+pamf4hLPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b/0hxcltE5ZMAzjLnWx9OirBv8swNHydxA0ybb1KrFY=;
 b=EKaDT/NkSDlx8tyWUcWwqaO7MYqLOidIiIcQBH1YEi7tjPwucR19nIf/KdKDAuwXCEmRLoJ6ipl6kH9RVs3RBcGm7CODZCpTxwGwT4llHPpJ5FZimkrSUEzbYwFLN3Ze43+M1LEObu9gc3rIICQrL4WlC0zG9bwxzLrbmDdp8vKXwINgq7OoNXDB33YogT4pcD+7TFyhGRcLowguZz8HHLpIa52eRGyREF5VFsLqWtDlOKG2EdAjoQhxbx99RLIEdLyDHsqYztBfTyfWZ+TMi2u01NsiYSX10pzVC9HgTzCHUfkZm/kf29H1aN8oUhDEbxDKhuliZuihopnMCCVNEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB7038.namprd11.prod.outlook.com (2603:10b6:806:2b3::22)
 by DS0PR11MB7999.namprd11.prod.outlook.com (2603:10b6:8:123::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.46; Fri, 10 May
 2024 11:29:04 +0000
Received: from SA1PR11MB7038.namprd11.prod.outlook.com
 ([fe80::d13f:aaf4:415e:4674]) by SA1PR11MB7038.namprd11.prod.outlook.com
 ([fe80::d13f:aaf4:415e:4674%6]) with mapi id 15.20.7544.048; Fri, 10 May 2024
 11:29:04 +0000
Content-Type: multipart/alternative;
 boundary="------------yWdDQ0XzeYgYHm2QLWYbMhco"
Message-ID: <b91964d3-980a-42c4-8676-0ac940f94a89@intel.com>
Date: Fri, 10 May 2024 16:58:56 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/xe/display: remove unused xe->sb_lock
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, Arun R Murthy <arun.r.murthy@intel.com>
References: <20240510094313.3422982-1-jani.nikula@intel.com>
 <20240510094313.3422982-2-jani.nikula@intel.com>
Content-Language: en-US
From: "Ghimiray, Himal Prasad" <himal.prasad.ghimiray@intel.com>
In-Reply-To: <20240510094313.3422982-2-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR08CA0001.namprd08.prod.outlook.com
 (2603:10b6:a03:100::14) To SA1PR11MB7038.namprd11.prod.outlook.com
 (2603:10b6:806:2b3::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB7038:EE_|DS0PR11MB7999:EE_
X-MS-Office365-Filtering-Correlation-Id: 38bc8a35-863c-410d-cc5e-08dc70e465e3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V3pWUWNydUgvTnZLSUVVYkN2SXQwcmFwelBvVkxRMElqWk9NVjVxaktPOWRV?=
 =?utf-8?B?V0dQR1FTeXh4UFlWa3ROSWE0dktNWHYzajIvWnA2cm9DV3JuZnExUzdscjhz?=
 =?utf-8?B?SDVSVnlTRkkrRWpDMUI1Ulk5ZWY4UFNad25QV3gzV3pFc3ZDRDBzZDFlTkVO?=
 =?utf-8?B?VEtHaDFqOGJXOXlySzVjUHBXOW5QYmhEOXFPZk1YaC9VVVRHU1RFYlQ3RGlX?=
 =?utf-8?B?ZVpiTVVuaE8zbmo5eURsQ3JtVU03aTg2K0RpU3R2dFVHZmN1RGFOS2U2QnQv?=
 =?utf-8?B?MHJUWjJvUEp0YXNHbHRUUFVPb3JSSCtRcDJ4RmZCTlNGQlN5cVo4OC9rZjBK?=
 =?utf-8?B?VnUwOEJ1S1NCWEU2SXdhQkh5Q28reGxUdGtiK0FCTnNkeW9TMml6dW5NU0Z3?=
 =?utf-8?B?UExkTHhMWE5TeVJ1cVl6bnlyR0h1eTI2MVRFV2RSbFRBOStkU25idWZJZ3dj?=
 =?utf-8?B?YWZSMVBwNERld3A3TlRUOU5FbGNFZ2k1T1IxenNDMnhFbjV3WHNCMVpQK1hX?=
 =?utf-8?B?bU1FNmZ3bFkydlp1cXM5RGJSVmM4TmsyQUNzem5UUDIrK3B0Y0ZEeVNtMjdD?=
 =?utf-8?B?T0svWUViOFdHZzNrNnBTM0daYnVZMkRjeWQwaW5MeThPSWJJSSt2L3JRNDlm?=
 =?utf-8?B?SlVzWDlrdU9STnAxMEl6K1VXSVR1ekp3Nko5Q0FsMU9vbU9tLzZVMk51ZnlZ?=
 =?utf-8?B?d284TlQ4TmZuSDcwK1JDRHB6SjdiV1VDOEQ0V1NXbktpdDR1N2FDcUJsQTI1?=
 =?utf-8?B?VGc2aC9kQlpHNVRsU1MvZVlyMk04eHJ0SndYeDBRL0xHbkk3QUs4Y3lkdkxD?=
 =?utf-8?B?SzZTM2VwdGV4c3pLY2FWSE9Ydi9oVVdJajhsVFd6VFZFVmtmWFEvSThwK2FV?=
 =?utf-8?B?SWlpYUdFTGwvRE5lcGxiMlE1WkxzRWh2aW9zZWNWdlR0U2taNmtDemE5b1lG?=
 =?utf-8?B?MjBjaEFGdFpnZmJlV3l2Ym5ZM3lhNEQvYzNxUWtBSzAzcE8vR0FiOTBpbHVa?=
 =?utf-8?B?V0ZibVNpMmF1aVMrc3M4UXVEa00vTzJ6WUEwUGpKR1lLSlp0R1lsQkdNcHVk?=
 =?utf-8?B?VEpIdWFzMVFZRUdVNDc4YjJoMVRidldzWHVodEVXbUw4cDlVZEhyWTcyWWtv?=
 =?utf-8?B?dzhlMW41K3hzS1ZpY01MYXNCQzZRMnNiRXhaMVpJbmxJUXhEeStEaUo0NDR6?=
 =?utf-8?B?TlBQU25LMm56UEVHUmNYSkRNTjFzRXJUQ2dBN2JkYW1LZGx2QXBXTDc3RWQv?=
 =?utf-8?B?MXZuRENmdWM4L0ZwS3I1Z1VBbFNhUXZTdVFaK3hhTHdnRTE4WXIrU043M0dl?=
 =?utf-8?B?Wnd4bHQyL2E5VDRGNHFZVDBmbjJUL0tGc2JxaXJybVlIeEljdm1rNnFvUWJL?=
 =?utf-8?B?OFJ3K2xmSmEwUFZoaGJNUTZxVTlFWm5Xbi8rVmdSZnIrbHNENklTb1RTYk9N?=
 =?utf-8?B?N0dTbVRRVzYweUZuMUNVRnIvUXRiMzc5eVFQRWxVb1kyQy9ma2t1dlBsSDBi?=
 =?utf-8?B?SloyeDNMRjlTVENaeGRjdVBsbnQwNXNSc1BtUXMraVJSNy8yaHlXOW9rTUJD?=
 =?utf-8?B?R2hKb1c4c284TEhNc2VGelI2a21oTzNUYnhMVzRmUGsxYjlGb0s0dGppeS9x?=
 =?utf-8?Q?Ybw4YGIs0vp4oCHHs3UqLxvsB/6p/v/hfAwykYthR19I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB7038.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWRrbkI1cnd5VjNGTC9VWjJ2UW53VnM2L21xdXE0YW9YNFVUcW42eDZENTdr?=
 =?utf-8?B?KzdmaHNrVktBSnovRVF4clFXZW54VHJ0dUNnZ05aZXRUTDc3dzExbzc2Q2FD?=
 =?utf-8?B?b2RITmJZUVM2QXJDOTRkbHNneFhZK21PNmZwSFhKMUF5VmI1K0hwc09sNU56?=
 =?utf-8?B?UG9hVERUaFFFWHg3T3lGb1VVa1ZVcVRXSW02eW5KRktRSmpVVlpRc0VvWmU4?=
 =?utf-8?B?V09DMTBOenFiakFsQWxLejFNSWtTc2tWTUlIL0lYVzBLRk9hTjNsc0E1SXVZ?=
 =?utf-8?B?bU4yNWtBNVhXZC95eG1nZ0NaNUR3RUQ1N0R4UVFXa0tNYlZpRHJ4N1Vib0Ev?=
 =?utf-8?B?aUVuS0FldU9vaU5QbWZwY3pkd29SNXV6ZDlIeDVTSHRMdHVBR1YwZjNaVWhR?=
 =?utf-8?B?RnV6YUZJWlVqQTAvYk5QNndVRnhBSVZ1Z1VkT1R3MkZFZFErS1dkdm9TMURI?=
 =?utf-8?B?M1A0SWgxdTZINWhUZjJnRHJKTFNBemdXQ1BIeDkrWFlPdkpOb1NaajdzemJX?=
 =?utf-8?B?ZjZDVmxRTEVybEpUc3ozYTJPS2NZVm5LZUJNTUNNV3d3Yi9MOGdkeVViTUg4?=
 =?utf-8?B?dytMeUluTmF4WDc2cDgwVy90ZC9jcXdWUmFTc2VJem5HNjRSVWM4eVR0WGRC?=
 =?utf-8?B?eGlYaVR4UEh6a1JWQ0Iwam5qSXFWRjA2TFpvR2hqK3RoREJmS0U3L05CYXpE?=
 =?utf-8?B?elJvbWt6OEZpUjhRMUVPeHRhZzY3TGgvS2NGOUp0cjV1U2RDaGFkWCtGUDlB?=
 =?utf-8?B?S1A5SG0yTXo1aExYb2p4VkRkRVZQeFh0dy9IRTBzeGlNN2YyZGN4YjlBL1Jo?=
 =?utf-8?B?cThJYUpWV3FHN0x5enVpdDVURFJpVnhLcmlESW9jSGVuSzNFVW9qWm5qNTc4?=
 =?utf-8?B?ZGRwY09Udk0vNUt3cS9ydWZYcWttSHVTVXoxSTVsQkpqaytlKzM3R3pYeU5l?=
 =?utf-8?B?TDF1d1c3N3EwWEt3Y3Vrc1JlREhDK2NaYlJHVTlXWGpGMmxjV1h0dGpkcjJN?=
 =?utf-8?B?RkVEUGRxR3NJNHNQa3pGY0FMejg4bmpEMlpXYkI3TGxDRFVVcHZhWDZjVDFq?=
 =?utf-8?B?QmtzVFZ4TzA3QWhTeGNaNmpTR3J1T3U3aG5kUEZIOXROeVlpdW1rQ05jS3J3?=
 =?utf-8?B?aGpvaUlJUklRYVdQWWdpcUhMM3d2MnROcDZOdFBHYWZvUnZ2QUdsQmdaUk44?=
 =?utf-8?B?emFWNDR0S2drcDRFYVM0WUUyNCt6eVlBRnMwd1FRdklqVnZHckNPdldDeDdz?=
 =?utf-8?B?N2VQMTc5VW9MZW9Bc2dzM0d3VFozR0VFaittSGovNkxJdm9xdFUvUEZYN2lQ?=
 =?utf-8?B?SWppaDlINUJMOWtxMFV1VTRWYkxJYzYvQUt3dWpvSlZoKzllWGduM2lBcElo?=
 =?utf-8?B?bHhuLzBNUWc5SzFFK3ZEM25rQXZNNmU3T2pQaTgzL1hUdGMvRUhpVm1kNEsv?=
 =?utf-8?B?cXhjZTVOTHN1dGswQWk4RlZ0RFhmTm9KTG9pVUg2M2lJOFd5OW9iYmlpYURk?=
 =?utf-8?B?ZDg2anF5SzBtbnZQRm90dndwNnFrUVd5OVBKR09zUVRBNDhMN1VHU3lhMGRp?=
 =?utf-8?B?N0NhNE9rMnNveXRTa1MyM1M1RWZ0SmhTR3pvVTJWWi85anZxbzhKbzdBdnNz?=
 =?utf-8?B?UnZ0UnFrK1dxZlBkbEN6YXoxY0E3R1NVbWx1bDV2ZEhMYVd1OTdtR1I0RU05?=
 =?utf-8?B?ZFBMdUpPUUJTR1d5YU01Z0psL3gvL2pYdkNkSm9KOS9GR1JhRnpPWUs5QXdB?=
 =?utf-8?B?akVSSXdIUnM0ZnhuWFEwWFVUZ0R2ZG94VUhNMUdHMkM2MTZaQkJRZUY3d1Mz?=
 =?utf-8?B?dTZ1MXFXaEI1Ykc2WE9xM3F2U2VvU1RqV2pxUmM4MEhEemhHa0YvZkNLN2dl?=
 =?utf-8?B?b0RtemFZZjM2emlGV2tvYkRBQ1FxKzdaZG5wTmRuQXc5MXE1VDZKakJEUG0y?=
 =?utf-8?B?Y3B5bUEvMHFqREdxemF0TDJ0UHd6ODh5bXdYMjloNUpkV0RITE81RU1rTkMy?=
 =?utf-8?B?TVBxRXNvWVM1RDE5MlEzbTFVTitqQ3ZZbG1jT3prS0dUOFZDSjVDd3gwcWZD?=
 =?utf-8?B?bUQ1R25LR3BEb0RIdWZIaU1QRG1VdlV1ZGRjUmpWZjN2V05OWkxzd29HaFFh?=
 =?utf-8?B?VzZ3NmhKZ1FSeURoWm5OcTNRdzZrbmhHVVJMc01iY1N5ZDVsM2NpVjRGYitJ?=
 =?utf-8?B?MGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 38bc8a35-863c-410d-cc5e-08dc70e465e3
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB7038.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2024 11:29:04.5331 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M4n/LdqWsmXrzd9InIX+vqTsHku3ayo9V8Gi56SQQIg5uX36TZ8HMipLaWhnPQruYXJ5M5T6Yz0O92YwqXBLHiNZ3JbQrrT84xGx/av+xw8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7999
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

--------------yWdDQ0XzeYgYHm2QLWYbMhco
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 10-05-2024 15:13, Jani Nikula wrote:
> Nothing in xe needs xe->sb_lock. None of the i915 display code using
> ->sb_lock gets built with xe, and in any case that would be wrong as xe
> uses gt->pcode.lock for this.
>
> Signed-off-by: Jani Nikula<jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/xe/display/xe_display.c | 2 --
>   drivers/gpu/drm/xe/xe_device_types.h    | 3 ---
>   2 files changed, 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index fbe2c2eddea9..a2c39bcc7677 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -96,8 +96,6 @@ int xe_display_create(struct xe_device *xe)
>   
>   	xe->display.hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
>   
> -	drmm_mutex_init(&xe->drm, &xe->sb_lock);
> -
>   	return drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
>   }
>   
> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
> index b78223e3baab..5c5e36de452a 100644
> --- a/drivers/gpu/drm/xe/xe_device_types.h
> +++ b/drivers/gpu/drm/xe/xe_device_types.h
> @@ -511,9 +511,6 @@ struct xe_device {
>   	/* To shut up runtime pm macros.. */
>   	struct xe_runtime_pm {} runtime_pm;
>   
> -	/* For pcode */
> -	struct mutex sb_lock;
> -

LGTM

Reviewed-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>

A patch 
[https://lore.kernel.org/all/buobxdew2jnbfblawfvnzwntexvhxkslqstsgp3xsxpexdtdem@gwnlli47tdkc/ 
] was introduced that added handling for the return value of 
|drmm_mutex_init|for various display locks. As part of further 
cleanup's, other locks initialization apart from |sb->lock|were 
relocated to the display code. The current patch ensures we don't need 
to address it anymore.

>   	/* only to allow build, not used functionally */
>   	u32 irq_mask;
>   
--------------yWdDQ0XzeYgYHm2QLWYbMhco
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 10-05-2024 15:13, Jani Nikula wrote:<=
br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:20240510094313.3422982-2-jani.nik=
ula@intel.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">Nothing in xe needs xe-&gt;sb_=
lock. None of the i915 display code using
-&gt;sb_lock gets built with xe, and in any case that would be wrong as xe
uses gt-&gt;pcode.lock for this.

Signed-off-by: Jani Nikula <a class=3D"moz-txt-link-rfc2396E" href=3D"mailt=
o:jani.nikula@intel.com">&lt;jani.nikula@intel.com&gt;</a>
---
 drivers/gpu/drm/xe/display/xe_display.c | 2 --
 drivers/gpu/drm/xe/xe_device_types.h    | 3 ---
 2 files changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/d=
isplay/xe_display.c
index fbe2c2eddea9..a2c39bcc7677 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -96,8 +96,6 @@ int xe_display_create(struct xe_device *xe)
=20
 	xe-&gt;display.hotplug.dp_wq =3D alloc_ordered_workqueue(&quot;xe-dp&quot=
;, 0);
=20
-	drmm_mutex_init(&amp;xe-&gt;drm, &amp;xe-&gt;sb_lock);
-
 	return drmm_add_action_or_reset(&amp;xe-&gt;drm, display_destroy, NULL);
 }
=20
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_d=
evice_types.h
index b78223e3baab..5c5e36de452a 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -511,9 +511,6 @@ struct xe_device {
 	/* To shut up runtime pm macros.. */
 	struct xe_runtime_pm {} runtime_pm;
=20
-	/* For pcode */
-	struct mutex sb_lock;
-</pre>
    </blockquote>
    <br>
    <p>LGTM</p>
    <p>Reviewed-by: Himal Prasad Ghimiray
      <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:himal.prasad.ghimir=
ay@intel.com">&lt;himal.prasad.ghimiray@intel.com&gt;</a><span style=3D"col=
or: rgb(13, 13, 13); font-family: S=C3=B6hne, ui-sans-serif, system-ui, -ap=
ple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto San=
s&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color E=
moji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;=
Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-l=
igatures: normal; font-variant-caps: normal; font-weight: 400; letter-spaci=
ng: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform=
: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white=
-space: pre-wrap; background-color: rgb(255, 255, 255); text-decoration-thi=
ckness: initial; text-decoration-style: initial; text-decoration-color: ini=
tial; display: inline !important; float: none;"> </span></p>
    <p><span style=3D"color: rgb(13, 13, 13); font-family: S=C3=B6hne, ui-s=
ans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, =
Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, A=
rial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Sego=
e UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-styl=
e: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-=
weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-in=
dent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text=
-stroke-width: 0px; white-space: pre-wrap; background-color: rgb(255, 255, =
255); text-decoration-thickness: initial; text-decoration-style: initial; t=
ext-decoration-color: initial; display: inline !important; float: none;">A =
patch [<a class=3D"moz-txt-link-freetext" href=3D"https://lore.kernel.org/a=
ll/buobxdew2jnbfblawfvnzwntexvhxkslqstsgp3xsxpexdtdem@gwnlli47tdkc/">https:=
//lore.kernel.org/all/buobxdew2jnbfblawfvnzwntexvhxkslqstsgp3xsxpexdtdem@gw=
nlli47tdkc/</a> ] was introduced that added handling for the return value o=
f </span><code style=3D"border: 0px solid rgb(227, 227, 227); box-sizing: b=
order-box; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-transla=
te-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: =
0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch=
-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-positio=
n: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordina=
l: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --=
tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw=
-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-of=
fset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shado=
w: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw=
-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-i=
nvert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-b=
lur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-=
grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backd=
rop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; --tw-contai=
n-size: ; --tw-contain-layout: ; --tw-contain-paint: ; --tw-contain-style: =
; font-feature-settings: normal; font-family: &quot;S=C3=B6hne Mono&quot;, =
Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace !import=
ant; font-size: 0.875em; font-variation-settings: normal; color: rgb(13, 13=
, 13); font-style: normal; font-variant-ligatures: normal; font-variant-cap=
s: normal; letter-spacing: normal; text-align: start; text-indent: 0px; tex=
t-transform: none; word-spacing: 0px; -webkit-text-stroke-width: 0px; white=
-space: pre-wrap; background-color: rgb(255, 255, 255); text-decoration-thi=
ckness: initial; text-decoration-style: initial; text-decoration-color: ini=
tial;">drmm_mutex_init</code><span style=3D"color: rgb(13, 13, 13); font-fa=
mily: S=C3=B6hne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&q=
uot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;H=
elvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI E=
moji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font=
-size: 16px; font-style: normal; font-variant-ligatures: normal; font-varia=
nt-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text=
-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background=
-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decora=
tion-style: initial; text-decoration-color: initial; display: inline !impor=
tant; float: none;"> for various display locks. As part of further cleanup'=
s, other locks initialization apart from </span><span style=3D"color: rgb(1=
3, 13, 13); font-family: S=C3=B6hne, ui-sans-serif, system-ui, -apple-syste=
m, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, =
sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot=
;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Colo=
r Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures:=
 normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norma=
l; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; w=
idows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: p=
re-wrap; background-color: rgb(255, 255, 255); text-decoration-thickness: i=
nitial; text-decoration-style: initial; text-decoration-color: initial; dis=
play: inline !important; float: none;"></span><code style=3D"border: 0px so=
lid rgb(227, 227, 227); box-sizing: border-box; --tw-border-spacing-x: 0; -=
-tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rot=
ate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; -=
-tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: =
proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --t=
w-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric=
-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset=
: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-co=
lor: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-rin=
g-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colore=
d: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-g=
rayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: =
; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --t=
w-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate:=
 ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate:=
 ; --tw-backdrop-sepia: ; --tw-contain-size: ; --tw-contain-layout: ; --tw-=
contain-paint: ; --tw-contain-style: ; font-feature-settings: normal; font-=
family: &quot;S=C3=B6hne Mono&quot;, Monaco, &quot;Andale Mono&quot;, &quot=
;Ubuntu Mono&quot;, monospace !important; font-size: 0.875em; font-variatio=
n-settings: normal; color: rgb(13, 13, 13); font-style: normal; font-varian=
t-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; tex=
t-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; white-space: pre-wrap; background-color: rg=
b(255, 255, 255); text-decoration-thickness: initial; text-decoration-style=
: initial; text-decoration-color: initial;">sb-&gt;lock</code><span style=
=3D"color: rgb(13, 13, 13); font-family: S=C3=B6hne, ui-sans-serif, system-=
ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;N=
oto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple =
Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;,=
 &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-va=
riant-ligatures: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tr=
ansform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px=
; white-space: pre-wrap; background-color: rgb(255, 255, 255); text-decorat=
ion-thickness: initial; text-decoration-style: initial; text-decoration-col=
or: initial; display: inline !important; float: none;"> </span><span style=
=3D"color: rgb(13, 13, 13); font-family: S=C3=B6hne, ui-sans-serif, system-=
ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;N=
oto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple =
Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;,=
 &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-va=
riant-ligatures: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tr=
ansform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px=
; white-space: pre-wrap; background-color: rgb(255, 255, 255); text-decorat=
ion-thickness: initial; text-decoration-style: initial; text-decoration-col=
or: initial; display: inline !important; float: none;"> were relocated to t=
he display code</span><span style=3D"color: rgb(13, 13, 13); font-family: S=
=C3=B6hne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, R=
oboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetic=
a Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&qu=
ot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: =
16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0p=
x; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-color:=
 rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-st=
yle: initial; text-decoration-color: initial; display: inline !important; f=
loat: none;">. The current patch ensures we don't need to address it anymor=
e.</span></p>
    <p><span style=3D"color: rgb(13, 13, 13); font-family: S=C3=B6hne, ui-s=
ans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, =
Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, A=
rial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Sego=
e UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-styl=
e: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-=
weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-in=
dent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text=
-stroke-width: 0px; white-space: pre-wrap; background-color: rgb(255, 255, =
255); text-decoration-thickness: initial; text-decoration-style: initial; t=
ext-decoration-color: initial; display: inline !important; float: none;">
</span></p>
    <blockquote type=3D"cite" cite=3D"mid:20240510094313.3422982-2-jani.nik=
ula@intel.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">
 	/* only to allow build, not used functionally */
 	u32 irq_mask;
=20
</pre>
    </blockquote>
  </body>
</html>

--------------yWdDQ0XzeYgYHm2QLWYbMhco--
