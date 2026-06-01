Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UPdcC4Y/HWq8XgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 10:15:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 202F061B4FA
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 10:15:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E47010E633;
	Mon,  1 Jun 2026 08:14:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J2CnEi+o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 473C210E73B;
 Mon,  1 Jun 2026 08:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780301697; x=1811837697;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=iWZMXPmO+eU/lqwg9BrxuiAlFSNcazG1ZD3nkfsposY=;
 b=J2CnEi+o3fAeNkX/I6JW6i74dfow7EccgyrZA4S2rx79U0ImsoSW7IP+
 SG7nZYPj/kAGaaKfLbEJOlIXprEToSGH9b4Xt1PD7R4l+sa4x94FRneTQ
 Vj1hdAVagVU9iUgum50KYQYkhb7Q58796Hrw8vtdITZQp0fdhYtor5XBv
 k/YGztAEoJeZfBfiuMsqCo5H83jVeAlFEZVU1drhN/RgSwWutbCw+4vtR
 Uk9qMhkXeZZq0EyUiSyGX7zj7dPlbP2AKSjp3O788ar8NrG5d6CuGkKQi
 lo2DuhcOy15qgDOWu+xz4dd6i49TjF/QhomkCrvP+YbIeg0f3XQp8CZtA w==;
X-CSE-ConnectionGUID: 5WRLuEV7QcKp2IWCdzEjVQ==
X-CSE-MsgGUID: XPimUCU+T/uRlkEg55k5CA==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80088226"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="80088226"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 01:14:57 -0700
X-CSE-ConnectionGUID: fQv6+zxkSTS9awHktHoiFw==
X-CSE-MsgGUID: zf2nJObzRDCnTr8j4tAKfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="248422633"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 01:14:56 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 01:14:56 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 01:14:56 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.58) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 01:14:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rzi4LWUm6H4euTGmjEYrwgjPWw/Vlr1Dz/6I8mXJhXZnooIDEGL4/tJ4MF7pSQ8a5dR0am3WJzFVys9CzYUNMiqmnOLnbpm7dCvAW06ssxg5kPbOTqdm9U+Mog2LRgXvG0KUfhhajgCsSHfxExXKQahN4U82GyGx4wc+eWC7rR5KAUVJ1Qf9iB9Gav73ca0174z8XeglPgoeJKG6aru9w3iZ8raRo4wla2hgZukzfhiYQ7o3v23r+uHX4JxbOVoBG9ZjAmxIkJpDxW2/8luglVrr3MQGzZayqClWqMAidmyQU+6+ofRD4JpLo4R0nW7KESnSMbl5KlURekrFxvO7dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I8ME0EaX6ik8/1oxC8crWnzDVv4PsoKnrNz2WmymPbM=;
 b=lVtJljR2yzzpQJSEg8k+qHTPJ9tA+SQiRgHNfdHry2vR6L46gkZxUf1vtCZUJtx6/Yweg3lIkp3/FrUMrxtdLleXbaaW4VgOIS/w6QZyIdMu9Q1J6yo4/IvBTz2ufOqGuH50vc8DrrghJhoH63hcsC6L0NtfzNj5rIT1Ped9M52OdIqVDNkeGCjrR3Nx8mFBsExzK92VWZA1F+z88zCheZHdRP8Z3mcU3YWbNWvXYQ6bG5b4OrVMrqj9ARbEHfLAa5br3g7bKHx8jkGOqI6UEg6clzyyoVeBFnSxboCMUd/ffv78ubeulC7N8zxRIAuNW8x/o6QZfcx0rHL8yOXeDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by IA0PR11MB7933.namprd11.prod.outlook.com (2603:10b6:208:407::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Mon, 1 Jun 2026
 08:14:52 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 08:14:52 +0000
Date: Mon, 1 Jun 2026 11:14:46 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 19/24] drm/{i915,xe}: make intel_dmc_suspend() part of
 display suspend/shutdown calls
