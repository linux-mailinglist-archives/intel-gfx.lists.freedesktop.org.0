Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9DDA38D00
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 21:05:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D028410E5D2;
	Mon, 17 Feb 2025 20:05:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YnjUvYMt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97F6F10E12E;
 Mon, 17 Feb 2025 20:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739822745; x=1771358745;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=b/5Jp/SX1anHxyX2HEZLtPGmlANRQYHMVF7V4kedOks=;
 b=YnjUvYMtKM6adBYbp9AlUhlmcUwAMMe8UOZ6d2XgwsIWVzVW1Ot5zdjX
 IkE29+8JiLNyeWqpmypVuYgtF8gl4ZPYjgG9L6ePJmNJVUHo56XqIZI1a
 3O160aHPqOKuFU8vWsby0hzuuF4TXdEOLFcURjTkKwER2WWfo9HxowHs6
 ISZw0DMJRusi3Tyy0F/DHSJ4scVH94kGEGptB/v/JMxy3D1+i36HjFwFR
 MN5l7n44jm8QlWqpwZizNC07IRWa8tFOYVKZwSilXcjTEzkx5ZCRT4tv8
 bj2s7bkLfIqEsR9DpjSfSzKzZAtI6HVWArwImpx956xtNqpS1deCGYbsN Q==;
