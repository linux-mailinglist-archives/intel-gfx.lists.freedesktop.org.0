Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C699972A4
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 19:05:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 175DB10E791;
	Wed,  9 Oct 2024 17:05:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M6xIMTMj";
	dkim-atps=neutral
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B13B410E791
 for <Intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 17:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728493546; x=1760029546;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Y8ZDv+2imsrSfSFIgaPFxJyBsevfEqPo4tkkeF/dGgQ=;
 b=M6xIMTMj3IxOZ+ceqqrcP8cYlop3+sZt7ExstxSG2aYl9NCqM9Z37C1x
 +OPgYF2F1q7BHuxRj87UXM/DQuYEnESVJ+/IKGJNVURkeuwg0T2ZSOAbO
 1Nf0EtwmqsLGpASgoZg0tbue9cRmVfTdufx777Ka7ES8MblyhurUY+Fbg
 LNtPH6uvKU8uMTrjGC2kh2LqTD94Om4ePxh0xNxeF8EtD2D/EoGB82pLc
 KOqVx2BjqX7op/RdFw33DOYP5Nqi3qP/6jC4VN7Z0+qldZZ6t2kT0m2Rx
 OCc2nU4Pdi/YqKOo+cMvpd1BQCPU3iyiHd6bRDXvL47lfafoeTVXbsm7b w==;
X-CSE-ConnectionGUID: 2EgSr/HVQqSwD9xV9SWgbw==
X-CSE-MsgGUID: rg4tfzWCSaSQg41A1hpgZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="31511446"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="31511446"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 10:05:46 -0700
X-CSE-ConnectionGUID: kXua8sNIRlK5RC0/FsgCVA==
X-CSE-MsgGUID: zdBNEKG4QUu2ZAQy309f+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="77150135"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 10:05:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 10:04:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 10:04:16 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 10:04:16 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 10:03:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y5Ao2v+T19McxZZ3sz87BwpDE9m9ojBxx+uTzONODgeipEpfYPWcJjX2+i7MvHx69N202WCWWuqydAgK/kWQey/9UReTgS3WPNHNLG1FqnhsW6zKBk/kpebGY7qLh/0CDHa1HdaniyEQL7vuBnZ1SqclONj2B4N7GTp42R9MUT5mdDnlTK+jmm9SXpbi0SSwptTfkQ8crpIUG3bsRzmoS3pHgOiSNnGI8/y3jMbRsxnBI/o+NdYNDTfao02hcqofm/dX+bpP4YaPaejpg/X5CR41oYD+kUsS0lQ+qCJqARufqaVoWebBIqVaoyrWjEDqJIqpvoV01mYnfxRKZVwY+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ex70/yO7+shbAfSLObxWEeQZRioQaUu9zeFsYPrr3b0=;
 b=auW50hI0Ncv3lPd3MBrNuJmxiZ/KmeZpT1eKKmBQyenVtQ+gMkTOiEiRCiwHk+k2xPlfNgb7o374h9KzzCGoUXzf1tl53fl7t3mN3F0SyEUo9+4FOb/xmQyr6c1dVjSzaf34uo7Hq0gxQ5aEN7VogCuFs6AdFMHKdGFOW+Xk5jQlEApt79YeooNZs/bbLX78FhRiJngAOTI8a/5e2fCxM93pi4aOpvFgdrfFkcvK0vLmnPthAuvx33+REYH1aMdgVp17H6hjXpAycB0U29xDFHR1/A8gep4EzZbM6N3RsfOsV7a/0XyCWDW8UrmS1dHrCg3+dKJSXCtr9JQRzK5Cvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3238.namprd11.prod.outlook.com (2603:10b6:a03:7e::30)
 by SJ1PR11MB6108.namprd11.prod.outlook.com (2603:10b6:a03:489::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Wed, 9 Oct
 2024 17:03:05 +0000
Received: from BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03]) by BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03%3]) with mapi id 15.20.8026.020; Wed, 9 Oct 2024
 17:03:05 +0000
Message-ID: <35fd248c-db2a-47f5-a59e-549e2adaad72@intel.com>
Date: Wed, 9 Oct 2024 22:32:58 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display/dp: Reduce log level for SOURCE OUI
 write failures
To: Clint Taylor <clinton.a.taylor@intel.com>,
 <Intel-gfx@lists.freedesktop.org>
