Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DE19FEF61
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2024 13:56:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A97610E673;
	Tue, 31 Dec 2024 12:56:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N/EZByr1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78FBB10E063
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2024 12:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735649789; x=1767185789;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=bvKufrXb3xFwYAOPlHFyREirryGK3lt37Sr+aKVtiVE=;
 b=N/EZByr1gfmdV1YsU/+GfzFryFMdHCZyTtipUZfThF+x6cJleepDBc3k
 E4xvgU53gMbbGCYQfP0F8T6Vnmmbom04cPwK3CJFUXv051v+MTE70l3rH
 oXPPRGgqmDBjGeDD1DNE3S6CJMGTzEgRCocQRunIZCZdtk4DahPJnNYFB
 RdWzlIVofsTuS6IljWcv0xDOF3HfpLJV6rNHaG9h6dEFuA6V1g03MPakY
 lQMZVbL4kUiB2KEtpIoJBm+vgWTpWbEBMfUThARBAZ7oj+DKVDkNE15+g
 sY2aTZD/H8CAG/Hyhvl3DQ5sTERalIhyDx9QhPLvUx2I5oq9CxHEGeiXj w==;
X-CSE-ConnectionGUID: ag74DA6tSqCWLDwJBrz1WA==
X-CSE-MsgGUID: 8o8pasahS0qrVgLJRzgY/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="38762304"
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208";a="38762304"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 04:56:29 -0800
X-CSE-ConnectionGUID: uPX9/KhGQHiadjsGRtGoXA==
X-CSE-MsgGUID: HcL+GWLfQMexnrV5P9MLSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105669556"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Dec 2024 04:56:29 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 31 Dec 2024 04:56:28 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 31 Dec 2024 04:56:28 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 31 Dec 2024 04:56:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uLyewlR19NK3MKde+1g/gqdyuM+oSVZWWLPe7Y+9zokbtcjO9B6/P60SsFA8Malat82J5o1qLi1pEGxJxIFwS5n0zsh7EyHwDMJ1Dk9ztLyVq0gxaJ/bWSM5IAJuq5pJldMyg35XsQ9vll6tvv6PWnDrhf7plXYrPepN3yH81q8XUwomjOK7pIYm9PQxu8XIzA6CHk3UfUDhozgN69zZl7kmI3EtElzmdRog/dv+Br8gkXgsYsF2bSyi5dkioWnvV7QnEYzb1wbB0iL3kG5V4x4jvqhntTQ1Fw7fm7/ea7T9ndtb6UsXzyqHLKuuQ8IyWvlKc8tCsuZm06XmnzQ/vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kO4IgZcrzvEd3aPwxsbJU1TeempbfRGjsOR4Gh4NgXc=;
 b=cxCvPauFh0y1gP/S+BW/CmALpZo0iFpX0KeMqkvreEP1/ifjCyXnaTh0KxB6htVaEFjosO/pEabZ+OQg+dzfZnGr0wwpMjJilBKCkXwBY7Uav+c+v8mbhuMe2KU4J+aAFYGLczMpMSH/XaIdC3t4i7mHCvMv1HjN91GhlFbZUsnLNt4Hdr2sBECo+YXp9CnDsyoGHKonqXheCG/bALVD8e98+UoDmj8n4zy04hZ1cvfhZu3AO5W7cpkbp9UO5OZt6wvDl93tbcCEv5FcVd/IThJIy5FgTqAzPu3GvELUIt+G6X3FOOe9ZSujvtwsetaITGR3o1LZFsz9MsFFEdQDag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB7754.namprd11.prod.outlook.com (2603:10b6:208:421::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.19; Tue, 31 Dec
 2024 12:56:21 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8293.000; Tue, 31 Dec 2024
 12:56:21 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87a5cdpbt4.fsf@intel.com>
References: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
 <20241219130827.22830-7-ville.syrjala@linux.intel.com>
 <173507271978.1822.13474225879621112042@intel.com> <87a5cdpbt4.fsf@intel.com>
Subject: Re: [PATCH 6/8] drm/i915/scaler: Pimp scaler debugs
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Tue, 31 Dec 2024 09:56:15 -0300
Message-ID: <173564977570.6883.11359864589892174180@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0359.namprd03.prod.outlook.com
 (2603:10b6:303:dc::34) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB7754:EE_
X-MS-Office365-Filtering-Correlation-Id: 141d675c-c7c2-4ee3-861e-08dd299a8642
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?djZ1RVFaUEdVZS9Kc1FuS2dlU0RURUIvak02akFBMkhHRjFSeTkvMGY4WE9Z?=
 =?utf-8?B?VVgxMWw3K3BOZFhISU5nUWc3SEdOUGpwdlloeHFLY0grSjg2VEhOL0MxeHh0?=
 =?utf-8?B?VERXMUlmMEdrN2ZyeDhqWUNaVk4yNXAwVit3b1ZBVlA2dENmelNYdVRGa09w?=
 =?utf-8?B?YUExdnN0SklBQWlabHR3M3MxaVdZNFhoMmRyNGlJTEp6T3M2c3FKc2N5bGtk?=
 =?utf-8?B?cmMxVzlLK01jOXVEbllmWitPZEcwOE12SXNXNno2bTVIQU1JUUJBUVFYeTZh?=
 =?utf-8?B?QnVWRFE2ancrTUlvOTk2SFNsd1BsSEN2eXZXenMyS3ZweisyT2NrbE5nbmpF?=
 =?utf-8?B?alF4M2VuQ2k5STdrLzUyT2JBcXJuTzFheWxjT21ZYThCSk1uV3NZUWF6UWdJ?=
 =?utf-8?B?c0xnYzMzcGVtbUxiSEdYVkdveWM0c0VldVpzblZ1c3hMZWJOdjVlem9OdG1D?=
 =?utf-8?B?bUxFakF5T0xWQlptYWFuREJ4eEh6b3pKMUhzUlladWgxOVhMSmhBczk5N1pM?=
 =?utf-8?B?NkhYQ0pGdURTaGw5V0U1b2ZiT3JEakhXV3o4UWd1WUMrUGhXYUVuc3VyZUtF?=
 =?utf-8?B?elJIZUszNkNLMEk4dGkydEZyb0JmT25jOGRnYjVDSSswM0VXeGRhR3dmbXJT?=
 =?utf-8?B?NXp5Q1cvanBiVkpidnBSdEx3UGNyTHM5NHJNdFZkZlFOaHR4Vjh4UnVWa3ZT?=
 =?utf-8?B?MzJFLzR6b3ZueWRFMktoVjlZQUpSNU1rV0ZUQU8wT0orVzJ2dVROV2JQQ0xB?=
 =?utf-8?B?QW1SYXozZ0RibUIyeFpkQ1B5c3JiY2xuT0hWRXZveTE1UEZUNGcyVjkxV1ow?=
 =?utf-8?B?QUxxQzZXOCthSjVNNkNpTzdEakI2dXVDTVRkLyttQlM0cFBZN3huY2l0T0lU?=
 =?utf-8?B?UVZMc1QwQ2pmWVUxYndMRUpHbVdRYzRsdDJZTS9PalI0aWxqK3drMW9jTEdL?=
 =?utf-8?B?U2ZPUnJJUUxyb2swWGd1UUY3M2t0enJvVERPRU5QckpUaitVZ09wcGhHaXlT?=
 =?utf-8?B?dTRRL2Y3bFNkQ2ZRYjh5bHJJVi9IS1Y0R0M2WGpUYzRJZHhwSTIrU3FZZmZF?=
 =?utf-8?B?eS9QQzkvWGREQS9uTE9RQTdQV3htdzdQbHVFTG8wZnZIcWR5WmYxelppd0VD?=
 =?utf-8?B?ZHpINjJWMC9sRUxkTU0vM0tqYVhCeWREY3h5UFJpUUtUMlhlSTFEUUUvSUlp?=
 =?utf-8?B?SEhTZHI2a240ekl3TnJuREUxUmJ2L0dVMFlvQ29WWmZwb014aGYxUXpQditT?=
 =?utf-8?B?eUpIQml0T25FSlkyanl0bnlXYkVIdW8rRk50d0tSQU92WS9oTVk5aUxwK25B?=
 =?utf-8?B?eVhyRGhTODFILzBqMThNVGo3Mlh5dTNySjF6cnlRY3NPTHNkRSt1a1Y0L3JJ?=
 =?utf-8?B?Nzc2NGRQYW1uNnY1V0d6bnRaTHBVWDc3Q1hwVnlZbnNPSzZITFlBYldaRGNn?=
 =?utf-8?B?YU8raVRJUFE0dE1sT0szcWxiOTJXQTVlTEQxZkVUNGwyNjBCRHhzTGFHRFFN?=
 =?utf-8?B?ei9CRzlHRTZKK2pjWU5VeGoyREVJcHBYK29PeXlGKyszcW9NdE5CNjYzSUlX?=
 =?utf-8?B?aUdQMkxKcjlaWnU4Z1Q5ZHdzZzhkV0I1blZ3bHRFcG0yT0tNSE1HRVRNQm5C?=
 =?utf-8?B?RzdyT2hsQ1VTV0pYRkdheHZnTXQ4TmRPamxHUFdIZDVuT1pqQUs3NEdjL3Y4?=
 =?utf-8?B?ZncrQ3lCaE1EcUppV1hyYnp5bk5HTEp5QUJOTkJLQjdIZTIxakRXTjVHTmhu?=
 =?utf-8?B?MWhjTmVReXMwRVdmRUs5U2hMODNJRFR5dG1LZTdoc0lWci9RRnlBRUtQR3FM?=
 =?utf-8?B?YUpoZGwyQU9NajZVdVJJdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGtDaDAvWTZHOHZ4bUkzSm1aUXdPcVM2UkYyMmVDYVcrNlpIdngrYnlqV2pp?=
 =?utf-8?B?Y2tFWEVMbXQ3S0pQVFBOcnk4a1lGUTViVHJHd0U1M0hjM1NCRis4OGU0WU9P?=
 =?utf-8?B?RW9YeDE0cUE0bjNWQi9iRW9iVUhxcFV4VTB6Y2JsWFEycDdIOG1jSUNCbzNz?=
 =?utf-8?B?N2lDQ01ienBzMVh1MEQ4ZjU2Qy9YV0tEcEZBMldnNy81d2Y5bmM1RWpLUVVS?=
 =?utf-8?B?M05LWHNHaEF2RTVab3hwUnNVWVR4bUZRQmpuQjRaZWZRRlp0MU1SanhJaWs1?=
 =?utf-8?B?NEF4ZUVvY0sveGZsWHhGSWdwU2NQQ2FGUXp4VEh4RWJnZy9ybXh3MGFweHgy?=
 =?utf-8?B?MTlBS1I2L2Jxby9RZnFmbitZZjRNWDJCTjAxNkllclNKVFlGWXEvRmtiNkZ6?=
 =?utf-8?B?Z2hNdUhXQXlsL1pxK3JnTlFaYnZrN2xkc1Q1V3phclpxT0w3OFYyMVlId29h?=
 =?utf-8?B?MndUaGJLNkZwbXQyUVJZaFVQNGFLWmlSa20vSGJlbXhpUlNpNG8ya005ZWNH?=
 =?utf-8?B?UXlyK2lMVUl2MkNMZHcvWVovN0x6VXdUQmo2ZXlXRGxyamxWTVlyT2x5VnRt?=
 =?utf-8?B?OXlucjViajNpQzJPbkcydDZDbVVnckFHTjhSUEJZa0VNbjJaTW11cmd2bC96?=
 =?utf-8?B?cGxBM0lJNko1emVQaVpWZDMvVHRFSUpEUENEZlkvZzR2Z2tnYzIwSkt2VEg1?=
 =?utf-8?B?eWZibzc4VFJvQys1ZUpiMWN4azRRZjZhcjR1eXZ0dWRtaVBVNU9lN0Zvd0Fp?=
 =?utf-8?B?d050NmZtS0s3NE5BYlEwVTVDQ1JDVjl4N3N2REc5WGp4L1piR3I3aU5lVU5z?=
 =?utf-8?B?cGZzcitHNGlhNFR4VlZwQm9iNGNRZFExT1BZU1Nodmc0TmtBYkNTRytiaTZZ?=
 =?utf-8?B?ZVRzZ21qMFNlNzdqVmpiVXd1dTd6MTBWTTc5UXdUeURBTGNxQkFLZEdKYXVU?=
 =?utf-8?B?enVMUzNHYUFYdTY4cVJYS1F4Ry9vY293MHlEQWR2V1UxZDByRUpyeStWSURa?=
 =?utf-8?B?WmNKZUtvOVIrTEJpWEZEZDlMakVaV2RpZW1RSWxiR0tDa0tZbER3VnYrM3lu?=
 =?utf-8?B?ekFmRmpjd2p2N2NlQUYwQXBqd2NnM1lWejFRMHpXUWVEUFc2Wm9xcDRNN0Fr?=
 =?utf-8?B?cVVLQ3Avak1uTVYxdVZpbmhQeGwyUDliQXJKd1BsUUljbEZoR1VEVktUTm1I?=
 =?utf-8?B?VVUwUjZpb2cxdTU0bmZWeEZKN0ZFUjlCTHNSczE5ajRqNUhFSmF2MzVHRE91?=
 =?utf-8?B?U3hQSzNkTktScklEUkU0L29WeUpMbExZY3dhNHBZdFp1QlZkR1JXR1RaNzlY?=
 =?utf-8?B?VysvVERRazc4Nk5lWjJiQTkzS2lYQS93Umh4T0ZSa1JUNVR5bzd4cTRzdkRX?=
 =?utf-8?B?d1NIalVqd2Y0UnJkWlJCMUlTWGU4TzNrbUdmNGpYNFJPQ3licXNndUlmWlJH?=
 =?utf-8?B?aXhwSzVkem9VZ3VXZDRYcVRDU0FGRXJUMVdxSiszRVpBVmNGYkdPOFhucE5V?=
 =?utf-8?B?NXNHR0Zxck5jNmJiVC9mcjJOTFp0cmd3U1gvdU9hdzBhVlZuaEZ4dENkdlEr?=
 =?utf-8?B?enNiSktjWUQ0MVVoZmRBOCtLTG5GQTNLOEhhS0tJaENqQmNBa0hZd2dtZFNO?=
 =?utf-8?B?RUlUQmd5cDdHTHM2L2hydU9BMVJMOW8xdlV2UlNkb1hyMHRSd1FRYy9LZGhs?=
 =?utf-8?B?d1Q3eVgyWG1aWDdBR0lXWEd0MXV4Q3VON2lMYnIvdjJra1BiMjVSaDZwR2pP?=
 =?utf-8?B?OXdlR2NGT01YRS9peGE1eFo3d2xpYkZPR2dzWHpEQmxjTlkwMWVqUjRlZzJN?=
 =?utf-8?B?SnNGeVNITWFpZ1VFbFRSOW1NME8wdUw3a0RXQVUwU1BsdUhBWHdVNlRjSU5P?=
 =?utf-8?B?MTM5Wk5lcWxEU0hOTGVmS1Y1dWZsY0lTaC9XYnZZMVFWV21HOEoybWlwUS9H?=
 =?utf-8?B?ZG9Wb1lqUEdiRFM5YUttWkM1QmF2bWhSamg0cEJFRFc0RkVNV1h3Z3lyelNY?=
 =?utf-8?B?blBwVGVkNmQ5aW5iY1ZEYzlra0VYQTBXN1E2SVBHcHE5QnBlWlJ3blpGQm9t?=
 =?utf-8?B?THpxWXdKSHVKWEpCTld2Qzg5NnJ2WUd2T3o2RjZMNS96dks4OU5zUGYrU2kz?=
 =?utf-8?B?anpZMHNPVnpsbCsrM04wL296aWxFaFY3Wk8rTzNZbjlSallBbVIvQllmSi9r?=
 =?utf-8?B?UVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 141d675c-c7c2-4ee3-861e-08dd299a8642
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Dec 2024 12:56:21.2128 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7xsuLapVI//aVVJhQjL29V6Lnjeq/IhA+mvqYCjkpyRKAFGfYC4sbArX6FsfIl3pBywK7/pUXGhcXZ0z92OXmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7754
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

Quoting Jani Nikula (2024-12-30 09:58:31-03:00)
>On Tue, 24 Dec 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Ville Syrjala (2024-12-19 10:08:25-03:00)
>>>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>>
>>>Include the standard "[CRTC:...]" information in the scaler debugs
>>>to make life easier.
>>
>> Drive-by comment (and going a bit off-topic):
>>
>>     $ git grep '\[[A-Z]\+:%d:%s]' -- drivers/gpu/drm | wc -l
>>     600
>>
>> Has someone already considered creating DRM_*_FMT and DRM_*_ARG() for
>> those? E.g. DRM_CRTC_FMT and CRM_CRTC_ARG(crtc->base), which, IMO, would
>> be easier to use and arguably more concise.
>
>Personally, I'm not in favour. I dislike having to concatenate the
>string constants all over the place.
>
>> I tried doing a quick search on lore.kernel.org/dri-devel, but I'm not
>> sure what would be good search terms to find previous attempts to see
>> possible arguments against it.
>
>We've gone through this a number of times, and some of the other options
>are:

Thanks for the recap!

>
>- Add allocated debug string to the objects, e.g. crtc->debug or
>  crtc->id and print it with %s. It also works when you want to print
>  the info of e.g. both the connector and the encoder.

This one seems interesting, although there would be some increased
memory usage. Maybe that's not too bad?

Was the increase in memory usage what caused it not to be adopted?

--
Gustavo Sousa

>
>- Add function pointers for debug logging in the drm objects, and have
>  the drm_dbg* family of functions use them based on the type passed to
>  it with generics. You'd do drm_dbg_kms(connector, "foo\n"); and that
>  would add the [CONNECTOR:...] prefix. Falls short when you want to
>  print the info of multiple objects.
>
>- Object specific debug logging macros. connector_dbg() etc. I'm
>  strongly against the proliferation of logging macros. All the variants
>  (like once, ratelimited, etc.) get multiplied by the number of object
>  types. (Yes, I also dislike the gt/guc macros, but I digress.) And
>  this also doesn't solve the logging of multiple objects at once.
>
>- Add printk format specifiers. There's apparently no way to do this in
>  a human readable way, as anything nice throws off compiler printf
>  format checks. So you end up with stuff like %pXYZ where the XYZ are
>  meaningless magic letters. And they'd need to be implemented in kernel
>  core.
>
>
>BR,
>Jani.
>
>
>>
>> --
>> Gustavo Sousa
>>
>>>
>>>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>>---
>>> drivers/gpu/drm/i915/display/skl_scaler.c | 25 +++++++++++++++--------
>>> 1 file changed, 16 insertions(+), 9 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm=
/i915/display/skl_scaler.c
>>>index cbc71e44fcbb..f6d76ef1a854 100644
>>>--- a/drivers/gpu/drm/i915/display/skl_scaler.c
>>>+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
>>>@@ -166,7 +166,8 @@ skl_update_scaler(struct intel_crtc_state *crtc_stat=
e, bool force_detach,
>>>         if (DISPLAY_VER(display) >=3D 9 && crtc_state->hw.enable &&
>>>             need_scaler && adjusted_mode->flags & DRM_MODE_FLAG_INTERLA=
CE) {
>>>                 drm_dbg_kms(display->drm,
>>>-                            "Pipe/Plane scaling not supported with IF-I=
D mode\n");
>>>+                            "[CRTC:%d:%s] scaling not supported with IF=
-ID mode\n",
>>>+                            crtc->base.base.id, crtc->base.name);
>>>                 return -EINVAL;
>>>         }
>>>=20
>>>@@ -186,8 +187,9 @@ skl_update_scaler(struct intel_crtc_state *crtc_stat=
e, bool force_detach,
>>>                         scaler_state->scalers[*scaler_id].in_use =3D fa=
lse;
>>>=20
>>>                         drm_dbg_kms(display->drm,
>>>-                                    "scaler_user index %u.%u: "
>>>+                                    "[CRTC:%d:%s] scaler_user index %u.=
%u: "
>>>                                     "Staged freeing scaler id %d scaler=
_users =3D 0x%x\n",
>>>+                                    crtc->base.base.id, crtc->base.name=
,
>>>                                     crtc->pipe, scaler_user, *scaler_id=
,
>>>                                     scaler_state->scaler_users);
>>>                         *scaler_id =3D -1;
>>>@@ -207,8 +209,9 @@ skl_update_scaler(struct intel_crtc_state *crtc_stat=
e, bool force_detach,
>>>             src_w > max_src_w || src_h > max_src_h ||
>>>             dst_w > max_dst_w || dst_h > max_dst_h) {
>>>                 drm_dbg_kms(display->drm,
>>>-                            "scaler_user index %u.%u: src %ux%u dst %ux=
%u "
>>>+                            "[CRTC:%d:%s] scaler_user index %u.%u: src =
%ux%u dst %ux%u "
>>>                             "size is out of scaler range\n",
>>>+                            crtc->base.base.id, crtc->base.name,
>>>                             crtc->pipe, scaler_user, src_w, src_h,
>>>                             dst_w, dst_h);
>>>                 return -EINVAL;
>>>@@ -224,16 +227,18 @@ skl_update_scaler(struct intel_crtc_state *crtc_st=
ate, bool force_detach,
>>>          */
>>>         if (pipe_src_w > max_dst_w || pipe_src_h > max_dst_h) {
>>>                 drm_dbg_kms(display->drm,
>>>-                            "scaler_user index %u.%u: pipe src size %ux=
%u "
>>>+                            "[CRTC:%d:%s] scaler_user index %u.%u: pipe=
 src size %ux%u "
>>>                             "is out of scaler range\n",
>>>+                            crtc->base.base.id, crtc->base.name,
>>>                             crtc->pipe, scaler_user, pipe_src_w, pipe_s=
rc_h);
>>>                 return -EINVAL;
>>>         }
>>>=20
>>>         /* mark this plane as a scaler user in crtc_state */
>>>         scaler_state->scaler_users |=3D (1 << scaler_user);
>>>-        drm_dbg_kms(display->drm, "scaler_user index %u.%u: "
>>>+        drm_dbg_kms(display->drm, "[CRTC:%d:%s] scaler_user index %u.%u=
: "
>>>                     "staged scaling request for %ux%u->%ux%u scaler_use=
rs =3D 0x%x\n",
>>>+                    crtc->base.base.id, crtc->base.name,
>>>                     crtc->pipe, scaler_user, src_w, src_h, dst_w, dst_h=
,
>>>                     scaler_state->scaler_users);
>>>=20
>>>@@ -421,8 +426,8 @@ static int intel_atomic_setup_scaler(struct intel_cr=
tc_scaler_state *scaler_stat
>>>=20
>>>                 if (hscale < 0 || vscale < 0) {
>>>                         drm_dbg_kms(display->drm,
>>>-                                    "Scaler %d doesn't support required=
 plane scaling\n",
>>>-                                    *scaler_id);
>>>+                                    "[CRTC:%d:%s] scaler %d doesn't sup=
port required plane scaling\n",
>>>+                                    crtc->base.base.id, crtc->base.name=
, *scaler_id);
>>>                         drm_rect_debug_print("src: ", src, true);
>>>                         drm_rect_debug_print("dst: ", dst, false);
>>>=20
>>>@@ -430,7 +435,8 @@ static int intel_atomic_setup_scaler(struct intel_cr=
tc_scaler_state *scaler_stat
>>>                 }
>>>         }
>>>=20
>>>-        drm_dbg_kms(display->drm, "Attached scaler id %u.%u to %s:%d\n"=
,
>>>+        drm_dbg_kms(display->drm, "[CRTC:%d:%s] attached scaler id %u.%=
u to %s:%d\n",
>>>+                    crtc->base.base.id, crtc->base.name,
>>>                     crtc->pipe, *scaler_id, name, idx);
>>>         scaler_state->scalers[*scaler_id].mode =3D mode;
>>>=20
>>>@@ -530,7 +536,8 @@ int intel_atomic_setup_scalers(struct intel_atomic_s=
tate *state,
>>>         /* fail if required scalers > available scalers */
>>>         if (num_scalers_need > crtc->num_scalers) {
>>>                 drm_dbg_kms(display->drm,
>>>-                            "Too many scaling requests %d > %d\n",
>>>+                            "[CRTC:%d:%s] too many scaling requests %d =
> %d\n",
>>>+                            crtc->base.base.id, crtc->base.name,
>>>                             num_scalers_need, crtc->num_scalers);
>>>                 return -EINVAL;
>>>         }
>>>--=20
>>>2.45.2
>>>
>
>--=20
>Jani Nikula, Intel
