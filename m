Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A24D6A47A5C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 11:34:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 480D310E0D0;
	Thu, 27 Feb 2025 10:34:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bzJrPLQ5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F086210E0D0;
 Thu, 27 Feb 2025 10:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740652454; x=1772188454;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lglP7DG281ha0Flr69FyIM0xyjb3r/OhGPkY2hnEOjQ=;
 b=bzJrPLQ5Q4z9YiW40GdHHSUzjNWLqZXAjNYD+UPLySOjmY9Gl0tl9oF1
 jabwhtnXV2+NnbvbJr/pD6QELUWCo+D3uJtwq+BEx0wBFEyM+0gaEu0hk
 iMc7DCO3JhgZkLBKVj6/mJOakCC9NXxx8GTu+AsYJGockFlTg2bRbrDxf
 9Curjc6wuqJ671QEtxvgIMilG534tcCiCvCLrUQkkZGoKiRneO4w+Qft0
 2u7fm2Xiz6XMY2Qr+/6eHJtbEkcv5Oj5+x32nRodMwPyD1qZE7nQ9PmgX
 sXLqKd4hTwfndHDamKlk7WTNcusNLboXPCMUwlMeU6QZqLwoXrlBdRmHc g==;
X-CSE-ConnectionGUID: zWMWIe4BQ12AWRfW5LhAfg==
X-CSE-MsgGUID: 3XwW4jE5QsKBAI3cxdgj6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="58951518"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="58951518"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:34:13 -0800
X-CSE-ConnectionGUID: LMIZUhERRtqizjsm7Xi3fw==
X-CSE-MsgGUID: D4iaEJPiR72sIUBji2xN0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="116759483"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:34:13 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Feb 2025 02:34:12 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Feb 2025 02:34:12 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 02:33:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FLG2BudVR0IeTxhtHL8CS+VKHb9O4UGLCZdwAagGh1aF2Cv6GGrp02zuS4jp4ESDYKCClD1tAwrpCvZvM+NO9lUfsX9ubbDesBNhmcymG2J5F3MKFyMAJAR0yZyaoRmvpa+ribD6CrQAvwq2cgFAg9NFONYq9UcpVCWT8QQdG3Fnfmd4Uv42BoZoG7hjABjcsYv5iA6nfOhh8SOCH9VTTPkRgvmN0BYGxnJAAkNoZzZ2h4PrHXFm83/JRZO4j4GSRQS1s1Dk5sic9uay3idWRC1ovGP1afZmO3koKwIX/BotmtiomyR6PrJ5D7pNtzv8KBmLTkWjsaEaITVCSztDqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w6aXMB+Y8FjFD816M8KCE5VcZA3teLWWcMvEKHSuUL0=;
 b=JfN4LO/M0CgTqJtiO8c3ZbU7+ugeTFLWs7iOuSrCXdP7NVgqTfNuKKQOePehUCjym67SlMFQLPHbBBpwFtyQ9vl97UNN/LBmrlzYO3gmutJjRQL4x0z0DQVH5bs1XwaCX4lFXl3IBu3aJpnaFPas8WDgBWzvQXDVoleKPOEEl+NhVy3BEeKoXYdWlfptm0p6LE0JxOmrznhwKe4XZKrum1AQbhrlsRlibmq/eXQHuOuwUEObAfdzDv6nraygn70sKq6qeR5phSSTDs/IgKiPI4WWiUGhE0JAv5upr2q6HJQvyU92JD8klHnsl5SsDKJYOoYLBHBbl639eh4NDzzXOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB7077.namprd11.prod.outlook.com (2603:10b6:303:223::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.22; Thu, 27 Feb
 2025 10:33:38 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.021; Thu, 27 Feb 2025
 10:33:38 +0000
Message-ID: <d5203114-e4e1-495e-ac97-f5b320273705@intel.com>
Date: Thu, 27 Feb 2025 16:03:31 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/20] drm/i915/display: Disable PSR before disabling VRR
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>,
 "Jouni Hogander" <jouni.hogander@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-12-ankit.k.nautiyal@intel.com>
 <Z78a_1M_aoOSrfLV@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z78a_1M_aoOSrfLV@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0108.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::26) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB7077:EE_
