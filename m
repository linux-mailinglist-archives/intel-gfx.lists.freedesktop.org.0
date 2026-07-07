Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qE6eB9ayTGpdoQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 10:03:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF6E718D6F
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 10:03:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=LPKrSpOZ;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 171FD10EBD8;
	Tue,  7 Jul 2026 08:03:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42BC910EBC9;
 Tue,  7 Jul 2026 08:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783411411; x=1814947411;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dmPBcr0fQG0dbp7DpQPBuoqP5ihCD5vx6R2Erj9YUQw=;
 b=LPKrSpOZLO3ZaKDp+FrIJncFl5ScwCuIG54kdq/bRVTvomllHgjlb089
 HLKWcmlkQhL0TY02a3wQ/ch0eZoGs14f40g6v80SMok2y9AFEH0w96zkh
 nijsI2CbrICgQwOEHqUT0CqqtHis1B12R/zM7haNK1lzqe88k9iJxhMJK
 B6zper3GncslEpH5sKRwT2zQfttQc3ZtABVQXeYBsU9iQz5NSTbkmyqbi
 a7v821zbEtSFUPkeXt8WZaAEqxHJCv77fF9diIkdqDKD8TGT4dEB9Okv7
 0AO1RRbjN6Y5DzhX6tMW2KNQgiK+dySjM+2C09DudfKvsWbWZRT1E3HWz Q==;
