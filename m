Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SE4fIip3EGoZXgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 17:32:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6C55B6F25
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 17:32:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EA4510E66E;
	Fri, 22 May 2026 15:32:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZwVXi3qs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28A9C10E66E;
 Fri, 22 May 2026 15:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779463974; x=1810999974;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=ZueioZ7RPZ4yL6v86rnlECpAkvvwXq1njlV3rb9E6QU=;
 b=ZwVXi3qsxw5FzNcuvFaxxQCYc69reILfaL8j+ors/JAdaK150XLYa6Aj
 T6+HRlLKA3upZpLxH/4J8IYAlOWvGAkaa9Ye1XKXGxqA9fStVL/Pq7Bms
 Y5haItp18WH6k4o/Yo14h0MfDOT4DOnhEWto6lEhg6oLoz4gFt+iesmCk
 sOzA/q1pP6lg6AGqONUr+QVA8OTzgSOs8/QsC2YnkrGYvYfN30irZpaRL
 1c0txWoJqPqTD3awknwTDgKyROmxWAPjUaF6eozHanI41GT0UO0PCWDjB
 ibsnhTiW7mYMgLgKv4G2RleITZmbyOg8Ne7W2QVQTXM9+BGuTLr/J4f0E Q==;
X-CSE-ConnectionGUID: zVvAEKOCQgSMB/Wfvv/p+g==
X-CSE-MsgGUID: 4JQVJzTuRNyL5nI3zLy08w==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="67919757"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="67919757"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 08:32:54 -0700
X-CSE-ConnectionGUID: Hc4+VkNFS3e/qqckrArHXw==
X-CSE-MsgGUID: QCDIY1kuRSCu2rCcsNjs0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="246014147"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 08:32:54 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 08:32:53 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 22 May 2026 08:32:53 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.55) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 08:32:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OONNlKtb4wUr48XizqS+VD+9VaD5Bpfz/ZIdbvQcKhYjleqzJhPVYVTOauKnLys2PTkjaVHf3JGldio2Rzo4PnDmHje62/0iac/9QAebbRRVToRpdjQ2W4KHs/aN2lKdsBNwKxFVJ96Ju6edw2Ct10qODy0NUR/DNKERYdU4Y18sql0yF/NcbTFlkw36T9dU0pcYwyF2zPkqa8PoF1+83hcatLjr4a6ncTDVitqYYdigRumHEOESxkTmZcM8GfwMbspkn32/z8vgZYJGAZvOQyV4Of2NzerSUG2MskwaDYHFDMzbIkXaDCjv6bpfcOlT5vNCjcday/C7/IkfndIVeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1XWZR07LV5EMlWYhu9+e1d3hcDTAV/jP6AwF0zXkKKg=;
 b=bSOuf2iRpH2PBL+MKqd5fQGGNF1H5zqcgPsd/4HWkXLT3GKvnelJ+sShLTLECDK6EARkvCS0oKJVg10zFFLZ8LZTl2seUAYJRmdIt3IHaZanJwhp/1rQKE+g2ZHP9ZiFh05J39y4Z3Ylsl1lLldJYQ+d9OFxOL5MokLle7vqv9t0slDsQjtU9RtLimbWJa5A7kRtJ1nM59j+qhcauth++nJLPNiEttY2h3tPSKZ/mSpFLdLX95RZPiG6rBX4IeNvSYC8XQosFfuhzOZ/nTAZ0xWwsCYdZb1dRNWYt+FCBy+TvXspDmQdm1DUUy++pxpNhPuTWDd8o0XBufzue2gcgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by DS3PR11MB9794.namprd11.prod.outlook.com (2603:10b6:8:363::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Fri, 22 May
 2026 15:32:51 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.20.9913.009; Fri, 22 May 2026
 15:32:50 +0000
Date: Fri, 22 May 2026 18:32:44 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Jouni Hogander
 <jouni.hogander@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/5] drm/i915/dp: Add helpers to reset link params
