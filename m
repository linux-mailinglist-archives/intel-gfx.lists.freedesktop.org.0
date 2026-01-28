Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yEGOHCWVemmC8AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 00:00:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E37A9CFC
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 00:00:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C018010E774;
	Wed, 28 Jan 2026 23:00:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OTqEB9Au";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C1B710E774;
 Wed, 28 Jan 2026 23:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769641249; x=1801177249;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=85Og1wZqJ88dGn4zOAFzZZkhr8paogiVAedEyEL1a40=;
 b=OTqEB9AuAA7ehK67q+ZaWzJU88ZTVF04Kpj5JFW08laFS7A4IrGs2Gyc
 67HGtlOzvxxCs1719798+3MPYNZDjLE768+RIhd3z5s0KjKeXG6JtY+xI
 tXRkPuIcqxdcAeIi+dB9QnGLnF9NC7wxDFzJct9rgksnqanznPkHTzyzW
 b/fQCP/LIeLhEILxgi+Df3XEP1d3KU/0MlSIu9DPX4xUtmAAV/BFTuVBQ
 wF5MHA6tlleiq79WYez18Sjap4obw3dAtzEouIjdpx/mEm7KxY178bPdF
 7+sgx2+lQnCdVK+JOIp58rJJ2zMqfoHkAiTMueIQdf12Nc3wTpPsZCNUR g==;
X-CSE-ConnectionGUID: Z5JwwyeHQAyt6soVSibc+A==
X-CSE-MsgGUID: TrY6Q57jQDOveUtar63izg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="82237449"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="82237449"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 15:00:44 -0800
X-CSE-ConnectionGUID: JSSUwY6nR6q8U3RD/Y0IQw==
X-CSE-MsgGUID: yrdaBED8TPWthUiBkCVDlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="212944194"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 15:00:44 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 15:00:43 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 15:00:43 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.40) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 15:00:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F4TvsfgXT1/x4V1DT0GdStAH5autopRiZ7bAt6C3Y0RJZ4dKLGIpabHer1XghKEpmfMX5LuHtEbw67RDrMrRRi4uGJokGxT0nFaCunN+ShimV7ASpjdBdb78e3Elcbqp58ybLweGMYNo68xsLQtOSIwgbPXOihkoPU/drjjnjDHBc2FDuV3Zr7z9SO8Q/lZ9un7aTRD6Ajb4T16xrxsnkLd6rFO+l4GA6HFQ+0fwQcHlprwFaDwRo1fhW9ONuVjQ9vJzPlrsEsMCLZtBtJjFK389eqiyA+KGxFJf8a4Q8IARwCVaakBNgZVaCkgA0oumfQ8WL3idvlgCUVcPwOn5Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d2c/Z0tQKtPwYYAHcTrHGvqv5ZhT3Pp2BemE5bQx0QU=;
 b=M9lGMmXLPzRiM/72zCehFFkpqfmUClFfEYRmRQYXguTqzeif+xcXW5KI8xOhNsnB3Ti3lgy2MHLgCd5X55xbv7gm7AYyoO0fuvz4TOMI/PaqnyYrFK4dX5KuPPiNYIQKMzh7bfg1yMYkjTpC5jZ/6xm30jC+BfSY2qlW5+GbPtWke0GYJic4mSryl3v9WX9DC+ZMJlAu9ds4mn5X6SpsZwLEfuiyBpL2ascZpnj/c3fy59pHuQr9GWckD5knI3hIC9T2zEQscgN1abrgg8rg2zhGcFWHTGf55wrXGm/Dn1hE3M4jM9iceGvdBCXhfTMSouK7iCVyF//XF5/CQVfaHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4834.namprd11.prod.outlook.com (2603:10b6:303:90::20)
 by DM3PPF01A5BE19B.namprd11.prod.outlook.com (2603:10b6:f:fc00::f04)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.16; Wed, 28 Jan
 2026 23:00:39 +0000
Received: from CO1PR11MB4834.namprd11.prod.outlook.com
 ([fe80::f196:d72d:beb9:710e]) by CO1PR11MB4834.namprd11.prod.outlook.com
 ([fe80::f196:d72d:beb9:710e%7]) with mapi id 15.20.9564.006; Wed, 28 Jan 2026
 23:00:38 +0000
