Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id swAeOGALOmr10QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 06:28:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AAE6B3FD5
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 06:28:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=mrqaAKMC;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B00AC10E934;
	Tue, 23 Jun 2026 04:28:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 937ED10E934;
 Tue, 23 Jun 2026 04:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782188892; x=1813724892;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xFD7NAe43z0rpS/A1pfXUMgYD4rxDgsBJ8HOjJTeYlo=;
 b=mrqaAKMCCFPmnLoGa6x7k456zgoFm8I9VvUeuZBolLMa1eMxA1y3LhOB
 JnAGRJKjbcOiwn0Z0ZNXNMQAcVeKMyi16nT15LXVvNz08a3Hd5X/nvveZ
 /35FEBXPAuxYhLHi5A8Fwcm2YJ8u8qM1T3B18vlGYM/LZtQwBy1dN7RVL
 jTUpyl/vMY4dI/NlaMPfUOFjBrR9SfBG3HpfvX23poBpKJSnG2ozNcYCf
 yz0bHEUNQSu0Mg0Sx/3TGyRq1w8R7bWFqKyvrcyGQMvspFkRSefQNLWUZ
 SPvKORJCXHHV5asF8EAFf2mwaSOK7x1Hc3BGMWUMrLHZz8ikD8PE2Pd7F w==;
