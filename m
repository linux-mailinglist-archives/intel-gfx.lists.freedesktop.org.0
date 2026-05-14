Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Ht3LBHdBWokcgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 16:32:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FC6543272
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 16:32:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B62B410E2D1;
	Thu, 14 May 2026 14:32:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DSesz9P4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDAC710E2D1
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2026 14:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778769165; x=1810305165;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=GyqKB7YRnoFJ/MdlxaipssCuVh5T8QqkySXgsklOAQE=;
 b=DSesz9P4GjJGJomcFrSeQaUTQ4Ol1OkGW7xnqKRcAkP0C38qN20/uP+k
 w8I6xnBKGQF0xfq1CsUrA6jD03CFenz3PSbbuHsMXhojMwKGeKXa/wRWs
 F371gVOPR1IyDoYprmq5AciboTLqxnjDoPXylHeIMg/DkQ076VhLHVHng
 3rAIdJslWvKbx6XeRTp0A7ddPHmOrq6pIWUgbjYjvmt9CY6fmcqQWtz+A
 heRiWTry6t1aDGiyVKWvdzIpy/rHJxVnY8xhyf9B+5n7pXGdpU7WzJdr9
 H8ovGUsUSKzCXUJdWCj5l1drz+uwifJrLjR7nYyly27T8E5pncNO7K9Hk w==;
