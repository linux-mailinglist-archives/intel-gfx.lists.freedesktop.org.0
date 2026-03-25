Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOmVNVKYw2myrwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 09:09:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C3C321305
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 09:09:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C133D10E800;
	Wed, 25 Mar 2026 08:09:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QOIlxscn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C15F10E800;
 Wed, 25 Mar 2026 08:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774426192; x=1805962192;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ho34sYdN9KHl9rfbMujVK5A2b2cPgtzBUWGiG4WlDcE=;
 b=QOIlxscn81HnFm8Lw1zPN9oaUStN3mho16aSoJXwkYcjAwWyHQwZBTxR
 VY1Hnv1kHwcsp4HrOfh2/vzz7WItm264WWbCbB8mVgsUW4/fDUEdgF5rc
 UCy40/yEM+vLSLLjaZEppMUQOOQ7ijk6LYBqxVecDVY+BFVE2Eyv5f6dN
 9tqLj3hjWuxeZ077n3gMSkc9puH1qtDQYzgit6Jx5qr0xykmvVn4dkN57
 EwuLEzIZmewxWSHffje2atxJn4hncPdwWAfy0pV0ja24DvGsOxXegWFL9
 4DXm8uaq5gQ2LG+UGmAXejByMs4VqoOhZhlnAr8YlWIDAt+OvqVx+tjuz Q==;
X-CSE-ConnectionGUID: cb7YyxLXT62/XN6UHj/t8Q==
X-CSE-MsgGUID: WOt6dij6TruoT99N3KT4ug==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="75175018"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="75175018"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 01:09:52 -0700
X-CSE-ConnectionGUID: hsHHepKwTwiZKvSuJ886qw==
X-CSE-MsgGUID: sL5vuWUoQD6sUwhQgx4N8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="223808015"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 01:09:52 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 01:09:51 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 01:09:51 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.38) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 01:09:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YbxZZqQUVE0J1+TPSJ24nCseXYXz4vYrvmAPHlTJWGEttcBKmH9yXInPuaG7Q+THWSi68CUptirk4NQxf2ewSWsKRmDx+c3dtaJPBUCkK7ZeFScqqPFCEiVumqnnAAcKUtqT+9y3PVYm1DOixqGZH3X7ItBnk8LGUOWq8Vgo8a5FL7mZLl4CXUE0c2mZa2Go38rezjyeXfRdlXPur0r+NyYNhaa6X3zhymMsDgk9fUuoeTxzh9HPnQygQzfl7h4SvOtXEtxql1Wc97RdYtheX1wuUFuAkqNR/2ha0JtgiaTjbR35meH0pzdDGYriY7pAyCti0WUNYTsUplpzz6eKZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A4w1JdIuvlsSIn3S+HmAWYXaB8KhJjV+MYo+BEN4oqI=;
 b=Xz/pH5dvPt62Bci0fTcK/3NmeP/FNmctdMotxzNagDrl2xWzbAJ7iH3tgNsvhqmbSlm1DwtjkFo02dpItSAgcbhLRFYGs+2WrIxeSOKhtN/LziLnLuUl1viPw5/aIj6kZj17zfW+7OOSfAb7gAj3BSlm4dm9T5oAT8xCYTWxEGUlK2KF6OyvScFdd0742QdnUqacqvaiXVFogvA+4QXIX9i2TPFUA5Xw0w6TcGH26ANwtrKrWz52Bk5+vztYKcZiX8Y6x/xvLTEHhd7rfCYRMrri7JCVuQ9CbsRbFAGFybi9FJiN4iRXMnckeVNQFFakr1XpE5P2VfprTfojoFyKow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM3PPF607052E81.namprd11.prod.outlook.com (2603:10b6:f:fc00::f26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Wed, 25 Mar
 2026 08:09:43 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9723.013; Wed, 25 Mar 2026
 08:09:43 +0000
Message-ID: <af46d721-5894-4843-acd9-7dd1af0b6e3e@intel.com>
Date: Wed, 25 Mar 2026 13:39:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/19] drm/i915/display: Add helper for AS SDP
 transmission time selection
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
 <20260311113611.3393194-14-ankit.k.nautiyal@intel.com>
 <abQE2snfAjPn0st5@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <abQE2snfAjPn0st5@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0237.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1f4::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM3PPF607052E81:EE_
