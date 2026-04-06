Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFDWJFZD02n7gQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 07:23:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E85B53A1939
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 07:23:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 556FA10E214;
	Mon,  6 Apr 2026 05:23:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BsOrVgOr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FB3810E214;
 Mon,  6 Apr 2026 05:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775453010; x=1806989010;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u3Oek+CO0WqbxJ7Qju4/l5oWykKEdJrn5i5AQ9doEoY=;
 b=BsOrVgOrjSUNbGbC48s4G+avEJ9cbmB4U4xAC0fz7FWgRI6tDpmVGY66
 3xydy4plu7HT6d5/oq4w1MRs4+G03Qdj+AEqSSxAJPT7H22ivXI85DPhd
 /ef7tqCNRK0ywQwpYODwiRg+Pa6CEFMaYEj+gSoZRUfFwrzSW4339pjes
 VrBzazdzyEfCrJ0vV/UA1TIBO9wpaF8qG/CrJIMDg4qAAWqabzPpLfyVn
 EAXC+3Gr3Uo112RizEuPBHAkTQNFLV4uindK/IGoQXyy2qLyGjsGpaEqN
 41z+G/5AERDmu4z5Aa5De1QDA6JaVZojalytzIo1swgxBoD4lwFgS3wDD A==;
X-CSE-ConnectionGUID: HkkT2mkkR1mDFN+X455Y5A==
X-CSE-MsgGUID: N4N5ShF9So6F+0yYAhlBKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11750"; a="93986505"
X-IronPort-AV: E=Sophos;i="6.23,163,1770624000"; d="scan'208";a="93986505"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2026 22:23:30 -0700
X-CSE-ConnectionGUID: ON74cv+RSWStxWP6YWRUKg==
X-CSE-MsgGUID: H1CJhODAS32dp9d7m0QWDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,163,1770624000"; d="scan'208";a="229455688"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2026 22:23:30 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 5 Apr 2026 22:23:29 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 5 Apr 2026 22:23:29 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.37) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 5 Apr 2026 22:23:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m1eUwzx/igqqw6wuSD/yeCSUDJo9BXQqofBPgXicPMtx5XzRjBOGagB4JfcZXRqipociKdq2Bd0eUGIdQjDPs1ysmLNzTgGX/Rl+VIdVwGVhYOtCShC6L7i/th9MLqT/fC1R38NmpYleDRaK4UGS2I33w5DsJmqkd+4wJT61FVV3+P+cVDBsoGxEldotFBv+jwAqVJO2odRK8oTF4s6cyDs2vX4AmaXTHXoAchG8MKaZbtNbbCbJoFGik4lTSTBFtOx17q0eg7yQwDby/XvqxAawBASwASQDkGKAfUbohCYdR8ebHHMYj2RIqKLoiyiaI4DvBmGyZAteJCrCJR+Ljg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oUutO/cFtpQXCBFIpT6p+PYDJdzOofN/JfAjI8s9WNY=;
 b=SLoFCr9B/hDs1TKIS7FLkzF8o6hFezkRc4cd9nRf+eIiol8BdCgnNfiQiiGfvrxru/D9TcXGK9dzoRumimmT6wKiWLtkBKVvxWuEAkstCvK/zIzfkAmkAjhP934F0vKJQ9wn85H9X7AeLySa5EnVtG+8UlWJdToutWAKamNQnfALWiZo++DYUGx86jI4Bf4pArU83zeSzR+1RqJUuFJ+I2y0rjmfS7iZ23EhU1MLuug23+rYMZTQEleo0vHqZQXqzCJbSMijFOWT5r0ObtJfNxoTMdXDeE9lcC8zklbjt5NioT4/MGRAlXpcr78enNzoiOEYmvwlDFif2vpGoCbRvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV4PR11MB9491.namprd11.prod.outlook.com (2603:10b6:408:2de::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.19; Mon, 6 Apr
 2026 05:23:20 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 05:23:20 +0000
Message-ID: <2ef02c73-59b6-47e9-a77d-573dca221f27@intel.com>
Date: Mon, 6 Apr 2026 10:53:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/9] drm/i915/hdmi: Add missing intel_pfit_mode_valid()
 for 4:2:0 also modes
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, Nicolas Frattaroli
 <nicolas.frattaroli@collabora.com>
