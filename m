Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCwKAV/v5WnCpQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 11:18:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E61428C22
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 11:18:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51F9210E15D;
	Mon, 20 Apr 2026 09:18:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RoRkts8w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47B2B10E15D
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 09:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776676698; x=1808212698;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=upPWUwvFH8JRO+Y4fFCoDeGlzzl5pagUpknxfeLKvZw=;
 b=RoRkts8wzHXxwAPqHGBMLnSkfiElcEzdQB5cL/5NOpLfASWD8VhtcgyO
 EVcmmW1/8A/jLj0cjpoWx/nLYGtoBhbCQMEBrhC0NIptUTCo5dB5PC+3r
 BO79mFn841SDKdLbXzQs+qhrBUgbnJ+sQHAoiTBWNMJJYOt7n59EM8Fr6
 MvXt3BeM612ClT2Klk6HR31VYeeaVsMamrLYGMHBc3X0OegMS1fgqn3D8
 IGoSbV5hrGPcbzNC1Mi8D6gKKDsiDjO+uxsb1Atn7bbKXFBa0d1qovcXB
 wy+C+CiocxrFiygMi1hkKzWegTS32oTjF92DbGUJslGX/Pbv6SfhIG+Pa Q==;
X-CSE-ConnectionGUID: YJAJjtq1SIuNZaYj1hpT7Q==
X-CSE-MsgGUID: LT/1swxuSteN7SDlVF9WMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="88661801"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="88661801"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 02:18:17 -0700
X-CSE-ConnectionGUID: GlmavE4iT1+zVk/SluCe0w==
X-CSE-MsgGUID: BLHXLBVPQLCXv1VmbgQG/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="233439594"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 02:18:17 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 02:18:16 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 02:18:16 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.57) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 02:18:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fiYM9VCLHHGnbrUKgRrd8X8sTTidBFaMfb60YusgpNPoNhAxtXZqYnM6ZztwUjBqKY4IW5Seqw5hY5pTcouxkxz15+BFEdGeKqExFRTDs7Ri7Vw1dadokjQu61KG9EQjTRrYb9FGAmzTgU+beV2UtIG9YL2ECOvrnUz+xxArGahVFV1MDOHNwDrxATQspzxCJdy1zDkEZOepYKYjhMyk1RCi4slXnMmc1wFGDOuK57mJfQ3UmFXrgGop+yRdMy0L+0fj7MOs0szcDs/zafwJdRTeTbrJwBbdV4l/LJOqlHeODHa/3GtwllTNA4joxMY+Fmo4DCKSOeKnTkrbZvGmkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HNl+z6HQCUFYlzpzr2zL9aUGBnUZfLB7k+Yjol3Gb9s=;
 b=V9EZLmGMfl8AabjYJ+OF0TR1N3E69eZizDTplBMDY4pz5R29XfrOLw9Ny6ix3G7RfsUOP0NMUGksT9sQ0DHi/Tj6UT3a3BHuL4jI3m3IwobR1/K+4uDsScof29QKab2vtIou7RM13lbETdNe2ub/9mCp6EzHqAZZXeopIUIc0PEN2biztXazReZpQBHq4X2IWzbfVj+By7Q/IGE/dHmD8WRt0XnvucEvASFsPmSYgh3NKiAScLi5kNLXGdeDaSAO9ZOTZ5tjVmrWsIxyBfTnyfRqtK31vOaUyK4awVfGDa+vpSgyfGc+hY+8qSRBhJfXu+YeD3zNSLB20fo/FgBl3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by BL1PR11MB6049.namprd11.prod.outlook.com (2603:10b6:208:391::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.14; Mon, 20 Apr
 2026 09:18:12 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9846.011; Mon, 20 Apr 2026
 09:18:12 +0000
Date: Mon, 20 Apr 2026 09:18:03 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <stable@vger.kernel.org>
Subject: Re: [PATCH] drm/i915: skip __i915_request_skip() for already
 signaled requests
Message-ID: <yoap6axokl3wt2cirb76uugga76ligklznoubcq7p4tgr3gkh7@4tpiryb7u7y4>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <fe76921d35b6ae85aa651822726d0d9815aa5362.1776339012.git.sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <fe76921d35b6ae85aa651822726d0d9815aa5362.1776339012.git.sebastian.brzezinka@intel.com>
X-ClientProxiedBy: DU6P191CA0045.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:53f::26) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|BL1PR11MB6049:EE_
X-MS-Office365-Filtering-Correlation-Id: c96385d7-74a7-4daf-3715-08de9ebdbf16
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: pEyhmxEwkRiqPU7jytfcafab+fRBI9PhBk6AjVGUgWNGN6SX8A9i1JbY8Oy1IiXfUemOBVR3CkCsED/GbOgpeiFO69//HVD5mcRROE3rrAW33YK7CNKULFQ2xp4KAAkS91H1usu3hngS8HexNR2bSffy02FfpKlqWBQA1OE03gxr6jJE/lDd/45qbyj1kz6dSNQrKKhuxBeMvGzae8tRCyLpUpwobx3p3cPcbemyBhdWdGMLlY0Apz8JszLyVDN/qqYDOC/y3ZXeu6TLvyoqPAlkDgP1DmqAx+bC7iWQi0tW4Tw47easZ7rzng4X14bhSXpqfRd/n81ZXX7ZW+RvODVXVidk/1Sl1fbYePSmGlG/qogVK0HO2yktWQSCX+W/5utCTqvsoBPxj9V9pb4ntJNSn2gpMs8Kn/kPpedxXthgKSrHAoK3btzvAXfzxR9Javh/cQ/ryiUaa4nH7Iq0XlxQNTUsJBfYpXYqgxuCnhR1RV8JbGfiLwU6M/SH0hb3pddmJkWechijsD8jMuk/6Dw27YId8LSQM8+hoPVYtFk7MzWAZboy6iOaIFRRDBrwFpSO35ASi9kx65DpOw93t4jeuZkRVuXEVRZTzWEkpB+Fb4z6gi7FK7DK3wIRAeo7cGHz2r4ncqxWyln46N/X/EGhFlBd9b7qtidPnBTHzlzfNxLjXoi5LyaUjc/5wWUc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OVBmSjFnRlp1MTFEamVPT0VzWmt0YngwS3NWRmxIUTR6WnBNdkhhY2FDUXNp?=
 =?utf-8?B?cXo1eHZPNHlHTHRzblMzUmlyNDZUcWRVSzlia2trekhJbDUzNUlMZjBnT0Q0?=
 =?utf-8?B?WUtIUGF3VWN6cC9yZ0o5TEQ1UzdlQ2NURm1zcWlXcVovVGY0Q25LUytGYUZP?=
 =?utf-8?B?YTNZaXpyNmlRRXlqR3JZRmlDY09rZU1GcU1ySVBRUEZQYzlEL2hadnlDd1p4?=
 =?utf-8?B?bG5mUjVYREs3YjZ4OCsyYU5JdG5kaCtPZGtZWHJZekEzMHowdWx0MnBGRGY1?=
 =?utf-8?B?NXJqMUZmZVc0aGlPKzh6bC81ckdzd1J3dHlZaEZYcnd6ZnVpbUVSQUhUdmFV?=
 =?utf-8?B?MnRhbzhrY2toNmtZSERxakhuUC9xbXBBVVNuRGw2d3JDemJMdzNZL3ROa3c0?=
 =?utf-8?B?TzhkdWdCUVpKN01pSVFWVHZQUlFaYlIzeTVQQXRCbHF1L3pqZHE0Z2NYRE9y?=
 =?utf-8?B?bDc0eENESjhIaVJQUTlSYU1Pa0pzcE0vZUhCVWhzYU92OUxIV0wxSDNYSGdH?=
 =?utf-8?B?OXJHbzZ5ZU5VTDNwVWpQQXBaMDFrTWRPdGZRbU54Y05jRVZRY2VxM095NFF4?=
 =?utf-8?B?WWhEZGN1S3lablhSNlFBNVM2THlkL295TnlYNTdDNEROczMzQ09oTEZ4N1Vp?=
 =?utf-8?B?bnRhRWNaM0IyWXBUN3RsR2pyaUdySzlKcVhNbW9xNkxkZC8rNnU1WG90QThS?=
 =?utf-8?B?SStsaVBVZFEyU1kwTXlKa0gxVWxjN05wMG5PV3owdFdGb2pGc3cySHVENnN5?=
 =?utf-8?B?K3RvRlhiTFRsUnNPZk05VW5MLzBkeE9VL3o3U1FUeUJRVkNsN3VQSllRMThI?=
 =?utf-8?B?NWZmMzlkM0MwMmZvNTByMTBNUG03cHlwYmtyTnoxQnpBR0VyTUZreFYzZ2da?=
 =?utf-8?B?TXphRjhFU01YMThPamtuYlZMcHB3TTJETjZJTDIzVTgrRzd1bEZyNThBdlVV?=
 =?utf-8?B?N2tZM3FtTnZyNXVUQnM2WUlsMlVpVWJqWHNKdTdjUmJNSjFQYWZ5VGdOcmFk?=
 =?utf-8?B?QlJKOEtuZU1PNGpRcDNpR082R1F5OEF5Y0RGNWkyOGpxZ2QxUzRWY0p5WWxD?=
 =?utf-8?B?R2xqR2dSeFJTdG1ONEZNaVh4dktDS3V3NXUwUFZkRVpRMFRQT3hmMEM1cXg3?=
 =?utf-8?B?bUtaRG5UZ1phcS80TlN0amoxODJ0V2s1REQzUTFLanh0V3JuczVBekN1VEJu?=
 =?utf-8?B?TVNIOWtTM1FBTC9BdkJ1ZVhtYlJab1VabDFiVkRXeEFpaCs4d2lXd1dweWVp?=
 =?utf-8?B?S011WEhGaTY1Q1d1NloxZVZMRGRPUXFqN1JLZXBYNHRZTzVtQmtGUDZIM2Ry?=
 =?utf-8?B?Y1VhdzgyUXhvdzlkbXBhdmJ5bHFuaFROQXI5RHZOKy9KUmJSelBwQjJ0SHZ6?=
 =?utf-8?B?aVJUYTNhQXNRK1NXZkl5K1Z0UXFkdllSdGo5Y0RTY3hFTUJuTmVKdmNKa1hl?=
 =?utf-8?B?WjFYUXA3YUJEbmNoZU1CeUU5R3dWVVE5L3Nlek14TFhLQmFRamlaUm1tNjk0?=
 =?utf-8?B?WTdqTEcwWU5FVEhSTGdtV2J5YVM1cUJic2t1dlYwcERscS91S3QxTW9XZ0F3?=
 =?utf-8?B?emRoQjRScXA0aTRPa0ViYnJSVFJuSEJTSG16NmMwSFJmcENLMjFCT1pXYzY1?=
 =?utf-8?B?T3dxZi8ydnVJMjJNcjV0UVU5YzBEWklYamJYZjRXVFJxQ2tCSVpwOGhyZFUx?=
 =?utf-8?B?V2g1OEsrdCtNdGRFSThMS2JRenYyYXRXVnRobDlHRG9sRy9ON29pSjg0Sllt?=
 =?utf-8?B?R1ZWZWpSeDZlRTdZWFNRcTZkUFFMUlkzcDFWTGovWU9KOTc0eVg5MWVEbCt3?=
 =?utf-8?B?Z2Y2MU51KzFRZHNCcW5tSDVldlZZNmQ2SHgrckh5MDVvaHdUMWVibnAreFI2?=
 =?utf-8?B?SUE5ZktUVFQ0UVkvR0xDam1HWGJVWnBRT3FBOE12cHNrUDV6Znl6VWxnM3Bs?=
 =?utf-8?B?ZVFiZUJaalRvYTR0UnZOcjNEeWkyN2lBbU80enJLcEluOFFhSnEzZU9rdThG?=
 =?utf-8?B?TlpqRHBSWTR5NFZRTHJhTmtvRVVqKzVZTEhPSWVRQUt2MFZHZFI2RXAvMlh4?=
 =?utf-8?B?SHV1RkYvaitDWlZJSWR5QlM1ejNQb0h5VHFoVXpsSWpna3h3MFRoamplM1cr?=
 =?utf-8?B?SUdDWTdyK1lmOWdiSlBzZ2ZDY1pIMWY1YWF4TXFqUjhZRzdHMmdVNnYrME5u?=
 =?utf-8?B?RmM0QnJ1STBMTysrelVOdzNrOVBEaTZTNDRTdGFqUW1VKzVXMFpsVzdzTnIw?=
 =?utf-8?B?V0gvUHlkMHNrcS94T2hRaFFMTWQyWFNDUXgwbDdsd1NHOTI5UEc0RUg0Y0p6?=
 =?utf-8?B?WkI4VVcxK05iUEVQQ3hsSFNoMkg2ZC8vQllRdlFHRWN2T3liZWpxNkk0YXlC?=
 =?utf-8?Q?vEJOKY4Q5GWzUa8g=3D?=
