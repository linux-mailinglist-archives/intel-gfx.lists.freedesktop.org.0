Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C0C8D2DFE
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 09:20:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F89310E04C;
	Wed, 29 May 2024 07:20:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ej0GNuep";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E526310E04C
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 07:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716967217; x=1748503217;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7nUCPqC8EiVStCYwp0vK5ePQomWc2RhSXIN8F2KcHDM=;
 b=ej0GNuepxUB4bkjlBfFuesDh6WeLJ06MDLQzkhyzTFW1qDpvwIor0SqT
 WIm9tK5HCI1SKYx/bwGMUXoROk/TENm3FR1U4WP6YxsB46JUEaWpmpCWX
 E6JLt1Y9N+xk2TFae/HUODMfTiRp07ixepkHZUGid5FZ1rdzkMF1GpNdY
 Yg7/qFZOQeJFTQnH8O6+1GhPhLLOveV3BBnL2xgyNeJ7oCqR59RW2Wjdj
 yTVuinh88WsKnPjVPSlPGDxWcvaU4P45atppogoAlowhs1uy7N+e69ZWr
 /anNjFOE0iIWOW9kz84MyovmfcDzvNbKcpiS0qMRs/aLLpgp3GUBDTY0y g==;
X-CSE-ConnectionGUID: 2yRRlvT+QrCL1/b33EbHcw==
X-CSE-MsgGUID: qPOpMtwGRzKr15QW6AO8Cg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13301110"
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="13301110"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 00:20:16 -0700
X-CSE-ConnectionGUID: /wTFQbNCTRKsglY9twasWA==
X-CSE-MsgGUID: FrYnaDcGSH2gU93r0J0E5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="35268192"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 00:20:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 00:20:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 00:20:14 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 00:20:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T020gmSYLugFHLH53wfMsW01kjCKGd30RMItQISvRV3ro9ERDo63pymlT2Z1qwUPbcBwHNBk+PUfyLX4oNCYPXAixE0ph1Co93hGKVEhNYUpW4FA31LDjOAyIEri0XXt12Ba6XocxytslgHRwHAELoQ793U0oRJ18CFzHZjiORVEP3K879EkOE2AHckJFVem4OF0tKiv4C/AsqZs9UPbrfZYixif35xzL2LVOMTDoJB9pAS6zMgT8E5BLQuxCDX6CHh236yslmiZSFvjCRxqPEkXqw5bkLExspGrmv4Pv0Ms76O7Fxlx+5CvPDrKipiD9nCGvSVodBDUgTo7oEsEHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7nUCPqC8EiVStCYwp0vK5ePQomWc2RhSXIN8F2KcHDM=;
 b=XTuWYOuCM/h4ekq4RG5JAqS37UPDfV7qLpjgmYu2Yxjk8unIpHoUEX9u2uIGV+MXCn+a8ITBJZvvyxb+plod8b3km4RgX2cQzGivSd/iwMU5UwPsHcrw1oh7dB1Sl/kSZBONMMMtadaQQ2pUooF8CVHxANk6G/uVPzR7hCTkk/6zaaAM9j8g3KkTikptyLkoxHfk+m/HAjC36Ms8Srl6GSa6lQteep0VUImpAJuy+vuOuGhWWn0czKOtRJYH4voCmNoGT/IgNWs2vFhivYBII6pbse7ld8P8/MiqT8JyZnZ1q9x44trbuxzhc+q40UPtgUBDWfLtAc7kVBjU293uSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DM4PR11MB6480.namprd11.prod.outlook.com (2603:10b6:8:8d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.17; Wed, 29 May
 2024 07:20:12 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7611.025; Wed, 29 May 2024
 07:20:12 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v3 06/20] drm/i915/psr: Add Panel Replay support to
 intel_psr2_config_et_valid
Thread-Topic: [PATCH v3 06/20] drm/i915/psr: Add Panel Replay support to
 intel_psr2_config_et_valid
