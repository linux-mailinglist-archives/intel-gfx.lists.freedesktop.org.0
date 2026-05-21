Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGr+KPW/DmpDCAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 10:19:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1079E5A0EA1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 10:19:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75DD410E1CA;
	Thu, 21 May 2026 08:18:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RVyYpJim";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FDA010E1CA;
 Thu, 21 May 2026 08:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779351537; x=1810887537;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QiCFDIq0Y1qQDt0TyVDAbRI3aNGuL9jJCP7f2DVdtUQ=;
 b=RVyYpJimVtzjWF2hqaIJdaC8WPgPsObIyQNjbxyaPFmLWQpqjAGWhgQR
 OXj+xBgAcY2wvaTq8v3tD4FQTTWK4c74rsfLbO1iHRohLx1+Pzd/tZkR5
 uDV3T3tqrN/xFzth3Q3qmIzHZ89X+g6t5yyupmZjj0zbjP6cp7Z3BcyVm
 qXGGvOZTK2R+uaxjwxTBRwz9hvKjtdPtm+Qf76ZUl9flMS8RZivyty5Lb
 WkT72og8iIQ6bzkQfPra0xL64cARo+wyck4XjlGCD7CZogwY9Kt5FBBAn
 HMHn9WDLGUXOLV5ge6e1kfKwI3mPYFzlzK1IBdvHZnTIVfT4WRxhYCVqP w==;
X-CSE-ConnectionGUID: pUuvo7BxQrOIPoLXCDxx1g==
X-CSE-MsgGUID: Vl7DwV/LTfmlnmwTfGGzDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="83883987"
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="83883987"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 01:18:56 -0700
X-CSE-ConnectionGUID: Dbi450O0R4C5c/z3tohxCw==
X-CSE-MsgGUID: WQaUfWyEQbKCy3cO8GC8rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="236043732"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 01:18:55 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 01:18:55 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 01:18:55 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.61) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 01:18:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U8o974GkRAIJNil7/E2wQcXLMmDrzJwtFkN5jILI/Gw2yUuhQfDMawlSBvGRqMVHdwun1WwAxvGed8LFOr+4eQhafSAnL2/7yA+Zv62k4T2xQ03eYRbES0B6kxot7wbqhZ2WFyc/xcrV7m1//W0St7UUW59oE6+tv/qipfaHgXQIQ+GVA0bKPQkecbbZWkwO9R7SB+6xDNR1W9HyfRHLlxZ3ddf2T2I31xYKypMhQex92pgzsfwkEhSejX4ej2EBuqmpKEMLdTNztg0DenpmPcMGvfbRij32XWe1B3meG3SWlTZFfOkioOf+bMzJCzpN2AqVoo3jpRyjrRgNeLwvEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rI7L4u80CjVOu4RXbAikWSCNOScEPSbzSR3oUw22vRg=;
 b=ESoN7PBJOmUrAgabS1H/unjDEU9HZewjujKh5AZulCQrnfU6TJDQ4D2kLV/fca/dteFWFP/iPGpGAs5K3HPwxTFm9heJoTXzkYUfCDHVYZtNbRxDNeajxlhdBsIDHAoMMqhDmagpZ8+b6bhoPASF2XJS/8l6ZTFukwZYc7dgiltyJhs27pq4QV9nqYox6tZtPqmPeQY5T2CUZCy80nj8iGO2kdbgjUQqwypEt7ZZiDuiIetYNHz1OYtgrKQ0Ne/suqCsg/Y9+GoG1xvvmS0KbioV7S27UJijhuMaaSH9GQaX5gqXB+tkeJd+k0B/0ptcTZx6J6/kGbwG0hqh8DruGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by MW3PR11MB4763.namprd11.prod.outlook.com (2603:10b6:303:2c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Thu, 21 May
 2026 08:18:52 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0025.022; Thu, 21 May 2026
 08:18:52 +0000
Message-ID: <074e4d37-9bf0-45da-9541-8b27164e743c@intel.com>
Date: Thu, 21 May 2026 13:48:42 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 01/16] drm/i915/cmtg: Add intel_cmtg_is_allowed() for
 CMTG
To: Animesh Manna <animesh.manna@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <uma.shankar@intel.com>, <ville.syrjala@linux.intel.com>,
 <jani.nikula@intel.com>
