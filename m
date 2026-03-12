Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BXnI7qhsmkOOQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 12:21:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F35C1270CAF
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 12:21:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F14210E9C1;
	Thu, 12 Mar 2026 11:21:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cfx00XST";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2083610E99F;
 Thu, 12 Mar 2026 11:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773314487; x=1804850487;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=oZSHXUBXojadC4kk7dhv3T7d1ENeV8LD1wDjF+/lATk=;
 b=Cfx00XSTVoEXdGP36j1syHoXoAHrhkEy2hLOMldn9kEwXEPB/oq8JDQI
 hBC75WhVcu4AG9WCeRH3sBJQvPF5zEbr+w9OSR3MS32Zib+RcwXz6Pyy8
 q1WQyRmka6IHCBoDHKiVwlGrLphvwdHoPkQAyNGbaSasn9JqslW3Yr+3w
 t8TOVy9E1vfFKF8mnTHmW+a8Jg4rHpg2ux2v8lvyJTw2+PSWX+xQErboy
 ncdPETIpzgO3RHsjDRo/QSgaEOcSDx6/5t7tFfSzhA5tmlGIwtuK3qVqK
 lAvAzprzqbSawbfVwp1YMG3Jej0nbwgZ0HWpYeQd9TYY17tAA3hLjyPhz g==;