References: <20260330235339.29479-1-ville.syrjala@linux.intel.com>
 <20260330235339.29479-2-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260330235339.29479-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0224.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b4::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV4PR11MB9491:EE_
X-MS-Office365-Filtering-Correlation-Id: 9245c71d-6546-4169-b354-08de939c9d76
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: zdebMgAMxEKsbf3bim8dr7HBaoqPVLK3BmrKTbXuNtvbSKM7pp0DuMTVToH7zs9LkZ6yKtKUh5k5mUqErbpcqyf5HuNmLxmNsN4PcNp+7l0YzAhO48lLyr2km2jJ/OFwwqg+2Lr4t1aX6QKDiIcs29+OOmK7wU+0156xWs4IDFalX4/nA2NbpnfqwWTvSl0NGvqIdZhw2ytg7mIiUBOF42dRmJYb7niyNFo1xe7henNnbMulIZgQYQJgC8PbF4wobVRauvPX4jIMgcc07n6hqWs66ML08HInmVZSFSWiJE1RHl/5bRQrFsGvO4rIe9JOODKwKddCqGyzm7ZZdEu8y97+Ka5d/qje2f9OX9UqqRk/IeFffAZQ5MPfLP18o6Z7Xs4lVAGH3nCA2vkYBZoczpT2jJn8Qlp6PpsgIYIccs+XW4NA9CR1c9lF2vTIeFkKPNwchi0D6qzYqbPoJwD3sXcQQuepyUt2Dg9Y4cS7aTJs8KseGfl99KHYN9LThMxyXr95tvlMoQBzvjHUiZGSEq+k0xPzdV63NFP/AiQ9OCAmIemZRsClOwRnEQyGnGgpEku+O61CPORZoJDBE2T9uCr1yut1Vx1rK2eKb56fcMzF8CAxXw+YyWeLNp7+UXPZhxeTL483GQ2YRsAzM+pncUzF/I6G8QS4AuY/15QOvz0JQ1IYsDSZ1V2jEQMgpDf0fg4If6YXFzPHd729YNBrOQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aGpSWGFNb2FEMU4rQnpLcHpRQ1dQczhNUTBZUGRMN0dwYzNHdGx5ZGk0S1Nw?=
 =?utf-8?B?RzRoYVlFQnplVE5wY2xIa1hmNUNJYUwwNEw0bnc1V3VqWlhaV0NUNnZEZmxy?=
 =?utf-8?B?b3F4eXRwd29tTCtVOUxUajV5NVUza0RvTFNnZ0c2dU51ME56OTQ4OWdJc0ly?=
 =?utf-8?B?QnJIMmNZU0d1czdvTGt6RFNkMWJMMllRWFVaWGpXeDJhTDFvbk1Pb1FUQmZs?=
 =?utf-8?B?Qzh5N1pBSWxicGZBTUYvSGhIVEZIU3dmRlhYQ1ZiOS9BdXIvTzFicGRZR3Ey?=
 =?utf-8?B?ZXdVOG5mQzhoaE16WTgzUjNDWW1WN2VHcVI1bVhWcVRSeEtTcEEvZjQwMUN1?=
 =?utf-8?B?UzZGUXgzRE9YYS9QdnpBU3NXdzYvUUhUOEhPai9Za3F3MjFnVThncEhVaUFq?=
 =?utf-8?B?NzE3RXkxb2JBaHNESEsyMFNsTmRuZ1prM2RaOFdGY0d4eHJkclhFa0NWMnB5?=
 =?utf-8?B?WFRoeHVXNkl0K3ZnMW1HOEN4cFhYc3gwOVJiTWhWYUFmSUhudWF6YWZOU0VM?=
 =?utf-8?B?WDkwajJoeXVPN1VmanJ2ZlRRUGtlZzV0STVxN0R6OUtudWwzQ2oyZTRnMmFa?=
 =?utf-8?B?emN6YXlXUzZiNEJrOHdJamJubXhmcW4wMHduK0dGREp1YU5aS0dwN3ZKWVVF?=
 =?utf-8?B?VGwvYjFaQ1VOZWZYMDRpOWFvbHFzRDBMVFlTQXVtazhyY0p1ekRCUHdEb2Jh?=
 =?utf-8?B?aXRkSnNIdXZBT1l3ZWcyTnZZUmltSUFWekVHQitEcTNuaGVkK2JqZkMwcWhl?=
 =?utf-8?B?bktoTGpsU1BlWGMxa3lXVFZtV21qZlk2TEJtY3hMS2MrVnlqQ0FhQ0hlRGJD?=
 =?utf-8?B?eXNLek1xVkEwWHdGZ2Z2amJnL09Rc1RKdC9tbThtOGZjOWtEL0V3eWNOcUhL?=
 =?utf-8?B?eCtNMlJab3EraDJxZFlvcktLRk9Vb1VvT01LaXh0QjFNZVFsOXFtZnVXVnhX?=
 =?utf-8?B?ejRtWXlBNURlQitZVHhRM1J6alZxMUpMWnVTMFRjVnNQZXN5a09wV0U0a3cx?=
 =?utf-8?B?VDJQWlZrNTJjS1A2SDBGeSt5ZkxzbWRtMTA1a1hnWCs5Vm0rRXhzdmRYdi9V?=
 =?utf-8?B?Y05GNTNhRkRPSUhUMHZVdks5NDR5QlpkQnpXRm1TMVVCdkhRQThBTngxUjRx?=
 =?utf-8?B?ZjJ1a0lYNkhaRXJkUldlcDIyZXhncWcrZU5CS0RtRlIvN0VpWFFJS2VVc09B?=
 =?utf-8?B?RWhocVpTalV3bjhCL2x2Rng2ZklsVEZXM2s2dVpxdGQ0UER0R2NEcGR2RnFN?=
 =?utf-8?B?WEZaQlkxblp0VHJlUmlyQVY4azBicERzTURQTFl4aVl0OG9BMVJFRUhpM2dy?=
 =?utf-8?B?VTd6RnRnWE9PcTBDUk90cjZrcjhxRkpYVFozcmNjbnI0a20vTFozbWpDUWZ1?=
 =?utf-8?B?YkthR3FQZkg5enlhcVlGQ0NaZzUwZlE2Q0o5aFg4RGVvZW82aVd6NytIZW51?=
 =?utf-8?B?VHVYekZSOGs5REFTUCtUVnpmZ0t5ZG50Q0ZyNEQ1c2E0R3l2RlhmR21wUU5K?=
 =?utf-8?B?WXd1WTkwM0dkWGZ5dEV3WlMxaFBRVGtEcjUzMFhhWlVqTDRzQmZNSG44Q2VK?=
 =?utf-8?B?VFNvelhLckNqM3VYUkNjMkpLTlIvc0ZwcHYyTTVuWnFhOEpJOUVkSWpZWGtZ?=
 =?utf-8?B?Q29RYzJKTHZVVUpVZ1ZobGdIU3ZYM1lxaVRCbC9Yczh3QytKL1MxaFR2aldH?=
 =?utf-8?B?QlBpN3FqZVZ0WUtvUnFZY3RqOEF1UzdtY3NZNjRPUWlITVA5VzBBNXNkb1JV?=
 =?utf-8?B?WWNtK2J1NHNrSHN6UGQySlhiaEFDM3NzR1lRSDFQaml2Z1VJZmxqaUcyb3ln?=
 =?utf-8?B?U2kvWWptdzZSMGhQK3ZLZE9sYVR3ZEJxQVNzemMwYy9rWmZHNFJjN0NWNnE2?=
 =?utf-8?B?WUxGOUcyZEF1Ti9lK3pnWHpuWDlIUk41VkQ4cGhZT0dQN1JkNzNNUm14cUcv?=
 =?utf-8?B?c0ZvS1ZqQkc5UUJxaEN2VjNEa3dMQUk3WUEwVFAxdjRPTEpoR0dBbTVBd21m?=
 =?utf-8?B?cFUwR0kvMHBWNW1nWElHemtDbzVLU2Qwd1BUT2o5UXNLYUNmQUF6MWpPWmpq?=
 =?utf-8?B?Q2VwbTBjbTVmb2dCcy9tMW1yM0VGU0tscm5jMGd0c1lDNUIzZ0tFWGFrTEdw?=
 =?utf-8?B?WmJKbXF3MDMzWEs3OFhNTDlsYzVXVTg3VXkxOHdSOTk0MlczNjUrbFE4eC9M?=
 =?utf-8?B?ZjN1WnRoMDloK1dxeVo1QkRXbEZPVUJ6Y1k3Rk45MVRVd0FwYzNaZVZpM0xK?=
 =?utf-8?B?VHZNRERoYVFzMUNFRG1oZHN4Q1V4V09Ea1p4NUFnYXpPK3gxZ25HZEpBT2d1?=
 =?utf-8?B?cHZmME1vZmV0U2tleXVDbkZLT0JvVUUzOWJFM0Y0TFh1dUhRWFB6S2RIZHJl?=
 =?utf-8?Q?jpQxREqxpdqnhv0s=3D?=
