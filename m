Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SN+rGN+t8GnBXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A984852D5
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C1AC10EBDE;
	Tue, 28 Apr 2026 12:53:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iz7fBtum";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB92310EBDC;
 Tue, 28 Apr 2026 12:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380827; x=1808916827;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=/Pn5FXQ3mXKzkC0+4nHo8ix9o9HKze6PyiMC5Q/JrNg=;
 b=iz7fBtumEX9O60aKaq3pFMg0rVZJtPGXWMbwKIzyJVcu5748dcWIYWvw
 X+r1FtqtJADjPxsfcg+Ydd1mGVPb9SS7rWINHZM6OgxxeJcx174sd1h7t
 eye45esBPiDFdQtzKs1mP/VrKuofNrdgg+7Cd+R7nkxbaen8aq41BnAxn
 Ic7fmcyajnik+xDf3IzuX247aIKwAfUvZ5C/O/CnbuCWdCCm84rcqU/je
 VBgsw3ajvUy684Yxd7hOc+x3cxE3O5toUa5kFM5NEcW2em7/fqGYAKG3O
 /LZXhI5SpDePYVup3Q9OIOp0+ivxGt7+mEd1tR4pCsl7M4hGf0aK9T6N7 A==;
X-CSE-ConnectionGUID: 5YbxVSe3T8qD29paFgAmlg==
X-CSE-MsgGUID: BzTpdv5cR8Sc4pDbeanLwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="100945129"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="100945129"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:47 -0700
X-CSE-ConnectionGUID: UQD35K4YTEaK8cZPboSKUw==
X-CSE-MsgGUID: 0eWZRJ9XQCybmNFBQ2QYGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="229377602"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:46 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:45 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:45 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.23) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fitxf7iGtZG7Jdrr8ULHlucMuUCySLLNuDKW6AgTWqcl+WlyLlUO//yijCOOT5jtsan1iHY0NO6SRj2qGQNrxph0r9IfleMBECp8zwVUhvjy7uh9vJcp5cR6IAQS77InT+3v8UR4yRVaaesAOh7+ZUxo8/+c9jYHpPO52GnTIv4zZEE3WncNwWK53UJVqgRy/3sdSYaM3gCdmIAE2OxyxP/ZiaZ1XLIiebBcIBpwGI+bBNEaiuszmvQe3RFVg1tNi7ttKfWOGVLiVoVcfZaRzDbOQ16PQhJu2twR+V+UrI8iaPK3eK7yDyGwTRyD4DMzxxFVXeCMWDB1h4xnsYL+IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zx+YgLpXZ2f37zhYFzy1zPxo9Y/G2qmSv1/ye/lcsJ0=;
 b=DPdJT+91ITE26lTe77umdrLFqmWRUGmVkTjEvrCnEpOxSJmJZsve6MlBtJJTSjGUT8Wl2S2cjhND8UpcLb+h0XIPGD2WL8e+x6mxQi+1hpZXf5Limhhywu4aHHdRqYKAajT+r2JtXyb+AHt/wKuNu0yoAI8udR8LgPtPNKLjAMXyTmegrZ2RVX0zc50oAdWzh2yUX0R2VN3jU1La1MpQkzqgg5ZNAe42n4rYlypnaMb66lornAvFXwGbelinITIAMl1R2FbTuJqKTuwK1GchwccH8wfu6v2Z4KJ+s1o/0LZclTgboW6VQAH5HkqmUwakE4TmuXlAS1mJum/fKPiUxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:53:43 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:42 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 037/108] drm/i915/dp_link_caps: Move link config tracking to
 link_caps
