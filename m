Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 117B19AD596
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 22:35:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18E3A10E113;
	Wed, 23 Oct 2024 20:35:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UGarm7a7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E96E10E113
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 20:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729715749; x=1761251749;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WU/Zq9nXH9VDVzZQw/iFIONvUCVLxKUXSDl32n0D46E=;
 b=UGarm7a7VKODRb7xqbI/jIIqzJmPYq6Q04P3k0t3kLMWVr3sj2uGxs5w
 pwbmcee8guPf0Am1o5h/OYeRF1iPXYeMRPMFsGhiRWoiwpYfO5yAnBi6Z
 lb/HU/UTUMlMU4++4km3TDiIuyAI8imHBloH2Lwb5ZRsss1SeA/PyT8YA
 OEUdc57dgb/BusImyKxUi8NKkSuKjog443xd+UIpfo8KPkuxb+NZbejF3
 Tu/rIRwkP3wq29lSxms+A0Nl56dndi4bSAXq/515qhpEzBkma7tU58XRc
 JeJI2XMmhxgTVQX9uq9BqSmr1BFCKnbACJvxrBEqhTrum9hDWCvNTX8Nm g==;
X-CSE-ConnectionGUID: aVrHDUlcSVKcIf3OQwdyAg==
X-CSE-MsgGUID: xE3DIzk5QhauuynY6Zn+Eg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46791285"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46791285"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 13:35:48 -0700
X-CSE-ConnectionGUID: C7aeqSDeR5+1UaOrb5Aq+w==
X-CSE-MsgGUID: kH82te3tQHqGnLTOZcsRbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="80297778"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 13:35:49 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 13:35:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 13:35:48 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 13:35:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j+GQH/dmJyYPUuDrnBTheZTWDnzy7SEiF1eVy9tmEZMOFaoEdDU/18WuqS6+zCNCreHYrRqpiJ1Xkn2ZsbvP8N4skdZ93GTDsi9z7OfuStY+zKi21MHkAh7wokXxK0TxuOyS/UFtIbfyCA/q9f8oHONSaROlVNgJc02L4Vn+q+EmMxAozjNkhgYQsrrHytxB7deiC1pgC/skhy/3N8oXAg1IRRtCHmaf1gg0lFagg7HxiWZ3AG+K3IIFzUyz+xJxz76iFZebo0sDj75lV8+9zxvy1Qhdh4iJkWAYk9dfBCVrfXXaUwwefNz4Jyq9B3kHkxMaMYu9FHqhem2GCNmUNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WU/Zq9nXH9VDVzZQw/iFIONvUCVLxKUXSDl32n0D46E=;
 b=UfCqKatXEODaO2yLoyhOmcGHKY50awZfUxhsHLAEBe/XzJeRHVUSXS28AkiurM+z1njH/ruvT+rhbf2ZVRFKmk/jDpH4MVuHF7Vw+nGuQZveSCW2IUSGy3OaCsrN7yyCyTWe0AZHrbeGHu1UwXumBuEHS2l7g3lJgQsci7EhXIbtq3I1rAsqa7P8qaMBmb1Wg06M6zghTVFv+sdOScY4s+zxxJZh0u+zAb6RY7nj5XV34DtoH3i+mvE/FNcerMnzaAypPENjk6vUhrUdVx8xsBIAG7xhCu7e5+0KLAcLSwGyzs1o2EKcqXM3BMldz2d2c7uhQKi337KRIHMBI/q4nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ0PR11MB7155.namprd11.prod.outlook.com (2603:10b6:a03:48d::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Wed, 23 Oct
 2024 20:35:40 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.8069.031; Wed, 23 Oct 2024
 20:35:40 +0000
Date: Wed, 23 Oct 2024 15:35:35 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [core-for-CI] Revert "ICL HACK: usb/icl: Work around ACPI
 boottime crash"
Message-ID: <krqipjhrl7qnvkiyw3ep6kvibftmtf46nojtvha5af2ucqgs2r@tbuxikuhondk>
References: <20241011121729.143932-1-jani.nikula@intel.com>
 <Zwk7CV9Gom6z-GMs@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <Zwk7CV9Gom6z-GMs@ideak-desk.fi.intel.com>
X-ClientProxiedBy: MW4PR03CA0224.namprd03.prod.outlook.com
 (2603:10b6:303:b9::19) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ0PR11MB7155:EE_
X-MS-Office365-Filtering-Correlation-Id: 800e1c6f-4724-46b2-9e0f-08dcf3a24201
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|27256017;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?WkAiEN/4gpQmn3xAbeKqzr+LJtl2E8cIkbBGfKffm1rTOspUeIV9HmL6ZSG/?=
 =?us-ascii?Q?bBXO4cCfRxaZa8C2ydnqx7XUWilRmn58NP+Ya42m0lqtfRJAhjIdrJg40Oaj?=
 =?us-ascii?Q?XUyibKnpuh3d7NpYySq/deEFdN34fOf1XcWdvUZh9OIuJIOKalkn1UBWtmrX?=
 =?us-ascii?Q?NTXM952/wrVbUzHxZMCL2pLPVlMGkFgmq8bQpH+7Czegulsu97qeIDWW+7Wn?=
 =?us-ascii?Q?cmHecdvRWHoIo+AleTjbl/dnAgrts0wNMnS11qcgUz3BwTdrNk3KtIZnPCMV?=
 =?us-ascii?Q?sWHEF1Jznm3I73cbNWMWL4g43cQbEjRtCM+k8EmhbT/Qnl64wEZfkX5SUx7z?=
 =?us-ascii?Q?nxv60kKNTf16indxF3yfFXV6nlc/YoOaC2FlP472VZzvZCo6/VFKwnDiUdvi?=
 =?us-ascii?Q?so8AcLKAdk8Wl+INUYz2sp9EyKQ4h8AnOn7yJ5G5Fcw/lHRpekzRo6oeIPkJ?=
 =?us-ascii?Q?a+kBm9PWIYJmKqN7w6PV+nqeMQnutJvi+nZRQA1HtthgvW+HlJ2ZK7Lz/Rwp?=
 =?us-ascii?Q?3NxYFJ8VlJbgcN+7ZnP7EV8hAZtT58sCNmbUxi4ewkTNtglRrJSK/GKAgdlE?=
 =?us-ascii?Q?h6H4CdnqeaqfAuj6SkjKGD2uTVHnA61AP3fDh4Iv74Ei/6WUJnLLZcZXBKmM?=
 =?us-ascii?Q?iP67a72JnmITguPsram7+5NhRxXRq2bIuftfjlqS8Pyk4egGaol+/1olTjKR?=
 =?us-ascii?Q?38sYVfQDJvogj0eAfPEu097H5uKyQDH2Y1+LQNPtsZ139JNYnyfyAJP8UuBx?=
 =?us-ascii?Q?nIFAbBJw1cvcoAM54b1a5Vt3CQIekqffM8Ytnvn9X3bKUp3JjoVilCXNwNem?=
 =?us-ascii?Q?gv8Txm3ufceVqRT/ZPeE1Of5cE96fe8va/Gtp0vl+N3PdsfL2LORSG/nyS6o?=
 =?us-ascii?Q?Ec42OYQIt6e0WXwJVH79dmMnKRZzy4DJPCKZnPFrWWQZW6zd5v70q944LGj9?=
 =?us-ascii?Q?zC37pOObXnZh+meqe0HpQCrqHoiP9p80b/0/OfJcH4JE+C+JeE7ZVmsTMUUw?=
 =?us-ascii?Q?VL8DQBybL8CYxagWA+7ZXXCWttj8cDAZuypEp8PaYMkxFj2lisRvHUpqI61K?=
 =?us-ascii?Q?AqS6h9mUXYXyjizr59xWf3JXghO3sk2lPOqP9tFg6OQA0nCGhveHamdmO5wK?=
 =?us-ascii?Q?nONhWeYfCHdB4idpOp/HHs3EEoyQXRZv1gTDqMmArWFQk7sNylPrXnlGejWK?=
 =?us-ascii?Q?djTmz3OPEsLZmqcBB7zz3sM1IAvTaWJ2KB59A9qM15Ke9g6UPHN055GFn/CC?=
 =?us-ascii?Q?CLC8vxfGYC/kbO9AeDAYtIpk4oqZ++JCB+KAkqfANaSPVywoOWJg8BonTBCE?=
 =?us-ascii?Q?8iR2S7vYfY2qj8+qZ8DZ3tMxPah7VIS7Y7xsM8fPRQVVcg2Z1xtaMBaz+7LC?=
 =?us-ascii?Q?N6mQNR0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(27256017); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lBjbrCkz2XHu7W+3eVkS5Owa1ug8CvQuRqnim5s7kcWx25AitqTVjpVLuKju?=
 =?us-ascii?Q?NYr9bTyEg5LF41FRyEC5CSEzE6G6UOh9VzuUbUcAH/kL9GoSyL8PqDHgUo4L?=
 =?us-ascii?Q?DVWHzYIdaDkSjihjojjkG9X+c6XVDf8/5QZDZJ5KvC485zdRWpd5qwThufFc?=
 =?us-ascii?Q?AdbrLRztA7NDMdjEFjLPSJ8Zb+tSya/Kv0QLq3bXsFJY9OXVFLDC3Jk1iCPQ?=
 =?us-ascii?Q?2CxTWHFF2x88Cms5FuWUJ1dP8lP2FlA3wt5bopcp9P3tEIaCgyK84FDcrlAU?=
 =?us-ascii?Q?oDQIldimdpO9M5Z3uFezZ7JOO3pA9NRKP8DL1tz59gkyXFkRUrWZ+mISN4Rb?=
 =?us-ascii?Q?CysGBN2yO5cTdJXFxLplO293kNcj1jstpTmszOmjuenVW9Ij0ToGczjXVhO2?=
 =?us-ascii?Q?qivBn7ZSeeBl8xIJxRjwB4c5FjDlfRj+SgWM8bYeU/bZ4U7ZF1cky2xes/m2?=
 =?us-ascii?Q?5xQiXrA6eKNWer5hePTGks/drSAsKaaD2jTGPfo5W3CiJmTINDzIxxXbzqqZ?=
 =?us-ascii?Q?IMtTQ7jJTH/HJwPTUJamuRdmA3oEcvXB+/PjMekX0JfehpFsZLUIfot/XDTb?=
 =?us-ascii?Q?k0hQFVl6qos3AVLhsVjfcOLDlv94S/gKPqMhwYHmGYvjFTN+NE6PzX/Pk7zB?=
 =?us-ascii?Q?QyDvb0tCSfJ6LIcaK30968hHAh6eJPBNI5RqG6CM/tvobaMinxvHPnQejBsf?=
 =?us-ascii?Q?gmh3kKURwpZW+Z7e+pknP4frYrb+pTvbr8PoGb5dNnXc+vcKGWrHN/HzCXOU?=
 =?us-ascii?Q?LHRsZciFUk6K7BsCdcl+YFiMX1vIiZML4fvi9B3U3Z3BbICaWCvmYe77OVUQ?=
 =?us-ascii?Q?lwrAtl3x1fj0WcORm1F1LX4z6AJKLtBuTTlV47ARMbFJiP8w6kBY3mqjYsXt?=
 =?us-ascii?Q?7WJwwDLbH91R2eX+GDbHY7oiXrBKc0HA+smdvJ7c8sZI2L6mo+6n82zmIKXH?=
 =?us-ascii?Q?X7Is91/jaMvX2xmyTqOiLN7/9ccYAJBP4u1L6kFFdokEhISwSj02pF43+4P7?=
 =?us-ascii?Q?ChlFLTAdImeDctEY33PJpl4Wf3JvEekYnDXmgRFlJYn+YYEngESelBhEs3XL?=
 =?us-ascii?Q?DGGCg+X6LbE4nC3VQiHe3vUE89tvoCCnIWn73vZ4TML4a6yBzCWbahKmiSau?=
 =?us-ascii?Q?bYvsT08u8Fq38l9hqOQo4AddJM9BYQKePKgP/4EoKObxxZW7ETb+qt2xGa9N?=
 =?us-ascii?Q?LShtNuKTaANcLlD+tTg/1/avbhD9XliZfJnBOgc7ZTSfpL4V/kMtI4Dg/Spr?=
 =?us-ascii?Q?m58HFrct30L9znUugNL0KcIZKsXFAOM6Y2nbmvuUOLq1AnLnjzr3bDO7KYRk?=
 =?us-ascii?Q?EII9OZ0MWV+DFevoz1HHLp9CcJLNhbN9mume80nHWFzUTUi7XIcgplMo85DP?=
 =?us-ascii?Q?DpT0qo7K8oahG1To1g9icXTanLrj2FWd9gU+1fynRDxXCFbLEANSZN7O46Q9?=
 =?us-ascii?Q?Uih9VJCrVeFPdGIJyG7bh1cqASbO41L7lsCLTNGL2q46Hty95IvjaJorXyO3?=
 =?us-ascii?Q?E51UNjG59ZkGASLtIvT3gWNiLXtiVMGFRgxvpqEBp5dZwG0PRf8u4wnumCaC?=
 =?us-ascii?Q?y8BV/nRO/PtWA+dpmULPpQ/hbxWYc4Ovgnzo85T5opeRQzokGuNlJKt73tCZ?=
 =?us-ascii?Q?lQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 800e1c6f-4724-46b2-9e0f-08dcf3a24201
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 20:35:39.9381 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UX8Bfhxb/rhI3XztmlZsk4rnWhcWqCtSsgHQSOAkfwTKwPSUR/BNdrSj0dDMqtfEE3s5da6DeOAHy6uUb+roKBmJ5XQpW6yTKf/02W8k57k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7155
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

On Fri, Oct 11, 2024 at 05:49:45PM +0300, Imre Deak wrote:
>On Fri, Oct 11, 2024 at 03:17:29PM +0300, Jani Nikula wrote:
>> This reverts commit 8d16a118950c ("ICL HACK: usb/icl: Work around ACPI
>> boottime crash").
>>
>> There shouldn't be any ICL RVP's in CI anymore.
>>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
>Acked-by: Imre Deak <imre.deak@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

And applied. Or better, removed the patch from topic/core-for-CI.


Thanks
Lucas De Marchi