X-CSE-ConnectionGUID: AMxrTIXLTRqx76Txy3l+yw==
X-CSE-MsgGUID: el89OfjsQpCdYbJlib67Hg==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="106851682"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="106851682"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 01:03:30 -0700
X-CSE-ConnectionGUID: g4EOUx9zTXitJENl3g34yQ==
X-CSE-MsgGUID: fjYt+bzuRwuzMAqo2yVTzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="252187646"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 01:03:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 01:03:29 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 7 Jul 2026 01:03:29 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.28)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 01:03:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aLl93cLMSGS/P8Tu6HwJAzukaopRUKMKscbBP2hLgJ96CFG67LxNoy+/jB5UpjBrDlcEQ2i3VPCWSOXlBF04LjBW4keGSygg65ZKtTGdliIVwQWqjpQ0dE89FL6p4gyH6ctDcN35poSZ+tO2FQ9M4jvDOXm4qyoNZZSlX13azOa5GDOjP6boNK2JoXX5BcE5QL4GpRwMK6zwi/XFSEd0e4pwBDq78x/pbCU/mW93JCVznNyFB08/DRoBFkyyUtp8s+zmEJEa+3gH0ZTj4z4Dj/mCt77b1rSC8Nu9lR/nsELi4oLItdp9wmtC5a5y0wAFMhL71yTnoxjrJeM2nuENtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4lcizmmR2fcQwT7X3ddopKyW50kdU5rCc0X01GM9mI8=;
 b=mHNrrUhKXRnwHlkc1ytMNWQfhen1iickt3SPA+zpG+KEvy1zS2CB/lLeBFRce3x0RJszD8IW65WNwY3FP9hcJwoPRJgLrtVQjVzChsWnmwmKSyxZ+XbfdDmtGTWGfk+VDb3QUdJuBJEgN4ByVy/SyapEqq5XcxhBDqTYciDnh4rk+Jpry3OBOjbONtDkqdVxyx+sAOusrcgL6DJPTIRfGw8TFcuidp57thuRymgdqKJt8CBGN77+r3cEL/U4kdCgKsFh5nvaqOGymb1Icxjv3uJ0IgVuPn50HMa3ttEyp6rqUKUKs18rhJCNALC+WJezSKvgSIUHKISO7oY3DOmXjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by BY1PR11MB8053.namprd11.prod.outlook.com (2603:10b6:a03:525::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.11; Tue, 7 Jul
 2026 08:03:21 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0181.008; Tue, 7 Jul 2026
 08:03:21 +0000
Message-ID: <6d8806b8-fc71-4699-82c4-7189a0ea2284@intel.com>
Date: Tue, 7 Jul 2026 13:33:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm: Guard DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE
To: Robert Mader <robert.mader@collabora.com>,
 <dri-devel@lists.freedesktop.org>
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
 <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 <linux-kernel@vger.kernel.org>, <amd-gfx@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, Harry Wentland <harry.wentland@amd.com>,
 Daniel Stone <daniels@collabora.com>, Uma Shankar <uma.shankar@intel.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>, Melissa Wen <mwen@igalia.com>,
 Simon Ser <contact@emersion.fr>, Pekka Paalanen
 <pekka.paalanen@collabora.com>, Leandro Ribeiro
 <leandro.ribeiro@collabora.com>
References: <20260703073230.19982-1-robert.mader@collabora.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260703073230.19982-1-robert.mader@collabora.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0262.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:21c::18) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|BY1PR11MB8053:EE_
X-MS-Office365-Filtering-Correlation-Id: d142fea8-b609-4773-0aae-08dedbfe3613
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|366016|376014|1800799024|23010399003|6133799003|11063799006|22082099003|18002099003|56012099006;
X-Microsoft-Antispam-Message-Info: rQOEYt/aomXWYmiCSIlYlZbHZFqnRuuAZelSIAQYwDaIf08MrilgfzS0n/Pd887GgsAVlWXaMkpbbFG7J+M1QAdVMytm0xU2qKDB9KXElRtsPN8iEoGljW7fwjqcVyO3GkMuG0bcdUwgN54DO0JNs1nS92p8xDT7MduxEj7HO/butqlcjR2j/7wLFfH/CW1s6uxE9FSiOhPXdD3IBhO6wRjT3SOUdyZHUVofAli34gNNJ0ZU6eRXzOMiauAo3rFCWsxZ6jjKU6rDaG9vFQGON0fPgwTdLNNgOPeleIFgtf42aV7AxUSXjDBwj2Be/Y+gLtwN9liPofJpPEJYY/h2Czyc5ExPejdAMIv7+YkKWd6KK/lN3fNVJpObByYwwQYDH3N08dfldVF7pvLuHRxN7VgJmIyXmSVphN8WIlF2PWVT6HJiImsH2jQ1R9Jrel2PcIDNB1AFvSV5aotkyRgBtFepID+ZohQs4aK7OplD+sT88vUl2UZEsNUKYAyd6OjCofRfq4VxsNna6RvXAfHGcfbIgNoI+a+1ECHyZ4kxAlHmJM399+5cx0lZeMJY6eHIEfEmuBh3PZg4ZsQjAGR/05Wnva6ySxv0Lmvo2CEcg7pOj6BlRyIZztfjdmsQvHpvreqynvAZQnHC2N5btVTomMZO/qsYnGpqX+c4H1VuPGM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(1800799024)(23010399003)(6133799003)(11063799006)(22082099003)(18002099003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R01STEtTLzE5MXhpa1M3M0JqNzZqTEFsblYvakc3dUhiOXdySXRpV24wRmFN?=
 =?utf-8?B?MytuaXM4SW03WkhEQ0czRXljK0xyQko2MVVZQm1uQ3Z5YWx0amc1L0w4TkRa?=
 =?utf-8?B?cmlOTzBNZ05RMGZGNHRnNW50ZVJZSVlFWjFRQkZpSiswc3VIUE9WTXU1andI?=
 =?utf-8?B?UFQ5bnhWZnorZElIbTlkd3JwWTY4S2Rjck1VTXNWcGNFZVNKQ1I5VklDbDRz?=
 =?utf-8?B?aTdYNHNwQjlWWDRwQVQ0MFBvSjNhRWxDVkZ6T2JMVU1RV1lMSjQyaUVHbkQy?=
 =?utf-8?B?a0cvVUpRL2x5NWJzb3IwRmpOZWc0czN4ZW9KNHpmbE5WcFY0c21Za3FHN1d0?=
 =?utf-8?B?ank0aUtvNVhJUmFxblNzZXkxekhDME1tWERSNmQyZ3oyK3FsbGpiRjUvYUdU?=
 =?utf-8?B?aXVkc1NINkNxS0s0a29paWQ5Sk9iMm1PVmx3cHUvVDlNYmV4WTF0T0pTWTNy?=
 =?utf-8?B?T0xLNHlKN2dkdUNPTHBzbEEwNTl6bHJkYXBQWmVGem1aSlY3VHFONDF2dmZF?=
 =?utf-8?B?TDZEd2lrVU9Gb3ZWSVk4OFhVTTNROXMrM28xY0xYZjFqZXJITEd0NVZoM1Jv?=
 =?utf-8?B?Y2Z2ZFVlY1ZkRXd5U1RnQnR0RjRxVUJYM2ZTeWRkd3lRcWZCeTNqU1pKd2Ez?=
 =?utf-8?B?Z2h2MjkxSzZaVmVROS9peU9hekNuRFZnOTRIczR6VW9kOE1ORzNoU1pUNlg2?=
 =?utf-8?B?QS9UdTRaL0JMYThFTERabEtiWGJjQjNma1MreVFiU0VBdEZUcEV6enZZZHpk?=
 =?utf-8?B?SEdLcFhjMjBWamFsSjg4cFhrTEVVRHJ3MkhrZlN2WFBtcXcvQ1l5OUZKdG5G?=
 =?utf-8?B?RGxhMmljM0VsWmxBQ1QwUGthR1hEV084b3VlaGdTQVlrUUJuY1ZZT2tyWDEw?=
 =?utf-8?B?NE5VOW9mSjRQbENXVzRqVGZ6QzllMUtaTEpoWG1XeEpndG4zVzBHVnFtZ1hl?=
 =?utf-8?B?OUJ6S1plZFFFbHJEUnFlaW40UTAzMUlKUm5Mam1md0cvN0llZXV0bFBONG9n?=
 =?utf-8?B?eksvUzJoK2hnSWpyWFoyQlFlTkl1a0w3aTVWeXlpaDN1bFIweEpGM0VnRHFK?=
 =?utf-8?B?dEU4ejNIWlE1VUh5T1o2bHBKaEdOYnRjUFV1eExKWlFUNzRSV1pneHZIR3Vl?=
 =?utf-8?B?bEQ3dmMxYm13T1o0L2V0RzczZDdWRzRMVHlURDM1Q20zVlJucHZ1Z2NwTmti?=
 =?utf-8?B?enphTEcwaS84elZKZWFWN1lpaUt0cVE1WS8zS0NyQUFsU0drSzBBdjBQRmpO?=
 =?utf-8?B?SUErM09xM2xWUitGSTFtYy8rOG1aY25sR0hkVXpQeVpIRE5jZ0ltY1RLK3lu?=
 =?utf-8?B?eHZYc1R1QVdDLzl2TmVWVlliTnVzYzVOUDdhZVhjNGloMHBWRklucks1M05p?=
 =?utf-8?B?Y2VyT1dVaUdRL05WZGgrUFJndmxzWDU0eTMraDdjd3kzR21INFlnV1ZpTCsr?=
 =?utf-8?B?SFRNS0RSazhxTUM4RG1nMDg2Y1NOL2d5aVMzaEtYWDZ2Q1RRZFJ1SkFrQlNU?=
 =?utf-8?B?elovd0J0RHgyYmJ3UTV0Q0hGOEt4UnNFSkJQZ0tUOEROMFRYZ213cCt0QUdY?=
 =?utf-8?B?UXRFckNIZjBzbmZoVkcvekVQWTA2bVg4WVRGNGZ5Y3NPVGFqdnV4TEZHWGNV?=
 =?utf-8?B?K0tYSDhuTjU2QnVxV0hBTTFlUG9lUDRXY2MwL0Y0UnR4aFdTa3czaG1lNnhV?=
 =?utf-8?B?WDZxdExuV2NROUl4UkpKM29qZW5hVThxU0dMejF6YWgxdDgvM3piQ1BlRUlN?=
 =?utf-8?B?Zy8yTjhCOUVZN1VuUkdGMVFOMW1LWkpxQVRTMEdRVHM0bU9MSXBPbVFyM0Ev?=
 =?utf-8?B?QUsxSUptUkxKUzNOeEY3ZHZnU05yOHBJejB4TTIzSSszdGFVZ2swYmljU1du?=
 =?utf-8?B?WWlBaFozeDBweUMxNFh5Wjk5SWVEUHVrT1RlWTlDTEVpZG9nOUpNMkxTWnRW?=
 =?utf-8?B?L1NkMjB3c3B5NEF2VGpUZkdpbGUyeUdaeVhESk9BaEZTZWxvTWR1V3FiODBV?=
 =?utf-8?B?NFhlRnVPNW1LTUQ3NnRUS3QzTnZ0TFJ5OXQ5WSt6ODlLdHY3cXhvT29STEJD?=
 =?utf-8?B?b29taVh3bXhZNWo0bWcvdWtoR1ZSZ2NwZXBicHhMa0tDU1VrcCsyUzhKVXJY?=
 =?utf-8?B?eGxsQnIxTG1YRUJDa3ljQndmSzdmRm9vUCtaUHhlSVRwZklGS3h4RnJxZjVj?=
 =?utf-8?B?bHVHNklnZGxKL0xzbE04ZVVqTUloUlpLK3dNWVZIY1h0WTNwdk1kekwweUFl?=
 =?utf-8?B?cXUrOXpiOFIzaGlvZEN3eWFHRTFBSUZrT0plZEtqbFdQZkNUMnNkOEpHak8y?=
 =?utf-8?B?OVpIOEhTRlo3SWVrYTRBZkNac1ptT2p1Uk42R283d2ExWTJiTzJodi9MQTRP?=
 =?utf-8?Q?OrQHr2LtJxoyclsk=3D?=
X-Exchange-RoutingPolicyChecked: qYAnUE13oLYwLtI8iLYhb8GTfxMQ7OoVHZuB1gJBFikinf2s89eAryyTg0xfYOka5XsPCDRfxyzmJQRYNJEMo4yqKq1n6B+gmYQjsapDOVZObSG0rCwO6N23iKHr53Nk7foZxfn8t5W9Pi0fE81+b/r9xhBBgTJSuBDjGf/rKfHFc1Te0HRvd+koBtqgVpXkF4TY8bXtAY9UBmSxsMBaQyt/9ABpnhZsefSbtSv2G4qd4SMLlwx/5a9/I6FDvtbckfkFT3g2smHam1O1lI2jaEp+t9HO3rF7vKTWoFDHj6SaQcLUWN7SWGMxquK7w4GPne5so/PA/FMxMZXUp5c+6A==
X-MS-Exchange-CrossTenant-Network-Message-Id: d142fea8-b609-4773-0aae-08dedbfe3613
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2026 08:03:20.9556 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: okU9/Z2mcJLS8sWEHS+waqNDFPepPcDD5TbNxUFjxG7GmYJtpRjKR5JMR/Dg/g7vUez2RsY34sKaf6PsXdfl5XPFdEzjBStPUGVISBSKrNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8053
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,amd.com,collabora.com,intel.com,bootlin.com,igalia.com,emersion.fr];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BAF6E718D6F



