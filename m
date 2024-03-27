Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEFB88D577
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 05:30:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D21910F3CE;
	Wed, 27 Mar 2024 04:30:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UNbdh6O8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A067310F3CE
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 04:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711513831; x=1743049831;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cDgduk6mHrUmz8PUS1rKQIibB2BYHteNmmnpuxZzYrg=;
 b=UNbdh6O8qoJ/DrOIEDVF15vaoiFqsczmq+iu0SkCJydo/l7tosT5RTl7
 gYmF7P9rU9vqltPEddt1B0CMrOrK3F6S6wtmWiK4Og7Le729zT7NjfStz
 z7rb8gKzrWCVXWJPARvXQRP/sj/UZQixiesFoKjp0PXXgc5M6EXNGt7AS
 PW+O8fLcxKtsQr87a10JH/dezS9GKErTc8ufvU3gNOlWTtoaqpj0YGuxz
 x/CijXQXuAakR1Ir5MfK4bbyB3+krBakGcPovSgDvqgUJ8QadYUetjjd/
 vduuw5YxFhhNDuW6CCviOay8IaSorvMHcytSeePQNi11U1CoYi/4pLjee A==;
X-CSE-ConnectionGUID: fl0jTgLJSmS5hNlPhc4LtQ==
X-CSE-MsgGUID: PYv4R4yRTf+Id1RXXLI2zQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6422852"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; 
   d="scan'208";a="6422852"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 21:30:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="20653003"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 21:30:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 21:30:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 21:30:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 21:30:30 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 21:30:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U7hXi6R77O8tdXWZ++1BlFpachiDBqPQJvgZHmDRz/3Wws2I9oij+oSR0pRcfrIUJvgRrby1tizTAEZZqgcWAXNsKwBbnFGwKvZREA7h/ziBxTwzr6dEFrrH81xiMJJDuap5GTJW3/b2G8so0oNl7sPWI6QabITjKyY3jlO0H2gnQFyyRG0YKVdmsMHJf5vFDCSv7cDRivrHR8wlfQN7cKgGRv060SS8Mn8rjr5nSOlVdqEwbLn/AqPq9x4xRACGva9j0gUETBuYBjjurGSgPKPIvJ15yiAULWTLGwhD6Jd9z6v+L+oPRz05yKmJFkCd318MUgmpCwksXDytBsQroQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JO0OTr0r7EYuNGGDvr+Rf5zPa9A8LzcpfQMjMsIB4b0=;
 b=A9OEfpQJEseFOj83YNPd5H5VheL/x9nwUu/TtoiU/foMXl0gimuH7n6VXcIc7VTLhnza+ZqYW8keyYfPGN0kDrsG4Xb6/KXkjLisMzOrUqVhFhTb/5TWKU2SO3DVMHPOYEudXWln5LkFRMgOh5wMvv+2MWQARZPzwpslZPHCVPG8qgvsAokm57i9J4WpsSZJ52RsIstlfVy+55g0lSFNSioCWJrvdv7GOrmf97dfmQU7iHlQUe/Icj6uGvO6x1s8sa0ycZG68jPx3A89x2Fj5EtGZYk7PP5Uff8vt9ROt4px+GdZDLDkcuuVn6Mhp3fseEYLfTqSD/yuyp+Xlmg9AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by PH7PR11MB7572.namprd11.prod.outlook.com (2603:10b6:510:27b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Wed, 27 Mar
 2024 04:30:28 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::eb80:5333:fa3e:cb6c]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::eb80:5333:fa3e:cb6c%4]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 04:30:28 +0000
Message-ID: <b132ded3-bf0c-48b1-a4ef-29e22c9ca81f@intel.com>
Date: Wed, 27 Mar 2024 10:00:17 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/hwmon: Remove i915_hwmon_unregister() during
 driver unbind
To: "Krzysztofik, Janusz" <janusz.krzysztofik@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>, "Gupta, Anshuman"
 <anshuman.gupta@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>
