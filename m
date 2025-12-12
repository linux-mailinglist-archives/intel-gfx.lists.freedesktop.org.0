Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 883A0CB8E5A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 14:24:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1065D10E354;
	Fri, 12 Dec 2025 13:24:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OrzSCRPN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48B8610E354;
 Fri, 12 Dec 2025 13:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765545845; x=1797081845;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=440B3L/Kuktf/ldjMcf6zih+P1woy4pCfWs52KiddLo=;
 b=OrzSCRPNXHTkOpWpSslyUzUGEu+paCoI+OuaoohoG6TcFiRYLkz1QegT
 3H1xXpH+/VN2suQCW364auwxjpc/1k/Gg/9QXzkYv3ezT3qfz762HK3IZ
 jdbFffPGW8uKl6x9fNS0ARBgkOd/hyHigZZaLFPNb2RoLKsz8+nKMzdHX
 +3uNZDonlFZTu5cgyf/mBpiSuEP1BqCbBur/KPvLZApHjKSPGzJayAtO3
 A2Dzl7+07XoupVIvyGeLFrv6HaFRal+egXz09CWwdd+a8UdhlJcoBcYy9
 I4ll/k8rsgAt5Krwen1IsA+wj4lk0cIAHTTwNrWgtZ46bwCEsRB8dC5gc Q==;
