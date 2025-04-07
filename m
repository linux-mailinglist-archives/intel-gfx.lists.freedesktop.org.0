Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1F8A7DC0F
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 13:17:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81E7010E063;
	Mon,  7 Apr 2025 11:09:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UYhHN+FV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0990F10E063;
 Mon,  7 Apr 2025 11:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744024170; x=1775560170;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3oXtJ5ujzi/onLewQChRFxSXdlNwJ7ahtZR4uMv7duQ=;
 b=UYhHN+FVXDvUwjkU0aps8uVd7ftC3SAdbPFKL6U/yC2yn3X+9PFegnkQ
 1lXeqr/Xg3VZstOkrpOqJAhIqNK/JgFQjveVFASKe0XTJiLhNTUf6DkBo
 rcfelGbtF7NqF3V6kzDxTSYkRUWiCdbTi0jvmfHQXYXPKVPDjMbioBTAe
 ARJg/K2GvcjAjhwGeQMoIg4g+6GdxA9GrATi9OJLZVCrm8U4e1rXSA1WO
 fGPAuZ7NUb6XvqIbJMIlU5gY7gKK1yb04FUVxi4+mLZfe42fgyCnCyfdq
 PuPMMBcGRkJdHDLCdLXKbvIq4odpoZXWN3fRSBJKHag0sR0JeYyT+ABBm g==;
