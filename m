Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 505CFC729EF
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 08:38:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABC1510E6EF;
	Thu, 20 Nov 2025 07:37:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tgpeye2z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 287EC10E6EF;
 Thu, 20 Nov 2025 07:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763624277; x=1795160277;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=R4hAo6O5Pwr29Ynuod0uhmlOSmfYdf+GVY7dh9KcFnU=;
 b=Tgpeye2zmTWE1rjedD8bEVlcObbfO/6WViu8sqnDVSo1p/Pbrs1/nyLF
 YRv5pRCNrh64uc8zojMqTlO+lGd10+mrT9iQbPuKDFZzxR4DMHDLQOYpi
 t41f0Slunkn48u0gccWpHSDvnCIqTI7X5yE9bU4ORpYGXZnYyrCgj8OXK
 VmoUu798d6oPV3TD4a8THhb91VaAVzlmwnguvaZEDkXnscPvIycPFMC+S
 KKhoRxWUUghLUZMRYS/uM+D3tS9IKgJmQzP4obdlbIAsV79Cx+TyErxly
 X+CBuiLRYND4xdqh4ZEewf64epJUo7fwsEi/46LtCeiKyWY6JihOaGcVg g==;
X-CSE-ConnectionGUID: TedQyJWfRmCCcg2ruehLXg==
X-CSE-MsgGUID: 6pVBopoTTiyVMdvnNDStFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="64877386"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="64877386"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:37:57 -0800
X-CSE-ConnectionGUID: VkRonDpiRa2ucnpp12skfg==
X-CSE-MsgGUID: CkMpOOTFT0Ws+2YocR9tUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="191546875"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:37:56 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 23:37:56 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 19 Nov 2025 23:37:56 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.62) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 23:37:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aF/FiaHW/DDkmJmEM099DaAsvF7ZROTG/1QSu7KNrJaUErXoeX0sNEdDsq0xhYzBJCwJusp0vx25A+98/JpIyucSgT8mIR1ERFeIM0Uf0PHJ39xIY332zrtZq5ePpREDU4EzCHuPtIaRT9QMmghcpzEAOMlej1bCsnd79qsLAEHDyOTVZo1ISFJOw4hYnXSvnlXEmLGivgwSU1BI/z/j2JegRZljIAyJFep4087Zn6WQWa22O4jn7ZjRIV4AUHS0CKJl5AL7wjgPyR3c8+EkxwNZ7H3uMjeRQzzMPUaM17g6bi1T4nP/ajOJjrcZUOwIhzwkNORY+w1CpniOWM30Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Pq4Rn3Ke8FNYTBmctF+blhw7c4GbIvhUGLljg+2vvk=;
 b=JpBimyx6vWCXE93JteLaLn2UThojGzH8QoXV5spWRS1WBmruulyvqX4YIInoWFEsBB3XqCXwmoVT40E1BA42/TaKoFY32xD8yc6SWYupCq+hBCRt4RnicTviUQjisGkvlxL+TOq1g7wQRQJbXiXJbJUWyWOszW2oO8QWUgNHDRpNAbIzYU3nwNHGXtWun3kEv9oZYRODsUTTachAHpwxnstoHpDXWm9ZkLe+5zqU+SsAU1wbI2gOy3yyV2/DOrYWKQWbSQXqfASrOifIfRobK8E6YEtnuDP7F4HJuGVjU3pqxXIG6mgK/OiGAypjGoP8v0rWwMXxdJ0nkStZh1ocBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MN0PR11MB6301.namprd11.prod.outlook.com (2603:10b6:208:3c3::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Thu, 20 Nov
 2025 07:37:45 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9343.009; Thu, 20 Nov 2025
 07:37:44 +0000
Date: Thu, 20 Nov 2025 07:37:34 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>
Subject: Re: [PATCH i-g-t 3/3] tests/intel/gem_eio: Avoid skips in stress
 subtests
Message-ID: <ykfdpk3uadafarhxchldmgstltr4sl4fxr2up3uzhjamxxgp6w@6ohfmk5rkiqm>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20251119111205.1297907-5-janusz.krzysztofik@linux.intel.com>
 <20251119111205.1297907-8-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251119111205.1297907-8-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: WA1P291CA0009.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::20) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MN0PR11MB6301:EE_
