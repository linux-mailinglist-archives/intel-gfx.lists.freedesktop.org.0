Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2534197E547
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 06:25:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67F1410E36F;
	Mon, 23 Sep 2024 04:25:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PKqSL3oh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 518A210E36F
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 04:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727065536; x=1758601536;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=/TKvEJ2+Q4i64/JyMEI0UpjhWIX+wy29wg/BQeB8X6U=;
 b=PKqSL3ohynpgL+tKZVm993Lo9qNTU3IJFFbYBjsPITEuWD1CEGwYGxBV
 UgJ+wVxsy19SwRHYDOBMEItgmFXIHwitbSY1NOCY8j0DfZIOgCXIksZ8t
 9HuljILO/Yyfy30On4N0m1bJ5/7JXt1rG3NjBw/rJxzD0CHk9Kn2fjLYu
 sep41SkQtwBXowQli47/wlTTc8bxa4XFwhuURkfXVTePvtcK/8CWzQEsZ
 mDwvqunji6zat8v0PbyEjD+5lgk/rySH1+/Hdf9t61kgsSyp3NGsALlD8
 YJsFAB6A00SIc1nG38bIYVX4LmOAEh6sSSQfsTOpsXYbKYWpTXld5nPpI A==;
X-CSE-ConnectionGUID: vvX6D0SSQr6ZOeol+sMc7Q==
X-CSE-MsgGUID: SnK6LWbmTpqhmArxCYOZHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="26187409"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="26187409"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 21:25:36 -0700
X-CSE-ConnectionGUID: I11DjQiDTsuRyGt0gIMNVA==
X-CSE-MsgGUID: ouIGikkCTMKKvYw8hGiRBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="75049075"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2024 21:25:35 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 21:25:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 21:25:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 22 Sep 2024 21:25:35 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 22 Sep 2024 21:25:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jmylrrpkfd+MwXdPMHGQ6IMqRJdW4DBZ8qZy/XTYhz4tQjis1D7ytCfSwU3HNWZvRB0vIkwAXJ63fR6vOqqtkSkr7lCN+p1xNFUJqzqmp7Xvo/5GPeurO/CsMyzmmLDO1Nf95F5E1YMzBZY6P3b1VZzbnJ4fbk95q4k8PJBWBo3VGuktsRuxyfjfOY3vXthzgLBsKVghCD3J0nUxoyj2KJ7UYSes+20Gk4MUhcaSiAp+Ki76rYoC+Yb5SAQ3GE8WvyNES3N1TCfMzWprwVv0HTPJTur/McE+OhPI2Si5TNYU+swcTDXz2Vo3BZ9xOz9B5wH0K3txUzvQ1KXfJwblLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/TKvEJ2+Q4i64/JyMEI0UpjhWIX+wy29wg/BQeB8X6U=;
 b=ZAPxaFr8bKFnLoUYKtFJ6+GFUugW8Z2fhQx2S/Fxl9z8OiACBeHkgAIJSC8zZNHo4M/ryMg2m+xvyVRX95+etdT4P6cjNLtqy0txocd6h3pt2QPUam4TfyCRGBjsOi9rdtVT2yE9E8lgEkQLrcHsZ0hScElaUR2sPwwHUv6cczpckUJHNwSq01wvOajyJh6rpogvx2QfB/N3p8VI3Fgzqc4/Q4abfzKlZ4q7dH4B9gZAfhYa/iXYFvL7jp4zjH7/8di9sbj5FKY+1muaxA8amxDsw+0FsJZs/mJFeBfGIDoBqzZkiDZ9vrXgbSyUw3alggsHnS5yGQwYVOvTxlfINg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB8264.namprd11.prod.outlook.com (2603:10b6:806:26c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 04:25:27 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 04:25:27 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v5 0/2] Block DC6 on Vblank enable for Panel Replay
