Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 32L1Ge78VGrPiQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 16:57:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 537C974CAD5
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 16:57:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=O9IgtRRI;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2A5B10E5FF;
	Mon, 13 Jul 2026 14:57:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D5B310E5FF;
 Mon, 13 Jul 2026 14:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783954666; x=1815490666;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=vGr1Y0YREj7u0VXJVlpLH/+1i6FIEq1VaYnIMWDINsY=;
 b=O9IgtRRIbt+u4nbaffGFO0YVRhTJGVqX8/ntPclsX6dGFW/51xQj3SKT
 jpiVazYwvnsCxcd39bJCLgNma9ZXR5Vf77luZ00wzJtStgmp0VpknSUN7
 JP6t/u2FzTtB3qBdmC9s1mETjlGY5V2mlqQnen48va6/X6NR7yfdx/E9Y
 txoxBoZHu+BAzyhMdIiVDwMULYJ+1/vv9F+AS5q/gyDhND1EEOMARXHCK
 oIEPsBV2/BNwdbdeGrgAgAIrBfI/gyQNLE3Gnrj2NUX6URPfgRhIwxcbI
 BU53TR5hwX81rOlYA1vgd/cY8LKxROdkCZH/7yHZTeUCCm5dYyN2I8LhL Q==;
X-CSE-ConnectionGUID: tMYA7rysSXuac6Da5+nxPA==
X-CSE-MsgGUID: dINhVRDSSy21G82cJ86mkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="95713856"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="95713856"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 07:57:46 -0700
X-CSE-ConnectionGUID: 3QhNCQeIR569pRTugrD7QQ==
X-CSE-MsgGUID: ZSNnfrmrTIG8I0oXtwNxCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="251629916"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 07:57:45 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 07:57:45 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 07:57:45 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.24) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 07:57:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UZimCcbyYPB9c+njVrEP0RkZURGdKrkylixTQi48miIdQsJBAEj7ocNOCdGLRxuW/SgqQIem4NNV5RHeQlNtXACBH1PWidSZF1a4msAIzY02lz07GGSbsjHwbhm9hgUg36j+dSShp0f9XdBAebem3gTn0VYlubc6uV7FCSB/orBabvlQoV796cCPB5lztTXInLcupwFPN4DAIPsv0DniymhAsuztNNdXsw+IDFUko3zmnx1puhcyF5p5DkCuCB5+pb2Fx4GMw5uVB02Jto+LyN2Z5fIFTxihEdAEygnK68xueyUOhBOYE2YURxohdlZLsuKGMkP/yaDCwAnuZ1sGmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jKG/PPgJKnF2REyCXY2MNdYTYcHNkRvGNZrcWD+S5O8=;
 b=sKA1ejNFDs5YfecLkikPz+KCs3UOKybWeYbnA9Y6eC7o9yu/WCEWu4Tl726j/kmlxt4wMXs5vNmD85yfUUC4RweeDUDEEeS+AFzW6uFb5C/aC+P+s+/HvgTNIIzz1pyAuiFoLu2Gtccqv0vv67KC5Tlc/ALnj662br6KXXv+DmSu79TvgF1ZF8wPxq2teubvxcKJk4Z2mLfWQWVo2cDgGE9gBCGuT5NTCXBO0eJWKkDn6kZPOJ67a01z5mo4xSbXTEfuG6qXLTc5Nr41Wy9yslaPchpk91EfHtJt44/rK7YasNU8aPx4PgzOJiEtMMp9Mmj71dV1+BrRbg/U7yDFQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by CH3PR11MB7324.namprd11.prod.outlook.com (2603:10b6:610:14f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Mon, 13 Jul
 2026 14:57:41 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c%4]) with mapi id 15.21.0202.014; Mon, 13 Jul 2026
 14:57:41 +0000
Date: Mon, 13 Jul 2026 07:57:38 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
CC: Danilo Krummrich <dakr@kernel.org>, <thomas.hellstrom@linux.intel.com>,
 <ecourtney@nvidia.com>, <simona@ffwll.ch>, <nat@pixelcluster.dev>,
 <airlied@gmail.com>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 01/12] dma-buf: Add reference counting to dma_resv
