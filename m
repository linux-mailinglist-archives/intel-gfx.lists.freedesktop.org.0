Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHMaENu5xGnG2wQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 05:45:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EA732F21D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 05:45:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A62F710E8D5;
	Thu, 26 Mar 2026 04:45:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GQ9YPybX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67A6D10E8AB;
 Thu, 26 Mar 2026 04:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774500308; x=1806036308;
 h=date:from:to:cc:subject:message-id:
 content-transfer-encoding:mime-version;
 bh=jpYGC+E1KOueWFf0/f01teCKCB9aByNQxhXChvoQXGQ=;
 b=GQ9YPybXfWHQM3gyOAAPDUtDK29uybGVoNL4to/huy3SFf1JlNlqemdW
 gDFlm2yeiaf49AVfZ6qOrzUxCAYoE/r9f1ttfmz6ld5sFVhYgyhocRUr+
 Ow0HKH6IMUGL8+flATIhw9/yeDdL4iJ5Yfw3hotgkn+W1gH0gPE2VeT5F
 viNzukXVCQK6GMMV4+EAxZqRj3sDhMQLbNHPyFVEbqO17InfR621//Mko
 FKKMUAUi09oLntA4gAOyKsyQWCghqvB8q98r/B3ug14THfrUvNSia5Z0S
 QKhgfIMgtaDCo6EytpeHx9ghTMnpE/IrrY2XEL3oOlsLlt4XTBUkrMYME A==;