X-MS-Office365-Filtering-Correlation-Id: 8520b7d6-323a-4cee-f85a-08de8a45deb1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: akB4Wopst6cvjiUdj8bU2xuswpiNq+qZQfhrM/j6QdnsRX4wZI8JV8Arb0CUu+Wx8lVr/qs+dffG5OfFZ2wT/4ijJyoJ7b7eoI7vtDeW1+oyfrAj7LOy2+D8vGgxuXXdsPRN6rnym1Y7NFYEWFcE63HmU2PXOpmjzEjpDaX2tfxUD8/FHX4MOomtAAFMOJQXQ5kE7YQZEyrPo8jVnBMzxjpkjmpE6KdWP0HB6cNCawocFsff+/M3/IfrQ6Pap6akCtQx0tk//RPxIP2AjJT4Dss0dtFBURTHIQN/Imo0QOknsQ78m9FuJYulm10+HGSwq6MZk5Qsqunxr1ihuqCSMkw+NGfat4Csy7uAPWk3D94WYzYu/oQpT0CU+gpizDr5U05QIe+SihdSkp9R94cyDJOCAzaNal3IqRFWxpfI3mqaayzAVTihknX87I8ORRdooWJhf1GBrM7r8gMS/OSYgnIl/rL9+x/DuMVTY1N7j7wUtutK51drtlxZ0xiM72HYtsouG69pSFLIdD65a65v7IcIzYbXx5XqtvL6Wu38s4spkTT8Ja9WWtWMTl3gR+xODBVefMUPzINtsYKK6Gsdf4R7zPMBW4Q2xm2ztsluDFGvjO8Uw3MyJfqKF0hU1vqNv/OQ6WGxnTES8CdvQWE7G77pKt9fiGM4HHKN0+MmYQ8kU7DM5HjXIfFCaSHfVC6WJiozHQXr7AuH2oil0QMVm7mH8Vwv0/j8EJp1brNULJ0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFFBZzJaWGd4QlJFRHdZMmJPZzhBN1drRkQ4SUNUUitoNWdtaWZOVEN0Q2RP?=
 =?utf-8?B?eUwxeFovWVNzMjhUcEgwcTJvNnh6QjIyS2hYdERzN2tuY2FRMkp3eGZ2WWtv?=
 =?utf-8?B?V1ZPYjZ2ejVMWUJDMG5haDdkSWFEbXJPY0xIa3hRaE9xRUpJVnZibHFWRkor?=
 =?utf-8?B?aWZaT2wwSjE3aWluVERLYTJzbHpLSVBGRWdJVVVCdExmM3JubjhFUGVaUFRl?=
 =?utf-8?B?aDhTV3pnTDdDMkdrUnFBNzVrY0l3TmdzV2dEUlpoMVJzcHltMi9YZEg5ZGky?=
 =?utf-8?B?OS9RQmxISW91MWxTbVdqRVVvR0NVb3ZRTlZIZkhYWUJIWXR5Q3JHV3dsM2dI?=
 =?utf-8?B?ZjFCVHNEUjhYeHRCRGY2TStwV21samRSN3ppc2hiNXBGSm85UW9sbFQySUJW?=
 =?utf-8?B?dnhwYy9iMEppZGxvUjduem5rdmFCWEpRK0NzWmZPYlVYM0U5SUNDU2FHS1Mz?=
 =?utf-8?B?VUIvOWRNYXo2dW8xc1JhMDZQREk0YVJ3RXF6NURqeGRnNnloOFNxejVrMXoz?=
 =?utf-8?B?NFY5akFyK3BISWtkdlBPZFpBa2xXNjVicnkvY0lETUVhZ2NTZ05BUUYweDVq?=
 =?utf-8?B?NXJRblJPRFNPQmtpOE4rc1orU2YyMm9OOVFGTVVXSGQ4TGhJM0dqbW1DOEN3?=
 =?utf-8?B?QmlzbXFtblpBTjhrOFR4V0l3UEFjMmxNQUlWN1BDT0VKVW11a1gwdGp3a2c2?=
 =?utf-8?B?dllJOWJuanJhVEZ6ZjZ2eW5DeEVRb1d4SlhTRkR6VUw3OEVsUW9KQnkrZWEw?=
 =?utf-8?B?L21NR21hRUo0Z0ZQVm5qajFQZjhBZFF4MGFnTVEvbm80M25yTlNyeTR4b0E5?=
 =?utf-8?B?VlVQc3h6WWFjN0gvOWszL2p2dXR4WjYrckkrNk5CNnB5cW1GRU1FbmhsWGRx?=
 =?utf-8?B?ZnkyQXV0aUdhVlhpZnJOeUkySE51dmFyL0dUWjFzYlVkTnprT200NmZWSTIy?=
 =?utf-8?B?cTM2blM3SXJwdGo0Zm01TjRXOC8rSE9CQ3ZqdTd0Q3cwODVnZnRWUEZzaEFq?=
 =?utf-8?B?d0pZTHpRc1MySHpNOWNFbXYvQ2tKekVlS3lVNDFkSTFxVlMwc0M1azV2U29M?=
 =?utf-8?B?RWpaNENkVDVJYWF1WG94aG1TM0RHSjNoN3hNSWFxcnRrTzhZVmZsQUN1M0hV?=
 =?utf-8?B?OHZ6SitsY1Z0TmNNVkc3cENBWTNHWXZiYWlxT1NuTlQ4YmxWbVdyQzVIS1JN?=
 =?utf-8?B?OXBaYkxBQTBpOSszQ2hodG0xZWlNMWhyK3czSXN6R2FnUU1DZFcyZThhYjN1?=
 =?utf-8?B?NDZsN3RhcDJNYWpSb2k4T1JReEFBSkF6OGRjTjFyWnNPUWxqUGxBeGdNT1RJ?=
 =?utf-8?B?VzkrSWF0cnZJR1htTWk3eWoyOWVRcTJUWDJ5OGtxalQwRWtFdHZuNVRTaWVt?=
 =?utf-8?B?dmMrNCtHcWU4M2tHOWhaekRjMDJXN1l4MlNIajk3RVdTc2hwUHlVUHJYTHd6?=
 =?utf-8?B?STZMUjFQMnd5SDdBTGsxNlhvZFlhLzhCSEtRMks1VWJVdEtianVGZWJOWFdC?=
 =?utf-8?B?a3dEb1lNUGVHZFR3Tkh1SWdoKy9CSXBlMFhIRmo1VXlBKzY4RU0xSWFadzNm?=
 =?utf-8?B?Mm96UTZWNWNpQTgwRkxvTE44QkNDU1RlMWNSZ3pqL0JoZWN2MXFLT3FFOTZY?=
 =?utf-8?B?SHdRV3Fha3JuS2F4aWpCbDlIb1FidmVtYlBqRlJTNk1qTjR3aUI0SkkrcENj?=
 =?utf-8?B?Q1hKMjhkQVFScVRxYmVlOXNwcTVuKy9rWVU2Uk9PVDlWRnUyaDVhMHY1a25T?=
 =?utf-8?B?RjE5clJxTWsxOEtwMnlHajZrU0J3b3M3NlhGOCtwRGJicXFEdzhnZi9aNkMx?=
 =?utf-8?B?eFMrak9RclNUemtPT1VzMURMOHdjZ0ZNWHUzM3BlS2Q3ZWJYZjdZTVlLc0cw?=
 =?utf-8?B?RHlmS08vMVFpTGF4cTFEeFJYUHltRjhyWHZxdkxnQUFjaVdFTnhjT2Izbkl2?=
 =?utf-8?B?dUFNMGRpcDRHZktodTBJWTNzeFRTOXRFR0RRb3Zhc2pERFhsWmhHYnFvYnhW?=
 =?utf-8?B?TGRTWTJ2NTE2bk42UDBkQ3pRQ21EcEtYdThvRHBIa2V0bVdjcmZSRTJSdk52?=
 =?utf-8?B?WFJBYmFhbUtTbHNndlR1a3g3WkZkYjk4KzZzUWZuejJBeENleDBTYWVtdENa?=
 =?utf-8?B?MElWcDJsNlJkNm1pY01HdThpakovTkNyb2J5OU5FeWpDa2YwYjFNaGtBSmhn?=
 =?utf-8?B?SjBMcWo4Q3BDc2JHN3hkR3hEL1ZrcXpJL2E5RStkTkxNYzVYWklJbmVNRXpa?=
 =?utf-8?B?RmpIV3k3dTJFYy9pTG92R3JCN2Fnd0lpR3Avbk5VY1BhbVBFMEpwU0ZlZG1s?=
 =?utf-8?B?aHNRV250Wit3aVpYQjZCWjV3bzRVQXNabmVKQml5eVRRQTRWL1VaYnk0eVNM?=
 =?utf-8?Q?5tWqlz3LM4a9ia/M=3D?=