X-CSE-ConnectionGUID: N9e+ENdYTVOueubPYcIK6Q==
X-CSE-MsgGUID: 5ayzsvRCSx6jOmg04hOU6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11396"; a="49057912"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="49057912"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 04:09:29 -0700
X-CSE-ConnectionGUID: jIa56PrZRO23La2koX7hVg==
X-CSE-MsgGUID: gPYBJTR+Q5u6hzyeS16Jdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="151114856"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 04:09:28 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 7 Apr 2025 04:09:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 7 Apr 2025 04:09:27 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 7 Apr 2025 04:09:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V9GoniDFk2vAbd74HMr0plHbSB62kx/1HQmb88JKCH2194KxmTgcBKspfw5UO2tqNhOhRDsAfP3BQxF5OEdZ9c1qU2yPqI72w7aLJ4dMYdcK/7cdNTBe7cQeXudnNTMMjehi/WxPK9tDyLCnAmRnb6gswgHlzmWcYCDkhAKEyF7IStxbJu5X59LlRvmy1V9QJWmP4FHWVN7Ez+NJdF589KLC7iHWDly/OkO0RsyJzAunV+Psh4afz2KBDrIxh45G0pt659UH4T3JyPGkA8y/cvVTon2sCL0Sqpgy1zpJYMDvDrB1OuNHL99yEsFtJOQNzg/1C/cWb7B1xN/t70G7Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3oXtJ5ujzi/onLewQChRFxSXdlNwJ7ahtZR4uMv7duQ=;
 b=YJZ0NaYGE7Yw21Tu6tpNLKFc6VTUQvZrIbN7hZnDayMOoC0v+q9pKPnfE+iRn1j4qMwbtbruKSGOB3LehT6GpNUM2i+ztj6kE0P+bvmwKfVk3KluRPHZilfnDMwKHNcVLx+mwhWNAmTYKtRZTgaWTkfpDth5McGMIKZ8GawKfJPcct49/8adXhdMbrFy3KDmw7Ly6imXOC3wBIBINsWxKZQEX4DklYCpV0OpiW/gFPxwRb2XcJUyaMf9NCbqbLP+7VntXw0jZhls9XZlMvuES+2oey/JDDVIzKeVrNMjnuewZHVkQWFyI9SMu4zogsqkl6QFJx2ZBqb1CRWqjv5UYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CH3PR11MB8416.namprd11.prod.outlook.com (2603:10b6:610:17f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Mon, 7 Apr
 2025 11:09:25 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8583.045; Mon, 7 Apr 2025
 11:09:24 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [RFC PATCH 03/11] drm/i915/dmc: Add PIPEDMC_EVT_CTL register
 definition
Thread-Topic: [RFC PATCH 03/11] drm/i915/dmc: Add PIPEDMC_EVT_CTL register
 definition
Thread-Index: AQHbj08lMz5fJGy2Ak+SJRy2+/TT77OYPFQA
Date: Mon, 7 Apr 2025 11:09:24 +0000
Message-ID: <MW4PR11MB70549811830299DB0D848CC8EFAA2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250307105237.2909849-1-jouni.hogander@intel.com>
 <20250307105237.2909849-4-jouni.hogander@intel.com>
In-Reply-To: <20250307105237.2909849-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CH3PR11MB8416:EE_
x-ms-office365-filtering-correlation-id: 59a55a07-9e5a-4bfc-f53f-08dd75c4a7f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?N0VkVjM4dTZPbDdNM0tlMmRQRXRBSE55LzRWVHJaTmgyOUtKTmk5OGozRUR1?=
 =?utf-8?B?alNnRWY5WE9GRFVyRkNXSm83d3k4cW1STUtrbTdrdlMza2xqZ3BGVnh3a0VZ?=
 =?utf-8?B?MDVzajNlOTZBVTNzV3V4bGVqc0tMb2IwVlErUCthbUtVL0gwci9LM2V4SWZ1?=
 =?utf-8?B?VmFRQld0dkRaeXIyQ1R0MzBkL3dRSGNsT2Y2dk5ER1ozYzhwZHp3c0FmRDQv?=
 =?utf-8?B?RUhhcTdQN1NZN0tQQlhkNGcxcjdSTmRYSmhJMDJFb1M2dXYzNTZtWDE4cG42?=
 =?utf-8?B?SUZCT1F2cGhtMTRPa1NPRjM3NFFlT204c2J3T0RMRWdZckNJY1N5V0Uzek1m?=
 =?utf-8?B?Z1N0aEtKbkxUMUtrMm1HdDVRaFpBOXo5KzFqM2IwUzBNODhqYitKTnp2d2tq?=
 =?utf-8?B?QkVrNlF6YjBYd256Wm9MdEJDckxHeEFKdXFLWUlmYkJ1Q3hrS2dTY0NQMXlH?=
 =?utf-8?B?SFkwS2s0VmR4THNHZWNVUUhkYzRCd3AzYktINHNCcU1RaGNmN3FUQ21qQ2F0?=
 =?utf-8?B?Q0pQZHlxVGNTQ0psOHNKUmF2WlVkTkE5eGhIT2Y5bm5pVlViRXQ4WDB2bXpa?=
 =?utf-8?B?MEhoQmNxOHpGeXNkOGNuTS9WMUJMT2dBMjQzTDJmL21mdm1zS2ZNNDBKZXBG?=
 =?utf-8?B?QUlUSFIrZ05KS3NNWklQRnU0OGFCRjhIZXhHSjE1YldEcVZvR3huTTFuMTdr?=
 =?utf-8?B?SHRUeHdsQUNJSWhtcUc2L0c5Qktrd1gwSmtWWml0WXpLTFM5U1U0Vk14UVVF?=
 =?utf-8?B?ZE9OUHhIOXd6TGdNVktWdzRyRExUOU12RThET3d5bDBWYXF5dW5DYkFSVEk4?=
 =?utf-8?B?L2tVTjZMSVRrczJaOERwMUdiWUN6MVJXSDVialRUMStIUE8zS1R6RlMra0Ru?=
 =?utf-8?B?T1pYeEtkNE5JSUlYdGdKR0hYWFFOTGFoamhNK3lLRHBPUEVHM29yeldDR2JG?=
 =?utf-8?B?ay9rNEFYTlgyRFVieUMxWVlqVk0wVVorWXJreGs0SFZOUWpuelhOaWxQVEZz?=
 =?utf-8?B?dVM5czh6TE1NVWY3bFpkMVZxMk5idnFiMXF0Y2M2eUtVNWJJeEJlcVpmRnpp?=
 =?utf-8?B?YzVGM1FXWHgwcXBWck9EbDRtL3hhSmFjS0w4cW5tbC9pUHhoeC9BNUFnUXhH?=
 =?utf-8?B?WUE4RkxseHJGbDFPVFRxcUVXdEZ2L1NBZEhKb04yaFdTTTY0OXBZalRZb1dk?=
 =?utf-8?B?RUNNVXR3WGtEUFIzQWFlcmM1NWxwbGhuRE9BcWFUUXhqMmZUL1FCMzA3MEI3?=
 =?utf-8?B?UVpOTXc1Mm41RXJkRFN0c1Z3MWpGMGhmL3N5UitsaURLOTlzT3NUV3FiY0d6?=
 =?utf-8?B?bE1XNmVPd3lwbHppcmd3YjkrYURUOTBJOGc0MTM2eEhDNndwZGVGZlVjWTVq?=
 =?utf-8?B?MC85azhzVHBhTG5EM1ZKVHQ0NWhuWjdpTUU4TTdUYmZRcnVSKzYzRHdKYVJP?=
 =?utf-8?B?SU1FNkZPMmQyeHN6bXBtVHJram1Ic29wY3hMQm1kOU9qbGJBMU40cnZvci9r?=
 =?utf-8?B?VXhUQ0czMzlOSnlpSytRZlZSVDVOWGRnT2o3djNHck1GZzdKQUpLc0VQa3lz?=
 =?utf-8?B?RVhUcmtMVzZZQXNhRWNBQWtSQ2U3OWdBcU0rUWFvWGMyWUhGQmJsR0E5U0pv?=
 =?utf-8?B?UVozNUVGeEZpY2wxcUZRcGV1dm1yRUdxNm1ETHd2c3E0TGxyZTFicVk5d3Qy?=
 =?utf-8?B?WWplWVFqWlBUNVMwdGxVUWRGQXVwM2JNd29jZE4xckQ2cEJXTDk1OGhkUkJI?=
 =?utf-8?B?OW5XbkZXWElhVjcwamtsS3pSaWNPVVRCN2JQSkRlSTNpWWJDeWtndEpSNHI3?=
 =?utf-8?B?Q3VmSjRMNXUyM2J1cnJHbEhuL1NjR0t4dlFUZThMSjVQeFBhUGlhakRRNnh1?=
 =?utf-8?B?QXU1aU1aaExjdlROdSthLzhEVkVZWmJFNnNFT2c0UmtKQW9VQXVpWGgxdXls?=
 =?utf-8?Q?tAR+FMuL+i+X+hG5FVXrr2IxIFoNECr8?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZHRzVzJkUU10eWdlTHV6RXZ4THRvdUQvaGFtRWV2UjNER3VtT3dCZDhEWGdz?=
 =?utf-8?B?cHQ3eHFSNGhPaVVJSHdSRUdRYzVyN3pNb2kvYnY0dmNJUTc3THl1OE5wTE8y?=
 =?utf-8?B?cDE4aTRrRmg3V3V0SmJaNW1pT01XTEl1ZDZTYmF0QjRTdnNhZjJyTVEwRmp0?=
 =?utf-8?B?WEpzb0pkNm03WGQ1c2RDdmhPWVNvTm9tRUdhYnIxdDVTbnlUSHhlU0N4TUZm?=
 =?utf-8?B?Z1dvZ0g5R2VqU1JUTWVmWWJQd3FHdXkxOVZaSTFWR1BDSmpmcUFBTUx4Ky85?=
 =?utf-8?B?T0QvVVVhZ3I3RzQ3VVppU3BKTGNBRk50b3lqdk5zWTVwY2FTRnNBak1zUTNk?=
 =?utf-8?B?OWh3SG1ybTNCazRXL1hmNDJPL1FNdTc2QjVHeGVOZ2tDaFVjTEY1OC9KTTB5?=
 =?utf-8?B?YXBwZGYrU0dqVXBtYmUyUUNseGo1Ti8yUGtpbzJkYjV6V3hhWE9mdEZnK2tt?=
 =?utf-8?B?eVN5c205OFZmcVJtNmhIdlZtNzZYWDdQVHl2b2JDMXdCdGpkYzh5TDBKN3N0?=
 =?utf-8?B?b1A1NXpjR1hFSXZEbVZZb1prb1JvaXV0SDZKbWlFa1plR3NYbmRURVRnNDlN?=
 =?utf-8?B?L3RNZEFaa1BYMVpIZW5SajlBMUNxQXBCMkxXVjFOZDJuQThFdWErWHhTZ083?=
 =?utf-8?B?TmUzbnliU3czTXJMdGdlSUtjQWoxSVIwSHJiZjZsZDBMeU9ISkg5S3FnNVVo?=
 =?utf-8?B?Wlg4V2VDRVlubW1jaUxMZnJja1YwL2l3TWMyZUFlSVdJUGVBdFpYUkdENFBu?=
 =?utf-8?B?V2l6dFowOC9PS3Q0ZjVXekg3RmF2Mmt2RVFFK0s5L0Q1MmoxNUVSeW1VaU1E?=
 =?utf-8?B?SW5HY1RDbTdGQ0kyWmdoOTlCVjlZSDZhM0NUSnczbm5ObXFqdlBoWkk0MEox?=
 =?utf-8?B?Y0pRMmJacU5ST215NzB5dUlmektnRFVYZTBIOFo0RndsNGN0WlZ1Q1ZLclR3?=
 =?utf-8?B?RjBjR1BibENWTm05VjdkWHNmejF3U2VLUU5uVTY3K0ZMb1JnVXZHOG5CclpW?=
 =?utf-8?B?Z3lxV1I0SGNmdklMWEZiME1pK2ZJKytlYThrQkJSenUvU1dJWFE2YmxjdG9y?=
 =?utf-8?B?LzlXMlQrb0V3QnIyVCtKbzFtVDNlYm9RNUVWNGlxWGszZnZUdFhHWU1mYmJr?=
 =?utf-8?B?dElJVkVEK29uN1YwZ0lVMU1jdm5DSll4YXh0Si9IRk9IOEdYbldDZ1JiVWNW?=
 =?utf-8?B?bFUza0RJdzU4WDQvUVlxYm5yaThXRUo2VFpoRmhRR2xKWEo4NmRKM3hXVTRp?=
 =?utf-8?B?Y0hqNGtTYkhCVEdKdi9mYjJuUlhuOUJLUEZMd2gyMlM3dGdxT09Zb1JWQk95?=
 =?utf-8?B?WFRZZmo2eUk2OG12TDh2WWZNMzVzNG8rTlRpTG44VFdUbDltUlpYbm1ZMUVW?=
 =?utf-8?B?elQyZ0FadmwyOUxYNm5QSFlwdG5Cd29xUy9YdlB1Z0JZL0JyRi9JVWFoSXJX?=
 =?utf-8?B?MTkwM0dmWTU0TzFVNnZoaEtnZHQ0MlV5SG9IR2kyY2dZYjU3SXB5Sks0bFAw?=
 =?utf-8?B?WlF2ZUFmdXJvczcvYjBqdUZNMkZMcGFFRU9UVy9yREFMdzhqZE0vMkNRMXdY?=
 =?utf-8?B?U1NxbzNIa09rRjlPcXlVcTM0Ykk0QWE2STlmc3FJTkMrZ1F4SDhpcEduaFJI?=
 =?utf-8?B?UUZ0TEFLL3lzYXpqeXNBUWU1QU9TWnIxMnRkUzFaYUdNWHVWTzg5dGVoREhw?=
 =?utf-8?B?RTczTmhFOENmbEFTazRuamozbGtBcHduMWVJNUQzOGdzdkhEbUFML1pKQncx?=
 =?utf-8?B?VUlCVmdSWjhaWUUrOXRSb0JDL1ZueUNTdWpqaEcvelljR3NPTmg0RTVMdUxn?=
 =?utf-8?B?VnNjK2MrYTBMN1V0dXF5SklkejdONy84SVJ1c0VHb2E0clFpUjVjZlJPU1Bs?=
 =?utf-8?B?V29kMDB6QnM2aHp2alRMNVV2ZGpzenhzWUZJWElsMm9rVERnOU5SZncwSFN4?=
 =?utf-8?B?NjdTbWlScGwvMlQwL0x1Q256LzBGeTdMSWcyNkpKbFh5MjQwRkxJajhuenlQ?=
 =?utf-8?B?OU9yY3l5eUJTeC9sZ3ZBeGRmNHZQZGwwbVRDVDVWNUxkejBjWUpLMTVrbGRE?=
 =?utf-8?B?eEFhc0preHZYQmRBU2ZmMm5ERHFkcmdFMk44S0c5RkE5aGtzS2UzVkNZRTU4?=
 =?utf-8?Q?hgkL224aY44mYVxadn6X2gIqU?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59a55a07-9e5a-4bfc-f53f-08dd75c4a7f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2025 11:09:24.8132 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ABWiwM4Z9WMoA4fT+2I1x/6boCATNvtGnYyPBlM7GTBpl62SvH3/fDtK6ngsv5pjsudnBW3K5wkIOK4kNBKpsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8416
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pDQo+IEjD
tmdhbmRlcg0KPiBTZW50OiBGcmlkYXksIDcgTWFyY2ggMjAyNSAxMi41Mg0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3Vi
amVjdDogW1JGQyBQQVRDSCAwMy8xMV0gZHJtL2k5MTUvZG1jOiBBZGQgUElQRURNQ19FVlRfQ1RM
IHJlZ2lzdGVyDQo+IGRlZmluaXRpb24NCj4gDQo+IFRvIGltcGxlbWVudCB3b3JrYXJvdW5kIGZv
ciB1bmRlcnJ1biBvbiBpZGxlIFBTUiBIVyBpc3N1ZSAoV2FfMTYwMjU1OTY2NDcpDQo+IHdlIG5l
ZWQgUElQRURNQ19FVlRfQ1RMXzQgcmVnaXN0ZXIuIEFkZCBQSVBFRE1DX0VWVF9DVExfNCByZWdp
c3Rlcg0KPiBkZWZpbml0aW9ucy4NCj4gDQo+IEJzcGVjOiA2NzU3Ng0KPiANCg0KUmV2aWV3ZWQt
Ynk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1i
eTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWNfcmVncy5oIHwgNiArKysrKysN
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtY19yZWdzLmgNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtY19yZWdzLmgNCj4gaW5kZXggMWJmNDQ2Zjk2
YTEwLi4yZjFlM2NiMWEyNDcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZG1jX3JlZ3MuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RtY19yZWdzLmgNCj4gQEAgLTIxLDYgKzIxLDEyIEBADQo+ICAjZGVmaW5lIE1U
TF9QSVBFRE1DX0NPTlRST0wJCV9NTUlPKDB4NDUyNTApDQo+ICAjZGVmaW5lICBQSVBFRE1DX0VO
QUJMRV9NVEwocGlwZSkJUkVHX0JJVCgoKHBpcGUpIC0gUElQRV9BKSAqIDQpDQo+IA0KPiArI2Rl
ZmluZSBfTVRMX1BJUEVETUNfRVZUX0NUTF80X0EJMHg1ZjA0NA0KPiArI2RlZmluZSBfTVRMX1BJ
UEVETUNfRVZUX0NUTF80X0IJMHg1ZjQ0NA0KPiArI2RlZmluZSBNVExfUElQRURNQ19FVlRfQ1RM
XzQocGlwZSkJX01NSU9fUElQRShwaXBlLA0KPiAJXA0KPiArDQo+IF9NVExfUElQRURNQ19FVlRf
Q1RMXzRfQSwgXA0KPiArDQo+IF9NVExfUElQRURNQ19FVlRfQ1RMXzRfQikNCj4gKw0KPiAgI2Rl
ZmluZSBfQURMUF9QSVBFRE1DX1JFR19NTUlPX0JBU0VfQQkweDVmMDAwDQo+ICAjZGVmaW5lIF9U
R0xfUElQRURNQ19SRUdfTU1JT19CQVNFX0EJMHg5MjAwMA0KPiANCj4gLS0NCj4gMi40My4wDQoN
Cg==
