Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5D3A336B8
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 05:14:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54DA810E2C6;
	Thu, 13 Feb 2025 04:14:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="khgBWxsy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D41A710E2C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 04:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739420057; x=1770956057;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=dqpaf8EyfatW7RLXcMogLUaSuBkMpDV6u5MyE/Xsb7Y=;
 b=khgBWxsyVHp9i6hSgQIHdbm7dcaOFSnmSKbuwanbhi5HUZgOelHSBkEm
 asbQxqbyHsUvZPYB/7AErysv5/uPMOCABoER8OZihWJWJWTytMD1N8xqW
 FU1yi2Ybfgtp4XuWEjBSSHxvWrheJEt8n8qGAIZ0LiDZOAeHLehAHuh4x
 eM3iRXi2sr5Q7WD++ph/rJklrU0GUErgNT28QYzzXsTL8A47NwpUWUbUu
 fBKfUdOM4U0WHQYMmxHwcCuDy/uxSKT0xSaV9pfNxaAUlIyBqus27gsnE
 7RSG+Lb7WkitsgLJG0rpKtdcv8wNNKhoBiephMGGmGwACkFKailH78WPM g==;
X-CSE-ConnectionGUID: fGjV04u9Q0WQu9NNxU84Ow==
X-CSE-MsgGUID: H8bsiZAnTZSf9QmQuo2V/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="40231376"
X-IronPort-AV: E=Sophos;i="6.13,281,1732608000"; d="scan'208";a="40231376"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 20:14:17 -0800
X-CSE-ConnectionGUID: 28IOI2q6QH+a3x96cbo9Zg==
X-CSE-MsgGUID: 8bamjXozSI2uIjEYj/Y8Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117134678"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2025 20:14:17 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Feb 2025 20:14:16 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Feb 2025 20:14:16 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 20:14:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i1ZDbvRWSBVSxpfa83ypWj9/xZ2OcGnXxzxqCs3uCVCBMOlmUenSB/BnxC8DEYSPdFENPzyBpjNk/GW/VzJvBD2TjjW+tHvGg9PtSmLQxuunzNbPS/WOwR3N8R1ZIM1071q10hBf+8Uni+FthpTEex+y0Y0hGHtNjG2T8EpAJocUnwnv5gMHAXPHeLW8FOfG3AxiSc+nhAIQQ2DCDdpqZkEKtGXyHRDfD5SjCqBQedpysaMJGHgMnXfqPQlwNrfyGrkEYbcleJvbFSDAWmKGe2lJJ5RGqfP/Bgn0qrfatusimeOsrXkP/odnv9X/hfeZREQ2ie+HKzIEA8m8W4AFgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DfnjRxj3eHRLNa3zhrAloAFuKIFs77by0HBj+8TMQzc=;
 b=MhKS4Ju5lXWWq2FWw0Ch91ByfmQ40rrAOm/6Dsm/GPbQJRh6a+8XWxre9rW4gRwouEYSi1sL4EPYYPV6MsDrNoOGoUTqaVF8n12XzOoSFxnDGoTKn+VWpH2mn+GylI1iQ1xRREB8txmuUaAZQxvIxdrURolSbEzrocmvyL6de6GPAx6lx37+lxHLv3Nf/kMl6BFkW1XGBVz8H9YeC7TERu4RszZtMaOyYlyPDfUZ7Fc7SN/KLkPsOWIIiP2zDaSTuV6zXt9fSsLOKAo7H7K1qp1dlHW2AHagJM2g7GHaE9XhyRo0/PB4CFjRp4yul5U5hx44pb8cU4RGg7H+s+mK3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by IA0PR11MB8333.namprd11.prod.outlook.com (2603:10b6:208:491::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.22; Thu, 13 Feb
 2025 04:14:00 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%3]) with mapi id 15.20.8445.008; Thu, 13 Feb 2025
 04:14:00 +0000
Date: Wed, 12 Feb 2025 22:13:57 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Liang, Kan" <kan.liang@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, "Peter Zijlstra (Intel)"
 <peterz@infradead.org>, Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Subject: Re: [PATCH] drm/i915/pmu: Drop custom hotplug code