X-CSE-ConnectionGUID: x+9QJZH1QwmSgwn/9EIrCg==
X-CSE-MsgGUID: h1f0ntxvQ8iI9Z56kJ0C1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="84959652"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="84959652"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 05:24:04 -0800
X-CSE-ConnectionGUID: y3ZJIkNdTruYVbfo5NTWLA==
X-CSE-MsgGUID: f3ffp8iFSF673qjjRA85Gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="197358051"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 05:24:02 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 05:24:01 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 05:24:01 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.22) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 05:24:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R9d1Ic23ZnB0bYhXQ82MgaZlFkBAsy+Nw2GYNPJ4of9neEcJtJarCPVIEsNQkcesJsvOjNxNDF17i2k6xXpkJyT70Tc3F+0h45qpMPTaZasNcV8k3tqsalEmpEO84KGzrwkD588rvkpcF2TOCBaUvD8dyDzjNLPFeexv1WFPvmUEOOg+rAd7hZvc5ym7EW/vdTtVXRsXlN268Ghw50WG1FTw2+drZKpCxKv8YIS1zeIledPGXiwUELsSdGZk7Q8Q2OifCLRPYjt3uDLWsc4OIYyoEcaCfSWXNbo0ptt5/mkcP/cuc5uy3ylhltJev0VYwZKSAuRpqmzBVq3t0EDnKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=440B3L/Kuktf/ldjMcf6zih+P1woy4pCfWs52KiddLo=;
 b=VPrGyisy6vbPtosZLlHL/GYtV1z/dD8XlTiuPkkn5zY8GOxmmF6JUEnSVYfjPq2e4AbAOVONBLt3WHOwyg1tD8CiX+KX7+wTgIk9Ffp6V+uYKXGalZKR3B6Nb2Y/C0vBfKSUMIoFmkLFQOA6aMgDB7t6eXm8GFadTlaANvotUxon/PaK7/cG/IpsjD4yyFLgN2/Ho2x01IT5lu0DbeHGR+9ZATtXgfI19+XsY5qmABbvOKVIZKd4YakhZMW65hu5pmV64pYwRrYf8ZbzuosubtlshEQmpZ2ytyEccojsSq2rDP6jwUnH5ifqPsBWz7tcjJE94h5iJzorZRI6UgruzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA1PR11MB7109.namprd11.prod.outlook.com (2603:10b6:806:2ba::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Fri, 12 Dec
 2025 13:23:57 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 13:23:57 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [CI 09/50] drm/i915/dp: Use the effective data rate for DP
 compressed BW calculation
Thread-Topic: [CI 09/50] drm/i915/dp: Use the effective data rate for DP
 compressed BW calculation
Thread-Index: AQHcYIOAES2XJTzDbU6e83gCwGsNhrUeFBqA
Date: Fri, 12 Dec 2025 13:23:57 +0000
Message-ID: <8d4184bbe772082a037908de1b2433a539a1332f.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251128162050.1600107-1-imre.deak@intel.com>
In-Reply-To: <20251128162050.1600107-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA1PR11MB7109:EE_
x-ms-office365-filtering-correlation-id: 7c7309ef-4882-4133-59cc-08de3981b45c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?TWw3VFNrRHNiSmovYkRrdWdoNzh5V2V1cVk3ZjZzZnhZU09SeFFEdWNST1E3?=
 =?utf-8?B?T2FqTEdvZGFjVGUwMFZPSDFFLzd6VmtlbGVWdEMxSzNLTDF1YXl5TGU1cUZJ?=
 =?utf-8?B?WG1lWlluM3p3OFNESk5oSGRrNlR4aWpQZlIrZGE3a0JZMm1LRFEraWVrOWpJ?=
 =?utf-8?B?L0c3SXdJejc3bC9GWHppWDN3MW9PMTUwbG1oRDBMbzFvL244eWlZM0t4cDds?=
 =?utf-8?B?blJaMk9WWG8waXB0SENoTHB1ZjVvZXcvcVN6N1VzZTV5bEZueER2QjBXU3RW?=
 =?utf-8?B?c2xsOWxPaTRWSVZSYnA3Ui9FVUw3SmdEbGEzaExpMjlkNlQzMmtka2d4aUN1?=
 =?utf-8?B?TXJoZVBQQXZpOXdZNUEwWHRqTkUySThzcjYwa1pjK3gwd3E0YXNDTlJMc3B5?=
 =?utf-8?B?RnlJSk5BcW5qUzdsRVp0SUQ0byt3M1hXYUxEYzhmYWJHOEtZa2tINDZhcEtF?=
 =?utf-8?B?NEhXRW1LTEdmd2JGUitNdUh5WTc0K0RxZ003anAzWkFRaERrb0w0ek9ucDVJ?=
 =?utf-8?B?clBXREM5WWsxTHRiaDN0Q0lRUGEyZGN6UXlTV3doL2NxTk5XYmpJRk9DM3Rk?=
 =?utf-8?B?ekpFd3BPTXZYcFVZblJIZWdiOGlSY3RqLzdaNVdiV1MvbXBxZUd5NGhIbjYr?=
 =?utf-8?B?MWJsUkRiYUMzMU5MSHFDbjljRUFYbU9qQ1Nra0swMGVqdm5KM3k5Y0RkSnFp?=
 =?utf-8?B?ayt5NTNDWXNZOTFpSjNibGdpN1lUU1V6WGNMYjJ0a21BaTFHSSsvdytKUk4v?=
 =?utf-8?B?Ykdhb2cvNjA2MGJ6MHk2RVBQWENqbEZWZWpjemx2OFljWlFTTTVvNVJ3MUhr?=
 =?utf-8?B?TERNUHY4S1BJeDN5dFJWT3BvZ3JtR2ljbFRTcCtOVDhyemZpaXdRZTlWOHlX?=
 =?utf-8?B?RVBybndhVm5rUjJVdjJ2aXFmM1NKQXkyYm95Yk10R0VsR3lYSE4vS2NWS0NE?=
 =?utf-8?B?V1Zpblh3Y0x3a0xhajZWc3dyUitiOFVBRytNcjhDRVA1Q08rNWhtSXJiV2to?=
 =?utf-8?B?elFrSUxGYlkwcVU1RmNSalIvNGpvMnJ2MEV0K3ZFSnJ2S0oyd3FFNjRQVEcx?=
 =?utf-8?B?VUliQzh0SXpXUlJhZk1UTHVYOFJMMmZRL0ovUGsrY1BpKzRtaHZ6QTRRNll6?=
 =?utf-8?B?WTBiTlF3cFlWci85cmZUTS9DN3BRUzZlV05pNWxtS3o1SnhvSVlNMnJiTmdw?=
 =?utf-8?B?aGRhQmpjMzVUbmtCVlRLaSs1RWN4TFdGLzhEenVTcXhIZFlKOE94cjlGeTYz?=
 =?utf-8?B?TE05ZE1FWjEvWHZVUURxa0hVdkZVMzMrMDNtdXF4MWNjSENENSt3T1VzaWpy?=
 =?utf-8?B?azZaOCtRZUc0by9QTWkyWVlJT2podUc1YzR4MnFSbkRybkE3VEREY2Q4eFlu?=
 =?utf-8?B?Wk9hdGNNNDlNOW1URlpHczk1MTFyaHgrUk43SDYrTVpveko5KzlSUEo4eVlI?=
 =?utf-8?B?NUNzRWhEY3ZlaGF6ZlQ1K1pPMm0wUW13RVV5ZGVOM0FSWXdqc3RQcVU4UHFE?=
 =?utf-8?B?dGEzdkt1YW5sbnA3dmNaTWc0YnN2MlNBMWtPMWNSUkJzcVNkQ1NTb3Z3Qzlq?=
 =?utf-8?B?ZCt6N2xTVkJCL2Z6QXhIYy9YeWV2L09sOG90YU1HQ1FKZ21sclhVV2VVQmZ0?=
 =?utf-8?B?bmsyMEdCTHhvYUFNWjdFSzQ1SnFHUmpKR3FjSXFLUzh4SmZtb0cxa1E2SjE5?=
 =?utf-8?B?T1huQTM3YWsyL1lrVnBXMmVma0p0R3FreGQ5VzBNeVNBdFVyRGxrZ2RSaDFS?=
 =?utf-8?B?RjZIN3VaRFRIenBLcjZvNm9ZcmNwdjNIOWJxUWcrYTJzRlFLdi80dnVmS05I?=
 =?utf-8?B?Y2lVb1JPRC9GSHdSRTZ6a0M4eUdDanhvU3JLbGZ5aG9ZMGdzQ2VFSTdtclpt?=
 =?utf-8?B?eWh5OHo3Y0pUeGxoSTF4bEN1U0gzY3pZdENhejJhNEFGbkJ6K2Z2S0l6WC9D?=
 =?utf-8?B?b0hVYVJwR3pmZ1NXRTZDbHhIYWluOFZPVUxYcHZpU2FIZWExVGZLNzQyRlVv?=
 =?utf-8?B?aU5vaWlKZk9XcHBhNkFad3Mwc0JJOGs4OCtMRVgwdGs5NTlzOE1uTEFHNDVa?=
 =?utf-8?Q?8qpxGC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z1ZwQ2xGMkpkMThxMHFxTzMxTkx6NDhGSlFWR1ZzOFdEMGVYbWtPeXQ3QWth?=
 =?utf-8?B?bFpML3gzYVkzL0NKRTRneDhRZXNINFZkcTdIOU1XS3Z3MHFpM3JvdXJEQ2k4?=
 =?utf-8?B?ZklDbzdKOE9pNGJhZ05Za005Wk0rdVpGNDFUNXo2WVZVNzJZcUh3MEdPV2NS?=
 =?utf-8?B?TlMxaUZ5b01ES3V5c3AxRVhaK2JVdzdyVHFFNUppZ1FIdTErZEJXNmFxbVpn?=
 =?utf-8?B?QzNQNTBmSUtOdGtUMzBBODNZSVRubWxHcnVnSWg2REI0TFJ3Ui9GWTQzZUlE?=
 =?utf-8?B?anhDMTh0QTN4WU54aXczM2wzcFJLOUxzdW41azBiREQwWGxrSGJuVXpzUVg3?=
 =?utf-8?B?Z2NQK0Yva05zK1dNRVpqcDk5WmlSYStCOUNNSzdHbXI5Y0k1elEyY1hPNGxV?=
 =?utf-8?B?VTFraWRQcDBYMWJPNHJHRDZqVG4yYWxvYlNYVzBoNnMxNmVXZkQ3K3lIZStz?=
 =?utf-8?B?bHVhcFNZTWg4YUFxWDBEcUZGZE5HSXpzTTBsMjBLNXhsaHNIcndTZEhZT1k1?=
 =?utf-8?B?UEoyV21IaDRwOVRyZm1Ib3R6dW9DNVRVT2p0MzBRcitTNG1RVjZJdmYwTTdX?=
 =?utf-8?B?NWUvOG5WNUZneEhCbnRHUGdMaTYyRFZoY0l5UVl0U0RMUTBlZzd2RWl6dXBX?=
 =?utf-8?B?YndKRFBvajJsbUlNQUQxNkg5STRIS09ZYzd3Z09SWm5kaUcvbWhNNjJiTEV0?=
 =?utf-8?B?bVA2NURENjhaVklJVVRYaHZLdTRJSFV4RzV2L1A2QkxOR3NoNnpDOXQ1RHpH?=
 =?utf-8?B?TTJaU1hVTEhLR3VJVnhCdWhDZjFQWXNUQTlrZ0VWMDhmRjVZQTlhRmpXYUJ3?=
 =?utf-8?B?ZWpUa0IwNXZaQ214ZzViVjl1WmJscDlqeGZQNWx1cm14ck1aWUp5dnlmMWVm?=
 =?utf-8?B?UFliZFIvbXFBRzZ5TEF2c2pCZzVSOTJyTW1OV2I5TXptQjhOSjR0Vy91emw5?=
 =?utf-8?B?RWZTbmFiY044bkxteW9XNUlJUFh5c1Jwd2lEN21TYXUxYXo4U00xQVRkcEto?=
 =?utf-8?B?TFhXVjRrcUExZmhFSUdMZ1VFd3Q1bGZMblRoOStFbVE1c3hqUFlyMFc5Q0Rr?=
 =?utf-8?B?QVdhcEtDRy9pbWtsa0ZpVGVyV2x0M003NUZwWkVXVFJYUjIxMmxIZUdraUty?=
 =?utf-8?B?ajZhNVRrWnYrUGJ2SE50eHVObEZRemJDTkVRcVErRFFJZllpTldaV3hSNWg3?=
 =?utf-8?B?bEJ0L1N2K2hjb0ZQTVhpNGpDSFFOOTlxWUZHS0N4WlNsMUNteEd4ek1GVmIw?=
 =?utf-8?B?eHd2TzhSQm5NdFBmTjBRV1loM3ZJYWJhNmIyV2xGTUFvN3ZhMmxGbG5EMkI4?=
 =?utf-8?B?dlAzd096b0Njc21OY1VNaUtWd0pKWnkyYk5FKzBDSWljeGhkN1pqQW9FNkRj?=
 =?utf-8?B?OEd2WFQyUHkzbzRBZ2pHOWVweThmb1dYWjNFb2VUbHc2elczZTRNd2xyRU9r?=
 =?utf-8?B?WjFHNWJQRVZyQXNaWmhzZ3NVTzZTdEkzeDIyeGE3ZDB2ZmVBb2o1VzN2UzRY?=
 =?utf-8?B?d1dkMUJKa1ZnZkRqSG1xQ0NuV0NXRy9Odm5KSkVpd2pZczVrSHpUaFJNVU9m?=
 =?utf-8?B?STgramZCQUplL2lOckJ1T3l0QW5ZS1M5MG1CMmg3d1BtTllsb3k5MUxVMkNJ?=
 =?utf-8?B?N3pMRzBZZDlJU3V1eUxUTE5QMENFM01UT0dsOFJwb3Bqcm9LVy9sYUxodXh3?=
 =?utf-8?B?TG5VOXgwYmFFRnExMXp0bjZIN0pBbXp1QXZrZnAyem1ldWo1bk5iNTFiTFkr?=
 =?utf-8?B?WWo2L1p5N0FZM2FoQWhteTF2NVhyYnZNeTFFbzVuUklGc2VmVUNaQ0RmdFdh?=
 =?utf-8?B?cCtUWG5JeGhFbDdzbnBhM3dzT2xFQ3lLL0VUU2pVYzdXOU9FTlNxbGZaaVUy?=
 =?utf-8?B?VHI5TXVPaG5jazlFSHZIZnZraGx6M083dHVBS3BmQnpvN0h0UUtXdG1EUE1u?=
 =?utf-8?B?UzQzakFxRUpIclpaTVJPaC9wNHFpVTN0TGI4WHhuR0tDMkFJb3crVWFWb3BG?=
 =?utf-8?B?bWxmRk02b1M0MDVSOGZERjcyNUZFblZNem8zelFiMjBWTXFjMTgrNHVHanN2?=
 =?utf-8?B?eEhReTBZbG1taHlaQjc2ZmplaWc3K2k5ME55QkZKNnpjSjdhT2MvNTBMcFYv?=
 =?utf-8?B?WnVzNGlyQ2Vzd09hMnJYdWRFNzJaU2hURHFWajRzcm4wRVFaZTU0ajBlcVNF?=
 =?utf-8?Q?U6IcNsBKb8iYp/5Zz9zVixo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DB0ACD59F3F04F4FAB2191193087702F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c7309ef-4882-4133-59cc-08de3981b45c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 13:23:57.2572 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D082r+Wo5GTMfNA7VzBhjvKmek3yz/xMwAXAoum/XmcEAZkOVlLggXoMbRAV8HYoIwaExl3hEsHD7wcxJQoafFOzHwb1A0+4bXzZQ+mGarA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7109
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

T24gRnJpLCAyMDI1LTExLTI4IGF0IDE4OjIwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFVz
ZSBpbnRlbF9kcF9lZmZlY3RpdmVfZGF0YV9yYXRlKCkgdG8gY2FsY3VsYXRlIHRoZSByZXF1aXJl
ZCBsaW5rIEJXDQo+IGZvcg0KPiBjb21wcmVzc2VkIHN0cmVhbXMgb24gbm9uLVVIQlIgRFAtU1NU
IGxpbmtzLiBUaGlzIGVuc3VyZXMgdGhhdCB0aGUgQlcNCj4gaXMNCj4gY2FsY3VsYXRlZCB0aGUg
c2FtZSB3YXkgZm9yIGFsbCBEUCBvdXRwdXQgdHlwZXMgYW5kIERTQy9ub24tRFNDDQo+IG1vZGVz
LA0KPiBkdXJpbmcgbW9kZSB2YWxpZGF0aW9uIGFzIHdlbGwgYXMgZHVyaW5nIHN0YXRlIGNvbXB1
dGF0aW9uLg0KPiANCj4gVGhpcyBhcHByb2FjaCBhbHNvIGFsbG93cyBmb3IgYWNjb3VudGluZyB3
aXRoIEJXIG92ZXJoZWFkIGR1ZSB0byBEU0MsDQo+IEZFQyBiZWluZyBlbmFibGVkIG9uIGEgbGlu
ay4gQWNvdW50aW5nIGZvciB0aGVzZSB3aWxsIGJlIGFkZGVkIGJ5DQo+IGZvbGxvdy11cCBjaGFu
Z2VzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
Pg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAy
NyArKysrKysrKysrKysrKystLS0tLS0tLQ0KPiAtLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxNiBp
bnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkNCj4gDQoNClJldmlld2VkLWJ5OiBWaW5vZCBH
b3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IGFhNTVhODFhOWE5YmYu
LjQwNDRiZGJjZWFlZjUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMNCj4gQEAgLTIwMjUsMTUgKzIwMjUsMTkgQEAgc3RhdGljIGJvb2wNCj4gaW50ZWxfZHBf
ZHNjX3N1cHBvcnRzX2Zvcm1hdChjb25zdCBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0
b3INCj4gwqAJcmV0dXJuIGRybV9kcF9kc2Nfc2lua19zdXBwb3J0c19mb3JtYXQoY29ubmVjdG9y
LQ0KPiA+ZHAuZHNjX2RwY2QsIHNpbmtfZHNjX2Zvcm1hdCk7DQo+IMKgfQ0KPiDCoA0KPiAtc3Rh
dGljIGJvb2wgaXNfYndfc3VmZmljaWVudF9mb3JfZHNjX2NvbmZpZyhpbnQgZHNjX2JwcF94MTYs
IHUzMg0KPiBsaW5rX2Nsb2NrLA0KPiAtCQkJCQnCoMKgwqAgdTMyIGxhbmVfY291bnQsIHUzMg0K
PiBtb2RlX2Nsb2NrLA0KPiAtCQkJCQnCoMKgwqAgZW51bSBpbnRlbF9vdXRwdXRfZm9ybWF0DQo+
IG91dHB1dF9mb3JtYXQsDQo+IC0JCQkJCcKgwqDCoCBpbnQgdGltZXNsb3RzKQ0KPiArc3RhdGlj
IGJvb2wgaXNfYndfc3VmZmljaWVudF9mb3JfZHNjX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHANCj4g
KmludGVsX2RwLA0KPiArCQkJCQnCoMKgwqAgaW50IGxpbmtfY2xvY2ssIGludA0KPiBsYW5lX2Nv
dW50LA0KPiArCQkJCQnCoMKgwqAgaW50IG1vZGVfY2xvY2ssIGludA0KPiBtb2RlX2hkaXNwbGF5
LA0KPiArCQkJCQnCoMKgwqAgaW50IGRzY19zbGljZV9jb3VudCwgaW50DQo+IGxpbmtfYnBwX3gx
NiwNCj4gKwkJCQkJwqDCoMKgIHVuc2lnbmVkIGxvbmcNCj4gYndfb3ZlcmhlYWRfZmxhZ3MpDQo+
IMKgew0KPiAtCXUzMiBhdmFpbGFibGVfYncsIHJlcXVpcmVkX2J3Ow0KPiArCWludCBhdmFpbGFi
bGVfYnc7DQo+ICsJaW50IHJlcXVpcmVkX2J3Ow0KPiDCoA0KPiAtCWF2YWlsYWJsZV9idyA9IChs
aW5rX2Nsb2NrICogbGFuZV9jb3VudCAqIHRpbWVzbG90cyAqIDE2KcKgIC8NCj4gODsNCj4gLQly
ZXF1aXJlZF9idyA9IGRzY19icHBfeDE2ICoNCj4gKGludGVsX2RwX21vZGVfdG9fZmVjX2Nsb2Nr
KG1vZGVfY2xvY2spKTsNCj4gKwlhdmFpbGFibGVfYncgPSBpbnRlbF9kcF9tYXhfbGlua19kYXRh
X3JhdGUoaW50ZWxfZHAsDQo+IGxpbmtfY2xvY2ssIGxhbmVfY291bnQpOw0KPiArCXJlcXVpcmVk
X2J3ID0gaW50ZWxfZHBfbGlua19yZXF1aXJlZChsaW5rX2Nsb2NrLCBsYW5lX2NvdW50LA0KPiAr
CQkJCQnCoMKgwqDCoCBtb2RlX2Nsb2NrLA0KPiBtb2RlX2hkaXNwbGF5LA0KPiArCQkJCQnCoMKg
wqDCoCBsaW5rX2JwcF94MTYsDQo+IGJ3X292ZXJoZWFkX2ZsYWdzKTsNCj4gwqANCj4gwqAJcmV0
dXJuIGF2YWlsYWJsZV9idyA+PSByZXF1aXJlZF9idzsNCj4gwqB9DQo+IEBAIC0yMDgxLDExICsy
MDg1LDEyIEBAIHN0YXRpYyBpbnQgZHNjX2NvbXB1dGVfbGlua19jb25maWcoc3RydWN0DQo+IGlu
dGVsX2RwICppbnRlbF9kcCwNCj4gwqAJCQkJaWYgKHJldCkNCj4gwqAJCQkJCWNvbnRpbnVlOw0K
PiDCoAkJCX0gZWxzZSB7DQo+IC0JCQkJaWYNCj4gKCFpc19id19zdWZmaWNpZW50X2Zvcl9kc2Nf
Y29uZmlnKGRzY19icHBfeDE2LCBsaW5rX3JhdGUsDQo+IC0JCQkJCQkJCcKgwqDCoMKgDQo+IGxh
bmVfY291bnQsDQo+ICsJCQkJaWYNCj4gKCFpc19id19zdWZmaWNpZW50X2Zvcl9kc2NfY29uZmln
KGludGVsX2RwLA0KPiArCQkJCQkJCQnCoMKgwqDCoA0KPiBsaW5rX3JhdGUsIGxhbmVfY291bnQs
DQo+IMKgCQkJCQkJCQnCoMKgwqDCoA0KPiBhZGp1c3RlZF9tb2RlLT5jcnRjX2Nsb2NrLA0KPiAt
CQkJCQkJCQnCoMKgwqDCoA0KPiBwaXBlX2NvbmZpZy0+b3V0cHV0X2Zvcm1hdCwNCj4gLQkJCQkJ
CQkJwqDCoMKgwqANCj4gdGltZXNsb3RzKSkNCj4gKwkJCQkJCQkJwqDCoMKgwqANCj4gYWRqdXN0
ZWRfbW9kZS0+aGRpc3BsYXksDQo+ICsJCQkJCQkJCcKgwqDCoMKgDQo+IHBpcGVfY29uZmlnLT5k
c2Muc2xpY2VfY291bnQsDQo+ICsJCQkJCQkJCcKgwqDCoMKgDQo+IGRzY19icHBfeDE2LCAwKSkN
Cj4gwqAJCQkJCWNvbnRpbnVlOw0KPiDCoAkJCX0NCj4gwqANCg0K
