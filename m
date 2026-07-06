Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id G/oTEL5WS2qtPgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 09:18:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3DD70D6E2
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 09:18:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=ahgjPnCx;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CCF610E7BC;
	Mon,  6 Jul 2026 07:18:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06A9510E7B7;
 Mon,  6 Jul 2026 07:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783322298; x=1814858298;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=D0t+m1oSc0W8gv+ghf02XiqCi1QYvZE4/jTitVgq1jw=;
 b=ahgjPnCxZDa9qYwRiQyWrGRwl42vY8Tex5NDiC//RVh94W9Qpm135MUE
 +CKwynJU3KfjTo6EowP2GcqXG1tby30pDtNLCfQ7mOV3AsFvpiBYgQxwO
 gH9JA4fjcMn8yXU5csMKsZOejlpcSkaZq1acvNzzyoTD9rI6qFppZvex0
 vMGrpq7T6Q0MZwBrxFaLxFJfM0BkEbFJB+wY14/Vr/VnDgVd4vQkQB36y
 Lp1tWUkQr8Qz5a3JunuC7butIUTpVCnJTEr5RtQoIMybSi6k6WbCs2RXu
 GyEjAueOkrIra/X+cGjHEosxJL4tSmtp1GlxrxIPRh67i3PbPNwt40suK g==;
X-CSE-ConnectionGUID: AQaiU+ICQD6qFH9f0QESeA==
X-CSE-MsgGUID: wnX/agsUS76OGRju3veU7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="84039370"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="84039370"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 00:18:17 -0700
X-CSE-ConnectionGUID: 4UmytFPoSU+oB4U4Ev4XVA==
X-CSE-MsgGUID: +yXGxrWER7KNXCNeBNEHzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="247237715"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 00:18:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 00:18:17 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 00:18:17 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.27) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 00:18:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hsTSki/Hm7lk6EBpM3Tzffm3Wd5vTZYH/FCWDMGTuvBQMXeaIAqKGr3eYlHbNVdirpoQ4SBBTgzZLBq4pT8fFBPP0m0kWGylI33Xkc1/xFyPN+YWDJSRUStcR5bo79CEeFV+AzIT8k2f+gaIAKRgA+R+k4dGjRxXurJHKXjtaRCBDhMh/7m857LNKq+ZXEQHr9SvGfIXEMeC5eAg1SCXWsxgIdKkFZ8n0nXbmaC/znqex2/5vemKRu8+lxi8QgV6kaRX/SHUpJ7Cx02znerT2rvl7PgnSKmRfGeBIfie5qTnePQsGaDuEpppsB/i0TLSwnpsgOABHoSlVT3TiBBV4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4Dvg4sKc4Qyz/4Pvbz9Jx3GR0EctiQ/3AM1zADc/Xm4=;
 b=QmGMDqRtsynNHk1om4R5XsWc0c3St6VQRYfthvYOxcAnBC6+8JzzPalAeK49/jtQhp/GNYMuApA2JKNagGWI/vrx//8IBLQz5v4XFYNZnqtOzAlVLbymDXbdvxxkq8PEvY9XA5CQSGvIthl3PJuA0TIvKpfv1pnxx9U2TnwgS7rZ+Q5YCVsAP/Cwn4EmaB9MGgMHKQQfFqhi0jP+h4tOjytqpu0D8DOwlxPN2S/IPNcxd5KEWuXugnYGX/kkKVyt/tHerAA6y7fe1m2FQZuKg7qxPDH8sfURdqnY3UIDYIHfAG32gFF0VJvkN6CTGUuP1uaADa7n33I0cHdb7JBWdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by BL1PR11MB6004.namprd11.prod.outlook.com (2603:10b6:208:390::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 6 Jul 2026
 07:18:15 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 07:18:15 +0000
Date: Mon, 6 Jul 2026 10:18:10 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 30/34] drm/i915/kunit: Setup DP link test context
Message-ID: <aktWssXSVCVD5kXR@ideak-desk.lan>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-31-imre.deak@intel.com>
 <6408b519-c31b-e3aa-d606-2154577e951b@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6408b519-c31b-e3aa-d606-2154577e951b@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F70A.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::38c) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|BL1PR11MB6004:EE_