X-MS-Office365-Filtering-Correlation-Id: 7334f809-c476-49ce-8509-08dd571a3227
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M2dtK0lHRnlQRW0zN256SHJoU0ZWcGVrVjdMRjVsVGM0bUVvL003SFRtem9I?=
 =?utf-8?B?SDRVZjJtV2tvSUJkQ0hNOFpzcmlWeGJvNERhMFlkc2xJdDNqelR5UUtsN0l2?=
 =?utf-8?B?RHUyVUU1Yi8xNnJaK0hrYW5PT2RsOTMyMDg5dGhXZHIrUkM3Y1JBa0xWY3dh?=
 =?utf-8?B?cm96L3l4WHBWcElRMjdDbmtTQkRHRUUrWWVqRU1tZnZodTlnLzBuMFA5RENa?=
 =?utf-8?B?Vmgzc2NxVTFSNVVpcUI4UUltUTdYK2s5Yk91Z08vZldEampuNlJUT1JSaXhp?=
 =?utf-8?B?eUVYOWdlODBHdDJ1OXZIS0JkZUtIZHRuZUY3RzlocHNRbjF3MDVwZ1p1TDRL?=
 =?utf-8?B?L0pBTGdJOUFMUkVLQjVCbXJjM2VEVytUaitBTmJGYmhPZi9mUTdTempGdmhu?=
 =?utf-8?B?STcyZ0E2V0ZIYzZlSkNiRlBnMG5qOVU3cEd6SDlYMFZ4UzhtdkpqSStTSzRi?=
 =?utf-8?B?QzRPZENaTG5OT2huM3Z0Q1J6Nm5YRFJzNVNzRk9PNTNSRGh6cFdQMXhWR2w4?=
 =?utf-8?B?OFU4U1JKejBKckY4Z2o1SnRTM3RkZWwyTFFUVUxaTXVwUWdIRS9TNlNHUzhR?=
 =?utf-8?B?M0JHc25STjBiY3ZXanMrUHpEQzVETWZHOEVVbUlXRXNxSWdzdTFiRVNUakZ4?=
 =?utf-8?B?VFIwS3doQ2ZEaWZTRmNXQ1VQNHhueUJoNzlVVFJHMlJEUTBnR2pUekEwMFR1?=
 =?utf-8?B?Z1dGK2lOUjRIWnpKWlFJQ0hPemQ2a0pLNFRvOElWejJYTnlaY2kzM0JtdFZW?=
 =?utf-8?B?bTJwd2NwRGJHUURKS2Z6WE5wUThSQ2YyN2xta09FWm5vWVY1UkovcmVES3pH?=
 =?utf-8?B?Y1dTTFljblErY2RvRWUxZ1FrQlV4OXlGazBqcEs4OUswTTBnKy9wN1NLVm9C?=
 =?utf-8?B?OUF6dlRjZmFDK0I3b2cvN2x3RVo5SDZnYzdXK0JoUHVORFl4dTk3SHJ2K3lq?=
 =?utf-8?B?Z1ZXWkRUdHpzNWRGUGZyT0hoSUVXeW10RXluZGhwSEQ5YWJ3bHdvei8rdzNZ?=
 =?utf-8?B?Nk4rNlR5dEpMRHNqS0kxQmZnTTNHTW1VZUNYUWRBRVVTdnJqeXFsM2hUSUlm?=
 =?utf-8?B?TjU1SjdJK243aWlTK200a2UyNEhmdml6NWJNSzBma3pyc2RZVytlazJvSm0y?=
 =?utf-8?B?dFJKZm5oalZsYTNIMFRhUSttUXc5TGwrY3gyKzk1MEp0VXRjV3liZ1FqWG1j?=
 =?utf-8?B?T3dMQWI5R0lQVGFZdHVKd3Z2M3pzb2E3am14aS9IMldFeXVjdXVaZnNRLzlw?=
 =?utf-8?B?Y2owYm5sWnN0ZVJOSDlpUWV1Mm5pNmF3cERPMk5BWkVxK0ovRkRjNHNDVi9j?=
 =?utf-8?B?c1k0T3hLVk5yUVFIbzcrK1gzaEM2TExMaHRPRHJGN1NmNFlubE1RV3k5RTdJ?=
 =?utf-8?B?d09HdmdiR3BxUS9rbVZieUFJcHU1YWd4SWt4T0RoQisycnRhWFUvblZWbWRn?=
 =?utf-8?B?ZXROZW5WOXRFRlhnODdLOXp3OWVVc2dXNC9CNUVYZkFRL3Y0blMxam8wSGJM?=
 =?utf-8?B?TmNaYTNmU0oyRWcydmZPbFZjR051OXlFamNuT3QyQVU2enNDTmcrQzJjajhH?=
 =?utf-8?B?eGV4Z0J0S290MUxGbWtScEdJNVBGNnJYS2p0SnczYi9yNGVxdjdkQnVvK2tW?=
 =?utf-8?B?M3NCLzB2S2IyekNTL3l3U1FKYVJPNFRYbWxMOWlGMmVqRzQ2NWVmbUdnbTZx?=
 =?utf-8?B?VmVOQ1VWNzJzSVNkL0k5TzdxcXJ0VWdxT2FIWFd6aW1CdkRTc1NLMDdCK1Ir?=
 =?utf-8?B?N3EveUJ1a1VBUnM3d3lTNXJ6MGVmSUs2VlFsOWpXT0JtYmZ5S0dKZll4MFU1?=
 =?utf-8?B?eE5uQWgwZ0FYRGZkR3hzd3BLRWN3eVcwdDYxTFpPdm0vbG9NNmE3SmpUSU00?=
 =?utf-8?Q?AgU9Nue7zAT1s?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXVTMm9ybE0zUTFWcnBUN3VmM0FnWnN3a3g5czFZVHV3UnlMZ0pQeXRHMFRE?=
 =?utf-8?B?Ykd1NUZpNldSTTBWbFZ4M3RiUVQ1NE9LaHZCRFlKWFREaGN3QU9YaEdLQ2l4?=
 =?utf-8?B?a3ZqYkFnYXk0NUZwbTZyVDE5bldSd2lFdi9iNnBmUUtsYkQrY01HNGhOV3du?=
 =?utf-8?B?N3d5SGpXaXUzVlBSMHF2NGNpczJ4SmhLSTlQTlJVY3UydWhVblR5UXFZL0d0?=
 =?utf-8?B?YkE2ZlBwdnNGN2RKbFNMZk9NTEtObWxMd3JrSXFiRXRndHV2TUNneGNZRXcy?=
 =?utf-8?B?WTVEdktPTW96dS9ZR3dZaVZrZW9qVFJyVmJ5b2NPRW45WGszeHROTUZjaDFM?=
 =?utf-8?B?WmhLU3lJZnN1Y2NYWVpnUnNRNmNHSFFuWHgvbFZCUHJ3V2R3ZG8raXI3WW5a?=
 =?utf-8?B?TGxXZ2VXVUFIUnBpTjY5dy9aU3lPdFVKbS9SNnBoanhGMmppWGhnZlBJVWRk?=
 =?utf-8?B?QzFkQlpnL3IzdEtwSks5a1VaU2tscGNjMGt6MmlCWmhCTnFRaWJxczhlOG9T?=
 =?utf-8?B?NmdlQVZ1c2N3TXNxcVRoZDUvSmw2d04xbU9zNXFSNlRWL003b2VMMDNSUXQ4?=
 =?utf-8?B?WGhabmI3RTFLVXc0MDdBQlR5bnp3cXg0Tm5zd0Q3b3JHamJ3cnFwRWlSeFZk?=
 =?utf-8?B?R2tCdjRkeFo4STRhSVRKWTlrVjViOUNrU3dObWFnZGtBWERndjI0UG5pbmRX?=
 =?utf-8?B?MUd1RmFHQnNLdWtyY0V5TzlzdDdBR1RxR1FENDdWbE5rNG5HU005c1AxbThr?=
 =?utf-8?B?UEVBVVp2dlpHUlpLZm91dk5ZMHlSN004YzlWOFR2dER1Wk9zS0tUYWZhVFpL?=
 =?utf-8?B?K3kwNnY5NWdBTWFNRGpDNjBEaEdxTEdndEtUbzhUSTdFVDJ2bnhtbzFDdVFt?=
 =?utf-8?B?bS9zQkp3dnhCd0pyTy9reUFmNE93VnhTeVJTWGxRK1BhbEZUWG4yTWY1c0JM?=
 =?utf-8?B?WTdJcFN2WUJzZ0MrVFZLQ2x2NWw4ODZ0NHVtbWhRcnVwRXNqMjl2VTA5Z2E1?=
 =?utf-8?B?cEgwb0xEL2h2NmdMRnE2T2ErdjJkMnh6OWdURUp6SWxmUEl0ajRlUGRjaTF4?=
 =?utf-8?B?cHlxODNYZEJhVVBkUlEvYTVVQStlOG5PK2wyTjRHWldnMzcrMjNGQ2RRd2dV?=
 =?utf-8?B?S3hyVGlpanlPUXllN3JoSGJaMU5xU1dmTlBWR3ljdXd1VXJSbjhKUFQ4eFcx?=
 =?utf-8?B?NG9PSGlKR3ozM2hYeSsvS0V2cVRFK0hETXFOUGJRR1JYbytsVVVPTlJQV0Nm?=
 =?utf-8?B?SmFta3Z2M0Q3OXBtNXBwRzJDOGpKcE1qM1JKampNQnpXb3k0UFdHdGJoT3JK?=
 =?utf-8?B?RnRvTFpTR2NjZjhlTnlVQXVaOFRwcnhxdkFLdFNYaHJpZ3YxSUNRaWxqZVJp?=
 =?utf-8?B?akFNUGNmalcvMUhSM0lTcWZmZU5XUzVvY3dHTUhoaTFzcWtsbGdiRHlGNmlp?=
 =?utf-8?B?c1gxUnk4WjNJVDNCaVRqandvMm5WaG4rd0NsdUNFeUZCcHVuVHVmdWRMQVUy?=
 =?utf-8?B?bGU0Mk5td3A5VENGOW1UenhZTnVVOFNqMlVqazEvbGczUUNLL0NKZzFQNEdX?=
 =?utf-8?B?cDcvb3FGb1RhWEhCRlNhdzlhdC9KNXcyT0xhRUZ4KzJUOU05cTk4elpqQnRr?=
 =?utf-8?B?M3AvakNDa25rL28wMEZCSmtpd3AyNHd2QjR4YWZEeGVUazJRelZCZVFjSWor?=
 =?utf-8?B?Tm91YmdPLytacUkxYkhMOWRGMVdBRXVYaVlvQkRFV0IrVlFrcmZ4UUk0NlJ1?=
 =?utf-8?B?Rm56aTF6eFBOb3ZUVzY2VmRQV2dSMHFtNFFJNmpZemxRSFFKZGNhSHFFdjZ4?=
 =?utf-8?B?a3I4OVAyRHJVSFpIcllDRllKVEJ6YlVMaTFhK0RGeFFQSTNxOW9FUmxLMW44?=
 =?utf-8?B?VCtrY050M2xFUVNvNGpXUFRaY3NBQlhpT2ZrRG9XbmtwYzUvNjRuYUNacUhU?=
 =?utf-8?B?elNiNmlsc3dBTklWMjRnU0I2R1RNVmFsYURwVSs3R29VL1hGZGE3L1l1YmFv?=
 =?utf-8?B?eG9DeG1sN1h4YWx0YUJYVWRVZm4zU01SeFkxSjJ4ZEY1bndPRHZ1dUVjS0F5?=
 =?utf-8?B?Z2JHcUJIdVk5Y0VaRmxWQmhyM2k0T2Y5bXVkK2FXZG1VbHFFSmxjdWVSVlNJ?=
 =?utf-8?B?RkswTnMya3BQY1E4c29veFNKS1l6bFVuaUFocmkzMzVaWGNscjVYVjJEV3FW?=
 =?utf-8?B?QVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7334f809-c476-49ce-8509-08dd571a3227
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2025 10:33:38.4362 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HjtghOBXyjemXjePeOl/cCW0rD4fw4LsbSf9dBoHvCRreOTQDk12eb+VCPl2JpkpFWAZqR1mIZCFX1HDY97TusxAdzI6twxLBWtxadJ7MQs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7077
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


