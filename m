Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iN6TD2yu8GkaXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:56:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2634485624
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:56:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3889210ECBD;
	Tue, 28 Apr 2026 12:56:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jhpqrXcy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABA2F10ECBC;
 Tue, 28 Apr 2026 12:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380965; x=1808916965;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=HguQyWxdSTTwpfm95+9WxXLdDN0WKnSlsALsfalUFEo=;
 b=jhpqrXcylJ6xK606llOLTqBesSr+SO04iRU7PoG/C4hneSmoFQwxtoQ6
 mdFrP4dAjmeYa3gM5woA53R+tnuCb8+cQRPGnyDFwL6eR4umMEtr/sYzm
 mtYhwdod2PxZhYr7W9aG/ZLmSIcE5JyFjAtvnlVOAtiHroLDnZh3XMg0A
 DyaApdwdrc/yedVBDDHgVy7G2A05gNLedjclIaQhgXuztdwNnykNnDtMK
 CK51dpqcaPa06ZnujUHb/TGQYV1+a6DBg2pMlP0OhrUcsM7PmsnVmK6R5
 mqmw/sJT9Sqat2v0ilqhyFugLq70I4j4YOjwAu3efNV4CFiFL7Oo5gzGi Q==;
X-CSE-ConnectionGUID: 6hhppuZfT7OnuibANmWpJg==
X-CSE-MsgGUID: zTnESly7Raa3viubLN9BbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203392"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203392"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:56:04 -0700
X-CSE-ConnectionGUID: y2v70yM+Tl+FnUn1LCyqUw==
X-CSE-MsgGUID: 1vhRl9NJTKC4HcOgkfaz1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234245143"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:56:05 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:56:03 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:56:03 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.19) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:56:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iCd6W8u/NeIBA8CkBzKQzFas890ESPmJZwYmK6AyzMq3bhgksvWhutMQY+C9x3PBMlh5kqLihgLnlBHdAewa3zRnKkCrUeDIKWY+pE5e870qXuYqSFYFe6zre8GWtXA9ZkqinY/ycDJiPWNdokCsGmwawFb4zEybbeVr7ql1cKfyoTa6CwXKkHtxDA/PiCGw75+Rquun/TDi2taFvPSy3v0qQfL2QdQ7mClUHVP3OuZNDoIIQicf/tcNSD1Mo+HjvvV3Gxwn6oxh4Me+u4WYCx2sFIF1yGW5YvpECSszZFmHD6lA3VTFb7Nx0VCZQa47R8nWh/WD7ILPJJqDDNFU7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ed4Dk3F3LBzXOx3UyVisMZ2LE0mBeC/ChDN3+jSukHw=;
 b=bNmOJHKyA3InjqyzO+Rdb5oIlOCB9S6YR3asCrCZyU9+qKf68nzNVjPKSJrUdshIOmjkHs1yRBQODkI2Gn8tG2XdgQaVrl7Vv2I4DZs2e4CO4HQlzg/S7bk9RXc199Cn7s7MSCCU3wNWTrMhdDRwdzR38faAWvY1mIijOIrpYd5yb8HTbbpTWDdbn4OmGoBXaC5aHUDIOtr4WG3eCtxHfSJIEjuqUrCIhDNJl7Mp6SNigNwSF/gOlDYmLxBLHxepIdqsagG5HpFEZRWEu7JHpuAa6Nx8OczwhMLqb24mbV0StpOX5HqH4l4W9VlMUSmd7C/SgODitIZTw7Yw6Hpf+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV3PR11MB8556.namprd11.prod.outlook.com (2603:10b6:408:1b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:59 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:59 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 101/108] drm/i915/kunit: Add DP link test stub