X-Exchange-RoutingPolicyChecked: uMbvg47ALmN/qmx4JD34vpg7mNBSN+geuCJUd2hvS3hrgg4azQLOuB8HcieZcipa5XA2UiENOA8Iv02wKRsOeIUnmhcm+j3/fpNfoiAt9+kENu+rUwdJUWAgiYeT6W64lBgXNnMX1m8fQKBz/kf8Z6by2YoX+JrILJX/h5lEeCuW7ZCxEGdrg2f/BAa1QVylTxP6byySU7JrYboVra/6ih2ikp8425BItrrj0DNfplTzL4p87WjTCMjnIiwRjI0PwsxsW2aZTP6wYbYKZA4krxFjV35IpR5/9De27NxEsYATL5bOlcSmYj7A3aaqABloeA9VBUYJ123J1827rEl0aA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8520b7d6-323a-4cee-f85a-08de8a45deb1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2026 08:09:43.6084 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q++uKEEiISX8LTcKeomdOoLP8wBGG3pIcBV0oPzT0wi6v6E/FzF5j8B0a/SqcHABRyXhxiyhwCiu/Xj3gZZm6rjMvn4VwuKFOb3HdhRJArI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF607052E81
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
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 43C3C321305
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/13/2026 6:06 PM, Ville Syrjälä wrote:
> On Wed, Mar 11, 2026 at 05:06:05PM +0530, Ankit Nautiyal wrote:
>> AS SDP may be transmitted at T1 or T2 depending on Panel Replay and
>> Adaptive Sync SDP configuration as per DP 2.1. Current we are using
>> T1 only, but future PR/AS SDP modes/features may require T2 or dynamic
>> selection.
>>
>> Introduce a helper to return the appropriate AS SDP transmission time so
>> that a single value is consistently used for programming PR_ALPM.
>> For now this returns T1.
>>
>> v2: Avoid adding new member to crtc_state; use a helper. (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_alpm.c | 20 +++++++++++++++++++-
>>   drivers/gpu/drm/i915/display/intel_dp.c   |  9 +++++++++
>>   drivers/gpu/drm/i915/display/intel_dp.h   |  2 ++
>>   3 files changed, 30 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
>> index a7350ce8e716..0a6da3f926d3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
>> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
>> @@ -11,6 +11,7 @@
>>   #include "intel_crtc.h"
>>   #include "intel_de.h"
>>   #include "intel_display_types.h"
>> +#include "intel_display_utils.h"
>>   #include "intel_dp.h"
>>   #include "intel_dp_aux.h"
>>   #include "intel_psr.h"
>> @@ -359,6 +360,23 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
>>   	crtc_state->has_lobf = true;
>>   }
>>   
>> +static int get_pr_alpm_as_sdp_transmission_time(const struct intel_crtc_state *crtc_state)
> The type should be u32 since it returns a (partial) register value.

