Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /SqUDFKhO2pCaggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 11:20:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 815256BCDF6
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 11:20:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Ki3C71Hg;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1984D10EE35;
	Wed, 24 Jun 2026 09:20:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B84810EE35
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2026 09:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782292814; x=1813828814;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=wag32/gpsbz+eiH6F6tL0c4eK7XYIWEez+l5MZgpB9g=;
 b=Ki3C71HgyPZ+cam348DYQbXlUABP2o5yVpQN51THmD6faUUV0pOUwnjR
 bGVy7Luk8sAtbzTPRtYLh4qHllrWeVpu23knR2lHV12mZcAiuUxhTywgT
 o0cpvWDmolsv+uQL2GlfVra7jw7V/d7KZij/2Lc9wQp1A1iRVRUNgQ/BI
 DZJ8qjsPBXhjqfZsAll91vKXZn2Y6Ea/KPRI8HJHpgwo04XGMrWnliZAd
 bT2CY+aD/P2IKY40zBBM0Eo9yuEOSlsEQCfAG6/ytmQIdhUeNk7oKsZys
 Idc6QvaUXW2jayssAJi3ibRvXafIfUMZMrE9m/CHo0iQYtIOWGhwt4vbh w==;
X-CSE-ConnectionGUID: 2dDTwZ66QSm3E6BkyHyCWA==
X-CSE-MsgGUID: wfbVXkY/QuiBQ37utq7lwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="83048237"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="83048237"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 02:20:13 -0700
X-CSE-ConnectionGUID: 0wc/vU4oSRCpUDf5OISZrg==
X-CSE-MsgGUID: XRU6DK7gRAi8D4LsGmtw/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="249891417"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 02:20:14 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 02:20:13 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 24 Jun 2026 02:20:13 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.30) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 02:20:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RddeRlDnW2DbJhivUpBB9+MHZi95V1OmO834zjnDxosX0XYt3x9K/zNkA+Z1nFJt+PBNGz9lhRCjCSH4m1y+iPu7EBAqmTxWEvTHjoFadw/1MC0k0kS9TNYqtX3Bxrm9nhqSaGOCeqycEsRAJjTmgb3Hy2svjUYN/IdKERbh/h3BBbrmbNj92PfNs53gnB/IGpztOTRr6S4EhDWU1+xNI0+mVXjEBVex8A5lpWGGlBdB7/ZL1ZUZAAOAczhHUhYKoabSvMGwkPCF88AAIJ3bj40qHrhmEK6acoLHDSsuG8WwmsjhxBhhO6HA0jUMeCUhsKrlMxJZ33mbDlqkDknWTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wag32/gpsbz+eiH6F6tL0c4eK7XYIWEez+l5MZgpB9g=;
 b=ujYdt4X/VzajBHXQ1TOhS7qNJZcA9dGDFL3rO/ZW8fIly+xS8ib91AC5fwdOTgLUrJu7Dh+7kqfn/77cxLbaytr+2OScMzkhOjmLGjhTH/kSq4/0uWwnidk9RROXwUNPiitAY9qTnUHaulGBgPWiD9x5Nq4r2j5TyNpagwur+XW+gXQbZHK8uHhRKVjOEKgdGOMnH5qAp1y7TNa4uHJ1RUm2b/UtNe5yXP/Gx6Fvp1egO0ZoKejB6H6Xe023bIIReGYipMROgkCowFvQaV8H68yxxs4+37peh+07u8bpLSy+M+gn0pc+AA1/8dvUSYNq2d5Cvv0MDayjGm8M0bebCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4SPRMB0067.namprd11.prod.outlook.com (2603:10b6:303:221::22)
 by CY8PR11MB7732.namprd11.prod.outlook.com (2603:10b6:930:71::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.13; Wed, 24 Jun
 2026 09:20:10 +0000
Received: from MW4SPRMB0067.namprd11.prod.outlook.com
 ([fe80::3605:4f97:fbe7:2c4a]) by MW4SPRMB0067.namprd11.prod.outlook.com
 ([fe80::3605:4f97:fbe7:2c4a%3]) with mapi id 15.21.0113.020; Wed, 24 Jun 2026
 09:20:10 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 24 Jun 2026 11:20:38 +0200
Message-ID: <DJH62YW0ANXB.9HBCPZTCP2JO@intel.com>
CC: Martin Hodo <martin.hodo@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, =?utf-8?q?Thomas_Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, Simona Vetter <simona.vetter@ffwll.ch>,
 <stable@vger.kernel.org>
Subject: Re: [PATCH] drm/i915: Return NULL on error in active_instance
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, "Intel graphics driver
 community testing & development" <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.21.0
References: <20260624090940.74840-1-joonas.lahtinen@linux.intel.com>
In-Reply-To: <20260624090940.74840-1-joonas.lahtinen@linux.intel.com>
X-ClientProxiedBy: DUZPR01CA0045.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:468::20) To MW4SPRMB0067.namprd11.prod.outlook.com
 (2603:10b6:303:221::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4SPRMB0067:EE_|CY8PR11MB7732:EE_
X-MS-Office365-Filtering-Correlation-Id: 23c30c5b-0cf0-42ac-52df-08ded1d1c9f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|23010399003|11063799006|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: ZGVn4ItUR8upiMRTALxM5803BFfC8V/KY+jfDWLDxiqWTw3qcuEZh8ckfZ4bn8JTPl6ByJ1YugCxABRiHuWf2ljlx5Mwldr8Tg0D7vDPXifh4F3i2hCJBSIBjqwOqUHO3PfnXxYKYmOJ6p9CpsmsgOWsc7UXHCp6fKlQenDs2xuktWlzPEDhRKfSOl5GqdHhlolIw7SQtY+ZRFMDr0PGPfiu5mKMOVLz0VDDRc44ZlMco8ahvLshewauEDxgW/VsAUzbUjBbNn+Eiei3GqCfSJ0cnUESoFDD+TQayyp5DW5bXPHO4LZIMzkx7lR5xY0gC24hAkxARWrkOJLhWo2ocjurOTpcC/jL0dWEniTsD8YIzJzhAlPknizGzm/MCaLq3jc8hH7FKK1pt4dIz/6HHw4jXZS05HAg9Kp1jRFAHzc22OmaF1xfvmV9S8TfuZL4uuHBk/1HRk4GozOVLcfPXSRgcL7sz2NRc95NfoJssQKFRTWPj7C/3iOOqLv8H8uiA0S7UM14X76nCXIaCuXzr//0O3Bi/bBJ3JTvdpXU/kUEuiTr6xGQYdm1bFVJhIxMMQg3ZP5TmNXxk2wilgM0umkKurmvrMEcxaOcoXuN6mjRl+okk3ueQU99asGnpq7TT2j+A4lUU9JUEH1JmqazPd+gjr/67PXByEhVA6p/OIs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4SPRMB0067.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(23010399003)(11063799006)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NjU0UG9HMWVaeEVuQmhvaUNEUHowUGxPQ0ppdlJaUmFLOTk3b0FFVW90aVZC?=
 =?utf-8?B?dk1VSkJHYVlRRHZXTWZxcThMeXFXWDBIdXFQOTZWcEpzSE1pcUZ3S3RiUGw5?=
 =?utf-8?B?akRUc2NTdTV6YU5QRDRZeFJVOXFWQmw0cjRRa0lZd3lHNTdLVlhETVlvdXkz?=
 =?utf-8?B?OVd6RjlhRzRGdk5HdXN1Qkt2eXJMcng0b0g1Y0RPd1dPYnBYd2NueVN1Qmlu?=
 =?utf-8?B?SzhSZGtwaStoVjBQcVV5a2x2Vm1uOTRsUGx5UkJwb3FxSWx1c3ZuZGloeU0r?=
 =?utf-8?B?Zm9OVXVjUHU4WUdsNzQ1NUJOeit0d2k3bmRIV1owMXZHa3JrYWpUZk9xb2ly?=
 =?utf-8?B?Q1FFTE8yaWVtbjlPQW9GZjMyZkRPaWlCbks2dmRqMjB2eWtROFRaYmFtQmJu?=
 =?utf-8?B?K3c0WHdsbzVqbkZkQTVWNmdEMFhUNFpTWW1pM1pKY0VoTnFSRjlZeHhIZ0c3?=
 =?utf-8?B?Rnh3M3Jxd3BEWHFYb2JQUEMzaU5rd3FiVGlyemVCK2FEK3UvdEhPVVRYdU1O?=
 =?utf-8?B?ckJsTGU4MHZPaXlQd25pQVRPck5LYmNBbEhzZ2xvY0REYlBkY2wxa0JNdUdI?=
 =?utf-8?B?YjBmV3Y0SitQdHVjTzFsdnJ6bzY4NGtDVDFocm1hend4UURnWGIzOTZ0UW5p?=
 =?utf-8?B?REhCK2lGNXkxcW1URUloVWdDQVkrNzRrTUVOZUFYcEZpVGYrTHM0MENCcjVP?=
 =?utf-8?B?MHR0QTI0RzhhUDdPQllLb0d2WU1qWU95Q2ZabUZ2Z3N5ejN6L2crZU5Rc1R3?=
 =?utf-8?B?cHNpVDFLYnJuQ0t3bTR3RDM2a1NJd0RkakZKNFJUb05LSkZpQkp6OEI4U3dy?=
 =?utf-8?B?SEJZYytWUXpLNU1QZm16QUNxQ0RkeGlZZmFHMkphMTYrRzBIbGdtdXBRUGRI?=
 =?utf-8?B?TTQxdVFKb25DcXdOclR4bG43QW5NWVg0aDBDTElFVkpLK284RnNpYVFQd2RL?=
 =?utf-8?B?Ujl3eGhla0VrMlJUeGUyNWRJb2FtL0sra1JyVkJNalpKT2FwbjVDVmJjV1lX?=
 =?utf-8?B?dExEOFI5SUxndTh4K1RTbGNkQmxIRDh5cHZ1Nm5uek1ubnNnYTFJRkhKWTNI?=
 =?utf-8?B?QndsT2JvTHo3Sis2enJVaFVucUg3WkZzbjc1a2tVYVF6Vzd0dGVObmJ3OS9G?=
 =?utf-8?B?aE9hd2N4aUxnalBvZDI1NThZRTJpeC9kM2NZUUZoN0JCbzFMNXVrRER3blY5?=
 =?utf-8?B?dFlwdEVZbzB1czVmWnFNMjB3T3JUWFNCVE1RQnVUUTFKNStjQzhNYk5BdXFO?=
 =?utf-8?B?VmN1cWIzUTBDTS9QcjNFeEZ3eGZZSVZQVHZ3d0ZPcHNpS3RLVG5UamJ4VXdQ?=
 =?utf-8?B?TFJPSUUrS1VFZVk0K2JNUVFWWkFVMm1uVXFxRFVLbGhKcEVyLzU0N0R0ZW1K?=
 =?utf-8?B?OE9UaVRyOVA3bUx2UU16V2NZNHA0K2tWRzhZdnZha1ZSZzNrUVdPSksyYmxr?=
 =?utf-8?B?cm5UR01mSVlOUEZSWC9HeDZ5clpIcjZBTWFFbjE4MGdBaVp6aEJDTmZuVmts?=
 =?utf-8?B?ekU4Vm9iU3dXTEFvUGNOUkx3NDJxNjd5L2trOG1jZGJLaDNTZndDakN5em1z?=
 =?utf-8?B?SC8wZ01CQzJNYTByY09BRjRQQTU5SFUraTFXYWtPYXRMQiszbkNnOU45dk55?=
 =?utf-8?B?cE1RY1BKV1hRZTN0akh2Vm9TdGQ4eXFkdDlLNEF6UjZsN2FydmRDdFVuRWh0?=
 =?utf-8?B?d3d1MUV4QlVjellKWi94bktNK1NJcG5OQ3JXRCtjdG95MkpQZkJtY3ptYy9S?=
 =?utf-8?B?ZGVFRTJIM2g5U0pyaFQ2bFIrYVNkeGZTVnExYncraS9PWTllWkZOU2JNQjY0?=
 =?utf-8?B?RE5yTG1KNDYxVUFTWlJSOXBYbDJTZnhBSm9sTmNtRTJxQk9Ta1hSdGtKaTNK?=
 =?utf-8?B?elRKTnVidldkeUUyMmJrSjh6U2NZczdDQW1Bd3hkdWJsWFZqZHArVlpDNFZC?=
 =?utf-8?B?WVZPR3VTMFBxTzVrMlR6Z0MxaGN3VHVFQWp3QktTZkVLOW1LMnpHd3AxQXR2?=
 =?utf-8?B?THdDNWZWc0NqVHpJdlBXUFYzckg5WUl2VXFrYXNvNzQxeWxROFRibmpKTUNB?=
 =?utf-8?B?blZwdlhTMmJMdi9laXE5TTVPa1RjRGc5S3huNEt6RmpZeUNPNDZ3WmhkVkRY?=
 =?utf-8?B?eDlkZVM1MDZPUXZMbVZGbmRFNDBBRjBLcU83U05FQ2M0MTkvbUFOQnN5d3l2?=
 =?utf-8?B?SnY1WE44cFZlaXVnVjMvTmZaY0RDSGY2Wk0zdEJyeXZMZU52NGVYb2dJblZ1?=
 =?utf-8?B?eGw0cXcyZTh1VVVxSC9TTTF4bEZHbmgwdHpobmtDNUVCTG01RHl1ZjI3N2NZ?=
 =?utf-8?B?eTE1UzNNRE1jcXFzVnFaTjFNTlozVXJvRyszSEl0cE9GcGs3SXo4NVU4RUpv?=
 =?utf-8?Q?bftn/dXbhBodiDRo=3D?=
X-Exchange-RoutingPolicyChecked: T/wsamc3qCbMbIpbAjl8OrtHmZz9BXDmjI8/YtsTfo8k95dgs9I8EfYmT+P4hDRp/Gw1stfmpUEenMJjhmurrV+tL9Qz0wWNzWDL+VM8zn29ausiFrZY7dnJtAqxRx5k4gx3peJvWAKLNChh+iiqEw1M0lbfxVjSLSjoNuXAkUWFesJpAlF76ERun7VrZw52V68aKQ+PoJgWFAHc/nRGK10CPVG/L4u3Dxh69xwrXtqzCr6lNsc6peYl5eMiymoRW0JRe7SlG8U51j1rcchaH5aI+voRwP7Qsxz/NBdqyxbuGgFBUmWuoYaCbmJI6iVIkgCtXXJL5zKU0GOPyW7nKg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 23c30c5b-0cf0-42ac-52df-08ded1d1c9f8
X-MS-Exchange-CrossTenant-AuthSource: MW4SPRMB0067.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2026 09:20:10.1516 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s+MhPJHIyx0yQxL/3R73BQgOlUYBygwLwCvcCnqhgBmTalLdQt2m80QvbKgFlXPXm9jKSiemGNKqBfqYSImS5bvegUn2QM9zXdNv177Pnxc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7732
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:martin.hodo@intel.com,m:maarten.lankhorst@linux.intel.com,m:thomas.hellstrom@linux.intel.com,m:simona.vetter@ffwll.ch,m:stable@vger.kernel.org,m:joonas.lahtinen@linux.intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,ffwll.ch:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 815256BCDF6

Hi Joonas,

On Wed Jun 24, 2026 at 11:09 AM CEST, Joonas Lahtinen wrote:
> Avoid returning &node->base when node is NULL due to OOM
> during GFP_ATOMIC allocation.
>
> Discovered using AI-assisted static analysis confirmed by
> Intel Product Security.
>
> Reported-by: Martin Hodo <martin.hodo@intel.com>
> Fixes: bfaae47db3c0 ("drm/i915: make lockdep slightly happier about execb=
uf.")
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
> Cc: Simona Vetter <simona.vetter@ffwll.ch>
> Cc: <stable@vger.kernel.org> # v5.13+
> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
Looks good.
Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

--=20
Best regards,
Sebastian

