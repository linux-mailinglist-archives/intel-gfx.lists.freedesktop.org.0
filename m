Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E238BDF7DA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 17:54:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8D7110E859;
	Wed, 15 Oct 2025 15:54:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dQPtraDh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D208F10E850;
 Wed, 15 Oct 2025 15:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760543661; x=1792079661;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NuyigjRgwtrs6K5QfWubyYxIF1bHfqJMH0cdpCOUKEk=;
 b=dQPtraDhiiQlFmL9ChWhGifiIvrd08KUAbuY2qNk+PdNyJ7php5nT+M3
 KmpgHtlp/AjSEpQCSZfkOLVm5K/AS5qRLkSDLYyWwnpgxrowy3ZqIr+Ai
 5f5rR2uR209kHp9ojjXt6H/3PkDp6xqH5SfEgkQJUGI23bl5wnwN9TnUf
 m1sFa6ET1GWPFMxWq96WhATSRUtJYEOMFaHWrF5DXzorjbLcc83WIk97J
 bKKtMF+C6o5bkF8+s9sRezWhm7ChSqNhC0QvnD39Iq6K14MWnpbpls6yv
 NUTt9i0wR6HI0ehHeNIGeNRC7BIjdzKMsMdgLhWEizZLbtmVvyCUCjE5f A==;
X-CSE-ConnectionGUID: w+aPFlx7TLCJsf1gNovlhw==
X-CSE-MsgGUID: Gea2s+HQSx+HfskamlLk/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="66585820"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="66585820"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 08:54:20 -0700
X-CSE-ConnectionGUID: zmbsiU+wTMaH5CA5rtjhrQ==
X-CSE-MsgGUID: 4idf5MCESyOv0AZPLC8Wqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="212819037"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 08:54:20 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 08:54:19 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 08:54:19 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.53) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 08:54:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e73VFWAPSyxC7dG5cn0WehqBzGyog1dfCAKCoOiC97tyHAtByNEC3Y3saHOH2p/qKz22ycF1loY6qZcQLTX16idGuuhykb9skJCtTt8TWIyTowmIcYjd50pdAD3aejBGhHq8Rt6xLalzTaGaayKAL+ZT8Cpvk7360HYkkS06za1QzfOm/W/bptYkzjzEGO7iL2lakAL0kPun7qs9RiQfx53DdjcdwP54A70AsMz9v9LM6qMdgqJUkdVZUW8sNzKYd/0D2UG4kIMhLMtyu0ogvjmrIKZAlFkPB/9759BJ2DvWbQ19GlCaitayz4+gFfdgcUecNaGTXqTps+m0HQexBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rpbuoQ4YcHou/qfxe3ZawcCsFdprxurKyrh+fAhxhBk=;
 b=oqHauW8QC7lliqOGNCIVZyhRMgocvQSUmsmSYSI9vT1ImvUUOCbPB65fKUHO3KxEhRErP2LS/Fz43BOOHOuIKTXXJlUUlZepn+dh7Tg/eybKXhinLWLrr65tSULWRNuCG3jmCXo1qcCIZZ85JC+2Z4o8aGOrmJdCo+XiRIRF3LcgO8GadFrWTlfFCOg/451HIHeavGwXVyKlPkIe9H8kg2FIX1OMw+WVz+KNcq2ZzVCEPcUXQSe5frf+ZHqdKAELCEAIITAIaObjhg2STLzXRXadyVVqv8yeAJy2LdjS8+abrBVDmzYTXFxDVm5Y9N1FDlXFYbygGEHKenCHD/gVkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by PH0PR11MB5174.namprd11.prod.outlook.com
 (2603:10b6:510:3b::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.12; Wed, 15 Oct
 2025 15:54:16 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a%6]) with mapi id 15.20.9228.010; Wed, 15 Oct 2025
 15:54:16 +0000
