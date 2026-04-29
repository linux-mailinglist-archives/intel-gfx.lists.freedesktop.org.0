Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uM0DCBoO8mkynQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 15:56:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A15B6495357
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 15:56:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7621110F02B;
	Wed, 29 Apr 2026 13:56:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bo1grMbq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DFF610EB89;
 Wed, 29 Apr 2026 13:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777470993; x=1809006993;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=eakianfFaxnZnRqhof/PEGvoEyaqYy40I4zs1kG26Ds=;
 b=Bo1grMbqhDVCTyIBPiHgObDaHFCBZ3CaJTbNzGOz5J2k1MXXUNWptVdf
 VNr0FNVLEDsFZMmSeaIVsjfIGahNEl8MGA4d6XwXmKDnwMzuZ8/Iu8YhL
 6BLZt4axqZGeNzDFvQsj0ekrr04eDwozbKfD26L5yFbgAm/5EsqNxUkZJ
 Gfghvt+2feF77ZHTYXosPCoPZel9PYUfyhTfQ1GLhR68iPCk6vuwD/POR
 CbIR8JBdOdUBvEkFUyPnPWOBKRIHJ/kj2SVxC9+0cFlyMY47I/xn0M3Bf
 xW8iDj5U38RCbVwhcl4UbAvNsdkX3IC4Bzw9b8fJycJ3ZshXKfiPF22Bj w==;