X-CSE-ConnectionGUID: y3ORGZrSTTivtYxFKMpYBQ==
X-CSE-MsgGUID: trTDYeNnRpqeLeKHMQq/4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="82029437"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="82029437"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 21:28:12 -0700
X-CSE-ConnectionGUID: uRNwp8+HSF2iPw1X0F0A2Q==
X-CSE-MsgGUID: T79Z6etCTLCZ4zlMLuJEgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="245274013"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 21:28:12 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 21:28:11 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 21:28:11 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.10) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 21:28:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m+uCPxVNpH8My3VIb99nsNsBDDk5sBGYFUoIwsZI8xchmeK/l2AgJY1u9XUs2xBwfizlQsfBy8josPAAe7k0aO+vnu4JSgCeSDdOay1XuxXdyYNSH5iCVz1zrT/4YW3Fc5w3bZT3B3UnQhz0SGZxm4lE3r3Vsti9zovqfBNtMSEiisTi40FlOS5/kbAxQzafQcX78OvD2MkqwmPcktJPVBL37MJiYnMFDDQO0zd3aUPvBFPnjR8/wrmZglsUC4BZokuT+TwMJre45FxdaQA4wMd4zJWELTjYvaObKoSa2N328oKzLqY3p3InM6WTmUEWTAA5ealPBNqOWbls24MhmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ETSr4dUJPtokPnfHMD4M5Br3YorGdXPRfm6LRUOXbWY=;
 b=ubQzgLkvjbIQo89RQHfWBTN3eFvtau+zCH/83szbUbxc0DljemQXn5cb6b1GEWxCNLcJ+KoH29tcEwWngK1ZTWWQYUytjHC4czalUa/4VJ4Dxi8DVbptNMxwU2W4oOHOlqICVGB2QOzhMPEReM+U8vDe7M/f/BRh7z5gx1lgXGJOur5rSy3EDg2661QV8l8z0EnHsKi3vjXSRvcwEw3ibiKWPRwTew95FpyE3SWwuVMQhNcu4yVvn7nOg5gFYw8WiO4R+K9yUJA9kgxTykf1GnRVaHwNkjcf2bIjymyVgZjMuf2FnXleDOkU7f/LFPSw9jVpZr1Ne5mLJM565TcL8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 by DS0PR11MB8083.namprd11.prod.outlook.com (2603:10b6:8:15e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Tue, 23 Jun
 2026 04:28:09 +0000
Received: from SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b]) by SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b%5]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 04:28:09 +0000
Message-ID: <32d5c226-7781-4057-b8b3-27e6637411c0@intel.com>
Date: Tue, 23 Jun 2026 09:58:03 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] drm/i915/panel: Attempt VRR based refresh rate
 change for !allow_modeset
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>
References: <20260622213602.7244-1-ville.syrjala@linux.intel.com>
 <20260622213602.7244-6-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260622213602.7244-6-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0031.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:17a::8) To SA3PR11MB7554.namprd11.prod.outlook.com
 (2603:10b6:806:315::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7554:EE_|DS0PR11MB8083:EE_
X-MS-Office365-Filtering-Correlation-Id: 31d3255e-c978-4cd1-3264-08ded0dfd45a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|18002099003|22082099003|56012099006|5023799004|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: GaRy+zkpAQhiz/PfCVyHQ5pjdE92FPlCfKb7ZTf0lZUHa2IhUfJRzGfY8tFF5vbOOwnq/10zAxdB/CzzM3UEtWC2skMUeNAlRJvcJjeKR2cAgsyKjF7NWuEN0ovfadJldljIu7z8o1JtjorBYYchmjebYA26QFQBch1EgtAvinH1cPQhoBC1rmxKrYE8sbltKHBb9EQlgvSXYkwI1JWUd8WjL37Y3s2UVSjYzsipIzyZa93KggXUJzHxjXHp036yNFR/79MebrXqTcVqdltES4CaEIjW/LIkxLdBEMnQErlavukf6sXvugrWXgI9+y+OIwQgV+8bawNQMewW4+aaaHmjcF0IXdfYre7FOU7RGMctm0TyX91wxrJEaSQiN4Rxh9iwgDnH0l6ep/4XxVvWY4ibmjHXer7gxTWRM3QVr/E1llSsfjeSoQyKB6J4B7CpSu5uLbw36zsg4t+e6V1gIhnoZgyv+Z0raGmHW4PO8niOTidPEunZ2fkmWp5ugpKvu83f+iWN8q5u6x6sypK2P8j6PWkIzmjYyLMpqoWK/v1HQO8kPCSYiuUozcM+aDjZN/MgInb5qwEJCBO71hkoV7a96SITk8Hs/mQM7eRMbJN8CuONaVra2c8ZHhxhR/qOX9knOMuhZvbGZOi3Df1x5y3brQ2j8U956pzM9w7/dCs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(18002099003)(22082099003)(56012099006)(5023799004)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YXpvT0lxdVVZZjdqbWFkOXgyZ3dMbkg4V0F6WUVmOGRPd0Fvd3oxejdtT09s?=
 =?utf-8?B?RXFNdjdCdTRoVWZLbUZGTHpPVS8xNDBlSENBL3BsTG5xK2ZNUUg4UThIa1RD?=
 =?utf-8?B?QW40dDFqbmtEMndUT1NjQ3pyaTdCQmIvTGJQOURYVDBYWUs0NzNwMFJBcXA3?=
 =?utf-8?B?MmxRYXVpWDU0a0FsbzBCYys5VmhjY1FCRmVqVFZYU1hFVGpwVUE4NnZHUkQy?=
 =?utf-8?B?OTBFQU1KNUo4bGwxMmEzaDhBMXZaZWhWMGNXaUwxQ05UVUpJSzArOGw4SGZw?=
 =?utf-8?B?Q0hCa21jZWFwcjhPQ0FFbXRSTmozVVVjUFBYcVE1NTZ6UitpbEdQS3kwU3FZ?=
 =?utf-8?B?a1JYd2Nibm9uMTdYTCticnlTaFZDalc0MCs0U3QrWWwveVFJTFhEOHVHcTkx?=
 =?utf-8?B?elpDN3Nacm5EeE85NFEvT1dVMVUzZWRoN0U5NFNGZ0tGc3J5cmc1UmI1Zy9U?=
 =?utf-8?B?VjJNNUZmM2doanNmeldUR0lPVThVcEYzdEpUNjIrNnBEVHZick5OMnZzN3hN?=
 =?utf-8?B?bGpUVHRzNlNyOEZFL1ovQXpCdW55QncyV0pHVG0wdTlXQXlMTlR3L1RmVnJ6?=
 =?utf-8?B?ZUdkeUhqOG02YVd2clN0MkpoUW16TGJEeXR1SnhkUW9BUW9zSUpIeGdpZEt0?=
 =?utf-8?B?YVBuQTVvZGowWFNoaFlOZXQ3cVZmOEVsbFFpdXdTaGlKbkQvUmthRHVrdXMw?=
 =?utf-8?B?S0hzVUJMS2JiVVI3WTF0MVE5Wk9jSTdINUhpamgrdW1jeXRVeVRhSFdQaWZx?=
 =?utf-8?B?ZWdWZm5VRlp5S0dLSHFraUM2cVI2bkRGd0ZpazBKZjBhaVRpRzk4aFNGYzcy?=
 =?utf-8?B?U3hFZzBVbUZhWU5tQVdxb3Boc0xXK0lPSmRnWEpjNngrVmpCSXE4QVBJKy9U?=
 =?utf-8?B?TlNGWWtVWTJSNVQ4QXp6YXhVRWtEdGxEdE5nT0g1NjVzeDRnQk1PZENLTjBT?=
 =?utf-8?B?d0Rzd09YQ3pXcERLRWRqVVpHMEtwNm5IaXRZKzZzWmlVd2QwOThTRDVPaTdY?=
 =?utf-8?B?WTd1WUNjSm5PbVo1dHJFU2ZORTc0bVRMUEpNQmlsUTBSdG5EWktuOXdtcmJi?=
 =?utf-8?B?dW43S2I5SG5RY0N6amZxdFBwQ0NtWVJwbWsyNXBOSjRvMzFyUXQwaUFVV0Va?=
 =?utf-8?B?bzhZNm1EL2lGWEduNkl2cnJCOEp0MWYvSFlOc09hQ1hRa3hVTTN0OGtMSWxw?=
 =?utf-8?B?TnlWZDlMRk10MUkzL1Y2R1FoVTNjbWMxU3BweEltRUlZWEErby8rcmpxSkZj?=
 =?utf-8?B?T0kxODdCb0wzN0EydkVWTnVPbmt5aUgrQmFXU0tCUTRhVlkyNGFubkZLdlRn?=
 =?utf-8?B?SldvMWhzQWF4RjNmTHdldDNjMTdkdUpGMys3Yy9QVjBSL1JUd3pDSVMxYjN0?=
 =?utf-8?B?aDVBRzAvWklZUUROQVZ2MVVnMVNqbjRVZW5lWjEzWEZpelphL3NvamlscHRU?=
 =?utf-8?B?QTYrdEk1NG92UVBPVWdGTDc1TVdnRjZyS0MvM1pPTWh6RWRoN2VrYU9FdzZ4?=
 =?utf-8?B?bFdXZDN6eW9OMWRYb1dBMzdadURyNHBwTnZ0RFpHeUJXa0RJYjVIZG5peXNY?=
 =?utf-8?B?Z09HdHNhb1kwVGhSTlJQMzZUYXpETU5iK3B2akhQOE41alBCZzIxRXE1ZVRK?=
 =?utf-8?B?ZHM3Z3ExWUloRUF1RmM3TFhVNm1KcDZoU2E0c0xMNmhveXVvQ1ZueFFLY013?=
 =?utf-8?B?RHRyVXpmV240RWZ2YnY5VzNPWTlCekpqQ0xCZ2dlYVFFQjZmOUY0aWtFaWpp?=
 =?utf-8?B?cWtrRWtFNnpoMnhsNzhDMEdsckpLVlk3eFlvZUFlN2dadHZlbHpyT2JvazY1?=
 =?utf-8?B?MHZ5d3RPOTBacmpQb3lHZDNvUUdScXFTTmlWL3N5a2FUejAxUlZpN3EwZ0tP?=
 =?utf-8?B?L01VdzdEZXR2WWpIeHlJeUtZdFVLQ0RSM1k1RGgwRkFxaHliM3l4bTFxczhD?=
 =?utf-8?B?WCswd1JKT2Q0aGNFYkdqVktjRjM3d1hpUFNuYUFsVnJBVEhVQ1JaSDRDNzkv?=
 =?utf-8?B?M3ZWN3N0UitiL0ZWUmVvOHFQdjZnbWVYRmwxR0pBdHFtTmxFSkw5blQ1WmNR?=
 =?utf-8?B?dHJhU1piM3U5VnZkdThqR1ZQTDcrYy9vRkxyQUdNNFBhWE9QZENHazQyNjRn?=
 =?utf-8?B?MEFDRE9sZEVuYkc1T3hYUkFPSnlQQU4ra0RrNEIwU2Nadis3NjJYRFNDMUIr?=
 =?utf-8?B?MHQvYTlEbk1sZHRIMVZja3JmcXZIUnFYendZT09XalhVUDFhWGhUaDA3eEJa?=
 =?utf-8?B?S0tMWUFIWWV4QldIRmsrTlB4OEluRXhBcjViQzlzd0VJL3o3Y0drbG1nNnZh?=
 =?utf-8?B?R2pCdVB6Z3g2RzJGOGtiSnNYUS9WWDkxSW1Sb2F0bTBJOU5JR2JlajR2Zmwx?=
 =?utf-8?Q?DUltFoCSwTqWtm5s=3D?=
X-Exchange-RoutingPolicyChecked: sYDRFCglrE9FvhNBO0QrboiuUI8q8rQAXp9nVD9jPsKptvTnSMkwIn+RN58+nTYZx7wTpEMTrELRZ8ZuXtpZVH8eUeCU8CGnEH+awlcpbJqagrVD4nTcY/C8np2pVBZ7rDYd+C0EcteQMV76yKirGY8GjG+neX9TSnM9WoPTox1rlOXPpTVYdgKBpn4jnKnnAcNKQ0nY5r30WSk8kXPER+VKUPeSNOCkb7n2hJrhTQVeMwmfRbh9JK/DKzooIe4UEkv3S6p9Shw1uk+btjTyNSKosNZHD2wI2o1+OU+vlKZOW9HKPdzz5YJMxmKw9zAXVJZhmjOS82CbFdlbzXUSHA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 31d3255e-c978-4cd1-3264-08ded0dfd45a
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2026 04:28:09.5538 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YAdNaWymgRJ0RZ5PxYMRY5HTvh67hgwIgeLnf7tJOMB+9/mbbry/C7uHFX3doVjdcNtk2x4goNrGy+FMmBQXfO/tOWaAmexojPwjcVDMEn0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8083
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 41AAE6B3FD5


On 6/23/2026 3:06 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Adjust the panel fixed mode selection algorithm to only consider
> fixed modes that are "VRR compatible" with the old fixed mode
> when userspace doesn't want to allow full modesets. This will
> allow a VRR based refresh rate changes (ie. just a change in
> the vblank length) via the fastset path.
>
> When full modesets are allowed, we still use the original algorithm
> as that may pick a fixed mode with a more optimal dotclock, potentially
> leading to reduced power consumption.
>
> This approach works as long as userspace does the initial
> allow_modeset=true commit using the highest refresh rate it will
> want to use. Subsequent commits with allow_modeset=false can then
> switch between lower refresh rates without blinks.
>
> One remaining hurdle we may need to solve is the guardband length.
> Assuming the highest refresh rate vblank is too short for
> intel_vrr_compute_optimized_guardband() the intitial guardband will
> match the highest refresh rate vblank. A subsequent switch to a lower
> refresh rate will then recompute the guardband and select a value
> that is higher (since the vblank will be longer). The mismatch in
> guardband lengths will prevent the fastset. We may either have to
> preserve the original (sub-optimal) guardband, or we'll have to
> revisit the idea of changing the guardband without a full modeset.
>
> Note that I'm not 100% happy with this solution because
> intel_panel_fixed_mode() is no longer fully idempotent, but I wasn't
> able to come up with anything truly better either :/ The simple
> solution would be just to always pick the fixed mode with the highest
> dotclock, but that could lead to increased power consumption even
> when high refresh rates are never used.
>
> Perhaps the proper solution would be to just deprecate this
> idea of taking in random modes for internal panels and then
> cooking up a compatible fixed modes. Life would be easier if
> userspace was required to provide the desired fixed mode directly.
> But in order to do that we'd need to introduce new uapi properties
> to control the pfit aspect of this, and we'd probably need a new
> client cap to select between the old and new userspace behaviour.
> Something to consider in the future...
>
> v2: Rebase due to earlier changes to VRR fixed mode selection
>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com> #v1
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_panel.c | 42 ++++++++++++++++++++--
>   1 file changed, 39 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index faa24537ef63..81e638d0c7b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -72,9 +72,20 @@ static bool is_best_fixed_mode(struct intel_connector *connector,
>   		abs(drm_mode_vrefresh(best_mode) - vrefresh);
>   }
>   
> +static bool is_vrr_compatible(const struct drm_display_mode *mode1,
> +			      const struct drm_display_mode *mode2)
> +{
> +	return drm_mode_match(mode1, mode2,
> +			      DRM_MODE_MATCH_CLOCK |
> +			      DRM_MODE_MATCH_TIMINGS_VRR |
> +			      DRM_MODE_MATCH_FLAGS |
> +			      DRM_MODE_MATCH_3D_FLAGS);
> +}
> +
>   static const struct drm_display_mode *
>   intel_panel_fixed_mode_vrr(struct intel_connector *connector,
> -			   const struct drm_display_mode *mode)
> +			   const struct drm_display_mode *mode,
> +			   const struct drm_display_mode *vrr_ref_mode)
>   {
>   	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
>   	int vrefresh = drm_mode_vrefresh(mode);
> @@ -82,6 +93,10 @@ intel_panel_fixed_mode_vrr(struct intel_connector *connector,
>   	if (!intel_vrr_is_in_range(connector, vrefresh))
>   		return NULL;
>   
> +	if (vrr_ref_mode &&
> +	    !intel_vrr_is_in_range(connector, drm_mode_vrefresh(vrr_ref_mode)))
> +		return NULL;
> +
>   	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
>   		int fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
>   
> @@ -96,6 +111,10 @@ intel_panel_fixed_mode_vrr(struct intel_connector *connector,
>   		if (fixed_mode_vrefresh < vrefresh)
>   			continue;
>   
> +		if (vrr_ref_mode &&
> +		    !is_vrr_compatible(fixed_mode, vrr_ref_mode))
> +			continue;
> +
>   		if (is_best_fixed_mode(connector, vrefresh,
>   				       fixed_mode_vrefresh, best_mode))
>   			best_mode = fixed_mode;
> @@ -224,10 +243,27 @@ static int intel_panel_compute_config_vrr(struct intel_atomic_state *state,
>   					  struct intel_connector *connector)
>   {
>   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> -	const struct drm_display_mode *fixed_mode;
> +	const struct drm_display_mode *fixed_mode = NULL;
>   	int vrefresh, fixed_mode_vrefresh;
>   

Perhaps an early return for if (!vrr_is_capable()) here will avoid two 
calls for intel_panel_fixed_mode_vrr().

I leave it to you.

In any case the patch LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> -	fixed_mode = intel_panel_fixed_mode_vrr(connector, adjusted_mode);
> +	/*
> +	 * Attempt a VRR based refresh rate change if possible
> +	 * when userspace has forbidden a full modeset.
> +	 */
> +	if (!state->base.allow_modeset) {
> +		struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +		const struct intel_crtc_state *old_crtc_state =
> +			intel_atomic_get_old_crtc_state(state, crtc);
> +
> +		if (old_crtc_state->hw.enable &&
> +		    old_crtc_state->uapi.encoder_mask == crtc_state->uapi.encoder_mask)
> +			fixed_mode = intel_panel_fixed_mode_vrr(connector, adjusted_mode,
> +								&old_crtc_state->hw.adjusted_mode);
> +	}
> +
> +	if (!fixed_mode)
> +		fixed_mode = intel_panel_fixed_mode_vrr(connector, adjusted_mode, NULL);
> +
>   	if (!fixed_mode)
>   		return -EINVAL;
>   
