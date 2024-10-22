Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 432D39AB97A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 00:30:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CF1910E223;
	Tue, 22 Oct 2024 22:30:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fE5O7UzK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3B6D10E21B;
 Tue, 22 Oct 2024 22:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729636200; x=1761172200;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=gEg4CWpRm4hY57I9EGO+wYO9h4BFjpXIkUxpaox6Seo=;
 b=fE5O7UzKdam7diymmOhFUqHDpbSdjd9yo1vaichyksztdGLuA+FNQ3pE
 MOW8lxzUjhHmfX4AruuVtbEUJXbBkrBxgg5UpfsiYa4nrpp7ILKQQX7Bt
 zdhDdc0q2JoEl0xsRQfFXwECLjCVGnEoZaho6swhglXO8ssRi7kSSUaWJ
 HQZrz4uEOk4Ea1tV6W2/JK7ErCw+l0W+wMwWFt8FfNhDtQ9Ut7djcznGu
 IrAKu+NqsL4E/yZIfLC8vO/dqbo11Sl7hvd9/WsnB9HQfWHOD54q0SjnZ
 yrLqBwFEZDocTwC1/K+n+gS8RSqJ/3t/E8AjSN4muXYQ4A9fToS96+oAc A==;
X-CSE-ConnectionGUID: +dtT7n8uSaSWOU+gskjTIw==
X-CSE-MsgGUID: 58AdxgbaS1+JapUip3rvhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="32895347"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="32895347"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 15:30:00 -0700
X-CSE-ConnectionGUID: U67DBoAmSgqnO3JXYUeGFw==
X-CSE-MsgGUID: +o9Cw+rHTVCUkW2C32gFUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="80024061"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 15:29:59 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 15:29:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 15:29:58 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 15:29:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JjZZJqys7eFDMwqakFAdc7hJTSjUOhAnLSMM27Ce0VyiaafT4KUYw5y3+qDQf1dBDUAhQx6MFWR1aXbNZe0c57ehCL4tCI5LZzK0ygz3CEGnowFQ3uj/HyY/A75j8KOW+//3bpXObcCvVY/vCLBOje/er8rGcpueLy9LwX1sTHCVZLPTjjdqsLE7indxI9Hld7TG4WPOCxeodV9BeSaK2oyygxCaBzfnzohI8j3p4IdUOwM8hIkThjCS4uhJPZiXMfEgV76PGhsI324MRptD2CiyrFWZFYVO4aI+ZoFuZOUDK8KaO1m/yMWmyKMoPDfh8yifnC1yTBhIkn38D1v0Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ChoHmEf75DeOIzcxVoYBFUISbOr9LdKXKlsT6zzan1Q=;
 b=jV2bhWWOun0iTQu5eu1eeSzdfAmEFViYlFPw9aL61PLUvHD68ooY23lx4RI9zdM51l3AtOrs64sCxUTE+NxK3tYwuRkXSVaNu1b8hUZwux9B3Hi90pljW7AwEwn791v8ycOtxZT3Saxo4D/K8pcy7rIG7XK1XTgJ+G6qvu3hAPDiQ+Fs6I2w44P2IXYVFwIoJaP2XS7uMIgmjwvyUVpuC9qk220AOFYAFcJbsVlsOjFYukM+UXKwNI9NSFPVv/FjtLXr9Mbcuy45sxDcB1SiYh8oHE2xAhkBuUd5l6mn2EMg9wXFWI/DwKcgMsMvhWd9Kiu1XoSB4ym9zrZ9HZO+iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ2PR11MB8469.namprd11.prod.outlook.com (2603:10b6:a03:57b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18; Tue, 22 Oct
 2024 22:29:50 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 22:29:50 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <8734kpzljp.fsf@intel.com>
References: <20241017205444.102979-2-gustavo.sousa@intel.com>
 <8734kpzljp.fsf@intel.com>
Subject: Re: [PATCH] drm/i915/xe2lpd: Update C20 HDMI TMDS algorithm to
 include tx_misc
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 22 Oct 2024 19:29:44 -0300
Message-ID: <172963618489.3700.8650290093520294494@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P221CA0023.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::28) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ2PR11MB8469:EE_
X-MS-Office365-Filtering-Correlation-Id: 885c1336-8518-4194-82e6-08dcf2e90a9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cXU0NWFUQnpnWkhQQ2hwTG12dzB0aDAzalBMN3lieHJMSmpqT3lIdUtheVE5?=
 =?utf-8?B?R3d6OU1WN1k0MHQ3MHRlT3Q1UktGWTMxR0NNVHVjL1NZL0RUWUI0QnprOVdG?=
 =?utf-8?B?aFdaUk4yRy91NkVLUWlQUVR5MnNEcEN2cEE3N1VFTFFpcHpHWGNpa1NCQnVN?=
 =?utf-8?B?a2hsR3BaM2hQS2h5MXRBNVBVbDNmZ2F0Y1pTdUk1allpcnNERUszYk9uejZO?=
 =?utf-8?B?T1ZlUnhBejNWV1lYMklWVmx0N3g0a1Y1VXRwS3VOQmozUWlqdzNJLzRpUTE5?=
 =?utf-8?B?YjJMeHpIVFplbnEzL0htQURNc25SZWpUZDdhUGcxVFg1N3c1aW5ZZDFkMU9D?=
 =?utf-8?B?S0JPNVNSbHQyK2pGUUpXQ2trNTVoTG96a0lPcUVlbkVYVExWY2lrY3cyL3BJ?=
 =?utf-8?B?aVlmOVFieVdQTW9oQjRVQ2E3Q2lSQlVmS2RlcS9ob09rQ1c0T05iZU01NDBl?=
 =?utf-8?B?dTFzM1dLRC9sSkxCRVN2OVJkdFo3a3dyVFNLN1hudlpoeHdpNm5xVUY1Q2FH?=
 =?utf-8?B?L2UvTU5NSWNhQUg5UG9LNnFodUhJMmVwWmdzanVsTUJwV1cvRERRdFgvbUUy?=
 =?utf-8?B?WjczM3RMNzl2U0cyaXBqU1V4MlArNHlCYXkrYXRxVVpNTThsVWRQc0ZFeEdW?=
 =?utf-8?B?WUZiMmpaZmltVXJKT0txajlET3ZpM2FCQkgzYTU4b3cwZ2FTZ290TVl0Si80?=
 =?utf-8?B?T2svbk5oZGJzc1daWlpTS2dlekdnVkE5Q2VLMkFyVG0wU2tMMVZDazcwS2FN?=
 =?utf-8?B?Qm5iUEM1WGZOSG1HQys1b05LellHZ2RLeG13VkFMdTRJL3V0d3pZMWI0RHJF?=
 =?utf-8?B?dnE3SWFDZGpQWFJnM1ZVU0FPYTUreTVTaHJhUi9seld5bXFyRGV4Z0o0WXIy?=
 =?utf-8?B?WW5HUXo4ekF2V1VLb3Q0SktEMUlyRnNTbmVaWjI0bXRmeDRPRnlSRDAzeWZE?=
 =?utf-8?B?RWhHakhJZ1pjZ3p4ZmJPL2Y2RjZ1NllPMUk0TDJ6YVRRa3hsK09KQ0hmYmZl?=
 =?utf-8?B?SlRKbUUyTUxHMFVJM3V3V2RJUHVtdlI1a0U0cDR6NmxsWFkzeVJkRHVtalli?=
 =?utf-8?B?MHdiQlY1ckdHMFp3SzdkMGlxQkVUQXl6c2V0Ymhwclg3bmpmajNSbE5ubUQ2?=
 =?utf-8?B?bDliZEg3Q3N3UjV5dk83aGZ5YnlKSno0VGZyenUzeEZwR1RRek1wWkw4Uy9G?=
 =?utf-8?B?aWd2VitOdW1Uc3dUZzlCcU9kT3VoMmc3VGtlOVdzOGU0UThyeDRqSU9Jd2p1?=
 =?utf-8?B?K05BT29mUjFpajZoeG9tVGRpbGtnTFRNOHFwNEFkQ01pOFFSN1lsTzR6aE52?=
 =?utf-8?B?RXpsem9zclQ5TW16OGxJb2dxUUZMdUROY2hGcDU4OFd3ak53K0tRSGU1SXB0?=
 =?utf-8?B?VGNUTk0rN3p3UVk3RzBCb1pOakIxOG1ZWkIwY1lHM0FXRGoybXRzcFkzbkh0?=
 =?utf-8?B?ZWFoV25rRHZiL2UyajhMRGpMR0o1Q05iSStpRW9WZlYrVGtUcE91Y3RNQ1pv?=
 =?utf-8?B?VWxRREJzU0YwenhheHRhOHQxc1dQNDNvMEZjUW0vRW1JaFdaVlVlYlBuS2FZ?=
 =?utf-8?B?SytaZWFKZzJyM1dON2JGaUFIT3hRTWtNVXowV1pFQ1V6SnRybmtOZXpKZUpN?=
 =?utf-8?B?eGsxT1dqaitibENZblByRGtaYWtNRVBWdENVUTJTSDhGQ2xqK2NHNDhmOVZy?=
 =?utf-8?B?NHkwS01yZUlQR2RIRjUyRzYvbW5XaEhjS1FTRkpjSHhvOWdsQmczOHVQbWR2?=
 =?utf-8?Q?9rZx5AVgXRsCetbnFo9sSIzVosS/9qGfSs7wYYo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWcxUEI3QW5PRnlJQVE2K2VyVW9PbGRNVE1QZE9ReVVNT3JEaG5RdmtUM0ZY?=
 =?utf-8?B?eUpiajBlcEZWOWFBUEk5THVJTlQzekp6TGZjT3FVSVMxSXJiZk1NZEh3YTZP?=
 =?utf-8?B?V2QxTlNRMVVYQUcvSklONjErZjZ1bUQyVk9LSEVsMnF1cVR6dm42cWZURG9N?=
 =?utf-8?B?RTJDNjhHV0FvRkZJZHY0QnJkZDVQYTl1ejUwMk4zNnk1WStpb2wyQjlBeUQ2?=
 =?utf-8?B?d0d2SDdVSzlDMnB3SWNmdVZTZGtsNmo1cm9PVHh1aHJQVEF5MnpQakhvREZT?=
 =?utf-8?B?cnorTXBzMC96d3JzYTI3ZGNkaXBjZEx2SWVSRTJyT3AxNEMvc1locnRNbTBG?=
 =?utf-8?B?dUdLN0dHVnVKdnpUS0dLQ21OQ0dGbTBMOTRiaTM4dC9xcUhsS3V4TzYrM0Vm?=
 =?utf-8?B?RC9za21TcmFxVVZPTmQ2dlVzOHlsazh1YWUvVWUyZlgzb0RReWZXWFNxYmQz?=
 =?utf-8?B?bGN1cjNkRDdzNk80Y3JITmd5bHVBYUxMMEtFQzZCd0s4V2YzZnppMUlhWk96?=
 =?utf-8?B?eHhPMDRxbDl5S2dvWURRWjRLNFE1eWJ1QTNoS1M2ZWt2S050NDdkc0lWaGw0?=
 =?utf-8?B?MEVPMUIvMmFxTng2NGZGWmRmSXFzTVNvdUJ6TzlvZWdtN1JMRXQ5NDVMbHRH?=
 =?utf-8?B?bnFoeWFwcEp5VDVnb0h0N3NoQmMyT2dPZUN3amQwUXpNcWpLM2xKKzFrTUxW?=
 =?utf-8?B?RjdoVDRUSDlPV1VyZEw3c3hiZlorb0hLZytWanovSDRESW9WVkJmZXdSS1E1?=
 =?utf-8?B?MUdFcVg2N3NPTTJOV1lvRWlQcUEwMWcvSWs2RjZxRzgzeTBVS0R2QU52ckNK?=
 =?utf-8?B?WEZySm9nQVd4MkFXL3Yzak4vdkNmdkkvcFp1MklaNlRFTWI4eVQxMHMrVHBl?=
 =?utf-8?B?TjgwVWF1bWNlNGN2WVNEZWdjOHdwYTVIYm1LYTJQSHJpbWtyb2FpbHdIdGo2?=
 =?utf-8?B?ZDN1Wk4rM01kRVpBVi9NMGFlektrV2NHVCtMa1NqT2k1QmpCWWh2c3dFek92?=
 =?utf-8?B?Wk1NUjI1cXRnRXRwNFdSdkd2TWd4bmRuR3lzWFFCM1ZCUS9ad1lQUVNKdU41?=
 =?utf-8?B?NE8wa2VzRnhISEx3eHhlNGM1LzRrOFNvb2hzRTZyZXV2SUJrUmZvaUxYQUF2?=
 =?utf-8?B?SjBrbGk1a0VHZEQ4QmRDaGVGTGlGZ05iQjFDOXV2RTNJSDY5RE56YnpyS09R?=
 =?utf-8?B?TEtYdmRYdFBlbkxWZmxGelI4azNKdE90TlE5cGNTMnRpQW9tcWVPbU5JdHMy?=
 =?utf-8?B?Y0RUSDc1em5MYTFiS1ViM1A5dCtKeG1oNC9JbGFrMFF5dURSRUlHYWk0SU1w?=
 =?utf-8?B?NlErbzVDWEs1TkNqTzRrcjFaa0pidnpLR3BnOXlHTjBFWHpvZXE1NXROZUxP?=
 =?utf-8?B?bkRWSmhVUFY5MmdUNEFmUlhnamlJcitJOHJnVlhtZFUxVE54aHlxQ3VkREJi?=
 =?utf-8?B?VWpEUUdYNmlCd3lIZmN1bTBmdDNuWVlLemZ5RUwrbUYzamt1UDNtbkNBMlFC?=
 =?utf-8?B?Zit5WDBOVjhqZ091dUpzUlhyR0t3ZkVaZEppQTV5TXdyRTJ0cUFyMGpKei9v?=
 =?utf-8?B?N04veXp0U3lSZ09pVElnWjlDM3Y1NEROTmxtQmJFRTBEOUNmMjM1ak90ZnlT?=
 =?utf-8?B?U1RmcU5pckJVL3BnYTlxL0dYNjZOZk04OEZZbDUwOXhHQ0ZibTRjMERYMWFu?=
 =?utf-8?B?NkxPdTBLc0dpRXZ0bEc2L3Y0bkN4c2Z3TVZBaHVDdFprUVBZQTZoUkdNTHpk?=
 =?utf-8?B?NU5tYTZmRHpodUcva3hzejdIdUZwL3dTZXYveXZaTW1rUFI4Q1I3Q0ZMSkhs?=
 =?utf-8?B?WGpVK01yR3p6dytkK1BnTitwVCtNT1VPL0hOVjQvUVNRdFB1SXN4UlJjRG9P?=
 =?utf-8?B?TEVDcklzN25hRFhSekp1Q2ZMd0tldGdzQ2VtUnFXMW9FemlpVkNQanFpcENC?=
 =?utf-8?B?cnlOZE03V1k1VUdmaDlnMUZ6MlRyMzdjOVhxcFdrRjFBVHRnS0MvYS9MYVh6?=
 =?utf-8?B?Ty8rbnFRSk1YVnlmV2JUUHMrK1JCRGxVVnNUUHhaK3JYa2EzWUlta3Q2ZHNS?=
 =?utf-8?B?bXVtVlpuRGFkNzFQVW5wdUgyNWgrbFNaeGxWakdqRnVxYS9SQU0zSlpiazg0?=
 =?utf-8?B?dVVJOUNQUUk0aGhmMnd5V1ovS3NYL2RNRUFqQ3JIZGJja1RkQmtTR1VmdllY?=
 =?utf-8?B?Y1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 885c1336-8518-4194-82e6-08dcf2e90a9f
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 22:29:50.2779 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 58OI8bDT4ohc1ZYOUz+ggKf7ejWyZky4A2HD+tO7Xwp8M5MFboG/CPysh2mMgFHZTTDB3PnMi8ZzhsHBb2R0GQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8469
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

