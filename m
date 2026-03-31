Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uEtYNbmzy2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:44:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41108369007
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:44:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E46C10E8DE;
	Tue, 31 Mar 2026 11:44:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OS8nQ+SG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 258B710E8DE;
 Tue, 31 Mar 2026 11:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774957495; x=1806493495;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wxnuAZEXvSW4zgk8r4JJHdAe0GL+QpLkEh3STzPCIW4=;
 b=OS8nQ+SGb4lmxlILE37K+uwzbQ8OdqpEaz1xLMZE+fZbfmILcjj0eDXc
 06sNbedyfGFJUwhrPO5cOWmTBty9amSJdXkrs6Y/AdUUE9LUAS5FhTAAo
 cJzI+bZGD1ACEOGsVgHc5kThWvszmDzKPXLykViLsKK++8Dg/1D1RZBkT
 3IUklozW3/doQgnrDNVnZr0/Z38//Lat9oG50J/A/bsuZcOP2cHRHdlc3
 uAY4ARem4OBed7ZsRVxegePD/2yhfCkIDpOq0G1ACG+vZMu3ucwko17L3
 4D9remNLlcMQciZHyeoggwjzQ4HkZqv4JVskiBryN6sGm7WaqUtinSRXa A==;
X-CSE-ConnectionGUID: s9/IhOQ3SZeJ8YO6FqaMZg==
X-CSE-MsgGUID: pzSY+nNiR1Cim8KaNOsrXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="87432387"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="87432387"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:44:54 -0700
X-CSE-ConnectionGUID: yFPTFmE8RYCJ4CjgFfkepQ==
X-CSE-MsgGUID: DM/hX67IR/6XjLm5Pbw74g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="223043167"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:44:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 04:44:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 04:44:53 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.49) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 04:44:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hwGW7fV99k13P9cm7UQl/2GJcWsEG7WovTJwiwKoZcdGGPC4T6iaXcCzDqyNfaOqCDdV2FdlH3yA9C6fIRqXDLiW1dU5cVswKzlhcAs5V0xWhY7SnEQJhrRP7SQywaivtlSX80z76s0njMmW5tvZCXYr1VCtLfWPv6jNo6H25X4oa0N0e0orI7j3Pi1N5NxcUA6w2NoumSk1sEmVyhM1wYP820wZ39GfAjfCmKP8CZmwApsgjyaM+qLg5EsBXZIwFyLxoEwVHNoqxqsdIa2uWvYg8YKhwbYR7MjxfZux2pJHUbknAKxADFHQWv3DG4NziK/JvMdbD35sIMpCw1RoAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dUKeAyCIrqLdQgR6nD4M323TBaeaf4fFMzSB0SqmhfI=;
 b=bEz3SgBGkVvmr2bpRKK/DrFalR8LnF5YpE2/iMpNYLphyJvl4Aa4riCg4uhr1EYr4lHwt1oGL0EjX+mg7DKdysGY3Buiqx/UgcD2ugELmyH4q0uXKrkCyI6y9ep5Xk+xI16lJocVWnWk3L7tDqUaNSV39egEogpVquayL4+CRz6mZW9fAi73dUrGATZZ7d4sRBij2YVK/7k5TiZnUxkzL7NOzGOROVcT2DlE9RmFZh1LTsQHxSjqo1F6ibP/vfGN9KZsYvF0TyxipraaEWqmr5+xtQj7ISa78GOpX4XsVJI6JdHtqnMRKW9yu45FdVUtm4ekphgd7qUwyUigabepkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW5PR11MB5762.namprd11.prod.outlook.com (2603:10b6:303:196::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 11:44:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9723.013; Tue, 31 Mar 2026
 11:44:50 +0000
Message-ID: <b40efeb4-f077-4227-8fb7-a38abf512f4c@intel.com>
Date: Tue, 31 Mar 2026 17:14:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/19] drm/i915/dp: Add a helper to decide if AS SDP can
 be used
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
 <20260330040656.4116502-9-ankit.k.nautiyal@intel.com>
 <acq_Nix_LJQYmQHq@intel.com> <acrRq22jrzvdnwBL@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <acrRq22jrzvdnwBL@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0110.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b5::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW5PR11MB5762:EE_