References: <20260513163857.1541888-1-animesh.manna@intel.com>
 <20260513163857.1541888-2-animesh.manna@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260513163857.1541888-2-animesh.manna@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0181.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b6::8) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|MW3PR11MB4763:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ac572f0-cd38-4c1b-f4f1-08deb7119769
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|56012099003|4143699003|11063799006|3023799007;
X-Microsoft-Antispam-Message-Info: TS3H8S3fQVxiDHI/j3Mg3C88pZVrjj04XQguBmC0tdY6fCPd/97hTD2opoScNoUTeD/XSl80daQL6pKbdusGI5e0KT2DFnWJAmcuInHuoJDGORqM8fHNDauxVaNiKivIWjHsVD7CqgJ4gnweSwKwfnshHuXvaGXf+DbuG9r1rt37qcpO3mr8Ybc/+dhDHgpEqD48qvhacO+AoW8FKeby75eoqTZ/FhgYdALe3HXVuM6aZbMmu5PrTjP0QKs0/HW7R6Y0oaID4k/tJQtCVrHRmZMsO9AG8tZSY1b9LY+r5VRYI/O0ppzi9cDEmCgfzNm7fxI4z4C/N5qo5aD++/oY7MdpFIU1CGT5lQrUq0uMtEKnFUkBAx3tw3XgMqGvfZ97FQiifG+Spwtkb/5m3e8f5dVsneXDalBpB99JVnIei/VQSWWRis/y/7OH3R1nRBBxMVZds16b4jjxXnlhwBXaDONNZKcLEg7mge7PqpnPk0kGew54xGIh+TITWCJCvQYuGI9bBwHVZ8kstrinRiqWkoSRPmchI9x6cU9q+9YdTbfHnmEQ+j4UdUbCHF9akg8+EahWwkp9zXarS5IdZ0i1UpLS7yek1UVroXzFdH49tGKnLBvp5KbUu3aaUrtOaoD6vOemaQPU+QPyL7Dlw4chRkiHONIICRaPcEZitWyQXkemwhuelwIWc/pd26qk1iBR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099003)(4143699003)(11063799006)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NXBHWUVqMkl1YVdQY0RIR29haTE0akltTkFzV3gxUm03R2VIZFBTdURIRVcz?=
 =?utf-8?B?U3RjdkZ4cDZhQmRzQVM5cDNtOVV3YjFEaW5WQWZJamZ3dlJuUUhqR2hyUEYv?=
 =?utf-8?B?R3RRQXhCUzZOdCs5QzFkOXB3bk8vT3VtWTljcHJ0S0NJUytmU1JqK2YvN1FN?=
 =?utf-8?B?cWlvSENOTHBXeStBcW9MUmM2L0lFS3Vrc3FiVWxoaHNUOUtacjdMekZnMnVZ?=
 =?utf-8?B?MUhIYkV6ejNPaXRFd0I2blhNNmJIUnp6OXBiY2tDWDVvNUkvQ2ZvSTRwVmg1?=
 =?utf-8?B?S25FSDd0cFlUWGNMUmNJQlZ3L3M4RUd2cjY4bzQreWQ0ZU51dUFLYWd0aWxI?=
 =?utf-8?B?cTZ1WUhMRm1OMVgzODUzeWwzbllWUEg3bmg2clpWNExXWkwzM1gvY2xGZG9C?=
 =?utf-8?B?Q3I4QlpGMVJtRlRSVmk1YmxjSzZZUStmQi9adEJ2eUVxREx0WjFDZ2ZIMGdu?=
 =?utf-8?B?R1JiZC9tN3NCY1VCZGl0cjlXWDVjMVZUVjdKaktUelpCdDVvVnlHbWlqZlB3?=
 =?utf-8?B?Q0NmRTM1YmdIRkJsamh0blNRcisvbnAzK1FiRTZQV2t3OGZrSk4zVk1hZjVO?=
 =?utf-8?B?Q1dYUy9SQnNoVlVBL3RaOXBnYjFSWmtJSUNVaDFVQ29XcUFwY0k3cmorRjJV?=
 =?utf-8?B?a3dLNXprZ1R1Rk1vOFdvUnRESkFHaU9Cb2lwTkU1RWtoa0J4QVhqeFVqWE84?=
 =?utf-8?B?TVZBUnNJT3I4bnRkUG5JWHlqU0NiRjQwekVkQ1RFRm1jcGdEYjZqRjJuL0Jn?=
 =?utf-8?B?ZXAwV2xBeXBoTUVhK3pwZjUvcjgvQ3dKQ0owN0lFcnUzOHF3NzVablA2dUo1?=
 =?utf-8?B?QmdVWWZpdk1hbDczSnBMMXZSQ0RqZ291bnRYaDEwV0tLejlLYUVBVmlqaThN?=
 =?utf-8?B?ZHloaFdaQUJOcWUzY1JDaFY5K1N2emJwUERNUEQ1ckhoTTRsb21PNUJyV3dD?=
 =?utf-8?B?dFVYM0w2b1B4dnUyVUJFQ0taNVZYeHdvMGVPazRaM0JwK20yTjZaZzJxY3Zx?=
 =?utf-8?B?VkRTN0dyZ0dhQVkySE1CekxuUnlpVXpqTnArSUZRVXlWTEVKQVgvZ29JUmV1?=
 =?utf-8?B?TE9Ha01WQmZVNWxnbDNQN2o4dFBlUEM1cmFDTm0zZVJTY21zYU1GN0JHUk9i?=
 =?utf-8?B?NXNVZEM0c1RCUnc1S3ZaR01CWDdCMnRjZ3dyYndaRmtNVzA1MWtIL2FZeVQv?=
 =?utf-8?B?d243S0NFR2tQSFZDNENuWjZqbStxQk0rOUdvRG8zSFdtdFhCOFhwc2liK1Jm?=
 =?utf-8?B?QjhDaFpWdUhPcXpNSE5RSFBITDBEaG4zaGw3NGdkUWVSd2dXbEZ4OStSTm14?=
 =?utf-8?B?UVVKNzJTa1lXRURUU0FINWlDSmo3K2ZGVmZmbWsrREgvM1gyWi9may8xYUdy?=
 =?utf-8?B?NXQ3Y2ptQ09VbkJXeFRvSHNhNGttVkJQVCtDVmtId2NaaXJaYlAyNUdKRmFq?=
 =?utf-8?B?RExaL1UyWFo5Y0xjZXNVTFMzeW9ydWZZakN0WWJWYWllZjJFNGMxR3A2dFV1?=
 =?utf-8?B?K3I2dGdNU2hDU244SGRQcmthcTBzdnNNMUpVOG5yeWhrWXo1Nm1obVJXbE91?=
 =?utf-8?B?UXh1QTR0eEszTlRFeEZhZDZRRE9aaDlWNVBwczExbWl1S1dXbUVQTWJMNDhK?=
 =?utf-8?B?WGpzUm4rNkNVa0lIcWFmZTRHeFZ2L2JTUWNXSGVMWFhpL0JJcVh2VVZCZlRG?=
 =?utf-8?B?V0h1OERyUC9kT1hpeEdVbnlpV1g5cm1ORytkejlTYVN1Zmx5c3ZtODFkclRO?=
 =?utf-8?B?eEE2aUJvMldLK203YU1yOWRNQS9lays1RitVZWZ6YjlZanZCSlZ3cm1jWDRq?=
 =?utf-8?B?U01UdUliMjFLTW5oVEV0bWlUbzQwWmRqWnR1eUVPZEY1MjNvcGw3MmtxY0Ey?=
 =?utf-8?B?b1k4RzdKM2tkcUo3VHQ2Snp6UlJIR0hTa0ZoWXFEMCtxQUd0SXRFVXdNZzNs?=
 =?utf-8?B?bW1aYjR0UjFvbCs2NEN2LzFnb2R5VkFmOGZzZjI4SlIzYlRKZDBiWFhCNXpp?=
 =?utf-8?B?aS9VS2NhWnJHY2wzUGkwcUpHZTg2SWdNelJLcUZ0bURseUR6UHAzdHRCMTdv?=
 =?utf-8?B?ZitNenM4WkJvZ0JrR0d3Sk9KQkJRRUlqbFJSeldselQ3U2VSVmFlcjdIcDU5?=
 =?utf-8?B?YzdmL1lrWE0vSFFBVElzcmNVVjNnSlY2cU9mZ3FUQm9FTmYyeGlMZ0JlUC9a?=
 =?utf-8?B?NzhzcS9JTlRJRC9jV3FjL2Z3L2prbW1aRmJTNnlGZTUzUktsbVVhVkREbkxF?=
 =?utf-8?B?ZExkbnJtS1R6V0lya25JdElsOHJkbEx5YXEzUWQzYkpvNEZHcUlJS1JFRzVV?=
 =?utf-8?B?RzBJNHZDVmZNdW94N1F1UnFHMHFFN254SHl4SkFNTFV6cEN2bDgyR3h2dDRM?=
 =?utf-8?Q?6gqr5s/QeK4AGmOzT6VW3a91u0xRY9dKI5oII?=