On 7/3/2026 1:02 PM, Robert Mader wrote:
> The client cap is currently advertised unconditionally, even for drivers
> that do not support plane color pipelines. If clients supporting the later,

s/later/latter

> like Wayland compositors or tools like drm_info, enable the client cap on
> such drivers they will be left without both color pipeline and the legacy
> properties COLOR_ENCODING and COLOR_RANGE, effectively breaking YUV->RGB
> conversion support.
> 
> Prevent that by only marking the cap supported if there are actually planes
> with color pipelines.
> 
> Note: while the color pipeline replacement for the legacy properties is
> still under review (1), we can assume that it will work as a drop-in
> replacement.

This change will but a driver can also choose to export colorops like 
programmable CTM_3x4 to achieve the same.

We should also perhaps document this somewhere that if a driver supports 
LEGACY properties, it is imperative to implement some version of it with 
the color pipeline line property.

That means any plane on any hardware currently supporting
> the legacy properties will be able to offer a functionally equal color
> pipeline and there will be no technical reason keep using the legacy
> properties if both the driver and the client support the new API.
> 
> 1: https://lore.kernel.org/dri-devel/20260623164812.81110-1-harry.wentland@amd.com/
> 
> Signed-off-by: Robert Mader <robert.mader@collabora.com>
> 
> ---
> 
> Changes in v3:
>   - Move the new check behind the existing EINVAL ones
>   - Rebase on latest drm-misc-next
> 
> Changes in v2:
>   - Replace the driver feature with a simple check (suggested by Maarten
>     Lankhorst <maarten.lankhorst@linux.intel.com>)

