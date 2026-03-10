Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aL4aFFrNr2nWcAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 08:50:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8F4246A14
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 08:50:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16FF410E663;
	Tue, 10 Mar 2026 07:50:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dik3qULE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0727910E663
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2026 07:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773129046; x=1804665046;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=z1IsS12/cXUcSzSYkzgCtfehTOZdp9Dde6J1sC+DiHk=;
 b=dik3qULE5DjcSLs5XPq5h+snSJ/Xzh06pdF703VrVNBrJ7GowzhlfUQn
 +rGdQ+rAzkVkdmOu1eTiODlyPQ6qOOKRTDtLiOLbV8KWeOX58l7CxDIJw
 UOILS9vrVd5DMF38tF2HzP2AooIMl+B/JMQzAgJLXr6u/Ydubmpz6fhER
 +Iws+jbjD86gWxxq5nelTJqdL4L92oEPIolY88UbEIpsOZ3vh8h/1HHdI
 IUMdnoN85iz4xpktwb7Q9UPLQZI8OShLsA9GP+zVJVSZJV/5SSASoyB8s
 MGsqIqSRxQrU3CKXpEoULt0r2/BVn9el+Mt3PZajb346kWPOH2ij2TWYD w==;
X-CSE-ConnectionGUID: wTSAuLKDQQSzlboeJEaM5g==
X-CSE-MsgGUID: yFya4vFsT4qeXdywLd3xRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="76773682"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="76773682"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 00:50:46 -0700
X-CSE-ConnectionGUID: UpwwRLX5SFiATUWdAe/TqA==
X-CSE-MsgGUID: pjtWjolzT5qzlNUTPxyT3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="217573335"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 00:50:45 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 00:50:45 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 00:50:45 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.12) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 00:50:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fjwD2dBXH+J9uVuPS1STdUXaSaR35ZN5d0MXd4TgfJozQP7G1KKT1sL07kUASfrK/X4zjMFm6q0zgnnFAoK8Y5dZF2CIauohHbTP2SqRq8ZQ2VEL9Lsd2iz8CDV4uyjsfIOeo1u4DpnEdVgNsPrGcNqijDVyv1OtAc8oDDemPHMixdkaidQ3ICApoKI5ZQtSm5bCfFSurrvcMDCq4vqsnQ26v8AvO2eXU2wXwoov5zJqxtAlAgMRQgtINCo7w89h7rqsEYd0clODX7uxEklFTAnR70vgH5LzyJoPCxJDptxS6L3Kn7AjoW0eUsbUtfrUaKjikn6xI6aHrdPBxPCewA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zIawRW8tZPZoxE7ClI7V3389ll0AbbPeYxzyUKK9SRw=;
 b=IMc1/04Y7tKwru9yH/oDliVTlFdcQ3wAa/3LmxzMB7EpyHo4HHsB7UBPdSTPHKOJW1xWFQblFV7YPpYXN/uEpk5x1KpH8CB9JbXWplOIcLwiCj8+4Dh+1CxK47+0sgH+PEeuMRdWtvUI97r42Vhb6gJMjfN8kkL031cqoPSjn51AQ+M52tnZxqzpeqebbN7KLUyJ97qo7fOT3DKuL1enKJFXSDmiEbQIbP5Dgp7hD+Ps/Kd/VtBZcAvpaSt+N+xljlOwWo1r6JBW63OaIk5T9EosGRMMVes75FjFZWH+mVWzdFShgbMIhxSx2kIMPkC8WXtnzHLsTxJiB2ki5YX6eQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SN7PR11MB6558.namprd11.prod.outlook.com (2603:10b6:806:26e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 07:50:36 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9700.010; Tue, 10 Mar 2026
 07:50:36 +0000
Date: Tue, 10 Mar 2026 07:50:23 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Jia Yao <jia.yao@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Alex Zuo <alex.zuo@intel.com>,
 Shuicheng Lin <shuicheng.lin@intel.com>, Xin Wang <x.wang@intel.com>,
 <stable@vger.kernel.org>, Matt Roper <matthew.d.roper@intel.com>, "Rodrigo
 Vivi" <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2] drm/i915/dg2: Update workaround 22013059131
Message-ID: <s4kicajj5thdyy3nt6xyeh65wosazb6xc2tee6m5nz7ztcnmp7@3qetjgyntneb>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260304171226.43208-1-jia.yao@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260304171226.43208-1-jia.yao@intel.com>
X-ClientProxiedBy: DUZP191CA0019.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f9::29) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SN7PR11MB6558:EE_
X-MS-Office365-Filtering-Correlation-Id: b78091c2-df8c-4ce1-2e86-08de7e79b6fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: NPJc9dv14H2Jh1WbHkOmTm/Uvbj4rNKhaMGrK2v5wcB2nu4xuYdaM2zkRUyCzK3FlbVwzSy1RHdXQD+sS8/fAaK8Q4aB/Djfl8bwLELVDkFIhjM5yuW5H0MbxwUVuJWdxwelQsOSCBptQ+cptGjQI/yDexH3lUUUHPDmWyvHK6QYjZuzgEy9Lp83J8GxsY+m0Aufs226JiawqK+Kf9YdEHRLyIGkZVVkXglbBUgYcyR/RG+R7GOs+WgxQqRCYwVhQd0WLnVfwS2f+P6OLIy4J50pt8idARbVYqdQufo6lpuiiLK0XnKIoSOqNs1UKvsoXZ5LDK69TXfnFsePI6UmNZYsr7yaiulNGEyDY6YCwlGVyLluN+Wlb+sWgC36S2GbKTLg9x812qtPPawsUflssb97nuW6ktyoby2hzTKU3Lfkci/wkc0heJaAylfdJmYhW916FqB2eueHXxYRyrLME/P5SxNLlHQa2+6tJCMcvwRYuZv7zXxFI1nYwc3pn5+oSmkVinQ4+tYy5chQvmEebFv1asy8K1EUL9xfTug4HafMr4fQ4zVj31bkP32xsBwV3q1Moxi9MHgyqd4Phq0DNhSteyPRYLF6YvFpK5EWA5f7cft1dnm7Lvkcnn7TgJ7uZV1UK3Er6ZlczqPEuaEdbkDT5+l/+c73e3EBemNJZ015uwOlaOnALcZYE+CrO86UKbupn5PciKiHR3c6RRagUaoEyOWgrS79mM43b0APKPU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ak1wVE5YbWF0WUpLN2ZVNTRUWXFSOWdreGRQYVNHVmlaak5xY2hRb0luZlRa?=
 =?utf-8?B?bVhpM1VmOWx6YUtEajNMT3pOOEJzU1BZSnFGWFlBYVk1ejVqejFvRmNEaVhy?=
 =?utf-8?B?QmUxNzBySXFDWXdOQUJBN20yVy9TNkZWY3YyVitKYUJQcEJEV1JoRE8wdER4?=
 =?utf-8?B?aVB2MzdVOU9XWFVCQWxpQzZZVEZEaGVEdWlTeis2QmhzR0drMk5zUEViQmxE?=
 =?utf-8?B?K1BMWGI5eFd0c1VSNytOYm5GRmI0MGk4VjF3MnpIbmlCTHlUVkdDeHJtWjFI?=
 =?utf-8?B?eDVDYzkwNEh1ZlZPMkhmTEU1cjFpN2VzVlI4bllDMmxicW96ay9xMWRCY3RU?=
 =?utf-8?B?RVl6SkpMRU5VQlZrcXRMS2h3dUJkZndXK1ZtcDRFbU5hQnUrN253RkZDZHBs?=
 =?utf-8?B?UExYUFhlUjY0VGE5ZW16Uk1icEhVd3VRckRKVUgzS3lUaHEyOHI0VGV6REZw?=
 =?utf-8?B?Z3B0NmIrVzc1QW9ZNEZEeEMrMTU4N1pUWXNnV3BCcU5za2RVb1BzREZIY0lP?=
 =?utf-8?B?NHltajdwODhWUnpGVmxYWU1ZUDRMOWJ4OVN0SVFlM2ZBQ2drNWM1ZThXUzlj?=
 =?utf-8?B?aVovc0hQWmlOeVd6UnhWaEMvRlFJamxGbm9sS2hYaTVmQ3VPb2hHbGZCbzBW?=
 =?utf-8?B?N0htWVFKSmxGb2lWdHoybGlBK2lvRG1zTVpYVVFKWFNFSXkxTWFyVjB2VCtl?=
 =?utf-8?B?VVFXZWRMYVZ3ZHMxRGxraEc0bHVna3lDVEdIQ1I2Y0JwMWdTUStYMmphT1c2?=
 =?utf-8?B?OUErTjg5WXkzS1Z6SjdobXVwSDE0T1dUM3FrR2hPKzQ1cFBsM0pIckpjRDBi?=
 =?utf-8?B?Y3JCbWZFTEZ1UDI3UTNEbU1wWS9sbURRcnl6eGc2S2xuVTRSVlVNWXJIamhx?=
 =?utf-8?B?bzc1OFFNMjJnMSs4L0pJQytqaHh2MmtBTEhkNGV4Tm5qNkFHKzNhUkdCdHRx?=
 =?utf-8?B?eHRGR3pKSytUK3ZrQzNHTGZnMzc1ZzAwN2V3OGxCSnhlNjFHdUhsMkR6STVG?=
 =?utf-8?B?TmNHMG5HcnNVTVBLb0hYR2pNcitwOHJiek11eGwxZ0J0TVlOUVp2TExyMzlQ?=
 =?utf-8?B?NFFoWVprekU3L0NocUlYc0VFbWJha3kxWUdKZXYrZHlYRnVMZHBhUGJmRGdz?=
 =?utf-8?B?LytoMWpmd2pBc0o2Y1BhaXlZM0xTVG9EOWxkVlc1NVZxVGJhZVRyVlcwUEN0?=
 =?utf-8?B?RldJRTZ6alRlL0t1S3FwanM0a0hkM1NzYTRrb20vbkZBMG9sSmxFbjJYOSs4?=
 =?utf-8?B?M1RXbzhhUkxZaVhrVC9qYU9RVzlZOEpFRE9wdCtRc1hXNzhjUGw2aStlYXdR?=
 =?utf-8?B?STRrclM0b3RGRGladFYxRmFZSTloSWxVSEtIK0NMTHIvTE1oUFVjY2NhWTBH?=
 =?utf-8?B?cVZoWjQvbThLRnJCWis3cTFqcWZNL2VXRjFjTzBYZ3VEUnNoTGM4M1ZXc1J0?=
 =?utf-8?B?NzIwd2RQR1ZOTnhpNGdlYkpnYWJ6eElTUUdUQ1J6VFFvek5GbU1tcnlkcTM0?=
 =?utf-8?B?WGozNlFlR0ZKb2lDMWJvUjc5dFgxbzN6OWJrS0NsSGpJM3Z6ZDI0YjRETlVw?=
 =?utf-8?B?N2NKSlZpbmNIZnVMZW9MWitnN0x5S1hzTXJ3ZkJmSGxJSjQ4TjFKVndoWlFv?=
 =?utf-8?B?T0ExeUdkdkxDeXMxbkNURnhUQ0RYUjAzOU1idWZmTzZwMEdkMHlsUytmam9L?=
 =?utf-8?B?cU52b1VYdFdVVWFRSWJiSy9xZnhhS3ZlUXgxZDM1RklXVGVNUE9qWnhHblJB?=
 =?utf-8?B?ejNFazJGb1VxVGFFdzFSbWRCK3g3eUUvRWVuR2JZNmc4YTAwUFJtRllhUEY3?=
 =?utf-8?B?YzcvbUlaU3R4WXJ2ZTlEYktYd1FvbVhFaXduMHVJajNhS2NESFd1MzY3a0NG?=
 =?utf-8?B?UUVzWXkwZnRFbHlxOXlCT1R4STVkejZjbVUvb0o1cEU5MkFjb2pkdVZXaHRu?=
 =?utf-8?B?WUF3aUJwK0QxdTdDaTRiUzd4SDlPSElqdlN4REFUOU5xMGVVNStONHpBelBo?=
 =?utf-8?B?NlFZOC9vSndBRnJpRFpaeXhrWWl2ZGR0WmMzdEpvZWVvZU9YeTI0TldUYnlF?=
 =?utf-8?B?OHU1YTJyRWxCTHZ0NGFhVXJHUXdHd3lsazhpb2t2MGNuaUM4ZERKcHMvN0x0?=
 =?utf-8?B?RUg0d3lwbDBPbWZkemExbzFvaE5USVJuN1dDbkUrdlhFcFVMUENvYXZsenhx?=
 =?utf-8?B?Vkg4ZHFkSnhRUXZkakxVeDdSbThQbStDZW1qVmNJM0dlQnVTSGZHRCtRQ0ls?=
 =?utf-8?B?SU9DQzE5THFabG5kVGpZWmMyTFBpd29HajhVWFJUMTFKRmNZd09oeUVZR3pU?=
 =?utf-8?B?WG9jQitFR2ZrL1pJWnIwc1pTT2hWWFVhSEl2YlJZRnZLeEhueDdvS3VrSGxU?=
 =?utf-8?Q?dU/nL5rFV+MX8Vt8=3D?=
