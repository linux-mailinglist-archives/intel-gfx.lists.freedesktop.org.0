Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODpyJY64y2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:05:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42545369442
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:05:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D45B10E982;
	Tue, 31 Mar 2026 12:05:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DN8nHu03";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A61D810E29C;
 Tue, 31 Mar 2026 12:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774958731; x=1806494731;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Be1vDRXLLkSeloMq2dcJuxXLrobYep935UQKDGvIyfk=;
 b=DN8nHu03NTXEAnJvdf9NiCR3kFy2ziQh8VO9hz/T/Y6j9dWmS0L93IJ2
 jFM+ylMf/u9XywjnkMcj/BfZoghEGSjUZUskjfoRcaiP8SuHGAZgxJgw/
 lGfjRY+WF6KNCiGO256XuD0IBqp65/uSQlvz+PogGcSSAeFe7AVTc3gCO
 Nv9Pr2XiMyx0oIjLNXqC9auFlrz0PkomcEZZ9BNSIrhWR20nTF0sYMvCc
 IhUnyYFlMNPOK1OnKbEFbSzlSkEz1IJFe2Vb1ftwYeYguJ9oFU805WLzP
 F51YhzJuSvHeFvnB6mjBKWZo0FWKty3HXc2UOGP4xTJn1x3uYS/OBRPKI A==;
X-CSE-ConnectionGUID: 1QFPwLyfTQapFpoKkQcSaA==
X-CSE-MsgGUID: LHIrddByTICHyQ/yOPokVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="79570110"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="79570110"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:05:28 -0700
X-CSE-ConnectionGUID: BhtewIezQLOSQ2WjxcXUHg==
X-CSE-MsgGUID: VFUyO/H+SC6Cvw0hYoUGjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="230415078"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:05:27 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 05:05:26 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 05:05:26 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.29) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 05:05:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TqcD99aZ7EWQm0izT2J8M7u1XEAOArgSjh8isQW58opyzKq2ySmiZ6W639JK7fY2PeOJq24DxQ08jyLzegs7kMH5U1HN/rHasydU26tfUvG+HDUPq/BHNr9Og/ql7iGVSMlNMbV70zNO0GrRhSfUxRQFQI3kMAbhjYXFQ2WUVrO5PqoEUZ2JlP5Eet3aer0q6OM8eHfynEKqHStBxXYZXPbwaG91AbLT5v1sk7KfUMgAO/2xkcR4JpcPTTGl9LTuJoYHpXtX8Erjb5Eu/kgVryJeiPp2CWuZGm5kj7Xom7ERESfWgiT3ETP3ikJYaSVQqnqUcEDDZfPtHDqyGPZmbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7kBb7t/jpPqTNtYPUHWia4uGt/90tM9xeZqKP3POmd4=;
 b=keEw34PDxCPwMRxKGnjSqKUC1udHcs8c8KobxG7MHwA5yZN+fMZT/oAKkb2GGpbdk5o+Ldy8L1WYlGfgEAWn7P8rRC1MWCDBq0UtRLy8qXptygXz+r1hFCdFmVE94iwaNI/enEirg7F25y8oHZucp8dWxmK9Uu+C0pnG5ptV8ALsQ9D6LPilE84ka/YNtuFlJuFKe4AFNd2ulbs7h6YIN7XY8QHuO2yQw62FYF0RTmEL0RgrZoWxPobcVztk2AUVqYv39mMqTnjAHZ2bEt9jhtveQoPCP04nZ+TBkSROdPjynH2sm7N2yZOKj5nAGuPrtNUfEGq7g5kgMtbBir07mA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB6965.namprd11.prod.outlook.com (2603:10b6:806:2bf::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 12:05:17 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9723.013; Tue, 31 Mar 2026
 12:05:17 +0000
Message-ID: <8ea9d702-7687-4dc2-9bf9-4641cc614ee3@intel.com>
Date: Tue, 31 Mar 2026 17:35:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 18/19] drm/i915/dp: Split AS SDP computation between
 compute_config and compute_config_late
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
 <20260330040656.4116502-19-ankit.k.nautiyal@intel.com>
 <acrRH1MxM18YAOrn@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <acrRH1MxM18YAOrn@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0037.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:175::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB6965:EE_
