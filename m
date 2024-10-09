Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7FF9978D5
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 01:06:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29C3F10E834;
	Wed,  9 Oct 2024 23:06:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZdU9W0bj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E73C10E833;
 Wed,  9 Oct 2024 23:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728515183; x=1760051183;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=x+thgtXjHnxi5CtTjw8FaTKglNwN53bLesa6O55/PhE=;
 b=ZdU9W0bjfCqcLTtKnOuxp7xeTi5QhnlQ+Muhc/JBU21Ci5KihRfvZsZy
 oXwjWFuSk+WdiAvpF/VhHGtIr70RwtNdIE8VnQNR+eIF2D5G8eCYOH3Y5
 W7ktx8IdrEorpvvemChDNPVAeEfACiguRZ3QyqIbCIK8x6IqwwGy1qfS1
 HHu6QdEA6OimS7nQucaNKsxSdVvY+I3Osnrefy6DJGlBw7Ra9zTCPLC6X
 c9NtKpADK1xYRfUyeA7uUNBn2btGH28QVRqiMpAjwP8SCd3bnPjH8rGd8
 ueBzWwXqANMUW6NWtXlzP6BRnj105lVnlW7a2Rk9oRyegQ3f7VcM0KOd2 g==;
X-CSE-ConnectionGUID: TXbUVNJ6RKO6b8zJb/ZGkg==
X-CSE-MsgGUID: QwiwZA5xQQ6h8XrPNk3WwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="39211893"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="39211893"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 16:06:23 -0700
X-CSE-ConnectionGUID: rVoCCXeOQl2Vg0zY/YJOVw==
X-CSE-MsgGUID: Luj96tuORV+cccDO77lF2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="81233191"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 16:06:23 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 16:06:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 16:06:22 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 16:06:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ma/b4zl3/fY0yVe4+g1G3UWEk8j2QjSJioTNbfW8v/VQa2nWly9lFB4uFMJM1l0SuA1DnQGXSsdD7QKFeblykaZU4fPJVQwM/MCGn6b61QK7hgUGIib32kMvSVBuBW+toRvns8pCIVkQzmjXfqtSHOloVN7URiTNIJel2r87kViHsglvaESxyCNj/0lI2Ud0zcJl95smyr7gXiI+M6tIeKBlIuGVXD7nSNvzUKq2duNLeXI2Rbl4+fNi+J/R6Jxg1bORe1pyMcne876pM9W0Qc2CIljY7MH2RG8BlZikjTrjyRUGzFOdiho9fJRDDkKbbTQQUURJ+BDUdNZXbRO8tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EjvaIT6Gzks3jZp3YhzIvdFVix6wAm8YicE8u7avEI4=;
 b=OZJkxfIDcA4cUIMpntfZvNbOEXtOzOaaUyjBr3IqFJ+izYyE095lzpjVxXC4JfbZ7X7v/4b8pUAyn9ORjpvT3OQsEv6pU6rUvg6Us2FOu7K/cbpTDE1/S+2sKtWbq+TR2OqCGrSkdHrxAQTwfsi5fMMvmo2BLfnUp+k9ejdQCueo1ZP02CnfdzlhEkI6ol++FfHJ/28jJtqpNvi8J5JeGwUS+zXuF+eF9yY+Y9p2c0L4lVAbMd3CjEPVmqT9Bl8xAPOXP4useYa/4uD7MW2NP/fZBGqEpROkVErzp0b9qzliBLT+PnaaloEyrt8Wj0OjHh2h+h2D9k7nYlcPeIqD6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by DM6PR11MB4738.namprd11.prod.outlook.com (2603:10b6:5:2a3::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Wed, 9 Oct
 2024 23:06:19 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::f174:29be:e20c:113f]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::f174:29be:e20c:113f%4]) with mapi id 15.20.8026.020; Wed, 9 Oct 2024
 23:06:19 +0000
Date: Wed, 9 Oct 2024 16:06:17 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: <suraj.kandpal@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Suraj Kandpal" <suraj.kandpal@intel.com>
Subject: Re: [PATCH 09/10] drm/i915/xe3lpd: Add check to see if edp over type
 c is allowed
