Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLGGJCUpGGrneggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 13:38:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F365C5F1632
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 13:38:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1555F10F060;
	Thu, 28 May 2026 11:38:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bsgoA0eV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE3C010F05F;
 Thu, 28 May 2026 11:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779968290; x=1811504290;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5Qb9fnr95s1llPS/mmqfH3MVyLxBJPKrLgpidE/S6nA=;
 b=bsgoA0eVKS9PcIU9DcunrOkKpKe9bJGK1g1/WpdUuY4+j5foZ3/4EXps
 fV5qJjjvb2m1WMwkRBkKzgoJbsOtmN9JFBh6swheIl+SVu9lGD0O4Kozm
 qR9FwpNinf8UZoTZ006gWNkrP15EX64L2ZOoRy3/KnXsGsxSAWCuP8sIi
 b5scj6COKIpE3uTOXw6aWAjw1gm7vWpHpt3w95YbRTiRIo9iC07ChLkIJ
 oSXC8amHmKB6vBMyA9qiPySbgw0nQI46i6pBjnI7GvHnoL59lg1qMQPiE
 4nwl3zFbHPj1SRsK6WwbQfvhGXmkTgDspLNpApD8mJY45q37ad+zm9PvX w==;
X-CSE-ConnectionGUID: gPmZ/JpoRwm0utnMDajNWA==
X-CSE-MsgGUID: CnEn8AdoTyuq/FLg0qrS8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="80922220"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="80922220"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 04:38:09 -0700
X-CSE-ConnectionGUID: kT036slTRIakQWnF0aSVGw==
X-CSE-MsgGUID: GgCcerUoSJ6OvviJAh9q5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="247475037"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 04:38:09 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 04:38:08 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 28 May 2026 04:38:08 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.11) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 04:38:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dUgdvq39LeMaUUEI2J1E8jIWo4WhqimbVAZaWVa017XtKaOTW2vIcrTaZqoGIBgKxr8VipKHAbAg2Y/PITJY1N8gnvmAUD1qBCHOAHLoOSLDDnrjQdXOjJYtVgVbvxbf6vb65mFE4sP+8IHU9szzUldiRjddg+ZQk98icFGqCbDxO2/SwABE3wWlH32JEAtzv9NPUyscjUW6Sl8/Bzmv1oIRQwoweyHJg10fQX+2Ijk4gS1+eBuGrddLe+zii/Kr6Rd1PJpzwycRCA6KmPmWJxRiXXuJvLFlbWMyCnL3h9B24mtlOMRtEeL4s0KxSvkpxYXgJQUfaPLpZ4bjuP7G2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lpl/it1Z1SH8pAeJZdPpKENMbHLazGnmsxA5n2XX0LU=;
 b=loxx1RXF1rIrlajgGr9SsYC8/Ea9zsNkY3MY8OAF/DzxMjLEfU34f+DC/MzYgMeoyMY6Qh2bb17aCReK5KLfhJq2Xl5SBy5eV1RUK+xses1iuBW0NpjwVc9ys1I9Th4DgIyBULFegB5XZon7V3xTsCdR52L+hAUHP+LU8zZ170ZUkWTrhIWWozPSN8y/RsPc0nsYQrSQOg0aBG/P4Xg8/AOzxpylcvdW2/6VdwRWCIIbGqrKh9il9u/1OIxSMcaVhoZxm4irC+wPRN23JDq+zQEOcb32p3Usc8H/XsexhUzL+X2czKs7U6ohyduqg7NyqbkKU4+mzpeEJyLBEWb3CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by DS0PR11MB7733.namprd11.prod.outlook.com (2603:10b6:8:dc::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.13; Thu, 28 May
 2026 11:37:48 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 11:37:48 +0000
Message-ID: <550c4d28-01c4-4436-9dc0-49244806a69c@intel.com>
Date: Thu, 28 May 2026 17:07:39 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 08/13] drm/i915/display: Store DC3CO eligibility in PSR
 state
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <animesh.manna@intel.com>, <uma.shankar@intel.com>
References: <20260526191826.3786009-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260526191826.3786009-9-dibin.moolakadan.subrahmanian@intel.com>
 <1fe60be5868c1a6f9ac2a60007a14989f2d4989a@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <1fe60be5868c1a6f9ac2a60007a14989f2d4989a@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0191.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b6::7) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|DS0PR11MB7733:EE_