Date: Thu, 29 Jan 2026 01:00:34 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 14/16] drm/i915/dp: Add helpers for joiner candidate loops
Message-ID: <aXqVEocl4wpRCz51@ideak-desk.lan>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
 <20260128140636.3527799-15-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260128140636.3527799-15-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0029.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:276::6) To CO1PR11MB4834.namprd11.prod.outlook.com
 (2603:10b6:303:90::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4834:EE_|DM3PPF01A5BE19B:EE_
X-MS-Office365-Filtering-Correlation-Id: cdcd2b2e-1cd8-441c-2c8c-08de5ec10dd6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?a43FXboQgvZc6f/TQF6Ju6PtQnutszbEufMGJ3httYpT5KmKopV7QYB1YSj8?=
 =?us-ascii?Q?ZsaObAep9n2LWXTMQDqDq/SfFnCGySQZzG+y6cr2un7RA8UhEduSfm9ZzkU+?=
 =?us-ascii?Q?L3jN68HUcYIgi5XXJtOvj83pErqnSIfq4pWBAs3KLc2/H+aXVw5twsBi2M6h?=
 =?us-ascii?Q?NDfGi77qLuySvVDm4H23l7y6tFamO0NYYZsGHqdSLye8jyv4zUyPx6CGHxyW?=
 =?us-ascii?Q?G32t7j3XA3zm//+c2KJoWFvEpE7eCgWzXp8ewjTWyPoomnv7RLbg+TW2+ru5?=
 =?us-ascii?Q?ZwdzSV/XLk0iF7TBmAdQlXiCphRlw8Tt3gVSoAZ1YUvSdOgmf1BiHN6hgrDY?=
 =?us-ascii?Q?hpPcI+w6ta3t2T5i13j4DIWJJaGZFsGR6M1VH9V/kTH9fk0qLTxcARLNDLM+?=
 =?us-ascii?Q?ubgX4OiI6QuLSWLoM3289nOKmXJ6QAVp0fGWfxpDQimbzhW0H4ENrMukY2SJ?=
 =?us-ascii?Q?hwycfvQd4Zk1cPjkVwjNMaAIbGF5yhnE9o/AkmZ10uben5W5JLJNAxuK/AuS?=
 =?us-ascii?Q?uMYei4ErqNEVBuAd3WUHniehZKkYR0zpyALLCNW19hBSigTQl3u78FbbGDdW?=
 =?us-ascii?Q?UMM70vP9W1hm04/577N5fv+w63n/laUcKojqPMRRDSKyvYNewzWM/OCqpcY5?=
 =?us-ascii?Q?MElxGdYKxAIKzGTHsf4fCBFpysUmKpRpdSKJV8oyg5pK3NbP6nmkO2kG4JKH?=
 =?us-ascii?Q?YMiqgio/aLqTE0CVh1+yS/uo+b2tGT7e3XlQvB+NtHRttlVg+E9uXuQg0W/r?=
 =?us-ascii?Q?OgeckxUPn0HLFYuOT1fp/V8SQgUphGAWexMqKUjvLD3UkoxbiEDa/J7IgQWT?=
 =?us-ascii?Q?E3ABFI62XwkiaMBswWYFBAH3HFLR4P9qmA03RdCkygIkJYPxCB4eUICn0fkK?=
 =?us-ascii?Q?VTlp4/BtP/ZOC7mvRpH8DZ0shrFgYLrIoCdYqOogbERUVSCd8M9Cwxf1q/iC?=
 =?us-ascii?Q?bR5wdf6ZaFe0tY8mUOJ46XDlpGcBB0PgBUnxBvPzYkFWnWJ8+UjdN0Y4LYCF?=
 =?us-ascii?Q?pLeW79mqQmc7mrlq3jnA3AtRjjWkqDJiGYfWLqdxgviflPKHoZBAiFEZy6Cs?=
 =?us-ascii?Q?LqikJ0aQqLBWC9tslmZ0Xhl4vOQkx3D7oDkyefmwTEf3jbyeiReSFN5hTc5+?=
 =?us-ascii?Q?zMhPJq6s/IIpFp52BTloPCEstNAWwR49xcZmljWxv+EkRLTdiHdVb2EBfsTB?=
 =?us-ascii?Q?NdW4QbItojuzL6UL1VBt5rQUF7j1y9vZzhyVutm2JZ6oGElt3XpS8yss6RGh?=
 =?us-ascii?Q?MDvX3FYjOjl4B+Xdglenqx1t/i7ezndmyzyChTi7NQoCL1wcJYOvG3D+BgCn?=
 =?us-ascii?Q?uxcK3i/5dVOYTEP3zqzN+L9nmNqHUSDp2XzQlMgUOt8h/Z8Iv0mmv8SGhE8v?=
 =?us-ascii?Q?wMLchXZ/yZ7zSA5o3fqio8B5WwVFHe0v9iOy6gD9cuM94kkttXelh1cNeWrH?=
 =?us-ascii?Q?COtPc5ZrFtYCink0MihF9kAuxA+eSh4JWsqVaJpjafxZ3Sl7Zq3Va2WnNazn?=
 =?us-ascii?Q?AKPIdxvZXITiUFnqy/thhkUfbF5VHrmn+yKvF+qRWuJf/wUhbIlIZ6MSogtl?=
 =?us-ascii?Q?KCgav8uzmNPCc2FNkYs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4834.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6xPqpoPtUNZ3b1TPvnq9ZsEplHQJjWLQiY4WYr2UmNp62H6cnox0B/DzyKH+?=
 =?us-ascii?Q?dceBLY4dG7KYMAsG/fzrjvxdSvTOyG6DD28EzkeEBDsbor+6XAKD0UO5rqZX?=
 =?us-ascii?Q?mPb8Fe2ic0WFmvBktbJbd7ur7iYnrxR60irGvXvkzbK82k4lEx81M2a8f3wY?=
 =?us-ascii?Q?R2o7dAznm1b76tGCqQrCZ+HzSpQQspSe/zDQ7rM5F55lW39r3mDlMAs9Hcul?=
 =?us-ascii?Q?ldcjI8AL1pq46JyGl0hZJnccfuHSQQnsW1ZxP13NpCH8orVm//t0Kgtkguo+?=
 =?us-ascii?Q?4jiPl3ipEKw3CbyUf6v7Bw5viBnGLrasxeKLW9BU7dcXwdDWM9LNdb3q6gwR?=
 =?us-ascii?Q?ViHAssHXRG21rxKUAjh5UxFUBoDNrZbOEMLsR7EbHSJieHN/6i8gYB8/hOem?=
 =?us-ascii?Q?gAhCovZn51jXQeoijRsa3FL8GD72a0UrcM0NESV+bE1SHqu1GTpTbWEKTCMI?=
 =?us-ascii?Q?zlgzIdUIfssw2PEuwuoTNXmo0e7Rdki3JytY0wp8hCcSyKTvGF9Iup+UdYXC?=
 =?us-ascii?Q?C8dOrGoZ4eT/jGMMOJNHWYNBRsAQi4R3m7QIeh1Okun3WHQJj48yN90Z8Fb+?=
 =?us-ascii?Q?Xw1kl2LaCvqHKiEjODwicWgEWD1/SiYvoNIbXPzQQXljIgtAbzHRQ0Y2mFNT?=
 =?us-ascii?Q?xKPva6j4veatblGbBVA0jstJNDxY239DO78cUoPCZQ2aivKsK1J1jlUvJsV6?=
 =?us-ascii?Q?VrpAvKZXGcujDm3nasq15VYlAfBxrSLHhAivLeruc7ohgCwTwJsEX3MNT5Fb?=
 =?us-ascii?Q?n3eo9DBEKmFUAZ2onmDNP9RrnpxHEWsk2sJwGnxPFxMJHJyDrGG7X067XOQm?=
 =?us-ascii?Q?RWfANzwIb5yNPOHZVy5cTey+qIcHtIJOtEok/zZbcvKjk9+1DuWVvX5FaiuM?=
 =?us-ascii?Q?MMPtRozA6zRkEeaqRZfkwGaN/TSOIDa3M1eqTt8k4ikTlGmloIeQceDgE4lr?=
 =?us-ascii?Q?HbjS6aBWarAAeMHsP05NIImWE7JNZoYKFwlnEUbvBNew+jdgtyVmG9ZIUTKz?=
 =?us-ascii?Q?9mdceitdJth+5rhVc/qX3nzQXndO/bXleeZXwywJ8Ael/ZKIrJ0wEOSq30Th?=
 =?us-ascii?Q?VB1TVFEUNkO4kWe21ktHoI0mSrPjkaptRGb7Vb8MOj7XD5xcV805h9zdhuJU?=
 =?us-ascii?Q?mhJNQr39ITYmBWOhnkQIxkU+u+G8d9Lkob/7RSxa2tyFsPqgStmCkS+45mnv?=
 =?us-ascii?Q?mhgo1v4jTg8kXH4ifB4seWq0eZZaUi0tJOYtLuCWWS6mt+gvLGkDO86xazzS?=
 =?us-ascii?Q?X7EWPmY8aAc53Q3kuYylG1xoCnJzLEuJX6IPASlFDdNBuivfrELjGXebEFYJ?=
 =?us-ascii?Q?nwSjsCgV4obP9Cl8VbB8OpAU5SvmSB+MGUKj3po4HlFU83OwdIczPJzHmwy0?=
 =?us-ascii?Q?+ej0jem/0nmP7QT/ao0iPBn/SbfDedgs/82V6UTx4sbt7p0g07/6dH9dtuF5?=
 =?us-ascii?Q?SYcQJjYI7+bS9Etam+apexkPEV0mBL96GNDuyNx+SspoPG5CSu9f3ZeMfLjj?=
 =?us-ascii?Q?pufNEbW5RRvyi8SWH0nwoi0fXKkU/kXp+nhmrAZ5q926is0fJQCNtTUZn2GM?=
 =?us-ascii?Q?ZO6RFWYDnfUy5XD4ZEH/jIjx7Jgnz/SjbyCUWjVXzN9uI37u3IJaAPsphG2/?=
 =?us-ascii?Q?2JCMGitNGwIzwoh7VUvfBSxGbYYXq8/zNnWwMGtsiOJM/cviSbRB04Ol7k5s?=
 =?us-ascii?Q?nbW+j6MOhB5dFSdDRAjnPCmmoK8etEuYvzZZ3NFyq+0yDRjqx243hBX59iNv?=
 =?us-ascii?Q?TXnBho50nQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cdcd2b2e-1cd8-441c-2c8c-08de5ec10dd6
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4834.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 23:00:38.8622 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xK1TQpoUxNIWgKnBE6zUif7f26e69iof70ahOEOnHW/SiZX9tvZS8KU/peNmeA5QCRmgW0T0GeyKfmou5IXS5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF01A5BE19B
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	NEURAL_HAM(-0.00)[-1.000];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 60E37A9CFC
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 07:36:34PM +0530, Ankit Nautiyal wrote:
> Introduce for_each_joiner_candidate(), intel_dp_pick_joiner_candidate() and
> intel_dp_joiner_candidate_valid() to remove duplicated joiner enumeration
> and validity checks across DP SST and MST paths.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 37 ++++++++-------------
>  drivers/gpu/drm/i915/display/intel_dp.h     | 31 +++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 37 ++++++++-------------
>  3 files changed, 59 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index c1ff92367808..9eba8f90bc90 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1529,23 +1529,19 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	 * Because of this dependency cycle, the only correct approach is to iterate
>  	 * over candidate pipe counts and evaluate each combination.
>  	 */
> -	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
> +	for_each_joiner_candidate(num_pipes) {
>  		int dsc_slice_count = 0;
>  
>  		status = MODE_CLOCK_HIGH;
>  
> -		if (num_pipes == 0) {
> -			if (!connector->force_joined_pipes)
> -				continue;
> -			num_joined_pipes = connector->force_joined_pipes;
> -		} else {
> -			num_joined_pipes = num_pipes;
> -		}
> -
> -		if (!intel_dp_can_join(display, num_joined_pipes))
> +		if (!intel_dp_pick_joiner_candidate(num_pipes,
> +						    connector->force_joined_pipes,
> +						    &num_joined_pipes))
>  			continue;
>  
> -		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> +		if (!intel_dp_joiner_candidate_valid(display,
> +						     mode->hdisplay,
> +						     num_joined_pipes))
>  			continue;

By not allowing to fallback from a forced joined-pipe to a non-forced
one as mentioned earlier (and so you'd iterate num_pipes = 1 ..
I915_MAX_PIPES - 1) you could fold all the above into a
for_each_joiner_candidate(connector, mode, num_pipes) helper and with
that yes, the iterator would make sense simplifying things a lot.

>  
>  		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
> @@ -2938,20 +2934,15 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
>  		return -EINVAL;
>  
> -	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
> -		if (num_pipes == 0) {
> -			if (!connector->force_joined_pipes)
> -				continue;
> -			num_joined_pipes = connector->force_joined_pipes;
> -		} else {
> -			num_joined_pipes = num_pipes;
> -		}
> -
> -		if (!intel_dp_can_join(display, num_joined_pipes))
> +	for_each_joiner_candidate(num_pipes) {
> +		if (!intel_dp_pick_joiner_candidate(num_pipes,
> +						    connector->force_joined_pipes,
> +						    &num_joined_pipes))
>  			continue;
>  
> -		if (adjusted_mode->hdisplay >
> -		    num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> +		if (!intel_dp_joiner_candidate_valid(display,
> +						     adjusted_mode->hdisplay,
> +						     num_joined_pipes))
>  			continue;
>  
>  		/*
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index beef480b7672..111a5d4b3992 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -234,4 +234,35 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
>  			   int dsc_slice_count,
>  			   int num_joined_pipes);
>  
> +#define for_each_joiner_candidate(__num_pipes) \
> +	for ((__num_pipes) = 0; (__num_pipes) < (I915_MAX_PIPES); (__num_pipes)++)
> +
> +static inline bool intel_dp_pick_joiner_candidate(int num_pipes,
> +						  int force_joined_pipes,
> +						  int *num_joined_pipes)
> +{
> +	if (num_pipes == 0) {
> +		if (!force_joined_pipes)
> +			return false;
> +		*num_joined_pipes = force_joined_pipes;
> +	} else {
> +		*num_joined_pipes = num_pipes;
> +	}
> +
> +	return true;
> +}
> +
> +static inline bool intel_dp_joiner_candidate_valid(struct intel_display *display,
> +						   int hdisplay,
> +						   int num_joined_pipes)
> +{
> +	if (!intel_dp_can_join(display, num_joined_pipes))
> +		return false;
> +
> +	if (hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> +		return false;
> +
> +	return true;
> +}
> +
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index bdf2f09fa03e..005efcb5d2bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -701,24 +701,19 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->has_pch_encoder = false;
>  
> -	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
> +	for_each_joiner_candidate(num_pipes) {
>  		int dsc_slice_count = 0;
>  
>  		ret = -EINVAL;
>  
> -		if (num_pipes == 0) {
> -			if (!connector->force_joined_pipes)
> -				continue;
> -			num_joined_pipes = connector->force_joined_pipes;
> -		} else {
> -			num_joined_pipes = num_pipes;
> -		}
> -
> -		if (!intel_dp_can_join(display, num_joined_pipes))
> +		if (!intel_dp_pick_joiner_candidate(num_pipes,
> +						    connector->force_joined_pipes,
> +						    &num_joined_pipes))
>  			continue;
>  
> -		if (adjusted_mode->hdisplay >
> -		    num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> +		if (!intel_dp_joiner_candidate_valid(display,
> +						     adjusted_mode->hdisplay,
> +						     num_joined_pipes))
>  			continue;
>  
>  		if (num_joined_pipes > 1)
> @@ -1535,23 +1530,19 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  		return 0;
>  	}
>  
> -	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
> +	for_each_joiner_candidate(num_pipes) {
>  		int dsc_slice_count = 0;
>  
>  		*status = MODE_CLOCK_HIGH;
>  
> -		if (num_pipes == 0) {
> -			if (!connector->force_joined_pipes)
> -				continue;
> -			num_joined_pipes = connector->force_joined_pipes;
> -		} else {
> -			num_joined_pipes = num_pipes;
> -		}
> -
> -		if (!intel_dp_can_join(display, num_joined_pipes))
> +		if (!intel_dp_pick_joiner_candidate(num_pipes,
> +						    connector->force_joined_pipes,
> +						    &num_joined_pipes))
>  			continue;
>  
> -		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> +		if (!intel_dp_joiner_candidate_valid(display,
> +						     mode->hdisplay,
> +						     num_joined_pipes))
>  			continue;
>  
>  		if (intel_dp_has_dsc(connector) &&
> -- 
> 2.45.2
> 
