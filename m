Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE25FCD14ED
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 19:11:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BAE410F065;
	Fri, 19 Dec 2025 18:11:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RYxNMB8R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88AC210F065;
 Fri, 19 Dec 2025 18:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766167913; x=1797703913;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=dorlsO+3fIa5+MxfZWhOT78ClpPhDfzhBEoB+Ft9TyM=;
 b=RYxNMB8RWoP3Ug4G9AkSRKwRVnBB0hDoyRK8Xtf1WM2nDz2y8SZjG5uq
 QSZxN35Mz7ThfLbu4Y5aMmn6BLPHnnWTGiNAYpk38m0P0KMUdXMqXUbi3
 1Eeg+k7mR43Y80tl1B+xbXlgVkJ371nLayvuHicTaQ8gF2MlYeebpQpiS
 XdqFlK86+5F3vPzt6uK3mSdWsdw5408AGeDA7FFRnsbqCCCv28pPYWOBC
 0Ean5GEL4WMq/sygQ1NCV48KJHF7O1mnKicz3AmUs1Odqen3WEDmp6RTT
 NiHN6iKtHaAk90Fh7NUzRi0V3nNED6VeU/9TUDXOvw4w7InaMFa+OENFb A==;
X-CSE-ConnectionGUID: LvJ6CTJfSL2d9DDBIm1b/g==
X-CSE-MsgGUID: jYCYjVEjRRGqjWxCBT/3RA==
X-IronPort-AV: E=McAfee;i="6800,10657,11647"; a="67128168"
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="67128168"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 10:11:53 -0800
X-CSE-ConnectionGUID: kObzcXH7QASOjCIhvhbPwA==
X-CSE-MsgGUID: qLooiZpeR3ic66n1Ssr7dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="198073464"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 10:11:53 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 19 Dec 2025 10:11:52 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 19 Dec 2025 10:11:52 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.65) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 19 Dec 2025 10:11:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vxek20NJKb+cwQwncBR4YknEf1EwtEZp/sl8EH4CBb/JCNOrO2kG4g4DqVB5MA3g1/rwfa2bxfzJxVmpvAfGW29wtBr5gXJoCSDslXNi4CdIruJQQPAhVu/hD8keOJ4+M8bhKC+qdqwOUTrhTnuAaybgj6diJPWEUHXMNaZ/uPbiVBRGHo/I4+/H+5XAIb9k+HdrdV9OVojV5CKLlD49h0l6wiI6sBZJ0Cqqhx4d7nEpErFn/TGl4xeZLIQgfxHwgipahXv/VHeyvOxwnFmzMBKV2UlOlb876ksD84ec9GKHgBxGGoVfIYq9H/RkLS7VhTxru1ZFDUgYDB2I9qhzpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+23B0OKbzCn2GrOCgSvkbLSPc8q9stZCQtjzJ/h0BI0=;
 b=G3C1J+QtKmZlY/W+QnjRYEmHmypUejO/kVSBntcUs8nLrDyOOn6pDsMroT2Db2+nEhTMKNock9ZrE2YcFRUb5uXD39wKFxbfdjHZ5Iw8GTqRBQYaV+Sw2vaD8nu0gkjDaes8ElCc1sWClg2yIkJ2IYf/fUT69jC00fxTpEML+LSCEStTSPPw8/AAFaIXuzlN9TmoVJgzT9keTdxPQjLzTm8TIAXum0xAvvVLxg/210vGTCiT+Y0rZVfzOA/XqnaZFQ8OVeluqICBfU3A4SqvDtno90zXsd+hzVkAAXkXo1PqtnCx6MM67esTVaf5mLMrihFGdqbvagdPyVZxuH0FTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW4PR11MB6911.namprd11.prod.outlook.com (2603:10b6:303:22d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.8; Fri, 19 Dec
 2025 18:11:46 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%3]) with mapi id 15.20.9434.009; Fri, 19 Dec 2025
 18:11:46 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251216-wa_14026084006-c10-hdmi-toggle-powerdown-v1-0-08677b03e2f1@intel.com>
