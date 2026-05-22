Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id TnUNH9t+EGptYQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 18:05:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1525B756B
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 18:05:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B39B810E8E3;
	Fri, 22 May 2026 16:05:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d05TBc07";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1F3210F694;
 Fri, 22 May 2026 16:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779465945; x=1811001945;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=M5xdPofoIro2j18zGqZcQzwljgW5lOYXn9u5awL/Is4=;
 b=d05TBc07hwoiR83JMC9tJeuAhVgIywwjngqGxNr/o8wwBpaeGOpFc4l8
 Zx1A3aNIhnNX2G9gQgMOl+rAz+08tMkXVd/0oX5gw+dZmtULZshJiYBRy
 rOpCAsD0hyq8OMNrrRGZ4MIoV7yltxy1BFIb6Q6LPJEV4YpI5GkWh84lD
 FYfuumZ2R3oP63QeXFRuNzG4W/LSP9xYw69FraVEpw7/XNn4rKvw03STN
 KaR1FlX58wKetYi+OdajUn3X9CuJgMgwG1qy48toC8tRX+YYEyvQCq9S3
 RA/WTL3UyjnN3oF9QtrRBWqY1cjO87jBFGP0C7/XaOK2EsyFmRJblT5XS g==;
X-CSE-ConnectionGUID: X6tQvhhwQGm2yBhXjhzGOQ==
X-CSE-MsgGUID: VCUGKnxGQ3mdOxgXkA8U1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="84016367"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="84016367"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 09:05:45 -0700
X-CSE-ConnectionGUID: qujWo/g+QUiuCbBnlxmmMQ==
X-CSE-MsgGUID: yzLMuDcbREu4AgeU9MQd5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="237917029"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 09:05:45 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 09:05:44 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 22 May 2026 09:05:44 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.14) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 09:05:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MEB4z4+dTNxHKor0FQhbYnR9BkF24ZJdptICoPZ8CKaoF1CIwVLRmxRSt2ONjBYGmPtjIQXdaHL2mdrpavCfaUfr0r0XsGZKIQCoRHvmJIhxc2kRtW66Dx9obsBq5s+XIj1nNrBCPeEfwHUpYSePsP4wTaZDoK4WCh1qh+OcnSZADKLaLdz9xbm3NrlZscV7TU/zwr1XqdjNYx6SenMHCEIbTun2wYYtsnVgz7zRWPzOXcUD4GWFBWesnwF34JKNetyV0kaipdwWZ0IVIaTU/wNwr2wdnrxSLMFAlJ79w9wjbfxdKrtqG/oD0ArPDBazOdFWpRCPrNoOm1bNubvJzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+JpmGEHt0Q/5bRiURlkH/0DCGmpNViAq5+f1kk/bOZY=;
 b=Vg54T2K6qQux/5fmg4UEqLvAmk2O8yUs+/JFx7ICrMbrpsl8QP+nL4ZCFtCB4mpt4PhrvoYrbxNJ+T26hasuGxg0Km3zzRZVU4EPH/KqqtIykEvvc6v6PPFJmR+HWfByTW/rC93Us+Egue4gMCj82QPArkOrTvT8cdlTmGlTj0YkU688UgMbfZHoCb0RmBR9PAOKXRxYDNU/+SLpANg9dhFy0hmvDBN2/pckMtwKn+C11V1MX3qk5oEo529d0ZrQBnsQhmm0RGIzcwetyfoqeVO39fjnHvAo0GkxaSouDFWwSPR5PcJQagQS8oPjeikFJN7DtVFfTWWGKnpGG9LcGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CH3PR11MB8415.namprd11.prod.outlook.com (2603:10b6:610:17b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Fri, 22 May
 2026 16:05:40 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.20.9913.009; Fri, 22 May 2026
 16:05:40 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 2/4] drm/i915/dp: Add helper to set common link params