X-MS-Office365-Filtering-Correlation-Id: 0359bce8-ce86-4b14-2bda-08de8f1dc5be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: DczMTzu+FAebuB3upXHWE6xhAsZBzqKRIAMM+K1gAcVX0zrt97NoTi8BLFZXq8+JD8afSnkZ9D8GkrkDx4iF+TiYSS7nO0575clJjClRGfx58wpu38BuuHt4vprpPgQxiCvui4MQ27B8tdPlvGGpEwiqLENHMEyCsX5HHqIjPwmLRH5kkqNZyMD3RDPDvKA9ur4FizOUiyimHTXzH5zZysaXm6HI3DZKMUWfRtj43IWn8ziIN+hiCwrnpQnb1rdBcxxipk+U3KOo8Gmeri25+RfL/MviiUUYLLMpMY712niORhmlco8dnatiRYptVJHfxCkaxSXZMqSkwvmUWVSfezL22HVb14YB5jgMoQntBXmtBBtVLQLc5jRwL0dRnaGG4nTZqQOFAqMGGSVEm6QmeuYx0b2iVwEHTZnx+lYopdjwIVwxte1SCfSjlyBQDnUR80oPYzW38tcMIf+dqSPqCg49hNUu6Moenocg7/Kn0ICvENxLTX/5ySV0E7so7k/5GpjCHdnfw0OywzL8Pjp6aDpMq+1fSLjTM1gnUzISqDPhMrjFE5xgBSYgEqEfsU0pZmXoCviuQxtxJm00KajI22suhgRJ2tTwGsKkT7U1M7vSvcfjEhNAI6PX5g4fOD9TDarENtXqZqtHcZGSTrcrIfI65yCL6xL9PqVwykhmuiAxBBEwW1ljbHTdLGg6naa2n/+311BKaUY0RazMEusXDjgPeHwtnNFojylVw/DOOrw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?am5YSlZEWll1anNBVFU3V3h6dWtOSjBIRGJvTFRjV052RW1VdysvNm9ibVZG?=
 =?utf-8?B?OFJKejAwamcwNEhuMkdEVXdHUTZPNjBPUm9FTU1Cc1JnbTBnK2lkZTMwQTcw?=
 =?utf-8?B?MmJLMDlEWHo3dW9kNTF1bFR2Mkp1WndRSFVBdlZSZkw4Zm5yRmcxNFJ3WXVF?=
 =?utf-8?B?TjZlQnRSS1dqVVg1a1h0aERPTEV5bmMzSDRzSlJ2bHJ0OVJGZEgzM2xSSGtD?=
 =?utf-8?B?QTdvVERZbFpmM2NoQW5HRGpVSklpcTM2ekZWSXprbWlzSjRqUlBDK0c4SzVP?=
 =?utf-8?B?QlcxZ0p0N2ZLR01idW5HMFFUUEVobUNmdHlmUm1ZZ3o3YlpMSU9iU2h3dzh2?=
 =?utf-8?B?ckZ5NnVwdEI1cW5pM0tKV3ZSS2lQbVF3NGFkV3FVbDNoT2F0a1NKc1ZVQmli?=
 =?utf-8?B?U2F2UU5lSUpIaEYvRnB5b2tIcE8wU3FqUld4R3V4ZGdwNWVNQTVLSlhwZDg0?=
 =?utf-8?B?M0JsTDFia2JWMVRNN25ZOWt5aW9QWXZFbFlrVmtXRytYVXNPbVpsYXl2UGpB?=
 =?utf-8?B?T3dOTmFvZm5SQ1VuNXhFUHJPa2pReWtBRDhsc2pkRXM0NzFnK1dUUUtDSVFW?=
 =?utf-8?B?SHlsUFh4YlIxb0dtWU1WbE5GTW96M3N4UThwNWpnb0F2TGw0dzMveUZpcWcz?=
 =?utf-8?B?eUFwMHEybWlXejVXUjhXSzFyZVFsTmFlVE5CdVc3T0JaT3dnR25KZWhyR0dj?=
 =?utf-8?B?Uk9JSnBrTFBZM0lSVXBtYUdiZDJhU2lGZW5GRFdUVU01eUd6dUpBZ1dBZ3hw?=
 =?utf-8?B?TlVxQ0E1eGVJaHd3OW9jUDFnb1JLcGViN0x6bjVmaWMrTEZUZDNQQkpYRGFC?=
 =?utf-8?B?MGRkWm9UZjAySXpNcVVZMmQxQkRCbFdCc1h1d0JrN3FXZURSeUFMZGJXTVhK?=
 =?utf-8?B?dDd5cjkrQm1tS0d6aENkTWMvVDVocW9vUmFkNG1QUXB2QmRySW1zNFNhaTNy?=
 =?utf-8?B?cmhueTR5UnhsS2Jkcm9XdzhCeXIwbEVhZGVvQVYwUFhxbWFjeFFDdW42NjhM?=
 =?utf-8?B?bGtHRkxDcEJ0UGxJNXlUWlliOWw0U3BjYWpTcGhQTmZXVklLU1hSOGRIdzJs?=
 =?utf-8?B?cjBCR3BEcU1xTjl5TTFBb2R1blUzaWFXbGt3YkhqeUtzakJ2c1N6K3NkazV4?=
 =?utf-8?B?WVJDUTlUMmxHSkVlWFhuS3haTVVYSGZLSDFMQndqejZoSjN6bldLVHdwUHA3?=
 =?utf-8?B?ZzB4UStlNkVLRzFtSTloUXE1MDByWFFXR29MUmRPNmx4RmtBbm9hWU43Zjh1?=
 =?utf-8?B?TDVRVVp1bWVJWG5jTy8rUVFrMmxpYlllQkFOaU92MWNmQ09tUmRBTlhLd2F1?=
 =?utf-8?B?TXpWQlFxWG9RU0xPQWYvTnNzbWlGZjFwcW5FY1hDL21RZVVjOEJSd2U2T0hO?=
 =?utf-8?B?eEhCSExSbCtuNThjeWJHNllDekhiOEVxWlJKL3F5R2NrMkw1c0NmdmIyWU45?=
 =?utf-8?B?MUVHY2MxN2Z6dENRNjI3dzBmUm9MMndSYUV5aFc4WVZ1cWFGSmtNd1RucER0?=
 =?utf-8?B?OU1qc1NuYlo5QzFhMWlXVndrQnB1OGRHaHQwK0tQOWdDQzMrOVlXN0ZGakt6?=
 =?utf-8?B?ck9PcVJCVTVqQTV3em1Gd3J1OWJwaitKSUphYm1kWEFOczdad0grWllhMFV0?=
 =?utf-8?B?NUo2VGtLUWpQS2xza3BIOXA5Q2JxekNkVVg2enpqWTBZYVZCcGdGZ3YvOExY?=
 =?utf-8?B?WWd5RGlZakVGd3crM1d0S24rcStFd0lINGtENnFFOEVCTkZ6VFlkUDA5LzBv?=
 =?utf-8?B?bkRXcWdXZXd4ZmpmeTFOZGJDSDd2TlFhcUh6M0tNc2dRR3NxdHo1d09NQ3BK?=
 =?utf-8?B?VmJuZ1NlKzh5V01GZGRhVUpaTHBTQWo1RXdOaTJDT2s1WXVZNmR5QUZ3Zmk1?=
 =?utf-8?B?REtSb1U2blJJR2s2aDdSdERMMmpGSW56c2FSNDYybmlMSTJYK1pmWHFySGdM?=
 =?utf-8?B?bUZFWHZRakRGZXM4M2h0R3I2YW13bzM3d1ZzNDVTZ0JQenkvdkRkVFdyWmVV?=
 =?utf-8?B?UFc2QkhuWXlZWU4wbkN0VndSVnM1Qlo3dWlLb3l2UFJLWmpKMnJ1KzEwVFM4?=
 =?utf-8?B?K1c3L1hWNVJJZzVWcElaTzdiYW1QdWxMUk91YzlmdERDT1J3RVZZWlZFQk9B?=
 =?utf-8?B?SEpMcWR1Zk11akg0TUFGZHN5TmNZSS9VY1VRTG9JOVJxdGV4czFtc09sTkw3?=
 =?utf-8?B?dUJpVmdXTE56dDdMRWVmUFpya1dHdWJKOEtlMElHb0pKQ21wV0s5T212eTg1?=
 =?utf-8?B?SEYrVGhYS3FISXg4MUpKY1pQcjhGL2Y3c0hmSDhDbG9SWVpxbzY0Vjd0aFdy?=
 =?utf-8?B?QWk3ZXNyQ1gySW9XbUhmZkRsYVJocEFyL1RoRzBxRkNBRnZ1VnFvcVUwcmFD?=
 =?utf-8?Q?X8nXlLq7QfbS7uDQ=3D?=