Message-ID: <ZwcMaS6oVZneqURv@msatwood-mobl>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-10-matthew.s.atwood@intel.com>
 <87jzehbtkb.fsf@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <87jzehbtkb.fsf@intel.com>
X-ClientProxiedBy: MW4PR04CA0268.namprd04.prod.outlook.com
 (2603:10b6:303:88::33) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|DM6PR11MB4738:EE_
X-MS-Office365-Filtering-Correlation-Id: 076dec32-0964-479c-dbe2-08dce8b6fc47
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UXE1Q0JxQ2g4WHhIN1lzMjJRSXhJWXN3NFFGaVRXc3c4eThTOGVTTlMxeHg1?=
 =?utf-8?B?QVNMcW5YWVpwTVYvZG5ERWo5ZldBK2NsM2NGTzV0TXpaczc1bHUrNGNaQWJr?=
 =?utf-8?B?ci80bGE0am5QbGo0TmpZOEh0V2l4Mk9BemhMd0FZV0tEVUh0cStkQXJQaDhl?=
 =?utf-8?B?ZXRURU1DT1VYSUdVR1NqTW9vbHhWOXhaWTlUQWZsMTNXSXZyNnlHbEhKbWJH?=
 =?utf-8?B?Y2d4aTVjdTZuSzdUTlUxODJCbmJNTWd5ZkVxcXNqVmZjVGtnU2dBY0plbHRP?=
 =?utf-8?B?RUZqaUU5WUJ0VUpqMWJFSmM3YnorYzdwYThVcEZRZWRnSFpJV29BZG0rRXNS?=
 =?utf-8?B?ZEp0ZFhVT2p5dyt4UjRsY1p4N0hhN1RCT1IvWWxJcmhvWVBHUlEyWmtvdFZj?=
 =?utf-8?B?Z2N4S1BZeHVoVmN0YlRabCtvcU5OdUlIQjlSeXo3Q0ZJNldVbjNQaStjVVdQ?=
 =?utf-8?B?dmRZV2p5UmsyTGVsNGhnY2RPSVZHWGFScnBaYkc5N0U2V1V6bk9HbjlSb1NH?=
 =?utf-8?B?NlFjTStFYmxkNmZGVVYvYW1XMFByT1dmNkJrSnB3S1V4ZUdRcGc0dnhBbXJi?=
 =?utf-8?B?VmN6MkUrS3lsVVk2ei9nMVI5OEUzRnNaQm1nZFh1SkxKcURscDdDc2RZM3c3?=
 =?utf-8?B?ZTZMdWxUdENPSHRabUUvVEF6ZERWbmIrTFhtUEtZaHBRQW12aHFhNmZIQUo4?=
 =?utf-8?B?Y3YrWHhJcnNmLzVuRGhDenRBMXY1eVpQR1E0Y2srUXZTOUx0TGxhaWlxdGVP?=
 =?utf-8?B?OWlKT0x0RTdnNlljQkVXNkJESXkwMzBoMlNvVFhQNTQzem1YdDZtVk1SYmVV?=
 =?utf-8?B?TGhFWDEraHUwVmpTT3JyWER4TVVCd3VNcmRGbkJjSmFrQmRsUDZjNFFjUVpT?=
 =?utf-8?B?UGVReUF1dk5aZEIvRndBem4rYjJScVdRTUdubnBPZy9adHB0Z0J0bC96bytT?=
 =?utf-8?B?YS9TYjh2ZUVFYzEwYWV4ZUk0eDVJVGs4VkExTmJPd2RYbVZVQ2lYVXVpcEhO?=
 =?utf-8?B?WjhwLzR4S3d6cDlOcWJvalRzeTcveStJV0ZxV1VrOU9IdThlNWJ3cnNsYjRI?=
 =?utf-8?B?L3Joc3cySVBCY2lGNHZ4SFl4eW9NUzB3cDcvS0RyQmw0V2xNMW9uTmJmQmQw?=
 =?utf-8?B?cldQanpVQnY2Y1g3aXNoUDhUN1Z3UEgrcWNqS01YZFg1Q210VytKQmU4ZTR0?=
 =?utf-8?B?emw5bFRZdG5Temp6SHZRTXpHVTdXS1BnQUlTYUwwSG9xRnM0ZExKMEVQV21D?=
 =?utf-8?B?MzdwOVg5eGQvajZwKzVMaHNxTVJTT2xxeGhOOWN2ZVBrVkgwenVXeXRnKzZj?=
 =?utf-8?B?MWVxMDF5R3NRUUxLZ3lPOSt6elNxa0thZDEyUmhnbENoSEljMFh1V3ZnUFpy?=
 =?utf-8?B?T1p0WXFoWXRHcUdsczhtUHRVNkJhSjhDZS84Uzd3R3NjQzJNM0lLdCtEQ1M2?=
 =?utf-8?B?dDFQRVl1U25hekVBUSt3S2p6RjErajAvdFBnVml1S0NPc0hWTllCMWt3dmZ2?=
 =?utf-8?B?TXRYb25WTUg5MlduQzR4Y054VmR4emViQU5EZXpRL1pWa0E0L3NlUjNaZzlP?=
 =?utf-8?B?V1BlSzBUa1VJaGdKUGUxYTl0dnBKV3ppOXlHMWs0bkgvTzJraDViRkROdzd5?=
 =?utf-8?B?ZGM1ejNaMnRPMUtGbXNDZXJFdzJpMHJvOEtTSzRMb2U2ZGRlMEJZMzVvZy9C?=
 =?utf-8?B?YUpXdE9xU3F4VWNsT0crcDEwNmtiaDAwL3hiSW5LU2p6eUNnTkFNcEdBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RExKTkpuWm1vdlIxMm5OQWJBdjdvU2tBVXppc2lpY3kzSmdTRGdIRGhTSkM5?=
 =?utf-8?B?dGxjbVNOWDhiMVE1b2ZqYXdIUzZuZVRFQVBUM1VuUXFTSjRod1dRTzFBVTBm?=
 =?utf-8?B?bHpQL0R6dG1QbXZnbWdpZjAvOXg0bHYzS0FNTGZ3Q3pVeWtqdFBzWFZ2blhB?=
 =?utf-8?B?ZmZKRWlMNVBtN2NLUHd2aWJpNThMN3hLN1RCZFJsUzJ0alU3U2o0M1Nkd0gx?=
 =?utf-8?B?eHlkbGFDNGcrdHYxQ2V0Z2tmTEdPL2pua1ZVWmx4NFlkZjRhWmxpdjJpSklO?=
 =?utf-8?B?eitLR1V4MjZqWEhIZ28wUVB4MmNENDVTQ1dJbnlHL1dDUk56TitMYjh2SUxh?=
 =?utf-8?B?WVoyWWV3MG1mOXFoSXUwVXZhejB2WWJodi9KZGVWeFIwNHROclAwOUZreU4w?=
 =?utf-8?B?cVJ3eDlGa3BqSC93cnlvTFR1V0JCNFRwN1lFMVJmQUFGcGFpQ3B5aVZpeCt5?=
 =?utf-8?B?cWNoV2xNOTZvWlN6Qko3Z2RGUDFiaUpmUWVuR1BFMjJRTWd3bEpQSWZkbjQ2?=
 =?utf-8?B?L1RFZmZvclRsSXVNYndPVlFsKyt2TElYSG9ZaHpYREFvSDA5bjV3Y3JqbFkz?=
 =?utf-8?B?RHhXOVdlLzU4bmFwZjZVVWZmcWRkQVVpNXRKQ21JWCtnSXdMWTNlTVBDcVhF?=
 =?utf-8?B?R1pkOUowQTY4Z3N0QUdrOHdZMTZJcFFaMkxPRFYzZ1F1UUgvMmo4ZDJ5b0xT?=
 =?utf-8?B?d2FKbVlqY2hZY3psaEFKcVJmY1VZSDFtQ0d3ZVhGNmw5ZnZrV0NHZFdNRXN0?=
 =?utf-8?B?d2gzMWdvd01KSWxiM1NjM1U2UzRMNHp1RWE2YlpORW1Ka1ZhM1NuNEJidG9L?=
 =?utf-8?B?M3o0UVIvbi9wV2pxWDVLNUJwYjM3eFRLSGYxck1YUXA0SDBqWmQzSGY0VTBr?=
 =?utf-8?B?T3lmL1FRMmtaUGx2Q3d5dUtjeG0rNEJHa0JQN0RZeDNMMy94aW13eFlLTzIv?=
 =?utf-8?B?MGgxQ2lHanBQanJ4Q3NUMkV6dEJDc2ZGSjB3Q3RYWlVUV2FTbVdaM2RDTkVy?=
 =?utf-8?B?MkJtUEpBVVRBL1VPUGorRGhZTGFESnQxckpvK1kvSndNeXc5UzRIcTZvZ0dr?=
 =?utf-8?B?a1hEWmwzcmtXMWRxKzIwLzhhdlpHd09LR3lxOEFYOEl5MnJGSDhSN000a245?=
 =?utf-8?B?dmNVTUpzbHppUjdLSXBiVGZmOFBpYTBFS3IySGxhMHlSN3UyQnpSVEdGSEpG?=
 =?utf-8?B?R21EU2lMM3oxbExrR0U2NXFXQUZoVm05TGV2RGtYN2k5bGdlR3dJallBMUxF?=
 =?utf-8?B?ajFjMUwvQ2tvaUg4RExqTDNjRzUvY04rUzVuOHlPWnVEa2dIUDlPcXA2d2xU?=
 =?utf-8?B?a1NiZzFON3VpalQ0b2gvNEs4Zm9KYmF3aXhaVVI3dWVHc0pUTzlqbFZtL0Mw?=
 =?utf-8?B?bXkzMFlETzgzdE9XY2pSK3BDQ2o3RHAwQnRUaWFUSHV6dnE3SGlDVXdqMncx?=
 =?utf-8?B?THJ0bFQzU1Q0bUUxc1MrczMrUUtKcitRUEhpeWhVRDhLc1VscXFka1FlRlRQ?=
 =?utf-8?B?bVZZWCtsSnJwQjF6VjNMYVBDK3Z2TWxOb01BRzhaVkFROW1ReFZ0MUswTGRM?=
 =?utf-8?B?L1JiN29RbDlQbkZVNmpoNW44Uzcvb0syb3VRdTB1UUFSWGpNaHcvQUMycEdR?=
 =?utf-8?B?NE1vemV2emlmVGhlRi9IbG1sQ1ZETVd3ZG96dVEzR0w2MXRENTNxd253Tmh6?=
 =?utf-8?B?RnVQV1hPNStQZ0VKbWZ3Wk1Fb1gzTkJ5eXY0RFNLenM2N3poSEFxcVE4d1FE?=
 =?utf-8?B?RnF0MEg4ZnZzVDB4Ny9tRHMrRU5lTldUU1hGaFVES3RNbkE3L3lhQllEUlFT?=
 =?utf-8?B?ZzVicncrNUtqMUd5eUxrRXFmdndaM1JnSlVUS0svenZXd2lqeW95UDlXVlBa?=
 =?utf-8?B?WmZhK2FXSWlzb0dneEx4R1BCMXZwd1B3L1lpbHQ2bFJoTlVZODZuOXJ6TUox?=
 =?utf-8?B?ZzBqWHNoMHRpWm8waEJlL0RudU5WWEV2dW81S0c4aFA2MVVWZk5xZmtzd2F1?=
 =?utf-8?B?OThkWGlUSDlJbFBBVFF2UFRMNW4zZ3l2Ty9XL1RpSFlEaWwzaU1GdlJaUmNO?=
 =?utf-8?B?NmZ0Vit2SmFseG1WaTdiQ3J5dmlzNUFlZ2RaemtrRTVlWXFGUlJlTTNqNkJM?=
 =?utf-8?B?NklkU2pFN3VWcGpPWVQ3emd5bFBTOUhGS3J5MzlsYm10bWU2RGk5QVllQXl4?=
 =?utf-8?B?QWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 076dec32-0964-479c-dbe2-08dce8b6fc47
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2024 23:06:19.5586 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ePdFhTe9g1C0SXapWS3elIsqoLnrjZLUYGoXYlcApdiGkk9OjmNHy1kV3zqDC9BLjy6thyiYEdnxQ7TNEmRCk5f1OE6aUorUPa+7QW8Xxf0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4738
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

