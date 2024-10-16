Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 032F09A12C8
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 21:42:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30CB710E759;
	Wed, 16 Oct 2024 19:42:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ISk7h+p7";
	dkim-atps=neutral
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B4F610E759
 for <Intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 19:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729107756; x=1760643756;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=FQMY5XnvLBlwCP6aKUIUD+BkZOYY4ViDj3WUdMPBeHw=;
 b=ISk7h+p7IdEME+YNZyzlm4f7cn0y6B2zh7d1uQeFkRF/RltiSDTjufFj
 C6PqBgnQqZFby4uT0iOuuyucfXi/NiiJd/dOopbyExqnrCAEt/VbHkn9r
 y7aHrJVwOnW5Xz+kTsJOpouctg7F2b6HJhrK3t898du1j30kPG/XjK+JS
 A1bwdXzsI3J71u1CWMDM2KlahaGLGzHRO81tVTRVc4mGq0KeFFL0ub4Vu
 RD0BpTcbAiUqFBd3sRtMV6O4+AT6CkvYEvoxz8zUhyGhUk1coyQOESvIp
 Yywhpo7ATMy28h/hol81SsiQQcA83mzfeDP7V0xBmQ85XojmEygzYirov w==;
X-CSE-ConnectionGUID: HmYBdZYwSQa5iNrHt6WgCA==
X-CSE-MsgGUID: Fuso1lW3QDCkmIM0dMr5sg==
X-IronPort-AV: E=McAfee;i="6700,10204,11226"; a="16193606"
X-IronPort-AV: E=Sophos;i="6.11,209,1725346800"; d="scan'208";a="16193606"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 12:42:36 -0700
X-CSE-ConnectionGUID: gMKtvbcpTUmnPPT057GuCQ==
X-CSE-MsgGUID: XRxuDhftQOGxFAqbBrM7mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,209,1725346800"; d="scan'208";a="78772303"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2024 12:42:35 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 12:42:35 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 12:42:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 16 Oct 2024 12:42:35 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 16 Oct 2024 12:42:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DvQdCFuBpDdcBa+BU6n8lEkPuEdja+opLfCJiAB9ouS/mA9k1GPBBDn/59tMR+rQc2eqk0U2/20sOh0IpolDMYX9acJ3i0n2s18G41UC6cBNvpitAUUxzeHumWYxv7tyCvvGQDLI57DpAJDFGRgKHWmDE0VszqT2WOVMdRBR+GPL2WjMnPLaFKi1/vsEcB5Dr69XIs5kiobvYEFekEwa9tPV1xDI0txqR0pdUdM6oqRqMLko+sifPd9GuECLOdMk1svYS4Bg4z2pMZLqsrLOO+8slsR4Gm6Y75ZTKpWXEiDT0S3xcXjvKglBo39PYeKD605WtdFbUxf5saayeliIVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FQMY5XnvLBlwCP6aKUIUD+BkZOYY4ViDj3WUdMPBeHw=;
 b=xCNmPewp9iTSU1Fw9iLq76+145JpWawTRCMEV3t5RHfr+i4I8xZPS1f9ucNbGiuFdze9512uZbfkKaN9E6WaEZ6VM0YwilS6ozVmZaUUmZY4W4wt2MH1vCrpgKD099usxgWF0jDzP/5S5z3KRfWvaOF5rG6LdFE144mGb60bnjdyODAWJd5ozjR2R6qGmIixzNThDxaZDftdzH1V8Bc6s8vSZSUcJ24q734FN44LW+W/Z1nPu9VmJ029P8izlWfYmrz44fR4WfJ8u9C55slPdafjiyFs1Y1diPUsQmSgN+kGXDbZUvdSqkhD8fXK/gAQolkXi6rYKZxl853ctCSjHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN0PR11MB5711.namprd11.prod.outlook.com (2603:10b6:408:167::22)
 by MN0PR11MB6110.namprd11.prod.outlook.com (2603:10b6:208:3ce::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Wed, 16 Oct
 2024 19:42:32 +0000
Received: from BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::4137:d45e:2206:50aa]) by BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::4137:d45e:2206:50aa%5]) with mapi id 15.20.8069.016; Wed, 16 Oct 2024
 19:42:32 +0000
