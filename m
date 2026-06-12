Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hQiIOVxBLGqvOQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 19:26:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D75E767B4FB
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 19:26:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=gx+RNGyg;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F20F410F5E4;
	Fri, 12 Jun 2026 17:26:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF30F10F5E0;
 Fri, 12 Jun 2026 17:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781285209; x=1812821209;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=Bt/4TKgqtIE7INEOtffhvGTRSYaWOK5R0v81Io01aHc=;
 b=gx+RNGygx+pQ3/XJIErxhPHte2D/H1NNPnfLYYgwka7NoNcLWVfuq2P/
 RHm1yvl9yk6aHL2vDuQNIVrSLWpPl9kf3AWgW+z74hdNkcemLfMpkfMyE
 ilLdN7/rHqt4W+OSoybT/6S5hXg84lwH8a3x4rB52cANd4ltyIWPqCyW2
 +iIaopvBa1g0xCU/tR+jbqNrVuNTTAbmyQtXfkOLRsqJhOGlP8ovU/f9M
 pKpL8TJLRhane+VV3xbcoNeGE9/1WJfv+7MLfzR6U60wl61FSyOyEvLQF
 23WySK/8l7I1G1A0WbMvAad8QxKwieOHkmMUPTESuEJZMOPKH/hPOqW9B Q==;
