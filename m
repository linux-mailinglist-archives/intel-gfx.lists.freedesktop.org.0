Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPnJC7PGzGn5WgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 09:18:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C17375B2C
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 09:18:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 329F210E0CC;
	Wed,  1 Apr 2026 07:18:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oEHUc5Vu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45AED10E0CC;
 Wed,  1 Apr 2026 07:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775027887; x=1806563887;
 h=date:from:to:cc:subject:message-id:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=IznemJok9JFORoAFO9iXYJjxe678WvFn8pL0NZot718=;
 b=oEHUc5VuNsGdE/0nt55RZIfen8C2tzvJRkVMg6JJ5x1ybKqDwQDbodSK
 M/H+HDfOdNHn5p+3nEcRypbgKe/KTvctLbNqiLcKw/uA2XovgpgimfRPY
 sqzOgApIELL+tIEYUBqcozj2L0gi90xvhj7oWV8SxRkOVt2qXioHJPkcI
 EhPaHBDfruah6a0CZ8J2hUknPOekIiqY65ELw5cALQAlufolnUbJK+oCu
 PpBPo3ZvWUaUSCXZ+VgCGbJJrZTR06kkmk1IRKY8DkDutVOc4o7Z38dUW
 CJmQkCD/WZIcqNkym4RfJtVjxkBWfU4qzB73MGijkLKpOy0DQ5nNTFzr+ A==;