X-CSE-ConnectionGUID: J10Hvz/fTjGidPa2c3rB2Q==
X-CSE-MsgGUID: +ZE/u6SnS6WddmmEi5DRng==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="103852603"
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="103852603"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 06:56:26 -0700
X-CSE-ConnectionGUID: vipjFI3aQI6ofgTyxeJP7Q==
X-CSE-MsgGUID: fJAiuNXzTJOHSf51R/AtCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="231621231"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 06:56:26 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 06:56:25 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 29 Apr 2026 06:56:25 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.5) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 06:56:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Klx7dMsT1hF5X6D+i89/76A6R2pIzZNRX4rgjDnOMNBACYU1PjKsvePnFYr2zUmtIaNsXrnzBQ4Jq7d8OTapIkvLfRiSmqTCWYcywAGMup27SD3+zXwIxveEkuE0npL0nazeAlGQ56O4W278hl2o52vUBye8NI1kzj21gLEvrrb24Wt3HwX9YN2XJ6HFp+JpY9tr9XTsIcR3v8Q/QsLIGBCFAzwjZrAP4fV1qs5tmOCs43QQMKNG4oYLO7qd/+n7BmWXVzqb/HM/XsR9pOjEKoIfNarjNjeVVBLcAJjtbLCtSYPVrFXwU9MzdO8ofEASI/KR6oaicCCtDCIY/X80Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wJmrrttCec4l1D0ilswS+AImCWtZ5dpa9qqALEdzaaY=;
 b=F4mn8vrQVbCAUgB8oZW/7JrpdBTNWdzbSeLkEWcPT8WNzQajPwGpmOuqdsCzuML9DXlag2swSOg07fKc0kXtVb3xtKGceEQJKZQmz7tu4iDJGlW8ctRA9gKiAr+st2uoH3KdixP0Uu8Sja8qD1Yfg25FIO0PLmdLORylq9vV7PgG0LfpRTzLsUTWKcjXV4u/w+V8/jxCrMWjIa0AKZ5Pzk9wpV5YjBhQs2VZDEC/qm3S/Tb+o0UNq3dhbXGq08ffa4qJYwNSB/Mdun+3ADQZiuZWZ8z+tem/nhYZ1GcDJ76IIBXv+Co7pGWPIJP/E+lcID5NJ84RzMeLZ4tBEfJQ0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB7100.namprd11.prod.outlook.com (2603:10b6:510:20f::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Wed, 29 Apr
 2026 13:56:22 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9870.016; Wed, 29 Apr 2026
 13:56:22 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jouni.hogander@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/psr: Use DMC wakelock instead of DC state
 for VBI
In-Reply-To: <20260429110023.611664-3-dibin.moolakadan.subrahmanian@intel.com>
References: <20260429110023.611664-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260429110023.611664-3-dibin.moolakadan.subrahmanian@intel.com>
Date: Wed, 29 Apr 2026 10:56:17 -0300
Message-ID: <87se8dan0e.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR05CA0044.namprd05.prod.outlook.com
 (2603:10b6:a03:74::21) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB7100:EE_
X-MS-Office365-Filtering-Correlation-Id: f7861cb9-edc6-496c-3d4e-08dea5f718a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: 4oeD6m6RjGvA5SHObmPVdSQcpAil8pK1OfVCY7ejUjfaoK3qPTn8TyBcfEnNTwS9G3DDn6a463NfA7YsrVS/uUqar53rpDA/QYz0nieZ7KGHY4apLxvLMY3UEymwjLtLfMI7IzJiyFUgmJs+/yAn989JCOzVK717ZSB4tyklhjyPs+orCRWE8oUz0Ri2HbqIOm75gHyFNv0f8smATETzG7FZLepOjUlkziVMDGbf9KTIXUbsMN1hS2XvgF4Pnzy8ZmmbSwnDOj97+hzXWuCyQQVap0umAsWoJLBFGjPJsbmrYcB6NN4tBZrzkVPQXBaxqBvF5dfRcaEC4imthczTDx6v/KK9/zyPY8WQPD1W6j++188vzIsQjjO3BgkfPaQDvI3FGiqLudwZ2PHJmXxtOoTWqAkMXLOtN5SLtwQEqFO8S6Wu4rSVa00VrCjndhcCrDyf8VMTV8zNsdGt62NWgkbjbb6yMFb6/vTXev0HnQCPZPk4sK6xPoVgCMQGn/gykZjfotvGS2UlmWtlrumMbxOj6moS5Ux7mg4roLGdMUrO+xH/cI5GOcvHFcGCDEHSaq2os62e38GldyUeUF5F7UKT37bnMvJiKjfy0blmA7RwUr96Meokk2RgWwbQLe3zAhZUrxYVxJt+GfdA5akhMUQ2azmgowC6j6iQjxY2fiTF9Zpao+4svi0bY79zDBsR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7MwjqAViK/r3GZSimkdpGkm+6kfyK64lLNEjVm0WI5mKkH+rmHSuhsAgOp8X?=
 =?us-ascii?Q?MYlLFbexAX0wGFlf+uGF16xRy/HV5KK1gMaITlahXvgsebOaDy31ypjczB8x?=
 =?us-ascii?Q?QRJArU0STZgegeVo9AvOgGvEk+qhdLiuNNlbCC9DubTcm35uI0G/QKJTyctz?=
 =?us-ascii?Q?1IOVfBMYy67MGLZnKg5M2TK1FxBeDRaU+xGbU2yl//sImg+Oeh/w6dyU2fxb?=
 =?us-ascii?Q?jINdMG4kYrbsYNXImbV4onFj6d1CBuC4yDS80JFqQ2ppaoJbbVjTmt0h5eLi?=
 =?us-ascii?Q?NdxvMLC4miqVHXWb/mABPmeJyIOQcMDC81IeuHOqsASZcJsmn4PWSHb8aOCI?=
 =?us-ascii?Q?Mq9QB6WT0Q7ffjyz6Le0LpIKA+TTFvYyAxog3N13abFjDQKUuUz4bNkXz8do?=
 =?us-ascii?Q?JpAXknXRo4NeaNCPmNwlWj09VEwOHp0GErCEEWAUh3KoQBq7sgEw6laPAFFF?=
 =?us-ascii?Q?WeqSCb5nMBOEJmSqusZhgc7K/LTokh+xQoAW9O1/Z+1oTKb8MDhvTkyBk1ol?=
 =?us-ascii?Q?x1KHG3GpDa0UVGXv24vE+FYZBn9a0anT6/XlJfNO4GYrsX6MVhwKf3gzAp4J?=
 =?us-ascii?Q?P+dk6AiZfEIRNw7z/a/C+912NFooE540xs7cUYYbKMRIyJneJ4lCfoak3wtm?=
 =?us-ascii?Q?vfKzcuV4mG5jUNsZtAYyjJ+OnaPlwLLLunFW4kmbRzt8MOCPwjrXyKc0QPm/?=
 =?us-ascii?Q?6dteqvHnX/2jGtxcWmGqZr+iQ/KswgCyfgJDRxt9CuTZ0RyDgzW3/PaLtO4G?=
 =?us-ascii?Q?gwDaztmESQP4EdcPYCPv1EPdX1eZ8Smsrolt+pgfg7h6zSEFmPZQZ9Z2bVVJ?=
 =?us-ascii?Q?BAFL52mluAqVChCr4XCUY8Uk9JT8BCo9kPA2FSUprOjODeFxBrdi2zOPYPFX?=
 =?us-ascii?Q?xbJemHFUoomOzU2Csn4kz9S26HpC9Yx+u52DzKpbGT2OSvc0uUGV5Xkz7qi8?=
 =?us-ascii?Q?+Yxc7sHF9THz8kzDKsS+mEUryB18TzySiU7AvtfLYLQ8OVO2A4elVxLgW1Wx?=
 =?us-ascii?Q?zbv7rWWCENNt7F6jG/jWfNJ1ha0jHlWnlUCdko/85pl3EeSYxHwQ1q5Iur1W?=
 =?us-ascii?Q?qv9EwgwArvwf1APd+1EAaVM/itQVV6NPI6tmg52okB49jmqgyyFObpyhVA7H?=
 =?us-ascii?Q?X+PSxF3G89KA3u60sCKMJvjNLVlOzaUxIp61T+ulRveuGz/RFtTZ7y7fr2DS?=
 =?us-ascii?Q?i9iUQA3VWZLveMjN0xnJD1hylVfPZL6MPsE1vY9Wefs2aO41jjK6BV5gqqoO?=
 =?us-ascii?Q?yGWB3f85Lxm1XbYhJNfh5saz/GTB9mhCzDb63wtEV4+v26G3zzu1FE+WjBpd?=
 =?us-ascii?Q?OAnfGIeCzzRtq0Qa2mszTbqlCEDDC8+56uslTos6QtohDPrihpK2KmHbNP+A?=
 =?us-ascii?Q?yYVPZ84sQcvrZIThV8Z9fV5+feek6/pBOCEPcB9PVkD4rakFRSZ3xSsS7JBd?=
 =?us-ascii?Q?laH7wlhH/WLo1sgwj4aXG5PiIRi8zNHk71FztcTmZSARgs7NKBO9jB2oh2+c?=
 =?us-ascii?Q?j17ZamSLT4kDknFHshb1IJlZ8bfhDeeIvTS6yCLHZCzba5hx952f+la93oIn?=
 =?us-ascii?Q?ooxgp8OOP7ghIlK7hw0WLQCct6x0O2XIwVElnWuOZlUj+LRmkdvsw/BEgWG0?=
 =?us-ascii?Q?V/6Rm7evKrgwSQ64UYAIFJeswZX5+tyuvyUxmalvX/Soaz4GYB+pKh620ELs?=
 =?us-ascii?Q?4akxJdCSq62BBXer/iGZ6kct+77Ljlc/yCDd9SbMN7WYKhzEBVjLNcdeuShn?=
 =?us-ascii?Q?magJjukEmw=3D=3D?=
X-Exchange-RoutingPolicyChecked: Dc9/ewhTxD3p1nhRIXc7pVRY52vooaVygCb17y1RECMOA9UIZtKPiXdGBrZj8NdzcdeOeGD4pGzlyEdSdR8JC0yyCs0OW6XzM7KrAZu1SX5In9+M5778yozsdjTxQxRsqLOE6HnTdBP7pjQ/7Bzxa7A7abYai2zGmnwMxDrhSdYRWqdUKUwUPY0rDXoAbY3wm4Me+Gaf8PquyZ5C6yMj/uR4LBfMP9yatOPGVxlVsR6Ks65eyuR6knEeP5eN7xoEjA1asM9nPLdHCOtRSEfE5e56t4CYw3oLkpkKAhIRoZCzDWDoBAbOTzZotZuN48j+MUx/OH1wQkFwgQNDzpsydg==
X-MS-Exchange-CrossTenant-Network-Message-Id: f7861cb9-edc6-496c-3d4e-08dea5f718a9
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 13:56:22.4294 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ovHx3yPSsnemlUzYC+/ZihTH4ae5YlIVTLBfntWYqGfWiREsMe6Q87d69P/0N8jJ9LWW1XJVR/6+Kea/n6vyrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7100
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
X-Rspamd-Queue-Id: A15B6495357
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
writes:

> From display version 30+, use the DMC wakelock mechanism for
> preventing DC entry. Older platforms continue to use
> set_target_dc_state() to disable DC entry during active vblank.
>
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/work_items/2296
> Fixes: acfc688bc51b ("drm/i915/dmc: Reduce wakelock hold time")
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 26 +++++++++++++++---------
>  1 file changed, 16 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 9acd47392192..d01b4013f33f 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -4151,16 +4151,22 @@ void intel_psr_notify_vblank_enable_disable(struct intel_display *display,
>  		mutex_unlock(&intel_dp->psr.lock);
>  		break;
>  	}
> -
> -	/*
> -	 * NOTE: intel_display_power_set_target_dc_state is used
> -	 * only by PSR * code for DC3CO handling. DC3CO target
> -	 * state is currently disabled in * PSR code. If DC3CO
> -	 * is taken into use we need take that into account here
> -	 * as well.
> -	 */
> -	intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
> -						DC_STATE_EN_UPTO_DC6);
> +	if (DISPLAY_VER(display) < 30) {

Drive-by comment:

I think we should avoid using open-coded version check for testing
features.  It is usually better to use the HAS_SOME_FEATURE() macros
that we expose in intel_display_device.h.

In this case though, it is better to use to expose and use
__intel_dmc_wl_supported (dropping the "__") instead of doing a display
version check here, since that is what will actually tell whether the
driver is using the wakelock or not.

I even think we can even drop the HAS_DMC_WAKELOCK, since it is not used
outside of intel_dmc_wl.c.

--
Gustavo Sousa

> +		/*
> +		 * NOTE: intel_display_power_set_target_dc_state is used
> +		 * only by PSR code for DC3CO handling. DC3CO target
> +		 * state is currently disabled in PSR code. If DC3CO
> +		 * is taken into use we need take that into account here
> +		 * as well.
> +		 */
> +		intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
> +							DC_STATE_EN_UPTO_DC6);
> +	} else {
> +		if (enable)
> +			intel_dmc_wl_get_noreg(display);
> +		else
> +			intel_dmc_wl_put_noreg(display);
> +	}
>  }
>  
>  static void
> -- 
> 2.43.0