Message-ID: <cwvprdbmmvblivbjfs5seoivevdjetkjw5meabedf3yfaq2gmq@anrdku3mderx>
References: <20250116222426.77757-1-lucas.demarchi@intel.com>
 <aded1225-0022-4e86-845c-283641cf32a0@linux.intel.com>
 <pz7y2i25y5o2ox46s3ua3prsa5ap2mkqqb5chtebw3f2egwk6n@5m4xibw2h5yd>
 <6d4d7f82-7619-40bd-bbc8-58681de54a6a@linux.intel.com>
 <rtmoiu2z4vg42efvz6mwo45eaileyghqowibdzikob7mlnklbm@bz5cc5zkalcd>
 <e15c89bb-88d6-4caf-a199-2febd067634d@linux.intel.com>
 <szokgaqqg22wu7ufam4ab5fnnf47ei62urn6gpgv2rise4h4qt@a7zb3uqvyc3r>
 <891bade1-42bb-46b3-bfb0-b3215f201ed0@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <891bade1-42bb-46b3-bfb0-b3215f201ed0@linux.intel.com>
X-ClientProxiedBy: MW4PR04CA0295.namprd04.prod.outlook.com
 (2603:10b6:303:89::30) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|IA0PR11MB8333:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b869ec4-843e-4f7a-2cb2-08dd4be4d7e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?G9I2xKznt9WLVrK7REyEcpnXtePQ5sBwKX+M6LjLLqcwOKjKw7EyTqW7/n?=
 =?iso-8859-1?Q?G7GjqPe+oTQGB6xoKAoDbtaAcbRKaE8MJ2zU8IVGxn6rLB9SETWWKQ6uaj?=
 =?iso-8859-1?Q?VfiZbBC4p8cUb5J1NO8r2w1NoMrjJ9lSxbksTWtZf0SXeI9JvV6Gm9gSBS?=
 =?iso-8859-1?Q?M9RlschTSfDwnHDH/N0G0RtU9KzoUCv/Z9H8yDjQSPrhk2RUdyaK4V6OsV?=
 =?iso-8859-1?Q?xA94/gfbmOadtVnjQJ/WEPjR4nY9FCFJwaIWoHdtr47KMM9aP+wkaXutzW?=
 =?iso-8859-1?Q?6b9eF57MaAH0n95+KzIBiJQ8lw9L4viyaeGOKzfX3T00Pbpr/l6oYymtd7?=
 =?iso-8859-1?Q?uWKL7HREdNZoy+vJhMsDKbwbjH60AWcRdJlk33/hKObYohryqS/NRPCHSq?=
 =?iso-8859-1?Q?B1Yh0miS407DPSaYpk1NDXNM8pJ1kSZIt7CIvjzeSkfZuTdZfVOzGGFX8M?=
 =?iso-8859-1?Q?w2gAO4LCclnWoncmYNF1qBchmufbLCaDX9KOCzuVJLCF92dEtQR/jdAvRM?=
 =?iso-8859-1?Q?mD8a+thWDhFbFBB3AhE/lgU1AqpeZJWxxuqrSGaRCUzOJp36z/BQ0VSWpc?=
 =?iso-8859-1?Q?7mfBsBV8OFfFcaqXilT9Pob4rJg2GofEPgWDeLl9qzS8LOWVDNPuhR9VLz?=
 =?iso-8859-1?Q?YyuR6YA/G6cl7uqmHIZLNTmmP6upFsXH2HflAxFdjBDSZnAtexmpqyha4Q?=
 =?iso-8859-1?Q?VLLLOLRmOVFQHDRBROJ1HIRIC9LweAm4dwVdVBWXskSANBeAJhryqD7d0e?=
 =?iso-8859-1?Q?AwXQcDyC8IB1t9q0OJwvbAGLo+5gpalRepLek3oB91uAPPwWzrcTp2Qvlm?=
 =?iso-8859-1?Q?qiplVXfUh3Ly8ZD2UjwIDgEbWUaBwA1p49KNckDn8k1jdQoC6391pPJDw/?=
 =?iso-8859-1?Q?EdSMqxA/Z58x0DR2Z6nDxJala6kXjEFleLjDj3cbqaCzLCkln7nh8wOOM6?=
 =?iso-8859-1?Q?1fIgQngpRGw8KrKLp+Nlfb+Kk5PZxG8SfH4jLXUif018+fw7oUETkkarva?=
 =?iso-8859-1?Q?xc20ibCldLH5PanlGDbkF7hMCzfx+MnDgnEbr/7ELr5dWVXAsJRlynadDe?=
 =?iso-8859-1?Q?nXdWGu+M3qr6vRv2mm/PL3F6agisO4zAL2R1668hLG2QTqu+mkLIFvsnU8?=
 =?iso-8859-1?Q?j5326jnoYlTXB9XZ7/xBs5unB6AjtLv48EHgdu7ZVlybqxy6IWtpcN7LIB?=
 =?iso-8859-1?Q?vwRW8R2/C95OpzzDqg5H7v1b+8pbdym9gJNe7gE2NWApWNvyD68hyGrcJ5?=
 =?iso-8859-1?Q?fqGaiLIt9ZCv0RrXcG2bTqinEa+w12Y5PdJWKOL9HGa3Ev0luiT6eGo5xL?=
 =?iso-8859-1?Q?YCP20BJmSU2weOvn8eP+3rYGb/NY6TORIAyL4V6zI1uKqsprRd/mqXWCn+?=
 =?iso-8859-1?Q?EP8OUd5tOV4y1FD2USjAlFf2Wf9dGkxFYwm9BYcfTkcws2VNVFgBJXdl3g?=
 =?iso-8859-1?Q?fa4q/WPTCEh9JWcr?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?E3zfKskn6FrlHciHfeiN/aKAaNbszABqhEOkYGv6xQiHmF9OLEaexiyNAq?=
 =?iso-8859-1?Q?1v0DQVP8fLDKo3+AUP1kZOBAReO4CjVgC6MKA5QhFEbboxubMQhk82lDOv?=
 =?iso-8859-1?Q?XeMX3hljrFBcmJCDI9Qk4H3Aus9XrjXJvibsq2KupklC+TDvzVXWcqb/5x?=
 =?iso-8859-1?Q?aQRCQkE05irxgG2jbfQwRqU8TIIA65Z/6JEH8/Z6CuyALWn5+WxH8iI2Pp?=
 =?iso-8859-1?Q?yYxmYvf8BOOAfRdqfTVNopORHG2FAG0n7taPtsEbUVMSBE4YDCj/9fcwTM?=
 =?iso-8859-1?Q?/83ASCn8lKVlWX7fFH1xJ4cSpKLmC+sVjPiYlPXge+a953Bai/ZnZ8DQqW?=
 =?iso-8859-1?Q?tw18Bf3HYaJBzg9nTZQNujlpeVgV/UO3O2Q117QmALdw+jMvGHJkyScZOh?=
 =?iso-8859-1?Q?BEzyiI1jGli8uCsFYYfQGNMPy0RX8IaIUo2zbdf8JiuKcVGyVn8Ty489kh?=
 =?iso-8859-1?Q?K6aI1xa/7UGnD/yc7+OfnR5VtZ0iG+d0yYtKtvHOUied73if8DQLqzYxd4?=
 =?iso-8859-1?Q?ZBIfF7pspLFCaIStqxQUXyM4IfsNcpoYOapuBzsyGPxIApfcwyABnJOaQV?=
 =?iso-8859-1?Q?Km8KSG2UTHF1QWqNW3GP8WF6V14M9o11aYoopkGjVE076ZVbkQLpwxlOM0?=
 =?iso-8859-1?Q?9Tsg1aZPJnMGO52IeA/ClyJjzsiMYvl/ln9UZZ1S5jgkcFqiQlGkRwJREb?=
 =?iso-8859-1?Q?xt6d8z7z836SHCzIvGDGr+jmVKjEMo+dNll+n7IDjydpSQuU+tx6+12rSE?=
 =?iso-8859-1?Q?cnXM9eGeusU7Sz4WhhE2i8GypRI6xj70guF+Zdw5k+t+T4l3SGgpRNkJcf?=
 =?iso-8859-1?Q?fmdQ+h80Sv4Chm4qEbOhWNaHbTvZ/y9GKyDGFYuMpBVu+R8hX2lahg+8e9?=
 =?iso-8859-1?Q?7ee4XxcRR1wgFB8i8EFIyXZ6Q1MqWzZqtIxc0NuZ42+riDyoQMDHJ9xK91?=
 =?iso-8859-1?Q?iPs407006IU0aSFiHKgXZiiuoL2/Smki7wCRiDv4Cb53sD2r9LAWMk8aEq?=
 =?iso-8859-1?Q?q/fQM14soEev66nvL5UZG2WisG5sLGZESam1aQimg2bosGMJpSQJAv2gxR?=
 =?iso-8859-1?Q?Zx7XFhf0ZCJAr1bMwgz0PRJMPYm8Twi2pK9nsLE1sAOvMSjERk8iCUs5CT?=
 =?iso-8859-1?Q?BLgtww4Y6GC+IGQbSpXpjEH4ifyAGXTEihvwxK8XK6VZYh0Q8FIWoPB7VR?=
 =?iso-8859-1?Q?mrGajaP3kK1OQ7q078Ghkb+7BYonqYnkZ06Z/cwTWMesCy1NS4Rj1oXcED?=
 =?iso-8859-1?Q?QelT/pX7WtNt3jb1r7E3Oc+4cjNF1izvaPxeHLlcvOuSCuIUrqREV97yRC?=
 =?iso-8859-1?Q?yfnULzT+V5TLPsW/Ma6HmuVomle196Dtb/osF6+5aZboa4LRtXnG/Xdejv?=
 =?iso-8859-1?Q?djGvzRheOkncyvas9675q00BiU5wnGRtP1YOopy0lcVcKuURi/nN5rw7/3?=
 =?iso-8859-1?Q?BUbnsrA7PXcFDaxYTwqUkBDkcAqlIPZSuR6wVpVi5kWGs0f9kXnGFaeON8?=
 =?iso-8859-1?Q?Dt3S3Z+vm3y7/6PKMG7Mpt4DTEgcda3R6SMpPPxDdJqFDsCKJ50qfSGe6Q?=
 =?iso-8859-1?Q?mUyQSxfvCsLCUn7Oq1Uartr/x4HSJgxE29vhUKKeXZchlee1Zx2uw998rq?=
 =?iso-8859-1?Q?MDXu12KLnRwSjujP70Q2h9POfPdk62tlh383ndQPP2S7sg05RbU8MIwA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b869ec4-843e-4f7a-2cb2-08dd4be4d7e1
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2025 04:14:00.4984 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /TACxyfC2DSySgXtCYmfIakFAAAIcOsHxnJT55KiFDI6bAybK7Gsh4v4JgYgovDnVz9IYxRydMguY7aUYJfr429+i1Lezj64zyyQyJ9eJe8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8333
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

