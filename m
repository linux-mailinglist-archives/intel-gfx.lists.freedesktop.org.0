Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF2DBFCCB7
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 17:12:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBD8B10E7E6;
	Wed, 22 Oct 2025 15:12:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ORfyG/K8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B7F410E7D7;
 Wed, 22 Oct 2025 15:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761145940; x=1792681940;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jyt1pyquB1ApzWbfxuoKebyAXaL8SCKUSm4nLPtCTCs=;
 b=ORfyG/K8GJTY1SDjkgsH1+L06mm2L2O1T6vRdChd6Zup7cjZOOogNlBO
 QEmJggFam39MUd1WTm3CsRrLSZqblJ72xfN38q3RVd79buvebZvXO4MN9
 v65LJ1GospkK+OC355VJ+WtirXjmOl8wqqY+VM82XNoIY20ny5AD/bIpO
 H8liIVqaGNhZjTSEunWtWPueJ3ZMg5Z4fuBtn9w/7mjEtYnnUzembwHcE
 XZPAvMspBmyuISNkEMiwaDbLHdeHXkm44xNPMynkxc/ygfS5RcDXp0LmB
 GJZ1A5Uy6KgeG+gpz1eyWUPEVJmDCd/d72p31aVku6WBhsp+fMpz0KP6n Q==;
X-CSE-ConnectionGUID: vFdk3nhNRcCRII1vPWI+cA==
X-CSE-MsgGUID: E4MW5yfBRE+AwvyrQzo6JQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="80735442"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="80735442"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:12:19 -0700
X-CSE-ConnectionGUID: fBKlUTb4TiiSKQjXzt/pew==
X-CSE-MsgGUID: vb/4nKwxROarEgWaYxuPIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="214840666"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:12:19 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 08:12:19 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 08:12:19 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.43) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 08:12:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZgNPBBamstNQusrizgvqG111LvlMfvGYPUqTWMDDp+5wG/c7AXPyNjEQh51rJdo3FbP5xl1JPJUJOBljdSK09PKOdAaxVqhE/VGQnTSLVwlcAffsRjrmfUIi/oVmpXqG8HQy4hqvT/dOSLL0xBenKouhnRfTRHaTfcqLhrZCaVOtNqfuzFni9a2tWcMyHDj7IHNDhppnEtfduB4VDT7SHgJiVIqXwhiaYHjZbvMDw3mExPx9hYaDCSqw49f+i4+PJW0gAUBXbVvGHQGIoZGqG/BkncV8ILDJLsibltiX+9eZSE0O+zset2xD/VZFZ0DU0omSfncxmrTc4q4EArir0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AtJrv48zf5RaVE1ltX8Cb1Pi9Hh3w2ogNOyK3eytH1k=;
 b=SSVBHEbwRTos+abm/Gipo6B8SYJs6ZYDHrGRPTXOzZpMG6QGnBD3EFA09uDrmkE22L5A9NbZpCuMNC1lv/5mmFJM9dseM+3JfiDjCZC004Oubprtlw0yNp1qBH89oFbTFew2YydH1EYe//JOPPJ+9mUi9GnJP4RWzMmLcu9ZaOHtDCiSkI2DAUtKPG+SpUw0f/Mc360YXEjTbzLx03cwSTCHmp4Gq5lB1+q8ow1WX6CEUfHKwnA7D012a3vLiCdX5Vqm3HFlK53BiE3djSLhc/o4RXXa/bOH/qNMN5SLH7q/QXhoGXHXL2n5ZmQ+PIYeRUCrHFClbZVVpH7Xf91Olw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from LV8PR11MB8607.namprd11.prod.outlook.com (2603:10b6:408:1ec::18)
 by SA2PR11MB4940.namprd11.prod.outlook.com (2603:10b6:806:fa::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Wed, 22 Oct
 2025 15:12:16 +0000
Received: from LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3]) by LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3%5]) with mapi id 15.20.9253.011; Wed, 22 Oct 2025
 15:12:16 +0000
