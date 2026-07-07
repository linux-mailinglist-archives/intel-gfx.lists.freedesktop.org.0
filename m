Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XZ2QCwL2TGqCsgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:50:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E0E71B871
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:50:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=eCnMYJsg;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D12C10ECB1;
	Tue,  7 Jul 2026 12:50:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A321E10E4B1;
 Tue,  7 Jul 2026 12:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783428606; x=1814964606;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=8VdCK79S6G5L6uASBeV6B0nMObJYjtDJn5zJrqnwMUo=;
 b=eCnMYJsg9xYH25H0QA/4D4HJqTTMhudzehPPoug9bvT4IPHEc60HkiaS
 Q1loD/DuRlQHwonAqeMSMnI6ApG2KSmRARnzvGH26wiRMjb20246hcPr0
 r15kKLIlbnryhV58o2YJlXo1gzHXop0prBjIc29J8LBLN2Hjk1lhW23qU
 56hVtGRl0ZhFHT1XkzhKVEBw6PzRC/WnlIQnauLDtUu/SOpl5uaN5DSao
 cHszjr7IBzZI0LaYXNwvanMCJ2p8kVlgHyGJXcM5M4ed0pO3Qc5b6Zsnd
 hgw/7shZLtKSv2BRqy73bNzr7c3oSNmI6JpqEbBr3tYlcrm9yffTEXOyx A==;
X-CSE-ConnectionGUID: QW9FjMkCTROWepzwJ3DhlQ==
X-CSE-MsgGUID: uzYgxuwpTzmw14R/4vCANg==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="94718663"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="94718663"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 05:50:06 -0700
X-CSE-ConnectionGUID: QrPK9hokTlOIC0fgaEKb3g==
X-CSE-MsgGUID: 6ET1WEHISByKC5VGtxCqAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="292159377"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 05:50:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 05:50:06 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 7 Jul 2026 05:50:06 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.60)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 05:50:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i8d/cEQh0j2aP/eesu/sS9tElE2w6MQjRPy8ueLddV45Dh7FCiBbnzJiSfJLj3jKlKfI79HubdiAxkCrcUeWrduEZR0JLpy6XnbCgNB4bm//58BPsfzlhZfSXg42QHfYApUk1EXfPKbJRAt3QsLk/ZjPNDRm8naa6+wz+vlHLzoZKtmg6ILIe1aSUDIY4bCCg0IlaVv07yYcwUE4Spp/uOdQRj/lDgHVTKnFEjemV535wirIHU4iyhwV0UqdTYgYU874nPIRb3kAyiQZHlw/ZWM6m/oYP/M/tHACNx7GeyukZEc1EKL4QcAOMUUka5KBwCmk19XO9fnfhLz+mbdkgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PtxFa/UW0AnWzEVQVrN6UvDu1Nj3lFn3iuEShp4gYtw=;
 b=WNh+Y6xIHxGcd6j3sUGBe6F99qSXdubC/Ag1wQwvNKxnf6n6SgbeBDDJ3qgl+Uubm+rQe8VDZDPDimeHMkC+tyz/YoSoQojD78goAUSHbWtgyQPnzDnwsMvgb5l87C+2AMURX2fUvpznaBfYQWATKWoZqiNopdCYZN1aWc6BfVz1cFixq4PhlUVJFNAlxSNmmHB5NtVna4u+0j2MqnWhcygiqwR2neylp7MfKiYLrxS/HvLyUp9GtjpVK1LB/8gmEWtuadfdoMUOHrjn8KzHOvzZLwfiuKiuIctKRXKc7UGXJFGz8AttA/OvaSp/Xlx1CKPhGDS981BqOELQAWEyHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SA2PR11MB5097.namprd11.prod.outlook.com (2603:10b6:806:11a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.13; Tue, 7 Jul
 2026 12:50:04 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0181.008; Tue, 7 Jul 2026
 12:50:03 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 29/34] drm/xe/kunit: Build DP link display tests