X-CSE-ConnectionGUID: ZGN8oRtfQsaZAHa3H7whjw==
X-CSE-MsgGUID: NENZLHJES3ms/M9smXOqAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74295468"
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="74295468"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 04:21:27 -0700
X-CSE-ConnectionGUID: Gi2C4ZAGR7i1CEBjbJgJIg==
X-CSE-MsgGUID: LB7cUfb0QUuTtA3P8AXPkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="220986863"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 04:21:27 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 04:21:26 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 04:21:26 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.46) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 04:21:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EffmZTFEApNk0EVaktP6ryN/+UMkPbvmelA3oueJzFY6iDd0DyOfcPKKCfCOZyA/oj720VZ//4IitmEapoXCCUh9KFvUszTMUq1bQMLSHiktHDrq1qFNCVFM2o3D78NkqywbnzyVWXUL8FV/CErKN65/zv5bhLcwb7hmvZArFKT85SapAH1aw67KqomcJg/SuPfDOTC5jrq+EKJBTPMaPYIT5wXSKV7v4Ri8fCQiGFNcoo68Fa9tvgcBExAh3ZtwJp6DPdwfalcU9gLSODBFLlEnXH0S5sgZ0yfkOzyF+MJDIpD1ulZfjmeN3Iy2rzlz5Aq+0YpWr1pQD5qFj7RvGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=szMVXNDgptqmRaOp+xZFHS79oASpfr+GD6uXCa+kIvI=;
 b=MotjlINXQGffmyWewBLj05Phdp0eXZNE1EgKDkDA/NgqOEBbw6kWaedSkynKFQyfXlMwBpo1de87QVsbCJs6WHPXB72bt5f7h3dxXxqOvyK3X+M65aCng9ioTGf/sAu6CdC29b2v1CzLaguGRJB+77x4/GfBD+rGWvsnEnUpJpqKKXHPauaAL6AAZLmXv9DmqGtIJ6ZyvkO7LH3l/Zufo7FKmwY4hmi0OVdC5FZufqySMutOzhGcp6R7RBuTCI0IixV01Q2Ej1AyQK0W5bAoSIa1mxNGSZethEvaA1gWvXmhinZ9Q/eEkU2wM9YnkVbFmUfMFlq/8Zoulc+Di2HoTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB7204.namprd11.prod.outlook.com (2603:10b6:610:146::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.6; Thu, 12 Mar
 2026 11:21:24 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9700.010; Thu, 12 Mar 2026
 11:21:23 +0000
Message-ID: <e1d32e36-aac3-4184-808b-fdce8643205b@intel.com>
Date: Thu, 12 Mar 2026 16:51:17 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/hdcp: Take force_hdcp14 into account during
 check_link
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20260225065045.3040787-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260225065045.3040787-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0180.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1af::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB7204:EE_
X-MS-Office365-Filtering-Correlation-Id: 840ba8af-abcd-4491-f6a4-08de80297e31
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: PKukd9waKsgez39aswLs6t/lInMxEzl8Ts/X0AfatqOYFZTJjmsfJna1jPQ6s3+123Ii5QTZp7LoF4fvU+m60H8Ur5DAINLrPNdaTwj7mEGdnZyC91KNm32F7mCRfwh3iilClquACSM7h8PGLOhKNqhB7EZIKCKO1zU774fysjzb7jpFvCjjZinh/7iDCfJ1g7+yCvZFT3kKR8tPHJ8MgRpk3ZWyD8OY5ettiKLi7WlzWxKewsIH7knq+QCAcxxWJzlTmE//Eyvwzk1HhzuqmqTf4XJSvzY/EetZQJu+ofsJ3FkOVRXTdspZwc+HMpOErN0uNB9uoZ2fEycBkN+ov1G9FccGGokbbh1PevpX8Jn+vrReSjlcnnEA4je6k5RkBngjLcj/5XzUzlLMbaJjCt7/qIH+yX8KYmu+owAPNU0HiYd1nb8EyoZtqbbnkpJmURqPxd4ZbA7fX1kdP7eYfeKpXHnwwOsWsTlxZ1j+9n7I80oMJNECePQt5oPgm9eNAUaB/v4z3nDBi/3vgxUzAf0gskIzZRucEiiachCOevMuuVv+5Je7yQylNi46vH3PwMnh8PMnfljGygNF6ftBtI5ydoSMUXjSmditfoiZGbwtS43lJa/pp4v0Oc3ixUVXPzLpXVQivBeqodKi3LP8M1emuE8uOAURrs0r1XfvEOs+RdB/FO4dZV3KBRx8yDpXrK7K6RdN/mS04Pio4rfqbQROyydlfEdPb0bIAtk/6SE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dmdIRVFnUzRoeWRWa1EwVHFVZXhSZlhQb1NONUE3SkMyV2l1SkNwdFBmQTVH?=
 =?utf-8?B?VS9DcGFGS1ZESFZkbkFJOGhFQ3JwVk1wMm1idUJ5VXpQaWFHdkYvV0RJZjkz?=
 =?utf-8?B?RHF3NklIUkRTQmVaQmttTDBvenlUZXFvOFB2d3p4dEN2RXpEdzA4aisrWDN4?=
 =?utf-8?B?d0t4RGd2YWg3aUFXZVRDRzhZRExsYVpUeTEyMU8rVEpPMURaRlhXN21pZUkv?=
 =?utf-8?B?aG94UExrWktPeFVBR1VXc0VjOHN2dDhCSEhmMENCTkZMMy82VWlDa2JZUXo2?=
 =?utf-8?B?bkovbDJteFNGaHFkM01PT1cvZytoSG1WWXhWN2F5TFhPeVJwMXA3QUl2aVlW?=
 =?utf-8?B?czNmY2tha1JBZjhycGtxUjZWRWdlV2xldnlIVlVhTFZ4aTkySXBaZTc0NzZN?=
 =?utf-8?B?MGE2M1R0ZUNFUlQ4K3BsckY5Ty80aUtQWWlqanljN3dqWUNaeEVtdlNzRE1n?=
 =?utf-8?B?SUxoTHlwcHhaUXlMRkt4aUNUNGZLMWovU1ZtMmdtZWtqR1VHVmRDV0tnaFdK?=
 =?utf-8?B?MHlTdXplYTR5dG5ZT0dTbkdLMURZQ0ZwNnd2eFB3ZTQvYzkwZ251b2x4cm5x?=
 =?utf-8?B?dG9JOG9MbDlHRjBPWkg3R001U3FFSTdDNVlPNU1OVHRXVE5rSnBYWTRPZ2Ix?=
 =?utf-8?B?bTBTQ3dLLy9XekJ0WGhmZTRXUEh5eGxpbVRiSWdaRmRUWEZWMFd4VXU3Ykcw?=
 =?utf-8?B?aEhTNUdDbXlmVzJPMVpTYTFUQXlTZlp6OXdEWGtaZndZekZ2N0x0YXJWVlZJ?=
 =?utf-8?B?ZTY1aEF2aklrOGZTUWk3cmh1WkMrRmI0WnQ3Ny9DN09IZUxHcW5tcnVFK1Vn?=
 =?utf-8?B?b3FFbDhNa0ZqR1p1eFNXM1dwM2tLZGpTeU5EeUVpNkR3QnczRFc0a2dub1VV?=
 =?utf-8?B?cGNBcnM3VWRybUgvcDdETVVLODdTOEhIK3NwLzJzbE4rSUNqTVpqeTBmSDFP?=
 =?utf-8?B?b0tvbjZsNXh6Ykd5WTM2bU4rcXdDb3gzNUlaK1gra2ozTXlTeG5ZK1didjZq?=
 =?utf-8?B?VGhkVFJkREx3emxMRnhIYUM0K0lDU2haaHJCL3NSeWh3d3VGWEx1UXZObVBB?=
 =?utf-8?B?WE9ha1F1elI2dDFVb1JzbXdtMXNRYkVHNmloa0lMVlNKQkpwN1d5NmpVTStp?=
 =?utf-8?B?STlDNHlZUnFlNGI5UDY0TGRZRmhOUmJKc2VGRHpyMnNRY0pnNDd3K1d2dVFU?=
 =?utf-8?B?NEg0SU9hNUFPQkdxWHhkN2N1akV0TTBVNzZKUk9UN2pPOUlaeFhQWmFKaW1p?=
 =?utf-8?B?QUxFUzNZdWJIaGJWNE5lZmI2aDBxSmd4ZWFoOXU2d0U4YXZNV2l2VUFvdDJj?=
 =?utf-8?B?c21PQWczYXJZUGNJNlpiTm45bGxhRjYwQjFYRVJuK3QxVFYvWHp2WTZVeFdq?=
 =?utf-8?B?SXd5SzBZbFN2b0dwQjZ1MHhaSTJVQTBKR29NbklvV3R0Y3A1RDdOMmhRSmlF?=
 =?utf-8?B?dzZXOVpzTGNLampVazBWaitmNzVDeVVFMVFJcjcwMlkyTDZEY3RTUktDemtJ?=
 =?utf-8?B?WlJCNmpjOW9MK1EyME5hYU9hOTlXcGJ3M2Y4YmlyNG5Ka2tOamFhQjlOeTF0?=
 =?utf-8?B?T3orMHlkdWdKdmU2MkRUSWo5ak9lVlBZck5MRHFOOUE0dXBsN2haZit6aWFi?=
 =?utf-8?B?WUk0R1U3bGVaeURtSE85WTJveWlyZmVveU42MWFNSGRRUUJ2TnpXMG56Mzk3?=
 =?utf-8?B?aVN5UTJHK2VUNXhZZmU2aHBnUkFOUUQvcEl1dk92TndIZG5GditMajF3ZDNa?=
 =?utf-8?B?c0RuaUpPWjdtaFFRSkIzNWZUcGpVZUxDTm9pVC80U09QQjhnamYvRGVrY2ZQ?=
 =?utf-8?B?SEFEdmppRCtYb2cvT0NYR2tRVmtQaHBKd25mSFI2U3lKNXEwVG5XQlpJRDJ6?=
 =?utf-8?B?dWY3b2dKbHV0MGhocXVuekJIZDNkK2wvUmpMUkk5UmpGazJOWTkyT0RaTy9V?=
 =?utf-8?B?bFBicEJRQ3Q5U0NUdVJNUG5uc2M4VlBJQkdxWnV3elFUNHFKbldmdUJxODNK?=
 =?utf-8?B?UUtLbUhTRWE4UDNLcGtldGZHL1FrZGR0SjRBRUpoL2NuYk9PS2h2cFhoNnlN?=
 =?utf-8?B?V1krelRWRFNDYXpCSmIvQWpiMi9IQ0lFd1VMNlZTTmlibnN2eWpVdFhHeTFC?=
 =?utf-8?B?WUFSdmlDTFg1VVJ3MC8wTHIyZDFUSTdTYW5ma0F2N1lEUHFjcnJNeUdFdElG?=
 =?utf-8?B?dEdOMXNHaE1qS21KaUVJYWxTSVBzYi9FMjR2dmZqK1lYZzlEUnc0cE5GOE9E?=
 =?utf-8?B?T24yQzhCcVE2NURkcmRwcEI2RDNrU1VpWVVIYlNVK2VweEk2Ukg4NFgvRE56?=
 =?utf-8?B?SmJUNWdsdkRvMkx1SllmUzVJVm5Ob25hWHpqcW5uOEpxdXNrRnNTcngrMXVo?=
 =?utf-8?Q?flHhwCFs8h7KpVgY=3D?=
X-Exchange-RoutingPolicyChecked: ebP/n40OKAoAUCOLhUeLqCPAAtMK7617cPM9JdpnYvWCpICOZO58ejD84u8Gt4hJoRiCGwtt5HeETsr3v6Hsv5KTwc2kAT/NPGoJakOOfqUA3WNzN2hnNB0w3wwn06jakpLh0VAbd83xJCAhtwr8lAHDIwjWlWeYtD6M+/z8JXQ4t6QS8IMhhmYEUy3FMKMz0Dwkg173oNP+KBK/1eWNDdu3hUtaYFWr7bHI92YYa0pLV/uGgrIW42jqqaJhKR27YSfgkeL1/lwpGCOjuIWU3XknPjbY6cK07GLUpKPgBmv96s2HPTLC+RBAjrkEbvFwQYYajCGDh6gCtBEpp7uHpA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 840ba8af-abcd-4491-f6a4-08de80297e31
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2026 11:21:23.8163 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RuWH53+0ChzU2wHlk3ZSWwszL0AJP61MzFnRnjS6PEgXUzw4g4PQwa6+IVt9gWhuS2aZG5y7WgbZxr/fRjH86AGjuIKbewhC8Y0AaYoMwKM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7204
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: F35C1270CAF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 2/25/2026 12:20 PM, Suraj Kandpal wrote:
> During intel_hdcp_check_link phase we need to take into account
> if we are currently forcing HDCP 1.4 or not. This is because
> we check for HDCP 2.x Link first and only if HDCP 2.x is not being
> used check for HDCP 1.4. With force_hdcp14 in picture we should not
> be going into intel_hdcp2_check_link because of which we may end
> up trying to disable HDCP2.x even if HDCP 1.4 was enabled causing
> a lot of issues while IGT tests this.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 116d2e0af878..892eab4b6f92 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2231,7 +2231,7 @@ static void intel_hdcp_check_work(struct work_struct *work)
>   	if (drm_connector_is_unregistered(&connector->base))
>   		return;
>   
> -	if (!intel_hdcp2_check_link(connector))
> +	if (!hdcp->force_hdcp14 && !intel_hdcp2_check_link(connector))
>   		queue_delayed_work(display->wq.unordered, &hdcp->check_work,
>   				   DRM_HDCP2_CHECK_PERIOD_MS);
>   	else if (!intel_hdcp_check_link(connector))