Date: Tue, 28 Apr 2026 15:52:22 +0300
Message-ID: <20260428125233.1664668-102-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV3PR11MB8556:EE_
X-MS-Office365-Filtering-Correlation-Id: 688ae92e-ac28-4650-0a7a-08dea5256ac2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: J4KompsyzzW6uTtSdwJrDEjzgSQevKnPqPHOb284bpgPb8hLoooAkV5dPZ7q7PqlKIvF7wsbFwSSRNAgFJPWKlybejujaUWm3ZJxMtorPvAPcn8xz/DLpxDzDKv7ivy9bs0Nyub0WeK8klHcsL7RUSX/98I1hp/RolFdsY2soGDZpLorzybHor+LH0AHeC0oZNy9AqQ+mXQjqonWrSJfN24OR3PE83X1khnR5ZGd8DHAG15smpExgSELMLN3wN1uz2dSahtUTjrJHwoOd8Th/rYONL59VmPhPB1kP4ilGWnIBh/yUQ0gPEKI7h7QAdEVPWsuFIrPMlf5QLlUaAKL4OLES7FL0Ns4u7taZzSM4PdI0+lsdz86JirAUcVbOUEKehes6AZujlNZfu1LUwl3l5IOIfYSEvRUuXG7HsHOHNcIkiOOXRPA/icffZotK6izYNh5gKEJQKo3/iUUbek63IJoH7ceQqpBMDur9JplFzZYK44RggccOTW/iOrJDJI0weWrK9bc5XQec9hOtSvmJ2UdKoGUfbkwNc72Mo+NrhMPU3uyBjKPasSlKIDXuNpO33dZrI3NN3xfUkCnnJM/MqdnBkAnyUsz0i91feLft4KiXl18akK5yBSLEdZaJdpz1kPwIx+gaPR/uDkNmLf/fg1OrzLOYa1Gof4iI8S36QhhfNWVAfcsPSUNMyYrrV8Mx3N2WDvbe1g/b4WxdKSYHpV6iZAIUv4aP8ZKJelwGxY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NjVaSGF4alU3Vk14RzlQSHZKb0lKbXMxUUlMVDVLWUIxbUN6VlJuWGZ6ZTZX?=
 =?utf-8?B?RDh4SUZRSHZLb1cwdkxTZjQxSzdlaXFKaFRKWkhDa2xjeEdBZjBlUWtpUTlu?=
 =?utf-8?B?S3I0TkVEaUR3VFQ4Wm03NjRacDV1NTZrb0lSY3ZTQjNRUW9PSEpMMW1hTjFj?=
 =?utf-8?B?ZG94SmlWRFRHbmZYODl2ZHNmbHhldUxLSnp2YjBPblNvTXNOOG02TlJuSVRU?=
 =?utf-8?B?L29QQlMzdGR4eFluUFJUeEkwS25PU1NZaElaNEN6bXZOckdzdWhOUDc1eEtq?=
 =?utf-8?B?TmlXOUpZRFpIRkVleFRWZDZ0R2hEc2s5NDRWVUFZa1U1ZjZEUlRYVjVvNjV0?=
 =?utf-8?B?OVNqblNuNkwraENSYkQ3b3Z6L0RkbFU3ZEdlRzA3a2J4ZHdSRStpbDRFU0cr?=
 =?utf-8?B?b24xa2Erb25zR3JzNWpyZ011MlFWMmoxL0xPbjk2RmNxYWlOWHovMmdqUDNM?=
 =?utf-8?B?L01iditPWFJVdUFQRDVjNnZMYU1OL084WlhucGkwVkRiMlVBZ2RrOGJYbWpm?=
 =?utf-8?B?bzhzM2FpUVVIMlJPdXZJZ2JwR0JBVDI2dndNUHpvSGxhRlBVTHRSRFRNZ3BB?=
 =?utf-8?B?cThxcml3WG9qYU1QcmFUWEhzRldzcldMdC9NR3FBekphelMwNWlXWWdSa2xt?=
 =?utf-8?B?NUwwb0FIemVBbHliRkFJa2o1VXRrVWs0QmxSdXJqZStuMG1EMWdvUkR6L1g2?=
 =?utf-8?B?MWRCeGZ0eGVzK1hKTGUzZ0lhUFQyQU5tOTVlem1hUjlna0FSTWg4UW5qSW5Z?=
 =?utf-8?B?NkYyM3lORjdrMFZUK29rdUc4NnJIZnM5NlpDUzNKK2VsbHo4UnVXUCtNejFv?=
 =?utf-8?B?WWxyOGxaUTdqUWQyamIyanF2VUsrN0JPUnUvL3ZodWF3QzdGOFBUMGUzV3Nw?=
 =?utf-8?B?bWcrSGU5TFUvMXdEUVMzK0Y5VzVNL0xnQVVPbnVFTVVzTDhCZXUzM1ZLRU5z?=
 =?utf-8?B?OU5qNTFVSm43SGVvVk5RbkJuMENWUzIzWjBoQ2gzVUpyRDcyZlJNVzJlRStJ?=
 =?utf-8?B?eG1vWmtyTFhsdWFlY3kvZ1lzSjZwSDhKaTNpZm9Idk9tR3FoRjRKd05LNHg4?=
 =?utf-8?B?V3FBQ1VBcVp5aGFqeGk3bDJ6ZGx3OHZtOUJBNk5zWVc1RmtNem9Nelo4UmVv?=
 =?utf-8?B?YXBrYm4vSXcyMjFpcDVkNGJTRTE5T2FLcnhWZ2xMTXF5dTJpS0dWYzU2SEs0?=
 =?utf-8?B?bzdsejJ6aHhBMVBYWW50TWxuSFpuVUc4UWJMT2JmSWFaY1FmVlZ1REdTS0lN?=
 =?utf-8?B?Y0ZrZFdmN2diNjIxeTZGK2pCYk9GODZ2bEhrNGRRSTlZMEx6RTNTZGxKb0ZX?=
 =?utf-8?B?K0ZFYndpNHlXblE1NDkxck5OemJNQXBGTjBuZXdtSkt0YTFXUnFFcUF3RnJo?=
 =?utf-8?B?WjhHVU0xUU5udHNGNEI3U1VEZ3k4VVl6dmIyOTZRMW1FaUpLQmRPK0xpVmZI?=
 =?utf-8?B?Q1oxVDAxdWh1eW9CMVMxMkFNbFpDdWZnam1Nc2psTGJVWTV1SzNuY1ZlWGpa?=
 =?utf-8?B?M3h2cXVIK3NRbjBXTHRYS1JtK0sxNnJkSnhlaUs3czVkekJjUGcvZnIxLzZj?=
 =?utf-8?B?Y0FRdU1rSC94VmpKaGNtYzdvNjN1QVo1OXVRTTI0Q2R4SFlnRE5VUHlCZFMw?=
 =?utf-8?B?UmY2OC9GYkZoMm5STnpLUk9YeWFGNk1FNTFzRFkrczZ4TFBSWGd3RXFBMVYz?=
 =?utf-8?B?a1hpV3QwaGNqZkp2Z01mSTNMOXk5UkYvc0IyZW5mbjFzQ0FRcVRVeWUwNGt3?=
 =?utf-8?B?YjhaekJ2ZTBuSjNHMHB4T2F1dzB1SzFCSmdpYy9hd0xjWDNBTzNab0FxemJk?=
 =?utf-8?B?aUh4NHRGL0tKR3A0b0pUTTE4YlhENVlzZitsM25MYWJrdUtYSWM2UnQ2L0sw?=
 =?utf-8?B?d2ZkMUlmTGhKTThXYzdmVmpBYWVaVkE3S2RZaGRSTUFoRzZKcjNSd1hWVmw3?=
 =?utf-8?B?RWpoMnRzamsva0JHS1lQa21CRFpFY1hzWXdLRDRyV2RNTGxtOHQrdHgramhs?=
 =?utf-8?B?NkxCbm9jNUxrNU5tcE8zelc4c05wZzlwVE1PVXY0YXg4RDE0cW1FTnRUK2VH?=
 =?utf-8?B?VXZpRWFHRkVKTDVtaVFtTXdiVXpKNm1YdWR4NTJhQ0lyYVAraUxUZVJtWDc5?=
 =?utf-8?B?a052Qjc4ejVDVlFRMHFPUHlTRmlVbnVLem93aVJNc3U4Q0JEdHRORXdpNW1u?=
 =?utf-8?B?RHhXNkhMTk5GeHpsV3BIQk9UbHJnT0hkZmlWcDVqZFIxOXdOQXVBVjNQMXpt?=
 =?utf-8?B?WHFtVG5nc0RydVJTMTlrZWZnL2lqd0JnNjB6ZWVtemdWQ1RBdWRUdFNlZTg2?=
 =?utf-8?B?aXJvc0ZjTnlhNjBVNzVwbnJTL1M4cVpuN2RMbE5VbC8wZXVobFVtdz09?=