References: <20241004210816.3976058-1-clinton.a.taylor@intel.com>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
CC: <sai.teja.pottumuttu@intel.com>
In-Reply-To: <20241004210816.3976058-1-clinton.a.taylor@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0178.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::7) To BYAPR11MB3238.namprd11.prod.outlook.com
 (2603:10b6:a03:7e::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3238:EE_|SJ1PR11MB6108:EE_
X-MS-Office365-Filtering-Correlation-Id: 6400d15d-576d-4ff1-4839-08dce8843e0d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bENVdUZXQVBHYTFDQUgySnZScnFYVEpDNFZCRTVmOHZwNHUxeDE2ZnZIMnZK?=
 =?utf-8?B?aXI5MEh3L1B0RnlvaC9JTk1TTHN5VlZ5VVNPbk9ycTVsSXNhZ0NrbjZrUlN4?=
 =?utf-8?B?UVltelhFMzM5MWNHd2czSXNrc3doSTA5Z0RxL0dJV0h6ajZtR2x3eCtPdW00?=
 =?utf-8?B?SEYwS2FXWDFHOVBsTGdYNDE3dG1DNHZjc0xEUDVDUTFLaTArN1NEazhweHh5?=
 =?utf-8?B?UzdlRUw2L3NXRGF3UjhyKzNjMlFMd1ZQcWsrbFlJWmRNK0gxSUUvQlpMT0JQ?=
 =?utf-8?B?bEdJL3k5Tmw2WnU0KzNhZmNmUVFuRUJNcGp6TWtJTmdMOE9rN2VNZEdORjN4?=
 =?utf-8?B?a2xFN3BVNWUvSVg5RjQ0WDZ3RDhDbmxGVzRESEF5Zys2UjV4cVZpMzAyWHo1?=
 =?utf-8?B?T1RkbWpZaGI2bWdoWEJoY09mNzNxdmF4aVo2QXBJVkZOWmxKTTFtVmx1QkVB?=
 =?utf-8?B?NDJ0Q0tXbGdCanhnbGFsZ3YyOHNKa1VwSXlZYndoZm5lYmdKOUJMR3NyWGMv?=
 =?utf-8?B?ei9NOGVmVDREb2N0dGlvTkI5ejFOcVdLdU9sR051NlJsUlRTZVFtZ0ZiOXBa?=
 =?utf-8?B?ci95UDJmZXBwTzgyUHR1bGRxU3BkV2RpcVljQjh3UFJWa3hrKzlFMDg0dDEr?=
 =?utf-8?B?TmtuS1BSTEhybHVSVmV1YmxRQWdoRWlPbWI3Rk5Ta2tPeHl5VG9ZWGxLSXdm?=
 =?utf-8?B?SjA5eXBDYXFvU08rNXZ5VUtDT2F1aFBLemVLQnZxR3BrNFpDSm9ERnRrM3Nv?=
 =?utf-8?B?cytMU0RFZWlsZ1dwUnNHNUthUE8yUnE3SUtNRytJQzVvOGhxVmtYNnRyVjMv?=
 =?utf-8?B?UkIwMlUvSlRkbTd6cjRxN1pjRUZXNEl4RnhnNXhsanFkTVVOd0lBSEorZUxB?=
 =?utf-8?B?RzJ3NnZuSmxuMXpWQ0kxeHZVMEpTRTcvSHdkMWhQeGJYR2pSYW82VytJemZz?=
 =?utf-8?B?dHZ5K3BvK0FCSGh3bXBtcWJ3WVQybVM0STZtOGMwT1dCNm1mcFB5VTVxME8r?=
 =?utf-8?B?Y0Q2M2FQZVFKbEczb1FwUThmY0xQUk5SSnJtVXV4andnM2R5WWJSUUJvVncr?=
 =?utf-8?B?TWRacTRlQ1VicUdCUUtRc09oeEZXWE5NbEFOTFMvSU91V2VwVTFpOXd0aEJJ?=
 =?utf-8?B?V2VyVHNGNkxGT2FJL0c3OURndzVUTmxYQWJjbVg1UDcxQm15LzhvUG9Ud1hU?=
 =?utf-8?B?RWtEclNlV0xEN2tsYlMzZ0lSMDBaNzYzdE4vL20rc0hNOER5NXZ3UWQ2SmFW?=
 =?utf-8?B?OXZkSGpEbHZiVzJPVm81bkpORysrWjJnVFkrcjIwRWdVTkw5Q2xGaUk3V0RP?=
 =?utf-8?B?YmFoRVRQbzF3SE5nQUNXVkpWaktkNHg5OWp1QUsraVorSnRzTTJYZG91RFRz?=
 =?utf-8?B?b0pPWGVheHQ0SWdKd2lQNlNNUkFCQUVjaE9CZHdWekgzVDlUdGZSeHJMRzcy?=
 =?utf-8?B?OE8zWExiV0FaMzNGcUJQWWgrYVlzRlBUM1BoQmhYTnEwcytFeTdIUjVHeTdL?=
 =?utf-8?B?Vml6OTVlUWFvaXB1Ti91cjhEM0JXN0RJR0YzL1g2OE56QWdidTNtSmtRV0ZY?=
 =?utf-8?B?eDEzTkpVQmJyRGVNaDA5cGxyc0cxdlBaZDd3MGdJMUkvNm9QMDRFSWVvUXJq?=
 =?utf-8?B?b0lOWFVZY3ozQVYwR2xVekVwK0NHN2VWdHRxOHhtc1pMOHZmemViQjNtckts?=
 =?utf-8?B?OU5oL3RwZ1dCNEwxczRYYXdLN0VmOGcrUFZscUVYb2Z6N3VpVFRiK1ZnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3238.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M3p1Qkp6Y2oxNmNWNzNpbHQ0ZTRuNzdYZmFtR1NyUWhyRkd4RU9NbGFoNHJm?=
 =?utf-8?B?THJnZ281TnhnbCs0d0RHeERhMGZidTltZkVtRVJxSU8rVFYxQnV1c09zTGRH?=
 =?utf-8?B?djRFRWluTWVtampGdSt4WkppdjB6cFNDWWR5SzVyWEl3N3dYTU8xTU9qajQx?=
 =?utf-8?B?blYvenRMZlM4TFlJTU9tZEFyVmw3dzFYem1FVWNaWlF6cHg4SWwyUEx0T2R0?=
 =?utf-8?B?aCtXRDZZc3loQkRvYzlZSTJaSUJnVjNCeXp3b3lpUURDT2lrZ3NBMTdnSFE1?=
 =?utf-8?B?MGNoL3VrVWpqbEF2VjdXeXhNd1ZHN3pMZkR5VHdvajhrcEg2djdBeWJyelFh?=
 =?utf-8?B?OElteC9SQVdQYjVzMUFzRGV4R0I2MGlaRTYydXNrUXA5Z0JOZVVTWDVROGRQ?=
 =?utf-8?B?VlhJUlI0RlM0eFRxUVJkb3BtMEhoemJWWURveWJCc3BNYTFaUXF3bk1tOU1B?=
 =?utf-8?B?ZUhnR3IyUSt1U1Y0bm82WDFoRjRVVS9oK21JRUVuMXU2VlZXSVB2UE5LV2l2?=
 =?utf-8?B?c3NnMHpZZ1hoaEFNWTlNUGd4WG5PWjJQM3JPYy96TUZtRHVJWFVpNExXeFp1?=
 =?utf-8?B?RXZTN2VyOS9iaGZVV2s1NzJPYzBGSlZCUFo3ZFFvc1FnYXlwU1pWVkpLMmp4?=
 =?utf-8?B?RGdpWDJyNFUvOUs0TDV1ZnhHb0lITEdHb1NRSE9NRXhDWDFER1JieDBvSXdl?=
 =?utf-8?B?SlkyYStaK2RmYnlGNnd0WVdqT014Smk2b0NEcTB6K1EwWDVrUXdnbHNkZ2k3?=
 =?utf-8?B?V3BmMDRvK0JsQnB2OE8zaTJrdzdXdTlZbWFLMjBSTWxNUHpDSUxmQUtZTjhW?=
 =?utf-8?B?TFJIdmxpTzh2TnFlbjNjNGNkTVFWUVQrZjVMTmpROWVaNGJvYzFHWEJaKy9P?=
 =?utf-8?B?RHRFeGJNb0NjZW4xTUEyanIweEZ0bmhmK2VaZGF0dzVabzcvR0JTZ0RsczJY?=
 =?utf-8?B?SUgzamE2N1lPbHQvSlBMN0h3YStDbm1MK2p3MDBLb05FdUg0bFMwZHFSL1VX?=
 =?utf-8?B?d0RpVHhXZk1ONkZHVjVheXlPenJWaWF2bnphQ084L25qVUM0eFNtMFNPdk5B?=
 =?utf-8?B?M0lieS9kR1NOcXk5WHZUanFJV0hxcTh1cnBiaUFBNFp0ODBRNUcyRDNWaG5P?=
 =?utf-8?B?alQrMVBvamQyTlROaSszdDVaOVpPQnMwREpMMDlSemR0MGowVlcvOE1ReDd5?=
 =?utf-8?B?T01HODR0Q2VpeFpDRVFwVWpzR0c2UFZNYkF2QVV1ckJOMnQ5cmIxVXJvUUg4?=
 =?utf-8?B?L0d1dlZkdHYzdzJ5elpBeGw5L1J4K2FtTVhWckxNc05WeWZXTHpPUHoxYjEx?=
 =?utf-8?B?Z3hwRjZHV1FMWVZPY2lGMFZvRFphc0VDeStZZXFEbHFnTEdPb2ZwLzM3SXpB?=
 =?utf-8?B?WnVlTmRVZ2FsOTY1RTNTbXM3UmFuNHpIYmJBSThuRmlCUkZoSVRsMEJMd3N2?=
 =?utf-8?B?emRRU3FaTjYzTllCeVRONDhZaVFrU1VaK3ZsR0RSTXA3OVVCMUdybDJXVjFJ?=
 =?utf-8?B?SUtaNTRYMkJIK2tlN0VKYWhvdXpudHRNcExJR2xXV1ZldnRrWG8zUm1XVnBK?=
 =?utf-8?B?MmVKTWM2MGZiVCtUUEswQlZFc01KYjNXZzFPRGVIYTZNZ2NIRUtTZTlGK3Vn?=
 =?utf-8?B?ek8xZkFzbERtbnA0a0R0MnhiZFcrTllpd3VENHRiQzBKcjBGaVRRUGNRd1hq?=
 =?utf-8?B?LzBIQzEvM1VOV0tjOHIrcE5nekFtd215d2FaRWt5SUZ4eFQ0dHJhSUNhd1d5?=
 =?utf-8?B?NWFjSWZGbEpyVHQ4ekNPTFFuUlc5NWVlZEpiN2t4dUFRNW41djBlekZRMlBG?=
 =?utf-8?B?MFV4QTlIcjd4QktHRmJlK2duVy9nQ21jTld4V2p6ZTJOck1HWi9hRStueWlv?=
 =?utf-8?B?aDNRdUNyQkR1SmhianlWa0dxaUFBSG1uWFNVdXNKMW95UFdLMEtIRFh6TTV3?=
 =?utf-8?B?SHNJdlhqSHZkcnl4UTZJSG9hak1adkk4eldsREVtN2pLTHFiYjR6S2xBZHN4?=
 =?utf-8?B?eWxnRFZ3czNVeDNTczBWMnhka1plVEdaYXA5aS9aK2xFL2VyZXl4aSt3dkY2?=
 =?utf-8?B?bFEzT05OTUhaTituUVREbVFIM1JPdHljSUQySEdPVkZUcEZtc04wUkNZcDNn?=
 =?utf-8?B?KzJ1MVJ3SjVTcVpDRTNORGFjUFc2QW9LVVBtaEtqMkFYUE9BMGNPMDEvaGlH?=
 =?utf-8?B?bmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6400d15d-576d-4ff1-4839-08dce8843e0d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3238.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2024 17:03:05.7774 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i3+xFYKvTWKD8sxtdayAKl3qIAj8QDNMjYKdteS5I43f4QQte4aWcMbVN5bldZfz7NrdsWEWu6ad3wZZCAzZkVvE5Q4hJ15WKruvoSwCNjo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6108
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


On 05-10-2024 02:38, Clint Taylor wrote:
> Some devices NAK DPCD writes to the SOURCE OUI (0x300) DPCD registers.
> Reduce the log level priority to prevent dmesg noise for these devices.
>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index fbb096be02ad..9920ec1f9c53 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3418,7 +3418,7 @@ intel_edp_init_source_oui(struct intel_dp *intel_dp, bool careful)
>   	}
>   
>   	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) < 0)
> -		drm_err(&i915->drm, "Failed to write source OUI\n");
> +		drm_info(&i915->drm, "Failed to write source OUI\n");
>   

Just had one small question here, I think NAK is one case, but in case 
of other errors/failures (EINVAL, ENOMEM) would we still want to reduce 
the log level?

Thanks,
Sai Teja

>   	intel_dp->last_oui_write = jiffies;
>   }
