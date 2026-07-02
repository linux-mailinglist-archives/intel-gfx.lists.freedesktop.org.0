Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VAo0CCzSRWoOFwsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 04:51:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DF16F31DC
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 04:51:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=B7PYulWC;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7E1110E40F;
	Thu,  2 Jul 2026 02:51:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB36610E40F;
 Thu,  2 Jul 2026 02:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782960680; x=1814496680;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wMdV+ZRXOlyexLf6fyK5yMAmtnLFJR6nROQW9V5G2Ds=;
 b=B7PYulWC7AO5kWBh+hbF4b2+/1CNPkyUEQ9ERRrBPqD958dHLK5b5LXA
 iI1tZl1I9NP9BMHrebsFRxLXU5FIM8PmqEPkrRP8viI5Z9edigccVCFYh
 e+TueLLtJYv4G+8DleBulx/xTiSM7oQxSQ4PwdoSsHjkCdciDbmyx9Ovq
 fnyvMGhPWgK3FmIkhhY2JaF9PscF5FCcLdz4VHlFyxNYA/2s++OCh89Nk
 prUJ6GIgGb81UyV/VyCQBpgfaW0ne9A0HECEK+I2Y3nZkiFv0/AUBfffz
 RINSsRUKA8P3ZwCBBIDjnk6/vrcIH195pR7ObCKS4NPviLpoZcT6SYzz6 A==;
X-CSE-ConnectionGUID: +Hb+74aVSRusGQ/NCkegkQ==
X-CSE-MsgGUID: 3hdmcpH2Sr2zzFMyawVFGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="83574536"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="83574536"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 19:51:20 -0700
X-CSE-ConnectionGUID: 3dyoceBLRzSRDv5xZ6uv6w==
X-CSE-MsgGUID: cfdKp/paSfu7SFjqooouZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="251687956"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 19:51:20 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 19:51:20 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 19:51:20 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.52) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 19:51:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JJsej3qFRacx2h/FcgCrNMrzKW7VA3dvdt0vzEI7zsQKXtYdrt/VUFjDgaDqeBndyqVTAMnER/wgN0eIkQVl/hVwbZA8CIrQ1+JFfHi27cX0LjzwdK/YHxOlI6p7tsmUWBY04fudYAN9XHkV2JWci7Cce5LPGbT+lJAqtKNwdXiWIynSAdPQDFlhXofgv5omQyBxB7SL7IXs/ooFSjKvUFKoD2B9NH1hUPLXnueO0BAGFSxbLHUkG9xDB90rxuitQKCK99uISChpuby20cH07SLvPV+0U6C0MpqTfJvza4qMMm+Rx/k6mP/J0enmnniKPc1jw38CqPuqhtmdA2v3/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LD/gfzE3jXC/sqYXZAE6UmKIoqBL8NCkGhVAEzRtonc=;
 b=VZVri5yZUp5OzlIiZktXl37ijhMAZ+6Y0qU5Mgu63ABSJnKRBbNQIsYg42NkOJ5lNH6uEVXZ3nDUfVU0BD3i6Mq26ciUUKgITRZ/+CvInOuUhzynuXkf3DSgSQ6jO1ltQ1hSTQHEG4UY2qcEu8hQ/+DTdhkmn3x6TqAwES2r71Wg09tolj1Qq2ddESvT1StyifVFhcVkRCaEme6uEPEd4odKLTTt9XOQxiOyR8yiTiXn42UELHkVueA2hFKNbZpwtBO/87YdR8G289Ky5UHGHQ1OexEuT3fay8J9ozu/xii/IB32mPUQZNReVVHeJ/oH9vki/j7FYMmpgiuF/bJbDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 by CH3PR11MB8659.namprd11.prod.outlook.com (2603:10b6:610:1cf::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.18; Thu, 2 Jul
 2026 02:51:16 +0000
Received: from SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b]) by SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b%5]) with mapi id 15.21.0159.016; Thu, 2 Jul 2026
 02:51:15 +0000