Date: Tue, 28 Apr 2026 15:51:18 +0300
Message-ID: <20260428125233.1664668-38-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7149:EE_
X-MS-Office365-Filtering-Correlation-Id: 2137a4e2-239d-44b7-00fb-08dea5252ccf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: KvsGTRzznduxOW+wLkXK8Yoo6GSVjMuqibLrD0CD470jC1qPqDLPaCCbUDjl+9GtmQuwF7sE5g0QRRnHbDQPV7FiNQi9mmnYj9dE3pfRofaxUSEVVOw4lx7QjA5+Gc7nMzAI8ZyNyEJSf0A+QKT5auXEs9QhfcpJ0nklTEmH6ZryFxkTu/bdcTwmu5QyCOYT2RVnGIQOymmq1gILxqMT0jna6B9FlkrLlnNtpWmg8KQwEf/bzRghu2GyctkmQuVtyZqH43E1t6YAUmdxwGB+HGmS1BcLS6vQiODXwYxiK780vOK1jrDfONAGYqlGKmaG0v/R3Ew67vtiWWK/g7lNGWVIJOyvkN5opLNaLxaAdn5VxteDTJZzs/gvTzmcS7hKTZFWGCefLVWJVDDXJ3YF0Yh+62/BJALnmHyz582/rq8AvJHroYKhLRB3q/llnCjL31fnyJAyt14ax5qQp7wtb1EBz8ACqN0GjZMhIjjRD9fC9sVLIbeUZjIVBIN4uHW94o/FjJ0Ouj3rh9rABqcnqyOiRzPbB5pr3OkyARIfvZXqZ7EVkmG0wmC7EdG3KcmrVKDTk6VF5B/6AGmNuIY3jsBjyf/3uyYzww4SBMIUSfXf1GlVXjN0UvSKc6yPwvsNbjXMthmuHmhCAeeagtsVabTXeiH0qAoEIXQo7kmZh+chAYR54OL+U85PPJ3wGfhhhy94GGOYzsHeqyEbmHHmnhQn6WxR+6hdBnElsHjWxD8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VUZIdzVPcDNPTmc4aUQwd2VFVWVUN2JZM2hrb2FoS0RyRDhVKzBtS2d3UWZB?=
 =?utf-8?B?L0c4bTl5VC9BaFBPSkkzOHgzVkhBdGdndDFDUHN5NWxvaFl6MWVrVzFiUm1D?=
 =?utf-8?B?OVFuWXFaL2J4TVRHMmFtdXorM2E2dWRCM1VnY3hNN3pBaHFXc0VBdkxCMFRo?=
 =?utf-8?B?KzN0YytzaFdMZFV4OERKZlo0RHNMUVMxeFQrYnN5WHM1U05ONlVvaHJzdnV0?=
 =?utf-8?B?QUZsOWdmSlRZMkg2SitxeDhDZzl4L0VIbGRia3lwd0JLbXg4OWJlRmN2cmVr?=
 =?utf-8?B?UUZ2MjZMbmdFTnMwY2ZkclpROUlLMURIOXFpWGZYQUVyRFN5bGJzUkU4Lyts?=
 =?utf-8?B?Znk2a0VyRjFQVmdQUVM4WWVWZGJiejFTTndKY1BHczB6WFYwNmJwaE5VYWYr?=
 =?utf-8?B?emJzR210R0JLNG5PaUc1SEtjRWVLYVVCMnhUczVGWGdsT0sySExscDNsS3o2?=
 =?utf-8?B?NWlMeElWZVg1RzNmK2FpTFhnbGVzSmhlZE1tM0lWaGJNZjZsejVJY2V6Nmdv?=
 =?utf-8?B?NkVSQWRJSDF5OGRDZnZlN2I2dU5ackgycGVRaXRrcXRQbitBRFVoNHV6a0RX?=
 =?utf-8?B?S3pmVndvU0Z5bHNOMTR4eS9tb2lhRUhWdlppTFltVUg5YUVHZ2ZTcFAyUEFl?=
 =?utf-8?B?UkFGWUhubG0xWDkwcW92dGRlQms2TWY3UkoxOFVlV2d5U2VidjVkc3gzZVdV?=
 =?utf-8?B?dVRLcG4yS1laODc2UVloNFdQa0hNTzZQMS9xL1VWZ1o3VUFoSUdnY3ZxNzFQ?=
 =?utf-8?B?MFMydFlnWGtqb0p0OFVwY1VMMTVCNlhzeEg3KzBRb2xKSW5RWEJwVkxRMVRu?=
 =?utf-8?B?cEJOb3V2MjRxK3VIbURXc01GNFR4SmowMU1kbkhwTGhEWk1VazN0NFN1Um5S?=
 =?utf-8?B?WUtJcHJqTzVGd0pTQjZkOVV0RHZwRzdsRTlnNXJsdmZPL1ZRYzQ4dThYWFRY?=
 =?utf-8?B?blRObEN4bkpTMEhzT3RaV1FtU2ZaOEszRXM0N25VTUlCZlMyTy9IUy9uRllY?=
 =?utf-8?B?R3h1WXlQZEpyS1RjUjd2bVRXVjRWcnhidG5Md0w3cVo2N0FtbW5qVUM1NXY0?=
 =?utf-8?B?bHpHenQ4d2M4RmpGSEFYSnVtd0NrZGlmNlAxdGxvUVBEaXplaGNLdnBhdUhr?=
 =?utf-8?B?b3d5enYzN1Q5aWN4aFk1d0V0bFF3bXZORHVKd0g5RHlxQ0hpMkJUSTBuWDBZ?=
 =?utf-8?B?WjZjYThPTXBoNGJaYjFHSmVrTDFURWlUQlU3cWRmaGt5bWxTNkdkNFBHdHRt?=
 =?utf-8?B?VHNzZjlQYmNoNG5WbUFMVW0wbzY4ZTJQNjlQeGNkVStFc2psNXd5WTNMOWlX?=
 =?utf-8?B?SzRBRXZROStXK3VDQ0l2aTBDcjlSODRScTkrZUpnZG9HVmg2eVBwUjNCS2cy?=
 =?utf-8?B?VFlLS2VUNXQ4Tm1meUwwNnRoUGxwWmlmMmZaUHBTUDFMdGZzeUNUU0QzN1ZK?=
 =?utf-8?B?S3lET1pkbVVvYm5pS0M5K0JFTjJYaS9CMDViVHFXNFc5UVZ6ek4wMzc3R2lF?=
 =?utf-8?B?NzU2UXBuemFqeXcyelM4SzdzK0p5OU04NXQzYWlBbzJxalB2NjB1ZEZXZzJ3?=
 =?utf-8?B?V2VYdjE5RVBuUDNaaXdNSUpiSWlRdC96bDdtTjhsYUdad3JmU1RVaGZzSFU5?=
 =?utf-8?B?Z0tXY0ptUjJCcXRWamFjTFdRdkxKMmZ1RlUrN0x3SHh2VjhPYWYvbzNsa2JI?=
 =?utf-8?B?NVQyTUJVUVpYNGR6bVVtbmZsTU5UUy9TUVhzK3Q2R3dKZ0dTSnNLajBTTTdi?=
 =?utf-8?B?WjlpUWlvT3VNMFc2SU1tVUUvcHZBUVE2ZDRyQVRTSXpVYjg3aUViaVVuamxW?=
 =?utf-8?B?TjZGc1VGUXh5YnNTYS8vM2RmTS82eWRwVFUrYnlldDJHeXRxNG5Qdk1mZnJu?=
 =?utf-8?B?UGtmY0JiWUU4UjY1aDlBbEJ5dXZCbjFKdnk1bnFLWmsrS3VDeUFXaWswUk9U?=
 =?utf-8?B?UVFhVVJHaU1kRy9SMXFYM09aaWlSVFk3WEpNYWo0ck1lQ0lZZGNla0xTNDlK?=
 =?utf-8?B?WUl4dEFRcUpRK3V0YVAwTDR1ZmFmaHdia00yc3JhSE42alNsNitoQjA1QXpi?=
 =?utf-8?B?SUh6L0dNa1oyWDN1VW82S1NBNnByb01RRS9Sam9HN01WOUF1L2FCWVlyNHk5?=
 =?utf-8?B?V0x1MnlTTnpIMjg4VzF3d21qNnAwRjlQWU52OFBlT2hmNHRhK0Q5M0xBbE1v?=
 =?utf-8?B?NkdkTnE1NXNJKzNQYUF2dFV0Q1pRV2t1V3hnWTdKc01xQ1VaSWZwZXFRYXl4?=
 =?utf-8?B?Z1JqM1E5K3JPL2lScmIzT1hueWprYXdXZ3dTek9zb2dhdzdpM3I0NVZsaVln?=
 =?utf-8?B?L2lEQk1MYzh4N05KNUZia0JGTWJ4Z281ZDdPT0hKb2pSOFMyOVoyQT09?=
