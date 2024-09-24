Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 933EA984C4D
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:43:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0381710E759;
	Tue, 24 Sep 2024 20:43:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KoBaage3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3119E10E751;
 Tue, 24 Sep 2024 20:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210594; x=1758746594;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=phniMjitfejZZDaldjXsGhAE4sUC2dvPGAZsZYzZQx4=;
 b=KoBaage3aXjQML+GTvdRBnbTknS32URjFbSG86f7YaSNwWwqSYq5kN44
 xwgX79iX/XGht6xLwydzUWqs5t2JWBUiwfhlcV3HZctyyyhXEPM27d7Jb
 c849Je5jcbOjcf8MYkiXh8CK38DoNgUIcSDf+egMzgnTZ3DL3R6csvXmv
 AwLg0taJgORzRYA0aoP7uEpyKhehHDszI2UeOhJHUY13K6V7S35LXGs7v
 Gdch5ft+iu/Esf56DWna8tjlJ7qj8cpq2IRsaIqmKf/gdT7fX+gxAZqzG
 Pge4k2wVFdVK08+E7B4VgC4JRc+r3p66dJLQxRrj0uQCweDYWojo01e3X w==;
X-CSE-ConnectionGUID: 2+Q/sX9GQGW1icPPYYA5cw==
X-CSE-MsgGUID: V0c28AHHRwWNeNC83TPBAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43751529"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="43751529"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:43:14 -0700
X-CSE-ConnectionGUID: rodVoO/wTiySJDwpZf4F2A==
X-CSE-MsgGUID: GoaVZQ2wTZOEL2JlGqbbnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76298750"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:43:14 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:43:13 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PR901fgq3B98tcqqpVlsL7GZScnCCR7qps1HWlTnImVq3opMl+ZkFVYiBZ+/vpJGecRjsB7g+Xfc8qbO7rR4z6CKcyrikpg9v+QUI5WwcnUiIIFK+zmvYFtdVPr6cpKbnBDUyl+2MgOiK1hBspS/JbGjn18SCSHezB2+TPZOcLuo7bmvkgDU7YzBDYuVrIUK0fG0r9IKVnIbE+E1ZqYnyzU0S/PVVodSlXkW6Kem/dgfMd1uhqBafH8Touw7B4LXpQG3w9CBqi0RDh/nCXy11ayNo/Ru8hihNAuinKESjpgUMKlf/nsB3n9NrDyar9i0SXZWUrO3xTn9asqWzTOiEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n3/Na56EwyBxFmLYxMxfy9HHVADhaAmSptVoBJMLgSg=;
 b=OebFKTZYOMbUXfxbBYJOy6V58aC4WMIuOk89ZhCn5aV1oS9J3ISyIxjLn0VxWELp7jof9y/5F9PeC+InJwOsDv0QDWeVMyheydOz1/MybXeCtUVNzNKdaGhVpthUinrAkKJ+nbCFOSylPSPlhG7Ou/dIuohmpQytWoawlbq4klvRNuwFwX1jnmoOVsVfX2cKi3G/Ji2/FZfrPc39CLPqhpADVyHRiK+aWnUzl4p6WfM9Px/HsTQwXKwn796zoyO3JJttaI8ROoexoPy4lDu3xMlRzcgL8+tDkK7yKVmfHWY6X7XnRy0T+lcDxJNaSMckJy7Ld0t9Ds0roeDDsjOvfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 20:43:10 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:43:10 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, "Anshuman
 Gupta" <anshuman.gupta@intel.com>, =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?=
 <ville.syrjala@linux.intel.com>