Thread-Topic: [PATCH v5 0/2] Block DC6 on Vblank enable for Panel Replay
Thread-Index: AQHbCyWuZbY5B1D3oU2UIasrt80fYrJkyukA
Date: Mon, 23 Sep 2024 04:25:27 +0000
Message-ID: <c3d2254943f99276c8ff4d3ad5438c5b137c2acf.camel@intel.com>
References: <20240920062340.1333777-1-jouni.hogander@intel.com>
In-Reply-To: <20240920062340.1333777-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB8264:EE_
x-ms-office365-filtering-correlation-id: 84a6ad36-36da-4f42-60c2-08dcdb87c07d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VHVQaGgwTER4YUE4REFOTEwxUlBKbzVXeVcvNWpCVjByK29GUmpmeU1DNVBP?=
 =?utf-8?B?cGFuS21xVnZ1UUQ5T0gyUUFwdHlxd0l6dzlwSWhEeDI3Qm9YdkY2ZFREZWMv?=
 =?utf-8?B?dVZ5UjVBWWtFMzZ3ZFhUTURJTExjb1I0aGZaUEFsajhQckhHYmF3UlcvNS9I?=
 =?utf-8?B?ejNOR0o1dE1WaWUxSGt1ZEcwdkNOLzc2M2pVRUZQUHl2a1BscjZ3RWp4NnJs?=
 =?utf-8?B?b0Q0aWtCYzZ3bWFXcUd5N0FmdU5KVFJZd0pRQlJiNkJ2QlhaOVBkcURyK003?=
 =?utf-8?B?RlE0bTlyTStiaUhTckRWc2xzSjM5bTJ4bERLRFZjWGxselFWL0hLaGZKeHN5?=
 =?utf-8?B?RU03ZXJBa1VRMlQ1ZlR4SDRHUFlqb0VSaFFnOXBINTdFYUtFY2RFNDNIUlpp?=
 =?utf-8?B?bmsrQ0pVVWYrNEp2L04xY2d6eTJoblFGVmtJWHV1YWhGbVlpOXVYMFoyUGhJ?=
 =?utf-8?B?WHNVekNwVEs5enM2eFZnTTJpVzhURnRKbFR1OUV2WWprNDFWR2J4OTBSb0VU?=
 =?utf-8?B?Zkd4VXpFTG84TzFHWVlpK1UwVGxjVDNFOHBkQ2NUa0w1VWl4U29WQVVPVEpX?=
 =?utf-8?B?Tk5RWU4rNW9pN0lNY0RCMEg3OWFTSTBFU1VvZjNSQnZlUGYyYndOcWZLU1hX?=
 =?utf-8?B?amVGZTVCOGN6RDgwSUFWYUQ1czZ2YWpNZnlNTG16cUJyZTlTaGx6dzZIM2NQ?=
 =?utf-8?B?eW1CTkNFelFhM2Z3dERUNy9oenNWbjdaay9FakFjSGFWZjNkWG01RkdQbFJU?=
 =?utf-8?B?bGx2S1A4SGU3QndsUU9qNnZDaWcrUVZyZExhdkdHT04xcHV6UEY4Qnkwdjdq?=
 =?utf-8?B?ZGNSV1JLelBjT3djNEdVK2F2Qk85NkRUUHk3L1RpMy9TUjU1TW55aTduMStw?=
 =?utf-8?B?ZS8zMCtzMkdObTFFWmlOZmEvWGNUaXpZWEx5MkJNZmJoL2d6UjhRTExpVCtr?=
 =?utf-8?B?SjhSRlJyUWUxZDFJWjZJcnd3NUpTNzBRWFJvTTJvb1dkYlEwdDR6VGh1YXFI?=
 =?utf-8?B?dVdacG4vYkV5RDR4bEZJbzV0OFlMeVFaV2N4K2czM1BjL2pReXpBWFRPMEIx?=
 =?utf-8?B?cEhHMEVOWm1DNmp2WGtseGFyYTdDVWdPNDdvb3oyYzl1cnRCWVc1RW1ISjgx?=
 =?utf-8?B?bWtmNHRYKzl1c2QyQ2F1QjdaRXk5MlNpSExkU2Nnby92aGdZaWExZUs2eEdY?=
 =?utf-8?B?WnlHWDNTQitRSnJVaXM0SjgrcDVDdkJBNFVYdDlENzdBblM4VlZqSGt4eDNt?=
 =?utf-8?B?UmNNaHozTDVRdkRneXZtOEhocDJEQ2M0bm5TVXBZOE9zMjdqdk9vbTdmSER2?=
 =?utf-8?B?TUU2Ny9qZnBUOXZLbGdqVjIrMUpYT0l2ajV1ZTlIL1BtUFNUc0NKdTJWOEZw?=
 =?utf-8?B?eHVCc28yZ3pTSnl1am02TlZoeXdGMkRYaTVtQ1RMaXhpUzFFc2JpWmdGUll6?=
 =?utf-8?B?US9KY0swV1A0MVFDRWtVa0szeG1GTnhCM1g1OTJjZzBIeFNISjlIdGlCRXkz?=
 =?utf-8?B?UldhQVYxWHBJek5uVjN4NVd5WmJiSEEzeHlQSTV4bVVlUDQ0UHRPaGcyRjVM?=
 =?utf-8?B?bldJTll4K1FiUXQ2eDZZNWVBTkVMNE9sSW1maFd3MlFabDBxN1BUSHc1U2U2?=
 =?utf-8?B?YXlTN0hXeHVNbDQ2TkRXTzF2R2JSZm9xdTVRdWJpTjJ3TDRiaEpLcmhoMUpU?=
 =?utf-8?B?WjQrRmJ4Q2l5aGx0aG9ZRXNxNndCa0t6UWJsRFdwd3RyNFpIclFjeVRJU1ZM?=
 =?utf-8?B?VWh2QnhLc053SUFoeHdWQnI5SjZkR3ZsMWxOTGEycGlWck1EK01lRE10eDkv?=
 =?utf-8?B?aFVXZmh5SkU2U25qd2JLZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dTFkSG0vY1d2TVFidloyRmcvbm1maXc4VStuZHl3RkpZZE9ad05makhXNCtE?=
 =?utf-8?B?eHh4M201SVRtaU1NYldBbXpHZG9ndmNqNU5YbGdOOGFRenFuaVAzL21CamNT?=
 =?utf-8?B?WElwVTNHM3U5anFaWW5BTG40Yk1tMkdjdlhaelNEdHViRnZJS2txejBZODJq?=
 =?utf-8?B?Ty8weVlEZmExLzJTU2ZUMXZXZ3hGWVpoRE1aak9VbHdMVHF5SWoxVFhXajNH?=
 =?utf-8?B?SU5SWTBNdXd5TkwwVjgxYVl2MFJiR3ZwK0xCUUpvTDZqZVltRHNRbi9sc05Y?=
 =?utf-8?B?YXpKbnI0UzVBakIrUmo5U1hWZzRZWG1IdkpBaCtodS9nOGkwQ2xFUUowMmc2?=
 =?utf-8?B?eXl0bk4zQVBiRm94T0NtcEhmSnB5QnNBMkpZcktSZHgrclZ3ZDhNbDYwa3lj?=
 =?utf-8?B?aHVWWi9sZWkzSHJvSjhGdW45NEt2cmRCNGJtOGdZbE5EaW1PUHFURGFhWXdD?=
 =?utf-8?B?RkRWNXNZeGljNHMrclRTVDArcy9JZUZUODFwVjl5R3pDYkxaME5rc2NTa0tj?=
 =?utf-8?B?ZnV0UjZrc2E5QjlJUmdWSlFhRTB1bzAxRTdjYVZnbHNwMnBTbmU4RG5rK2hL?=
 =?utf-8?B?N3kwWUxsNGd3L2JpOXlnYmJvVnIyQytWMTg5ZnBWZXpkdjF2ZGZpNlMyQ1Iy?=
 =?utf-8?B?ZWU2ekppeVNIbjlVU3NmZm1DdXBkWmZyeG15S0M0TGJnazA5QnBibWlQWVVj?=
 =?utf-8?B?QU9BWkk0QlFkS2VGU1VaVGpTakF3aHBqS1h2OFpXUDIvZ1dPaFJudW9sU3Ay?=
 =?utf-8?B?dFo0YjB2ZW1tRVBqRGp3Y2VDbHhLdHRRSGhocGl3a3FDQXc2MHNIanJPaXBx?=
 =?utf-8?B?TjZ0dFYxN2YzU0dUWllFaHJPTENad29VRDlaSVJlT1JzS0MxVVRnMCsvWGJZ?=
 =?utf-8?B?WjYvcTNJdHNyRTlzOC9BWXNsY0RrVVpPdGZFUGFEeXp2N0lkNmp0YXA1RXpl?=
 =?utf-8?B?WXFhNWxTb01adXhkTFkyTmpCcUF3VitMb1dUdTd4cm1WMGQ1L1U4R3B2c0Vo?=
 =?utf-8?B?bmo1b1g3SytTbGJ2RmRpT3RESXdGdjMzZkN1OHVtTy9OY2dabkxES1hvMkRo?=
 =?utf-8?B?WGFCZzZUN0hPYzBEWHlwR09CYy9Icy9hOEVQV2luYk94UGhodUFJcUVOaExn?=
 =?utf-8?B?VHlhQkJoZ3dib3RGS2FnNDd3cWNIV2F0U2lIMVpSOGpsemE1OE4vNXVTeTJC?=
 =?utf-8?B?VlA5VDhFMmdCaHd5djNVVXlxRzdkbDFKclRFSXlJRU12Qld4WFdoYzc3NFNN?=
 =?utf-8?B?ZjBJeW9GeitpMGN4WHN3dVV6YS83MUxPZEE0cE9HMHg1Vy9RU3hSU1pQVmFx?=
 =?utf-8?B?QitIQmFZdWlrcEtVRzZvcjFQTEt0YWNBQlBTanE5T3JGM0JQNHJaWTg0bTVC?=
 =?utf-8?B?cVJmQi9vL0dORDZ0SkljUnZ5SGs1Q2FVdVFFZnJvMDJjNHRXVjlNN2R1aWY0?=
 =?utf-8?B?TFVua0cwZ3BSaFNsUVNlaW1qZzRWbm82NHYwa1YrNnhiNENSYUc2bXRjS2VZ?=
 =?utf-8?B?M05yUjNlbFd3ZS9nSjNJSVpaZzBMeitqOHdpYkh6d2lyTDRuR2VNc1QzenYy?=
 =?utf-8?B?VFh5NUdEVHh5VWwrWjRWdCtiT0k4Q2lJVnEvT2RZV3IzTjhSNVN4WXc1MzR0?=
 =?utf-8?B?aVJtMUJZeEdES0VvUEU4bFA2OExzbmVQR3gyWHV5ZWR6ZkxzUHQyUjJVN0py?=
 =?utf-8?B?T2V6cmlkZ0ZnMys2MVp5S1RPeXlEdjgyazFKdElNNWxLTk5sVXZFb05BRWdx?=
 =?utf-8?B?UGlBRU9YK3ZmQmlRdmZhRjk4L2s0TTYwVkNNNlpSOFlFSWh0L2tyeHRWa0dE?=
 =?utf-8?B?V1RWcktUSE1hR1VkMGZkckdSVVhaUDd6UDB2YjV2RWtvbzEvQ2NoeWkxcjNo?=
 =?utf-8?B?UUpBMUdGTGxBaHFmZ3BROERLSmNMS01Eekl4cWVaeGw1R0lRUzlBa2F0cE9L?=
 =?utf-8?B?N1A5b1Ryek92NEY5azBBME5EWFIwTFJLKys0MndBU0pnUVA1REt6RjE2K3FV?=
 =?utf-8?B?QThGUjFvYkJqZXlWb0RUK24wS3JybE1KWlY5bUVHQzNDVS9rMVN6RS8xWDlt?=
 =?utf-8?B?K2dVVDZwMlQ5YjY2L1hhNjMxcGZoS0ZuQTYzOERWMFhLSXVTckF1aCt4NSto?=
 =?utf-8?B?cXFKOXorbFRwM0Fxa1k0Mk51b3g1RnRGWGdseld2ci9lM0tGOUhVUUdocXR1?=
 =?utf-8?B?L0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F32E79BF254C964CB290456DAB46B6CA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84a6ad36-36da-4f42-60c2-08dcdb87c07d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2024 04:25:27.6034 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xAGy2hl51gUnc4ZK/KW7F8fgX74Stt0/yObHGcfSOpWB/MbzZL+9vGUFqn5jt00N7WWOHGLgtfoCAKEfvL3xAbBF3OJYHLjbaaJJBvPyfeY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8264
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