Message-ID: <d377e044-6d7b-4b57-95a9-5dcf5fd33193@intel.com>
Date: Thu, 2 Jul 2026 08:21:08 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] drm/i915/ltphy: Readout ssc_enabled for LT PHY
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20260701091503.1302226-1-suraj.kandpal@intel.com>
 <20260701091503.1302226-2-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260701091503.1302226-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0060.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d3::9) To SA3PR11MB7554.namprd11.prod.outlook.com
 (2603:10b6:806:315::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7554:EE_|CH3PR11MB8659:EE_
X-MS-Office365-Filtering-Correlation-Id: 353bb7ca-3513-407a-9dfc-08ded7e4c88f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|6133799003|11063799006|4143699003|56012099006;
X-Microsoft-Antispam-Message-Info: 1QgOzkL+86tkUnt4w5YuKBIYR6cI/eSBYNFY8sgtM747F6XydmBhCzlSFANZywgTt2cUQQIz1OsQME8hXIw/WskDc51Nxl9QGrhk4eYnzR2uJA4jXUdAl1EC1Q374k/xwbJHchGoIhtl7lD0WF5bzO8iEVZOU+uLBILZIOdcdVJ4bH/+88AOEQfIC3gi7rFkDZv2s6vKkbvShzSloGRyH1jtfNYOxB5hGo/u4ZIUvqx3uSetQYq/3sJe9HBRpaLJ4G07iKQmaw/V4eIsfStJpp6yEznDtXoPxSuEZuq28RiIvNVQGh8W+kvoN+fSGtKZ/C2f15p5tREekp748lMLj743jZcOtdf5hk5M4OH4jig8ebw8GtbuVsXOK8u7xP1appUP+SkGaDiXXcb2f+KKp6pWZndywwFDjEYvY4fwbt0lK1hfELIRF/NC8Foxya9oERQsf9S9PBjdqJW/WFzkg0+46hEhi+ImE7fSa1taBZ+T1RYGfptu8x3iolWOlFtSMpKRimOpIjf/H82q+AgQXrIf8YcpsSSCXxw4otJ/Ln/9o14UzuTIYICfaIepvPTEu/bEbnEVtp66veJIlqGRoQefrjq5njDgKtcSmr0qEsC5WZ5bexUYhbNPdZZMkmiRRSYPTFFgqXhWCX4kheMtl44bkmbqyFMefNsoqsXlzIc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(6133799003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NUo1UElrcmRGWkd4UFBjVnpLTDlpRERlMVM1VDc0SVJwOWhKWmhicm5SQy9M?=
 =?utf-8?B?bTJNeVhUb3pBdWtneG9vSnpITVBHVlpIWjNZMEZIWXRXK3VOcDA4Um16ZjAr?=
 =?utf-8?B?TjdEdEdMN1pyenNDUzN5MWVFVXk5aVExcWRjV1o3cmk5MnhERk14bFBXZC8r?=
 =?utf-8?B?NTRwRmRQTC9GYWVrNEhFWFREUTdkR3RRemlvMUhOc1ZLeUhjMnc5VTJMejdS?=
 =?utf-8?B?ZE45UEM0ZTJ0eEdLUjJ6MDBQZVJveVFSRkZGSGd0Q0FsNEZ4VnJnTlk1MWZ6?=
 =?utf-8?B?NjloT3hCazhoM2l2YmZLZDlia3FBR3pSNlJxc1p0djVXWS9OZFNxT3FFcExQ?=
 =?utf-8?B?eENoYnlGNVdOc3l1YU5LKzBCV21VeGNYNUNTcnFISGdXamJQZldpSTBzZ0lt?=
 =?utf-8?B?cDZZZGE2L29MSFBqZkxmMjJoTWJGdmVRYTlQK2ZvWXVLVTRqZS9TZWJnQ2pP?=
 =?utf-8?B?ZGEyYzQ1Rjlab0JxNE11SUtIdCtud3F3amx3MWZFY0VjRnVRVmZmYW5IWlZn?=
 =?utf-8?B?V0JXWkRIQk82M0hFd3dGTWFvVWtWcDFIQkxEQmtIYjMzUVRvTXdTV0JvYnNJ?=
 =?utf-8?B?RkN3b1BsemZtY3VieWZzczdBeXpBampPOHk4aEtFMHZoZFkvNTYzN0FPb0FW?=
 =?utf-8?B?T1ZkNlJxcERsRldpT2V6MU5maS8zbC9IM1NLaVV3SlpZcERXeUZGeUtXbGJi?=
 =?utf-8?B?Y0VCZ0M4UU5zMC9YOWU0SzFnSUgxcUpDZGtsV1J0RnNxd3IxUW1ZTW8zWGF0?=
 =?utf-8?B?UllKbGZ3TlBGZy94bUxxdFlrMXFscEtXbEdXZU96b3ZxRGYybHI2VkpqbUFy?=
 =?utf-8?B?U21DYkhOL1VMN0dkbXhxNk9GRjErZ29oazBCaG5PeXM4VHFLaUl1Sy9LS2xv?=
 =?utf-8?B?UVNaUko3bnRHbmVoVjIwYjJ0emtOWEZtUWNrTWtsbURPSVJYZnByczBUOHps?=
 =?utf-8?B?RXgzbndnZk1mcXRKc0FBUXdNS0JGcjZEK08xYWFuK0lRNXJpdU9NZlFLQnNV?=
 =?utf-8?B?S3NoQllLRExSNkRBZXFncHl1d095cUpCMFZMa2hYdkhWc2l6WjdNbHJvekN5?=
 =?utf-8?B?aWh2c2lYVjN3VmhRWTZmbXRPL0YxYnNObitZVUw5SU1NMGdkSHZwZG1jTEgr?=
 =?utf-8?B?SXVXdG41aGVlRmUwK2FiZXRKS2h3WGw0aDFXUFJDV3ZSUmg2YlM0ZUFPM3V4?=
 =?utf-8?B?MWJaeHJjWGgvVTl4c3dBZUY5V290Ti9DTGRMQ0FxNG1SU1ZDSjZ5Tk9IcHFy?=
 =?utf-8?B?Ni9Rd1V4Q05pT3dPVzdUOHZjeHNtMWxYam9VdVNKRlVhOUN6YVJ2VTBiUEtw?=
 =?utf-8?B?NFNGWUljV2lZd21kK1M1K0poVU90ZzZSdTJSSGpYYzlqMlJnSkdSdzQxc1lK?=
 =?utf-8?B?dEc2SVdqaCt2cEJwYzlhT0dQOGNMMGwxN0dOeFM3SFNBUEc0ZWcxWURYZGRh?=
 =?utf-8?B?dHVvdk1XU0lnTU9lemg3aDMxcGtrTktEc3JBMDBtUWtoakhudHVNVVh1bkZk?=
 =?utf-8?B?MjNsQUlFOXluTDBSUFpEa2VUSlFHaERERElDZFIzeHk1QkhpY05tYUl0cGpt?=
 =?utf-8?B?V2NhUUpOSk1kc1BHd1k2dmlnRGxBVmQwc0dlNlVvY0FoM2NTaW9QQVlBYURl?=
 =?utf-8?B?NjhZZExCMjZmN3kyamgvZE1VakdaNmJEZmxyRmRNRXA5Z1ZKRTNBUGxibFpH?=
 =?utf-8?B?RUdMK2NEZXZSRS9yQk5JUHlKS21ZY01HdzBVcEc1WmpNMmtKYkt6ck1vQ0Nq?=
 =?utf-8?B?dVRXQlpXVVNJdElYbERTZ1lXNSt4UTg1QmFDMnlrVlFhTUd1bXc2YkpVSDNG?=
 =?utf-8?B?OE4rUFpJTlJ4SHE1WmEwMmJqNmltNkJDbXE2V0VsQTBBRUUwZlpCQ2Ztb1Yv?=
 =?utf-8?B?a0JubE9FTGpGRHBLVURKbzNmMlp1MmFiUkk2blM3cXlHSytTUjkyaEZIaXRH?=
 =?utf-8?B?OUFjODZOc0pOSEt2ajJRUUthSXJqM05hUnVGMnNmMSsvRTc1emdBS3hQL1Jr?=
 =?utf-8?B?Sjg0aXYrOHZGZ3MwZlVFTU1pUnhucVNNMnF2b1A1dzNMOTQ4dVNaQ1g4N05E?=
 =?utf-8?B?L3dibmtROHoyUGl2TXhoNHlnRkNKUWtPTmZZV256dzQyclowVlhOdkVPT3JI?=
 =?utf-8?B?OVVMMXhjeWJXamhiTG83b3p5NXpsMW9saEJtSkgzTjVrTkdxNllzOTFHSkh4?=
 =?utf-8?B?ajRldWhlZTdJVnlOTGEyZnExSFh5d1VUNVVWTzdiSllxZDV3WUJNOG1zNC9F?=
 =?utf-8?B?dk85Y2tUUmJwTkpJa3ZpSFVuRlhWZkNDTHBKa1hXQkJMenhUL085eUpGb2pF?=
 =?utf-8?B?L1VJMU1rM3dsNWl3MjZqd2p5bzZCeHVFSGwxeVJ3aDNsc2ZQajNGUnNKTGQy?=
 =?utf-8?Q?AkWC2Acp1tyV/qnE=3D?=
X-Exchange-RoutingPolicyChecked: N4TE9f1lMz42Fz6CYC91u3L9HeCfJQvmgiEWNvIKdlcHwemcjmay1CHiO7mn5/9VCHS+YLtR/i9koNnyiXBMSByBdUNQpD3aT0ECEi+xnN8DDIUgyRJtqncqy7m8w0bSpEBRMa1+1DEr/iONYtGfdwN+Uyf0Yc2YM00hLh4/qX82U4Z7XvPlZ4ojtdA/B5E2YZJAU0dw4gUHj4O3cLrbFEIX43tFJYKzA9DpcFsp61RPimHBdhbPef9i3nU5oYfiWPrAMH4dOsMJYC0epjEv5Zt2qNUxYT56BB2TeoqhAr8Un9FIcFipbB65uJdqw2nc0YFSQTbpC3pHTR0WKjhhnQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 353bb7ca-3513-407a-9dfc-08ded7e4c88f
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2026 02:51:15.4649 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n3XDSo8GlG9ojKKopvdwomLT2UqPrNYcH8mfENUmuLQxdU/TliINqjNX2qmBhflqGUkVX0jSIg1AJyWcxh14B17cqc80E6hF0Q1/TI2+V3A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8659
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 52DF16F31DC


On 7/1/2026 2:45 PM, Suraj Kandpal wrote:
> We need to readout the ssc_enabled param for LT PHY pll state too.
> Create a function that does that, we only need to read SSC Enable PLL A
> bit since that is the only one we write Xe3p onwards. While at it
> improve the dump using str_yes_or_no.
>
> Bspec: 74667
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
> v1 -> v2:
> - Fix build error
>
>   drivers/gpu/drm/i915/display/intel_lt_phy.c | 14 ++++++++++++--
>   1 file changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 615ee980470e..956181f80d35 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -2178,8 +2178,9 @@ void intel_lt_phy_dump_hw_state(struct drm_printer *p,
>   {
>   	int i, j;
>   
> -	drm_printf(p, "lt_phy_pll_hw_state: lane count: %d, ssc enabled: %d, tbt mode: %d\n",
> -		   hw_state->lane_count, hw_state->ssc_enabled, hw_state->tbt_mode);
> +	drm_printf(p, "lt_phy_pll_hw_state: lane count: %d, ssc enabled: %s, tbt mode: %s\n",
> +		   hw_state->lane_count, str_yes_no(hw_state->ssc_enabled),
> +		   str_yes_no(hw_state->tbt_mode));
>   
>   	for (i = 0; i < 3; i++) {
>   		drm_printf(p, "config[%d] = 0x%.4x,\n",
> @@ -2221,6 +2222,14 @@ static bool intel_lt_phy_pll_is_enabled(struct intel_encoder *encoder)
>   			     XELPDP_LANE_PCLK_PLL_ACK(0);
>   }
>   
> +static bool readout_ssc_state(struct intel_encoder *encoder)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +
> +	return intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port)) &
> +		XELPDP_SSC_ENABLE_PLLA;
> +}
> +
>   bool intel_lt_phy_tbt_pll_readout_hw_state(struct intel_display *display,
>   					   struct intel_dpll *pll,
>   					   struct intel_dpll_hw_state *hw_state)
> @@ -2250,6 +2259,7 @@ bool intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
>   	owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
>   	lane = owned_lane_mask & INTEL_LT_PHY_LANE0 ? : INTEL_LT_PHY_LANE1;
>   	wakeref = intel_lt_phy_transaction_begin(encoder);
> +	pll_state->ssc_enabled = readout_ssc_state(encoder);
>   
>   	pll_state->lane_count = intel_readout_lane_count(encoder, INTEL_LT_PHY_LANE0,
>   							 INTEL_LT_PHY_LANE1);
