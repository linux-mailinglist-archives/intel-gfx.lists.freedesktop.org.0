Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B868B202E1
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 11:12:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91FBF10E396;
	Mon, 11 Aug 2025 09:12:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PCCq0WNF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64CAC10E396
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Aug 2025 09:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754903552; x=1786439552;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=tt8gqAT/qNRUVzms7jmvzY1gRkPgdNyfef0pKhzP4d0=;
 b=PCCq0WNFFC/pbAI+AQ9/bnJKfkHaqIyYQ9dOkGGMWIwzhgL0McmvIakE
 f0U459UnGb/f15Bz29Pa6f6I6lYuiz7l+3CMNXr3U66Es7VccRvhpcSRY
 qKD8fWHMkpG2eCLEBT1Fk183nCCRTbjE//efLoN06Kwns/ujPEAkhbIcJ
 dgnIVEe9Z9R/yT41DuFgsY9RjH+C0Z7yjgoOT7P/eHMFU2rNYYT+GG6X2
 WJKBKiyHdDaSHtlyW5dq+mCdLwRKx5PNWNNF/aR8RaMTWfc2vkH1wdlZt
 H0YUA8jVIfCUgMtgPhFELOaBh0OPhQbaHkVtCYFAkwlUXaAuSspXykwhv A==;
