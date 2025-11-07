Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C80C402D1
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 14:45:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E72D10EAC8;
	Fri,  7 Nov 2025 13:45:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QOrWYYxM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 377E110EAC8;
 Fri,  7 Nov 2025 13:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762523142; x=1794059142;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=uHtuk8b/MF3EKP+gqiWNeJt6e9x4gsoU4Dn4C9UU6BY=;
 b=QOrWYYxMcpG6I+p7m0jusDgtcdvn+HAZjRJ/QCBsEoxWDJ4fExIIkAz7
 wcKymAFtitbJJtGXKxY82+X3J155VFORDQnnuqM0tjPmePW9/WrqTN0H5
 DnXB1nmhJs1cnn2BdLvpPNZX9VWIjs8HkDhz/KbK+FbDd3v04qC3qe5Hm
 wkIPYZTrw8dgfNGSX7Php2j+e3NhfAJ323KC7FAMSImu+ekOaiXglpB6W
 RnbHSgZJ6daujzmgrJVmqy4uLwjomYvrQZAf60CcTTIPR0vjtTpLFjfLx
 SIKkJrLA4ADtVCA1j7e4Bf2EX2vXcfoYwH123qu5hcRzvHh8fmz2Bg5Ku Q==;
X-CSE-ConnectionGUID: 2iicjcjYQ7a8c94gINqZ8A==
X-CSE-MsgGUID: AEIhIsCfSK2BD6CXiZvO7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="64709183"
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="64709183"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 05:45:41 -0800
X-CSE-ConnectionGUID: ht29uCc1TLmwRxvqVnPPKg==
X-CSE-MsgGUID: 4HL6xumZQmSTnWko2WEqvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="188475229"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 05:45:41 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 05:45:40 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 7 Nov 2025 05:45:40 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.60) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 05:45:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QWuJ8sB9ryBAgU7SvK/Pp+ZAJSotniVZA8ZT098l29/V+K7NtUomp8U1GhfWtERcwAWD/wpqjv678PmV9iUoCyA1J1m4fF5bGG6c8QlLxPk3w+DtJQ6Cy9UiAasfxLhG0JMLJgrjoiXdEtZkcnoeROHaJ3wfRbQimBef/zyzzSAWNHrsBJoXvJeA39QeMXGfsCkMd61HlMbo7HFqOkk1kHdxVuCosdd8Vp2TRS4zGye7oCfFTodLvlPkTSKbiFIbZGv0snqFyX0LusHZUSdQabetbqUJgk1ZtsyigW/7xU3hcThaUkJVzEDquwYdmr09BKWYpGEOnj7rfFhZpylLGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TkiVx4JSId+55t1DdknzGcl9h2RmubiAbCEYFFElo5Y=;
 b=AnXn2V85A5GBzjGhkuJBinRt/PIb3LkEbDImv+UiO+y9tQBBEhiCg0Hvp5KJDkGUaVq6+ZwRyFo7BWs8OwQhQm3hpbng7URW3bQQsWDlEBqHULQcUo57p3P7a+dKBctUd4aToOLCgo6KufV+DzfEKwfgUI9NaGz/Fh8ZGqH43eCmGAdTm6MaYEf7QbvlFxJl2hJ4l/ADTvHkoHN/TEsXiWKofKr+Ofhhys7OHSKtFmHad4YozAtvM+0Ol6kVHPBhuou6CAIUV0OsQvj8ssgmw2wpRg5j/jbRJ1wNbGCeUx3TS00QOsmLdI12TpfwaOTX330bU3T9y1hiaKimb+1VhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA0PR11MB4751.namprd11.prod.outlook.com (2603:10b6:806:73::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Fri, 7 Nov
 2025 13:45:37 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.9298.010; Fri, 7 Nov 2025
 13:45:37 +0000
Date: Fri, 7 Nov 2025 07:45:34 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Joshi, Kunal1"
 <kunal1.joshi@intel.com>
Subject: Re: [PATCH] drm/i915/fbc: Apply wa_15018326506
Message-ID: <sogg34aj3zol6vgybvzoid5as7wjyyvsdj3eth7g4pgsd5k2w5@xxkw7byvklfo>
References: <20251107100734.67236-1-vinod.govindapillai@intel.com>
 <fb7031734a4c6b9cc0f26ff287fdf9fb23d07e65@intel.com>
 <ea443f4c5bf41ff20f65bef1ee4e74313d76f62f.camel@intel.com>
 <917da7d1e8e3a33d5724023f3275c51e36c3f834@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <917da7d1e8e3a33d5724023f3275c51e36c3f834@intel.com>
X-ClientProxiedBy: SJ0PR03CA0167.namprd03.prod.outlook.com
 (2603:10b6:a03:338::22) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA0PR11MB4751:EE_
X-MS-Office365-Filtering-Correlation-Id: 2efc7d08-6d7c-4059-ed0d-08de1e03eed0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?HQogb+oThgMlXnLqU+w5t1zxg/oTw43dLL44vTf9H31nAwjxBHHi3cQf3x?=
 =?iso-8859-1?Q?Dz41mIXJxvoRGqQFpSjaQUykzeDM1sW33SDTxyvOsfFpi6RkLzaGnjEpmC?=
 =?iso-8859-1?Q?5IDWTcVtvOT1Ke1EgStTB7OVMDs3MlqBhe17usjqJaMrrJ315VOIMD3Rrx?=
 =?iso-8859-1?Q?43ClVoaYsVnBGOglzICmO3DFeMSbSzFRAijeCJKgh/WhL3y7OJd7U2EoWp?=
 =?iso-8859-1?Q?sX89hxJgJbzy4P8fT4fQAP9Hxt3ZklE/KUF4oFX5BEC+hNZxgGKBiWVq8t?=
 =?iso-8859-1?Q?ytMbfJr3gu9FdH3D2V0crlPxvJzBv3lbHhTE6jrOwpRdTw1j5S1khBCprv?=
 =?iso-8859-1?Q?G7Ge+9Eu/S0XWEBkmKKWo1qQGvENbIUSy5NVx1HkdkCub7Nd0IbmgzocK+?=
 =?iso-8859-1?Q?HP+YTCsWoBppykgmFukKE402rf1Of/km2kvwd1JFta6n/yYb5wKKynUTni?=
 =?iso-8859-1?Q?ESRzjhh8SYlf3YoeTtvscQKOpRbf+UsXjPiLMx9O8vTZwIpWUwZcK0tMjo?=
 =?iso-8859-1?Q?uiyOsrGAxYJKDIH5l7Rko0jM4tMR3Szwrk7FYSL9zuJomRRUyCyD0y82Ao?=
 =?iso-8859-1?Q?X4YBhKcOad6R2Ujx/zrAQRHUIJWUMUa78AkVCLOP7ZAIHxluqA2TVOBZ1W?=
 =?iso-8859-1?Q?gDnQHhrK6vBZLbiROkHNkSULYrO2Mb1a2jIMx4IAQA2YEhI9DI8muin6yL?=
 =?iso-8859-1?Q?u78f6uKU2NwaXW8fRFxb+nFIqEa9Y2Kpclo4rxL1Lbko9PFyBKvIVHRPG5?=
 =?iso-8859-1?Q?YKLvUL6oFFfte9lY9pPalq4ML/vXGVybb2HC2umdhMrM25abwPT6IeiNtl?=
 =?iso-8859-1?Q?hVC7p0camTWFYypQvFE/kAIWyoy4Z/7q2mWK2x7L0c74Fau+ORXetx0B5P?=
 =?iso-8859-1?Q?QkdRrCSrchuGZXZKZe1Il1J9ZclCemfu9joIaTXAdYL2kUJpCUr0EIQzZN?=
 =?iso-8859-1?Q?OzFzHAR+DNpsGrkVe1tYy1d1FefGol1lMiRFVUooD529/6Le0g7Lgqn8Kr?=
 =?iso-8859-1?Q?9Rgka3PabjOCfBxXTgh1s+LSMTU38WbQS/8o7LNauTarJ0FgU/AARoB5J/?=
 =?iso-8859-1?Q?pTmyXkl/8BhydJ3njz6K0Yq1VbtiPHcqkBEELlEIPWQuM9tDpBUrT+VFE4?=
 =?iso-8859-1?Q?8lLJiUFsceP2Qxp5HnOyfFcpFcG2Qrc2D/n/pK8rWKYaemBNwfklmj6Eb9?=
 =?iso-8859-1?Q?IBw3LZ2pX1ep0uyqA2QQJrSSN45Vo4QRZXBVFkYq/pwxQYeCsqCoMk/DZ0?=
 =?iso-8859-1?Q?h3WRN2UdYlG3Y59x+ChcqygqZm6cOAbWa+tvK1TS1rKfUafaRu+cHZRw5b?=
 =?iso-8859-1?Q?PEU161VlHPN12qi9FByAiqT1dqqD97axXSLK8VumfQdUzSrDa/jKtdfSeK?=
 =?iso-8859-1?Q?ODmWqcxxtO8r6fF2G289VvaMJ9DwIHKWBYzwJTJ2cxdnjJ25gSs2OJCuKA?=
 =?iso-8859-1?Q?OgH4MSN79fS/l0DS8ri6DMl7HtId7Ij3J5vQhQNZyT8BvEzdKPrXS9gD9F?=
 =?iso-8859-1?Q?c0+I4P83578Tu0t6PgZNea?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?vdCgDaIhv6BBDQY6H1sNvVOOVW/xPUEAIMdtBupNFlLb7jQAEe/XPxL+sE?=
 =?iso-8859-1?Q?YEIIbVXZcBfMw3LFG01zY8/lTydCilL+69VmCB5VnUdtWOcAxa8DzONp9Z?=
 =?iso-8859-1?Q?l1v0Ax08XLzuL9NYAkkwOPWOy3uBuLgP5cDqpofpThQEIY+D4aut7NMC2d?=
 =?iso-8859-1?Q?VrGI5l9Ra6LAMyavgW2vlYAyjzNs7rs4DePfXTGjbLpwfCJTEIOnHZrWjZ?=
 =?iso-8859-1?Q?IoOLuNryBnnkUdd9CM8jdG4ymj3/Ei7MikAQ6MzhhzUrIwqpDKcRpG2k5C?=
 =?iso-8859-1?Q?YLRtQfifBpW7Po8cDqIEQlEDIYbwGZUYMzLR8T3/7//HVBmIIxcyo7uFCp?=
 =?iso-8859-1?Q?HszCnpgMxdNAi4ehy6LJr3Qk5NUsWxzIj70GTQhXTn0Ev6fy5GHUk9kLFy?=
 =?iso-8859-1?Q?tyQ8WVmCEQctLydPWdlvSQc5ieqUFi2k1Rl/MgrEjehEJA7qkgwbARLbMw?=
 =?iso-8859-1?Q?SkbyK2BLnJbjqTS7MWdUQvnH1tSNbyC5TclCoM0i4NRhxj0H8k1nVbMmFn?=
 =?iso-8859-1?Q?SZF3RD2GPM58EBH8kV7f4YNbcYjM+XbjFYqs+Qm7aM4qTxpjlWAzibbijW?=
 =?iso-8859-1?Q?CNlZLweY8g3dZXejFG79YiGC+Ww6fKITeoYHhNnV87RS2jGOlTeES3CLnP?=
 =?iso-8859-1?Q?1cnwfaQ96O/EGTpGG08H3WadX0C+BLGopHCnebMxhtLepSzZKGEs+y6T41?=
 =?iso-8859-1?Q?nyJlebMZqywBVDsALaGzxXbCYUbelmtboyV5s8FA9Uq6T+tbFOAlFoIJln?=
 =?iso-8859-1?Q?WWNZ5jbyH9X9e8VSd46yCMpJq6b0rK2m8P9a8c5pJq/VwtsLdTE8yZlr3u?=
 =?iso-8859-1?Q?PIuX8PrYncn6/LswyIY/+wq3tRQ74renpSpi4VGxxmp4GK1TJdElCHoy4O?=
 =?iso-8859-1?Q?0Zfz1Il0cY72t4RM0bG8ogzsubCyA1g+0Yvw1yx5qCKWiQZjoK7Xyb1PeS?=
 =?iso-8859-1?Q?Kgin0QyYKZ7Bht2cNmdzk+VtYyLiDQbx+t8p7rJxwfc4e2s1h73CRoqVPB?=
 =?iso-8859-1?Q?EnOu4yxG/ZV+RxocMV6sKASlAfyL/ImIcHPWNx4jOvrPC17gILT5mxtvkN?=
 =?iso-8859-1?Q?/atZw87PcdLX5GE6Dzl9+0j8/EfuHE3bOoQTVbZWqN/PMTyYT6WNmtwpab?=
 =?iso-8859-1?Q?BVznlz/88x4Ajp9BgtHF9n82HZtFnu8kFvQ8B3UylOGixvVPX7H9tb/Z1J?=
 =?iso-8859-1?Q?d5fhbsigu4DSPH8hxwPKUp1jgwKtvu+eY4TZ7O8dzg0ZQGNIJxv/vCI4Ar?=
 =?iso-8859-1?Q?MKDfv3JDI4OjqvYP5a5GkDmeXmNp0kISXHrUIdlLglJbb3Hin9xk1QxlLx?=
 =?iso-8859-1?Q?jBRTRAQV6JJNBA/hUCegdMsNypHa30JAb6KxL8PCy7QwxMUGY1yAMSQq15?=
 =?iso-8859-1?Q?w5Owp5YwcH+YfGN0zWWTJwj5FWv2zMZqRYZrvWVdxvcWeJfTEHFs99tTl2?=
 =?iso-8859-1?Q?DWeHclI9ktNd8VYI9UhIpXLuTh08HLmnlfeP3tzOO7SJaVjHdXNuXMxspE?=
 =?iso-8859-1?Q?yn10TcJXM3GOAzGsb5wE1MhWv+IvP4k3GeJzsHNQqzUctol5w0AKYhwgOF?=
 =?iso-8859-1?Q?WkMCPoaLBm18qCDnlm7nYb2OsS0PdX9PqRWfAjK2TqFVhF5lpAcVS9dLi3?=
 =?iso-8859-1?Q?RwjwgAszTr2nfXknsAwqh4cJI30K5FkEOKqjEbtuWjmlGz49BiaZt4CQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2efc7d08-6d7c-4059-ed0d-08de1e03eed0
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2025 13:45:37.7049 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Kdlb8YTy0ZFysWzKseW22JFbcHqftS9z1NyRK3+LlJLvq7hsNHVNbbA6Vfti3VXOPx5L8x309k4xi3IksRzNgNGUKj7qvmUQfqjc301IXc8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4751
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

On Fri, Nov 07, 2025 at 01:08:15PM +0200, Jani Nikula wrote:
>On Fri, 07 Nov 2025, "Govindapillai, Vinod" <vinod.govindapillai@intel.com> wrote:
>> On Fri, 2025-11-07 at 12:16 +0200, Jani Nikula wrote:
>>> On Fri, 07 Nov 2025, Vinod Govindapillai
>>> <vinod.govindapillai@intel.com> wrote:
>>> > Disable FBC as part for the wa for the bmg variant
>>> >
>>> > Bspec: 74212
>>> > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>>> > ---
>>> >  drivers/gpu/drm/i915/display/intel_display_wa.c |  4 ++++
>>> >  drivers/gpu/drm/i915/display/intel_display_wa.h |  1 +
>>> >  drivers/gpu/drm/i915/display/intel_fbc.c        | 10 ++++++++++
>>> >  3 files changed, 15 insertions(+)
>>> >
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
>>> > b/drivers/gpu/drm/i915/display/intel_display_wa.c
>>> > index c528aaa679ca..ba2272d85a04 100644
>>> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>>> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>>> > @@ -10,6 +10,7 @@
>>> >  #include "intel_display_core.h"
>>> >  #include "intel_display_regs.h"
>>> >  #include "intel_display_wa.h"
>>> > +#include "intel_step.h"
>>> >  
>>> >  static void gen11_display_wa_apply(struct intel_display *display)
>>> >  {
>>> > @@ -69,6 +70,9 @@ bool __intel_display_wa(struct intel_display
>>> > *display, enum intel_display_wa wa,
>>> >  		return DISPLAY_VER(display) == 13;
>>> >  	case INTEL_DISPLAY_WA_22014263786:
>>> >  		return IS_DISPLAY_VERx100(display, 1100, 1400);
>>> > +	case INTEL_DISPLAY_WA_15018326506:
>>> > +		return DISPLAY_VERx100(display) == 1401 &&
>>> > +		       INTEL_DISPLAY_STEP(display) == STEP_C0;
>>>
>>> IS_DISPLAY_VERx100_STEP().
>>
>> I was looking into the comments for that macro! This wa apply only for
>> step c0 (as of now)! I wasn't sure what the "until" part could be in
>> that macro! So what do you suggest for the "until"  STEP_D0 or
>> STEP_FOREVER in such cases!
>
>If it's C0 only, then C1 is the next step, not D0.

it would be very weird to be C0 **only**, so I went to check the WA db
and I don't really see any stepping restriction

Lucas De Marchi

>
>Basically there's only one user of INTEL_DISPLAY_STEP() outside of the
>macros themselves, and we should avoid adding more users.
>
>BR,
>Jani.
>
>
>
>>
>> BR
>> Vinod
>>
>>
>>>
>>> >  	default:
>>> >  		drm_WARN(display->drm, 1, "Missing Wa number:
>>> > %s\n", name);
>>> >  		break;
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
>>> > b/drivers/gpu/drm/i915/display/intel_display_wa.h
>>> > index 3644e8e2b724..f648b00cb97d 100644
>>> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>>> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>>> > @@ -26,6 +26,7 @@ enum intel_display_wa {
>>> >  	INTEL_DISPLAY_WA_16025573575,
>>> >  	INTEL_DISPLAY_WA_14011503117,
>>> >  	INTEL_DISPLAY_WA_22014263786,
>>> > +	INTEL_DISPLAY_WA_15018326506,
>>> >  };
>>> >  
>>> >  bool __intel_display_wa(struct intel_display *display, enum
>>> > intel_display_wa wa, const char *name);
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
>>> > b/drivers/gpu/drm/i915/display/intel_fbc.c
>>> > index a1e3083022ee..16cd99db2978 100644
>>> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>>> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>>> > @@ -1521,6 +1521,16 @@ static int intel_fbc_check_plane(struct
>>> > intel_atomic_state *state,
>>> >  		return 0;
>>> >  	}
>>> >  
>>> > +	/*
>>> > +	 * wa_15018326506:
>>> > +	 * Fixes: Underrun during media decode
>>> > +	 * Workaround: Do not enable FBC
>>> > +	 */
>>> > +	if (intel_display_wa(display, 15018326506)) {
>>> > +		plane_state->no_fbc_reason = "Wa_15018326506";
>>> > +		return 0;
>>> > +	}
>>> > +
>>> >  	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
>>> >  	if (intel_display_vtd_active(display) &&
>>> >  	    (display->platform.skylake || display-
>>> > >platform.broxton)) {
>>>
>>
>
>-- 
>Jani Nikula, Intel