References: <20251216-wa_14026084006-c10-hdmi-toggle-powerdown-v1-0-08677b03e2f1@intel.com>
Subject: Re: [PATCH 0/2] Toggle powerdown states for C10 on HDMI
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Date: Fri, 19 Dec 2025 15:11:40 -0300
Message-ID: <176616790056.9461.14366233507899542339@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0238.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::33) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW4PR11MB6911:EE_
X-MS-Office365-Filtering-Correlation-Id: e86d0c85-bf53-4a88-8bb1-08de3f2a1288
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Vk1oOCtYNFYzalZJZk5rWWhOcHdxSEpDNFl6S3krWlFoNjdISlE5emU2WDBr?=
 =?utf-8?B?K3dVVGZoTzVFMXdFWU54QTRnRnk4U3VrM2dwWnFjc1l6dkRVQVBRdHlLNmV6?=
 =?utf-8?B?VFNkblFTc2c3Q0hEeUhYNGU1Ry95TTBBbVJ6dTdUdXZVOE94bUs4RW5WTWta?=
 =?utf-8?B?ZitTbDhFU0NNMlpKNFdNeVhaRFFPT1ZQRytKc1dJOXBFWDZ3Rit0RlVqS3Aw?=
 =?utf-8?B?ZTk4UjBnalljalRIUHVWaTlKenZtWHQrTW1lbSt6NFd5dE5ocjU0bmlvOVRJ?=
 =?utf-8?B?YXZZTTg3WVlDUjdram83Wjc2UHhtRnFKY3QveVd6Tm5qRXlRd3Y5V3lURGRY?=
 =?utf-8?B?UGtzeW1ZODR5Ykd5OVhzYTZkVy95MnhROS9INzhXMmx1cjRjY21Bck1pR2Vu?=
 =?utf-8?B?REhTK09pVm9tRnVxeFhqSmlURVd2QmlhS2I4bkJYMXR6ZXdIc3JWdjArODNp?=
 =?utf-8?B?aGFxKzNMMDFtcFR3U2syY0JhVW0vQUZCQitoUEIyMVgwM0xnbll1bTIxOHNy?=
 =?utf-8?B?T2ZvZmlOTjZ2ZDVwY2hKVUNnSG9XTVRYUzNXNFFmWnBtbkxyTmxiL3dBaUov?=
 =?utf-8?B?dENSRTNvbFcvb29mVm5uK1ZueUlKQVd1Rk5MRUJiRmltUE1PdDRUMVNOUDBT?=
 =?utf-8?B?emx2MDNhSXlrWEI4QlJxdGRCS0lWYUtZeHJDZllXL0xxT3hKMGF6VkFPSmxt?=
 =?utf-8?B?WW9vMEZLcW1zUjFneUx6WGMxUWYrNWtJOEdjZ3BIZkZ4UjhrM0tWUmdVd0o0?=
 =?utf-8?B?YUZPT25aeXpsa1ZPK2RCL05jNEpvQXhtc3BFVnVvNDZ1VFRDZVptK29qY1hq?=
 =?utf-8?B?NjRiVVhOcmRCQVJjdnloTm9TbnRWb3V5SWxmaHkwdjBLMHVaT1ZzR3RCdHRq?=
 =?utf-8?B?ZDZsRXFMeDVyai8xK05jUmFQRUhxcmIwZUJmWjdFNSs1UnlTRE4xTG1Ld2py?=
 =?utf-8?B?dkJ5ODQxOGx0cUxwcW1ZUlc5Y2dtOGMxUUYzSFp0V0p5b1NEL0pKQ09ZdUtl?=
 =?utf-8?B?ZUZwZVEzc09DcnJrbUEwdzFyeDZsaWgvcnZDWStIYlNEckZQcHY3RSt1MnRy?=
 =?utf-8?B?aEhFTFEyTXRNbGJaTlMwc3FCaTkrWm0zeERwTVZSUUdmOGpySmp2QWRxQ0JB?=
 =?utf-8?B?SURaVVZYd05nd1hkT2NQTlBydHBRRGhRbmZWa1E2aHVmWnhQRnk5UVdwZVk1?=
 =?utf-8?B?U2s4SmJRaC9sM0x1SVVtd0JMbWlVNGVnOGpIS0txMjFLa1RKSVRjMzMwT2NE?=
 =?utf-8?B?MFE5UXpDSlY2VjdoVDlpS0tFUXBBNjgyenJ0Y2Fwa0ZJQnJaNXVLOG9jVGE5?=
 =?utf-8?B?eXk1T0VaeU5wcDZQN3lGZTlqNFFoS1NuLzRrSjc5UDA1a3BwOUQ3UzNmL2xE?=
 =?utf-8?B?ODlIVG81UHNDRG5SdzFwUGxSbUV0K3lDSFo1QVh3RFBROE4zTy9qbHEyL2hT?=
 =?utf-8?B?ZU5mM1hkejFFQjVoa1BlVm4vQ21oVXRHeGlTemRWUjUybkpCajdDd25JK0Qz?=
 =?utf-8?B?cFBITHJ5MFNXR2N2SzVjQlZ3UlJYSnRjOTMvT3AzYy90VklqamhwTDdtRW9C?=
 =?utf-8?B?V1NaY3ZRZTU5ZmptS0hWUm5XZG50RFk5bXVDOGdQYUZ3WTNIT3Ira29KKzNH?=
 =?utf-8?B?Vm1IekdBWmFlcm5zc3greC9mRURwZ29FV0NuNmlNOWVzT1RZVDQ5T3MzelQx?=
 =?utf-8?B?NGsxdGs5OTR0M2RkS0NNTUpGLzRMWGJMZTMrUVZidFlCYUJyTVlydk9qZ0M3?=
 =?utf-8?B?RHJ2aURPdEhhaFl2Zy90MDlLdDh5cEIrS2x5WVJ4TEYwME80TnF2aGV6QnJQ?=
 =?utf-8?B?UkNNanIxWTZ4bWdoVzhLRG1Vektla3J5eXEzODAvNVRJNUlyS0pSTkpJU2dE?=
 =?utf-8?B?QnFRVnQzc0dnZGJENXZobmNEZUxYbkVsTEtZcWRSdUVtZlV3SVJQUUdaaDFq?=
 =?utf-8?Q?AL1Z7xMMlWMoOTLR2TiqyfP+9lCrtnpD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkdzT0hJMlM2dzZqOGoxUitKVVdvRlhzOHA5ZmNVblpjVDh3b0lHMzlGUys0?=
 =?utf-8?B?eEFpV3lBQzc0VjdCWXRXbmZGR3ZRMGNTZFVMUzYzWW9JQ0tGby9icTk3YUNT?=
 =?utf-8?B?djN3dXJUR0FFT0VpeVdYU242RW51Mk95T2NEY1N0WWdVVnVPdVRDUjBIOGZ0?=
 =?utf-8?B?dWh1RjV5dXBvQVdrbVE3OG5FYUJleUppTmNnUXM4RHgrYlh0UUVOZkNUaU81?=
 =?utf-8?B?Nmo3N1hJdUZwSU1jdnNJMDMxeHUxbDVZcitWdXNFTHRFTjhmT0Q5V1hxVzl2?=
 =?utf-8?B?Q1RMSURPd2hFRDROanFhYWxuZlY2SEZWSXB6dTdGSHVWNjd6VERHallOOTV1?=
 =?utf-8?B?VUcrQ01JV1Z6ZWlrUTY5YVhVemhWL1ZnT1c3RGU0cmVCL1Uyd2R1R25HNS8v?=
 =?utf-8?B?RDI3MkVxZ3hSTXRtOEVQZWhyRGdzZXRET1lDZjNmSnZCMXphZTBRSjBjaHZu?=
 =?utf-8?B?WFR0ckZzR0YzZWd4M3UwL2RRcElPbHUyRVFycTk4MHZSS1crdGlra2pVWHVl?=
 =?utf-8?B?WmJPQVlVUzhyQ2xkeFFNQUxCU0hRVUxGUXJuL1VjYUorSWE1UkQxZXc1T2ta?=
 =?utf-8?B?cUhUc3liM0o1UGV2UHdzb3oyVDhrNGlZRjlnamtrdllWUEc5dXBoOGRhMnVI?=
 =?utf-8?B?YjFnMitxVlZWL21wcndPTXNHTklvSXRuT0xoM2lsOVdsdmhpUzRpbk8xS2JM?=
 =?utf-8?B?RVFnMG5MWnVBak5HVm05OHlRVFoydnc4TGFhYzlXdXFlNGdjSzVYN1I1ajlX?=
 =?utf-8?B?T1hkRnpVaUR6V1V3NHBlWHh3RGVkMUtIOE1TMHBQczZSVnB4NVVjT01Pa01E?=
 =?utf-8?B?UlVqQmY0MXBnbFV0UXhUeHEyVHZLV0VmajYxNWI2WFNmelI0QnBMazBWaDV1?=
 =?utf-8?B?cXVBQ0ZMTzh1TC8wT09lKzlKT3dLL05NUjdyaU81Qm9SYW9ZbWJ6UzUwbGZk?=
 =?utf-8?B?Qk1zT2doRytZOGp6RkpUZC9sT1RMNVcxVU1OQnJJeXZOOWFHVUZXMkpjOVpX?=
 =?utf-8?B?SWJMUjRhWlAzSFRGTHlWWTUwVjczcXo4TTFiYXZqTUNJNjNzNlZDY1U5S1c4?=
 =?utf-8?B?ZFRuNEhCYTdlSHNrTTd1TWRqbVhyUnVucjVvc3ozVkZZTHRlMnhKclVMZjk3?=
 =?utf-8?B?V3gvd2hhR1RjOUloNVNiQzNNL3prTGgxVWsyMUZLbG41Q0tHcEtuQzIyNUNa?=
 =?utf-8?B?RExLZ0lwSmZnS1FvSjVkalhjQk50UUtjQ24wNVloQ3FGdlJjejN1dkRWTlB2?=
 =?utf-8?B?N1JKSlpkR2FacURidVZUbllBRzgwV1VjQkdrYjRSWktkSnNZN2xOVU5NQ0R6?=
 =?utf-8?B?ZWQwQ1JmNGVSVzZaM1NCUWJzdmRJTForaTFiR0hHZ29tamRVT0NjeDMxZERw?=
 =?utf-8?B?MTdpUjBFaE5JQjVZR3hJU0pOdXdXbW16RHIvSWxCNkR6bUcyRFJ1UE1IMHlS?=
 =?utf-8?B?dzI3YjMwSW5LRGFmRU50alVTVExNSFRhUjZjRlBqZ1VTcElaRDlYRXpPeWVK?=
 =?utf-8?B?bmFFRzN4MVpZNVFrWFpRbnBYZ2M0WFVMc25oU3A2cTQ4SE8rWmxXMGx6bEJO?=
 =?utf-8?B?YStJbFRkeWFBZVhKdm9hNVVibCtLZUZKQWNON2hyTE5zQmV2YkFvendzdjRn?=
 =?utf-8?B?TXUwd2pGYWtJNWwyTEdwNmYxN25Fcy9TM2NOWkRhb0ZESXlCRWNGbmhkK1Qz?=
 =?utf-8?B?a1lOT1ROeWVLQkM5c0h6NTNTM3AxTnFQSUI3VFNwL002TEdNTUN0VzhsU2xC?=
 =?utf-8?B?ak1xVmVvaGZVVFlERHo0bjRnUTFwRkRwdTl3bGE2RHNzM2FYTFJrL05YSWlw?=
 =?utf-8?B?dmJ0bGJhM285Y2FtalNnbjAvVjErZTJOaGpiMGFoR3dYMGt0ZWgzRk1SYk4r?=
 =?utf-8?B?WFRoZDRFci8xNENwWU5zZXZHVXFUcWNQNlU3T1RXd2MwSXhMaXdHQlJaQnVn?=
 =?utf-8?B?clRYTkpKYXF0a3VJV052YW53OVVDVHNTNUN4aGRkekE4a21xUU1ySCtrNncy?=
 =?utf-8?B?UnJTR2ljV0ZiMWlLVW1VTm93OS9lU2J2TTJNNHhDd3dFWFcwWjdkMm1lQkp6?=
 =?utf-8?B?UzFOeFRJUnhzRHh3bGJ0RE9hcDJiVUNJVGhGVndneW1lK084R3BUV3F0Qnc0?=
 =?utf-8?B?WXBZODgrcFR0Vytaek5pYmxITEpFdnNhSDA2L1VSTHdWOTBqTFBwRFRCZ2RJ?=
 =?utf-8?B?N2pKZDdMMXNIZUtoemhtdUpIenFZU3ZxUjVYS0x5dGFrVzNEdWM2Rzgva2VR?=
 =?utf-8?B?VnlyT3pWbVAvQzZrR25UUFFINWljRWVBRFlkYnl3NXFubk1jcTViNS9PUVhi?=
 =?utf-8?B?WWxEVDU2RFlRRWVCUnBWNm9UY0h0K05DQmgyaUZQQzdHNTdVd2hFUT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e86d0c85-bf53-4a88-8bb1-08de3f2a1288
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2025 18:11:46.6382 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ebe6guGEWm2XGamDu/A4nB4pcL/UAeNP6mK4bc7zyJGWua2G0cSsmSqKMu3WbTgpV6caQitKz8cU8tGd6Xq1fg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6911
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

Quoting Gustavo Sousa (2025-12-16 18:11:59-03:00)
>A new step has been added to Bspec with respect to the C10 PHY, which
>instructs the driver to toggle powerdown value for boths PHY lanes to P0
>and then P2 when driving an HDMI connector.  This series implements
>that.
>
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>---
>Gustavo Sousa (2):
>      drm/i915/cx0: Use a more accurate message for powerdown change failu=
re
>      drm/i915/cx0: Toggle powerdown states for C10 on HDMI

Pushed to drm-intel-next. Thanks DN for the review!

--
Gustavo Sousa