Message-ID: <ahB3HCUUF9bZenh5@ideak-desk.lan>
References: <20260518112427.2460725-1-imre.deak@intel.com>
 <20260518112427.2460725-2-imre.deak@intel.com>
 <ag962-z5WD8SVS9I@intel.com> <ahAJPJUYbSRvWPQT@ideak-desk.lan>
 <6b7498358483981472e9a9c6b0c76739de0b028a@intel.com>
 <ahBOa-Pepaw8iTsW@intel.com>
 <89725d0a646dc66ed4fadfa065193074f78ba28b@intel.com>
 <ahBRHgcLnm018hRU@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ahBRHgcLnm018hRU@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0046.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:273::17) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|DS3PR11MB9794:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c49f873-a725-437e-13cb-08deb8176219
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|3023799007|4143699003|11063799006|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: ov+cxL+RdvTPOIJAnursO0GYKsw2wgBOzfeAEk5G7Poyo0s7oFYqL6O6tH9G60GF4XTxm3zfAEY9scBSCOejb8BVgtjUMD8oNpmSyWriFeT2yl+6Ht0KfMNabgQh/oZO9S9gWO8aqmrJSXjvz88H8f2P/zG03aMQD2lqwH8gDVqgosLxRKrp0lUqnj8CDD1DOweujVCVerDJEq07UaIenmwM3MkTCJzowcc/zXwUd+11R0WtMgRMMxiTBQSdnCPbQlpPnafbqTh1vo9MRJgOZfl6NfmK13+bc+KPi0G3py+YkSSY1NKpvxyGB8unSqeRCq4m9NtitbU1WbHf0J0eF5v20KWBDP2hCAvJPTDwXusBOCIowOC2Og1XW+Cp4AsiYRtWF49mktzOd4qY0YM2aCatMSzme8dLaMdqWGAe8/UCtcrFwIVF+6WA8BgTWNAN10GzswuUu8KzQigY83RhFNC6h7/oVfe9tPYvsVwlGxHLjnbFsUHI4cE7cbgR0obhXTfG4/RB6YJR1fizbVeXZqhhvdhwuHzViat4couc9q5LtdZQZ8wF9FCTjbImWp0lbBCXINMmKs89Q9XumcLFHJOZBSO79THkrb2oPpF28RV917Ii3gROPiOkHxNqBA1qc9tyPt5DWKLqh5ZCZxlph2RQFUX1ELpJkJuNHOVk8P/Gj+031BgeHYdpq5ZURPD3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(3023799007)(4143699003)(11063799006)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?usp4E899WQw1xF9O1QM/MGPV2iYwRhTSxPbI4flzhb8TWt4eFhKUtJB3fs?=
 =?iso-8859-1?Q?cxvSqLq2HMKXaLRA2JlaK2RbCQ8cejHHAwEPR7UtKpg1Fa50yFdNHxD8FG?=
 =?iso-8859-1?Q?2w5GAKn9sK0vZxQy9Agd/GLjWGou5oZMm6e1q5Il8HPpb6gUhPd4IxdY7S?=
 =?iso-8859-1?Q?ygt4AVsPkMhMeQ4y/c5sinVBTqVHKD/F8Re9rTdC9208N13VOc7syGcAyq?=
 =?iso-8859-1?Q?dsyMcmRal6pWWoSz8p34Dyk3O4T2cfjpZ4dIDCDHh01ztm3n+Y44vTQcPd?=
 =?iso-8859-1?Q?itWGPmBJkES1s3PfcjJmc5xjEAtAlPNDkwVvpZ0+tmnmpswdeUWhq5IVTJ?=
 =?iso-8859-1?Q?nc5RYM4/iROKQIHa7qhIujgab6XA7jMBOYP76Cus8Am1Hm9TWbhBiLamsw?=
 =?iso-8859-1?Q?+EvT9TA+JDjsMZ7Q4/cXRvdPp/G1992UwTHJrdTqOLfLyJtSLEt9oWVYHk?=
 =?iso-8859-1?Q?XkA2b2SN1b4S6UR5kxejggIHu+bHsO0en32cd7T1Q9O0aGAWMMwm3absXj?=
 =?iso-8859-1?Q?2nEt4rwK5epTUs9ZHnpXHA1waLZNf8UnjBNd05vLS0x888o1NKZC7OwsCw?=
 =?iso-8859-1?Q?ELOG6agH4eCSPRzkl+WhGYdmedFCplF+bqbIuLcmjgLsFPSmNtcIIZSVfQ?=
 =?iso-8859-1?Q?zlusZ2ueqK5l/LsQjiAc/ePWUY/qblnDabE1/JZD+JSMufgrJIR5fzdbN/?=
 =?iso-8859-1?Q?623N9+iXCL/AHIrd9RIw3fPQCHKiPmau55NTtdMBnsXiq0bsNAZ1GaCbbF?=
 =?iso-8859-1?Q?ROunfIQYudJ1SXMkcvDix0ZJxkbfYGgA+fkS9bFL9ES0jJzCep+GYUjaC6?=
 =?iso-8859-1?Q?qN7jM5l6zdnIQp1UzZ+lymqumi69MFbfdH1k+2RL3DcmSrt1IsLW+9UH3c?=
 =?iso-8859-1?Q?qjmopUEgH0BDITojdt8R/p2RIZJZoRuPfIZybrKppGuWmu+jIiVR4nHRhd?=
 =?iso-8859-1?Q?LTl3/kgzRBGTkDVYFmdP5LJhCMghBy89rZTlfNXTNme0DqMSCKnBoEzwun?=
 =?iso-8859-1?Q?DLH7G1yFgebFGRPS4Ux70DgBZasKyZ3vpZzJD/jM3t8MYQdgwpFLT9veJa?=
 =?iso-8859-1?Q?SeGbeuoMIS5WC+XRSD13rlrhLnluTz/jtVDU5QPfD6AGfowAv2asgGdG0y?=
 =?iso-8859-1?Q?ftt0jOCzQHxjKytbP5ekcE4c+pE6oUviBFlfMTRXSYgWHdZZesh3SJguvT?=
 =?iso-8859-1?Q?EGaGRaoNf8RPPbuYT5eD9pEVGjIXZ4KNcS+ykDZImfi4rgieGzVbb2IlP1?=
 =?iso-8859-1?Q?sP442BHW/a1IyZqd8pWo295JudUbrR2g7DECK7tjQ9SrXPGdRYsq5QWaSj?=
 =?iso-8859-1?Q?ocxbp919uLUvzJWdukhZ3RuCPiDYAPIghsq9G1/Ay/RbEAnHI3/kZxAAbE?=
 =?iso-8859-1?Q?6ySOUn71n59xTBwBjm2rJm1CauHrxRGAlcEhjSXA6SuqGhk8nd6POgQ0CM?=
 =?iso-8859-1?Q?s76VBYMljXFHaCun+RjmMMTbpnqywuUOgv/dcIfvQDdtJ6Ke3mcJG2LrjV?=
 =?iso-8859-1?Q?FqWU6Kxp9ru2X6l96iQt51MHrcIWqnL/tWvtddO2oMuKT7zieWa5LiwXGg?=
 =?iso-8859-1?Q?h3sg6qV2bexSTTNLow0XOQ3A6cjyKcCUKSWZAE9KJvs2XgPruH2gw634Xy?=
 =?iso-8859-1?Q?qJDBWsTHXNS84+J+6dtzsCkh33kMFH4mv5aHz1fzJcGy4w6jsgdlLY/8dN?=
 =?iso-8859-1?Q?zwiM4sRH4br43/1gOxyic5ucy2NEM/e4mU1FGnjQ7ccq2jCy+P9b5hWzUh?=
 =?iso-8859-1?Q?gjf/CHv1APc/wbiVCNdA3uEjGTnKNLtE6eZnk6r/+j4XWYTihVRkQszkpo?=
 =?iso-8859-1?Q?CQtgaXDDNA=3D=3D?=
