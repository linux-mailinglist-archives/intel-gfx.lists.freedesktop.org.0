Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C153791A1A9
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2024 10:37:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FB8A10E17C;
	Thu, 27 Jun 2024 08:37:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RiIhqMfb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86E3010E17C
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2024 08:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719477476; x=1751013476;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Yu9HinRZ8afeUuEo7QeWi/Xr+yK9UDjyoAZMiqMrHvk=;
 b=RiIhqMfbLdDB/J8nJ4RpM6mIY7G/plECvsZ/HHXknhtWQifFj0qu4dnO
 DY12H9nyxQr2vbRXnIA5mzJh+0buNGCppys4jXOFG5EGYHWJ40Tt7BuFL
 YB57Dg25NnG9w4YwbWRfT3iUOy8cTQqs68e8xs7vwznNlQ/FZ8AethH61
 t4QmVmmdL/Al/czSPOa+QZYR67lvFWWuGTx9aA0Tmr0o4aizo83HeJcDy
 bKA9GFfffQwl1JZJ6NmkJqnVdG5ZIt9OMV+6OA0QeOtoiLL+/7cycVutd
 UsfvEAFGL9vbW6l7WPKCkjuVtsAPuFguXOCbuSvWQx7xX5FrZqnJhQSFY Q==;
X-CSE-ConnectionGUID: jWEsbrnqRYaAWsb0FSK8Xg==
X-CSE-MsgGUID: Vs5/f9VaQq2ruWJ9pkvaYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="42002708"
X-IronPort-AV: E=Sophos;i="6.08,269,1712646000"; d="scan'208";a="42002708"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 01:37:55 -0700
X-CSE-ConnectionGUID: mizOidUXQziVBnIeqSUKHw==
X-CSE-MsgGUID: Lg9M8XsWSYeVgIhjB6PBbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,269,1712646000"; d="scan'208";a="44421818"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jun 2024 01:37:55 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 27 Jun 2024 01:37:54 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 27 Jun 2024 01:37:54 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 27 Jun 2024 01:37:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BbaU5kMteUL8txQXtNBmTiL1t1bSJ2QnN2q/G3pcsnoGVMz9Fx/zg21QIoxpdAMZhyk8eN+YRJRG9wzt8+mBJ9jHNgUH+ruZl2LMfRbpPmV4itQz403YghWNVt1zlh3nu77sBFfDwkWh76flZy8oiuum94YQyEij+j8qcYokANuiNHlodyEC3C5YLuYJEZcKZeM1nfQDJicX2ikNNbyhw7GuyzMlr0V1+vm6a3dC8jjWrj7dVsonaYHq08Pblz14JN8UCIF9tHuQFijG8qEOVJLTFYBbaRM+WiwPCDMI6TXubUq5rVko/ZcFx1fsVDYYDK5kyupuiICemb576L5Xiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yu9HinRZ8afeUuEo7QeWi/Xr+yK9UDjyoAZMiqMrHvk=;
 b=EiAwXvDAelYs8AzbhQqIvwdSz18lgoQ1aRulxglxjj4aluGp3zkXa0h5uVikOdQyrB0P6cQnJOB0ZE6+CwCPCenCCyKVLPRhaFmWeQYJXViBDN1AgHXQKJcDQtmJJ1KSS6e17nRqSR7nXWo0QwqKsNpyMKH3vhqAhonUWQcqQ2SzBrcaWrZ6H4gJRdwUMQ3OdWSrg6k0IJR6TxGmMzP4u+oRhjH4i7U9PAbfxR8Y5NngTVqV8FuLsGwrsOApVO4hudwcxAPSEqi4mhIVL/D5MZFfSv0Alxs/WVdBuQWyykdHFJWw/1XlpIXTJbSq+XVn0BtAgScK9xM915DmOQOIQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SJ0PR11MB6573.namprd11.prod.outlook.com (2603:10b6:a03:44d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.30; Thu, 27 Jun
 2024 08:37:47 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%3]) with mapi id 15.20.7698.025; Thu, 27 Jun 2024
 08:37:47 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/mtl: Skip PLL state verification in TBT mode