From: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
To: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
Subject: Re: [PATCH] drm/i915/display/dp: Reduce log level for SOURCE OUI
 write failures
Thread-Topic: [PATCH] drm/i915/display/dp: Reduce log level for SOURCE OUI
 write failures
Thread-Index: AQHbFqGcH8o8AuZs206IQ7YEqcl+eLJ+rOsAgAHdCgCAAKBYgIAIr4OA
Date: Wed, 16 Oct 2024 19:42:32 +0000
Message-ID: <c8e19680d2dd8f5e432127faf0cc9c32622bedc5.camel@intel.com>
References: <20241004210816.3976058-1-clinton.a.taylor@intel.com>
 <35fd248c-db2a-47f5-a59e-549e2adaad72@intel.com>
 <2916f018481d3ecb354c0c1d6c2bd8f0c891bef4.camel@intel.com>
 <85919a8b-0027-4a40-8be0-69be8582d70e@intel.com>
In-Reply-To: <85919a8b-0027-4a40-8be0-69be8582d70e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0PR11MB5711:EE_|MN0PR11MB6110:EE_
x-ms-office365-filtering-correlation-id: 5772d070-ed8a-4ea2-b3f0-08dcee1aad43
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Yk9KY2ltMU1uSlhNMVRabktDdUlvZmQ3alpwY09GUHNvWkJaZlltcWJRdXlh?=
 =?utf-8?B?M2dQVWpNZXFiWnlOam9RTy9TRmRQQitZcWNpU1Y5TnVDYkdUazhWbUJ4d2hI?=
 =?utf-8?B?T2xYc0h6Ni9PVFN4WUZxN3oyQzh3eGVrZEo1UmJzcm1MWXRKOG1SNVd4TEk5?=
 =?utf-8?B?aUVlK1g0TDhNWEhLcCsyWFdJSEs4ZVpzRXUraVV5ZWpqS05vejROaGY2SlNX?=
 =?utf-8?B?MEU3VWEwancydlUxeFdPNmZHMVZNT3h2cDZWYWpTUjFEVGQyblRpVEVQcmxj?=
 =?utf-8?B?MWJqeEFJMVBDY2ZlYmhhWnlWRWpOcE1mRFJzRzYvcVlNL041ZEdUYVQ1ODB2?=
 =?utf-8?B?MEtiVnM2V0RiTEIvVWNZUHkrQmVyNEU0LzNFelZCZDR3N09jdzdhS2RmYU5W?=
 =?utf-8?B?anlqRDFsVE5ha3FBYWtlcCthdDNML0lDOTZIcFpSKzE5WEpyRFUwNTV5aWQx?=
 =?utf-8?B?dDlLQnNtdDVCa0xvWHF3ZTAzTm5HazM0RlpESUIrRVViRHRrMzE0dEo3Mi9Y?=
 =?utf-8?B?TDh0bWhZVWR4UCtFQ3NSU1RBM0xnbWZHQzhlZVhzcHhlUTV5blNodzFwcE9O?=
 =?utf-8?B?MGFUam1ETEtrRzVvRWlOR0lNdE9DWjNuVGp3Wjk5R3BaV2ZzeTZEVTl6aDQv?=
 =?utf-8?B?bS8ra2dPbDZpaU9yYXFIZTZNeUdTcnFhY1ZLWGJ1SlMyUnJXTDJkZmRua0ZV?=
 =?utf-8?B?UWgvZFdGakFWdGh6REt4WXNCMHR5SVpKbjEzZDNjNGtXaitPd2ptczlmNjZm?=
 =?utf-8?B?Y0E4U1JYUzhnNkg4TmlyaWdQRkg5WkYzQmVFWXpOaUpXczFXZmZCTjZIb3ls?=
 =?utf-8?B?NjVTK1JxcjNGMm92czlRbHFtVHNDeW5CbC9wcytyOWg5U3BVM1lWTjVXeWZX?=
 =?utf-8?B?czNjRFhEZVdiQW9zZVlJNjZyTXhGS0ZJcGdIbVhFZVNVcGhjYWxUNEZRRnlM?=
 =?utf-8?B?Q2hvaE9Uc3BKSVFRRGtIRkhEZ0htVVdKVGsrV0E3YlczdzUvVjZ6SUdPa1cz?=
 =?utf-8?B?Q2NmS0FGOVEyZmlJTHhDMEcyakJTOEc3aTJwUldhQTFwSk9TSHp0M29hRnJ1?=
 =?utf-8?B?NTBPOExsUVVTcEdqN0d6KzM2N0NvY29HemkrU0EyQmdFWitBUzlsMW5zcDBC?=
 =?utf-8?B?VzVBb1hJbi9CQXEwQUNlOW1hWHJ2RE5NUVFXS1hCQlpPemJwUEJqUDFHZkpV?=
 =?utf-8?B?WkQ4NjBDS1lMQW9qcUFCMUZ1bVpURHNiem1ET2lqeFI5Yk1BVWs2MWdDYzYw?=
 =?utf-8?B?a3VLZDAvSjJhNVR6SUJrTk83eWp6VHRCYm1OcHBFeGZGZ1NjTnpVNDVldUdT?=
 =?utf-8?B?c295bkhtNms1MEhrK1ArQjhaOTI3UXJKYzRMVmtQcXBSU05PZ1ZTbHFDaldP?=
 =?utf-8?B?dzlDV0wzS05kYUpYTnRMWVlFMHowcHJkWTI2Zy9BTGdpVGJncW8vbURTNDIz?=
 =?utf-8?B?a3dMV1hJb3Y0cmxIelFiUGdHSFhxaVA3VktNcTZBN21VRm1qWWRkbWRqRTVH?=
 =?utf-8?B?WFMxdzJHbUpISnpOMHBsSGdwb0lBeTVIcnRhVktJTFFYTnZlUWlYNzJhcWQ1?=
 =?utf-8?B?VkZXQVphZjEzZDY5UWl4cG41Z3J1cnQxK0Noc0NPRjIrM09XY05aUVhGdUFx?=
 =?utf-8?B?Q0sybWhkSDdNeHJSRGo0YVoyNGhrUytTaStqYUZRRnFSTWwvQTlmVjFwV2tm?=
 =?utf-8?B?L3AvZWwzdC9KdVNRK1RwYTl6VFBZQzdCSFpKNjBldFlKOTU3Q0tzS3ZvNGJx?=
 =?utf-8?B?THZiZ3IxQzJtclM0eEhtTHdRbGtIeldRQm9sMTVhMU9XTkJFbkliZm9OcnU1?=
 =?utf-8?B?cmhqQTN1cG9vN3R4eHZXQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN0PR11MB5711.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?anpPVU51cEJoS0dlTU5xWml3N1Z0QXV3NGRHenk0OG1lVTFkZ1d0T0ZNMU8v?=
 =?utf-8?B?MGt6bjIyZzVOcXBJTmJHcnFucUxLV0RKUS9PNzdGMnlBMmdxZlh4UjF5RTJ4?=
 =?utf-8?B?M3ZpUmtqcnkyaUhYWVg0MWJkeXBnemkvMGlmY1hvTHVXd1lDL2xDS3hmY1pK?=
 =?utf-8?B?cElINjBGL3dGbUpoNG9OQmRQMkkxeWpUWVFhUllMVkVpNXlESS9aa1ZjdXFO?=
 =?utf-8?B?cFF0TThZZi9naUhGcDZXVXpiL0d5aWt1dlV2RXF1VnNiMitTc08zZGRZRklO?=
 =?utf-8?B?VnFvNkRLY1FGL2JESGNsOU1seER2V3ZMMXJNVUl6RENheEJ2SDZnTy9jQVA2?=
 =?utf-8?B?U0p0NGdCeG1UTWovbzRFMGJmM2NUVHBQZGxxWXpnUDI2cW1oT1J5M3MrdE1G?=
 =?utf-8?B?RzJFTFpCdnN3RTRRbFgyVVNhaTE4cndSbDZqWmdOTTlmTml5SUt5ZGdhZXZY?=
 =?utf-8?B?TlF6Z0htQTcyUURUNGN3b0x2WnpKQUtqcUJ1UlMrMG1HSzBnYWlYOWdJYyt4?=
 =?utf-8?B?elhUUGRCTTArK2tkS0N1TjVsTmR6UFhFODh5cE00RFZLdWw4TVEvNVdUaUtC?=
 =?utf-8?B?TU5XQkF0WXhKVXgyWjNhTEhadW1KVXhwOTlwa1FpS1VsWnR1ZnlKQkZxRnBB?=
 =?utf-8?B?WTZrM1hHK2IvRkVoNkxzQlozMHdZNGU0V3BtNWh1cU5vb2w4M1N0R3BYM2N6?=
 =?utf-8?B?b3FpWDE1aTIzekIwVVFPb3VTNUQzSVFENUJJSHkxNVVQTlB6czlJRmdTNmFX?=
 =?utf-8?B?a3I5c0xCYmtKUEVNczJZbW44RHVnd1l4MWdqamdrbFdBeWV4ei9kNjNrVm9k?=
 =?utf-8?B?WFh2cUMvYkpjVEl1YU5NbWlOc2lDUU5LaTdrVFM0VzI5VnB2VTVSTkh1OG1u?=
 =?utf-8?B?WHZ1VFVyNlVrTUZyN1ZiOERtVFplakJ3a0tVRVNnRXE0RUFhSGNXUUkzTyt3?=
 =?utf-8?B?QU4yeW5qTFd5SmVPdHJtUnNzNkZiK2t0UVQ5dmVFTnpkd3dVUE0xK1RWaGhI?=
 =?utf-8?B?SjhoME5GNUFWTUgzWit5WG5Ndlp5c0QzOVEyNzNHV1NLL3pURENZdElLaFNK?=
 =?utf-8?B?N1FmQmpWaFBFdkVoRkRuNTc1VFNkMHZJdDJRc1dEUkFxblVUZzlxb244Y3VC?=
 =?utf-8?B?clZwendTQklpUzdCSThnTlJuSlRoQWllamJvQ2F5cENnLytEdDkwRzMyT0Rh?=
 =?utf-8?B?bi9wcDZuc2NnVVRmMmtkWFFlT290OThla2Y0dE5ySTNZQXQ3RW00Z3lWQ1Vw?=
 =?utf-8?B?UlF4Z3NKejBrdmMrY2JJdzlWaXB5dUJ3ZlRjTi90dHVTRzBTUU54YkxwZUp3?=
 =?utf-8?B?ZVRXZFI0MlNydnE1WDRiL0w2NHh5VzRhS1l3bHk1L1VQR3o5M2hMNUdLOHRJ?=
 =?utf-8?B?Vkpwc3cxNFlOL2Vab2RNeW9GRWtQdjBXak1kK2NGWmdFay9jSHdFNzdLYlp5?=
 =?utf-8?B?S1ZabjRBR25WMzRRRytKS0dmZ2ViUFlsL2VWeGNCVDF6a1oxeFVsRzRoRmhs?=
 =?utf-8?B?cFNOcUczUWppT053Y2RmNENpZUFpU1BOaEZDeXpJc0pGTlMxc2ZvWUJ5M0h2?=
 =?utf-8?B?UW02ZC9kSS9HYVB0M3lxeXk1Z1hUZXk3ZWF2UWR4UWpaWEJueXBBMklDTlB4?=
 =?utf-8?B?b3lmaWRYWVU4b0NhUnRab2lFUTQ2dE1yU1ZHWFZ1MUlwMUtsazRRaW4xV1lm?=
 =?utf-8?B?WDE4cGJUUjgzQ0NST0lkMzRzK1RDTHFseDhqekhNRzRiYU12NnhEK0JnSGdY?=
 =?utf-8?B?V3lpc3RJK3VHNmFDOFdheDdackVDOTIvRmtXZ3hBMm5xSTlUdFJCSm4vb3Iz?=
 =?utf-8?B?YTVhTU5qUVM4TWk5c3dGSkp4ZmFjc3VuVFFuSXY1YmhmWjF5bGV2aWVGUHNU?=
 =?utf-8?B?eWFMdFVoNTkyUXZYcS81NFA5VEhnRjJKMTZyb2JhZFNnZnlnc2VoOUxxeHFn?=
 =?utf-8?B?ODNBWFVJVTdZb1RhQ0pkam0xUWMwY0FqYWhMdmhCNjg4Nnlub0NkTnpBRjNZ?=
 =?utf-8?B?QUtkMThzempyS1BKaGZiQXlXMnlvMFNYWUhlZXZHSHpVYU5xZks2U05ZaitC?=
 =?utf-8?B?aTRTUmd5UEpTU2ZEMldabnN3VGxzMmd3Z3h2R2M1WFl0U1haVmQ5N25uU2tN?=
 =?utf-8?B?UEtuTWs3M3REQXhOampIbXZUdEZvMUR2bkxXY2RIbGJEWVIzUUxHZi9nWG5u?=
 =?utf-8?B?S3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <67D15D4499411844BE31FB394D130CF8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0PR11MB5711.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5772d070-ed8a-4ea2-b3f0-08dcee1aad43
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2024 19:42:32.3022 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XxYPiyLz+Pw1TX2nfHBYFxWWU4XwRZzSb1mGedrNlrlH/R5KlvIv9u6LcSHmI5DAQY3GyUQ7x9Pt0P1d86aZQmEb9xz47ds4JLB4htWZvmQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6110
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

