Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 632CA9FC037
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2024 17:25:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 024F710E025;
	Tue, 24 Dec 2024 16:24:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g23rLTzk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE32710E025
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2024 16:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735057494; x=1766593494;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=ha2NFuXB0jROU0chB6c+Liq5w//a8dMd20WPRgaNva8=;
 b=g23rLTzkuAoOLGQqBkjlRwDqGo6pATSVLnNDFaqe8PaPrijnpyQBU1eS
 h3oeyIwqSB4n9MZQ7R4TaoZewmEg9KA4nl59mi8kWfhuN6dZVshweH4dA
 1H6vSxu9FihUeZxyyg9IDjop2k5YdmbE61sz9zDJofKyAfEJ3PBUJWyGp
 zJHc0qP55sRbNStyulmaGxlCfSdJBZF0cWOX9xeVYgcEfUABXQ5CEra01
 cGqlBR0vIqfKkcrQca5og8kymwho0HTOQ1JwoqwCPyV4Lpz6npikMB/lZ
 isAwYxo6WGRWQeMtlpq0zn8jQGjGzwe3I6fGhCHsWuaXfyff8avZqwkM1 A==;
X-CSE-ConnectionGUID: ssMjhXmZQrqnrdW55EpXsw==
X-CSE-MsgGUID: ANg8EBlVQty6OujVRvBXJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11296"; a="35690102"
X-IronPort-AV: E=Sophos;i="6.12,260,1728975600"; d="scan'208";a="35690102"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2024 08:24:54 -0800
X-CSE-ConnectionGUID: 4kNISSjkSkq+R+glFubtTw==
X-CSE-MsgGUID: pyU3q+oEQCqrYycStCXCxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="99990901"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Dec 2024 08:24:55 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 24 Dec 2024 08:24:54 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 24 Dec 2024 08:24:54 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 24 Dec 2024 08:24:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QIFBN7ARX4v8SWVQ/FK/NEQUrBBRO7ug6tybfsNQa1wAMe1/zm08J/iqjkCEtEnDJD5c3oi0vviiUVO45Dl7L+i/PZuzpWwhNOcAj3rwLCqW61RE9YuVRL3gf54EPCZCst/6KncbgMWGrDFaHRi7OrJ2BKSqhbSyZaF6qVKAybEiDs3ijLRuW1+cI5ZBy0if/DXYHoTSWYdQXcdjoVrQgohuEto63EJP5JfFQ7FhLL1BKQvtshWYxPzBhP4yDZ6PFjjSZz1q0F9Cc1WJW8od0lcjO24mrzZjSlwLUkBlaOFA1MplB4SJxLsmyTbGwNOn4wNs6F6wdgdmrSJ9KOyJrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NEujItvpIN2RwF0OvjcT4JeG0HnHkDg+/mohT7qLHC4=;
 b=dc2yJe6L3R3TIfSdY8I2HO6EgaMVQvajFRmm9igqQsZrKQRgQDRnynb4KIELRQPoh3qFCBa3EA6OVig9KKOQ+704mMPZG20esllllyPZzEG9f1u00cNWJGnj3A7DRef4IuIBLzTwNL15eLtAshnO7IMDbiDlGTmPXadWhoe1DZyMXn6KtBItOZCkCOaii1tZqY7QrY37THqWWjsO2W6/NqcxDnnJMRX4XxdeSentKNfRKeM25oiWO7D92quE0tMMzGa0ytm8yJoegVh1GNAdST+V6Eu4DjqBcOTQffDQtWBO4WkAWsLtIFqsReqWZJsIrRqviug+SFdtpfee+L0Vew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA0PR11MB4735.namprd11.prod.outlook.com (2603:10b6:806:92::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.21; Tue, 24 Dec
 2024 16:24:46 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8272.013; Tue, 24 Dec 2024
 16:24:46 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <173499021708.2223910.3780417223971651365@b555e5b46a47>
References: <20241223211014.90405-1-gustavo.sousa@intel.com>
 <173499021708.2223910.3780417223971651365@b555e5b46a47>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.BAT: failure for drm/i915/cmtg: Disable
 the CMTG
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 24 Dec 2024 13:24:40 -0300
Message-ID: <173505748060.1822.12427763940802583806@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4P222CA0010.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::15) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA0PR11MB4735:EE_
X-MS-Office365-Filtering-Correlation-Id: 21a2451c-1bb2-4819-25b4-08dd24377ae7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Qy9TQlBqcHpCRE9UckZmNHl4Njd0dGJWNG9ybmVvSE5hdDQ1UXZUVDYxQ0lp?=
 =?utf-8?B?YTNacW03UmpKY0oyK2VJYXZKVC96OEJNSzByQTU3ZkJlcUdvdmFvWS92R2xU?=
 =?utf-8?B?UEtyN25ReWRxVExpdm9OdTFMRTJOb0o5MWw5UkZtbXVTRm90MUhOZS9SUUhV?=
 =?utf-8?B?SWt1Q3pDRHFSSGcxOVRnNVE5ZkFsMDJZREZhVUllaElBVmNFMVlPcitZRjJM?=
 =?utf-8?B?Y1BKWDI4VjhkcHVXS2FGUjdXMnk1Mi9WbHo0UkxSQmQzdURMaU52eTdiY0Iw?=
 =?utf-8?B?TlJBQUMrRDYzUlNJOXN1a0pnUzZpaEl2TC9BbWtvUzZLWklFODIvNVlmVnFT?=
 =?utf-8?B?bXdyQ0NNTXhiMjE0eEc1bnFSbDkwTEpPZGM2bGVaWk56d0k5OU51RkIrR29q?=
 =?utf-8?B?cy9LeDE2ZXJOUWNpVW5UZnRjUDh6ZFZlWHNIaUNBb2crUHd4WHh1U2RmaTBu?=
 =?utf-8?B?QS92dlRqdFZyK0xGU20vclV1RG5hbW5WV3R5R24xQXdGa09DNXZCSDlnbmhw?=
 =?utf-8?B?ZDRmRW1HMXhLK04vOTNUcGRMUTRXR3FCRzZ3VjlCOGVBMXBtKytJLzdMR3ZP?=
 =?utf-8?B?aGZiV3p5S1F0cW5kbGJGcnpFYnpOK1IweVlMU05HQi8wbE1wR2FDc3cydXdV?=
 =?utf-8?B?UDRGQUtlb05udHBwZGMrTzlQbWllbFBTUjcrTjlPVWVIbzRxbVRLcWxvdFVo?=
 =?utf-8?B?WXorMUYzUUxFeW5aeVI1NnN4bWlKUmt4M29EWWI4UDhwZlg2Y3dodDkwNkFo?=
 =?utf-8?B?N3pidVh5Ry9UU2hienplQ3pxMENQcDhzN3M1ajBSQmVZVDJNSkhxUlBKOUNn?=
 =?utf-8?B?NDBXdjhtQ0l3Qzd6ZVBXbXVtQUZ1V0NhckQ3TzR2STZOM0pkMm8rSEg3UjJo?=
 =?utf-8?B?bEZ2U2h6UG9GV2RQSm5NbUg5WmtaT0Nvajk3cDkzbTUrL0I5U0hTMG9YMmds?=
 =?utf-8?B?MkM1d1NnQ3g4ZGZUSVZqdjlZTkRPYTdMWkFWeUtrZmZFeERWcE10OEVMeGlJ?=
 =?utf-8?B?TUFXTmNqWE9sK2RCeWxCRncvQUtjT25qcTV0dy9SR0g2eGk2UGt2ekNVNXJl?=
 =?utf-8?B?SVpKamYxWmQ5c3ZRWGgwVCtGbW5rS2tsdlJPeUlZclNJREFoeUNCZmQyRlBm?=
 =?utf-8?B?VGlHVmFCZGNRSXlFYTh3SUF1WGZMVllzTS9RalgxdmFjUTNlbzIyRjcwY1Fa?=
 =?utf-8?B?d3htamFhaEI5R0Q0Tkp0Qityc2NrQlZ2V0tUSkdPKzJhQ1MyVHBVKzJldVRE?=
 =?utf-8?B?R1M4WHlsM3ptQWdrYTRwRi9pSkN5WWs4eHpoTC9hdXRLTk44ZHBTV1VRYTdR?=
 =?utf-8?B?bGxOYi9ZSzlJUjcrbDQrZU5uUFFCcGRZeUZUTERiYTZONWt2VlZXaHlrQmFp?=
 =?utf-8?B?dzI5VWpEdFhmcUVUOWJjRzREeUZLYVFFWWxXTUk3V1BLS1pXdXc2R2VSREpQ?=
 =?utf-8?B?SGJpVWhmWUppbDBtbDVCTmhnM1pNbEVqc3FaT1VWaWFIYVB6WVNTZ3BEQ3hH?=
 =?utf-8?B?Nm82RXNSMGFxSytCa3BEUHhmdmE4dHhlZkFVUnp3SDZVYkUyZ09GZjhXS3pz?=
 =?utf-8?B?eERGOUNqM0JiYnplNTZQWCtQSm9Nc25KWTdGTlhMWTU5M0MvL1I2VjRSa09F?=
 =?utf-8?B?VlhPdnhzN2pPZk1INkxNaXdySFYyYmd1Q1JJeDBncXlWaC93Z0hrSkFwcC9w?=
 =?utf-8?B?SWgwSXZCRGYweVpRQlJDellocTA4Mld3b0dLaHYxTDR1MnU2Q2FpRFI0L3Ix?=
 =?utf-8?B?RXV6TzVkaFVhZDZTRGtPSVoyaTNoa3BpSlBPVnVZMjFhL091cWt2VEdLbndB?=
 =?utf-8?B?b1Z6VDBtdEhwS1FuQlRvQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cU1MZmJUWitGY1UxQzU1TnVuTVhKYVphbGZCRG02aXU0TkdzUzVPQW5JMzlK?=
 =?utf-8?B?YS95WmowV1MxcWVDYjAzTGNJdklDbGlGd1VKcmttazJyY1dEL0xxMjVBUERH?=
 =?utf-8?B?QnY0bTVHSmp2Z2xwVGt5YTdoNlZXWjh3ZGVNYVNWWHRRWURyVzEwTlI3dTlw?=
 =?utf-8?B?K201dUtCKzNJazFsVFdqQTJkT3d5aVZhWUpKR3lUOWk2YW5ZeFJyUkVYVm13?=
 =?utf-8?B?Y3gxZWUwNGlkWW9UcFlOamV2N055SnFHVGtwOVVSaXdzS0I4eG0vbjlxQlRL?=
 =?utf-8?B?ZFU5eTVja3hOanRLMFVVRU8wYWk2Vjhyd1ZJVUY1RUFMN0NWTGhkTXdmK2Rh?=
 =?utf-8?B?czJ3K090SmRuaEpJa2dWWTUra2hWeGdDNDhGb3hJR0R1NG9lcGFZVTZlOXVZ?=
 =?utf-8?B?ejBzTHkvYXJkRWJLUWlXRFNCTFAyZHFwcGN6YjJnbkU2NUFQYmIvaEVsVU1H?=
 =?utf-8?B?OEZJZnJOeVpobTUrTk5pYXBlVkJYYU5zRmZFYklXR1JnTmJVSTA3MXlyRklE?=
 =?utf-8?B?NEZNcjhYWEd4WngyNjMxSkNHcHM4VDFRamkxdDRXck9BTENPSHIvVW1wa2FE?=
 =?utf-8?B?SGFBTDFGeCtnbVhxRGt0MXQ2MFBPMmZyRnMyMEg2TzhuM1ZhaGZ4MmEySmN5?=
 =?utf-8?B?QTZRcXQwYXlhdnVwdjJiOVliS0d2M3JEbUpoSG5xRk1CL296Z01pQWZyaUNZ?=
 =?utf-8?B?UVNvQlh3RmF3N25jU3dHY1FpVG9oSVhGU0tLQndWbGhHSjlFV2NRTHRTRXhv?=
 =?utf-8?B?MDlVbXcrOWtqd2ZwUTgwZ0NJZ3JLdHVFZUtEbmFTbTluTTMyeUVYekl5TTZz?=
 =?utf-8?B?SWQ2UDlwU1dHTjBjdjFUbmhwM2dpdVhaUDViT0NXYldXQXdRa3I4VlNobXdj?=
 =?utf-8?B?Unk3eTJubXIrSXlXUFNhOTlMYlBaRU1YV1B6WS9zOVcwY1pCWmZSOXczenNO?=
 =?utf-8?B?dCtFOHB3dGoybnUrbkxOZkN3bDU5V0hYNnhJb2dqdkRpTnF4cncvOEgzTHpH?=
 =?utf-8?B?eDd0MzlwaUViZ2tEdUlsU09ibDMvY1o3S0xLWnlVOEVlRXRRcFY2UXNLUkdh?=
 =?utf-8?B?c2xYS3R6Nm85TzBrN0IwVVFSWDhQdG5taWQxdDBVWUU1R3JHTlVWNWdtODRm?=
 =?utf-8?B?UUFLSHc0QmpUMmI0RGYwRXVqeVVRa1dzSWcrMUpvUTRqK1lwaG9yRE0vYzlN?=
 =?utf-8?B?Zzc0UW9kdGZUenpIbmhwWE85ZDF3by9SZFd1SzVsTEtYQnJoVVFSYmlxbFFG?=
 =?utf-8?B?WEF5VlBvNnkxU3l4YkI4bnQ2bEJ5V3p2Z2d6NEhiODdxMTBqUWJwcHNmVFV3?=
 =?utf-8?B?Smp6NStUL1dYSzVpWUVBdW14NjdlTGhoYzRQMVVGblk2NVRJM2JEWHhvWUFY?=
 =?utf-8?B?L2JZV2F5aHhUU0oyeEJ5WmpOdXY2OHFOK28yMG5tYUZxeGFSNHVwY0hCc3F1?=
 =?utf-8?B?YU45MlBzSUp2RldTOTRGSktTV0E4bHllUkZhVEVvZEdtZzkxSXNxL2o5dGlr?=
 =?utf-8?B?NXBtM1AvdlVYckRRbFl5UDZHRjJERHo5T25vaWo2akpjOFpYbkRGR0RiYjVL?=
 =?utf-8?B?QWI2TDZVNFhQenE3THhrdTZiQUxVc0Vjb3JSdjdEL0cvQkJVbllob2lGa1RC?=
 =?utf-8?B?eXZ4OVRLaU1VU3BycXgxWEhDTTByenh5NWRsVDc2c0tLc2M1N0FPaXVHeGZx?=
 =?utf-8?B?cUFIOUVLWlJKSUh5c0ZrWUpReW5TY2t3QVg5MUpHTVFKWFJld3FXUmJNelBm?=
 =?utf-8?B?dGwyUzMrazdTM1pGSjEwZmkvRXk4cGszeFNMZlRWYVJocnZjR2ZZbTlZTVNq?=
 =?utf-8?B?Y2ticGZ2a29ET1pUT2J2MVlUOUt1QmZqSlJzeVJ6QnVIbTNxdFdCck1BNjhr?=
 =?utf-8?B?NU56UzBkd25xekhrNWRVaGZQaXlmblN6eWw4TU9PekJ6a1hJOXVjZTJNcUNL?=
 =?utf-8?B?dDJyTURyREJYaEZQMVdmVVNHNWtiNFpybmdGM3licFZFWmdsWkFsTDlmU2pt?=
 =?utf-8?B?bDBzVlp1TFovNjJaTXpYWUVjSk5vcHI3VktadFI1amNLS1JwYzgxR0VabU9K?=
 =?utf-8?B?eWczZUNrRVhJNWtRZkI5VjFnbW8wZEpqbGx6czRRSWxxeTJnT1FGRU82Tmti?=
 =?utf-8?B?U2Zkd2RIbEJPcDJudDF0OEdOOWFySjZ2aTR2L1YxYUVqZmEzTUlQUHpWdDhO?=
 =?utf-8?B?Mnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 21a2451c-1bb2-4819-25b4-08dd24377ae7
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Dec 2024 16:24:46.3150 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: No/sWKG7IFwus7TjmMYMx/Z/VtV2fspb2ObF5gTtlBPUwjhyPV+nP1gBbPQzw1DbzZdDcBq3HQenOqBLPeXKoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4735
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