X-MS-Office365-Filtering-Correlation-Id: 879e348b-fc1a-4282-d7d0-08de2807b162
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QmdOd2JkMDdEVmkrUkxHZnRuc3Rhb04rNDhyMWt1ZTNuc1VPODJ2Q24zd0w4?=
 =?utf-8?B?WjdqR1VPVEVMSjFYcGtQU3RLcVU3a3ozTzB1ekRaMTFkMTRWTFU3dnpSWEIy?=
 =?utf-8?B?Q3V0UE4yMURxbmVVeXphL3Z0UDhVYy9UZ0MwK25jSXZEaG9jaHl3QUJ6ZEc4?=
 =?utf-8?B?OXNpaDFrQk1pcXNoZDhDUVl4eHRodzZoWGo2RFFCY0RidlFkdW82YllpRHJ4?=
 =?utf-8?B?K3JyQlllWUNKWXdKWlg1ZXVIQk1VRXRLVlVEVDBneFZ1S1poU3lzbXhHR1py?=
 =?utf-8?B?OEJuaXAyTythWjZyMUNhdUI1UG5LeGJaTk80NFVzeVV0L2M1VndJb2I3OGxi?=
 =?utf-8?B?R1BTSXR6SGZ2QjRneUVyYWR2S0pxZUgyUmxVRTRPRDZzN3VvcFgwbjRLMVpG?=
 =?utf-8?B?cUZMZUptdGg5U1pIUTJKQmVaUFQyQnpzTDdZUi9YRFRwTnlIWmczVjhFWklq?=
 =?utf-8?B?cmZURHVLR1Z3TFI2ZG1Tc01oY2twVDcvZkdYM3ZMa1MwWkxRTXNKSmlXOTJ6?=
 =?utf-8?B?OGxNWVZkRVNlWnVaYWdjY0JUT09iRGVLR05qMjcyK01waUxCRFJ2b29oUk1L?=
 =?utf-8?B?K012dFZBT2RIV1dMWGwyNkNxcVhxVnJSZHhLM0tFaHA4Yldjald6eExSM2Jk?=
 =?utf-8?B?V05XR1dmVWpFUmxuZ3Y3bmx6bWw0b1o4SU91aFZzNis4OHh5ZXpkUEpEZUgv?=
 =?utf-8?B?ZUxLekpHdzhVWGJnR0gxdkNkZ2MzSUljY1E3dlJ6cVNldnVIS3AyYlJyZEZH?=
 =?utf-8?B?UFFHWGYxdGhmWXYycmQ3aENxcjBVYys5TXpKa1RIa0xxOGJJOXRVQ0pBM1JJ?=
 =?utf-8?B?dVFmZ2pZT3h6Y3MzQzBkdXpsdXZYTklmN1ZJNFVBdDFzb2JhMmZJVHRTWmRS?=
 =?utf-8?B?RUcxWExYaG5BQUhlZ29GSlplZVlLQnNHcEFLQnBYd2g1ZkZ3eGRmcHdTTnhH?=
 =?utf-8?B?MHlxWityMHpBSXNQaVp0d0h4SlJoUmFwTmtwTHJwTW50b0hXQTAxQVRnR1l6?=
 =?utf-8?B?NFlZdk9KcEFwS2IxaTc4Skh3ZGE4U1pzK3I2ZVpERlNJM2dUUXlZcUEyaGFu?=
 =?utf-8?B?dzdpdVV0TXB6akdoTG9tT1VtZXhuTkRKRUo1L3hoZVhiUHpDL1JJM3lGLzhJ?=
 =?utf-8?B?RVlQNlNGcHFvSkZnVWpiME9naHc0S0haU0F6a2k1a1MwT2hob0V2ZFFiWHdH?=
 =?utf-8?B?aTFqRUFmdDUvR3ZJQ2hETnBhNUE1UFpCZEdTQ2xNNDlseUFIc2c4QUl2UjQw?=
 =?utf-8?B?Ly95bFRnTUgvYzFsZEMra1VwT3FkcDgzeXdZZWpBZlRBNXBEY2p4WFREMzRX?=
 =?utf-8?B?OHN0R3AvM3BxOUJQYXdFNEltL2lnRUp0MjBDdHVYUzRLckVkTDZQM09yanpK?=
 =?utf-8?B?VHExZnJEMThwNnBrenJ4MC93MUd1VGFsNS92ejRoZ0hFdzB3cXQ2a0lMNk5W?=
 =?utf-8?B?d0VudWRZQU9rTEV1QzRMY2ZBTk5QWGppOWhFNURpRW9hTHh1SElPMlpKSGtG?=
 =?utf-8?B?N3JncWZDZmdhTElQWFk1YTJXTi9JRk5ob0l5L0Y0ZDJXRmdKNytRSlBKVE9Z?=
 =?utf-8?B?eWpHNWIzdmpLNGpZVVBPL0hDb3M1YUhPVWY2WlJzNDlCSHFEclZ1NmZqZDZa?=
 =?utf-8?B?bFpJMWVSVndQOGN4OUVLTzhBVWtqREpSK21MMzl4VjlJOWc0Vmd2MUJRSCtk?=
 =?utf-8?B?enZ2ejJLQVpma0FYbmk3U0d1Sm5xc0EyNnQxSnF3WUJGWnJ2cXJqaGJtUXc3?=
 =?utf-8?B?VHhEVXFXaWI5U1hBeFdLZ0tHa0ptNitnQm53TnRxZGxNTXVBVVRHT2pKQ0pi?=
 =?utf-8?B?eTJjKzExZjZkVTh6aVRWQ0QzSVBkQjc2WU1IVXVBQTVjbWJJd3ByVS9FbVBO?=
 =?utf-8?B?WnBOcmJzQ1ZvcjROei9ZUGJGUXZHelYvd1NVeXZ0YnJLZ1E9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVcraTBxbFRmdVEvZmV6MTJPYUFzY3I2SlFrOUh3Y3plaER2T1dlaERDV05z?=
 =?utf-8?B?ZFY3YUZuOVNaRnRraXZ0M3p1ek5YK3N4RFZVWFMyNjhuYjFqMGVBWmRoQllM?=
 =?utf-8?B?cnRnUmpCcFl2eXRXQ25TU29ad2Y3MWF1Tzl2TVAvR1NaVUJqcmdJVHFxTDc5?=
 =?utf-8?B?WDFMaTI4cHdGNE04T0FxNEpKdk5SUEwyNE1JOEp2TlVNNVk2Wmhsc1ZJRDVy?=
 =?utf-8?B?dnVMd1l2MFpEMjlYWmFoZDh4ZnlDTzkwMHo3ZEJRbzM1S1ozVllWSjBxOUly?=
 =?utf-8?B?azJBUTh5OFZDWlVCOU0yOFZoU1NWUmpmSkVJQ21jMEVmckxyVElYSDcxQW1u?=
 =?utf-8?B?TWxabTVFYkZQSkJIUHpsS3g3R3duMUs4YWZ6Q0FFRmVnb3FEYTg2QWdub2h6?=
 =?utf-8?B?MHJaRWdpTzJ5OGk5L1lIVjBOQllEUHJqak5uNTRlN1JycWlZbElWUEhQQ216?=
 =?utf-8?B?czg1R3kwRERmSVdJSEwwQU9sMmZsWnpwT3hac2lUd1RNRVhqaDVnbStCWE5x?=
 =?utf-8?B?WjZ2MmV4dy9CT3U1blNZc3V1bjVmYlFtdEh5eThraE1GMUtmV3k2SVRlUkNt?=
 =?utf-8?B?MkZjWDc4U0hCNFpQdkpyL1hBeFA2Rkc1OStndVVFb3dlNTM3bHJidi82TkVS?=
 =?utf-8?B?aDQvaTV1SXBlZ25JZDh0YmdxQko1R1UzOVBUSGVPc2t4TG8wNEh2MzNaREsz?=
 =?utf-8?B?RWYxVEVKMU5vbU9mWFdUcGdoeFZjU2tCaW9KUzZlL3VDU3hzaGUvMURiSDNC?=
 =?utf-8?B?M1o4MnpqTVpYYXM3Q21vWjJJaVJWME5FWGxSMDdFQTBHR1d4VlNvME9ENVBB?=
 =?utf-8?B?MGdpQm5aQzJSWHZ5VHpXQ0x4djRUUGxyd0gvZWxqOE9ZOUVKN0RtblBya0Q5?=
 =?utf-8?B?MzFvbVF5UEZzTEpLR0FDL0hpSUJjQ3JZeVhQWlFUUm1MakJSVVQvMDh5YmRQ?=
 =?utf-8?B?K0VQOUZDMTE0bi9YY2dwZFlWMVBlTmtMOGsxSTZuM0dLSno5ZzdCVHVqWm9z?=
 =?utf-8?B?Q0ozRmZHZDA4WTQ0aWg3aHNJN3Nqdm1aOStiWU1LYU13RVZPdlh6OC9WNU9p?=
 =?utf-8?B?UjNvZFV4Z3FYUzNkTDFBcFFFRWlYT3ZuTkw2eGl6ZGdVL3VqSW1sNHUxSG4v?=
 =?utf-8?B?bGVQR0tYT2dkaEJXUWJTaUdoQlFnOFA5SW1XUXZxVWNvQTI1SjJaS3dVN0w5?=
 =?utf-8?B?QmtDNlJKNlNMR1RZTzhYK0Z5TkFUYXd1Y2FNQzZXckx4ekFOWlVxWWVjTElD?=
 =?utf-8?B?bmt2N256ZXhvNE9PS0NET1FKaGJQSTM2aVhNM3c1Y1l3RDlLc1JRdTJaUUpa?=
 =?utf-8?B?RHQvWjYxUlJOK1lIMUczY2lpREhmRFFGbmdJSWZ1eUlpY0hWMEZGSVpwNWZD?=
 =?utf-8?B?ZHdoV2JBd1BtSXJjWUhtNWRNTzh1MnZRdTBFV2NFNzViSmJScnBWS01rRCtR?=
 =?utf-8?B?QW5DNm9vZmRyVy96Ynh4TWdvZ3JlQUgraHhXSjBoRFA2T3Z0WTcrRlRPdWtM?=
 =?utf-8?B?QU9BYzBiNUJMTHhORlNLYVlrUXJOVUJPNmtOVWpEMmV3aVFqZWlKUFBLaFJ6?=
 =?utf-8?B?dEQreUVjUjF5Umk5R3AwTlRVSmk4OXU1d05wc0M2dGtvTUlMNFZ2emxVZnFr?=
 =?utf-8?B?NUFOWXNuZlRkN21JSlppYlhuQXlaNHlBK1JpNXluSEtnTmZrSDJLVEpIa2dF?=
 =?utf-8?B?czZqNWtoUEZKVktjakNEOURRWlMrWkY4NHZpbWlYUnl5bDByeXhOSU1VTXVJ?=
 =?utf-8?B?QkJZdU9XUUhLWnVmak5xWTdhdXdkRGMwREdFM2lEcHptcjVqMmhrQmdaYklu?=
 =?utf-8?B?b3lZRGNwYlFVby9MODhSV2toYnBwMzZ6Z3d5Zi9Qdzlud2RRZGtlMHlCbWU0?=
 =?utf-8?B?M3JneVZDcWxqSmd1UlpoOVNHaUxsb2Q5MzRxV0V0cVAwWExxbFUrRmZkV216?=
 =?utf-8?B?N1dEQjJ1ZEp6YldYcEp1RHEyNTJFVE40dXEwUHBTSDNQY04zTUNuT082SlFC?=
 =?utf-8?B?SmdYT2thRG90UFRqMjI5Y0dGNDdIZ0s1U2NGcEpTUEVuNkxzMVlwWnBHOUZQ?=
 =?utf-8?B?SHNOaFpKZnBZbWZjRnZLQ1R1OG1BRjVaQTh6TWxGdEJJRzV5cENaZEJUREEr?=
 =?utf-8?B?VktXY0ttZDJEdFhteHhodzZWaWtmN1ZuZzFQMFZIN2FyL3BHQUpNdURXTGk5?=
 =?utf-8?B?RVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 879e348b-fc1a-4282-d7d0-08de2807b162
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 07:37:44.1679 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QBCz6mtNMHFHlAwmWiI8Q9/2lQyg0r4sTSfTs1IrFaNT/4HLbBn8FMJ/xFSgyaBlpB4U+s8jcvdVG8A8W037KViubKKm8AaGCThVYo+w7Lk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6301
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

On 2025-11-19 at 11:57:22 +0100, Janusz Krzysztofik wrote:
> Now that the subtests have been converted to dymamic, and each dynamic
> sub-subtest gets its own pre-test timeout slot, avoid skips on too few
> measurements collected within a presumed time limit by still extending
> that limit, now with no risk of per-test timeout expiration.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15178
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/intel/gem_eio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> index 5981ae4d71..16dbb57a04 100644
> --- a/tests/intel/gem_eio.c
> +++ b/tests/intel/gem_eio.c
> @@ -931,7 +931,7 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
>  	gem_write(fd, obj.handle, 0, &bbe, sizeof(bbe));
>  
>  	igt_stats_init(&stats);
> -	igt_until_timeout(20) {
> +	igt_until_timeout(30) {
>  		const intel_ctx_t *ctx = context_create_safe(fd);
>  		igt_spin_t *hang;
>  		unsigned int i;
> -- 
> 2.51.1
> 

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