X-Exchange-RoutingPolicyChecked: hPZLDHEFVmqAH1vaoVgRo6Xh6eYrxTVhV5domrkdVBzSTzZ4TH5IJWim0qyfe1P1WMOIae9ptF0LeptsYuOf3lay2EMojRFeCbpMx/tuxEnf7zmtLOXJ1eaeReXzLMpMIVeSyYTTC3b0obSlx+xK+T1K4ISFfJlTGWnG/qzUP4Kfpl6t2IEOD0cHyTbdlfuwd7ftIhO40YFAUOwuv/0b4i6SXtzTRobJM2YcIQqUPgrXcA2nJlrCkjeI1mEI21Di7QxuyRbYUIcbLWpo/yMx+Zi1gJ64RczktUXRX+tOdFtQC6ul3n1eepeqMqAzfAMjvKkwxDac0jZHZnFjmt9KYw==
X-MS-Exchange-CrossTenant-Network-Message-Id: c96385d7-74a7-4daf-3715-08de9ebdbf16
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2026 09:18:12.7281 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uojH4Dd/ddo18g4L+8OwVPKfvt3trqHVcLXQ9i3K7Arh2fe2JA51B4UAuizcKMCnOAxQ8+Usa/EKEGki2NzV38ruN7Te38yNfKE1LLlmokw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6049
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:sebastian.brzezinka@intel.com,m:andi.shyti@linux.intel.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 59E61428C22
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Sebastian,