X-Exchange-RoutingPolicyChecked: rrzRmOMgdxZqXMUPG4bbSk5849bohluk/EDSxdi17694IgHBZVwXa6xoN+RQlUs3cePHbefjeX2Z6fnZ4pV6ILqVv7nPJsyA+O0Qh+O7MxlwDBjKuF6UPlzBUtwnRFk6hW7b6dMsK5PYhKYaiN/QiUIAwkk1nI6FlZZds1QXCeEwM62ZtG6JxwA7mwp5eqRvtPCJfskqe9PU5RwSLOP5AyECR4LmvKvAFxsA53fPu5J+18gvcxm91PiabpuBszzEUIXrBvAaUn16zVQy+YF+Yj9Ji3krJ+JWtXRC91zdwiyrg/1jBZMS31DG7eeJdR9TzMyrLdbipWz8qUzhP0vjng==
X-MS-Exchange-CrossTenant-Network-Message-Id: 688ae92e-ac28-4650-0a7a-08dea5256ac2
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:25.8994 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aHqlw2UGvUqlv8Eabj1Rsq+3Wu6wHLeaLOpDu1U6FuFju99wooh46n8VpXw0h0xaRVg8zCoeCIjr/UR/YAOWuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8556
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
X-Rspamd-Queue-Id: E2634485624
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Add a Kunit stub test module for DP link test cases.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  2 +
 drivers/gpu/drm/i915/display/tests/Makefile   |  7 +++
 .../i915/display/tests/intel_dp_link_test.c   | 46 +++++++++++++++++++
 3 files changed, 55 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/tests/Makefile
 create mode 100644 drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 0c04c6d9bb13e..ff2b22271454b 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -385,6 +385,8 @@ i915-y += \
 i915-$(CONFIG_DRM_I915_DP_TUNNEL) += \
 	display/intel_dp_tunnel.o
 