Message-ID: <ah0_dmDcVbWmntpS@ideak-desk.lan>
References: <cover.1780051905.git.jani.nikula@intel.com>
 <96b661da7cec4ef7f9c0e5e140f59990659281cf.1780051905.git.jani.nikula@intel.com>
 <ahmfy87QdRbD4Pi-@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ahmfy87QdRbD4Pi-@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF0001DC15.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::27c) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|IA0PR11MB7933:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f1475ef-f447-4c1a-54af-08debfb5db88
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|11063799006|4143699003|56012099006;
X-Microsoft-Antispam-Message-Info: Ea1Fie2TwBOwbdeslhMmf2qccdy1QtutlRczG96rCNN1V7XBIlaqNe2gZUyMAyZy3HnHq81KAKuZRwCk9ep/mCoMXb/9T3jx89oE4MCPPgdwM2rE6Pnpt6bdeJgnuGxgWh2ZmUDR9ZTnZbU2rdhXr49kWYP1ku8ESoqsOqIpzKwUuOCn6HDuJDRw9ljIcWz5UHmIT+A30vnU/a6LXz45kQ/+DtLRoqNFDgOrylq21kkHgA4FGEPMcTZZi7s8521orZukv3L6pFDLo5Ohx1uGNbVNidhNtsPrEIXXAAkAQv+U8Hf8IizeX8n0E4hzmToOoC2Z6I+ncR37M7/TOXlfqD1j639YNssY6CwDS6qxf0s1/mkNYVHqFbznNZS+SN0FXnC4y512ZWm8w75iGTOzI/PfMqlTqu+MsdoKKwpl46nkcJd0k2z/Ktm/k0nKJmlaAaaTjhUfYqayi7TOADKSp+zk/NYe74Sv8kBIyGcKkLwuRjpjsTCxXEH4Ml6GcGimdxVvT9QFfTFG0Oz+GoBkPjbjISmxqsvjNW4MNDcqFLDkTYvSzIrcYknH40ijXJXI2sUcOI+4NXNKEAaiIubXSaXwjafZt9/J9kHsOYeciG9mVKPcCvHx8TSVEfvSs3gJupkMekSEJbw/vvcAJrLqUbvdxoFNrnQc1KkhgORDmPr5iiqYy/ia339LuOXX3/duTPKGqStBq6a2UGlGqsLf/g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?dmbmyKv3IfVs7qFtz2WfzzW/mCEO4R4/cbgyuUGJDdL/iokyjvT3XTOBj4?=
 =?iso-8859-1?Q?x06YDHR+Y6LCLQJrevNl2Vdf7AKnLS6Yt5bKGUT3wwEhQ8cGFZyIme/NVl?=
 =?iso-8859-1?Q?BiaB+YacKCM5SxNPYezzjBcB5Ve/j0W8Cg/s5H3q6ppZMUVf7qMgkXeuSU?=
 =?iso-8859-1?Q?3UyEk2xtgSkfd0YTrHc24w8icfarngFN1KtPWP9rPZxuS7H/RYm/hggJky?=
 =?iso-8859-1?Q?xpqfz0GZwHv7GJ4ucaFX0HdBzWDpAQ2AH1KXShGZnMbcvIWWddxe14Fy57?=
 =?iso-8859-1?Q?v/nHdn61El54r0Rqu4f7eXL5Tmh/Xqj+KaPnuBMU5aDfFP4ygZFzvD0WEp?=
 =?iso-8859-1?Q?JBOS0GHyszBCy+LlISmCAIWonopSqeNLUz++2+UiGTa1Kk0yT5sXdLhYSt?=
 =?iso-8859-1?Q?jmP+2f8WwPCX2M6Bt0x36/XzX+jn1HnymHfSutdolOMMRptVVZH7WBjmDq?=
 =?iso-8859-1?Q?UnSCpwJHUTFEGV+6ECB9tb9kVBwSs+vXOZ9MFsD4wmBH5sn2JdyE4OnFC5?=
 =?iso-8859-1?Q?M+hIGk+wcFaV2ycfluMrS9C8DsHz7zWGrfWGTH6xug18UTRX6OTOay7IX2?=
 =?iso-8859-1?Q?ToF8KlpUiIfDn12Q4y9oyJGIFuhkeAVtWAt7i/yEcIwSNA3ZnQ4sVL57zO?=
 =?iso-8859-1?Q?mCfMZEHpQzYxaiV62OD/NnISIFIHPe2ZLUs2Sx1P4goLS9TsiVnAGhzYl8?=
 =?iso-8859-1?Q?nrasRW6i12RYSLqk/f1qNs2IWkWlZTJKlV1rk9vTQ6cxu1CUt43KHi/WYA?=
 =?iso-8859-1?Q?7Wq2C+A6+/MJStyH2EbZkp6veBTIgMio1zdxCWVnNnmxCGmFhA5Pb5IvWT?=
 =?iso-8859-1?Q?6dmJR2RCxIG5RF+mOJTkQMMBhp7swdzR3IBRxN6BHe/zsRWhSJX2m9e84q?=
 =?iso-8859-1?Q?uNIgY9ey8XmTkLHiO2YeDV56JrW6hEAt22Bzn/RzH5auAoFuAYvFwGz9s5?=
 =?iso-8859-1?Q?c3kPkbFPIi+IGYXYSVMLXR9NvUZHpyrT3gOZFLgCvaAKn4/Uv9gHlbJjUS?=
 =?iso-8859-1?Q?ITuR5Okumop4C2vEGiFC6k5PhS0C/N5lVbyAxdN0CDtrXsB4Vk+dFv2STF?=
 =?iso-8859-1?Q?HdoTRA5YrwtMh0KlrD+MGzup3Kmq39S6HHtpCNiCKEUlrJZz/OsWVxZkmq?=
 =?iso-8859-1?Q?yqOubDlJVWEzb+bT8zTqAVP1jKMdBT+ILgjkIpMYQopWFnJrwZVoyO31kg?=
 =?iso-8859-1?Q?yst/xEhwAD0gJfbTlgNoOoNwhFdc9+wi7qH9X8+OaEZiYARkrMwi9GX3J6?=
 =?iso-8859-1?Q?aq+SlbBj+WVknRQ8p8xZe+d5Ro+YdN1sKfLmfsiSJbAZFCag9FP6ouPHeK?=
 =?iso-8859-1?Q?YT2dJqUhtkbT46kHtmPYaa95eJIHzL2qUKpDSMlbiN/6QG1L8diTJLj8Gr?=
 =?iso-8859-1?Q?ErU0u6J/b52Wi9JGBceCNzAH+u1ziB22UyYORKwsrgXq9b5hKhWJiSC3xu?=
 =?iso-8859-1?Q?o7wj6rW4IsynNGXKy7Nku6A7FEmTyJncWbuuUJuT95Kw/8FqGavrMzBg+k?=
 =?iso-8859-1?Q?WorywH7ggbCZwDdlchj6JMniBsQy7o4wJlhuIQahRa7PuNeyF6PUcn8/Ut?=
 =?iso-8859-1?Q?skoYlhoG93Q0WXhX2dhEGob1Z1jS8ByzJ7N6lLJXJjZgvE6Ll2OJP0mU2F?=
 =?iso-8859-1?Q?ceB8bU9ERW/0SO7y10IWxHb7KA/49DO2/bdnrBivE/YPKH4am90I2jREVT?=
 =?iso-8859-1?Q?nHBEfEeIPdzCA3J8+I7VE1hihifCOn/0L9vdEV720mVqrfXPakBTOF9xGz?=
 =?iso-8859-1?Q?f2ntQKX7qblqP3t88IBAoM/5DMQMzH5+sVxHFHL6+0jFiEGcNiNLlEfGY2?=
 =?iso-8859-1?Q?ml3MiVXeRw=3D=3D?=