Date: Wed, 15 Oct 2025 08:54:13 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?B?SMO2Z2FuZGVy?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 05/32] drm/i915/dram: Add field ecc_impacting_de
Message-ID: <aO_DpXZD0aR5xclB@msatwood-mobl>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-5-d2d1e26520aa@intel.com>
 <3a8d9b266399ddf75dcd173e86b57d5b1b7635fa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <3a8d9b266399ddf75dcd173e86b57d5b1b7635fa@intel.com>
X-ClientProxiedBy: MW4PR03CA0183.namprd03.prod.outlook.com
 (2603:10b6:303:b8::8) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|PH0PR11MB5174:EE_
X-MS-Office365-Filtering-Correlation-Id: 8287aa9e-5d88-4752-543b-08de0c03180e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dGxqR1BPSHlWd0xVbGFaK09hbENXUTZFQzIrL3Z0cGdDenhhRmdCdCtFeWJq?=
 =?utf-8?B?VHBpVlNpU0U2S21GRXBQRnNKOTd4RG9UNit6Qy8rNjB3Q3RraDZsa1lINjlv?=
 =?utf-8?B?cnljVnRxako1dDdQU2dCdzVodkRPOEx3NU5HUm41bUNSYlUvWjNDa0wveml1?=
 =?utf-8?B?R1NoOUhaL2ExOVZRRXFSQk1XR1BqS01aYWpkTGhFdEdSVFBEeW1QeDJDNnpq?=
 =?utf-8?B?cnIwVGsrd21USEJkc0hNM1ZXem5CWE4za1BLbXZ5NjZ2dGVkRnRSVko3cEhu?=
 =?utf-8?B?cFcva3duTUF3SVh6aXdBU1JxK0FGTmVHdHJOZmRLNmlmMWtQQzVhYmdHcVlL?=
 =?utf-8?B?NHBlbXMxNGZlVnZoRDlHK3RzODJMbG1BZG4vYk5Rc2hxNGFaSCt1U29nemFC?=
 =?utf-8?B?UFphVmZJY0lQRm5uNWh0d1lRa3pXNWd6S0RZUnNvSzBWejBrMkZ6cGMzdkU1?=
 =?utf-8?B?VjhucGcrMTlNc1RtanRqZ0k0d0N0LzBKaGlnSXdGcmVrbnJxZmtqZ2RzN1RG?=
 =?utf-8?B?TGNGWi8xZ01PSUljZ09TZTBmQ0JPZmtqMjZrbzY3NE9ySklRMkVleGJsRzZi?=
 =?utf-8?B?S1RLQnZ0akdxdDlPTG1zYkZ1Y0M2Mi9uenh3NWdtZDlVUlJZd2k0TCs2RnlK?=
 =?utf-8?B?djNEbjVwbzJXUEhzWk8wb3JHSlB5MGtoZXNVSVZ2eFVxQkhRTjBaL2g2SVcz?=
 =?utf-8?B?UyttZTU5Zk5QYmNKQVd4Z2RVbnBneWxMeVJiVmZXYUVvN3NqZkZhVzE5by9l?=
 =?utf-8?B?K3c4MU9hdFVUd2JLYU9FS0tjb1JZajhJYVgyQXFNanpjOEJDWUF3S3lDUmNK?=
 =?utf-8?B?UzZkL0RlVjR2U2ozenRQVUtGMmJXSFpsMStwR0VsWlNsS1I1aTNnYWR3eFJJ?=
 =?utf-8?B?Z1k1SXMydTF0dzZqQURuVmVqNTNTaEFhWDVSMUVaSkg4bXJ3RzJxaExwZ2No?=
 =?utf-8?B?TEJzbGxQa2tJRHlaK1RheWRxMHR4dG1pNlZMQ3I2ZU1QOVpuVDhLcjZtdVR4?=
 =?utf-8?B?bzFGZVJlT0Y0YnptTzZMWUhwM01QSVhzZm9aUHhIcno3SkdLOHpjOSsyOVRQ?=
 =?utf-8?B?a1dTMTZYWWdSemtJcXlxUlR4YzhoVlpNWFhGR1E2UVNjTEtVanhPeUt1NWY2?=
 =?utf-8?B?YUNXZE1FRmVBaW01T0U5YTg2aTVpYWxFTktjaXZLeU03Si9KWHMvRUJrUDZJ?=
 =?utf-8?B?czlKY20rRndrL3ZvdEhZcWxHRTJ6MlVCUkx4dWdJM2VZV2o2elhtZW5CUjdE?=
 =?utf-8?B?dGtxdklmSXdyQXdPRnpPNVZqUEU2K0JMQXlTWDlSajVEWnI3SXl5WEFoSzNr?=
 =?utf-8?B?V0h6WVhxYWxEaE5ZTWc2SC9DVHE0c1R4U1ZCd3R2bXorQk1WWlVVNldPek5w?=
 =?utf-8?B?RVdhZ0x5c29hdmF6VUZ0U2Z3cFRLbkxidi9MZUY0NEU0OVZMNm9YNjdtbVdy?=
 =?utf-8?B?eStMeFBISWpWNEFHclBJeW5Mb3IzMDQyMzdKVFRrc2psS3lwRUxXV3NkcnVl?=
 =?utf-8?B?M1M0QnFTSVFleWdxanZ2dVZiVWlnVVN2VFhXUFFNemtkT1labHNTZFFidVNs?=
 =?utf-8?B?Nys3dzhtS25jSk5iZkNNYnBrQ0N6TjVtNFNZU1ZNN1BKZXNmOVpGdElFTU9t?=
 =?utf-8?B?MzV3Rm5CRlZTN0RQRy9UVld2Q0VtQktzcks5cGErSlJBdlVrY2FGVHVOWXB2?=
 =?utf-8?B?dm1ORjRuV1VXUFJJTEI2VmlzNWticnp0dmVXd2dKeFZZVllwWCtoaUI4YVkv?=
 =?utf-8?B?NHRyUXI3QmQ0ZmYwdHN4NDlhbUNUZlVDOVJLQXd0NGZIU2V4c3VPNGRWMEtr?=
 =?utf-8?B?VVM1Ni9acnZnZHJJemI4dGVzY2VoTlR3MHVQR0dscENDakxaZVk0eFFaOHEz?=
 =?utf-8?B?Ni9wRmF2NG5wYzBlMHNNamZiVWpKUzJWb0pvSUw3OVAyY1pMYkw0MGYyMG5W?=
 =?utf-8?Q?5h+GMzApCxzYnT3f8lSdV0gK3cNKFHNV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YnZQb3c3aXBvclNEZEg5czR2OFZPeTBBdjFoeXlzNVFlbTJwRkVBVjZIWFBo?=
 =?utf-8?B?S0QrcnYvS3Urd1lZblEycndGVTZJR1ptTkdhV0JLMVNRU1IyeUxvU1JnaENm?=
 =?utf-8?B?dnZ0V0hOU0c4dGJHWXVISmEzSTFRMVNUT2t4SWJjMVJkTWV3eS9FRVVxQ0h5?=
 =?utf-8?B?QUp2Z3k3cjh1bmc0UlZBaWUxWFgrTHMwVjRzaEhCVkY5M3cvWkRpUXkrazVp?=
 =?utf-8?B?WVhkdkVNbHR5cW1Tc0VpY2xEdkVyZFQxSytjNzVDL0Z2eGhlSmx4K3ltcUhE?=
 =?utf-8?B?YjBtSlZVMGdseTZla2dSbWloa1BhaXdobHdPQmJzam9CQk1hSFBlREZNaU1G?=
 =?utf-8?B?M3BzcmNvQkt6SVhYRmF1cm5rbHM1Zit4VnlDeUduMjJJTUxvOFVNNVpVb3pl?=
 =?utf-8?B?MXFJWUo4YXZ6WTBOV0syR0ZPRGFOZmRBUllNRzI5UXRsSTg5ZE1jWkdwc0FZ?=
 =?utf-8?B?VlZ3RVJGSDFISGNOdUZmMTJFRXE3WTY2dGZpN1lnekR5VVdCd2UvMElzb0Nw?=
 =?utf-8?B?VEdXTmYySi93TkVsUWRac1c2MHFBOTdwU2RSQ1JzcnplK3FWT3ZtQmg1V0xl?=
 =?utf-8?B?dExBeVh5Si9YaFRaYzdLNEU3WXRiMnRFaWppaDhvUWx4Z2poVDArNVphUUlz?=
 =?utf-8?B?ZllmVW5DUWZ0cWVrN2xQb1NadkJZNmx4NFYyNXFsMERqNG9BU3RzcFpMZElC?=
 =?utf-8?B?R2MrRTFjdjI1c0NpYnBVclVhcmxhbEJVNllpSVpZUHN0ZFdOb3Qzc01kblJM?=
 =?utf-8?B?L2J3SFVTUHJqTkNReFpBTXNzQnJRTmhmbzJNVHpNbHRjMCtRYWE1cnNjbWZz?=
 =?utf-8?B?c3hCSjR1ei9wREdGL0tLbXc3b2hxVzdkeXA4WFRyNmFLWDJvK2ttRkZxN3Nv?=
 =?utf-8?B?ZnFRVUh5MUgrMlFiU3k4SGdDdThtRkVQMVR6TkVyQ0E3TXJNNXFrYTBvd2Nh?=
 =?utf-8?B?QVNoUUxWVkJqNkQxaE9oQjhPWVYwcDA1c29iRm15Q3pOeHVLc0hRT0t2VE9P?=
 =?utf-8?B?YzdJeVJQUTQ5QVU5M01hTWk5TXpWMjhpc0JuZ0FOUVYwN090UTh3V0o0UkNY?=
 =?utf-8?B?ZFRRT1lWaXlnR3MwSERCM1lvemFSRnJqK2pMc3pqMTd5OXBxS0FaZkxDa04y?=
 =?utf-8?B?T3NjTStWUHlrS3FXMklOeC92OXVNVVB0Y1p5UG5qV0xpRXcrampzeFZveGZq?=
 =?utf-8?B?ejExdTNZYVJCUi9kT0J6UHhKZHJ5aXkreTVGL0dFVXBWdlRIdHMwUUU3Wkw0?=
 =?utf-8?B?UWlRQTg1Q0hJUm5jblowbDhFMmdXOWdLSW0rcUh1RVZIemRQKzFyQjFZbFVx?=
 =?utf-8?B?UW13bzhPeXdKZ1JybEVIczZ1MnVrTmtLRlJOcVh4b290K3p6UEt6V0ZMOWls?=
 =?utf-8?B?T3hKQ1VkUzhxbkZPSjVneERqK25RZStJMmNlemFjU0k0L2l0aE9jSnpuR29a?=
 =?utf-8?B?WUdxRXFHUnE4YXJHV0lVTjBsaW90c1BoY2Q2Y0hRQXh4bVYyWDJPY3dpa24v?=
 =?utf-8?B?SE83M2ZaUUxqNlk4b2Y3VmloOCt5N2tYK0xvbVRTbmlYYXJHbmpIOXZSV2xI?=
 =?utf-8?B?YW85b3Nld253bFd3aEx6QW5ncWpYTjQrSk1SL28rUEpXcC9MVjV2aXdzN2tD?=
 =?utf-8?B?SDA2ZjRadGVmUU8vY0hDTThmY3Rld1g4Z0FreTJJZVozdjVLQUFod3ZqSnVs?=
 =?utf-8?B?MXJBcThRMDB3dTNNU3pFOUlKOFRHV29WUWlOVG5USUJ1Q054ek1RREM5dDhl?=
 =?utf-8?B?aGo2Zm1JWVNUOWxxSEJyYlg0dzZiMlJTKzlMSHlnSTB5amo0Y0R6ekszem5o?=
 =?utf-8?B?M2t0em9zMGdqUk9iQ2c5ZlJYeHlnS1NlbUVCckp2UlR6ZnpFMTVPREtXWkNr?=
 =?utf-8?B?NmYvRHRSVFhDWVlNSldlTHQyaG9OMXFJOUorRlB2TXBQTE16cU1HczlRL0N0?=
 =?utf-8?B?c2JDVDJ0LzhxL01xNFpkZEFsczhESlA4cmVsYnhhYndLdkhVeXAwZ3kvdGs1?=
 =?utf-8?B?ekJJaWludkwrTVlFTWl3SmJsc2JHK0hCdjFGMmZUSUU1QWNLOGpjNE01R3or?=
 =?utf-8?B?RWZiZnBIU2wvV0s3NlpIOWNEODluOVJkaFprdVJYdk9MaDhuZ0NvUFpCNWpl?=
 =?utf-8?B?ejBobGlyZndwWDJMdmVCbzhwREgyV1ZKNjdPMGFrTVVSQ2lEUWtMb2ZwSGVG?=
 =?utf-8?B?ZGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8287aa9e-5d88-4752-543b-08de0c03180e
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 15:54:16.3605 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aybdbTlNpu0y4QRr8ltRyNZ1kANAle6C+WNYPgev5teAu7BvtZj6UQmz53LkwHYWwVpEThQODQWScvxru/ZQhYflRlhc7Bgubhtxj2b42Mk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5174
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

