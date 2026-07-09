Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 74CpK1pDT2pzdAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 08:44:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E00E472D4DC
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 08:44:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=QoMRQETu;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15C7910E00F;
	Thu,  9 Jul 2026 06:44:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BC8589864;
 Thu,  9 Jul 2026 06:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783579478; x=1815115478;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s3cz/5S+OdqV1cFBY3ZjApKQNitEX2ZoAIFkdo01izM=;
 b=QoMRQETuVBHS4sFPXOt68C6AJdKz6TC3ZbH1be48tUZZFbxmNHnFiu+G
 CQovn4KKxjQeVGUSm86NfykN7ORZ3fZm9vqpzjNI0GNmYAk3nEIojpDKv
 fWonIJb/fFnWvKeetAx+u4kSilluifT4N1Ym4iFy82DZJ1ZGPNpr8UNDF
 IhfXClfZmT6ywqhB9EcjCWmlDDbiJxV6PY87VaWzt5ns1yLhsSU0kkn+g
 NQ2lOa6SR3oVH0O9A4QMDSU8qQTXuNi7ufGeS1+QRYfHBe/iYJZswiASy
 Tid2c2IKND4pkWitmoMoPNhU1ofXmqYRCuEAnfA1J2A/+84diqdxpE64n g==;
X-CSE-ConnectionGUID: su4xEsvcQQKTlXM814PadQ==
X-CSE-MsgGUID: jqLRhPCBR02t30I7xeRfkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84304690"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="84304690"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 23:44:38 -0700
X-CSE-ConnectionGUID: BSHFSC2lQPOizSGW+QwYcQ==
X-CSE-MsgGUID: hqtpQrQtS/yt3SF/wPwzzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="258362211"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 23:44:38 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 23:44:36 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 23:44:36 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.22) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 23:44:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ikbmlfzxLEj2ARmnNujx50C+4HhjJEcKa7WWJEQWLbG0UJDL1X2LKh2xnJckzivbWLgUUCvkuzA5sM1myHPrf1BncigJeBu6EQ7+UnvjZrqacHatoms999G/1Uh1WHoPpGPlzGka7iSD0aZlXj8Rvxq1+TB7Ujs/WSN+UsN6F/+U5HOW0vu4JEWs9IWLpvtrxnvHioCircyOK8cVBGuWYxhTPM5kRgrsOd94PUtYfVfzdBHi7F+jbS+tNkTaZVQ/GzxvpU1yD7qw0jtpMZtZyCaH88NWNOdfAldz6UiNHhGS/O+c0PZ+L2ZxcJHiEQUmCb96FRkS/PU6YMAtf8o/Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wWPR4/b7e9536FLIAYokbuIM3W5nBMwoP6rjJ9pPqyQ=;
 b=oLRINpT16BLBIshqdc1Alt/PJ0dwhNkFXRdzK4kf/C5+NkngWdPxTNTg2Z0+hwPehqv0awn+N8UmrFMwm7D/TFNciqg3H/vzuJPNsOS8oz2B5oaSyBryu6I8u2UdFiE2E6x1aTfTp0SigFyUhVSFNzbkOVOjyJME8OnZfx+JnPnHBJnfvdf2THNPjAW4VGnKrNeQpp7jEyuBkXSZPSqqK0hhJ9e31ouwsh0YVYSL9zmipgpg5BDMvqAj95P7nOP00SXfBjpbaveNtiKd1v5vvR9rRH65MqQHYO67RSLq0df2SOt7EBgvim9+vuibkQQJmiWQ2JjpSe1k+G7coFhBjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by SN7PR11MB7017.namprd11.prod.outlook.com (2603:10b6:806:2ac::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Thu, 9 Jul 2026
 06:44:31 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0181.008; Thu, 9 Jul 2026
 06:44:31 +0000
Message-ID: <7d58b289-eabe-4d68-9080-c7202b0f60a0@intel.com>
Date: Thu, 9 Jul 2026 12:14:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm: Guard DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Robert Mader
 <robert.mader@collabora.com>, <dri-devel@lists.freedesktop.org>
CC: Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann
 <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter
 <simona@ffwll.ch>, <linux-kernel@vger.kernel.org>,
 <amd-gfx@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Harry
 Wentland" <harry.wentland@amd.com>, Daniel Stone <daniels@collabora.com>,
 "Uma Shankar" <uma.shankar@intel.com>, Louis Chauvet
 <louis.chauvet@bootlin.com>, Melissa Wen <mwen@igalia.com>, Simon Ser
 <contact@emersion.fr>, "Pekka Paalanen" <pekka.paalanen@collabora.com>,
 Leandro Ribeiro <leandro.ribeiro@collabora.com>
References: <20260703073230.19982-1-robert.mader@collabora.com>
 <6d8806b8-fc71-4699-82c4-7189a0ea2284@intel.com>
 <bb5918f5-a6da-4908-9332-18e0df39c005@linux.intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <bb5918f5-a6da-4908-9332-18e0df39c005@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0333.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:222::18) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|SN7PR11MB7017:EE_