References: <20240326124838.3049215-1-badal.nilawar@intel.com>
 <3291198.aeNJFYEL58@jkrzyszt-mobl2.ger.corp.intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <3291198.aeNJFYEL58@jkrzyszt-mobl2.ger.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0104.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::6) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|PH7PR11MB7572:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NjL2oMqmV0dBfOaY6vi/1piUfER+TH2J/CBzpgIPUltACsjyMBUTWvXMPQ/2c3tnr8mZW+WKUmMMg9YXOHFqZHHh3gbDl04L18+D7VRPSBo7LEG4iUkraMF+5hE3aTmTwMwf47cIBy7kXT5IEl3dzTKnYjMimyXFpKmxhju0dgTwHEwxt3Ats9K+wQSD3go7HrAa+ZEd3Whp8CdwcE+WHb8SCYC0uVcsklfq3NwAksGRNw3HhMOkpmyH0wZQy54NUe+2XeQToZ94SBP/VGXOcXnrduxdZZNsSy2c0Hj/k551GEgThxiEMF5AL1XKOxtbpweSJe6r8fsptbyvVmH0ENChMgfho1eYj1RJcXoHeelUQ805jtL5L4cTjiXmSBRaa5XOVi5aPvlUcgNNELPM0TfrBJkGLTtLuLXlszSR1RzmMePWPP6dvgos+LY/QzwkUJB+6YPS+PJ1qcpdmAIskETVC/XApqvUwfv1XStUcVzt9vSm+ko2s0oO19K496W6PYszaDUrWzkAMQN4Q6VeqRm9jzw/KPKbkZDjDDgoCLdwaZFgjBUjfnRMFerNcfV/TNw/tYx0xrFb55W7QRLPF3dBTnJuTgc+GQmA42RQ47g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzUvQTNBMCtEK002WERiY3FyTkR0aXN5bmNXMFFvczR0dkRwRXlpZEZuZGxm?=
 =?utf-8?B?Z3l6ZXgwS3RjcHJyTElTSDhTblkvZnFEbEVuaEJkK0xzOXpIN3MzQmJXZzZO?=
 =?utf-8?B?QTdoQng0bXJIWU9xdTEzOW5Dcm9FNW15RzJHZ20ySU1FMENCMythY0d1NjZZ?=
 =?utf-8?B?VkRXZnBHOXZNUlBMRXozWURMN0Z6dWF5c1RPcEhVempsVThMclBlVkJ2MlF5?=
 =?utf-8?B?Zk1sRlBLSUdEU0FsdVRCU21PL0JDWnRsN2tyM1JiWEEwb0dTNU8wQUh6UDBz?=
 =?utf-8?B?RVB6WXZVUi9uakc5cEs2Zzloc1NyNUVOVXRFbGRNRXR6dWpjQ3l2VmFCWlF2?=
 =?utf-8?B?cDA5WlVEd1lNQlRKd1QxVElsbjk3cTdkZS8wMVpDbWJKYlpObUhHYWtwVEg3?=
 =?utf-8?B?aWd6NThHTGNCZlVqMzJQZmJIcjR4aXRlOFNvSHBwTDRVVXFIUE43U0lPOHgz?=
 =?utf-8?B?cEdtM05uQTJXNXR2cmgwOEs4Mk9ORk5zSHdJaVNIRHFJRjhmYXQzZ3J1K1Ni?=
 =?utf-8?B?dDc5MVh2eVFmOGk2TXpkMFF0VHVXcjBINmxTdzlsTi9KT1hNYkpjeUlBeG9z?=
 =?utf-8?B?d2tzMWVTM2hBOUlqNlg0T2NISVRLNXpacUpaT1ZNNWUzcDF1ZmRnTHMyNFpM?=
 =?utf-8?B?MFhJditQTE1palYyMUNLM3hCaDVPTjFEcG5KbGtLempMMmd6aDNjWlVRQm94?=
 =?utf-8?B?Y3pKMkQzcjVZMEZZZXo1VGhLS0l1VDYzYVdvemtTemEzVGNYTlJSQlpyRVEr?=
 =?utf-8?B?bTJPUFROR2wwaE00MnpCa0RvcUNyS2c2cGQ0ZW82NU40Z0xsaU1Ka3J2OU1k?=
 =?utf-8?B?VTJ5bU9pZmp6V1pKR29SOGx6ZEswSXNyS05UWWgwbSt5dVlVRG0zWjdsVWdY?=
 =?utf-8?B?ZlZxa3V6QWxObDdCT0pqaWluRWRISzJGYmhNQkRXRDMrZDlGbFcxeFhRcDE3?=
 =?utf-8?B?RzlNb2VjWmNkOUgvbHVaZWFyU2hKdVJCcWQyNGdGM0NQTFQzaXZVQllkR3d4?=
 =?utf-8?B?M0pWdzB5aFhXZHY3SlFjVWFsU3BTNmhkbzdWUHd1VWdtSFdEcVBCbjFuQlFE?=
 =?utf-8?B?cnZTVEZvcE0xak9CTGNrTU1sTUd0Q2FPWjRnQUZqR2xDVFNPS1VTMWxhRUJC?=
 =?utf-8?B?bDZuNzVmWmZqZ2RXM2ZHWE5rcDdSdmx3ckxsMERMWlFaU1FTTTZ3dEMvejNN?=
 =?utf-8?B?NkNYNEdPUGxyN0svdCtkYUdmNlZtTDJ2VFRkNTFpNE9oWnh0UFErVjFvYUJ1?=
 =?utf-8?B?bFVWQnR5RWNlR29zRDhRRUhUOVg1cmpmcTU3dlQ4Tm1qd3g3MzNGcE9USHA5?=
 =?utf-8?B?cUFxNWptaUIyYXgxUkVXRnl4RGIwWTBvMDFISlJXV0VaTUNyREdUWEgwRE1m?=
 =?utf-8?B?WkV3NmVNMTY0Y3l4MFNKOW53Wi9rTXg2MXNtSTJVMC96bmFOanVObVBZNVk3?=
 =?utf-8?B?L1JSRW8xdGQyK2s3ZnhoZEZiNXRlTjlFd1hxY3JsYjRaNDNKZUNoR3ZqdStr?=
 =?utf-8?B?WXFaL3l6YlhseWYxZmFLRkkwK0pLa2xnQmlOckRNbTJKb05Yd1I5YWFXYWMw?=
 =?utf-8?B?ekdvSTNKUlp2bll6V2ZoUWhTRFo4MnhOQko0K2ZNVyszMWNZUUk4OS9tTDdw?=
 =?utf-8?B?RS9zSnQvUTFFbDQvTGNUQ1M4aHJ3akZnYjZVUFNCYVorZGxuVHBMQUtqV3Iz?=
 =?utf-8?B?UE5XVnZCSUtELzhOcEgwU3I5UlNmOVJ5eTZTUXord01CeGZTMi8xVCs0WUJp?=
 =?utf-8?B?dmdqLy9za3dFTWJvWkdvR3U3T0txRytTcHFpMURmZzEwVWJ5blIzWnpiWlFr?=
 =?utf-8?B?TnZlem0zQmJvVXFzNERwWDlJRUVZWFdBZXlMbXJLYTlueGY4cksrTEdWV2Z3?=
 =?utf-8?B?OC9mWDBYazVHZXN0RTg0M3RUYnFRQWREcE9WZVNWTlJHem1UWCt4bDcvYUI2?=
 =?utf-8?B?WHczMGxkS04vV1pLVlc2TG5saFN2ek5DUThGN25aUWlyY0pHaFFSTXh2T0dR?=
 =?utf-8?B?bGpzdVFheFBwSUo4eUgvMGkycjc5SEpNd0NmdnQ1S1pDYnkzREdGMDh2Z2xw?=
 =?utf-8?B?LzlESW1IRllYUkt4N01FYmoySWxLcXRYYjJQdXFsUjZ4TlNFL2VqU3BxZ05p?=
 =?utf-8?B?U2d3T1Aydm5zWmpoNmxFcEJzaU9vS1p2elQ3VGdxd3Ewc1hnWHJjUk5BQlk3?=
 =?utf-8?B?b1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 27f04096-3ac8-4833-1d7b-08dc4e16a125
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2024 04:30:28.2635 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QyPVEq/zzQwR2aqSofvak4UNabYXvtC0cMLsdj8Q9HnR5vrlaSpSNhexbkED4IBWOW33TtnYKkBzsBMPoBs9Dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7572
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



