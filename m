Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D5C903FCB
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 17:14:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C214A10E0D8;
	Tue, 11 Jun 2024 15:14:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iGAXdtpa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E905510E0D8;
 Tue, 11 Jun 2024 15:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718118846; x=1749654846;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pYrOLq5O8mlNXiuPzyXYeWKRJdluScRqpBy29lwk4Mg=;
 b=iGAXdtpaAdeVeHOXBwABLBKezqiKQVN9YVrxuCFqb7vNiegqftxhNDmF
 uvwO0ZvqYUWL/2VO9l9dxdEsp1hSTy74Cm10Wal70trrgVN1QFjnxzDX9
 jtz2zd1LRsfv5hPjgF9A05/EBhtW02CY1R1nYfcfdTPj2owjuLb+uVz3D
 CC6yq8EohUy/a1+3fjzNbv7Jn93+9u5AvEZAei8RE0c+4UgxJ8Y8bK6IL
 ooonOka4c5wJBbWz3lb1yxOK79fflnsSLBhKRZOEBKKreNeYzb3TweamZ
 QF0qdKucfaCrcqnXVJkUrDxT7ANyYu37IsHcudS5FaymNtAajInf92oHT A==;
X-CSE-ConnectionGUID: tD4U+nPqRt6xVLem8loZdQ==
X-CSE-MsgGUID: Kp3nwInsRaCbn26NQD81Wg==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="26237376"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="26237376"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 08:14:05 -0700
X-CSE-ConnectionGUID: ONygbU8LRxm4UIn+B8Uasg==
X-CSE-MsgGUID: L2WTDKn0SeOLFW25neUGEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="44596301"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jun 2024 08:14:05 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 08:14:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 11 Jun 2024 08:14:04 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 11 Jun 2024 08:14:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c3mqPcD/xQiTmoynvD3I9sPS6n78wuRyMsk04ulHggjc/aqw81nt/kzD0VxcBV/l8iXC8exPpzFdy6QwfeyW8CW6Orz32wuaGXO+K4FRHfzWQi6rfSFtunJO7lQKowmKUNhrCATHULl51+kmTpj6L80u3qUJeiAdgAgKdRTA7HcX26vMOafevaZK9yCvDQpPibmR67ikUY+A3wURR6QT2/F9/r/UWALQ4vVepRXIsl2YXabqjNl5ssge5l9nNKi+kjSp2x28j8pkqpuwajL8haZDmvjtBFXCFU5kvSCpf3cHPIpsj57FReTNVvEJYc+/x7aiB2h3vrMDca1/7CebNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mu8DLoMmUecbnfzlWf3XHE83uulnJcsGqBF+87RtG/M=;
 b=Dy64w6JaVX/+UlHdRiDG+GT70ZWMdyNyata5Whvm+7bYkOPK4N/lUzAy5OTod1CAkMw4D/hezSDk9SVzhNleV1+J+1nUVsZ3kNNVb13Tnap3XSumSgh4SyTrXem940hD0iRa2i8Es19I8QDLCc+JpRWQ9RhubPU4QseR7lk5BdsTzIFkxFyK9rPzgu8WfFdVzOYP5dfTEnuOZgFENCB9pHfehdjUqspuebXDwOgn6hHELbZ9dIihPSjXZmJQUs1CuGgzEhLQa799di7QM7X+FOZn9STK6ARHdMaYyUsaM01bzebDZ1deG5PmuCLsT+/3BBuh66DgcBEnQ/j9Q5Odng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6135.namprd11.prod.outlook.com (2603:10b6:208:3c9::9)
 by PH8PR11MB8105.namprd11.prod.outlook.com (2603:10b6:510:254::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Tue, 11 Jun
 2024 15:14:01 +0000
Received: from MN0PR11MB6135.namprd11.prod.outlook.com
 ([fe80::3225:d4ad:74a:6d7a]) by MN0PR11MB6135.namprd11.prod.outlook.com
 ([fe80::3225:d4ad:74a:6d7a%6]) with mapi id 15.20.7633.036; Tue, 11 Jun 2024
 15:14:01 +0000
Date: Tue, 11 Jun 2024 10:13:57 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthew Brost <matthew.brost@intel.com>, Daniele Ceraolo Spurio
 <daniele.ceraolospurio@intel.com>, John Harrison <John.C.Harrison@intel.com>
Subject: Re: [RFC 0/7] Promote GuC ABI headers to shared location
Message-ID: <gchhlqj7tjvvw6zcay5mgo3vj6cne2t4nnyx3q6o6zvj3nbgkm@c34yvslcl7ji>
References: <20240611143008.1900-1-michal.wajdeczko@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240611143008.1900-1-michal.wajdeczko@intel.com>
X-ClientProxiedBy: MW4PR03CA0179.namprd03.prod.outlook.com
 (2603:10b6:303:8d::34) To MN0PR11MB6135.namprd11.prod.outlook.com
 (2603:10b6:208:3c9::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6135:EE_|PH8PR11MB8105:EE_
X-MS-Office365-Filtering-Correlation-Id: 1fe46f59-c29a-4759-1491-08dc8a291fe0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230032|1800799016|366008|376006;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?plkxjwydgQXtqTd2IkV5xzuZMz/Ra9To3It+Sg0apyVUSgBM6Yc/gH6NbRBM?=
 =?us-ascii?Q?2BSQJ+OtH/lHwZHpAUwAE5JwMPk/aDV+XjqTbW3Lcnt7mM4B5lai0m3sic8M?=
 =?us-ascii?Q?9lUZ8eLUi0aWtXJrZ9JpdwiIsvokEiRLNUNK2vX7+G0M/3NlzdH0VyHFx1A3?=
 =?us-ascii?Q?VEnK1oiCk4vTox9esjwXSs0WyOTQxYeFznJLzD7hbSIdZk+AMe0IitPxkiVx?=
 =?us-ascii?Q?6KXkerxtZEaHss3tJXPegud1vVpJ4yX2Uwhkumsc2X1OfGCSmbxmXG4nDW/h?=
 =?us-ascii?Q?aKsSLtoyOz3MHB4bxnMio4bCGfYGUlSh1UMcMWdwRT/guYJ53xdhdjSY9uqz?=
 =?us-ascii?Q?JqKAlxdXojzOp6Z4O7wkkX6gvYDBrHcEyPvbC8iGyIWKXZGMPI27CugjpUi5?=
 =?us-ascii?Q?XwAQS/8RbiAJOmkdLBmgGjCAkNPM/JbSuIkHWS0DjkBeE0gYffgkcT9irFK4?=
 =?us-ascii?Q?LAm56ZB4mHAXVJf2E5DpyrkIOr5tIZgWK1rjywTtskt1tI5OopuOgwH4c+oF?=
 =?us-ascii?Q?RtfSD57BRsOrVprPx/yu7ANuTZZ6w9WpYRmtc7v5dxia1Wkcui+nDYvpmYAj?=
 =?us-ascii?Q?8zpvvBrHsbXAVoftDepkOlD7ORAAiZ/oGKZSU12mW+nvZFIdcNjxGoplX7uL?=
 =?us-ascii?Q?NWgaHRvipxLX5vhmWC/O42/FzUt/FxUkB8IipXnSfZ/5cfyikNCKIzLXqGHS?=
 =?us-ascii?Q?thrazcWgcQyB5yh1n9r08DzA2Nk0QmtM/8oJhm8OWD/jGqFTtXnJQaEOHiWK?=
 =?us-ascii?Q?6B+jMGgM8OMfypVCXstMWUwPFmZhXI4seva7n4r088f8Dag1HzMujLj62tqr?=
 =?us-ascii?Q?3pDLxFQC0T+fo1Vw6P8chlNRYqeQnqk5rAUguWDUmirsQ8kwuglqOaaXZ+X9?=
 =?us-ascii?Q?Z/v288HHUh4SePUMZfQDXDL08Eo6e0yJ6JmM1aWgAePwRGqF/sEUlkRxj7Wh?=
 =?us-ascii?Q?v266DcqHeEIec+fneN3aaGW+iVudFDWs2bchrTkbZTQJrOK1vqFjDkyVctuc?=
 =?us-ascii?Q?ChfEr3mIJXUB4f9EDlv/KPKIbB9cEoQHj9He45yzOvqrTnEqCwcJWuUPdKGG?=
 =?us-ascii?Q?BwXvYXpqiWdM76hMBXqSDWq0LvOobfhMv0sk/AwXAa6tuzifpSE5iP/zrxji?=
 =?us-ascii?Q?xMTctYpconSIhOpq7tEfX3CorUK4ZT/sq/AMzgXk5V7OHCxD7IAL5+GA88xY?=
 =?us-ascii?Q?zXUd5efmglk7EyaiZegzRJ7D55edneBaw/tGJiMOApRSzhV+jOeqKzRZYvd/?=
 =?us-ascii?Q?ZN/Sng7JNIYeOI/vvbUA?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6135.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(1800799016)(366008)(376006); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oTMRcrSGW3X7oczqVdyXzU7vq4z0r52suXRYt/kGQ0vumPoN8wHf6zignL4c?=
 =?us-ascii?Q?xajtJyGrw99gSQl0i9WWdY9FA+uOxUKe53VR9QBL0vWM1VcTDXLb7MJlCHyt?=
 =?us-ascii?Q?dKWOuFUlmYJZ+0oeUvh2Ab9UcdEiR7MSb3crGXGI6TcgBQCHkMXhPz6aq3rX?=
 =?us-ascii?Q?58AxGhjHsgec+YsHqxZX9CwQQz1IhOUgxLsDBtEXcHlu4vgQljBFew3hgZQD?=
 =?us-ascii?Q?tnxeANkLB0j9qOJF8A0NGp/zE8ayM/dCx0ALnnS4/E5DPCQyM0uR9u0ShNsC?=
 =?us-ascii?Q?0L6H1jfVNG68EgmbYjRyzwsZANHExBhji6d+eeDI5xWl8rPvKuitc00661i6?=
 =?us-ascii?Q?FEUdSwTxvdaX3EDVa9Z6Qv7vfg2iWwsJNYKB0enJgdQF4+ZuhHJTwawtlBG8?=
 =?us-ascii?Q?2iqGAzCku5w2J6Mou/GQsFmSMZSl7yT2/Ae2dFybOHrTKJzB8I7sXfdpUeh0?=
 =?us-ascii?Q?nuYBJkE2q+to7Tv0OLk7BSSlNNy2yp8L2ZGox9Oeu6NYTDHborIzdECpr2ol?=
 =?us-ascii?Q?L28V/UBqI4vwb4dcPhxvwMW7L/FsmROEZlZPK0gOYdnrwovi6PTJZogC3ji8?=
 =?us-ascii?Q?WAkpJ6Eg6MfJQ6SuTgvh05oKY+bxEaraYnS+rFL0g46Tb7pygo5a508IKCvn?=
 =?us-ascii?Q?kySlLyDZFDwJC7Kt8otU43bE8KoXIEFp3T9piQrcrzMwDry4/vh2xlAtCPxY?=
 =?us-ascii?Q?A4kSyGyDGK+DHseym4/y5vZXjavW/UR5Z1P2J0s3GwuoOZpjzGHNVngQOTRB?=
 =?us-ascii?Q?NYYSIPR364rNqIwSlpVb1GbK+fYZt4uHIgUaTE5crrL+nQf2MdMxf/+OScns?=
 =?us-ascii?Q?YNg4uhtN4rUUM+R6jnWRprid21BPtZDsb4VBKRf8klHEql2nS58n6Vk0L03A?=
 =?us-ascii?Q?DgXF1xIv3BfnFg4rTMePfm6Tf6sWiQ54ESCsQuco2p+jgM+C70oMmuEgCJkv?=
 =?us-ascii?Q?BGK0hY1F1LTzep/Om8DKpzRc1Xlw9tlt4XT4Jdye4YCk7NOhe2YxkO0UEQrN?=
 =?us-ascii?Q?3Zk2LKhb64XbR98FMccGJoF+BBol0gAdfPqnkAJltSTeIKG8Zw2UorWLg+ao?=
 =?us-ascii?Q?F181OZ6GBiXqmfCPzl6vdHG6EsDAoEErDQlgJR+ZN4q45IGheK0PZL5fv04y?=
 =?us-ascii?Q?gkueHwVAXx/0rGQF3F9DlTKcp6N8FMXJV29F4JGo9WoLa/7hRCfm1WnQ2ZpZ?=
 =?us-ascii?Q?yy4q3gH04bpjxL5YjFrf6JSOXC6t5+HfdGqM6mezhM1lA2mA5kHIJNWehNRw?=
 =?us-ascii?Q?A9f3FcsRx3avTGsj/HFA2mTcPWcfkyAIov3GtDys3PbzT+6xSJCRxyYt+gGz?=
 =?us-ascii?Q?jH1ns4L/OJgIkAGHyXnHGlem95ZgiuZofcM1mguxQ5OtY0ADXVKM+wgGobgT?=
 =?us-ascii?Q?fLiuhjQIwJXoCnxzZNN7znNdxBrYJL08R180tGOiSxm3/WYyZW4qJfvLChR2?=
 =?us-ascii?Q?1NtHucVbrvdJHc2CdHMRQadFiLHrGYqIkpgT4d+rLPJ7OXPxwQCzsULyt25u?=
 =?us-ascii?Q?r4aQve58SnYe7CvzyD1rHrKZJRngRIcvH6T0zs+nVTblELPSRCor50P9oPvI?=
 =?us-ascii?Q?7BjFdN4x3K9K2M67tx38lE4HZLYn7Sq+T8lZYzuAFAE2UhirLNmRJOtKbeHp?=
 =?us-ascii?Q?uw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fe46f59-c29a-4759-1491-08dc8a291fe0
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6135.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2024 15:14:01.4038 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PSstQQthMv5D14lZ+tiKQrUDu8hneI6rDw45Bda9ctAyRZye1zAf+6/Sq19veHW6+qpiJYcl2f+V95/R0hfM3y5229DPRWMkgWmxKGn2IrI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8105
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

On Tue, Jun 11, 2024 at 04:30:01PM GMT, Michal Wajdeczko wrote:
> rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_actions_sriov_abi.h (100%)
> rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_communication_ctb_abi.h (98%)
> rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_communication_mmio_abi.h (100%)
> rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_klvs_abi.h (97%)
> rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_messages_abi.h (100%)
> rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_relay_actions_abi.h (100%)
> rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_relay_communication_abi.h (100%)

I think we are preparing include/drm/intel/  for this kind of
stuff. See https://patchwork.freedesktop.org/series/132263/. And I was
surprised this was still not applied.

Jani who was dealing is this stuff is already Cc'ed, so I will
just wait his feedback.

Lucas De Marchi
