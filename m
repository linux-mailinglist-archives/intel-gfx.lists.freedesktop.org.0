Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGGNGc/tF2p8VwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 09:25:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C937D5ED9E9
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 09:25:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FC6810ECFC;
	Thu, 28 May 2026 07:25:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CougwQmN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9112A10ECFC;
 Thu, 28 May 2026 07:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779953098; x=1811489098;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LJsvg5kMdZA2H0w0dnZjqTAP53MfPlrH0iELcAq2ke4=;
 b=CougwQmN6o126ykDH/G1Wl8fJTs0IT+TF6hfMFtg7PHKs9jdzdBgfTz1
 NSVKxmNzKopjh7Ocma5J+CHOfKnHU5F4+RCjQsTW0KXZHxH8Okxk5ZRSR
 zSvNPSALo7g0YIRzrfZ/3Kf0femthK6hI3Nu9ddnMXfeV776Q7D418KyI
 Ju4/FF8fIFHiH/zF8MphXPMx/RVcGO+mZZ9WR9gufFhc6DfFD1mPJmuMI
 TzVqsWMYF7U2kwS4lAq8iWu8j1gCD0Rb8ktdErY1qrOWhO/mNR+YPP9gd
 MOPlKuVcLhpaBxmijBZmY9gTPSpy+4/lttloGZ3tev+5cmNKgCoToMDdo w==;