Subject: [PATCH 12/31] drm/i915: Remove lingering pci_save_state
Date: Tue, 24 Sep 2024 16:35:33 -0400
Message-ID: <20240924204222.246862-13-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0327.namprd03.prod.outlook.com
 (2603:10b6:303:dd::32) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB4965:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ed28cfd-781b-4ec6-866a-08dcdcd98099
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MjVmcTRyVEVOdi8yU05LYitVOWZkdmE1ckNxMk91QTNxeGc1bGtnMW1uQ3dE?=
 =?utf-8?B?WHZxRjk4Y2h2ZGNUYTZJSU5sdW1TUlYrcTNvM2hHQmQ3dWJnanFaSjg0ek5X?=
 =?utf-8?B?YTRMd1Nkc2lPTzVVZ1JBVXAyc3g3Y0crLysza2lyalErT3dMQ011QSt5aUlD?=
 =?utf-8?B?azNrRnNIajhyQUMxNFFtcGpiQ3FmbkdiVUNlYUJmYTNxWTJyN3BPcFMwVHlq?=
 =?utf-8?B?cFhnNmtGdnhzZlBUUWdNTm5JTDBGWnN4TDBiSnZCZG1Nb1psR2oyQndzazE5?=
 =?utf-8?B?bGxkZmdWM2NZSnVqVUJvZEg5VDN0MXA2WDBaZkc3RUhnQUxKdUg3c21QZHlk?=
 =?utf-8?B?ZEoyV2lWcVBxQ1dsM29lS2xpSHNaUVVDRGx6ZEl2cXhBUTNqWjNiUWxVRmM3?=
 =?utf-8?B?WWZSR3pIa3pORU1aODhEcmhkR1FrU1d2aVMyUWxxa0QxakM3Y2FWRWI0ZUNw?=
 =?utf-8?B?UjcxRFBiOEdGYVF2cFNzR2R2Y2hoR1kvYjdFc3VGdEFxUlU5K045U0JJc2VW?=
 =?utf-8?B?ditZRlJzSU9rMjl2NUJSc3A2eTFRVmVUZVBrbWxTTUdMNUxITTNMWlB4ajRs?=
 =?utf-8?B?VHlGRkhHdy9URXBzSm1lQVRBeDY0bWNHR3VJcEYrbmRQUkxDMndTcGlzTndZ?=
 =?utf-8?B?R21vbFkxMjlRUGJWaWlXZ3FDN2syUk9uM1Bkb2NOSk5MSERRaVJydk01b2hh?=
 =?utf-8?B?Zis4aXphemdPMFVQSGwvS09KbnkvdU9rTExxOWRUYkJyNmZYYTJ4NEIzUUhV?=
 =?utf-8?B?RmNORzJXRENhcE5JR3ZEWHppYVJkeU1TUm1UeGpVZlJmRGFieVZBZURUb1pO?=
 =?utf-8?B?Nko0dEprOStDT2l5bFdlM3RPalVTdmkvdjI1aVlXMnZzZ2NoNmhIUnF5bmdv?=
 =?utf-8?B?ZHhXeGczVVEyOEJUMithUFFHQ3l4ZXZsdTZNMmx3M1NwelpVUUNhTWtSRzBI?=
 =?utf-8?B?SVlMSzZOdUVzVjFCdkpwaHVnT1pYMHUzeWRnUGEyVkJuVzQ5eVVha29qNHY5?=
 =?utf-8?B?bGQzZzVobFROOVBTY1dmVUtoWUQvZGYrcm5TRm8xUkRBVG5NMDQ4cGxYaVFJ?=
 =?utf-8?B?STNyY0w2ZDdWaXRDNWgvcHgxczgzZU56RHk5TnBOeGRoNUorQ1B6UlpnQUpT?=
 =?utf-8?B?a3BVSWY3QWJGNGNjaGcwZjhsTnIzTHZoUzBKd2xtOSt6aFVtK2FnZEdrU0dG?=
 =?utf-8?B?MktRREZIUDlETjM5NWJZWVZqemoxbFM4Y0FNcTlYZFNkd0VhbUd3MTRZT3c1?=
 =?utf-8?B?K3BrbGx4Z2tVTEdqOTVQNDRxNEdscjEzL3FjcGZtMjRhNHZQSndPaGtFQ0Uv?=
 =?utf-8?B?TU5EUW12a2NMWVZld2RQTnhmcXl0YmxIakNmQXU3SjlVT0wvYUZldWw3bERh?=
 =?utf-8?B?Sk13WTB5ZkRBZWxzV21rTFRzTjNVczhoN1pSV1F5SEw3eExKcFFMRzZsOHdo?=
 =?utf-8?B?MjRTR1V6U2trczMwZVBQakVqZnd6NkplZ01WVU9CYVloVyszd1llV2hhditI?=
 =?utf-8?B?ZVRSdEwzemRwY21ZZjVRbFhRa054MHR0YXNBT2xzR0FSdHZMRzBWOGd5T045?=
 =?utf-8?B?cTJjN0VIRk5FbmR5V0xGYVlaeURzYUROVHhSNDNjRm9ncC9NdTJRL2ZvaHhv?=
 =?utf-8?B?aHZreXlFV21rc3pKTjlULzllNEVWQmFMSHB4QUhuVlpUOGFDdGxsZVZrcGRq?=
 =?utf-8?B?K2xGSlpicTQ4WG1ib05uNy9HTzdnWTBEOTBJN1ZDZHg2aGo5dVJJdDRBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SlpHcU8wclg1dXFZRXBJcE1paGNDcE1JblJidzZhMm5FZ1V6S1luNzBQYit3?=
 =?utf-8?B?bVBnN3FzMzQvWlUxVTdzK0lDYlFVOVJmb3pvTXRmTHR1aDZmU3JpUmorSmZq?=
 =?utf-8?B?aTFRV2IrRnhHQ3pFVUhlQWFmRTM0RXpPTFdaRFpNRTEyT1oxY1JGeS9laEFo?=
 =?utf-8?B?RzZ5ZnVMbUNqYWpySjNsem1JQWNJQnZ2aUpiMS9qVTV1Mzc5aUVyY05HOUQ2?=
 =?utf-8?B?ckhlUi9SZkZwNkJaTTB0ZHJJMEIvM1dJYnFZeHlqbGJ2K2RMMTRVdk1KQWlv?=
 =?utf-8?B?ZHJBWEJ5SzJQdW84OHU1N3RTNVF3V2xoa1RDaS94T3EwR1dpU25tYWxrOTFx?=
 =?utf-8?B?djlxZHVvbC8vVUF2WU1ZTG5xUVJIaWJHdCs2bzFKN3dsUlczUjhWSU1ybCtw?=
 =?utf-8?B?SzlmVk5NcmtpcndZY2JpcHhENllUZnM1M1E0aThVa0dlT0g3QS9iSE93TTEz?=
 =?utf-8?B?NXdUZnNLM0NwU1VHQWxTMVhJZVcrUWtleWFSRmtKN2xpUCsvVFd2V0hhOXJN?=
 =?utf-8?B?M0RmemV4YkNKWWZnSkl3cTdudEhHVzVWd01mWm5Kb3lnSUxMVng1aFQyS3Zh?=
 =?utf-8?B?THZIMUZ5QzU4Z1JtT2dFUHVhd3BzZW85c2EwODF5WkdoZlQreVp5Z0VTNWhX?=
 =?utf-8?B?QmgxbEVGNVd6NkdNMkNETkI5UHRqcjQ4YnJyczY5cmZHa1ZmSjAwT1M2RWtZ?=
 =?utf-8?B?QklydXc0Q3NvMEZSL2pvcldWQXlTS2YzZ01YSldhQUpmNTRqRTgzTDZqNDBP?=
 =?utf-8?B?aEk3V0JyQm4zTVhXcmhwOVJNRjFKczgzQkd6MzNwMjZHSnBGaXZFWE9weG9H?=
 =?utf-8?B?cWcwY0twQlRNL0Rab1V3SFcvaCthWU02WHR2QTRiNGFZNUx0VndpbXlhTFlF?=
 =?utf-8?B?Wk4vNHFkZ1hNdy95aGhMWXdOQ2cxRDY0dC9RT2RGOUI2LzFVeTloQitRUEdP?=
 =?utf-8?B?QTlVU3k5b2tKU0pjNGpuNHlUZkdvRS9ZbFdxcFZjZk1BU0dBU1l4OTRQMVkw?=
 =?utf-8?B?emprZEZ2TVNMM3gwSlB1aFFlcEZ1ZjB4cDBJRmVLSTFtSDQ0RlZINFFMQW9V?=
 =?utf-8?B?aGpISjJ1L1lIZzgzZDdrTUhRRjd6UUs5TVdWcW14SE1VM2NnL0FPT0l0UmZX?=
 =?utf-8?B?MDhFNDZVTnpxM0k0d1BpSWM1ZnVsbEx0Zkl3a3h3TVpESXRma1MranVDeDVB?=
 =?utf-8?B?N0hHWkpxMk1EYmQzSm1KN0RyT1JQK3FMR0YwWmpqdTF5eXlaK2l2RkVMNTFN?=
 =?utf-8?B?UW1oRVEwWE4wQWZNQzZGRVNLOXFsUlExTHZXY3JUcXlDZ0hxaUkvNmd2SnRS?=
 =?utf-8?B?MW4xT2FuU1pGVUwzUzY1eUgvUzQ1TVRWVjcxTVVyUUtQbTZBeWNKbXBVSFVv?=
 =?utf-8?B?NTdORGYxSkVMaWlMY29mS1huVGNjRHcya3ErSHBTZDRHSnF6V0xTQk9TSGtH?=
 =?utf-8?B?Mzd5MXZaMGRKeDYzUi9BTWpxU1JFYnQvL3BMODBoRE9MZ1d0OEVxUXNuZXRi?=
 =?utf-8?B?SFBBWjNDNTR3UUFXZjRVSWZiSVF6MkVsWXBJeDJDN2ZCUVQ1akhIS2Z6Vmpm?=
 =?utf-8?B?dVdsaDlmcWJFbDFJM0Fkemo0WS9VS3JhRitQR05weG04cjVWSjdVVWZpaVFt?=
 =?utf-8?B?WVpIMWxENzU5Vk9QL2pPTFA1SVFONXI3Q1V3NHRGSkpkVDZ4NndmcGVKM3JT?=
 =?utf-8?B?SEkzc3p0aDdQTHFDZWEwZzQ3a294M2dFREdpN2FSK05MTzRVRFJQV1NIWFFX?=
 =?utf-8?B?OUhxb1lLaGFSZW5hM1NvY1hsemtqMWdPK2U1cmdBTWlvY2J0OE9OMXV4MDh4?=
 =?utf-8?B?cGxtT01RekJSYTdpZS9mdE9JNlZtSlZtZGVKcTRmNm1KKzd0dTNUVFpmaXJH?=
 =?utf-8?B?ajhWS3NyK25jcVoyN0U0VGcvWHgxNHRwTTRQMmZNcXNma0VKQjJkbmFlSDRz?=
 =?utf-8?B?N29WVDhYQ0ROeHhRaHIxNDBWY244R2JDRUQvbmN1S1ZDL0lrN1NxVDIxaXA4?=
 =?utf-8?B?VDB5RUgrdmcvUEdrbXZsVGZ2eENqTVRsK3dGZUxtN1FuTWU1VldWVHFzUWsz?=
 =?utf-8?B?RUhqQXhhT2NzWEhLbkZ0Y3hQZ2F1ZnlxVWhkNTYrUytrVndtTVlqTnRJMzVS?=
 =?utf-8?B?YWxmempNc3Fia3oxMTJBSW9iL3htL2lNYzRzUmpqU1kwVGRKQXdvVUxwWlpL?=
 =?utf-8?B?SWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ed28cfd-781b-4ec6-866a-08dcdcd98099
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:43:10.5558 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /n06o7i9wRRNV1h4g0ZDVoHVmLCMH7XNR5uIyIZ3b62+sTywkLfpU0mVk8dIepjqjcDRjzXfgNXwqT8ktLbcNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4965
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

The pairing pci_restore_state was removed by commit
'b7e53aba2f0e ("drm/i915: remove restore in resume")'
to fix a hardware hang in resume.

Furthermore, it looks like PCI subsystem should be taking care
of the save and restore here.

Remove the lingering/stand-alone pci_save_state call.

Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index ce2dd03136d3..4fc9d8bce1fd 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1008,8 +1008,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 		intel_display_driver_disable_user_access(dev_priv);
 	}
 
-	pci_save_state(pdev);
-
 	intel_display_driver_suspend(dev_priv);
 
 	intel_irq_suspend(dev_priv);
-- 
2.46.0