Thread-Topic: [PATCH] drm/i915/mtl: Skip PLL state verification in TBT mode
Thread-Index: AQHax+ty5CjXU210OEGmczvLtYPKcLHbSoLQ
Date: Thu, 27 Jun 2024 08:37:46 +0000
Message-ID: <MW4PR11MB7054FB39E23F5C8503C8F424EFD72@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240626170813.806470-1-imre.deak@intel.com>
In-Reply-To: <20240626170813.806470-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SJ0PR11MB6573:EE_
x-ms-office365-filtering-correlation-id: dcab70d8-d28a-464c-2c54-08dc96846be5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?a1M5Njk4Sk5mMnE4TlRDQmcrdU9YOVNDc1UxcW1UWGIxQmJuQW43eS9PNk93?=
 =?utf-8?B?RFhJUlRiU0dYZkVGbkdUN0l6Q0VZQzlxQUIvMjFZVkk0OG5RQ3JaRTJFTlYw?=
 =?utf-8?B?WHY0TW95S3Yvc2RyYU91NWJMWUQxS1VxQXU4enk5T0JUOW0vWHRXUnlLeDVi?=
 =?utf-8?B?UWJuV3d5cnFlZ3laanFTZGp4VERLdXVYYmo5U1FROC9HaE11NlBobWNPWXhy?=
 =?utf-8?B?T2UwWlpJZFhaOUJUeVdmdFdSVzN3TjBLSEt0UjBFNmw4RUluQVdqRGVIYlpG?=
 =?utf-8?B?Rk40VVlqRldabjdEb21vejVBaW5iQW1sSlYzempjeFhHK1lIMXBvTUlLY3F4?=
 =?utf-8?B?eU5ia2U2ZC9ueTZKQTVKNHZmRDd4aW5Zb3hiZk5ISzlCSTJ6UkVYWTRiQzR0?=
 =?utf-8?B?T29DZzVuZzJGN252Tis1NkhhV2d0dW9KdldMY1ozbUU0MDdKbndlTkpiSzRJ?=
 =?utf-8?B?MVBzYlM0WUgxS1ZESTIvcWlxVDI0aFRPOUJ1bk9EVEl0djlzQkdmdXFjQ2di?=
 =?utf-8?B?eGc1VzMyN3ZPZ1Z0M1BwR3huWVh6d1pQeXhlajdzRngvMkoxRXZZdmFyVmNy?=
 =?utf-8?B?OUJPd3kwK3h2Zk0wUVhuR0JjYVQwMVp1TUlQS1ZKS0ZLMUJZV0RsbldHSGpS?=
 =?utf-8?B?NWMyNlpQM1F1MWxJeUFWa2I3dUZLMUVvNDZ5Y2tpK1I4SWoyMVhscENua2Fs?=
 =?utf-8?B?aW9hdjRQMWdGemFVaW93aExTd0l0TWRwcjN4anBPeVhmU2xKN0VxalRCdlpX?=
 =?utf-8?B?Zk5PeEV1ZlVieEQ1OTJ2eFJEVmpBaVVmM0JQRElIMlkrVW9wZVJKYWlSTkxF?=
 =?utf-8?B?ZjlDK0lrRG4zeDFNNDh6S3hmT215NnpESk81MkgwcDc2T1pFZU51ZzQ3MUlo?=
 =?utf-8?B?WE9YR0tnajUzTXhwZ0VDeXNLeHhvYlo3cUxHMG1CbFZ4cTJYMW1HMFJqZjdH?=
 =?utf-8?B?TlhkZVcyM016a3BFTVU2blIxK2tla0hLbmRvTjROYnZEMkVhcno4Ti9Gd2Q1?=
 =?utf-8?B?VHg2NDhUWXFzVlZSVjhTNHVDOHM1WmdNOUhOL3c3UTl6SjZNZE15Qmhka0tr?=
 =?utf-8?B?MkdYRFpNS3RJSkxHVHBjSllkbVpYSUVrTzBseWtYWHBESml6NFZxMlJKTjVO?=
 =?utf-8?B?SkdOZ3c4UnZyOVljcGxRam9ib2ZQQU5Kbk8vZGNjN0xUNzBVYzFzUWdzUHZN?=
 =?utf-8?B?aGhCODA3Ynpic2lVZmhNMHdsVGhDUkQyaDdtVVV6c09NLzhDK3JUUW81MFZ3?=
 =?utf-8?B?cjdrenhCR1VvZmQrV1lUU1ZxRWJLMmRZa2Y4bVZVUHhLcm8vYkZBMldKNEwx?=
 =?utf-8?B?Wk92ZnY3M3ZlVHJ6VGdScVlVNG1BV2MvSEprbmFqZzFLTkJjMW84U3hvREdX?=
 =?utf-8?B?ME9ycVJmM0RZMUUzK1NFUGhRaUxQZ3J4akQybDRMZ2k5dGZEWmVSdG5ocW1M?=
 =?utf-8?B?bGQ1elY2WmJ0K1Rva3RJQVF1TTl3VXh3RVdDbHlLbkthdXBuWkd1Q2diRWYw?=
 =?utf-8?B?SE5zTEViRUx2bGhNeUtXdTZ3YUN4WEE4TVRvNWp4c0JxYnVQc3dJU3RGa3FB?=
 =?utf-8?B?TVBhV0x4SlQvWm8yRDYySVA4UkpoWmlkb25KK2RGVmpwUUFLSXB1NWdYNVk2?=
 =?utf-8?B?Z0RDa1N1Rk1MVitIU0hTbFlNRkVmYng1dlMwVjFXV1F2Y1ZHZkhXVytxU0tP?=
 =?utf-8?B?RkNFVGxwc1ZNYjJFbzZMNTloZ3F6czJjaGFwTDhBcThoNmF0LzQxYS92b3lr?=
 =?utf-8?B?c0pTNzBDMmNUdUE0VDIvRmJHWUVDZ3YybnU5SG5BQWN0R1YyZFFYVis3TDha?=
 =?utf-8?B?b0J1SVIyaXM0STdGU1BIMjE4ekthdklMdW0reHRiRThVeXFYY24zOXJNMkdE?=
 =?utf-8?B?elErS24zbEFRWHIxblFnVVFQZll1bmlMTmNvME9EZGxBQXc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bXhQQTgyeXdxQ0pOdzh3VE1Vd0ZqVHBsUWgzajkvelBQVGcxMENTcVBoMmUw?=
 =?utf-8?B?cGh6U2JHaEozZEYzOEdCMDUrOFcvWTR2SEhTSjZmUGtnTFVuNjZ6RS9WOGFW?=
 =?utf-8?B?YnRtc0JHNkFOMEFCcG11VjlOeThRM0NGQm94b1NDbnA0djgzRkJ6bVJiVFl3?=
 =?utf-8?B?TnovT0VBNUtOSkkzQmVJMTJqbkFzVm5rOWFMZC95cHdObTdZc0p4VWtQb2hx?=
 =?utf-8?B?UzFvUUR5SUh2VW5XUzZVaFp3M1RNVUM2YmNsOUJ0UzZSMHZETFRvZExCQndo?=
 =?utf-8?B?Wm15M3UzVHRBQStZKzlRRFRPM1huYnEzbDlCUW5NTFI4aWpDemE5Ykxodnl4?=
 =?utf-8?B?WnBtU0hWbUQzV3ZwWUs1ZTdycTVYbG5RRWZ2QzdEZmUxZDhzb0dnY0dyVTNN?=
 =?utf-8?B?bVYyZ0tCZmp4Ymo5N1phQUprSTlTNUU4cU1uRDBLdGMyWGU5SkdpRWlWM1pR?=
 =?utf-8?B?UmtFTDJ3Q2RaZkdNaEE5S0ExRjB6K2VNQ2lRcDUzb2ZXTWF4VzFWTFJMcDdi?=
 =?utf-8?B?VnVpY0JIYWE0QW9sMVlUTEY2SlNmVnJ5eTVpd3pSYlZ3T1RjeGl6Z1BIempO?=
 =?utf-8?B?QUlVeFFOTWxUaG1IdkQwMGt2cS9Bcmc1WnhkaldsdEhVVG8vcjFQVjRTcGtz?=
 =?utf-8?B?REJrU1FzSkxzZEVpczlwWXFjclhWSmk4L2dPdm0vVHYzeFdiNDVLcVI3Y1lm?=
 =?utf-8?B?Q05CdDBOdmRTdnd6Y3ZaM3ZmUHNrR3dyL0REdm5uMThDdGtHbUw2NTZ1Y1JX?=
 =?utf-8?B?ZEpYVlhWY0tPYWo4UTVxQTJQUzBIQjk0ZUxwVHRXc2V6c3pQS2FReVFTOUtZ?=
 =?utf-8?B?dnMxOWEzZEcvemo2aTE3WjhTTGdkZXBERTJxUnE2QlYzWTZqTVhIeC9NS0Fu?=
 =?utf-8?B?UTlTbHZ2RE8zazJkREVOYnNRUENhSnJVdHlqNHg2NE5iZjR5RUhZcENickhs?=
 =?utf-8?B?aDBwUHY3amNBSDhnTjYxbkhRdW1jZmx3Lzl2L2dHV1hKb3dqYVJscnlqRXBU?=
 =?utf-8?B?TUxSaXZyQ3l5cDY3RXBzZVovZFdrTDJmYnBaM1ZKSkEzZkVlNnlqaUI1YkNy?=
 =?utf-8?B?K2xvMHpCM1FrZ2JRaFMrVThlOFNxM1hDTEdSbjIzaFAxaXFoWkJFNHgrcW5J?=
 =?utf-8?B?Y1hrNlhRenBnTDErSU1JcHdnRkFtNlVSYnQzZVJxRk8yVGdKWVdKeFpkenFS?=
 =?utf-8?B?SzF6alJocXE2emcrUDFjem5zMEE5QmFpRWw0MU94Kzl5MDZHbEhOSXFZMG5O?=
 =?utf-8?B?dHpCcDZ5ak1LbDlKbEhmUXJWMXBkR3VTT1RjYWpBaENKUU00YVlWRklmUDBa?=
 =?utf-8?B?c0RVQjl0Rjd5N0U2ZGFPZjFXOUkxdkZxaU5jR1RmYUNQU0NxUURLdHZHQmh3?=
 =?utf-8?B?SFRKdUp1a2RYWCtKcVZNTXY0MmhwOEVJZG5GWXc1UkY0bnkvTm5OSkF6NmNv?=
 =?utf-8?B?QTZ4OVlxUFZ4d1ZkeGdBODArOHc4YnNoOUxzMnV4QmVvcU1TZnhGa1FmVVcy?=
 =?utf-8?B?UHpzZE1ETkFZd09rdWhiRThFWWo5TzZpNUZ1a3lwc3dNcWFvMGFTT05hbzVm?=
 =?utf-8?B?V2hYS2xyazRpcHhnSjNNWS82RTZJUmo4eDQzaHNjUk4ra3g5WTVtaVdpZGpo?=
 =?utf-8?B?RGFQT2JoMmhJZkZTK0pZYzE4Z1lrYktrM0wzdDY2T3FhV2pFRUFsd2tZUFJL?=
 =?utf-8?B?OVJPVGJrUk1KYmlZMFJ5TXIvWTdwTk1sVjd4QmdhQzFoMWk4NFZmNzEzYitN?=
 =?utf-8?B?bllOdHBtaVdXYTZZRnJZanpGNXZDNFY1TEN3NUVzRy8rd0JNalhJZnRYMUJw?=
 =?utf-8?B?d0JCalh0OGpMdzZGMDdPR3liaWxLaFdQRnBrNEREVGdxMTlSUEtLd25rV0dF?=
 =?utf-8?B?S2JBRUkraGVKU3haWHVPY2xoeWlYdzc3S1YzcENFaVlCQ24yaTcyQjFneHdh?=
 =?utf-8?B?MU9EUGZ0eVVkcWZpVldjNVdrZG50YmZndHhPelFRSVh4bnE4MGttaEt5WmYz?=
 =?utf-8?B?VjJPRlp1aTlVaEVYUXdIajJJMVRSVjBVVWZ5T1U3Y1hySDhOYlpVdkRtOGRp?=
 =?utf-8?B?dWZnY3RhS0RiczJWM0pOdmxTMTJVWVArZmd6R0E4eHMxNWRSTVU2SVRNNDR6?=
 =?utf-8?Q?dQ2wWpQmR/ItEq/o5XoVc7HJv?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcab70d8-d28a-464c-2c54-08dc96846be5
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2024 08:37:46.9240 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5+dUcmwudQGAZ0HwzLLrbeW82y/YaWSi/TI4ceLYrss1cH9JZ1umiaP+0k4groedax06VOeTjdVZk7U8i9GVew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6573
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEZWFrLCBJbXJlIDxpbXJlLmRl
YWtAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIEp1bmUgMjYsIDIwMjQgODowOCBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogS2Fob2xhLCBNaWth
IDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5MTUvbXRs
OiBTa2lwIFBMTCBzdGF0ZSB2ZXJpZmljYXRpb24gaW4gVEJUIG1vZGUNCj4gDQo+IEluIFRCVC1h
bHQgbW9kZSB0aGUgZHJpdmVyIGRvZXNuJ3QgcHJvZ3JhbSB0aGUgUEhZJ3MgUExMLCB3aGljaCBp
cyBoYW5kbGVkIGluc3RlYWQgYnkNCj4gVGh1bmRlcmJvbHQgZHJpdmVyL0ZXIGNvbXBvbmVudHMs
IGhlbmNlIHRoZSBQTEwncyBIVyB2cy4gU1cgc3RhdGUgdmVyaWZpY2F0aW9uDQo+IHNob3VsZCBi
ZSBza2lwcGVkLiBEdXJpbmcgSFcgcmVhZG91dCBzZXQgYSBmbGFnIGluIHRoZSBQTEwgc3RhdGUg
aWYgdGhlIHBvcnQgd2FzIGF0IHRoZQ0KPiBtb21lbnQgaW4gVEJULWFsdCBtb2RlIGFuZCBza2lw
IHRoZSB2ZXJpZmljYXRpb24gb2YgUExMIHBhcmFtZXRlcnMgaW4gdGhpcyBjYXNlLg0KPiANCj4g
Rml4ZXM6IDQ1ZmU5NTdhZTc2OSAoImRybS9pOTE1L2Rpc3BsYXk6IEFkZCBjb21wYXJlIGNvbmZp
ZyBmb3IgTVRMKyBwbGF0Zm9ybXMiKQ0KPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGlu
dGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5j
b20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jICB8
IDEzICsrKysrKysrKy0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMgICAgICB8ICA4ICsrKy0tLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwbGxfbWdyLmggfCAgMSArDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlv
bnMoKyksIDkgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiBpbmRleCA0MWY2ODRjOTcwZGNmLi40YTZjMzA0MGNh
MTVlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4
MF9waHkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9w
aHkuYw0KPiBAQCAtMzI3OSw2ICszMjc5LDEwIEBAIHZvaWQgaW50ZWxfY3gwcGxsX3JlYWRvdXRf
aHdfc3RhdGUoc3RydWN0IGludGVsX2VuY29kZXINCj4gKmVuY29kZXIsICB7DQo+ICAJcGxsX3N0
YXRlLT51c2VfYzEwID0gZmFsc2U7DQo+IA0KPiArCXBsbF9zdGF0ZS0+dGJ0X21vZGUgPQ0KPiBp
bnRlbF90Y19wb3J0X2luX3RidF9hbHRfbW9kZShlbmNfdG9fZGlnX3BvcnQoZW5jb2RlcikpOw0K
PiArCWlmIChwbGxfc3RhdGUtPnRidF9tb2RlKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gIAlpZiAo
aW50ZWxfZW5jb2Rlcl9pc19jMTBwaHkoZW5jb2RlcikpIHsNCj4gIAkJaW50ZWxfYzEwcGxsX3Jl
YWRvdXRfaHdfc3RhdGUoZW5jb2RlciwgJnBsbF9zdGF0ZS0+YzEwKTsNCj4gIAkJcGxsX3N0YXRl
LT51c2VfYzEwID0gdHJ1ZTsNCj4gQEAgLTMzMjUsNiArMzMyOSw4IEBAIHN0YXRpYyBib29sIG10
bF9jb21wYXJlX2h3X3N0YXRlX2MyMChjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfYzIwcGxsX3N0YXRl
ICphLCAgYm9vbCBpbnRlbF9jeDBwbGxfY29tcGFyZV9od19zdGF0ZShjb25zdCBzdHJ1Y3QNCj4g
aW50ZWxfY3gwcGxsX3N0YXRlICphLA0KPiAgCQkJCSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jeDBw
bGxfc3RhdGUgKmIpICB7DQo+ICsJaWYgKGEtPnRidF9tb2RlIHx8IGItPnRidF9tb2RlKQ0KPiAr
CQlyZXR1cm4gdHJ1ZTsNCj4gDQo+ICAJaWYgKGEtPnVzZV9jMTAgIT0gYi0+dXNlX2MxMCkNCj4g
IAkJcmV0dXJuIGZhbHNlOw0KPiBAQCAtMzQyMCwxMiArMzQyNiwxMSBAQCB2b2lkIGludGVsX2N4
MHBsbF9zdGF0ZV92ZXJpZnkoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUsDQo+
ICAJCXJldHVybjsNCj4gDQo+ICAJZW5jb2RlciA9IGludGVsX2dldF9jcnRjX25ld19lbmNvZGVy
KHN0YXRlLCBuZXdfY3J0Y19zdGF0ZSk7DQo+IC0NCj4gLQlpZiAoaW50ZWxfdGNfcG9ydF9pbl90
YnRfYWx0X21vZGUoZW5jX3RvX2RpZ19wb3J0KGVuY29kZXIpKSkNCj4gLQkJcmV0dXJuOw0KPiAt
DQo+ICAJaW50ZWxfY3gwcGxsX3JlYWRvdXRfaHdfc3RhdGUoZW5jb2RlciwgJm1wbGxfaHdfc3Rh
dGUpOw0KPiANCj4gKwlpZiAobXBsbF9od19zdGF0ZS50YnRfbW9kZSkNCj4gKwkJcmV0dXJuOw0K
PiArDQo+ICAJaWYgKGludGVsX2VuY29kZXJfaXNfYzEwcGh5KGVuY29kZXIpKQ0KPiAgCQlpbnRl
bF9jMTBwbGxfc3RhdGVfdmVyaWZ5KG5ld19jcnRjX3N0YXRlLCBjcnRjLCBlbmNvZGVyLA0KPiAm
bXBsbF9od19zdGF0ZS5jMTApOw0KPiAgCWVsc2UNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jDQo+IGluZGV4IGJiMTNhM2NhOGM3YzkuLmM1NTEwZDViYmU2OTYg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBAQCAt
NDAyNCwxNCArNDAyNCwxMiBAQCB2b2lkIGludGVsX2RkaV9nZXRfY2xvY2soc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXIsDQo+IHN0YXRpYyB2b2lkIG10bF9kZGlfZ2V0X2NvbmZpZyhzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgIHsNCj4gLQlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpk
aWdfcG9ydCA9IGVuY190b19kaWdfcG9ydChlbmNvZGVyKTsNCj4gKwlpbnRlbF9jeDBwbGxfcmVh
ZG91dF9od19zdGF0ZShlbmNvZGVyLA0KPiArJmNydGNfc3RhdGUtPmRwbGxfaHdfc3RhdGUuY3gw
cGxsKTsNCj4gDQo+IC0JaWYgKGludGVsX3RjX3BvcnRfaW5fdGJ0X2FsdF9tb2RlKGRpZ19wb3J0
KSkgew0KPiArCWlmIChjcnRjX3N0YXRlLT5kcGxsX2h3X3N0YXRlLmN4MHBsbC50YnRfbW9kZSkN
Cj4gIAkJY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA9IGludGVsX210bF90YnRfY2FsY19wb3J0X2Ns
b2NrKGVuY29kZXIpOw0KPiAtCX0gZWxzZSB7DQo+IC0JCWludGVsX2N4MHBsbF9yZWFkb3V0X2h3
X3N0YXRlKGVuY29kZXIsICZjcnRjX3N0YXRlLQ0KPiA+ZHBsbF9od19zdGF0ZS5jeDBwbGwpOw0K
PiArCWVsc2UNCj4gIAkJY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA9IGludGVsX2N4MHBsbF9jYWxj
X3BvcnRfY2xvY2soZW5jb2RlciwNCj4gJmNydGNfc3RhdGUtPmRwbGxfaHdfc3RhdGUuY3gwcGxs
KTsNCj4gLQl9DQo+IA0KPiAgCWludGVsX2RkaV9nZXRfY29uZmlnKGVuY29kZXIsIGNydGNfc3Rh
dGUpOyAgfSBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcGxsX21nci5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxs
X21nci5oDQo+IGluZGV4IDM2YmFlZDc1Yjg5YWIuLjZhZjMyNWI4ZTI3ZGQgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaA0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmgNCj4gQEAgLTI2
NSw2ICsyNjUsNyBAQCBzdHJ1Y3QgaW50ZWxfY3gwcGxsX3N0YXRlIHsNCj4gIAl9Ow0KPiAgCWJv
b2wgc3NjX2VuYWJsZWQ7DQo+ICAJYm9vbCB1c2VfYzEwOw0KPiArCWJvb2wgdGJ0X21vZGU7DQo+
ICB9Ow0KPiANCj4gIHN0cnVjdCBpbnRlbF9kcGxsX2h3X3N0YXRlIHsNCj4gLS0NCj4gMi40My4z
DQoNCg==