X-CSE-ConnectionGUID: Z95XXbcAQ4Wad1hMqzA5ZA==
X-CSE-MsgGUID: +svTbLrNTYGm4KigxryMpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11815"; a="82311048"
X-IronPort-AV: E=Sophos;i="6.24,201,1774335600"; d="scan'208";a="82311048"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2026 10:26:48 -0700
X-CSE-ConnectionGUID: YlyhpMWNT86tXAHpA4ljsw==
X-CSE-MsgGUID: sxu1MYXqRuuBPcUuGfXu9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,201,1774335600"; d="scan'208";a="242729558"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2026 10:26:48 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 10:26:47 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 12 Jun 2026 10:26:47 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.23)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 10:26:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bSMl1StCe6UaSlN5nEzg5TLqwnBdLCzhg9M8FEpSkvuKSUe2f6la2MtKLIyPZ27cjeMLE6EZapLOsdD2JMzlkRIxjwSugsnMgIqK09F9BOHcY2KjidGiluIDBcmDR17dQPrrbtPHLGGmV7/AuNMq+7cWc5UVc4IlpYA/7sqG5o54yI6mYng+C8TeLR3dG3XwZJmZcXcSH7YzHU/JyeXV+bsV8gTbrsEcm/wjg+FPOxELBCK/jdYWCvidz8fbrXuRcdmN0HB6I5UoW3klGtbD1qvYbmtuYm7BuAldEDug45t4B7Gkng2NKPWeaDPWzC8HNTyNakxnjMA79jiFCvNV1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D0dYU+eK3CHXsgAYlAiQ/TZRNsCRGfmXxJ8yO/t3w14=;
 b=QzwLmkBVDGMqICWXEsa0a6ZVufoEv3Ee7cor0G8XoucYnQGFv8YjSWnWqDPk7wE9RXyyjGTjCwtV7KpUQ5PTm7D/GiAXSfja66Sg5PpUpOBmr77VJZLU9qVlF1jAupwFbtwRYoogxxPVpeEScF6AKwDDj2c72rsqEdhFzI+oBsHvHsAk5ImPNnwqTgZ0AByMWzoJbk7JXD/ITp/QemipVTVpkN8KgJ8ECi4QYJV5d+asQcDVQkO98JDTyI4gR40Fvf560dTCpihQP9IQ0uDF783d/6vpE3U6Ry/z9Bey/y/IJPL1qa05ZBLOOBlJTYcd0pdLpPzHsWMGdzPzk23pVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by DM4PR11MB6456.namprd11.prod.outlook.com (2603:10b6:8:bc::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Fri, 12 Jun
 2026 17:26:43 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0092.017; Fri, 12 Jun 2026
 17:26:42 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Mika Kahola <mika.kahola@intel.com>, <stable@vger.kernel.org>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>, "Marco
 Nenciarini" <mnencia@kcore.it>
Subject: [PATCH] drm/i915/mtl+: Enable PPS before PLL
Date: Fri, 12 Jun 2026 20:26:17 +0300
Message-ID: <20260612172617.3427027-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GVZP280CA0076.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:274::13) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|DM4PR11MB6456:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ef348ea-c363-4882-bdb2-08dec8a7c520
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|56012099006|11063799006|3023799007|18002099003;
X-Microsoft-Antispam-Message-Info: VgDB+ubW7939mRpvRpqT0DSbzWqgubv8LEdG3wiJBDyJ8QDCNZU6P/nGjc9Q84T2KTrYbX5s2C9BKBNtMNXEPx7YIITVa04AojpCkHR6lWGHLmg8EdhfyaMRPWWuM2Ne/cUiHUkn/7QOQT74W24Z/AZhhyenbobYj3AgZLeTyTV3nDojBCmiReQ0Mlanlq8EgDiaL+73hGrFzzGZwHkA9tEWVrvYvqtHXiDDMwiP8PhSC4DPvmWnhMnT6IH3okMQCccy5ALKUa1ejWUKRtlQVLGudr9yHGXBmZc8fOW0+OcZ4HqC0M3Za2dHM51ZJEMgul6Tc8R+YWIpY/WzLjpBydjE74ZqjEkjyHVB4ezhO5gfstJH9CckY+Qm8b1Z5d7MXlQoUI67yPT5bvhTU3CfRq1mCsss3ZAO9wV0dsfaurYL6TSIaRqUMEyasdfj8IAz+pwdYFmfu8NeexDKm8bn75+2dTU7A4emDqBDhXknrzBy+hPxwO/sZ0z1VMN5srkiHeGMo5f9AauVwlePenWEzAx5RD69lYq9ikKGaaWFumDZh7PCahQXSxAEvT18YcuT8VWFurfq13UYoTvOaH6xG7JBijSQC6w0V7C06pgbmpEKrFkNQ+C75F//cs57bvZSZmHEPnZ5xLe0kfLM4wN5Tw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(56012099006)(11063799006)(3023799007)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Znptd1F6ZGxIZkhHMnJVUTFwZTcyT21HcVRBdldpRk5rc0ZSYUNZdHRXWVNR?=
 =?utf-8?B?UWt3TnJNamMrMXlPNWNJWDdGTG8zTTZqSG5kU3Z5ZTNod0Q0dWNKRVBkK0cx?=
 =?utf-8?B?S2F5TnVYTXdPemd6OHlxRXZ5eXVBdjVqWHBFOVZQVDFtSWNXWFYxSE9UQWh5?=
 =?utf-8?B?VnFtQmJsZmpnWjcxTDZZTllwYTdEcGdaOEdFTDVQVVlhNUJybWhkeEFyUzNU?=
 =?utf-8?B?TjVhbTRJc242R2hLb3E2K25WU3RJcGVTMjNhQ2FYbjNwWFMvOFZBalcrYUhZ?=
 =?utf-8?B?aFpKODRvaHM2Ynh3bkh6MEtudkhodlU1U0xkRjVtMkxBVEFIRTdlSjdrbTlW?=
 =?utf-8?B?cldUVTRkaWg3Y055ZWtld3g1Sm5ncXhTV3JoUkw2YnVCQjNtSEVXUUlpb0k4?=
 =?utf-8?B?RmliQTNNRTEzOGVIaVVPODhVM1h4NEpudTlNSWJmMzRUblYxeW0vTSt3eCtz?=
 =?utf-8?B?VVIzYnl1WmJhMExnNVJaRFZDQzFKZjhOTUlUeDlBYXhKbm56ZC9LdkxJVW02?=
 =?utf-8?B?QVVVRk5TMWlQaHlMM1ZmZEliSzNOSG4rTG5QZTRrblJTbzRTLzlCeGdFMTg1?=
 =?utf-8?B?eUowQmJwT2IvZVVlMjRmS0J2TWpzbEtCSEVkSnUrZTlUMVZiazMvcUU0c1oz?=
 =?utf-8?B?VlNYL01jemR2dkRNV0NQTHk2a20vOVA1QW1Lb2wrdmRCazIwdmRmU3p1Tnkx?=
 =?utf-8?B?V0NBblo3QmJDaU1ybit1WG5pRDNZd09maDdndjBUOTRaaVQrenBkdURmY0Ro?=
 =?utf-8?B?N1VtUjhUWGZaZmxPcndBZVB2RG1OMFhnbkZveU5DWXBXQXhkOHJkNWV4TTg1?=
 =?utf-8?B?N0UxNE1PS25qY1VRd25odE5Gak5JQVpaUWxyeHpiY1lnOUxtWGxNdjFJWm51?=
 =?utf-8?B?azhCR21uRVJ1M3d2QWhUZUsxT05neVYwbjdKaHFvbDlhaVFBM1FiTGt3b3Iw?=
 =?utf-8?B?UzM3YXh0TVBsT05teEt0VlpEVnlKcSswWWEySEF1Q1d1K3EweGpkWUNxM3NN?=
 =?utf-8?B?TmNhaTl0VFVxb3BBbVB1aDRPZ0NJOWlFczNsallBaGk5Zm8zUzBqWjc2Tml6?=
 =?utf-8?B?WHA5VWFnNHlhb2pMNEpZZnJMTWk5OExISUszSG1TVWVOK2llbVZ2c1pLb280?=
 =?utf-8?B?TzEzMWF1Qzd5dFFvL05QbEhQU3VqSHFDM1hjR1ZLbEt5a2xPdEpxMzVudkhT?=
 =?utf-8?B?TkpVZGk2ckxuYzdrYitLQ0NQWnQ0amJmaExuaXk0cEZ0LysyWVVHZktYV3dY?=
 =?utf-8?B?eSt4c3lJS08rejVXT2twR0JuVW1BUUZGMkExQ2dqV0xZR0ZQKy9RaDBZTVR5?=
 =?utf-8?B?T2VRMzJJWmJucXdGR012R1FLYXV0Vyt0MjlSQUVLM0pRQ0lZRnA2MCt2UXR3?=
 =?utf-8?B?cFpEV0UzQnVvSHdkT1Iya0E3elBZcjFIUGlXQ0QrSUpLUzl2ZElpVSt1VWN0?=
 =?utf-8?B?ZzJhSmJ1Sk1QR3NwMmNtbTJ4UFVKbzV3ZHp6czZoemFST3Mva004YUUvT0Rk?=
 =?utf-8?B?V0pUb0IyV1RhcGZ1eHNaYXZGN29RNEFxUUhWWEIzM0RsQ3hmUkJ3L1RlWG1l?=
 =?utf-8?B?Y3lWbkY3VEZFejgrY1ZESzhsNFVrcUNsc1ZBRmhJV1BTZFpuWURGSlI1ZFMy?=
 =?utf-8?B?SjBVZnBCZStwQitOemQ0TkJ3T3lyRHdEcXBXcUlEeW9taTBaZi9KbHNBL2JZ?=
 =?utf-8?B?c2xyQmRpczFXY3VERkFnVW5VaTllOU91blhSUEN5UHZWU3pOSzB3dzdUL0lU?=
 =?utf-8?B?dlByZ3dJQVBwRlUvNFVRd1EvUWpxR2EySUp6b0EwR21VRTJLRk5BOXBmWDVk?=
 =?utf-8?B?K3ZKMnVMalVGRWpZTjZzUWZ2MDMxNThCUXRibmhQckF3dVVVQVpoaVdFRWtR?=
 =?utf-8?B?aFNwNlpqQmZNZG9BOWhIQVJ2czAwU1RDVGtPSzVqVGgyTVl3OGxIdWk1Y0Yw?=
 =?utf-8?B?bXdwQlB1MGt4N3RNdExBVXhKUnZZSDJOMVdxQm55d20wa3l3Zi9KL1ltM0Vq?=
 =?utf-8?B?NUQxOTRVRlNCNGNnaUtDRlBtYWJHMFlGM29pbitPZnYrd05WY1JMUU5KeXoy?=
 =?utf-8?B?L1VrM1c2S2lrRVBPUW5YMnlYa0J1VUZOZElUQW94QTRlRzY2cm5Wd2tuVzFx?=
 =?utf-8?B?QVBHc0dVWjFqbzNTTHRNR0ozV001RFNWVXV1NGRtcFBDdFN2N0VjQWtjSEVo?=
 =?utf-8?B?azlSL2ZDazNQMUlaTU8xWXZGT2xsTUhCL2Y5UjBMODNZSHNVUGdwdGR3WUhJ?=
 =?utf-8?B?TE1oVyt0dmRQdW5INTR3b056bEZOVFdURFBvaTkvQ0tVZ0pwMTlUNnQwUjVp?=
 =?utf-8?B?a3FBYU1BdnBVR2pxSFlvRmd5Z3ZKTXo5dEJhQmd5UGZLOWVCT1NvZz09?=