X-CSE-ConnectionGUID: hMO65GTBSi64iuGhsc3irA==
X-CSE-MsgGUID: 0Uc3znDvRxW5S8CPZACXBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="63101752"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="63101752"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 21:45:08 -0700
X-CSE-ConnectionGUID: 6vQ9LHgeTOuZsFUW5wRzXw==
X-CSE-MsgGUID: Nsb9VUKuRCO6hKbTcR15rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="224076345"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 21:45:07 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 21:45:06 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 21:45:06 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.63) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 21:45:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E9Js73jCGf+ZYdy7hwUB6R4uWKeonrdMXWXAy5lSHvIYzPwpNwtNODFB62ftSKXsFmgI85vKbQyc5FYhWKd2kmx5TxVtyElTcRY0CS18VT63QIaCgkZmcIhxSs/kWRQfKHV2ljHljbUZpqJGY7mHSW2UVeDIKB+6gN0eqHOEsM2DCodOHj92b3o7mPX3tj+fqzv2O/V15LuBEnybgvUhuxUKhEaohZg29X2j88sDS2dwox5CJemxzUtFbuIaA82g818DcbovgqXZlibN8ZNTRoYJVBJhe7qcGO03a9EfBZDMzlz1Hv02tFYT70tW1z/pmXvVKBnJZsl0oTJIdkS3Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mlDWQCFRQuLAf49updIAq89jD53ZUINFdP1gsUKYrKw=;
 b=FuwOraTmtOcB0plR9+Ohm2dMhpq0BTsz0cpXgMaofS8DY0gk0AyM9maWhJvgttWCQBcypPHfNH3sKpSDEBC0yjFqatno1JDJ+jV4/czHiWwSAyskrWiNXMg10ke93o+rF1cPBaJyIhMplU6Lj43RchSMPrQqEemrZTcBAv42qXdlFzk10DLEKW728jKxyPhb3rtdRe04Dq9mBXqo1svdZvyA5PfNYEB6TkSqvmZ9mLMWp4IQasSzT2g/fkaL6yjoRC17yM3oH7/xuBlRq+WLRgjx3v4430jHA7FHWeblf6NvQue8XeqG2VHiOtpcb2Mn1KAXFcMnu1hspK5me/35rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB6519.namprd11.prod.outlook.com (2603:10b6:8:d1::5) by
 SA1PR11MB6870.namprd11.prod.outlook.com (2603:10b6:806:2b4::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.7; Thu, 26 Mar
 2026 04:44:57 +0000
Received: from DS0PR11MB6519.namprd11.prod.outlook.com
 ([fe80::c336:8ed1:4b09:4414]) by DS0PR11MB6519.namprd11.prod.outlook.com
 ([fe80::c336:8ed1:4b09:4414%3]) with mapi id 15.20.9745.019; Thu, 26 Mar 2026
 04:44:57 +0000
Date: Wed, 25 Mar 2026 21:44:54 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Matthew Brost <matthew.brost@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, "Oded
 Gabbay" <ogabbay@kernel.org>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dim-tools@lists.freedesktop.org>
Subject: [PULL] drm-xe-next
Message-ID: <acS5xmWC3ivPTmyV@gsse-cloud1.jf.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0270.namprd04.prod.outlook.com
 (2603:10b6:303:88::35) To DS0PR11MB6519.namprd11.prod.outlook.com
 (2603:10b6:8:d1::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB6519:EE_|SA1PR11MB6870:EE_
X-MS-Office365-Filtering-Correlation-Id: c77db274-0519-40c6-86e1-08de8af26e85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: xFd56V31bECFk4kl3FH8AOefw6HgHyqLRHaLpUSmEAfO2aEOG5h/q2yiyNdqVvPQwlFM6CLMYOe6B1ZtHQYtU/dIQSL6XqU8stczZfU6HCki+EPu+Qzw0wdTv8gEGjuK1QXuprFwqgtIGg/Atuy3n7/0bfHwhzYZGyEwrDjkQ/QY9INnvOxK8FvO+v73W8XaokQg3Ju71BNbzZ0IXD/mDRYRPzvDZEaQl+zC9PxpaLUmy9Cvfo5+SkuTfuBFVIa2yV28wwHfHh77Vm4QkEfan9pMUxwPedp07TXpa2hYK7L5o/Bb+s1Y+dvmKoiZOvTQMpImOwWZhWWqruOkyvjIL4GphlVknEsFtTH74CVDJ9MEKqd0yLWG9a1s9/aJghdzgATy1f7CQfqkIqtGII5tQ7LXl1iy8VQowFFvOnXsPKqi0/swWJSYd5ATEKqXYRlIGZns2YuK4kQKhY98exElJnKSGWavZXai/MarRcTMoX7avYeE2HU2Uk+hoPSRYjqtPEg9HaCJglY3Mjeh/uOltpy0NA0fD62UIGX3pL1xaKzPIhi2Zwv8bkSlC1mSMpUI+Jg3QGWfQUFmnPvDQZiDAE44umPGluvTfEkzIfYPttnPB1mRIbRYY+paNEYpuATU6IOwsWxeZkoGuSbb5y86aPPJlo4NVJHaIx3kIFAL26Suo60PvlVemRcoX0UQUvkW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB6519.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N2NCVFUzMTlxLzY4RllGR2ZsQ1d5VVlwUVpta0xEdHVQYjYrS21DNDBZMmVI?=
 =?utf-8?B?WUlWZlhEN1NDaXVVN3lJWmVYeERneTU1ajVjMkdpb2E2QjJrZmx2TjlwU2xo?=
 =?utf-8?B?bTdiS3ZHd0VFbjVFNUpEM0dHQVVxSnBBT0hFalRHZDdJV2p2bm9xaDE2TzNj?=
 =?utf-8?B?bEs5c1RCNVNZZ0dQYkJaVUZGTmJhM2kzMnFKWVBoQ0pEVVZlU1o0d2g2cHFp?=
 =?utf-8?B?dnl2TWVWaEkzLzY5Ym9Vc1BRRkpiNjdKYjU0TkdrYWlEc2d1SUk4ODg3SEpm?=
 =?utf-8?B?MGVzRmlOMzAzWHNNWk9XZ25zeEtueG1HWEN0blNsS0pia2pXdENpeGlTQ1hv?=
 =?utf-8?B?QU1Ianl3cjhHbHJQbFlqR0p6eDdwdTg0dzhKb2JUakxlcG5oTG9rNzNmdEZT?=
 =?utf-8?B?VHRyUDlMRFE1VmxleWR1a3dlOU5vVlZka2pzT2s3dmxDb3RGeHdqQXJreFNZ?=
 =?utf-8?B?YW1OTkwrcTAzT1FGNTFMNFpET1I3Rmlyb2dFcU5YWThkRW9oYldEYzdZQ2Y2?=
 =?utf-8?B?aThUWXVzc0Z6YlBzQm0zZ0xrTVN4MzFjWGF1aXRuSkNBVUFKOHdqMEJFNWF4?=
 =?utf-8?B?NTJhdGZLOFRMSkV4L1phczN2dUgyU2cwZWtRekNpZTFhc2RpN3Qyd3d3TXRG?=
 =?utf-8?B?TjcxTHI3T0JUeTJnbTFEQ1g5eVZ2aVp5SWUvWHlaTlM0Y0QvZU02MkRQRFhJ?=
 =?utf-8?B?QTQvVS9RSldUUS9JendjL1ZXM1d3RzhzSnFoT1NsN1kwVlBGekVkSUVHa1pU?=
 =?utf-8?B?U291NWtacUozRVJmYm9reTE3RzVjOVpieTBaS3h2bmliQnF0UkpNTVlxcmp3?=
 =?utf-8?B?cHpVcEFlUzBnVEpaLy8xZ3dSM3RML3FVSEJyRmh3QTJaU3lWTDJZQ2IweXRo?=
 =?utf-8?B?TlFmSUVaVG5Rc212SlN3T29wVjNKNnZtVlJNb1JTRG9vUEZmUW55SS9KTnFj?=
 =?utf-8?B?YnFZQm9UZmZvczhiMm5YNG5ReUVIYUdjOHRuTDg2azN5VXZYckVRd2Vrc2xF?=
 =?utf-8?B?NjV6TXdRa0Q5NVR4V1RHZ2FKQVhvdGl6U2pjUnRCSzRKMzRJbWlWZHFsb2Y5?=
 =?utf-8?B?NlJSZGJoc3Q4VGE2MnNveWZBNThmdU9lRUNybUdudUx0T0RyL0NialFpOWZ5?=
 =?utf-8?B?N0IyT0twajRrY2pTNVdkdzRxM3BTWjRpKzlJUTdZMm1Za3Z1K1RPRGQzN0FF?=
 =?utf-8?B?RndpS2xVTWZ0RWlqemVLTkVtUjdiajU5R1FpLzNzSWx6OGVjTnM3OE9rNmxr?=
 =?utf-8?B?SUgrUDlyRmlFU3p4OHpaNE1UWHVWdnlzcEF1MitBNkhXdzNpUHhvdEhJWGdW?=
 =?utf-8?B?Qk5QQ3pHOFJBTHNxMXZtdW1PZnY0YVJOUFhCeUZaVDltN1o4dG1uemZMcU44?=
 =?utf-8?B?V3NIYWJIL2hLdVZlMVQyUFgwNzA2eW5qM1JDeTRod0sxZGw4SWhKR2tLMWJw?=
 =?utf-8?B?cUg3N0tEQ1JQRnY3dFoybmVWbTczczF0LzVHYXg3SFUzUjkremJxSC9YRm4y?=
 =?utf-8?B?ejgrdG84S1B0QWdXYVNqenRaTUsxSXJldTJwS25WdkpuT3lmLzA0K0dybmNH?=
 =?utf-8?B?YWIwRmYxd2pkTFVRRVhNNkQyVXRJOU1OZVp5TUkyR0Vvb1REcmpYWVRraWM3?=
 =?utf-8?B?RFc1cmtwZU02aTVzd21tOHdqa0pKdlkrUVd3cWc0N2ZYU2xpbGdQa25GaFRC?=
 =?utf-8?B?THp2ejcrdjY1cHpodjBURW1ab1hKcmlacWE0WjZ6ZzVCL3h3bGxwd3FvODd1?=
 =?utf-8?B?QTlCR0lkdjlub3JyM1F5VUhYbVcwYzVTYnlRMnlIWlJidGp4S0h5K2pDay9J?=
 =?utf-8?B?NytYblhkR0RnQWlRUENGbVJlKzVud25HeXJML1JBNWR5YUp4RGlWNnpzdXJ4?=
 =?utf-8?B?UHRJWFhzTG9VSUUwd2gvajVpMkVwb2trYndUMmxjb2JycHNlc21oQVpBemM3?=
 =?utf-8?B?UFFPRzVaWFFHdDFZRGp5ZksvcURTRG51OFdxZmdWVjFOaG03UjY1VFJqSnJM?=
 =?utf-8?B?UVA3SHptQVNDbE5lajdCaDNVRFh5eXhNVkhtSktMVm8xaUt4R1ZEQkJmTFVH?=
 =?utf-8?B?K1YveVhoMlYzZTN1L3BpUGpaNHNBSWQ3eTFGaG5JWFhGNFA4MzFQT0htUHAy?=
 =?utf-8?B?dTloUUs3RWxTRHBkcWxTb0h5a1ZvdWJWdnpFZ01yMTBBU0Q5MlF6SXMzVjlW?=
 =?utf-8?B?UmFxQTNHNVEzbXdCclpRYmV6WGRGWmZIdXJrdU9RRXc0anVtM1hTSEJxallo?=
 =?utf-8?B?N2R2cXlDVXdPT2lPUTEyaU9IMnlJaTVvN2MrZWRwSUYwa2Y0WFJ2ZjBUZlRq?=
 =?utf-8?B?YUduUDZyY052aEdtOXYwZHVubnJSM29lTW9ZQnRUSTJaRmwzY05veDlwRGFH?=
 =?utf-8?Q?P//goMUW2W0ZJ6TM=3D?=
X-Exchange-RoutingPolicyChecked: IpXBbEZv6ZU7MK71z0iW4vWBfD9dcpQXpRi+k5aohKxEyBQDMTgZmIFp1YCzQB4uinx9QdtMp0mZt/vgldwPCNk1bCWnunheAeFXS7XKnrqIvabWUFUoMVhPhx3mXT8RZsrexDlqMYfHTAk3sMiUsyyqqdHIgUdU4J7eEC97Oq8YtMmFOaWRUumxpERZ4DUP0Y1rH5jaLhabtY7K54rfghPmMsipeVV00wCWoECbPGbu2+fvfgZwGfoH2dox1XY0Taw4jCg+Cl7xWyI7T6b33pbs1JfhEOIEBIfeoEtIlL9ZqsCILgqIRiv6MGQ6lGlDzFgJaysEcONysxKTOO9Ztg==
X-MS-Exchange-CrossTenant-Network-Message-Id: c77db274-0519-40c6-86e1-08de8af26e85
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB6519.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2026 04:44:57.6010 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V+aWL/z4A2of4sw9cUmckM8szKYQLxadp6R5oGxmAMQkea2MtQqJ5OussAnskgeA0B2wop64eUASctCQcUF8Pw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6870
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[16];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,gsse-cloud1.jf.intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 15EA732F21D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

drm-xe-next-2026-03-25:
Hi Dave and Sima,

Here goes our third, perhaps, final drm-xe-next PR towards 7.1.

In the big things we have:
- THP support in drm_pagemap
- xe_vm_get_property_ioctl

Thanks,
Matt

UAPI Changes:
- Implement xe_vm_get_property_ioctl (Jonathan)

Cross-subsystem Changes:
- Enable THP support in drm_pagemap (Francois, Brost)

Core Changes:
- Improve VF FLR synchronization for Xe VFIO (Piotr)

Driver Changes:
- Fix confusion with locals on context creation (Tomasz, Fixes)
- Add new SVM copy GT stats per size (Francois)
- always keep track of remap prev/next (Auld, Fixes)
- AuxCCS handling and render compression modifiers (Tvrtko)
- Implement recent spec updates to Wa_16025250150 (Roper)
- xe3p_lpg: L2 flush optimization (Tejas)
- vf: Improve getting clean NULL context (Wajdeczko)
- pf: Fix use-after-free in migration restore (Winiarski. Fixes)
- Fix format specifier for printing pointer differences (Nathan Chancellor, Fixes)
- Extend Wa_14026781792 for xe3lpg (Niton)
- xe3p_lpg: Add Wa_16029437861 (Varun)
- Fix spelling mistakes and comment style in ttm_resource.c (Varun)
- Merge drm/drm-next into drm-xe-next (Thomas)
- Fix missing runtime PM reference in ccs_mode_store (Sanjay, Fixes)
- Fix uninitialized new_ts when capturing context timestamp (Umesh)
- Allow reading after disabling OA stream (Ashutosh)
- Page Reclamation Fixes (Brian Nguyen, Fixes)
- Include running dword offset in default_lrc dumps (Roper)
- Assert/Deassert I2C IRQ (Raag)
- Fixup reset, wedge, unload corner cases (Zhanjun, Brost)
- Fail immediately on GuC load error (Daniele)
- Fix kernel-doc for DRM_XE_VM_BIND_FLAG_DECOMPRESS (Niton, Fixes)
- Drop redundant entries for Wa_16021867713 & Wa_14019449301 (Roper, Fixes)
The following changes since commit d93f8ea0e5ad41d661496d205fac3e2fbd9358c0:

  Merge tag 'drm-intel-next-2026-03-16' of https://gitlab.freedesktop.org/drm/i915/kernel into drm-next (2026-03-17 15:44:26 +1000)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-next-2026-03-25

for you to fetch changes up to 3d4939c0ec011ad6dfda7c13362b3d2013425789:

  drm/xe: Fix confusion with locals on context creation (2026-03-25 18:24:52 -0700)

----------------------------------------------------------------

UAPI Changes:
- Implement xe_vm_get_property_ioctl (Jonathan)

Cross-subsystem Changes:
- Enable THP support in drm_pagemap (Francois, Brost)

Core Changes:
- Improve VF FLR synchronization for Xe VFIO (Piotr)

Driver Changes:
- Fix confusion with locals on context creation (Tomasz, Fixes)
- Add new SVM copy GT stats per size (Francois)
- always keep track of remap prev/next (Auld, Fixes)
- AuxCCS handling and render compression modifiers (Tvrtko)
- Implement recent spec updates to Wa_16025250150 (Roper)
- xe3p_lpg: L2 flush optimization (Tejas)
- vf: Improve getting clean NULL context (Wajdeczko)
- pf: Fix use-after-free in migration restore (Winiarski. Fixes)
- Fix format specifier for printing pointer differences (Nathan Chancellor, Fixes)
- Extend Wa_14026781792 for xe3lpg (Niton)
- xe3p_lpg: Add Wa_16029437861 (Varun)
- Fix spelling mistakes and comment style in ttm_resource.c (Varun)
- Merge drm/drm-next into drm-xe-next (Thomas)
- Fix missing runtime PM reference in ccs_mode_store (Sanjay, Fixes)
- Fix uninitialized new_ts when capturing context timestamp (Umesh)
- Allow reading after disabling OA stream (Ashutosh)
- Page Reclamation Fixes (Brian Nguyen, Fixes)
- Include running dword offset in default_lrc dumps (Roper)
- Assert/Deassert I2C IRQ (Raag)
- Fixup reset, wedge, unload corner cases (Zhanjun, Brost)
- Fail immediately on GuC load error (Daniele)
- Fix kernel-doc for DRM_XE_VM_BIND_FLAG_DECOMPRESS (Niton, Fixes)
- Drop redundant entries for Wa_16021867713 & Wa_14019449301 (Roper, Fixes)

----------------------------------------------------------------
Ashutosh Dixit (1):
      drm/xe/oa: Allow reading after disabling OA stream

Brian Nguyen (3):
      drm/xe: Skip over non leaf pte for PRL generation
      drm/xe: Move page reclaim done_handler to own func
      drm/xe: Skip adding PRL entry to NULL VMA

Daniele Ceraolo Spurio (1):
      drm/xe/guc: Fail immediately on GuC load error

Francois Dugast (4):
      drm/pagemap: Unlock and put folios when possible
      drm/pagemap: Add helper to access zone_device_data
      drm/pagemap: Enable THP support for GPU memory migration
      drm/xe: Add new SVM copy GT stats per size

Jonathan Cavitt (4):
      drm/xe/xe_pagefault: Disallow writes to read-only VMAs
      drm/xe/uapi: Define drm_xe_vm_get_property
      drm/xe/xe_vm: Add per VM fault info
      drm/xe/xe_vm: Implement xe_vm_get_property_ioctl

Matt Roper (3):
      drm/xe/wa: Drop redundant entries for Wa_16021867713 & Wa_14019449301
      drm/xe: Include running dword offset in default_lrc dumps
      drm/xe: Implement recent spec updates to Wa_16025250150

Matthew Auld (1):
      drm/xe: always keep track of remap prev/next

Matthew Brost (5):
      drm/xe: Always kill exec queues in xe_guc_submit_pause_abort
      drm/xe: Forcefully tear down exec queues in GuC submit fini
      drm/xe: Trigger queue cleanup if not in wedged mode 2
      drm/xe: Open-code GGTT MMIO access protection
      drm/pagemap: Correct cpages calculation for migrate_vma_setup

Michal Wajdeczko (3):
      drm/xe: Add PR_CTR_CTRL/THRSH register definitions
      drm/xe: Add MI_SEMAPHORE_WAIT command definition
      drm/xe/vf: Improve getting clean NULL context

Michał Winiarski (1):
      drm/xe/pf: Fix use-after-free in migration restore

Nathan Chancellor (1):
      drm/xe: Fix format specifier for printing pointer differences

Nitin Gote (2):
      drm/xe/uapi: Fix kernel-doc for DRM_XE_VM_BIND_FLAG_DECOMPRESS
      drm/xe: Extend Wa_14026781792 for xe3lpg

Piotr Piórkowski (2):
      drm/xe/pf: Add FLR_PREPARE state to VF control flow
      vfio/xe: Notify PF about VF FLR in reset_prepare

Raag Jadav (1):
      drm/xe/i2c: Assert/Deassert I2C IRQ

Sanjay Yadav (1):
      drm/xe: Fix missing runtime PM reference in ccs_mode_store

Tejas Upadhyay (4):
      drm/xe/xe3p_lpg: flush shrinker bo cachelines manually
      drm/xe/pat: define coh_mode 2way
      drm/xe/xe3p_lpg: Restrict UAPI to enable L2 flush optimization
      drm/xe/xe3p: Skip TD flush

Thomas Hellström (1):
      Merge drm/drm-next into drm-xe-next

Tomasz Lis (1):
      drm/xe: Fix confusion with locals on context creation

Tvrtko Ursulin (12):
      drm/xe: Rename XE_BO_FLAG_SCANOUT to XE_BO_FLAG_FORCE_WC
      drm/xe: Use write-combine mapping when populating DPT
      drm/xe/xelpg: Limit AuxCCS ring buffer programming to Alderlake
      drm/xe/xelp: Quiesce memory traffic before invalidating AuxCCS
      drm/xe/xelp: Wait for AuxCCS invalidation to complete
      drm/xe: Move aux table invalidation to ring ops
      drm/xe/xelp: Add AuxCCS invalidation to the indirect context workarounds
      drm/xe/display: Move remapped plane loop out of __xe_pin_fb_vma_dpt
      drm/xe/display: Change write_dpt_remapped_tiled function signature
      drm/xe/display: Respect remapped plane alignment
      drm/xe/display: Add support for AuxCCS
      drm/xe/xelp: Expose AuxCCS frame buffer modifiers on Alderlake-P

Umesh Nerlige Ramappa (1):
      drm/xe/lrc: Fix uninitialized new_ts when capturing context timestamp

Varun Gupta (2):
      drm/ttm: Fix spelling mistakes and comment style in ttm_resource.c
      drm/xe/xe3p_lpg: Add Wa_16029437861

Zhanjun Dong (3):
      drm/xe: Use XE_WEDGED_MODE_UPON_ANY_HANG_NO_RESET enum instead of magic number
      drm/xe/guc: Ensure CT state transitions via STOP before DISABLED
      drm/xe/uc: Drop xe_guc_sanitize in favor of managed cleanup

 drivers/gpu/drm/drm_gpusvm.c                      |   7 +-
 drivers/gpu/drm/drm_pagemap.c                     | 157 ++++++++++++---
 drivers/gpu/drm/ttm/ttm_resource.c                |  28 +--
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c       |  12 +-
 drivers/gpu/drm/xe/display/xe_display.c           |   8 +
 drivers/gpu/drm/xe/display/xe_display_bo.c        |   6 +-
 drivers/gpu/drm/xe/display/xe_dsb_buffer.c        |   4 +-
 drivers/gpu/drm/xe/display/xe_fb_pin.c            | 118 ++++++++----
 drivers/gpu/drm/xe/display/xe_initial_plane.c     |   2 +-
 drivers/gpu/drm/xe/instructions/xe_mi_commands.h  |  19 ++
 drivers/gpu/drm/xe/regs/xe_engine_regs.h          |   8 +
 drivers/gpu/drm/xe/regs/xe_gt_regs.h              |   1 +
 drivers/gpu/drm/xe/xe_bo.c                        |  24 ++-
 drivers/gpu/drm/xe/xe_bo.h                        |   2 +-
 drivers/gpu/drm/xe/xe_device.c                    |  33 ++++
 drivers/gpu/drm/xe/xe_device.h                    |   1 +
 drivers/gpu/drm/xe/xe_ggtt.c                      |  15 +-
 drivers/gpu/drm/xe/xe_gt.c                        |   9 +-
 drivers/gpu/drm/xe/xe_gt_ccs_mode.c               |   2 +
 drivers/gpu/drm/xe/xe_gt_sriov_pf_control.c       |  78 ++++++--
 drivers/gpu/drm/xe/xe_gt_sriov_pf_control.h       |   1 +
 drivers/gpu/drm/xe/xe_gt_sriov_pf_control_types.h |   2 +
 drivers/gpu/drm/xe/xe_gt_stats.c                  |   6 +
 drivers/gpu/drm/xe/xe_gt_stats_types.h            |   6 +
 drivers/gpu/drm/xe/xe_guc.c                       |  35 +++-
 drivers/gpu/drm/xe/xe_guc.h                       |   1 +
 drivers/gpu/drm/xe/xe_guc_ct.c                    |  24 +--
 drivers/gpu/drm/xe/xe_guc_fwif.h                  |   1 +
 drivers/gpu/drm/xe/xe_guc_submit.c                |  87 ++++++---
 drivers/gpu/drm/xe/xe_i2c.c                       |  15 +-
 drivers/gpu/drm/xe/xe_lrc.c                       |  96 +++++++---
 drivers/gpu/drm/xe/xe_oa.c                        |   7 +-
 drivers/gpu/drm/xe/xe_page_reclaim.c              |  26 +++
 drivers/gpu/drm/xe/xe_page_reclaim.h              |   3 +
 drivers/gpu/drm/xe/xe_pagefault.c                 |  32 ++++
 drivers/gpu/drm/xe/xe_pat.c                       |  14 +-
 drivers/gpu/drm/xe/xe_pat.h                       |   5 +-
 drivers/gpu/drm/xe/xe_pt.c                        |  50 +++--
 drivers/gpu/drm/xe/xe_ring_ops.c                  | 143 ++++++++++++--
 drivers/gpu/drm/xe/xe_ring_ops_types.h            |   8 +-
 drivers/gpu/drm/xe/xe_sched_job_types.h           |   2 +
 drivers/gpu/drm/xe/xe_sriov_packet.c              |   2 +
 drivers/gpu/drm/xe/xe_sriov_pf_control.c          |  24 +++
 drivers/gpu/drm/xe/xe_sriov_pf_control.h          |   1 +
 drivers/gpu/drm/xe/xe_sriov_vfio.c                |   1 +
 drivers/gpu/drm/xe/xe_svm.c                       |  27 ++-
 drivers/gpu/drm/xe/xe_uc.c                        |  22 +--
 drivers/gpu/drm/xe/xe_vm.c                        | 223 +++++++++++++++++++++-
 drivers/gpu/drm/xe/xe_vm.h                        |  12 ++
 drivers/gpu/drm/xe/xe_vm_madvise.c                |  25 ++-
 drivers/gpu/drm/xe/xe_vm_types.h                  |  33 ++++
 drivers/gpu/drm/xe/xe_wa.c                        |  27 +--
 drivers/vfio/pci/xe/main.c                        |  14 ++
 include/drm/drm_pagemap.h                         |  21 ++
 include/drm/intel/xe_sriov_vfio.h                 |  11 ++
 include/uapi/drm/xe_drm.h                         |  92 ++++++++-
 56 files changed, 1340 insertions(+), 293 deletions(-)