On Wed, Oct 09, 2024 at 10:53:56AM +0300, Jani Nikula wrote:
> On Tue, 08 Oct 2024, Matt Atwood <matthew.s.atwood@intel.com> wrote:
> > From: Suraj Kandpal <suraj.kandpal@intel.com>
> >
> > Read PICA register to see if edp over type C is possible and then
> > add the appropriate tables for it.
> 
> There's clearly more to be done for the feature than this.
> 
> >
> > Bspec: 68846
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c     |  2 ++
> >  .../gpu/drm/i915/display/intel_display_types.h   |  1 +
> >  drivers/gpu/drm/i915/display/intel_dp.c          | 16 ++++++++++++++++
> >  drivers/gpu/drm/i915/i915_reg.h                  |  3 +++
> >  4 files changed, 22 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > index 0d6f75ae35f5..1c8c2a2b05e1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -2261,6 +2261,8 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
> >  		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
> >  			if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
> >  				return xe2hpd_c20_edp_tables;
> > +			if (DISPLAY_VER(i915) >= 30 && encoder->typec_supp)
> > +				return xe3lpd_c20_dp_edp_tables;
> >  		}
> >  
> >  		if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 2bb1fa64da2f..e9dc7707fbcd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -158,6 +158,7 @@ struct intel_encoder {
> >  	enum port port;
> >  	u16 cloneable;
> >  	u8 pipe_mask;
> > +	bool typec_supp;
> 
> The register is global, why do we store this per encoder?
> 
> Side not, please let's not abbreviate stuff like _supp for the sake of
> abbreviating stuff.
> 
> >  
> >  	/* Check and recover a bad link state. */
> >  	struct delayed_work link_check_work;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index fbb096be02ad..917a503cc43b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -5570,6 +5570,20 @@ intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
> >  		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
> >  }
> >  
> > +static void
> > +intel_dp_check_edp_typec_supp(struct intel_encoder *encoder)
> 
> It's not about checking anything, it's about reading, right?
> 
> > +{
> > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > +	bool is_tc_port = intel_encoder_is_tc(encoder);
> > +	u32 ret = 0;
> > +
> > +	if (encoder->type != INTEL_OUTPUT_EDP || !is_tc_port)
> 
> Currently we warn at connector init for eDP type-C combo.
> 
> > +		return;
> > +
> > +	ret = intel_de_read(i915, PICA_PHY_CONFIG_CONTROL);
> > +	encoder->typec_supp = ret & EDP_ON_TYPEC;
> > +}
> > +
> >  static int
> >  intel_dp_detect(struct drm_connector *connector,
> >  		struct drm_modeset_acquire_ctx *ctx,
> > @@ -5595,6 +5609,8 @@ intel_dp_detect(struct drm_connector *connector,
> >  	if (!intel_display_driver_check_access(dev_priv))
> >  		return connector->status;
> >  
> > +	intel_dp_check_edp_typec_supp(encoder);
> > +
> 
> Isn't this something that should be determined at intel_ddi_init() time?
> 
> BR,
> Jani.
Please respond to Jani's comments
MattA
> 
> 
> >  	/* Can't disconnect eDP */
> >  	if (intel_dp_is_edp(intel_dp))
> >  		status = edp_detect(intel_dp);
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index da65500cd0c8..5f5a6ade5f8c 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -4583,4 +4583,7 @@ enum skl_power_gate {
> >  
> >  #define MTL_MEDIA_GSI_BASE		0x380000
> >  
> > +#define PICA_PHY_CONFIG_CONTROL 	_MMIO(0x16FE68)
> > +#define   EDP_ON_TYPEC			REG_BIT(31)
> > +
> >  #endif /* _I915_REG_H_ */
> 
> -- 
> Jani Nikula, Intel