X-MS-Office365-Filtering-Correlation-Id: 8eda404c-6e75-400d-1c80-08dedb2ebeca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|5023799004|56012099006|4143699003|11063799006|22082099003|18002099003|3023799007;
X-Microsoft-Antispam-Message-Info: MT91ygVdPddQ7Kq1SWuXi5tEHQf/dcvVzxm/wMRAFIN8Xx1UA/1tY17l0SF+PCbmvcZ8CNlK0/FvDEvMpWSColNJ/rQzNQpZgg5e5tPo+T40zzc18FykWzKVP6tK+zaCzYvOOViL1V93m9HLQcXV8jIt0tyguX7Si3M4jw54xad3Y2pSuFSueQMJA43dcIFxWzGtwBy+SEIxlMAffTnoaJ7TvyPb2vdUg8wwo7yP6DN6k0pKABEKpThO8bdTyoumW3seAAxOHNIzRy4GuDZkvnCvrDLmaq/Zx5IhwC+7rM85DqUkvRXXawJ367uQjcyN1912Don3zeQkmhO+GntI/q1YynIdYmhKcCJ390E/+1MZC3kT9iV+DrwR4PtGn+pVHHNjy5OGp7f9zcy7PhKKpDlo0D1lrtHaIfBMA5lipKCvmfQJ8GycBKQG99nrIcO3bd/Y6uA4YY2WLGvrQuvBNgmsd6CeX6u+q0IZzLe/YMq2i6cxEHjl9IzTLVJLYvWNTnq+OElSPBCgMJ6BmUhw19Nd0X88TMG11woG5PbjLeL9Tj3OzOSVmnpz1+0XvrYhaPSRpSvBLRoq9UmGxr55f+BFmg9ubxTRYY2bswWaqN2hMEOVXRsJO4yNCXaFgiebgHM56QQEyUEHH0B9o5LFN7Mvs4rHSI/QrqF7pCrT7Cw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(5023799004)(56012099006)(4143699003)(11063799006)(22082099003)(18002099003)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UnhWQWFjZENtSGxFd0IvbzRjdEdJNWVQbUh4aDhXUlJ1ZDIrZEw3VzlGM0E4?=
 =?utf-8?B?ZFR3VlF4ek9pbFNSYlVtYzY0ZUJIdHhwRC9OMUtMM2J5MEtSR1IwdHhSQlJx?=
 =?utf-8?B?TUhmM2RKTnBDQ3p4R2xYemRCdDNOZ0VQN3VPNi9VUmpVd1RZL0pOYXJySWZC?=
 =?utf-8?B?TU9BbWpUbHNsL1NXTW1iek5STGluckhXUHZxcDlOU2ZSTDFOeStUVlNzdmRZ?=
 =?utf-8?B?Z3hoNzFMVmluYUVPT1U4NlErRnNyTnErTGhnS1N2Vkw1WEpYZ3lEelVCdG83?=
 =?utf-8?B?S3hiMkd1Y01hM25MQ1NidS8waU9nb09mczNoNmhPcFl6SnRnalR3THcyZVho?=
 =?utf-8?B?eEpiQ3BKa0VoUklvOE5na1czYmtoRk1lUzdwYzdnY1BxUURxeWpnZVEwUmNJ?=
 =?utf-8?B?R2EwVzBwVG83UFNtc2hnR2tkRFZaN2Zkd0d5RGkrNjFIeUxraXJhRldrSzZq?=
 =?utf-8?B?WFNSYUhRQ1QzYUkvR0ZuSXZzOW9KZXFSS2lvVUdYOTZGaTNRUDBYRStSdzEv?=
 =?utf-8?B?MGhhSVRIaHBzN2RRV1YyYm9VMlQ3TE1OaThBQzN2OHZFSXRISXFBMUl0NTND?=
 =?utf-8?B?T3ZlVEN2QmFjcFVLWUNtT2pHbzVtbW02ZmpzQ2xWenp3L21LaFQyWko4dk94?=
 =?utf-8?B?WWxWblo4VjFzRlJmaHM5MHV5VnlEZUJrMCsxczl3TmRESEx6THd4SDdSVnBm?=
 =?utf-8?B?ZW83Y0xnMG5EQzlneW9pNDdzbVhUSnhxNUFROG9PSHNNSlJkQ1puNDE3azRL?=
 =?utf-8?B?V01ubEdoYXJlc3hNWDhTVFJicEtGMHpBbm90MGVDdHBKcGhVMklqbndPNTVL?=
 =?utf-8?B?NHJiMFpaSVhLRlB6V2xsTjNlbXc0SVZDd052dWJEZGR6NnNBVUpXM1pOdy9h?=
 =?utf-8?B?NmV1b1Q4dnVaMm5ldHhvVko0TVFWZFJiWGFIbkhzcm01MmxXUnF0c1dLc0x3?=
 =?utf-8?B?a0hEYVFsU0hOc05tZHcycldmVWozTi9QYm1rSTlwVzl5OUluRkZ2SG9ya1cx?=
 =?utf-8?B?NnJWc2s0Yk5yZnc0d29FRjBORjVrQ0wzaWFLQXZrckpaZ09td2FGa2lveGl6?=
 =?utf-8?B?ZG1XWXhJaXZOMmVRSHBWTFpGdE02aVdFaGdVc3oxTGhTZHd3VnRQdDZvclNj?=
 =?utf-8?B?bXhiVGt3dnFNN0QydFZoUk95cG5mbGlmSi9ieFRQS3BCTW9ML0J6QkZ0OVEw?=
 =?utf-8?B?RWgrYUg5cGRMUWdsWkRRSjdqVWNCN0xEaXUyUTAvRXZlMktSREEzemxycXVP?=
 =?utf-8?B?TVhBblpjU1J3SFJydnhPaW9GVWFIWEUydDNENGxnenpWbTVwMlRvQWxuTXMr?=
 =?utf-8?B?WXc0Z3dTZjRoNjVKT21UcnhlRUJ1c2FISUE1V2dxV1VCUnJWS25MaDgzNjVF?=
 =?utf-8?B?cnlPK2RXTzU3bDgxaVZDdFZZS3FnK3poUzdvTWFaS3I3SFRYMFBQeUNWMFNX?=
 =?utf-8?B?cjI0WXBvOGJHM2czY1QxaVFrNmJxZmhqazNUTXVsRXVLUHQvNHdibGYzZENW?=
 =?utf-8?B?b3FiRUlhWUZhazRHUnh1QVFzanJLOHNYZjByVEVCUElid2pEUjJURVJTSGR0?=
 =?utf-8?B?UkgwOGRVM3lKbDl6NXcyZno2S1BFc3ZpNkRjZHEvMHBiQ1pGZWFuVFRodmRa?=
 =?utf-8?B?NUFnQjE3K3BXODN1bExPaEt2M29GVk1uU0J6ZnNTUUlYalJ6TEZXZkN0cEVM?=
 =?utf-8?B?QW52b05CbWpEMDlrMktmekcwS2xnU1pFRC9ROU9OZlNxekNYdExrbk9ucDFR?=
 =?utf-8?B?Q0xaOE9rSEk2NDNZNTQxc25wNG1VUDQva1pKeGVabTYzeGplU09CZEh2MTRC?=
 =?utf-8?B?TTBORzZsTWxhdEJSTzJVcnRUOC9VSTY1cjRlekZ2N1FuV1RWM09GbmN3aXI0?=
 =?utf-8?B?VnE0dEVqTFB3a1JCQk5pUW95RkFmVlFkRHJPOFBPb0ZlRzdQSVplMmxMYnlC?=
 =?utf-8?B?M2dod3d5WG8yeHdmWWszZDRhSWZMaW5ZblpCRzE1aENTVG5heVhPN3JtVGN2?=
 =?utf-8?B?M3pYaUxmQnRrZUVuTHVTZDZ5SWxMbEdaeS9hZVRQbjJZeDhMSklLdjFiVTBJ?=
 =?utf-8?B?d2YzRHRNNFIvTXVkbzhNMmFQZkw1ZU1JZnZvRFRtdWtnSS8vVGp3Z0p0NDBl?=
 =?utf-8?B?RXhxK0ZHbDZLa1ZqbWlicGFzQXdjVEllejF1ZGNpMVdMOG1QRHlWSTRCdUda?=
 =?utf-8?B?bkVaNzdYZDZOS0FmUVNkd1pDTlJWcmFQbC9vNFgwS1dBZnFWZ3lZWnFuYVRi?=
 =?utf-8?B?L29TR1NrenB2T09XNWphZHZsUi9scFhxOXpycnNIV1ZqandBTHhxVnVjR1Zn?=
 =?utf-8?B?OGZKOWQzWjNQWk1GZnErQjBudmM4cURhTjhZT1FIUk5TeHl2di91UT09?=