On Wed, Oct 15, 2025 at 05:46:52PM +0300, Jani Nikula wrote:
> On Wed, 15 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> > Starting with Xe3p_LPD, we now have a new field in MEM_SS_INFO_GLOBAL
> > that indicates whether the memory has enabled ECC that limits display
> > bandwidth.  Add the field ecc_impacting_de to struct dram_info to
> > contain that information and set it appropriately when probing for
> > memory info.  We will use that field when updating bandwidth parameters
> > for Xe3p_LPD.
> 
> Could the field name be more accurate than "ecc impacting de"? It sounds
> quite handwavy to me.
I quite like it because it matches the field in the register on bspec.
MattA
> 
> BR,
> Jani.
> 
> >
> > Bspec: 69131
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_reg.h       | 1 +
> >  drivers/gpu/drm/i915/soc/intel_dram.c | 4 ++++
> >  drivers/gpu/drm/i915/soc/intel_dram.h | 1 +
> >  3 files changed, 6 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 354ef75ef6a5..5bf3b4ab2baa 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -1233,6 +1233,7 @@
> >  #define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
> >  
> >  #define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
> > +#define   XE3P_ECC_IMPACTING_DE			REG_BIT(12)
> >  #define   MTL_N_OF_ENABLED_QGV_POINTS_MASK	REG_GENMASK(11, 8)
> >  #define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
> >  #define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
> > diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> > index 8841cfe1cac8..bf9f8e38d6ba 100644
> > --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> > +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> > @@ -685,6 +685,7 @@ static int gen12_get_dram_info(struct drm_i915_private *i915, struct dram_info *
> >  
> >  static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
> >  {
> > +	struct intel_display *display = i915->display;
> >  	u32 val = intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GLOBAL);
> >  
> >  	switch (REG_FIELD_GET(MTL_DDR_TYPE_MASK, val)) {
> > @@ -723,6 +724,9 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info
> >  	dram_info->num_qgv_points = REG_FIELD_GET(MTL_N_OF_ENABLED_QGV_POINTS_MASK, val);
> >  	/* PSF GV points not supported in D14+ */
> >  
> > +	if (DISPLAY_VER(display) >= 35)
> > +		dram_info->ecc_impacting_de = REG_FIELD_GET(XE3P_ECC_IMPACTING_DE, val);
> > +
> >  	return 0;
> >  }
> >  
> > diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
> > index 03a973f1c941..ac77f1ab409f 100644
> > --- a/drivers/gpu/drm/i915/soc/intel_dram.h
> > +++ b/drivers/gpu/drm/i915/soc/intel_dram.h
> > @@ -30,6 +30,7 @@ struct dram_info {
> >  	u8 num_channels;
> >  	u8 num_qgv_points;
> >  	u8 num_psf_gv_points;
> > +	bool ecc_impacting_de; /* Only valid from Xe3p_LPD onward. */
> >  	bool symmetric_memory;
> >  	bool has_16gb_dimms;
> >  };
> 
> -- 
> Jani Nikula, Intel