Quoting Jani Nikula (2024-10-21 09:29:30-03:00)
>On Thu, 17 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> There has been an update to the Bspec in which we need to set
>> tx_misc=3D0x5 field for C20 TX Context programming for HDMI TMDS for
>> Xe2_LPD and newer. That field is mapped to the bits 7:0 of
>> SRAM_GENERIC_<A/B>_TX_CNTX_CFG_1, which in turn translates to tx[1] of
>> our state struct. Update the algorithm to reflect this change.
>>
>> Bspec: 74489
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cx0_phy.c    | 17 ++++++++++++++---
>>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h   |  2 ++
>>  2 files changed, 16 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/=
drm/i915/display/intel_cx0_phy.c
>> index f73d576fd99e..22184b2d5a11 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> @@ -2142,8 +2142,12 @@ static void intel_c10pll_dump_hw_state(struct drm=
_i915_private *i915,
>>                              i + 2, hw_state->pll[i + 2], i + 3, hw_stat=
e->pll[i + 3]);
>>  }
>> =20
>> -static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct inte=
l_c20pll_state *pll_state)
>> +static int intel_c20_compute_hdmi_tmds_pll(struct intel_encoder *encode=
r,
>> +                                           u64 pixel_clock,
>> +                                           struct intel_c20pll_state *p=
ll_state)
>>  {
>> +        struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>
>No new struct drm_i915_private local variables or parameters, please.
>
>struct intel_display *display =3D to_intel_display(encoder);
>
>> +
>>          u64 datarate;
>>          u64 mpll_tx_clk_div;
>>          u64 vco_freq_shift;
>> @@ -2154,6 +2158,7 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pix=
el_clock, struct intel_c20pll_
>>          u64 mpll_fracn_rem;
>>          u8  mpllb_ana_freq_vco;
>>          u8  mpll_div_multiplier;
>> +        u16  tx_misc;
>> =20
>>          if (pixel_clock < 25175 || pixel_clock > 600000)
>>                  return -EINVAL;
>> @@ -2171,6 +2176,11 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pi=
xel_clock, struct intel_c20pll_
>>          mpll_div_multiplier =3D min_t(u8, div64_u64((vco_freq * 16 + (d=
atarate >> 1)),
>>                                                    datarate), 255);
>> =20
>> +        if (DISPLAY_VER(i915) >=3D 20)
>> +                tx_misc =3D 0x5;
>> +        else
>> +                tx_misc =3D 0x0;
>> +
>>          if (vco_freq <=3D DATARATE_3000000000)
>>                  mpllb_ana_freq_vco =3D MPLLB_ANA_FREQ_VCO_3;
>>          else if (vco_freq <=3D DATARATE_3500000000)
>> @@ -2182,7 +2192,7 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pix=
el_clock, struct intel_c20pll_
>> =20
>>          pll_state->clock        =3D pixel_clock;
>>          pll_state->tx[0]        =3D 0xbe88;
>> -        pll_state->tx[1]        =3D 0x9800;
>> +        pll_state->tx[1]        =3D 0x9800 | C20_PHY_TX_MISC(tx_misc);
>>          pll_state->tx[2]        =3D 0x0000;
>>          pll_state->cmn[0]        =3D 0x0500;
>>          pll_state->cmn[1]        =3D 0x0005;
>> @@ -2266,7 +2276,8 @@ static int intel_c20pll_calc_state(struct intel_cr=
tc_state *crtc_state,
>> =20
>>          /* try computed C20 HDMI tables before using consolidated table=
s */
>>          if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
>> -                if (intel_c20_compute_hdmi_tmds_pll(crtc_state->port_cl=
ock,
>> +                if (intel_c20_compute_hdmi_tmds_pll(encoder,
>> +                                                    crtc_state->port_cl=
ock,

Ah... Sorry, for some reason I did not scroll down for the rest of your
feedback.

>
>Alternatively you could just pass crtc_state. *shrug*.

Yeah, that makes a lot of sense. Will do that with v2.

>
>>                                                      &crtc_state->dpll_h=
w_state.cx0pll.c20) =3D=3D 0)
>>                          return 0;
>>          }
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers=
/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> index ab3ae110b68f..c1949aa1b909 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> @@ -280,6 +280,8 @@
>>  #define PHY_C20_B_TX_CNTX_CFG(i915, idx) \
>>                  ((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_TX_CNTX_CFG : _M=
TL_C20_B_TX_CNTX_CFG) - (idx))
>>  #define   C20_PHY_TX_RATE                REG_GENMASK(2, 0)
>> +#define   C20_PHY_TX_MISC_MASK                REG_GENMASK(7, 0)
>> +#define   C20_PHY_TX_MISC(val)                REG_FIELD_PREP16(C20_PHY_=
TX_MISC_MASK, (val))
>
>REG_FIELD_PREP16 should have a mask of REG_GENMASK16, and all the masks
>and fields and bits for a register should all use the same width.

Right... And it seems like there are other macros here that should also
be converted to the 16-bit variants... I guess an overhaul of this
header is warranted.

I'll go ahead and fix the ones specifically for TX_MISC and then do
separate patch as follow-up fixing widths.

Thanks!

--
Gustavo Sousa

>
>BR,
>Jani.
>
>
>> =20
>>  #define PHY_C20_A_CMN_CNTX_CFG(i915, idx) \
>>                  ((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_CMN_CNTX_CFG : _=
MTL_C20_A_CMN_CNTX_CFG) - (idx))
>
>--=20
>Jani Nikula, Intel