X-MS-Office365-Filtering-Correlation-Id: c40791ed-7487-4407-f2be-08dedd8587b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|366016|1800799024|376014|23010399003|11063799006|4143699003|6133799003|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: EHeGkcDFna1yD+D0FCB/ANGsRT9icNmMVUhl5S6fhAH8GzfoZ8mqxiC7P/YoIGyuB8WR+GbUI2HJhojBa4IBTVukxMCsUB8c5lLDOifotwDq8RLW+khB6a4tblXP/FNyYqjTgdm0OBWUrQ/Icev/aR60I7T1SCpfYb7NkT/zsBc44H9FYNoZtOtQOZjhnY3zVSfxVSAYfnvZyxxTX+w7BViPxOvRmgiBM18K/A+dvvsW/sD3HqxLKoWqteaGgHKf2Iw55y4dgMDYvMDJBMTywzLqZNNOem3A+G/PmEUjQ7S05VAaluGVovrbymnn6sUbmZeDGf4mq7tjAWINm03UcIOWgACVZkX82HEe2DBgyRzaOeB9NyqghAit6dQzZ+QVv7hjyvppeHvqfp1VArYhhhRJOeNMWXY3yiq4zaoOwopObM3bmznv/CTCoL8AYwJsElV9kQCtvqxqn4+yA9t0zX6PXaEicPtF8ZQozYXjquxCpG8VtX9sm0CeWDdqLJML28qYndwYNnPfSSBzMyzQKUEzDcKjVtF1k9CJ4AsScW37auk57+7ff8csSLgT1hJQ8/KgKK2YIaiNmJnuqM3Y3lCtw5NmkDPcVkpn8btjyc7hHyR5IG9n1A+BiiDxsn250EIqQ0o4fat5nE95E4x9LrzcXse9FsZBBlAWTxZzLY8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(1800799024)(376014)(23010399003)(11063799006)(4143699003)(6133799003)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXVrcFlocmNCS09ydkJKU2dwM0JHdzNRRVZ4aHhRV3FUT0dKWUN2NUs3aUkx?=
 =?utf-8?B?NHBkWVZqc1NraW9VZnliT3gxNzRSR3BlWWRvcURHejNqRFpCaVhGTjluNzcx?=
 =?utf-8?B?c2pjbzBuQUQvT1lkdXhOMGVNVXlDeGVZNnFyRDJIa01iOUFjVTMzdXlJcGEy?=
 =?utf-8?B?Y044VisrYmN2L2I4L1V2NW9OSDdVMG9aa0tLS3A5WUhPN1pQeitCUFVwNGpZ?=
 =?utf-8?B?a2hvdGNZQnhCV3hZZHlZTlVzUlBjL0VLZlVmY2wwd2V4dEluMmRQVWhhK3pj?=
 =?utf-8?B?cmxOazZNRTlNaW1LNEFkUlBKMU9ESVNqOEUvZ2o1UXFRU3lxK3hLZk9BcmJy?=
 =?utf-8?B?ZDJjaWRVbnI5N0FQK3E0UzJORTI2VkFvellzZzhPcE0wQ25ucVF3SWhDN0lH?=
 =?utf-8?B?R2lmb1JVRVFrUytNMy8vOWlaazRMSmxHRVFEVExMK1dzM1pzNmhqd3RLQmJh?=
 =?utf-8?B?elg5a1YzbHIzb0lMRnhPU3dydVVyVFdpbEZNdldvWkFUdmZuYjNwS0dFRlpX?=
 =?utf-8?B?ajFBb0RSUlgwV2lpOVh3dGdQaDNkSy9EM1JBVzlBYW5aNC9jemNXZEgyKzZL?=
 =?utf-8?B?SXI3T2t0UCtIWGx6UHZPTkVncTBnZEszQzRaVWNNSzlJY05iWmx2WGRrY0hr?=
 =?utf-8?B?R0l2SlNZeVRJZmM4cXYvWC9zREc2S0ZIOGJFTWtCRHFGcnZKZVpLQllrTjY3?=
 =?utf-8?B?YnRxaUowZkFRUUZGZHR4V29sZERyTFBIS1VmdElUQWNnL0hjMTJ4M2RkUHdS?=
 =?utf-8?B?S3ZjNk9GZmRWaXljdzhaQVl5dncyd0Y4dFRqaGxDUkU4SUd0UXpqNlZka3dX?=
 =?utf-8?B?OUpJd0RYb281NUVkQ1VoeUdpT2pnSytmYm5RV294MUx1Slh0ZmJaTE84U0li?=
 =?utf-8?B?c2lFb3lHOHE4Q0VYRGhHaVFRaFprQjA2ZlNyV1hoMXJ3NlNJSHV1VWxFMnYy?=
 =?utf-8?B?OUtTQmk0UnlSSzYvUDk5a1NrL2E1K0FJWkNKUWwrUGdURWk4K2hVdE9DK20x?=
 =?utf-8?B?WUpCWmxxNk5JWWRibGtmSFF0MjRGbUlYV3lTOVVNMWJ6VERqc3AxanhBeCtK?=
 =?utf-8?B?eGFtQnF1Vm5OWjlkc3pNaGI2VE56dEE3b3JpTVFhN0JBSTJqWVVqcTZMMXlt?=
 =?utf-8?B?TjJnRU9zeDlIckQrUVBPU0VQZVdERllkYmZJNnFWV1RqeHcwZEN6Rzg3VTNw?=
 =?utf-8?B?YXZCZkZ6U3cwTzVMQkFKeDA1TC9McDFIVTVmbEZSS3lrQVY3Y2twMGpUVVkw?=
 =?utf-8?B?SkszRTVPSVYyTEp3bnQwcFdLcHJkS1VsekVkL1NPUVVuVUtobm1JR2ZYS1R3?=
 =?utf-8?B?SW12MlFZc0tpcjJyTlUzUlRQQlhCbGIzem5WRmlEQVRJdWNrM29DNkRhck84?=
 =?utf-8?B?NjNidVA2bXdoZm0zOVFKRVBObGIrRFRjYXJKNmRhZFlza0t3WGQvL2V2WkZX?=
 =?utf-8?B?T1pCT2ZiTHc4dzkyNmkxbW1yRWVXV2hHNGV5QU1XejlBUE9DYTViNUtkVGp1?=
 =?utf-8?B?a08ycldiQkgrbjgwbzZOTFdvOVptWnVSMWswcGNsZjdtWktFRUhIcmR5S1l6?=
 =?utf-8?B?cENMQmEyZHJ5eDJZOWN0VVFtdXNoNDB6dTZIcElia0UxVGUwMjlVTnhWWWpu?=
 =?utf-8?B?ZUhzR3YxYnB2Wm1vVUhWOTZBOHljNGZ1aFlwZEozVGdaWndtMXVJbm9HbTMw?=
 =?utf-8?B?L25oelRhcXpFa0hja05kTU9CeVEzVzZrWWtBRENGb1ZmSmljcGkwTUhOaDNY?=
 =?utf-8?B?VnhML3BTTDB1ekxFZlZJOUZSTFprSFZtN0lsdkZPT1dFL1B3OTFWOHN4Q3ht?=
 =?utf-8?B?T08ya2xvSUw3R1dOOWxpVlU3Z0I4K05WcTF2ZWFpZVVNZHhDSmRvd3lXM3lC?=
 =?utf-8?B?cVlPbzltUWs1a0xMa0Z3NHAvT1B2S3FEdEpHRUx4L3FwR0IrS3ZscTIrM0hJ?=
 =?utf-8?B?K1B5dzNFM1BiaEIxbnJCM3JjVDd4RWFhSEJwazdKQUxIS25lendqL2FwYzI1?=
 =?utf-8?B?WW0rYVJkQmo0SnN4WXFrR1pYYkdDaW5neVg1VzhadEtBRzh3dTkzUnpXYWdp?=
 =?utf-8?B?QWlCUXA2aVhLWjRya0xuK3NhbExZb3BkT0U3akZ5ZHljSTJPQ1BFSVY1REpw?=
 =?utf-8?B?QmVNT01jeEZQVWNFYWJRNTN2aUgwZlhESlZvakxzNGRFcHFzZnhyYnhUU3BI?=
 =?utf-8?B?emNCUE5seGxNM3Nram9VQklJM1huQXdmQXpnVFc0S2tIUkcyRUFNUEFBdjFk?=
 =?utf-8?B?WC90Rncra1dGUnd4b3hORU96eFN6TW9LT0krNzdFQVRhaE1NdUFMcUI5aWFO?=
 =?utf-8?B?VzlNVGZOajR2a1Y1aEFDMVpJTTJlV3dIVXJVUlRsd1pUVGg3emVFWk9rbi94?=
 =?utf-8?Q?wr1gMjWsin7kQaxg=3D?=