+obj-$(CONFIG_DRM_I915_KUNIT_TEST) += display/tests/
+
 i915-$(CONFIG_DRM_I915_GVT) += \
 	display/intel_gvt_api.o
 
diff --git a/drivers/gpu/drm/i915/display/tests/Makefile b/drivers/gpu/drm/i915/display/tests/Makefile
new file mode 100644
index 0000000000000..ad250974160f6
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/tests/Makefile
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0
+
+subdir-ccflags-y += -I$(srctree)/drivers/gpu/drm/i915/display/
+
+obj-$(CONFIG_DRM_I915_KUNIT_TEST) += i915_display_test.o
+i915_display_test-y = \
+	intel_dp_link_test.o
diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
new file mode 100644
index 0000000000000..1efcfdc53c936
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
@@ -0,0 +1,46 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2026 Intel Corporation
+ */
+
+#include <kunit/test.h>
+
+struct test_ctx {
+};
+
+static struct kunit_case intel_dp_link_test_cases[] = {
+	{}
+};
+
+static struct test_ctx test_ctx;
+
+static int intel_dp_link_test_init(struct kunit *test)
+{
+	test->priv = &test_ctx;
+
+	return 0;
+}
+
+static void intel_dp_link_test_exit(struct kunit *test)
+{
+}
+
+static int intel_dp_link_test_suite_init(struct kunit_suite *test_suite)
+{
+	return 0;
+}
+
+static struct kunit_suite intel_dp_link_test_suite = {
+	.name = "intel_dp_link",
+	.suite_init = intel_dp_link_test_suite_init,
+	.init = intel_dp_link_test_init,
+	.exit = intel_dp_link_test_exit,
+	.test_cases = intel_dp_link_test_cases,
+};
+
+kunit_test_suites(&intel_dp_link_test_suite);
+
+MODULE_IMPORT_NS("EXPORTED_FOR_KUNIT_TESTING");
+
+MODULE_AUTHOR("Intel Corporation");
+MODULE_DESCRIPTION("Intel DP link KUnit tests");
-- 
2.49.1