X-Exchange-RoutingPolicyChecked: J6f4TEcBhK0Gtm+C6RIAlBuG+2KEctW3PxHO0s7cWw6mSDKgKHB16qUsnY9yj8aCcfB3irKcOEs1t+SxZCzxs79t/4x3G4z0CPysqK0/8xbg2KZUBktYlF4SeBw3k8q/2XkauzKlmcqW9AwXBbXcRV45O/iBIS3bumL/SK8IIMttLMxs7bcB6GiwlJooaHhd0jOQ9q2rwMSEVk7+UHM3jXFGhbSAaWCO3Y3tWpxHRosS5VMOGUG6YH0W345jDKIsOHRhledlncifAQ5lPtNzFoJGXpublyhSDj4qi1Er0D0KSpmWo+HLfLRqHweSCgYkjVxfM4OD0jUussMmcBV6MQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ef348ea-c363-4882-bdb2-08dec8a7c520
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2026 17:26:42.8259 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mU6Mg2pxUTXp3kCzgiabqFn9uI6O5x75Jz8yCeF4tG2GXbDZEqi0dK+MNJndRCsksoWSIeY0WqgvlUace67W8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6456
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
X-Spamd-Result: default: False [0.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,kcore.it:email];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D75E767B4FB

Enabling PPS after a display port's PLL is enabled leads to PLL / DDI
BUF timeouts during system resuming after a long (> 45 mins) suspended
state, at least on some ARL and MTL laptops, either all or some of them
also containing an Nvidia GPU. Enabling PPS first and then the PLL fixes
the problem for all the reporters.