Message-ID: <alT84pX0nLaEtDl9@gsse-cloud1.jf.intel.com>
References: <20260710190752.2355-1-christian.koenig@amd.com>
 <20260710190752.2355-2-christian.koenig@amd.com>
 <alGcHjo9fzhHshx8@gsse-cloud1.jf.intel.com>
 <DJVRML4G11GZ.Z7FTZH7I1LZN@kernel.org>
 <alPwTypl8Y8PN7hz@gsse-cloud1.jf.intel.com>
 <aff7eb27-22c1-4e84-91ab-627c2604e488@amd.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aff7eb27-22c1-4e84-91ab-627c2604e488@amd.com>
X-ClientProxiedBy: MW4PR04CA0289.namprd04.prod.outlook.com
 (2603:10b6:303:89::24) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|CH3PR11MB7324:EE_
X-MS-Office365-Filtering-Correlation-Id: 513c015f-fc27-4de3-8720-08dee0ef165c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|23010399003|376014|18002099003|22082099003|6133799003|56012099006|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: z6cjybvjv9WxQnzd6NDuOmCDH+NwDxy3sBhLC0hA+prj6kFMXtKSSbVZ9H5JxtzRdyCsLCNDXcaBszqnUIxvlds1+HO3Y3M5IEmd/pUnpTQwZ9l+Id6zc4E09MgSIfXIf1XZ3kofCy/dKjyirw9zmBSEkQo3Bkl2NSbSqjc6Dgca9iOeM4DaJk/Czqo2NJ9mOsObvmrPHJWFbo3mJWa3HLSXfL3Oz4XMYMtjCf0WaeG2wvoqq7Xu6AJmNhJN4rmJs3pALtqWQxywpx3vAhLmqO/u8TvRmPrKHMoTdGwJRBS2AAoQie2N7Ew03NDyR9N3xZmP9ifLdYl9/WXsDOhL6oKE8KIw0DJ1FhnDAxMiZou4ML0GHq1pPDTUt9yAdUtA5hsY+zRfai5gulcLshwC7za/7z8Zgds68iMVQlXdBO51EEZdyWH6K22Upj9hLSyDFpsJ5leBWQ3CQAXhQvbZil2cfK2slQDbZcr67mrmL+f2FbVOPIrImfn8GKCAfdiyHoAQMC+XarUFtfbhjViby3cxk107QxvDrP3fEKYCBlNhM8gR3NYj3WtqLyD7rt6uxog6l9OUz4DnwvBxApoM8d2kdh57oGGfK3+l+peJvJNCoMyRchFkDO31GprbM3BvFc6mi0n4T4OR/DT0MscUakFlGMYrZcglWqbcWlElgY4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(23010399003)(376014)(18002099003)(22082099003)(6133799003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?eH2mnTaVBaV/L8J9v/o/JMVts3phvJglkhhgEuLFfv5smWs5qhv3Z+14p8?=
 =?iso-8859-1?Q?khpD8t9+7eYYsAvOlpKNd/k51SVtj7qrXA3w4eIQQFkM6Xj5zNBtifbhJY?=
 =?iso-8859-1?Q?o/L1LN3dlJdejnqevl3oiw2xykkf9V6aTyXxDebu/KM1qTDNvS2zSWdLVm?=
 =?iso-8859-1?Q?CJ1Lx9WvsIMru0sjvPujSlcjuFHCVT9B+W/PBARc37IG2I0PQyHy/kPdxZ?=
 =?iso-8859-1?Q?YhdZbCl/8TxJOgxJYj+ny21k3i7V367tHQ5O0SbmXCXhPeWw+dU6E/ab7G?=
 =?iso-8859-1?Q?7cnlqtMyptawXV705aEgpw31X+qRyw17wprzRlz7t+96XhH/XfeTJAJoTb?=
 =?iso-8859-1?Q?0t0uezxHm3lCN++zpWiY8Mzn6rrOXwRTrZZzvd4/0/83QPagKNhg7y+8b4?=
 =?iso-8859-1?Q?AikcMf6HsOSsbIhYD445Z931sPOP3C5ORC01bjFW96tvYRCRd+T2qEvMK1?=
 =?iso-8859-1?Q?Lo7zx8sDn6xNkX2j4huZW4CzOwRPK8EKPSiYxzIRsHr3EuywPMDSpIRIVx?=
 =?iso-8859-1?Q?blrwAWd26p3BogTWJwl/bQ7LPVjXm4K3ePMwmaM9CW6ztcI7kvM5/kzI3x?=
 =?iso-8859-1?Q?l/+xlN4oxspJXPq1PIPpP0WTdnekeO6IhqZ5nTEiwtg6lzhf9hqGamTTKa?=
 =?iso-8859-1?Q?tr3H7jyvPoHej9u1xtvJZyg6Dg5ZcfX9Aa6IveFEIyhN+uUZ8nuISygTAn?=
 =?iso-8859-1?Q?RKLdip8Z3oVKI/pUsMDJnQstdDPnu6FOFDj/WoU9lpuTyrhE5yZxNcjHVf?=
 =?iso-8859-1?Q?fq1YiEWaEIUZio0nMdfD65TzJgypRrWlwf5rGcs8YIxzqzyaMl4fo2aEcq?=
 =?iso-8859-1?Q?X3JlUIFejJAtHYR8rcMuf2fgvjUZUi/VHuGqItaZypU5XabppySaCcFS1Y?=
 =?iso-8859-1?Q?Xas3lfRogJkZjKveUL+3q485LjbGgKG1Gcrei+wiso7slSAdT9pgwRYXP5?=
 =?iso-8859-1?Q?PVuxx1y6TRTPXvlYLqhIrprTQMg1VosfSUP8Yw4DN2hX8BSmZjMTwut9uK?=
 =?iso-8859-1?Q?eZWeDk4nSkLfUuwmNSshOvvC9dTg0tJl8Nwg0mrgupjlMJTLhJnuU/PTvU?=
 =?iso-8859-1?Q?ipwb7IeoPdKmTSIQvSIO+CuNeTTnaNf1YlB3n4yvweQiZAQ2FQOTEHnZwH?=
 =?iso-8859-1?Q?rEHd6tuikjjtAiLrcjQ8jhF9TSejoYsFm38wu51ImLyjX0NiX97bUEnfzW?=
 =?iso-8859-1?Q?LhQ6VRlaWKx2x5CcUo4Q8tXqS6GtT1OnjR2be4p82O+zuAW6wTtKU7odE9?=
 =?iso-8859-1?Q?0W38GgTogLYIC7kWQf/N53yE3lxbgNTLGvWV6Ea+PcWiPw6gJyaswiVFk0?=
 =?iso-8859-1?Q?Pb9qSXSzG2+yvLoSQUdG094XRDgmskhKwsme/v11bNlmFBLpQjbrxTT8qY?=
 =?iso-8859-1?Q?GGj7GbpzR3Np1ahyAmy7sbpgn3DxbA54wF5iDAZnYMdty4D+ou6UigjMM4?=
 =?iso-8859-1?Q?loL6PI7uiQUqcBhwgdIm0WOA2mzvZcUpK5SR5PADesS34FVKaVMDUeJy1s?=
 =?iso-8859-1?Q?U6tSjx55R0GanBIyOcGWQ+zjnZgWKP8zYS/Y9VWewbqFGKEmKTOe4AJcu3?=
 =?iso-8859-1?Q?9024K3wzlq2GTGBpZUZdJ/NTU9X1BwgHyGXOF9lkx3JcpEEu0uaikpWVmb?=
 =?iso-8859-1?Q?O42+pOCcYP6y/nUJr5Ptjv5B6csKH6LJ413+bwXt+TvTtdAolPOtNpAJkA?=
 =?iso-8859-1?Q?KDtg/wGaGSnMlKnOGm7/X7MuerPn55YXfNy45DybgDmjl9at7jOb96hrku?=
 =?iso-8859-1?Q?FC/r7XwOGp+SwSFljMZLFdpDrsJHFTUA6fSo4i+6v0lhVGSzE+f+jJz+1U?=
 =?iso-8859-1?Q?HPtL3cgeag=3D=3D?=
X-Exchange-RoutingPolicyChecked: dmMk7N7c6zvbU+/H7aldfpN2u0vSiTMUr4eqA5hJmOfus+2m/QhLoOaFDzpdmqGLgVykINjZcVxYAkNFfSj9K/PMI+Q9AyMqlQKWpD5L4VdaeD7zpeOWOwCT0ktoIOrbE33+vORvjmm/syBT7ZwwiBpAvZ93ZmizFxrf7ovNTawc4gVVNZZb28kAFEbCAHMljKGuGtki41IkIBG2EpD2DEo0kns6Rbqbmg+8E31hMFThe2/GvSKgvlsfgTaOr1KlgMZZgCRHEqQfo6Xd2FQ5gE77LE8L+YzQGumOCKnPJsmg4jsjGtcWOKw1Zm4qVe4K+L8APkpawjfwMqbDbcqjTg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 513c015f-fc27-4de3-8720-08dee0ef165c
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 14:57:41.2616 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g21noJe9wLacBqzf/vvDn5MaoCqJp12Apzo36aX5rNYbDo655tnbnDWO5vnu08AnvOQMWXYq32Yi5oXxp7MNLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7324
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linux.intel.com,nvidia.com,ffwll.ch,pixelcluster.dev,gmail.com,lists.freedesktop.org,vger.kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,gsse-cloud1.jf.intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 537C974CAD5

On Mon, Jul 13, 2026 at 11:25:43AM +0200, Christian König wrote:
> On 7/12/26 21:51, Matthew Brost wrote:
> > On Sat, Jul 11, 2026 at 03:10:58PM +0200, Danilo Krummrich wrote:
> >> On Sat Jul 11, 2026 at 3:27 AM CEST, Matthew Brost wrote:
> >>> On Fri, Jul 10, 2026 at 08:52:41PM +0200, Christian König wrote:
> >>>> This provides clearer ownership semantics and makes the code more
> >>>> maintainable by removing the embedded allocation hack.
> >>>>
> >>>
> >>> This looks a lot better to me. In particular, I agree with the last
> >>> sentence in the commit message.
> >>
> >> I have to disagree with this, it is the opposite. As long as the struct
> > 
> > Daniilo is of course correct here, completely missed this when I looked.
> > 
> >> dma_resv::allocated fields and the corresponding semantics exists, this does
> >> result into less clear ownership semantics.
> >>
> >> When the dma_resv is embedded in another object the reference count becomes
> >> meaningless. If the object embedding the dma_resv is freed it doesn't matter
> >> whether I have a reference count, it would a UAF regardless.
> >>
> > 
> > Yes, I agree. The allocated field would need to be dropped to make this
> > viable, and we would disallow embedding a dma-resv object into other
> > objects (which I believe is the suggestion).
> 
> Yeah completely agree as well. This was basically just the first hacky version.
> 
> > This doesn't look too painful, as I can only find two instances of
> > embedding in the kernel: drm_gem_object and i915_address_space and
> > handful of stack variables.
> 
> The use case in the TTM BO deletion path is the only really ugly one as far as I can see.
> 
> It uses the drm_gem_object embedded reservation object to make sure memory allocation can't fail during deletion.
> 

Can't you just preallocate, during gem initialization, what is currently
the embedded reservation as a separate pointer, drop the reference to
the shared reservation, copy the fences, and then perform a pointer
swap during individualization?

Maybe I'm missing some details here, but when I briefly thought about
the individualization, it seemed fairly straightforward.

Matt

> We need something like a dummy delete_resv allocated for each TTM BO during creation or something like that to avoid this.
> 
> But that in turn means potentially means taking a look at all TTM using drivers if/when they use this in their deletion path.
> 
> Doable but a bit more work. Probably also a good job for AI.
> 
> Question is also who is taking that work? @Natalie can you pick up from here?
> 
> Regards,
> Christian.
> 
> > 
> > Matt
> > 
> >> It is misleading (and hence error prone) to have an API where one can obtain a
> >> reference count of an object where the underlying memory can be freed regardless
> >> of the obtained reference count.
> >>
> >> A refernece count represents a shared ownership model, which is undermined if
> >> the underlying memory is not owned by the reference count.
> >>
> >> That said, I don't mind the reference count, but we can't mix up exclusive
> >> ownership (embedding a structure) and shared ownership (reference count).
> >>
> >>>> +static void dma_resv_release(struct kref *kref)
> >>>>  {
> >>>> -	/*
> >>>> -	 * This object should be dead and all references must have
> >>>> -	 * been released to it, so no need to be protected with rcu.
> >>>> -	 */
> >>>> +	struct dma_resv *obj = container_of(kref, struct dma_resv, refcount);
> >>>> +
> >>>>  	dma_resv_list_free(rcu_dereference_protected(obj->fences, true));
> >>>>  	ww_mutex_destroy(&obj->lock);
> >>>> +	if (obj->allocated)
> >>>> +		kfree(obj);
> >>>> +}
> 
