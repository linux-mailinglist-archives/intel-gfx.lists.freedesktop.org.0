Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFB7995357
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 17:24:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7662F10E57B;
	Tue,  8 Oct 2024 15:24:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bMQnjis1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D56D510E580;
 Tue,  8 Oct 2024 15:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728401095; x=1759937095;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=THWsFnMxwgjhfCajMyJYEg+3X0nR/1R6IfCEUHc97ag=;
 b=bMQnjis1ls0OVODUUqJ5y8EOZvckK04Wau/h/jgh0jWSC2ovG5m/5SLu
 zh3aL0foBNWwz0h+iyma0d4+TVHnERB5lcwohd4HvQsyWvViB3EH7AcZ3
 mW+XRtUM9MS8pHXe37m3nk/I4MXPD9W4TE7rNSsmnewbKSl3Ofv3ze+Fr
 R5flYCRwHuKBounbs0/e99p9yaUiUnUNpi8Rl+9WvkukQFoQFpPFzdFeE
 4Xx/GmcSmhn/zD4igPHiXBnzIkyD/1q0PsZiqBve4nRGJeCAHWdsCpdYm
 12EOlkj0sftciEZJHWdoYvUmpkzuH3xjR5zwXLGb4VNmNDgIPALfdQW6u Q==;
X-CSE-ConnectionGUID: pE7FEK4XS7Kl78PM5MqFLA==
X-CSE-MsgGUID: L94A0Ma+SP26Mf3Cz2zW8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27484929"
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="27484929"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 08:24:55 -0700
X-CSE-ConnectionGUID: vi/ABb7pT5WK2mJxYlKmgA==
X-CSE-MsgGUID: ujVb/40gRUSDxlIjtX0q2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="76133257"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 08:24:55 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 08:24:53 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 08:24:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 08:24:53 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 08:24:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lc+E9LhJMa2WupQljCUqU2HhvheOnq5WEgClv76QMyYJWHwChiWHci8vx+WoPMoZWJc45ovD9FOsPU0VEiEc6I4QgUlI488K+Zg6GMyoRhjYopGmJInHxEcj9UIvYTVXMVmp6CvnPcW9ndNexATrvxR3QXk/OgMwbOzUDdtbJCSsk1cfU6uJsWwcKb/6+FNMmGEMIXrrEdN6OkKHR/0c6k+bQ6wQPK8NnZFvswlszrLexl6rFMfj+MTFTRQ3KTAULq0plDG+3+FGqQpya3oYjKhC6dFvFjNr/tEXbbd55sy9sOHKIVOfWGLh8H5uEiIfBIj1nH3MDa5XrH7zyGDirA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=THWsFnMxwgjhfCajMyJYEg+3X0nR/1R6IfCEUHc97ag=;
 b=UwsIVKN3+3zPa3UgfMZLS88B9SRJkTDq2Gc49tFZPAEtlIdHeT/SGIInSh4kJm7jDN2QxhS4QOhOkqiWeXhX5RXm7WjeJzjKcZjRuPrCqyhjaekIof7IhaJ4C3YxacANmd5zl2QY8bFeP+o9aHoIUxr0iCk/zyOo73MLMroRd8mqfCqO/cyyzr0P/k+wrVkggXDxEjzcfFHtcORFmn7cInzzUKSULcLsDpMMbUfpeZ8Unk8VGk6XLO37MnXtnDY37nSRmfee6a29aHxrYgqByH2XnfoIun41AIwUU57lcA0icKBxAW5pzdQw25DC/hq7dtFKyVdO3itJza+3EedN+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SA0PR11MB4542.namprd11.prod.outlook.com (2603:10b6:806:9f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 8 Oct
 2024 15:24:43 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8026.020; Tue, 8 Oct 2024
 15:24:43 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 00/31] Reconcile i915's and xe's display power mgt
 sequences
Thread-Topic: [PATCH 00/31] Reconcile i915's and xe's display power mgt
 sequences