X-Exchange-RoutingPolicyChecked: Y5apF73AT4t/dm9HbRJl6e/WcQRdYU6jTHhWvrXQ+QDWgfHpX9LXe88W1sMyI2ndLBNzauODGmycJqGJA+ngXORv/fGmCjmmTdchCs06vCxGJZDmVO/vhSEuudwGNRfqpvNn9sYO2cbcOUKOzBC/xeQ9ImGqxSRLtEMFFBX2H5nXWB6BRFxk4RQAnc0SG1x40ywS5BDCqKnfnrjAnMaqVrG5zb74lm8+9odDUDzeKHhvrSJTRjP1D1MWY1WvDf39jbsIILXr+h9D/S2YNzmLIFIhN/aGAKxo/f4MUc+GlQZB65DrO+PFDTIVzZGdGy98/HL2hUxXssxGMmCLv1v8sQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0359bce8-ce86-4b14-2bda-08de8f1dc5be
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 12:05:17.0947 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cEimVKKIsWeeaETmQV2T3iRuj7o1c4hTh2l+xoUbX2iHo/IUJTYty7jMlO/3W8qfSDTH/D4t61pGZjxSc4lIx6yvyMxzTNnb8AM4sSxCLxA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6965
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
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
X-Rspamd-Queue-Id: 42545369442
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/31/2026 1:08 AM, Ville Syrjälä wrote:
> On Mon, Mar 30, 2026 at 09:36:55AM +0530, Ankit Nautiyal wrote:
>> Currently we enable AS SDP only when VRR is enabled. As we start using
>> AS SDP for other features, this becomes a problem. The AS SDP
>> configuration can change dynamically based on VRR, CMRR, PR, ALPM, etc.
>> Since these features may be enabled or disabled after the initial
>> configuration, the AS SDP parameters need to be computed later in the
>> pipeline.
>>
>> However, not all of the AS SDP logic can be moved to the late stage:
>> the VRR guardband optimization depends on knowing early whether AS SDP
>> can be used. Without this, we would end up accounting for AS SDP on all
>> platforms that support it, even for panels that do not support AS SDP.
>> Therefore we set the infoframe enable bit for AS SDP during
>> compute_config(), before the guardband is computed.
>>
>> To handle these constraints, split the AS SDP programming into two
>> phases:
>>
>>   - intel_dp_compute_as_sdp()
>>     Runs during compute_config().
>>     Sets only the infoframe enable bit so that the guardband logic can
>>     account for AS SDP requirements.
>>
>>   - intel_dp_as_sdp_compute_config_late()
>>     Runs during compute_config_late().
>>     Computes all remaining AS SDP fields based on the features that need
>>     it.
>>
>> The late-stage computation is called from
>> intel_dp_sdp_compute_config_late(), before computing the minimum guardband
>> for SDPs.
>>
>> This is a preparatory change. A subsequent patch will always enable AS
>> SDP when the source and sink support it.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 67 ++++++++++++++++---------
>>   1 file changed, 44 insertions(+), 23 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 343bb2a86675..7da3dee226a0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -3142,30 +3142,17 @@ static bool intel_dp_can_use_as_sdp(struct intel_dp *intel_dp,
>>   static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>>   				    struct intel_crtc_state *crtc_state)
>>   {
>> -	struct drm_dp_as_sdp *as_sdp = &crtc_state->infoframes.as_sdp;
>> -	const struct drm_display_mode *adjusted_mode =
>> -		&crtc_state->hw.adjusted_mode;
>> -
>>   	if (!intel_dp_can_use_as_sdp(intel_dp, crtc_state))
>>   		return;
>>   
>> +	/*
>> +	 * Only set the infoframes.enable flag here.
>> +	 * The remaining AS SDP fields are programmed in the
>> +	 * compute_config_late() phase. We need this flag early so that the
>> +	 * VRR guardband calculation can properly account for AS SDP
>> +	 * requirements.
>> +	 */
>>   	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
>> -
>> -	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
>> -	as_sdp->length = 0x9;
>> -	as_sdp->duration_incr_ms = 0;
>> -	as_sdp->revision = 0x2;
>> -	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
>> -
>> -	if (crtc_state->cmrr.enable) {
>> -		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
>> -		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
>> -		as_sdp->target_rr_divider = true;
>> -	} else if (crtc_state->vrr.enable) {
>> -		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
>> -	} else {
>> -		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
>> -	}
>>   }
>>   
>>   static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
>> @@ -7370,11 +7357,45 @@ void intel_dp_mst_resume(struct intel_display *display)
>>   }
>>   
>>   static
>> -int intel_dp_sdp_compute_config_late(struct intel_crtc_state *crtc_state)
>> +void intel_dp_as_sdp_compute_config_late(struct intel_dp *intel_dp,
>> +					 struct intel_crtc_state *crtc_state)
>> +{
>> +	struct drm_dp_as_sdp *as_sdp = &crtc_state->infoframes.as_sdp;
>> +	const struct drm_display_mode *adjusted_mode =
>> +		&crtc_state->hw.adjusted_mode;
>> +
>> +	if ((crtc_state->infoframes.enable &
>> +	    intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC)) == 0)
>> +		return;
>> +
>> +	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
>> +	as_sdp->length = 0x9;
>> +	as_sdp->duration_incr_ms = 0;
>> +	as_sdp->revision = 0x2;
>> +	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
>> +
>> +	if (crtc_state->cmrr.enable) {
>> +		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
>> +		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
>> +		as_sdp->target_rr_divider = true;
>> +	} else if (crtc_state->vrr.enable) {
>> +		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
>> +	} else {
>> +		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
>> +	}
> Nothing in here right now depends on anything but
> intel_vrr_compute_config(). Was there something specific you will
> need to consult here that is computed later?