X-Exchange-RoutingPolicyChecked: tFnYG6mo+zmICqOQGmGHb23Nuyqz6ajr92W3adaorQq0vDtPer6qEF+oaE9cGTrcqk6bDsLpM1QWcvOQTtYhM856i9tnxk0FHZisFt6AAMIY3e5UdMoYZ1NWJYUlMwsrAXhj3pMy3wXSrF9cnN8+1OYi6ltoXxZbwydDTpWwNmfDDDe9+CubXk3FVnQ/R5TE30v4t9LoPAKcpFF9pjOfN6CwbkPVyamodruAAzfVEJCTySSh09A0tEaEfsFLo5xM4OqDuhqFEfN4b0+g+7jo3iP6tnNYedO6D2r+s7t5r3cRrwlH9/hku7RGOea8ibqfg/EfK9dpFjnvb9uZsr9RQg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f1475ef-f447-4c1a-54af-08debfb5db88
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 08:14:52.7440 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WBWEDCgcBalcPgVsZLQWmGu0SbFDhNGw//AE1rY7AD6FPQDbsVAVNzxYhOe97uDHPxzKdc5V9hKaz73TugWCvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7933
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.760];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 202F061B4FA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 05:16:43PM +0300, Ville Syrjälä wrote:
> On Fri, May 29, 2026 at 02:04:03PM +0300, Jani Nikula wrote:
> > Move the intel_dmc_suspend() calls from i915 and xe suspend and shutdown
> > hooks all the way down to a shared location in
> > __intel_display_driver_pm_suspend().
> > 
> > This is a change in the suspend/shutdown sequences, but hopefully one
> > without problems.
> > 
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_driver.c | 2 ++
> >  drivers/gpu/drm/i915/i915_driver.c                  | 4 ----
> >  drivers/gpu/drm/xe/display/xe_display.c             | 4 ----
> >  3 files changed, 2 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > index bc632ac8c9b4..6cac36157bea 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > @@ -755,6 +755,8 @@ static int __intel_display_driver_pm_suspend(struct intel_display *display, bool
> >  
> >  	intel_encoder_suspend_all(display);
> >  
> > +	intel_dmc_suspend(display);
> > +
> >  	return ret;
> >  }
> >  
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index 209ac512455d..40fc15017486 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -1045,8 +1045,6 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
> >  
> >  	intel_irq_suspend(i915);
> >  
> > -	intel_dmc_suspend(display);
> > -
> 
> I wonder what we're even trying to achieve here. Just to make sure
> the DMC firmware has been loaded before we system suspend? That might
> be reasonable, but we now wait for the firmware load somewhere during
> driver init due to flip queue needing it. So this all seems rather
> redundant now.

