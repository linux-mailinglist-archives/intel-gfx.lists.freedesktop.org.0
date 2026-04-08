Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WOwZOLOx1mmFHQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 21:51:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2053C36DC
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 21:51:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1EA210E6E4;
	Wed,  8 Apr 2026 19:51:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ksrrQ5UZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2CAC10E6E4
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 19:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775677871; x=1807213871;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=d4MLmAbBp4SleDIpsUP76tCAhjknZqhzXd/Q/4XgidI=;
 b=ksrrQ5UZY4PcgaD4yBuhISEqARk4sC5skrxcKh9dvVQW0E1M0r4DsE+K
 4APCDdb/QDuUrAtINWOFqpOTBnPY6v2LKnIwzCW2foBXNV1MSwEIk1TV6
 sR5QckxCkDTbUxjlM4ozcJdUqh05qNVxmorqz4aEBQgXfF98145qx6xuO
 LJCAAPIlP2oFmZJAGyJGl23u2iLVGCSHFJLWvch3finQGC/ugB7tOmj4r
 vBWurKrRz1+HzBPjgaVmuFLmdd+CKPxdnnOxg0EE/ltpx3FSMIcU55h6i
 fnlyZlWiCuoEcYFkg3vX8g5B/mIAMqfxqHpcFFveRQqwbV1fg/VgJA392 Q==;
X-CSE-ConnectionGUID: JQ7EGLpyRQGQbEaMYHAgJA==
X-CSE-MsgGUID: qRKxkrWPTUCtYB0KUSOzug==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="79263293"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="79263293"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 12:51:10 -0700
X-CSE-ConnectionGUID: OsRbMZqaQK2T30KrO+40Bg==
X-CSE-MsgGUID: fBl3Qx+pRyaiiNuazHzEmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="228498319"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 12:51:10 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 12:51:09 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 12:51:09 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.4) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 12:51:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FQ7TTwaJk3YCbM10m+bSxcR9O47UZlRNf/QxdzmY41BQnGM2IhNralgqF+itZV/y7tmyZPza4keo7OH7LNBQgf9xH5x5klB8YQSlOuT1+wpytNbdweeNE9HKxMQ9mYFBkOONu9ZgBCrSoZk/AB7ymMLasWPrrDJCAAywnznf+QecKqeKXOCiB/UGXARuJ8ZBWycUQIoD4oELFyX7txTa7RbDAeIRIl9ndUzsYS4CVuqFZMB1qAp39ZEUv8z+G4qlQ/GPuC3gzF7b8CBuKaE52qvlFzarVjHkusdHPsTocxpO37dUeOAQ2Dc52bHnQHYS5zSHxybUK2XEfLClmypeag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dmc20fVp5Z0hzL952UJnL4a/I8b1o0E0n3iAzNt+z1k=;
 b=YAWn6aInKewbg/UbsaJRT94qRqWFk5j2CDp4GbEMlRjKvC6fim9u3x5+Y57hMZclbdv3M2TfKWVnJymESsqJXPQZlS20/vuDp7/Y7R4EkCaA/pgl1qqu5BuAj6xjEiHr8DLKa53yQc1ydRLWuibm0efJc80Jye/bejZNHglSR/ttHv46P6H+R709vre3HF7uljfx/06ISdbxHvzG+6UdQb/H4xehVQDZv52FbGVW2k7GCs1YMvbHHdmmY5n2aTtXmo6pHgImm1EbM+lG7fG14PiHv7AuDJqaKEfTpVTH3wELj7oxWdUETpIXRT7X16Rr8T9kg/KipAzKjK3FEQblSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ0PR11MB7704.namprd11.prod.outlook.com (2603:10b6:a03:4e7::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Wed, 8 Apr
 2026 19:51:07 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%3]) with mapi id 15.20.9769.016; Wed, 8 Apr 2026
 19:51:07 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Matt Roper <matthew.d.roper@intel.com>
Subject: Re: [PATCH 3/4] drm/i915/bw: Rename struct intel_sa_info to
 intel_display_bw_params
In-Reply-To: <62fbacf46642c5b3ab7b36f01f5dd82b5c73b32f@intel.com>
References: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
 <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-3-23c53afa7db0@intel.com>
 <62fbacf46642c5b3ab7b36f01f5dd82b5c73b32f@intel.com>
Date: Wed, 8 Apr 2026 16:51:01 -0300
Message-ID: <87se95cjtm.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR05CA0045.namprd05.prod.outlook.com
 (2603:10b6:a03:74::22) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ0PR11MB7704:EE_
