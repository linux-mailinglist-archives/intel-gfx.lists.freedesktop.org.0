Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5D7BC42CC
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 11:42:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D09B89151;
	Wed,  8 Oct 2025 09:42:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l1GP/BdS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93B8D89151;
 Wed,  8 Oct 2025 09:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759916531; x=1791452531; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=O5H1xEdPfIeuCKajTJmiiCyvsSNidPUxuKucrmDYzao=;
 b=l1GP/BdSfW44WPG88E80QA0sIOZaZ0s1m6BVhIhsvsqTJT3GTVXAicd8
 /y+6Lmgi4pXDjexVXlHZdQFmNWUJ2J9i3UdSgXQF2F/tnND25MYVMg9Uk
 AuVbG33qWw8Ks7jJyXsCVi+5R9rjYtJWw3CGFkoFXYEUhrdk0ibgi2B4u
 gFy2FofUSpg6StTogUDMn3iOd+DEsMH9vrVk17D/XqGbThOXbtg/eRpj4
 yjLxSKhJyZ3sc0Yx71uTE92nmk75Dqa28scomGyvxCa8k/GXKYAtNnJ4o
 LJsBrrkFFG8ZUKKNCmoi7M9VRA4ro+FsJ+Hj2952t3KqSyxjANrvDujhq A==;
X-CSE-ConnectionGUID: jERhZhCkRbil1Xkw+y5Wxg==
X-CSE-MsgGUID: bs29Ug+uT7iNggsS11aZeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="73450922"
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="73450922"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 02:42:10 -0700
X-CSE-ConnectionGUID: 3SERHoqTSC25sXdDbvlTew==
X-CSE-MsgGUID: VFJwGdkhT4Gns0IZXH2GOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="211346398"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 02:42:10 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 02:42:09 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 8 Oct 2025 02:42:09 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.1) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 02:42:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y8FW0fcohNOMM5kyb/pcmRkxUmlMilYeQ8zEDJNhRG4iH/Y7pgwrOf9Oq5njLzUnSWQ9rXiUuT8a639a5iDHvq2Q7f6PennyiWRd8orCfgkbb7jl3QeykRmKOlpg4/HBo9uTNaw2Bc33iMbNV6vzOh9/XM89pmcFOa9ednJWbZ3OgvS4xwSy7DZzxkQm4Gfs//DFsuNeQX4roH2LmyOinCbad41+ZSHgja05jxLXaGkVeSQ+a4Z8R0I1sBNBcXuud69/mZofRAELCp33E9PC/eebI9CsKGWFn2VAUsOXy8e7LOGlJN0ZYMvDkiEDSvcCPGq3hrCLKmWNddVazT7ySA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sb3JKFiykVS2SvGOZtmUbEsniHgWINzaNaYWM4YsH4Y=;
 b=sTOwZfDHtpdR4ymLJnH7NQCGo8ZJMHehkltUr7E6qXB3AiBBxItQDJN20WkZThMdIMJ0ZU39N15+1lxpvvS1UhhNpmsQli2jRzorvdkotsLDWHaOfpWgP6mtJphD8eJmjKjLGsL8gHZF4s8wxc9Pze5edjj5+S7EuLenwB9/Qf7XDicMkFzSAON46Stsz74n2LcCZlyGexiOZeDrCkK46B9T5Yicgb2zDshRHVuEYR72Aocf9gkAtJLkdLNancmiljcMjEQXkCOKfPp4zognpT5ri573n1BGGk7k3gcLWtLHJpT4Dunygtk+I5JHAwvb5JCaAgksPSNJgSV/JPM6ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH3PPFD9C09B4A7.namprd11.prod.outlook.com (2603:10b6:518:1::d54)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.9; Wed, 8 Oct
 2025 09:42:03 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9203.007; Wed, 8 Oct 2025
 09:42:02 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 0/2] drm/i915/dp: Fix panel replay in DSC mode
Date: Wed, 8 Oct 2025 12:41:06 +0300
Message-ID: <20251008094108.88242-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0352.eurprd04.prod.outlook.com
 (2603:10a6:10:2b4::23) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH3PPFD9C09B4A7:EE_