X-CSE-ConnectionGUID: pF1HV5vhQki9ScJIfidSgA==
X-CSE-MsgGUID: ADuKjweyTHKQ5gcQRG6h6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="40376980"
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="40376980"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 12:05:44 -0800
X-CSE-ConnectionGUID: ShPKGmWkQACeRzhx3sW4Tg==
X-CSE-MsgGUID: wNGwVim0Rny40IUf8w30bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="119126770"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 12:05:44 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 17 Feb 2025 12:05:43 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 17 Feb 2025 12:05:43 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 17 Feb 2025 12:05:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hXJzTx84FO0zV8PIOfK8I2pjVrIoYXVKUBC80N2hfNt1wC97LW/jxl3gP5oa7WzqFOzSeAuQZRCtjgE3Sn/CbK8eHAFxqAkxVtiXk30aQgQUbIlx/4j/fpw2lh778PzuKuWrtWRbyoDfpfdk0GYrnzDoXjUhygFffFlDidHodhrglJYPK7jn56+6771zY/2vsioA9xVivJJG6OVGADSryhmmtyPjYpQjSqBzJ57QqfcLOcL41Fp1rxy1EBKRHMq2ukHBLTnQ3CK/CqGUFrOLF6HTfJ5uJqtf1aZCJovWq1PdS9NRyCBuGrA9UiAzUY45SLlG0Fg/WRL3IpmHlB94Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8fQpUqRR9NEqSmnucFa3S03kKsxLvbDKQvzRkURgb08=;
 b=r+epBqZUJN/j1GiNyk2wxwslyUspXyHh70RF88O3LmUXuygO/bEGn/8KeSvefomSUcZqMELC6gyB9LLUt/sDu+ZFtezrfIowY4l0GbBiEROZGlZyolhnccBwUkjg9UduWlh6UWq/FXk9KFPrmFWF93dFwymfcZFWwzTRrXZxTvVOVaXpwGsXO/VjLYz8tyX31lX7smwNT41iiA+zPw2KqGmhdJtyskpKu7DtoTiKjzBpC2TrmP6ClPSc5cNEWyteLBcUuBpydeawGHvN5UiNtj2DWW1qMp7i+ERhHxXrUuKB2aHmqDyZp7nmDwos/3MdS4P+mYEYXnjPWk/BnKNwLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ0PR11MB4880.namprd11.prod.outlook.com (2603:10b6:a03:2af::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.16; Mon, 17 Feb
 2025 20:05:39 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.8445.008; Mon, 17 Feb 2025
 20:05:39 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z7N1h5KwKChOf7iV@intel.com>
References: <20250217153550.43909-1-gustavo.sousa@intel.com>
 <20250217153550.43909-2-gustavo.sousa@intel.com> <Z7N1h5KwKChOf7iV@intel.com>
Subject: Re: [PATCH v2 1/3] drm/i915/display: Use display variable in
 intel_bw.c
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 17 Feb 2025 17:05:33 -0300
Message-ID: <173982273381.1836.14753842719891424686@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0291.namprd04.prod.outlook.com
 (2603:10b6:303:89::26) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ0PR11MB4880:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d186ca4-02d6-4c3a-485f-08dd4f8e7337
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZjdDSDFpN2YrVVB4WlM5TDFrTzlxK1ZRZ2RJYzlnZnFEZGpuRm9XOFBGbVl2?=
 =?utf-8?B?bWhBM0o0clVKSWpibXhxemVsOGlGK2Ivd3RYUnB5SzA2dWRDQVdQZFdVMVh3?=
 =?utf-8?B?UHFPcG50RGtUOTc1YW4zU2RYWWxTY3ZjR3NwTVUvYms3eDNUY3BjTkpmdTZm?=
 =?utf-8?B?d2VIUVJIVndCcEZQbnlpY1NOVHZqOHRUZUQwTzYwdjduM3lvOXo2Yk5ybDhL?=
 =?utf-8?B?RGpPVU9jSWh3dHpKTEVQUHpLS1VkZmxURE5BQ04xaS83L3pqUnBBc2xJdm9G?=
 =?utf-8?B?SDhnR3dKMXQvVG01MVl2cjR6cysvUjdTWXhFd0ZNempZRWx4cS8yalpDUk5t?=
 =?utf-8?B?enFadUpLb0NidHNOZHZjZk9sUllRN1EvUjJIRHM2VnljWGRWd01VcDBsY2pp?=
 =?utf-8?B?TWpNUWVBdkRVU1hkbjFDNy9yTkJDM240OEVpYlhjdjBldk5lSFZMS0pSMXh3?=
 =?utf-8?B?U3p5K1h5cUgxZzdMQXlMS0RSeGtvQi9QV3h3ZUl1T05CNm84bXhBU1ZMNUlq?=
 =?utf-8?B?YTJJdGxkKy9XbkY5K1BoSDBHaGxGcUVMUk80MW04NCtIRmxEbElGd0ZOdmdW?=
 =?utf-8?B?SzBQSk5uMXhUbW03WllGZzRNRzdkK2JEaE9BNXVQWW56VFVXcVV4cHQxTUxJ?=
 =?utf-8?B?K1ROclJtb3pwTDRtdkJoSXF3NkM4VzFNSHNobEVEREdTMlRrVFFOelMzZmIz?=
 =?utf-8?B?ZE5BWnNIV0JJU0V0T0J2NnFvVVZnV0NibEtnSVdQWlA5V1dqQXNKU2tobkpp?=
 =?utf-8?B?amdMa0JjK04wQ2hJUVBGa0tSM3FUS2RvYUprYTV6WGVPYjhOMkZWdlJiSHlR?=
 =?utf-8?B?Yy9XSlJxY3NpVDNXcWM1SllZTkdLR0pTdnd2d1drVmdSZ0J1bm9EQngyNFRW?=
 =?utf-8?B?L1A3MGZmKytjYUpleDBDelZWWW9YaDVjL3hMNnZ3RmVhR2VhTHcybW94SmlI?=
 =?utf-8?B?OFlBNk1ETHB5RWJIdUdkSjNzVDJVaEJZMVByUVhkM0xRQmpNK3BrR0pNdjVB?=
 =?utf-8?B?OGhrNHZEdXMyckNad1FsNTl6YXhNQTUvakNDV3UyVHFrSTl3R1JycFdhVnBR?=
 =?utf-8?B?RFlNTndnN1lkOUFnNnZ3Q2RaeFBjQkxPRGs0RTlZaXh0cnVlOUFzNjFVS29o?=
 =?utf-8?B?Vkd2Z0xOeDJVVFFVam5obURrRUQ1Z2pHZHNBTHFnbjFKT0IyNUtBdDkzV1Uw?=
 =?utf-8?B?elpYdEZzVVkwSnFtaTdyUWk3Lyt1cElxYnVaZmFHZXpja3pMQytSZUVDWTdq?=
 =?utf-8?B?L3lwYkcyQ2hOQ3BFYkxkMTluTFUrSWt5ZHFwdXl3Ym8yMWd0SnZNZUMzazly?=
 =?utf-8?B?dmxjaDhjZmxxcGZaL2V2ZlI3MSs2azZ6bVhodmlmRGEvelRwZUtqUnMvamdZ?=
 =?utf-8?B?TSthQzJQbWFDNWx1SHRzZ2p1YkphUTZvS3BZdkJpRjA0aEFaNnBKNFhuZU5h?=
 =?utf-8?B?SVRqTkh6dnJDSkhRWVRUUnBscVJnVnE5YmdLcnM0anI5dlhrMnpNVzNUNjdI?=
 =?utf-8?B?cGVDWmJacVhqVlUzOTBMQ0wrRGlRaDA4NUI0ckhydEpRN2k5NCticmtPSG14?=
 =?utf-8?B?U1hhT2dqVW9qUVhRaUJWaWRtVDI4ZkI3Vjg5WHUxVEZJcTg0RkdiYVpMZ2I2?=
 =?utf-8?B?TVRWeDhwYnRqZ3BEcnFRRkpqSVNucWtHSFhPUnN2TWpNakJJOXFtZ04wcTNx?=
 =?utf-8?B?QlBER0VlS0hCeEZtOElhbkwzUG9BSU13SUxNSWgvYlhIYkR2b05HRHdZd21Z?=
 =?utf-8?B?dW45VTlZclh5UE8zSEJ5WXpndHlNRXZ6MXZyaCtLRWJwSGJ5WmZmQm1Lam9H?=
 =?utf-8?B?ZlpSSjBielJMUjlhRm1hd2N3QlNoZUVQL3ljWStjSlZrbE90b2VVZHNGSWp1?=
 =?utf-8?Q?vf19wKQEzfGbL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0thQXFsVyt2NjhRSXdpRllJQ3ZUWlRpaS9wSFAwZjJ0TkU0d1dqZitYcGVj?=
 =?utf-8?B?TU5Ra1JLcmhDM1lpd1FtaVZybStMdFNrQmV2WjRnQWhUb3pLZ2pQTW95SWl1?=
 =?utf-8?B?QlR2d3ZsbzN5b1RneXZsa2FkSlNmTW14dGNjdFYvMUdFeVowVnIwY3lWeFQw?=
 =?utf-8?B?NkVOS3BqSnZ6Qk1MV01IeU1jbWdBbC9Nd0JjRjEvOXVwbGVGZ0ZFOWhVSFpt?=
 =?utf-8?B?OGhqL1pRdHFxZmRzNDZOYytLenc2SXlMVU9zMmhkdmRDbThnYk5MSUd4WVV4?=
 =?utf-8?B?eVhNcG9KWjl4dGViTUNTMDlVdm1acTRJcnRja3ArNFE1cTVRNWhqTnhocU9t?=
 =?utf-8?B?KzhsZW9PUFZHbm0wMmFMdkMzOVBWRlRFR05aWU5IYnpXVnRUN2lkNFY5QWtj?=
 =?utf-8?B?d0hFU0xqZHhMSDJOcmJkRjlSNHNtKy9nVTNudlpxT1NkblQ1c3JnSGc0U1gv?=
 =?utf-8?B?Uy96eXZqWUZvQ2UrY3V0L3dRM3NOaXpyVHd1aW9ib2RoMldPVGVlaFhsUGt1?=
 =?utf-8?B?MXZadGxPVVpuR0VDbjZGWHZmU0R4ZmNXcUZsUHNTT2YxR004LzAwMm1HV2RJ?=
 =?utf-8?B?emxOSkNwZ0M4cmdpdEpNTThnMHpkZHROVmZPL2NxMUQ5TVptUkRWamwrRDh5?=
 =?utf-8?B?V00rNThwUVJIZnplRFhhOHhiNnNlV0FPYllUVmJ6S0FaRUZQSExMb0h4aFdM?=
 =?utf-8?B?V28xRmpoZllCYlhVNjVvSVQ4aUQrTFBVVGprS3orYUx6bVdLUFlENzNoa3Qy?=
 =?utf-8?B?dTVXaGIwUzRnM1pMSmlWb0hVMmtPN2xFSjJNc0xOWTFzeGVHY00wUzF1THQz?=
 =?utf-8?B?Y0J0cGNGbGRsZTA4WDZSQm5EU2hDT3JvOWdrQWdPREUwb1pUNlVqRlFpenl5?=
 =?utf-8?B?bnpVUS9sSnozK1lkVEFOSVlENmx4SWcxZUxIWGxQdGd5WGNHczRsazJWNXhv?=
 =?utf-8?B?Z3lteGNMZDgraFJ1SU9PTTMyZTNycnNQTXZWUzJJZWcrMWMrVUZ5M2JBRi9h?=
 =?utf-8?B?V2lGeWlvbS81QTlTaW90bUJKbXdld0tjdEJHb1lVTC96QVYvMU5mZHV2MzVV?=
 =?utf-8?B?QTBLc2ZrNVR4VllGUHRSQ0FZQ2Vsbld2czBhT21JNmcyRGVXaDF3azBpMWN4?=
 =?utf-8?B?QmY0ZCtWN3NXOGEyU3h2aFNiN2RPaFlaSWpmK0RldU1ZUTVaQmt2RjlvTEdu?=
 =?utf-8?B?ZlYvMmM2SEkrM1M4MlBwMHJseW50cVNXTWI3WUJiMHB6aGdwczJCRFU0MEk5?=
 =?utf-8?B?QlZqMnhPUXB3dmpBa0N3akZNRjJWeWVWYjR0TTBHWXBlVkJTTEZobEU2aWUz?=
 =?utf-8?B?OG82dEt1MDRRZWJiNzNHUWc3cWJpdkp4OW5iTVM5Wk1najZWcGpKd3U1cEJx?=
 =?utf-8?B?VVpoTUlHNFVxWGxrdERveUIvU05ZTElVU2xVTENIQWNiM3luVzdtQkxUMlhp?=
 =?utf-8?B?VkZmUkdVWHhEQnhqRHJDejZ1QmtvOHdkYnh5eEJFTjVETEE5YTFUdlJjUTk1?=
 =?utf-8?B?UE4rWnAxaXlUWEl6K2VqNTNydHRrU2MycnJOYmU5YWtDSTdHTzRNakYwcFVa?=
 =?utf-8?B?aitiWXdKMDVUSGxiYk1yK3V6ZGJzZDc1QStYTGtMNjRDL0FvK2RLWnc0V1hJ?=
 =?utf-8?B?bi8vVktTVVRVYUFPcnRVZjdrc3IzSjNpdWFiVHZMcFQyN0s2UTQ3cmtpbUFa?=
 =?utf-8?B?THcyeUh3ck14ZzEyYVE4ZGh5WnJKb1AyeVlJTHRYcnkwQ0RsRVFTNmhKNjhP?=
 =?utf-8?B?MEtnQzVRalVqQkU1ZlhWOUlISWJXNGhhVDZxY2UzZFNnTStEYnRIQTcvNEF6?=
 =?utf-8?B?VVg5UkpGY3pJQmRveW11cWYyallCZ3pWTWZveWViVlcwSGtsQWpYaDYxdEs2?=
 =?utf-8?B?L2h4V2ZLaGQzSGpJTE1SZTc5TTl6ZlVLeVY2YXVPUHpEMVU2SFcrcER6dkRo?=
 =?utf-8?B?VnM1NGhwMGRnK2tlQU8vK0dYU05mMmpyR29ONi90dW01OCs1TzZaaXFPeThs?=
 =?utf-8?B?Umo0RlRXSTVRUWVjNkROOGFVdS9odU82RXVINmVuSk1wSWpYZE1DNjRIKzRL?=
 =?utf-8?B?TmMwRksxblJ4RjFhUlV0RGpZdjFoODdjcDJPRzc4T0JXdHVRU2xlSTYzTXcx?=
 =?utf-8?B?dFdubnhJbzhPd1NyUEZWODVWUWliYVdrcGtLak95Q0FrUFpuNG50WDNPaGtC?=
 =?utf-8?B?ZEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d186ca4-02d6-4c3a-485f-08dd4f8e7337
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2025 20:05:39.7372 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LAmP6Z290FqPhTxLe+4MDxo0mgtOPpHj0KEFxgF8WOQpoG3qUP6eZWQbvEt9Pz+Bx1eT4nZQSU9fXkstV794SQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4880
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2025-02-17 14:44:39-03:00)
>On Mon, Feb 17, 2025 at 12:35:23PM -0300, Gustavo Sousa wrote:
>> Update intel_bw.c to use a "display" variable to refer to members of the
>> display struct. While this change does not move that file to completely
>> use struct intel_display as part of it's internal and public interface,
>> this should help with a future transition.
>
>Is there a particular reason you're not converting the whole
>thing? I'd prefer to see a full conversion here.