On Tue, Jan 21, 2025 at 12:19:15PM -0500, Liang, Kan wrote:
>
>
>On 2025-01-21 11:59 a.m., Lucas De Marchi wrote:
>> On Tue, Jan 21, 2025 at 10:53:31AM -0500, Liang, Kan wrote:
>>>
>>>
>>> On 2025-01-21 9:29 a.m., Lucas De Marchi wrote:
>>>> On Mon, Jan 20, 2025 at 08:42:41PM -0500, Liang, Kan wrote:
>>>>>>>> -static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node
>>>>>>>> *node)
>>>>>>>> -{
>>>>>>>> -    struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu),
>>>>>>>> cpuhp.node);
>>>>>>>> -    unsigned int target = i915_pmu_target_cpu;
>>>>>>>> -
>>>>>>>> -    /*
>>>>>>>> -     * Unregistering an instance generates a CPU offline event
>>>>>>>> which
>>>>>>>> we must
>>>>>>>> -     * ignore to avoid incorrectly modifying the shared
>>>>>>>> i915_pmu_cpumask.
>>>>>>>> -     */
>>>>>>>> -    if (!pmu->registered)
>>>>>>>> -        return 0;
>>>>>>>> -
>>>>>>>> -    if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
>>>>>>>> -        target = cpumask_any_but(topology_sibling_cpumask(cpu),
>>>>>>>> cpu);
>>>>>>>> -
>>>>>>>
>>>>>>> I'm not familar with the i915 PMU, but it seems suggest a core scope
>>>>>>> PMU, not a system-wide scope.
>>>>>>
>>>>>> counter is in a complete separate device - it doesn't depend on
>>>>>> core or
>>>>>> die or pkg - not sure why it cared about topology_sibling_cpumask
>>>>>> here.
>>>>>
>>>>> OK. But it's still a behavior change. Please make it clear in the
>>>>> description that the patch also changes/fixes the scope from core scope
>>>>> to system-wide.
>>>>
>>>> sure... do you have a suggestion how to test the hotplug? For testing
>>>> purposes, can I force the perf cpu assigned to be something other than
>>>> the cpu0?
>>>
>>> Yes, it's a bit tricky to verify the hotplug if the assigned CPU is
>>> CPU0. I don't know a way to force another CPU without changing the code.
>>> You may have to instrument the code for the test.
>>>
>>> Another test you may want to do is the perf system-wide test, e.g., perf
>>> stat -a -e i915/actual-frequency/ sleep 1.
>>>
>>> The existing code assumes the counter is core scope. So the result
>>> should be huge, since perf will read the counter on each core and add
>>> them up.
>>
>> that is not allowed and it simply fails to init the counter:
>>
>> static int i915_pmu_event_init(struct perf_event *event)
>>     ...
>>     if (event->cpu < 0)
>>         return -EINVAL;
>>     if (!cpumask_test_cpu(event->cpu, &i915_pmu_cpumask))
>>         return -EINVAL;
>>     ...
>> }
>>
>> event only succeeds the initialization in the assigned cpu. I see no
>> differences in results (using i915/interrupts/ since freq is harder to
>> compare):
>>
>> $ sudo perf stat -e i915/interrupts/  sleep 1
>>
>>  Performance counter stats for 'system wide':
>>
>>                253      i915/
>> interrupts/                                                     
>>        1.002215175 seconds time elapsed
>>
>> $ sudo perf stat -a  -e i915/interrupts/  sleep 1
>>
>>  Performance counter stats for 'system wide':
>>
>>                251      i915/
>> interrupts/                                                     
>>        1.000900818 seconds time elapsed
>>
>> Note that our cpumask attr already returns just the assigned cpu and
>> perf-stat only tries to open on that cpu:
>>
>> $ strace --follow -s 1024 -e perf_event_open --  perf stat -a  -e i915/
>> interrupts/  sleep 1
>>
>> [pid 55777] perf_event_open({type=0x24 /* PERF_TYPE_??? */, size=0x88 /*
>> PERF_ATTR_SIZE_??? */, config=0x100002, sample_period=0,
>> sample_type=PERF_SAMPLE_IDENTIFIER,
>> read_format=PERF_FORMAT_TOTAL_TIME_ENABLED|
>> PERF_FORMAT_TOTAL_TIME_RUNNING, disabled=1, inherit=1, precise_ip=0 /*
>> arbitrary skid */, exclude_guest=1, ...}, -1, 0, -1,
>> PERF_FLAG_FD_CLOEXEC) = 3
>>
>
>I see. The behavior is not changed with the patch. It should be just the

