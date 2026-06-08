Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id W6A4NLuIJmo6YQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 11:17:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABEE654821
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 11:17:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=PTlS9oUJ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA85C10F022;
	Mon,  8 Jun 2026 09:17:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9451810F022
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2026 09:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780910264; x=1812446264;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fHhjyGU8WXpFprW+IaL5RtXm0AwvHxesssH7zQiEVrM=;
 b=PTlS9oUJjKErqkHu6trG0WbCLLHYtPHaDWa+2GEvKCR+hMr6FCF7vygO
 tUmkBuYyGC0+mWmb5hSTNvofdl6FFjFNufR6q+Vp6tVjfB1HSQrAjt8G3
 N6H3XN4NQVc5jyIatVAzJuRR0TGmrcI52tpW+9tQLO6QgfAR76IQ30oUR
 fLZAjHoMCLlHJa/6A9CfRxwOhGDXfTlB00sWeKNN6N20wSgj+hQaRjljB
 awb/xmkK3UK4pKMSHbIXDf+jrGtdm5sh0lMtfOd/+kHEsJNDOZgBaoKfF
 I6RdereQTHFwZeYstmsqZ+ommuth2xJVuDLI5VpmuWoIUS3ifUVagsWDo w==;
X-CSE-ConnectionGUID: 8g5v8qWZQ/u4wz4bfwk7Cg==
X-CSE-MsgGUID: XYwLWDbaSJyXTVCjNJBkMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="80775105"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="80775105"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 02:17:43 -0700
X-CSE-ConnectionGUID: /RHoJkKXQyazpWzZzqZtcw==
X-CSE-MsgGUID: aTq3rOoRSk++F54jLF1EDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="245559007"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 02:17:43 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 02:17:42 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 02:17:42 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.35) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 02:17:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wr1Huin3beiYGakpoYwuUn4l6+KBuWp6ACxb5bnwHu1K3j49VAHJF4kk7Butfq7CBBayMmQmn2/33k4p5Tnv0+l1RMFkpbxxcKhRCsEapPPu0FGqrp/+qtW+ggMmdLWyuNMfz1Kf2rZkc3TMI1QWggba/vox5I0bA3yozG5AmG7mE6ABxyBVJRtnxrfkz7PWFNlWROOqyGqNfe7mA9CxOWepXcAtg9DQwsatoRAhES3zlDNAcfNRTRdlD2VRcPRYFXVJYkz+MEcA454xGdy4U/R+b5kHDFAANlIf8SwgUy21Iq5M8fHe3/Qh27z9WzuZ+L863g9nCAIpA0mKgI3vBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CEvfq/idwOYJ6pYi2n7nebVDFC6qtVLIFdNe5YhGg1g=;
 b=tum1IR0s0XXfDqj1zJQpPjaJFrzv3tlgpEaovop9FT8FGCLTYo2Lp+WqBiup2tLx5sFSROQGX+ULY8S5FWCmkVJxiNQaeCLNk3afwpF5pjfV2RcphO6KucOlU4Z1g9IPzc+fqrRmq9eQwO6kwe+JL0JVPKyED6XN2nZ/yc/4+r5oUdKnh6YI+3FBncYdcWtUEE3T8KXnRz677UIJTmuZiRc18ThdmOvcMCdGgsMBq1P8TAb+1grVJgxkFVV3sI+IZzfP41/xDJ3e3Tclo2z6VYpTtcwh9UQnWGJFxNn9UikLvQKlSOienUiRCEkpfFbI0/8scmHNA3ZfifEPGPmQMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by CH0PR11MB5251.namprd11.prod.outlook.com (2603:10b6:610:e2::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Mon, 8 Jun 2026
 09:17:34 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::8f86:8d08:45bf:ec13]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::8f86:8d08:45bf:ec13%6]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 09:17:34 +0000