X-Exchange-RoutingPolicyChecked: cKBT2jj5i8aEpn6kIGqxJRi/n0OllDXb+YdizyN7CMThKLbGIwtQu0+0vxuh7nBJrAV3Lxz/gHNY8jXF79TjE3IHobgizq2XBdPmirDFPcYtdFQiXn3KHgtkegy/NokLJkp6alafyelmOf8fJ1TX9ef6aokdbXyyVpONy3k0M6is/ux2RF9qwXSQ0X2GB+QlB09DaJRwrXjTwPOrULyPkc/QNgFesVHq9iTosEeabOhciv49VrxAurXOo9zSo7KDlPSSLshhsHsWhZOL5Ydt7h8FZqbw3X0DqF4jYs/m+KHcXvGs/E7AaYI3LBhcgyHp6NNbQV1Ess/Rtqi0r5lv+Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: b78091c2-df8c-4ce1-2e86-08de7e79b6fd
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2026 07:50:36.1127 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HFq97wuAEGdk3Lz+ZT8E0hQqivucmsz9o8slUDjUwjtfT/mIcyR6GVBrXYM38sD96nO9eJHCDMLgPSxi7w6+WgWBmw3K5k87j1B7dkwXuUg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6558
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
X-Rspamd-Queue-Id: 9D8F4246A14
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email];
	FORGED_SENDER(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:jia.yao@intel.com,m:alex.zuo@intel.com,m:shuicheng.lin@intel.com,m:x.wang@intel.com,m:stable@vger.kernel.org,m:matthew.d.roper@intel.com,m:rodrigo.vivi@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Hi Jia,

> Setting the LSC chicken bit FORCE_1_SUB_MESSAGE_PER_FRAGMENT is not
> required as part of the workaround, so it can be removed.
> 
> v2: Update commit message: clarify why LSC chicken bit
>     FORCE_1_SUB_MESSAGE_PER_FRAGMENT is removed.
> 
> Bspec: 54833
> Fixes: 645cc0b9d972 ("drm/i915/dg2: Add initial gt/ctx/engine workarounds")
> Cc: Alex Zuo <alex.zuo@intel.com>
> Cc: Shuicheng Lin <shuicheng.lin@intel.com>
> Cc: Xin Wang  <x.wang@intel.com>
> Cc: stable@vger.kernel.org
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Jia Yao <jia.yao@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index f78d991ad7bf..404a6ffafbd0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2867,10 +2867,6 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  				     MAXREQS_PER_BANK,
>  				     REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
>  
> -		/* Wa_22013059131:dg2 */
> -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
> -				FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
> -
>  		/*
>  		 * Wa_22012654132
>  		 *
> -- 
> 2.43.0
> 

The fix looks sane to me:

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