Thread-Index: AQHbDsJRVzBR23UwN0uQAnz+9CM85bJ9B0pQ
Date: Tue, 8 Oct 2024 15:24:42 +0000
Message-ID: <CH0PR11MB544466510DB3975996E2CBEBE57E2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SA0PR11MB4542:EE_
x-ms-office365-filtering-correlation-id: 01f8f9bc-20a6-4f52-6fed-08dce7ad5582
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NFNmQWJYSmdRcWFuOVhYbUFVSStQa2hFLzdWWU1id0RDa3hWQ25zdGp2S1l5?=
 =?utf-8?B?MmE2anZGYzU2V1BERndoSkwvdklpWVl1WDk5ejdoZkRtcmhvKy9Ma082alRy?=
 =?utf-8?B?ZzJ6RStvYWxMbGRHK1psQlBkVGZRMWwzejk5ZXpuMEZQNFl0RjZuQW9qeS9x?=
 =?utf-8?B?R1BSTlFWZU1YZlE2a0FieWxNWXdicFpOWDBVbnZPdmt0dFRmQmMrTU82RkZD?=
 =?utf-8?B?MnRNNFNEczlCcTB5WWw2MkJ4dWxxVk5ySTRMRGU5T0psano0N0hOTnR0Yk9X?=
 =?utf-8?B?eVVCTHRNL3JJMEV4SE5aeUozd0tVR3p2VW5sak55TUlLSk9TSmVGQTBIVzFi?=
 =?utf-8?B?aFo0ZWhpSUJ3cVVPTk5OWEdOZmZMb1hxK1owcEFoZFBRdGo3ak9ldVcwcENa?=
 =?utf-8?B?SDhrcE9nc1I3K0lSSkhMR1JHRGl4aE80OW1KNFR4SDJvM1JKT1U1ZTBaVzNq?=
 =?utf-8?B?R2VZaGllOHhML0c4RTZtQ3Z3UFhMdlR0WjkvZWNuUVVGZGpQcUJpT2U1R05h?=
 =?utf-8?B?M3c4NkZlWCtVZ2ozeEt6RnhvYmF4RkNia1dXTmV0dHI2eXk0c3hpMzA2b2N2?=
 =?utf-8?B?WlVsc0VRS3NDK2FjaFNGM3NpNFpVNEkrMlFEdmlTWnQwc2daZXBSVjJjaXZj?=
 =?utf-8?B?aW9CbG1kYjNGRlNDVTIwT3FrQTJPbk90MFJWQW9aV2dZcUQxdnBpUnNqOXRG?=
 =?utf-8?B?cko2K3ZibU4ybXU0MGp3ckxqN3lDVDJDbEwrY3RPL1c0WlB3N0kySldBNWY0?=
 =?utf-8?B?cjI0T3Bpa29CY0hkY1doWkRQSVcwOURmdXBzbHVua1RIbDhGRFFRK1RpTTZI?=
 =?utf-8?B?V2ZqSWZGSUc1ZTJYRVlzZWk5THVncktJb2kzVGpyWit0NTVjZTIxaXV0R1Rw?=
 =?utf-8?B?UGZHc2R6S1BYRjg5YmYwUWdma2plcGVKYlB5Vm9hS2J2b3lya1lKdGtMZG8x?=
 =?utf-8?B?RlRKM2ptK1BWSFhiSVBkdW1sVldUb2Y4R2ZRZGtNUnR4bzVLUlNvMDNRNnFM?=
 =?utf-8?B?aXJQbndIelNvMXAweTdHekpIRWVxQjVrR3JuMTVTZEdXY29WRFJRZHlRUmZH?=
 =?utf-8?B?ZkFoZjJWZ2RMYzc5K1BpYThFd3JRdElTYUMwNXl6NGIvUGoyUVZydFB0aktB?=
 =?utf-8?B?eXlrRGZtdHBWZnRUZGRQVllqT3J5MStCK0EvMUxXTlp6RlRTclBaOHB2dm9T?=
 =?utf-8?B?TnZLdWQraEhSVHd3Tm8xVWhRMnJlZlRiaWRDdk1vb24ranlFTitkbkdXcnU4?=
 =?utf-8?B?UHlZTHdYbUNQVnlUZnIyeWRTczhVa0ZVY0JCdHVWMkc2QTRUcFdkMVdzZ3Y4?=
 =?utf-8?B?NFZmcE5jMEt0RzFBeUpPNCtTcVRNaExNYkM5YW1JU0QwVzl4S0FuUlA5Z25p?=
 =?utf-8?B?WGx6S3RNZXUxbGk2d2VSZkE5UmVWYTY1aWRqYWRCNW9sNkVoUmg3MW4xZ2FB?=
 =?utf-8?B?SnQrMUpQVEFCT1ZQNlpsY1hkQ211UnpJdVJrSTlkRUZQSWc1SUw5clh1V2ZP?=
 =?utf-8?B?VXo2aDRQSXh4ZXlqS3BrQXMwYUhSRHBENHo3c3ZFSWQ3Unl3bjFMWlNySjFw?=
 =?utf-8?B?UVVVTmtFYnRhalJ4TzJHaHhtSGNJUHVQM0tPeGxMVFRwU1VJWDFWRUdkWnRo?=
 =?utf-8?B?OFVhd2lPbklRWWhBVFB0a1V3ankySGhJdmdobGRFNnE3eHVLSlpuOGlXcE4v?=
 =?utf-8?B?bk1qMU5ROG1PU1AwTTBjaDVYdHpBeS8vRkhlZktNc0R0UCtkK3NLb3BkUEZL?=
 =?utf-8?B?Z2I0MHhKbmN4OWpiaWJpNTJUc3l1dXBRL3NLUEN3ZG9NM3JhdjF6N3puN3RU?=
 =?utf-8?B?NmU3QWlzZ1RXNHRMSm1zUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WEFKQ01hc0xlejcwL1p2SC9URW11ZURzd3d2V0hWaWhrR2dXUVUwcUY1SE5w?=
 =?utf-8?B?ekJDdzRPRTJqdkRwRHBLNU1Ud092cGp2T1krUGI1YnlPbmlIdTh1QnhZMFJJ?=
 =?utf-8?B?dWkxNzhKSVhja1RvR3dRcmRKV0d1RTRFNW9DcmtBbmE2dC9XM1FQRWh2d0Rr?=
 =?utf-8?B?SXdNV0dIcDZrZjVYM3FaV0V2cUpnckhXdHZ1Q2c5K3ExeXowWGxneEdKN1o4?=
 =?utf-8?B?UXV2Vkxva2VZU0YwencyNUFPRGh6KzVtaDNBU3Z2OEFWenJwWEtheG90K0N1?=
 =?utf-8?B?UVRjd0Y4MDFOUjNOWm8xTzZQaDFlT1hoeGNLc1VFRXRVdkE0VDZDaHJ6clpU?=
 =?utf-8?B?b0RSWmloTFBxT1h2OEFsZk02SGhMaVdQdFU5ZDVOMlNWcGYwdEZZM2xQa3F6?=
 =?utf-8?B?T0Mzb2lQMzhPK2RlVmFHRXpyMGdreG1xaGluak1ET2cxamVRVnNlcklQNzhC?=
 =?utf-8?B?bGZMZis5cFpST2l6bVFpUzFUL1B1NmpNSlJzQlhraWdrVzZ2VExsWDNwaDZ0?=
 =?utf-8?B?TnB1SVFvcFZYeGs5QlJZRFd3NW9qeStrL3FzSWZ0V3c1VzlSdlFRR0tVc1pK?=
 =?utf-8?B?a1owLzdCVHdvOWRvUURRS0diMEROWkRvejhsM0p1cm04NnJnZlF0MlE5Um9F?=
 =?utf-8?B?TDVLcksxTXR4eDBNbzYwMVVXUmJSVlBrZ3pYbVczcVhVcE0yYkJJSmNyWjZs?=
 =?utf-8?B?eTlrcjFCMmZTNGpYSVMvaHFhc0Evdm9ZUEJ6WEExZjJ5Um9McU00cGZQNUdl?=
 =?utf-8?B?QlY3YmFHMDdITGJxcnZUSkpoRVAvaUlSRGd4bzFXSnRJZWZsaDlKVGF4cWFw?=
 =?utf-8?B?Tm9aOC9Nc243TVVUOXFZbWoreFFGQ2l0MUVnUEUvMmQreklINDV1VW51NTc1?=
 =?utf-8?B?VmVOc3YyTnYrYmNRVXNpMXI3RnJJOXB6Nkd0ZTVDZzArUVF0bHp4TStFaC9a?=
 =?utf-8?B?WnZMWDlFaFdmdXQxRjFmL1BqTzFMRXNGbkV6VndrUU80cE84YUU4R2ZhNFlq?=
 =?utf-8?B?R2d5Q3JsNTZvVEg1c0IxVVdWY1ZyNy9uWUJVdVBhWGFDR1ZweWR4cDNkd2k3?=
 =?utf-8?B?K0lMdnVLRGtPYUphd1czUDlxU1Fxano3V2tsZjZyWTRyUmJrbzhKa3lMNkFK?=
 =?utf-8?B?NTZPNG9qRWMwSmxSZ21wdXNob01hNGVDNWpvTjlNWjRscGExZDF6NEs4NzN1?=
 =?utf-8?B?MWkvRGhIWkduOUFIcHdNYll1eHpBV2duMU9DQ2VuVTA2VHMxbEkxQUVHUVNY?=
 =?utf-8?B?dHhZSHN1RC95QVFsSFRCcng0MUdIQUdKelFvMFlsNXA3ZUNjNmhSRGxsaWlB?=
 =?utf-8?B?R09BaHhaYzJEeVEzOG9RalJWZXZEaCt1UURjVnNsSENUeExrM1lTN2w0Vm5S?=
 =?utf-8?B?SXVHN25WYmJ0a3J0WlhLQzF4WXFVbnJ3UGFGV1BCVUE4b2prbWgxVFJXeGc3?=
 =?utf-8?B?NTdieTQrRWU0ZFVpdHZJRlR1bWFHSG1IM3ZoTThXRENINFA0RWJqblBQMEU0?=
 =?utf-8?B?YWNDbUd5VVE2US9TWnlVY09ndGx3eU9aT2tsRWRCcU42QkpvTm4wN3NpTnNw?=
 =?utf-8?B?UmFGaG9FMUlLK2s3b0x1U0ZzWWcwd1QxTWx0ZkZBOWQvMnFuUmp3ejNBTUF3?=
 =?utf-8?B?b1hNTDU1V0xEVXdWdE1tc2NTU2pKZXVsNXE1WWFtTHhrZFl3NUtNQUJMRytN?=
 =?utf-8?B?TVg3R1ErYzJHU2JtTlhBUkpJUHNjS3FSMXRoLytnWEFUZTVlcGRGeVpHUEk0?=
 =?utf-8?B?SlZ1ZTRvSGhpa1ZIVXdoR3NFZ09nd3E1OU5Xd3dHZmhOR3R5MnF3b3ZhUEw5?=
 =?utf-8?B?aGFxYzhOb1A1ZU1yUTM1TnVncGpCVUx2NnowQnJzNllabEF6ZzRyYzJiYU1u?=
 =?utf-8?B?di8xdjIzSE11Nm9FMTJkZmxPVkZvQllxSTJaQVhuRG5oSGJMZnlockVrQ3hP?=
 =?utf-8?B?UU55by8ySWxhcDFaNTh2bU1oWm1yQnVidXRMeDExZ0NvNHM3ZVg2UFNUN1Jy?=
 =?utf-8?B?czIwRTRHZFBzSWx2aG9IREJ6QWkyM1c0dUVjRUd5U2VKWU9ueHIrLzNWVVdY?=
 =?utf-8?B?bjhDOTJlMHJXcHRMSzE0RTF6SGxUNDBqdERPYnlXdVBOdGNJQjJSSXVNeHFa?=
 =?utf-8?B?dlhrb0JCeTdUTU1razBrYnQxTnVhUXFyMitlOTVTb0JKSXJYRFB3TmU2OWN3?=
 =?utf-8?B?Wnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01f8f9bc-20a6-4f52-6fed-08dce7ad5582
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2024 15:24:42.9426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zrgNHiV7ZI0VGrPUSUI7r6mXQpf1Gg6ZaqeX8Xp8N8jfHjlzoxzUVryJ3BvULQkmI1QDxzIHonthN6B2xF7IRMtrO/dhBwSyN0siS52yl+A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4542
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

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJv
dW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgUm9kcmlnbyBWaXZpDQpT
ZW50OiBUdWVzZGF5LCBTZXB0ZW1iZXIgMjQsIDIwMjQgMTozNSBQTQ0KVG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6
IERlYWssIEltcmUgPGltcmUuZGVha0BpbnRlbC5jb20+OyBWaXZpLCBSb2RyaWdvIDxyb2RyaWdv
LnZpdmlAaW50ZWwuY29tPg0KU3ViamVjdDogW1BBVENIIDAwLzMxXSBSZWNvbmNpbGUgaTkxNSdz
IGFuZCB4ZSdzIGRpc3BsYXkgcG93ZXIgbWd0IHNlcXVlbmNlcw0KPiANCj4gUmVjb25jaWxlIGk5
MTUncyBhbmQgeGUncyBkaXNwbGF5IHBvd2VyIG1hbmFnZW1lbnQgc2VxdWVuY2VzLg0KPiANCj4g
VGhlIG1haW4gZ29hbCBvZiB0aGlzIHNlcmllcyBpcyB0byBlbnN1cmUgdGhhdCB0aGUgZGlzcGxh
eQ0KPiBwb3dlciBtYW5hZ2VtZW50IHNlcXVlbmNlcyBmcm9tIGJvdGggZHJpdmVycyBhcmUgZnVs
bHkgYWxpZ25lZC4NCj4gU28sIGl0IG5lZWRzIHRvIGxpdmUgdW5kZXIgaTkxNS9kaXNwbGF5LyBh
bmQgeGVfZGlzcGxheV9wbQ0KPiBjYW4gb25seSBiZSBhIHdyYXBwZXIgdG8gY2hlY2sgZm9yIHRo
ZSB4ZSdzIG1vZHVsZQ0KPiBwYXJhbWV0ZXIgYmVmb3JlIGp1bXBpbmcgaW4gdGhlIGk5MTUvZGlz
cGxheSBmdW5jdGlvbnMuDQo+IA0KPiBEdXJpbmcgdGhpcyBwcm9jZXNzLCBpdCB3YXMgY2xlYXIg
dGhhdCB0aGUgWGUncyBydW50aW1lIHBtDQo+IHNlcXVlbmNlcyBmb3IgaW50ZWdyYXRlZCBnZngg
KG5vbiBkM2NvbGQgY2FwYWJsZSkgd2FzIHRvdGFsbHkNCj4gbWlzYWxpZ25lZCB3aXRoIGk5MTUg
YW5kIHBydW5lIHRvIG1vcmUgYnVncy4gU28sIHRoaXMgc2VyaWVzIGVuZHMNCj4gdXAgZml4aW5n
IHRoaXMgYW5kIGJyaW5naW5nIGEgZnVsbCBhbGlnbm1lbnQgdGhlcmUgYXMgd2VsbC4NCj4gDQo+
IFRoZSBvbmUgbmV3IHRoaW5nIHVuZGVyIGk5MTUgaXMgdGhlIGQzY29sZCBzZXF1ZW5jZXMuIEFw
cGFyZW50bHkNCj4gdGhhdCBjYW4gYmUgcmVkdWNlZCwgYnV0IGZvciBub3cgdGhpcyBpcyB3aGF0
IGlzIHZhbGlkYXRlZCBhbmQNCj4gc3RhYmxlIG9uIGJvdGggREcyIGFuZCBCTUcuIFNvLCBsZXQn
cyBtb3ZlIHRoYXQgdG8gdGhlDQo+IGk5MTUvZGlzcGxheSBzaWRlIGFzIHdlbGwgYW5kIGNvbnRp
bnVlIG9uIHRoZSBpbXByb3ZlbWVudHMgd2l0aA0KPiB0aGUgY29kZSBpbiB0aGUgcmlnaHQgcGxh
Y2UuDQo+IA0KPiBXaGVuIEkgc3RhcnRlZCB0aGlzIHdvcmsgSSB3YXMgaG9waW5nIHRoYXQgSSBj
b3VsZCBydW4gbW9yZQ0KPiBjb252ZXJzaW9ucyB0byBpbnRlbF9kaXNwbGF5IHN0cnVjdCBiZWZv
cmUgbW92aW5nIHRoaW5ncyBmcm9tDQo+IGk5MTVfZHJpdmVyLmMgdG8gaW50ZWxfZGlzcGxheV9k
cml2ZXIsIGhvd2V2ZXIgdGhhdCB3YXMgYSBkZWVwZXINCj4gdGFzayBhbmQgdGhpcyBzZXJpZXMg
aXMgYWxyZWFkeSBkZWVwIGVub3VnaC4NCj4gDQo+IENjOiBJbXJlIERlYWsgPGltcmUuZGVha0Bp
bnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGlu
dGVsLmNvbT4NCg0KSSBkaWQgaW5kaXZpZHVhbCByZXZpZXdzIG9mIGFsbCAzMSBwYXRjaGVzIGlu
IHRoZSBzZXJpZXMsIGFuZCBJIGdhdmUgbXkNClJCIHRvIGFsbCBvZiB0aGVtIHdpdGggc29tZSBu
b3Rlcy4gIEhvd2V2ZXIsIHRoZXJlIHdlcmUganVzdCBhIGZldw0KdGhpbmdzIHRoYXQgSSBmZWx0
IEkgbmVlZGVkIHRvIHNheSBiZWZvcmUgd2UgY2FsbGVkIHRoaXMgc2VyaWVzIGNsb3NlZC4NCg0K
RG9uJ3Qgd29ycnk6IG5vbmUgb2YgdGhpcyBpcyBibG9ja2luZy4NCg0KDQoxLiBBcmUgd2Ugc3Vy
ZSB0aGF0IGFsaWduaW5nIGk5MTUgYW5kIFhlIGxpa2UgdGhpcyBpcyB0aGUgY29ycmVjdA0KY291
cnNlIG9mIGFjdGlvbj8gIEkndmUgYmVlbiByZXByaW1hbmRlZCBpbiB0aGUgcGFzdCBmb3IgY3Jl
YXRpbmcNCnBhdGNoZXMgd2hvc2Ugb3ZlcmFsbCBjb25jZWl0IGlzICJ3ZSBkbyAnWCcgdGhpbmcg
aW4gJ1knIHdheSBvbg0KaTkxNSwgc28gd2Ugc2hvdWxkIGFsc28gYmUgZG9pbmcgJ1gnIHRoaW5n
IGluICdZJyB3YXkgb24gWGUiLiAgU28sIEkNCmZpZ3VyZWQgSSBzaG91bGQgYXQgbGVhc3QgcG9p
bnQgdGhpcyBvdXQuDQoNCg0KMi4gU2V2ZXJhbCBwYXRjaGVzIGluIHRoZSBzZXJpZXMgb3BlcmF0
ZSBvbiBib3RoIGk5MTUgYW5kIFhlIGF0IHRoZQ0Kc2FtZSB0aW1lLiAgSSBkb24ndCB0aGluayB0
aGVyZSdzIGFueSBzdHJpY3QgcnVsZSBzdGF0aW5nIHRoYXQgd2UgY2FuJ3QNCmRvIHNvbWV0aGlu
ZyBsaWtlIHRoYXQsIGJ1dCBJTU8gd2Ugc2hvdWxkIGNvbnNpZGVyIHNwbGl0dGluZyB0aG9zZQ0K
cGF0Y2hlcyBpbnRvIGk5MTUgYW5kIFhlIGNvbXBvbmVudHMgd2hlcmUgcG9zc2libGUvbG9naWNh
bC4NCg0KDQozLiBXaGVuIGFsbCBpcyBzYWlkIGFuZCBkb25lLCB0aGlzIHNlcmllcyBldmVudHVh
bGx5IHB1dHMgYWxsIG9mIHRoZQ0KZHJpdmVyIG1hbmFnZW1lbnQgY29kZSBpbnRvIGludGVsX2Rp
c3BsYXlfZHJpdmVyLmMuICBTbyBhbnkNCmNoYW5nZXMgbWFkZSB0byB4ZV9kaXNwbGF5LmMsIGZv
ciBleGFtcGxlLCBzZWVtIHN1cGVyZmx1b3VzDQpnaXZlbiB3ZSdyZSBpbnRlbmRpbmcgb24gY2Vu
dHJhbGl6aW5nIHRoZSBkaXNwbGF5IGNvZGUgb3V0c2lkZSBvZg0KeGVfZGlzcGxheS5jIGluIHRo
ZSBlbmQuICBJdCdkIGJlIGEgbG90IG9mIHdvcmsgdG8gcmVvcmRlciB0aGUgcGF0Y2gNCnNlcmll
cywgZXNwZWNpYWxseSBhdCB0aGlzIHBvaW50LCBidXQgaWYgd2UgbmVlZGVkIHRvIHN0YXJ0IGFn
YWluIGZyb20NCnNjcmF0Y2ggZm9yIGFueSByZWFzb24sIGl0IG1pZ2h0IGJlIHdvcnRoIG9yZGVy
aW5nIHRoZSBjaGFuZ2VzIGFzIHN1Y2g6DQoNCgktIENyZWF0ZSBhbGwgbmVjZXNzYXJ5IGhlbHBl
ciBmdW5jdGlvbnMgaW4gaW50ZWxfZGlzcGxheV9kcml2ZXINCgkgICBmb3IgaTkxNSBhbmQgWGUs
IHVzaW5nIHRoZW0gaW4gdGhlIGk5MTUgZXhlY3V0aW9uIHBhdGguDQoNCgktIFVzZSB0aGUgbmV3
IGhlbHBlciBmdW5jdGlvbnMgaW4gdGhlIHhlIGV4ZWN1dGlvbiBwYXRoLg0KDQoJLSBDcmVhdGUg
YW5kIHVzZSBhbGwgbmVjZXNzYXJ5IGhlbHBlciBmdW5jdGlvbnMgZm9yIHRoZSB4ZQ0KCSAgIGV4
ZWN1dGlvbiBwYXRoLg0KDQoNCkFnYWluLCBub25lIG9mIHRoaXMgaXMgYmxvY2tpbmcsIHNvIHRo
ZXJlJ3Mgbm8gbmVlZCB0byB1cGVuZCBldmVyeXRoaW5nDQphbmQgc3RhcnQgb3Zlci4gIEkganVz
dCBmZWx0IEkgbmVlZGVkIHRvIHN0YXRlIHNvbWUgb2YgdGhlc2UgdGhpbmdzIGFzIGENCnBhcnQg
b2YgZHVlIGRpbGlnZW5jZS4NCg0KUmV2aWV3ZWQtYnk6IEpvbmF0aGFuIENhdml0dCA8am9uYXRo
YW4uY2F2aXR0QGludGVsLmNvbT4NCi1Kb25hdGhhbiBDYXZpdHQNCg0KPiANCj4gDQo+IFJvZHJp
Z28gVml2aSAoMzEpOg0KPiAgIGRybS9pOTE1OiBSZW1vdmUgdmdhIGFuZCBnbWJ1cyBzZXEgb3V0
IG9mIGk5MTVfcmVzdG9yZV9kaXNwbGF5DQo+ICAgZHJtL2k5MTUvZGlzcGxheTogQ29udmVydCBp
OTE1X3N1c3BlbmQgaW50byBpOXh4X2Rpc3BsYXlfc3INCj4gICBkcm0vaTkxNS9kaXNwbGF5OiBN
b3ZlIHJlZ2ZpbGUgcmVnaXN0ZXJzIGludGVsX2Rpc3BsYXkucmVzdG9yZQ0KPiAgIGRybS9pOTE1
L2Rpc3BsYXk6IE1vdmUgc2h1dGRvd24gc2VxdWVuY2VzIHVuZGVyIGRpc3BsYXkgZHJpdmVyDQo+
ICAgZHJtL3hlOiBBdCBzaHV0ZG93biBkaXNhYmxlIGNvbW1pdCBoZWxwZXJzIGluc3RlYWQgb2Yg
Zmx1c2hpbmcNCj4gICBkcm0veGU6IFVzZSBpOTE1LWRpc3BsYXkgc2h1dGRvd24gc2VxdWVuY2Ug
ZGlyZWN0bHkNCj4gICBkcm0ve2k5MTUseGV9L2Rpc3BsYXk6IE1vdmUgRFAgTVNUIGNhbGxzIHRv
IGRpc3BsYXlfZHJpdmVyDQo+ICAgZHJtL2k5MTUvZGlzcGxheTogTW92ZSBzdXNwZW5kIHNlcXVl
bmNlcyB0byBpbnRlbF9kaXNwbGF5X2RyaXZlcg0KPiAgIGRybS94ZS9kaXNwbGF5OiBEZWxheSBo
cGRfaW5pdCByZXN1bWUNCj4gICBkcm0veGUvZGlzcGxheTogU3Bpbi1vZmYgeGVfZGlzcGxheSBy
dW50aW1lL2QzY29sZCBzZXF1ZW5jZXMNCj4gICBkcm0ve2k5MTUseGV9OiBDb25zb2xpZGF0ZSBk
aXNwbGF5IHJlc3VtZSBmdW5jdGlvbnMNCj4gICBkcm0vaTkxNTogUmVtb3ZlIGxpbmdlcmluZyBw
Y2lfc2F2ZV9zdGF0ZQ0KPiAgIGRybS97aTkxNSx4ZX06IENvbnNvbGlkYXRlIGRpc3BsYXkgc3Vz
cGVuZCBmdW5jdGlvbnMNCj4gICBkcm0vaTkxNS9kaXNwbGF5OiBNb3ZlIHJlc3VtZSBzZXF1ZW5j
ZXMgdG8gaW50ZWxfZGlzcGxheV9kcml2ZXINCj4gICBkcm0veGUvZGlzcGxheTogRGVsYXkgZHNt
IGhhbmRsZXIgcmVnaXN0cmF0aW9uDQo+ICAgZHJtL3tpOTE1LHhlfTogTW92ZSBwb3dlcl9kb21h
aW5zIHN1c3BlbmQvcmVzdW1lIHRvIGRpc3BsYXlfcG93ZXINCj4gICBkcm0ve2k5MTUseGV9OiBN
b3ZlIHJlbWFpbmluZyBpbnRlbF9wb3dlcl9kb21haW5zIHRvIGludGVsX2Rpc3BsYXkNCj4gICBk
cm0vaTkxNS9kaXNwbGF5OiBTcGxpdCByZXN1bWVfbm9pcnEgY2FsbHMgZm9yIG5vdw0KPiAgIGRy
bS94ZS9kaXNwbGF5OiBBbGlnbiBkaXNwbGF5IHJlc3VtZSBzZXF1ZW5jZSB3aXRoIGk5MTUNCj4g
ICBkcm0veGUvZGlzcGxheTogQWxpZ24gc3VzcGVuZCBzZXF1ZW5jZSB3aXRoIGk5MTUNCj4gICBk
cm0ve2k5MTUseGV9L2Rpc3BsYXk6IE1vdmUgZHNtIHJlZ2lzdHJhdGlvbiB1bmRlciBpbnRlbF9k
cml2ZXINCj4gICBkcm0vaTkxNS9kaXNwbGF5OiBNb3ZlIHJ1bnRpbWUgcG0gcmVsYXRlZCBjYWxs
cyB1bmRlcg0KPiAgICAgaW50ZWxfZGlzcGxheV9kcml2ZXINCj4gICBkcm0veGUvZGlzcGxheTog
UHJlcGFyZSBydW50aW1lIHBtIGZ1bmN0aW9ucw0KPiAgIGRybS94ZS9kaXNwbGF5OiBDYWxsIGlu
dGVsX2hwZF9pbml0IG9uIGV2ZXJ5IHJ1bnRpbWUgcmVzdW1lDQo+ICAgZHJtL3hlL2Rpc3BsYXk6
IE1vdmUgaHBkX3BvbGwgY2FsbHMgdG8gbGF0ZXIgcnVudGltZSBzdGFnZXMNCj4gICBkcm0veGUv
ZGlzcGxheTogQWRkIG1pc3Npbmcgd2F0ZXJtYXJrIGlwYyB1cGRhdGUgYXQgcnVudGltZSByZXN1
bWUNCj4gICBkcm0veGUvZGlzcGxheTogTm90aWZ5IG9wcmVnaW9uIHVwb24gcnVudGltZSBzdXNw
ZW5kL3Jlc3VtZSBub24tZDNjb2xkDQo+ICAgZHJtL3hlL2Rpc3BsYXk6IE1vdmUgZGlzcGxheSBy
dW50aW1lIHN1c3BlbmQgdG8gYSBsYXRlciBwb2ludA0KPiAgIGRybS94ZS9kaXNwbGF5OiBLaWxs
IGNydGMgY29tbWl0IGZsdXNoDQo+ICAgZHJtL3hlL2Rpc3BsYXk6IEFkZCBtaXNzaW5nIHBvd2Vy
IGRpc3BsYXkgaGFuZGxpbmcgb24gbm9uLWQzY29sZCBycG0NCj4gICBkcm0ve2k5MTUseGV9L2Rp
c3BsYXk6IENvbnNvbGlkYWRlIGVudGlyZSBydW50aW1lIHBtIHNlcXVlbmNlDQo+IA0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgICAyICstDQo+ICAu
Li4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF9kaXNwbGF5X3NyLmMgICAgfCAgOTkgKysrKysr
Kw0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfZGlzcGxheV9zci5oICAgIHwgIDE0
ICsNCj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaCB8ICAg
NSArDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RyaXZlci5jICAgfCAy
NDcgKysrKysrKysrKysrKysrKysrDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X2RyaXZlci5oICAgfCAgMTggKysNCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfcG93ZXIuYyAgICB8ICAgNiArLQ0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9wb3dlci5oICAgIHwgICAyICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2RyaXZlci5jICAgICAgICAgICAgfCAxNjEgKystLS0tLS0tLS0tDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgIDkgLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmMgICAgICAgICAgIHwgMTQxIC0tLS0tLS0tLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5oICAgICAgICAgICB8ICAxNCAtDQo+ICBk
cml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9kaXNwbGF5LmMgICAgICAgfCAxODUgKysrKy0t
LS0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfZGlzcGxheS5oICAgICAg
IHwgIDExICstDQo+ICBkcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9mYl9waW4uYyAgICAg
ICAgfCAgIDggKw0KPiAgZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RldmljZS5jICAgICAgICAgICAg
ICAgIHwgICA0ICstDQo+ICBkcml2ZXJzL2dwdS9kcm0veGUveGVfcG0uYyAgICAgICAgICAgICAg
ICAgICAgfCAgMTYgKy0NCj4gIDE3IGZpbGVzIGNoYW5nZWQsIDQ5OCBpbnNlcnRpb25zKCspLCA0
NDQgZGVsZXRpb25zKC0pDQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pOXh4X2Rpc3BsYXlfc3IuYw0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF9kaXNwbGF5X3NyLmgNCj4gIGRlbGV0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N1c3BlbmQuYw0KPiAgZGVsZXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5oDQo+IA0KPiAtLSAN
Cj4gMi40Ni4wDQo+IA0KPiANCg==
