Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 387C39AE58A
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 15:05:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCEDD10E935;
	Thu, 24 Oct 2024 13:04:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dyKX3FXw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 542B910E933;
 Thu, 24 Oct 2024 13:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729775099; x=1761311099;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wjI+Z/zVtjsTg5zdom0Uu8NGbBzRscId/lMBGbY+6dY=;
 b=dyKX3FXw+MT+m4GaKKBC7AGBAqzIinHQEGXvyn9e9A754qaIARrUjc0t
 oXd2G+Wm4ZL4/cH5g2HkzkPzARjfZ1lkWa46EnoUFk9D2MFbZvXxCURyn
 OPRO7jJVTGvWDYFIdNb16OjEee6BaRSi0rHET43WnI4TcGbbeETjLGH8F
 efnuF+vKxjHsruWtNiHrovujizgUHAizlK4zcq/4lyxBYqaveWfvXkhbb
 qopiwUYtCAcOoDbq44csorQq3s3Lb1ST6c1g3G5ghwCaaDrxrtLCjQJvf
 OtiEyo0Hn3vzTTO+70ZE7iUz7XVuenLiQH6UGkqdeiRwVV1fIb0bNKEuo g==;
X-CSE-ConnectionGUID: G8NYG6JEQz2lS+Wz4y2V/A==
X-CSE-MsgGUID: LgqMg+IyQ6OjHh9bjbHCSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="29506083"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="29506083"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 06:04:58 -0700
X-CSE-ConnectionGUID: I0WP9qntSY2alyJNeGFBFA==
X-CSE-MsgGUID: +15rZ65LQ66Mk1pFT5RaJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80502905"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 06:04:58 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 06:04:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 06:04:57 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 06:04:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lDP8NBQck27EugzyOJHbSWfwjS3tGQWpSQ+jFo52VQ3v49Gd3RMUNSwhcvMM84CaiJUiOD9U85iuYqwPW+EKHtvceIeWLC5UKlFHfEnfkDDguMTOLBJret+I63t0VSL2MknXb31WJmG6DhLflhFONJQVDUOToCm4D72a0+oh59cRYsTpvPljnMK46nzNPSpS0NkXydIke+p67sw3b5rynA/yKbXqth/a/hscFj1fCbvMb+Zov8gAo4w/W9qRzwZxA8EIPIUvTmkXY3dX5PFMll5yla0y/5di+yQB+GGjHswcPVdixJtwA1NM0yp3Yo3PNKF/XyCiyqPy18VJKqLXJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7vDGruNfe0L8GoqnEB/b13aEKKkQNPTeSL4IwrWKydw=;
 b=cBEk5XeYupqDMolw5ja7pLNN6N2LjMlPmKUUbeqyvd2+OhrP/qz1odpOrwvBLB/mdZwzmb50n+zMk8O9uYyqXQBjkUL+XVJdjvKf11IWaGsoPvbnAOWgiGAbCopUuEf4ASp8m6fEprib6wQ/XUCQIsr2JDp8Kuw06Vnb3k1SqhbF0DuR33P7xOxu1/jRIpmfkLzvRaA5E2CKOQsyeAO59G3/8QtL7N3YNIDUiKVyNq+lk8oZ4AR2bSOSSk5/dDQ2i0oFw4yUlm4B4g3KhUYJfeGJTPsoBzDHXwhP8RQ7A8Dx2isIFeVUqwx5p1/fQxohLZr/sepF3OFK02yJuMDY2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB5116.namprd11.prod.outlook.com (2603:10b6:806:fa::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20; Thu, 24 Oct
 2024 13:04:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 13:04:54 +0000
Message-ID: <71c9ad2c-90ea-4f02-bd40-cbe86577d131@intel.com>
Date: Thu, 24 Oct 2024 18:34:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] drm/i915/xe3lpd: Increase max_h max_v for PSR
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <matthew.d.roper@intel.com>
References: <20241024035552.94363-1-suraj.kandpal@intel.com>
 <20241024035552.94363-3-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241024035552.94363-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXPR01CA0115.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::33) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB5116:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ce70407-27f4-4dc0-e64b-08dcf42c7403
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M2NlaE96eVA2YmdvTkh1aXJSK1UzY1R2NVV0YWhYdFN0YmJJeEFaVGFrSWlL?=
 =?utf-8?B?T0ZqSmdQOGZTNWNLeGhEK2JJUEVBN1Zkelc2RkxKb0pMWWMrSFY0VXdKRnRh?=
 =?utf-8?B?TnY1N3kxVEw0M2V5by9JcTZ3TGxmV3VFaDhvOVA1dTJuN25TcVRQWndPYzM2?=
 =?utf-8?B?cnk0eS9pWnBEMTlDSCs5V3FIUlFLRUd3UlQwemNCWFI3NHlKaS9yRVg2Yi9t?=
 =?utf-8?B?aWVOTjg4LzVqclB2Qjc5UjdjQU01NERmUU5TWVo1Nk5QQmJ1VFNLczBkYmU0?=
 =?utf-8?B?R2lTWTRsZ3FFQk9UOFdWRXZ2TzJLWVkwWWxhbXF4SCtDLzh4ZHM5cDJUNGx0?=
 =?utf-8?B?T0hOVHI4WjY1Tzl4WlRNbE5DMVI3Yi81SXorcjhTOXY2bzBLQmhBbnRXWUNC?=
 =?utf-8?B?MzA5MG40bm5HYXBhS0lPT1BCakxTcU4vckh1MDBWVlpYaDNSMkVZSmtJMkNC?=
 =?utf-8?B?UVFJWXVWTHd1dGFKSWdSeXIvbE1RdVBuTFQxYy9mbFRhOGx3aWZRaHhGSTdI?=
 =?utf-8?B?OTY5OVZmK1doUXpCZ2pUWkFiQ1ZIMGZ5a3JDWEZRYlVsci9tN2ltQUFWd0l6?=
 =?utf-8?B?MkNla0laU2VWUld5dGJlbVVSN3JBeDIzNG5xNVhFcFhxaEp3TkN5cVc1YVRB?=
 =?utf-8?B?NkF0L0tXNHpTaHNDTzk4YTVHUlJBYWpHN09hSXYwekRBZ0p4ekJ2T3gwN2h5?=
 =?utf-8?B?SUUvZUpFd2ZuVkpHckppVklKdUtPMUV1OThJUVFJeHdiZWMyb3ZBelFIb2VO?=
 =?utf-8?B?V1pKSEVvbzg1OXExelBsVUdtaFBVWFVPdWRWbmZYRjA3Mkw3dFJxUGJHb0xq?=
 =?utf-8?B?VXF6OGZ4dytiSnB3Qk9FTlQrRWo4WUZpQnZHY21BNEx6NGJta0xKNHFQc0d2?=
 =?utf-8?B?WWZkbjNIbnk3K0VBZ0R0QlZaN3JYREpHdVNZcVQ3eDB5SmZOWkdjNjhxWXZa?=
 =?utf-8?B?cTRuRjNOSWJES0hqeG1Qc3diNlpGTXJ0T1h0RXB4YjNqcDJhOUhhempySGNv?=
 =?utf-8?B?S0hDN1g0R0R0WGZPeHdhb09VNmtpbVViZHhWWlRnSStldWtlbUY0MElzL2Jk?=
 =?utf-8?B?bDBDY0lsb2JWR2ZBUFVWbXdJZE9sKzIvMy9UaTdCcys2dFNKVGUrMFFJUmVH?=
 =?utf-8?B?Y1pzdGZDejR2VFBYRFZyV3hFNk1qaW15MTdXd2I4cTIzSGhTVnp2OXlqWGgz?=
 =?utf-8?B?am0rZHRBTEVEVjhKL3BSaC9rcEZmSXdEdVV2ZngvemdKOFJjMHFrZXRnYTFa?=
 =?utf-8?B?Q08xMEowYys4UGRFcUJrRUxXUE5uaytSaS9ncTBrY3JFZFVMRE9KTmtJSVJD?=
 =?utf-8?B?R2xTSnBhWlR5SnRwa1BvWThJamZHRkZ2NEcxdzNYNlorK2V5eVQxeE1IT1ll?=
 =?utf-8?B?RGxmaEs3VEVOUEw1ZjF4UmFCSmQvaGNmR1BjcE5NZ0xodUdEWWpGa1pRQTNR?=
 =?utf-8?B?THc0MGEvbys1ZkxzbUdhZlpnQnBvcHUrRjZkWkRnaDF5cTNtaE1DRm00UDFB?=
 =?utf-8?B?cmhYcGVCMjg1UXdwYzdFN1VOcTZOeStNUi9qZmEyQ2dkeGFtMjRHTVRZWjRM?=
 =?utf-8?B?bzVRSVZSM1UyTDR6bTVoMkJzZ3FuNC9OeDFjQlJpQUF6bkdUN3BKQ1EzS2U1?=
 =?utf-8?B?ZmNJUkpnVjEwdld2eXJQdGVtMG1hZXBzUEwxWHJhWStmdjVFMWZJY24rT0s0?=
 =?utf-8?B?NUNhT0ZYOFJ5eGJ5dkFTdUt3djk5WDBNU3Joa0hSQXpEVUZCaU5QWEE1cHN0?=
 =?utf-8?Q?7x6IbNqFRC8acBYplK+6NstDTXDk/7p1y3DFkYT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K28ybGNDL2d2VHYrbkx4V2lUcDBmZnRRRkE3bGxsWmJiQVBrck41eDE0eC9N?=
 =?utf-8?B?VjBRSmxvWUI2anNZcmNDdzZJZGxnWlZ0bkFmVGg2b091cmNFOHFRdE1HWGdp?=
 =?utf-8?B?V1I5dUVURi9YVmdacFg2L2M1Mk1pNFRHSGJIZjRpU0d5NlNPQ2srZGVEYVo4?=
 =?utf-8?B?OHllcVlmcnUxTUgxaWoxNHNyNktQY3c2SDVteWplbGZxNjNOVHdSdkRFdU11?=
 =?utf-8?B?RGtEVktpUHJvajU2VSthclpFVENzb2EyempneG04Qk0zcytnQjM4cXgveFFZ?=
 =?utf-8?B?MDdBcWw4SlB2QjVwQ05ManFnUXB6SURvNGo3TTR1eDdDWThKTWc3U3pBUll2?=
 =?utf-8?B?V09BcTlIcE1rSkltZXhLUWsxUUxUMDNSWS9iR1dkWnEzQWNuRWZxYnlveFdE?=
 =?utf-8?B?T1VCQjBnL1JoV21rMUxoNHhndlM2Y0NTdFVsL0M3Q1BtN2FteVdtOEJoam8z?=
 =?utf-8?B?aWRBeXk0ejRka3d1TURNSElNSzVGQTEwWWZVVllMRE5wL0ZnRU03VnhjTzVM?=
 =?utf-8?B?OHVhcWNodXZSZm1OWmh0R1NhdDluRjcwL1h4ZHowZ2NJeElXQU4wSVBoR3lS?=
 =?utf-8?B?TjJYZWZiZ0o5V2xldFVrcGtZdVhQZnRqR29BOVhneTI5WFVTTEJKRmZzcFd1?=
 =?utf-8?B?dUl6TkFLRFVsWFNIS1FVNVp4QTZ2RXlGQ1EzU05hWjNoOUI3eUZxVXByTGZy?=
 =?utf-8?B?NVAveURhVnlDM0JoUDhZVlM3RDlqenlHWkh1NThZVVZVSUpLR3grVUdEdHZ3?=
 =?utf-8?B?Z0R4cmFXOTg5V0hDUmVzR0ZBV3RIYnR5cmxPYTBqZDVURG14ZzlkU0kxcWFD?=
 =?utf-8?B?VndRYnZ6RnZOQmRrQUJmQTRHbDlJR2ZmaTNzUnpaZm5RN3ZkaW0rdUtaYnQr?=
 =?utf-8?B?Z0FMOWlFOGZ4NGwxNWhWSmFITlhJZ1JHMWFMQjRDRndPZW14RjNMQ21SdWxP?=
 =?utf-8?B?bmZqNUpuQ1NlTDhpRjYxTkdsOEZYZFEvR0Fxd0RaWkZFSHZ1QjI3dTNHSWVN?=
 =?utf-8?B?TVJ0TU1CQm1sSUFNNUo2MWp4SkJEcGowMVN5UHoySm05cWhiQWJFYjdWeXcy?=
 =?utf-8?B?NHZDUy9HRUplSjBtUVZSdXpsR00xK0lqZDYwZUFldmd2NWJNOEdyTktZNmNW?=
 =?utf-8?B?MVlHVTJnaFpZUU1Cb2NtS0JJL3l1NVh0M2lRU2tldEVORncrcFRkTlFRYnJ0?=
 =?utf-8?B?NGw2cUNQVllzMk5FVDVQb3lXUlRBY3kxdU5tdE9Md3Y2aHBJRWVWQ3A3emcy?=
 =?utf-8?B?cEwybm5teThMZDI2ZWVaNkh5YVhEd0xLR3hrTEhoTzViYU85WFBYcjF6cE8w?=
 =?utf-8?B?QUpVUDVOd3dPcm5pYkpROGZLSEl0cUdGc2JtS3FKcXpObWJZQVhjYVlaN1Bj?=
 =?utf-8?B?UTRKVEhBQWZQSmhDZGdkcUJ6ZUp2UVJaMFRHOEZ3aVdXc3ZZUkJTYXByYm9i?=
 =?utf-8?B?aENlaUJxd1I1bG14ZWVwR09UVDVMaFE0OGtZR1FhTGdnNWRlbEJLL2hOc1A2?=
 =?utf-8?B?N2ZvS1ZFdkVhcFQxMDF6OEJpWVNSVU5kSnpUZ2paUHNINzZSaFZ0YzZ2Nkww?=
 =?utf-8?B?VkpVRkNheElHR0hFZ1ZuYjZPUmlRTGZpeXhsS3JLcTVveHZRTlBHdDdzRzRL?=
 =?utf-8?B?NWJwYUJJdE5qR3dnSHRTL2V5elp5Zll4aFFYbnhHVUo0UzdlUTRzTTZ1d2xO?=
 =?utf-8?B?c3FiY0RkeTcxeVBRamE2bHA5aVJSSG1GUGRqWGJ0NmdYMC9TeG5BOEptQVM0?=
 =?utf-8?B?RzhXQVoxN1lDdUlBOTRKbFRLRmtudlA4MkJEcll3YjR2dTFUSzlQL1dDbFh0?=
 =?utf-8?B?M3ROdnJhNXRzVllWL2oxMEMvblY0b0pMNmgrYkhkcnZ2RHVtN2lud2lXRVV6?=
 =?utf-8?B?c2d5SEdFcU9wRkVyTXVhOHAwYlNodjBmcVYyRFNwc2tEVmlhSCtkMFRTa24w?=
 =?utf-8?B?c3pyMmRxVFJLWjgvYWNZb1ByU3Z5MW81ektyUk5DYmxWNEZEZ08xQ0JPTWsw?=
 =?utf-8?B?QVdVUjV1bFh0TXgvRTg1ZUc4eG9Ubjc0eUJoSlB3MFJvaTBiMVpRQi8wZUta?=
 =?utf-8?B?dWp3WG12WDV4OE1vN0cvblNKL0ErMUFHN2MvT1hVS1B6d201NXNMMjM5MlFN?=
 =?utf-8?B?S0NlRkJENlJhbS9mMjhpZTdvcXp4V3NVR0s5RzB1bjEybUZ1bnEyaTNZNXdz?=
 =?utf-8?B?Mnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ce70407-27f4-4dc0-e64b-08dcf42c7403
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 13:04:54.5680 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dk8/rAgv0+0qGuTjlJUSxgQJHG1sD13fJcVgYQxC7JwHYakzWmdaQCpPH3Dzf+GkIjbSvp4iEkhG4JVRagpTRql6Q87Zdig9miEofoIQKLQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5116
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


On 10/24/2024 9:25 AM, Suraj Kandpal wrote:
> Spec states that PSR max active is same as max pipe active values.
> Now that each pipe supports 6k resolution increasing max_h and
> max_v for PSR too.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 3b20325b3f6a..8981a180285e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1451,7 +1451,11 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>   		return false;
>   	}
>   
> -	if (DISPLAY_VER(display) >= 12) {
> +	if (DISPLAY_VER(dev_priv) >= 30) {
> +		psr_max_h = 6144;
> +		psr_max_v = 4096;

As per Bspec:69885 from XE2LPD+ the max size for PSR2 is pipe active 
size, so psr_max_v should have been 4096 even earlier.

Perhaps need to change even for earlier platform.

Regards,

Ankit

> +		max_bpp = 30;
> +	} else if (DISPLAY_VER(dev_priv) >= 12) {
>   		psr_max_h = 5120;
>   		psr_max_v = 3200;
>   		max_bpp = 30;