X-MS-Office365-Filtering-Correlation-Id: b6181b1e-147a-4f68-aa29-08de064eef09
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?llTWPQK98gbsfjDvfcgzQ4l4dQ12yD+4vfEPKKKt+36mqvCDcQNiS5+Mqhu7?=
 =?us-ascii?Q?FZ+kotwicRDK4GmEgjjrqA7qHCii3iA0tWXFM+40mgg3jXeFsOe3XFkktd9V?=
 =?us-ascii?Q?u+6O0Uu32LeFwLy/4NVHy7Y/gLy+K0hgIwAKO3OnInan5v6gH5kJZ6kuwjng?=
 =?us-ascii?Q?/7EH8Q/LQ+JQHbm4GqsJqgcWuQz4KIOH23dYHl4fjG6Rs6E/pq463/tws/JS?=
 =?us-ascii?Q?dARule3p1VQWpiCzE6AJiWZZU3RxN1yuq22YzEnDWizCmib2Chd/4p/1Cy9K?=
 =?us-ascii?Q?ErHva1HSjxlE87h/Wm37k/RLaUDEPgJUjtiACxMIEysQGWwuof/PSd1mJzMq?=
 =?us-ascii?Q?9Wx05EWef2cy6LH0eNwuPppfxQSWuIBG+TAFMVjwNfaiY/H2XwznSkfU03ux?=
 =?us-ascii?Q?un1YvD01F0Py5vkIZoBmd19zHXgIrcYJeO1xXgmKupieAqxlAdG/DAAjVudP?=
 =?us-ascii?Q?o960AvvycuDWDPcxAnq8dOvNIkyI/jYgcddaY8rq+rbz8yzhsQ1MaZjrh9l8?=
 =?us-ascii?Q?V1TzTVQMMx7hW31Fj4uj51/Bgn2OF0ftsfdWXne7rSWs1g+RLQR/m4fuEoiG?=
 =?us-ascii?Q?5JW8A2C6edo/Og+uUJWZYCqwIgva3uYwBQLq7B4YxqcsCjLqJPxWh0188yjy?=
 =?us-ascii?Q?5adKzgDDoCzHpzASASriYtcMVdE69Ksc/N8ituTLppZSlC58RFcxv4UFNleK?=
 =?us-ascii?Q?ImEuG/GWisgaFo/WADqlixiIoIhLqWtgyc/jwlpbjTds+05gDpH146adcKKk?=
 =?us-ascii?Q?d/QzjFWKDB9H8zSOd1XNDcIRLF80gDnldvnykpSfJf7IXLsprP1l5rLboKnv?=
 =?us-ascii?Q?neG0+RDYO6l5wSONRCnzdssGsfLDa5HRgMr279IfG9GTwbhFUFdM2QhwK4VM?=
 =?us-ascii?Q?oHhYEK2+uOx2VRZTxFJurZOkvq+NYe5gjc7jB988MANPjjpyQHk3o/346EFw?=
 =?us-ascii?Q?O3joE4QccKeBq1W4xhNAR+ORHqOIijdEo+HDQXikHfcCmeTVEMHAAiSTmV71?=
 =?us-ascii?Q?xgUBdBm/e4U5YKFT9dwKYpsg+21EpN8P/O5zaYjIifFrX5cJ4pGRILdFjdd3?=
 =?us-ascii?Q?2xJ8SdCW9OBje+nSgBtTm4Ah6T6YhH0UYi9kn7pxZiIYhkpft4CP5tCRhBp6?=
 =?us-ascii?Q?4ymhYqfM9F2Y87Ie+tCM+xaw78+kW3MxKMTrnrfAeI/mDW78BYng/PTfcpGk?=
 =?us-ascii?Q?eW5opbPS6D3ByFY6QkbpglyyNrB7Xj7XJSUS44CODmROBs28ENlryJ8TtTIE?=
 =?us-ascii?Q?jCevQEIkV08hyNaj0yEWAhWjTyAHcZMbUBZ4ifOw6EMcGE3+4F3UoMJDWj81?=
 =?us-ascii?Q?LP9R6btCbfvKoxbm/xMVkMkw/xxeE/K+uXEUnYZ+FUPINQZ4d2Mzgy0RWkAt?=
 =?us-ascii?Q?k8uN1ht4GsgGDb3SR1gwLmwQThJi05lhK6Bw7ky8dkLIgU4vkFzAG6Ts/Io1?=
 =?us-ascii?Q?FtHcTql6bheFRF7v8ab0T8YaJQvxtpkR?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?je22s4PHajWQIOMOa2TDqmdSfY4m9r+fA0OB7Qz9cTVJyjJX0rT6UT4LVYmu?=
 =?us-ascii?Q?CLhHefHvfgusHYL8Xs2BsLbmgzudU6hHAJjvV8i6RSDdhF2lsZTyJj+lrrGp?=
 =?us-ascii?Q?Aam/rSON7RMlvhkaDQso6VBAhHbGnhFikaFZHhV85oL1RJiaGIaT1C8kSszR?=
 =?us-ascii?Q?vIQDb3Bu3ZZR2R6bIN8ku/tDhbk7SsZTKExipIbgo47VBkZSzCHEEOyWlqzc?=
 =?us-ascii?Q?jZ3lsQLuGyUtZXSYSJgxVOLFViF88eZ324kGPaEJBNyeEDi/yEF9lmjiZYP+?=
 =?us-ascii?Q?LS94wX1jbCkbNjtxnEZD9tm600V7dGdLciE3Qr1lPQjb+1hf7Fnq8zoulIM+?=
 =?us-ascii?Q?yhAOtCt7T9mxQpKFqm6/zH/PUtTEThFS7gdKVx7wWhaAH4T8snbytZfJ8LoA?=
 =?us-ascii?Q?FR56f4CR+ZLPbjyebVXwC23jETNntu36Ab4RZGESiXvWdfUmXx94YXYrBGnr?=
 =?us-ascii?Q?Xiz0irhqQpI+OcoMtTqZMRDNT9ivCP5XjeQWSqUSCTzu3x3yXUEqijKpnhhu?=
 =?us-ascii?Q?/0f1IbMYGzK3UOKnPQ6krmJt3OBvk45O7vqNOQikef8DGpAE5uriun+C1/QS?=
 =?us-ascii?Q?anyF1PqM2jtPr5yn7uSKSIR8cn9YgI9pV+WL/p7OeyRA8/mbZAi+ERrMzFpG?=
 =?us-ascii?Q?Z3z0N9xaldFDlaEM+HKEyNv72w/A3cLWuiZGm/gpfJbGRWJ3reQZbKygLlnh?=
 =?us-ascii?Q?IWIx1ZtNIuxHmzQYnbudKb7rRxDGjeKJjnkDRasXf3tf12UNNRmyUIWSPGOk?=
 =?us-ascii?Q?p1mLLWCD+Cy+HxcM0l83zCxGvB0WaxLJm2J6iWed4EGDx3WJEFjN72D59fbS?=
 =?us-ascii?Q?Eb+CHJjiCvK72HtWMIkPSzf3JmqXPKKuvWfemyv7ERnUS3Z63c6m3YAAlTtk?=
 =?us-ascii?Q?AkmSh458X5HBv1bc5bl5Cd8Uoii2tR3Fn74Ejr0QXKCsqa7t2CQbAwBwiE/d?=
 =?us-ascii?Q?2g5eqMLRT7xFRoCQCK+FDMnUsSN42s65wOgWxIdH3xuZ+yD+vEL6dMDdy2Pf?=
 =?us-ascii?Q?nRyJ6VbMhavajiYsbphhsemFvTBRWbhapHL/428jkNU+9f1UrQNJU3YHOZ2o?=
 =?us-ascii?Q?YnSMS+CqQQL4GUecanAZUh9Ha8yUjkd0HAHnWlit8FdM8y9+OMiA0UKS+AqW?=
 =?us-ascii?Q?v3XE2yaqXrOaLAfzGU1agv+7/Pi91lLvvJfTHFZPZtQVNzfB5h2+6PpiqbqM?=
 =?us-ascii?Q?3qnjItubh2btS6U8MJoPAUh544fdOUh997rTVjyelg4H1zpK+G+zfxUteYJK?=
 =?us-ascii?Q?hH+8bs7VchqjtJRJsBx0yWfNCHVChs8kchkQSDlz7HlHeFAD8cxUiGRV/SF4?=
 =?us-ascii?Q?2G5wfwmJgdkGy3HGWTOJY6Cm6tuUNr8CaAOQsZ/ihXk3f+PLkRcssYnXYiZ1?=
 =?us-ascii?Q?sQvMtj+dFm0zGwlCshhN6M35oiBdlaJvuosS2AL+Bmnjf/QOBhAU9Pp7J2tx?=
 =?us-ascii?Q?m34gnGguUyZBzehZI48zerPw6cmmUTM9E7mO22P0aGjjneL41tDwLWSscbYP?=
 =?us-ascii?Q?d7gb7zFxHF4UQ7TqxnRjwFuSmco/+s2QOCvLGnR49ahao/bHB105VLckzjHu?=
 =?us-ascii?Q?Ggg+7V1eiyoDDL/KCG1SEVF8Vf+lICb8GwgWHDOm0a01bK8mSWml4vRdzz3G?=
 =?us-ascii?Q?w/chbJ31QfMkqphoNSkvk9MYvLzedAfXyL4/PeLiFRzX?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b6181b1e-147a-4f68-aa29-08de064eef09
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2025 09:42:02.6320 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PhwPBpyq06VGPQ7lKeEVAv2cSC7kG1GMmBAE5/4yxbN3PR11a+oE746U/rzWdt9V+VPFxbTngCodlFhTAC2q9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFD9C09B4A7
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

This patchset fixes panel replay in DSC mode, either preventing PR
completely or preventing PR only in selective update mode, while still
allowing PR with full frame updates, based on the sink's PR in DSC mode
DPCD capability.

Imre Deak (2):
  drm/i915/dp_mst: Verify DSC vs. FEC enabled state on the link
  drm/i915/dp: Fix panel replay when DSC is enabled

 .../drm/i915/display/intel_display_types.h    |  9 ++
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  4 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 93 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 17 ++++
 drivers/gpu/drm/i915/display/intel_vdsc.h     |  1 +
 6 files changed, 121 insertions(+), 5 deletions(-)

-- 
2.49.1