Message-ID: <13a302ac-dadb-44af-9edf-8e15df5b0a35@intel.com>
Date: Wed, 22 Oct 2025 20:42:06 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 32/32] drm/i915/nvls: Add NVL-S display support
To: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, =?UTF-8?Q?Jouni_H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-32-10eae6d655b8@intel.com>
Content-Language: en-US
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-32-10eae6d655b8@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0021.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:177::13) To LV8PR11MB8607.namprd11.prod.outlook.com
 (2603:10b6:408:1ec::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8607:EE_|SA2PR11MB4940:EE_
X-MS-Office365-Filtering-Correlation-Id: 81429e58-27d4-45fd-e5f2-08de117d62cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cW00YldaMDF5bk1YSGdBMHh0SG13S3I1RWhqSjVZeUNLZkd2a3JnbXExdTJT?=
 =?utf-8?B?OVQ1RjRXRUtUTzFQRnNSS0ZhUFBIZE1aMTByd2ZuRVU4NGZaZTIwNDh0dkRL?=
 =?utf-8?B?RVRkM1pxbDRSSmpUVFgraUFFSlZORjNjaHRHWENrZnVLbitWQzQ1anFmaGpn?=
 =?utf-8?B?WEd3YndNbWNwVmE4OTNKTFNQVzRmTEJTMXB4ZlJtcmdBemRRa2I3Q2hhbXR4?=
 =?utf-8?B?T1ZYZWdVOGI2VUhucHZ4bmhUMHRtNENBK3JXVFVDK1B0QVAyc2MxbkJEM1dr?=
 =?utf-8?B?TklIRU5ia1BCZk9zUHorMmhhbll6M1pMMWNrMDNXNUFHdUl3T3dZY1NlQlFK?=
 =?utf-8?B?b1JKb0ZLZGowYi9HZkh6SjdKeHZMLzNSdUxNSmpXdkhSY0hFRjlkeVpVemJJ?=
 =?utf-8?B?K2MrdDU1VXB6enRsOUZXQmxXR0hzUERTL1ozTDFhQ0hIRzM5TUJkcUl4Zll1?=
 =?utf-8?B?NTg0M25FRjZKcktyYVFrdWFscjlrMjRsUTJJbDRaL1pBeGtObmpqT3dybytJ?=
 =?utf-8?B?Z2xySlpteUY5ZHRJZDlOVjhCWHUyU2dmRG5kY1NId1ZreHFOeUV4eTJXQmhk?=
 =?utf-8?B?ck1NZkZJWFJodnVSOGI0b3Z1cjZ2eUdwSWJ3NHljZUtMa3dIUGhoS0d3ZlZn?=
 =?utf-8?B?RWd5T2IrYmZPMUx1SmpiMXBYL01QZEd6RzlBQk5pOVZaK2F3ZEczZElzM3ZH?=
 =?utf-8?B?Mlp6OG5wZmp2ZXBSUWFUSjY4VE9RRjU3TDVrREJ1NmtCR2lIL3BobWVSekhq?=
 =?utf-8?B?ZDgyelhMcDBtQm84Z1RySjg3T04vcUovWGhuTWd6dlc1T0FER0xLQ2dKQVJY?=
 =?utf-8?B?S1B1eU9mSU5pYTUvcGs3UzhUNVFFclEvZlpGTExGWE11VWMzTTQ0aU5FZlBF?=
 =?utf-8?B?Q2t6OW1ZemtaUjcxekozcldDN2pteDE2QVE1Zm5NWEpOVjJUOEE1eVRQd0E2?=
 =?utf-8?B?M0o3Y3h5MHZjYjR3T0FscmJpQ0cvU1VGellOc2JhdDFkWFVZcElFTEYzRTRu?=
 =?utf-8?B?WW15MUhtMlhjSmdrSFFZcysrbUw0WXowaVdEcHh6UE14VHJ6QWVjWU1sUm9W?=
 =?utf-8?B?Mi85a29PbUROZEVjSWoyVGloQmE4Zms0dURMTXVJQjg3cFhhNTNaODcwaGgv?=
 =?utf-8?B?MndneC9WNHkrNE84eTNOY3NWcm8wazRDTXlaNGdSM083RFNlYmJnWExodFFT?=
 =?utf-8?B?NWNoM2FMdzkzZHQyZkNCenlObEpLOFJMNmg4aXdRUFJoMWtvWUluVE1kS2ky?=
 =?utf-8?B?VXBmVkVuckJuUUVEaW9hQnZxOUtEOU1RZHB3eDh2anREMHpNSkZBcUxzY0x4?=
 =?utf-8?B?OERtbWIvb3dGRWZ0dTNRVFdDZjlYbjB6ZGtqalRPQ3prdmE4RUZjQzExQytw?=
 =?utf-8?B?Tm5BeTFzWnI1by9YNVZSdE01VmZaalRPZXgrQy9nNmhZOGlHVTI3L3Q3UGhT?=
 =?utf-8?B?YkVMaXpPWXBWazkrd3V5WEZGRVNiTDdOQnUrZWlLNXozRkk0MW5vZ1hoNXJq?=
 =?utf-8?B?dk82QWpnY1NnMmpZcmFBbjR2bzk1VmtNaHFlc3ZHZjBqWnY0Tkg4SEY1anJl?=
 =?utf-8?B?dWREQmlVellORFJZSG9HaWtReCt3b2R3UmFHTGllcWU5MG5uNHZzZTkyK3Vt?=
 =?utf-8?B?QnhPVUxCTTE1eDNzSUIyZGtMcUNCYUNHbE95NVNiQ3YrVEVla0NyZ09jMm8z?=
 =?utf-8?B?YnRZMmMvT21xaUhJU2VDUjJvVUhMSHlqNXdaU0Nyb1o2MlcxeG5BckN2SlU0?=
 =?utf-8?B?bTNtK0szN25uQTBUTU40dG1hN0dCeFQxd0tGcit3MUZ3U252NUpXWHlGRXdX?=
 =?utf-8?B?WEpZZjVockpIYnJPVmpCWTVXa0NPZnY2b3BBbjB2VlBJb05sUkI3SHU3Vkhp?=
 =?utf-8?B?cjhlQTBRMnR5Y3JXN1B1K1luZi85TEdNbUVUdU9ZSWJCdVYrNnQxMkY3dnN4?=
 =?utf-8?Q?yL4AujuwF6Lim2+FdudCkcFuQFutH9p9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8607.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N3dzYWQyTE5iVWE3OWllSlM1RGNwTm1sbmZuN2R4em0zSjRjK1Q4NkVlL3g0?=
 =?utf-8?B?VHNJMGFvTE5weTVLZFZIQ2gvRFdJWTJDRmxaKzdvTktYb1BhVVRKSWNlYlR1?=
 =?utf-8?B?YnN5TThGS1orc0p5c3NWM1ZIZndCSVBMYW4xREZGT0dFWGhDN1dBSVlKcU00?=
 =?utf-8?B?YXdQVmNDdTRuS0hVbzgrTTduczhoQ2pOa0pGbGtCRFlDTTRtOG5PQTd2aXRI?=
 =?utf-8?B?Skl5RmZIdDFBZ1VtN2I4enB5RW8wVWpHUW9GNS9BNTNodnd2SHhpQi80L2tU?=
 =?utf-8?B?NlBZQzZiUHkyMGVSaUg1RFZhNUpFcm9tK0t4WDE4clMrVGpJU1FHckluNksy?=
 =?utf-8?B?UGpFR2orSXZWSWlFNncvK1dHK0tUWUxtQnArb1A4SGdXc0xjamkrN0dRN0hw?=
 =?utf-8?B?VlF3TG0ybUdNY0s5Y0Z3WXhCR1FiRlp6T1F5K1pNWDZBeFU5dUxuc0xxemJy?=
 =?utf-8?B?bks0TWd5SENKdFAzRzZnQ3lEbmFVK3pQQUhsdWk2am5MWjRRNmlDZTNOSU5G?=
 =?utf-8?B?eWMwNEJMejAwMHZqTG1ZS0JwVklKYitVWlZVVi9ldnBEMTVuOXVxbGZNb3E3?=
 =?utf-8?B?OFRTT0dlOWZTUlZjWUUyaVBuSTh3K3ZNSWdBTUJKOVNVcWczZWxrZGN2eWVs?=
 =?utf-8?B?dVlGTXZXeGRPQmZhMGNueGk2bklqS2RCN2dDZFNTOHpxT1NRZjJyZTMxdWc1?=
 =?utf-8?B?ZThtOFYzZ0p5cGxKeW1tdXpZb3ArRllUek01NWRMR0pDeklVOEhFUjVEUHI5?=
 =?utf-8?B?SENFOXBVOHdxb3N5YlB4WGFhODNFOTJ3ck0yTWpQZ2U0WXZPTEtPTkZWSC94?=
 =?utf-8?B?N3RCWllubTVpQWxMaWhWNmxPTWZ1YjZRalhaazBKR0RQMGxPdG5DR3JEYzlL?=
 =?utf-8?B?Sk9Hb2dMZ0JKZ2ZBampwNStpL09WSFA4V0EvQm9VSnlPbG50TnJrY2lKSFpG?=
 =?utf-8?B?MnhpTE4zSm5uRjlQYWlPOFp0VGlITmFwS0VSMHJLVDdBQUYyYmxQdlZBeHlW?=
 =?utf-8?B?dnZkTnpaaGlJaGg4UERLNG5LSEZVUFlVOFY4Ujg2SkRraStrK0g4SUdKVHN4?=
 =?utf-8?B?ZGZFZWE3TUk5c0pKSVpnT1hlUkg1MVJ6a0lNOFA4SWJiZ0JieXJzYnMwU00v?=
 =?utf-8?B?RkN3Rk5BdVFKS0xZbkF1MUFaOHVBWkc3UktjSGFYeVlNb2JoWE51TGFLOTlF?=
 =?utf-8?B?SmVSV2IvYXp1K01xS2o3c1dUaW5jUG1MQUY3SHZqb0pmbXljallQQ2JVazJ0?=
 =?utf-8?B?M2FZbWNVNmJtalJTeThHMUdyREozbFVLZzdRL04rcjZHeVV5Z2JaYllPR1Zw?=
 =?utf-8?B?bDQySmU2SnRuTUtrZlhibVVISER2LzRCOWNLMzZ2ZFE1U3NRU1ljdWhyYmht?=
 =?utf-8?B?U1pPWncvNi9QZWQ4RW1XODZNUkJBYjRrNFBoYXBBUTFJY0p2TER2RG1DTWdK?=
 =?utf-8?B?TTRxOEl6UmlDK2JiSkcxc1N5Qy9GTlcvTTBNNUdqNHcramNEQTlTTFY0a3Y5?=
 =?utf-8?B?eFR3N1FKSitueXlEQXdXZlZpeU56RVNPT1dGSUVZZGVkOEhRTm4wdGNJWGVi?=
 =?utf-8?B?VlJaL296Y0ZxVEZIcHVERkc4VFF5NDdxU21Qb3dCeDJJSUxja0pLSFYxN2lT?=
 =?utf-8?B?Sm1iazlKbWZtaDdwM3pyNjZCUFh4bnd0VDdJUXpYbi9aNTBkT3J2MzFzQjVV?=
 =?utf-8?B?dTYxZTJPL29DM0JYUnI0WUp6YStJM1V2b1ZPVzc2QlJjaEFIWE42dm1NQkFa?=
 =?utf-8?B?dVIxVnNCeXdKZUdmVlBVSENXVHY1aHhEdWt1VkZMT1VydGNRdXlYODlWRzh2?=
 =?utf-8?B?RGpjREQ5TGRwZXQ2OVFiT1VqVTMyOHNhSWNmVzRtNFFRTGtYM1ZiczRhM1h2?=
 =?utf-8?B?NkJTcDJSd2s4Wnd1djJsc3NxQjY2RDVhUEZvbHZ2aTVUMlpvK2xnY3JyeVpS?=
 =?utf-8?B?alp6VWFBemgvdVQ2Ynl4WjRuekVUYUEzN2tmZ2x1dzZVZEZpdWpHOFN0TitG?=
 =?utf-8?B?R1p1Y3FzSkVJN0RaN3NReS9kelVuSFhoTEJSMXo1QmlGRVZWQnRRRVpwNWxM?=
 =?utf-8?B?aDArMDdxcnA3dFVPU1FaRU5ySzJTcVNJQVpHSkFOVVdha3B6VkxFRnZCTVJF?=
 =?utf-8?B?Z29kWm8wRnlQdWE3Z2Y3dzFGV2JvYm5pMnhwMVl2YUVRcXA4cUwwMWh2MDFo?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 81429e58-27d4-45fd-e5f2-08de117d62cd
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8607.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2025 15:12:16.3840 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kHIE5qf/zDn1LRaC64gbVFsPOFL3isWbiWxEDCmI3NFwOUfPb5qwCR4xpmSCql0hXkb6eqOfTCpkO6RZpaweuS5KVveARC8EEZmIZyEGiyQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4940
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


On 10/22/2025 5:58, Gustavo Sousa wrote:
> From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>
> Add platform description and PCI IDs for NVL-S.
>
> BSpec: 74201
> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

LGTM,

Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
>   drivers/gpu/drm/i915/display/intel_display_device.h | 4 +++-
>   2 files changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index a38de39ed98c..2350ade1419c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1420,6 +1420,10 @@ static const struct platform_desc ptl_desc = {
>   	}
>   };
>   
> +static const struct platform_desc nvl_desc = {
> +	PLATFORM(novalake),
> +};
> +
>   __diag_pop();
>   
>   /*
> @@ -1495,6 +1499,7 @@ static const struct {
>   	INTEL_BMG_IDS(INTEL_DISPLAY_DEVICE, &bmg_desc),
>   	INTEL_PTL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
>   	INTEL_WCL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
> +	INTEL_NVLS_IDS(INTEL_DISPLAY_DEVICE, &nvl_desc),
>   };
>   
>   static const struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 8fdb8a0a4282..ed03630f9dcc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -102,7 +102,9 @@ struct pci_dev;
>   	func(battlemage) \
>   	/* Display ver 30 (based on GMD ID) */ \
>   	func(pantherlake) \
> -	func(pantherlake_wildcatlake)
> +	func(pantherlake_wildcatlake) \
> +	/* Display ver 35 (based on GMD ID) */ \
> +	func(novalake)
>   
>   
>   #define __MEMBER(name) unsigned long name:1;
>
