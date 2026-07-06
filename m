Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PgqzBMWYS2r/WAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 14:00:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 728B271031D
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 14:00:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Uwpjaa4C;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5BF310E911;
	Mon,  6 Jul 2026 12:00:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24C5A10E908;
 Mon,  6 Jul 2026 12:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783339201; x=1814875201;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xh8s5iXdwzG0OThC3NhQQedeXbnJDkADgKyUyhD5Wk0=;
 b=Uwpjaa4CzEapu1Ed7fitVDwf82NsT7l9mLA113k8Rzs9vhXerumxSUcf
 h55Hxidr8sjcQtZPe4/z3QMEg/dR4Qji9XLLoqQuzwwHc6r16RuFxHPxu
 YtDDovOeziNWtoQjxRrjQWwZVRGfG3h9/rVDFNbVIv1TIlEU2s3ayrqp7
 ARufiao93VhZdN+8S4+AcDQMQwXZPVwInaI/E2L19xQUw9fON2pxjltxX
 Z2s+InQz+SKzv73lElXovXEoDVNBa3u8nQId6GAgFOXEb1hGTtYZq0K7R
 XMrZ0HrDYGGZ38rbLyU1FibkFAw2zflYkL+Yf7tNsrb1XfbMf7rE2932h Q==;
X-CSE-ConnectionGUID: QNusMPi6SCaz+PWz28ISug==
X-CSE-MsgGUID: jBQrCl0wTzaY6oS47VF34A==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="83833023"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="83833023"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 05:00:00 -0700
X-CSE-ConnectionGUID: Yvp3nPHBQYSKo29HEPvOlg==
X-CSE-MsgGUID: F1QFStIoT+GENzOSncN9cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="258598048"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 05:00:00 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 05:00:00 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 05:00:00 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.68) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 05:00:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J1O7IWljRLdFZQtxQPylPjPfl3/MUHnlrXqB2uejpKkVDotxDHAyCnr2rSp4JI+Z3UdO3fJIoXa3Kbowlks+iWxWt9RiHM4OYK4YtlCeeDUj8Kes+tndXRVRRwsWpZJaYBaJ1LFp+hDDFV6RiKaKoGBOajIZXH5fFAEsYFYdEo8jZVUBkhpWXajyGZhKFQoWtBUJzdh7BW+UCek1/z4ocL6OJD44TUXJglW59CbKsPlT+oy9dl0jVPZRU4kS4yAPEWo3bqP8D+yIlsmDiw0drcRTK8rjgwvqqMy9mDfSfvdsGzZQdG3BVFFyQxOCYt2Zh25vmS02O/fisSep4jVtpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JWDViA5dmyZIGGrPk5NyYOoeFnLDd2GpD1faYlvl/TQ=;
 b=Mt4DPDEnTU69pk+g9rW249pjRRluIbqf4ksxpP8sWGh2xfcR54S+R27gpBG/JUXcb4Cf7gqtGR7Mci4Xu4YK/Xcwgjs9BgjolO5BHoY5Ne1U2ZujREcpBxojc74qYnmQXF1iI7ApFs3IVe22/ONbxPu6Rp1f6Co7TOZpGBsTD7AiEr0R40VaZKGqbyqq8a2CHqRNEr5d/cBFxcm5u0EsXhCHIC7uVNfCkhRpn4nQFhjV+PjJXP7M9wCaGzGkC1tHNEsPWr+O5FRcUtuiQ6TlNYU2Gtz2kkg4qxPb+cs0JQhJLpGFzCcJ7PrKCLKmljEOqMxDquFnZRT8hrKrOxa69A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by IA1PR11MB6370.namprd11.prod.outlook.com (2603:10b6:208:3ae::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 6 Jul 2026
 11:59:55 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 11:59:55 +0000
Message-ID: <b9c6544f-f29e-4ab3-a5e5-a4f8d14ada51@intel.com>
Date: Mon, 6 Jul 2026 17:29:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/11] drm/i915/vrr: Remove TODO as CMRR is exclusive
 to Adaptive mode
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ankit.k.nautiyal@intel.com>
References: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260616144233.832276-10-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260616144233.832276-10-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0006.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:174::10) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|IA1PR11MB6370:EE_
X-MS-Office365-Filtering-Correlation-Id: ad36addd-f72c-4937-1967-08dedb5617d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|376014|1800799024|4143699003|11063799006|56012099006|22082099003|18002099003|18092099006;
X-Microsoft-Antispam-Message-Info: APWlMkOBi1CkAY6r9P5O01gDI8skg8xalCOL8BFuhQFwbwJcG8ne9Sg7nqIUH8PyZpsYni/TsKjVJ+NyAYs5Juht598/4XTFhAEDkgfdd7uaO62OamOeCkR1UYdi623kXXe6RstL4ibMXuK39usbzWpB+/4YPuAvMK4wCgD9MnQrs1mzECkrC/tBrJj++RrfrMTTYfSqcciIpI9pajjJpsBYLVQRShOtXLEpC+WmwFL9YObZY+Yq0loA0nMNbeO6ya5GPHYsTeW/9Gq259Fbox6obzMmKcIe7v3uEgtNsAkJFKw7ZzOpB9u/1+6CFTLLQkj8LgCg+vPwd+ouNlpEAcuyybYssqA53cLAousqxXVt2bDK2nV20SCWZv3Rx+bylpEhetuRxdTvEeoTH2bRcO6kp5IFlvKaiemrtAYh3mPLH4+dZ8U+upRzfX/n/wPwbtaZEOiKsQzlWm0IKWvlBaoU0ay4ki6fbK9IU6zWQKObBw6OUWgp0yJBD4a4zKl8F87jG8Okk1wic2MaVRpQ/eQPnrxPDX1Xww/tgNpHzPIC9tH2WGcyhnYK/fcbI45oqu5WbvZymgXgU/4l/uOFIgUZhQsXXqxXIQqvuFdn87HYvTyANOHxr7MGmVzZHnNIiNyShQiW/aaCzRe75dHGNjaJCvgFcd+9UCiSrD4NuyQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(376014)(1800799024)(4143699003)(11063799006)(56012099006)(22082099003)(18002099003)(18092099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y1E3cFE3TFJydTBSSlZoWFpvQ1JBNXlIeEtUc29kM1VGQ2NIa3BpZGR6Z21I?=
 =?utf-8?B?N0E3MXNCTjdKc3RzbXFqbnJhL3k2NDdYTmpMOFlNU29sR1Z5N01Oa3g3eXQ4?=
 =?utf-8?B?ZzY4eUhFUUk4bytUaEpTSlpVekJrV3lrQkZZZUdxb043aWxrRFRGMXVFeWxw?=
 =?utf-8?B?NnVHb0lrb3owVGYzZGRTeE5zT2hsTXExUXJRTmpBK3NvUktCSHovMXBxb0ZN?=
 =?utf-8?B?eEdCR051WjJtMEN5T2tEZXNPNUxUcmFVZy9XdkRZVkFZdHBhbno4dXc5WEVy?=
 =?utf-8?B?UysvajNJQS9DcnQxenZHVmlSOEdFbWZTVnJtRHJmK1JDUXR3bHBJV3RVa1V3?=
 =?utf-8?B?b21JNVlOVDN0UDhnZ0dhMDVoakxDcm9GQ0lhbVRMT1RUeFhTYjVlblV2Tmpw?=
 =?utf-8?B?aS9uSGQwM1VUdVNPWGlsVU9oYTRGUjk1QWFRMFlodWxYaExyUm9OMjNrbmpF?=
 =?utf-8?B?WUZjdUhLa0NzV0NJcXNWejNLZWpBbmwza3VFS3Z3U1JjaTltQUpvV2tRWUZC?=
 =?utf-8?B?eTY1c214VXZDRGYydTRNZUVUcVJoVjdqV2wzZ1BsbmpZeVBseHl3YlBMZWxi?=
 =?utf-8?B?UldZMWNNTlp6UmswalNlT3I4MWZISHg5dVd6MjJybVdvRzlmZWVyUXdlNHRH?=
 =?utf-8?B?eEYzYVFDVUt0eThhekVNZUFaa3FxUy9jUUlKckNlbVBtQUcwZFVzS1FFMWJ0?=
 =?utf-8?B?bHBXT3VybEVlUGY4TXl2SnJnYXVRaTlzZ3FRWVZkaXZtTS9UMkMzbHhLOUtJ?=
 =?utf-8?B?b2V1a2M5U0crTzZKZ3labC9kbDlGbnhzWjIzb1A5UCtZRm0xVDNQVXI4R1l0?=
 =?utf-8?B?N0FLMDBpaXIyOTlwZHFJME55Vk5IZ3FTQUk4QTR1VHM4U0syZWNvQTAzZnZr?=
 =?utf-8?B?cFpwVjIyWk5zKytpeC94RDBLdFdOeEpLV2ZYQlVjWUhRVkZHVE5rTFBxSE9y?=
 =?utf-8?B?dEhqZjNkRTRmQUVjZlRqbEJQeWFFK002c3JhcWJBbzRjNms0VU8xV2dUNTF5?=
 =?utf-8?B?T0lUZ3RwRk81RW1ZRTBKaEJIMjUxN1JNSHhrcFV3cFlBR1FKL0Zubit3Vm56?=
 =?utf-8?B?TkxaNlFrdnQ0VENhWXdlRDZBbXEyTVZaa2NtVWYxNWtJb1YzMFRqTE5lckYy?=
 =?utf-8?B?TmtSRVE3R2pvOVBqanROUk0wTmRTdnFTUEo3MGcyc3hsREpRckREOEttNkg4?=
 =?utf-8?B?cHBRR01EN0VhWnVhckIwMTU3ejZJN0lvSXA0Q3JURkNCb2k4aGFQVkhBS0I5?=
 =?utf-8?B?UTE0NHY0U0ZrWmFUMWJCSTA4UTgrYXNUcnBEaU9oOVNIMWgvU0JUSU5ZaWJQ?=
 =?utf-8?B?Q1hmTWt0YUE4K2VvdUl3bnJENExZZGQwS29nT3F0STRCd2V2T0sxaXBybmN3?=
 =?utf-8?B?Z25rVUo5ZzJ4OXQ2SlE3VmZXUWhicDhZRGxPMlcvYStaTTV6WlAxc1hXMThz?=
 =?utf-8?B?Qi9uL25yWVRvNEhOMzdmM29hQjJZUVZGeFJhVEZ3ZzYzOTZMQ0QvVldCKzJ2?=
 =?utf-8?B?NnVPNjhTOWUxZ080TFFxdGNVNklBL1JHYW9EWVZqblFnbWRPRnhsK3FMNG0x?=
 =?utf-8?B?MHJ5dnRxMHhhbVBkUUpHZzJaMFZJNFVXRVVsN1NRMHdDbTQyMm1KWUoybVZk?=
 =?utf-8?B?YTdBSFUwRUMwSmtkNW9hay9Rd3lSWVVrTldYUGFkbXh5SEpjaHFQdWplc0d3?=
 =?utf-8?B?cDBjS3dHOUFCOEk3UHVPU2pEclBJZXlhWHhFMC8rNDN6QzYzMEFhVjNQMGFk?=
 =?utf-8?B?VERZVWFWOG1LSDJDUXZtdmYweGczdVNsT094OEx6K0duRHNXVmdpVWw4V3hH?=
 =?utf-8?B?RVZiOGF2ZVZ6WHBaNFNXY2xSbFdsYzZBU2NtYWJsZjFaeEt2dHZLYjBOaEs2?=
 =?utf-8?B?ZFUvWHhnSWIyS1hKNncrOGNQSzQ2L0hHMXhjaGlFalNjNUFuSjllOW1jTnpr?=
 =?utf-8?B?ekRqRm5YZjlwbDBjQTNrdVVtcWJyWWVDSmZwaVN4NUpaVUZZT005K0RaVngx?=
 =?utf-8?B?M3NrTXNHWTAyN09ob0JESFFiZVdMUXdGZWRDaVJiRnJVQ2g2RUlsSHU4cDdL?=
 =?utf-8?B?dHYyNlJPZUkwNWZLaWxHcmdVTTRLeXlXRFZHVmRDZjVOV3E1aW5ZaENtenNU?=
 =?utf-8?B?TzErenh6Y2JzZ0tkRENpa0hMKzVheC9EREdidVNSUlV3UnMwdGhPUEd5RnB0?=
 =?utf-8?B?R2xyOTUzNGE1VFU3Ykd1eTdod0JqbGY4K1pFdjR2SDF6Wkh3YkVKaVlPOTNo?=
 =?utf-8?B?VXJ4bVpzZEhVYldCTlB4ZmVtY2dRakRrL1pZSEFxeThEMWFwOWViVTFYTVlP?=
 =?utf-8?B?Q2E5UUt5eUd4K1ZWOG84eEtBOUk3cmducG1NS3craENxR20vVzZYMDVsZEdt?=
 =?utf-8?Q?cbVX094scdCP6YfM=3D?=
X-Exchange-RoutingPolicyChecked: h3KQDiLb69/D2+DnOYXspocUReJaSHNkLbicRE/NWoAJyk0Iro+GLxJOcX+qIJeKZEZY/JoPlhdzdQc1IBIT9QF+B+9M6vKGhC22dDG8ICMEBpADOdMChU56ojKCF6MU+YNLpmV8q3382rnhhkySZsQO/dc1XyAZCOQ/3yrLD/arkVShlqduVeU4yQEBmyVSHvolXKBrGWkuH94EJG1O+statoOIODN32AiRf0X321kK/v8OhTw8Dixis9ZDtRV0t9aRj6GQ32MhMiNLHGomfMUjb6qfcB5ctvs9uly3AmHgcxFjtFnyKkxdl+jrq9s8s7NrB7tIAw0v5sWjazBgyA==
X-MS-Exchange-CrossTenant-Network-Message-Id: ad36addd-f72c-4937-1967-08dedb5617d8
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 11:59:55.0185 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UBXH2Cu8xR6v/a+/p3YvQKtXl+3uJJJzYdeKRXHaGyZhgzLkZDKCZLVxz0hWG4Cvn78BFmzYYhRfQpik0iVBWF0mrCCAurwVq1533f2NibA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6370
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 728B271031D



On 6/16/2026 8:12 PM, Mitul Golani wrote:
> CMRR is subset of fix refresh rate, it is exclusive from
> Adaptive mode, it does not need to set a separate mode flag during
> state checker. Remove the pre-added TODO for the same.
> 

Remove it at the same patch that actually renders the comment redundant.

> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 5 -----
>   1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index b2c5b148c487..92ded2e68b01 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -1202,11 +1202,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   
>   	intel_vrr_get_dc_balance_config(crtc_state);
>   
> -	/*
> -	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
> -	 * Since CMRR is currently disabled, set this flag for VRR for now.
> -	 * Need to keep this in mind while re-enabling CMRR.
> -	 */
>   	if (crtc_state->vrr.enable)
>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   