Quoting Patchwork (2024-12-23 18:43:37-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/cmtg: Disable the CMTG
>URL   : https://patchwork.freedesktop.org/series/142947/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_15889 -> Patchwork_142947v1
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_142947v1 absolutely need t=
o be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_142947v1, please notify your bug team (I915-ci-i=
nfra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
>  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v=
1/index.html
>
>Participating hosts (41 -> 40)
>------------------------------
>
>  Missing    (1): fi-snb-2520m=20
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
142947v1:

Most of them are legitimate failures that came from my patch. I posted a
v2 to address them. Thanks, CI!

--
Gustavo Sousa

>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@i915_module_load@load:
>    - bat-dg2-13:         [PASS][1] -> [ABORT][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-dg2-13/i=
gt@i915_module_load@load.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-dg=
2-13/igt@i915_module_load@load.html
>    - bat-dg2-11:         [PASS][3] -> [ABORT][4]
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-dg2-11/i=
gt@i915_module_load@load.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-dg=
2-11/igt@i915_module_load@load.html
>    - bat-dg2-14:         [PASS][5] -> [ABORT][6]
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-dg2-14/i=
gt@i915_module_load@load.html
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-dg=
2-14/igt@i915_module_load@load.html
>    - bat-dg2-8:          [PASS][7] -> [ABORT][8]
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-dg2-8/ig=
t@i915_module_load@load.html
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-dg=
2-8/igt@i915_module_load@load.html
>
>  * igt@i915_pm_rpm@module-reload:
>    - bat-rpls-4:         [PASS][9] -> [FAIL][10]
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-rpls-4/i=
gt@i915_pm_rpm@module-reload.html
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-r=
pls-4/igt@i915_pm_rpm@module-reload.html
>
>  * igt@kms_busy@basic:
>    - bat-twl-2:          [PASS][11] -> [ABORT][12] +1 other test abort
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-twl-2/i=
gt@kms_busy@basic.html
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-t=
wl-2/igt@kms_busy@basic.html
>
>  * igt@kms_busy@basic@flip:
>    - bat-mtlp-8:         [PASS][13] -> [ABORT][14] +1 other test abort
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-mtlp-8/=
igt@kms_busy@basic@flip.html
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-m=
tlp-8/igt@kms_busy@basic@flip.html
>    - bat-arlh-3:         [PASS][15] -> [ABORT][16] +1 other test abort
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-arlh-3/=
igt@kms_busy@basic@flip.html
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-a=
rlh-3/igt@kms_busy@basic@flip.html
>    - bat-adlp-9:         [PASS][17] -> [ABORT][18] +1 other test abort
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-adlp-9/=
igt@kms_busy@basic@flip.html
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-a=
dlp-9/igt@kms_busy@basic@flip.html
>    - bat-twl-1:          [PASS][19] -> [ABORT][20] +1 other test abort
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-twl-1/i=
gt@kms_busy@basic@flip.html
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-t=
wl-1/igt@kms_busy@basic@flip.html
>    - bat-arls-5:         [PASS][21] -> [ABORT][22] +1 other test abort
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-arls-5/=
igt@kms_busy@basic@flip.html
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-a=
rls-5/igt@kms_busy@basic@flip.html
>    - bat-rplp-1:         [PASS][23] -> [ABORT][24] +1 other test abort
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-rplp-1/=
igt@kms_busy@basic@flip.html
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-r=
plp-1/igt@kms_busy@basic@flip.html
>
>  * igt@kms_busy@basic@modeset:
>    - bat-twl-2:          [PASS][25] -> [DMESG-WARN][26]
>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-twl-2/i=
gt@kms_busy@basic@modeset.html
>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-t=
wl-2/igt@kms_busy@basic@modeset.html
>    - bat-mtlp-8:         [PASS][27] -> [DMESG-WARN][28]
>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-mtlp-8/=
igt@kms_busy@basic@modeset.html
>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-m=
tlp-8/igt@kms_busy@basic@modeset.html
>    - bat-arlh-3:         [PASS][29] -> [DMESG-WARN][30]
>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-arlh-3/=
igt@kms_busy@basic@modeset.html
>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-a=
rlh-3/igt@kms_busy@basic@modeset.html
>    - bat-adlp-9:         [PASS][31] -> [DMESG-WARN][32]
>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-adlp-9/=
igt@kms_busy@basic@modeset.html
>   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-a=
dlp-9/igt@kms_busy@basic@modeset.html
>    - bat-twl-1:          [PASS][33] -> [DMESG-WARN][34]
>   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-twl-1/i=
gt@kms_busy@basic@modeset.html
>   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-t=
wl-1/igt@kms_busy@basic@modeset.html
>    - bat-arls-5:         [PASS][35] -> [DMESG-WARN][36]
>   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-arls-5/=
igt@kms_busy@basic@modeset.html
>   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-a=
rls-5/igt@kms_busy@basic@modeset.html
>    - bat-rplp-1:         [PASS][37] -> [DMESG-WARN][38]
>   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-rplp-1/=
igt@kms_busy@basic@modeset.html
>   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-r=
plp-1/igt@kms_busy@basic@modeset.html
>
>  * igt@kms_force_connector_basic@force-connector-state:
>    - bat-mtlp-6:         [PASS][39] -> [ABORT][40]
>   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-mtlp-6/=
igt@kms_force_connector_basic@force-connector-state.html
>   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-m=
tlp-6/igt@kms_force_connector_basic@force-connector-state.html
>
> =20
>#### Suppressed ####
>
>  The following results come from untrusted machines, tests, or statuses.
>  They do not affect the overall result.
>
>  * igt@kms_busy@basic@flip:
>    - {bat-mtlp-9}:       [PASS][41] -> [ABORT][42] +1 other test abort
>   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-mtlp-9/=
igt@kms_busy@basic@flip.html
>   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-m=
tlp-9/igt@kms_busy@basic@flip.html
>    - {bat-arls-6}:       [PASS][43] -> [ABORT][44] +1 other test abort
>   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-arls-6/=
igt@kms_busy@basic@flip.html
>   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-a=
rls-6/igt@kms_busy@basic@flip.html
>
>  * igt@kms_busy@basic@modeset:
>    - {bat-mtlp-9}:       [PASS][45] -> [DMESG-WARN][46]
>   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-mtlp-9/=
igt@kms_busy@basic@modeset.html
>   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-m=
tlp-9/igt@kms_busy@basic@modeset.html
>    - {bat-arls-6}:       [PASS][47] -> [DMESG-WARN][48]
>   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/bat-arls-6/=
igt@kms_busy@basic@modeset.html
>   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/bat-a=
rls-6/igt@kms_busy@basic@modeset.html
>
> =20
>Known issues
>------------
>
>  Here are the changes found in Patchwork_142947v1 that come from known is=
sues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@i915_module_load@load:
>    - fi-pnv-d510:        [PASS][49] -> [ABORT][50] ([i915#13203])
>   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15889/fi-pnv-d510=
/igt@i915_module_load@load.html
>   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v1/fi-pn=
v-d510/igt@i915_module_load@load.html
>
> =20
>  {name}: This element is suppressed. This means it is ignored when comput=
ing
>          the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>  [i915#13203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13=
203
>
>
>Build changes
>-------------
>
>  * Linux: CI_DRM_15889 -> Patchwork_142947v1
>
>  CI-20190529: 20190529
>  CI_DRM_15889: 8fd79761c1b6984d01b45a4bc8eb8ad81f6546e4 @ git://anongit.f=
reedesktop.org/gfx-ci/linux
>  IGT_8172: 9112581619aa198fa03041d5c7e18e02f42ac00f @ https://gitlab.free=
desktop.org/drm/igt-gpu-tools.git
>  Patchwork_142947v1: 8fd79761c1b6984d01b45a4bc8eb8ad81f6546e4 @ git://ano=
ngit.freedesktop.org/gfx-ci/linux
>
>=3D=3D Logs =3D=3D
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
42947v1/index.html