X-MS-Office365-Filtering-Correlation-Id: d683390e-36d2-4f65-5a87-08de8f1aea95
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: Jc0Szc0I/5NR56hjJVX7Qp7PRsVncCxhpIdSQt7Xqi4enj5zkslF3dmla9taVTlikOBPuOMRZcookda6GPvSaJfgc01Q351f8cS1yB7UMTJFHKQFeqRftgxpzwET6GJDKZOGJs0mIpij222+C+8X+R9qcRHsn5qzyIGNOq05EAPL4/qPqwHEQ8NgRbSHX4wfPvAeAr/Af/FhqNxj8ZNJOTON8CKBlKmHxRSluOjGZqQZy4mcdqsmg+3BPa4rdNiX5uXr7IPfFQHtFQv7Y1ExkXQCHvJFXO3BvqSeLnkqwaWmGx4X//TPg2nj7wWlxI/XoV5m9FA+9KP0tBaRO+CKud0O8FK6U39j43wNPDSd1fcOix8EYdliP8AMiFY0b7FKXpsj4SkhgB+eRK1HlIKs2FY9/xME/AZBFNS4UPXEpS0i+9gPABVF6qQxFuPoih1LGxOYj8yQpB3U6QkY6G0viSxKJrQ4yzlMiifvQ2/u2U8d4OkkQiCttpb/CfoN87T4RlX7xkNAWs6MVcvazn/NLDVm+p72tYvY6s9SoYxRUvDWGDRkycQbHWaqZYZP6nvZ/vOmDJp1bR0PyqKvW4WykJe+lMivnZmROTOFP8BDe0zjmjMlNXS3gfEI+javQyESaghRlq9gCy6YIZ1M972Ig64uOjofYvcEGq7bmBxnJ3m6YXjtVyKqWwmmSDfauqm7xpOnOC+0C2sPj2x1cmsaImxstuIPJYw03FpDVqOEK/A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eDVzZkFKaDdzekI4bFUrZUlYNEowK3BGNDhrMXZ5MTVnYllDWm82Q1M5aTdT?=
 =?utf-8?B?aVhYM3pIRTl4ajVjak00UEZ0TUlQK2N6Mng2K2s3azN1ZG5SeFJ0ZW5sTXpO?=
 =?utf-8?B?RzNtdWtKZmZrT3dRMXBkV29RV2pKTkd1eVdkdC9aT0tZVnd1Tmp5UG9ScnFq?=
 =?utf-8?B?T0JINThoN0trdDBZTUdLSU9xOUxSQVgxMndpd3lBRzBYRUJhZUdNblNKVE1k?=
 =?utf-8?B?Y2xGTFdiTm1XZjJ1WTdNQmg3TnFwQnVKeEd3NCtSRi9ObXV0MUI4bSt5enl0?=
 =?utf-8?B?c1VJdjhUcUJMWjY3ZEtObVo3ZEE3R0VQenJtSXdNTWpudXNoUTJBVUJsSU9u?=
 =?utf-8?B?L3g3dnlJdXg0ZTQwWUJvZ2pPcVVlMHRvekpJZ1VJU1pvelk2MEJCNGpMTjdO?=
 =?utf-8?B?NXFoZWJ6NFlYQW4yNW94bUFxR2tvNlpiTU45N3dsTVlWNDNqb1V3eFVPNEdv?=
 =?utf-8?B?dEZoMmZLSEtrY1Evdzl3Q0hva1dvU1UzVzNVNTZJQnl2NDJHVXVSck9KMmxz?=
 =?utf-8?B?cFpEMGlXNU84RnpIZlRGQ2kzZXBoRG5Dc1dsRFlPdzFwcVZNdGdYMHhrVXM3?=
 =?utf-8?B?cjBOdmZpNEJoNXhodmkrUTRLZU9SVUhMeCtrVWpOcU00MEtrVU4wRVRwdFg3?=
 =?utf-8?B?K3NXd2hpaEloVVo1ODhEUlBTeFJIRnBNQ2E0dTZVMXUrcWhoTmkxM2V6enNq?=
 =?utf-8?B?K21NdDVXc3pUQmJDMGhvN1FRdFVQVFpJUFgvUTRmY1JtRFc1bk1qMVZZdm1N?=
 =?utf-8?B?eDFOKzhjZ21NM1NaMzlVb2YrL2xkOFF1V0dwaC9uUXhCcGNteWl1MmpzbWhV?=
 =?utf-8?B?dTZ6czlRRklNWm5rNDBmQU8rb1NIVC8rNjVDU0l3aXNwUUFiV0gya2NrVmlD?=
 =?utf-8?B?SGo2TkxLaW5qNy9XK2Q0MFhmU0pmQkJaVXB5Sytkam9kK0xVTmU5RHlsT3cw?=
 =?utf-8?B?STU0UTlTaDNhSXlUM0RoS2M4b0JMR1UzTUJLbG5wbUtac25lZHdmMjhJeDU3?=
 =?utf-8?B?ckxycHkwWUdYM0JDdjNISEFnL2hVKzR6dWFJZU1QN0NoOVlNdDNCL3k0Wk9V?=
 =?utf-8?B?U2ZVbnRYRlFVY2xXU1ZMRWw4S0E5NGNzazd2VUxUZnRhcGVvNHZKWGtWRDRB?=
 =?utf-8?B?bG5NOU5KNzB4MzRhRUVJR0lvNmJKOW5KSk4vUGIvaUZIVmFvenNaSVhrTHlB?=
 =?utf-8?B?cHdJMHhGVngzdXQ1OCsrTnNnMHNjSkNLM1hiZmo0SkVlcnVGNXZka1dydXk2?=
 =?utf-8?B?THN4RFQ4SGUwN1ZGaldWTUxJN29sK05ETHNXQWtHR2RrUXRjaHRjVjVvbjFt?=
 =?utf-8?B?QVFmWXhiQXBNMmdGS1poWVN5QXRQNnJFbzA5LzBlRVQ5ZEtIb29VbXorSTIx?=
 =?utf-8?B?YmM5ZEtaZmQxRFlhd05jSVh4WWdKU3Vnc1NOcXVRbHNJNVZFUmdqcTJkUVU4?=
 =?utf-8?B?UnVoWVFRajA1d25OMkZJTlcxYU9IRXk1bHJkS1hxOENGV0dBWHVNSThsbGkw?=
 =?utf-8?B?YVQ0ck4vcldYc0JBM2c5UmJCMWhMbG8xaGZycTJxeDgrZ01PYkliOUZJeGVm?=
 =?utf-8?B?K2RGOThWVDc3Ym9DRzFVR3MvZDVpSzBnWDRtZDNkTHJtNzY5bFBUcHZuMXg3?=
 =?utf-8?B?c0lYcWliRkVySlc0NExXUStXVTVjY0dFcyt5YVdtcnUwaTRROEx3QXIwR1Bt?=
 =?utf-8?B?eHIzTEIxZnQ4bG1TWmpIRy85cm02dnBDR29lZlZoSWxqeEN6Vlh2ZnViL0JS?=
 =?utf-8?B?MXRVd29NbjNESC80cDlBOXVqSVZwRTlrbHA0SGpRbkc4OHFkcGE5SXNDc1dC?=
 =?utf-8?B?MWVhYUF5S3dZQ3FPTU5OcjJxck1IdFNFVlpQWXl2SFdvOHl3Njl3N1lFV3Fr?=
 =?utf-8?B?MmF5UkpyMnpDQVhiZm5LT3haZ2hqZXdjWklPSDhCVXc5bDBQSlJXOTlQK28r?=
 =?utf-8?B?WExteWhCdDJ6Yk03SjV0bXJYcEczd01RVEVKc3U4c1pLMUxHcWNvSjF4QzEz?=
 =?utf-8?B?Q2JUM0theVpSOGJNeFFBUXdBalJmK3F5VlptN1UxVVdKditCNHQvaTRvM09Z?=
 =?utf-8?B?NFQ0RkdsSW52aldMR2c1d2tPOWRFQ01WZ2l6cWE1UHhGZlBENFVhWXRya00v?=
 =?utf-8?B?a25YeHRqK1d0Y1U1bFhrZ09zdnNXQlJ4Qnh2RHRYTmtuVEtyTUgxbGRmOVJm?=
 =?utf-8?B?RVY0cFRnMjB2REJBWjBuRE94aXFjTnlDWGlpeWJNQ0lROTlOcTgwWXBPL05p?=
 =?utf-8?B?OCtaZytldG8rcWZwSEYxTmI3anlQdEZqNFd2VXRYQlNaM25nVUNISnRpMHVC?=
 =?utf-8?B?ekVpaFplZ0lDQkRsc2RpOVF1U1JweEp2dGVLdzNvSmZhbzd6Z2s3L1lidE1L?=
 =?utf-8?Q?pzq2ICzDUfF0XCp4=3D?=