X-Exchange-RoutingPolicyChecked: Zr7X7PMmM3hKfgKAbcDTRijHQyUfUFf2QSSWMyV56PmXWHTMpIMr07zVp+no6uDOkpXFOeWxhhrTZqexZ/fbmc75o7RhI7mjz2vBdTrJYyXPwLQ5QP/nBgYc+rBscbTZLqIIW/Srg9urHHH1Wn6zPLCcKbsD7wLq+xE4h1FjzaFatdWdQV5BEmTBJUyX9SCG/AGX04NMKm893zj8nYotGUF9yiuYRvBULHhWDTR9xR9EjsYLp7nWY5v4u3MGd8A1YlhkFQG8CKvBQltL/iI8M+GEPTV1W6yZEN/C7cwshusmdq3jA80nxe++kXQHT2c2jAHZs9oJ5TgZy4NEphnzgQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8eda404c-6e75-400d-1c80-08dedb2ebeca
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 07:18:14.9922 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WkjXlAM3p2goEoP4Co0gXCIdxAKBjNj8e10Eh3L+1SN0YDFrogHHr270NcH4l91oU8m0ix1bpE9IS9wLjCrMDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6004
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,test_ctx.dev:url,drm.dev:url];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8D3DD70D6E2

On Sat, Jul 04, 2026 at 12:50:25PM +0200, Michał Grzelak wrote:
> On Wed, 1 Jul 2026, Imre Deak wrote:
> > Initialize a reusable test context for DP link KUnit tests. Sets up
> > minimal device, connector, encoder, and DP structures, and seeds the
> > pseudo-random generator for deterministic test runs.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> > .../i915/display/tests/intel_dp_link_test.c   | 50 +++++++++++++++++++
> > 1 file changed, 50 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> > index 62e1844605ac5..aa5358c94839f 100644
> > --- a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> > +++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
> > @@ -5,7 +5,32 @@
> > 
> > #include <kunit/test.h>
> > 
> > +#include <linux/compiler.h>
> > +#include <linux/device.h>
> > +#include <linux/prandom.h>
> > +#include <linux/random.h>
> > +
> > +#include <drm/display/drm_dp_helper.h>
> > +
> > +#include <drm/intel/display_member.h>
> > +
> > +#include "intel_connector.h"
> > +#include "intel_display_core.h"
> > +#include "intel_display_types.h"
> > +
> > struct test_ctx {
> > +	struct {
> > +		struct intel_display display;
> > +		struct device device;
> > +		struct __intel_generic_device generic_device;
> > +
> > +		struct intel_connector connector;
> > +		struct intel_digital_port dig_port;
> > +
> > +		struct intel_crtc_state crtc_state;
> 
> crtc_state is not used in this patch; if it is used implicitly in next
> patch, I'm thinking about moving this hunk to it.

Nothing is used in this patch from the above context besides being
initialized. I kept this as a separate patch since the same context is
used by all the tests added later.

> Whether it applies or not:
> 
> Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
> 
> BR,
> Michał
> 
> > +	} dev;
> > +
> > +	struct rnd_state rnd;
> > };
> > 
> > static struct kunit_case intel_dp_link_test_cases[] = {
> > @@ -16,6 +41,29 @@ static struct test_ctx test_ctx;
> > 
> > static int intel_dp_link_test_init(struct kunit *test)
> > {
> > +	struct intel_digital_port *dig_port;
> > +	struct intel_encoder *encoder;
> > +	struct intel_dp *intel_dp;
> > +
> > +	/* Reset the dev state for each test. */
> > +	memset(&test_ctx.dev, 0, sizeof(test_ctx.dev));
> > +
> > +	test_ctx.dev.generic_device.drm.dev = &test_ctx.dev.device;
> > +
> > +	test_ctx.dev.display.drm = &test_ctx.dev.generic_device.drm;
> > +	test_ctx.dev.generic_device.display = &test_ctx.dev.display;
> > +
> > +	encoder = &test_ctx.dev.dig_port.base;
> > +	encoder->base.dev = &test_ctx.dev.generic_device.drm;
> > +
> > +	dig_port = &test_ctx.dev.dig_port;
> > +	dig_port->base.type = INTEL_OUTPUT_DP;
> > +
> > +	test_ctx.dev.connector.encoder = encoder;
> > +
> > +	intel_dp = &dig_port->dp;
> > +	intel_dp->attached_connector = &test_ctx.dev.connector;
> > +
> > 	test->priv = &test_ctx;
> > 
> > 	return 0;
> > @@ -27,6 +75,8 @@ static void intel_dp_link_test_exit(struct kunit *test)
> > 
> > static int intel_dp_link_test_suite_init(struct kunit_suite *test_suite)
> > {
> > +	prandom_seed_state(&test_ctx.rnd, 0);
> > +
> > 	return 0;
> > }
> > 
> > -- 
> > 2.49.1
> > 
> > 