Message-ID: <7167a2ca-12f9-47b7-b1cd-1b69d4c07e37@intel.com>
Date: Mon, 8 Jun 2026 14:47:20 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/dsb: handle always_use_vrr_tg in
 pre_commit_is_vrr_active()
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop>
References: <20260525091159.564066-1-ankit.k.nautiyal@intel.com>
 <20260525091159.564066-3-ankit.k.nautiyal@intel.com>
 <aiLsptasB2CKlwwJ@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aiLsptasB2CKlwwJ@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0152.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::22) To BL1PR11MB5333.namprd11.prod.outlook.com
 (2603:10b6:208:309::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|CH0PR11MB5251:EE_
X-MS-Office365-Filtering-Correlation-Id: dfa998eb-7a72-4619-d977-08dec53ec62c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|22082099003|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: ajvG25ucd9G02ZztLAl3JFEj+l3aEHJA1zpibxkZcoKe66RhfcCcBavUGQH97T0pAgkGwI30FUpgFpn43KeqD24bHnk/hwebvBDaFWjdsry2L0uwKBLfNNc9N7oc5/mysiej5SUXuEVOD7VOTec/sLZJ2bIDF/dnTyELhiPbhH1tmFzMEGfSWTT+hPp3I45f111aU7sGNJh8ZcZIFC39Ro8RUEOWs1pp7zKN8xAI11By9DXLrnFlzH7KLWXMmA6/AK235j8+bUqDIiq6DCZ9vWaUj1+U5fp1j5lHiA1vt8jotroKgmQSghUbuDkCgdkxssijPOzOSnx1vbDOiK1PVP8p1OiLgTcUTgHHO+PhIzq//Hmw6ualVGzWoNEtMbBWhLeRdMVGiqWKrNxiywXkGnIdIrqfSrsCbOCJlXPLou9kpmNIdyCUEVHJfgiGvZ/XoL45CRw2DuhwvPDqmyzUtPovOE8E99MlAf73C3DENK7kVPGL5sGjB8k3JNUhJo2HCqBp2xi820R96aTAWM0OR8ZZ5t74HBGRKDPCuZAHJJi3YHHh3lwGYH2nQQ5ajfOoWTaoU8gGvHbb7s/mMysih0NVUp1cxpg+FVuvtNVqBk4hXXrAkgco8RdYkJCLgBMM/c3lYPt0+iN33fT+iy8eETEgdfBOmoFeT/Tix8gVYuCMkRhMC92+KnqkFhs9STq0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(22082099003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eHM2THhVU2lHVURFeXJQUWlMNi9vbUVpTzRTVVVzdUVaTjBwZldMYmZ3bHRL?=
 =?utf-8?B?MXkwK1lNSk1PSUdNek5TSXowM3ZBN0FCOHNQQ2syODNuSUJSUm1vL3dCdU5x?=
 =?utf-8?B?NWpaaDBiY2doOUtYZEgwMjFqY0w4ZWU1K280WnF0UlJ2Z0hsV1Nxdjl6eHdx?=
 =?utf-8?B?OVdYSE9RRGZxQlBFWHNiN1V3WUthTFh4dUZ1blF0WTlVZm53WjhCR0VVSTVC?=
 =?utf-8?B?TjYxNzc4Q3paNFR1dmpCNGtrbTc1bWRDSjVRSmRja3YyLytxTnZjcDlLamxj?=
 =?utf-8?B?WmpKUnRwOVNBbjRWMFROWE5oVDJsbEp5M1JYN0YvUk83SFA2OVBwTnB3dDdJ?=
 =?utf-8?B?aXVWMnY0MEVUUW5ES1NKdkZMdDZpWURzLzRQL1JUTkFHakFyc0dsQ3IraFpv?=
 =?utf-8?B?SzBKV2hCQTY0dVQxaE1mRTc1emtqNnNhV3BFY1RrN0F0VTBaaWpqQ0dhY3Rn?=
 =?utf-8?B?RHJycFl5eEhDWU5rcUNUVnBqR2JKTzBRQzlRL3dobUxXNlF0RG5BVG5SOUFX?=
 =?utf-8?B?OGxISkd2eCs3UnpqWGRPZmdPL0daTHF5RlZZMmxGZUMzZHcrWi9aTFhRbWV5?=
 =?utf-8?B?bnZFbk5NeW8rbG1DOTZhYisrVmhuaTZrZ0VFaXJ6NTczWkVkTE5UQ3NvTm9j?=
 =?utf-8?B?RFZJMVpnVnpTcWZzYnZ4L2IvbWdtdjZvOVVHbFh0ZU94QU1Gd3NYZUtWQjUr?=
 =?utf-8?B?NjdKMnFPWDQwTGt4b2pQZ0lNMUxLc0czNWFrdmUrd3dNUmFRdm9HcjRzSWRx?=
 =?utf-8?B?NDdIUFFUK05wMjZqaUI3dDY0NFlteVN0YXIzL3F2NEVjUjJHUGNqVDdWM0N0?=
 =?utf-8?B?WFQvNW8zYkZNb1VMRWNPZ1RWRlRDd1JRdmZBYW9VVGtGdXducTFGR05TQW80?=
 =?utf-8?B?M2dDQlJHa2gwMVZ0OWdVN0w5TXRpdEpKU0JIaGNNYU5LazVMN0plM1BKMVRL?=
 =?utf-8?B?dkZLdU5vN3NUcDU2SmtNS01kOUErVkhDdDRwa1FMenNpdjdjam9HTnZXWkUx?=
 =?utf-8?B?NEFaMVJCblVMb1BoTGdnMzcybE1Xc244dzRaRTd1SStiQ29iNVRISDVUdVp6?=
 =?utf-8?B?dkFrNnN4T3I5czUwMlRFdWhLNHY1Tmw5ZFlnK252R2pxYVNvL0dWNUNVMWI5?=
 =?utf-8?B?eUs2QTBtZlhEL3VPQzBnbTFVdElOTkdrQ2tGMzR1YzdSa0hwMWk2bDEvM0hk?=
 =?utf-8?B?QjdFTUU4SGFoUUVSblZTOW1qWG5Ec2Nkc0ZGRXltbE5jclZ2d3cyaTFDWmlm?=
 =?utf-8?B?UVZRWFY2cWRORVFNYTlieThRTEJ6bUFJR3NmN0dNbE5xMUphY0xWT2tnVWcx?=
 =?utf-8?B?YjlneXJrZGdQd1Ara3B5Z3U5NFVGT3Z0YTFpN29lQWVPTjR0LzdUenJzYTd6?=
 =?utf-8?B?OWY0WXN0Z1dneXVrblZlMElDVkhGdi81ZTAyL2IvbmlTVnE1elhMNWNlMlZV?=
 =?utf-8?B?aTVYb3RrTG8xQXBsTmtMZElleXZvMjgwYnpaZ3VHd2c3c01TWFJoTU51R3N3?=
 =?utf-8?B?NUFIeWNkb2VhV1ArZGNtT3ZheThaMFE4WFJtamlxWVRMSzdWRGpxVk9rWTRW?=
 =?utf-8?B?djQzRlYxT2hqb1hvTytqK2JaL2hiMEo4WTRiU1k4N01HUjhHN3NsbGwwKzNL?=
 =?utf-8?B?TTJKTHVGd1dySTZRTXFUZndGbitQclRjSXF4eGhkZVdMbzhweDJXdnJwdmJH?=
 =?utf-8?B?YnJXRytBd3RTcStzNFFVbk9uVERGcHNpb0dSQkFTcStqaUdTb0Q2cTR2MTJp?=
 =?utf-8?B?dG5tOGhhZ3krclRQZFdCYkdHbUlRSDBTRmdUSlh3Y0t4bnNNN05tSXE2c3Bs?=
 =?utf-8?B?elNnOEtaNlhOMjNVM1A2M2lUWmVzYXF1MUVoalpBNmh3U0FUbmJXcHJNTCt4?=
 =?utf-8?B?ZHIvcjc4NlFkbEdhYWwvSVJwWHk1c2p5bTZDcjVrRkt0NW9mQndnY1p2OXUy?=
 =?utf-8?B?TjdtOVJSWUVLNVkwQVJiS24vVXZSelpDVFN5bVZYQThGN1N6WHRYZUlseG84?=
 =?utf-8?B?QXhnR2IybktsVFo2eHZmTmZuaGtrc0hjeEhNSTdFYWd2c2U5enU3SUNHRzZN?=
 =?utf-8?B?SDBFU3FtTUl5OGI1RlBlalNtY256QmwxelNFZDk4aWUrVHlpcEtMcVl0aGpD?=
 =?utf-8?B?YkpjZnlWbGk1SDRiYTRYMW0vL3VqaXRUNjIyeC9GdTZMdEFVZTFySjJFU1VM?=
 =?utf-8?B?QmxST3JtSkJrOVhJVFVLMWdRb3RkdUQrYkNxMFVnRzhLR0RoYmN0SXkzYWxL?=
 =?utf-8?B?MGZvc1A0WkprUU9VdzRIa0VkbktZRDN6NURYOU9FazdSemcvYXRaMzluRndM?=
 =?utf-8?B?UjM4UDY2UXIvR0ZqUFUvbVpCT0ZhM2t2M29tMTY3OVdmQ2x4V1k3RXZUYms0?=
 =?utf-8?Q?1uVy4ARpBuOMkO28=3D?=
X-Exchange-RoutingPolicyChecked: JskgU1BgBDp0Q6LPj7eFc96dU3WV5IYhBz+qkSuzoJ3FCCIYEJWTqiR4udOqPIauW5Urxe8nzeh91bN+45Ee20DXRiiJfzg12e2eKOWxZswAJpW8g9NT1NBntf4MMeCIznPspZW8F8rDIJ1AK3GtNIqU6rJu08zLItSRzYVO/YOn4o1lfWWztFoGWvVUOvpkdZZihu+CUGJBcElbjc+sWchbmcPn6RVAmSSKxNKaDD/G4sKWz5d2Ws/XD4igGMWyTEpeUZNM5bwQHzfksrO/lnfVc7vpS1zN/B8UAUynYYvAzWGXwMSA1H3sxhanxMOyHuthlYA4gCDCaMaFIyJ8mg==
X-MS-Exchange-CrossTenant-Network-Message-Id: dfa998eb-7a72-4619-d977-08dec53ec62c
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5333.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 09:17:34.5017 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 138Cccild8yOtFEq0jvP6YO0QZPpXoZu5v0vdudv3/9ONKrX6hNwzPdYtlzLWFLnCNrz/JUQkzMNqcxmBdINQZK1nhwqLAtJ8tzdTiQEQaI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5251
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,m:intel-xe@lists.freedesktop,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3ABEE654821


On 6/5/2026 9:05 PM, Ville Syrjälä wrote:
> On Mon, May 25, 2026 at 02:41:59PM +0530, Ankit Nautiyal wrote:
>> When the VRR timing generator is always used, the hardware behaves
>> as VRR-active regardless of crtc_state->vrr.enable. Return true
>> early so DSB picks the VRR path for chicken bits and the delayed
>> vblank wait.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dsb.c | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
>> index dae8ea33d069..6cbbd23f7327 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>> @@ -154,11 +154,15 @@ static void dsb_buffer_flush_map(struct intel_dsb *dsb)
>>   static bool pre_commit_is_vrr_active(struct intel_atomic_state *state,
>>   				     struct intel_crtc *crtc)
>>   {
>> +	struct intel_display *display = to_intel_display(state);
>>   	const struct intel_crtc_state *old_crtc_state =
>>   		intel_atomic_get_old_crtc_state(state, crtc);
>>   	const struct intel_crtc_state *new_crtc_state =
>>   		intel_atomic_get_new_crtc_state(state, crtc);
>>   
>> +	if (intel_vrr_always_use_vrr_tg(display))
>> +		return true;
> I don't think we want this check inside pre_commit_is_vrr_active().
> It affects too many things.
>
> I guess we have three places where we do want it, so maybe
> wrap this into a pre_commit_use_safe_window() for them.



Makes sense. I'll keep that helper unchanged and instead introduce a 
separate
pre_commit_use_vrr_safe_window() for the DSB paths that need this
behaviour.

Regards,

Ankit

>
>> +
>>   	/* VRR will be enabled afterwards, if necessary */
>>   	if (intel_crtc_needs_modeset(new_crtc_state))
>>   		return false;
>> -- 
>> 2.45.2