X-MS-Office365-Filtering-Correlation-Id: 9019dd1f-8f04-4b23-7f5e-08de95a82cb7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: gMdTIh+rVZwXThNEDori0Z9woDJPM4eWB2dracaDolULH3Og3CqYQVSxyrLG/F7tzwmLJN6viN/lPSWacohJCGm3XFuK+wkb4k2cPNLXbAUJEsaE5RbT3FSgc9zoMVQz0c29wuPfeGyaIkhQepEpF/1Oj4nfukG8txjFzjJyRDkLx4/D0AhQRwnRHGDN5m6GYM0dnOO7dHFzatZ4A+Y64Jd6AcOtcYnm5UmhFkvSTZjPg7nExBXVBnoatQ57WmdfEc4W7r2D+4AvZpyRq+kLkzLwy5SErdkDcw9PcJXHDBPH0H2wX5YYUKTC2BneUNX7fK4RHMuRGRrBOgzpXDJCKSzXBTmrN35UNmy4Bgu+U9mV4hFgx5f9Bi07FjCDZSKgCoFeL9f//RBN/PyjYoghYRMaiaAb7wBT+GjSYcu7R+QLMAxlboFZl5i/YWLFvwBpNnwLNeiGiXFZq3iFAxGIIeemf7DZrFjjh+DhhbD+hDAmEH0tQBPEoxRYnfFPy+A1C2mMVaEACA02YcLOtCCCs4TdST8nZs4ZKY74Lg8tgddg7IjIMahxIJ2BpKCRfnFS8ChQdcuTSl4FaiajCQu1Fhy1mgqxP3oR9EXkYMvP9YPOx5s1R7Z12XXkQduM+CXNy0pdd55BDYE4cBwB5PAbguPasio7xxf7BTwHlqESI0LWMy/MBJTNBKatW1rRi7mH/zarfYI+MWXChtq57I33xjvxzkmDR8vfir++3XtalY4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1Shnyr1woWk/jirnuCp2LLThQse35cXx9S625lEQHWw9o+GccVM1ECpcaUHD?=
 =?us-ascii?Q?ux/Y1t5CoMzuAovpvJ/zIopADz2syuJeEovXekUIliKgW3ieWM8ZnoRbWUfH?=
 =?us-ascii?Q?KH/9i9cmrkjph2g+ZUYO7/QXMiZoJVPU8xeBPqALlDgKh1kPrXGnNrPKk39O?=
 =?us-ascii?Q?XrJ0tgH9AXyqa+LN0KL/0A625UxhnwPOvFYdsl/19OnOuMv6aYaJBCUdxfxQ?=
 =?us-ascii?Q?t8QFgcQxnwBPiiAi9Uc+61Hty7bMqvwE43hNCduqqyapEGj3KQGVoo4fV9xs?=
 =?us-ascii?Q?8iP73rzoFS301EXyXK1lc0ZXR7D7sID8olQzGZMXjjrKfCzeSUFVof4rS+ja?=
 =?us-ascii?Q?Za0tifr6HFFYd9kYO6soOttWfVVxEa8WL149J4fm3V+Pxs9dT0T1lTXqsBVH?=
 =?us-ascii?Q?ApPh7WJizDw/Q9/Xfgd7vcD2Zbrh2Si2X+a0AvxGGvNx2667LRRFj90oxw+Y?=
 =?us-ascii?Q?Us/j3IZHAxOP8Wt2pXTHaFAZhaKgyp4ReGq4HPVbrZVPGZh70MFHHSOxV9pN?=
 =?us-ascii?Q?o6+FTSxGgS2mJS+PEX04kCFVxEbb8O5YTkJgQVYxYD138qrdbeMLhbn5BMS8?=
 =?us-ascii?Q?oAHSRKXwk0tO7wO6Wzc9RfcEXhxEmuY6pvP+Fbqku1FxypVNTMWk6RtbRH7N?=
 =?us-ascii?Q?8OA0fgsSwQE4LwJ4tqATMIB4nsaP8RitSn1RtTVJ+Ot2KhJhRQofZv97vVZB?=
 =?us-ascii?Q?8/uSvsj7lOfE0+oZVciNBzUgHzHpQuf47/R3VDamVXm7IrzBqB3DtjuGNsmm?=
 =?us-ascii?Q?EGDyH2GKMTl19oN4wK/D/2JdK1b8IhYIhB/IJ1kDS1dU6eMEi9QJlf2m+oO7?=
 =?us-ascii?Q?2ZgfjL4Nacu+tTVDqi1YLfzZBhuRDx5TdC/dZg/2gtjCu17C7YTecB171n1z?=
 =?us-ascii?Q?dLUfBsR1p0tYlgsjoUllLJUZvbAZcB9BVTYFJpDaTbz59dUwhh605W3Q7yea?=
 =?us-ascii?Q?KD2IjlL4HJl6aR8MOQW3KRBAy1gK4NHfUHA3/cRcXYIxCTOcoRIm/wKXFoZY?=
 =?us-ascii?Q?9tAFZdYyFAd7vFcgmueZQXLmVz4Vm0AzkcYnHGwAlcmasTjNqfysqnMwsqZg?=
 =?us-ascii?Q?yEYXxnYZvZyA7qGHPCudJFF9grCUsjIrmnngha6GwQuafBHgP806Niw3YgVg?=
 =?us-ascii?Q?5QoRiCuJz81H2XPz94MTD+NGR6y8dVL4kcv2IXlVyvuUQZOL2VeKIhzhpMMg?=
 =?us-ascii?Q?Sn4ayye+23gEx3OkfA2l8VgdrGtGr0ElmSrPGaQzlWoyl+uu12lKqBhDayql?=
 =?us-ascii?Q?iRBzZA0ak/plGoK1SdyqnhSl4fKLD5/fslFYrwnhFQ8ZtKqlJ5wRJvXV3ljz?=
 =?us-ascii?Q?yeq6BQwUNwsf3+aLk0pHlroe1VT/+eeJ87CFjJlEvZlca4CaJqRS+0vt5nqK?=
 =?us-ascii?Q?VTTVEaNK9VDEnTcukI4mR3850P0fN1WL2TD21WpVBKqPgHPJJq4AodmP06Qq?=
 =?us-ascii?Q?BsVj/jOavsyAxISCr+7OKDcC/kzwIGWJ1pDrClyoluCHMPywA9czS2h46CVI?=
 =?us-ascii?Q?cm1OCuusxtyZUg4d8jlzaumQxnZf1rYxx09DElFlDPkk6fpvGsT2Ft5R/aKW?=
 =?us-ascii?Q?Omd6PPG6A6XZW0fOORkJWhseCYXsP09PVkgwIfLxQLT+SZA5oMx0FAgOd2rv?=
 =?us-ascii?Q?b0nOpg2yvBgIwWP5ltln+Eb4xE/zAwjgkx9mfeasl9/4YXFjXQmYam+lKY8A?=
 =?us-ascii?Q?SDA8AOjoUO9nQt9Zjdr2gQ2SEc0KoQ2ZImaAydP/nJJNyYoBA6ytaDmp2D8f?=
 =?us-ascii?Q?jduU+pSsfQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: J73Ycz4uQ9vUua3WDr79Lvey38k0/745vNfDRoRmcLUJGFhXGjfW+7cN0xshRDiYc7rNSwB1hO4EzuG0XkoQuNXnPg++0fjIsnE+4OX7nQx3OckUPyTOh0KdvZFnFw7FE8OmsWOICJJUyFJf5GNJHhLzIDM3cjRpZxTdSZHFuyvw63gdvxBuZf1GLkAfpZMWq5nDR5wpoBk7pPPwl+I6FCF3c6hRQcOrOeSMlxcKGpvZD+k95VzDWajhcCHBliaqIOsFLFOItE0H3eMxjEu5VvrAsaPgSZszHXeOY50r3ugHFa8zxGDcHi7s0Z/pkCGxIKdOkzmwogdV5VKhVMQYUg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9019dd1f-8f04-4b23-7f5e-08de95a82cb7
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 19:51:07.1727 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GTIMMGAc6nKx48UntUrV5ooGSXemSiU+pGxfV11w0RfIQ38vnjWBsEaDh7ZG+YWcVbek3NEZ2DPratrsl0Wiiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7704
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
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:matthew.d.roper@intel.com,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4C2053C36DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Jani Nikula <jani.nikula@linux.intel.com> writes:

> On Wed, 08 Apr 2026, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> To align with struct intel_platform_bw_params, rename struct
>> intel_sa_info to intel_display_bw_params.  Also add comments to contrast
>> their purposes.
>>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bw.c | 38 ++++++++++++++++++++-------------
>>  1 file changed, 23 insertions(+), 15 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
>> index 654876215ace..64c6f18346bb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> @@ -375,6 +375,10 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
>>  	return dclk;
>>  }
>>  
>> +/*
>> + * Bandwidth parameters that are tied to the platform (as opposed to struct
>> + * intel_display_bw_params).
>> + */
>>  struct intel_platform_bw_params {
>>  	u8 deprogbwlimit;
>>  	u8 derating;
>> @@ -496,34 +500,38 @@ static const struct intel_platform_bw_params *get_platform_bw_params(struct inte
>>  	return ret;
>>  }
>>  
>> -struct intel_sa_info {
>> +/*
>> + * Bandwidth parameters that are tied to the display IP (as opposed to struct
>> + * intel_platform_bw_params).
>> + */
>> +struct intel_display_bw_params {
>>  	u16 displayrtids;
>>  	u8 deburst;
>>  };
>>  
>> -static const struct intel_sa_info icl_sa_info = {
>> +static const struct intel_display_bw_params icl_disp_bw_params = {
>>  	.deburst = 8,
>>  	.displayrtids = 128,
>>  };
>>  
>> -static const struct intel_sa_info tgl_sa_info = {
>> +static const struct intel_display_bw_params tgl_disp_bw_params = {
>>  	.deburst = 16,
>>  	.displayrtids = 256,
>>  };
>>  
>> -static const struct intel_sa_info rkl_sa_info = {
>> +static const struct intel_display_bw_params rkl_disp_bw_params = {
>>  	.deburst = 8,
>>  	.displayrtids = 128,
>>  };
>>  
>> -static const struct intel_sa_info xelpdp_sa_info = {
>> +static const struct intel_display_bw_params xelpdp_disp_bw_params = {
>>  	.deburst = 32,
>>  	.displayrtids = 256,
>>  };
>
> So if these are tied to IP, why are they still named after platforms?

Decided to use xelpdp for the one above and platform names for the other
ones because xelpdp is where we trully have IP disaggregation.

That said, I could try to use IP release names for the other ones as
well. So, something like below?

s/tgl_disp_bw_params/xe_d_bw_params/
s/rkl_disp_bw_params/xe_d_rkl_bw_params/
s/xelpdp_disp_bw_params/xe_lpdp_bw_params/

And what to do with icl_disp_bw_params? Do we have a suitable display
release name for it?

--
Gustavo Sousa

>
> Nitpick, you'll never see me use "disp" abbreviation. It just doesn't
> abbreviate enough, only makes stuff harder to read.
>
>>  
>>  static int icl_get_bw_info(struct intel_display *display,
>>  			   const struct dram_info *dram_info,
>> -			   const struct intel_sa_info *sa)
>> +			   const struct intel_display_bw_params *disp_bw_params)
>>  {
>>  	struct intel_qgv_info qi = {};
>>  	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
>> @@ -544,7 +552,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>  
>>  	dclk_max = icl_sagv_max_dclk(&qi);
>>  	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>> -	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>> +	ipqdepth = min(ipqdepthpch, disp_bw_params->displayrtids / num_channels);
>>  	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
>>  
>>  	for (i = 0; i < num_groups; i++) {
>> @@ -552,7 +560,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>  		int clpchgroup;
>>  		int j;
>>  
>> -		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
>> +		clpchgroup = (disp_bw_params->deburst * qi.deinterleave / num_channels) << i;
>>  		bi->num_planes = (ipqdepth - clpchgroup) / clpchgroup + 1;
>>  
>>  		bi->num_qgv_points = qi.num_points;
>> @@ -595,7 +603,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>  
>>  static int tgl_get_bw_info(struct intel_display *display,
>>  			   const struct dram_info *dram_info,
>> -			   const struct intel_sa_info *sa)
>> +			   const struct intel_display_bw_params *disp_bw_params)
>>  {
>>  	struct intel_qgv_info qi = {};
>>  	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
>> @@ -634,7 +642,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>>  	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
>>  	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>>  
>> -	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>> +	ipqdepth = min(ipqdepthpch, disp_bw_params->displayrtids / num_channels);
>>  	/*
>>  	 * clperchgroup = 4kpagespermempage * clperchperblock,
>>  	 * clperchperblock = 8 / num_channels * interleave
>> @@ -647,7 +655,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>>  		int clpchgroup;
>>  		int j;
>>  
>> -		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
>> +		clpchgroup = (disp_bw_params->deburst * qi.deinterleave / num_channels) << i;
>>  
>>  		if (i < num_groups - 1) {
>>  			bi_next = &display->bw.max[i + 1];
>> @@ -886,16 +894,16 @@ void intel_bw_init_hw(struct intel_display *display)
>>  	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>>  		xe2_hpd_get_bw_info(display, dram_info);
>>  	} else if (DISPLAY_VER(display) >= 14) {
>> -		tgl_get_bw_info(display, dram_info, &xelpdp_sa_info);
>> +		tgl_get_bw_info(display, dram_info, &xelpdp_disp_bw_params);
>>  	} else if (display->platform.dg2) {
>>  		dg2_get_bw_info(display);
>>  	} else if (DISPLAY_VER(display) >= 12) {
>>  		if (display->platform.rocketlake)
>> -			tgl_get_bw_info(display, dram_info, &rkl_sa_info);
>> +			tgl_get_bw_info(display, dram_info, &rkl_disp_bw_params);
>>  		else
>> -			tgl_get_bw_info(display, dram_info, &tgl_sa_info);
>> +			tgl_get_bw_info(display, dram_info, &tgl_disp_bw_params);
>>  	} else if (DISPLAY_VER(display) == 11) {
>> -		icl_get_bw_info(display, dram_info, &icl_sa_info);
>> +		icl_get_bw_info(display, dram_info, &icl_disp_bw_params);
>>  	}
>>  }
>
> -- 
> Jani Nikula, Intel