X-CSE-ConnectionGUID: 70ttzcXBSUq9Fmz+TR7Gjg==
X-CSE-MsgGUID: mpH0Gky/SqSMgfMhR1O/CA==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="83326329"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="83326329"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 07:32:44 -0700
X-CSE-ConnectionGUID: 5SSmbPemQzSqe72HNgfdWw==
X-CSE-MsgGUID: hhVnl3vbRf2RrSoOBeylDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="232003616"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 07:32:44 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 07:32:44 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 14 May 2026 07:32:44 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.2) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 07:32:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H82rOg4SQ7OVMYhfV5MtoRqgtDflE7XDKOHjHLx+ecIVfPLdEAEJnwZ1SnunmUf5tsht8ypcVnfCaLfqDkbKD+7hslJS9Uf1qQ8GVRKeiMLV3FLCBB+yF+GE+623iQNIXAJe/h0PCk4H1/v12Xbqp3cO3ODZ3usBhpXcTL4Aa7HYtsFhtcFSFdD0oW8GORJUMCbHaCbW+HxHosgP+Z040FUiV4e7I/AUTtodtW1vqLPLzh6ClFCwpytYwYwWLecBWGBkB1eC8mrtDBk/VwcC2wuRV/UoeXcHhqsRv4gOSEh1JEXDgH1zMHJneHF3qcWVxcxUTS35q9pDqs/64riY8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z6mdeKToxF/MRSHqIoCWvgk5RDy44dxGdwTcmixxZ0Q=;
 b=Rfv6ZjnF0t/qsILIflArQTz622q35wreSnTu03rh96fsWk9csN6CGckqrAb3cVY27nEI6YseYY4SML2H9+1lpK1S2Y0KJA9i3KvxZ5p1JJhy3pbwF4+QR0gTxc8w26hNEzAA9kYatH0T3nVg0hTRnSHzk44cz8GrjyRNohpAZZ4xkrnfGY2K9Aua4HXnyx+ZdWPK4E9mtSYcOMAJPfSXQroXM2h4JBUmVEuGWNZuX61zwSQEuBqnD2k2l+yxa9aECDeHJCC/xSU6wMxt/N1wsl+Jl4rVEanF+6fBrOOcR8tC04+0QYoGzgqDVk+IcwwcBZ/RTeaT38NbDPtzhvwa+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SJ0PR11MB5814.namprd11.prod.outlook.com (2603:10b6:a03:423::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Thu, 14 May
 2026 14:32:35 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9913.012; Thu, 14 May 2026
 14:32:34 +0000
Date: Thu, 14 May 2026 10:32:31 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: reconicreferenssse <reconicpreferensse@proton.me>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: Kernel panic in xe_display_flush_cleanup_work (NULL pointer
 dereference Alder Lake + Arc A370M)
Message-ID: <agXc__Px1AlePlh9@intel.com>
References: <sdiBHig2vClGj4J4dEEkXxWHsF6SBPX9B2vSkScXXRR9XKzYpv5WxsxcdbRwAjPfkqulToypH9qwndGaVqbOH6HLNbCNfvVzVpfTno2IqbQ=@proton.me>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <sdiBHig2vClGj4J4dEEkXxWHsF6SBPX9B2vSkScXXRR9XKzYpv5WxsxcdbRwAjPfkqulToypH9qwndGaVqbOH6HLNbCNfvVzVpfTno2IqbQ=@proton.me>
X-ClientProxiedBy: SJ0PR13CA0135.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::20) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SJ0PR11MB5814:EE_
X-MS-Office365-Filtering-Correlation-Id: e1fec0e3-8044-4d99-a603-08deb1c5a35d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|13003099007|11063799003|56012099003|22082099003|18092099006|18002099003|3023799003;
X-Microsoft-Antispam-Message-Info: aNs7ARqpylC6H8310nDChgfFXFBKOcGl022MO7Jhg1Ky7ythRJTUj4m5ztB1syFNekXQlT1kgp93m7QHHdK8LagnCW3SgwMVn9x8Kn4ey8SFW/viOu9DNbcN2kkz9sr/qcs1P4W3DRyUhQG+XE/RtC7RJ4oXWUTQp62QnX/E0wB/9lI2+VrjjAGGNrIwDBr9KRMFgb6nypS26YRx46+wAIQcc7FuFWSI2Zl3DfDDtmzQyTcJtDqikB1bSRlJcGMWNVESP3YqlNaaNlwmLpTjfn4DlU7Of7yL58vrVoEDoIgwDxZa/408puBpP8kEIZfnvqM5rj9Rai0IXYfA8Ns9AWcL6bGKhpnspKf/owpPDv0OwygtAlEWYZBNTlHctYtD97DamrPJLrH/ADENwe/z1AXMGuIPHddBCsyK3oirYf0tUHNfep9qCmnM43/0zrXd5tvRGiTI+1V7nIbgd2vKX9X4RhM7xiOn5mtM4gcq0zLGyqX7q81vQF0M4YH+D9ejGxNqeREPlxOPMftTm2PN9gZTusgiSJ/3aZbjlm4e981tAPN3oxiTnsE1DDmIsS/Enxso4wlS5/FI9uLMjd58YwtZg0OxVWIuu1KftP5RQNOcYVdQCGUMJrtmofXnz5Oo7Ut4XMLBnpRcdP0iroqR/w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(13003099007)(11063799003)(56012099003)(22082099003)(18092099006)(18002099003)(3023799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ekY3aGpGVVVrdVR5QjZhWnVzWU9Qa2FHTk5mVTV4TVpHd3hEdm83Uy9xendx?=
 =?utf-8?B?cGs2RFljUVhWYUFhbGRneWpDNGVQMW5pNlBUOHZ3aUZKY2NLZTFTK1FpZkhW?=
 =?utf-8?B?QWdhSmVtOW9RaE1XVXl1dHliRTJFbHBEejhJVVZ4V0t1OGhUWXhPM1B3WGxk?=
 =?utf-8?B?dUdGRlh1bldYTlhpN0V2bGYrMExLYjNqU0ZMdDVmZ0lQZ2Y3b3hoWGI3TjFo?=
 =?utf-8?B?dXI3MmU3L0gyUEZ3QUFTMThhSDlYWVVlZkMvN3lYVWZOeUtIMmVSLzFDRk5R?=
 =?utf-8?B?UVBzcm5wb2NnWFB0MDVrNWdCYzNNOUhRczdGQUV5NWIxV2wxdEhEeW5oaEhB?=
 =?utf-8?B?WEZIT1BlaUJ3RmpxdVdKWkU3cjJJcjBqWjBVbmJrVkVRTktZbEVCaEFqeG1S?=
 =?utf-8?B?eVZSaU54QWNkb2dGOFBFaXZRdmhFTzFEeWF1bTNHMzVOdUtHU1ladzdvWUNy?=
 =?utf-8?B?a1ZvR0I0RFRiOGkrMy96QUYvRzBYZ1JtclRaaXhqMWIvK3JudGNUanFRTnpk?=
 =?utf-8?B?MGJ3ZE1KekphK1piM3VZaWdkclBRbmhtb3BoVU1kSzF3UEVNSUxITGxqclBo?=
 =?utf-8?B?VFFCcFVlZ1Nna0tkVUJwRFFFaTVrRzdVVHlzQWlCMGlTYXdQSHdIMnNQSWxD?=
 =?utf-8?B?b0F0RmZTa0lvOC83UnJNZE9FMUJhcHNxc1RUUjM1dEFKK0ZuSDdhSTkzaXBp?=
 =?utf-8?B?N3FmV0d2aGxYY0VxM29vQko3OHhac00vZmx4NmRkV3hQL21IVzdzNWRpakpY?=
 =?utf-8?B?Y09aRjlGNW01YWhYVVBrclZ3VTZuV0Jib0V2SW14bGJ1REl5TE9UVnNkYmJE?=
 =?utf-8?B?MFc5MmthV25oN1dwSVAzd2RlUjlzWDdRVzNTK1oyOHV5WXVOZzFLbWVMZ09w?=
 =?utf-8?B?TmhwaWFKRytCZmMzekt4dEhmNGVkb05TWjRybkhFZHdOeHdIczk4Vk45STdx?=
 =?utf-8?B?eGlzeTVSZjhoU2VHYTRSUE9oVklTaWNoMVFTWlZvZC9NRnZnMUlCZTk1c3o0?=
 =?utf-8?B?anBJRGRrNWpZMjdtcjhGd2xMNUwzODl2eFVIWCtHMlltTDFNOHNzMDROemM5?=
 =?utf-8?B?T1Fra25acnlydkwxMXFLSkh5d2ZabWZPWDJMMGFlVmorVTdNUXNVaE1BTnR5?=
 =?utf-8?B?MGZlTmZybldMbEM3WTlKTzRSeTliZWQrbjFZZ2hYU24vdEozM3VJQmRyZkJR?=
 =?utf-8?B?K2pwWVZDUU0xRE5vVXArblkxbndYK0MzZDUyRzdWMCtXdEdxYkFRcEt5amEw?=
 =?utf-8?B?Z0hWVHYyTFFLd2RoNC8xT0VzMEVBVWVUQzhYdUpGUWx6anVSMVdlYWZ3QWVP?=
 =?utf-8?B?Z0FGR2tCdFovWmpTcUJ3R2M3dW5pdFVBRmFjVUJ2cWUyRCtFQ2FxSUpCdklo?=
 =?utf-8?B?YTRWcGZjZ1BrUFVTdk02Mkl0NW5nZzlJcGdDb2N1OHhjL3ZNK3NEWmppUXFy?=
 =?utf-8?B?em9vR0RscTJBbktJNU94Y3IrWS94ckpsRjZNYXBETC9YM3hvTkhpa0dFM0hF?=
 =?utf-8?B?Vjk1eUpFeUZDSk5FQURoWEhnaWZHVDhNdWM4SHNPdzZJdEFnamdLQ0lwVERH?=
 =?utf-8?B?dlVSb2lOdmRhYXd0Y3k5Q1RVQUR0alpwR0xXbEFGbnlBaTJzY2ZIdWhBSnhI?=
 =?utf-8?B?aWE2bXY4WWtCRUVROVVyalI5c1BMeHA0cVVKbldZWWUxR20zUzY3WXJWSHU2?=
 =?utf-8?B?aTVpODAyVU9HZ3VET0VjTjBtaWVJWlByc2xzZ2JIUWZmSTJPdnYxOUdVNGta?=
 =?utf-8?B?cVdYVGJaQUJxU28wdVptSThRaHdhbkN0ZUZlNGt5VEV1QU1hWmxrOW1sVzBa?=
 =?utf-8?B?NzNJajh4alZEb0NuZVdhZjRwRWs4TFBkVWxyTnBuUGtmL3NTbTY3STE2bnk3?=
 =?utf-8?B?VUxVTFphcTJKREg1YTEzd0V3MEJHVWNXWkJBcGpsOU9hcGhIb2NBNjhGQ2NI?=
 =?utf-8?B?YTdqenZTYWxjM1VyQ2p4djJKbzBRRjhIb0MzT3pVb3BFaXhDU3QraXFRVlNu?=
 =?utf-8?B?TFlSVmdwTWptdjNMUVA1TjV6b3hKUFNxV0RuaDUzSEdySnhGQ25HM01PcFdp?=
 =?utf-8?B?VitONmQrY3Y0ZGdVdGpQK2RScm8weWtNTXlXaWZ2VWd2Yi9NYXQrRk43TTE3?=
 =?utf-8?B?ZWx6ZHFJY0NVenZpWUd5WjRGTTJWbFFFTjUwcE1VRFRNdmJOaDQzUW1UK0Mr?=
 =?utf-8?B?US8xQWFpZFlId1FZeWxsUlpvWlA0bWhkcW9hempZYm5rVUw1cWtFSm0ycFE1?=
 =?utf-8?B?dUZjV01CK296ZmdXendCb3BwUnF4UkRVeG1hNDhSclFLWEcwaFlzejB3di9K?=
 =?utf-8?B?akc0U09PVVRGZUlnRHg3STJTMVZ3RHdES09QOU9GMmw1S2N0QTh1UT09?=
X-Exchange-RoutingPolicyChecked: sINyd2wTqZSDuPhQiJ1FiSEC64iXe4kpGuqWDhQUVGhOjzhi5Rm0Rl8hEBLljrpgh+j0bpm5k0nczMbTK/Uquge2dd2+FnTtcKH2jhtuFAlbAsTbhI/V40yA/N/KA9GZyjk4qVf6aKh/F90DfBmdckLsxdmQ9mT/bZA3HMAa5QbxkHCNDNsuF7YuGUuRktaUmpHqEmlwlJWM8mrn4wvgk0Ip3A5G9kZiCDL7jmDmSCbKKRyG6rl4p3hDLFECb98+GKZUqTn70gjoZTHCzre/IVdixlzwk7DiexNFbhJOOSbuTYt/FCEPhbBkVwdvffBSIkUBCt78s4LueZWqJkFcJA==
X-MS-Exchange-CrossTenant-Network-Message-Id: e1fec0e3-8044-4d99-a603-08deb1c5a35d
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2026 14:32:34.8218 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pEmjgVGU8jx8D+98TZxUrVZQwZAr/G8yyXjVlMQW6QcygBbHI6k3Z6vdW7s6T33Jh6LZnyKVEtQajrfu8zacfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5814
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
X-Rspamd-Queue-Id: 54FC6543272
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:reconicpreferensse@proton.me,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,linux.dev:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,pages.freedesktop.org:url,sound.target:url,linux.it:email,poweroff.target:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 09:35:18PM +0000, reconicreferenssse wrote:
> Hello,
> 
> I am reporting a fatal NULL pointer dereference (address: 00000000000005d8) in the 'xe' driver. This is a critical boot-blocker on hybrid Alder Lake-P + DG2 platforms, causing a Kernel Panic during early KMS initialization (initramfs) before the LUKS password prompt.

Could you please report this to following
https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html

Also it would be good to test on the latest drm-tip.

Thanks,
Rodrigo.

> 
> System Environment:
> - OS: Arch Linux (UKI boot, strict lockdown/security policies enabled)
> - Kernel: 7.0.3-arch1-2 (PREEMPT_DYNAMIC)
> - CPU/iGPU: Intel Core i7-1260P (Alder Lake-P) | ID: 46a6
> - dGPU: Intel Arc A370M (DG2) | ID: 5693
> 
> Issue Description:
> The crash occurs specifically during the memory cleanup phase within xe_display_flush_cleanup_work when the power management subsystem attempts to put the display into a runtime suspend state. It appears the driver fails to retain a valid pointer to the display data structure before entering sleep mode.
> 
> Steps to Reproduce:
> 1. Boot with: xe.force_probe=46a6,5693 i915.force_probe=!46a6,!5693
> 2. Allow DRM devices to initialize.
> 3. Wait for the PM subsystem to trigger a runtime suspend (shortly after boot).
> 4. System triggers a Kernel Panic.
> 
> Key Technical Observations:
> - Targeted Failure: The crash is strictly isolated to the xe display stack. Other PCI subsystems (AX211 Wi-Fi, Bluetooth) remain fully functional in the background.
> - Consistency: The behavior is identical across multiple kernels (6.17.x to 7.0.3), confirming a core logic error in the driver.
> - Security State: Thermal states are normal, and security modules (AppArmor, Lockdown) do not interfere with the driver prior to the suspend trigger.
> 
> Call Trace:
> BUG: kernel NULL pointer dereference, address: 00000000000005d8
> ...
> xe_display_flush_cleanup_work+0x96/0x140 [xe]
> xe_display_pm_runtime_suspend+0x4b/0x90 [xe]
> xe_pm_runtime_suspend+0x147/0x300 [xe]
> xe_pci_runtime_suspend+0x2a/0xe0 [xe]
> pci_pm_runtime_suspend+0x78/0x210
> 
> The "Catch-22" of the Current Driver Stack:
> The suggested fallback to the 'i915' driver is not a viable solution for this DG2 hybrid setup, as it breaks the system at a fundamental level:
> 1. Vulkan initialization fails fatally: vkGetPhysicalDeviceDisplayPlanePropertiesKHR failed with ERROR_OUT_OF_HOST_MEMORY.
> 2. iGPU PSR2 failure: "Selective fetch area calculation failed in pipe A" — this causes transient phantom pixels (FIFO underruns) and frame-buffer corruption.
> 3. dGPU Firmware: HuC initialization consistently times out (timed out waiting for MEI GSC).
> 
> Architectural Analysis:
> This appears to be a global synchronization issue for hybrid mobile setups combining Xe-LP (iGPU) and DG2 (dGPU). Since the laptop display is physically wired to the iGPU, forcing the xe driver on both devices creates a fatal race condition. It seems the driver lacks unified synchronization logic for shared display structures during low-power transitions. The iGPU drops the pointer to NULL, and the dGPU immediately hits a dereference panic.
> 
> Offer for Debugging:
> I have captured extensive logs (800k+ lines) and I am ready to run further tests:
> - Booting with xe.runpm=0 to see if masking PM prevents the panic.
> - Single GPU isolation to determine if the panic is strictly multi-GPU resource sync.
> 
> Full sanitized dmesg log is attached. Personal identifiers (MACs, UUIDs) have been redacted, but all technical register/memory states remain intact.
> 
> 
> The following text was my original report and reaction to this issue being dismissed on GitLab. I am including it here to provide full context on the "Catch-22" situation regarding the i915 vs xe drivers on this specific hardware:
> 
> `OS: Arch Linux (UKI boot, strict lockdown/security policies enabled) Kernel: 7.0.3-arch1-2 (PREEMPT_DYNAMIC) CPU/iGPU: Intel Core i7-1260P (Alder Lake-P) | ID: 46a6 dGPU: Intel Arc A370M (DG2) | ID: 5693`
> Issue Description:
> The xe driver encounters a fatal NULL pointer dereference (address: 00000000000005d8) when the power management subsystem attempts to put the display into a runtime suspend state.
> The crash occurs specifically during the memory cleanup phase within xe_display_flush_cleanup_work. It appears the driver fails to pass or retain a valid pointer to the display data structure before entering sleep mode. The processor correctly catches the invalid memory access and triggers a kernel panic to prevent data corruption.
> Steps to Reproduce:
> `Boot the system with parameters to strictly bind both GPUs to xe:` xe.force_probe=46a6,5693 i915.force_probe=! 46a6,! 5693`Allow the system to initialize the DRM devices (both devices probe and initialize successfully). Wait for the PM subsystem to trigger a runtime suspend (e.g., leaving the system idle shortly after boot). System triggers a Kernel Panic.`
> Key Technical Observations:
> `Targeted Failure: The crash is strictly isolated to the xe driver's display power management logic. Other PCI subsystems (such as Intel AX211 Wi-Fi and Bluetooth) survive the graphical crash and remain fully initialized and functional in the background. Consistency: The behavior is persistent and identical across multiple kernels (tested from 6.17.x up to 7.0.3), confirming a core logic error in the driver rather than a transient kernel bug. Hardware State: The system is otherwise completely stable. Thermal states are normal (no fan spin-up or throttling), and security modules (AppArmor, Lockdown) do not interfere with the driver initialization prior to the suspend trigger.`
> Relevant Call Trace:
> BUG: kernel NULL pointer dereference, address: 00000000000005d8
> ...
> xe_display_flush_cleanup_work+0x96/0x140 [xe]
> xe_display_pm_runtime_suspend+0x4b/0x90 [xe]
> xe_pm_runtime_suspend+0x147/0x300 [xe]
> xe_pci_runtime_suspend+0x2a/0xe0 [xe]
> pci_pm_runtime_suspend+0x78/0x210
> Full dmesg log attached below.
> s-posting: This issue and the accompanying logs are being cross-posted on GitLab/GitHub to ensure proper visibility across upstream channels.
> Sanitization: For security and privacy reasons, the attached full dmesg log has been strictly sanitized. Unique personal identifiers (such as MAC addresses, LUKS UUIDs, Machine IDs, TPM hashes, and local usernames) have been redacted or replaced with obvious placeholders (e.g., XXXX or [REDACTED]).
> Data Integrity: Please be assured that all technical data relevant to this bug—including the Call Trace, hardware IDs, register states, memory addresses, and driver initialization sequences—remains completely untouched and 100% intact for accurate debugging.
> 
> Additional context and offer for debugging:
> I wanted to add that despite the xe_display_flush_cleanup_work panic, the kernel does not completely halt. The system survives in a headless state — network stack, Bluetooth, and security modules (AppArmor, UFW) continue to function normally in the background. The crash is strictly isolated to the display stack.
> If it helps the team narrow down the race condition, I am ready to run the following isolated tests and provide the corresponding dmesg / journalctl logs:
> 
> Runtime PM Test: Booting with xe.runpm=0 to confirm if explicitly disabling runtime power management completely masks the NULL pointer dereference.
> Single GPU Isolation: Forcing the xe driver on only one device at a time (e.g., xe.force_probe=46a6 for iGPU only, or 5693 for dGPU only) while completely disabling i915. This could help determine if the panic is a result of multi-GPU resource synchronization (Deep Link) or if it reproduces on a single isolated unit.
> 
> upd-,
> Critical architectural observation regarding hybrid Gen 12 + Gen 12.7 setups:
> I want to emphasize the severity and the likely architectural root cause of this bug. The panic happens at the earliest initramfs stage during KMS initialization, completely blocking the boot process before the LUKS decryption prompt can even be answered. Both GPUs are killed immediately upon the first display idle trigger.
> It appears this is a global synchronization issue for hybrid mobile setups combining Xe-LP (Core 12th gen iGPU) and Alchemist / DG2 (Arc dGPU).
> Since the laptop display is physically wired to the iGPU, forcing the xe driver on both devices creates a fatal race condition in xe_display_pm_runtime_suspend. It seems the driver lacks a unified "channel" or synchronization logic to safely handle shared display structures between these two different generations of hardware when transitioning to a low-power state. The iGPU drops the display structure pointer to NULL, and the dGPU immediately hits a dereference panic trying to access it.
> This makes the xe driver completely unusable for any laptop with a 12th Gen CPU + Arc dGPU combo, acting as a hard boot-blocker.
> I am commenting here because the suggested "solution" is fundamentally broken and highlights a Catch-22 in your current driver stack.
> I spent over 4 days debugging a hard kernel panic on a half-dead system, collecting dumps, and isolating the exact race condition in the xe driver. To have this dismissed purely on bureaucratic grounds ("not officially supported") is extremely frustrating, especially given the alternative you suggested.
> Here is the reality of using the "officially supported" i915 driver on this DG2 hybrid setup: it completely breaks Vulkan initialization. It throws the following fatal error: vkGetPhysicalDeviceDisplayPlanePropertiesKHR failed with ERROR_OUT_OF_HOST_MEMORY
> So, the situation is:
> 
> The modern xe driver has a fatal NULL pointer dereference (Kernel Panic) that you refuse to patch.
> The legacy i915 driver completely fails to allocate display planes for Vulkan on this hybrid architecture.
> 
> I am not going to jump through bureaucratic hoops, open new tabs, and create duplicate issues in the legacy i915 tracker just to be bounced around again.
> The logs, the hardware IDs, and the exact point of failure for the kernel panic are all documented right here. If Intel's official stance is to leave a fatal kernel panic unpatched in the modern driver while the legacy driver remains unusable for DG2 hybrid setups, then this platform is effectively dead on Linux.
> Do with this information what you will.
> 
> P.S. (Follow-up regarding the i915 recommendation):
> Just to add to the absurdity of the "switch to i915" suggestion, I just pulled the dmesg logs for i915 on this exact hybrid setup. The display pipeline and dGPU firmware initialization are completely broken at a fundamental level:
> 
> i915 0000:00:02.0: [drm] Selective fetch area calculation failed in pipe A PSR2 is failing on the iGPU. This causes transient phantom pixels (FIFO underruns) and completely corrupts the framebuffer LUT at 100% display brightness, resulting in black screens for hardware-accelerated apps (like Spotify).
> i915 0000:03:00.0: [drm] GT0: HuC: timed out waiting for MEI GSC The legacy driver cannot even reliably initialize the dGPU firmware without timing out.
> 
> These aren't just minor visual glitches; these are deep, hybrid-specific architectural failures. No sane user is going to debug this on a legacy driver. If I were to take your advice and open a ticket for these hardware desyncs and firmware timeouts on the i915 tracker, I wouldn't just get bounced around — I would likely be completely ignored. Nobody there is going to untangle a DG2 hybrid routing nightmare on a deprecated stack.
> Pushing users to a legacy driver that literally cannot draw pixels correctly, breaks Vulkan, and fails to load firmware on this hardware is not a solution. It's a dead end.
> 
> My original ticket regarding this issue on GitLab was hastily closed by maintainers without a proper fix. I am leaving this fully documented analysis here on GitHub. If this helps any other researcher or user debugging this hybrid routing nightmare on Linux, use this information as you see fit.
> 
> Please be aware that forcing the xe driver on only one device at a time will likely work only if your laptop has a physical hardware MUX switch, or if you are using a 13th Gen (or newer) processor where the xe driver is natively prioritized for the iGPU. On standard 12th Gen hybrid laptops without a MUX switch, attempting to isolate the GPU will fail due to the physical display routing.
> 
> I have attached the full sanitized dmesg log. I am ready to provide further debugging data or run specific test kernels to isolate the race condition.
> 
> 
> 
> 
> May 04 12:22:28 host kernel: Linux version 7.0.3-arch1-2 (linux@host) (gcc (GCC) 16.1.1 20260430, GNU ld (GNU Binutils) 2.46.0) #1 SMP PREEMPT_DYNAMIC Fri, 01 May 2026 15:49:22 +0000
> May 04 12:22:28 host kernel: Command line: rd.luks.name=XXXX-XXXX-XXXX-XXXX=root root=/dev/mapper/root zswap.enabled=0 rw rootfstype=ext4 lsm=landlock,lockdown,yama,integrity,apparmor,bpf xe.force_probe=46a6,5693 i915.force_probe=!46a6,!5693
> May 04 12:22:28 host kernel: x86/split lock detection: #AC: crashing the kernel on kernel split_locks and warning on user-space split_locks
> May 04 12:22:28 host kernel: BIOS-provided physical RAM map:
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000000000000-0x000000000009efff] System RAM
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x000000000009f000-0x00000000000fffff] device reserved
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000000100000-0x0000000036e03fff] System RAM
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000036e04000-0x0000000036e08fff] ACPI data
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000036e09000-0x000000003c2c8fff] System RAM
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x000000003c2c9000-0x000000003cbc8fff] device reserved
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x000000003cbc9000-0x000000003e9defff] System RAM
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x000000003e9df000-0x0000000040a7efff] device reserved
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000040a7f000-0x0000000043a2efff] ACPI NVS
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000043a2f000-0x0000000043afefff] ACPI data
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000043aff000-0x0000000043afffff] System RAM
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000043b00000-0x0000000047ffffff] device reserved
> May 04 12:22:28 host kernel: BIOS-e820: [gap 0x0000000048000000-0x00000000483fffff]
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000048400000-0x00000000485fffff] device reserved
> May 04 12:22:28 host kernel: BIOS-e820: [gap 0x0000000048600000-0x00000000495fffff]
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000049600000-0x00000000507fffff] device reserved
> May 04 12:22:28 host kernel: BIOS-e820: [gap 0x0000000050800000-0x00000000bfffffff]
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x00000000c0000000-0x00000000cfffffff] device reserved
> May 04 12:22:28 host kernel: BIOS-e820: [gap 0x00000000d0000000-0x00000000fe00ffff]
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x00000000fe010000-0x00000000fe010fff] device reserved
> May 04 12:22:28 host kernel: BIOS-e820: [gap 0x00000000fe011000-0x00000000fed1ffff]
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x00000000fed20000-0x00000000fed7ffff] device reserved
> May 04 12:22:28 host kernel: BIOS-e820: [gap 0x00000000fed80000-0x00000000feffffff]
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x00000000ff000000-0x00000000ffffffff] device reserved
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000100000000-0x00000004af7fffff] System RAM
> May 04 12:22:28 host kernel: NX (Execute Disable) protection: active
> May 04 12:22:28 host kernel: APIC: Static calls initialized
> May 04 12:22:28 host kernel: efi: EFI v2.7 by INSYXX Corp.
> May 04 12:22:28 host kernel: efi: ACPI=0x43afe000 ACPI 2.0=0x43afe014 TPMFinalLog=0x43986000 SMBIOS=0x3f086000 MEMATTR=0x36e5f018 ESRT=0x37b78818 RNG=0x43a32f18 INITRD=0x36e11e18 TPMEventLog=0x36e04018
> May 04 12:22:28 host kernel: random: crng init done
> May 04 12:22:28 host kernel: efi: Remove mem86: MMIO range=[0xc0000000-0xcfffffff] (256MB) from e820 map
> May 04 12:22:28 host kernel: e820: remove [mem 0xc0000000-0xcfffffff] device reserved
> May 04 12:22:28 host kernel: efi: Not removing mem87: MMIO range=[0xfe010000-0xfe010fff] (4KB) from e820 map
> May 04 12:22:28 host kernel: efi: Remove mem89: MMIO range=[0xff000000-0xffffffff] (16MB) from e820 map
> May 04 12:22:28 host kernel: e820: remove [mem 0xff000000-0xffffffff] device reserved
> May 04 12:22:28 host kernel: SMBIOS 3.3 present.
> May 04 12:22:28 host kernel: DMI: Acer Swift SFX16-52G/Penguin_ADP, BIOS V1.06 02/15/2024
> May 04 12:22:28 host kernel: DMI: Memory slots populated: 8/8
> May 04 12:22:28 host kernel: tsc: Detected 2500.000 MHz processor
> May 04 12:22:28 host kernel: tsc: Detected 2496.000 MHz TSC
> May 04 12:22:28 host kernel: e820: update [mem 0x00000000-0x00000fff] System RAM ==> device reserved
> 
> May 04 12:22:28 host kernel: e820: remove [mem 0x000a0000-0x000fffff] System RAM
> May 04 12:22:28 host kernel: last_pfn = 0x4af800 max_arch_pfn = 0x400000000
> May 04 12:22:28 host kernel: MTRR map: 5 entries (3 fixed + 2 variable; max 23), built from 10 variable MTRRs
> May 04 12:22:28 host kernel: x86/PAT: Configuration [0-7]: WB WC UC- UC WB WP UC- WT
> May 04 12:22:28 host kernel: last_pfn = 0x43b00 max_arch_pfn = 0x400000000
> May 04 12:22:28 host kernel: esrt: Reserving ESRT space from 0x0000000037b78818 to 0x0000000037b78878.
> May 04 12:22:28 host kernel: e820: update [mem 0x37b78000-0x37b78fff] System RAM ==> device reserved
> 
> May 04 12:22:28 host kernel: Using GB pages for direct mapping
> May 04 12:22:28 host kernel: Secure boot disabled
> May 04 12:22:28 host kernel: RAMDISK: [mem 0x32058000-0x33d8afff]
> May 04 12:22:28 host kernel: ACPI: Early table checksum verification disabled
> May 04 12:22:28 host kernel: ACPI: RSDP 0x0000000043AFE014 000024 (v02 ACRSYS)
> May 04 12:22:28 host kernel: ACPI: XSDT 0x0000000043A33228 00016C (v01 ACRSYS ACRPRDCT 00000002 01000013)
> May 04 12:22:28 host kernel: ACPI: FACP 0x0000000043AC2000 000114 (v06 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: DSDT 0x0000000043A49000 075201 (v02 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: FACS 0x000000004395E000 000040
> May 04 12:22:28 host kernel: ACPI: UEFI 0x0000000043A2E000 000236 (v01 ACRSYS ACRPRDCT 00000001 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AF9000 00389B (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AF8000 00038C (v02 ACRSYS ACRPRDCT 00000001 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AF7000 000106 (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AF1000 005D2C (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AEE000 002B2C (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AEA000 0033D3 (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043ADC000 00D39F (v02 INTEL TcssSsdt 00001000 INTL 20200717)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043ADB000 000150 (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043ADA000 00094D (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AD9000 000033 (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AD7000 0012C9 (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AD6000 00077B (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: TPM2 0x0000000043AD5000 00004C (v04 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: MSDM 0x0000000043AD4000 000055 (v03 ACRSYS ACRPRDCT 00000001 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: LPIT 0x0000000043AD3000 0000CC (v01 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: WSMT 0x0000000043AD2000 000028 (v01 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AD1000 000AD9 (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043ACE000 002357 (v02 ACRSYS ACRPRDCT 00000000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: DBGP 0x0000000043AFD000 000034 (v01 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: DBG2 0x0000000043ACC000 000054 (v00 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: NHLT 0x0000000043ACA000 001B64 (v00 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AC3000 006ED9 (v01 ACRSYS ACRPRDCT 00001000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: HPET 0x0000000043AC1000 000038 (v01 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: APIC 0x0000000043AC0000 0001DC (v04 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: MCFG 0x0000000043ABF000 00003C (v01 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043A45000 003E20 (v02 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043A43000 001D0E (v02 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: $H2O 0x0000000043A42000 00002C (v01 ACRSYS ACRPRDCT 00000001 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: DMAR 0x0000000043A41000 0000A0 (v02 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: UEFI 0x000000004395B000 00063A (v01 ACRSYS ACRPRDCT 00000000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: UEFI 0x000000004395A000 00005C (v01 ACRSYS ACRPRDCT 00000000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043A40000 000499 (v02 ACRSYS ACRPRDCT 00000000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043A3C000 003AEA (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043A38000 0039DA (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043A37000 000A67 (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043A36000 0000F8 (v01 ACRSYS ACRPRDCT 00001000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: FPDT 0x0000000043A35000 000044 (v01 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: PHAT 0x0000000043ACD000 0005CD (v01 ACRSYS ACRPRDCT 00000005 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: BGRT 0x0000000043A34000 000038 (v01 ACRSYS ACRPRDCT 00000001 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: Reserving FACP table memory at [mem 0x43ac2000-0x43ac2113]
> May 04 12:22:28 host kernel: ACPI: Reserving DSDT table memory at [mem 0x43a49000-0x43abe200]
> May 04 12:22:28 host kernel: ACPI: Reserving FACS table memory at [mem 0x4395e000-0x4395e03f]
> May 04 12:22:28 host kernel: ACPI: Reserving UEFI table memory at [mem 0x43a2e000-0x43a2e235]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43af9000-0x43afc89a]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43af8000-0x43af838b]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43af7000-0x43af7105]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43af1000-0x43af6d2b]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43aee000-0x43af0b2b]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43aea000-0x43aed3d2]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43adc000-0x43ae939e]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43adb000-0x43adb14f]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43ada000-0x43ada94c]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43ad9000-0x43ad9032]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43ad7000-0x43ad82c8]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43ad6000-0x43ad677a]
> May 04 12:22:28 host kernel: ACPI: Reserving TPM2 table memory at [mem 0x43ad5000-0x43ad504b]
> May 04 12:22:28 host kernel: ACPI: Reserving MSDM table memory at [mem 0x43ad4000-0x43ad4054]
> May 04 12:22:28 host kernel: ACPI: Reserving LPIT table memory at [mem 0x43ad3000-0x43ad30cb]
> May 04 12:22:28 host kernel: ACPI: Reserving WSMT table memory at [mem 0x43ad2000-0x43ad2027]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43ad1000-0x43ad1ad8]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43ace000-0x43ad0356]
> May 04 12:22:28 host kernel: ACPI: Reserving DBGP table memory at [mem 0x43afd000-0x43afd033]
> May 04 12:22:28 host kernel: ACPI: Reserving DBG2 table memory at [mem 0x43acc000-0x43acc053]
> May 04 12:22:28 host kernel: ACPI: Reserving NHLT table memory at [mem 0x43aca000-0x43acbb63]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43ac3000-0x43ac9ed8]
> May 04 12:22:28 host kernel: ACPI: Reserving HPET table memory at [mem 0x43ac1000-0x43ac1037]
> May 04 12:22:28 host kernel: ACPI: Reserving APIC table memory at [mem 0x43ac0000-0x43ac01db]
> May 04 12:22:28 host kernel: ACPI: Reserving MCFG table memory at [mem 0x43abf000-0x43abf03b]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43a45000-0x43a48e1f]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43a43000-0x43a44d0d]
> May 04 12:22:28 host kernel: ACPI: Reserving $H2O table memory at [mem 0x43a42000-0x43a4202b]
> May 04 12:22:28 host kernel: ACPI: Reserving DMAR table memory at [mem 0x43a41000-0x43a4109f]
> May 04 12:22:28 host kernel: ACPI: Reserving UEFI table memory at [mem 0x4395b000-0x4395b639]
> May 04 12:22:28 host kernel: ACPI: Reserving UEFI table memory at [mem 0x4395a000-0x4395a05b]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43a40000-0x43a40498]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43a3c000-0x43a3fae9]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43a38000-0x43a3b9d9]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43a37000-0x43a37a66]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43a36000-0x43a360f7]
> May 04 12:22:28 host kernel: ACPI: Reserving FPDT table memory at [mem 0x43a35000-0x43a35043]
> May 04 12:22:28 host kernel: ACPI: Reserving PHAT table memory at [mem 0x43acd000-0x43acd5cc]
> May 04 12:22:28 host kernel: ACPI: Reserving BGRT table memory at [mem 0x43a34000-0x43a34037]
> May 04 12:22:28 host kernel: No NUMA configuration found
> May 04 12:22:28 host kernel: Faking a node at [mem 0x0000000000000000-0x00000004af7fffff]
> May 04 12:22:28 host kernel: NOXX_DATA(0) allocated [mem 0x4af7d5280-0x4af7fffff]
> May 04 12:22:28 host kernel: Reserving Intel graphics memory at [mem 0x4c800000-0x507fffff]
> May 04 12:22:28 host kernel: ACPI: PM-Timer IO Port: 0x1808
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x02] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x03] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x04] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x05] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x06] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x07] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x08] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x09] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x0a] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x0b] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x0c] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x0d] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x0e] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x0f] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x10] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x11] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x12] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x13] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x14] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x15] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x16] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x17] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x00] high edge lint[0x1])
> May 04 12:22:28 host kernel: IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI 0-119
> May 04 12:22:28 host kernel: ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
> May 04 12:22:28 host kernel: ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
> May 04 12:22:28 host kernel: ACPI: Using ACPI (MADT) for SMP configuration information
> May 04 12:22:28 host kernel: ACPI: HPET id: 0x8086a201 base: 0xfed00000
> May 04 12:22:28 host kernel: e820: update [mem 0x36e62000-0x37012fff] System RAM ==> device reserved
> 
> May 04 12:22:28 host kernel: TSC deadline timer available
> May 04 12:22:28 host kernel: CPU topo: Max. logical packages: 1
> May 04 12:22:28 host kernel: CPU topo: Max. logical nodes: 1
> May 04 12:22:28 host kernel: CPU topo: Num. nodes per package: 1
> May 04 12:22:28 host kernel: CPU topo: Max. logical dies: 1
> May 04 12:22:28 host kernel: CPU topo: Max. dies per package: 1
> May 04 12:22:28 host kernel: CPU topo: Max. threads per core: 2
> May 04 12:22:28 host kernel: CPU topo: Num. cores per package: 12
> May 04 12:22:28 host kernel: CPU topo: Num. threads per package: 16
> May 04 12:22:28 host kernel: CPU topo: Allowing 16 present CPUs plus 0 hotplug CPUs
> May 04 12:22:28 host kernel: PM: hibernation: Registered nosave memory: [mem 0x00000000-0x00000fff]
> May 04 12:22:28 host kernel: PM: hibernation: Registered nosave memory: [mem 0x0009f000-0x000fffff]
> May 04 12:22:28 host kernel: PM: hibernation: Registered nosave memory: [mem 0x36e04000-0x36e08fff]
> May 04 12:22:28 host kernel: PM: hibernation: Registered nosave memory: [mem 0x36e62000-0x37012fff]
> May 04 12:22:28 host kernel: PM: hibernation: Registered nosave memory: [mem 0x37b78000-0x37b78fff]
> May 04 12:22:28 host kernel: PM: hibernation: Registered nosave memory: [mem 0x3c2c9000-0x3cbc8fff]
> May 04 12:22:28 host kernel: PM: hibernation: Registered nosave memory: [mem 0x3e9df000-0x43afefff]
> May 04 12:22:28 host kernel: PM: hibernation: Registered nosave memory: [mem 0x43b00000-0xffffffff]
> May 04 12:22:28 host kernel: [gap 0x50800000-0xfe00ffff] available for PCI devices
> May 04 12:22:28 host kernel: Booting paravirtualized kernel on bare hardware
> May 04 12:22:28 host kernel: clocksource: refined-jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1910969940391419 ns
> May 04 12:22:28 host kernel: Zone ranges:
> May 04 12:22:28 host kernel: DMA [mem 0x0000000000001000-0x0000000000ffffff]
> May 04 12:22:28 host kernel: DMA32 [mem 0x0000000001000000-0x00000000ffffffff]
> May 04 12:22:28 host kernel: Normal [mem 0x0000000100000000-0x00000004af7fffff]
> May 04 12:22:28 host kernel: Device empty
> May 04 12:22:28 host kernel: Movable zone start for each node
> May 04 12:22:28 host kernel: Early memory node ranges
> May 04 12:22:28 host kernel: node 0: [mem 0x0000000000001000-0x000000000009efff]
> May 04 12:22:28 host kernel: node 0: [mem 0x0000000000100000-0x0000000036e03fff]
> May 04 12:22:28 host kernel: node 0: [mem 0x0000000036e09000-0x000000003c2c8fff]
> May 04 12:22:28 host kernel: node 0: [mem 0x000000003cbc9000-0x000000003e9defff]
> May 04 12:22:28 host kernel: node 0: [mem 0x0000000043aff000-0x0000000043afffff]
> May 04 12:22:28 host kernel: node 0: [mem 0x0000000100000000-0x00000004af7fffff]
> May 04 12:22:28 host kernel: Initmem setup node 0 [mem 0x0000000000001000-0x00000004af7fffff]
> May 04 12:22:28 host kernel: On node 0, zone DMA: 1 pages in unavailable ranges
> May 04 12:22:28 host kernel: On node 0, zone DMA: 97 pages in unavailable ranges
> May 04 12:22:28 host kernel: On node 0, zone DMA32: 5 pages in unavailable ranges
> May 04 12:22:28 host kernel: On node 0, zone DMA32: 2304 pages in unavailable ranges
> May 04 12:22:28 host kernel: On node 0, zone DMA32: 20768 pages in unavailable ranges
> May 04 12:22:28 host kernel: On node 0, zone Normal: 17664 pages in unavailable ranges
> May 04 12:22:28 host kernel: On node 0, zone Normal: 2048 pages in unavailable ranges
> May 04 12:22:28 host kernel: setup_percpu: NR_CPUS:8192 nr_cpumask_bits:16 nr_cpu_ids:16 nr_node_ids:1
> May 04 12:22:28 host kernel: percpu: Embedded 63 pages/cpu s221184 r8192 d28672 u262144
> May 04 12:22:28 host kernel: pcpu-alloc: s221184 r8192 d28672 u262144 alloc=1*2097152
> May 04 12:22:28 host kernel: pcpu-alloc: [0] 00 01 02 03 04 05 06 07 [0] 08 09 10 11 12 13 14 15
> May 04 12:22:28 host kernel: Kernel command line: rd.luks.name=XXXX-XXXX-XXXX-XXXX=root root=/dev/mapper/root zswap.enabled=0 rw rootfstype=ext4 lsm=landlock,lockdown,yama,integrity,apparmor,bpf xe.force_probe=46a6,5693 i915.force_probe=!46a6,!5693
> May 04 12:22:28 host kernel: printk: log buffer data + meta data: 131072 + 557056 = 688128 bytes
> May 04 12:22:28 host kernel: Dentry cache hash table entries: 2097152 (order: 12, 16777216 bytes, linear)
> May 04 12:22:28 host kernel: Inode-cache hash table entries: 1048576 (order: 11, 8388608 bytes, linear)
> May 04 12:22:28 host kernel: software IO TLB: area num 16.
> May 04 12:22:28 host kernel: Fallback order for Node 0: 0
> May 04 12:22:28 host kernel: Built 1 zonelists, mobility grouping on. Total pages: 4118649
> May 04 12:22:28 host kernel: Policy zone: Normal
> May 04 12:22:28 host kernel: mem auto-init: stack:all(zero), heap alloc:on, heap free:off
> May 04 12:22:28 host kernel: SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=16, Nodes=1
> May 04 12:22:28 host kernel: ftrace: allocating 58015 entries in 228 pages
> May 04 12:22:28 host kernel: ftrace: allocated 228 pages with 4 groups
> May 04 12:22:28 host kernel: Dynamic Preempt: full
> May 04 12:22:28 host kernel: rcu: Preemptible hierarchical RCU implementation.
> May 04 12:22:28 host kernel: rcu: RCU restricting CPUs from NR_CPUS=8192 to nr_cpu_ids=16.
> May 04 12:22:28 host kernel: rcu: RCU priority boosting: priority 1 delay 500 ms.
> May 04 12:22:28 host kernel: Trampoline variant of Tasks RCU enabled.
> May 04 12:22:28 host kernel: Rude variant of Tasks RCU enabled.
> May 04 12:22:28 host kernel: Tracing variant of Tasks RCU enabled.
> May 04 12:22:28 host kernel: rcu: RCU calculated value of scheduler-enlistment delay is 100 jiffies.
> May 04 12:22:28 host kernel: rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=16
> May 04 12:22:28 host kernel: RCU Tasks: Setting shift to 4 and lim to 1 rcu_task_cb_adjust=1 rcu_task_cpu_ids=16.
> May 04 12:22:28 host kernel: RCU Tasks Rude: Setting shift to 4 and lim to 1 rcu_task_cb_adjust=1 rcu_task_cpu_ids=16.
> May 04 12:22:28 host kernel: NR_IRQS: 524544, nr_irqs: 2184, preallocated irqs: 16
> May 04 12:22:28 host kernel: rcu: srcu_init: Setting srcu_struct sizes based on contention.
> May 04 12:22:28 host kernel: kfence: initialized - using 2097152 bytes for 255 objects at 0x(ptrval)-0x(ptrval)
> May 04 12:22:28 host kernel: Console: colour dummy device 80x25
> May 04 12:22:28 host kernel: printk: legacy console [tty0] enabled
> May 04 12:22:28 host kernel: ACPI: Core revision 20251212
> May 04 12:22:28 host kernel: hpet: HPET dysfunctional in PC10. Force disabled.
> May 04 12:22:28 host kernel: APIC: Switch to symmetric I/O mode setup
> May 04 12:22:28 host kernel: DMAR: Host address width 39
> May 04 12:22:28 host kernel: DMAR: DRHD base: 0x000000fed90000 flags: 0x0
> May 04 12:22:28 host kernel: DMAR: dmar0: reg_base_addr fed90000 ver 4:0 cap 1c0000c40660462 ecap 29a00f0505e
> May 04 12:22:28 host kernel: DMAR: DRHD base: 0x000000fed92000 flags: 0x0
> May 04 12:22:28 host kernel: DMAR: dmar1: reg_base_addr fed92000 ver 1:0 cap d2008c40660462 ecap f050da
> May 04 12:22:28 host kernel: DMAR: DRHD base: 0x000000fed91000 flags: 0x1
> May 04 12:22:28 host kernel: DMAR: dmar2: reg_base_addr fed91000 ver 5:0 cap d2008c40660462 ecap f050da
> May 04 12:22:28 host kernel: DMAR: RMRR base: 0x0000004c000000 end: 0x000000507fffff
> May 04 12:22:28 host kernel: DMAR-IR: IOAPIC id 2 under DRHD base 0xfed91000 IOMMU 2
> May 04 12:22:28 host kernel: DMAR-IR: HPET id 0 under DRHD base 0xfed91000
> May 04 12:22:28 host kernel: DMAR-IR: Queued invalidation will be enabled to support x2apic and Intr-remapping.
> May 04 12:22:28 host kernel: DMAR-IR: Enabled IRQ remapping in x2apic mode
> May 04 12:22:28 host kernel: x2apic enabled
> May 04 12:22:28 host kernel: APIC: Switched APIC routing to: cluster x2apic
> May 04 12:22:28 host kernel: clocksource: tsc-early: mask: 0xffffffffffffffff max_cycles: 0x23fa772cf26, max_idle_ns: 440795269835 ns
> May 04 12:22:28 host kernel: Calibrating delay loop (skipped), value calculated using timer frequency.. 4992.00 BogoMIPS (lpj=2496000)
> May 04 12:22:28 host kernel: CPU0: Thermal monitoring enabled (TM1)
> May 04 12:22:28 host kernel: x86/cpu: User Mode Instruction Prevention (UMIP) activated
> May 04 12:22:28 host kernel: CET detected: Indirect Branch Tracking enabled
> May 04 12:22:28 host kernel: Last level iTLB entries: 4KB 0, 2MB 0, 4MB 0
> May 04 12:22:28 host kernel: Last level dTLB entries: 4KB 0, 2MB 0, 4MB 0, 1GB 0
> May 04 12:22:28 host kernel: process: using mwait in idle threads
> May 04 12:22:28 host kernel: mitigations: Enabled attack vectors: user_kernel, user_user, guest_host, guest_guest, SMT mitigations: auto
> May 04 12:22:28 host kernel: Speculative Store Bypass: Mitigation: Speculative Store Bypass disabled via prctl
> May 04 12:22:28 host kernel: Spectre V2 : Mitigation: Enhanced / Automatic IBRS
> May 04 12:22:28 host kernel: Register File Data Sampling: Mitigation: Clear Register File
> May 04 12:22:28 host kernel: VMSCAPE: Mitigation: IBPB before exit to userspace
> May 04 12:22:28 host kernel: Spectre V1 : Mitigation: usercopy/swapgs barriers and __user pointer sanitization
> May 04 12:22:28 host kernel: Spectre V2 : Spectre v2 / PBRSB-eIBRS: Retire a single CALL on VMEXIT
> May 04 12:22:28 host kernel: Spectre V2 : mitigation: Enabling conditional Indirect Branch Prediction Barrier
> May 04 12:22:28 host kernel: x86/fpu: Supporting XSAVE feature 0x001: 'x87 floating point registers'
> May 04 12:22:28 host kernel: x86/fpu: Supporting XSAVE feature 0x002: 'SSE registers'
> May 04 12:22:28 host kernel: x86/fpu: Supporting XSAVE feature 0x004: 'AVX registers'
> May 04 12:22:28 host kernel: x86/fpu: Supporting XSAVE feature 0x200: 'Protection Keys User registers'
> May 04 12:22:28 host kernel: x86/fpu: Supporting XSAVE feature 0x800: 'Control-flow User registers'
> May 04 12:22:28 host kernel: x86/fpu: Supporting XSAVE feature 0x1000: 'Control-flow Kernel registers (KVM only)'
> May 04 12:22:28 host kernel: x86/fpu: xstate_offset[2]: 576, xstate_sizes[2]: 256
> May 04 12:22:28 host kernel: x86/fpu: xstate_offset[9]: 832, xstate_sizes[9]: 8
> May 04 12:22:28 host kernel: x86/fpu: xstate_offset[11]: 840, xstate_sizes[11]: 16
> May 04 12:22:28 host kernel: x86/fpu: xstate_offset[12]: 856, xstate_sizes[12]: 24
> May 04 12:22:28 host kernel: x86/fpu: Enabled xstate features 0x1a07, context size is 880 bytes, using 'compacted' format.
> May 04 12:22:28 host kernel: Freeing SMP alternatives memory: 56K
> May 04 12:22:28 host kernel: pid_max: default: 32768 minimum: 301
> May 04 12:22:28 host kernel: landlock: Up and running.
> May 04 12:22:28 host kernel: Yama: becoming mindful.
> May 04 12:22:28 host kernel: AppArmor: AppArmor initialized
> May 04 12:22:28 host kernel: LSM support for eBPF active
> May 04 12:22:28 host kernel: Mount-cache hash table entries: 32768 (order: 6, 262144 bytes, linear)
> May 04 12:22:28 host kernel: Mountpoint-cache hash table entries: 32768 (order: 6, 262144 bytes, linear)
> May 04 12:22:28 host kernel: VFS: Finished mounting rootfs on nullfs
> May 04 12:22:28 host kernel: smpboot: CPU0: 12th Gen Intel(R) Core(TM) i7-1260P (family: 0x6, model: 0x9a, stepping: 0x3)
> May 04 12:22:28 host kernel: Performance Events: XSAVE Architectural LBR, PEBS fmt4+-baseline, AnyThread deprecated, Alderlake Hybrid events, 32-deep LBR, full-width counters, Intel PMU driver.
> May 04 12:22:28 host kernel: core: cpu_core PMU driver:
> May 04 12:22:28 host kernel: ... version: 5
> May 04 12:22:28 host kernel: ... bit width: 48
> May 04 12:22:28 host kernel: ... generic counters: 8
> May 04 12:22:28 host kernel: ... generic bitmap: 00000000000000ff
> May 04 12:22:28 host kernel: ... fixed-purpose counters: 4
> May 04 12:22:28 host kernel: ... fixed-purpose bitmap: 000000000000000f
> May 04 12:22:28 host kernel: ... value mask: 0000ffffffffffff
> May 04 12:22:28 host kernel: ... max period: 00007fffffffffff
> May 04 12:22:28 host kernel: ... global_ctrl mask: 0001000f000000ff
> May 04 12:22:28 host kernel: signal: max sigframe size: 3632
> May 04 12:22:28 host kernel: Estimated ratio of average max frequency by base frequency (times 1024): 1556
> May 04 12:22:28 host kernel: rcu: Hierarchical SRCU implementation.
> May 04 12:22:28 host kernel: rcu: Max phase no-delay instances is 400.
> May 04 12:22:28 host kernel: Timer migration: 2 hierarchy levels; 8 children per group; 2 crossnode level
> May 04 12:22:28 host kernel: NMI watchdog: Enabled. Permanently consumes one hw-PMU counter.
> May 04 12:22:28 host kernel: smp: Bringing up secondary CPUs ...
> May 04 12:22:28 host kernel: smpboot: x86: Booting SMP configuration:
> May 04 12:22:28 host kernel: .... node #0, CPUs: #2 #4 #6 #8 #9 #10 #11 #12 #13 #14 #15
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU8: Topology domain 1 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU8: Topology domain 2 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU8: Topology domain 3 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU8: Topology domain 4 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU8: Topology domain 5 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU8: Topology domain 6 shift 7 != 6
> May 04 12:22:28 host kernel: core: cpu_atom PMU driver:
> May 04 12:22:28 host kernel: ... version: 5
> May 04 12:22:28 host kernel: ... bit width: 48
> May 04 12:22:28 host kernel: ... generic counters: 6
> May 04 12:22:28 host kernel: ... generic bitmap: 000000000000003f
> May 04 12:22:28 host kernel: ... fixed-purpose counters: 3
> May 04 12:22:28 host kernel: ... fixed-purpose bitmap: 0000000000000007
> May 04 12:22:28 host kernel: ... value mask: 0000ffffffffffff
> May 04 12:22:28 host kernel: ... max period: 00007fffffffffff
> May 04 12:22:28 host kernel: ... global_ctrl mask: 000000070000003f
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU9: Topology domain 1 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU9: Topology domain 2 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU9: Topology domain 3 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU9: Topology domain 4 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU9: Topology domain 5 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU9: Topology domain 6 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU10: Topology domain 1 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU10: Topology domain 2 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU10: Topology domain 3 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU10: Topology domain 4 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU10: Topology domain 5 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU10: Topology domain 6 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU11: Topology domain 1 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU11: Topology domain 2 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU11: Topology domain 3 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU11: Topology domain 4 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU11: Topology domain 5 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU11: Topology domain 6 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU12: Topology domain 1 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU12: Topology domain 2 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU12: Topology domain 3 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU12: Topology domain 4 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU12: Topology domain 5 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU12: Topology domain 6 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU13: Topology domain 1 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU13: Topology domain 2 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU13: Topology domain 3 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU13: Topology domain 4 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU13: Topology domain 5 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU13: Topology domain 6 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU14: Topology domain 1 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU14: Topology domain 2 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU14: Topology domain 3 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU14: Topology domain 4 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU14: Topology domain 5 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU14: Topology domain 6 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU15: Topology domain 1 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU15: Topology domain 2 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU15: Topology domain 3 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU15: Topology domain 4 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU15: Topology domain 5 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU15: Topology domain 6 shift 7 != 6
> May 04 12:22:28 host kernel: #1 #3 #5 #7
> May 04 12:22:28 host kernel: smp: Brought up 1 node, 16 CPUs
> May 04 12:22:28 host kernel: smpboot: Total of 16 processors activated (79872.00 BogoMIPS)
> May 04 12:22:28 host kernel: Memory: 15904532K/16474596K available (21849K kernel code, 3060K rwdata, 16832K rodata, 4816K init, 5252K bss, 541160K reserved, 0K cma-reserved)
> May 04 12:22:28 host kernel: devtmpfs: initialized
> May 04 12:22:28 host kernel: x86/mm: Memory block size: 128MB
> May 04 12:22:28 host kernel: ACPI: PM: Registering ACPI NVS region [mem 0x40a7f000-0x43a2efff] (50003968 bytes)
> May 04 12:22:28 host kernel: clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1911260446275000 ns
> May 04 12:22:28 host kernel: posixtimers hash table entries: 8192 (order: 5, 131072 bytes, linear)
> May 04 12:22:28 host kernel: futex hash table entries: 4096 (262144 bytes on 1 NUMA nodes, total 256 KiB, linear).
> May 04 12:22:28 host kernel: PM: RTC time: 10:22:26, date: 2026-05-04
> May 04 12:22:28 host kernel: NET: Registered PF_NETLINK/PF_ROUTE protocol family
> May 04 12:22:28 host kernel: DMA: preallocated 2048 KiB GFP_KERNEL pool for atomic allocations
> May 04 12:22:28 host kernel: DMA: preallocated 2048 KiB GFP_KERNEL|GFP_DMA pool for atomic allocations
> May 04 12:22:28 host kernel: DMA: preallocated 2048 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
> May 04 12:22:28 host kernel: audit: initializing netlink subsys (disabled)
> May 04 12:22:28 host kernel: audit: type=2000 audit(1777890146.013:1): state=initialized audit_enabled=0 res=1
> May 04 12:22:28 host kernel: thermal_sys: Registered thermal governor 'fair_share'
> May 04 12:22:28 host kernel: thermal_sys: Registered thermal governor 'bang_bang'
> May 04 12:22:28 host kernel: thermal_sys: Registered thermal governor 'step_wise'
> May 04 12:22:28 host kernel: thermal_sys: Registered thermal governor 'user_space'
> May 04 12:22:28 host kernel: thermal_sys: Registered thermal governor 'power_allocator'
> May 04 12:22:28 host kernel: cpuidle: using governor ladder
> May 04 12:22:28 host kernel: cpuidle: using governor menu
> May 04 12:22:28 host kernel: efi: Freeing EFI boot services memory: 91132K
> May 04 12:22:28 host kernel: acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
> May 04 12:22:28 host kernel: PCI: ECAM [mem 0xc0000000-0xce0fffff] (base 0xc0000000) for domain 0000 [bus 00-e0]
> May 04 12:22:28 host kernel: PCI: Using configuration type 1 for base access
> May 04 12:22:28 host kernel: kprobes: kprobe jump-optimization is enabled. All kprobes are optimized if possible.
> May 04 12:22:28 host kernel: HugeTLB: registered 1.00 GiB page size, pre-allocated 0 pages
> May 04 12:22:28 host kernel: HugeTLB: 16380 KiB vmemmap can be freed for a 1.00 GiB page
> May 04 12:22:28 host kernel: HugeTLB: registered 2.00 MiB page size, pre-allocated 0 pages
> May 04 12:22:28 host kernel: HugeTLB: 28 KiB vmemmap can be freed for a 2.00 MiB page
> May 04 12:22:28 host kernel: raid6: skipped pq benchmark and selected avx2x4
> May 04 12:22:28 host kernel: raid6: using avx2x2 recovery algorithm
> May 04 12:22:28 host kernel: fbcon: Taking over console
> May 04 12:22:28 host kernel: ACPI: Added _OSI(Module Device)
> May 04 12:22:28 host kernel: ACPI: Added _OSI(Processor Device)
> May 04 12:22:28 host kernel: ACPI: Added _OSI(Processor Aggregator Device)
> May 04 12:22:28 host kernel: ACPI: 23 ACPI AML tables successfully acquired and loaded
> May 04 12:22:28 host kernel: ACPI: \SB: platform OSC: OS support mask [006e7eff]
> May 04 12:22:28 host kernel: ACPI: \SB: platform OSC: OS control mask [006e7eff]
> May 04 12:22:28 host kernel: ACPI: USB4 OSC: OS supports USB3+ DisplayPort+ PCIe+ XDomain+
> May 04 12:22:28 host kernel: ACPI: USB4 OSC: OS controls USB3+ DisplayPort+ PCIe+ XDomain+
> May 04 12:22:28 host kernel: ACPI: Dynamic OEM Table Load:
> May 04 12:22:28 host kernel: ACPI: SSDT 0xFFFF8B0241D5B000 000394 (v02 PmRef Cpu0Cst 00003001 INTL 20200717)
> May 04 12:22:28 host kernel: ACPI: Dynamic OEM Table Load:
> May 04 12:22:28 host kernel: ACPI: SSDT 0xFFFF8B0241824800 0005E4 (v02 PmRef Cpu0Ist 00003000 INTL 20200717)
> May 04 12:22:28 host kernel: ACPI: Dynamic OEM Table Load:
> May 04 12:22:28 host kernel: ACPI: SSDT 0xFFFF8B024185B400 0001AB (v02 PmRef Cpu0Psd 00003000 INTL 20200717)
> May 04 12:22:28 host kernel: ACPI: Dynamic OEM Table Load:
> May 04 12:22:28 host kernel: ACPI: SSDT 0xFFFF8B0241820800 0004BA (v02 PmRef Cpu0Hwp 00003000 INTL 20200717)
> May 04 12:22:28 host kernel: ACPI: Dynamic OEM Table Load:
> May 04 12:22:28 host kernel: ACPI: SSDT 0xFFFF8B0241810000 001BAF (v02 PmRef ApIst 00003000 INTL 20200717)
> May 04 12:22:28 host kernel: ACPI: Dynamic OEM Table Load:
> May 04 12:22:28 host kernel: ACPI: SSDT 0xFFFF8B0243320000 001038 (v02 PmRef ApHwp 00003000 INTL 20200717)
> May 04 12:22:28 host kernel: ACPI: Dynamic OEM Table Load:
> May 04 12:22:28 host kernel: ACPI: SSDT 0xFFFF8B0243326000 001349 (v02 PmRef ApPsd 00003000 INTL 20200717)
> May 04 12:22:28 host kernel: ACPI: Dynamic OEM Table Load:
> May 04 12:22:28 host kernel: ACPI: SSDT 0xFFFF8B0241818000 000FBB (v02 PmRef ApCst 00003000 INTL 20200717)
> May 04 12:22:28 host kernel: ACPI: EC: EC started
> May 04 12:22:28 host kernel: ACPI: EC: interrupt blocked
> May 04 12:22:28 host kernel: ACPI: EC: EC_CMD/EC_SC=0x66, EC_DATA=0x62
> May 04 12:22:28 host kernel: ACPI: \SB.PC00.LPCB.EC0: Boot DSDT EC used to handle transactions
> May 04 12:22:28 host kernel: ACPI: Interpreter enabled
> May 04 12:22:28 host kernel: ACPI: PM: (supports S0 S3 S4 S5)
> May 04 12:22:28 host kernel: ACPI: Using IOAPIC for interrupt routing
> May 04 12:22:28 host kernel: PCI: Using host bridge windows from ACPI; if necessary, use "pci=nocrs" and report a bug
> May 04 12:22:28 host kernel: PCI: Ignoring E820 reservations for host bridge windows
> May 04 12:22:28 host kernel: ACPI: Enabled 8 GPEs in block 00 to 7F
> May 04 12:22:28 host kernel: ACPI: \SB.PC00.PEG0.PXP: New power resource
> May 04 12:22:28 host kernel: ACPI: \SB.PC00.XHCI.RHUB.HS10.BTRT: New power resource
> May 04 12:22:28 host kernel: ACPI: \SB.PC00.PAUD: New power resource
> May 04 12:22:28 host kernel: ACPI: \SB.PC00.CNVW.WRST: New power resource
> May 04 12:22:28 host kernel: ACPI: \SB.PC00.RP01.PCRP: New power resource
> May 04 12:22:28 host kernel: ACPI: \SB.PC00.VMD0.VOL0.V0PR: New power resource
> May 04 12:22:28 host kernel: ACPI: \SB.PC00.VMD0.VOL1.V1PR: New power resource
> May 04 12:22:28 host kernel: ACPI: \SB.PC00.VMD0.VOL2.V2PR: New power resource
> May 04 12:22:28 host kernel: ACPI: \SB.PC00.VMD0.VOL3.V3PR: New power resource
> May 04 12:22:28 host kernel: ACPI: \SB.PC00.TBT0: New power resource
> May 04 12:22:28 host kernel: ACPI: \SB.PC00.TBT1: New power resource
> May 04 12:22:28 host kernel: ACPI: \SB.PC00.D3C: New power resource
> May 04 12:22:28 host kernel: ACPI: \TZ.FN00: New power resource
> May 04 12:22:28 host kernel: ACPI: \TZ.FN01: New power resource
> May 04 12:22:28 host kernel: ACPI: \TZ.FN02: New power resource
> May 04 12:22:28 host kernel: ACPI: \TZ.FN03: New power resource
> May 04 12:22:28 host kernel: ACPI: \TZ.FN04: New power resource
> May 04 12:22:28 host kernel: ACPI: \PIN: New power resource
> May 04 12:22:28 host kernel: ACPI: PCI Root Bridge [PC00] (domain 0000 [bus 00-e0])
> May 04 12:22:28 host kernel: acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM ClockPM Segments MSI EDR HPX-Type3]
> May 04 12:22:28 host kernel: acpi PNP0A08:00: _OSC: platform does not support [AER]
> May 04 12:22:28 host kernel: acpi PNP0A08:00: OSC: OS now controls [PCIeHotplug SHPCHotplug PME PCIeCapability LTR DPC]
> May 04 12:22:28 host kernel: PCI host bridge to bus 0000:00
> May 04 12:22:28 host kernel: pci_bus 0000:00: root bus resource [io 0x0000-0x0cf7 window]
> May 04 12:22:28 host kernel: pci_bus 0000:00: root bus resource [io 0x0d00-0xffff window]
> May 04 12:22:28 host kernel: pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bffff window]
> May 04 12:22:28 host kernel: pci_bus 0000:00: root bus resource [mem 0x50800000-0xbfffffff window]
> May 04 12:22:28 host kernel: pci_bus 0000:00: root bus resource [mem 0x4000000000-0x7fffffffff window]
> May 04 12:22:28 host kernel: pci_bus 0000:00: root bus resource [bus 00-e0]
> May 04 12:22:28 host kernel: pci 0000:00:00.0: [8086:4621] type 00 class 0x060000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:02.0: [8086:46a6] type 00 class 0x030000 PCIe Root Complex Integrated Endpoint
> May 04 12:22:28 host kernel: pci 0000:00:02.0: BAR 0 [mem 0x612f000000-0x612fffffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:02.0: BAR 2 [mem 0x4000000000-0x400fffffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:00:02.0: BAR 4 [io 0x3000-0x303f]
> May 04 12:22:28 host kernel: pci 0000:00:02.0: DMAR: Skip IOMMU disabling for graphics
> May 04 12:22:28 host kernel: pci 0000:00:02.0: Video device with shadowed ROM at [mem 0x000c0000-0x000dffff]
> May 04 12:22:28 host kernel: pci 0000:00:02.0: VF BAR 0 [mem 0x00000000-0x00ffffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:02.0: VF BAR 0 [mem 0x00000000-0x06ffffff 64bit]: contains BAR 0 for 7 VFs
> May 04 12:22:28 host kernel: pci 0000:00:02.0: VF BAR 2 [mem 0x00000000-0x1fffffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:00:02.0: VF BAR 2 [mem 0x00000000-0xdfffffff 64bit pref]: contains BAR 2 for 7 VFs
> May 04 12:22:28 host kernel: pci 0000:00:04.0: [8086:461d] type 00 class 0x118000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:04.0: BAR 0 [mem 0x6100a80000-0x6100a9ffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:05.0: [8086:465d] type 00 class 0x048000 PCIe Root Complex Integrated Endpoint
> May 04 12:22:28 host kernel: pci 0000:00:05.0: BAR 0 [mem 0x612e000000-0x612effffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:05.0: enabling Extended Tags
> May 04 12:22:28 host kernel: pci 0000:00:06.0: [8086:464d] type 01 class 0x060400 PCIe Root Port
> May 04 12:22:28 host kernel: pci 0000:00:06.0: PCI bridge to [bus 01-03]
> May 04 12:22:28 host kernel: pci 0000:00:06.0: bridge window [mem 0x61000000-0x61ffffff]
> May 04 12:22:28 host kernel: pci 0000:00:06.0: bridge window [mem 0x6000000000-0x61007fffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:00:06.0: PME# supported from D0 D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:00:06.0: PTM enabled (root), 4ns granularity
> May 04 12:22:28 host kernel: pci 0000:00:07.0: [8086:466e] type 01 class 0x060400 PCIe Root Port
> May 04 12:22:28 host kernel: pci 0000:00:07.0: PCI bridge to [bus 04-2c]
> May 04 12:22:28 host kernel: pci 0000:00:07.0: bridge window [mem 0x62000000-0x6e1fffff]
> May 04 12:22:28 host kernel: pci 0000:00:07.0: bridge window [mem 0x6110000000-0x612bffffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:00:07.0: Overriding RP PIO Log Size to 4
> May 04 12:22:28 host kernel: pci 0000:00:07.0: PME# supported from D0 D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:00:07.0: PTM enabled (root), 4ns granularity
> May 04 12:22:28 host kernel: pci 0000:00:07.2: [8086:462f] type 01 class 0x060400 PCIe Root Port
> May 04 12:22:28 host kernel: pci 0000:00:07.2: PCI bridge to [bus 2d-55]
> May 04 12:22:28 host kernel: pci 0000:00:07.2: bridge window [mem 0x54000000-0x601fffff]
> May 04 12:22:28 host kernel: pci 0000:00:07.2: bridge window [mem 0x6130000000-0x614bffffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:00:07.2: Overriding RP PIO Log Size to 4
> May 04 12:22:28 host kernel: pci 0000:00:07.2: PME# supported from D0 D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:00:07.2: PTM enabled (root), 4ns granularity
> May 04 12:22:28 host kernel: pci 0000:00:08.0: [8086:464f] type 00 class 0x088000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:08.0: BAR 0 [mem 0x6100ac5000-0x6100ac5fff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:0d.0: [8086:461e] type 00 class 0x0c0330 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:0d.0: BAR 0 [mem 0x6100aa0000-0x6100aaffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:0d.0: PME# supported from D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:00:0d.2: [8086:463e] type 00 class 0x0c0340 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:0d.2: BAR 0 [mem 0x6100a40000-0x6100a7ffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:0d.2: BAR 2 [mem 0x6100ac4000-0x6100ac4fff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:0d.2: supports D1 D2
> May 04 12:22:28 host kernel: pci 0000:00:0d.2: PME# supported from D0 D1 D2 D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:00:0d.3: [8086:466d] type 00 class 0x0c0340 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:0d.3: BAR 0 [mem 0x6100a00000-0x6100a3ffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:0d.3: BAR 2 [mem 0x6100ac3000-0x6100ac3fff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:0d.3: supports D1 D2
> May 04 12:22:28 host kernel: pci 0000:00:0d.3: PME# supported from D0 D1 D2 D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:00:0e.0: [8086:467f] type 00 class 0x010400 PCIe Root Complex Integrated Endpoint
> May 04 12:22:28 host kernel: pci 0000:00:0e.0: BAR 0 [mem 0x612c000000-0x612dffffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:0e.0: BAR 2 [mem 0x52000000-0x53ffffff]
> May 04 12:22:28 host kernel: pci 0000:00:0e.0: BAR 4 [mem 0x6100900000-0x61009fffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:14.0: [8086:51ed] type 00 class 0x0c0330 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:14.0: BAR 0 [mem 0x60400000-0x6040ffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:14.0: PME# supported from D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:00:14.2: [8086:51ef] type 00 class 0x050000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:14.2: BAR 0 [mem 0x6100ab8000-0x6100abbfff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:14.2: BAR 2 [mem 0x6100ac2000-0x6100ac2fff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:14.3: [8086:51f0] type 00 class 0x028000 PCIe Root Complex Integrated Endpoint
> May 04 12:22:28 host kernel: pci 0000:00:14.3: BAR 0 [mem 0x6100ab4000-0x6100ab7fff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:14.3: PME# supported from D0 D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:00:15.0: [8086:51e8] type 00 class 0x0c8000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:15.0: BAR 0 [mem 0x00000000-0x00000fff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:15.1: [8086:51e9] type 00 class 0x0c8000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:15.1: BAR 0 [mem 0x00000000-0x00000fff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:16.0: [8086:51e0] type 00 class 0x078000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:16.0: BAR 0 [mem 0x6100abf000-0x6100abffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:16.0: PME# supported from D3hot
> May 04 12:22:28 host kernel: pci 0000:00:19.0: [8086:51c5] type 00 class 0x0c8000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:19.0: BAR 0 [mem 0x00000000-0x00000fff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:19.1: [8086:51c6] type 00 class 0x0c8000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:19.1: BAR 0 [mem 0x00000000-0x00000fff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:1f.0: [8086:5182] type 00 class 0x060100 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:1f.3: [8086:51c8] type 00 class 0x040100 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:1f.3: BAR 0 [mem 0x6100ab0000-0x6100ab3fff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:1f.3: BAR 4 [mem 0x6100800000-0x61008fffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:1f.3: PME# supported from D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:00:1f.4: [8086:51a3] type 00 class 0x0c0500 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:1f.4: BAR 0 [mem 0x6100abc000-0x6100abc0ff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:1f.4: BAR 4 [io 0xefa0-0xefbf]
> May 04 12:22:28 host kernel: pci 0000:00:1f.5: [8086:51a4] type 00 class 0x0c8000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:1f.5: BAR 0 [mem 0xfe010000-0xfe010fff]
> May 04 12:22:28 host kernel: pci 0000:01:00.0: [8086:4fa1] type 01 class 0x060400 PCIe Switch Upstream Port
> May 04 12:22:28 host kernel: pci 0000:01:00.0: BAR 0 [mem 0x6100000000-0x61007fffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:01:00.0: PCI bridge to [bus 02-03]
> May 04 12:22:28 host kernel: pci 0000:01:00.0: bridge window [mem 0x61000000-0x61ffffff]
> May 04 12:22:28 host kernel: pci 0000:01:00.0: bridge window [mem 0x6000000000-0x60ffffffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:01:00.0: PME# supported from D0 D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:01:00.0: 63.012 Gb/s available PCIe bandwidth, limited by 16.0 GT/s PCIe x4 link at 0000:00:06.0 (capable of 126.024 Gb/s with 16.0 GT/s PCIe x8 link)
> May 04 12:22:28 host kernel: pci 0000:00:06.0: PCI bridge to [bus 01-03]
> May 04 12:22:28 host kernel: pci 0000:02:01.0: [8086:4fa4] type 01 class 0x060400 PCIe Switch Downstream Port
> May 04 12:22:28 host kernel: pci 0000:02:01.0: PCI bridge to [bus 03]
> May 04 12:22:28 host kernel: pci 0000:02:01.0: bridge window [mem 0x61000000-0x61ffffff]
> May 04 12:22:28 host kernel: pci 0000:02:01.0: bridge window [mem 0x6000000000-0x60ffffffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:02:01.0: PME# supported from D0 D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:01:00.0: PCI bridge to [bus 02-03]
> May 04 12:22:28 host kernel: pci 0000:03:00.0: [8086:5693] type 00 class 0x038000 PCIe Endpoint
> May 04 12:22:28 host kernel: pci 0000:03:00.0: BAR 0 [mem 0x61000000-0x61ffffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:03:00.0: BAR 2 [mem 0x6000000000-0x60ffffffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:03:00.0: ROM [mem 0xffe00000-0xffffffff pref]
> May 04 12:22:28 host kernel: pci 0000:03:00.0: ASPM: overriding L1 acceptable latency from 0x0 to 0x7
> May 04 12:22:28 host kernel: pci 0000:03:00.0: PME# supported from D0 D3hot
> May 04 12:22:28 host kernel: pci 0000:02:01.0: PCI bridge to [bus 03]
> May 04 12:22:28 host kernel: pci 0000:00:07.0: PCI bridge to [bus 04-2c]
> May 04 12:22:28 host kernel: pci 0000:00:07.2: PCI bridge to [bus 2d-55]
> May 04 12:22:28 host kernel: ACPI: \SB.PEPD: Duplicate LPS0 DSM functions (mask: 0x1)
> May 04 12:22:28 host kernel: Low-power S0 idle used by default for system suspend
> May 04 12:22:28 host kernel: ACPI: EC: interrupt unblocked
> May 04 12:22:28 host kernel: ACPI: EC: event unblocked
> May 04 12:22:28 host kernel: ACPI: EC: EC_CMD/EC_SC=0x66, EC_DATA=0x62
> May 04 12:22:28 host kernel: ACPI: EC: GPE=0x6e
> May 04 12:22:28 host kernel: ACPI: \SB.PC00.LPCB.EC0: Boot DSDT EC initialization complete
> May 04 12:22:28 host kernel: ACPI: \SB.PC00.LPCB.EC0: EC: Used to handle transactions and events
> May 04 12:22:28 host kernel: iommu: Default domain type: Translated
> May 04 12:22:28 host kernel: iommu: DMA domain TLB invalidation policy: lazy mode
> May 04 12:22:28 host kernel: SCSI subsystem initialized
> May 04 12:22:28 host kernel: libata version 3.00 loaded.
> May 04 12:22:28 host kernel: ACPI: bus type USB registered
> May 04 12:22:28 host kernel: usbcore: registered new interface driver usbfs
> May 04 12:22:28 host kernel: usbcore: registered new interface driver hub
> May 04 12:22:28 host kernel: usbcore: registered new device driver usb
> May 04 12:22:28 host kernel: EDAC MC: Ver: 3.0.0
> May 04 12:22:28 host kernel: efivars: Registered efivars operations
> May 04 12:22:28 host kernel: NetLabel: Initializing
> May 04 12:22:28 host kernel: NetLabel: domain hash size = 128
> May 04 12:22:28 host kernel: NetLabel: protocols = UNLABELED CIPSOv4 CALIPSO
> May 04 12:22:28 host kernel: NetLabel: unlabeled traffic allowed by default
> May 04 12:22:28 host kernel: mctp: management component transport protocol core
> May 04 12:22:28 host kernel: NET: Registered PF_MCTP protocol family
> May 04 12:22:28 host kernel: PCI: Using ACPI for IRQ routing
> May 04 12:22:28 host kernel: PCI: pci_cache_line_size set to 64 bytes
> May 04 12:22:28 host kernel: pci 0000:00:1f.5: BAR 0 [mem 0xfe010000-0xfe010fff]: can't claim; no compatible bridge window
> May 04 12:22:28 host kernel: e820: register RAM buffer resource [mem 0x0009f000-0x0009ffff]
> May 04 12:22:28 host kernel: e820: register RAM buffer resource [mem 0x36e04000-0x37ffffff]
> May 04 12:22:28 host kernel: e820: register RAM buffer resource [mem 0x36e62000-0x37ffffff]
> May 04 12:22:28 host kernel: e820: register RAM buffer resource [mem 0x37b78000-0x37ffffff]
> May 04 12:22:28 host kernel: e820: register RAM buffer resource [mem 0x3c2c9000-0x3fffffff]
> May 04 12:22:28 host kernel: e820: register RAM buffer resource [mem 0x3e9df000-0x3fffffff]
> May 04 12:22:28 host kernel: e820: register RAM buffer resource [mem 0x43b00000-0x43ffffff]
> May 04 12:22:28 host kernel: e820: register RAM buffer resource [mem 0x4af800000-0x4afffffff]
> May 04 12:22:28 host kernel: pci 0000:00:02.0: vgaarb: setting as boot VGA device
> May 04 12:22:28 host kernel: pci 0000:00:02.0: vgaarb: bridge control possible
> May 04 12:22:28 host kernel: pci 0000:00:02.0: vgaarb: VGA device added: decodes=io+mem,owns=io+mem,locks=none
> May 04 12:22:28 host kernel: vgaarb: loaded
> May 04 12:22:28 host kernel: clocksource: Switched to clocksource tsc-early
> May 04 12:22:28 host kernel: VFS: Disk quotas dquot_6.6.0
> May 04 12:22:28 host kernel: VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
> May 04 12:22:28 host kernel: AppArmor: AppArmor Filesystem Enabled
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io 0x002e-0x002f]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io 0x004e-0x004f]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io 0x0061]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io 0x0063]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io 0x0065]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io 0x0067]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io 0x0068]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io 0x006c]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io 0x0070]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io 0x0080]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io 0x0092]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io 0x00b2-0x00b3]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Reserved [io 0x0680-0x069f]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Reserved [io 0x164e-0x164f]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Reserved [io 0xfd60-0xfd63]
> May 04 12:22:28 host kernel: acpi PNP0C02:01: Reserved [mem 0xfedc0000-0xfedc7fff]
> May 04 12:22:28 host kernel: acpi PNP0C02:01: Reserved [mem 0xfeda0000-0xfeda0fff]
> May 04 12:22:28 host kernel: acpi PNP0C02:01: Reserved [mem 0xfeda1000-0xfeda1fff]
> May 04 12:22:28 host kernel: acpi PNP0C02:01: Reserved [mem 0xc0000000-0xcfffffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:01: Could not reserve [mem 0xfed20000-0xfed7ffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:01: Could not reserve [mem 0xfed90000-0xfed93fff]
> May 04 12:22:28 host kernel: acpi PNP0C02:01: Could not reserve [mem 0xfed45000-0xfed8ffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:01: Reserved [mem 0xfee00000-0xfeefffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:02: Could not reserve [mem 0xfe000000-0xfe01ffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:02: Reserved [mem 0xfe04c000-0xfe04ffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:02: Reserved [mem 0xfe050000-0xfe0affff]
> May 04 12:22:28 host kernel: acpi PNP0C02:02: Reserved [mem 0xfe0d0000-0xfe0fffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:02: Reserved [mem 0xfe200000-0xfe7fffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:02: Reserved [mem 0xff000000-0xffffffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:02: Could not reserve [io 0x1800-0x18fe]
> May 04 12:22:28 host kernel: acpi PNP0C02:02: Reserved [mem 0xfd000000-0xfd68ffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:02: Reserved [mem 0xfd6b0000-0xfd6cffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:02: Reserved [mem 0xfd6f0000-0xfdffffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:03: Reserved [io 0x2000-0x20fe]
> May 04 12:22:28 host kernel: pnp: PnP ACPI init
> May 04 12:22:28 host kernel: pnp: PnP ACPI: found 2 devices
> May 04 12:22:28 host kernel: clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff, max_idle_ns: 2085701024 ns
> May 04 12:22:28 host kernel: NET: Registered PF_INET protocol family
> May 04 12:22:28 host kernel: IP idents hash table entries: 262144 (order: 9, 2097152 bytes, linear)
> May 04 12:22:28 host kernel: tcp_listen_portaddr_hash hash table entries: 8192 (order: 5, 131072 bytes, linear)
> May 04 12:22:28 host kernel: Table-perturb hash table entries: 65536 (order: 6, 262144 bytes, linear)
> May 04 12:22:28 host kernel: TCP established hash table entries: 131072 (order: 8, 1048576 bytes, linear)
> May 04 12:22:28 host kernel: TCP bind hash table entries: 65536 (order: 9, 2097152 bytes, linear)
> May 04 12:22:28 host kernel: TCP: Hash tables configured (established 131072 bind 65536)
> May 04 12:22:28 host kernel: MPTCP token hash table entries: 16384 (order: 7, 393216 bytes, linear)
> May 04 12:22:28 host kernel: UDP hash table entries: 8192 (order: 7, 524288 bytes, linear)
> May 04 12:22:28 host kernel: UDP-Lite hash table entries: 8192 (order: 7, 524288 bytes, linear)
> May 04 12:22:28 host kernel: NET: Registered PF_UNIX/PF_LOCAL protocol family
> May 04 12:22:28 host kernel: NET: Registered PF_XDP protocol family
> May 04 12:22:28 host kernel: pci 0000:03:00.0: ROM [mem 0xffe00000-0xffffffff pref]: can't claim; no compatible bridge window
> May 04 12:22:28 host kernel: pci 0000:00:07.0: bridge window [io 0x1000-0x0fff] to [bus 04-2c] add_size 1000
> May 04 12:22:28 host kernel: pci 0000:00:07.2: bridge window [io 0x1000-0x0fff] to [bus 2d-55] add_size 1000
> May 04 12:22:28 host kernel: pci 0000:00:02.0: VF BAR 2 [mem 0x4020000000-0x40ffffffff 64bit pref]: assigned
> May 04 12:22:28 host kernel: pci 0000:00:02.0: VF BAR 0 [mem 0x4010000000-0x4016ffffff 64bit]: assigned
> 
> 
> Regards,
> Reconic / ExtremeCore

> May 04 12:22:28 host kernel: Linux version 7.0.3-arch1-2 (linux@host) (gcc (GCC) 16.1.1 20260430, GNU ld (GNU Binutils) 2.46.0) #1 SMP PREEMPT_DYNAMIC Fri, 01 May 2026 15:49:22 +0000
> May 04 12:22:28 host kernel: Command line: rd.luks.name=XXXX-XXXX-XXXX-XXXX=root root=/dev/mapper/root zswap.enabled=0 rw rootfstype=ext4 lsm=landlock,lockdown,yama,integrity,apparmor,bpf xe.force_probe=46a6,5693 i915.force_probe=!46a6,!5693
> May 04 12:22:28 host kernel: x86/split lock detection: #AC: crashing the kernel on kernel split_locks and warning on user-space split_locks
> May 04 12:22:28 host kernel: BIOS-provided physical RAM map:
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000000000000-0x000000000009efff]  System RAM
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x000000000009f000-0x00000000000fffff]  device reserved
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000000100000-0x0000000036e03fff]  System RAM
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000036e04000-0x0000000036e08fff]  ACPI data
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000036e09000-0x000000003c2c8fff]  System RAM
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x000000003c2c9000-0x000000003cbc8fff]  device reserved
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x000000003cbc9000-0x000000003e9defff]  System RAM
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x000000003e9df000-0x0000000040a7efff]  device reserved
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000040a7f000-0x0000000043a2efff]  ACPI NVS
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000043a2f000-0x0000000043afefff]  ACPI data
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000043aff000-0x0000000043afffff]  System RAM
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000043b00000-0x0000000047ffffff]  device reserved
> May 04 12:22:28 host kernel: BIOS-e820: [gap 0x0000000048000000-0x00000000483fffff]
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000048400000-0x00000000485fffff]  device reserved
> May 04 12:22:28 host kernel: BIOS-e820: [gap 0x0000000048600000-0x00000000495fffff]
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000049600000-0x00000000507fffff]  device reserved
> May 04 12:22:28 host kernel: BIOS-e820: [gap 0x0000000050800000-0x00000000bfffffff]
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x00000000c0000000-0x00000000cfffffff]  device reserved
> May 04 12:22:28 host kernel: BIOS-e820: [gap 0x00000000d0000000-0x00000000fe00ffff]
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x00000000fe010000-0x00000000fe010fff]  device reserved
> May 04 12:22:28 host kernel: BIOS-e820: [gap 0x00000000fe011000-0x00000000fed1ffff]
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x00000000fed20000-0x00000000fed7ffff]  device reserved
> May 04 12:22:28 host kernel: BIOS-e820: [gap 0x00000000fed80000-0x00000000feffffff]
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x00000000ff000000-0x00000000ffffffff]  device reserved
> May 04 12:22:28 host kernel: BIOS-e820: [mem 0x0000000100000000-0x00000004af7fffff]  System RAM
> May 04 12:22:28 host kernel: NX (Execute Disable) protection: active
> May 04 12:22:28 host kernel: APIC: Static calls initialized
> May 04 12:22:28 host kernel: efi: EFI v2.7 by INSYXX Corp.
> May 04 12:22:28 host kernel: efi: ACPI=0x43afe000 ACPI 2.0=0x43afe014 TPMFinalLog=0x43986000 SMBIOS=0x3f086000 MEMATTR=0x36e5f018 ESRT=0x37b78818 RNG=0x43a32f18 INITRD=0x36e11e18 TPMEventLog=0x36e04018
> May 04 12:22:28 host kernel: random: crng init done
> May 04 12:22:28 host kernel: efi: Remove mem86: MMIO range=[0xc0000000-0xcfffffff] (256MB) from e820 map
> May 04 12:22:28 host kernel: e820: remove [mem 0xc0000000-0xcfffffff] device reserved
> May 04 12:22:28 host kernel: efi: Not removing mem87: MMIO range=[0xfe010000-0xfe010fff] (4KB) from e820 map
> May 04 12:22:28 host kernel: efi: Remove mem89: MMIO range=[0xff000000-0xffffffff] (16MB) from e820 map
> May 04 12:22:28 host kernel: e820: remove [mem 0xff000000-0xffffffff] device reserved
> May 04 12:22:28 host kernel: SMBIOS 3.3 present.
> May 04 12:22:28 host kernel: DMI: Acer Swift SFX16-52G/Penguin_ADP, BIOS V1.06 02/15/2024
> May 04 12:22:28 host kernel: DMI: Memory slots populated: 8/8
> May 04 12:22:28 host kernel: tsc: Detected 2500.000 MHz processor
> May 04 12:22:28 host kernel: tsc: Detected 2496.000 MHz TSC
> May 04 12:22:28 host kernel: e820: update [mem 0x00000000-0x00000fff] System RAM ==> device reserved
> May 04 12:22:28 host kernel: e820: remove [mem 0x000a0000-0x000fffff] System RAM
> May 04 12:22:28 host kernel: last_pfn = 0x4af800 max_arch_pfn = 0x400000000
> May 04 12:22:28 host kernel: MTRR map: 5 entries (3 fixed + 2 variable; max 23), built from 10 variable MTRRs
> May 04 12:22:28 host kernel: x86/PAT: Configuration [0-7]: WB  WC  UC- UC  WB  WP  UC- WT
> May 04 12:22:28 host kernel: last_pfn = 0x43b00 max_arch_pfn = 0x400000000
> May 04 12:22:28 host kernel: esrt: Reserving ESRT space from 0x0000000037b78818 to 0x0000000037b78878.
> May 04 12:22:28 host kernel: e820: update [mem 0x37b78000-0x37b78fff] System RAM ==> device reserved
> May 04 12:22:28 host kernel: Using GB pages for direct mapping
> May 04 12:22:28 host kernel: Secure boot disabled
> May 04 12:22:28 host kernel: RAMDISK: [mem 0x32058000-0x33d8afff]
> May 04 12:22:28 host kernel: ACPI: Early table checksum verification disabled
> May 04 12:22:28 host kernel: ACPI: RSDP 0x0000000043AFE014 000024 (v02 ACRSYS)
> May 04 12:22:28 host kernel: ACPI: XSDT 0x0000000043A33228 00016C (v01 ACRSYS ACRPRDCT 00000002      01000013)
> May 04 12:22:28 host kernel: ACPI: FACP 0x0000000043AC2000 000114 (v06 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: DSDT 0x0000000043A49000 075201 (v02 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: FACS 0x000000004395E000 000040
> May 04 12:22:28 host kernel: ACPI: UEFI 0x0000000043A2E000 000236 (v01 ACRSYS ACRPRDCT 00000001 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AF9000 00389B (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AF8000 00038C (v02 ACRSYS ACRPRDCT 00000001 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AF7000 000106 (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AF1000 005D2C (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AEE000 002B2C (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AEA000 0033D3 (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043ADC000 00D39F (v02 INTEL  TcssSsdt 00001000 INTL 20200717)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043ADB000 000150 (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043ADA000 00094D (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AD9000 000033 (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AD7000 0012C9 (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AD6000 00077B (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: TPM2 0x0000000043AD5000 00004C (v04 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: MSDM 0x0000000043AD4000 000055 (v03 ACRSYS ACRPRDCT 00000001 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: LPIT 0x0000000043AD3000 0000CC (v01 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: WSMT 0x0000000043AD2000 000028 (v01 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AD1000 000AD9 (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043ACE000 002357 (v02 ACRSYS ACRPRDCT 00000000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: DBGP 0x0000000043AFD000 000034 (v01 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: DBG2 0x0000000043ACC000 000054 (v00 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: NHLT 0x0000000043ACA000 001B64 (v00 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043AC3000 006ED9 (v01 ACRSYS ACRPRDCT 00001000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: HPET 0x0000000043AC1000 000038 (v01 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: APIC 0x0000000043AC0000 0001DC (v04 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: MCFG 0x0000000043ABF000 00003C (v01 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043A45000 003E20 (v02 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043A43000 001D0E (v02 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: $H2O 0x0000000043A42000 00002C (v01 ACRSYS ACRPRDCT 00000001 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: DMAR 0x0000000043A41000 0000A0 (v02 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: UEFI 0x000000004395B000 00063A (v01 ACRSYS ACRPRDCT 00000000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: UEFI 0x000000004395A000 00005C (v01 ACRSYS ACRPRDCT 00000000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043A40000 000499 (v02 ACRSYS ACRPRDCT 00000000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043A3C000 003AEA (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043A38000 0039DA (v02 ACRSYS ACRPRDCT 00003000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043A37000 000A67 (v02 ACRSYS ACRPRDCT 00001000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: SSDT 0x0000000043A36000 0000F8 (v01 ACRSYS ACRPRDCT 00001000 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: FPDT 0x0000000043A35000 000044 (v01 ACRSYS ACRPRDCT 00000002 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: PHAT 0x0000000043ACD000 0005CD (v01 ACRSYS ACRPRDCT 00000005 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: BGRT 0x0000000043A34000 000038 (v01 ACRSYS ACRPRDCT 00000001 1025 00040000)
> May 04 12:22:28 host kernel: ACPI: Reserving FACP table memory at [mem 0x43ac2000-0x43ac2113]
> May 04 12:22:28 host kernel: ACPI: Reserving DSDT table memory at [mem 0x43a49000-0x43abe200]
> May 04 12:22:28 host kernel: ACPI: Reserving FACS table memory at [mem 0x4395e000-0x4395e03f]
> May 04 12:22:28 host kernel: ACPI: Reserving UEFI table memory at [mem 0x43a2e000-0x43a2e235]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43af9000-0x43afc89a]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43af8000-0x43af838b]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43af7000-0x43af7105]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43af1000-0x43af6d2b]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43aee000-0x43af0b2b]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43aea000-0x43aed3d2]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43adc000-0x43ae939e]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43adb000-0x43adb14f]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43ada000-0x43ada94c]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43ad9000-0x43ad9032]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43ad7000-0x43ad82c8]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43ad6000-0x43ad677a]
> May 04 12:22:28 host kernel: ACPI: Reserving TPM2 table memory at [mem 0x43ad5000-0x43ad504b]
> May 04 12:22:28 host kernel: ACPI: Reserving MSDM table memory at [mem 0x43ad4000-0x43ad4054]
> May 04 12:22:28 host kernel: ACPI: Reserving LPIT table memory at [mem 0x43ad3000-0x43ad30cb]
> May 04 12:22:28 host kernel: ACPI: Reserving WSMT table memory at [mem 0x43ad2000-0x43ad2027]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43ad1000-0x43ad1ad8]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43ace000-0x43ad0356]
> May 04 12:22:28 host kernel: ACPI: Reserving DBGP table memory at [mem 0x43afd000-0x43afd033]
> May 04 12:22:28 host kernel: ACPI: Reserving DBG2 table memory at [mem 0x43acc000-0x43acc053]
> May 04 12:22:28 host kernel: ACPI: Reserving NHLT table memory at [mem 0x43aca000-0x43acbb63]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43ac3000-0x43ac9ed8]
> May 04 12:22:28 host kernel: ACPI: Reserving HPET table memory at [mem 0x43ac1000-0x43ac1037]
> May 04 12:22:28 host kernel: ACPI: Reserving APIC table memory at [mem 0x43ac0000-0x43ac01db]
> May 04 12:22:28 host kernel: ACPI: Reserving MCFG table memory at [mem 0x43abf000-0x43abf03b]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43a45000-0x43a48e1f]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43a43000-0x43a44d0d]
> May 04 12:22:28 host kernel: ACPI: Reserving $H2O table memory at [mem 0x43a42000-0x43a4202b]
> May 04 12:22:28 host kernel: ACPI: Reserving DMAR table memory at [mem 0x43a41000-0x43a4109f]
> May 04 12:22:28 host kernel: ACPI: Reserving UEFI table memory at [mem 0x4395b000-0x4395b639]
> May 04 12:22:28 host kernel: ACPI: Reserving UEFI table memory at [mem 0x4395a000-0x4395a05b]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43a40000-0x43a40498]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43a3c000-0x43a3fae9]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43a38000-0x43a3b9d9]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43a37000-0x43a37a66]
> May 04 12:22:28 host kernel: ACPI: Reserving SSDT table memory at [mem 0x43a36000-0x43a360f7]
> May 04 12:22:28 host kernel: ACPI: Reserving FPDT table memory at [mem 0x43a35000-0x43a35043]
> May 04 12:22:28 host kernel: ACPI: Reserving PHAT table memory at [mem 0x43acd000-0x43acd5cc]
> May 04 12:22:28 host kernel: ACPI: Reserving BGRT table memory at [mem 0x43a34000-0x43a34037]
> May 04 12:22:28 host kernel: No NUMA configuration found
> May 04 12:22:28 host kernel: Faking a node at [mem 0x0000000000000000-0x00000004af7fffff]
> May 04 12:22:28 host kernel: NOXX_DATA(0) allocated [mem 0x4af7d5280-0x4af7fffff]
> May 04 12:22:28 host kernel: Reserving Intel graphics memory at [mem 0x4c800000-0x507fffff]
> May 04 12:22:28 host kernel: ACPI: PM-Timer IO Port: 0x1808
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x01] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x02] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x03] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x04] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x05] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x06] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x07] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x08] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x09] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x0a] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x0b] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x0c] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x0d] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x0e] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x0f] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x10] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x11] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x12] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x13] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x14] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x15] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x16] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x17] high edge lint[0x1])
> May 04 12:22:28 host kernel: ACPI: LAPIC_NMI (acpi_id[0x00] high edge lint[0x1])
> May 04 12:22:28 host kernel: IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI 0-119
> May 04 12:22:28 host kernel: ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
> May 04 12:22:28 host kernel: ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
> May 04 12:22:28 host kernel: ACPI: Using ACPI (MADT) for SMP configuration information
> May 04 12:22:28 host kernel: ACPI: HPET id: 0x8086a201 base: 0xfed00000
> May 04 12:22:28 host kernel: e820: update [mem 0x36e62000-0x37012fff] System RAM ==> device reserved
> May 04 12:22:28 host kernel: TSC deadline timer available
> May 04 12:22:28 host kernel: CPU topo: Max. logical packages:   1
> May 04 12:22:28 host kernel: CPU topo: Max. logical nodes:      1
> May 04 12:22:28 host kernel: CPU topo: Num. nodes per package:  1
> May 04 12:22:28 host kernel: CPU topo: Max. logical dies:       1
> May 04 12:22:28 host kernel: CPU topo: Max. dies per package:   1
> May 04 12:22:28 host kernel: CPU topo: Max. threads per core:   2
> May 04 12:22:28 host kernel: CPU topo: Num. cores per package:    12
> May 04 12:22:28 host kernel: CPU topo: Num. threads per package:  16
> May 04 12:22:28 host kernel: CPU topo: Allowing 16 present CPUs plus 0 hotplug CPUs
> May 04 12:22:28 host kernel: PM: hibernation: Registered nosave memory: [mem 0x00000000-0x00000fff]
> May 04 12:22:28 host kernel: PM: hibernation: Registered nosave memory: [mem 0x0009f000-0x000fffff]
> May 04 12:22:28 host kernel: PM: hibernation: Registered nosave memory: [mem 0x36e04000-0x36e08fff]
> May 04 12:22:28 host kernel: PM: hibernation: Registered nosave memory: [mem 0x36e62000-0x37012fff]
> May 04 12:22:28 host kernel: PM: hibernation: Registered nosave memory: [mem 0x37b78000-0x37b78fff]
> May 04 12:22:28 host kernel: PM: hibernation: Registered nosave memory: [mem 0x3c2c9000-0x3cbc8fff]
> May 04 12:22:28 host kernel: PM: hibernation: Registered nosave memory: [mem 0x3e9df000-0x43afefff]
> May 04 12:22:28 host kernel: PM: hibernation: Registered nosave memory: [mem 0x43b00000-0xffffffff]
> May 04 12:22:28 host kernel: [gap 0x50800000-0xfe00ffff] available for PCI devices
> May 04 12:22:28 host kernel: Booting paravirtualized kernel on bare hardware
> May 04 12:22:28 host kernel: clocksource: refined-jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1910969940391419 ns
> May 04 12:22:28 host kernel: Zone ranges:
> May 04 12:22:28 host kernel:   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
> May 04 12:22:28 host kernel:   DMA32    [mem 0x0000000001000000-0x00000000ffffffff]
> May 04 12:22:28 host kernel:   Normal   [mem 0x0000000100000000-0x00000004af7fffff]
> May 04 12:22:28 host kernel:   Device   empty
> May 04 12:22:28 host kernel: Movable zone start for each node
> May 04 12:22:28 host kernel: Early memory node ranges
> May 04 12:22:28 host kernel:   node   0: [mem 0x0000000000001000-0x000000000009efff]
> May 04 12:22:28 host kernel:   node   0: [mem 0x0000000000100000-0x0000000036e03fff]
> May 04 12:22:28 host kernel:   node   0: [mem 0x0000000036e09000-0x000000003c2c8fff]
> May 04 12:22:28 host kernel:   node   0: [mem 0x000000003cbc9000-0x000000003e9defff]
> May 04 12:22:28 host kernel:   node   0: [mem 0x0000000043aff000-0x0000000043afffff]
> May 04 12:22:28 host kernel:   node   0: [mem 0x0000000100000000-0x00000004af7fffff]
> May 04 12:22:28 host kernel: Initmem setup node 0 [mem 0x0000000000001000-0x00000004af7fffff]
> May 04 12:22:28 host kernel: On node 0, zone DMA: 1 pages in unavailable ranges
> May 04 12:22:28 host kernel: On node 0, zone DMA: 97 pages in unavailable ranges
> May 04 12:22:28 host kernel: On node 0, zone DMA32: 5 pages in unavailable ranges
> May 04 12:22:28 host kernel: On node 0, zone DMA32: 2304 pages in unavailable ranges
> May 04 12:22:28 host kernel: On node 0, zone DMA32: 20768 pages in unavailable ranges
> May 04 12:22:28 host kernel: On node 0, zone Normal: 17664 pages in unavailable ranges
> May 04 12:22:28 host kernel: On node 0, zone Normal: 2048 pages in unavailable ranges
> May 04 12:22:28 host kernel: setup_percpu: NR_CPUS:8192 nr_cpumask_bits:16 nr_cpu_ids:16 nr_node_ids:1
> May 04 12:22:28 host kernel: percpu: Embedded 63 pages/cpu s221184 r8192 d28672 u262144
> May 04 12:22:28 host kernel: pcpu-alloc: s221184 r8192 d28672 u262144 alloc=1*2097152
> May 04 12:22:28 host kernel: pcpu-alloc: [0] 00 01 02 03 04 05 06 07 [0] 08 09 10 11 12 13 14 15
> May 04 12:22:28 host kernel: Kernel command line: rd.luks.name=XXXX-XXXX-XXXX-XXXX=root root=/dev/mapper/root zswap.enabled=0 rw rootfstype=ext4 lsm=landlock,lockdown,yama,integrity,apparmor,bpf xe.force_probe=46a6,5693 i915.force_probe=!46a6,!5693
> May 04 12:22:28 host kernel: printk: log buffer data + meta data: 131072 + 557056 = 688128 bytes
> May 04 12:22:28 host kernel: Dentry cache hash table entries: 2097152 (order: 12, 16777216 bytes, linear)
> May 04 12:22:28 host kernel: Inode-cache hash table entries: 1048576 (order: 11, 8388608 bytes, linear)
> May 04 12:22:28 host kernel: software IO TLB: area num 16.
> May 04 12:22:28 host kernel: Fallback order for Node 0: 0
> May 04 12:22:28 host kernel: Built 1 zonelists, mobility grouping on.  Total pages: 4118649
> May 04 12:22:28 host kernel: Policy zone: Normal
> May 04 12:22:28 host kernel: mem auto-init: stack:all(zero), heap alloc:on, heap free:off
> May 04 12:22:28 host kernel: SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=16, Nodes=1
> May 04 12:22:28 host kernel: ftrace: allocating 58015 entries in 228 pages
> May 04 12:22:28 host kernel: ftrace: allocated 228 pages with 4 groups
> May 04 12:22:28 host kernel: Dynamic Preempt: full
> May 04 12:22:28 host kernel: rcu: Preemptible hierarchical RCU implementation.
> May 04 12:22:28 host kernel: rcu:         RCU restricting CPUs from NR_CPUS=8192 to nr_cpu_ids=16.
> May 04 12:22:28 host kernel: rcu:         RCU priority boosting: priority 1 delay 500 ms.
> May 04 12:22:28 host kernel:         Trampoline variant of Tasks RCU enabled.
> May 04 12:22:28 host kernel:         Rude variant of Tasks RCU enabled.
> May 04 12:22:28 host kernel:         Tracing variant of Tasks RCU enabled.
> May 04 12:22:28 host kernel: rcu: RCU calculated value of scheduler-enlistment delay is 100 jiffies.
> May 04 12:22:28 host kernel: rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=16
> May 04 12:22:28 host kernel: RCU Tasks: Setting shift to 4 and lim to 1 rcu_task_cb_adjust=1 rcu_task_cpu_ids=16.
> May 04 12:22:28 host kernel: RCU Tasks Rude: Setting shift to 4 and lim to 1 rcu_task_cb_adjust=1 rcu_task_cpu_ids=16.
> May 04 12:22:28 host kernel: NR_IRQS: 524544, nr_irqs: 2184, preallocated irqs: 16
> May 04 12:22:28 host kernel: rcu: srcu_init: Setting srcu_struct sizes based on contention.
> May 04 12:22:28 host kernel: kfence: initialized - using 2097152 bytes for 255 objects at 0x(____ptrval____)-0x(____ptrval____)
> May 04 12:22:28 host kernel: Console: colour dummy device 80x25
> May 04 12:22:28 host kernel: printk: legacy console [tty0] enabled
> May 04 12:22:28 host kernel: ACPI: Core revision 20251212
> May 04 12:22:28 host kernel: hpet: HPET dysfunctional in PC10. Force disabled.
> May 04 12:22:28 host kernel: APIC: Switch to symmetric I/O mode setup
> May 04 12:22:28 host kernel: DMAR: Host address width 39
> May 04 12:22:28 host kernel: DMAR: DRHD base: 0x000000fed90000 flags: 0x0
> May 04 12:22:28 host kernel: DMAR: dmar0: reg_base_addr fed90000 ver 4:0 cap 1c0000c40660462 ecap 29a00f0505e
> May 04 12:22:28 host kernel: DMAR: DRHD base: 0x000000fed92000 flags: 0x0
> May 04 12:22:28 host kernel: DMAR: dmar1: reg_base_addr fed92000 ver 1:0 cap d2008c40660462 ecap f050da
> May 04 12:22:28 host kernel: DMAR: DRHD base: 0x000000fed91000 flags: 0x1
> May 04 12:22:28 host kernel: DMAR: dmar2: reg_base_addr fed91000 ver 5:0 cap d2008c40660462 ecap f050da
> May 04 12:22:28 host kernel: DMAR: RMRR base: 0x0000004c000000 end: 0x000000507fffff
> May 04 12:22:28 host kernel: DMAR-IR: IOAPIC id 2 under DRHD base  0xfed91000 IOMMU 2
> May 04 12:22:28 host kernel: DMAR-IR: HPET id 0 under DRHD base 0xfed91000
> May 04 12:22:28 host kernel: DMAR-IR: Queued invalidation will be enabled to support x2apic and Intr-remapping.
> May 04 12:22:28 host kernel: DMAR-IR: Enabled IRQ remapping in x2apic mode
> May 04 12:22:28 host kernel: x2apic enabled
> May 04 12:22:28 host kernel: APIC: Switched APIC routing to: cluster x2apic
> May 04 12:22:28 host kernel: clocksource: tsc-early: mask: 0xffffffffffffffff max_cycles: 0x23fa772cf26, max_idle_ns: 440795269835 ns
> May 04 12:22:28 host kernel: Calibrating delay loop (skipped), value calculated using timer frequency.. 4992.00 BogoMIPS (lpj=2496000)
> May 04 12:22:28 host kernel: CPU0: Thermal monitoring enabled (TM1)
> May 04 12:22:28 host kernel: x86/cpu: User Mode Instruction Prevention (UMIP) activated
> May 04 12:22:28 host kernel: CET detected: Indirect Branch Tracking enabled
> May 04 12:22:28 host kernel: Last level iTLB entries: 4KB 0, 2MB 0, 4MB 0
> May 04 12:22:28 host kernel: Last level dTLB entries: 4KB 0, 2MB 0, 4MB 0, 1GB 0
> May 04 12:22:28 host kernel: process: using mwait in idle threads
> May 04 12:22:28 host kernel: mitigations: Enabled attack vectors: user_kernel, user_user, guest_host, guest_guest, SMT mitigations: auto
> May 04 12:22:28 host kernel: Speculative Store Bypass: Mitigation: Speculative Store Bypass disabled via prctl
> May 04 12:22:28 host kernel: Spectre V2 : Mitigation: Enhanced / Automatic IBRS
> May 04 12:22:28 host kernel: Register File Data Sampling: Mitigation: Clear Register File
> May 04 12:22:28 host kernel: VMSCAPE: Mitigation: IBPB before exit to userspace
> May 04 12:22:28 host kernel: Spectre V1 : Mitigation: usercopy/swapgs barriers and __user pointer sanitization
> May 04 12:22:28 host kernel: Spectre V2 : Spectre v2 / PBRSB-eIBRS: Retire a single CALL on VMEXIT
> May 04 12:22:28 host kernel: Spectre V2 : mitigation: Enabling conditional Indirect Branch Prediction Barrier
> May 04 12:22:28 host kernel: x86/fpu: Supporting XSAVE feature 0x001: 'x87 floating point registers'
> May 04 12:22:28 host kernel: x86/fpu: Supporting XSAVE feature 0x002: 'SSE registers'
> May 04 12:22:28 host kernel: x86/fpu: Supporting XSAVE feature 0x004: 'AVX registers'
> May 04 12:22:28 host kernel: x86/fpu: Supporting XSAVE feature 0x200: 'Protection Keys User registers'
> May 04 12:22:28 host kernel: x86/fpu: Supporting XSAVE feature 0x800: 'Control-flow User registers'
> May 04 12:22:28 host kernel: x86/fpu: Supporting XSAVE feature 0x1000: 'Control-flow Kernel registers (KVM only)'
> May 04 12:22:28 host kernel: x86/fpu: xstate_offset[2]:  576, xstate_sizes[2]:  256
> May 04 12:22:28 host kernel: x86/fpu: xstate_offset[9]:  832, xstate_sizes[9]:    8
> May 04 12:22:28 host kernel: x86/fpu: xstate_offset[11]:  840, xstate_sizes[11]:   16
> May 04 12:22:28 host kernel: x86/fpu: xstate_offset[12]:  856, xstate_sizes[12]:   24
> May 04 12:22:28 host kernel: x86/fpu: Enabled xstate features 0x1a07, context size is 880 bytes, using 'compacted' format.
> May 04 12:22:28 host kernel: Freeing SMP alternatives memory: 56K
> May 04 12:22:28 host kernel: pid_max: default: 32768 minimum: 301
> May 04 12:22:28 host kernel: landlock: Up and running.
> May 04 12:22:28 host kernel: Yama: becoming mindful.
> May 04 12:22:28 host kernel: AppArmor: AppArmor initialized
> May 04 12:22:28 host kernel: LSM support for eBPF active
> May 04 12:22:28 host kernel: Mount-cache hash table entries: 32768 (order: 6, 262144 bytes, linear)
> May 04 12:22:28 host kernel: Mountpoint-cache hash table entries: 32768 (order: 6, 262144 bytes, linear)
> May 04 12:22:28 host kernel: VFS: Finished mounting rootfs on nullfs
> May 04 12:22:28 host kernel: smpboot: CPU0: 12th Gen Intel(R) Core(TM) i7-1260P (family: 0x6, model: 0x9a, stepping: 0x3)
> May 04 12:22:28 host kernel: Performance Events: XSAVE Architectural LBR, PEBS fmt4+-baseline,  AnyThread deprecated, Alderlake Hybrid events, 32-deep LBR, full-width counters, Intel PMU driver.
> May 04 12:22:28 host kernel: core: cpu_core PMU driver:
> May 04 12:22:28 host kernel: ... version:                   5
> May 04 12:22:28 host kernel: ... bit width:                 48
> May 04 12:22:28 host kernel: ... generic counters:          8
> May 04 12:22:28 host kernel: ... generic bitmap:            00000000000000ff
> May 04 12:22:28 host kernel: ... fixed-purpose counters:    4
> May 04 12:22:28 host kernel: ... fixed-purpose bitmap:      000000000000000f
> May 04 12:22:28 host kernel: ... value mask:                0000ffffffffffff
> May 04 12:22:28 host kernel: ... max period:                00007fffffffffff
> May 04 12:22:28 host kernel: ... global_ctrl mask:          0001000f000000ff
> May 04 12:22:28 host kernel: signal: max sigframe size: 3632
> May 04 12:22:28 host kernel: Estimated ratio of average max frequency by base frequency (times 1024): 1556
> May 04 12:22:28 host kernel: rcu: Hierarchical SRCU implementation.
> May 04 12:22:28 host kernel: rcu:         Max phase no-delay instances is 400.
> May 04 12:22:28 host kernel: Timer migration: 2 hierarchy levels; 8 children per group; 2 crossnode level
> May 04 12:22:28 host kernel: NMI watchdog: Enabled. Permanently consumes one hw-PMU counter.
> May 04 12:22:28 host kernel: smp: Bringing up secondary CPUs ...
> May 04 12:22:28 host kernel: smpboot: x86: Booting SMP configuration:
> May 04 12:22:28 host kernel: .... node  #0, CPUs:        #2  #4  #6  #8  #9 #10 #11 #12 #13 #14 #15
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU8: Topology domain 1 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU8: Topology domain 2 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU8: Topology domain 3 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU8: Topology domain 4 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU8: Topology domain 5 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU8: Topology domain 6 shift 7 != 6
> May 04 12:22:28 host kernel: core: cpu_atom PMU driver:
> May 04 12:22:28 host kernel: ... version:                   5
> May 04 12:22:28 host kernel: ... bit width:                 48
> May 04 12:22:28 host kernel: ... generic counters:          6
> May 04 12:22:28 host kernel: ... generic bitmap:            000000000000003f
> May 04 12:22:28 host kernel: ... fixed-purpose counters:    3
> May 04 12:22:28 host kernel: ... fixed-purpose bitmap:      0000000000000007
> May 04 12:22:28 host kernel: ... value mask:                0000ffffffffffff
> May 04 12:22:28 host kernel: ... max period:                00007fffffffffff
> May 04 12:22:28 host kernel: ... global_ctrl mask:          000000070000003f
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU9: Topology domain 1 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU9: Topology domain 2 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU9: Topology domain 3 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU9: Topology domain 4 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU9: Topology domain 5 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU9: Topology domain 6 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU10: Topology domain 1 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU10: Topology domain 2 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU10: Topology domain 3 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU10: Topology domain 4 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU10: Topology domain 5 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU10: Topology domain 6 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU11: Topology domain 1 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU11: Topology domain 2 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU11: Topology domain 3 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU11: Topology domain 4 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU11: Topology domain 5 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU11: Topology domain 6 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU12: Topology domain 1 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU12: Topology domain 2 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU12: Topology domain 3 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU12: Topology domain 4 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU12: Topology domain 5 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU12: Topology domain 6 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU13: Topology domain 1 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU13: Topology domain 2 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU13: Topology domain 3 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU13: Topology domain 4 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU13: Topology domain 5 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU13: Topology domain 6 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU14: Topology domain 1 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU14: Topology domain 2 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU14: Topology domain 3 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU14: Topology domain 4 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU14: Topology domain 5 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU14: Topology domain 6 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU15: Topology domain 1 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU15: Topology domain 2 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU15: Topology domain 3 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU15: Topology domain 4 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU15: Topology domain 5 shift 7 != 6
> May 04 12:22:28 host kernel: [Firmware Bug]: CPU15: Topology domain 6 shift 7 != 6
> May 04 12:22:28 host kernel:   #1  #3  #5  #7
> May 04 12:22:28 host kernel: smp: Brought up 1 node, 16 CPUs
> May 04 12:22:28 host kernel: smpboot: Total of 16 processors activated (79872.00 BogoMIPS)
> May 04 12:22:28 host kernel: Memory: 15904532K/16474596K available (21849K kernel code, 3060K rwdata, 16832K rodata, 4816K init, 5252K bss, 541160K reserved, 0K cma-reserved)
> May 04 12:22:28 host kernel: devtmpfs: initialized
> May 04 12:22:28 host kernel: x86/mm: Memory block size: 128MB
> May 04 12:22:28 host kernel: ACPI: PM: Registering ACPI NVS region [mem 0x40a7f000-0x43a2efff] (50003968 bytes)
> May 04 12:22:28 host kernel: clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1911260446275000 ns
> May 04 12:22:28 host kernel: posixtimers hash table entries: 8192 (order: 5, 131072 bytes, linear)
> May 04 12:22:28 host kernel: futex hash table entries: 4096 (262144 bytes on 1 NUMA nodes, total 256 KiB, linear).
> May 04 12:22:28 host kernel: PM: RTC time: 10:22:26, date: 2026-05-04
> May 04 12:22:28 host kernel: NET: Registered PF_NETLINK/PF_ROUTE protocol family
> May 04 12:22:28 host kernel: DMA: preallocated 2048 KiB GFP_KERNEL pool for atomic allocations
> May 04 12:22:28 host kernel: DMA: preallocated 2048 KiB GFP_KERNEL|GFP_DMA pool for atomic allocations
> May 04 12:22:28 host kernel: DMA: preallocated 2048 KiB GFP_KERNEL|GFP_DMA32 pool for atomic allocations
> May 04 12:22:28 host kernel: audit: initializing netlink subsys (disabled)
> May 04 12:22:28 host kernel: audit: type=2000 audit(1777890146.013:1): state=initialized audit_enabled=0 res=1
> May 04 12:22:28 host kernel: thermal_sys: Registered thermal governor 'fair_share'
> May 04 12:22:28 host kernel: thermal_sys: Registered thermal governor 'bang_bang'
> May 04 12:22:28 host kernel: thermal_sys: Registered thermal governor 'step_wise'
> May 04 12:22:28 host kernel: thermal_sys: Registered thermal governor 'user_space'
> May 04 12:22:28 host kernel: thermal_sys: Registered thermal governor 'power_allocator'
> May 04 12:22:28 host kernel: cpuidle: using governor ladder
> May 04 12:22:28 host kernel: cpuidle: using governor menu
> May 04 12:22:28 host kernel: efi: Freeing EFI boot services memory: 91132K
> May 04 12:22:28 host kernel: acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
> May 04 12:22:28 host kernel: PCI: ECAM [mem 0xc0000000-0xce0fffff] (base 0xc0000000) for domain 0000 [bus 00-e0]
> May 04 12:22:28 host kernel: PCI: Using configuration type 1 for base access
> May 04 12:22:28 host kernel: kprobes: kprobe jump-optimization is enabled. All kprobes are optimized if possible.
> May 04 12:22:28 host kernel: HugeTLB: registered 1.00 GiB page size, pre-allocated 0 pages
> May 04 12:22:28 host kernel: HugeTLB: 16380 KiB vmemmap can be freed for a 1.00 GiB page
> May 04 12:22:28 host kernel: HugeTLB: registered 2.00 MiB page size, pre-allocated 0 pages
> May 04 12:22:28 host kernel: HugeTLB: 28 KiB vmemmap can be freed for a 2.00 MiB page
> May 04 12:22:28 host kernel: raid6: skipped pq benchmark and selected avx2x4
> May 04 12:22:28 host kernel: raid6: using avx2x2 recovery algorithm
> May 04 12:22:28 host kernel: fbcon: Taking over console
> May 04 12:22:28 host kernel: ACPI: Added _OSI(Module Device)
> May 04 12:22:28 host kernel: ACPI: Added _OSI(Processor Device)
> May 04 12:22:28 host kernel: ACPI: Added _OSI(Processor Aggregator Device)
> May 04 12:22:28 host kernel: ACPI: 23 ACPI AML tables successfully acquired and loaded
> May 04 12:22:28 host kernel: ACPI: \_SB_: platform _OSC: OS support mask [006e7eff]
> May 04 12:22:28 host kernel: ACPI: \_SB_: platform _OSC: OS control mask [006e7eff]
> May 04 12:22:28 host kernel: ACPI: USB4 _OSC: OS supports USB3+ DisplayPort+ PCIe+ XDomain+
> May 04 12:22:28 host kernel: ACPI: USB4 _OSC: OS controls USB3+ DisplayPort+ PCIe+ XDomain+
> May 04 12:22:28 host kernel: ACPI: Dynamic OEM Table Load:
> May 04 12:22:28 host kernel: ACPI: SSDT 0xFFFF8B0241D5B000 000394 (v02 PmRef  Cpu0Cst  00003001 INTL 20200717)
> May 04 12:22:28 host kernel: ACPI: Dynamic OEM Table Load:
> May 04 12:22:28 host kernel: ACPI: SSDT 0xFFFF8B0241824800 0005E4 (v02 PmRef  Cpu0Ist  00003000 INTL 20200717)
> May 04 12:22:28 host kernel: ACPI: Dynamic OEM Table Load:
> May 04 12:22:28 host kernel: ACPI: SSDT 0xFFFF8B024185B400 0001AB (v02 PmRef  Cpu0Psd  00003000 INTL 20200717)
> May 04 12:22:28 host kernel: ACPI: Dynamic OEM Table Load:
> May 04 12:22:28 host kernel: ACPI: SSDT 0xFFFF8B0241820800 0004BA (v02 PmRef  Cpu0Hwp  00003000 INTL 20200717)
> May 04 12:22:28 host kernel: ACPI: Dynamic OEM Table Load:
> May 04 12:22:28 host kernel: ACPI: SSDT 0xFFFF8B0241810000 001BAF (v02 PmRef  ApIst    00003000 INTL 20200717)
> May 04 12:22:28 host kernel: ACPI: Dynamic OEM Table Load:
> May 04 12:22:28 host kernel: ACPI: SSDT 0xFFFF8B0243320000 001038 (v02 PmRef  ApHwp    00003000 INTL 20200717)
> May 04 12:22:28 host kernel: ACPI: Dynamic OEM Table Load:
> May 04 12:22:28 host kernel: ACPI: SSDT 0xFFFF8B0243326000 001349 (v02 PmRef  ApPsd    00003000 INTL 20200717)
> May 04 12:22:28 host kernel: ACPI: Dynamic OEM Table Load:
> May 04 12:22:28 host kernel: ACPI: SSDT 0xFFFF8B0241818000 000FBB (v02 PmRef  ApCst    00003000 INTL 20200717)
> May 04 12:22:28 host kernel: ACPI: EC: EC started
> May 04 12:22:28 host kernel: ACPI: EC: interrupt blocked
> May 04 12:22:28 host kernel: ACPI: EC: EC_CMD/EC_SC=0x66, EC_DATA=0x62
> May 04 12:22:28 host kernel: ACPI: \_SB_.PC00.LPCB.EC0_: Boot DSDT EC used to handle transactions
> May 04 12:22:28 host kernel: ACPI: Interpreter enabled
> May 04 12:22:28 host kernel: ACPI: PM: (supports S0 S3 S4 S5)
> May 04 12:22:28 host kernel: ACPI: Using IOAPIC for interrupt routing
> May 04 12:22:28 host kernel: PCI: Using host bridge windows from ACPI; if necessary, use "pci=nocrs" and report a bug
> May 04 12:22:28 host kernel: PCI: Ignoring E820 reservations for host bridge windows
> May 04 12:22:28 host kernel: ACPI: Enabled 8 GPEs in block 00 to 7F
> May 04 12:22:28 host kernel: ACPI: \_SB_.PC00.PEG0.PXP_: New power resource
> May 04 12:22:28 host kernel: ACPI: \_SB_.PC00.XHCI.RHUB.HS10.BTRT: New power resource
> May 04 12:22:28 host kernel: ACPI: \_SB_.PC00.PAUD: New power resource
> May 04 12:22:28 host kernel: ACPI: \_SB_.PC00.CNVW.WRST: New power resource
> May 04 12:22:28 host kernel: ACPI: \_SB_.PC00.RP01.PCRP: New power resource
> May 04 12:22:28 host kernel: ACPI: \_SB_.PC00.VMD0.VOL0.V0PR: New power resource
> May 04 12:22:28 host kernel: ACPI: \_SB_.PC00.VMD0.VOL1.V1PR: New power resource
> May 04 12:22:28 host kernel: ACPI: \_SB_.PC00.VMD0.VOL2.V2PR: New power resource
> May 04 12:22:28 host kernel: ACPI: \_SB_.PC00.VMD0.VOL3.V3PR: New power resource
> May 04 12:22:28 host kernel: ACPI: \_SB_.PC00.TBT0: New power resource
> May 04 12:22:28 host kernel: ACPI: \_SB_.PC00.TBT1: New power resource
> May 04 12:22:28 host kernel: ACPI: \_SB_.PC00.D3C_: New power resource
> May 04 12:22:28 host kernel: ACPI: \_TZ_.FN00: New power resource
> May 04 12:22:28 host kernel: ACPI: \_TZ_.FN01: New power resource
> May 04 12:22:28 host kernel: ACPI: \_TZ_.FN02: New power resource
> May 04 12:22:28 host kernel: ACPI: \_TZ_.FN03: New power resource
> May 04 12:22:28 host kernel: ACPI: \_TZ_.FN04: New power resource
> May 04 12:22:28 host kernel: ACPI: \PIN_: New power resource
> May 04 12:22:28 host kernel: ACPI: PCI Root Bridge [PC00] (domain 0000 [bus 00-e0])
> May 04 12:22:28 host kernel: acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM ClockPM Segments MSI EDR HPX-Type3]
> May 04 12:22:28 host kernel: acpi PNP0A08:00: _OSC: platform does not support [AER]
> May 04 12:22:28 host kernel: acpi PNP0A08:00: _OSC: OS now controls [PCIeHotplug SHPCHotplug PME PCIeCapability LTR DPC]
> May 04 12:22:28 host kernel: PCI host bridge to bus 0000:00
> May 04 12:22:28 host kernel: pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7 window]
> May 04 12:22:28 host kernel: pci_bus 0000:00: root bus resource [io  0x0d00-0xffff window]
> May 04 12:22:28 host kernel: pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bffff window]
> May 04 12:22:28 host kernel: pci_bus 0000:00: root bus resource [mem 0x50800000-0xbfffffff window]
> May 04 12:22:28 host kernel: pci_bus 0000:00: root bus resource [mem 0x4000000000-0x7fffffffff window]
> May 04 12:22:28 host kernel: pci_bus 0000:00: root bus resource [bus 00-e0]
> May 04 12:22:28 host kernel: pci 0000:00:00.0: [8086:4621] type 00 class 0x060000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:02.0: [8086:46a6] type 00 class 0x030000 PCIe Root Complex Integrated Endpoint
> May 04 12:22:28 host kernel: pci 0000:00:02.0: BAR 0 [mem 0x612f000000-0x612fffffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:02.0: BAR 2 [mem 0x4000000000-0x400fffffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:00:02.0: BAR 4 [io  0x3000-0x303f]
> May 04 12:22:28 host kernel: pci 0000:00:02.0: DMAR: Skip IOMMU disabling for graphics
> May 04 12:22:28 host kernel: pci 0000:00:02.0: Video device with shadowed ROM at [mem 0x000c0000-0x000dffff]
> May 04 12:22:28 host kernel: pci 0000:00:02.0: VF BAR 0 [mem 0x00000000-0x00ffffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:02.0: VF BAR 0 [mem 0x00000000-0x06ffffff 64bit]: contains BAR 0 for 7 VFs
> May 04 12:22:28 host kernel: pci 0000:00:02.0: VF BAR 2 [mem 0x00000000-0x1fffffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:00:02.0: VF BAR 2 [mem 0x00000000-0xdfffffff 64bit pref]: contains BAR 2 for 7 VFs
> May 04 12:22:28 host kernel: pci 0000:00:04.0: [8086:461d] type 00 class 0x118000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:04.0: BAR 0 [mem 0x6100a80000-0x6100a9ffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:05.0: [8086:465d] type 00 class 0x048000 PCIe Root Complex Integrated Endpoint
> May 04 12:22:28 host kernel: pci 0000:00:05.0: BAR 0 [mem 0x612e000000-0x612effffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:05.0: enabling Extended Tags
> May 04 12:22:28 host kernel: pci 0000:00:06.0: [8086:464d] type 01 class 0x060400 PCIe Root Port
> May 04 12:22:28 host kernel: pci 0000:00:06.0: PCI bridge to [bus 01-03]
> May 04 12:22:28 host kernel: pci 0000:00:06.0:   bridge window [mem 0x61000000-0x61ffffff]
> May 04 12:22:28 host kernel: pci 0000:00:06.0:   bridge window [mem 0x6000000000-0x61007fffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:00:06.0: PME# supported from D0 D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:00:06.0: PTM enabled (root), 4ns granularity
> May 04 12:22:28 host kernel: pci 0000:00:07.0: [8086:466e] type 01 class 0x060400 PCIe Root Port
> May 04 12:22:28 host kernel: pci 0000:00:07.0: PCI bridge to [bus 04-2c]
> May 04 12:22:28 host kernel: pci 0000:00:07.0:   bridge window [mem 0x62000000-0x6e1fffff]
> May 04 12:22:28 host kernel: pci 0000:00:07.0:   bridge window [mem 0x6110000000-0x612bffffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:00:07.0: Overriding RP PIO Log Size to 4
> May 04 12:22:28 host kernel: pci 0000:00:07.0: PME# supported from D0 D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:00:07.0: PTM enabled (root), 4ns granularity
> May 04 12:22:28 host kernel: pci 0000:00:07.2: [8086:462f] type 01 class 0x060400 PCIe Root Port
> May 04 12:22:28 host kernel: pci 0000:00:07.2: PCI bridge to [bus 2d-55]
> May 04 12:22:28 host kernel: pci 0000:00:07.2:   bridge window [mem 0x54000000-0x601fffff]
> May 04 12:22:28 host kernel: pci 0000:00:07.2:   bridge window [mem 0x6130000000-0x614bffffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:00:07.2: Overriding RP PIO Log Size to 4
> May 04 12:22:28 host kernel: pci 0000:00:07.2: PME# supported from D0 D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:00:07.2: PTM enabled (root), 4ns granularity
> May 04 12:22:28 host kernel: pci 0000:00:08.0: [8086:464f] type 00 class 0x088000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:08.0: BAR 0 [mem 0x6100ac5000-0x6100ac5fff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:0d.0: [8086:461e] type 00 class 0x0c0330 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:0d.0: BAR 0 [mem 0x6100aa0000-0x6100aaffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:0d.0: PME# supported from D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:00:0d.2: [8086:463e] type 00 class 0x0c0340 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:0d.2: BAR 0 [mem 0x6100a40000-0x6100a7ffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:0d.2: BAR 2 [mem 0x6100ac4000-0x6100ac4fff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:0d.2: supports D1 D2
> May 04 12:22:28 host kernel: pci 0000:00:0d.2: PME# supported from D0 D1 D2 D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:00:0d.3: [8086:466d] type 00 class 0x0c0340 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:0d.3: BAR 0 [mem 0x6100a00000-0x6100a3ffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:0d.3: BAR 2 [mem 0x6100ac3000-0x6100ac3fff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:0d.3: supports D1 D2
> May 04 12:22:28 host kernel: pci 0000:00:0d.3: PME# supported from D0 D1 D2 D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:00:0e.0: [8086:467f] type 00 class 0x010400 PCIe Root Complex Integrated Endpoint
> May 04 12:22:28 host kernel: pci 0000:00:0e.0: BAR 0 [mem 0x612c000000-0x612dffffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:0e.0: BAR 2 [mem 0x52000000-0x53ffffff]
> May 04 12:22:28 host kernel: pci 0000:00:0e.0: BAR 4 [mem 0x6100900000-0x61009fffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:14.0: [8086:51ed] type 00 class 0x0c0330 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:14.0: BAR 0 [mem 0x60400000-0x6040ffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:14.0: PME# supported from D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:00:14.2: [8086:51ef] type 00 class 0x050000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:14.2: BAR 0 [mem 0x6100ab8000-0x6100abbfff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:14.2: BAR 2 [mem 0x6100ac2000-0x6100ac2fff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:14.3: [8086:51f0] type 00 class 0x028000 PCIe Root Complex Integrated Endpoint
> May 04 12:22:28 host kernel: pci 0000:00:14.3: BAR 0 [mem 0x6100ab4000-0x6100ab7fff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:14.3: PME# supported from D0 D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:00:15.0: [8086:51e8] type 00 class 0x0c8000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:15.0: BAR 0 [mem 0x00000000-0x00000fff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:15.1: [8086:51e9] type 00 class 0x0c8000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:15.1: BAR 0 [mem 0x00000000-0x00000fff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:16.0: [8086:51e0] type 00 class 0x078000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:16.0: BAR 0 [mem 0x6100abf000-0x6100abffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:16.0: PME# supported from D3hot
> May 04 12:22:28 host kernel: pci 0000:00:19.0: [8086:51c5] type 00 class 0x0c8000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:19.0: BAR 0 [mem 0x00000000-0x00000fff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:19.1: [8086:51c6] type 00 class 0x0c8000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:19.1: BAR 0 [mem 0x00000000-0x00000fff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:1f.0: [8086:5182] type 00 class 0x060100 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:1f.3: [8086:51c8] type 00 class 0x040100 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:1f.3: BAR 0 [mem 0x6100ab0000-0x6100ab3fff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:1f.3: BAR 4 [mem 0x6100800000-0x61008fffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:1f.3: PME# supported from D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:00:1f.4: [8086:51a3] type 00 class 0x0c0500 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:1f.4: BAR 0 [mem 0x6100abc000-0x6100abc0ff 64bit]
> May 04 12:22:28 host kernel: pci 0000:00:1f.4: BAR 4 [io  0xefa0-0xefbf]
> May 04 12:22:28 host kernel: pci 0000:00:1f.5: [8086:51a4] type 00 class 0x0c8000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 0000:00:1f.5: BAR 0 [mem 0xfe010000-0xfe010fff]
> May 04 12:22:28 host kernel: pci 0000:01:00.0: [8086:4fa1] type 01 class 0x060400 PCIe Switch Upstream Port
> May 04 12:22:28 host kernel: pci 0000:01:00.0: BAR 0 [mem 0x6100000000-0x61007fffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:01:00.0: PCI bridge to [bus 02-03]
> May 04 12:22:28 host kernel: pci 0000:01:00.0:   bridge window [mem 0x61000000-0x61ffffff]
> May 04 12:22:28 host kernel: pci 0000:01:00.0:   bridge window [mem 0x6000000000-0x60ffffffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:01:00.0: PME# supported from D0 D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:01:00.0: 63.012 Gb/s available PCIe bandwidth, limited by 16.0 GT/s PCIe x4 link at 0000:00:06.0 (capable of 126.024 Gb/s with 16.0 GT/s PCIe x8 link)
> May 04 12:22:28 host kernel: pci 0000:00:06.0: PCI bridge to [bus 01-03]
> May 04 12:22:28 host kernel: pci 0000:02:01.0: [8086:4fa4] type 01 class 0x060400 PCIe Switch Downstream Port
> May 04 12:22:28 host kernel: pci 0000:02:01.0: PCI bridge to [bus 03]
> May 04 12:22:28 host kernel: pci 0000:02:01.0:   bridge window [mem 0x61000000-0x61ffffff]
> May 04 12:22:28 host kernel: pci 0000:02:01.0:   bridge window [mem 0x6000000000-0x60ffffffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:02:01.0: PME# supported from D0 D3hot D3cold
> May 04 12:22:28 host kernel: pci 0000:01:00.0: PCI bridge to [bus 02-03]
> May 04 12:22:28 host kernel: pci 0000:03:00.0: [8086:5693] type 00 class 0x038000 PCIe Endpoint
> May 04 12:22:28 host kernel: pci 0000:03:00.0: BAR 0 [mem 0x61000000-0x61ffffff 64bit]
> May 04 12:22:28 host kernel: pci 0000:03:00.0: BAR 2 [mem 0x6000000000-0x60ffffffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:03:00.0: ROM [mem 0xffe00000-0xffffffff pref]
> May 04 12:22:28 host kernel: pci 0000:03:00.0: ASPM: overriding L1 acceptable latency from 0x0 to 0x7
> May 04 12:22:28 host kernel: pci 0000:03:00.0: PME# supported from D0 D3hot
> May 04 12:22:28 host kernel: pci 0000:02:01.0: PCI bridge to [bus 03]
> May 04 12:22:28 host kernel: pci 0000:00:07.0: PCI bridge to [bus 04-2c]
> May 04 12:22:28 host kernel: pci 0000:00:07.2: PCI bridge to [bus 2d-55]
> May 04 12:22:28 host kernel: ACPI: \_SB_.PEPD: Duplicate LPS0 _DSM functions (mask: 0x1)
> May 04 12:22:28 host kernel: Low-power S0 idle used by default for system suspend
> May 04 12:22:28 host kernel: ACPI: EC: interrupt unblocked
> May 04 12:22:28 host kernel: ACPI: EC: event unblocked
> May 04 12:22:28 host kernel: ACPI: EC: EC_CMD/EC_SC=0x66, EC_DATA=0x62
> May 04 12:22:28 host kernel: ACPI: EC: GPE=0x6e
> May 04 12:22:28 host kernel: ACPI: \_SB_.PC00.LPCB.EC0_: Boot DSDT EC initialization complete
> May 04 12:22:28 host kernel: ACPI: \_SB_.PC00.LPCB.EC0_: EC: Used to handle transactions and events
> May 04 12:22:28 host kernel: iommu: Default domain type: Translated
> May 04 12:22:28 host kernel: iommu: DMA domain TLB invalidation policy: lazy mode
> May 04 12:22:28 host kernel: SCSI subsystem initialized
> May 04 12:22:28 host kernel: libata version 3.00 loaded.
> May 04 12:22:28 host kernel: ACPI: bus type USB registered
> May 04 12:22:28 host kernel: usbcore: registered new interface driver usbfs
> May 04 12:22:28 host kernel: usbcore: registered new interface driver hub
> May 04 12:22:28 host kernel: usbcore: registered new device driver usb
> May 04 12:22:28 host kernel: EDAC MC: Ver: 3.0.0
> May 04 12:22:28 host kernel: efivars: Registered efivars operations
> May 04 12:22:28 host kernel: NetLabel: Initializing
> May 04 12:22:28 host kernel: NetLabel:  domain hash size = 128
> May 04 12:22:28 host kernel: NetLabel:  protocols = UNLABELED CIPSOv4 CALIPSO
> May 04 12:22:28 host kernel: NetLabel:  unlabeled traffic allowed by default
> May 04 12:22:28 host kernel: mctp: management component transport protocol core
> May 04 12:22:28 host kernel: NET: Registered PF_MCTP protocol family
> May 04 12:22:28 host kernel: PCI: Using ACPI for IRQ routing
> May 04 12:22:28 host kernel: PCI: pci_cache_line_size set to 64 bytes
> May 04 12:22:28 host kernel: pci 0000:00:1f.5: BAR 0 [mem 0xfe010000-0xfe010fff]: can't claim; no compatible bridge window
> May 04 12:22:28 host kernel: e820: register RAM buffer resource [mem 0x0009f000-0x0009ffff]
> May 04 12:22:28 host kernel: e820: register RAM buffer resource [mem 0x36e04000-0x37ffffff]
> May 04 12:22:28 host kernel: e820: register RAM buffer resource [mem 0x36e62000-0x37ffffff]
> May 04 12:22:28 host kernel: e820: register RAM buffer resource [mem 0x37b78000-0x37ffffff]
> May 04 12:22:28 host kernel: e820: register RAM buffer resource [mem 0x3c2c9000-0x3fffffff]
> May 04 12:22:28 host kernel: e820: register RAM buffer resource [mem 0x3e9df000-0x3fffffff]
> May 04 12:22:28 host kernel: e820: register RAM buffer resource [mem 0x43b00000-0x43ffffff]
> May 04 12:22:28 host kernel: e820: register RAM buffer resource [mem 0x4af800000-0x4afffffff]
> May 04 12:22:28 host kernel: pci 0000:00:02.0: vgaarb: setting as boot VGA device
> May 04 12:22:28 host kernel: pci 0000:00:02.0: vgaarb: bridge control possible
> May 04 12:22:28 host kernel: pci 0000:00:02.0: vgaarb: VGA device added: decodes=io+mem,owns=io+mem,locks=none
> May 04 12:22:28 host kernel: vgaarb: loaded
> May 04 12:22:28 host kernel: clocksource: Switched to clocksource tsc-early
> May 04 12:22:28 host kernel: VFS: Disk quotas dquot_6.6.0
> May 04 12:22:28 host kernel: VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
> May 04 12:22:28 host kernel: AppArmor: AppArmor Filesystem Enabled
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io  0x002e-0x002f]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io  0x004e-0x004f]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io  0x0061]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io  0x0063]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io  0x0065]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io  0x0067]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io  0x0068]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io  0x006c]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io  0x0070]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io  0x0080]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io  0x0092]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Skipped [io  0x00b2-0x00b3]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Reserved [io  0x0680-0x069f]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Reserved [io  0x164e-0x164f]
> May 04 12:22:28 host kernel: acpi PNP0C02:00: Reserved [io  0xfd60-0xfd63]
> May 04 12:22:28 host kernel: acpi PNP0C02:01: Reserved [mem 0xfedc0000-0xfedc7fff]
> May 04 12:22:28 host kernel: acpi PNP0C02:01: Reserved [mem 0xfeda0000-0xfeda0fff]
> May 04 12:22:28 host kernel: acpi PNP0C02:01: Reserved [mem 0xfeda1000-0xfeda1fff]
> May 04 12:22:28 host kernel: acpi PNP0C02:01: Reserved [mem 0xc0000000-0xcfffffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:01: Could not reserve [mem 0xfed20000-0xfed7ffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:01: Could not reserve [mem 0xfed90000-0xfed93fff]
> May 04 12:22:28 host kernel: acpi PNP0C02:01: Could not reserve [mem 0xfed45000-0xfed8ffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:01: Reserved [mem 0xfee00000-0xfeefffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:02: Could not reserve [mem 0xfe000000-0xfe01ffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:02: Reserved [mem 0xfe04c000-0xfe04ffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:02: Reserved [mem 0xfe050000-0xfe0affff]
> May 04 12:22:28 host kernel: acpi PNP0C02:02: Reserved [mem 0xfe0d0000-0xfe0fffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:02: Reserved [mem 0xfe200000-0xfe7fffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:02: Reserved [mem 0xff000000-0xffffffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:02: Could not reserve [io  0x1800-0x18fe]
> May 04 12:22:28 host kernel: acpi PNP0C02:02: Reserved [mem 0xfd000000-0xfd68ffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:02: Reserved [mem 0xfd6b0000-0xfd6cffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:02: Reserved [mem 0xfd6f0000-0xfdffffff]
> May 04 12:22:28 host kernel: acpi PNP0C02:03: Reserved [io  0x2000-0x20fe]
> May 04 12:22:28 host kernel: pnp: PnP ACPI init
> May 04 12:22:28 host kernel: pnp: PnP ACPI: found 2 devices
> May 04 12:22:28 host kernel: clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff, max_idle_ns: 2085701024 ns
> May 04 12:22:28 host kernel: NET: Registered PF_INET protocol family
> May 04 12:22:28 host kernel: IP idents hash table entries: 262144 (order: 9, 2097152 bytes, linear)
> May 04 12:22:28 host kernel: tcp_listen_portaddr_hash hash table entries: 8192 (order: 5, 131072 bytes, linear)
> May 04 12:22:28 host kernel: Table-perturb hash table entries: 65536 (order: 6, 262144 bytes, linear)
> May 04 12:22:28 host kernel: TCP established hash table entries: 131072 (order: 8, 1048576 bytes, linear)
> May 04 12:22:28 host kernel: TCP bind hash table entries: 65536 (order: 9, 2097152 bytes, linear)
> May 04 12:22:28 host kernel: TCP: Hash tables configured (established 131072 bind 65536)
> May 04 12:22:28 host kernel: MPTCP token hash table entries: 16384 (order: 7, 393216 bytes, linear)
> May 04 12:22:28 host kernel: UDP hash table entries: 8192 (order: 7, 524288 bytes, linear)
> May 04 12:22:28 host kernel: UDP-Lite hash table entries: 8192 (order: 7, 524288 bytes, linear)
> May 04 12:22:28 host kernel: NET: Registered PF_UNIX/PF_LOCAL protocol family
> May 04 12:22:28 host kernel: NET: Registered PF_XDP protocol family
> May 04 12:22:28 host kernel: pci 0000:03:00.0: ROM [mem 0xffe00000-0xffffffff pref]: can't claim; no compatible bridge window
> May 04 12:22:28 host kernel: pci 0000:00:07.0: bridge window [io  0x1000-0x0fff] to [bus 04-2c] add_size 1000
> May 04 12:22:28 host kernel: pci 0000:00:07.2: bridge window [io  0x1000-0x0fff] to [bus 2d-55] add_size 1000
> May 04 12:22:28 host kernel: pci 0000:00:02.0: VF BAR 2 [mem 0x4020000000-0x40ffffffff 64bit pref]: assigned
> May 04 12:22:28 host kernel: pci 0000:00:02.0: VF BAR 0 [mem 0x4010000000-0x4016ffffff 64bit]: assigned
> May 04 12:22:28 host kernel: pci 0000:00:07.0: bridge window [io  0x4000-0x4fff]: assigned
> May 04 12:22:28 host kernel: pci 0000:00:07.2: bridge window [io  0x5000-0x5fff]: assigned
> May 04 12:22:28 host kernel: pci 0000:00:15.0: BAR 0 [mem 0x4017000000-0x4017000fff 64bit]: assigned
> May 04 12:22:28 host kernel: pci 0000:00:15.1: BAR 0 [mem 0x4017001000-0x4017001fff 64bit]: assigned
> May 04 12:22:28 host kernel: pci 0000:00:19.0: BAR 0 [mem 0x4017002000-0x4017002fff 64bit]: assigned
> May 04 12:22:28 host kernel: pci 0000:00:19.1: BAR 0 [mem 0x4017003000-0x4017003fff 64bit]: assigned
> May 04 12:22:28 host kernel: pci 0000:00:1f.5: BAR 0 [mem 0x50800000-0x50800fff]: assigned
> May 04 12:22:28 host kernel: pci 0000:03:00.0: ROM [mem size 0x00200000 pref]: can't assign; no space
> May 04 12:22:28 host kernel: pci 0000:03:00.0: ROM [mem size 0x00200000 pref]: failed to assign
> May 04 12:22:28 host kernel: pci 0000:02:01.0: PCI bridge to [bus 03]
> May 04 12:22:28 host kernel: pci 0000:02:01.0:   bridge window [mem 0x61000000-0x61ffffff]
> May 04 12:22:28 host kernel: pci 0000:02:01.0:   bridge window [mem 0x6000000000-0x60ffffffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:01:00.0: PCI bridge to [bus 02-03]
> May 04 12:22:28 host kernel: pci 0000:01:00.0:   bridge window [mem 0x61000000-0x61ffffff]
> May 04 12:22:28 host kernel: pci 0000:01:00.0:   bridge window [mem 0x6000000000-0x60ffffffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:00:06.0: PCI bridge to [bus 01-03]
> May 04 12:22:28 host kernel: pci 0000:00:06.0:   bridge window [mem 0x61000000-0x61ffffff]
> May 04 12:22:28 host kernel: pci 0000:00:06.0:   bridge window [mem 0x6000000000-0x61007fffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:00:07.0: PCI bridge to [bus 04-2c]
> May 04 12:22:28 host kernel: pci 0000:00:07.0:   bridge window [io  0x4000-0x4fff]
> May 04 12:22:28 host kernel: pci 0000:00:07.0:   bridge window [mem 0x62000000-0x6e1fffff]
> May 04 12:22:28 host kernel: pci 0000:00:07.0:   bridge window [mem 0x6110000000-0x612bffffff 64bit pref]
> May 04 12:22:28 host kernel: pci 0000:00:07.2: PCI bridge to [bus 2d-55]
> May 04 12:22:28 host kernel: pci 0000:00:07.2:   bridge window [io  0x5000-0x5fff]
> May 04 12:22:28 host kernel: pci 0000:00:07.2:   bridge window [mem 0x54000000-0x601fffff]
> May 04 12:22:28 host kernel: pci 0000:00:07.2:   bridge window [mem 0x6130000000-0x614bffffff 64bit pref]
> May 04 12:22:28 host kernel: pci_bus 0000:00: Some PCI device resources are unassigned, try booting with pci=realloc
> May 04 12:22:28 host kernel: pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7 window]
> May 04 12:22:28 host kernel: pci_bus 0000:00: resource 5 [io  0x0d00-0xffff window]
> May 04 12:22:28 host kernel: pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff window]
> May 04 12:22:28 host kernel: pci_bus 0000:00: resource 7 [mem 0x50800000-0xbfffffff window]
> May 04 12:22:28 host kernel: pci_bus 0000:00: resource 8 [mem 0x4000000000-0x7fffffffff window]
> May 04 12:22:28 host kernel: pci_bus 0000:01: resource 1 [mem 0x61000000-0x61ffffff]
> May 04 12:22:28 host kernel: pci_bus 0000:01: resource 2 [mem 0x6000000000-0x61007fffff 64bit pref]
> May 04 12:22:28 host kernel: pci_bus 0000:02: resource 1 [mem 0x61000000-0x61ffffff]
> May 04 12:22:28 host kernel: pci_bus 0000:02: resource 2 [mem 0x6000000000-0x60ffffffff 64bit pref]
> May 04 12:22:28 host kernel: pci_bus 0000:03: resource 1 [mem 0x61000000-0x61ffffff]
> May 04 12:22:28 host kernel: pci_bus 0000:03: resource 2 [mem 0x6000000000-0x60ffffffff 64bit pref]
> May 04 12:22:28 host kernel: pci_bus 0000:04: resource 0 [io  0x4000-0x4fff]
> May 04 12:22:28 host kernel: pci_bus 0000:04: resource 1 [mem 0x62000000-0x6e1fffff]
> May 04 12:22:28 host kernel: pci_bus 0000:04: resource 2 [mem 0x6110000000-0x612bffffff 64bit pref]
> May 04 12:22:28 host kernel: pci_bus 0000:2d: resource 0 [io  0x5000-0x5fff]
> May 04 12:22:28 host kernel: pci_bus 0000:2d: resource 1 [mem 0x54000000-0x601fffff]
> May 04 12:22:28 host kernel: pci_bus 0000:2d: resource 2 [mem 0x6130000000-0x614bffffff 64bit pref]
> May 04 12:22:28 host kernel: PCI: CLS 64 bytes, default 64
> May 04 12:22:28 host kernel: DMAR: Intel-IOMMU force enabled due to platform opt in
> May 04 12:22:28 host kernel: DMAR: No ATSR found
> May 04 12:22:28 host kernel: DMAR: No SATC found
> May 04 12:22:28 host kernel: DMAR: dmar1: Using Queued invalidation
> May 04 12:22:28 host kernel: DMAR: dmar0: Using Queued invalidation
> May 04 12:22:28 host kernel: DMAR: dmar2: Using Queued invalidation
> May 04 12:22:28 host kernel: Trying to unpack rootfs image as initramfs...
> May 04 12:22:28 host kernel: pci 0000:00:05.0: Adding to iommu group 0
> May 04 12:22:28 host kernel: pci 0000:00:02.0: Adding to iommu group 1
> May 04 12:22:28 host kernel: pci 0000:00:00.0: Adding to iommu group 2
> May 04 12:22:28 host kernel: pci 0000:00:04.0: Adding to iommu group 3
> May 04 12:22:28 host kernel: pci 0000:00:06.0: Adding to iommu group 4
> May 04 12:22:28 host kernel: pci 0000:00:07.0: Adding to iommu group 5
> May 04 12:22:28 host kernel: pci 0000:00:07.2: Adding to iommu group 6
> May 04 12:22:28 host kernel: pci 0000:00:08.0: Adding to iommu group 7
> May 04 12:22:28 host kernel: pci 0000:00:0d.0: Adding to iommu group 8
> May 04 12:22:28 host kernel: pci 0000:00:0d.2: Adding to iommu group 8
> May 04 12:22:28 host kernel: pci 0000:00:0d.3: Adding to iommu group 8
> May 04 12:22:28 host kernel: pci 0000:00:0e.0: Adding to iommu group 9
> May 04 12:22:28 host kernel: pci 0000:00:14.0: Adding to iommu group 10
> May 04 12:22:28 host kernel: pci 0000:00:14.2: Adding to iommu group 10
> May 04 12:22:28 host kernel: pci 0000:00:14.3: Adding to iommu group 11
> May 04 12:22:28 host kernel: pci 0000:00:15.0: Adding to iommu group 12
> May 04 12:22:28 host kernel: pci 0000:00:15.1: Adding to iommu group 12
> May 04 12:22:28 host kernel: pci 0000:00:16.0: Adding to iommu group 13
> May 04 12:22:28 host kernel: pci 0000:00:19.0: Adding to iommu group 14
> May 04 12:22:28 host kernel: pci 0000:00:19.1: Adding to iommu group 14
> May 04 12:22:28 host kernel: pci 0000:00:1f.0: Adding to iommu group 15
> May 04 12:22:28 host kernel: pci 0000:00:1f.3: Adding to iommu group 15
> May 04 12:22:28 host kernel: pci 0000:00:1f.4: Adding to iommu group 15
> May 04 12:22:28 host kernel: pci 0000:00:1f.5: Adding to iommu group 15
> May 04 12:22:28 host kernel: pci 0000:01:00.0: Adding to iommu group 16
> May 04 12:22:28 host kernel: pci 0000:02:01.0: Adding to iommu group 17
> May 04 12:22:28 host kernel: pci 0000:03:00.0: Adding to iommu group 18
> May 04 12:22:28 host kernel: DMAR: Intel(R) Virtualization Technology for Directed I/O
> May 04 12:22:28 host kernel: PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
> May 04 12:22:28 host kernel: software IO TLB: mapped [mem 0x000000002dfb9000-0x0000000031fb9000] (64MB)
> May 04 12:22:28 host kernel: clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0x23fa772cf26, max_idle_ns: 440795269835 ns
> May 04 12:22:28 host kernel: clocksource: Switched to clocksource tsc
> May 04 12:22:28 host kernel: Initialise system trusted keyrings
> May 04 12:22:28 host kernel: Key type blacklist registered
> May 04 12:22:28 host kernel: workingset: timestamp_bits=36 max_order=22 bucket_order=0
> May 04 12:22:28 host kernel: fuse: init (API version 7.45)
> May 04 12:22:28 host kernel: integrity: Platform Keyring initialized
> May 04 12:22:28 host kernel: integrity: Machine keyring initialized
> May 04 12:22:28 host kernel: xor: automatically using best checksumming function   avx
> May 04 12:22:28 host kernel: Key type asymmetric registered
> May 04 12:22:28 host kernel: Asymmetric key parser 'x509' registered
> May 04 12:22:28 host kernel: Block layer SCSI generic (bsg) driver version 0.4 loaded (major 245)
> May 04 12:22:28 host kernel: io scheduler mq-deadline registered
> May 04 12:22:28 host kernel: io scheduler kyber registered
> May 04 12:22:28 host kernel: io scheduler bfq registered
> May 04 12:22:28 host kernel: ledtrig-cpu: registered to indicate activity on CPUs
> May 04 12:22:28 host kernel: pcieport 0000:00:06.0: PME: Signaling with IRQ 123
> May 04 12:22:28 host kernel: pcieport 0000:00:07.0: PME: Signaling with IRQ 124
> May 04 12:22:28 host kernel: pcieport 0000:00:07.0: pciehp: Slot #3 AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug+ Surprise+ Interlock- NoCompl+ IbPresDis- LLActRep+
> May 04 12:22:28 host kernel: pcieport 0000:00:07.2: PME: Signaling with IRQ 125
> May 04 12:22:28 host kernel: pcieport 0000:00:07.2: pciehp: Slot #5 AttnBtn- PwrCtrl- MRL- AttnInd- PwrInd- HotPlug+ Surprise+ Interlock- NoCompl+ IbPresDis- LLActRep+
> May 04 12:22:28 host kernel: ACPI: AC: AC Adapter [ACAD] (on-line)
> May 04 12:22:28 host kernel: input: Lid Switch as /devices/pci0000:00/0000:00:1f.0/PNP0C0D:00/input/input0
> May 04 12:22:28 host kernel: ACPI: button: Lid Switch [LID0]
> May 04 12:22:28 host kernel: input: Power Button as /devices/platform/PNP0C0C:00/input/input1
> May 04 12:22:28 host kernel: ACPI: button: Power Button [PWRB]
> May 04 12:22:28 host kernel: Monitor-Mwait will be used to enter C-1 state
> May 04 12:22:28 host kernel: Monitor-Mwait will be used to enter C-2 state
> May 04 12:22:28 host kernel: Monitor-Mwait will be used to enter C-3 state
> May 04 12:22:28 host kernel: acpi LNXTHERM:00: registered as thermal_zone0
> May 04 12:22:28 host kernel: ACPI: thermal: Thermal Zone [TZ00] (28 C)
> May 04 12:22:28 host kernel: Serial: 8250/16550 driver, 32 ports, IRQ sharing enabled
> May 04 12:22:28 host kernel: ACPI: battery: Slot [BAT1] (battery present)
> May 04 12:22:28 host kernel: hpet_acpi_add: no address or irqs in _CRS
> May 04 12:22:28 host kernel: Non-volatile memory driver v1.3
> May 04 12:22:28 host kernel: Linux agpgart interface v0.103
> May 04 12:22:28 host kernel: Freeing initrd memory: 29900K
> May 04 12:22:28 host kernel: ACPI: bus type drm_connector registered
> May 04 12:22:28 host kernel: xhci_hcd 0000:00:0d.0: xHCI Host Controller
> May 04 12:22:28 host kernel: xhci_hcd 0000:00:0d.0: new USB bus registered, assigned bus number 1
> May 04 12:22:28 host kernel: xhci_hcd 0000:00:0d.0: hcc params 0x20007fc1 hci version 0x120 quirks 0x0000000200009810
> May 04 12:22:28 host kernel: xhci_hcd 0000:00:0d.0: xHCI Host Controller
> May 04 12:22:28 host kernel: xhci_hcd 0000:00:0d.0: new USB bus registered, assigned bus number 2
> May 04 12:22:28 host kernel: xhci_hcd 0000:00:0d.0: Host supports USB 3.2 Enhanced SuperSpeed
> May 04 12:22:28 host kernel: usb usb1: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 7.00
> May 04 12:22:28 host kernel: usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
> May 04 12:22:28 host kernel: usb usb1: Product: xHCI Host Controller
> May 04 12:22:28 host kernel: usb usb1: Manufacturer: Linux 7.0.3-arch1-2 xhci-hcd
> May 04 12:22:28 host kernel: usb usb1: SerialNumber: 0000:00:0d.0
> May 04 12:22:28 host kernel: hub 1-0:1.0: USB hub found
> May 04 12:22:28 host kernel: hub 1-0:1.0: 1 port detected
> May 04 12:22:28 host kernel: usb usb2: New USB device found, idVendor=1d6b, idProduct=0003, bcdDevice= 7.00
> May 04 12:22:28 host kernel: usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
> May 04 12:22:28 host kernel: usb usb2: Product: xHCI Host Controller
> May 04 12:22:28 host kernel: usb usb2: Manufacturer: Linux 7.0.3-arch1-2 xhci-hcd
> May 04 12:22:28 host kernel: usb usb2: SerialNumber: 0000:00:0d.0
> May 04 12:22:28 host kernel: hub 2-0:1.0: USB hub found
> May 04 12:22:28 host kernel: hub 2-0:1.0: 3 ports detected
> May 04 12:22:28 host kernel: xhci_hcd 0000:00:14.0: xHCI Host Controller
> May 04 12:22:28 host kernel: xhci_hcd 0000:00:14.0: new USB bus registered, assigned bus number 3
> May 04 12:22:28 host kernel: xhci_hcd 0000:00:14.0: hcc params 0x20007fc1 hci version 0x120 quirks 0x0000100200009810
> May 04 12:22:28 host kernel: xhci_hcd 0000:00:14.0: xHCI Host Controller
> May 04 12:22:28 host kernel: xhci_hcd 0000:00:14.0: new USB bus registered, assigned bus number 4
> May 04 12:22:28 host kernel: xhci_hcd 0000:00:14.0: Host supports USB 3.1 Enhanced SuperSpeed
> May 04 12:22:28 host kernel: usb usb3: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 7.00
> May 04 12:22:28 host kernel: usb usb3: New USB device strings: Mfr=3, Product=2, SerialNumber=1
> May 04 12:22:28 host kernel: usb usb3: Product: xHCI Host Controller
> May 04 12:22:28 host kernel: usb usb3: Manufacturer: Linux 7.0.3-arch1-2 xhci-hcd
> May 04 12:22:28 host kernel: usb usb3: SerialNumber: 0000:00:14.0
> May 04 12:22:28 host kernel: hub 3-0:1.0: USB hub found
> May 04 12:22:28 host kernel: hub 3-0:1.0: 12 ports detected
> May 04 12:22:28 host kernel: usb usb4: New USB device found, idVendor=1d6b, idProduct=0003, bcdDevice= 7.00
> May 04 12:22:28 host kernel: usb usb4: New USB device strings: Mfr=3, Product=2, SerialNumber=1
> May 04 12:22:28 host kernel: usb usb4: Product: xHCI Host Controller
> May 04 12:22:28 host kernel: usb usb4: Manufacturer: Linux 7.0.3-arch1-2 xhci-hcd
> May 04 12:22:28 host kernel: usb usb4: SerialNumber: 0000:00:14.0
> May 04 12:22:28 host kernel: hub 4-0:1.0: USB hub found
> May 04 12:22:28 host kernel: hub 4-0:1.0: 4 ports detected
> May 04 12:22:28 host kernel: usbcore: registered new interface driver usbserial_generic
> May 04 12:22:28 host kernel: usbserial: USB Serial support registered for generic
> May 04 12:22:28 host kernel: i8042: PNP: PS/2 Controller [PNP0303:PS2K] at 0x60,0x64 irq 1
> May 04 12:22:28 host kernel: i8042: PNP: PS/2 appears to have AUX port disabled, if this is incorrect please boot with i8042.nopnp
> May 04 12:22:28 host kernel: serio: i8042 KBD port at 0x60,0x64 irq 1
> May 04 12:22:28 host kernel: rtc_cmos 00:00: RTC can wake from S4
> May 04 12:22:28 host kernel: rtc_cmos 00:00: registered as rtc0
> May 04 12:22:28 host kernel: rtc_cmos 00:00: setting system clock to 2026-05-04T10:22:27 UTC (1777890147)
> May 04 12:22:28 host kernel: rtc_cmos 00:00: alarms up to one month, y3k, 242 bytes nvram
> May 04 12:22:28 host kernel: intel_pstate: Intel P-state driver initializing
> May 04 12:22:28 host kernel: intel_pstate: HWP enabled
> May 04 12:22:28 host kernel: simple-framebuffer simple-framebuffer.0: [drm] Registered 1 planes with drm panic
> May 04 12:22:28 host kernel: [drm] Initialized simpledrm 1.0.0 for simple-framebuffer.0 on minor 0
> May 04 12:22:28 host kernel: input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input2
> May 04 12:22:28 host kernel: Console: switching to colour frame buffer device 160x50
> May 04 12:22:28 host kernel: simple-framebuffer simple-framebuffer.0: [drm] fb0: simpledrmdrmfb frame buffer device
> May 04 12:22:28 host kernel: hid: raw HID events driver (C) Jiri Kosina
> May 04 12:22:28 host kernel: usbcore: registered new interface driver usbhid
> May 04 12:22:28 host kernel: usbhid: USB HID core driver
> May 04 12:22:28 host kernel: rust_binder: Loaded Rust Binder.
> May 04 12:22:28 host kernel: drop_monitor: Initializing network drop monitor service
> May 04 12:22:28 host kernel: NET: Registered PF_INET6 protocol family
> May 04 12:22:28 host kernel: Segment Routing with IPv6
> May 04 12:22:28 host kernel: RPL Segment Routing with IPv6
> May 04 12:22:28 host kernel: In-situ OAM (IOAM) with IPv6
> May 04 12:22:28 host kernel: NET: Registered PF_PACKET protocol family
> May 04 12:22:28 host kernel: ENERGY_PERF_BIAS: Set to 'normal', was 'performance'
> May 04 12:22:28 host kernel: microcode: Current revision: 0x0000043b
> May 04 12:22:28 host kernel: microcode: Updated early from: 0x0000041b
> May 04 12:22:28 host kernel: unchecked MSR access error: WRMSR to 0xd10 (tried to write 0x000000000000ffff) at rIP: 0xffffffffb5139c0f (native_write_msr+0xf/0x20)
> May 04 12:22:28 host kernel: Call Trace:
> May 04 12:22:28 host kernel:  <TASK>
> May 04 12:22:28 host kernel:  cat_wrmsr+0x55/0x90
> May 04 12:22:28 host kernel:  ? __pfx_smpboot_thread_fn+0x10/0x10
> May 04 12:22:28 host kernel:  resctrl_arch_online_cpu+0x497/0x700
> May 04 12:22:28 host kernel:  cpuhp_invoke_callback+0x16f/0x540
> May 04 12:22:28 host kernel:  ? __pfx_smpboot_thread_fn+0x10/0x10
> May 04 12:22:28 host kernel:  cpuhp_thread_fun+0xd9/0x210
> May 04 12:22:28 host kernel:  smpboot_thread_fn+0xf3/0x220
> May 04 12:22:28 host kernel:  kthread+0xe1/0x120
> May 04 12:22:28 host kernel:  ? __pfx_kthread+0x10/0x10
> May 04 12:22:28 host kernel:  ret_from_fork+0x2be/0x350
> May 04 12:22:28 host kernel:  ? __pfx_kthread+0x10/0x10
> May 04 12:22:28 host kernel:  ret_from_fork_asm+0x1a/0x30
> May 04 12:22:28 host kernel:  </TASK>
> May 04 12:22:28 host kernel: resctrl: L2 allocation detected
> May 04 12:22:28 host kernel: IPI shorthand broadcast: enabled
> May 04 12:22:28 host kernel: sched_clock: Marking stable (972195483, 20318057)->(1025513659, -33000119)
> May 04 12:22:28 host kernel: registered taskstats version 1
> May 04 12:22:28 host kernel: Loading compiled-in X.509 certificates
> May 04 12:22:28 host kernel: Loaded X.509 cert 'Build time autogenerated kernel key: d8896465911abeb7b5e47167cce955e9f7d68386'
> May 04 12:22:28 host kernel: Demotion targets for Node 0: null
> May 04 12:22:28 host kernel: Key type .fscrypt registered
> May 04 12:22:28 host kernel: Key type fscrypt-provisioning registered
> May 04 12:22:28 host kernel: Btrfs loaded, zoned=yes, fsverity=yes
> May 04 12:22:28 host kernel: Key type big_key registered
> May 04 12:22:28 host kernel: AppArmor: AppArmor sha256 policy hashing enabled
> May 04 12:22:28 host kernel: integrity: Loading X.509 certificate: UEFI:db
> May 04 12:22:28 host kernel: integrity: Loaded X.509 cert 'Microsoft Windows Production PCA 2011: a92902398e16c49778cd90f99e4f9ae17c55af53'
> May 04 12:22:28 host kernel: integrity: Loading X.509 certificate: UEFI:db
> May 04 12:22:28 host kernel: integrity: Loaded X.509 cert 'Microsoft Corporation UEFI CA 2011: 13adbf4309bd82709c8cd54f316ed522988a1bd4'
> May 04 12:22:28 host kernel: integrity: Loading X.509 certificate: UEFI:db
> May 04 12:22:28 host kernel: integrity: Loaded X.509 cert 'Acer Database: 84f00f5841571abd2cc11a8c26d5c9c8d2b6b0b5'
> May 04 12:22:28 host kernel: integrity: Loading X.509 certificate: UEFI:db
> May 04 12:22:28 host kernel: integrity: Problem loading X.509 certificate -65
> May 04 12:22:28 host kernel: integrity: Error adding keys to platform keyring UEFI:db
> May 04 12:22:28 host kernel: integrity: Loading X.509 certificate: UEFI:db
> May 04 12:22:28 host kernel: integrity: Problem loading X.509 certificate -65
> May 04 12:22:28 host kernel: integrity: Error adding keys to platform keyring UEFI:db
> May 04 12:22:28 host kernel: integrity: Loading X.509 certificate: UEFI:db
> May 04 12:22:28 host kernel: integrity: Loaded X.509 cert 'Linpus: linpus.com: 2e092cab5e97a89f94a6e272ec7267c267cf4483'
> May 04 12:22:28 host kernel: PM:   Magic number: 10:176:375
> May 04 12:22:28 host kernel: acpi ACPI0007:29: hash matches
> May 04 12:22:28 host kernel: acpi LNXVIXXO:01: hash matches
> May 04 12:22:28 host kernel: RAS: Correctable Errors collector initialized.
> May 04 12:22:28 host kernel: clk: Disabling unused clocks
> May 04 12:22:28 host kernel: PM: genpd: Disabling unused power domains
> May 04 12:22:28 host kernel: Freeing unused decrypted memory: 2028K
> May 04 12:22:28 host kernel: Freeing unused kernel image (initmem) memory: 4816K
> May 04 12:22:28 host kernel: Write protecting the kernel read-only data: 40960k
> May 04 12:22:28 host kernel: Freeing unused kernel image (text/rodata gap) memory: 676K
> May 04 12:22:28 host kernel: Freeing unused kernel image (rodata/data gap) memory: 1600K
> May 04 12:22:28 host kernel: x86/mm: Checked W+X mappings: passed, no W+X pages found.
> May 04 12:22:28 host kernel: rodata_test: all tests were successful
> May 04 12:22:28 host kernel: Run /init as init process
> May 04 12:22:28 host kernel:   with arguments:
> May 04 12:22:28 host kernel:     /init
> May 04 12:22:28 host kernel:   with environment:
> May 04 12:22:28 host kernel:     HOME=/
> May 04 12:22:28 host kernel:     TERM=linux
> May 04 12:22:28 host systemd[1]: Successfully made /usr/ read-only.
> May 04 12:22:28 host kernel: usb 3-4: new low-speed USB device number 2 using xhci_hcd
> May 04 12:22:28 host kernel: usb 3-4: New USB device found, idVendor=1c4f, idProduct=0048, bcdDevice= 1.10
> May 04 12:22:28 host kernel: usb 3-4: New USB device strings: Mfr=1, Product=2, SerialNumber=0
> May 04 12:22:28 host kernel: usb 3-4: Product: Usb Mouse
> May 04 12:22:28 host kernel: usb 3-4: Manufacturer: SIGMACHIP
> May 04 12:22:28 host kernel: input: SIGMACHIP Usb Mouse as /devices/pci0000:00/0000:00:14.0/usb3/3-4/3-4:1.0/0003:1C4F:0048.0001/input/input3
> May 04 12:22:28 host kernel: hid-generic 0003:1C4F:0048.0001: input,hidraw0: USB HID v1.10 Mouse [SIGMACHIP Usb Mouse] on usb-0000:00:14.0-4/input0
> May 04 12:22:28 host kernel: usb 3-9: new full-speed USB device number 3 using xhci_hcd
> May 04 12:22:28 host systemd[1]: systemd 260.1-2-arch running in system mode (+PAM +AUDIT -SELINUX +APPARMOR -IMA +IPE +SMACK +SECCOMP +GCRYPT +GNUTLS +OPENSSL +ACL +BLKID +CURL +ELFUTILS +FIDO2 +IDN2 +KMOD +LIBCRYPTSETUP +LIBCRYPTSETUP_PLUGINS +LIBFDISK +PCRE2 +PWQUALITY +P11KIT +QRENCOXX +TPM2 +BZIP2 +LZ4 +XZ +ZLIB +ZSTD +BPF_FRAMEWORK +BTF +XKBCOMMON +UTMP +LIBARCHIVE)
> May 04 12:22:28 host systemd[1]: Detected architecture x86-64.
> May 04 12:22:28 host systemd[1]: Running in initrd.
> May 04 12:22:28 host systemd[1]: Received untrusted credentials: nvpcr-anchor.[MACHINE_ID_REDACTED]
> May 04 12:22:28 host systemd[1]: Acquired 0 regular credentials, 1 untrusted credentials.
> May 04 12:22:28 host systemd[1]: Initializing machine ID from random generator.
> May 04 12:22:28 host systemd[1]: Queued start job for default target Initrd Default Target.
> May 04 12:22:28 host kernel: usb 3-9: New USB device found, idVendor=04f3, idProduct=0c7f, bcdDevice= 1.64
> May 04 12:22:28 host kernel: usb 3-9: New USB device strings: Mfr=1, Product=2, SerialNumber=0
> May 04 12:22:28 host kernel: usb 3-9: Product: ELAN:Fingerprint
> May 04 12:22:28 host kernel: usb 3-9: Manufacturer: ELAN
> May 04 12:22:28 host systemd[1]: Created slice Slice /system/systemd-cryptsetup.
> May 04 12:22:28 host systemd[1]: Started Dispatch Password Requests to Console Directory Watch.
> May 04 12:22:28 host systemd[1]: Expecting device /dev/disk/by-uuid/XXXX-XXXX-XXXX-XXXX...
> May 04 12:22:28 host systemd[1]: Expecting device /dev/mapper/root...
> May 04 12:22:28 host systemd[1]: Reached target Path Units.
> May 04 12:22:28 host systemd[1]: Reached target Slice Units.
> May 04 12:22:28 host systemd[1]: Reached target Swaps.
> May 04 12:22:28 host systemd[1]: Reached target Timer Units.
> May 04 12:22:28 host systemd[1]: Listening on Journal Socket (/dev/log).
> May 04 12:22:28 host systemd[1]: Listening on Journal Sockets.
> May 04 12:22:28 host systemd[1]: Listening on udev Control Socket.
> May 04 12:22:28 host systemd[1]: Listening on udev Kernel Socket.
> May 04 12:22:28 host systemd[1]: Reached target Socket Units.
> May 04 12:22:28 host systemd[1]: Starting Create List of Static Device Nodes...
> May 04 12:22:28 host systemd[1]: Starting Early Battery Level Check...
> May 04 12:22:28 host systemd[1]: Starting Journal Service...
> May 04 12:22:28 host systemd[1]: Starting Load Kernel Modules...
> May 04 12:22:28 host systemd[1]: Starting TPM PCR Barrier (initrd)...
> May 04 12:22:28 host systemd[1]: Starting Create Static Device Nodes in /dev...
> May 04 12:22:28 host systemd[1]: Starting Coldplug All udev Devices...
> May 04 12:22:28 host systemd-journald[218]: Collecting audit messages is disabled.
> May 04 12:22:28 host systemd[1]: Finished Create List of Static Device Nodes.
> May 04 12:22:28 host systemd[1]: Finished Early Battery Level Check.
> May 04 12:22:28 host systemd[1]: Finished Create Static Device Nodes in /dev.
> May 04 12:22:28 host systemd[1]: Reached target Preparation for Local File Systems.
> May 04 12:22:28 host systemd[1]: Reached target Local File Systems.
> May 04 12:22:28 host systemd[1]: Started Display Boot-Time Emergency Messages In Full Screen.
> May 04 12:22:28 host kernel: wmi_bus wmi_bus-PNP0C14:00: [Firmware Bug]: WMBF method block execution control method not found
> May 04 12:22:28 host systemd[1]: Starting Rule-based Manager for Device Events and Files...
> May 04 12:22:28 host systemd-journald[218]: Journal started
> May 04 12:22:28 host systemd-journald[218]: Runtime Journal (/run/log/journal/ [REDACTED_ID]) is 8M, max 313.7M, 305.7M free.
> May 04 12:22:28 host systemd[1]: Started Journal Service.
> May 04 12:22:28 host systemd[1]: Starting Create System Files and Directories...
> May 04 12:22:28 host systemd-udevd[238]: Using default interface naming scheme 'v260'.
> May 04 12:22:28 host systemd[1]: Started Rule-based Manager for Device Events and Files.
> May 04 12:22:28 host systemd[1]: Finished Create System Files and Directories.
> May 04 12:22:28 host systemd-pcrextend[223]: Extended PCR index 11 with 'enter-initrd' (banks sha256).
> May 04 12:22:28 host systemd[1]: Finished TPM PCR Barrier (initrd).
> May 04 12:22:28 host kernel: usb 3-10: new full-speed USB device number 4 using xhci_hcd
> May 04 12:22:28 host systemd[1]: Finished Coldplug All udev Devices.
> May 04 12:22:28 host systemd[1]: Starting Virtual Console Setup...
> May 04 12:22:28 host kernel: usb 3-10: New USB device found, idVendor=8087, idProduct=0033, bcdDevice= 0.00
> May 04 12:22:28 host kernel: usb 3-10: New USB device strings: Mfr=0, Product=0, SerialNumber=0
> May 04 12:22:28 host systemd[1]: Finished Virtual Console Setup.
> May 04 12:22:28 host kernel: vmd 0000:00:0e.0: PCI host bridge to bus 10000:e0
> May 04 12:22:28 host kernel: pci_bus 10000:e0: root bus resource [bus e0-ff]
> May 04 12:22:28 host kernel: pci_bus 10000:e0: root bus resource [mem 0x52000000-0x53ffffff]
> May 04 12:22:28 host kernel: pci_bus 10000:e0: root bus resource [mem 0x6100902000-0x61009fffff 64bit]
> May 04 12:22:28 host kernel: pci 10000:e0:06.0: [8086:09ab] type 00 class 0x088000 conventional PCI endpoint
> May 04 12:22:28 host kernel: pci 10000:e0:06.0: Adding to iommu group 9
> May 04 12:22:28 host kernel: pci 10000:e0:06.2: [8086:463d] type 01 class 0x060400 PCIe Root Port
> May 04 12:22:28 host kernel: pci 10000:e0:06.2: PCI bridge to [bus e1]
> May 04 12:22:28 host kernel: pci 10000:e0:06.2:   bridge window [io  0x0000-0x0fff]
> May 04 12:22:28 host kernel: pci 10000:e0:06.2:   bridge window [mem 0x52000000-0x520fffff]
> May 04 12:22:28 host kernel: pci 10000:e0:06.2: PME# supported from D0 D3hot D3cold
> May 04 12:22:28 host kernel: pci 10000:e0:06.2: PTM enabled (root), 4ns granularity
> May 04 12:22:28 host kernel: pci 10000:e0:06.2: Adding to iommu group 9
> May 04 12:22:28 host kernel: pci 10000:e0:06.2: Primary bus is hard wired to 0
> May 04 12:22:28 host kernel: pci 10000:e1:00.0: [15b7:5017] type 00 class 0x010802 PCIe Endpoint
> May 04 12:22:28 host kernel: pci 10000:e1:00.0: BAR 0 [mem 0x52000000-0x52003fff 64bit]
> May 04 12:22:28 host kernel: pci 10000:e1:00.0: Adding to iommu group 9
> May 04 12:22:28 host kernel: pci 10000:e0:06.2: PCI bridge to [bus e1]
> May 04 12:22:28 host kernel: pci 10000:e0:06.2: Primary bus is hard wired to 0
> May 04 12:22:28 host kernel: Setting dangerous option force_probe - tainting kernel
> May 04 12:22:28 host kernel: intel-lpss 0000:00:15.0: enabling device (0004 -> 0006)
> May 04 12:22:28 host kernel: idma64 idma64.0: Found Intel integrated DMA 64-bit
> May 04 12:22:28 host kernel: intel-lpss 0000:00:15.1: enabling device (0004 -> 0006)
> May 04 12:22:28 host kernel: idma64 idma64.1: Found Intel integrated DMA 64-bit
> May 04 12:22:28 host kernel: intel-lpss 0000:00:19.0: enabling device (0004 -> 0006)
> May 04 12:22:28 host kernel: idma64 idma64.2: Found Intel integrated DMA 64-bit
> May 04 12:22:28 host kernel: intel-lpss 0000:00:19.1: enabling device (0004 -> 0006)
> May 04 12:22:28 host kernel: idma64 idma64.3: Found Intel integrated DMA 64-bit
> May 04 12:22:28 host kernel: Console: switching to colour dummy device 80x25
> May 04 12:22:28 host kernel: xe 0000:00:02.0: vgaarb: deactivate vga console
> May 04 12:22:28 host kernel: xe 0000:00:02.0: [drm] Running in SR-IOV PF mode
> May 04 12:22:28 host kernel: xe 0000:00:02.0: [drm] Found alderlake_p (device ID 46a6) integrated display version 13.00 stepping D0
> May 04 12:22:28 host kernel: xe 0000:00:02.0: [drm] PF: migration disabled: requires memory-based IRQ support
> May 04 12:22:28 host kernel: xe 0000:00:02.0: vgaarb: VGA decodes changed: olddecodes=io+mem,decodes=io+mem:owns=io+mem
> May 04 12:22:28 host kernel: xe 0000:00:02.0: [drm] Finished loading DMC firmware i915/adlp_dmc.bin (v2.20)
> May 04 12:22:28 host kernel: pci 10000:e0:06.2: disabling bridge window [mem size 0x00000000 64bit pref disabled] to [bus e1] (unused)
> May 04 12:22:28 host kernel: pci 10000:e0:06.2: bridge window [mem 0x52000000-0x520fffff]: assigned
> May 04 12:22:28 host kernel: pci 10000:e0:06.2: bridge window [io  size 0x1000]: can't assign; no space
> May 04 12:22:28 host kernel: pci 10000:e0:06.2: bridge window [io  size 0x1000]: failed to assign
> May 04 12:22:28 host kernel: pci 10000:e0:06.2: bridge window [io  size 0x1000]: can't assign; no space
> May 04 12:22:28 host kernel: pci 10000:e0:06.2: bridge window [io  size 0x1000]: failed to assign
> May 04 12:22:28 host kernel: pci 10000:e1:00.0: BAR 0 [mem 0x52000000-0x52003fff 64bit]: assigned
> May 04 12:22:28 host kernel: pci 10000:e0:06.2: PCI bridge to [bus e1]
> May 04 12:22:28 host kernel: pci 10000:e0:06.2:   bridge window [mem 0x52000000-0x520fffff]
> May 04 12:22:28 host kernel: pci 10000:e1:00.0: VMD: Default LTR value set by driver
> May 04 12:22:28 host kernel: pcieport 10000:e0:06.2: can't derive routing for PCI INT B
> May 04 12:22:28 host kernel: pcieport 10000:e0:06.2: PCI INT B: no GSI
> May 04 12:22:28 host kernel: pcieport 10000:e0:06.2: PME: Signaling with IRQ 161
> May 04 12:22:28 host kernel: vmd 0000:00:0e.0: Bound to PCI domain 10000
> May 04 12:22:28 host kernel: Setting dangerous option force_probe - tainting kernel
> May 04 12:22:28 host kernel: Key type psk registered
> May 04 12:22:28 host kernel: nvme nvme0: pci function 10000:e1:00.0
> May 04 12:22:28 host kernel: pcieport 10000:e0:06.2: can't derive routing for PCI INT A
> May 04 12:22:28 host kernel: nvme 10000:e1:00.0: PCI INT A: no GSI
> May 04 12:22:28 host kernel: nvme nvme0: allocated 32 MiB host memory buffer (8 segments).
> May 04 12:22:28 host kernel: nvme nvme0: 16/0/0 default/read/poll queues
> May 04 12:22:28 host kernel:  nvme0n1: p1 p2
> May 04 12:22:28 host systemd[1]: Found device [GENERIC_NVME_SSD] 2.
> May 04 12:22:28 host systemd[1]: Starting Cryptography Setup for root...
> May 04 12:22:28 host kernel: device-mapper: uevent: version 1.0.3
> May 04 12:22:28 host kernel: device-mapper: ioctl: 4.50.0-ioctl (2025-04-28) initialised: dm-devel@lists.linux.dev
> May 04 12:22:28 host systemd[1]: Starting Dispatch Password Requests to Console...
> May 04 12:22:28 host systemd[1]: Started Dispatch Password Requests to Console.
> May 04 12:22:28 host systemd-tty-ask-password-agent[334]: Starting password query on /dev/tty1.
> May 04 12:22:28 host kernel: xe 0000:00:02.0: [drm] Tile0: GT0: Using GuC firmware from i915/adlp_guc_70.bin version 70.49.4
> May 04 12:22:28 host kernel: xe 0000:00:02.0: [drm] Tile0: GT0: Using HuC firmware from i915/tgl_huc.bin version 7.9.3
> May 04 12:22:29 host kernel: xe 0000:00:02.0: [drm] Tile0: GT0: vcs1 fused off
> May 04 12:22:29 host kernel: xe 0000:00:02.0: [drm] Tile0: GT0: vcs3 fused off
> May 04 12:22:29 host kernel: xe 0000:00:02.0: [drm] Tile0: GT0: vcs4 fused off
> May 04 12:22:29 host kernel: xe 0000:00:02.0: [drm] Tile0: GT0: vcs5 fused off
> May 04 12:22:29 host kernel: xe 0000:00:02.0: [drm] Tile0: GT0: vcs6 fused off
> May 04 12:22:29 host kernel: xe 0000:00:02.0: [drm] Tile0: GT0: vcs7 fused off
> May 04 12:22:29 host kernel: xe 0000:00:02.0: [drm] Tile0: GT0: vecs1 fused off
> May 04 12:22:29 host kernel: xe 0000:00:02.0: [drm] Tile0: GT0: vecs2 fused off
> May 04 12:22:29 host kernel: xe 0000:00:02.0: [drm] Tile0: GT0: vecs3 fused off
> May 04 12:22:29 host kernel: xe 0000:00:02.0: [drm] Registered 4 planes with drm panic
> May 04 12:22:29 host kernel: [drm] Initialized xe 1.1.0 for 0000:00:02.0 on minor 0
> May 04 12:22:29 host kernel: ACPI: video: Video Device [PEGE] (multi-head: yes  rom: no  post: no)
> May 04 12:22:29 host kernel: input: Video Bus as /devices/pci0000:00/0000:00:06.0/0000:01:00.0/0000:02:01.0/acpi.video_bus.0/input/input4
> May 04 12:22:29 host kernel: ACPI: video: Video Device [GFX0] (multi-head: yes  rom: no  post: no)
> May 04 12:22:29 host kernel: input: Video Bus as /devices/pci0000:00/acpi.video_bus.1/input/input5
> May 04 12:22:29 host kernel: fbcon: xedrmfb (fb0) is primary device
> May 04 12:22:29 host systemd[1]: systemd-vconsole-setup.service: Deactivated successfully.
> May 04 12:22:29 host systemd[1]: Stopped Virtual Console Setup.
> May 04 12:22:29 host systemd[1]: Stopping Virtual Console Setup...
> May 04 12:22:29 host systemd[1]: Starting Virtual Console Setup...
> May 04 12:22:30 host kernel: Console: switching to colour frame buffer device 160x50
> May 04 12:22:30 host kernel: xe 0000:00:02.0: [drm] fb0: xedrmfb frame buffer device
> May 04 12:22:30 host kernel: xe 0000:00:02.0: [drm] PF: migration disabled: requires GuC version >= 70.54.0
> May 04 12:22:30 host kernel: xe 0000:03:00.0: enabling device (0000 -> 0002)
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] Found dg2/g11 (device ID 5693) discrete display version 13.00 stepping C0
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] VISIBLE VRAM: 0x0000006000000000, 0x0000000100000000
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] VRAM[0]: Actual physical size 0x0000000100000000, usable size exclude stolen 0x00000000fd000000, CPU accessible size 0x00000000fd000000
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] VRAM[0]: DPA range: [0x0000000000000000-100000000], io range: [0x0000006000000000-60fd000000]
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] VRAM[0]: Actual physical size 0x0000000100000000, usable size exclude stolen 0x00000000fd000000, CPU accessible size 0x00000000fd000000
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] VRAM[0]: DPA range: [0x0000000000000000-100000000], io range: [0x0000006000000000-60fd000000]
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] Display not present, disabling
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] Tile0: GT0: Using GuC firmware from i915/dg2_guc_70.bin version 70.53.0
> May 04 12:22:30 host systemd[1]: Finished Virtual Console Setup.
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] Tile0: GT0: vcs1 fused off
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] Tile0: GT0: vcs3 fused off
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] Tile0: GT0: vcs4 fused off
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] Tile0: GT0: vcs5 fused off
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] Tile0: GT0: vcs6 fused off
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] Tile0: GT0: vcs7 fused off
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] Tile0: GT0: vecs2 fused off
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] Tile0: GT0: vecs3 fused off
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] Tile0: GT0: ccs0 fused off
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] Tile0: GT0: ccs2 fused off
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] Tile0: GT0: ccs3 fused off
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] NVM access overridden by jumper
> May 04 12:22:30 host kernel: [drm] Initialized xe 1.1.0 for 0000:03:00.0 on minor 1
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] Using register for power limits
> May 04 12:22:30 host kernel: xe 0000:03:00.0: [drm] PL1 is supported on channel 1
> May 04 12:22:30 host systemd-modules-load[220]: Inserted module 'xe'
> May 04 12:22:30 host systemd[1]: Finished Load Kernel Modules.
> May 04 12:22:31 host kernel: BUG: kernel NULL pointer dereference, address: 00000000000005d8
> May 04 12:22:31 host kernel: #PF: supervisor write access in kernel mode
> May 04 12:22:31 host kernel: #PF: error_code(0x0002) - not-present page
> May 04 12:22:31 host kernel: PGD 0 P4D 0
> May 04 12:22:31 host kernel: Oops: Oops: 0002 [#1] SMP NOPTI
> May 04 12:22:31 host kernel: CPU: 2 UID: 0 PID: 145 Comm: kworker/u64:3 Tainted: G     U              7.0.3-arch1-2 #1 PREEMPT(full)  88a2c8f55a128ad9505b4014386291e7c04d5e88
> May 04 12:22:31 host kernel: Tainted: [U]=USER
> May 04 12:22:31 host kernel: Hardware name: Acer Swift SFX16-52G/Penguin_ADP, BIOS V1.06 02/15/2024
> May 04 12:22:31 host kernel: Workqueue: pm pm_runtime_work
> May 04 12:22:31 host kernel: RIP: 0010:_raw_spin_lock+0x17/0x30
> May 04 12:22:31 host kernel: Code: 0b 00 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 f3 0f 1e fa 0f 1f 44 00 00 65 ff 05 30 5a f6 01 31 c0 ba 01 00 00 00 <f0> 0f b1 17 75 05 c3 cc cc cc cc 89 c6 e8 f7 01 00 00 90 c3 cc cc
> May 04 12:22:31 host kernel: RSP: 0018:ffffcb36409afc98 EFLAGS: 00010246
> May 04 12:22:31 host kernel: RAX: 0000000000000000 RBX: ffff8b0255850000 RCX: 0000000000000002
> May 04 12:22:31 host kernel: RDX: 0000000000000001 RSI: 000000000000004b RDI: 00000000000005d8
> May 04 12:22:31 host kernel: RBP: fffffffffffffff0 R08: ffff8b0250352700 R09: ffff8b02400a1020
> May 04 12:22:31 host kernel: R10: ffff8b0241cd50c0 R11: fefefefefefefeff R12: ffff8b02558502f8
> May 04 12:22:31 host kernel: R13: ffff8b02558516f8 R14: 0000000000000000 R15: 00000000000005d8
> May 04 12:22:31 host kernel: FS:  0000000000000000(0000) GS:ffff8b06271e7000(0000) knlGS:0000000000000000
> May 04 12:22:31 host kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> May 04 12:22:31 host kernel: CR2: 00000000000005d8 CR3: 00000002c2624001 CR4: 0000000000f70ef0
> May 04 12:22:31 host kernel: PKRU: 55555554
> May 04 12:22:31 host kernel: Call Trace:
> May 04 12:22:31 host kernel:  <TASK>
> May 04 12:22:31 host kernel:  xe_display_flush_cleanup_work+0x96/0x140 [xe f2f29b1d1ff2c460d63b0f79a68d15052c8fc91d]
> May 04 12:22:31 host kernel:  xe_display_pm_runtime_suspend+0x4b/0x90 [xe f2f29b1d1ff2c460d63b0f79a68d15052c8fc91d]
> May 04 12:22:31 host kernel:  xe_pm_runtime_suspend+0x147/0x300 [xe f2f29b1d1ff2c460d63b0f79a68d15052c8fc91d]
> May 04 12:22:31 host kernel:  ? __pfx_pci_pm_runtime_suspend+0x10/0x10
> May 04 12:22:31 host kernel:  ? update_entity_lag+0x4f/0xe0
> May 04 12:22:31 host kernel:  xe_pci_runtime_suspend+0x2a/0xe0 [xe f2f29b1d1ff2c460d63b0f79a68d15052c8fc91d]
> May 04 12:22:31 host kernel:  pci_pm_runtime_suspend+0x78/0x210
> May 04 12:22:31 host kernel:  ? __pfx_pci_pm_runtime_suspend+0x10/0x10
> May 04 12:22:31 host kernel:  __rpm_callback+0x57/0x210
> May 04 12:22:31 host kernel:  ? __pfx_pci_pm_runtime_suspend+0x10/0x10
> May 04 12:22:31 host kernel:  ? __update_runtime_status+0xa2/0xe0
> May 04 12:22:31 host kernel:  rpm_callback+0x6d/0x80
> May 04 12:22:31 host kernel:  rpm_suspend+0xe7/0x620
> May 04 12:22:31 host kernel:  ? __schedule+0x456/0x1710
> May 04 12:22:31 host kernel:  pm_runtime_work+0x98/0xb0
> May 04 12:22:31 host kernel:  process_one_work+0x19c/0x3a0
> May 04 12:22:31 host kernel:  worker_thread+0x1b1/0x310
> May 04 12:22:31 host kernel:  ? __pfx_worker_thread+0x10/0x10
> May 04 12:22:31 host kernel:  kthread+0xe1/0x120
> May 04 12:22:31 host kernel:  ? __pfx_kthread+0x10/0x10
> May 04 12:22:31 host kernel:  ret_from_fork+0x2be/0x350
> May 04 12:22:31 host kernel:  ? __pfx_kthread+0x10/0x10
> May 04 12:22:31 host kernel:  ret_from_fork_asm+0x1a/0x30
> May 04 12:22:31 host kernel:  </TASK>
> May 04 12:22:31 host kernel: Modules linked in: dm_mod nvme nvme_core nvme_keyring nvme_auth hkdf i915 intel_lpss_pci ghash_clmulni_intel intel_lpss spi_intel_pci aesni_intel spi_intel vmd intel_gtt idma64 serio_raw xe intel_vsec drm_ttm_helper drm_suballoc_helper gpu_sched drm_gpuvm drm_exec drm_gpusvm_helper i2c_algo_bit drm_buddy video wmi ttm drm_display_helper cec
> May 04 12:22:31 host kernel: CR2: 00000000000005d8
> May 04 12:22:31 host kernel: ---[ end trace 0000000000000000 ]---
> May 04 12:22:31 host kernel: RIP: 0010:_raw_spin_lock+0x17/0x30
> May 04 12:22:31 host kernel: Code: 0b 00 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 f3 0f 1e fa 0f 1f 44 00 00 65 ff 05 30 5a f6 01 31 c0 ba 01 00 00 00 <f0> 0f b1 17 75 05 c3 cc cc cc cc 89 c6 e8 f7 01 00 00 90 c3 cc cc
> May 04 12:22:31 host kernel: RSP: 0018:ffffcb36409afc98 EFLAGS: 00010246
> May 04 12:22:31 host kernel: RAX: 0000000000000000 RBX: ffff8b0255850000 RCX: 0000000000000002
> May 04 12:22:31 host kernel: RDX: 0000000000000001 RSI: 000000000000004b RDI: 00000000000005d8
> May 04 12:22:31 host kernel: RBP: fffffffffffffff0 R08: ffff8b0250352700 R09: ffff8b02400a1020
> May 04 12:22:31 host kernel: R10: ffff8b0241cd50c0 R11: fefefefefefefeff R12: ffff8b02558502f8
> May 04 12:22:31 host kernel: R13: ffff8b02558516f8 R14: 0000000000000000 R15: 00000000000005d8
> May 04 12:22:31 host kernel: FS:  0000000000000000(0000) GS:ffff8b06271e7000(0000) knlGS:0000000000000000
> May 04 12:22:31 host kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> May 04 12:22:31 host kernel: CR2: 00000000000005d8 CR3: 00000002c2624001 CR4: 0000000000f70ef0
> May 04 12:22:31 host kernel: PKRU: 55555554
> May 04 12:22:31 host kernel: note: kworker/u64:3[145] exited with irqs disabled
> May 04 12:22:31 host kernel: note: kworker/u64:3[145] exited with preempt_count 1
> May 04 12:22:43 host systemd-tty-ask-password-agent[334]: Password query on /dev/tty1 finished successfully.
> May 04 12:22:43 host systemd-cryptsetup[329]: TPM policy does not match current system state. Either system has been tempered with or policy out-of-date: Operation not permitted
> May 04 12:22:43 host systemd-tty-ask-password-agent[334]: Starting password query on /dev/tty1.
> May 04 12:22:57 host systemd-tty-ask-password-agent[334]: Password query on /dev/tty1 finished successfully.
> May 04 12:22:57 host systemd-cryptsetup[329]: Set cipher aes, mode xts-plain64, key size 512 bits for device /dev/disk/by-uuid/XXXX-XXXX-XXXX-XXXX.
> May 04 12:22:59 host systemd-cryptsetup[329]: Failed to activate with specified passphrase. (Passphrase incorrect?)
> May 04 12:22:59 host systemd-cryptsetup[329]: Set cipher aes, mode xts-plain64, key size 512 bits for device /dev/disk/by-uuid/XXXX-XXXX-XXXX-XXXX.
> May 04 12:23:01 host systemd-cryptsetup[329]: Failed to activate with specified passphrase. (Passphrase incorrect?)
> May 04 12:23:01 host systemd-tty-ask-password-agent[334]: Starting password query on /dev/tty1.
> May 04 12:23:16 host systemd-tty-ask-password-agent[334]: Password query on /dev/tty1 finished successfully.
> May 04 12:23:16 host systemd-cryptsetup[329]: Set cipher aes, mode xts-plain64, key size 512 bits for device /dev/disk/by-uuid/XXXX-XXXX-XXXX-XXXX.
> May 04 12:23:19 host kernel: Key type trusted registered
> May 04 12:23:19 host kernel: Key type encrypted registered
> May 04 12:23:19 host systemd[1]: Found device /dev/mapper/root.
> May 04 12:23:19 host systemd[1]: Reached target Initrd Root Device.
> May 04 12:23:19 host systemd[1]: Starting File System Check on /dev/mapper/root...
> May 04 12:23:19 host systemd[1]: Finished Cryptography Setup for root.
> May 04 12:23:19 host systemd[1]: Reached target Local Encrypted Volumes.
> May 04 12:23:19 host systemd[1]: Reached target System Initialization.
> May 04 12:23:19 host systemd[1]: Reached target Basic System.
> May 04 12:23:19 host systemd-fsck[832]: /dev/mapper/root: clean, 453209/31195136 files, 11140226/124760064 blocks
> May 04 12:23:19 host systemd[1]: Finished File System Check on /dev/mapper/root.
> May 04 12:23:19 host systemd[1]: Mounting /sysroot...
> May 04 12:23:19 host kernel: EXT4-fs (dm-0): mounted filesystem 3af15e4a-7c52-41e8-97c5-e1d5d6c2443b r/w with ordered data mode. Quota mode: none.
> May 04 12:23:19 host systemd[1]: Mounted /sysroot.
> May 04 12:23:19 host systemd[1]: Reached target Initrd Root File System.
> May 04 12:23:19 host systemd[1]: Starting Mountpoints Configured in the Real Root...
> May 04 12:23:19 host systemd[1]: initrd-parse-etc.service: Deactivated successfully.
> May 04 12:23:19 host systemd[1]: Finished Mountpoints Configured in the Real Root.
> May 04 12:23:19 host systemd[1]: initrd-parse-etc.service: Triggering OnSuccess= dependencies.
> May 04 12:23:19 host systemd[1]: Reached target Initrd File Systems.
> May 04 12:23:19 host systemd[1]: Reached target Initrd Default Target.
> May 04 12:23:19 host systemd[1]: Starting Cleaning Up and Shutting Down Daemons...
> May 04 12:23:19 host systemd[1]: Stopped target Initrd Default Target.
> May 04 12:23:19 host systemd[1]: Stopped target Basic System.
> May 04 12:23:19 host systemd[1]: Stopped target Initrd Root Device.
> May 04 12:23:19 host systemd[1]: Stopped target Path Units.
> May 04 12:23:19 host systemd[1]: Stopped target Slice Units.
> May 04 12:23:19 host systemd[1]: Stopped target Socket Units.
> May 04 12:23:19 host systemd[1]: Stopped target System Initialization.
> May 04 12:23:19 host systemd[1]: Stopped target Local Encrypted Volumes.
> May 04 12:23:19 host systemd[1]: Stopped target Swaps.
> May 04 12:23:19 host systemd[1]: Stopped target Timer Units.
> May 04 12:23:19 host systemd[1]: kmod-static-nodes.service: Deactivated successfully.
> May 04 12:23:19 host systemd[1]: Stopped Create List of Static Device Nodes.
> May 04 12:23:19 host systemd[1]: Stopping Dispatch Password Requests to Console...
> May 04 12:23:19 host systemd[1]: Stopping Display Boot-Time Emergency Messages In Full Screen...
> May 04 12:23:19 host systemd[1]: systemd-modules-load.service: Deactivated successfully.
> May 04 12:23:19 host systemd[1]: Stopped Load Kernel Modules.
> May 04 12:23:19 host systemd[1]: Stopping TPM PCR Barrier (initrd)...
> May 04 12:23:19 host systemd[1]: systemd-tmpfiles-setup.service: Deactivated successfully.
> May 04 12:23:19 host systemd[1]: Stopped Create System Files and Directories.
> May 04 12:23:19 host systemd[1]: Stopped target Local File Systems.
> May 04 12:23:19 host systemd[1]: Stopped target Preparation for Local File Systems.
> May 04 12:23:19 host systemd[1]: systemd-udev-trigger.service: Deactivated successfully.
> May 04 12:23:19 host systemd[1]: Stopped Coldplug All udev Devices.
> May 04 12:23:19 host systemd[1]: Stopping Rule-based Manager for Device Events and Files...
> May 04 12:23:19 host systemd[1]: systemd-bsod.service: Deactivated successfully.
> May 04 12:23:19 host systemd[1]: Stopped Display Boot-Time Emergency Messages In Full Screen.
> May 04 12:23:19 host systemd[1]: systemd-ask-password-console.service: Deactivated successfully.
> May 04 12:23:19 host systemd[1]: Stopped Dispatch Password Requests to Console.
> May 04 12:23:19 host systemd[1]: systemd-udevd.service: Deactivated successfully.
> May 04 12:23:19 host systemd[1]: Stopped Rule-based Manager for Device Events and Files.
> May 04 12:23:19 host systemd[1]: systemd-udevd.service: Consumed 1.166s CPU time over 51.101s wall clock time, 35.3M memory peak.
> May 04 12:23:19 host systemd[1]: initrd-cleanup.service: Deactivated successfully.
> May 04 12:23:19 host systemd[1]: Finished Cleaning Up and Shutting Down Daemons.
> May 04 12:23:19 host systemd[1]: systemd-ask-password-console.path: Deactivated successfully.
> May 04 12:23:19 host systemd[1]: Stopped Dispatch Password Requests to Console Directory Watch.
> May 04 12:23:19 host systemd[1]: systemd-udevd-control.socket: Deactivated successfully.
> May 04 12:23:19 host systemd[1]: Closed udev Control Socket.
> May 04 12:23:19 host systemd[1]: Starting Cleanup udev Database...
> May 04 12:23:19 host systemd[1]: systemd-battery-check.service: Deactivated successfully.
> May 04 12:23:19 host systemd[1]: Stopped Early Battery Level Check.
> May 04 12:23:19 host systemd[1]: systemd-tmpfiles-setup-dev.service: Deactivated successfully.
> May 04 12:23:19 host systemd[1]: Stopped Create Static Device Nodes in /dev.
> May 04 12:23:19 host systemd[1]: systemd-vconsole-setup.service: Deactivated successfully.
> May 04 12:23:19 host systemd[1]: Stopped Virtual Console Setup.
> May 04 12:23:19 host systemd[1]: initrd-udevadm-cleanup-db.service: Deactivated successfully.
> May 04 12:23:19 host systemd[1]: Finished Cleanup udev Database.
> May 04 12:23:19 host systemd-pcrextend[857]: Extended PCR index 11 with 'leave-initrd' (banks sha256).
> May 04 12:23:19 host systemd[1]: systemd-pcrphase-initrd.service: Deactivated successfully.
> May 04 12:23:19 host systemd[1]: Stopped TPM PCR Barrier (initrd).
> May 04 12:23:19 host systemd[1]: Reached target Switch Root.
> May 04 12:23:19 host systemd[1]: Starting Switch Root...
> May 04 12:23:19 host systemd[1]: Switching root.
> May 04 12:23:19 host systemd-journald[218]: Journal stopped
> May 04 12:23:20 host systemd-journald[218]: Received SIGTERM from PID 1 (systemd).
> May 04 12:23:20 host systemd[1]: systemd 260.1-2-arch running in system mode (+PAM +AUDIT -SELINUX +APPARMOR -IMA +IPE +SMACK +SECCOMP +GCRYPT +GNUTLS +OPENSSL +ACL +BLKID +CURL +ELFUTILS +FIDO2 +IDN2 +KMOD +LIBCRYPTSETUP +LIBCRYPTSETUP_PLUGINS +LIBFDISK +PCRE2 +PWQUALITY +P11KIT +QRENCOXX +TPM2 +BZIP2 +LZ4 +XZ +ZLIB +ZSTD +BPF_FRAMEWORK +BTF +XKBCOMMON +UTMP +LIBARCHIVE)
> May 04 12:23:20 host systemd[1]: Detected architecture x86-64.
> May 04 12:23:20 host systemd[1]: Received untrusted credentials: nvpcr-anchor.[MACHINE_ID_REDACTED]
> May 04 12:23:20 host systemd[1]: Acquired 0 regular credentials, 1 untrusted credentials.
> May 04 12:23:20 host systemd[1]: bpf-restrict-fs: LSM BPF program attached
> May 04 12:23:20 host kernel: zram: Added device: zram0
> May 04 12:23:20 host systemd[1]: initrd-switch-root.service: Deactivated successfully.
> May 04 12:23:20 host systemd[1]: Stopped Switch Root.
> May 04 12:23:20 host systemd[1]: systemd-journald.service: Scheduled restart job, restart counter is at 1.
> May 04 12:23:20 host systemd[1]: Created slice Slice /system/dirmngr.
> May 04 12:23:20 host systemd[1]: Created slice Slice /system/getty.
> May 04 12:23:20 host systemd[1]: Created slice Slice /system/gpg-agent.
> May 04 12:23:20 host systemd[1]: Created slice Slice /system/gpg-agent-browser.
> May 04 12:23:20 host systemd[1]: Created slice Slice /system/gpg-agent-extra.
> May 04 12:23:20 host systemd[1]: Created slice Slice /system/gpg-agent-ssh.
> May 04 12:23:20 host systemd[1]: Created slice Slice /system/keyboxd.
> May 04 12:23:20 host systemd[1]: Created slice Slice /system/modprobe.
> May 04 12:23:20 host systemd[1]: Created slice Slice /system/systemd-zram-setup.
> May 04 12:23:20 host systemd[1]: Created slice User and Session Slice.
> May 04 12:23:20 host systemd[1]: Started Dispatch Password Requests to Console Directory Watch.
> May 04 12:23:20 host systemd[1]: Started Forward Password Requests to Wall Directory Watch.
> May 04 12:23:20 host systemd[1]: Set up automount Arbitrary Executable File Formats File System Automount Point.
> May 04 12:23:20 host systemd[1]: Expecting device /dev/disk/by-uuid/XXXX-XXXX...
> May 04 12:23:20 host systemd[1]: Expecting device /dev/zram0...
> May 04 12:23:20 host systemd[1]: Reached target Login Prompts.
> May 04 12:23:20 host systemd[1]: Reached target Image Downloads.
> May 04 12:23:20 host systemd[1]: Stopped target Switch Root.
> May 04 12:23:20 host systemd[1]: Stopped target Initrd File Systems.
> May 04 12:23:20 host systemd[1]: Stopped target Initrd Root File System.
> May 04 12:23:20 host systemd[1]: Reached target Local Integrity Protected Volumes.
> May 04 12:23:20 host systemd[1]: Reached target Path Units.
> May 04 12:23:20 host systemd[1]: Reached target Remote File Systems.
> May 04 12:23:20 host systemd[1]: Reached target Slice Units.
> May 04 12:23:20 host systemd[1]: Reached target Local Verity Protected Volumes.
> May 04 12:23:20 host systemd[1]: Listening on Device-mapper event daemon FIFOs.
> May 04 12:23:20 host systemd[1]: Listening on Query the User Interactively for a Password.
> May 04 12:23:20 host systemd[1]: Listening on Process Core Dump Socket.
> May 04 12:23:20 host systemd[1]: Listening on Credential Encryption/Decryption.
> May 04 12:23:20 host systemd[1]: Listening on Factory Reset Management.
> May 04 12:23:20 host systemd[1]: Listening on Console Output Muting Service Socket.
> May 04 12:23:20 host systemd[1]: Listening on TPM PCR Measurements.
> May 04 12:23:20 host systemd[1]: Listening on Make TPM PCR Policy.
> May 04 12:23:20 host systemd[1]: Listening on Disk Repartitioning Service Socket.
> May 04 12:23:20 host systemd[1]: Listening on udev Control Socket.
> May 04 12:23:20 host systemd[1]: Listening on udev Varlink Socket.
> May 04 12:23:20 host systemd[1]: Listening on User Database Manager Socket.
> May 04 12:23:20 host systemd[1]: Mounting Huge Pages File System...
> May 04 12:23:20 host systemd[1]: Mounting POSIX Message Queue File System...
> May 04 12:23:20 host systemd[1]: Mounting Kernel Debug File System...
> May 04 12:23:20 host systemd[1]: Mounting Kernel Trace File System...
> May 04 12:23:20 host systemd[1]: Starting Load AppArmor profiles...
> May 04 12:23:20 host systemd[1]: Starting Create List of Static Device Nodes...
> May 04 12:23:20 host systemd[1]: Load Kernel Module configfs skipped, unmet condition check ConditionKernelModuleLoaded=!configfs
> May 04 12:23:20 host systemd[1]: Mounting Kernel Configuration File System...
> May 04 12:23:20 host systemd[1]: Load Kernel Module drm skipped, unmet condition check ConditionKernelModuleLoaded=!drm
> May 04 12:23:20 host systemd[1]: Load Kernel Module fuse skipped, unmet condition check ConditionKernelModuleLoaded=!fuse
> May 04 12:23:20 host systemd[1]: Mounting FUSE Control File System...
> May 04 12:23:20 host systemd[1]: systemd-cryptsetup@root.service: Deactivated successfully.
> May 04 12:23:20 host systemd[1]: Stopped systemd-cryptsetup@root.service.
> May 04 12:23:20 host systemd[1]: systemd-cryptsetup@root.service: Consumed 19.912s CPU time over 51.333s wall clock time, 1G memory peak.
> May 04 12:23:20 host systemd[1]: Clear Stale Hibernate Storage Info skipped, unmet condition check ConditionPathExists=/sys/firmware/efi/efivars/HibernateLocation-8cf2644b-4b0b-428f-9387-6d876050dc67
> May 04 12:23:20 host systemd[1]: Starting Journal Service...
> May 04 12:23:20 host systemd[1]: Starting Load Kernel Modules...
> May 04 12:23:20 host systemd[1]: Starting TPM PCR Machine ID Measurement...
> May 04 12:23:20 host systemd[1]: Starting Remount Root and Kernel File Systems...
> May 04 12:23:20 host systemd[1]: Starting Early TPM SRK Setup...
> May 04 12:23:20 host systemd-journald[1047]: Collecting audit messages is disabled.
> May 04 12:23:20 host kernel: Asymmetric key parser 'pkcs8' registered
> May 04 12:23:20 host kernel: i2c_dev: i2c /dev entries driver
> May 04 12:23:20 host systemd[1]: Starting Load udev Rules from Credentials...
> May 04 12:23:20 host systemd-journald[1047]: Journal started
> May 04 12:23:20 host systemd-journald[1047]: Runtime Journal (/run/log/journal/[MACHINE_ID_REDACTED]) is 8M, max 313.7M, 305.7M free.
> May 04 12:23:20 host systemd[1]: Queued start job for default target Graphical Interface.
> May 04 12:23:20 host systemd[1]: systemd-journald.service: Deactivated successfully.
> May 04 12:23:20 host systemd-modules-load[1049]: Using 3 probe threads
> May 04 12:23:20 host systemd-modules-load[1049]: Inserted module 'crypto_user'
> May 04 12:23:20 host systemd-modules-load[1049]: Inserted module 'i2c_dev'
> May 04 12:23:20 host apparmor.systemd[1037]: Restarting AppArmor
> May 04 12:23:20 host apparmor.systemd[1037]: Reloading AppArmor profiles
> May 04 12:23:20 host systemd-modules-load[1049]: Inserted module 'pkcs8_key_parser'
> May 04 12:23:20 host kernel: EXT4-fs (dm-0): re-mounted 3af15e4a-7c52-41e8-97c5-e1d5d6c2443b.
> May 04 12:23:20 host systemd[1]: Starting Coldplug All udev Devices...
> May 04 12:23:20 host systemd[1]: Started Journal Service.
> May 04 12:23:20 host systemd[1]: Mounted Huge Pages File System.
> May 04 12:23:20 host systemd[1]: Mounted POSIX Message Queue File System.
> May 04 12:23:20 host systemd[1]: Mounted Kernel Debug File System.
> May 04 12:23:20 host systemd[1]: Mounted Kernel Trace File System.
> May 04 12:23:20 host systemd[1]: Finished Create List of Static Device Nodes.
> May 04 12:23:20 host systemd[1]: Mounted Kernel Configuration File System.
> May 04 12:23:20 host systemd[1]: Mounted FUSE Control File System.
> May 04 12:23:20 host systemd[1]: Finished Load Kernel Modules.
> May 04 12:23:20 host systemd[1]: Finished Remount Root and Kernel File Systems.
> May 04 12:23:20 host systemd[1]: Finished Load udev Rules from Credentials.
> May 04 12:23:20 host systemd[1]: Rebuild Hardware Database skipped, unmet condition check ConditionNeedsUpdate=/etc
> May 04 12:23:20 host systemd-tpm2-setup[1069]: SRK already stored in the TPM.
> May 04 12:23:20 host systemd[1]: Starting Flush Journal to Persistent Storage...
> May 04 12:23:20 host systemd-tpm2-setup[1069]: SRK fingerprint is [TPM_HASH_REDACTED].
> May 04 12:23:20 host systemd-tpm2-setup[1069]: SRK public key saved to '/run/systemd/tpm2-srk-public-key.pem' in PEM format.
> May 04 12:23:20 host systemd-tpm2-setup[1069]: SRK public key saved to '/run/systemd/tpm2-srk-public-key.tpm2b_public' in TPM2B_PUBLIC format.
> May 04 12:23:20 host systemd-pcrextend[1050]: Extended PCR index 15 with 'machine-id:[MACHINE_ID_REDACTED]' (banks sha256).
> May 04 12:23:20 host systemd[1]: Starting Load/Save OS Random Seed...
> May 04 12:23:20 host systemd[1]: Starting Apply Kernel Variables...
> May 04 12:23:20 host systemd-journald[1047]: Time spent on flushing to /var/log/journal/[MACHINE_ID_REDACTED] is 93.162ms for 1382 entries.
> May 04 12:23:20 host systemd-journald[1047]: System Journal (/var/log/journal/[MACHINE_ID_REDACTED]) is 112M, max 4G, 3.8G free.
> May 04 12:23:20 host systemd[1]: Starting Create Static Device Nodes in /dev gracefully...
> May 04 12:23:20 host systemd-journald[1047]: Received client request to flush runtime journal.
> May 04 12:23:20 host systemd[1]: Finished TPM PCR Machine ID Measurement.
> May 04 12:23:20 host systemd[1]: Finished Apply Kernel Variables.
> May 04 12:23:20 host systemd[1]: Starting CLI Netfilter Manager...
> May 04 12:23:20 host systemd[1]: Finished Load/Save OS Random Seed.
> May 04 12:23:20 host systemd[1]: Starting User Database Manager...
> May 04 12:23:20 host systemd[1]: proc-sys-fs-binfmt_misc.automount: Got automount request for /proc/sys/fs/binfmt_misc, triggered by 1203 ((systemd-userd))
> May 04 12:23:20 host systemd[1]: Finished Flush Journal to Persistent Storage.
> May 04 12:23:20 host systemd[1]: Finished Coldplug All udev Devices.
> May 04 12:23:20 host systemd[1]: Finished Load AppArmor profiles.
> May 04 12:23:20 host systemd[1]: Finished CLI Netfilter Manager.
> May 04 12:23:20 host systemd-tpm2-setup[1069]: WARNING:esys:src/tss2-esys/api/Esys_NV_DefineSpace.c:345:Esys_NV_DefineSpace_Finish() Received TPM Error
> May 04 12:23:20 host systemd-tpm2-setup[1069]: ERROR:esys:src/tss2-esys/api/Esys_NV_DefineSpace.c:121:Esys_NV_DefineSpace() Esys Finish ErrorCode (0x0000014c)
> May 04 12:23:20 host systemd-tpm2-setup[1069]: WARNING:esys:src/tss2-esys/api/Esys_NV_DefineSpace.c:345:Esys_NV_DefineSpace_Finish() Received TPM Error
> May 04 12:23:20 host systemd-tpm2-setup[1069]: ERROR:esys:src/tss2-esys/api/Esys_NV_DefineSpace.c:121:Esys_NV_DefineSpace() Esys Finish ErrorCode (0x0000014c)
> May 04 12:23:20 host systemd-tpm2-setup[1069]: WARNING:esys:src/tss2-esys/api/Esys_NV_DefineSpace.c:345:Esys_NV_DefineSpace_Finish() Received TPM Error
> May 04 12:23:20 host systemd-tpm2-setup[1069]: ERROR:esys:src/tss2-esys/api/Esys_NV_DefineSpace.c:121:Esys_NV_DefineSpace() Esys Finish ErrorCode (0x0000014c)
> May 04 12:23:20 host systemd-tpm2-setup[1069]: 3 NvPCRs initialized.
> May 04 12:23:20 host systemd[1]: Finished Early TPM SRK Setup.
> May 04 12:23:20 host systemd[1]: Starting TPM SRK Setup...
> May 04 12:23:20 host systemd-tpm2-setup[1295]: SRK already stored in the TPM.
> May 04 12:23:20 host systemd-tpm2-setup[1295]: SRK fingerprint is [TPM_HASH_REDACTED].
> May 04 12:23:20 host systemd-tpm2-setup[1295]: SRK saved in '/var/lib/systemd/tpm2-srk-public-key.pem' matches SRK in TPM2.
> May 04 12:23:21 host systemd[1]: Mounting Arbitrary Executable File Formats File System...
> May 04 12:23:21 host systemd[1]: Mounted Arbitrary Executable File Formats File System.
> May 04 12:23:21 host systemd[1]: Started User Database Manager.
> May 04 12:23:21 host systemd[1]: Finished Create Static Device Nodes in /dev gracefully.
> May 04 12:23:21 host systemd[1]: Create System Users skipped, no trigger condition checks were met.
> May 04 12:23:21 host systemd[1]: Starting Journal Log Access Socket...
> May 04 12:23:21 host systemd[1]: Starting Network Time Synchronization...
> May 04 12:23:21 host systemd[1]: Starting Create Static Device Nodes in /dev...
> May 04 12:23:21 host systemd[1]: Listening on Journal Log Access Socket.
> May 04 12:23:21 host systemd[1]: Finished Create Static Device Nodes in /dev.
> May 04 12:23:21 host systemd[1]: Reached target Preparation for Local File Systems.
> May 04 12:23:21 host systemd[1]: Virtual Machine and Container Storage (Compatibility) skipped, unmet condition check ConditionPathExists=/var/lib/machines.raw
> May 04 12:23:21 host systemd[1]: Listening on Disk Image Download Service Socket.
> May 04 12:23:21 host systemd[1]: Repartition Root Disk skipped, no trigger condition checks were met.
> May 04 12:23:21 host systemd[1]: Starting Rule-based Manager for Device Events and Files...
> May 04 12:23:21 host systemd[1]: Started Network Time Synchronization.
> May 04 12:23:21 host systemd-tpm2-setup[1295]: 3 NvPCRs already initialized.
> May 04 12:23:21 host systemd[1]: Reached target System Time Set.
> May 04 12:23:21 host systemd[1]: Finished TPM SRK Setup.
> May 04 12:23:21 host systemd[1]: Starting TPM PCR NvPCR Initialization Separator...
> May 04 12:23:21 host systemd-udevd[1309]: Using default interface naming scheme 'v260'.
> May 04 12:23:21 host systemd-pcrextend[1313]: Extended PCR index 9 with 'nvpcr-separator' (banks sha256).
> May 04 12:23:21 host systemd[1]: Finished TPM PCR NvPCR Initialization Separator.
> May 04 12:23:21 host systemd[1]: Reached target Local Encrypted Volumes.
> May 04 12:23:21 host systemd[1]: Starting TPM NvPCR Product ID Measurement...
> May 04 12:23:21 host systemd[1]: Started Rule-based Manager for Device Events and Files.
> May 04 12:23:21 host systemd-pcrextend[1315]: Extended NvPCR index 'hardware' with 'product-id:c4dbb960fb49ed1180e9088fc37d3eac'.
> May 04 12:23:21 host systemd[1]: Finished TPM NvPCR Product ID Measurement.
> May 04 12:23:21 host systemd[1]: Found device /dev/zram0.
> May 04 12:23:21 host systemd[1]: Load Kernel Module configfs skipped, unmet condition check ConditionKernelModuleLoaded=!configfs
> May 04 12:23:21 host systemd[1]: Load Kernel Module fuse skipped, unmet condition check ConditionKernelModuleLoaded=!fuse
> May 04 12:23:21 host systemd[1]: Starting Create swap on /dev/zram0...
> May 04 12:23:21 host mtp-probe[1370]: checking bus 3, device 2: "/sys/devices/pci0000:00/0000:00:14.0/usb3/3-4"
> May 04 12:23:21 host mtp-probe[1370]: bus: 3, device: 2 was not an MTP device
> May 04 12:23:21 host kernel: zram0: detected capacity change from 0 to 16064512
> May 04 12:23:21 host systemd[1]: Condition check resulted in /dev/tpmrm0 being skipped.
> May 04 12:23:21 host systemd[1]: Expecting device /dev/tpm0...
> May 04 12:23:21 host kernel: input: Acer Wireless Radio Control as /devices/LNXSYSTM:00/10251229:00/input/input6
> May 04 12:23:21 host systemd-makefs[1372]: Formatting /dev/zram0 as swap
> May 04 12:23:21 host systemd-makefs[1372]: /dev/zram0 successfully formatted as swap (label "zram0", uuid XXXX)
> May 04 12:23:21 host systemd[1]: Finished Create swap on /dev/zram0.
> May 04 12:23:21 host systemd[1]: Condition check resulted in /dev/tpm0 being skipped.
> May 04 12:23:21 host systemd[1]: Reached target Trusted Platform Module.
> May 04 12:23:21 host kernel: resource: resource sanity check: requesting [mem 0x00000000fedc0000-0x00000000fedcffff], which spans more than PNP0C02:01 [mem 0xfedc0000-0xfedc7fff]
> May 04 12:23:21 host kernel: caller igen6_probe+0x180/0x8c5 [igen6_edac] mapping multiple BARs
> May 04 12:23:21 host systemd[1]: Activating swap Compressed Swap on /dev/zram0...
> May 04 12:23:21 host kernel: EDAC MC0: Giving out device to module igen6_edac controller Intel_client_SoC MC#0: XXV 0000:00:00.0 (INTERRUPT)
> May 04 12:23:21 host kernel: input: Intel HID events as /devices/platform/INTC1070:00/input/input7
> May 04 12:23:21 host kernel: ACPI: bus type thunderbolt registered
> May 04 12:23:21 host kernel: intel-hid INTC1070:00: platform supports 5 button array
> May 04 12:23:21 host kernel: mc: Linux media interface: v0.10
> May 04 12:23:21 host kernel: input: Intel HID 5 button array as /devices/platform/INTC1070:00/input/input8
> May 04 12:23:21 host kernel: EDAC MC1: Giving out device to module igen6_edac controller Intel_client_SoC MC#1: XXV 0000:00:00.0 (INTERRUPT)
> May 04 12:23:21 host kernel: mousedev: PS/2 mouse device common for all mice
> May 04 12:23:21 host kernel: EDAC igen6: v2.5.1
> May 04 12:23:21 host systemd[1]: Condition check resulted in [GENERIC_NVME_SSD] 1 being skipped.
> May 04 12:23:21 host kernel: intel-ipu6 0000:00:05.0: Found supported sensor INT3474:01
> May 04 12:23:21 host kernel: intel-ipu6 0000:00:05.0: Connected 1 cameras
> May 04 12:23:21 host kernel: intel-ipu6 0000:00:05.0: Sending BOOT_LOAD to CSE
> May 04 12:23:21 host systemd[1]: Mounting /boot...
> May 04 12:23:21 host kernel: intel_pmc_core INT33A1:00:  initialized
> May 04 12:23:21 host kernel: intel-ipu6 0000:00:05.0: Sending AUTHENTICATE_RUN to CSE
> May 04 12:23:21 host kernel: videodev: Linux video capture interface: v2.00
> May 04 12:23:21 host mtp-probe[1386]: checking bus 3, device 3: "/sys/devices/pci0000:00/0000:00:14.0/usb3/3-9"
> May 04 12:23:21 host mtp-probe[1386]: bus: 3, device: 3 was not an MTP device
> May 04 12:23:21 host systemd[1]: Created slice Slice /system/systemd-backlight.
> May 04 12:23:21 host systemd[1]: Starting Load/Save Screen Backlight Brightness of backlight:intel_backlight...
> May 04 12:23:21 host systemd[1]: Activated swap Compressed Swap on /dev/zram0.
> May 04 12:23:21 host kernel: Adding 8032252k swap on /dev/zram0.  Priority:100 extents:1 across:8032252k SSDsc
> May 04 12:23:21 host kernel: input: PC Speaker as /devices/platform/pcspkr/input/input9
> May 04 12:23:21 host systemd[1]: Reached target Swaps.
> May 04 12:23:21 host systemd[1]: Mounting Temporary Directory /tmp...
> May 04 12:23:21 host systemd[1]: Mounted Temporary Directory /tmp.
> May 04 12:23:21 host systemd[1]: Finished Load/Save Screen Backlight Brightness of backlight:intel_backlight.
> May 04 12:23:21 host kernel: spi-nor spi0.0: supply vcc not found, using dummy regulator
> May 04 12:23:21 host kernel: Creating 1 MTD partitions on "0000:00:1f.5":
> May 04 12:23:21 host kernel: 0x000000000000-0x000002000000 : "BIOS"
> May 04 12:23:21 host systemd[1]: Starting Virtual Console Setup...
> May 04 12:23:21 host kernel: intel-ipu6 0000:00:05.0: CSE authenticate_run done
> May 04 12:23:21 host kernel: intel-ipu6 0000:00:05.0: IPU6-v3[465d] hardware version 5
> May 04 12:23:21 host systemd[1]: Listening on Load/Save RF Kill Switch Status /dev/rfkill Watch.
> May 04 12:23:21 host kernel: Bluetooth: Core ver 2.22
> May 04 12:23:21 host kernel: NET: Registered PF_BLUETOOTH protocol family
> May 04 12:23:21 host kernel: Bluetooth: HCI device and connection manager initialized
> May 04 12:23:21 host kernel: Bluetooth: HCI socket layer initialized
> May 04 12:23:21 host kernel: Bluetooth: L2CAP socket layer initialized
> May 04 12:23:21 host kernel: Bluetooth: SCO socket layer initialized
> May 04 12:23:21 host systemd[1]: Finished Virtual Console Setup.
> May 04 12:23:21 host kernel: input: SYNA7DB5:01 06CB:CD7E Mouse as /devices/pci0000:00/0000:00:15.1/i2c_designware.1/i2c-1/i2c-SYNA7DB5:01/0018:06CB:CD7E.0002/input/input10
> May 04 12:23:21 host kernel: input: SYNA7DB5:01 06CB:CD7E Touchpad as /devices/pci0000:00/0000:00:15.1/i2c_designware.1/i2c-1/i2c-SYNA7DB5:01/0018:06CB:CD7E.0002/input/input11
> May 04 12:23:21 host kernel: hid-generic 0018:06CB:CD7E.0002: input,hidraw1: I2C HID v1.00 Mouse [SYNA7DB5:01 06CB:CD7E] on i2c-SYNA7DB5:01
> May 04 12:23:21 host kernel: mei_me 0000:00:16.0: enabling device (0000 -> 0002)
> May 04 12:23:21 host kernel: acer_wmi: Acer Laptop ACPI-WMI Extras
> May 04 12:23:21 host kernel: acer_wmi: Function bitmap for Communication Button: 0x801
> May 04 12:23:21 host kernel: input: Acer WMI hotkeys as /devices/virtual/input/input13
> May 04 12:23:21 host kernel: intel_rapl_msr: PL4 support detected.
> May 04 12:23:21 host kernel: intel_rapl_common: Found RAPL domain package
> May 04 12:23:21 host kernel: intel_rapl_common: Found RAPL domain core
> May 04 12:23:21 host kernel: intel_rapl_common: Found RAPL domain uncore
> May 04 12:23:21 host kernel: intel_rapl_common: Found RAPL domain psys
> May 04 12:23:21 host kernel: FAT-fs (nvme0n1p1): Volume was not properly unmounted. Some data may be corrupt. Please run fsck.
> May 04 12:23:21 host systemd[1]: Mounted /boot.
> May 04 12:23:21 host systemd[1]: Reached target Local File Systems.
> May 04 12:23:21 host kernel: RAPL PMU: API unit is 2^-32 Joules, 4 fixed counters, 655360 ms ovfl timer
> May 04 12:23:21 host kernel: RAPL PMU: hw unit of domain pp0-core 2^-14 Joules
> May 04 12:23:21 host kernel: RAPL PMU: hw unit of domain package 2^-14 Joules
> May 04 12:23:21 host kernel: RAPL PMU: hw unit of domain pp1-gpu 2^-14 Joules
> May 04 12:23:21 host kernel: RAPL PMU: hw unit of domain psys 2^-14 Joules
> May 04 12:23:21 host kernel: i801_smbus 0000:00:1f.4: SPD Write Disable is set
> May 04 12:23:21 host kernel: i801_smbus 0000:00:1f.4: SMBus using PCI interrupt
> May 04 12:23:21 host systemd[1]: Listening on Boot Loader Control Service Socket.
> May 04 12:23:21 host systemd-timesyncd[1304]: Network configuration changed, trying to establish connection.
> May 04 12:23:21 host systemd-timesyncd[1304]: Network configuration changed, trying to establish connection.
> May 04 12:23:21 host systemd[1]: Listening on System Extension Image Management.
> May 04 12:23:21 host systemd[1]: Set Up Additional Binary Formats skipped, no trigger condition checks were met.
> May 04 12:23:21 host systemd[1]: Starting Update Boot Loader Random Seed...
> May 04 12:23:21 host systemd[1]: Starting Create System Files and Directories...
> May 04 12:23:21 host kernel: ov2740 i2c-INT3474:01: supply DOVDD not found, using dummy regulator
> May 04 12:23:21 host kernel: ov2740 i2c-INT3474:01: supply DVDD not found, using dummy regulator
> May 04 12:23:21 host kernel: cfg80211: Loading compiled-in X.509 certificates for regulatory database
> May 04 12:23:21 host kernel: mei_hdcp 0000:00:16.0-b638ab7e-94e2-4ea2-a552-d1c54b627f04: bound 0000:00:02.0 (ops i915_hdcp_ops [xe])
> May 04 12:23:21 host kernel: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
> May 04 12:23:21 host kernel: Loaded X.509 cert 'wens: 61c038651aabdcf94bd0ac7ff06c7248db18c600'
> May 04 12:23:21 host kernel: faux_driver regulatory: Direct firmware load for regulatory.db failed with error -2
> May 04 12:23:21 host kernel: cfg80211: failed to load regulatory.db
> May 04 12:23:21 host systemd[1]: Starting Load JSON user/group Records from Credentials...
> May 04 12:23:21 host kernel: input: SYNA7DB5:01 06CB:CD7E as /devices/pci0000:00/0000:00:15.1/i2c_designware.1/i2c-1/i2c-SYNA7DB5:01/0018:06CB:CD7E.0002/input/input14
> May 04 12:23:21 host kernel: input: SYNA7DB5:01 06CB:CD7E as /devices/pci0000:00/0000:00:15.1/i2c_designware.1/i2c-1/i2c-SYNA7DB5:01/0018:06CB:CD7E.0002/input/input15
> May 04 12:23:21 host kernel: hid-multitouch 0018:06CB:CD7E.0002: input,hidraw1: I2C HID v1.00 Mouse [SYNA7DB5:01 06CB:CD7E] on i2c-SYNA7DB5:01
> May 04 12:23:21 host systemd[1]: Starting Load/Save RF Kill Switch Status...
> May 04 12:23:21 host systemd[1]: Finished Load JSON user/group Records from Credentials.
> May 04 12:23:21 host bootctl[1413]:  Mount point '/boot' which backs the random seed file is world accessible, which is a security hole!
> May 04 12:23:21 host bootctl[1413]: Random seed file '/boot/loader/random-seed' is world accessible, which is a security hole!
> May 04 12:23:21 host bootctl[1413]: Random seed file /boot/loader/random-seed successfully refreshed (32 bytes).
> May 04 12:23:21 host systemd[1]: Finished Update Boot Loader Random Seed.
> May 04 12:23:21 host systemd[1]: Started Load/Save RF Kill Switch Status.
> May 04 12:23:21 host systemd-timesyncd[1304]: Network configuration changed, trying to establish connection.
> May 04 12:23:21 host systemd-timesyncd[1304]: Network configuration changed, trying to establish connection.
> May 04 12:23:21 host systemd-timesyncd[1304]: Network configuration changed, trying to establish connection.
> May 04 12:23:21 host systemd[1]: Finished Create System Files and Directories.
> May 04 12:23:21 host systemd[1]: Starting Security Audit Logging Service...
> May 04 12:23:21 host systemd[1]: Rebuild Dynamic Linker Cache skipped, no trigger condition checks were met.
> May 04 12:23:21 host systemd[1]: Initial Setup skipped, unmet condition check ConditionFirstBoot=yes
> May 04 12:23:21 host systemd[1]: First Boot Complete skipped, unmet condition check ConditionFirstBoot=yes
> May 04 12:23:21 host systemd[1]: Rebuild Journal Catalog skipped, unmet condition check ConditionNeedsUpdate=/var
> May 04 12:23:21 host systemd[1]: Save Transient machine-id to Disk skipped, unmet condition check ConditionPathIsMountPoint=/etc/machine-id
> May 04 12:23:21 host systemd[1]: Update is Completed skipped, no trigger condition checks were met.
> May 04 12:23:21 host auditd[1427]: No plugins found, not dispatching events
> May 04 12:23:21 host auditd[1427]: Init complete, auditd 4.1.4 listening for events (startup state enable)
> May 04 12:23:21 host systemd[1]: Started Security Audit Logging Service.
> May 04 12:23:21 host systemd[1]: Starting Load Audit Rules...
> May 04 12:23:21 host systemd[1]: Starting Record System Boot/Shutdown in UTMP...
> May 04 12:23:21 host systemd[1]: Finished Record System Boot/Shutdown in UTMP.
> May 04 12:23:21 host systemd[1]: Reached target System Initialization.
> May 04 12:23:21 host systemd[1]: Started Refresh existing PGP keys of host-keyring regularly.
> May 04 12:23:21 host systemd[1]: Started Discard unused filesystem blocks once a week.
> May 04 12:23:21 host systemd[1]: Started Daily verification of password and group files.
> May 04 12:23:21 host augenrules[1431]: /usr/bin/augenrules: No change
> May 04 12:23:21 host systemd[1]: Started Daily Cleanup of Temporary Directories.
> May 04 12:23:21 host systemd[1]: Reached target Timer Units.
> May 04 12:23:21 host systemd[1]: Listening on D-Bus System Message Bus Socket.
> May 04 12:23:21 host systemd[1]: Listening on GnuPG network certificate management daemon for /etc/pacman.d/gnupg.
> May 04 12:23:21 host systemd[1]: Listening on GnuPG cryptographic agent and passphrase cache (access for web browsers) for /etc/pacman.d/gnupg.
> May 04 12:23:21 host systemd[1]: Listening on GnuPG cryptographic agent and passphrase cache (restricted) for /etc/pacman.d/gnupg.
> May 04 12:23:21 host systemd[1]: Listening on GnuPG cryptographic agent (ssh-agent emulation) for /etc/pacman.d/gnupg.
> May 04 12:23:21 host systemd[1]: Listening on GnuPG cryptographic agent and passphrase cache for /etc/pacman.d/gnupg.
> May 04 12:23:21 host systemd[1]: Listening on GnuPG public key management service for /etc/pacman.d/gnupg.
> May 04 12:23:21 host systemd[1]: Listening on Authorization Manager Agent Helper.
> May 04 12:23:21 host systemd[1]: Listening on OpenSSH Server Socket (systemd-ssh-generator, AF_UNIX Local).
> May 04 12:23:21 host systemd[1]: Listening on Hostname Service Socket.
> May 04 12:23:21 host systemd[1]: Listening on User Login Management Varlink Socket.
> May 04 12:23:21 host systemd[1]: Listening on Virtual Machine and Container Registration Service Socket.
> May 04 12:23:21 host systemd[1]: Reached target Socket Units.
> May 04 12:23:21 host systemd[1]: Starting D-Bus System Message Bus...
> May 04 12:23:21 host systemd[1]: Starting TPM PCR Barrier (Initialization)...
> May 04 12:23:21 host systemd[1]: audit-rules.service: Deactivated successfully.
> May 04 12:23:21 host systemd[1]: Finished Load Audit Rules.
> May 04 12:23:21 host systemd-pcrextend[1450]: Extended PCR index 11 with 'sysinit' (banks sha256).
> May 04 12:23:21 host systemd[1]: Finished TPM PCR Barrier (Initialization).
> May 04 12:23:21 host systemd[1]: Started D-Bus System Message Bus.
> May 04 12:23:21 host systemd[1]: Reached target Basic System.
> May 04 12:23:21 host dbus-broker-launch[1449]: Ready
> May 04 12:23:21 host systemd[1]: Starting Network Manager...
> May 04 12:23:21 host systemd[1]: Starting User Login Management...
> May 04 12:23:21 host systemd[1]: Starting TPM PCR Barrier (User)...
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8325] NetworkManager (version 1.56.0-1) is starting... (boot:66be87f7-955d-47db-9579-93dcb68fb3ae)
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8326] Read config: /etc/NetworkManager/NetworkManager.conf, /usr/lib/NetworkManager/conf.d/20-connectivity.conf
> May 04 12:23:21 host systemd-logind[1455]: New seat seat0.
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8364] manager[0x5635b88ae690]: monitoring kernel firmware directory '/lib/firmware'.
> May 04 12:23:21 host systemd-pcrextend[1456]: Extended PCR index 11 with 'ready' (banks sha256).
> May 04 12:23:21 host systemd-logind[1455]: Watching system buttons on /dev/input/event0 (Lid Switch)
> May 04 12:23:21 host systemd-logind[1455]: Watching system buttons on /dev/input/event7 (Intel HID events)
> May 04 12:23:21 host systemd-logind[1455]: Watching system buttons on /dev/input/event8 (Intel HID 5 button array)
> May 04 12:23:21 host systemd-logind[1455]: Watching system buttons on /dev/input/event1 (Power Button)
> May 04 12:23:21 host systemd-logind[1455]: Watching system buttons on /dev/input/event2 (AT Translated Set 2 keyboard)
> May 04 12:23:21 host systemd[1]: Starting Hostname Service...
> May 04 12:23:21 host systemd[1]: Started User Login Management.
> May 04 12:23:21 host systemd[1]: Finished TPM PCR Barrier (User).
> May 04 12:23:21 host systemd[1]: Started Hostname Service.
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8660] hostname: hostname: using hostnamed
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8661] hostname: static hostname changed from (none) to "host"
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8662] dns-mgr: init: dns=default,systemd-resolved rc-manager=immutable
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8668] rfkill0: found Wi-Fi radio killswitch (at /sys/devices/platform/acer-wmi/rfkill/rfkill0) (platform driver acer-wmi)
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8761] manager[0x5635b88ae690]: rfkill: Wi-Fi hardware radio set enabled
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8761] manager[0x5635b88ae690]: rfkill: WWAN hardware radio set enabled
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8795] Loaded device plugin: NMWifiFactory (/usr/lib/NetworkManager/1.56.0-1/libnm-device-plugin-wifi.so)
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8906] Loaded device plugin: NMTeamFactory (/usr/lib/NetworkManager/1.56.0-1/libnm-device-plugin-team.so)
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8910] Loaded device plugin: NMOvsFactory (/usr/lib/NetworkManager/1.56.0-1/libnm-device-plugin-ovs.so)
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8929] Loaded device plugin: NMBluezManager (/usr/lib/NetworkManager/1.56.0-1/libnm-device-plugin-bluetooth.so)
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8932] Loaded device plugin: NMWwanFactory (/usr/lib/NetworkManager/1.56.0-1/libnm-device-plugin-wwan.so)
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8934] Loaded device plugin: NMAtmManager (/usr/lib/NetworkManager/1.56.0-1/libnm-device-plugin-adsl.so)
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8937] manager: rfkill: Wi-Fi enabled by radio killswitch; enabled by state file
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8937] manager: rfkill: WWAN enabled by radio killswitch; enabled by state file
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8937] manager: Networking is enabled by state file
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8939] settings: Loaded settings plugin: keyfile (internal)
> May 04 12:23:21 host systemd[1]: Starting Network Manager Script Dispatcher Service...
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8989] dhcp: init: Using DHCP client 'internal'
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8991] manager: (lo): new Loopback device (/org/freedesktop/NetworkManager/Devices/1)
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8995] device (lo): state change: unmanaged -> unavailable (reason 'connection-assumed', managed-type: 'external')
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.8997] device (lo): state change: unavailable -> disconnected (reason 'connection-assumed', managed-type: 'external')
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.9000] device (lo): Activation: starting connection 'lo' (ac5075f3-25f3-4b2f-ba4a-2ef464023ab1)
> May 04 12:23:21 host systemd[1]: Started Network Manager.
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.9005] bus-manager: acquired D-Bus service "org.freedesktop.NetworkManager"
> May 04 12:23:21 host systemd[1]: Reached target Network.
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.9018] ovsdb: disconnected from ovsdb
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.9019] device (lo): state change: disconnected -> prepare (reason 'none', managed-type: 'external')
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.9021] device (lo): state change: prepare -> config (reason 'none', managed-type: 'external')
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.9022] device (lo): state change: config -> ip-config (reason 'none', managed-type: 'external')
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.9024] device (lo): state change: ip-config -> ip-check (reason 'none', managed-type: 'external')
> May 04 12:23:21 host systemd[1]: Starting Permit User Sessions...
> May 04 12:23:21 host systemd[1]: Finished Permit User Sessions.
> May 04 12:23:21 host systemd[1]: Reached target Multi-User System.
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.9167] device (lo): state change: ip-check -> secondaries (reason 'none', managed-type: 'external')
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.9168] device (lo): state change: secondaries -> activated (reason 'none', managed-type: 'external')
> May 04 12:23:21 host systemd[1]: Starting Power Profiles daemon...
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.9170] device (lo): Activation: successful, device activated.
> May 04 12:23:21 host NetworkManager[1454]: <info>  [1777890201.9172] manager: startup complete
> May 04 12:23:21 host systemd[1]: Started Simple Desktop Display Manager.
> May 04 12:23:21 host systemd[1]: Started Network Manager Script Dispatcher Service.
> May 04 12:23:21 host systemd[1]: Starting Authorization Manager...
> May 04 12:23:21 host sddm[1483]: Initializing...
> May 04 12:23:21 host sddm[1483]: Starting...
> May 04 12:23:21 host sddm[1483]: Logind interface found
> May 04 12:23:21 host sddm[1483]: Adding new display...
> May 04 12:23:21 host sddm[1483]: Loaded empty theme configuration
> May 04 12:23:21 host sddm[1483]: Xauthority path: "/run/sddm/xauth_aLEvCI"
> May 04 12:23:21 host sddm[1483]: Using VT 2
> May 04 12:23:21 host sddm[1483]: Display server starting...
> May 04 12:23:21 host sddm[1483]: Writing cookie to "/run/sddm/xauth_aLEvCI"
> May 04 12:23:21 host sddm[1483]: Running: /usr/bin/X -nolisten tcp -background none -seat seat0 vt2 -auth /run/sddm/xauth_aLEvCI -noreset -displayfd 16
> May 04 12:23:21 host polkitd[1489]: Started polkitd version 127
> May 04 12:23:21 host systemd[1]: Started Authorization Manager.
> May 04 12:23:21 host systemd[1]: Started Power Profiles daemon.
> May 04 12:23:21 host systemd[1]: Reached target Graphical Interface.
> May 04 12:23:21 host systemd[1]: Startup finished in 5.148s (firmware) + 1.275s (loader) + 1.007s (kernel) + 51.910s (initrd) + 2.515s (userspace) = 1min 1.858s.
> May 04 12:23:22 host kernel: i801_smbus 0000:00:1f.4: SMBus is busy, can't use it!
> May 04 12:23:22 host kernel: i801_smbus 0000:00:1f.4: SMBus is busy, can't use it!
> May 04 12:23:22 host kernel: i801_smbus 0000:00:1f.4: SMBus is busy, can't use it!
> May 04 12:23:22 host kernel: i801_smbus 0000:00:1f.4: SMBus is busy, can't use it!
> May 04 12:23:22 host kernel: i801_smbus 0000:00:1f.4: SMBus is busy, can't use it!
> May 04 12:23:22 host kernel: i801_smbus 0000:00:1f.4: SMBus is busy, can't use it!
> May 04 12:23:22 host kernel: i801_smbus 0000:00:1f.4: SMBus is busy, can't use it!
> May 04 12:23:22 host kernel: iTCO_wdt iTCO_wdt: Found a Intel PCH TCO device (Version=6, TCOBASE=0x0400)
> May 04 12:23:22 host kernel: iTCO_wdt iTCO_wdt: initialized. heartbeat=30 sec (nowayout=0)
> May 04 12:23:22 host systemd[1]: Starting Thunderbolt system service...
> May 04 12:23:22 host kernel: usbcore: registered new interface driver btusb
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: Detected crf-id 0x400410, cnv-id 0x80400 wfpm id 0x80000020
> May 04 12:23:22 host kernel: Bluetooth: hci0: Device revision is 0
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: PCI dev 51f0/0094, rev=0x370, rfid=0x2010d000
> May 04 12:23:22 host kernel: Bluetooth: hci0: Secure boot is enabled
> May 04 12:23:22 host kernel: Bluetooth: hci0: OTP lock is enabled
> May 04 12:23:22 host kernel: Bluetooth: hci0: API lock is enabled
> May 04 12:23:22 host kernel: Bluetooth: hci0: Debug lock is disabled
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: Detected Intel(R) Wi-Fi 6E AX211 160MHz
> May 04 12:23:22 host kernel: Bluetooth: hci0: Minimum firmware build 1 week 10 2014
> May 04 12:23:22 host kernel: Bluetooth: hci0: Bootloader timestamp 2019.40 buildtype 1 build 38
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: loaded firmware version 89.735b75a4.0 so-a0-gf-a0-89.ucode op_mode iwlmvm
> May 04 12:23:22 host kernel: Bluetooth: hci0: DSM reset method type: 0x00
> May 04 12:23:22 host kernel: Bluetooth: hci0: Found device firmware: intel/ibt-0040-0041.sfi
> May 04 12:23:22 host kernel: Bluetooth: hci0: Boot Address: 0x100800
> May 04 12:23:22 host kernel: Bluetooth: hci0: Firmware Version: 202-5.26
> May 04 12:23:22 host systemd[1]: Starting Bluetooth service...
> May 04 12:23:22 host bluetoothd[1541]: Bluetooth daemon 5.86
> May 04 12:23:22 host systemd[1]: Started Bluetooth service.
> May 04 12:23:22 host bluetoothd[1541]: Starting SDP server
> May 04 12:23:22 host systemd[1]: Reached target Bluetooth Support.
> May 04 12:23:22 host boltd[1505]: bolt 0.9.11 starting up.
> May 04 12:23:22 host boltd[1505]: manager: initializing store
> May 04 12:23:22 host boltd[1505]: store: located at: /var/lib/boltd
> May 04 12:23:22 host boltd[1505]: config: loading user config
> May 04 12:23:22 host boltd[1505]: bouncer: initializing polkit
> May 04 12:23:22 host kernel: intel_rapl_common: Found RAPL domain package
> May 04 12:23:22 host boltd[1505]: watchdog: enabled [pulse: 90s]
> May 04 12:23:22 host boltd[1505]: udev: initializing udev
> May 04 12:23:22 host boltd[1505]: store: loading domains
> May 04 12:23:22 host boltd[1505]: store: loading devices
> May 04 12:23:22 host boltd[1505]: power: state located at: /run/boltd/power
> May 04 12:23:22 host boltd[1505]: power: force power support: no
> May 04 12:23:22 host boltd[1505]: udev: enumerating devices
> May 04 12:23:22 host boltd[1505]: [e3a08780-8045-domain0                    ] newly connected [iommu+user] (/sys/devices/pci0000:00/0000:00:0d.2/domain0/0-0)
> May 04 12:23:22 host boltd[1505]: security level set to 'user'
> May 04 12:23:22 host boltd[1505]: [e3a08780-8045-domain0                    ] domain: registered (bootacl: 0/0)
> May 04 12:23:22 host boltd[1505]: [e3a08780-8045-domain0                    ] bootacl: bootacl not supported, no sync
> May 04 12:23:22 host boltd[1505]: [e3a08780-8045-domain0                    ] udev: uuid is stable: no (for NHI: 0x463e)
> May 04 12:23:22 host boltd[1505]: global 'generation' set to '4'
> May 04 12:23:22 host boltd[1505]: [e3a08780-8045-Gen12                      ] device added, status: authorized, at /sys/devices/pci0000:00/0000:00:0d.2/domain0/0-0
> May 04 12:23:22 host boltd[1505]: [e3a08780-8045-Gen12                      ] labeling device: INTEL Gen12
> May 04 12:23:22 host kernel: pps_core: LinuxPPS API ver. 1 registered
> May 04 12:23:22 host kernel: pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
> May 04 12:23:22 host boltd[1505]: [63e98780-51a6-domain1                    ] newly connected [iommu+user] (/sys/devices/pci0000:00/0000:00:0d.3/domain1/1-0)
> May 04 12:23:22 host boltd[1505]: [63e98780-51a6-domain1                    ] domain: registered (bootacl: 0/0)
> May 04 12:23:22 host boltd[1505]: [63e98780-51a6-domain1                    ] bootacl: bootacl not supported, no sync
> May 04 12:23:22 host boltd[1505]: [63e98780-51a6-domain1                    ] udev: uuid is stable: no (for NHI: 0x466d)
> May 04 12:23:22 host boltd[1505]: [63e98780-51a6-Gen12                      ] device added, status: authorized, at /sys/devices/pci0000:00/0000:00:0d.3/domain1/1-0
> May 04 12:23:22 host boltd[1505]: [63e98780-51a6-Gen12                      ] labeling device: INTEL Gen12
> May 04 12:23:22 host boltd[1505]: [e3a08780-8045-domain0                    ] dbus: exported domain at /org/freedesktop/bolt/domains/e3a08780_8045_947e_ffff_ffffffffffff
> May 04 12:23:22 host boltd[1505]: [63e98780-51a6-domain1                    ] dbus: exported domain at /org/freedesktop/bolt/domains/63e98780_51a6_f70f_ffff_ffffffffffff
> May 04 12:23:22 host boltd[1505]: [e3a08780-8045-Gen12                      ] dbus: exported device at /org/freedesktop/bolt/devices/e3a08780_8045...
> May 04 12:23:22 host boltd[1505]: [63e98780-51a6-Gen12                      ] dbus: exported device at /org/freedesktop/bolt/devices/63e98780_51a6...
> May 04 12:23:22 host systemd[1]: Started Thunderbolt system service.
> May 04 12:23:22 host kernel: Bluetooth: BNEP (Ethernet Emulation) ver 1.3
> May 04 12:23:22 host systemd-logind[1455]: Watching system buttons on /dev/input/event10 (Acer WMI hotkeys)
> May 04 12:23:22 host kernel: Bluetooth: BNEP filters: protocol multicast
> May 04 12:23:22 host kernel: Bluetooth: BNEP socket layer initialized
> May 04 12:23:22 host bluetoothd[1541]: Bluetooth management interface 1.23 initialized
> May 04 12:23:22 host kernel: PTP clock support registered
> May 04 12:23:22 host kernel: intel_tcc_cooling: Programmable TCC Offset detected
> May 04 12:23:22 host kernel: snd_soc_avs 0000:00:1f.3: Digital mics found on Skylake+ platform, using SOF driver
> May 04 12:23:22 host kernel: typec port0: bound usb3-port3 (ops connector_ops)
> May 04 12:23:22 host kernel: typec port0: bound usb2-port1 (ops connector_ops)
> May 04 12:23:22 host kernel: typec port0: bound usb4_port1 (ops connector_ops [thunderbolt])
> May 04 12:23:22 host kernel: sof-audio-pci-intel-tgl 0000:00:1f.3: enabling device (0000 -> 0002)
> May 04 12:23:22 host kernel: sof-audio-pci-intel-tgl 0000:00:1f.3: DSP detected with PCI class/subclass/prog-if 0x040100
> May 04 12:23:22 host kernel: sof-audio-pci-intel-tgl 0000:00:1f.3: bound 0000:00:02.0 (ops intel_audio_component_bind_ops [xe])
> May 04 12:23:22 host kernel: sof-audio-pci-intel-tgl 0000:00:1f.3: use msi interrupt mode
> May 04 12:23:22 host kernel: sof-audio-pci-intel-tgl 0000:00:1f.3: hda codecs found, mask 5
> May 04 12:23:22 host kernel: sof-audio-pci-intel-tgl 0000:00:1f.3: using HDA machine driver skl_hda_dsp_generic now
> May 04 12:23:22 host kernel: sof-audio-pci-intel-tgl 0000:00:1f.3: NHLT device BT(0) detected, ssp_mask 0x4
> May 04 12:23:22 host kernel: sof-audio-pci-intel-tgl 0000:00:1f.3: BT link detected in NHLT tables: 0x4
> May 04 12:23:22 host kernel: sof-audio-pci-intel-tgl 0000:00:1f.3: DMICs detected in NHLT tables: 2
> May 04 12:23:22 host kernel: sof-audio-pci-intel-tgl 0000:00:1f.3: Firmware paths/files for ipc type 0:
> May 04 12:23:22 host kernel: sof-audio-pci-intel-tgl 0000:00:1f.3:  Firmware file:     intel/sof/sof-adl.ri
> May 04 12:23:22 host kernel: sof-audio-pci-intel-tgl 0000:00:1f.3:  Topology file:     intel/sof-tplg/sof-hda-generic-2ch.tplg
> May 04 12:23:22 host kernel: sof-audio-pci-intel-tgl 0000:00:1f.3: Firmware info: version 2:2:0-57864
> May 04 12:23:22 host kernel: sof-audio-pci-intel-tgl 0000:00:1f.3: Firmware: ABI 3:22:1 Kernel ABI 3:23:1
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: WFPM_UMAC_PD_NOTIFICATION: 0x20
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: RFIm is deactivated, reason = 5
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: WFPM_LMAC2_PD_NOTIFICATION: 0x1f
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: WFPM_AUTH_KEY_0: 0x90
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: CNVI_SCU_SEQ_DATA_DW9: 0x0
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: Detected RF GF, rfid=0x2010d000
> May 04 12:23:22 host kernel: sof-audio-pci-intel-tgl 0000:00:1f.3: Firmware info: version 2:2:0-57864
> May 04 12:23:22 host kernel: sof-audio-pci-intel-tgl 0000:00:1f.3: Firmware: ABI 3:22:1 Kernel ABI 3:23:1
> May 04 12:23:22 host kernel: sof-audio-pci-intel-tgl 0000:00:1f.3: loading topology: intel/sof-tplg/sof-hda-generic-2ch.tplg
> May 04 12:23:22 host kernel: sof-audio-pci-intel-tgl 0000:00:1f.3: Topology: ABI 3:22:1 Kernel ABI 3:23:1
> May 04 12:23:22 host kernel: skl_hda_dsp_generic skl_hda_dsp_generic: ASoC: Parent card not yet available, widget card binding deferred
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: base HW address: XX:XX:XX:XX:XX:XX
> May 04 12:23:22 host kernel: snd_hda_codec_alc269 ehdaudio0D0: ALC256: picked fixup  (pin match)
> May 04 12:23:22 host kernel: snd_hda_codec_alc269 ehdaudio0D0: autoconfig for ALC256: line_outs=1 (0x14/0x0/0x0/0x0/0x0) type:speaker
> May 04 12:23:22 host kernel: snd_hda_codec_alc269 ehdaudio0D0:    speaker_outs=0 (0x0/0x0/0x0/0x0/0x0)
> May 04 12:23:22 host kernel: snd_hda_codec_alc269 ehdaudio0D0:    hp_outs=1 (0x21/0x0/0x0/0x0/0x0)
> May 04 12:23:22 host kernel: snd_hda_codec_alc269 ehdaudio0D0:    mono: mono_out=0x0
> May 04 12:23:22 host kernel: snd_hda_codec_alc269 ehdaudio0D0:    inputs:
> May 04 12:23:22 host kernel: snd_hda_codec_alc269 ehdaudio0D0:      Headset Mic=0x19
> May 04 12:23:22 host NetworkManager[1454]: <info>  [1777890202.4942] device (wlan0): driver supports Access Point (AP) mode
> May 04 12:23:22 host NetworkManager[1454]: <info>  [1777890202.4954] manager: (wlan0): new 802.11 Wi-Fi device (/org/freedesktop/NetworkManager/Devices/2)
> May 04 12:23:22 host NetworkManager[1454]: <info>  [1777890202.4966] rfkill3: found Wi-Fi radio killswitch (at /sys/devices/pci0000:00/0000:00:14.3/ieee80211/phy0/rfkill3) (driver iwlwifi)
> May 04 12:23:22 host NetworkManager[1454]: <info>  [1777890202.5033] device (wlan0): state change: unmanaged -> unavailable (reason 'managed', managed-type: 'external')
> May 04 12:23:22 host kernel: skl_hda_dsp_generic skl_hda_dsp_generic: hda_dsp_hdmi_build_controls: no PCM in topology for HDMI converter 3
> May 04 12:23:22 host kernel: input: sof-hda-dsp Headset Mic as /devices/pci0000:00/0000:00:1f.3/skl_hda_dsp_generic/sound/card0/input20
> May 04 12:23:22 host kernel: input: sof-hda-dsp Front Headphone as /devices/pci0000:00/0000:00:1f.3/skl_hda_dsp_generic/sound/card0/input21
> May 04 12:23:22 host kernel: input: sof-hda-dsp HDMI/DP,pcm=3 as /devices/pci0000:00/0000:00:1f.3/skl_hda_dsp_generic/sound/card0/input22
> May 04 12:23:22 host kernel: input: sof-hda-dsp HDMI/DP,pcm=4 as /devices/pci0000:00/0000:00:1f.3/skl_hda_dsp_generic/sound/card0/input23
> May 04 12:23:22 host kernel: input: sof-hda-dsp HDMI/DP,pcm=5 as /devices/pci0000:00/0000:00:1f.3/skl_hda_dsp_generic/sound/card0/input24
> May 04 12:23:22 host systemd[1]: Reached target Sound Card.
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: WFPM_UMAC_PD_NOTIFICATION: 0x20
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: RFIm is deactivated, reason = 5
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: WFPM_LMAC2_PD_NOTIFICATION: 0x1f
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: WFPM_AUTH_KEY_0: 0x90
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: CNVI_SCU_SEQ_DATA_DW9: 0x0
> May 04 12:23:22 host NetworkManager[1454]: <info>  [1777890202.7993] device (wlan0): set-hw-addr: set MAC address to XX (scanning)
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: WFPM_UMAC_PD_NOTIFICATION: 0x20
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: RFIm is deactivated, reason = 5
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: WFPM_LMAC2_PD_NOTIFICATION: 0x1f
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: WFPM_AUTH_KEY_0: 0x90
> May 04 12:23:22 host kernel: iwlwifi 0000:00:14.3: CNVI_SCU_SEQ_DATA_DW9: 0x0
> May 04 12:23:23 host systemd[1]: Starting WPA supplicant...
> May 04 12:23:23 host systemd[1]: Started WPA supplicant.
> May 04 12:23:23 host wpa_supplicant[1603]: Successfully initialized wpa_supplicant
> May 04 12:23:23 host NetworkManager[1454]: <info>  [1777890203.1496] device (wlan0): supplicant interface state: internal-starting -> disconnected
> May 04 12:23:23 host NetworkManager[1454]: <info>  [1777890203.1497] Wi-Fi P2P device controlled by interface wlan0 created
> May 04 12:23:23 host NetworkManager[1454]: <info>  [1777890203.1500] manager: (p2p-dev-wlan0): new 802.11 Wi-Fi P2P device (/org/freedesktop/NetworkManager/Devices/3)
> May 04 12:23:23 host NetworkManager[1454]: <info>  [1777890203.1502] device (p2p-dev-wlan0): state change: unmanaged -> unavailable (reason 'managed', managed-type: 'external')
> May 04 12:23:23 host NetworkManager[1454]: <warn>  [1777890203.1503] device (p2p-dev-wlan0): error setting IPv4 forwarding to '0': Resource temporarily unavailable
> May 04 12:23:23 host NetworkManager[1454]: <info>  [1777890203.1507] device (wlan0): state change: unavailable -> disconnected (reason 'supplicant-available', managed-type: 'full')
> May 04 12:23:23 host NetworkManager[1454]: <info>  [1777890203.1512] device (p2p-dev-wlan0): state change: unavailable -> disconnected (reason 'none', managed-type: 'full')
> May 04 12:23:23 host kernel: Bluetooth: hci0: Waiting for firmware download to complete
> May 04 12:23:23 host kernel: Bluetooth: hci0: Firmware loaded in 1590008 usecs
> May 04 12:23:23 host kernel: Bluetooth: hci0: Waiting for device to boot
> May 04 12:23:23 host kernel: Bluetooth: hci0: Device booted in 15669 usecs
> May 04 12:23:23 host kernel: Bluetooth: hci0: Found Intel DDC parameters: intel/ibt-0040-0041.ddc
> May 04 12:23:23 host kernel: Bluetooth: hci0: Applying Intel DDC parameters completed
> May 04 12:23:23 host kernel: Bluetooth: hci0: Firmware timestamp 2026.5 buildtype 1 build 82122
> May 04 12:23:23 host kernel: Bluetooth: hci0: Firmware SHA1: 0x2925677d
> May 04 12:23:23 host kernel: Bluetooth: hci0: Fseq status: Success (0x00)
> May 04 12:23:23 host kernel: Bluetooth: hci0: Fseq executed: 00.00.02.41
> May 04 12:23:23 host kernel: Bluetooth: hci0: Fseq BT Top: 00.00.02.41
> May 04 12:23:23 host kernel: Bluetooth: MGMT ver 1.23
> May 04 12:23:23 host bluetoothd[1541]: Battery Provider Manager created
> May 04 12:23:23 host kernel: NET: Registered PF_ALG protocol family
> May 04 12:23:23 host bluetoothd[1541]: Failed to set default system config for hci0
> May 04 12:23:23 host bluetoothd[1541]: Failed to set mode: Failed (0x03)
> May 04 12:23:26 host wpa_supplicant[1603]: wlan0: CTRL-EVENT-REGDOM-CHANGE init=DRIVER type=COUNTRY alpha2=XX
> May 04 12:23:26 host wpa_supplicant[1603]: p2p-dev-wlan0: Channel list changed: 6 GHz was enabled
> May 04 12:23:26 host wpa_supplicant[1603]: wlan0: Channel list changed: 6 GHz was enabled
> May 04 12:23:26 host wpa_supplicant[1603]: wlan0: CTRL-EVENT-REGDOM-CHANGE init=DRIVER type=COUNTRY alpha2=XX
> May 04 12:23:27 host systemd[1]: systemd-rfkill.service: Deactivated successfully.
> May 04 12:23:31 host kernel: usb 3-4: USB disconnect, device number 2
> May 04 12:23:31 host kernel: usb 3-4: new low-speed USB device number 5 using xhci_hcd
> May 04 12:23:31 host kernel: usb 3-4: New USB device found, idVendor=1c4f, idProduct=0048, bcdDevice= 1.10
> May 04 12:23:31 host kernel: usb 3-4: New USB device strings: Mfr=1, Product=2, SerialNumber=0
> May 04 12:23:31 host kernel: usb 3-4: Product: Usb Mouse
> May 04 12:23:31 host kernel: usb 3-4: Manufacturer: SIGMACHIP
> May 04 12:23:31 host kernel: input: SIGMACHIP Usb Mouse as /devices/pci0000:00/0000:00:14.0/usb3/3-4/3-4:1.0/0003:1C4F:0048.0003/input/input25
> May 04 12:23:31 host kernel: hid-generic 0003:1C4F:0048.0003: input,hidraw0: USB HID v1.10 Mouse [SIGMACHIP Usb Mouse] on usb-0000:00:14.0-4/input0
> May 04 12:23:31 host mtp-probe[1615]: checking bus 3, device 5: "/sys/devices/pci0000:00/0000:00:14.0/usb3/3-4"
> May 04 12:23:31 host mtp-probe[1615]: bus: 3, device: 5 was not an MTP device
> May 04 12:23:31 host mtp-probe[1618]: checking bus 3, device 5: "/sys/devices/pci0000:00/0000:00:14.0/usb3/3-4"
> May 04 12:23:31 host mtp-probe[1618]: bus: 3, device: 5 was not an MTP device
> May 04 12:23:31 host systemd[1]: NetworkManager-dispatcher.service: Deactivated successfully.
> May 04 12:23:33 host kernel: usb 3-4: USB disconnect, device number 5
> May 04 12:23:33 host kernel: usb 3-4: new low-speed USB device number 6 using xhci_hcd
> May 04 12:23:33 host kernel: usb 3-4: New USB device found, idVendor=1c4f, idProduct=0048, bcdDevice= 1.10
> May 04 12:23:33 host kernel: usb 3-4: New USB device strings: Mfr=1, Product=2, SerialNumber=0
> May 04 12:23:33 host kernel: usb 3-4: Product: Usb Mouse
> May 04 12:23:33 host kernel: usb 3-4: Manufacturer: SIGMACHIP
> May 04 12:23:33 host kernel: input: SIGMACHIP Usb Mouse as /devices/pci0000:00/0000:00:14.0/usb3/3-4/3-4:1.0/0003:1C4F:0048.0004/input/input26
> May 04 12:23:33 host kernel: hid-generic 0003:1C4F:0048.0004: input,hidraw0: USB HID v1.10 Mouse [SIGMACHIP Usb Mouse] on usb-0000:00:14.0-4/input0
> May 04 12:23:33 host mtp-probe[1620]: checking bus 3, device 6: "/sys/devices/pci0000:00/0000:00:14.0/usb3/3-4"
> May 04 12:23:33 host mtp-probe[1620]: bus: 3, device: 6 was not an MTP device
> May 04 12:23:33 host mtp-probe[1623]: checking bus 3, device 6: "/sys/devices/pci0000:00/0000:00:14.0/usb3/3-4"
> May 04 12:23:33 host mtp-probe[1623]: bus: 3, device: 6 was not an MTP device
> May 04 12:23:35 host kernel: usb 3-4: USB disconnect, device number 6
> May 04 12:23:35 host kernel: usb 3-4: new low-speed USB device number 7 using xhci_hcd
> May 04 12:23:35 host kernel: usb 3-4: New USB device found, idVendor=1c4f, idProduct=0048, bcdDevice= 1.10
> May 04 12:23:35 host kernel: usb 3-4: New USB device strings: Mfr=1, Product=2, SerialNumber=0
> May 04 12:23:35 host kernel: usb 3-4: Product: Usb Mouse
> May 04 12:23:35 host kernel: usb 3-4: Manufacturer: SIGMACHIP
> May 04 12:23:35 host kernel: input: SIGMACHIP Usb Mouse as /devices/pci0000:00/0000:00:14.0/usb3/3-4/3-4:1.0/0003:1C4F:0048.0005/input/input27
> May 04 12:23:35 host kernel: hid-generic 0003:1C4F:0048.0005: input,hidraw0: USB HID v1.10 Mouse [SIGMACHIP Usb Mouse] on usb-0000:00:14.0-4/input0
> May 04 12:23:35 host mtp-probe[1624]: checking bus 3, device 7: "/sys/devices/pci0000:00/0000:00:14.0/usb3/3-4"
> May 04 12:23:35 host mtp-probe[1624]: bus: 3, device: 7 was not an MTP device
> May 04 12:23:36 host mtp-probe[1627]: checking bus 3, device 7: "/sys/devices/pci0000:00/0000:00:14.0/usb3/3-4"
> May 04 12:23:36 host mtp-probe[1627]: bus: 3, device: 7 was not an MTP device
> May 04 12:23:42 host systemd[1]: Started Getty on tty2.
> May 04 12:23:45 host dbus-broker-launch[1449]: Activation request for 'org.freedesktop.home1' failed: The systemd unit 'dbus-org.freedesktop.home1.service' could not be found.
> May 04 12:23:50 host login[1628]: pam_unix(login:session): session opened for user arch_user(uid=1000) by arch_user(uid=0)
> May 04 12:23:50 host systemd[1]: Created slice User Slice of UID 1000.
> May 04 12:23:50 host systemd[1]: Starting User Runtime Directory /run/user/1000...
> May 04 12:23:50 host systemd-logind[1455]: New session '1' of user 'arch_user' with class 'user' and type 'tty'.
> May 04 12:23:50 host systemd-user-runtime-dir[1632]: Successfully configured disk quota for UID 1000 on /tmp to 6.1G
> May 04 12:23:50 host systemd-user-runtime-dir[1632]: Successfully configured disk quota for UID 1000 on /dev/shm to 6.1G
> May 04 12:23:50 host systemd[1]: Finished User Runtime Directory /run/user/1000.
> May 04 12:23:50 host systemd[1]: Starting User Manager for UID 1000...
> May 04 12:23:50 host (systemd)[1671]: pam_warn(systemd-user:setcred): function=[pam_sm_setcred] flags=0x8002 service=[systemd-user] terminal=[] user=[arch_user] ruser=[<unknown>] rhost=[<unknown>]
> May 04 12:23:50 host (systemd)[1671]: pam_unix(systemd-user:session): session opened for user arch_user(uid=1000) by arch_user(uid=0)
> May 04 12:23:50 host systemd-logind[1455]: New session '2' of user 'arch_user' with class 'manager' and type 'unspecified'.
> May 04 12:23:50 host systemd[1671]: Queued start job for default target Main User Target.
> May 04 12:23:50 host systemd[1671]: Created slice User Application Slice.
> May 04 12:23:50 host systemd[1671]: Started Submitting pending crash events (file monitor).
> May 04 12:23:50 host systemd[1671]: Cleanup lingering KCrash metadata skipped, unmet condition check ConditionPathExistsGlob=/home/arch_user/.cache/kcrash-metadata/*.ini
> May 04 12:23:50 host systemd[1671]: Submitting pending crash events skipped, unmet condition check ConditionPathExistsGlob=/home/arch_user/.cache/drkonqi/sentry-envelopes/*
> May 04 12:23:50 host systemd[1671]: Reached target Paths.
> May 04 12:23:50 host systemd[1671]: Reached target Timers.
> May 04 12:23:50 host systemd[1671]: Starting D-Bus User Message Bus Socket...
> May 04 12:23:50 host systemd[1671]: Listening on GnuPG network certificate management daemon.
> May 04 12:23:50 host systemd[1671]: Listening on Socket to launch DrKonqi for a systemd-coredump crash.
> May 04 12:23:50 host systemd[1671]: Listening on GnuPG cryptographic agent and passphrase cache (access for web browsers).
> May 04 12:23:50 host systemd[1671]: Listening on GnuPG cryptographic agent and passphrase cache (restricted).
> May 04 12:23:50 host systemd[1671]: Listening on GnuPG cryptographic agent (ssh-agent emulation).
> May 04 12:23:50 host systemd[1671]: Listening on GnuPG cryptographic agent and passphrase cache.
> May 04 12:23:51 host login[1628]: LOGIN ON tty2 BY arch_user
> May 04 12:23:50 host systemd[1671]: Listening on GnuPG public key management service.
> May 04 12:23:50 host systemd[1671]: Listening on p11-kit server.
> May 04 12:23:50 host systemd[1671]: Listening on PipeWire PulseAudio.
> May 04 12:23:50 host systemd[1671]: Listening on PipeWire Multimedia System Sockets.
> May 04 12:23:50 host systemd[1671]: Listening on Query the User Interactively for a Password.
> May 04 12:23:50 host systemd[1671]: Listening on Disk Image Download Service Socket.
> May 04 12:23:50 host systemd[1671]: Listening on Journal Log Access Socket.
> May 04 12:23:50 host systemd[1671]: Listening on Virtual Machine and Container Registration Service Socket.
> May 04 12:23:50 host systemd[1671]: Listening on D-Bus User Message Bus Socket.
> May 04 12:23:50 host systemd[1671]: Reached target Sockets.
> May 04 12:23:50 host systemd[1671]: Reached target Basic System.
> May 04 12:23:50 host systemd[1671]: Cleanup lingering KCrash metadata skipped, unmet condition check ConditionPathExistsGlob=/home/arch_user/.cache/kcrash-metadata/*.ini
> May 04 12:23:50 host systemd[1671]: Reached target Main User Target.
> May 04 12:23:50 host systemd[1671]: Startup finished in 130ms.
> May 04 12:23:50 host systemd[1]: Started User Manager for UID 1000.
> May 04 12:23:50 host systemd[1]: Started Session 1 of User arch_user.
> May 04 12:23:52 host systemd[1]: systemd-hostnamed.service: Deactivated successfully.
> May 04 12:24:21 host systemd-udevd[1309]: xe.nvm.768: Worker [1364] processing SEQNUM=4387 is taking a long time.
> May 04 12:24:21 host systemd-udevd[1309]: xe.mei-gscfi.768: Worker [1341] processing SEQNUM=4386 is taking a long time.
> May 04 12:26:31 host systemd-udevd[1309]: xe.nvm.768: Worker [1364] processing SEQNUM=4387 killed.
> May 04 12:26:31 host systemd-udevd[1309]: xe.mei-gscfi.768: Worker [1341] processing SEQNUM=4386 killed.
> May 04 12:27:47 host sudo[1762]: pam_unix(sudo:auth): conversation failed
> May 04 12:27:47 host sudo[1762]: pam_unix(sudo:auth): auth could not identify password for [arch_user]
> May 04 12:28:03 host sudo[1773]:  arch_user : TTY=tty2 ; PWD=/home/arch_user ; USER=root ; COMMAND=/usr/bin/ls
> May 04 12:28:03 host sudo[1773]: pam_unix(sudo:session): session opened for user root(uid=0) by arch_user(uid=1000)
> May 04 12:28:03 host sudo[1773]: pam_unix(sudo:session): session closed for user root
> May 04 12:28:17 host sudo[1799]:  arch_user : TTY=tty2 ; PWD=/home/arch_user ; USER=root ; COMMAND=/usr/bin/poweroff
> May 04 12:28:17 host sudo[1799]: pam_unix(sudo:session): session opened for user root(uid=0) by arch_user(uid=1000)
> May 04 12:28:17 host systemd-logind[1455]: The system will power off now!
> May 04 12:28:17 host systemd-logind[1455]: System is powering down.
> May 04 12:28:17 host sudo[1799]: pam_unix(sudo:session): session closed for user root
> May 04 12:28:17 host systemd[1]: Stopping Session 1 of User arch_user...
> May 04 12:28:17 host systemd[1]: Removed slice Slice /system/modprobe.
> May 04 12:28:17 host systemd[1]: Stopped target Bluetooth Support.
> May 04 12:28:17 host systemd[1]: Stopped target Graphical Interface.
> May 04 12:28:17 host systemd[1]: Stopped target Sound Card.
> May 04 12:28:17 host systemd[1]: Stopped target Timer Units.
> May 04 12:28:17 host systemd[1]: host-keyring-wkd-sync.timer: Deactivated successfully.
> May 04 12:28:17 host systemd[1]: Stopped Refresh existing PGP keys of host-keyring regularly.
> May 04 12:28:17 host systemd[1]: fstrim.timer: Deactivated successfully.
> May 04 12:28:17 host systemd[1]: Stopped Discard unused filesystem blocks once a week.
> May 04 12:28:17 host systemd[1]: shadow.timer: Deactivated successfully.
> May 04 12:28:17 host systemd[1]: Stopped Daily verification of password and group files.
> May 04 12:28:17 host systemd[1]: systemd-tmpfiles-clean.timer: Deactivated successfully.
> May 04 12:28:17 host login[1628]: pam_unix(login:session): session closed for user arch_user
> May 04 12:28:17 host systemd[1]: Stopped Daily Cleanup of Temporary Directories.
> May 04 12:28:17 host bluetoothd[1541]: Terminating
> May 04 12:28:17 host systemd[1]: Stopped target System Time Set.
> May 04 12:28:17 host systemd[1]: systemd-rfkill.socket: Deactivated successfully.
> May 04 12:28:17 host systemd[1]: Closed Load/Save RF Kill Switch Status /dev/rfkill Watch.
> May 04 12:28:17 host systemd[1]: Stopping Bluetooth service...
> May 04 12:28:17 host systemd[1]: Stopping Thunderbolt system service...
> May 04 12:28:17 host bluetoothd[1541]: Battery Provider Manager destroyed
> May 04 12:28:17 host bluetoothd[1541]: Stopping SDP server
> May 04 12:28:17 host bluetoothd[1541]: Exit
> May 04 12:28:17 host systemd[1]: Starting Generate shutdown-ramfs...
> May 04 12:28:17 host systemd[1]: Stopping Power Profiles daemon...
> May 04 12:28:17 host systemd[1]: Stopping Simple Desktop Display Manager...
> May 04 12:28:17 host systemd[1]: systemd-udev-load-credentials.service: Deactivated successfully.
> May 04 12:28:17 host systemd[1]: Stopped Load udev Rules from Credentials.
> May 04 12:28:17 host systemd[1]: power-profiles-daemon.service: Deactivated successfully.
> May 04 12:28:17 host systemd[1]: Stopped Power Profiles daemon.
> May 04 12:28:17 host systemd[1]: bolt.service: Deactivated successfully.
> May 04 12:28:17 host systemd[1]: Stopped Thunderbolt system service.
> May 04 12:28:17 host systemd[1]: bluetooth.service: Deactivated successfully.
> May 04 12:28:17 host systemd[1]: Stopped Bluetooth service.
> May 04 12:28:17 host systemd[1]: getty@tty2.service: Deactivated successfully.
> May 04 12:28:17 host systemd[1]: Stopped Getty on tty2.
> May 04 12:28:17 host systemd[1]: session-1.scope: Deactivated successfully.
> May 04 12:28:17 host systemd[1]: Stopped Session 1 of User arch_user.
> May 04 12:28:17 host systemd-logind[1455]: Session 1 logged out. Waiting for processes to exit.
> May 04 12:28:17 host systemd[1]: Removed slice Slice /system/getty.
> May 04 12:28:17 host systemd[1]: Stopped target Multi-User System.
> May 04 12:28:17 host systemd[1]: Stopped target Login Prompts.
> May 04 12:28:17 host systemd[1]: Stopping Authorization Manager...
> May 04 12:28:17 host systemd[1]: Stopping User Manager for UID 1000...
> May 04 12:28:17 host systemd-logind[1455]: Removed session 1.
> May 04 12:28:17 host systemd[1671]: Activating special unit Exit the Session...
> May 04 12:28:17 host systemd[1671]: Stopped target Main User Target.
> May 04 12:28:17 host systemd[1671]: Stopped target Basic System.
> May 04 12:28:17 host systemd[1671]: Stopped target Paths.
> May 04 12:28:17 host systemd[1671]: Stopped Submitting pending crash events (file monitor).
> May 04 12:28:17 host systemd[1671]: Stopped target Sockets.
> May 04 12:28:17 host systemd[1671]: Stopped target Timers.
> May 04 12:28:17 host systemd[1671]: Closed D-Bus User Message Bus Socket.
> May 04 12:28:17 host systemd[1671]: Closed GnuPG network certificate management daemon.
> May 04 12:28:17 host systemd[1671]: Closed Socket to launch DrKonqi for a systemd-coredump crash.
> May 04 12:28:17 host systemd[1671]: Closed GnuPG cryptographic agent and passphrase cache (access for web browsers).
> May 04 12:28:17 host systemd[1671]: Closed GnuPG cryptographic agent and passphrase cache (restricted).
> May 04 12:28:17 host systemd[1671]: Closed GnuPG cryptographic agent (ssh-agent emulation).
> May 04 12:28:17 host systemd[1671]: Closed GnuPG cryptographic agent and passphrase cache.
> May 04 12:28:17 host systemd[1671]: Closed GnuPG public key management service.
> May 04 12:28:17 host systemd[1671]: Closed p11-kit server.
> May 04 12:28:17 host systemd[1671]: Closed PipeWire PulseAudio.
> May 04 12:28:17 host systemd[1671]: Closed PipeWire Multimedia System Sockets.
> May 04 12:28:17 host systemd[1671]: Closed Query the User Interactively for a Password.
> May 04 12:28:17 host systemd[1671]: Closed Disk Image Download Service Socket.
> May 04 12:28:17 host systemd[1671]: Closed Journal Log Access Socket.
> May 04 12:28:17 host systemd[1671]: Closed Virtual Machine and Container Registration Service Socket.
> May 04 12:28:17 host systemd[1671]: Removed slice User Application Slice.
> May 04 12:28:17 host systemd[1671]: Reached target Shutdown.
> May 04 12:28:17 host systemd[1671]: Finished Exit the Session.
> May 04 12:28:17 host systemd[1671]: Reached target Exit the Session.
> May 04 12:28:17 host systemd[1]: polkit.service: Deactivated successfully.
> May 04 12:28:17 host systemd[1]: Stopped Authorization Manager.
> May 04 12:28:17 host mkinitcpio[1809]: ==> Starting build: 'none'
> May 04 12:28:17 host mkinitcpio[1809]:   -> Running build hook: [sd-shutdown]
> May 04 12:28:17 host systemd[1]: Requested transaction contradicts existing jobs: Transaction for sound.target/start is destructive (poweroff.target has 'start' job queued, but 'stop' is included in transaction).
> May 04 12:28:17 host systemd[1]: sys-devices-pci0000:00-0000:00:1f.3-skl_hda_dsp_generic-sound-card0-controlC0.device: Failed to enqueue SYSTEMD_WANTS job, ignoring: Transaction for sound.target/start is destructive (poweroff.target has 'start' job queued, but 'stop' is included in transaction).
> May 04 12:28:17 host systemd[1]: Requested transaction contradicts existing jobs: Transaction for systemd-rfkill.socket/start is destructive (systemd-poweroff.service has 'start' job queued, but 'stop' is included in transaction).
> May 04 12:28:17 host systemd[1]: sys-devices-virtual-misc-rfkill.device: Failed to enqueue SYSTEMD_WANTS job, ignoring: Transaction for systemd-rfkill.socket/start is destructive (systemd-poweroff.service has 'start' job queued, but 'stop' is included in transaction).
> May 04 12:28:17 host (sd-pam)[1674]: pam_unix(systemd-user:session): session closed for user arch_user
> May 04 12:28:17 host systemd-logind[1455]: Removed session 2.
> May 04 12:28:17 host systemd[1]: user@1000.service: Deactivated successfully.
> May 04 12:28:17 host systemd[1]: Stopped User Manager for UID 1000.
> May 04 12:28:18 host systemd[1]: Stopping User Runtime Directory /run/user/1000...
> May 04 12:28:18 host mkinitcpio[1809]: ==> Build complete.
> May 04 12:28:18 host systemd[1]: mkinitcpio-generate-shutdown-ramfs.service: Deactivated successfully.
> May 04 12:28:18 host systemd[1]: Finished Generate shutdown-ramfs.
> May 04 12:28:18 host systemd[1]: run-user-1000.mount: Deactivated successfully.
> May 04 12:28:18 host systemd[1]: Unmounted /run/user/1000.
> May 04 12:28:18 host systemd[1]: user-runtime-dir@1000.service: Deactivated successfully.
> May 04 12:28:18 host systemd[1]: Stopped User Runtime Directory /run/user/1000.
> May 04 12:28:18 host systemd[1]: Removed slice User Slice of UID 1000.
> May 04 12:28:40 host kernel: usb 3-4: USB disconnect, device number 7
> May 04 12:28:41 host kernel: usb 3-4: new low-speed USB device number 8 using xhci_hcd
> May 04 12:28:41 host kernel: usb 3-4: New USB device found, idVendor=1c4f, idProduct=0048, bcdDevice= 1.10
> May 04 12:28:41 host kernel: usb 3-4: New USB device strings: Mfr=1, Product=2, SerialNumber=0
> May 04 12:28:41 host kernel: usb 3-4: Product: Usb Mouse
> May 04 12:28:41 host kernel: usb 3-4: Manufacturer: SIGMACHIP
> May 04 12:28:41 host kernel: input: SIGMACHIP Usb Mouse as /devices/pci0000:00/0000:00:14.0/usb3/3-4/3-4:1.0/0003:1C4F:0048.0006/input/input28
> May 04 12:28:41 host kernel: hid-generic 0003:1C4F:0048.0006: input,hidraw0: USB HID v1.10 Mouse [SIGMACHIP Usb Mouse] on usb-0000:00:14.0-4/input0
> May 04 12:28:41 host mtp-probe[1965]: checking bus 3, device 8: "/sys/devices/pci0000:00/0000:00:14.0/usb3/3-4"
> May 04 12:28:41 host mtp-probe[1965]: bus: 3, device: 8 was not an MTP device
> May 04 12:28:41 host mtp-probe[1968]: checking bus 3, device 8: "/sys/devices/pci0000:00/0000:00:14.0/usb3/3-4"
> May 04 12:28:41 host mtp-probe[1968]: bus: 3, device: 8 was not an MTP device
> May 04 12:29:47 host systemd[1]: sddm.service: State 'stop-sigterm' timed out. Killing.
> May 04 12:29:47 host systemd[1]: sddm.service: Killing process 1483 (sddm) with signal SIGKILL.
> May 04 12:29:47 host systemd[1]: sddm.service: Killing process 1491 (Xorg.wrap) with signal SIGKILL.
> May 04 12:29:47 host systemd[1]: sddm.service: Main process exited, code=killed, status=9/KILL
> May 04 12:30:15 host NetworkManager[1454]: <info>  [1777890615.6630] device (wlan0): set-hw-addr: set MAC address to X (scanning)
> May 04 12:30:15 host NetworkManager[1454]: <info>  [1777890615.6785] device (wlan0): supplicant interface state: disconnected -> inactive
> May 04 12:30:15 host NetworkManager[1454]: <info>  [1777890615.6786] device (p2p-dev-wlan0): supplicant management interface state: disconnected -> inactive
> May 04 12:31:18 host systemd[1]: sddm.service: State 'final-sigterm' timed out. Killing.
> May 04 12:31:18 host systemd[1]: sddm.service: Killing process 1491 (Xorg.wrap) with signal SIGKILL.