Date: Fri, 22 May 2026 19:05:12 +0300
Message-ID: <20260522160514.2628249-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260522160514.2628249-1-imre.deak@intel.com>
References: <20260522160514.2628249-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GVX0EPF0005F70D.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::38e) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CH3PR11MB8415:EE_
X-MS-Office365-Filtering-Correlation-Id: ce75ba68-531f-465b-1be7-08deb81bf853
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|56012099003|22082099003|11063799006;
X-Microsoft-Antispam-Message-Info: cZ8DmE+FYphrujvIJfcRFs0BKtG9X6zn/lhMuZxsv9ACdf5bxZjWMOKjU/kcvNKZS5eVMrC6mBFb4M+6ln4KMR2idIKeaqft0MEswWDYEtnerS2W62YZhI93QpxDvgS3QDDu9DTEGQt0oRBR40/5gH7+PKyyEKfe3fUlBWkBLF71PrHdLuWDFK8ekWIByEkBMmpkuCyxdThh/NbHixcxiG1GIyhjcVJEPu2jFEG5lz0PlMeddznZbwbL+CODSd6Q7m2jrgZL91+b3F6et0Yc3V/UkaXMPY01cK/5rqjPvAZRueIkPhpri7BxgC3vAapI0Pgr8TjuEhcUg7NOG28FnLnuoLnrx8FAPcoMX/whWuOciS17CbyVIB6eseXNDs1EvIcH3OnMc7TyNthIflWiHRa/KVOp7u+agrpsf+oKIWxLQmdRQV4J6Ko6FE/kmc1OhXaLzxmc1FhKSz7ZNwAJY9TLIETkIFjVvM/piKpftscvrF9LzwPc5t970D5XcEXVdRrRrfHb8ameQFJwM5CZggHZpAT2yQOOq3p9kegaAdJi2ABCrlxbr5y3veJ8b3soLGAMAuPjVxgzFmRJ1zW2qeRz7aNwyR+CxflYRew/SfjMSlEiFoFicdWOuU6CJNfqzwV0RN/HtXG77G7nAQs5FgnznyaIgUIii6X9S6Q0vAu6MEaxGL1EEiO2WfPfrfiG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(22082099003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVpxakdYYkhlM0JBK21KblpCYUxWMjk4ck82NlF5VjlIWEVpbGZvN05ZTVds?=
 =?utf-8?B?azByZVNCaFVScGZkYW00WjhYTjJ0SW5UQjFqa0JlM3ltMTZSTDExOENObHVN?=
 =?utf-8?B?dlFVaEtyTnRNV29vaFFTV1BHdURPQWhRVjJnT2dYVlNoTFJmZ0hjcEUrd1Br?=
 =?utf-8?B?d0tGcVNIOEwxY1JoZHF2MGlDeHJ5WWlJRVJmTVhobmMrdnFiQjc4NjlnUzk4?=
 =?utf-8?B?SnhWL042TEJNNDFwSmQvSUxaNjh0ZlVkS0l0MHdtWWtaSm9zTllKSUtKV2Ro?=
 =?utf-8?B?R1Z3Ni8rNGNsdGRzd1NuMjhya0NndHR4bXF3b3pZSjI4c3hoUUozdFk4bnds?=
 =?utf-8?B?MGZKQnpESEgwdVphcElnS1pDZXhtTXRhc0x2V2JJMFZqTUpKV1JGK3JBWVg1?=
 =?utf-8?B?aTVaUzJtUGwzTFF3UDBPMndIZ0R6RXNRTWtLeG1XM29PUVc5ejA2WHREeVVP?=
 =?utf-8?B?ZWczNUFheDJSYndZZ1hYaVpnUTFEUnArSmdSUVUzUDF6TXdNdUFYRExWME9p?=
 =?utf-8?B?bERhcEcwL3BxdXIyL2dOS1ZocER0akJzdk1ZTVRXdEVZUVpOOXUyemo0TE9B?=
 =?utf-8?B?ZE5VcG5KdUlNZmlWbjJlUTd3c3E2Y3RFZitFZ1hYYzhld29rWExCZlAyYkdm?=
 =?utf-8?B?czdmbFQyQUQ3RnA4NXhjN1pTSnYrcFE4OUQzQVlSWkVnSEo1WWw4aWFGMDE5?=
 =?utf-8?B?UTJVcUhaS3UxVWh1Y2J5SlNLdFU4VDMrcWRjOW5Pb0JWRXg4RzFJMW85akZi?=
 =?utf-8?B?YTlPSFNDYTlsdmt1a3VaMmRjZHJCVkRXRk5iYTNkSXI0NmxzN1Q2aklNMnpv?=
 =?utf-8?B?YXQ5Y0p1aU1KN0ZjYy9RZy9GMHZyYU5DVVZhM3M5QzM3MS9wYXY2V2FjNy9F?=
 =?utf-8?B?ZGZBaEJvZ2xONFFXdlhwM1A0dVUxcXp0RVlJTHl6TEdqQ1RNd2JnaG5GUHE1?=
 =?utf-8?B?aVRlVkZ0WXRpYlVpNG93WThzNktMMFJ0cWFzWjRKVTVQY2tyRG1JeEk5Z0Fh?=
 =?utf-8?B?WlM3Z1F5K0hhd1k4R3BqRlJuaUVEZkpnMDd0SWNVWDJMMUhZaUZXL0JVdlVq?=
 =?utf-8?B?NHh1emErTmkvM1VBWmxSWXkyNDdPZEZ6RGtyQ0JQNHl6ZHh6MkZBdmNqdzhY?=
 =?utf-8?B?MVlNdTR4N0oyM0wxNDh0a082aFU4TURHa1VDS2FYUnlxWjFtM3dhWndPckZL?=
 =?utf-8?B?ajQ2OFV2NisvYVJHTGVSdTNDaENQQ0lIZnBPL1c0Umh6Q3hua210WmI1S3RU?=
 =?utf-8?B?N01RVXFDTzhLMFo2MFMzUkFVMWVTQUJ0d3RscmNIVm0xNkVXV3d1Y3lPVjhJ?=
 =?utf-8?B?UkxnV1VOdTFOMzU4QWxxK3N5SHVud3JiR1Y4UjNxT1hJMkt6M2VadHZSOW1r?=
 =?utf-8?B?ejIxbDY4ay9rV09laTNZRk5HNnZiZmpTM0s2NURjZDRPOCtSOW5lNDRSVjRR?=
 =?utf-8?B?REpsd3dQakt6cW8wNGhzWVp0NzNKRFZpWTYrRHdYS2x2cTNFUEhvZDNqaUow?=
 =?utf-8?B?UVBpVFdzSS9EZDhKRGpzZ0ZQRXM3RDlDS0lmV2tQYnl4Tkg1WkNsUUt5Vm5O?=
 =?utf-8?B?cWc4bm93TWpQL3ROUnJzSDdZS2xTVHpWN2syMjhMdTkzVVpzdDdSbXFXSjZH?=
 =?utf-8?B?SHVaM3hqZGROOEYvVExNaVJtN0FCQXcvYVdLbHUzNFJJSVlIZHVFSkxBM1N5?=
 =?utf-8?B?TEhURW5Fc0dia0ZqSXRtamQ0MEJicmJCR0dXM2pRZ0Vqb0hldFg5M3hlcWZZ?=
 =?utf-8?B?VUsxSXNPQTU2VVRjSnZabFNlUnV4N0hVWlpyV3gyN1h4cmdwOUhENWI2TzNZ?=
 =?utf-8?B?USt2Z0FFVW1Gb3l3YjRZeFJhcnNwNlBnNjJGd3YvcVVRNnZzNjBOUTBuRW90?=
 =?utf-8?B?MHFEeWtVNWhGdllvQ25EYUxOdk1ZSkxvTmtlOXBaUm9zWU1kUE9pekU0bW5O?=
 =?utf-8?B?M2JONkpBN2UzRnpwUmFVV1NFZWhFTW02NFJ3MzFqUHptZVpqSFJWYnZmUXFQ?=
 =?utf-8?B?Y05SRDdHZXBqdGFQckZhTXd5eVVKcSs3bFF1eCtCcjBOYUlmNkRuelFUV3Yz?=
 =?utf-8?B?UGZURXlDZ2tDRUQwd2g2TmZqZFNkbUtmazhpYm1LTjRZaEV6ZXRCdUJSY1dz?=
 =?utf-8?B?TGl5Y3o4UXJRdVp3ZkxIdUdqNkJtU1hXNkFVV1pFUnIrcDlKL0JjL1Judk9q?=
 =?utf-8?B?enIvcnV0YjZZU1RKb1BrOEhXZVZ6dlg1Wi80TUFqWk9VRG9uT1NmV25qZzhB?=
 =?utf-8?B?WnRHaHBYbXplbmVNbkttWGlKNEtaYXphaGpNM0dmZmN1MHJzNHRQczlYb2s5?=
 =?utf-8?B?TGd3aWI0bDNZRXNHV3c1ZjdXSzFWRTIweU50TFBGNUpQL0lCZFR5QT09?=
X-Exchange-RoutingPolicyChecked: ohrZoFPGefbLtx/wGB/z4X2k39Vj4hJNGScie83M4sGuGpVMPdP6Bt1T6jL8S5KxkN59Vm+or6CqrxsmUod+zXOgPPdT1BUol1cAJApyWBJkRYn07GTRyo5buS/DqtOc9vO6o83qB/KPTrHl8lbpTQ+Eb2h0kaIPqoqLWE8Xn+eTDgwoCxx7/PLSDnGEJTqYsOiKjb/wgel3468AJf4GPRapETgg0F+fPUj8avamgB6hAn0b4qkn/vL8cq4cjIXbsfS5hA7mh4UeWfLfJVN+cGgHfGIpaCdeRkxsyY1EA5hF20CmdslXjDk3cPoM2EJ5Iav+ttLLZYJ3wqEIzGKiDQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: ce75ba68-531f-465b-1be7-08deb81bf853
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2026 16:05:40.5415 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 74+w+TcH+mTP98HlzE2kKSXu8dq1Pziupy3FDeIUILiEkHhr6o568CYwow7B+thiBoWEn3qegpagwyx2G1o0WA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8415
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
X-Spamd-Result: default: False [0.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2D1525B756B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add intel_dp_set_common_link_params() to prepare for updating the
maximum common lane count together with the common rates.

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 940e73ad451d7..e9eee452dc36f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -805,7 +805,11 @@ static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
 		intel_dp->common_rates[0] = 162000;
 		intel_dp->num_common_rates = 1;
 	}
+}
 
+static void intel_dp_set_common_link_params(struct intel_dp *intel_dp)
+{
+	intel_dp_set_common_rates(intel_dp);
 	intel_dp_link_config_init(intel_dp);
 }
 
@@ -4877,7 +4881,7 @@ void intel_dp_update_sink_caps(struct intel_dp *intel_dp)
 {
 	intel_dp_set_sink_rates(intel_dp);
 	intel_dp_set_max_sink_lane_count(intel_dp);
-	intel_dp_set_common_rates(intel_dp);
+	intel_dp_set_common_link_params(intel_dp);
 }
 
 static bool
@@ -7318,7 +7322,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	}
 
 	intel_dp_set_source_rates(intel_dp);
-	intel_dp_set_common_rates(intel_dp);
+	intel_dp_set_common_link_params(intel_dp);
 	intel_dp_reset_link_params(intel_dp);
 
 	/* init MST on ports that can support it */
-- 
2.49.1