humn... the behavior doesn't change when using perf because perf will
read the cpumask and use it accordingly. However apparently now it's not
working anymore to reject calls to perf_event_open() that have a cpu
that doesn't match the cpumask.

Just like before I have this output:

$ sudo cat /sys/devices/i915/cpumask 
0

However if perf_event_open() is called with cpu == 1, it succeeds.
Example:

	attr_init(&attr);
	perf_event_open(&attr, -1, 1, -1, 0);

I was expecting it to fail and set errno to ENODEV, but that is not the
case. For this particular system I'm seeing these values in
perf_try_init_event():

	event->cpu == 1
	cpumask=0-19
	pmu_cpumask=0

Re-reading this: it will accept any (online) cpu of the system. Same
behavior occurs with other scopes: any cpu of that scope is accepted and
event->cpu will still keep what the user passed in (rather than the
calculated by perf_try_init_event(). Is that expected?

Lucas De Marchi

>topology_sibling_cpumask() which implies a misleading message.
>Thanks for the confirmation.
>
>
>> Lucas De Marchi
>>
>>> But this patch claims that the counter is system-wide. With the patch,
>>> the same perf command should only read the counter on the assigned CPU.
>>>
>>> Please also post the test results in the changelog. That's the reason
>>> why the scope has to be changed.
>>
>> it seems that migration code is simply wrong, not that we are changing
>> the scope here - it was already considered system-wide. I can add a
>> paragraph in the commit message explaining it.
>>
>
>Yes, please.
>
>Thanks,
>Kan
>