X-MS-Office365-Filtering-Correlation-Id: 54edbdcd-baac-4bad-3f69-08debcad8b4c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|3023799007|11063799006|4143699003|6133799003|56012099006;
X-Microsoft-Antispam-Message-Info: tSWyQh1000dWmeGU4NPSV3b2Q2ktNk85kVDY2O9pNhMfk6h41yIWGnUWNYRshcP/hZI9BBQbMAGpdjZqyC+XdnYDhR1jAiwW0zpqMyX8BzJd1RZrFzvSVExt3ciNZ/29SmBwO6wGs9kdC4cp4JstqBLAgffX7x6xkLvfr6cqc+cgC8xwRyYteFo4IVMJDHk6xf21SsKjS9ueMtdBlCPEchYFVpLOsn0LsGm9uG8QmE4bSa2XBB9irA89BW0RYSCuGmZw7SRfkV0L8ICZtYFnA/M7PX81fjyj+Vx7KjnkB8H8PXd6rBeR88dlz16LqzZfS4oFY3nKwPVi349izcQs2p12P3Qz0+WvbitfnrG8WNXk3AJ9MbMa5EN8QRu96NHj0xiFurIP9n6M936HsUDdZpLQexYCtGnBX7x0q9sOEe0z+jqQweqvVZTq6iKwCDlg1mjiFOniXTPHrOS8YGETCWB/U5YHsed8TXoVTy3c65PDobVQwpDBqLyDPxS8SUp/ZXM80TLbOlJikiV29Eeb6EWDUzqd3XBjwZWVDZwRBq3/fIF0lErmMWaTmvoQ/G5u2gMxS9YSU/nzbh4SI47KQ9JpTP1SobebkqWwtIxX/WQwM1TNKA2niik8oVpZ/tEOzJOxLgTwAIl0WaOQkPBemzDkCqvz9lBzCdck+opcloJ9bUvaBqWxVYzPhVHlHwst
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(3023799007)(11063799006)(4143699003)(6133799003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?REFuS2tMb3F6eWMya0dxaFFBVkc1Tjk2Y2FLZWc1bitsczBUeVFucDc2NVE0?=
 =?utf-8?B?cHhUcURFUjIyNXpJU09EOUY5K2RaWjRhb1libEUrVlo4Tm1VY2dYVkhCamZT?=
 =?utf-8?B?bnlISjlyZzZKMFRqVjdCRmhMbGU5d2JKSFlPOUcwWUxrbFZhNk5XcFpSN2Zk?=
 =?utf-8?B?b0JHV2VneWlWMlhvblluaEhJeVVIaXlueFZEbXZZdkpMSS85ZlZwM2lMNGFQ?=
 =?utf-8?B?WEdaNndUbVRqNjVxOURtU1ppVTI2bWxxZ214d3h5WkQyUmxGcDhyazZZS20r?=
 =?utf-8?B?eWlHcm9ObTdRZDlZRTZybkVEVGVlQ3N1dTNrazJtS0dpWGdKOEowL1Y3c3Zv?=
 =?utf-8?B?VGRkVkNoajRDdGs3amtyU0hvRlZxazNWL3IyR09JaEFQdFo5M1lzM0tMQVN5?=
 =?utf-8?B?OHpVRjFwRGhnK3NqZ3ErYzZKdCtxVmVkWmNsREhuSmFzUGcwM0UwL2hOSVlu?=
 =?utf-8?B?SGpiMVVxS2pHbUE2QkRpb2NvaGtsaWpwRWtmL00vVGZ2eFRmcDRsNXFqVnhD?=
 =?utf-8?B?MkZXU25oR3FPSkVSVVBLbHIxZlppbVpRaTRDMHdndXJIZEpzVTk5QTFRenNJ?=
 =?utf-8?B?NXE1YWh0RlJUcURMT3JLejNlQjBaZm5sRjNpendRaDdCUDZ1Vm1ScS90WFQ0?=
 =?utf-8?B?VlZiSGh4ZDdNbHBBQTVQOGFsVnV1ZlQxT1FpNERjMy8zWWlKRzZJenhlVVZi?=
 =?utf-8?B?RW0ybEpjUzRhelJ6MFNNQ1RWc3VqNlhkNU5MWW9Qdy9tcGJBZWtlODk5M1Ew?=
 =?utf-8?B?QUc3azBjWFU4dVh5WGlFSXd1QzBVbVRPOGNJUzl2RWd6bzBnQlQweTFRNC9Q?=
 =?utf-8?B?UUZralcwajkrblhEdDB0eW03N2xtemtQSUdoVWlscVN5bGVJN2lMQUt0VVJa?=
 =?utf-8?B?K1hxamhJTGdUWnppeS9wQ0JLTGNQQnBHNmxnSEh1cCtUaUhWeis4NnArc011?=
 =?utf-8?B?d2RrU1VPNDJxNCtJREIwWWFGR29QbEJja1FjN0tnMklUbmI5YVpQajN0ZllZ?=
 =?utf-8?B?dXlZWEZTS0dUT2xOQ015V1lVU2lmRGlVWmNCdnZGMUtJMGhwRCtoOHU3cmVI?=
 =?utf-8?B?Y2pWSEJjUGIrTk1CYmg5RG94TWxPNGJrdC9pRUYvTmdEWnFBWmxWak9td2VR?=
 =?utf-8?B?Z3hETFJIWVk3YmkyME41VjZ0VTF6SnZRdENTMjkwTjlpZFY3VzloWE54eERi?=
 =?utf-8?B?NnZBelo4NDl0VXYza281OFNkUFIvZ3ovaFhqZ3VjZDRwUkp3OGh1TjQ4dEU2?=
 =?utf-8?B?bnB1d05BU2JpNHJYL3ZXZ1VFUlBVR21Ydjl1MGswVDBoUjRQcXlJbjR4YkpI?=
 =?utf-8?B?TDhjNUNBZWQrZXhHOTcvNTc4T1V1WjRlVFJxaTMvckZXVm9BR3ZiQlA1ZjIr?=
 =?utf-8?B?SHZVNHN5bHBFRzN5ZG1lTzFwZENWZzF6NkFxS1ZMMCtTbStMbTgzc1NMWGtD?=
 =?utf-8?B?UmxhOUhXaG4wZFF5MXBEYkVzRjk5bGh6TERtTmFkeFQ3Zk9nQVNtOEEvOUhR?=
 =?utf-8?B?cGtoK0dqL0lkeFpBV05nYm5iK2dmcFo4SUtncTU3ZEZRMUljMWZRekZ6K245?=
 =?utf-8?B?REx6dzByUzdjTVpEd01pV3VVVXE5djdUV2NaRkhLTHdVMmRDZU9EZ1dvRHNl?=
 =?utf-8?B?SDNoemJCcXhLYmMzYXE3N09FSlBqdkV1Y3ZoK1IxUFJNajQzblE2S2RnWWlC?=
 =?utf-8?B?dDI5MTRBRURiYzk4M1hhb0pMVmNmMEFzQzZ6Tyt1WEFtU05Fam85OHhwNjgw?=
 =?utf-8?B?dG5idmk5K0VYbFo4SzUyY1MrMklwaGVwb2szMkc3Qi9vZHA1WXpVVWUvbWZz?=
 =?utf-8?B?TkszSmRheGkxMWpIMDR2SE5nUUs1NFRHaDNIKzZUcU1DMU14WUhrUXpSd3RH?=
 =?utf-8?B?dFVxeFdwTGVVZHh1N1pPYnBVa09MQnNPNGJWbUprL1lIeVpHVDZUdEJaUFFV?=
 =?utf-8?B?V0djYldxWXZTVWJ3YzFzQmhtS095R3RxSDMzeHFPNncwbENzVE93TFJMTEtk?=
 =?utf-8?B?L0haTE56ZjJMUHBvVWlNaW1JYSs5TEpzR0cxQkJUQ1VQMDFQRjFiZVZOV1pU?=
 =?utf-8?B?KzhDL0l5bzZKR2hYUVo0TkVOaklFOTd0Ny9WRkxLNGxLdEN3VXhOVjg0VXJ5?=
 =?utf-8?B?Mk93RzhjbmJScDJBVVBuVFM1TVptbmVoZDJlM2VKcFByaHh4ZGVDRWgxZ2dy?=
 =?utf-8?B?dlEybFpKS2Q0clcrRzMzUi9Jdi9Tb05hRGNlbm8wOUw2WWlGeXpFVzhJOHk5?=
 =?utf-8?B?cUwrbms0VFNqTFVNRkp1ZUM0aXlCQ1h5M1pIYzlmaVFGbVJ2VkZRVzZxMkgz?=
 =?utf-8?B?Uy9XUDdnemJGM2hZbEtlZ1IxdU1zOTlGNFVHQzRuam10TW1JenNBdVk4Ni95?=
 =?utf-8?Q?GvGLHLh0PtzwtFMSvPDi86P2hcdLhpC89cIrs?=
X-Exchange-RoutingPolicyChecked: pZKRb7CouzwsBuYHbKFSHiA5nnixFRLkauR+7kH9vPrcx+EI8Ec6LFSAnoFSlAeA+uUrNdK3MuegWb9LorbyOL5LCAdsVPT+cNsMVk7rccyXjZx/WOyzH+mBKlzMG2q6D8cCQQX9AjsbbNZ/FJKhH6QCZx9zOtFHsnTSh50W5hN1WnW7LhhehakMcGUKJeRGG+kTiUgXHhDFE7GSFEZsztPfCNSAeNWSr7GXKIKp3yYtvDRzLcdk/D0p0mDeP2qOCqtF0GC02p0Wp/+KMx7yFIKE7xNpCsfR6lzv1m36kFNR3SJ1wSl3kMkEbc6yaad+eZFZ4Jk2dPqInF68Ml70dA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 54edbdcd-baac-4bad-3f69-08debcad8b4c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 11:37:48.7846 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zoZPt2CEBDm6d5gSsVaTU1/8aSgCUdVU8ItwTd33kIq0z5keLRvIJ2KurVEqcpWkx3MYw7+88PcyzTz9vVagTF9AXI2a8KZyPo8ZioiPf9w0o9TaOyHjGfkPFnnPXt6j
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7733
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: F365C5F1632
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 27-05-2026 18:00, Jani Nikula wrote:
> On Wed, 27 May 2026, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
>> Store DC3CO eligibility in intel_dp->psr during
>> intel_psr_post_plane_update() so PSR configuration
>> can take DC3CO into account.
>>
>> This will be used to control PSR2 parameters such as idle frames.
>>
>> Changes in v2:
>> - Use intel_display_power_dc3co_allowed(display) instead
>>    of intel_dc3co_allowed(state)
>>
>> Changes in v4:
>> - Update psr.dc3co_eligible before
>>    intel_psr_enable_locked() call (sashiko)
>>
>> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_types.h | 2 ++
>>   drivers/gpu/drm/i915/display/intel_psr.c           | 7 +++++++
>>   2 files changed, 9 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 1cfc585530dc..c21f5d1e2003 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1770,6 +1770,8 @@ struct intel_psr {
>>   	ktime_t last_exit;
>>   	bool sink_not_reliable;
>>   	bool irq_aux_error;
>> +	/* DC3CO eligibility used to control PSR configuration */
>> +	bool dc3co_eligible;
>>   	u16 su_w_granularity;
>>   	u16 su_y_granularity;
>>   	bool source_panel_replay_support;
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 730ca7af7873..d4b294beecef 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -2300,6 +2300,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>>   	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
>>   	intel_dp->psr.active_non_psr_pipes = 0;
>>   	intel_dp->psr.pkg_c_latency_used = 0;
>> +	intel_dp->psr.dc3co_eligible = false;
>>   }
>>   
>>   /**
>> @@ -3090,10 +3091,14 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
>>   	const struct intel_crtc_state *crtc_state =
>>   		intel_atomic_get_new_crtc_state(state, crtc);
>>   	struct intel_encoder *encoder;
>> +	bool dc3co_eligible;
>>   
>>   	if (!crtc_state->has_psr)
>>   		return;
>>   
>> +	dc3co_eligible = intel_display_power_dc3co_allowed(display) &&
>> +			      intel_display_power_dc3co_supported(display);
> Maybe just "allowed"? Eligible sounds fancy, and makes you wonder what's
> the difference with allowed.
>
> And allowed() should never return true if !supported(), i.e. allowed()
> && supported() shouldn't have to be required here.

Agreed, I will fix this in the next version.

>
> BR,
> Jani.
>
>
>> +
>>   	verify_panel_replay_dsc_state(crtc_state);
>>   
>>   	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
>> @@ -3121,6 +3126,8 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
>>   			keep_disabled = true;
>>   		}
>>   
>> +		intel_dp->psr.dc3co_eligible = dc3co_eligible;
>> +
>>   		if (!psr->enabled && !keep_disabled)
>>   			intel_psr_enable_locked(intel_dp, crtc_state);
>>   		else if (psr->enabled && !crtc_state->wm_level_disabled)