On 2/26/2025 7:15 PM, Ville Syrjälä wrote:
> On Mon, Feb 24, 2025 at 11:47:08AM +0530, Ankit Nautiyal wrote:
>> As per bspec 49268: Disable PSR before disabling VRR.
> We don't currently allow the VRR+PSR combo anyway, but if/when
> we get to it I guess we'll want this order.
>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Hmm, the intel_psr_post_plane_update() should probably also
> be moved to the end of intel_post_plane_update((). Not becasue
> of VRR (that was already enabled in the commit proper) but
> because some of the other stuff in intel_post_plane_update()
> may need to do vblank waits and whatnot, so enabling PSR
> as early as we do now is simply counter productive.

Hmm. I'll check this and add a separate patch for this.

Regards,

Ankit

>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 065fdf6dbb88..0db84af1063a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -1202,6 +1202,8 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>>   		intel_atomic_get_new_crtc_state(state, crtc);
>>   	enum pipe pipe = crtc->pipe;
>>   
>> +	intel_psr_pre_plane_update(state, crtc);
>> +
>>   	if (intel_crtc_vrr_disabling(state, crtc)) {
>>   		intel_vrr_disable(old_crtc_state);
>>   		intel_crtc_update_active_timings(old_crtc_state, false);
>> @@ -1212,8 +1214,6 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>>   
>>   	intel_drrs_deactivate(old_crtc_state);
>>   
>> -	intel_psr_pre_plane_update(state, crtc);
>> -
>>   	if (hsw_ips_pre_update(state, crtc))
>>   		intel_crtc_wait_for_next_vblank(crtc);
>>   
>> -- 
>> 2.45.2