T24gRnJpLCAyMDI0LTA5LTIwIGF0IDA5OjIzICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IHY1Og0KPiDCoCAtIHMvdmJsYW5rX3dvcmsvdmJsYW5rX2RjX3dvcmsvDQo+IMKgIC0gY2hh
bmdlZCB0eXBlIG9mIGJsb2NrX2RjX2Zvcl92YmxhbmsgdG8gYm9vbA0KPiB2NDoNCj4gwqAgLSBk
byBmbHVzaF93b3JrIGZvciB2Ymxhbmtfd29yayBvbiBpbnRlbF9jcnRjX3ZibGFua19vZmYNCj4g
wqAgLSBubyBuZWVkIHRvIHVzZSBSRUFEX09OQ0UgaW4gYmR3X2VuYWJsZV92YmxhbmsNCj4gwqAg
LSBjaGVjayBjcnRjLT5ibG9ja19kY19mb3JfdmJsYW5rIGluIGJkd19kaXNhYmxlX3ZibGFuayBh
cyB3ZWxsDQo+IMKgIC0gbW92ZSBhZGRpbmcgYmxvY2tfZGNfZm9yX3ZibGFuayBpbnRvIHBhdGNo
IDIuDQo+IMKgIC0gcGF0Y2ggMS4gc2NvcGUgY2hhbmdlZA0KPiB2MzogY2hlY2sgdGhhdCBlbmNv
ZGVyIGlzIGRwDQo+IHYyOiBzZXQvY2xlYXIgYmxvY2tfZGM2X25lZWRlZCBpbiBpbnRlbF9jcnRj
X3ZibGFua19vbi9vZmYNCg0KVGhlc2UgcGF0Y2hlcyBhcmUgbm93IHB1c2hlZCB0byBkcm0taW50
ZWwtbmV4dC4gVGhhbmsgeW91IFZpbGxlIGZvciB0aGUNCnJldmlldy4NCg0KQlIsDQoNCkpvdW5p
IEjDtmdhbmRlcg0KDQo+IA0KPiBKb3VuaSBIw7ZnYW5kZXIgKDIpOg0KPiDCoCBkcm0vaTkxNS9w
c3I6IEFkZCBpbnRlbF9wc3JfbmVlZHNfYmxvY2tfZGNfdmJsYW5rIGZvciBibG9ja2luZyBkYw0K
PiDCoMKgwqAgZW50cnkNCj4gwqAgZHJtL2k5MTUvZGlzcGxheTogUHJldmVudCBEQzYgd2hpbGUg
dmJsYW5rIGlzIGVuYWJsZWQgZm9yIFBhbmVsDQo+IFJlcGxheQ0KPiANCj4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuY8KgwqDCoMKgIHzCoCA3ICsrKysrDQo+IMKg
Li4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oIHzCoCAyICsrDQo+
IMKgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmPCoCB8IDI4ICsr
KysrKysrKysrKysrKysrDQo+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5owqDCoMKgIHzCoCAyICsrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuY8KgwqDCoMKgwqAgfCAzMQ0KPiArKysrKysrKysrKysrKysrKysrDQo+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaMKgwqDCoMKgwqAgfMKgIDEgKw0K
PiDCoDYgZmlsZXMgY2hhbmdlZCwgNzEgaW5zZXJ0aW9ucygrKQ0KPiANCg0K