Date: Tue, 7 Jul 2026 15:48:47 +0300
Message-ID: <20260707124849.135319-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260701153204.4124150-30-imre.deak@intel.com>
References: <20260701153204.4124150-30-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GVX0EPF0005F6F2.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::255) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SA2PR11MB5097:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e86947a-e807-42d7-0e1d-08dedc2643c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|11063799006|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: duQVm5U0czW8wx0BYNAUUOQ0RxIw4Zz+1bHVcELtvwQfo7jJnx8B0k+BmD8VbjWNWco+oXuHrvnH470qG2vMwS7JAnNtLfMAPsPvPiptClFpy0y4HE3oE/GbtNrssakJ1o4Ervwux8rAKV6mNU0fk5JC5v0qI1F8h6TD4UJESjFiSOmUdsykudIoml0B0axX3hSh8c8G4mr5aBQsZmplTyOhkrSWy/LkAdEIFJJM0mknIrDg33DbVOAweZ4i9XZspoBVfpAVVnhY6ZkK/yWOtt/0CG0MVBhuISK71QpY0sIXxzmqcON2aQVo2Eegvs8O3Gnkhftu8/gLETNivHz9XlOGZM7POfDMsBANsvexAaBr7v1iX+5ycN1fN8l7cNsXmtfgYJYR76bOpf0ZecNNkylTIMyah041/tX+82nKeFTAJcYSFPXFsa6c0PqKiadR68hWq2XG20gTIl9HvXcGOAIWB3OR3DDD3kWEyGgKSlgUKzuW42f6qnH1ttajD+Ytoi4jJmih16pLfCa3BrwEqyuNyBfLnoQd4PHdxzYypUcRZS3o1G/Aou7e5cHh/UAcRbjL9xrBa/tIiCuCop19IALFw8BZ30sdeQSmtuy34CJO0Fz2TaPX+xi3pI8hIAEWkPB32avojnd9+QHw9b7oz8J6h38Rf512dHyfv3Wj5FI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(11063799006)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXRYVnZ5WThZcDhaaXdVbzI5T2RsQlNYV1dqN3I3VG1Bays0Z3BPamtXZERm?=
 =?utf-8?B?ZEdqT0F3VjlPK3hYcW1OcFBWNlgwK0dIRjRKTHhZKzEvTEJHOUdjbmdSeFdv?=
 =?utf-8?B?S21EVXgrYm04eS9Zd3NUY1RHa0RiVFQ5Vkgra1lXbkpKd2JqcmV0YU41bGxr?=
 =?utf-8?B?ZkM2VHUyVUo3U1dzcjl2RjdDdHFPNC8zTEhseFdlUlVFL3dMNkxHblJwVHFy?=
 =?utf-8?B?a3c2T3A5RTZ3ZzFKNTJIaUQ5T09YRUY0Z0dZZXE0Z2VoQXdGKzZmemwzcjJu?=
 =?utf-8?B?VDU5MU5JcFVxRm41NXhQdnV2emdXVmNxY1c1dUVoMmczSnpzQmlrVHJ2akZu?=
 =?utf-8?B?cFdBNDJvOHFxTnRoTmRJVHgzQjQ0VGhZQzJJVTY4dHpxek9FWHpIemdCY0d2?=
 =?utf-8?B?WTl3ZXJBazhhNHFrRFNhUjk1WUp3K3liTXpUOGhUK1Y3aGlocC92cFMzK2gy?=
 =?utf-8?B?dklpRFpVYm93MXNraS9reXlyRVlJTFRRUjZ5bkxUbWRGM1gvcHpaZlltb1Bs?=
 =?utf-8?B?cmVTWjg1U1lVdThaU2ZELzR6dElsOUsvd1U4SzE3OFUvZWN6NmtndGlJY2pN?=
 =?utf-8?B?dTlvM2IrS2lqVmVGZm5YNzlrWGdoZHYvWnZIQ1l6aEhsVHp5d2xWS2tIMjNX?=
 =?utf-8?B?UjZVelF6emhEZUVLcGJlT0piUVhBWmlyd0Jyc3g1Rmx0b2wxVWJuRnVMYTZ2?=
 =?utf-8?B?dnJhdFgxczRQSTZDMFc3SS9paElDRHFESWxVUEQ2YS83cGx1YWFWL3BxSytT?=
 =?utf-8?B?Z2o4MGthYmNOMGRKcXlIdGxhZyt1bWsvaTRRNCtQZ1BPdEJMNDhmc3N6a29l?=
 =?utf-8?B?ZEY0cWhET3VJeUs3MGJpMit1eDA3STY2THFwS0ZxaVJtMzVORDBxaWhZcTNx?=
 =?utf-8?B?ckwrc1RtczNLbldSSUt2NHYraWd6MEoxTG80TDlnMFduNDZjRW84ZEVqSG1a?=
 =?utf-8?B?dGgvaXFZb3RiOGxkUzlycDFlempKS0c5WWNNQlhCNHJ0YUhiQ0hNTWtjM2Y5?=
 =?utf-8?B?bjlXK2VPeFFncm94LzBRNUtBSGV0SE9lT0pZaHNOOVl6Y2ZYbHBFQ1pFWHo4?=
 =?utf-8?B?LzhBclZxbDdqSnZIR3N3MUd6cnRXWC94WTNpbFhxRCtuYTBJcmYrTzFHaGFO?=
 =?utf-8?B?enoxeTJWaHlCM1E0eXRmMmtWeDRUdzZyQ09jQ3ZyWXFXMTNnL2k0NHFnSFBJ?=
 =?utf-8?B?VEtMaUU2T3FaNnFOS2gwMWxrZUh1Z0NFendUaUhJT0Fyam9teEphWHpLL1JE?=
 =?utf-8?B?a21pb0NGTmVvbVUzL3lFY0E3RjlUUWxrNWJwVW5lM2JTVnFjakloOExEZEpC?=
 =?utf-8?B?WkhnS2ozVU1tQTB2YjNUWlZOSmtIMWdORVp0M0dRV0pXWE9TNmZVQ2ZIV3F0?=
 =?utf-8?B?QldPcGFFVFR3SXVncGZQczduMjRUSnpIQ0k4bEkzaVJKVC9STHBERzRhYzhZ?=
 =?utf-8?B?RjdtWjVFWjZpQjlPYm5EY2VFcC9ndWVENlAwbjdUWFlST1JyYzg3VFBkRlFJ?=
 =?utf-8?B?c3Q1UkVVOGlpdjQzUTIrTGdjNHVSOXFmMWxOa29qVVBzM20yVlF2QXdHZzFL?=
 =?utf-8?B?Q01zNmVWSVZMTjdQYlk4RGg4R3VkbXFwSU43cHltbmN0WEJsZVZLRGoyQmNs?=
 =?utf-8?B?VUllRjR0LzEyYlJzT201ektzMitzNFNmcW1EdVd2V0oreXBHMTJWTVJZenFn?=
 =?utf-8?B?TXJ1Tmd2MzZqYy91WGNZQjNqeHpnMFpvak1kbzViTGFKTEwxdkRQL2d6OVJ5?=
 =?utf-8?B?WWpNSGxpNHNxc1NrT0tkbDNZZldScUYvYVlVMjdOdnNiTGcwWG1oaGJLVjdV?=
 =?utf-8?B?T1NzVmY1SDVPZWVCdlVvT016K0hydm8rUncrejJ4eXhNVnJ1bERDREtzYWhr?=
 =?utf-8?B?V3dhSFFZYU55YkxuMFIvQ2J1cHBQS2FOU1BQR0pjbGRzZHNUeTJ2Q0piU2E0?=
 =?utf-8?B?V2lRQjBsTGErV08zcFZwL2RCOTIrbVBNOGx1Y0w0bW13QVBpVSttMlJnamFj?=
 =?utf-8?B?UFJ3MjcwQ25oT3BwN3gvdW9Jdm9SSmNqbVAyWlROTHNUczFNMHlHM2h5VFZJ?=
 =?utf-8?B?Qzd5b2NWdlV6ZjQybWhDODlwNDJKNTg0am1CbTZITnJJbW9hemNJVjcxQ3lE?=
 =?utf-8?B?bUNRM2xGcE4vRm96TDI0WEV6TXVOS29rODI4VHVIZ0tOQ2dhV1RnMWVBT3h2?=
 =?utf-8?B?VTNEVC9ha0N1eEtuM1gzNG0ySGdnU0ZqeDludHhhQnpyQnM0UDQrRVk4aXNZ?=
 =?utf-8?B?UHhMcXA2MGlaTnJJS0oyYXlRZStsSGNBQTQ2M21QbmE3OEVEc2JMS2xiM20r?=
 =?utf-8?B?NEFQbnFHdGFZTE9pTzNmdEIvdkRsMVFha1VZbFhwNjRyRkhJVCtsQT09?=
