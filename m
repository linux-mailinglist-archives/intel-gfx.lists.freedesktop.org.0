Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4E098BF5E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 16:14:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CAB110E245;
	Tue,  1 Oct 2024 14:14:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dOJTRT7b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF3C110E17A;
 Tue,  1 Oct 2024 14:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727792047; x=1759328047;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2oo6wWHEpWzpkt4z+by2Rv+C9DgD1QTatTtpAk+0oQo=;
 b=dOJTRT7bkJhEgJ/FmIVXtvpKddOVKDk/6POefCtRUlIu8Bxxe4rMLYv7
 KiecO10IaksM96BuMZFndrFdBXdjJ7EO6IwCOrVw+ZRcoPSWBjOvQsIz2
 PXTVWkcsCqtSKgBhSZVQXgAHBDZSnMPczReWLqtE+IHPe9yAK9ToX/USZ
 OalGsMiiwdA3WxfrlVF30pDNG+W9AG/wIFUKa1ZuMtiaHkAE3LVevCzW3
 xVTffLFKpynlUYPShGu5DBW3+DrgPb3cflgqvDFqsokDO6PAYMDnxVuQg
 vnc8YIcSFw/r4yE6xzYbzIz0z6h0nzknjbYhjj+umXQDLA2ckaYJ2Dvri w==;
X-CSE-ConnectionGUID: m8v/8EUEQ5qJzlAx89dYJA==
X-CSE-MsgGUID: 6+3SFob+SGaCY6zzZdFupw==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="37486984"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="37486984"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 07:14:07 -0700
X-CSE-ConnectionGUID: 08GvqsvUSHOy04g+ctXbsQ==
X-CSE-MsgGUID: 7zbXUxujQdimSDGWwwFKmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="73724902"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Oct 2024 07:14:07 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 1 Oct 2024 07:14:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 1 Oct 2024 07:14:05 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 1 Oct 2024 07:14:05 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 1 Oct 2024 07:14:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AZlZo/a4vzEYxv9sYFLTM5+539TQGESAJ7yjjcpMUOyLsVWAebcnSNeQpdXhaxZ/fcQvivCPgK8CGXRLEIlgZyXcq6hXH/cPPNrOt6zuL7MSnIAN2RaDIToi3W6tEF5xoB5O0qJzAnTxzixKCuMpE1xO6POUnIbBFJzUxk5efv7b8HoI+EPoKpwWhwh7lt/Fd8rLhTXofYhmbLyDqJArZ/rymMHrlc+NYdk0G+wkz54s+pdIAog+8zwW45qJ9KjcmB0+oOjPj0tOLbMsUj1K/fMnOTYWCXlSxjV2/gwk9DBMUK4nuEUx01nbLkY3pTj+UZjAsI+m5ynPv9Da7sX4eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M3iOGhrn79ItyBat7LD1/R41EqLvAv+7Hn5e0zIksNE=;
 b=QMl9yCU1c2PxvgEKX0FWTcVPfSzWSDMLOOHQWPi7KEZNZInCuL+O1q4yjFCG6xkFDLdA4atGzp2p/6VMqhXcEo9OXT49/3bY3tcVA5MDAcSql/Rc2KOlfWMYQ3EhmvFCLaClCNBQclA6q/G2+KxGJpJJNTTJDmb+7dNEAiSFA8AnOpR/jnPfocbI960iVx63wspJJh8Jc9F4Uk/X80H9J8BaLLWWPMLDL1K9dbO6LKIVI2d5N8AchU2SDbRY/HODzTwaT+laZWrj0vSbt1Pysu1eaCXssnIXRoWWR8m/2bxRp/eOmIVzcFzNCuyS6/L3FCI5ESnkJd1RFxwrkdEddQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB7577.namprd11.prod.outlook.com (2603:10b6:8:142::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.27; Tue, 1 Oct
 2024 14:14:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8005.026; Tue, 1 Oct 2024
 14:14:01 +0000
Message-ID: <d25516e2-7c35-4e61-8c09-fad7955b83d1@intel.com>
Date: Tue, 1 Oct 2024 19:43:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/13] drm/i915/display: Add macro HAS_ULTRAJOINER()
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <suraj.kandpal@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
 <20240930163549.416410-4-ankit.k.nautiyal@intel.com>
 <87ldz8uj3v.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87ldz8uj3v.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0065.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB7577:EE_