Ohh yes. I will change this.


>
>> +{
>> +	int as_sdp_setup_time = intel_dp_as_sdp_transmission_time();
>> +
>> +	switch (as_sdp_setup_time) {
>> +	case DP_PR_AS_SDP_SETUP_TIME_T1:
>> +		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
>> +	case DP_PR_AS_SDP_SETUP_TIME_DYNAMIC:
>> +		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1_OR_T2;
>> +	case DP_PR_AS_SDP_SETUP_TIME_T2:
>> +		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T2;
>> +	default:
>> +		MISSING_CASE(as_sdp_setup_time);
>> +		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
>> +	}
>> +}
>> +
>>   static void lnl_alpm_configure(struct intel_dp *intel_dp,
>>   			       const struct intel_crtc_state *crtc_state)
>>   {
>> @@ -382,7 +400,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
>>   			ALPM_CTL_AUX_LESS_WAKE_TIME(crtc_state->alpm_state.aux_less_wake_lines);
>>   
>>   		if (intel_dp->as_sdp_supported) {
>> -			u32 pr_alpm_ctl = PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
>> +			u32 pr_alpm_ctl = get_pr_alpm_as_sdp_transmission_time(crtc_state);
>>   
>>   			if (crtc_state->link_off_after_as_sdp_when_pr_active)
>>   				pr_alpm_ctl |= PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index e6148e7f0ebc..74a8af3cf18c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -7439,3 +7439,12 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>   
>>   	return true;
>>   }
>> +
>> +int intel_dp_as_sdp_transmission_time(void)
>> +{
>> +	/*
>> +	 * For now we use T1 as the transmission time.
>> +	 * This can be later changed as per requirements.
>> +	 */
> IIRC Bspec actually says we must use T1.


Hmm.. I will check with Bspec and update the relavent Bspec number too.

Regards,
Ankit


>
>> +	return DP_PR_AS_SDP_SETUP_TIME_T1;
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index 2849b9ecdc71..2e4609d9d05c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -238,4 +238,6 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>   	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
>>   		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
>>   
>> +int intel_dp_as_sdp_transmission_time(void);
>> +
>>   #endif /* __INTEL_DP_H__ */
>> -- 
>> 2.45.2