X-Exchange-RoutingPolicyChecked: a4pHgmJ6SdbhjRZtXlqAJVM3owiVuS1Of1Ej74iZib3XMh4ZpvL1XUZGjw+CEQA5rLw6gltks44/zjj9diLk23l1EQ2JadKkCwty/S+45YoWxNWTYpmWHqCFGnnoFQjVj0INoRp8Equ3oAca4nArPZJ82FuN2ShvJUT6kvhIZnQJ9e624Isl/Xu9YmYEwqVg9XOVdiuPxJKXXqDipYz4iSVbNLMW+IewpNOYqDyS8YorCt71Sps7wR07qe7UTISpxQtrS3TDajEer8H7ginC2IySNgUGgSYdU+5tMLLSFx/rk7lByardb9asC2+E84RHhfL7jNZ4PcR8ZStR2rODMQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2137a4e2-239d-44b7-00fb-08dea5252ccf
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:41.9648 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FZ26nbfhHLAr5ofKgdQVGsxZD/FILjeDzXp6qoLPIhsYqtJK5OBqGBCfSf/jantgiTc+cZEIXMI+O3D6wFjnYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7149
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
X-Rspamd-Queue-Id: E6A984852D5
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

Move tracking of the link configurations from struct intel_dp to struct
intel_dp_link_caps.