On 2026-04-16 at 13:31:18 +0200, Sebastian Brzezinka wrote:
> After a GPU reset the HWSP is zeroed, so previously completed
> requests appear incomplete. If such a request is picked up during
> reset_rewind() and marked guilty, i915_request_set_error_once()
> returns early (fence already signaled), leaving fence.error without
> a fatal error code. The subsequent __i915_request_skip() then hits:
> ```
> GEM_BUG_ON(!fatal_error(rq->fence.error))
> ```
> 
> Fixes a kernel BUG observed on Sandy Bridge (Gen6) during
By "Fixes" do you mean this patch? Or are you referring to the
tag "Fixes:" below? If former would be the case, then imperative
form might be better: Fix.

In any case the patch looks sane:
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

> heartbeat-triggered engine resets.
> ```
> kernel BUG at drivers/gpu/drm/i915/i915_request.c:556!
> RIP: __i915_request_skip+0x15e/0x1d0 [i915]
> ...
> __i915_request_reset+0x212/0xa70 [i915]
> reset_rewind+0xe4/0x280 [i915]
> intel_gt_reset+0x30d/0x5b0 [i915]
> heartbeat+0x516/0x530 [i915]
> ```
> 
> Guard __i915_request_skip() with i915_request_signaled(), if the
> fence is already signaled, the ring content is committed and there
> is nothing left to skip.
> 
> Cc: stable@vger.kernel.org
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/13729
> Fixes: 36e191f0644b ("drm/i915: Apply i915_request_skip() on submission")
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_reset.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 37272871b0f2..b728a5171e93 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -133,7 +133,8 @@ void __i915_request_reset(struct i915_request *rq, bool guilty)
>  	rcu_read_lock(); /* protect the GEM context */
>  	if (guilty) {
>  		i915_request_set_error_once(rq, -EIO);
> -		__i915_request_skip(rq);
> +		if (!i915_request_signaled(rq))
> +			__i915_request_skip(rq);
>  		banned = mark_guilty(rq);
>  	} else {
>  		i915_request_set_error_once(rq, -EAGAIN);
> -- 
> 2.53.0
> 

-- 
Best Regards,
Krzysztof