X-Exchange-RoutingPolicyChecked: kO0OuravmbjdkM97TAD8x2sIwyM9GuYaFg8Aewcm2gAGgWXsSeySN8rruhqzM6vPhYXYOdMVBcuMCexWZjXF7Y+5JrEue/htlJ+I1EqeR8UW8fwwZMGlbTUqZJgFbJdlMdo7LCw0GNQb6wRQDcN+aPXc6VGd0KwAvQl+rpsvDmBpNDh4qyD5QQXZjThKfGPABQLboSCDlfPDFmBTzg/nPzjDGdRHdavbwYeUXTroDyAOAzYJk/rnmtOhND/+P6lscKnieu0hy7OqfLmn1/tLmg4pR9YmhTnxj3wUZC0E89IdNWDW/1JSBd5tX46JSvIf5nshVvcHxoVpOElZRWcyfw==
X-MS-Exchange-CrossTenant-Network-Message-Id: c40791ed-7487-4407-f2be-08dedd8587b3
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2026 06:44:31.4632 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iMzoVxkuBy2u8WMAxiimwsyehGYL0K3pV980lijkmAhda11ereD/I3mU+DVgFtaLTPiQChCsBEGEbV6PfpufLUkHTKrX2E/XvXM4lvIYEmw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7017
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
	FREEMAIL_CC(0.00)[kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,amd.com,collabora.com,intel.com,bootlin.com,igalia.com,emersion.fr];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp];
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
X-Rspamd-Queue-Id: E00E472D4DC