T24gRnJpLCAyMDI0LTEwLTExIGF0IDEyOjM0ICswNTMwLCBQb3R0dW11dHR1LCBTYWkgVGVqYSB3
cm90ZToNCj4gT24gMTEtMTAtMjAyNCAwMzowMCwgVGF5bG9yLCBDbGludG9uIEEgd3JvdGU6DQo+
ID4gT24gV2VkLCAyMDI0LTEwLTA5IGF0IDIyOjMyICswNTMwLCBQb3R0dW11dHR1LCBTYWkgVGVq
YSB3cm90ZToNCj4gPiA+IE9uIDA1LTEwLTIwMjQgMDI6MzgsIENsaW50IFRheWxvciB3cm90ZToN
Cj4gPiA+ID4gU29tZSBkZXZpY2VzIE5BSyBEUENEIHdyaXRlcyB0byB0aGUgU09VUkNFIE9VSSAo
MHgzMDApIERQQ0QgcmVnaXN0ZXJzLg0KPiA+ID4gPiBSZWR1Y2UgdGhlIGxvZyBsZXZlbCBwcmlv
cml0eSB0byBwcmV2ZW50IGRtZXNnIG5vaXNlIGZvciB0aGVzZSBkZXZpY2VzLg0KPiA+ID4gPiAN
Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGlu
dGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYyB8IDIgKy0NCj4gPiA+ID4gICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gPiA+IA0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gPiA+IGluZGV4IGZiYjA5NmJl
MDJhZC4uOTkyMGVjMWY5YzUzIDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gPiA+IEBAIC0zNDE4LDcgKzM0MTgsNyBAQCBpbnRl
bF9lZHBfaW5pdF9zb3VyY2Vfb3VpKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIGJvb2wNCj4g
PiA+ID4gY2FyZWZ1bCkNCj4gPiA+ID4gICAgCX0NCj4gPiA+ID4gICAgDQo+ID4gPiA+ICAgIAlp
ZiAoZHJtX2RwX2RwY2Rfd3JpdGUoJmludGVsX2RwLT5hdXgsIERQX1NPVVJDRV9PVUksIG91aSwg
c2l6ZW9mKG91aSkpIDwNCj4gPiA+ID4gMCkNCj4gPiA+ID4gLQkJZHJtX2VycigmaTkxNS0+ZHJt
LCAiRmFpbGVkIHRvIHdyaXRlIHNvdXJjZSBPVUlcbiIpOw0KPiA+ID4gPiArCQlkcm1faW5mbygm
aTkxNS0+ZHJtLCAiRmFpbGVkIHRvIHdyaXRlIHNvdXJjZSBPVUlcbiIpOw0KPiA+ID4gPiAgICAN
Cj4gPiA+IEp1c3QgaGFkIG9uZSBzbWFsbCBxdWVzdGlvbiBoZXJlLCBJIHRoaW5rIE5BSyBpcyBv
bmUgY2FzZSwgYnV0IGluIGNhc2UNCj4gPiA+IG9mIG90aGVyIGVycm9ycy9mYWlsdXJlcyAoRUlO
VkFMLCBFTk9NRU0pIHdvdWxkIHdlIHN0aWxsIHdhbnQgdG8gcmVkdWNlDQo+ID4gPiB0aGUgbG9n
IGxldmVsPw0KPiA+IElmIEVJTlZBTCBvciBFTk9NRU0gb2NjdXJzIHRoZXJlIHdpbGwgYmUgcGxl
bnR5IG9mIG90aGVyIGZhaWx1cmVzIGVhcmxpZXIgYW5kIGxhdGVyDQo+ID4gdGhhdA0KPiA+IHdp
bGwgYmUgbG9nZ2VkLiBUaGlzIGZ1bmN0aW9uIHJldHVybnMgdm9pZCBzbyB3ZSBkb24ndCBoYW5k
bGUgYW55IGZhaWx1cmUgZm9yDQo+ID4gU291cmNlT1VJDQo+ID4gd3JpdGUgYW55d2F5LiBUaGlz
IGp1c3QgcHJldmVudHMgbm9pc2UgaW4gdGhlIGRtZXNnIGxvZyBmcm9tIGtub3duIGRldmljZXMg
dGhhdCBOQUsNCj4gPiB0aGlzDQo+ID4gcGFydGljdWxhciBEUENEIG9wZXJhdGlvbi4gVGhlIG90
aGVyIG9wdGlvbiB3b3VsZCBiZSB0byBsaXN0IGFsbCBrbm93biBkZXZpY2VzIHRoYXQNCj4gPiBy
ZXR1cm4NCj4gPiBOQUsgYW5kIGZpbHRlciB0aGVtIHZpYSBhIERDUEQgcXVpcmsuDQo+ID4gDQo+
ID4gLUNsaW50DQo+IE9rLCBpbiB0aGF0IGNhc2UsIHNob3VsZCB3ZSBhbHNvIGNvbnNpZGVyIGRl
Y3JlYXNpbmcgdGhlIGxvZyBsZXZlbCBvZiANCj4gcmVhZCBmYWlsdXJlIGEgbGl0dGxlIGFib3Zl
Pw0KDQpSZWFkIHJlc3BvbnNlIHNob3VsZCBuZXZlciBiZSBOQUsnZCBieSB0aGUgU2luayBkZXZp
Y2UuDQoNCi1DbGludA0KIA0KPiA+ICAgIA0KPiA+ID4gVGhhbmtzLA0KPiA+ID4gU2FpIFRlamEN
Cj4gPiA+IA0KPiA+ID4gPiAgICAJaW50ZWxfZHAtPmxhc3Rfb3VpX3dyaXRlID0gamlmZmllczsN
Cj4gPiA+ID4gICAgfQ0K
