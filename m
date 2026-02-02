Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLXLLXAqgWkwEgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 23:51:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF72D27AC
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 23:51:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E4B810E2EE;
	Mon,  2 Feb 2026 22:51:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZjPAjjg8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E180810E129;
 Mon,  2 Feb 2026 22:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770072685; x=1801608685;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=v+uCtbhTmywmKwTvj2Wh9uaj0kA3s6H4hMG3ZCl0Gp8=;
 b=ZjPAjjg858NrqJFxYucb+Nyk38cNnRT9dREXBh+KLGdwhjYh/YKrpFFc
 DiTuzIjRqbthv5YeXamvyEfFjMiG4kgw9jyt23b74VMueOKd8VOJ0hSO8
 dgCbv1lIrZ3niq7rpwaa+y+wyt92VDBLAs2J9FBSfv0c1GdKXxqcoH6xm
 9cp0iLba4m6N0OOP63OtltwrlLWx4HKgX0P9sIRQAdeDbICyD0IpOO0s6
 G99+m314Ses3nuGVDkAg9IFmX7vVa8JZZOCRapUrqLWIdJq4STRCpcq3m
 puhvbMU7zLhaZw9f9JjcuH7n2jTjfqLc4Kcr3NBrV4NbaMKZviCM3eGQQ w==;