X-CSE-ConnectionGUID: Z/migBzfQ0eDfR/TPxU/QA==
X-CSE-MsgGUID: vUfj5EYpSimpOuAf3/G4Zg==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="80781757"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="80781757"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 00:24:57 -0700
X-CSE-ConnectionGUID: I0BN1pBPR3GPAsRVlWe9Bw==
X-CSE-MsgGUID: YJG53gkDSA+tjhXIqCohnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="244296699"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 00:24:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 00:24:57 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 28 May 2026 00:24:57 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.7) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 00:24:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PvXlmJn2SD4YlzO7s3xz0GjO1MMI3p5LfvSaLROYjV3MXP27T3fxzck5b7uxryTxCHlThNgCDzMCDABqhSkR4/qB14ggfnTfO1Gze1hxrOslnYaA9fpV/714WpN4WMpw7dk9eCeNg92u7MkuL/4QSGzFyfLqgk1IXmY/VoiO7vc57saoJRPe8INJ8HUWqzYE2oP3Z0csE+3F+OKpDLqb351G/YA2kpajK0O+VADNF1Y0iekTjsJvXLBGRup9FOFIoV5thth2pg2kleBrDa7r2Q/ZQGkeOER7O3RhuXBMrVfFF/4uqMDdp5/yAXQLuu3IPDDGlHoIpCbtxujKdxktPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e9K6lsCVv4yMVTWYTu4nm1/Vpw0eb1CQ91C03J8k87g=;
 b=j66/IOllT7jUUBwA4cZB7wEcvQZLLRQHe+A7LjOotPRn5cqZjc05SS4I+GCVZAo3cmf+QlCKhSYJZQ1kFcF4S1SLKqp9rpqtWpb9c/nTBvZUWQsNbtpgJAJMajIliWAxzRHHmGoFfy2ze+rDuROUflBPqhnsUpt65QeVJHMGru2Oo2xlb2DiT6q7jQ0QcVx7yPeRAxx2AVb3hEjfinww5NWiYj/bq7iierHJ7ZETDYMbZH/QmweVLMdSNCm3Xi1+u+0jwPbpeJaK85wFcrg2jzrNpIrh6Hxt1df3h8YjqKPx5HorNv0nhFl24r/S2OTsnET6NjDmoMXq9hCymBdI+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by LV8PR11MB8606.namprd11.prod.outlook.com (2603:10b6:408:1f7::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Thu, 28 May
 2026 07:24:55 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 07:24:54 +0000
Date: Thu, 28 May 2026 07:24:44 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>, "Andi
 Shyti" <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH] drm/i915: Remove drm_dev_unregister() from the error
 path during i915_driver_register()
Message-ID: <ggli4bypjove47zjgemsvzg7dim2u7iwn3mqqlyzc4b4ufhj4o@vabloo2ibp5m>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260522154356.47588-2-krzysztof.niemiec@intel.com>
 <11ade4a02ae837da5dbf51f4d941a07d095a58a5.camel@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <11ade4a02ae837da5dbf51f4d941a07d095a58a5.camel@linux.intel.com>
X-ClientProxiedBy: DU2PR04CA0163.eurprd04.prod.outlook.com
 (2603:10a6:10:2b0::18) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|LV8PR11MB8606:EE_
X-MS-Office365-Filtering-Correlation-Id: 2bb2f619-4a70-4d6c-902d-08debc8a36a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099006|4143699003|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 1c5q0m/NEX7B78ajnU93bhEIifqYMgnl4lWKal/HWY0pZkP5ykdN0cvZkBbIAhfuKGlU9J5nqk6lPGDK6NXU8hN7KM3obdrw1+Z5VGbi/7O6N8MMvp7MOZq5lEbT/kfOteZHfzs48eYdyLv9I5EwoeeSp0BDhtWcWaXzm2LhVUx03nS0EbaAstbS08JD2zlr3Rdyz5GAoBpA3m73QjjIWu6gxD/poEr3dNVUeJNEWGsGj+83tbHF+9aVPc2NBnh20IJ14HisezNuh+aAYZAW9zMmrNd7z6YCIFA4KB7DbTPqeSh9r1wM2i5l1wyids6pqm/wDcYRF0xTL2xXjQB/rx1Sv/natn7kU+Q2xh2nHg1bDz8DBBdsJsE+pS20uxWKneBDZb2DJkrRb8MwFN/RfkCM8apRyi2xJr6Ti/xfV82wH904pvLQ5H2O83hUXHFt23+dQ50NejPvoYTC5eu0GysVKrR9qWJTt2DS1iIc5jaTpj75qAIgQN5nTy7mJyKA8VDIF0fLhVXyUkAwQoQwBBU2aK9O3k2MYiat+Ea19ddzVSx4qBViWTgpoc1XNZeZNkelOLhcM5sZu71wlDTc+Tw1PsTtxNFIvBdqtGDT5VrHmg1uAvSYFlZgoJWbz7GwJ+bVQk2AEhrM01eYWY8ChyASH1ohvJR8oQpuRRlZ8WlKmTJxUy1ZTelANLNvqYcM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099006)(4143699003)(11063799006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUU0Wk9YVktIUTJRTVhEL2F4Q2NrekZvcU8rdUlrUW5oMEw2NXAwbzdQdk5q?=
 =?utf-8?B?NFpFeWdxMkZpWU1RY25NT2lrWmUyN1JQY01mQ0x4TDJLLzFxOVFQVlBvb2tG?=
 =?utf-8?B?MEp4QnVzdDZ4dnd1ZWVvZUhpeDRsQ1hQdjhzTHh5bTN6VThtVG9EcS9aNU5k?=
 =?utf-8?B?eWRuQTQvajZJNE5sbWFScWtsMnlZd2s5OGV1d1RmbGVKM05kS1Rnc2QrMTBp?=
 =?utf-8?B?Q1FkaWtMaFRDaGxxVDNZa3FSQytYNFd5SlNzakhmVFRvN0RLenVtTDJnMmxO?=
 =?utf-8?B?WUJzWmtxT2REbUxINEU4NFk0SWw4NXVDREJPb2NMci9heEF2ZEF4cXE1QWVh?=
 =?utf-8?B?ZS90MWNpWkc1WW5Fd1VPcjNHQzVjb1lDZnVDSGpCUmZsSDdSakpOaG5YaTR4?=
 =?utf-8?B?b2FhanpUYURXaHhLTjBWUk9ObzBOOEJWb2t0TEpkM1ZTa3NFMHBtNm9UT2d6?=
 =?utf-8?B?UmFJVW9hUmVQWFBOUEI5UzRxeExQMUpBNHZsTWVqRno0TC9WUi8veFZQWlJo?=
 =?utf-8?B?RmJoM0YwL3FLS1pJMVNsbVJvVytjQi8yT2FTNVUzWkdaaXNVQ1U3YXBuMG1i?=
 =?utf-8?B?UjRHajlVRE85NjNKSnlYV2hGWG5ZOUxBK2orZ0dFSTVSS1JnU1ZzT2RWeExJ?=
 =?utf-8?B?V01meWdvMzBHeThlS1piSTlKanRHZklZdFJmdWpDWm56bldJZUNIY2NYWFFt?=
 =?utf-8?B?eFFod2JGNHlHTG5YUzlaZld0MktmYW4rUktNU2dNSTJCL2IvdmJkc05CQnhm?=
 =?utf-8?B?MzYyanJkVHRWVk5aV1BYMGptdU5meXZFUkdzblZ6QXB5T1Q0Um9UemcrTHJs?=
 =?utf-8?B?RCt5bWc2NWQ0d1U5UjRDZDhBTUN3Y050dHdGdVovR3QzendIUjRVWDNReGRy?=
 =?utf-8?B?QXY1L1VhVXgzTkJCeFdOaHhEMDFTVXJ5Z0R3dG5LbjI5ZnVkbGt2ZWpjUG9K?=
 =?utf-8?B?TGtHUjBDZXRrOVo5RnJYNW82RWw3WGNqRGNUeHdJWXQrd2NEUkUxRFFrWEFi?=
 =?utf-8?B?Vzh3K0IzWkpybVhJQ2JNbmZaQmE0bFl1NDN1NTlZNElscUhHM21jcTNVKy9j?=
 =?utf-8?B?WjBoSXBCOVh6bGw2NUU3R0ZRUHIzYVdNNUFqNW9iSXNyRWJDRjdjOUdUTTI1?=
 =?utf-8?B?Q2xFUlMrM0RMM0J5aytjNE1KTWZ3QUJyamtmMzlMNlZidWl4ZGRkdUxNQkJo?=
 =?utf-8?B?N3NjZXpITU9aOUw0ZHdlRmpXck1JUi9vRmtKTHdHakl4RVpHOXFOcFAvdXFG?=
 =?utf-8?B?dnE3bURBR1VFZTc5RVpvd3VOVDQ4dy9LNCtUempLU2psQ200UlVZSDFTNUZK?=
 =?utf-8?B?UkVnODMwa01kZ0pRbTVIY2lyempydDRIU1R2dHppc0d1NFBDVmRzKy9VM0lZ?=
 =?utf-8?B?b2ZFRFFsU3JQVGNYYkFCZE13UlMvMVhVbTJ4d3dMdzNGMzdGRk50RDRsdUxG?=
 =?utf-8?B?UnIrLzdCS2REd1QxeHpNMGlPU1NPUko5L0RGS1FiaU5XaEJ6SUp2eUVZUklR?=
 =?utf-8?B?bElWekhySGZvdjNtbXhKVGpTTlR0QWcxZWoxZjhBd080b3BZU2UvbkRjcWY3?=
 =?utf-8?B?M3JiNGdDZjZualZ1SFFHbXlWQnFlNUV6VzhUQXZ3ZkU3dzdDL3ljeXlNVzNl?=
 =?utf-8?B?elhvQVBvVW9HM2R1dVh6dFMvak9acFhXVE9hdTUxaHF4S1RoZjI5ay9Kd01a?=
 =?utf-8?B?TnJFcURkeVhRWkFKZHNpLytUTmQ1NjRIVTM3cWFXVE12MmpUcDdJa1VtM0l5?=
 =?utf-8?B?U1NiRWZJWTdlR3Fic3RCd212dTV1UXQwTGhoMzlkczE1M3N4Sm5RSEpsb1Z2?=
 =?utf-8?B?L1JkTTMzVlRCaDhjSUptYWFGK2hNL01wMGZTaVRyM25PYkhKQks3ZDRHdm51?=
 =?utf-8?B?MU55eWllTlZXZXNxRldIRktxOEhDRHF4Z0M3WEFxamNxU0d0WlpKSEdPcS9V?=
 =?utf-8?B?aHZ6bEZkdDFyYkdPSFk3UVJTditSU0hldmgwcll5VHo3RnNEWXZJa1B3bDZX?=
 =?utf-8?B?dk9IQlUrTFFwcWluZ1hsRitJRStBdEtMc3luc3NTYlU4NElMeTFIRDJ2ODR3?=
 =?utf-8?B?SEdPUyswckNZaGVMTk4vRXJIaXNFbnZvYUZzTHh1dlpBWGZiaEY5K3BBc0VF?=
 =?utf-8?B?SmRSQXhnZTVWbTcvODJOMUNZcUQxMU4vNlNVL0RmcWI4dGx2Umo3SnhHenhM?=
 =?utf-8?B?aE1YUll5ZHhES2dNeWJLWVFadHVHK0pUSXBkZ05DR0E0Mm44dUdmVVNsMmNH?=
 =?utf-8?B?QnhaSittVElZSnVZWFhPdW42YzF2YXlGSXlJb1BEemswYzZsNkt1MzdHZllQ?=
 =?utf-8?B?VHhuYklINFF2bDk3bnY2OEJWRHB5cmR5cXUxUVR2ZmVuekx5WmQ3L3VsY1NF?=
 =?utf-8?Q?lRHE+oxZ3RbhtaqY=3D?=
X-Exchange-RoutingPolicyChecked: g4IrqkSHACiA2lfNKVEj/1j90jXYqtQSy/YiAe6zIt+dYWQpBvVLnpp5pwD/HI5kcEeU5FnjaVaGcYyvPPIzeuC1YAbI6u2g5OziIqW8aD79ZcyFYd/Q9sM8aKAZHAFPDfO4+ZWeJzccy34Tjqk4xsXHGpZTpkevzIe86T62mpXNbKIaWDvXzahINO0DLJxQDuT+9MOs8spaKAUEu7VOa1yFJbnpl/42Rl2oMRmM85DzuxpAooALSHLVZ4ksAw60plDODc8NxIONRreluoospX/tpgNtpbEy7GlfupmNXZ45Qbpbaazi79XVoDFCYeE8wEsChiqKhOEwT8c2AWEWrA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bb2f619-4a70-4d6c-902d-08debc8a36a0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 07:24:54.3223 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J+gQxjl5bL4Djmhx3ry+Zf8DotLuj6bhq59O7vyFieHkFqUdfSTEl+xJY+gU9yGygE81mk/pop+oUETZVkvwf7F5omdv4UndP2R4hXA+ZtA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8606
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C937D5ED9E9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On 2026-05-25 at 10:11:37 +0200, Janusz Krzysztofik wrote:
> Hi Krzysztof,
> 
> On Fri, 2026-05-22 at 17:43 +0200, Krzysztof Niemiec wrote:
> > During driver probe, in i915_driver_register(), if drm_dev_register()
> > fails, the code enters into an error path. In it, a call to
> > drm_dev_unregister() is made as part of cleanup in case drm_dev_register()
> > returns an error. However, this is unnecessary, as in case of an error
> > drm_dev_register() undoes its own setup in its own error path.
> 
> Doesn't this patch depend on your "drm: Set dev->registered back to false
> in case of register failure"?  While each of the two touches a separate
> area of responsibility, I would submit them as a series if that dependency
> exists.
> 
> Thanks,
> Janusz
> 

+1 to Janusz's suggestion, these should be made into a series.

-- 
Best Regards,
Krzysztof