X-MS-Office365-Filtering-Correlation-Id: 487e5b5e-305e-48a2-f8c1-08dce2234c11
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aENZZFNIcnJHVDFFaGxoQnM5TDhxS1ZaVElHRFIyUkdDYlY0cDdnVUx3NlJ4?=
 =?utf-8?B?QjZvc1hTRUg3amhCY0FGMFdHTUhobDU4c0JZV2lkV0RIWUxsOENwYVQ0TlZY?=
 =?utf-8?B?MGJPd1RMMnU1Mk1WMmJxNVBydEFMcUdvd1hDR2xybm1VN29ON2UrbTdGd24v?=
 =?utf-8?B?R1l4cC9CRDN4aVEwQTZwVkZtc1hZZ25XbUtKNlk2TVBBUU1ibGlkL2VITVR1?=
 =?utf-8?B?NUo3N2dRWkdxb3czeU9ORE5YdGREd3ExTTFDdUNtY01kdUFmMG5EN29HUWVQ?=
 =?utf-8?B?YW9WZGo1Y1RUTkY2MEoyQ2FPZU5jdDRaQWJTeUNFYVo1Yi8rNUZpUk42M3dt?=
 =?utf-8?B?OCtLQi9ON0tvMTY0czJ0VVBtSVg0NkxXbVh1UUphcG5objE5WWVVRUtrT1Fs?=
 =?utf-8?B?MU5jQWg5SVZtL1A5VGNUM2ZIRWpDMHRCa2dFdDVMMjdMc05EOStmWDhzdFBU?=
 =?utf-8?B?NldJUHZMQUt5WHMzeTVvUEx4ZitKZXhjVDZhbGlMTFpZUWtZdTQvMFVPY2ZF?=
 =?utf-8?B?SE9KcExBajZUVnhJNVFkUzhxZ0dqb21YOTIzZVBXckJqcWl0eGduYllmbmo1?=
 =?utf-8?B?ZnB3dGxkaUVGZnBMbGV2UDYwS2hQdGR4OGxiTnR1aVpuYVJBR1QybCt1Vjl2?=
 =?utf-8?B?TFY5TGZzSXU0N2tEWVNQOFRxSjBzb1YxRGJuK3pyc0VaRUlWS2FQYXNBdzJv?=
 =?utf-8?B?WlRKQTdUY0NaazhNaW1XckVnZ0MyaEliT2RrazYyUWRUKzB2UVJnUEJxN0Vh?=
 =?utf-8?B?bHI2UEdrbUNXbzQ2cXlnR2JhaGxkc3ZoWCtGWXhYdUw2NitUZFVocHlaZDU1?=
 =?utf-8?B?Nk8rZFQwZ3NrZ1JDOUdLd0JJU2JyTDJIcUdWMkJiMmltT1RBNUkzbnNxNWJn?=
 =?utf-8?B?OFEya0N4ZHZKRFR0R3d5SlpDZEtEelJ1bVJRa2s3Tml1T3IwMHlJRUdOVWJx?=
 =?utf-8?B?K3dUaG5OZzNPWEdhT0NXOU9lOWxUbkJrcXY0Rk1sUkNiVWxWSDZUTWhzdm5t?=
 =?utf-8?B?bndXcFJOTlg4ZldYQ1IxbzFhWU5SbHBhSHU1V2Y4RUhmUzd0c2E4RnEwSVQr?=
 =?utf-8?B?RE1JeXdrNEk3RmRZRWFiQ0I2TDBUOWFGYWlFR25LOFNjczZERjF0VHFmdTJa?=
 =?utf-8?B?ejd4Y0pKZURsc3FSeW5DOTRiTUNLNmdCZnd5a2xiWFIxRjZlQlpyMCtNVjhv?=
 =?utf-8?B?eUhPYlE4TXpRd1JQT2NYeXRPMVpkbTdSclluSE96cTJXZVQyNzFoU2xoWEtT?=
 =?utf-8?B?V1F1Z2Jzcmd5N01nbWZ5aGVUd2hOanR6TlRkRG1VSmNmTHNUMnNabGRWY1FP?=
 =?utf-8?B?MkhiVmk2bW9jeXN6NUluUjVmRksxYXdzZHk1WHZiZHc5d2ZaYmIzMWJ1Vlo4?=
 =?utf-8?B?VjJPWE14TjFQMXQySm9KaXFFTG9uVC83Q0FjcTZLNFJqcWMwQjloN1h6Q1Q3?=
 =?utf-8?B?bU5BQjFETUtibDdUNHUrMW9tdng2UWREUlpUYzZuNkJDTGhoVnVmcXk0RXBj?=
 =?utf-8?B?VlRNT1lWNDFYaU1YWGJaeU0yMVhUR3AzTU9jQ2NRY2Vmb2p2TEowR3dJMy9s?=
 =?utf-8?B?WWo5TGxmNHZUeDYzZzJ4czB3NWdPZnNaT3RmMnBkNVpvdXRqYkp1REJGWVlW?=
 =?utf-8?B?QW1hUGdrVkV0ZHVlUytqeUw4ZjV0eEp6a0tpdm9WSWJDck1oYU1QQ0NKS0Zo?=
 =?utf-8?B?SU9QaUlEMlFTekJMYVV2d3p5NGxuUDkrZ1l6S3JsdEp4cnhLY2F0TmRRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RDN4Z0c2MGhkRmdBRTNJU2RIQXZZVWRRU3RTVXhYMTU1RjgxUC9Rb1NYWUhM?=
 =?utf-8?B?UjRDejFIVFV2SjN0a0hSWUo0TmhqRzAxNE9TNzdHR3Z6akdXUVFzY21NcXU5?=
 =?utf-8?B?SFNyMDN2MFNlTzhIa3lsQlpzc2pXMGtxNjBCMmNyVm5lN2lWSzE5TnB3a1RO?=
 =?utf-8?B?UVkxY2JvM3RGamtvUld3UHcrbEo3MnBNVmZRcFhZOU4zMzJEQkJYWmJpZDNP?=
 =?utf-8?B?VUxQeDJUWHdrQmR2S2FXUk1jL0hTYWExUVFnYU9VUVUvN3oyT2pNYWJWMDZp?=
 =?utf-8?B?RStoNHZSZkxqaXpnN2hCY0JKY0hSUzVtNWZXRjNZVGFiRkRmQWczUTNzOWZt?=
 =?utf-8?B?Sys1ZWdMeVlqTmxFWkFSemcrOGFmZDRjWERVYWFMTUZxQVBVaWZwNnY4em1x?=
 =?utf-8?B?UkxBOW5LaDVhUGVCVVpIMW5JTVBhb0EyNm93bXRqV1BGWmU3aUVBQUk3bTlS?=
 =?utf-8?B?QmVyUm85Y2tvdGU2SS9jcUZFcW9BN2dlMDdpUXk4eEg0YmhrKzNDME5URmU2?=
 =?utf-8?B?UG1sNWFIcnFaOUZ3aXU0WHhnSWRkMVZGRUhnQ2U3NmthSnFScldBcjNPS01E?=
 =?utf-8?B?cE95NmdRVEdkS1JWTVhQOVpjODhEWXRxMlc2ZFVoT1BMeURmZ1lLakN4RVIr?=
 =?utf-8?B?aitDV21jVkhLR2dzemZEVENCSW4wT3BNUjRJRHhWNHl4UU5zc2JtaHhvclB3?=
 =?utf-8?B?WUNva2Z6WGk0MStCNGdhVVVDRjltMDQyNlBoc1dYMmZyMVBBejlXemJWT2ZW?=
 =?utf-8?B?emRVYmo4anRQREF2dHZVZTU3MGxsbFRNUythODlVa21jUll6SFF0cG1qUnNS?=
 =?utf-8?B?TnVBR0FoMHhncFFXOU1weEphQ1ZBSXU1VFY0REZnK1hLUGxUUGhyY09PR2dG?=
 =?utf-8?B?dWFJR1RMWXV6ODU1K21uY3Y5dmhyendrVS9wc0x1c3U1bEkvVCtYdUtXSmNa?=
 =?utf-8?B?YmJHMWdaQnh2Vmdqd2ZxSVZMVGhDcHM0U2FNNnVaRGZaY25wN00yRWtBRzVP?=
 =?utf-8?B?WGM3cndiM0xIWm5aTUhoS1FEbmh0dUs1c2hwbGNjdGlINzNPbk1BbUFZZnUw?=
 =?utf-8?B?ejVzdzRiNHBCZC8vVW9SQ3pRL0FqK3Y4dElvZks2LzhMVXVWSG1wTDVxZmVW?=
 =?utf-8?B?RWk5c0s1b3lTdWdKOWhYSUVpMit5aC9DWXMzSllYczd5L2ZPNjFjckVoVkRh?=
 =?utf-8?B?SFZPQXIvUGdDNHc2S2RIdVBRVUJvZWp6ZkFWM3o0Z29NQm5XS1pUSHQrU2ti?=
 =?utf-8?B?VkQrNjRMR3k2MFZBQjBuc1ZlampCK0JLNkJZQnU0NGdMb0lXQWlDVnFpTSt4?=
 =?utf-8?B?UnQwY0V4RDY4QUhtOTZlSy80azFXL2Y1ZVozZDIxTUtod2JDWUZKZ3ZLMUZ6?=
 =?utf-8?B?bGZ4UUVIWkRRcHZQRlZmSy9hVzlVWW1zdVZ0KzhUeGRqcjJiMHlOUUw3NUJH?=
 =?utf-8?B?cWJSNEl5UVJXRHZVY1RsaEVRQ1ZHYWVFYVJWUnNJQjQ3OFJ6QWJvS2lUeTFo?=
 =?utf-8?B?aFNNK0ZxRWdwTXNOdU8zZW1rRjJSNElBTktONmFGNUo0WUF2bzllcVM0MFg3?=
 =?utf-8?B?Qzl2bUY1UCt3NXJYZTBzSjZ0dm1pZ0Q3dnlLTnBqYnhBVG9DQ0MxWm1kR09R?=
 =?utf-8?B?TnpGWUZCZFpRWUxNcWhYZmsrVWpvS0UxUGZ1SlBKOHBidzNjdVpHRGJ3ZElS?=
 =?utf-8?B?cTZOUUp2R3ZXK2RmeEx4TTh4R1ZUZWZFMmVMWlp2b0pacytSNXFaZEh6dHJi?=
 =?utf-8?B?aFpJQ2hINkNmejVtdVVmbFBRdjVzRkFsNkR2QlhOWmNXZ0F5NWVCN2thU0ZI?=
 =?utf-8?B?NFdNM3RmQkVqOFdFWWptOCtzN3RsbHUvV2VtSUhnbW8wMFMyRWxTdXYyNE55?=
 =?utf-8?B?OFJFZDRib3NnY1phNHFDSU1EdXhSYXpnWlFlUkQ0cEtXRUFnTGhiZ3Y3ZEw2?=
 =?utf-8?B?VUdSRG56YXVPQ1V0UVJBV2dHY3hRaXh3VXVKR2VnWXpLZFYxQnlvOFVKUHpq?=
 =?utf-8?B?VmhLbzNQQ2FPbWs1Z0NRMk9YdFQrZTNROWQ2WFhmZ0FHNDJQZjIrYlJLY0l4?=
 =?utf-8?B?cUgwbnhOL1M3cmZCTmYrekhpUjJKY281WmYycVpWZGsvTm15bk8vMEJUN3c0?=
 =?utf-8?B?dWsxa2lMc1ZJTlRQVVVOUUxMaHNzQlFkakZpUTFSNUFFd1VVWWNibCtJMG12?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 487e5b5e-305e-48a2-f8c1-08dce2234c11
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2024 14:14:01.1536 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PE+zmOaWMoqL9EK0xgw5o7JbeFIVCaGruV/atpnk8C6EmR0WSos7BFdXI5/Mjv+otb1lp5jTcd7SNe7ETCmi1Ok45/0Ma7+xi3zEWhRPyKI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7577
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