X-CSE-ConnectionGUID: x92bfAlbT6uiqggzhVj2Dg==
X-CSE-MsgGUID: EoRfpPf5RqeiGv6C5PmfXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="70444506"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="70444506"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 14:51:24 -0800
X-CSE-ConnectionGUID: tY1zav9jTei8B0c0qNPhDw==
X-CSE-MsgGUID: B7d0ZSRbRTygQth/wYQLfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="247261941"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 14:51:24 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 14:51:23 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 14:51:23 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.2) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 14:51:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wZu2hdta7API//z+p+eDr3x2YqAcizfIekLse8eKyPeK2iuLb4zffY8Rsngp6xxU+PAp4Z0GIuYuRH/PBOPtkQsz+/L5hvwQ9h9Qm+lWxHpf6wzCaPqeFF60fQgfiSXasrdJ89TwiNR+4XKBj6QrT8yiZGjmpjgRFJ7q3nUs5YCa1FtZ4G+TZXfW6PLIyS7FRhY8JethUTVmB9yjf7QAHSqzO1wJPmlOv5k7ah89CjhdKVvKCIaVFfR6XYJ+4L4pe5wOqiW9FHV5R1AE8CjSZOgDPUUkVoLpY1nHJF6oLrwXlcxrZKfUPZlUhbe0Z59l4nwJldz04Cvcc+5u5zEtPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tiXu7mNRgPjAHqTHwrxIrIQbmQajFahfbHpvWta78mk=;
 b=JFCNe6zWy79sTG4tMi9g5+sFtaQ4+5snTHXWruoxF/kCDEc98vQchb9uxrvbe4sMcgUTmnDHzob8N02spiVK4D8TfYd7e6y+tWU98yp4dAmVOwufKFbdbjqHklAiAYeGNptBYjiC9HdbP5ZdwHhUH02fGPC+Rm4qXCE4CsgYqj4OTVuZgOB3HbBCUrRqqzm1pMSNV2UVZCVICXqlvQLquzs6iFyLZ9NnNARQxNEw5mA/CvquTe5DFL01ceTU6wLBhgc8OfdCKOSdZfxKLvsl/EVG88uTzHKBB5Bjx8rxUfAmNuaWwnQhTY0lD4/q5c4lk06V8qa2qGrmIa0M0os3Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB8131.namprd11.prod.outlook.com (2603:10b6:8:190::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 22:51:18 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 22:51:18 +0000
Date: Mon, 2 Feb 2026 14:51:15 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Tejas Upadhyay" <tejas.upadhyay@intel.com>
Subject: Re: [PATCH 03/16] drm/xe/pat: Differentiate between primary and
 media for PTA
Message-ID: <20260202225115.GK458797@mdroper-desk1.amr.corp.intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-3-653e4ff105dc@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260202-nvl-p-upstreaming-v1-3-653e4ff105dc@intel.com>
X-ClientProxiedBy: BY3PR04CA0017.namprd04.prod.outlook.com
 (2603:10b6:a03:217::22) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB8131:EE_
X-MS-Office365-Filtering-Correlation-Id: 107a6ea8-f918-42fe-479b-08de62ad93d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?O2zVc1G7E4DfVxWpYefKPHVhykJh5k4POFR9xlpXJs+Y3iOku23Vd5VfXroE?=
 =?us-ascii?Q?2VsWh1Wl0xRH0AwItKbDA1V+TT5GA5439HwCi/IHAeHBV2EYSXdD0v2n7WDy?=
 =?us-ascii?Q?mXREuk/QJwcWEZfGhg8Vb9PaPat5now6eCelSQeYn3IBuDGJuFVaUT3tmJQI?=
 =?us-ascii?Q?H3oZbojtdz6N9KK0L76j1Kn40t0BjBE7kv/6c2u1r1EuG9R36Mo+dH6iy+WX?=
 =?us-ascii?Q?Dr9dsl5uwNIpTgo9lG4hwPb171h33tUK6cgepiHxf1wzQS4HUdFDlTkbMF7g?=
 =?us-ascii?Q?kEOFyKJSxyzjlX6RGVI3Z66BtMjoiTTe38tsUsfaFA6r+rcVtLv56GKWyOq3?=
 =?us-ascii?Q?iLCS13MZCSrbn1AQ6sD3WwfJ4RUQaMXDjUs200BvafCH3CvmvhStENbJrWYN?=
 =?us-ascii?Q?je3Yn4vsgP4Ls+pvfyUnGayA2a2e3wKSj6oW2llfZb+LXFwm1sx0RztSIq5X?=
 =?us-ascii?Q?nirfi4GjqJsip5JnsGnqktl8RGYyIcSpSsQ1aJdwGrBwtM2HeIizZg3KjNab?=
 =?us-ascii?Q?dEgxkSNN6hvOSFj+FOi+o/wRwv9oww7qnVH48kIlgnUq4ApzsiAMBq2yujqs?=
 =?us-ascii?Q?Oxost/JOuKy4WXcWvAx++TsOEw6tXlDZPC/Wqbe4hhoHBtvIHdNUFJsJNcSb?=
 =?us-ascii?Q?aDdNyW9mzrMsaTE5XAkN8PXiGOLir0OB7Qqrkg0M7wOBIm5qz131n6C4ukka?=
 =?us-ascii?Q?iY32mDFd9n/+01e/5RwxyOnkSkZdRnMcrU9OOfzLIurtyx9rRZ+opX7RbGOO?=
 =?us-ascii?Q?HDxD5ku7MWklGXoi2hhQyUlzMJC+tx0zPzlUAGEVa2VJu3a5sAN6+VgffJqr?=
 =?us-ascii?Q?rOx/0p7w3rWGXL4lMHsH7Z5eocme/NHcp8AxTeo3mLmqRPj5N5mDIY97VKxG?=
 =?us-ascii?Q?fZ/psXdqY1QVnD7qN3y8SanocfaHvhTgpzTij2GS2hxVsD2uYWLUrrDMK2Na?=
 =?us-ascii?Q?/D1vJYsrTL0p1ESTwa0aY2QWK6Qu8hmKrHTQmIzW84J08YRgjAOBAMZr8CMB?=
 =?us-ascii?Q?C/PwOZJuOXOa0f9xRGm+/iTHi3S7GjDrFue8MJnkwXzeRbHaIc4eHBVKvQOZ?=
 =?us-ascii?Q?paUppxnBsrAelVg6jR0CXfhTgHMMeRrtyEmJOYcnKL7LOFH0N4WXfi5EqZw1?=
 =?us-ascii?Q?heKVNrKilTJsypjA/rkrwJnSXEgWzC6FH8CtROxMHo6SzSrSo9N3CuTsyTlN?=
 =?us-ascii?Q?TszT6p7RydVkcD9lKK+DaswS7HyobD6TcAM1OcR+gz24B/3g0eHP/6XIE2BM?=
 =?us-ascii?Q?xrUIl8y5VmrzeWezMmmUfpCINjR/QmbJZ2/VrHoLCxK/CjxGt6F+tEMYWJ0U?=
 =?us-ascii?Q?py4cbXB4uz7FyEQi0NtyDgmhSHitaLIrUx4u8yHnWWAecduC8/SqJRwnyxG1?=
 =?us-ascii?Q?3l6XhmhNpRMWxVHIJwpXY0+DKmetbyYnhrkec7/hluO5DXYOJS4sGzjSWFwf?=
 =?us-ascii?Q?KGCEgZSaOkE0ODD1Scf8FvEEzeeGNQPKpiDc2/0oQmVUMTB2lotgdkTU9SnL?=
 =?us-ascii?Q?DBbavj+wO4QPI9TiHhHoAuSwdEmnYFz3uLJcb8lLplBcgekHUl2hCFzixypE?=
 =?us-ascii?Q?fSIPcVa5fN4O3gV5CeI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?v6Ze3+3VZVqECniyU7Wr9VS/ubszFHBVkIakaZSLPGqTyqRtlJJKvVZ7s/5D?=
 =?us-ascii?Q?FEOwN7mdFtSA5jrNwoDX90gKRga+77fnsSrsmThmkfKdYgft+Xk2TWl0KrzP?=
 =?us-ascii?Q?u/23lv2jUqMLup0lskMindGFt95/O81Pnw3lkEnD/L+VFA+c6/QyM42BzaBv?=
 =?us-ascii?Q?bpN7a92CGRzUJTPlpdU1zVayskxZZyZLiNOg5MEDbeSDzCdhI6U/mR1zY+Gn?=
 =?us-ascii?Q?vUUz/kBdSaul40qkOtWDdOo3WDF2dcJEcuHtLbmnkb+uDQN6/WSYUWBNeJ33?=
 =?us-ascii?Q?QgIZxAWw3Ok0CUu0Kh9QUJaC4+f+32zh7yaDaA+HlhjDceIUtp6koIORwBLC?=
 =?us-ascii?Q?Lw3yKehk/EBHK5J9i8S4lDp7ZfxITjh70agly2Qqu2a7dYeRgzUVZ8GT2FKu?=
 =?us-ascii?Q?HCMDxphjxd5+DjUix0zga91GMUxJ/CUtMTIX7j0Z/ZtPLT/SZQ+xoUkeVb+q?=
 =?us-ascii?Q?lkAotn/dqc58cawllnipANmdZuYVou/nxK5W5ZfpBjQbuqLAzr4GUAWsePHa?=
 =?us-ascii?Q?HalnGUAKsDnackIGMeFsL79Os4Iy0iYcngshkAhAlpyS14uC8p7D/EehsDe8?=
 =?us-ascii?Q?uREcT1QBAfsZRY76WQJ3KO0NZBrvk0mUK31q+DuEes7Dzf988L2Y7IEazn4V?=
 =?us-ascii?Q?dDNKzRp2SdAhzO7/2BmckR4N2Z/JUci27ftKQNXSm3gj1SDM1QeqjIkN0d6f?=
 =?us-ascii?Q?mQkogwD08NlmKIgjyACih6vG6Pn7AFI4Qz4ouI0SAq5JZGh/OSniEcUofvMH?=
 =?us-ascii?Q?/yEmTRo/E0pENthUYehCD8E9dru2BP9k8sWVPplJgZcHERI0gsgFh107ntGm?=
 =?us-ascii?Q?XnM8AQqDT6mC5eRSDuYcocY4Ve+3S/JFySQeKCQjOVEz1lTLU9b2xdbk8RG4?=
 =?us-ascii?Q?93t8QJp2aNkr9jt2x8618Ej5Un8fkGTiF9UToi81G7b/3kciVhG71FId07f/?=
 =?us-ascii?Q?Pfgvt5fvuBgxeOUgqKtxYgQsyhgHVYyxrHzU4YcF6vkvrvRCW4Sue5GgklgD?=
 =?us-ascii?Q?35iU98Zbq0lCvpeEZECYbFSGN4COIBHjkqeJNs+oPd1Izi5a7ZhcX/NlpyGe?=
 =?us-ascii?Q?p6u9JogkMC98esmOtOYAGbFJCle2o/TlyLxgXzEWwYuAPwkZoE93GfGAvgpx?=
 =?us-ascii?Q?bnLhO1mU5ousBFlDsyVrA4tm3VGheFWLoqj2FMop7yXQb0DVva0GVfwrUiPp?=
 =?us-ascii?Q?W8K7Flw89q32xv1AaCNosHllZcV5MKrEFdFdTvRKVcLU6An/K6BvSovushTC?=
 =?us-ascii?Q?cuKr3iwLXn+fyHDm7JuE4vf5PgHVpnNI1Z98/meX4wm4sOMvPWhCWohmV9L9?=
 =?us-ascii?Q?IQKQYmNa5WYBkYKXCOM0/sE5YCUlMfhFZ8UE7yCnkjk2LR8i7jMTM3D0l0cK?=
 =?us-ascii?Q?G0lWnk8HSQ4Nt/Clt2Pt9c0eVWyi+55LzSQxzEXzYaAhQo5rHwQagjS+0Ogw?=
 =?us-ascii?Q?xyMYsHbWXcHqPnWP9xK0QI4kujwIa40OxB3MlYVl1mlFg0yWowrYIZHELPFv?=
 =?us-ascii?Q?llIOcp8J/jcTfKHPbO/FBlWKKIfjaoHiCeQyeiQS6UiEJZbkupA9l6otDiQn?=
 =?us-ascii?Q?VZ+yHvIsblrLXBHnGeAiPJiXb67F6SSo+MZ/gvJNxGui0JWKiQKi3K9oYqy/?=
 =?us-ascii?Q?S9C5lRENUdt2vGs/bszCy3yXAt3p3fchZJESbE5eVHb6oImhGgFDhRKJCRw0?=
 =?us-ascii?Q?GkDB2CpMpkWwtVepkWyUPOOQvSGryrwMUCTaNsIXfpkWBAofhG5mbdve5wT1?=
 =?us-ascii?Q?bVlVxcYoQkyi6eYqKDolR5IxRk6dprA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 107a6ea8-f918-42fe-479b-08de62ad93d1
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 22:51:18.3195 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SvgUWUJOVO6rKxgl8hlPh4vOgXGkfdCfLSWt0cvWIoPL7E3NRS3aEjSxmpGU8Y3JcGRJUhnyEdTgBUDqSJtkuk7EXOUXyJXh32l0L1r6Ows=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8131
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,mdroper-desk1.amr.corp.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1FF72D27AC
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 06:43:09PM -0300, Gustavo Sousa wrote:
> Differently from currently supported platforms, in upcoming changes we
> will need to have different PAT entries for PTA based on the GT type. As
> such, let's prepare the code to support that by having two separate
> PTA-specific members in the pat struct, one for each type of GT.
> 
> While at it, also fix the kerneldoc for pat_ats.
> 
> Co-developed-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/xe/xe_device_types.h |  8 +++++---
>  drivers/gpu/drm/xe/xe_pat.c          | 27 ++++++++++++++++++---------
>  2 files changed, 23 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
> index 34feef79fa4e..4508ed54d1d5 100644
> --- a/drivers/gpu/drm/xe/xe_device_types.h
> +++ b/drivers/gpu/drm/xe/xe_device_types.h
> @@ -568,10 +568,12 @@ struct xe_device {
>  		const struct xe_pat_table_entry *table;
>  		/** @pat.n_entries: Number of PAT entries */
>  		int n_entries;
> -		/** @pat.ats_entry: PAT entry for PCIe ATS responses */
> +		/** @pat.pat_ats: PAT entry for PCIe ATS responses */
>  		const struct xe_pat_table_entry *pat_ats;
> -		/** @pat.pta_entry: PAT entry for page table accesses */
> -		const struct xe_pat_table_entry *pat_pta;
> +		/** @pat.pat_primary_pta: primary GT PAT entry for page table accesses */
> +		const struct xe_pat_table_entry *pat_primary_pta;
> +		/** @pat.pat_media_pta: media GT PAT entry for page table accesses */
> +		const struct xe_pat_table_entry *pat_media_pta;
>  		u32 idx[__XE_CACHE_LEVEL_COUNT];
>  	} pat;
>  
> diff --git a/drivers/gpu/drm/xe/xe_pat.c b/drivers/gpu/drm/xe/xe_pat.c
> index 14d0dce5190a..5776ea67fe02 100644
> --- a/drivers/gpu/drm/xe/xe_pat.c
> +++ b/drivers/gpu/drm/xe/xe_pat.c
> @@ -284,8 +284,10 @@ static void program_pat(struct xe_gt *gt, const struct xe_pat_table_entry table[
>  
>  	if (xe->pat.pat_ats)
>  		xe_mmio_write32(&gt->mmio, XE_REG(_PAT_ATS), xe->pat.pat_ats->value);
> -	if (xe->pat.pat_pta)
> -		xe_mmio_write32(&gt->mmio, XE_REG(_PAT_PTA), xe->pat.pat_pta->value);
> +	if (xe->pat.pat_primary_pta && xe_gt_is_main_type(gt))
> +		xe_mmio_write32(&gt->mmio, XE_REG(_PAT_PTA), xe->pat.pat_primary_pta->value);
> +	if (xe->pat.pat_media_pta && xe_gt_is_media_type(gt))
> +		xe_mmio_write32(&gt->mmio, XE_REG(_PAT_PTA), xe->pat.pat_media_pta->value);
>  }
>  
>  static void program_pat_mcr(struct xe_gt *gt, const struct xe_pat_table_entry table[],
> @@ -301,8 +303,10 @@ static void program_pat_mcr(struct xe_gt *gt, const struct xe_pat_table_entry ta
>  
>  	if (xe->pat.pat_ats)
>  		xe_gt_mcr_multicast_write(gt, XE_REG_MCR(_PAT_ATS), xe->pat.pat_ats->value);
> -	if (xe->pat.pat_pta)
> -		xe_gt_mcr_multicast_write(gt, XE_REG_MCR(_PAT_PTA), xe->pat.pat_pta->value);
> +	if (xe->pat.pat_primary_pta && xe_gt_is_main_type(gt))
> +		xe_gt_mcr_multicast_write(gt, XE_REG_MCR(_PAT_PTA), xe->pat.pat_primary_pta->value);
> +	if (xe->pat.pat_media_pta && xe_gt_is_media_type(gt))
> +		xe_gt_mcr_multicast_write(gt, XE_REG_MCR(_PAT_PTA), xe->pat.pat_media_pta->value);
>  }
>  
>  static int xelp_dump(struct xe_gt *gt, struct drm_printer *p)
> @@ -527,7 +531,8 @@ void xe_pat_init_early(struct xe_device *xe)
>  		xe->pat.ops = &xe3p_xpc_pat_ops;
>  		xe->pat.table = xe3p_xpc_pat_table;
>  		xe->pat.pat_ats = &xe3p_xpc_pat_ats;
> -		xe->pat.pat_pta = &xe3p_xpc_pat_pta;
> +		xe->pat.pat_primary_pta = &xe3p_xpc_pat_pta;
> +		xe->pat.pat_media_pta = &xe3p_xpc_pat_pta;
>  		xe->pat.n_entries = ARRAY_SIZE(xe3p_xpc_pat_table);
>  		xe->pat.idx[XE_CACHE_NONE] = 3;
>  		xe->pat.idx[XE_CACHE_WT] = 3;	/* N/A (no display); use UC */
> @@ -541,8 +546,10 @@ void xe_pat_init_early(struct xe_device *xe)
>  			xe->pat.table = xe2_pat_table;
>  		}
>  		xe->pat.pat_ats = &xe2_pat_ats;
> -		if (IS_DGFX(xe))
> -			xe->pat.pat_pta = &xe2_pat_pta;
> +		if (IS_DGFX(xe)) {
> +			xe->pat.pat_primary_pta = &xe2_pat_pta;
> +			xe->pat.pat_media_pta = &xe2_pat_pta;
> +		}
>  
>  		/* Wa_16023588340. XXX: Should use XE_WA */
>  		if (GRAPHICS_VERx100(xe) == 2001)
> @@ -649,6 +656,8 @@ int xe_pat_dump(struct xe_gt *gt, struct drm_printer *p)
>  int xe_pat_dump_sw_config(struct xe_gt *gt, struct drm_printer *p)
>  {
>  	struct xe_device *xe = gt_to_xe(gt);
> +	const struct xe_pat_table_entry *pta_entry = xe_gt_is_main_type(gt) ?
> +		xe->pat.pat_primary_pta : xe->pat.pat_media_pta;
>  	char label[PAT_LABEL_LEN];
>  
>  	if (!xe->pat.table || !xe->pat.n_entries)
> @@ -675,8 +684,8 @@ int xe_pat_dump_sw_config(struct xe_gt *gt, struct drm_printer *p)
>  		}
>  	}
>  
> -	if (xe->pat.pat_pta) {
> -		u32 pat = xe->pat.pat_pta->value;
> +	if (pta_entry) {
> +		u32 pat = pta_entry->value;
>  
>  		drm_printf(p, "Page Table Access:\n");
>  		xe2_pat_entry_dump(p, "PTA_MODE", pat, false);
> 
> -- 
> 2.52.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