On 7/7/2026 6:31 PM, Maarten Lankhorst wrote:
> Hey,
> 
> On 7/7/26 10:03, Borah, Chaitanya Kumar wrote:
>>
>> On 7/3/2026 1:02 PM, Robert Mader wrote:
>>> The client cap is currently advertised unconditionally, even for drivers
>>> that do not support plane color pipelines. If clients supporting the later,
>> s/later/latter
>>
>>> like Wayland compositors or tools like drm_info, enable the client cap on
>>> such drivers they will be left without both color pipeline and the legacy
>>> properties COLOR_ENCODING and COLOR_RANGE, effectively breaking YUV->RGB
>>> conversion support.
>>>
>>> Prevent that by only marking the cap supported if there are actually planes
>>> with color pipelines.
>>>
>>> Note: while the color pipeline replacement for the legacy properties is
>>> still under review (1), we can assume that it will work as a drop-in
>>> replacement.
>> This change will but a driver can also choose to export colorops like programmable CTM_3x4 to achieve the same.
>>
>> We should also perhaps document this somewhere that if a driver supports LEGACY properties, it is imperative to implement some version of it with the color pipeline line property.
> Would this be doable inside drm core? Implement the color pipeline properties, get the fixed pipeline for free?

Right now, the Bypass(default) pipeline is automatically created when we 
call drm_plane_create_color_pipeline_property(), we could come up with a 
similar helper that could also create a pipeline that replaces the 
legacy properties.

But this can't replace the existing helper entirely because some HW 
(though unlikely) might not support YUV buffers.

==
Chaitanya

