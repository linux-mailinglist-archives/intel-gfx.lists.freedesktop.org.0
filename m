Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UYqTIwEaI2rdiQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 20:48:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B5064ABCF
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 20:48:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ahGMXwL7;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1986011AA82;
	Fri,  5 Jun 2026 18:48:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9222711AA81;
 Fri,  5 Jun 2026 18:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780685310; x=1812221310;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wr9TD/dYOTsTfXGopeVQeKPWLnAR9SKkkZnEwMDAZeQ=;
 b=ahGMXwL7UpLX8QvQ8GCGnaKGMSRWvO5gCJaaz0rWXtiknFRjDcB0+ZaD
 5YzCAL7gYUidcXDw07fwFKEo5qkxz5ZG9UdGRoNVKQJRmY3ULqUveF0bh
 iG8dF4VhUjwmUI7n94WMyx9TRvlbOhB62+6sRHegfohGmE0xJ1Th1Quuu
 uGa2EL6dINBQxNvk1mCA/XE/dKpcrXfxgsprgnskxOU0OlhXgCrAj87A/
 CM4aSAQKN+L37L2xo2owb4w7gB5rVoa9ePc5xA6s+DM3FWTgiq6onY7UQ
 iqmDOhQ3D8v5IiEFqG7ayWmttRW1c+VDln2Suy3N5yIWkDVk6kUKXOkAF Q==;
X-CSE-ConnectionGUID: gaKFWP25RAyuRilt6c08AA==
X-CSE-MsgGUID: 8MHXGxFPRz24yrXH1hu6Fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11808"; a="81271308"
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="81271308"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 11:48:28 -0700
X-CSE-ConnectionGUID: ZmQmm1unRYCAmAnDAoKS+A==
X-CSE-MsgGUID: Vjgt59cMRxShkDf4AKeJdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="244970025"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 11:48:27 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 11:48:27 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 5 Jun 2026 11:48:27 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.55) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 11:48:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rwaxo9wJ4mjc+2/wmN8s12KQ6UQ9pI7B8qKNxvr7UlIVo59/fuSsojKQqvEMsjdlhWZMbU0gLs6coAm+7klnhjb2xrotCub2YHepTScRg5HzFLLDER5w0rTnCgf7CmfE7sUM2xJUwle+8KR0xnjGulM6Mj/u/Qw+Tr6V4Rro6PtgpOTVc4ItpU8BhmMBD/RX9bLgaN9rQGJzFyPV4AzJvjVUQHnQnSCTLKx97/POBKjO6Sxo1vETcb29Oqdnq/3QcJfmg26ivinCe0rZcONI4brMHzHwAFKQVnB2YjoxvlZqDzqeU2TkDef7xBGmfX2Cd0PUEpqdEx+55qhvjx8yOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SdptT53irgQC+zf33wI4otJCT8hiXvKmur1xmwueAGk=;
 b=me0NLKRaWemjokQyZxLENol6Fwp14Ym2tycNd0LsWLPBJ90tkwQRnFVhtK82voEzHgqm+OXYL4gREm/WpfqKx5FvOrer3/jlEKatlcF0JSqMsaIasxAV8maiEJhLb7cI2KxqleVe3NHcwb6HJ3LHcTs7GI/myoA2NHkn7kHwaZCVRNYyqGqR2w3jgZlKLhkxPMd3tINbDkjywr19tyS9zZceohgiiMihY38lPFheOf9wEjpCEYg48EVsH1ME1ArMJXxUYABP6Jz/bk34upaA0P5wvWn9AO5QmW/0uX2jsmw1eUEy+cDOZspNseQxY2V9Oa/CKKZyCY3LNuYIx+T32A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6011.namprd11.prod.outlook.com (2603:10b6:208:372::6)
 by DM3PR11MB8713.namprd11.prod.outlook.com (2603:10b6:0:45::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Fri, 5 Jun 2026
 18:48:24 +0000
Received: from MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811]) by MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811%6]) with mapi id 15.21.0092.007; Fri, 5 Jun 2026
 18:48:24 +0000
Message-ID: <b58755c4-1a50-4185-bab3-e7314cd3c45b@intel.com>
Date: Fri, 5 Jun 2026 20:48:19 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] drm/{i915, xe}: Refactor generic_handle_irq_safe()
 error messages
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <saurabhg.gupta@intel.com>, <alex.zuo@intel.com>, <raag.jadav@intel.com>
References: <20260605160444.3833295-1-jonathan.cavitt@intel.com>
 <20260605160444.3833295-5-jonathan.cavitt@intel.com>