Previous changes moved the helpers operating on configurations to the
link caps module, so the state can now be kept internal to that module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    | 12 -------
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 36 ++++++++++++++-----
 2 files changed, 27 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 1fae80c8c241b..97d2836d0e159 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1832,18 +1832,6 @@ struct intel_dp {
 	struct {
 		/* TODO: move the rest of link specific fields to here */
 		bool active;
-		/* common rate,lane_count configs in bw order */
-		int num_configs;
-#define INTEL_DP_MAX_LANE_COUNT			4
-#define INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS	(ilog2(INTEL_DP_MAX_LANE_COUNT) + 1)
-#define INTEL_DP_LANE_COUNT_EXP_BITS		order_base_2(INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
-#define INTEL_DP_LINK_RATE_IDX_BITS		(BITS_PER_TYPE(u8) - INTEL_DP_LANE_COUNT_EXP_BITS)
-#define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES * \
-						 INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
-		struct intel_dp_link_config_entry {
-			u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
-			u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
-		} configs[INTEL_DP_MAX_LINK_CONFIGS];
 		/* Max lane count for the current link */
 		int max_lane_count;
 		/* Max rate for the current link */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 9fadab008e8ee..0034dd439e59d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -3,10 +3,12 @@
  * Copyright © 2026 Intel Corporation
  */
 
+#include <linux/bitops.h>
 #include <linux/debugfs.h>
 #include <linux/log2.h>
 #include <linux/slab.h>
 #include <linux/sort.h>
+#include <linux/types.h>
 
 #include <drm/drm_print.h>
 
@@ -18,6 +20,19 @@
 struct intel_dp_link_caps {
 	struct intel_dp *dp;
 
+	/* common rate,lane_count configs in bw order */
+	int num_configs;
+#define INTEL_DP_MAX_LANE_COUNT			4
+#define INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS	(ilog2(INTEL_DP_MAX_LANE_COUNT) + 1)
+#define INTEL_DP_LANE_COUNT_EXP_BITS		order_base_2(INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
+#define INTEL_DP_LINK_RATE_IDX_BITS		(BITS_PER_TYPE(u8) - INTEL_DP_LANE_COUNT_EXP_BITS)
+#define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES * \
+						 INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
+	struct intel_dp_link_config_entry {
+		u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
+		u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
+	} configs[INTEL_DP_MAX_LINK_CONFIGS];
+
 	/*
 	 * Forced parameters requested via debugfs. Remains set across sink
 	 * disconnects.
@@ -118,6 +133,7 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 
 void intel_dp_link_config_init(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_dp_link_config_entry *lc;
 	int num_common_lane_configs;
@@ -130,12 +146,12 @@ void intel_dp_link_config_init(struct intel_dp *intel_dp)
 	num_common_lane_configs = ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;
 
 	if (drm_WARN_ON(display->drm, intel_dp->num_common_rates * num_common_lane_configs >
-				    ARRAY_SIZE(intel_dp->link.configs)))
+				    ARRAY_SIZE(link_caps->configs)))
 		return;
 
-	intel_dp->link.num_configs = intel_dp->num_common_rates * num_common_lane_configs;
+	link_caps->num_configs = intel_dp->num_common_rates * num_common_lane_configs;
 
-	lc = &intel_dp->link.configs[0];
+	lc = &link_caps->configs[0];
 	for (i = 0; i < intel_dp->num_common_rates; i++) {
 		for (j = 0; j < num_common_lane_configs; j++) {
 			lc->lane_count_exp = j;
@@ -145,21 +161,22 @@ void intel_dp_link_config_init(struct intel_dp *intel_dp)
 		}
 	}
 
-	sort_r(intel_dp->link.configs, intel_dp->link.num_configs,
-	       sizeof(intel_dp->link.configs[0]),
+	sort_r(link_caps->configs, link_caps->num_configs,
+	       sizeof(link_caps->configs[0]),
 	       link_config_cmp_by_bw, NULL,
 	       intel_dp);
 }
 
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_dp_link_config_entry *lc;
 
-	if (drm_WARN_ON(display->drm, idx < 0 || idx >= intel_dp->link.num_configs))
+	if (drm_WARN_ON(display->drm, idx < 0 || idx >= link_caps->num_configs))
 		idx = 0;
 
-	lc = &intel_dp->link.configs[idx];
+	lc = &link_caps->configs[idx];
 
 	*link_rate = intel_dp_link_config_rate(intel_dp, lc);
 	*lane_count = intel_dp_link_config_lane_count(lc);
@@ -167,13 +184,14 @@ void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate
 
 int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int link_rate_idx = intel_dp_rate_index(intel_dp->common_rates, intel_dp->num_common_rates,
 						link_rate);
 	int lane_count_exp = ilog2(lane_count);
 	int i;
 
-	for (i = 0; i < intel_dp->link.num_configs; i++) {
-		const struct intel_dp_link_config_entry *lc = &intel_dp->link.configs[i];
+	for (i = 0; i < link_caps->num_configs; i++) {
+		const struct intel_dp_link_config_entry *lc = &link_caps->configs[i];
 
 		if (lc->lane_count_exp == lane_count_exp &&
 		    lc->link_rate_idx == link_rate_idx)
-- 
2.49.1