May original intent was patch #3, but then I thought I could help with
the conversion with patches #1 and #2, since I would be using
DISPLAY_VER()...

I guess I was just lazy in not doing the full conversion :-P

How should I approach this? Would you like the conversion in a single
patch?

I think maybe adding one patch after #2 for converting the internal API and
another one on the public API could keep the series easier to
follow/review.

--
Gustavo Sousa

>
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bw.c | 106 ++++++++++++++----------
>>  1 file changed, 60 insertions(+), 46 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i=
915/display/intel_bw.c
>> index 23edc81741de..0fb41e6cd8ae 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> @@ -124,8 +124,9 @@ static int adls_pcode_read_psf_gv_point_info(struct =
drm_i915_private *dev_priv,
>> =20
>>  static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
>>  {
>> -        unsigned int num_psf_gv_points =3D i915->display.bw.max[0].num_=
psf_gv_points;
>> -        unsigned int num_qgv_points =3D i915->display.bw.max[0].num_qgv=
_points;
>> +        struct intel_display *display =3D &i915->display;
>> +        unsigned int num_psf_gv_points =3D display->bw.max[0].num_psf_g=
v_points;
>> +        unsigned int num_qgv_points =3D display->bw.max[0].num_qgv_poin=
ts;
>>          u16 qgv_points =3D 0, psf_points =3D 0;
>> =20
>>          /*
>> @@ -151,6 +152,7 @@ static bool is_sagv_enabled(struct drm_i915_private =
*i915, u16 points_mask)
>>  int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
>>                                    u32 points_mask)
>>  {
>> +        struct intel_display *display =3D &dev_priv->display;
>>          int ret;
>> =20
>>          if (DISPLAY_VER(dev_priv) >=3D 14)
>> @@ -170,7 +172,7 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_pr=
ivate *dev_priv,
>>                  return ret;
>>          }
>> =20
>> -        dev_priv->display.sagv.status =3D is_sagv_enabled(dev_priv, poi=
nts_mask) ?
>> +        display->sagv.status =3D is_sagv_enabled(dev_priv, points_mask)=
 ?
>>                  I915_SAGV_ENABLED : I915_SAGV_DISABLED;
>> =20
>>          return 0;
>> @@ -400,13 +402,14 @@ static const struct intel_sa_info xe2_hpd_sa_info =
=3D {
>> =20
>>  static int icl_get_bw_info(struct drm_i915_private *dev_priv, const str=
uct intel_sa_info *sa)
>>  {
>> +        struct intel_display *display =3D &dev_priv->display;
>>          struct intel_qgv_info qi =3D {};
>>          bool is_y_tile =3D true; /* assume y tile may be used */
>>          int num_channels =3D max_t(u8, 1, dev_priv->dram_info.num_chann=
els);
>>          int ipqdepth, ipqdepthpch =3D 16;
>>          int dclk_max;
>>          int maxdebw;
>> -        int num_groups =3D ARRAY_SIZE(dev_priv->display.bw.max);
>> +        int num_groups =3D ARRAY_SIZE(display->bw.max);
>>          int i, ret;
>> =20
>>          ret =3D icl_get_qgv_points(dev_priv, &qi, is_y_tile);
>> @@ -422,7 +425,7 @@ static int icl_get_bw_info(struct drm_i915_private *=
dev_priv, const struct intel
>>          qi.deinterleave =3D DIV_ROUND_UP(num_channels, is_y_tile ? 4 : =
2);
>> =20
>>          for (i =3D 0; i < num_groups; i++) {
>> -                struct intel_bw_info *bi =3D &dev_priv->display.bw.max[=
i];
>> +                struct intel_bw_info *bi =3D &display->bw.max[i];
>>                  int clpchgroup;
>>                  int j;
>> =20
>> @@ -460,15 +463,16 @@ static int icl_get_bw_info(struct drm_i915_private=
 *dev_priv, const struct intel
>>           * as it will fail and pointless anyway.
>>           */
>>          if (qi.num_points =3D=3D 1)
>> -                dev_priv->display.sagv.status =3D I915_SAGV_NOT_CONTROL=
LED;
>> +                display->sagv.status =3D I915_SAGV_NOT_CONTROLLED;
>>          else
>> -                dev_priv->display.sagv.status =3D I915_SAGV_ENABLED;
>> +                display->sagv.status =3D I915_SAGV_ENABLED;
>> =20
>>          return 0;
>>  }
>> =20
>>  static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const str=
uct intel_sa_info *sa)
>>  {
>> +        struct intel_display *display =3D &dev_priv->display;
>>          struct intel_qgv_info qi =3D {};
>>          const struct dram_info *dram_info =3D &dev_priv->dram_info;
>>          bool is_y_tile =3D true; /* assume y tile may be used */
>> @@ -477,7 +481,7 @@ static int tgl_get_bw_info(struct drm_i915_private *=
dev_priv, const struct intel
>>          int dclk_max;
>>          int maxdebw, peakbw;
>>          int clperchgroup;
>> -        int num_groups =3D ARRAY_SIZE(dev_priv->display.bw.max);
>> +        int num_groups =3D ARRAY_SIZE(display->bw.max);
>>          int i, ret;
>> =20
>>          ret =3D icl_get_qgv_points(dev_priv, &qi, is_y_tile);
>> @@ -514,7 +518,7 @@ static int tgl_get_bw_info(struct drm_i915_private *=
dev_priv, const struct intel
>>          clperchgroup =3D 4 * DIV_ROUND_UP(8, num_channels) * qi.deinter=
leave;
>> =20
>>          for (i =3D 0; i < num_groups; i++) {
>> -                struct intel_bw_info *bi =3D &dev_priv->display.bw.max[=
i];
>> +                struct intel_bw_info *bi =3D &display->bw.max[i];
>>                  struct intel_bw_info *bi_next;
>>                  int clpchgroup;
>>                  int j;
>> @@ -522,7 +526,7 @@ static int tgl_get_bw_info(struct drm_i915_private *=
dev_priv, const struct intel
>>                  clpchgroup =3D (sa->deburst * qi.deinterleave / num_cha=
nnels) << i;
>> =20
>>                  if (i < num_groups - 1) {
>> -                        bi_next =3D &dev_priv->display.bw.max[i + 1];
>> +                        bi_next =3D &display->bw.max[i + 1];
>> =20
>>                          if (clpchgroup < clperchgroup)
>>                                  bi_next->num_planes =3D (ipqdepth - clp=
chgroup) /
>> @@ -577,17 +581,18 @@ static int tgl_get_bw_info(struct drm_i915_private=
 *dev_priv, const struct intel
>>           * as it will fail and pointless anyway.
>>           */
>>          if (qi.num_points =3D=3D 1)
>> -                dev_priv->display.sagv.status =3D I915_SAGV_NOT_CONTROL=
LED;
>> +                display->sagv.status =3D I915_SAGV_NOT_CONTROLLED;
>>          else
>> -                dev_priv->display.sagv.status =3D I915_SAGV_ENABLED;
>> +                display->sagv.status =3D I915_SAGV_ENABLED;
>> =20
>>          return 0;
>>  }
>> =20
>>  static void dg2_get_bw_info(struct drm_i915_private *i915)
>>  {
>> +        struct intel_display *display =3D &i915->display;
>>          unsigned int deratedbw =3D IS_DG2_G11(i915) ? 38000 : 50000;
>> -        int num_groups =3D ARRAY_SIZE(i915->display.bw.max);
>> +        int num_groups =3D ARRAY_SIZE(display->bw.max);
>>          int i;
>> =20
>>          /*
>> @@ -598,7 +603,7 @@ static void dg2_get_bw_info(struct drm_i915_private =
*i915)
>>           * whereas DG2-G11 platforms have 38 GB/s.
>>           */
>>          for (i =3D 0; i < num_groups; i++) {
>> -                struct intel_bw_info *bi =3D &i915->display.bw.max[i];
>> +                struct intel_bw_info *bi =3D &display->bw.max[i];
>> =20
>>                  bi->num_planes =3D 1;
>>                  /* Need only one dummy QGV point per group */
>> @@ -606,12 +611,13 @@ static void dg2_get_bw_info(struct drm_i915_privat=
e *i915)
>>                  bi->deratedbw[0] =3D deratedbw;
>>          }
>> =20
>> -        i915->display.sagv.status =3D I915_SAGV_NOT_CONTROLLED;
>> +        display->sagv.status =3D I915_SAGV_NOT_CONTROLLED;
>>  }
>> =20
>>  static int xe2_hpd_get_bw_info(struct drm_i915_private *i915,
>>                                 const struct intel_sa_info *sa)
>>  {
>> +        struct intel_display *display =3D &i915->display;
>>          struct intel_qgv_info qi =3D {};
>>          int num_channels =3D i915->dram_info.num_channels;
>>          int peakbw, maxdebw;
>> @@ -631,28 +637,28 @@ static int xe2_hpd_get_bw_info(struct drm_i915_pri=
vate *i915,
>>                  const struct intel_qgv_point *point =3D &qi.points[i];
>>                  int bw =3D num_channels * (qi.channel_width / 8) * poin=
t->dclk;
>> =20
>> -                i915->display.bw.max[0].deratedbw[i] =3D
>> +                display->bw.max[0].deratedbw[i] =3D
>>                          min(maxdebw, (100 - sa->derating) * bw / 100);
>> -                i915->display.bw.max[0].peakbw[i] =3D bw;
>> +                display->bw.max[0].peakbw[i] =3D bw;
>> =20
>>                  drm_dbg_kms(&i915->drm, "QGV %d: deratedbw=3D%u peakbw:=
 %u\n",
>> -                            i, i915->display.bw.max[0].deratedbw[i],
>> -                            i915->display.bw.max[0].peakbw[i]);
>> +                            i, display->bw.max[0].deratedbw[i],
>> +                            display->bw.max[0].peakbw[i]);
>>          }
>> =20
>>          /* Bandwidth does not depend on # of planes; set all groups the=
 same */
>> -        i915->display.bw.max[0].num_planes =3D 1;
>> -        i915->display.bw.max[0].num_qgv_points =3D qi.num_points;
>> -        for (i =3D 1; i < ARRAY_SIZE(i915->display.bw.max); i++)
>> -                memcpy(&i915->display.bw.max[i], &i915->display.bw.max[=
0],
>> -                       sizeof(i915->display.bw.max[0]));
>> +        display->bw.max[0].num_planes =3D 1;
>> +        display->bw.max[0].num_qgv_points =3D qi.num_points;
>> +        for (i =3D 1; i < ARRAY_SIZE(display->bw.max); i++)
>> +                memcpy(&display->bw.max[i], &display->bw.max[0],
>> +                       sizeof(display->bw.max[0]));
>> =20
>>          /*
>>           * Xe2_HPD should always have exactly two QGV points representi=
ng
>>           * battery and plugged-in operation.
>>           */
>>          drm_WARN_ON(&i915->drm, qi.num_points !=3D 2);
>> -        i915->display.sagv.status =3D I915_SAGV_ENABLED;
>> +        display->sagv.status =3D I915_SAGV_ENABLED;
>> =20
>>          return 0;
>>  }
>> @@ -660,6 +666,7 @@ static int xe2_hpd_get_bw_info(struct drm_i915_priva=
te *i915,
>>  static unsigned int icl_max_bw_index(struct drm_i915_private *dev_priv,
>>                                       int num_planes, int qgv_point)
>>  {
>> +        struct intel_display *display =3D &dev_priv->display;
>>          int i;
>> =20
>>          /*
>> @@ -667,9 +674,9 @@ static unsigned int icl_max_bw_index(struct drm_i915=
_private *dev_priv,
>>           */
>>          num_planes =3D max(1, num_planes);
>> =20
>> -        for (i =3D 0; i < ARRAY_SIZE(dev_priv->display.bw.max); i++) {
>> +        for (i =3D 0; i < ARRAY_SIZE(display->bw.max); i++) {
>>                  const struct intel_bw_info *bi =3D
>> -                        &dev_priv->display.bw.max[i];
>> +                        &display->bw.max[i];
>> =20
>>                  /*
>>                   * Pcode will not expose all QGV points when
>> @@ -688,6 +695,7 @@ static unsigned int icl_max_bw_index(struct drm_i915=
_private *dev_priv,
>>  static unsigned int tgl_max_bw_index(struct drm_i915_private *dev_priv,
>>                                       int num_planes, int qgv_point)
>>  {
>> +        struct intel_display *display =3D &dev_priv->display;
>>          int i;
>> =20
>>          /*
>> @@ -695,9 +703,9 @@ static unsigned int tgl_max_bw_index(struct drm_i915=
_private *dev_priv,
>>           */
>>          num_planes =3D max(1, num_planes);
>> =20
>> -        for (i =3D ARRAY_SIZE(dev_priv->display.bw.max) - 1; i >=3D 0; =
i--) {
>> +        for (i =3D ARRAY_SIZE(display->bw.max) - 1; i >=3D 0; i--) {
>>                  const struct intel_bw_info *bi =3D
>> -                        &dev_priv->display.bw.max[i];
>> +                        &display->bw.max[i];
>> =20
>>                  /*
>>                   * Pcode will not expose all QGV points when
>> @@ -716,8 +724,9 @@ static unsigned int tgl_max_bw_index(struct drm_i915=
_private *dev_priv,
>>  static unsigned int adl_psf_bw(struct drm_i915_private *dev_priv,
>>                                 int psf_gv_point)
>>  {
>> +        struct intel_display *display =3D &dev_priv->display;
>>          const struct intel_bw_info *bi =3D
>> -                        &dev_priv->display.bw.max[0];
>> +                        &display->bw.max[0];
>> =20
>>          return bi->psf_bw[psf_gv_point];
>>  }
>> @@ -725,6 +734,7 @@ static unsigned int adl_psf_bw(struct drm_i915_priva=
te *dev_priv,
>>  static unsigned int icl_qgv_bw(struct drm_i915_private *i915,
>>                                 int num_active_planes, int qgv_point)
>>  {
>> +        struct intel_display *display =3D &i915->display;
>>          unsigned int idx;
>> =20
>>          if (DISPLAY_VER(i915) >=3D 12)
>> @@ -732,10 +742,10 @@ static unsigned int icl_qgv_bw(struct drm_i915_pri=
vate *i915,
>>          else
>>                  idx =3D icl_max_bw_index(i915, num_active_planes, qgv_p=
oint);
>> =20
>> -        if (idx >=3D ARRAY_SIZE(i915->display.bw.max))
>> +        if (idx >=3D ARRAY_SIZE(display->bw.max))
>>                  return 0;
>> =20
>> -        return i915->display.bw.max[idx].deratedbw[qgv_point];
>> +        return display->bw.max[idx].deratedbw[qgv_point];
>>  }
>> =20
>>  void intel_bw_init_hw(struct drm_i915_private *dev_priv)
>> @@ -854,10 +864,10 @@ static unsigned int intel_bw_data_rate(struct drm_=
i915_private *dev_priv,
>>  struct intel_bw_state *
>>  intel_atomic_get_old_bw_state(struct intel_atomic_state *state)
>>  {
>> -        struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>> +        struct intel_display *display =3D to_intel_display(state);
>>          struct intel_global_state *bw_state;
>> =20
>> -        bw_state =3D intel_atomic_get_old_global_obj_state(state, &dev_=
priv->display.bw.obj);
>> +        bw_state =3D intel_atomic_get_old_global_obj_state(state, &disp=
lay->bw.obj);
>> =20
>>          return to_intel_bw_state(bw_state);
>>  }
>> @@ -865,10 +875,10 @@ intel_atomic_get_old_bw_state(struct intel_atomic_=
state *state)
>>  struct intel_bw_state *
>>  intel_atomic_get_new_bw_state(struct intel_atomic_state *state)
>>  {
>> -        struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>> +        struct intel_display *display =3D to_intel_display(state);
>>          struct intel_global_state *bw_state;
>> =20
>> -        bw_state =3D intel_atomic_get_new_global_obj_state(state, &dev_=
priv->display.bw.obj);
>> +        bw_state =3D intel_atomic_get_new_global_obj_state(state, &disp=
lay->bw.obj);
>> =20
>>          return to_intel_bw_state(bw_state);
>>  }
>> @@ -876,10 +886,10 @@ intel_atomic_get_new_bw_state(struct intel_atomic_=
state *state)
>>  struct intel_bw_state *
>>  intel_atomic_get_bw_state(struct intel_atomic_state *state)
>>  {
>> -        struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>> +        struct intel_display *display =3D to_intel_display(state);
>>          struct intel_global_state *bw_state;
>> =20
>> -        bw_state =3D intel_atomic_get_global_obj_state(state, &dev_priv=
->display.bw.obj);
>> +        bw_state =3D intel_atomic_get_global_obj_state(state, &display-=
>bw.obj);
>>          if (IS_ERR(bw_state))
>>                  return ERR_CAST(bw_state);
>> =20
>> @@ -889,7 +899,8 @@ intel_atomic_get_bw_state(struct intel_atomic_state =
*state)
>>  static unsigned int icl_max_bw_qgv_point_mask(struct drm_i915_private *=
i915,
>>                                                int num_active_planes)
>>  {
>> -        unsigned int num_qgv_points =3D i915->display.bw.max[0].num_qgv=
_points;
>> +        struct intel_display *display =3D &i915->display;
>> +        unsigned int num_qgv_points =3D display->bw.max[0].num_qgv_poin=
ts;
>>          unsigned int max_bw_point =3D 0;
>>          unsigned int max_bw =3D 0;
>>          int i;
>> @@ -925,7 +936,8 @@ static u16 icl_prepare_qgv_points_mask(struct drm_i9=
15_private *i915,
>> =20
>>  static unsigned int icl_max_bw_psf_gv_point_mask(struct drm_i915_privat=
e *i915)
>>  {
>> -        unsigned int num_psf_gv_points =3D i915->display.bw.max[0].num_=
psf_gv_points;
>> +        struct intel_display *display =3D &i915->display;
>> +        unsigned int num_psf_gv_points =3D display->bw.max[0].num_psf_g=
v_points;
>>          unsigned int max_bw_point_mask =3D 0;
>>          unsigned int max_bw =3D 0;
>>          int i;
>> @@ -965,8 +977,9 @@ static int mtl_find_qgv_points(struct drm_i915_priva=
te *i915,
>>                                 unsigned int num_active_planes,
>>                                 struct intel_bw_state *new_bw_state)
>>  {
>> +        struct intel_display *display =3D &i915->display;
>>          unsigned int best_rate =3D UINT_MAX;
>> -        unsigned int num_qgv_points =3D i915->display.bw.max[0].num_qgv=
_points;
>> +        unsigned int num_qgv_points =3D display->bw.max[0].num_qgv_poin=
ts;
>>          unsigned int qgv_peak_bw  =3D 0;
>>          int i;
>>          int ret;
>> @@ -995,17 +1008,17 @@ static int mtl_find_qgv_points(struct drm_i915_pr=
ivate *i915,
>>                          tgl_max_bw_index(i915, num_active_planes, i);
>>                  unsigned int max_data_rate;
>> =20
>> -                if (bw_index >=3D ARRAY_SIZE(i915->display.bw.max))
>> +                if (bw_index >=3D ARRAY_SIZE(display->bw.max))
>>                          continue;
>> =20
>> -                max_data_rate =3D i915->display.bw.max[bw_index].derate=
dbw[i];
>> +                max_data_rate =3D display->bw.max[bw_index].deratedbw[i=
];
>> =20
>>                  if (max_data_rate < data_rate)
>>                          continue;
>> =20
>>                  if (max_data_rate - data_rate < best_rate) {
>>                          best_rate =3D max_data_rate - data_rate;
>> -                        qgv_peak_bw =3D i915->display.bw.max[bw_index].=
peakbw[i];
>> +                        qgv_peak_bw =3D display->bw.max[bw_index].peakb=
w[i];
>>                  }
>> =20
>>                  drm_dbg_kms(&i915->drm, "QGV point %d: max bw %d requir=
ed %d qgv_peak_bw: %d\n",
>> @@ -1037,8 +1050,9 @@ static int icl_find_qgv_points(struct drm_i915_pri=
vate *i915,
>>                                 const struct intel_bw_state *old_bw_stat=
e,
>>                                 struct intel_bw_state *new_bw_state)
>>  {
>> -        unsigned int num_psf_gv_points =3D i915->display.bw.max[0].num_=
psf_gv_points;
>> -        unsigned int num_qgv_points =3D i915->display.bw.max[0].num_qgv=
_points;
>> +        struct intel_display *display =3D &i915->display;
>> +        unsigned int num_psf_gv_points =3D display->bw.max[0].num_psf_g=
v_points;
>> +        unsigned int num_qgv_points =3D display->bw.max[0].num_qgv_poin=
ts;
>>          u16 psf_points =3D 0;
>>          u16 qgv_points =3D 0;
>>          int i;
>> --=20
>> 2.48.1
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