X-Exchange-RoutingPolicyChecked: eOK7TL5CG3kfEg8UhH+gkFcjqsQ/XGdLz5c++d19WwBO3Miur/AnKG/POt9sRq/AA9d3Cfwb2+mBkGfPSuiGhD5tAaOv1/0y3vbW7hHHLfKCyPlEl9anRaeb7pXM/mGZhUH0D1Zd3qJCqaRxe8DMi7obPQyXEhDGzkTGl/njuuRcO17r6ioQ5LkGa7Twy+oUzJkP1SVNBfL8cPOsuZYeaOpzBIwuiBx08UKnzkgZ4gEgHTbzZoCnLgLX/Vva+OkO1E2gRaOIielDlLE31pbZt9J5nJmnkZTYyNABIo2VosKGc541ykxchsa9I+AP1K9+gQPicWPHtjJElnXb6m1jjg==
X-MS-Exchange-CrossTenant-Network-Message-Id: d683390e-36d2-4f65-5a87-08de8f1aea95
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 11:44:50.5008 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ha5btfGeWSvGhZBYYhBdHOokbi6sc9O039SztzWWHoNRqxV56CFD4RQx5C4s65zcr5i6Q0Uf9T63VqorO9aK64FHCeZMQHpeOc4hZmL47ts=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5762
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 41108369007
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/31/2026 1:10 AM, Ville Syrjälä wrote:
> On Mon, Mar 30, 2026 at 09:21:42PM +0300, Ville Syrjälä wrote:
>> On Mon, Mar 30, 2026 at 09:36:45AM +0530, Ankit Nautiyal wrote:
>>> Add a helper that determines whether AS SDP can be used for the
>>> current DP configuration. For now this is true only when the sink
>>> supports AS SDP and VRR is enabled, but more conditions may be added
>>> later.
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_dp.c | 11 ++++++++++-
>>>   1 file changed, 10 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 499850c2abcf..7ca3f9d583db 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -3124,6 +3124,15 @@ static void intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc
>>>   	vsc->content_type = DP_CONTENT_TYPE_NOT_DEFINED;
>>>   }
>>>   
>>> +static bool intel_dp_can_use_as_sdp(struct intel_dp *intel_dp,
>>> +				    struct intel_crtc_state *crtc_state)
> Hmm. Maybe the name should be .._need_as_sdp() or something like that
> instead. I can imagine many cases when we could use the AS SDP but don't
> have to.


Roger that. Will rename this to ..._needs_as_sdp().


Regards,

Ankit


>
>>> +{
>>> +	if (!intel_dp->as_sdp_supported)
>>> +		return false;
>>> +
>> Could have a FIXME here about fastset being borked with this. Didn't
>> read far enough in the series yet to see if you did anything about that.
>>
>> Either way
>> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>
>>> +	return crtc_state->vrr.enable;
>>> +}
>>> +
>>>   static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>>>   				    struct intel_crtc_state *crtc_state)
>>>   {
>>> @@ -3131,7 +3140,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>>>   	const struct drm_display_mode *adjusted_mode =
>>>   		&crtc_state->hw.adjusted_mode;
>>>   
>>> -	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
>>> +	if (!intel_dp_can_use_as_sdp(intel_dp, crtc_state))
>>>   		return;
>>>   
>>>   	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
>>> -- 
>>> 2.45.2
>> -- 
>> Ville Syrjälä
>> Intel