Thread-Index: AQHasAauZIkqlpTAnkSts3fCK2RcN7Gt0Qmw
Date: Wed, 29 May 2024 07:20:12 +0000
Message-ID: <PH7PR11MB59818E41B92C87CE3B467143F9F22@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240527072220.3294769-1-jouni.hogander@intel.com>
 <20240527072220.3294769-7-jouni.hogander@intel.com>
In-Reply-To: <20240527072220.3294769-7-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DM4PR11MB6480:EE_
x-ms-office365-filtering-correlation-id: bd54730e-d119-44ed-f854-08dc7fafc78a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?Vmw2NWRFN2ZhS3BjZFV1V3FvdzBHMVFrQjU0cklNY2FiMSs2YnRmd0x4RE9Y?=
 =?utf-8?B?Q1lyR2pTeExvV2pEem04ZlJEclBjSVlqNnBmMW9mWWJkU213aUJYaXd3WmtF?=
 =?utf-8?B?aFVIRk1mUTdrT0xNS3grdG9FOXVVamFhRTlEdVoxQXhjOHF5YWJaNWV4b0Rh?=
 =?utf-8?B?OXVhU3Bmc29UVEZ2bnBMdmZDUHB4Lyt4TnJjaTNObTZTZzdQQjRCL0RiaVN4?=
 =?utf-8?B?OXU0blZsaUQ1OFNUZE05Tk5BOXhqdkFlZHVnT3dpWXdxZUpmVDBIa3krVEdt?=
 =?utf-8?B?RitpU2dmWVBTV1Q3bmRjMVRrU3dBNitiYjFhVUtCZjlBbFI3OEttd05Kby9q?=
 =?utf-8?B?WDhKdGN3bjJNVC9XL1JDYzBmZFRWRUNyZ3pqRDJtOVVnVlFBaFpGREl2c01z?=
 =?utf-8?B?b2RFc21GbFBRK2ovSG1za2pxZ0F5c3NjZDBoQ1cyVVEwWUNNMFppT2tjeXp0?=
 =?utf-8?B?QVdnci9Ec0xHZ3czSDR2TGptcmlhcksyejB4bVEzOTdmTFl6cGZFWXlFNTVD?=
 =?utf-8?B?bDM1ajBMOXRMd1k0dUNrdHM0bUNXNndnZjZzNWRKSWpLTVpUUkx0MEdNRElJ?=
 =?utf-8?B?Ykg0OHdHVHo2ckFhTGowem8yZFhBaHUzOU4xY2hyOTc1cGtReTVZK1psY2Fl?=
 =?utf-8?B?SGo0aU1MNlpqVC8zOGdoODFnd1pzN2VyR0V6ZXlUSHZvMlVsMGhKVzJ0S2Zk?=
 =?utf-8?B?SjdVdGkySGRZRW41d1kydlhpWVhNOUlYd2MwTnJHUWg4UkxRYnRHSEJIYmJH?=
 =?utf-8?B?NkIyUWdIMHJBaThKYnFHc0xwRnM4ZjRLUGE1QUtzZEpWaGFQdVFlSXdCdnV1?=
 =?utf-8?B?Ym56R1gyTDVaWnBIeTJTWnFCUWtZVGVXbEhTT2FZeCtFY2c5REZLamtSWDV4?=
 =?utf-8?B?SFNkSE1CQzhoWitOK28vRDNtTUxkbGJRZEpNVUJpejJ3MS9Ma3kyTUpqaUVq?=
 =?utf-8?B?R2t6WW5pZE14TVRNNHIzSGE2NEtBaVo1NWMwbTVJZThSY3JZVTBHRGU4YzFa?=
 =?utf-8?B?cTdPOHpUVTd6eGYrdmpYTTN5dnB1T1lqeWFUNFZVT0NrMzV5WHNweStDbzdI?=
 =?utf-8?B?QXBoTlVKWWdpb0FIT1NZaWRBeWxyaEFrU0w4cVIwU01WSWk0bnVELytOcXFV?=
 =?utf-8?B?ZWhFRmRVVkhrVkhHT2RxbDVheHZGU3hlbmJxSGpTcWFjTjFjY0hZNkdDdWk1?=
 =?utf-8?B?TnVMNlZESkErRkJhM01yQlpPQmswemViRlpxY1RiejQ5VEV0R3d5QzgvUkRB?=
 =?utf-8?B?NEZWdGFVRHVac25ib2hWRm9ua3IwdUNWVytQUlV3T2JrNjltK052MFJLZ0NB?=
 =?utf-8?B?d2h3bEE2Nkxhak15U2V0ZnlzRHVBb1BCdkhXWnFEWlY5YkZqbWNweERUdElB?=
 =?utf-8?B?SWI0ZG04YkkzN09iTGMwaHRRaWZCbFFtaTFzY0N6clZkcVVzTnZxMVJ6OXRV?=
 =?utf-8?B?alI4OGorV1UrbERrZnpWSkxzZWg3SlZ4eHBGVCtTMFZld0tsaExWK21mekNr?=
 =?utf-8?B?QVNYeXlhQVovc0R0QjRLMUtFNlZIalFQREVqdys3OC9NbnFLWVFabmlnTExV?=
 =?utf-8?B?NVN4d2czdHhpekJjYXIzYjFNVWYwVjl5YkNnMzFaV3kxSEhNL2RvenBzYjhQ?=
 =?utf-8?B?SEU3dkRQNkIxSmZ5QlVHc3JBOVZVRmVCQ3V1cjMrRFJqOThlSjZmMnFPdHE5?=
 =?utf-8?B?ZnN5dXNyVUk4cEZDN0FacWpCNTVCdHlkbEZXRnQraG1LWitwbnRMOFpTdktp?=
 =?utf-8?Q?aP/eTG5/SjK1xc80OpTlpcG/lJRFmhDg0cHPfsZ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eTBRcFp3MTcvOVd1cU1lMnZaL1p6SVMwcWxXcEhQTkxaQ05CNEZZMkptOG43?=
 =?utf-8?B?Z3BqTzFkT2trOEI3NHFZQXhPdkdkUlV3K2VkWUZSZlFKdVdTRkdHQUZzOXEx?=
 =?utf-8?B?WGtYT1pscUZQS24xbDFtcXBlVm5JQ2dFODBGQ1NHeVVzUXNwa05wUEc1Nzla?=
 =?utf-8?B?VmJqQmdvVmRST3N5RjEwd1RuRUYwTTQyaHhLLzR0YWg1R0F3SGwyODZ2UWg2?=
 =?utf-8?B?V2pla0JmUlhLd2xMbzB0ay9IYlovT0x0dmYxV2h5SXFKYVoxQVdEUDJid0Qw?=
 =?utf-8?B?WGZ2c0hyenpEeDY1VkpUa0JiUGxLZi9GODB6Y3l3ZlVvYXE0WFZoQ3VtalZx?=
 =?utf-8?B?MEQ4RFBrbW02QlZDSE9GUUxSRk1tSm9DaG1VTkQ0dG8yTWFFb3R5UlNoZlYv?=
 =?utf-8?B?U3NXY3kzQzI5VG9aWkl1VFAxY1JXczNSK1hONzFOVGhySzV4QndBR3FtQ0M2?=
 =?utf-8?B?eEZHMnJYQWdqTTM0TjY3dkJFcDUzNkh4RjhtL0J6eDdNRGx0N2FoaDZFRTUz?=
 =?utf-8?B?Nk1HYmhLNDN4YnJuNzU1WEFIa29aekhpeEV3U0NQK285MFVDQjNBZEFPTTlK?=
 =?utf-8?B?dTBZME1QdGN2UHU3dTBXTzlpRG95MXdXNkdPRVNhdjlqMDM0K1hWNUdmNmt1?=
 =?utf-8?B?V3lKZWpEQmk1bGIxK0NwNUZCK1lKdGlSbERzdTdOYXlqMzZPSmY1YWl2QWJD?=
 =?utf-8?B?cW1EV1B4ZlpXajVNYlRiNHJFajNNNzhSQ0UvZDd1WnYzL2pKSm8rRzg2TjdP?=
 =?utf-8?B?djN6amF3alZubmtjdHowS1NQMWNWTHlQZHZmZzZYNmNzdDJKNEc1RWZmeGxa?=
 =?utf-8?B?cGtDOE12RnlDbDh1V0NyQVFOZVlOSy9tNU5vTWcycUlKM2dpQ3JKQ3N2Qm5K?=
 =?utf-8?B?Rmw1QWZrSnNselNUMkJlZXVxMUw0ZVNKbVlkWHpXTjhjZFRvV2NyMHFndlR2?=
 =?utf-8?B?SGg4akorQzhXMnVhanIzVkQzNUx4NnRBR3BhbWN4RHJleVFMNldiZitETDNN?=
 =?utf-8?B?U1VhZnRpSzZtSEV2cEQ4K1FmeDF5a2FuRk1uZ3c3VjY0NGdTK0prRGxvc2dk?=
 =?utf-8?B?bVFvZjZUckh2VnNZUFQxVFlHTlJzWGw5T1lGTk81MVc2YXVBQkZMbU1lSi9p?=
 =?utf-8?B?Zk1yMzc2K0YzR05JK0UvV0NHa2VFMjhsdjJ4U3NjYVFsWGFad0VON291OUlo?=
 =?utf-8?B?Y0pjVFUxS3RjM0F4aVo3STE3cGFQWUFVck1NbDN2dTVhdCt6T3pQamlwVlY5?=
 =?utf-8?B?aU5FdFBCK0V2bjNRR1E2U0xCK3dyK2dlNmtwNWNDMFdsdEhwMFVkcm1FODhU?=
 =?utf-8?B?Z3AvVHh2TmRDa1AyUDl0U0RvcXIwd0VFbkZnTFpFSjhTZXJPOW4vemZJVkpa?=
 =?utf-8?B?MjJFbDR3dVFzd0N3cmk3aTZHd2RqZzBHWGdSdjBxU2JQcUpOdHpTQnlOTE5Z?=
 =?utf-8?B?c0RFTlFQb0tDWXBpVGZqUFk5L2RTVnFnT2tHY2R6aDZUVzJUM0Z4cDRPYkZH?=
 =?utf-8?B?ZWpnQU5HWlErbEdsaklmZ1ArUGxMd3htSkY3U0tDOFl0amhoSUl1WVRzQkdY?=
 =?utf-8?B?OTBkU0V2YUY0VzMvMFdFOUgrczBoM0Z1VEFGaVAyR0F1YVdlVUhMcmtWcXBR?=
 =?utf-8?B?ZjVrSDZva1ZXREoxalZCdFpyZ05CemREbUEzeFlXNWVMZ2NLalZ6dU93M25L?=
 =?utf-8?B?NU5yU3Qrb01Bd21DU2sxNXdEQmRnU3JRQ1VvcDJ1anNiVi9ZdWRxeFpEbTlp?=
 =?utf-8?B?WldGQWRpRUpzSGF4TjRmSGdMclB6a1pXK21ZVUdpU1FtMVkvdGJKMDErWVR1?=
 =?utf-8?B?MGJOc0JzaStLTGxXNmlXakZHR0FWRmNRRlBZWGQvNVFHNDh3YmpGbHZUcEhJ?=
 =?utf-8?B?QTdEZTVOZGtDYTNURHpIT2JWbnlHVnVxRXdhNnU1MUxwb1VHU3cvR2pwK3p6?=
 =?utf-8?B?b3dTOFQydElZTjhUMTdzd29LZlBlMk9YaDhRWFZrN21uZWZYMDB5dlBFRHdn?=
 =?utf-8?B?VGlSZ0hJNkdFaGRQbWdNNlY5RnA3VEpoVVJaSUpISmRyS0xQTVhSb0pHM1hK?=
 =?utf-8?B?SDEvWmhUWUdGQ3MvaGJ0Y09ibWIxeG1SNmFCUG1JMW45cDJ6YXJzdnpHQTgw?=
 =?utf-8?Q?m1og3w9lDUKEJyq17B8NjLy5C?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd54730e-d119-44ed-f854-08dc7fafc78a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2024 07:20:12.3160 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RD7LuliJoJJipMBD11KMbGLREAPzpfvHPqZuTmySYcInT3MgAoLgGbgI1b3j/QqKTTBRcwVO95a6hEPXy9/yvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6480
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgTWF5IDI3LCAyMDI0
IDEyOjUyIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBN
YW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBLYWhvbGEsIE1pa2ENCj4g
PG1pa2Eua2Fob2xhQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDYvMjBdIGRybS9pOTE1L3BzcjogQWRk
IFBhbmVsIFJlcGxheSBzdXBwb3J0IHRvDQo+IGludGVsX3BzcjJfY29uZmlnX2V0X3ZhbGlkDQo+
IA0KPiBFYXJseSBUcmFuc3BvcnQgaXMgcG9zc2libGUgYW5kIGluIG91ciBIVyBtYW5kYXRvcnkg
b24gZURQIFBhbmVsDQo+IFJlcGxheS4gQWRkIHBhcmFtZXRlciB0byBpbnRlbF9wc3IyX2NvbmZp
Z19ldF92YWxpZCB0byBkaWZmZXJlbnRpYXRlDQo+IHZhbGlkaXR5IGNoZWNrIGZvciBQYW5lbCBS
ZXBsYXkuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2Fu
ZGVyQGludGVsLmNvbT4NCg0KTEdUTS4NClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmlt
ZXNoLm1hbm5hQGludGVsLmNvbT4NCiANCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jIHwgMjEgKysrKysrKysrKysrLS0tLS0tLS0tDQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCAxOWY4YWMxMmY5OTUu
LmEwMWMyMTczYTJlNSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+IEBAIC02NzMsMTYgKzY3MywxNyBAQCBzdGF0aWMgdm9pZCBoc3dfcHNyX3NldHVw
X2F1eChzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiAgCQkgICAgICAgYXV4X2N0bCk7
DQo+ICB9DQo+IA0KPiAtc3RhdGljIGJvb2wgcHNyMl9zdV9yZWdpb25fZXRfdmFsaWQoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCkNCj4gK3N0YXRpYyBib29sIHBzcjJfc3VfcmVnaW9uX2V0X3Zh
bGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIGJvb2wNCj4gcGFuZWxfcmVwbGF5KQ0KPiAg
ew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9k
cCk7DQo+IA0KPiAtCWlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAyMCAmJg0KPiAtCSAgICBpbnRl
bF9kcC0+cHNyX2RwY2RbMF0gPT0NCj4gRFBfUFNSMl9XSVRIX1lfQ09PUkRfRVRfU1VQUE9SVEVE
ICYmDQo+IC0JICAgICEoaW50ZWxfZHAtPnBzci5kZWJ1ZyAmDQo+IEk5MTVfUFNSX0RFQlVHX1NV
X1JFR0lPTl9FVF9ESVNBQkxFKSkNCj4gLQkJcmV0dXJuIHRydWU7DQo+ICsJaWYgKERJU1BMQVlf
VkVSKGk5MTUpIDwgMjAgfHwgIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkgfHwNCj4gKwkgICAg
aW50ZWxfZHAtPnBzci5kZWJ1ZyAmIEk5MTVfUFNSX0RFQlVHX1NVX1JFR0lPTl9FVF9ESVNBQkxF
KQ0KPiArCQlyZXR1cm4gZmFsc2U7DQo+IA0KPiAtCXJldHVybiBmYWxzZTsNCj4gKwlyZXR1cm4g
cGFuZWxfcmVwbGF5ID8NCj4gKwkJaW50ZWxfZHAtPnByX2RwY2QgJg0KPiBEUF9QQU5FTF9SRVBM
QVlfRUFSTFlfVFJBTlNQT1JUX1NVUFBPUlQgOg0KPiArCQlpbnRlbF9kcC0+cHNyX2RwY2RbMF0g
IT0NCj4gRFBfUFNSMl9XSVRIX1lfQ09PUkRfRVRfU1VQUE9SVEVEOw0KPiAgfQ0KPiANCj4gIHN0
YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfcHNyX2dldF9lbmFibGVfc2lua19vZmZzZXQoc3RydWN0
IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gQEAgLTcwOSw3ICs3MTAsOCBAQCB2b2lkIGludGVs
X3Bzcl9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCQkJCQkgICBE
UF9BTFBNX0VOQUJMRSB8DQo+IA0KPiBEUF9BTFBNX0xPQ0tfRVJST1JfSVJRX0hQRF9FTkFCTEUp
Ow0KPiANCj4gLQkJCWlmIChwc3IyX3N1X3JlZ2lvbl9ldF92YWxpZChpbnRlbF9kcCkpDQo+ICsJ
CQlpZiAocHNyMl9zdV9yZWdpb25fZXRfdmFsaWQoaW50ZWxfZHAsDQo+ICsJCQkJCQkgICAgaW50
ZWxfZHAtDQo+ID5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQpKQ0KPiAgCQkJCWRwY2RfdmFsIHw9
DQo+IERQX1BTUl9FTkFCTEVfU1VfUkVHSU9OX0VUOw0KPiAgCQl9DQo+IA0KPiBAQCAtOTc4LDcg
Kzk4MCw4IEBAIHN0YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9wc3IyKHN0cnVjdCBpbnRlbF9kcA0K
PiAqaW50ZWxfZHApDQo+ICAJCQkgICAgICAgUFNSMl9NQU5fVFJLX0NUTChkZXZfcHJpdiwgY3B1
X3RyYW5zY29kZXIpLA0KPiAwKTsNCj4gIAl9DQo+IA0KPiAtCWlmIChwc3IyX3N1X3JlZ2lvbl9l
dF92YWxpZChpbnRlbF9kcCkpDQo+ICsJaWYgKHBzcjJfc3VfcmVnaW9uX2V0X3ZhbGlkKGludGVs
X2RwLA0KPiArCQkJCSAgICBpbnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxheV9lbmFibGVkKSkNCj4g
IAkJdmFsIHw9IExOTF9FRFBfUFNSMl9TVV9SRUdJT05fRVRfRU5BQkxFOw0KPiANCj4gIAkvKg0K
PiBAQCAtMTU4Nyw3ICsxNTkwLDcgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdfdmFs
aWQoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gDQo+ICAJdGdsX2RjM2NvX2V4aXRs
aW5lX2NvbXB1dGVfY29uZmlnKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gDQo+IC0JaWYgKHBz
cjJfc3VfcmVnaW9uX2V0X3ZhbGlkKGludGVsX2RwKSkNCj4gKwlpZiAocHNyMl9zdV9yZWdpb25f
ZXRfdmFsaWQoaW50ZWxfZHAsIGZhbHNlKSkNCj4gIAkJY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJf
c3VfcmVnaW9uX2V0ID0gdHJ1ZTsNCj4gDQo+ICAJcmV0dXJuIHRydWU7DQo+IC0tDQo+IDIuMzQu
MQ0KDQo=
