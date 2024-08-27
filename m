Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D5B961402
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 18:27:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C12910E37E;
	Tue, 27 Aug 2024 16:26:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jc+7X7FA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04FEA10E37E;
 Tue, 27 Aug 2024 16:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724776018; x=1756312018;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=iUZdhplKXZ6WXS1Kgh0k0WKdI9CY37EcT1O7O7gzWvg=;
 b=Jc+7X7FAdtpoTVfByz8QpD9cTLzx67IIPcbTTmmCMylGGQDJdrNjo4Qe
 01lWQThrk7eYPyGq47L+YgBel/wdgWdalHOL3FZoSTurGrctxDG6OIrxu
 4gCy7Ba9ZmxZmfCTwzKMYaOfNF48mAgc0hs2o2dUN1d9AvzW8MknDlZUM
 qX55JDKR7juzIF4MI0aW5l+I6o7UWQ4wQ32hZxtS4J3XpavD7MZVTFc1b
 CCiQAtHw2pnZQtLYu2fFctK7BCrG3ZOAfDQnRqqpEnd0A9utay7U3DAJD
 iAEUTBNpl8WxlzDIXV4GhcPXmbzYJXAcEoUecTBHrrfukJ0KFYMePmN2x Q==;
X-CSE-ConnectionGUID: 6yOUamYmTR2+H9Wuvkxs1g==
X-CSE-MsgGUID: b+b1QZC+T/KHtBMm9tlMzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="33924708"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="33924708"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 09:26:58 -0700
X-CSE-ConnectionGUID: L1MWq8dGQPWZCJBivL1Yow==
X-CSE-MsgGUID: 3ksCvH4MRj6b81Hulf0lUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="62642405"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Aug 2024 09:26:57 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 09:26:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 27 Aug 2024 09:26:54 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 27 Aug 2024 09:26:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fjt9lxIMhhTsg1fsYzDkGOdBpzHVF3ZZu5h/clnRa3Z6w7k2fbio68CvOTIPJ7kU2tUvdSWauIM47GQIEDvUjIK/WcRjCCvgMNemYy5yABr1nbWfBd+zAKGhkOOXslQBULnz2yWUI2vflLa3vmHYRrRyELb5u1kEo/L168fnX1bc0eek3ot3rrYsDomicMITIoed+14cJskoJTO+mWuNbYHHCd7Uhz+FrND20UVVtxMfU+J2BPpo/1uCnsWyil63Tz4284IHhFmFXlYQ55P+wR4PesseQLw/eRuEGokzq4vqTCBx45CsPUlv4YSTPoeY8DJBMuu70I91hn18qPwaIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wZWdkzXJIeedHAt6IJnExxG/mq1d5LPBRIgY15dk7U4=;
 b=a5xrhY/iCTR748LoShf65641Gexg69OcbJuXiyGpyxDQM3suWjP+Au7XxOBc/yF/7rNBxbBozlHVd/QrgKW6cSOMCqAineB/FNAP5YPJWz1JcLyqbqV89TCd7vw+UaOCOejaZuIHthbfY8UuAG3BbsH7M9Ds0yi50SPm+iH12fpJxFe7eNH/S5iFeXEdOlnrXi26ytFjDYnKhKu2e/BKXEvl3gqhzEwXezkO2w2uIFL9q16xdlEIJuqrYcZKgMeY+S0DpcD4Wb8Orp2g8KINeFdK06n5d9f5930ezSq5EV8zlojotJcJ5Vp99CLvw3X7T9NWo3EELKDiV45PcZLJKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB8059.namprd11.prod.outlook.com (2603:10b6:510:24e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.23; Tue, 27 Aug
 2024 16:26:50 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7897.014; Tue, 27 Aug 2024
 16:26:50 +0000
Date: Tue, 27 Aug 2024 12:26:46 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Subject: Re: [PATCH v6 1/2] drm/i915/display: Plane capability for 64k phys
 alignment
Message-ID: <Zs3-RrVfnDA6XSRY@intel.com>
References: <20240826170117.327709-1-maarten.lankhorst@linux.intel.com>
 <20240826170117.327709-2-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240826170117.327709-2-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: MW4PR03CA0069.namprd03.prod.outlook.com
 (2603:10b6:303:b6::14) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB8059:EE_
X-MS-Office365-Filtering-Correlation-Id: fc2bf98b-19af-4614-1be2-08dcc6b50d69
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TkNQZ1lVTitaNEc5T1J0SnA5WTNDM3VJYmdnSHI0RHdVVUEzUklhRFZKN21m?=
 =?utf-8?B?UXlRT3hoR0RaVFUzaVovT2NFYjRSOFdXc0VzOXFwcUU4MisrUlNrQm82aWlq?=
 =?utf-8?B?U0pTL0g5YUlwTnNmVVZPZk5tY0ZNOVNJSjlzM2hCemp5MDBXZzk4VmZMNkdk?=
 =?utf-8?B?S3pFT3J6S0lSN2RYVHpzRWFIRWx2WTN1ZGlkNnQvSE94aGN5TW5GeDBQaU5l?=
 =?utf-8?B?ZTdxQ2tCUWpKKzQ0Z0lnOVdvREJCQXFFaXRVTUJVNHMwSCtHNkIvbmMwMXlo?=
 =?utf-8?B?QmFucjJnRlB4YkFpTDNiQVJnYWF2R1d2TURISFdrUS8vUk9JMkQraktLQk54?=
 =?utf-8?B?TkhUcFBxdUdCZFdleHExcTdhOTJxaGlTa01CN0FoWVpDbWZFaUxzYXBEemc2?=
 =?utf-8?B?VzJjS3NPbVFLWEdJSzdySWRLOTV6NUh3RjJXMUVnVTc4c2hUS0hqYUFkTmtZ?=
 =?utf-8?B?QjZPU0JDMm5KaVZZWGJ1d0VTZEdqQTh5bElwdkVTRmxoVTNReTh0L2FrK2kz?=
 =?utf-8?B?QitOVURPTnUzbGd4K2llTUZ0TEVVUlg0M1ExTFM5dUxYaEZFRFc0TVJibjk0?=
 =?utf-8?B?LzNQZ3VJWmhobnlSNUVhMU05QmNINHFNTFord2ZxMkxDeU15eXp3VkNZaUVq?=
 =?utf-8?B?S010dG9qc3F4cVk4elg5b1pxTWxLbTBOaUNkZDZWVWlEUHNUOWxjWDBVNm9K?=
 =?utf-8?B?L1poU2JyZEFsTnN4c3FtNEtNY1ZDR3I5ZlR1aUNKRGtyYk9IRWFvNS94b3ZI?=
 =?utf-8?B?andiM3BTRHBQMjVBcWIzVnM1cEFKSGR0eHNTcnhhNml2dEUwaklzN1ZVNzg3?=
 =?utf-8?B?cGwwK2dUR2xCQUhiQU43NkVPcEk1VGJCQWxSa3g3Q004aktuZklWMXNYMXd4?=
 =?utf-8?B?MlZRdnRMNmNLMEpwSVpWS0tsdzYvb3VYRFVnVlEzbkNQeWQ2WTJISWk1ZnFm?=
 =?utf-8?B?elJlcGJlVE5LR0cxRTBGdkhtNUNoUXgzNHRRaUtvalhEOFdZWlgxclBNTlgz?=
 =?utf-8?B?RmxIcWcvSFpZOHBrMEYyeCt1Q1d3S0w0UUk4aXViWHFuajVSNkV5T1BYOWJo?=
 =?utf-8?B?L0E0ZC9MQXhXZzhjWVdwZDVhWWFYVWJzR3liL0JFbVJlVzFDd1F3Q1Q0OVRU?=
 =?utf-8?B?MEZ3dGE3dUFOT1FpZUlFQmNGOFV3OGJZbDJSS29lMFkxNjlWMHUxa3FXZUlX?=
 =?utf-8?B?NkU4aktNZXNDc0doUC8rYmo5ZThKTjlmN1ZOV2orWXAxQVpxcWpZZGtsVzBq?=
 =?utf-8?B?SjVQemxrK1NwM3M0UUVvZ0xBTk5lbUp5OEcwTlY4dVVuOHdsZEMweTU4RFFp?=
 =?utf-8?B?YVhLVnZOZEMyZjIzTVhWWVJqY1FpRXBVRzJlaTY1bWxXekJXNmkxVkU2TE5W?=
 =?utf-8?B?TWJIeHBNQ1pXSDcwTTd6NEN6RktMZEl3UURYckY2Y3g5QVRXeWI4Vk9DM3RT?=
 =?utf-8?B?NVZFZXd3dHd1ZzZjeXpDZkVsbHJoQnJ6d2gvanZhd1FDMHAySHZzQTVYdm5v?=
 =?utf-8?B?ZktEUlFLQzdZMmJTTVFzVzg4MnNESGFoVUcyMFAxQXFxVVI1WVB4SXBQYTZ3?=
 =?utf-8?B?YjE1TVliQnhVL0VWVkR1RmRhZitUdmZUVVJuY3VXWEVZMmFFbmttYVlCbWdz?=
 =?utf-8?B?MTM5UThLSmFkeWw0WGdsWERSUzZVaWgzVEc2ZDNwalVQRHJPdmJqK1paZWZp?=
 =?utf-8?B?N0ZjSWx1ejZPb1NpZ3VIc2pZVW55TEx5TUtGejlmb2FrckpIQ28vQktRQzJl?=
 =?utf-8?B?S0NuVTl0cmNhUnp6SzlYdHJRcGRTc054OExBbWZuSDlXeCtYV0swZ2RQOExh?=
 =?utf-8?B?V3Nnbis2U1FCQS9zbkpkdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1MyVmZkTStoM2w1Z3FQVzhibHdKZ0FENGlTem5YK2tSTXVFQ2JEYnk2M3BS?=
 =?utf-8?B?VzB0clgvbjFxSnR2NEhncnZqczB3ZjFuRkU3aU01UWYyN3lzZGZIZTgrMW1E?=
 =?utf-8?B?SUtCM0h5dTQzTU5IMmJXMFpyUUhlcDhJeGp5MkVOOXFiUnZCaHdLNWhrNXhT?=
 =?utf-8?B?cUtRbGMwc2dKUnlOUVpxdHhOeHFFV3BZZXk2MjNZelVKMG1zSmVEUkh4ZkNF?=
 =?utf-8?B?S2ZxUEJtOGxHMmowWEVGVFovcE54aVNYbGhiUjBOOGZuNEpsNVQ4b0NxakVC?=
 =?utf-8?B?UWJ0MnRaMnZwSkV4SE9CbHBjdTVhVkc4UjdEOVAvZjI5NlJtTzRocHFzczBQ?=
 =?utf-8?B?dzRlL2FkUDA5L1Uvb3hsdmNIeFo4RWdqVms4NEpPWE5LN0FZR00yTG5ZVFhJ?=
 =?utf-8?B?MGRtTXNNUFFjTFRBSE10Z2xKUURhcCt1TmpxOC9VZlhZRDcwTUx2ajloVGlH?=
 =?utf-8?B?M1BsQTFHNWdpbk9OREN0UUNOMlhsdnFuMDVIdzdubWtlajZrK2p4aDR6WTdu?=
 =?utf-8?B?ZW1iWFd5SWUxcHBUanc0bmlmZjcvWUQ3YnNYb0hxZDU4TUxhVlorQW8xVitl?=
 =?utf-8?B?ZGMwK3h0MWtRaEdVcTRYN2xqWHkzV0daMVBnVVdFeWtZRXMrUGFmZDUwWTRJ?=
 =?utf-8?B?Y1R6dnpOQTZiV2lTUVRnbXlscFViSFlnUkszOWs1Y0xUR283TjZ5UWpjUUgw?=
 =?utf-8?B?aFVpV3N0cVFPMldnOE8rTjJYTHVwalFiQ1UzZEsrTXpiRGhQVDJrakpiQWVN?=
 =?utf-8?B?ckQxUGYwU0svZGI0a2ZCN0lzNGI4RnlRUWFRZ2c5S2dNKy93VURnaEpERnZu?=
 =?utf-8?B?VUdiTi9HOGxGMUNmY09uSUE3cGVwNE5HTThGbmVGMDJ6V28vdTlxejUyZHlS?=
 =?utf-8?B?TjlUL3BVYXgyamlNemtSbzRHcjM5NzlFYlZqdnhLU3djK2hoM1NSQ0RlQU5D?=
 =?utf-8?B?cVdBTVFqYWc4NFVOV1RhUEY2ci9wQ0FVOGxJakN6b2N1ejc2VjZ0eE1KUlds?=
 =?utf-8?B?UHJ4d2FXSWZzSCtIMDZyWW94R1U4NXFRUFZrczRuSDIwbkFZekRlck1UV2pC?=
 =?utf-8?B?aGV1T3k1cERRREtNMjVYbEZkdldsejdWVXhrRnhFcUY4aFZDSUlwdks3eWgv?=
 =?utf-8?B?VWt0ejdjMUJRaG9pZVpnN2JxVFFNMDgralIzc2VrcWFQNEVaL0lKZ3lzZ3o3?=
 =?utf-8?B?T1hZTWpUUm5LM1JUSjdGelhhRGdONnRTdFM5U2RHblV2aWNmRDhJdUVwWjEy?=
 =?utf-8?B?ZVZQN0tOK1BRZExrM2hPemNTRTNWN0hTN2xoVGI4bStSSFI4SkZTRDZ6QkZa?=
 =?utf-8?B?ai8vYWpIRjBkbVF4QW1ZMXVqbmlKdWxLay9DelFHdzNGOVZJWmNEUHZkeml0?=
 =?utf-8?B?ditRRVM3Uk15VXUrL2drd0UvdDRtaU1HdEZQaDZ2bjJLOGZTbmc0enJ6VVRn?=
 =?utf-8?B?YnNEQVEvdkJCb0FlL0JQZDZyWTFUNjZmZUZZVWRaV1hyakVtOVRwRUVhVER2?=
 =?utf-8?B?YWt4QWJLRUxQMTQ4anNINXZkRmY5bzE5a1dqampuMGs3TVNyNkZzWUxLRDZM?=
 =?utf-8?B?UTc1V2pPSVgra0p2Z05EaEJxb1M4dDhQRk9VS1BIdkJmVGo3SnJkZjc1M054?=
 =?utf-8?B?TUs3cTk0dEhDS25BTE0zMjNaYmNKUEJSQk53QkdEbm5kNFI3dEZsNDI2S3hV?=
 =?utf-8?B?R2VaWVNxZHgxSzFuSUxwK1I2dlR3SGRzcWQ3MHg0bDNzd29BZENEVloyT3p6?=
 =?utf-8?B?QnhEREhsK1MyMzVadTliV3Y1blJUZmh0SFQweWpDajFhWWxQMVRCVW1mdkla?=
 =?utf-8?B?NWRVVHFRVFEwdU83Y0pJTlphSktrNG9JNDJvOGxJU0s4bjVIUFdWSjI4bXIx?=
 =?utf-8?B?eHR1Q3MzQkdUaXlNMWM5aHBWZWFyQmlFTndpcGR3N2gwTVF5YVpPNjgzdXJp?=
 =?utf-8?B?bTBtYm13MkZWOEJrdm84U242YUdnRUlUMWQyYmpuaVZVQkh4MVZESERGdXRF?=
 =?utf-8?B?TEdURWhJb253ZXc1Z0NsRC9QYUx6TW5QMVg2Yk9FWFFaeW9Db2hkZGdMQ3lk?=
 =?utf-8?B?TFJhWmswc2tHVSs0NjBPR0cvWDZ5RVRFU1E5VHBZd1piV2xab1VwMThFemcx?=
 =?utf-8?B?dENXajNGdkVHcS9jUmZKeVNqK1EzNDdUeThCUldHRHc5S1BkODNaSGJEakJ1?=
 =?utf-8?B?Q2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc2bf98b-19af-4614-1be2-08dcc6b50d69
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2024 16:26:50.0182 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U3rWZG15VubgObE728GJID8tUwtXk0g75/mR757ayIuEWtZIgqIt4uhHHCZ2ThminLuQ3k1J7SixAN/HrYzsgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8059
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

On Mon, Aug 26, 2024 at 07:01:15PM +0200, Maarten Lankhorst wrote:
> Some plane formats have been designed to require 64k physical alignment.
> By returning whether this is the case for certain formats, we do not
> need to hardcode this check inside Xe.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Reviewed-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

I still believe that 'CAPS' 'needs64k' is strange. But this is indeed
the cleanest way we found and easy to port to future platforms.

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
to get this merged through drm-xe-next as well where this is
needed right now.

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 20 +++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_fb.h |  2 ++
>  2 files changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index d2716915d046d..5be7bb43e2e0d 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -169,7 +169,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
>  	}, {
>  		.modifier = I915_FORMAT_MOD_4_TILED_BMG_CCS,
>  		.display_ver = { 14, -1 },
> -		.plane_caps = INTEL_PLANE_CAP_TILING_4,
> +		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_NEED64K_PHYS,
>  	}, {
>  		.modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS,
>  		.display_ver = { 14, 14 },
> @@ -420,6 +420,24 @@ bool intel_fb_is_mc_ccs_modifier(u64 modifier)
>  				      INTEL_PLANE_CAP_CCS_MC);
>  }
>  
> +/**
> + * intel_fb_needs_64k_phys: Check if modifier requires 64k physical placement.
> + * @modifier: Modifier to check
> + *
> + * Returns:
> + * Returns %true if @modifier requires 64k aligned physical pages.
> + */
> +bool intel_fb_needs_64k_phys(u64 modifier)
> +{
> +	const struct intel_modifier_desc *md = lookup_modifier_or_null(modifier);
> +
> +	if (!md)
> +		return false;
> +
> +	return plane_caps_contain_any(md->plane_caps,
> +				      INTEL_PLANE_CAP_NEED64K_PHYS);
> +}
> +
>  static bool check_modifier_display_ver_range(const struct intel_modifier_desc *md,
>  					     u8 display_ver_from, u8 display_ver_until)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
> index 6dee0c8b7f226..10de437e8ef84 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -28,11 +28,13 @@ struct intel_plane_state;
>  #define INTEL_PLANE_CAP_TILING_Y	BIT(4)
>  #define INTEL_PLANE_CAP_TILING_Yf	BIT(5)
>  #define INTEL_PLANE_CAP_TILING_4	BIT(6)
> +#define INTEL_PLANE_CAP_NEED64K_PHYS	BIT(7)
>  
>  bool intel_fb_is_tiled_modifier(u64 modifier);
>  bool intel_fb_is_ccs_modifier(u64 modifier);
>  bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
>  bool intel_fb_is_mc_ccs_modifier(u64 modifier);
> +bool intel_fb_needs_64k_phys(u64 modifier);
>  
>  bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
>  int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
> -- 
> 2.45.2
> 