Content-Language: en-US
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <20260605160444.3833295-5-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0102CA0047.eurprd01.prod.exchangelabs.com
 (2603:10a6:803::24) To MN0PR11MB6011.namprd11.prod.outlook.com
 (2603:10b6:208:372::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6011:EE_|DM3PR11MB8713:EE_
X-MS-Office365-Filtering-Correlation-Id: 0897bac2-379c-4ee4-8443-08dec33305b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|6133799003|18002099003|11063799006|4143699003|56012099006;
X-Microsoft-Antispam-Message-Info: wcpSscwQqdFpmEBwg+abZpPIHiYQP/12L19OPlFnszMus1JXDo/Bfg4vqaJXsWEhNReFZH/2WD4rKCUnFxEvMETEWc+SRNGTekIHqW2k4WvaTFcqFMq1lmSYhqYZlbLAl6MHPOkaQoQ3zjytSMONdz5c2486pfbLndiQZwxWKhSbfbuUvGjEaCGaVcI97L6Cw8GoY82hNVLTf3UNsw9MugtaggSe1LYksfIHlN3UakKweDOYdYnRDl8r45laqf+3Ah7yCK+n/WqkWbocb/VB/Ao2jWmCrgmfdTUmhnIdN339vLgy/hVDkU+V4YCqDvhDKO+uTc08dJRjbF2af2/qZ6kVg70PIODol1Ks83oNgfc6aByRL/v8c0D2mbReoIf1PKCIgxqyT3JjzfbZE9rWiT2DJbDvuEqlSidO/xIMb+L/BweS8ljrAYbu7oaPJXRJrz7mXqx9Vp9RV2HjqMhWsttAr2pJXHDMOdSEhecrAVQirfn6Oatxn/hESRx4lhjbLivVNkzZua2UEaocGCt666lIYfGYqRgaz6wRe0glGfTbrgIvtaVcPJMtDQBtq1U7AwUk/6brSvwFGmzBiIHUPRCx8udmFRZLsZ7kEsGu0uZNlmnRIav5ixS9RsgMWkc4VkfHhKkzDCGf88Fp5HyDMgE2iyKJeGP3gom3Umf9sQgMmpG7S95l13Y/zhbB7OqJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6011.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(6133799003)(18002099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?blJtbUxGT0xEQi9IZmZXR3p5OStHdENtR3lGRlRyZXZRd1RXemJqRUNHYWNI?=
 =?utf-8?B?Vkl5Y05nMXZjQTBEVExDS0hWZWxGTEk3Qlp5NnREN0tXVFQxT0dXa252N0ZE?=
 =?utf-8?B?ZDNDaEliejFZUE42bTYwZVorSUhrazh5R1NIcmd2YW1mdWJ2TGdENDk0TlFl?=
 =?utf-8?B?cXRqcEdzTE1mWlBUUVFNd25ndWZLcC9lM3dUS1RKTWhlN3R3RlpOWmxFV3NU?=
 =?utf-8?B?UERyL2JZUHVNWUY1OFlwRnhXdkFpYlZvYUVrdzVkUlB1REVTQ1BRNlFMZkxN?=
 =?utf-8?B?ZjFabnZKcWQrUFBPOFdWYUlTV0ZpQm9tclhRM1BBQ0dyOTlpWmpMZUNQZ05h?=
 =?utf-8?B?RHovTjhUcXhXVkl5UWlUR1gzUHRGZ1Z0bU1pM2p6REsvaDdOWFFqMDRac2dx?=
 =?utf-8?B?WWpaemR5VzZjd2NEcVlkQVlqbU55ZmNFbUoxUHhBaDRjVUpIRzZJaS9SYWE4?=
 =?utf-8?B?MkdMM3FoTGpteUJlcEpiNnNBR2tLc3FkTlpldFJsSzJyM1QrUzN1eVJzcmVa?=
 =?utf-8?B?M3MrdllNcXArdWpTQUxneFdtV1JtRnBQanBCQVArSitSSENBanRuWXc4Um9H?=
 =?utf-8?B?Q1NGUk9icG9FYnEvWVJMVUk5MWZWY3JZbzFoTzNWOVNzdUVzbFB5QnVoaG8w?=
 =?utf-8?B?WmdnRkhzQVFoQ2NEbDQzZjBYbDE0NlNPM3o4RGdhK0dzdk9nVnRNc1MrcUMx?=
 =?utf-8?B?UFVpZWpIL0V2VjE0MHdSWjZUN1pGYlM2S3FIQkVoWDI4NGM5NXV1NjdBcDZX?=
 =?utf-8?B?NU43UklUTDc2cHZncGF4SXhTZE9ZQnZhVXJ1WFo0aG5maUF3NnpOL0VSdTRC?=
 =?utf-8?B?U0lBN2krU3NHb2x1bjY5ckdoY2FWRUJQZ0l1dSswc2t3b2djZmpVVGdEY0hW?=
 =?utf-8?B?eUlTQlZLN2JZQVZXWS9xL214UEwwZDMrY1RoNlNCNVFhY2VWZnU1dERxZ3Bm?=
 =?utf-8?B?RnhUQ1BRYUNzMHFPT3E0aTBJbVZHcTFQUFVhK0hRWk5BamR0cU84bng4RElz?=
 =?utf-8?B?WXJ6WTMrMGtJaXRxbzdXUkxiNk1VdzZRK3NjTjlpSUhJVWJIK0N6TlpNSHd4?=
 =?utf-8?B?TnpLYkJDelVEbmtPdU4rN1NtVkJqc2RPRmU0OXpXenBJb0ZsT0FDazZOU2ZV?=
 =?utf-8?B?ZVdVNzZPTE1QWWQvVXhYd1pGUlN5TFNWQ2R5WVVMVUVvaTZhdHo1RHBwVUlj?=
 =?utf-8?B?REVPdG1LWWcyUkRaR2QyS0RRUHdJbk1LamRyd21UUUJqT1RSL1VIU3UxNW1Z?=
 =?utf-8?B?SU1pMVNMWHJvdTYvWjVzTjVlczBFaE9HZkw5WDhWbVEyV3JGc0RwZ1E5Wncx?=
 =?utf-8?B?MlRXenl6Z2RUWFZVbHJtaDczSytQMCtEaDF3TkZ3dmRjMHY2Zjd4Rng4endq?=
 =?utf-8?B?WGpQbmFBTytla3haRFBwWjNwZENmUWJFamgxN0JwV2dXUzlGQ0diQncrWUkv?=
 =?utf-8?B?UFBKVzZIRzgxbXBiRjM0cmRNQ0dqaHVKdVk3WjBESWxERjA4UUZxQXc0dGY3?=
 =?utf-8?B?R24zMkZNWSsyRWxRU0NpMlJIM0ZLWEFxeUJ1ZUNsZ0JKOTlMcDQxNVlEOXgy?=
 =?utf-8?B?L1BpWWtiSUhVSkx3dUJFQy9rMWFkK2UraDZSK1kyWmhaVzNCV3NjbEhvS0tQ?=
 =?utf-8?B?VG10NmRwNW5KclgwN0lub1d5cHRFdE5CYjhtQUxEMlU3NnlvZFkvcUpmWXNs?=
 =?utf-8?B?c3dYUzB6bXlYRlo0VzNnV1NYckJRMkZIRkVwOFoxdlNVL0tIeElzOEdIN3Va?=
 =?utf-8?B?eDdITTNaR0tybktEV2Q2VDBtcEhrY0JYU0hmSWZPK25NUmorYXV0eDlERVNR?=
 =?utf-8?B?cnU2bmdML2k0cFMxeWJjTHhKMjhuajY0MytUT3YrRnREUkhBYWtiY0UwdnZT?=
 =?utf-8?B?cXY3N2FQSkE5YUFPQUt3V1VYWCsyclZnSllIZTQxVnVIa2ZHZGczNWEzbUdB?=
 =?utf-8?B?MDdobDJ1bzd5TTZhZTVCNVFUS2t5ODlJUzFSTGpTYkRvUUN4d3lwbW1GZkdI?=
 =?utf-8?B?em9yTWRGY3R4NVpCZWwrSnk3NWRwQmoweUpYTTl5QUNFVDJPZTVRdVJRWUs0?=
 =?utf-8?B?K3dTSEJFN3ZRUmxGSFMvWkErOUxCUWlYT2NYc0k2Q0Vxc1JvdXFJNE1KVXJj?=
 =?utf-8?B?OGw2TW9hN3FZZ3g0bVVJRzErSHVNeWxlZmc2eGhQM2dGV2VpRWJHdUVmNnJF?=
 =?utf-8?B?T3c3QnNLd1FIZ0Flc2xHVmJmZ1VzUzhPVno4UXh1SWh4R2wyclY5b1d2cWxN?=
 =?utf-8?B?Q3A1UmY2WFdIcXNoUFZNZ1UyKzhrNFVYOGxwU2JIUjV6SkFJd1Q0RkFLYkEw?=
 =?utf-8?B?dzMrVERsejFlQ21uKzNqb2M2ZVlpWnlCSGhpclpqMjdMUEFQMVhtUDNCSXVE?=
 =?utf-8?Q?CO6elUnZMRRvyp/4=3D?=
X-Exchange-RoutingPolicyChecked: lOu02sed6eNhyiQaLg3mmOJe3tR/WTsgB2AX5hHSepgr/0j4/SkvCbSJmM96BIAhIlHoL7h/6mtUBHQ+OAn2HHJ9oOrZN6f3X7IDXzPS7PApPPBkzHUhOXzTDVoATLAMdT1Ye0y1ODb6YcutuLgRGDQmvSCapLoX9eZOr0F25+nAmh+4bj8gOA9W4xNLfa4M/iTYDxfqhg11fxy9pwgdY4i3xCz5LJ1UXuGozaodoNt7krDpZi4xxaj67gYvFOVditj45LmO9qQloGbqViNlQkD4eckKM8oNd4N/KMHuoS7TMgquM4p67u32QVYNXqWyqQkpbxXrPfmgReEuwyeM0A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0897bac2-379c-4ee4-8443-08dec33305b9
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6011.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2026 18:48:24.1256 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zd0sA3oRlm3osgSA3l94rUPbXyjgWW15JSe/1bMhIanZIrC8WoEvVvKB19FeQO/2r2cEhih6sA7rH7YwJyYhWcQ5N/K2juV5qcu9ahpRLDU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8713
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
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[michal.wajdeczko@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E4B5064ABCF



On 6/5/2026 6:04 PM, Jonathan Cavitt wrote:
> Currently, all but one uses of generic_handle_irq_safe() report error
> messages using .*_err_ratelimited() error reporting helper functions.
> These helper functions declare their error messages in the following
> form:
> 
> "error handling [COMPONENT NAME] irq: %d\n"

maybe better message would be:

	"[COMPONENT NAME]: irq handling failed (%pe)\n"> 
> .*_err_ratelimited() already logs "error" as a part of the error
> message, so declaring the error is redundant.  Reword it.
> 
> v2:
> - Use drm_err_ratelimited() correctly (jcavitt)
> 
> v3:
> - Use xe_err_ratelimited() instead (Jadav)
> - Split into patch series (jcavitt)
> 
> Suggested-by: Raag Jadav <raag.jadav@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lpe_audio.c | 2 +-
>  drivers/gpu/drm/i915/gt/intel_gsc.c            | 2 +-
>  drivers/gpu/drm/xe/xe_heci_gsc.c               | 4 ++--
>  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> index 022ad18044bf..e756ed1d1132 100644
> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> @@ -265,7 +265,7 @@ void intel_lpe_audio_irq_handler(struct intel_display *display)
>  	ret = generic_handle_irq_safe(display->audio.lpe.irq);
>  	if (ret)
>  		drm_err_ratelimited(display->drm,
> -				    "error handling LPE audio irq: %d\n", ret);
> +				    "failed to handle LPE audio irq: %d\n", ret);
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
> index 050d909fb4f8..c2d76b0bc5fe 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gsc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
> @@ -286,7 +286,7 @@ static void gsc_irq_handler(struct intel_gt *gt, unsigned int intf_id)
>  
>  	ret = generic_handle_irq_safe(gt->gsc.intf[intf_id].irq);
>  	if (ret)
> -		gt_err_ratelimited(gt, "error handling GSC irq: %d\n", ret);
> +		gt_err_ratelimited(gt, "failed to handle GSC irq: %d\n", ret);

hmm, changing the same line twice in the one series looks weird
can't we change it in the previous patch ?

>  }
>  
>  void intel_gsc_irq_handler(struct intel_gt *gt, u32 iir)
> diff --git a/drivers/gpu/drm/xe/xe_heci_gsc.c b/drivers/gpu/drm/xe/xe_heci_gsc.c
> index d716371fbbe9..477004058834 100644
> --- a/drivers/gpu/drm/xe/xe_heci_gsc.c
> +++ b/drivers/gpu/drm/xe/xe_heci_gsc.c
> @@ -223,7 +223,7 @@ void xe_heci_gsc_irq_handler(struct xe_device *xe, u32 iir)
>  
>  	ret = generic_handle_irq_safe(xe->heci_gsc.irq);
>  	if (ret)
> -		xe_err_ratelimited(xe, "error handling GSC irq: %d\n", ret);
> +		xe_err_ratelimited(xe, "failed to handle GSC irq: %d\n", ret);
>  }
>  
>  void xe_heci_csc_irq_handler(struct xe_device *xe, u32 iir)
> @@ -243,5 +243,5 @@ void xe_heci_csc_irq_handler(struct xe_device *xe, u32 iir)
>  
>  	ret = generic_handle_irq_safe(xe->heci_gsc.irq);
>  	if (ret)
> -		xe_err_ratelimited(xe, "error handling GSC irq: %d\n", ret);
> +		xe_err_ratelimited(xe, "failed to handle GSC irq: %d\n", ret);
>  }