On 27-03-2024 02:58, Krzysztofik, Janusz wrote:
> On Tuesday, 26 March 2024 13:48:38 CET Badal Nilawar wrote:
>> i915_hwmon and its resources are managed resources of i915 dev.
>> During i915 driver unregister flow the function i915_hwmon_unregister()
>> explicitly makes i915_hwmon resource NULL. This happen before
>> hwmon is actually unregistered. Doing so may cause UAF if hwmon
>> sysfs is being accessed:
>>
>> <7> [518.386591] i915 0000:03:00.0: [drm] intel_gt_set_wedged called from intel_gt_set_wedged_on_fini+0xd/0x30 [i915]
>> <7> [518.471128] i915 0000:03:00.0: [drm:drm_client_release] drm_fb_helper
>> <4> [518.501476] general protection fault, probably for non-canonical address 0x6b6b6b6b6b6b6dbf: 0000 [#1] PREEMPT SMP NOPTI
>> <4> [518.512264] CPU: 6 PID: 679 Comm: prometheus-node Tainted: G     U             6.9.0-rc1-CI_DRM_14482-g4a8fabcf2f1a+ #1
>> <4> [518.522951] Hardware name: Intel Corporation Raptor Lake Client Platform/RPL-S ADP-S DDR5 UDIMM CRB, BIOS RPLSFWI1.R00.4221.A00.2305271351 05/27/2023
>> <4> [518.536217] RIP: 0010:hwm_energy+0x2b/0x100 [i915]
>> <4> [518.541159] Code: 48 89 e5 41 57 41 56 41 55 41 54 53 48 89 fb 48 83 e4 f0 48 83 ec 10 4c 8b 77 08 4c 8b 2f 8b 7f 34 48 89 74 24 08 85 ff 78 2b <45> 8b bd 54 02 00 00 49 8b 7e 18 e8 35 e4 ea ff 49 89 c4 48 85 c0
>> <4> [518.559746] RSP: 0018:ffffc900077efd00 EFLAGS: 00010202
>> <4> [518.564943] RAX: 0000000000000000 RBX: ffff8881e3078428 RCX: 0000000000000000
>> <4> [518.572025] RDX: 0000000000000001 RSI: ffffc900077efda0 RDI: 000000006b6b6b6b
>> <4> [518.579107] RBP: ffffc900077efd40 R08: ffffc900077efda0 R09: 0000000000000001
>> <4> [518.586186] R10: 0000000000000001 R11: ffff88810c19aa00 R12: ffff888243e1a010
>> <4> [518.593264] R13: 6b6b6b6b6b6b6b6b R14: 6b6b6b6b6b6b6b6b R15: ffff8881e3078428
>> <4> [518.600343] FS:  00007f9def400700(0000) GS:ffff88888d100000(0000) knlGS:0000000000000000
>> <4> [518.608373] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>> <4> [518.614077] CR2: 0000564f19bff288 CR3: 0000000119f94000 CR4: 0000000000f50ef0
>> <4> [518.621158] PKRU: 55555554
>> <4> [518.623858] Call Trace:
>> <4> [518.626303]  <TASK>
>> <4> [518.628400]  ? __die_body+0x1a/0x60
>> <4> [518.631881]  ? die_addr+0x38/0x60
>> <4> [518.635182]  ? exc_general_protection+0x1a1/0x400
>> <4> [518.639862]  ? asm_exc_general_protection+0x26/0x30
>> <4> [518.644710]  ? hwm_energy+0x2b/0x100 [i915]
>> <4> [518.649007]  hwm_read+0x9a/0x310 [i915]
>> <4> [518.652953]  hwmon_attr_show+0x36/0x140
>> <4> [518.656775]  dev_attr_show+0x15/0x60
> 
> I don't think that's a good example of what you are talking about in your
> commit description.  I haven't looked throughout the i915 code to find out who
> actually uses that i915->hwmon pointer and when, but while looking at the
> hwmon code that now fails on sysfs access, I haven't noticed any use of
> i915->hwmon.

i915_hwmon is main structure and I think issue is ddat is invalid.

struct hwm_drvdata {
         struct i915_hwmon *hwmon;
         struct intel_uncore *uncore;
         struct device *hwmon_dev;
         struct hwm_energy_info ei;  /*  Energy info for energy1_input */
         char name[12];
         int gt_n;
         bool reset_in_progress;
         wait_queue_head_t waitq;
};

struct i915_hwmon {
         struct hwm_drvdata ddat;
         struct hwm_drvdata ddat_gt[I915_MAX_GT];
         struct mutex hwmon_lock;    /* counter overflow logic and rmw */
         struct hwm_reg rg;
         int scl_shift_power;
         int scl_shift_energy;
         int scl_shift_time;
};

(gdb) list *hwm_energy+0x2b
0x161f8b is in hwm_energy (drivers/gpu/drm/i915/i915_hwmon.c:134).
129             struct hwm_energy_info *ei = &ddat->ei;
130             intel_wakeref_t wakeref;
131             i915_reg_t rgaddr;
132             u32 reg_val;
133
134             if (ddat->gt_n >= 0)
135                     rgaddr = hwmon->rg.energy_status_tile;
136             else
137                     rgaddr = hwmon->rg.energy_status_all;
138

> 
> I think that instead of dropping i915_hwmon_unregister() we have to actually
> unregister hwmon in the body of that function, which is called from
> i915_driver_unregister() intended for closing user interfaces, then called
> relatively early during driver unbind, so hwmon sysfs entries disappear before
> i915 structures, especially uncore used by hwmon code, are freed.

You mean uncore are freed before hwmon get unregistered, I don't think 
so. uncore is also drm device managed resource so in sequence I think it 
should be freed after i915 dev managed resources freed.

  871 static int intel_gt_tile_setup(struct intel_gt *gt, phys_addr_t 
phys_addr)
  872 {
  873         int ret;
  874
  875         if (!gt_is_root(gt)) {
  876                 struct intel_uncore *uncore;
  877                 spinlock_t *irq_lock;
  878
  879                 uncore = drmm_kzalloc(&gt->i915->drm, 
sizeof(*uncore), GFP_KERNEL);
  880                 if (!uncore)
  881                         return -ENOMEM;
  882
  883                 irq_lock = drmm_kzalloc(&gt->i915->drm, 
sizeof(*irq_lock), GFP_KERNEL);
  884                 if (!irq_lock)
  885                         return -ENOMEM;
  886

Regards,
Badal
> 
> Thanks,
> Janusz
> 
>>
>> Fixes: b3b088e28183 ("drm/i915/hwmon: Add HWMON infrastructure")
>> Closes: https://gitlab.freedesktop.org/drm/intel/issues/10366
>> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
>> Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
>> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_driver.c | 2 --
>>   drivers/gpu/drm/i915/i915_hwmon.c  | 5 -----
>>   2 files changed, 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>> index 4b9233c07a22..a95b455964b7 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -660,8 +660,6 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
>>   	for_each_gt(gt, dev_priv, i)
>>   		intel_gt_driver_unregister(gt);
>>   
>> -	i915_hwmon_unregister(dev_priv);
>> -
>>   	i915_perf_unregister(dev_priv);
>>   	i915_pmu_unregister(dev_priv);
>>   
>> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
>> index c9169e56b9a1..91f171752d34 100644
>> --- a/drivers/gpu/drm/i915/i915_hwmon.c
>> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
>> @@ -841,8 +841,3 @@ void i915_hwmon_register(struct drm_i915_private *i915)
>>   			ddat_gt->hwmon_dev = hwmon_dev;
>>   	}
>>   }
>> -
>> -void i915_hwmon_unregister(struct drm_i915_private *i915)
>> -{
>> -	fetch_and_zero(&i915->hwmon);
>> -}
>>
> 