X-CSE-ConnectionGUID: hLZ5BGwMS6yQFnPFRbQKYw==
X-CSE-MsgGUID: myGFL+YpSuyw0DunKNz5Sw==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="74737790"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="74737790"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 02:12:32 -0700
X-CSE-ConnectionGUID: w+Z8KIb7SviYkUIBMTCIVQ==
X-CSE-MsgGUID: XymUOuMgTsCPN3GutTR/rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="166223037"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 02:12:32 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 02:12:31 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 02:12:31 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.41)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 11 Aug 2025 02:12:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y26P86T0cavSipF/dR04GP5btVAN0St2I7wNOzYVGL8b9y59QSIcV2NEMiJETf4TXqytL6l587c5QgOiR7obBdX/xautGgmVpdFlT9HT8FQeXCOQAqcl1hLtt9D4FE72yBLRHSnAEtGHPRtrXII9fkbd+mhzuIIo02fGyrroSatfCfVOAxK6jUBKHlEfFoHtKWwkWQq/MEqJ+w7JuT2S9JNoJm8HdDvLBn82LG1aGfLtoipEUQZgEtORjS6ZEQ6qi4RnV54o45YTXqUpdkwQ2xemvUcAKQ0ENGRoxWq0/NJN7+4tE5YuLH3si57caZnBQc72wGJhafjiH7oooNeD2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=grV7GKzju2U/JUFQrRG9lXxX/g64yv4yx6sgrsYt0Ow=;
 b=NQIBOfHgdUQPeinvtjWOcBS9VlNWxKV4r4vVflZWlkNxdJ3EL91czNAOqBRjCXmpXE7QfQt5Bes3hkL1x9MaNxQPVl5aYTYZPAzVFHS1Z/uSDW3X79cHaVd9NM5MjMD6YNwJPgCWG1YLvuncqKFilun6hvyuZb0SAe2U08CPjLYmw5R8I4yfPJX36Xj4QORmGKDc/4wuOEkUKsFtc9AmsNvepDR+hzerwmtElySWYq9ywIO9m9iYnkP3ygxDJQR7/7MMOiL3NqWlr7ubVvKTQpF0jzWhMevkcWnOmTaqC4TN4am63mxbph8rY4JMt4LBUIAozo/SkuteqLK10wHo9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SN7PR11MB6558.namprd11.prod.outlook.com (2603:10b6:806:26e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Mon, 11 Aug
 2025 09:12:29 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.9009.017; Mon, 11 Aug 2025
 09:12:29 +0000
Date: Mon, 11 Aug 2025 09:12:23 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <krzysztof.karas@intel.com>, <sebastian.brzezinka@intel.com>
CC: <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>
Subject: [PATCH v2 0/3] drm/i915/gt: Relocate context-specific workarounds
Message-ID: <cover.1754902406.git.sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: DB3PR06CA0022.eurprd06.prod.outlook.com (2603:10a6:8:1::35)
 To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SN7PR11MB6558:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b0d0f8e-8357-424f-bbb4-08ddd8b7325b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TDJ3Y0RRU0o4UXRHTE5LeTc2bGVYdzlCN0NJWXJ0K0xYMzZtMmNSRkFqT3VD?=
 =?utf-8?B?WEEvVjZOejhFbkpMR05nWG9DWHRGWjcvbW1vZ1ozNTFlT1hqL0hjSDVjdVZC?=
 =?utf-8?B?TnFFMXF6dmtVd3N5Y1JYa3BpRnpGZmJCdW1jd01SbWVsMVk5Yis5dFp4ZjZw?=
 =?utf-8?B?UmFIaFczamxXdXY1Vjlib0pVRklKOTRaWXVGYmROVUJXOU5WSU8rT1pYNHo2?=
 =?utf-8?B?YXZvdWRJbjczNmZWaloyU05FelJESWdlbmhjaXdEdll0WENrLzBvMUtjVDVU?=
 =?utf-8?B?NU9OSmVMamY2cGlFWTZWdDlOSG9UbFo4b2RxTzhCRkxLK1ZLZktyYW95UXhQ?=
 =?utf-8?B?TUw2czhJZjZzelprZUhMZWtvZVd6VEo0bTczNDFmUjlmZCtyUHJzd3dxSmU2?=
 =?utf-8?B?eVJ2NW1NTEJRNll5MTRNcjU5aEJwQUxBcklDVVowQVNuWnlnZW55Kzk2NmFZ?=
 =?utf-8?B?V0VVYW5tUnhvNlJ3SXVyellkUWtYWHRBaEVhY2NZOFlZZmx6c2RwdWxsbnlH?=
 =?utf-8?B?ZE5MbFg2S1NkUjVwMVZqRU5QaklPSzlteExPdE5ja3ZoRmU4bGI0R0c5emUz?=
 =?utf-8?B?OUxsWGh5a3J0WlRMaHUvYUlmS2lPdzdrd3k3Z056MlYwaFFtcjZpb1NoTDMw?=
 =?utf-8?B?Nlc5ZzlpZndTa28vQ3NKRlFSclY4V3dYL0pKYnVibmdJN2phQTRDWkhZYUdl?=
 =?utf-8?B?NkJmTEd5SXF2S1QvbFU3d1pyOE9hY2pGS0pGaE1iaUVwbUFYME5nbXlLY2ZC?=
 =?utf-8?B?clVTOGVwNVJLWXZyOGtVWTBLd2tCK2FKQ2ZZTzJIenNuUTJvYTJjSW5sUXRW?=
 =?utf-8?B?bk5KdWdDejRDWHlkTnJDNmEwVXY3VVV6MGE3OCtVTzY5d2hlRXZJMC9IVjNI?=
 =?utf-8?B?WklYNGVXRS9ycHp3SG1RU3JLdXR4U0hyVlV4SDBvTUdYNE5vR2FDUDhGc1Q4?=
 =?utf-8?B?M1JEU0FPbnBSSzJVM1d1OXZVL1pOcmw3eGhBR0s4R2pZSGN4eTB0NktmNmM4?=
 =?utf-8?B?NE0rZ0MvNXFPVHBUYjNwNU8wOWpZK0ZHVUQ5R2MzclVGcE1MbS84SmZtWTND?=
 =?utf-8?B?QVRrUmE5dzRON0JtY0k5ejhoYjNBYkV0MWNmazJOZEFnYTgrN2REL2ZKdE1I?=
 =?utf-8?B?allOYzB4TWZ4UkZuKzY2QlhFOFVtQnJ6MTcxSlE3SzIvamZlWXFta0lYYzgx?=
 =?utf-8?B?R3J6cVRmcHpwUW1OUkQvbXZYR1I3NzU4ajNJMDBHcW5QZ2RCVFdOSDRoRkRm?=
 =?utf-8?B?Vk5VbCtXNy9GenR0c2tlclNrYWQ4enV3QmFBUFk0Z1FDdlRFTFBnZ1lvb1p5?=
 =?utf-8?B?TEtZbzhOeFBMOGlvV1pRMFVZUXlLZmE1YmUySVM3SVRsZ3lXeW1mQlU1MStn?=
 =?utf-8?B?VFZlSkVQaXVNYUZUSVU5cGt1clpQVWkwbGcxMU1UYVlyNWdOOHMwRFo3U3Rl?=
 =?utf-8?B?UTdwVWlmb3hGU2taa0g3aFEyeFBIWkVYRXRTSWdQT2NGQzB5dGJPR2kwWE1K?=
 =?utf-8?B?UnhERTFqUUwxSE9kUU9NSkdxK1VvQzlhWjd6dHlBbU9SYk4vczMvc1kvQzFT?=
 =?utf-8?B?UXNQVXZiQmsxWGFpRlBZeW83amdrS3pDWlQrTUVVRlVpdTJSYUxnUFJCalRH?=
 =?utf-8?B?Mk9ZK0ZaSGI2dXNhVnhvbDM1MlJqbUNlQjVueUFPTnI0aEkxQ2NBcEFTd3Zx?=
 =?utf-8?B?WVhBVGVzbGEzODQzYTdJcmdRUzZRR3hGU0hreGlqYVduaWV3ai9lMzNpOFF0?=
 =?utf-8?B?eEJGVXBCc3RTRmlsQ3VxQmtIRHRLdmh6UEpSSG45djlPNkljT29mckwzVFQ4?=
 =?utf-8?B?Ny91NVpoeXlSL0dGY1dFYm5UWVUvanJBNlpSdzhXWGEzS1U1MDYrSFNlRGZu?=
 =?utf-8?B?amdVQWVFbG9yRjdaK01tUjNreER5UmM5Y0JWa2w1dm9TSkhiMHhmbDNidDF4?=
 =?utf-8?Q?LzHjSfM64/E=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VlhaeWxnQ1p4aGdibHh2NExveUczcXpvekYwdGNHT3Rxb3BpQWF3SGJoajNB?=
 =?utf-8?B?dE92WWZtK1JpMFhFeGdublJkWGZOeHBxcEE2bG50eTU2TlFEU01aQkZIWWFk?=
 =?utf-8?B?QU5YZ1NFaTAzU2VQRVZtNWkzc1ZybG5xdTlUTERyT3k2TkYwQjhPRWNod3hz?=
 =?utf-8?B?ZWpoZEIvcnYyK1U5NUZndzUwK2JTbjEwRldwMzhyNk5OSUF0eHVNRVpjakhI?=
 =?utf-8?B?aWgxZnIrN1VJMmI4Nk90UXhjRzFkRWZkZkhmbzBxNGJLOTdEdWh5b05NU1RW?=
 =?utf-8?B?azZ0YVVTRS8zTUMxMHB2ZnFyd3k3YkNidFM2MVdyM1N3S295NWhhWGE3TTZv?=
 =?utf-8?B?aDM1VHpXRCsxaUhDTVl6TkxDcjZub0JvUmVyNCttOHFpWmYyQkRkM2hhSDdr?=
 =?utf-8?B?SWxBY2hHR3FUMTBxQjlqVjRzbVhzbGZnaGtybUpqdHBQRTFjdld3QWNoM0oz?=
 =?utf-8?B?VnppL3NsZ0d1WEFkTTFIM2FaTGM3VzJNUXE5WVNuOXlnT2lYcS9TaWgrWFZN?=
 =?utf-8?B?UGRGYmYvNWtPVVhPMlRIQWM1dGZQbXdEZXptNytSWTJVeHJDTlJDMHpEMjFG?=
 =?utf-8?B?Q0ZVeXVNZTA0WFppNm9TaUxDZU9BUDNOR2s0bldEa2k5ZFVOS3BLUmR0SGZ1?=
 =?utf-8?B?anBSM3BJRkJCOXNXcStXdHJKY1d3YXVZSy9Ra0VLSXkxTkJManp5bFdlSFRW?=
 =?utf-8?B?UzRVY1k0YXhOVlFzaVR2OXhoVHY3UHBDWVkvUVNkVDQ0bU40ajZtUzNiZUpC?=
 =?utf-8?B?ZkduRFd2VCt6OEh1dUo1QWRvWXFsQkk0aFE4WkdMN2hIZVZNWDMvdTJSVkhE?=
 =?utf-8?B?U1p5dVhDMmNybkJBQnl3Zlc2czA4czYxWjNpcTM3cy9kaTlldzM1TGRRQTVG?=
 =?utf-8?B?QndIdEhGZHJwNkJxdmsrYlczU1gyVjdrTWRoK0laTjlnMUJJemwyL1NGTnF3?=
 =?utf-8?B?cDdQNHMvdnRSbmErTEpDR2FFVUZUY292WSs1OUk5c1BaSmxkRkg0c1ZDUXlP?=
 =?utf-8?B?dWRNbTN4bVBJdktSd1ppUTBIeUpka25TY1JXM0RJbkVrQ3VNekErdGgzeGNM?=
 =?utf-8?B?a2ZuaHUrUmplUkYwa09ZRC9UaEFDanJaRG14YTZsY1p5dG1sMWVYcHd5YUoz?=
 =?utf-8?B?elE5NFdxZmpQRnRuMG01eWZMU2xWNUthWFptcE15anF6L3NnUUhvd2tjZUw5?=
 =?utf-8?B?a05IdkdTbDNaTXVKMG5Mdk9YUXA0UE5zd1VDbmFsRlM4MTBwWC9OME5qM3I5?=
 =?utf-8?B?am1OYzdpVEozckZxNkdTb2hlTGFlRXkyaWRLbGFud1hyeFdGcmF6YUdvR041?=
 =?utf-8?B?VE1Ubkk4b1NlYUxMR2VVcnB2ZW5pdDVpMTRYZm55VVlYQzRCSS9QQUpJSVRl?=
 =?utf-8?B?cWtpb0F6SFY4dWhPRXRtTThhMytmQ1hncXM3dThvUmYxajF1dzBpckE2bjhE?=
 =?utf-8?B?bkZRYzByR0N3Z2JYV1NiYXJpTStCS2ZpVktyTGtDVml6Zkh3eWNBMUxKd1Jr?=
 =?utf-8?B?R1d0cXFyUlVXamU2ZXVNNXBGOU1DNTFUSmREVmUzVHhadFk4SklobWJ1dXpE?=
 =?utf-8?B?OWNIVkIwZWFtaHQxQlUrS09mbEpZUFpBakhqTUc4T3hwZm9UZC9tK2dJSGlF?=
 =?utf-8?B?NkdkU3l0bUwzWEVMM3BodjE3QXlyOVR4UUNFaEpFVFk4dy8zWFMxSmRVMTJU?=
 =?utf-8?B?czRtK2FqcjVWVXVjbkhtNHUzVkFBUmJwQ3JkcS8xSUo2cWowYWJUd1p1UVNP?=
 =?utf-8?B?VXpRd3l0RUtLb2NiTzY4M2NSRnZEcUVpdXZGeXE3TDVtbEt0ejVMMHBrUUl4?=
 =?utf-8?B?RXpiTThBdGs2eTlmdE9jY3FvZ2FhVVZUMTlaeGlQRURYbTNsUGdWZkYrR2d2?=
 =?utf-8?B?cmxubDJndThWKzVlbGIrdFJ1cWxvbmpUMlBIUUFKVEpZY2Jrd0FVNWhTR2o4?=
 =?utf-8?B?SVNXUlRBWDFoYkt4dFRXNC9SMFFMTjdBQkY1VEtwQnI3U3o2aTM3eTdkUzB3?=
 =?utf-8?B?T3drVEVPZnpwL1F3WitsSGJIV2JjZ3B2UUY3MGJkZUZmeVlOUks3UVIvZ2JY?=
 =?utf-8?B?R1RCUWsyNitBcHR6WjdpU1RsU0NIVUlhT1ZaaFlTZHUwYXpKbXQ3aXlRaVd5?=
 =?utf-8?B?L3l5b0EvTld6aUhOTmI3Wnp3QUNSSXp5YkNhUUE4dzJ0Tlo3Y2lrNTZlOXhU?=
 =?utf-8?Q?7N+w1zpo2067u/WD8EvNxk0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b0d0f8e-8357-424f-bbb4-08ddd8b7325b
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2025 09:12:29.4880 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pVwjafRYMwf8ExzHEnDcIavKfH7RhsxOdC4iCBx2qL41RF/vBne20SBaHI+UoSobvZw8QpodX/jx/dU9rJaAtoG5hN/OQMSDloUBgVF226c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6558
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

This series cleans up the placement of several context-specific workarounds
in the i915 driver by moving them from rcs_engine_wa_init() to the
appropriate *_ctx_workarounds_init() functions. This improves clarity and
ensures that platform-specific workarounds are applied during context
initialization, as intended.
 
It also aligns with the hardware documentation, which mandates that certain
CACHE_MODE_0 and CACHE_MODE_1 register settings be applied during context
initialization to ensure correct GPU behavior.
 
If some workarounds remain in rcs_engine_wa_init(), it's due to issues
encountered while attempting to move them, such as the workaround not
sticking when applied in context, or other platform-specific constraints
that require further investigation.

v1 -> v2:
	- clarify commit message
 
 Sebastian Brzezinka (3):
  drm/i915/gt: Relocate compression repacking WA for JSL/EHL
  drm/i915/gt: Relocate Gen7 context-specific workarounds
  drm/i915/gt: Relocate Gen6 context-specific workaround

 drivers/gpu/drm/i915/gt/intel_workarounds.c | 49 +++++++++++----------
 1 file changed, 25 insertions(+), 24 deletions(-)

-- 
2.34.1