X-CSE-ConnectionGUID: oBoPK6GCT0qE3tPZEAEAjg==
X-CSE-MsgGUID: 5P0ekzIASPCv6je0DRkF7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="93639408"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="93639408"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 00:18:07 -0700
X-CSE-ConnectionGUID: QRZy+R0jTTmugPzdUxVUnw==
X-CSE-MsgGUID: XjzFjwoPRga34uuoBoON9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="249812107"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 00:18:06 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 00:17:32 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 00:17:32 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.30) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 00:17:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V3XbY4WNYqFmIlQA0/FxehyOJnMrP9AClxZMzYaCsLK9ZFG8LY4kG5YLuBO1A+4E8L8SXGVEy3K9s3NDfN7PAjQ+gmIqfHppM96m6Yz1MNXZzHt8GtiFrbRTAC8Q9N89XcAZweJTg5qOz0OyCY/6q1Z3e5qGLnDDcTnM25TAkruHklzO4Q+k8IziY0cKWXaNfAGrxdRZBZHsFHMZZDlT/IX6i3vDhnTpx8ZRJhrZMhx/C/Kl2A7d4SFeQtxiIQSrFWLferH2Bluadk5S3nguX4YKifboW4v/IE/ZVNEdMLFYo9mif9Omc+8lL+vLd2WotEJsflHenuYM0cp68w8OYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LXN2MO9xUr70iljxJ0jJPNeEK5G0MyqlxVD5lYgpnwY=;
 b=hvucDOFICGdu96/JoMuOx6yI3vNcjKtO+L6V/ev3/3ST3+Jr0MsQfxZGOduvnVrpEayIaAuc75gW5x6RXC11wgco55JVqbraNPJChz73Hlp6egV9TsADSwFf79NIkdtsy9KoTTnI4194bvmF1JpPchTetG7PZ/E6wjQgGPx0hSIy7rOr/n3vovy0HKzKuPvtK1Vq+nKJ9UGvI9E742AfUt8px3g5P1fuNxkLu1fW0J1o3j0WDLmfXPjLaL6Fu5tKyTwXzUweCRQtCMV1bJf8XQ1gR9UmFO3jT+CnYRJnjcb3meFAvpW600EuYbfLAJQfwszFS1N6cFEovZWmVV6hPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2808.namprd11.prod.outlook.com (2603:10b6:a02:c8::26)
 by DM3PR11MB8684.namprd11.prod.outlook.com (2603:10b6:0:4a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Wed, 1 Apr
 2026 07:16:56 +0000
Received: from BYAPR11MB2808.namprd11.prod.outlook.com
 ([fe80::defa:788:da96:2f9a]) by BYAPR11MB2808.namprd11.prod.outlook.com
 ([fe80::defa:788:da96:2f9a%4]) with mapi id 15.20.9769.014; Wed, 1 Apr 2026
 07:16:56 +0000
Date: Wed, 1 Apr 2026 15:16:48 +0800
From: kernel test robot <lkp@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <oe-kbuild-all@lists.linux.dev>
Subject: Re: [PATCH v1 12/16] drm/i915/buf_trans: compute LT's VS/PE Override
 index
Message-ID: <aczGYNu+5KEQ5Q7U@rli9-mobl>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260331183332.1773886-13-michal.grzelak@intel.com>
X-ClientProxiedBy: SG2PR04CA0154.apcprd04.prod.outlook.com (2603:1096:4::16)
 To BYAPR11MB2808.namprd11.prod.outlook.com (2603:10b6:a02:c8::26)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2808:EE_|DM3PR11MB8684:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a985aab-9df4-4c0f-2365-08de8fbea81c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: 46vfa+bMnix3n4gHpfv45enJkrP0lQjhEdjGD6rxKu9PToTDaybD00jF56Ym3a+tQZHIJWLjQIyPlF8R8kiCFk/DMHJN6dVYNNiTbYmQwkiGYLqauI4t/fCR0/nzNMCiWmBpsX8fki4Iy+hJCkXGe1M5TvEKwazO3XHmP/KYw0OOlp45BPXZCKOa/v7JWm1HTHMRrClEddxuV7ZQ0ykTQbuHRuaz30+RvkC/Fgn1XkjZWgOxdOO0H0FzZy3Ziztw1BoXthAjSN2iq7Tm0ve0dI4SdF6IDXBlwtuM5XSjYgFdHvhsTWFdY3oP+Y21zIoN0cmkJtjHGaBC3uURSvxk58SxleprrzRhU2gkDVxvFz6wheUVhs9e9qMvetrQSxyJHNN9gVsEew5V9lx58BryHqLCupFfDr09k7bAYR4AWqQw6b4P3uEg/1Dl4jCK3jaTFeh1SCDQ4FzAPFAN28cRhwnxfpv2u6qVLF1QZ8oHlNVhYPhkumaQZntd3CNVJTqfAzL+gITjZNRpOGPAvH4nL3SUxZLLx0it9SqCqSA4JZG75FRYqUI5YULtZ5n0ibYFQE0Ac28fCtQOrLzpt/YMW90dhdlbq63CdScqr+cQOHm0jcdA4c+lJJOqCLIrJDZLlA2fkQZ1Ddzp8jx8WxmBsn3OAjJIssCQ8+OaEOJ4QHiG3pXoH6efWfv36O/d6x88
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2808.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S2hEQTdUV3oxMHlaWk83ZnBHVjFDZHNvQXBRbjlmcnFCbVBCSm5telExcG9r?=
 =?utf-8?B?bzB5Z0t5R2hCeERzNnJIbVRheEJ0Zk85SGo5cnVUaGc5bzFNR2ZiMjhNZHVS?=
 =?utf-8?B?b3ZYSDBZbDNsL0h5dXdtWWZqWUduLzUxcGNTUThMM3l1Tk1DZmFtVU9leUlN?=
 =?utf-8?B?RWZYSUFHUXJMeUlyMkRqMWNFWk9tYnhGVFVLWjVXVEFvWkJQaWNQbDM0U0Jt?=
 =?utf-8?B?RHd6YzBWMmFYb2RBSGlwakZtbWR1ZXN2ZFpJQ0JHcXlpSkluRmVxRHZYa3ps?=
 =?utf-8?B?WFcxOTdDeU1TdUdBMGZ4bThIL1YramNSNzNnWFVHSGRLRVFoUnNVcWRJZERy?=
 =?utf-8?B?YlB5S3pVVlJIZGVBVjdyTTgwNnc2QUV6ZkpOcWtqVlZKSGhtcEpLWG8wS2FB?=
 =?utf-8?B?WFNad01WajZUVFQ2em52TSs4dm5NeFErNndhZS83aEgxbThiVGVLMWlVeWxi?=
 =?utf-8?B?VE1tYlI4YTlqTGhyaXlNUmZXVDRvZ3lKMldvOHNIRjZiaVVFSG5pVFRRUFpE?=
 =?utf-8?B?UUE3ekU3OTlVbzFBWGNCMkQ5Sm96NmYzeEhNL0JsL25uVzdXcDBSUVd4MWlB?=
 =?utf-8?B?VEw0aWFjU210Wm9wOUVxQVRLZ1RqNDBQYlVaenBNM0hxWmRWNlpDTW1ISVky?=
 =?utf-8?B?bnZ4L0owdTZ3dE84RW16TUdPekROQllLdTBWU0grT3NERlh6VVhZbTZrVHNy?=
 =?utf-8?B?VThjbnkvVlQwQXlqQVVneW1JTGlHeGh2SXhXelVBN1lSN3BZNllLZm5TRUlz?=
 =?utf-8?B?RTZ1QVJWenlNd1FjRGRpU05nQXExd0ROZ2JYTWVMckhXQjZDcmtmMFR0T3Na?=
 =?utf-8?B?Nmo0clFONGxmNlJ1Z1FZbUJvOVpiK2l5S1ovOFBLSnA3VEowYkN0Zjk2S3lY?=
 =?utf-8?B?MGxnQXVjYy9DbUpzNlJDWlJrV21YdmdsSUZES0wreEhMRFJsMlg2RGVBWEZQ?=
 =?utf-8?B?NG9tRlh1RVBDbW1QbjBVS05hK3YwT0FONEoxRnRXZXg3YmZnNjJEYjlsazBE?=
 =?utf-8?B?cW1tbUpCazF5RFdQUDgxUEtjcVpLNXFsbytvVFFuRkowcEtrNjZWUjRVSE45?=
 =?utf-8?B?ZFR4WThpUW90SmN5ZVBBUmJtczlNZlBNbEFMZnhkb0ZMYm9ReWpqc3Q1OXJC?=
 =?utf-8?B?eEkvazN6MjZjNDlqb2RnSWpTaW1nbHVuNDRETnppQUpRTnN6WUJkdXo2dU5X?=
 =?utf-8?B?bGNwcDEvNXg4Wkhqd2F1cHZCOEdxQTBhT2VtY1g0djJSSktrQjJoRWlvLzhj?=
 =?utf-8?B?WG94OEhLdlJjdVhZYVAxSTNWMC92M1FDOTEyclpNRzFGTUJRVDF3Tmd1YlZm?=
 =?utf-8?B?UUI5cE5KZlNCSit1SFRjSmdyeGc1YjVoWkJUNFlOZXl0S0U5VkIrRHAzQnB2?=
 =?utf-8?B?YjJzRWhrNE5EWUluQ2hvOUNoT0QreDlpTVhGb3dYMGlrV0tOQkIzN0QwN21U?=
 =?utf-8?B?aWRZSnBPNlE1V2VVall1a1NYNk9BdTNzMjFNNVQ2R3d0YkExNE1YU0RBa08y?=
 =?utf-8?B?UDFkUWoxdTN3NEx1N3ArcjJQMDFxdnFvQkUrcG9RdkJQQ1JyVys3cjh0WGpT?=
 =?utf-8?B?UTJ3ZjBiS2xCWEtkUWRrY09UVG12aHRQUVNyNmlSMDRuaUVNVjNVblM1OWJI?=
 =?utf-8?B?b2V6ZFMvS1NQZDkvclUwNGtPQm8yeFVRMGlGUUZHL3JZaUp4K0w3aFVVYU0y?=
 =?utf-8?B?Q0ltM2dCMkhjT3lqbmdXN0wyRXRmTVpqdFBVVEplcFVnck1NeDZ4Qlpvb3Z6?=
 =?utf-8?B?Wm9rVlRWNWt6TnBmMHA0ZUNOMWRnRGpVdDBhT3VTM1dhR3NsYlk2bFZnNEdw?=
 =?utf-8?B?YVd5S0UxNE1CTlpwMWt0NmMrTzBQN3M2SHJHWGp2SEZEZUJpWmtseC9vMDJT?=
 =?utf-8?B?UEdXTUZJcmtGeDkxb2M1WUhVdDB5UEdUOWgxcGpOMGJudjJTSWU1anNMUUtI?=
 =?utf-8?B?d0QrVlZYUTZuSE5uaUoxT0tkOFpTUFpROXZOVmx6K2JHMEdhdG1Da3hnUGJ1?=
 =?utf-8?B?U1BSaForaXlvdGRlTDNIVXl0MDIvTzF0U29QdHAva2VXcEdNVWsybWluOFFW?=
 =?utf-8?B?bEplZWo4ZXFlRmlGcWV5QWNESlpvT1dmNzQvY0NNa1NQS0JKMUdsR25DdmdY?=
 =?utf-8?B?emdCM0M1QVNSc1RrODB2cTM0MHA5WHJtV1pRTDg3b0Jmc2d3SnlkV25ibnBr?=
 =?utf-8?B?M0dKUVJzTXQzbjcybm12TTZxVGtoN29WdDBxK1lZZk12dGlkbWRyU3d4MjZ4?=
 =?utf-8?B?SlN1MVJMRUJiZ2doNXRldmd1LzF4dXZRNWU0RUdSa0s5Q3BzVExQUHp5Tysw?=
 =?utf-8?B?SnpRQzdLUld3b3dnbGgrckNqbkNvaEZra0F3TjVRV1hOK2tBWEZsdz09?=
X-Exchange-RoutingPolicyChecked: tEMMv3KyRpQWU15+NRqo4QJKJoeb9v7sUv/xhLj4PXzt8XKvMXt/O+Roavo1DJTpewJGqKs7Q3hdDnXqACBrVvtVSJ77OUpqL9fVc0LOBrdITvlMJS6Nx1QXxtUmSqIIqK7eRCroTQcGl21n+tJn/Mp99oEQGFHSppmPql4TiiUe4V+kiJpZBNZgisVOxwkxSkmbbdY+wwYFn/I2XGbj82oM3fD5o4k66yUpLbHGDI/90fFgnEi4i0mwnHA8OHMJqrJr6CUKWYTupMos0s8P5diwxUZOmflUSarEUeGSRwRLQbOje3emq6ikpCOEGa4i9QPEYH+jf/EHMQFcd+E5sQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a985aab-9df4-4c0f-2365-08de8fbea81c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2808.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2026 07:16:56.3666 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JgBolBaOMfUlOcd9QJI756nQvxkDfiPj1NOaunDp2VcQXvW8U/EQzPER5bNPJzBgisbYQ3gXUQZhvLR4o30w8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8684
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,01.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 99C17375B2C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Michał,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-i915/for-linux-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Micha-Grzelak/drm-i915-lt-align-xe3plpd-with-VS-PE-Override-layout/20260401-092928
base:   https://gitlab.freedesktop.org/drm/i915/kernel.git for-linux-next
patch link:    https://lore.kernel.org/r/20260331183332.1773886-13-michal.grzelak%40intel.com
patch subject: [PATCH v1 12/16] drm/i915/buf_trans: compute LT's VS/PE Override index
reproduce: (https://download.01.org/0day-ci/archive/20260401/202604010401.ywwXdvN6-lkp@intel.com/reproduce)

# many are suggestions rather than must-fix

WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#34: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1796:
+                 /* FIXME need to check correct parsing & table index should
+                 * this ever trigger.

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