Enabling/disabling the display power wells on demand during runtime is
prevented if DMC is not loaded, by holding the INIT domain reference.
This reference must be still dropped for suspend (and then reacquired
during resume). This - besides waiting for the firmware to load - is
done in intel_dmc_suspend()/intel_dmc_resume().

Yes, waiting for the firmware to load could be removed from
intel_dmc_suspend() after it's waited already during driver
loading/resume.

> 
> >  	i915_gem_suspend(i915);
> >  
> >  	/*
> > @@ -1117,8 +1115,6 @@ static int i915_drm_suspend(struct drm_device *dev)
> >  
> >  	dev_priv->suspend_count++;
> >  
> > -	intel_dmc_suspend(display);
> > -
> >  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> >  
> >  	i915_gem_drain_freed_objects(dev_priv);
> > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > index 561ec1ed6845..9416405667d8 100644
> > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > @@ -198,8 +198,6 @@ void xe_display_shutdown(struct xe_device *xe)
> >  	intel_display_driver_shutdown(display);
> >  
> >  	intel_opregion_suspend(display, PCI_D3cold);
> > -
> > -	intel_dmc_suspend(display);
> >  }
> >  
> >  void xe_display_shutdown_late(struct xe_device *xe)
> > @@ -276,8 +274,6 @@ void xe_display_pm_suspend(struct xe_device *xe)
> >  	intel_display_driver_pm_suspend(display);
> >  
> >  	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
> > -
> > -	intel_dmc_suspend(display);
> >  }
> >  
> >  void xe_display_pm_suspend_late(struct xe_device *xe)
> > -- 
> > 2.47.3
> 
> -- 
> Ville Syrjälä
> Intel