Probably could use a Suggested-by: tag

Having said that, LGTM

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

>   - Expand the commit message slightly and change the title
> ---
>   drivers/gpu/drm/drm_ioctl.c | 14 +++++++++++++-
>   1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_ioctl.c b/drivers/gpu/drm/drm_ioctl.c
> index e2df4becce62..9039a39c4324 100644
> --- a/drivers/gpu/drm/drm_ioctl.c
> +++ b/drivers/gpu/drm/drm_ioctl.c
> @@ -373,13 +373,25 @@ drm_setclientcap(struct drm_device *dev, void *data, struct drm_file *file_priv)
>   			return -EINVAL;
>   		file_priv->supports_virtualized_cursor_plane = req->value;
>   		break;
> -	case DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE:
> +	case DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE: {
> +		struct drm_plane *plane;
> +		bool has_plane_with_color_pipeline = false;
> +
>   		if (!file_priv->atomic)
>   			return -EINVAL;
>   		if (req->value > 1)
>   			return -EINVAL;
> +		drm_for_each_plane(plane, dev) {
> +			if (plane->color_pipeline_property) {
> +				has_plane_with_color_pipeline = true;
> +				break;
> +			}
> +		}
> +		if (!has_plane_with_color_pipeline)
> +			return -EOPNOTSUPP;
>   		file_priv->plane_color_pipeline = req->value;
>   		break;
> +	}
>   	default:
>   		return -EINVAL;
>   	}