X-Exchange-RoutingPolicyChecked: N+lZDuLplMkZT0VBxH/xpj6s2RfgXfl5B7NdrofnHAFy+I6vgQnNBfN+ydcEcxiHzuodAZF1Reln8Jc5KKpzhsH4aeZVdaGotVxku9HyqODnzrCzjwKHYGuc1mA+LYDqKSaCQoZeHEi/yiudy02qdcN36HQ6gKfIiYGkfeoniXsW119QK1mgJ9dSJw8HiOSoWU09oDO2nNX1XaDaLnioj3QKwyPncaOrSQLncMkONGU4i3CMXX4GeGVSBMlrDCj/QgThJxx1/OHQeYZb2SZif2LozZyqqMS3IehzNfuePhyDlqrKwre8G9uZJOq9DsR5vexX2aYJcH4ubS4k/5Kf7Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e86947a-e807-42d7-0e1d-08dedc2643c3
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2026 12:50:03.9407 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7linF+Je86CFrD18AWIoU5hcUti8+cK8ZrC6TjWKMy8dnUQ0hhL4ZZEJzkG5u1/8HzCnzv3piGgAkk+W5kkUVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5097
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
X-Spamd-Result: default: False [0.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C5E0E71B871

Hook the shared i915 display DP link KUnit tests into the xe display
test build.

Build the shared display test source from the i915 display test directory
when xe display support is enabled.

v2: Unchanged.
v3: Add SPDX license header. (Michał)

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/xe/Makefile               |  3 +++
 drivers/gpu/drm/xe/display/tests/Makefile | 13 +++++++++++++
 2 files changed, 16 insertions(+)
 create mode 100644 drivers/gpu/drm/xe/display/tests/Makefile

diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 6d728f8c4c392..67ada1d6c2fb9 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -374,6 +374,9 @@ xe-$(CONFIG_DRM_XE_DP_TUNNEL) += \
 
 obj-$(CONFIG_DRM_XE) += xe.o
 obj-$(CONFIG_DRM_XE_KUNIT_TEST) += tests/
+ifeq ($(CONFIG_DRM_XE_DISPLAY),y)
+	obj-$(CONFIG_DRM_XE_KUNIT_TEST) += display/tests/
+endif
 
 # header test
 hdrtest_find_args := -not -path xe_rtp_helpers.h
diff --git a/drivers/gpu/drm/xe/display/tests/Makefile b/drivers/gpu/drm/xe/display/tests/Makefile
new file mode 100644
index 0000000000000..c716864580721
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/tests/Makefile
@@ -0,0 +1,13 @@
+# SPDX-License-Identifier: GPL-2.0
+
+subdir-ccflags-$(CONFIG_DRM_XE_DISPLAY) += \
+	-I$(srctree)/drivers/gpu/drm/i915/display/
+
+# Rule to build display code shared with i915
+$(obj)/i915-display/tests/%.o: $(srctree)/drivers/gpu/drm/i915/display/tests/%.c FORCE
+	$(call cmd,force_checksrc)
+	$(call if_changed_rule,cc_o_c)
+
+obj-$(CONFIG_DRM_XE_KUNIT_TEST) += xe_display_test.o
+xe_display_test-y = \
+		i915-display/tests/intel_dp_link_test.o
-- 
2.49.1