A similar issue is seen when enabling an external DP output on PHY B
(vs. PHY A in the above eDP cases), where this change will not have any
effect (since no PPS is used in that case). There isn't any direct
connection between PPS and PLL, so the fix for eDP works by some
side-effect only. However Bspec does seem to require enabling PPS first,
so let's do that. Further investigation continues on the actual root
cause and a cure for external panels.

Fixes: 1a7fad2aea74 ("drm/i915/cx0: Enable dpll framework for MTL+")
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16098
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16064
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16042
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: stable@vger.kernel.org # v7.0+
Tested-by: Jouni Högander <jouni.hogander@intel.com>
Tested-by: Marco Nenciarini <mnencia@kcore.it>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2684e33b602d1..25314ec65ae77 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2652,9 +2652,6 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/* 3. Select Thunderbolt */
 	mtl_port_buf_ctl_io_selection(encoder);
 
-	/* 4. Enable Panel Power if PPS is required */
-	intel_pps_on(intel_dp);
-
 	/* 5. Enable the port PLL */
 	intel_ddi_enable_clock(encoder, crtc_state);
 
@@ -3710,6 +3707,14 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 	else if (display->platform.geminilake || display->platform.broxton)
 		bxt_dpio_phy_set_lane_optim_mask(encoder,
 						 crtc_state->lane_lat_optim_mask);
+
+	/*
+	 * There is no direct connection between the PLL and PPS, however
+	 * enabling PPS before PLL is required to avoid PLL/DDI BUF timeouts
+	 * during system resume. Do that matching the Bspec order as well.
+	 */
+	if (DISPLAY_VER(display) >= 14)
+		intel_pps_on(&dig_port->dp);
 }
 
 static void adlp_tbt_to_dp_alt_switch_wa(struct intel_encoder *encoder)
-- 
2.49.1

