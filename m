Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPQ2OsE6+GmlrgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 08:20:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E944B8D3D
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 08:20:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA52810E379;
	Mon,  4 May 2026 06:20:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U+Cccn3J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30F2F10E257;
 Mon,  4 May 2026 06:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777875645; x=1809411645;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dPYVQ1hBM1sbDDcxhQi4ApCO4Spzj94gxDeDLIOEpAY=;
 b=U+Cccn3J4PjS04Iigi6Xhr1zK7XFgdpwwgoaueOtpXNy4du6tRIF0lLT
 AghqhHy6cs9fo3Cc+Wt6qbKEqx8pVSoJdFKqLjHWoJS4gj+dqjEvqx1+e
 yXWlCmjr/X20hdOOIvzPoctbEsLcAkWRbeHOzgEXqAFfNUXpgFdmQnXgl
 gVRsgrcxsiAf7jjnkgQl0BEsIOa30j7lE6bX79TV4NFpxMVLd/+M7DIsN
 lewjkI3kBnuds5S9nxX2IBKytH9UFhTdJh7bwY1qC0L9W9QDVjSA4yj29
 w3Hk4TMx1YFpiJI1jntIc6eU6Pg5M9RqRSZTppvE+j8kEvfuBbB0tcREr A==;
X-CSE-ConnectionGUID: 0WKu5PiTRf+lE3Yc1RrymA==
X-CSE-MsgGUID: qdWVx777Tmib6dn+1gZYpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="77891499"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="77891499"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2026 23:20:44 -0700
X-CSE-ConnectionGUID: 6REI8MH4QXeafKU2Rn9r9w==
X-CSE-MsgGUID: 5FPOUNaaSwuJcIFlEDYU2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="234412394"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2026 23:20:44 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 3 May 2026 23:20:44 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 3 May 2026 23:20:43 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.59)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 3 May 2026 23:20:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OvD52M+9PoUT74kYITtZR7HPaG+4wxd36EfPA2v6n1VHnHeOjEEp5u7ItoHDxSDm70NKLHOaHerNd1OFCqVVT+K6BPAxZUOWiEfgs2stwWymb2Cz3PRR3Oi6kFURxZaPNPklkZlsm1KgNSRvmvb83sgp7vhnhyJeiRVrxTcOqnhSbq3nWdESWIZoj4drv7eoEmg4urPIEw+QNYact/iF8GvHVtxNs85vl5yqhDHNIci97xLLZJMzhSgI35usMJ1w7nI2OcOa5MO6A63cmefQccjOzjEXY8wfurKFJqZjok6gb3+bb7ITgcUE92cTvDgS9p8Yucek3w0rOcTX2bQC/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AQqBZf8TsrP3PLYCL230PnCfWkuusZzuhmtxEfU4z7I=;
 b=b7OP65RJQ34+qG6uTsh5orEbbUt6N47uQd83iU7QFTaCQNLCzcFyZJluPM+llnBs74WuKe1B9DXc0Tvro6qgolv/tEkfjdn1Mgl/Ew+x6+zX2XRrgi1SukmOG+6JGyu8jhhJ2LE+B/QNIdS1jjFRbnb9oNTzUq2EO2rz4DOBrTKpHKJUWghRX4YEoCrwhzo9nO2rEn3V2LQlS+2Adyb1cl19ukMPHx0G9VmlQYP42HbYvy51ddIiPkT7HNl4nmHyABVyvGfk8wa3tC8wISPJ4KSpQQ7uNI5yWVcD8t/27820gUkfSc/+au7CuGu5/fGzHs25i6GDA0abQ53KB+Vcdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5309.namprd11.prod.outlook.com (2603:10b6:5:390::5) by
 DM4PR11MB6333.namprd11.prod.outlook.com (2603:10b6:8:b4::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9870.25; Mon, 4 May 2026 06:20:41 +0000
Received: from DM4PR11MB5309.namprd11.prod.outlook.com
 ([fe80::89e3:7ceb:6511:dd36]) by DM4PR11MB5309.namprd11.prod.outlook.com
 ([fe80::89e3:7ceb:6511:dd36%4]) with mapi id 15.20.9870.022; Mon, 4 May 2026
 06:20:41 +0000
Message-ID: <91a7158e-cbc6-4e88-9fb1-f18590cc5cb7@intel.com>
Date: Mon, 4 May 2026 11:50:33 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/915/hdcp: Use new MST topology state in
 intel_conn_to_vcpi()
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <fnu.vishwanatha@intel.com>
References: <20260430032902.3409731-1-suraj.kandpal@intel.com>
 <20260430032902.3409731-2-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Reddy Guddati, Santhosh" <santhosh.reddy.guddati@intel.com>
In-Reply-To: <20260430032902.3409731-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXPR01CA0113.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::31) To DM4PR11MB5309.namprd11.prod.outlook.com
 (2603:10b6:5:390::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5309:EE_|DM4PR11MB6333:EE_
X-MS-Office365-Filtering-Correlation-Id: 8dedc5b8-3529-42f8-d488-08dea9a543da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: fAU3nN67bBIJC4letpn9D+jK5pZX144Za0VKXLGZbcSfE3j667SRiLP/otBBKRwcBxQ2hmL3MKs+ftE4otGQz2NMlhR6lPb90ZhSSGmSmGRhQU6T4vB+Zxkfkt+ABifWcxyq4svVR8uxPunu6nYbenc+638FP1wpMziL/IWSsUcdrAWP3OKuP7sPzHaAebY4u/ZXQ1rw6m/I4lHcynpwTFdJVTrkqLY+K2JpTggZ2WCfAb9UiZma1mffA4i+jBZw6FBZgXRUEl9Bcmcu/CJRX1nk7bYlPEfTP8uH2RSAsozLa1UGCPt9UtZ45LFw93Ez1G4p7cncKapE4KNW93xOm04ZUlgO489ccXLejCyywmfAp1nFpsPhB8PZfMPqMsUlgWnLNYSQ+IcfRZsqwDu6TbdlcoNoujP13DVNvxxmxBmnkYI1W7cSbUOO6b4cwgB5rmKFc1cbtpVM09qliSOF6CRaJbIdTXtOsDb1Xhm/NfMW56cM63vQTBNJzs27TO8saUyLyk84LwJ89rcZzAu35nrJoNh+3fVUb+ef8HPH0uYAS7r0z8FN4VGV4/SnTQvITuccWliqXMpDZA7RCjf3xChdr9PjzGEU0v9+fKkHbyOT5Y8uyuxrFBaIPedeJB2IWNoj0FsD/F8BDUpbOULowqVCWuILvaC0xvMefvMxiClZS/aXw2PHSC2ayJ+xYThx
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5309.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEVHay8vaS9JWHJLc1NyNm5QK1IvRmU1ZTVXZWRZNUd5S2FwWGNLYk41QUkz?=
 =?utf-8?B?ZEs0Mmc5aXVaWThnL1dsNWZFL2dFcmI1QmdZRURWUmJUUnhSYzgrUkdpb3Ny?=
 =?utf-8?B?SXJLUERyU0hVNVVQQmtrTXFRaEpMandtUFRWUHRHZ2FndmVNS3hBdENkRHZo?=
 =?utf-8?B?YXZYRjNCUW5pVVV0QTJKeUtEYUN1SC8vZHZsUDMyakhBZE9Gc3BGWkoxRk5U?=
 =?utf-8?B?ZG1HZy9xbFhINHZ0S0YzVjd5ZmpZdjVJWlJIMStiN3Juak1DaGluVmk2T2ZX?=
 =?utf-8?B?OHZ2bjNIVk9TbGNldlhDL292WVI4cklZTzJUSFFVSExyNlBzaXJlMndqeFZZ?=
 =?utf-8?B?WUVpL1JqbFJJckdrZG00b29wR20ya011NUFvTTJXK09oTWd3Z1BzQ1VzamJ4?=
 =?utf-8?B?YWJmZ2RpMXN0RVZGS1g1R2hMMzBYS1FXZzBmU0FmWkVwaUptZ01ZUDhTUkMv?=
 =?utf-8?B?NFNHNytvUFJKUEtGOGN1WG0zK1NwdTV6c0dTUWtQVDdsbDQ3eVF1QjFoY2Rx?=
 =?utf-8?B?cDhpelN4SWo3VjNWNHBlZTFUdFpvMFBPUzRwaG5xa3RyQmpnRnRSYXZMR2d1?=
 =?utf-8?B?dlpBWEN0aVhEd0N5ditueE8xcGUzM09Hc1Y3QnlkdElpUTVkL3djYUVUL2s0?=
 =?utf-8?B?Z01GQTdMTDJwdDdweEEwc0s5ZUY5NnY0VThoK3RIRHBUeGdRTnQ5MG9uemZ1?=
 =?utf-8?B?ZWsrWkJkOHh1R2FCOXFMQ1htRkRMRTZsSytTSlJkRWZ1cnFMWUNZRTJ3eWho?=
 =?utf-8?B?NzQ0cUZyV2MvSitIdEswVFBFM3hISmVoQU9COXBaK1o1T1lOY3FKYjVoWllU?=
 =?utf-8?B?OGpoOEh5MU5oU0tZYlJiOWs2eklPaXg4T0pldm15SWdhc3Y2NUpoVHgyUWg4?=
 =?utf-8?B?eHhNL2lXaVhhdWVzRitneFl6R29mR1QxK2JRY1kzdm5ndW04a2VES1ZQSGZH?=
 =?utf-8?B?djUrb3EzaDIvM0hzTHNsM1NGcUgrSXFUTEgrYUt1aUZ6aEI2bUhvc3dodFlu?=
 =?utf-8?B?aVpCS2toc0pXaDVtNWowMnUrMWwxRE9lSGNqamx5MittWWNHeEloYWhQcHJ3?=
 =?utf-8?B?UU8xQ0lJZlVIN1dZek9uQ2llRkxNcTlHYllvdXFaZnBlVS9Hd0tIOWQ5M3JL?=
 =?utf-8?B?TVlmRXZYcy9GRklDUzFDQlhkQjU5bmIxSlZGK1B3RFhqMmM3cU12VnJuM3F1?=
 =?utf-8?B?OXo0ZlB2QTFiTGhnd2V6dE90NDRqaEVTSTdFcU9VREZ4R0ZtSkVmQUFkTlY5?=
 =?utf-8?B?elgyZ1p0UEF6a0J6b0d1czgrZStHTjl5NHVTMThTMEl6bWd4eWlPQjJibSto?=
 =?utf-8?B?WC9NcjBDM3hsSUFkN2pHeFluclRPRGpJVW1jVzVJaWJiYmMzWUUzSnc1NmZN?=
 =?utf-8?B?Vmd1ZysxQm9jZ0s0UUptMXQxVkRQVC91eUlCQi80eFJRcjQrN09oSmYzdE1V?=
 =?utf-8?B?bytsSnVWZndwNEFXcUp4WjMvZTdLYWxzamplbEVqWmE1Y2dMWmxNVjlBQ0o3?=
 =?utf-8?B?QTVjcEc3M0d4WWlDVyt6YkJwZVJ0aFh2QVVWbFZWNFkxVXQ3aWZidUlGNWkr?=
 =?utf-8?B?eEVoUVBUR3NCMUwwSzRtQ0pUM2tBZG5RWWNOSWVoWE1lL0FjRVkxOG1uMjlI?=
 =?utf-8?B?Nit5cEJYNEI1NlY4SmJXQUFFWU1HMFlxNlkvU3VZSFpYZXYxWnE5eDlhRjFW?=
 =?utf-8?B?bHc1YytXbFNzOThBWEJoNHE4MVo1eGY3ZE5MKzE2N3ZDTVYydVZBdTJha3lk?=
 =?utf-8?B?QS83UTdVVDVmU2NGdzY5eHI2R0E1ZnN3OE5zenI2bnIzcXNDd1JEc2ZzSDFS?=
 =?utf-8?B?dEludVhkMkY3cW80bm1TWXE4SXFabEU5RzRHR21GSWgwSHZiNDkzNHJ1ZlRU?=
 =?utf-8?B?VEVJcUpwQUtLSGZISVpjdzFERldJZFV0Tkh0RHd6UVJKWCtxUnlpcEh2Z2VS?=
 =?utf-8?B?TFRLdlhCSHVRT2x1NUtDb04vQ0ZpUnJOMVNENzRVR1VZSWFCaXYvL2VwMXN1?=
 =?utf-8?B?aXZzUEhzd2pjTGg1RHEyQnNQbVlIS0phaE9pS1d5c1BPMndWSUJCNTAwZk5H?=
 =?utf-8?B?SWVzdEQvNHdha29EbjFtdzFXc2ZEZUVOVCt4RGp5V3RGc3RBcmRrMmZUSTJ4?=
 =?utf-8?B?V1gzTWUyZEFTSitYeWp1ZlNWSVFEVzVSRk5VNTViQ0tvSDNjWDFXMnZrUG9Z?=
 =?utf-8?B?ak1sQlBpQUFiOFA5ejdhd1owMWNzSkh2MXN4YTJGMjVyVGpzd3dFVm1VSWtZ?=
 =?utf-8?B?eWRPK3lCMERQdlNGbTJXb3RmOHZxR3Fqb3pBTW1vQkx6TTBiQWtFT1ljTC9x?=
 =?utf-8?B?RGdLMzVlOWNGUFpDcG5wTzIzYUlyNGJoUmFWSWZPRWxZcnZmR1FicSs3cXVR?=
 =?utf-8?Q?cG371L9oV7LP0/TiI2343HpoSAyYH26OuvB1L?=
X-Exchange-RoutingPolicyChecked: kN/hljVLFlP0GnpjMJq9skU8xNHGsWSx9o8cIddjTWqSubtSaaq81k605lBnk2Bo7cfZ/ml2lnAksC9MmtnyhnV7vE7jpiKIAA1R8jOEdggJ7JjIm4nx0TdQtxp9LCCyQFM4XJoK+A2jwcHDalR/BfVn6XuNLivhf0GLIyZ3sFWtBLi/r8ZsqsM8tjQCZe4oW/lDh1NmWcSNL3QzArt0u6KhhUslEOrLkw2yfyNdqf+BXgtXGKfBXUR5VZ2lSKPs/UuL0mgj/XNlV5rqEqMyUUvzfOKV6+LunfV5TO7HxU+6iwPmaif4JaSnQ/bKTFhPNkBg/C9VjqkVhAY7ZVdejA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dedc5b8-3529-42f8-d488-08dea9a543da
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5309.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 06:20:40.9869 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lzD3szXjCUnFUyF0OmFYgux/Bg5u3yy0gH7lhj15bLtYosmzZxMNJU7M4xYR1Aj1kFlCj8rUI+vvRw7lplbk90CUhYa5atDHjbGmJB6S4vuBBqTziBY36qfzfCOsq1WW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6333
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
X-Rspamd-Queue-Id: 31E944B8D3D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[santhosh.reddy.guddati@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]

Hi Suraj,

fix typo in commit message /drm/915 to drm/i915.

On 30-04-2026 08:59, Suraj Kandpal wrote:
> intel_conn_to_vcpi() runs from the HDCP enable path in commit_tail
> and looks up the VCPI via mgr->base.state. When an ALLOCATE_PAYLOAD
> is being driven on the mgr just before HDCP enable, that payload
> list is being mutated in place, so the lookup can miss the port and
> trip drm_WARN_ON(!payload), causing HDCP to be programmed with
> VCPI 0.
> Use drm_atomic_get_new_mst_topology_state() to read the topology
> state attached to this atomic commit (stable, decided in
> atomic_check), and bail out cleanly when no topology state or
> payload is present for this port instead of WARNing.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 10 ++++++++--
>   1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 9b4ff3b80b05..91d2d7d823cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -72,6 +72,7 @@ intel_hdcp_adjust_hdcp_line_rekeying(struct intel_encoder *encoder,
>   static int intel_conn_to_vcpi(struct intel_atomic_state *state,
>   			      struct intel_connector *connector)
>   {
> +	struct intel_display *display = to_intel_display(state);
>   	struct drm_dp_mst_topology_mgr *mgr;
>   	struct drm_dp_mst_atomic_payload *payload;
>   	struct drm_dp_mst_topology_state *mst_state;
> @@ -82,9 +83,14 @@ static int intel_conn_to_vcpi(struct intel_atomic_state *state,
>   	mgr = connector->mst.port->mgr;
>   
>   	drm_modeset_lock(&mgr->base.lock, state->base.acquire_ctx);
> -	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
> +	mst_state = drm_atomic_get_new_mst_topology_state(&state->base, mgr);
> +	if (!mst_state) {
> +		drm_dbg_kms(display->drm, "MST topology still not created\n");
> +		return 0;
> +	}
> +
>   	payload = drm_atomic_get_mst_payload_state(mst_state, connector->mst.port);
> -	if (drm_WARN_ON(mgr->dev, !payload))
> +	if (!payload)
     is it good to have a debug message here to trace payload in mst 
state. Rest LGTM.

Tested-by: Santhosh Reddy Guddati <santhosh.reddy.guddati@intel.com>
Reviewed-by: Santhosh Reddy Guddati <santhosh.reddy.guddati@intel.com>
>   		return 0;
>   
>   	return payload->vcpi;