On 10/1/2024 5:32 PM, Jani Nikula wrote:
> On Mon, 30 Sep 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Add macro to check if platform supports Ultrajoiner.
>>
>> v2:
>> -Use check for DISPLAY_VER >= 20, and add bmg as a special case. (Ville)
>> -Add check for HAS_DSC. (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_device.h | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index 6a5bee59e6aa..220cca6333ee 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -154,6 +154,9 @@ enum intel_display_subplatform {
>>   #define HAS_TRANSCODER(i915, trans)	((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & \
>>   					  BIT(trans)) != 0)
>>   #define HAS_UNCOMPRESSED_JOINER(i915)	(DISPLAY_VER(i915) >= 13)
>> +#define HAS_ULTRAJOINER(i915)		((DISPLAY_VER(i915) >= 20 || \
>> +					  (IS_DGFX(i915) && DISPLAY_VER(i915) == 14)) && \
> Do we need to depend on IS_DGFX() here?

For Display 14, yes as its supported on Battlemage only. I think Stan 
had used IS_DGFX() in original series, I went ahead with it.

We can replace with IS_BATTLEMAGE() if required.

Regards,

Ankit

>
> BR,
> Jani.
>
>> +					 HAS_DSC(i915))
>>   #define HAS_VRR(i915)			(DISPLAY_VER(i915) >= 11)
>>   #define HAS_AS_SDP(i915)		(DISPLAY_VER(i915) >= 13)
>>   #define HAS_CMRR(i915)			(DISPLAY_VER(i915) >= 20)