X-Exchange-RoutingPolicyChecked: JNIc4nLvgV5BVNHklkRdccfLFXD5BRGoebt/Ee4+ud0b2l6MS90Xig8lBDmhf+Xulo6wJ1NkifUMsL4RQmhv3uPjPn98smc9DGU9kq9RxC44CUq3YoA1dy8uVVxO65/EX0mtwO1UWLM9pTRP67xmv8PHcJ0hKSmOHvItOeC4c1OR2y8aR4ApUXGi+rz6+2lcNbvrOdsaQ+28Qp+gU5lSN5jq197JT4HkFwVtztNcY6jgk/9n8AOBSFS3i+vd3GQ7HmqnR5A1blIP+7wpf5CXVewYj9ktWHQNIpy7aqp+FaXHM8DHxim2xKpQA4dZSqDvQM9+iwzGoqi47FTvIe3LUA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ac572f0-cd38-4c1b-f4f1-08deb7119769
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2026 08:18:51.9919 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hNmqv4D+8zFDQx0JGl55IHqqPmX3xjY1qyLWYAvV7bnoqASe/IKRlZAsTU2i/87iaMGaEvrinG9SzGjaKopYT86Yfpla99vdQjcRM/0VsOWYT7ZyVpddlgqK73uVHxtj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4763
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 1079E5A0EA1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 13-05-2026 22:08, Animesh Manna wrote:
> CMTG will be enabled only with DC3co, so add a separate function
> intel_cmtg_is_allowed() to check the prerequisites for enabling CMTG.
> DC3co will be enabled in a separate patch.
>
> v2:
> - Remove separate flag for DC3co from crtc_state. [Uma, Dibin]
>
> v3:
> - Do not access power domain members directly. [Jani]
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cmtg.c | 15 ++++++++++++++-
>   drivers/gpu/drm/i915/display/intel_cmtg.h |  4 ++++
>   2 files changed, 18 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index e1fdc6fe9762..dc039bea452c 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -4,7 +4,6 @@
>    */
>   
>   #include <linux/string_choices.h>
> -#include <linux/types.h>
>   
>   #include <drm/drm_device.h>
>   #include <drm/drm_print.h>
> @@ -16,6 +15,7 @@
>   #include "intel_display_device.h"
>   #include "intel_display_power.h"
>   #include "intel_display_regs.h"
> +#include "intel_display_types.h"
>   
>   /**
>    * DOC: Common Primary Timing Generator (CMTG)
> @@ -185,3 +185,16 @@ void intel_cmtg_sanitize(struct intel_display *display)
>   
>   	intel_cmtg_disable(display, &cmtg_config);
>   }
> +
> +bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	if ((cpu_transcoder == TRANSCODER_A || cpu_transcoder == TRANSCODER_B) &&
> +	    DISPLAY_VER(display) == 35 && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
> +	    intel_display_power_get_current_dc_state(display) == DC_STATE_EN_DC3CO)

I would enable CMTG before setting the DC3CO state, since CMTG running is a must condition for DC3CO.
Doing it the current way creates a cyclic dependency.

> +		return true;
> +
> +	return false;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index ba62199adaa2..ed540581738f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -6,8 +6,12 @@
>   #ifndef __INTEL_CMTG_H__
>   #define __INTEL_CMTG_H__
>   
> +#include <linux/types.h>
> +
>   struct intel_display;
> +struct intel_crtc_state;
>   
>   void intel_cmtg_sanitize(struct intel_display *display);
> +bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
>   
>   #endif /* __INTEL_CMTG_H__ */