This was required when I was trying to send AS SDP revision 1 based on

PR link ON requirement. Now that it has been nuked so we do not need 
this change yet.

However, when we need to fill coasting Vtotal for Panel replay active 
case, it will need panel replay stuff that is computed late.

So I guess we will need to compute this during ..compute_config_late().


Thanks,
Ankit

>
>> +}
>> +
>> +static
>> +int intel_dp_sdp_compute_config_late(struct intel_dp *intel_dp,
>> +				     struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   	int guardband = intel_crtc_vblank_length(crtc_state);
>> -	int min_sdp_guardband = intel_dp_sdp_min_guardband(crtc_state, false);
>> +	int min_sdp_guardband;
>> +
>> +	intel_dp_as_sdp_compute_config_late(intel_dp, crtc_state);
>> +
>> +	min_sdp_guardband = intel_dp_sdp_min_guardband(crtc_state, false);
>>   
>>   	if (guardband < min_sdp_guardband) {
>>   		drm_dbg_kms(display->drm, "guardband %d < min sdp guardband %d\n",
>> @@ -7394,7 +7415,7 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
>>   
>>   	intel_psr_compute_config_late(intel_dp, crtc_state);
>>   
>> -	ret = intel_dp_sdp_compute_config_late(crtc_state);
>> +	ret = intel_dp_sdp_compute_config_late(intel_dp, crtc_state);
>>   	if (ret)
>>   		return ret;
>>   
>> -- 
>> 2.45.2