X-Exchange-RoutingPolicyChecked: gu1ZKuzrAwYI/daEG+AeFQ8m9ukbCuAcZkeBj6g7O3fS+/YJ2TMoQZ0syPf7gpKr2CbCJiIqYKpbVEIb6sPYiVAo0KEJCPtwf/AbGvQz4KmrEDUpjE/X43aRzb5OGSwfvtY8mNTxr+TM14eMhY7iPvCgpT+i+TOTb3yGrwG9/yGtHspnHHE8+ZUbhvZhylZ6qm/fI3ZiEo/391/iIQygWDrHXpIECTeEN8KC8+qA9R2IQrFJNQTpG7FfLmiS0migVju5XK0KlsCjXfU3+apYEWRm1Bampd5ZuUppp06yOY7BIyy9FVMwL1XMmi18NwDtNPVJtV7JvhSIVosWIYIhmA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9245c71d-6546-4169-b354-08de939c9d76
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 05:23:20.3390 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9bCAFd3c09fntyqbxF/A4vq6fcDSc9hMWP+kSYwmZmxiBBnILy5CWpHsWZ57honWqCX6101cMa4kNCzYsBPUAiVLu2MF+X6XsROXOMfD4vU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV4PR11MB9491
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,collabora.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: E85B53A1939
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/31/2026 5:23 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> intel_hdmi_mode_valid() is calling intel_pfit_mode_valid() only
> on the first attempt (4:2:0 for "4:2:0 only" modes, 4:4:4 for
> everything else). Add the call also for the "4:2:0 also" modes case
> so that we actually know the pipe scaler can actually produce the
> 4:2:0 output.
>
> Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_hdmi.c | 5 +++++
>   1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 05e898d10a2b..072b0554cc24 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2079,6 +2079,11 @@ intel_hdmi_mode_valid(struct drm_connector *_connector,
>   			return status;
>   
>   		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> +
> +		status = intel_pfit_mode_valid(display, mode, sink_format, 0);
> +		if (status != MODE_OK)
> +			return status;
> +
>   		status = intel_hdmi_mode_clock_valid(&connector->base, clock, has_hdmi_sink,
>   						     sink_format);
>   		if (status != MODE_OK)