X-Exchange-RoutingPolicyChecked: iDU/CdGOEjmGKZrjGUP6hFjQyL0fUgtLD9TVNlHpMOBukO7P4mAFFL2Nj6mIM3q21J9P0c/cZ5zggAWmcqWG5QYsSH9WPU2+wlIQ9R48JMtovqSO/clJfQbw5FHRSJjZM+mjb2LWqlT2SsHdD21SqGNzh3rRmtdd/dz7MB/cykgUp6j3UNT4KjrgBY5l+WZNU6KyzFC/O8YF/CKcbqe+UOmY+aog58HMYICsOCrIPc564uLwNcVrLj/Vko9oGU6ZcBko2uTwwz+T/pShOjBkcr0meBG9hU7tSqq6pQ3BAweJCR3zwISUPnCQnwvjzcuoR/7Ly0rrv12sv0VD24tglA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c49f873-a725-437e-13cb-08deb8176219
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2026 15:32:50.7169 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tHgF58vJxzg0GJrDwM74gppMi2UPGVZvZM7ylkYnpPxYggJF9BHVuLPjfr+v9nDhvSv07wKjIxH04seiINtp0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS3PR11MB9794
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
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:replyto,intel.com:email,ideak-desk.lan:mid];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.995];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DF6C55B6F25
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 22, 2026 at 03:50:38PM +0300, Ville Syrjälä wrote:
> On Fri, May 22, 2026 at 03:46:50PM +0300, Jani Nikula wrote:
> > On Fri, 22 May 2026, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > > On Fri, May 22, 2026 at 01:29:39PM +0300, Jani Nikula wrote:
> > >> On Fri, 22 May 2026, Imre Deak <imre.deak@intel.com> wrote:
> > >> > On Fri, May 22, 2026 at 12:36:27AM +0300, Ville Syrjälä wrote:
> > >> >> On Mon, May 18, 2026 at 02:24:22PM +0300, Imre Deak wrote:
> > >> >> > Add helpers to defer and handle link params resets instead of
> > >> >> > open-coding the same. Rename intel_dp_reset_link_params() to
> > >> >> > intel_dp_reset_link_params_force() to align its name with the new
> > >> >> > deferred reset helpers.
> > >> >> > 
> > >> >> > When deferring a reset, return whether a new reset was queued, used by a
> > >> >> > follow-up change.
> > >> >> > 
> > >> >> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > >> >> > ---
> > >> >> >  drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
> > >> >> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
> > >> >> >  drivers/gpu/drm/i915/display/intel_dp.c       | 41 +++++++++++++++----
> > >> >> >  drivers/gpu/drm/i915/display/intel_dp.h       |  3 +-
> > >> >> >  .../drm/i915/display/intel_dp_link_training.c |  4 +-
> > >> >> >  5 files changed, 38 insertions(+), 14 deletions(-)
> > >> >> > 
> > >> >> > diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> > >> >> > index 5ff1cdf4581a5..c20a97e21419b 100644
> > >> >> > --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> > >> >> > +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> > >> >> > @@ -1265,7 +1265,7 @@ static void intel_dp_encoder_reset(struct drm_encoder *encoder)
> > >> >> >  
> > >> >> >  	intel_dp->DP = intel_de_read(display, intel_dp->output_reg);
> > >> >> >  
> > >> >> > -	intel_dp->reset_link_params = true;
> > >> >> > +	intel_dp_reset_link_params_defer(intel_dp);
> > >> >> >  	intel_dp_invalidate_source_oui(intel_dp);
> > >> >> >  
> > >> >> >  	if (display->platform.valleyview || display->platform.cherryview)
> > >> >> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > >> >> > index 86520848892e0..77819aaeccb76 100644
> > >> >> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > >> >> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > >> >> > @@ -4664,7 +4664,7 @@ static void intel_ddi_encoder_reset(struct drm_encoder *encoder)
> > >> >> >  	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(encoder));
> > >> >> >  	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
> > >> >> >  
> > >> >> > -	intel_dp->reset_link_params = true;
> > >> >> > +	intel_dp_reset_link_params_defer(intel_dp);
> > >> >> >  	intel_dp_invalidate_source_oui(intel_dp);
> > >> >> >  
> > >> >> >  	intel_pps_encoder_reset(intel_dp);
> > >> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > >> >> > index 1920d2f026665..13163dd085e91 100644
> > >> >> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > >> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > >> >> > @@ -3710,7 +3710,11 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
> > >> >> >  	intel_dp->lane_count = lane_count;
> > >> >> >  }
> > >> >> >  
> > >> >> > -void intel_dp_reset_link_params(struct intel_dp *intel_dp)
> > >> >> > +/*
> > >> >> > + * Reset link params now, preserving any deferred connector
> > >> >> > + * detect-time reset request.
> > >> >> > + */
> > >> >> > +void intel_dp_reset_link_params_force(struct intel_dp *intel_dp)
> > >> >> >  {
> > >> >> >  	intel_dp->link.max_lane_count = intel_dp_max_common_lane_count(intel_dp);
> > >> >> >  	intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
> > >> >> > @@ -3720,6 +3724,28 @@ void intel_dp_reset_link_params(struct intel_dp *intel_dp)
> > >> >> >  	intel_dp->link.seq_train_failures = 0;
> > >> >> >  }
> > >> >> >  
> > >> >> > +/*
> > >> >> > + * Reset link params during the next connector detect.
> > >> >> > + * Return %true if a new reset was queued.
> > >> >> > + */
> > >> >> > +bool intel_dp_reset_link_params_defer(struct intel_dp *intel_dp)
> > >> >> 
> > >> >> I find the intel_dp_reset_link_params_defer() vs.
> > >> >> intel_dp_reset_link_params_force() naming rather confusing.
> > >> >> 
> > >> >> Can't immediately think of a really good name for
> > >> >> intel_dp_reset_link_params_defer() so maybe it's better to not
> > >> >> have a function for it at all (ie. just drop this patch)?
> > >> >
> > >> > The idea was to have an interface to reset the link params directly or
> > >> > in a deferred way, instead of a direct access of the flag.
> > >> >
> > >> > The names are not great yes. I could use what Jouni suggested instead,
> > >> > or if the above argument is not good enough I can also drop this patch.
> > >> 
> > >> I suggest intel_dp_reset_link_params() keeps its name, or gets renamed
> > >> to intel_dp_link_params_reset(). It just does the thing, no "force".
> > >> 
> > >> Then the other two use something like:
> > >> 
> > >> - submit/process
> > >> - queue/process
> > >> - stage/handle
> > >> 
> > >> or some combination i.e. something like:
> > >> 
> > >> intel_dp_link_params_reset()
> > >> intel_dp_link_params_reset_submit()
> > >> intel_dp_link_params_reset_process()
> > >
> > > All of it kinda leaves it a bit unclear how these things
> > > are related, and then one probably has to read through
> > > them to figure out what they're actually doing.
> > >
> > > Hence why I think just setting/checking the flag on the
> > > spot might be the clearest approach. You can immediately
> > > find where it's set vs. checked.
> > 
> > Trouble is if you want to hide that flag in an opaque type in the
> > future.
> 
> Do we want that?

There's a few property of the (active) link like intel_dp::link_rate,
lane_count, link.active, reset_link_params, which all could be tracked
in a separate link specific state. It could also make sense then to move
all the handlers of that state into a separate module, but not sure
about the details for that. For now I think it's better to drop this
patch and reconsider a suitable interface later. Will resend v2 with
that.

> 
> -- 
> Ville Syrjälä
> Intel
