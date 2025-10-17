Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6629BE761C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 11:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19F5E10EB85;
	Fri, 17 Oct 2025 09:07:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WlCd1U3I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D97D310EB84;
 Fri, 17 Oct 2025 09:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760692034; x=1792228034;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=xHji2ZSuRZDtaGw2GpApmGB2/7uL3rqfPl9BRkkUVq0=;
 b=WlCd1U3INUtUGg+yV0gzPYYuxC28JejLyUNiRFSrBgzB2QRvOtiy1U5N
 EhlOURwERMR3MeDTF9zkdgDhZF/0Z7FFrrnIFTBCL2NFXO4W8HckdeBx/
 9dJRjTFXrL7uj3Gkg3sHI3pHwX44s/kpwSV9r2mIQaoOqf6ga2gEBeBme
 qZKp2NUtB9sfE66CnagbWIo9SWTait6nyjW2CnFFBHhwMMKTCyhNXWdDW
 zKe+Vaok7YFwtWV5e3Vl7CbsWE7WlVwEe/Y1YMeRKkrWzjkbhiyYBhbT4
 1C4LQlC/RePMZhe/Y7dKx+JEdgtqB8w9UFGb2xjqFo/PhC0MbrNrdatyw w==;
X-CSE-ConnectionGUID: QAv4qhRPSQiMIUncus/NOg==
X-CSE-MsgGUID: SYhGKf6FTs2EQc1r8ZyzBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="63046130"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="63046130"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 02:07:13 -0700
X-CSE-ConnectionGUID: 6/xWV4RDSeOzdq+jWznWdw==
X-CSE-MsgGUID: dAQfIctAQ9eYPb94o72qdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="187962423"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 02:07:12 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 02:07:12 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 02:07:12 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 02:07:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SMnD2ZNenCFtDuIyMCZN4/nuaBs8KQPEfqvUv7K78KmkIhslfJK2MedYkICGRCIdYYchC45S47O9vs8cE8p4hWRssqRjKEdabnzpV82/+dCE4RQ1dxURBVMw+0EqCf3Oo+m8gu6p2p/vPZ0Yg8b93ZOyz+6MUh0VUdreNXRem0ulJxAr4A+27NJtVGO4TuJwBsy9P5rkfgov8qhOzjeQY1ocrqNbJwZ/8OVw5CWoN6UDN/ZsYpp7gbKYg5OvY5So8OFgcEY3OMlwQWIiPgCb24Yqe6STq3lEGtUOSuuAgOdJF8fRL8VxjBCvJYOmRgihY5d987HD9aR/aUCOeINuFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xHji2ZSuRZDtaGw2GpApmGB2/7uL3rqfPl9BRkkUVq0=;
 b=lRoFClDWh/J4p/JvvpycX+o13T2afKEx19MIFXSabbXOSBhDnjqIvANdWMWsv3iawmtPdb2etT7eFoOo9Z0npp9aO5lWF5QpzgUE1KozGjV9h5HL+b4Mz0DkWf742EfmVAiCInzE2FS2vphAN3lwHyQLHF9pnd3+uedBFZ/Di+OUkaBBMePsaD43OZg3EiHOPuGntP8124OrBeo1+F0MrDagvO1E8lhCvvGm93V41z6PEWmr0OM20CYM0xR4ImaWj8+N3xbRS5eaO+KlcMNQhHe7HQvdwW0kO0LzKDoeNIzjQZDH+3/9nj1Igb4CmkKL5W03GgW2OuItU2MPbQGlcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7289.namprd11.prod.outlook.com (2603:10b6:930:99::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9228.13; Fri, 17 Oct 2025 09:07:10 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 09:07:10 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/5] drm/i915/psr: Add helper to get min psr guardband
Thread-Topic: [PATCH 1/5] drm/i915/psr: Add helper to get min psr guardband
Thread-Index: AQHcPyUPz2Y/dnBy/UmpWoP/5QJAR7TGDIuA
Date: Fri, 17 Oct 2025 09:07:10 +0000
Message-ID: <4300808467d7a93f080b170faadee3748e7bb2e6.camel@intel.com>
References: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
 <20251017050202.2211985-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251017050202.2211985-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7289:EE_
x-ms-office365-filtering-correlation-id: 9845df72-9457-4afc-6e3a-08de0d5c8e0f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?RVJZb0ZHMDBrSTY2N2NJbHpOZk9IdkhEanJ1UHZrSE5GczNkTUhZKzVWVWx1?=
 =?utf-8?B?QXdHNlBNSmdyYzQrcmpadGFmRTFnR1JsMGUvN3NaZVRQVEhEZ0pVQlhJcC8y?=
 =?utf-8?B?S2wwRkx4T1NYbFdDSnZ2dTBMSnJqNlFQa0N3ek9XcXB2bGMzUFpaZkVIWmxi?=
 =?utf-8?B?VHRKclB3RjBaemtNSWdoWmNkUHp6MURUd3BWYmJRUEJpL1h2SnBLbDdDRnpp?=
 =?utf-8?B?V2ZMQjlBanR1aEY2a1p1WHZVRGJCTnNqbmFCOGFSRjF2a3NRam8rZzNEZEE3?=
 =?utf-8?B?NjFzVzRnZ1Rud0c0QlFjc2dlMWk3RTkyTnpVTDJ5WDRkQ093cUhjQlk1Sk9L?=
 =?utf-8?B?eldMcnp0Wk5QMXpXbGVremxzZE95ZExFKzJhL1hSY2hxN1l6VklzUWdmRStZ?=
 =?utf-8?B?ejFXYTdmK1NlKzFPWWFBQ1BGWnVUVWNyNTU5aTNJUi9PZFpJQzhRTTZ6UmVq?=
 =?utf-8?B?THpmdnc5cWtCM2t0NlRwQmxPc0o4bnJwTG00WjNxakIyQWNjZ2RZNnh1TzYw?=
 =?utf-8?B?RFNQY1I0MkdzeTQ3MWhHUC91SnlGQlkzRVZHRzY0WmVsZmlCWHNKV3U4Q0Fa?=
 =?utf-8?B?SFRmNk9vRXdDaEMxUitOSVpmR3hIclZRd3dJWXI2ZXA4YSsxZkRUYldhaFlZ?=
 =?utf-8?B?QWlJbFFDRk1iMml3bEVqdXg5aWNjWlZLTEhiaHhXYnpib2lOYjBOSDAvcGNu?=
 =?utf-8?B?N1JlQkhYOXVlNjNkRjFUQThZaVZHR3Q1WXlhNFhUWktRSExvVlNUU2JNWUR6?=
 =?utf-8?B?SGYzSUgrRHlJdThQMGY3M0JDNCtHL3dOdmJpc1pZU3ozZUJGanlralB1bzhi?=
 =?utf-8?B?clFheksyaUs1NUY5TmpzaHc3ME84Q0lNZUpQK1NkSDJqNXV5MnRxWER3aG0x?=
 =?utf-8?B?TmR6YWhtRmtVbDlLNTRVRmFBcFZaZnZCRkUxOXEzZEtTNkFKR2ZycjVZNUhy?=
 =?utf-8?B?UTdhZml0S0prRVdwUUVWYzQvYkN1eW9URFZubFp0VnFocFpGUGxxOGp2Nm5h?=
 =?utf-8?B?ZmovdXRIZjB2L1Zmb0c2K1d3VTVCaVVzdlFvYUxMOTg1bzg0dEVjaUtldWh3?=
 =?utf-8?B?ejlXSktWdldMTnVQZFQyaGZ0Vnd4YUFJNmU2SXRxYTBHa3FGSVBabnJ1M1Vl?=
 =?utf-8?B?ZFU4YXhOZEo4UDEvaEZGbHcxNElCK0tJM05OSWZ6L0ZraUZwelpXa05RQkly?=
 =?utf-8?B?dTZ5NTlPSVFIeEpOUXEzUW9iQVM0TGVjZE1BZFZPWDd4a3AzQ2RzSFoyVkNw?=
 =?utf-8?B?UVBycnNwRHNPcVBaSTloSTZ4QmVCenU2U21GdEVTQ1psaHJ6RHRqem1FVHRZ?=
 =?utf-8?B?cjlpV2EwZlNGVlhUTzg2VHBJWERwaU1DN1lMc09nNUFrek1zbTZxYlBVYlhi?=
 =?utf-8?B?U1ZLa1lhTVBwbEZFd3lxLzdqckIzeVF1K3MvdVpTR3JKZ0FhaGZidnpLTnc4?=
 =?utf-8?B?bWxiQTFYbHVUWDJWV1VkbDh6eEZMeUtWOGw5Y01RS0tGd05JenZrU1MxdkVC?=
 =?utf-8?B?N1I3UjEvWXd5a3Z4Q0Exb2kzbUpCd0YybmpnMWNnQW9FOFRyZWxESU43cXNJ?=
 =?utf-8?B?aEhzQ0tOVnIyTXNka3VkU1dBVFhmbmVKcWZUbkZCZnN3YURZV2hSTGFCT0dX?=
 =?utf-8?B?YjFkdjZacmdpZUVycFZQa05Xd3JrVHdPeExTa2IwR3hWRnR6Z0pTVVpaZFZH?=
 =?utf-8?B?bVM2UFBqUVo2WkhIdmozbzlvU0Vmd0JIODE5VnhJWGZjNzU1cUFqTXRGV1Ex?=
 =?utf-8?B?cUtNVkNMZWhWcy84dTdQdXdjRHpuakF5M1FmdWFtSGFNZW9UdUphMmhnTW0w?=
 =?utf-8?B?b1FOd2V0T0k1eFFmVWlNN1pOaDVISG9yOVlSNnA0MVV1VGVnTjh5aXFqUGFq?=
 =?utf-8?B?OXNlcFo4SnQyZmF2bGwwZUZLT1lzanBCS0JBTlMyTUpxRG55ejhOY1pHSHM0?=
 =?utf-8?B?V3NOUHpUaDkxT3dqMkdkV0RhYWZzSEs2ZitGemxKelBDU3lSemNQaDczRFEv?=
 =?utf-8?B?OEF5U0h3aWtqZTJWYy82M09jVnlYeVQ3YkNwQTRTcHg5TDBHR1lqUlk3T3Z5?=
 =?utf-8?Q?S1O6c+?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TVFMTHFYZ3hZMEtVQ1lrcGxmQy9jVGNWMG9nTms2dmhpNmtFcG5PM2hiSERh?=
 =?utf-8?B?VzJJOER6NWsyV1hNdTBNelFzYjVVdDU0ZzF6QWV1M0UzSnFYWmZ4L0R3OE16?=
 =?utf-8?B?WXJhTTNBempyRit3dFNncUkrczYzREd6b1lDZnJQamJyVlp4MGNlclR3ek5O?=
 =?utf-8?B?MnVOR3lveStBaFV5NE51OHNqTVVwMEVNbEczajdkVGF2T29VM2xuNWVUK1Ny?=
 =?utf-8?B?NFhhaG5ML2tWU1F3aVJ6d3o1RHNwU1h5VklpVEUrdEZSYzhWK2t4MHIycW95?=
 =?utf-8?B?ZUNiVExGcGVKcllnRW85ZC9YbE03YnJRMVoreUV0dFRoWlRiSGlwc0Q3WWpF?=
 =?utf-8?B?YjJiRytSYVVrVFgwdUprN2dOdE5SeDlmTjdPZElXQ2c3aUw1bFpWcER0cmUx?=
 =?utf-8?B?bC9WaG96MUwxbDArc1J4elcvWDk4YVR0L1lhdWJZWVpoZ3BQalFFUkd6cmNs?=
 =?utf-8?B?L0xSYmR5UGU2Rjc2RFpoTzJQbGtqZC9rS2lOeTl3UjZXQkVJL1FaejFFR1I0?=
 =?utf-8?B?azNvbnI4aUxabE9OYkh3TnZIK0kzWjFzM29MbktoYWQvYU02b2hnV2dCWTJJ?=
 =?utf-8?B?T21rSXRmNC9FY1ZuQ010UFRNaU54M3VKYXNPbzVOVlcwT1Mxdm9sUUZFdlJv?=
 =?utf-8?B?cVJLeVY0bDRzcWNhR3dPVWM0YUorRkZhd2p6MGZyVVBXck1VeUd1ckh3aURK?=
 =?utf-8?B?L2RFNTVmT3J5RDZYWDYzdFJlaGplUEk5emxCUTVnRmdZd1orVXovNTRjSUFX?=
 =?utf-8?B?akx6MjZLOFZRclpFSlFZWXg4TXFXNUdlSElOenhYNzhvS1BPWER0aFdMTlVP?=
 =?utf-8?B?N1A0SEtKaU0ybWxnSXo4aFQ2bFRGVHlVaWJsWlFuTi9BV1VxSUZVZklicXoz?=
 =?utf-8?B?NkhSSmpJRkU3VzRIY1NLNlhyT1ZJWkdkOTlVb08veDZaSmZCWG1SQjZuMGxP?=
 =?utf-8?B?TGJCejhHWUNyNU56VUMxU3hqOUQwajBzaVc0eUR5c1ZkRnh2bldIcUcvbFRF?=
 =?utf-8?B?TTU4WVhhY0pxbVNyT3pWalNTV0FEOVRRcTJmakdWKytyeWtCZzRhQ2ZJYTh0?=
 =?utf-8?B?a2xGU1owMk1tWkpVcjluY1Z0SkVEdzMrZFpJcHd2SkFaK0l3RXloc1BRRUs2?=
 =?utf-8?B?aC9YQmlDSVhSdjN1OHN2bU42ZnN2SU5KYjNnRDVMTVNDNk5MYzFTN3B4MmI2?=
 =?utf-8?B?RkZuR3llRyt4VUNUeEZNcnVvU0VUY3hNYm1pTHV1aEoyRnhpTFZCM0w1SEdX?=
 =?utf-8?B?QUw0QlBETWt1aE4zcU5uWXl6Ly9nSEZnTjNISzkxeTRvZWJGMmVSck9mNk11?=
 =?utf-8?B?OHdVdG8wbktqVjZEb1h5ZEloM0huRmQ4SnAyOHNrWkpnd2tnUnJBelkrbExr?=
 =?utf-8?B?Y281UEJwYll4a2xES0NkZjZ4aDRtVkxFVkJXOTA5SVJMMWxxZ3Uwbm91bzdL?=
 =?utf-8?B?SFg1WWQrdDMydENCRElPdE1mVUxVYTNLaXlrZzI1U2IxWmVVSmEzZm1qWkds?=
 =?utf-8?B?RU5NQXhsN29jSEhqbWIrREVRc1YwSmcvbisvaWRqcm01SjFOUmliQTd6dEZN?=
 =?utf-8?B?TVlQckRiQ3pVV1QxMmI1TEl5THBpdVdoVXhYRytEQW5YT2grcXpibDY0cldt?=
 =?utf-8?B?N2l2THFWQXhqeWEyaVRCR2daYjRZZjBVb0J2OXpDbDR5d0pETUNiUEg0MUUx?=
 =?utf-8?B?bVRKSFNCMzhWVXpEZ0NPV09TeE5lcWhnVHhLMWovQXE3K0JJV21uRVBKenJY?=
 =?utf-8?B?cWs5M2cxckhZRWxRblRpTFd1ME1aeU1HR3BLL2pPdE5raGdLWWVvVzlGV3Vz?=
 =?utf-8?B?cStIeFd4TVgveWswWm5PdnBBSFJTN2tmQnBEcml1TitKVVlOVGRHR0tzaGxn?=
 =?utf-8?B?aFI5MFl6MHdpQW1wWlM1UmVRS3VSY0ZhYkpaM1U5aDNtYmZiLzZaVTVMOTU1?=
 =?utf-8?B?dGdma2Z3TlVYNHpMQ3JIT2d5Q2hrQWQ3cWlBNWovakUxcG5QQ3dkWFEzaTBO?=
 =?utf-8?B?MjhIQjBkNUwyVFFVb1hDOUZjcmNyK29NcU0zR0IvY1RIOW8wSkNVdjd1Q0xx?=
 =?utf-8?B?VW5CdnFjTXV2Vm9hQWQwVmpDWjlCY0ViaXExL21HSU1pNVpCMzVwQkNQZFVE?=
 =?utf-8?B?K3Y2V25oVUFPdkJCSlhOMXB2MVhpS2hWV2V4c0NtWGtTclF1ZU9Ud0c0RzhT?=
 =?utf-8?B?NWNpZU9vN3JuYmlWQ2VlRXdhbFhXTnBUVGpVZjdWaUNoQ3ZhN05DdzQ2SHhw?=
 =?utf-8?B?RGpMc3pMa0dsOWQ5SmM4MngyK3BnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DA166FA128E0EC47BA599778C7202518@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9845df72-9457-4afc-6e3a-08de0d5c8e0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2025 09:07:10.4654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zwShqa8UVhI8Lhbm58Wx0x8DNTytRxGLPTcpSGL2G2diAsbrPJ93jEES/yE3RjajSdWsjT9PxHmsCTZuwuJhI76iGXyHP8xQZYv6eVGMZRA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7289
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

T24gRnJpLCAyMDI1LTEwLTE3IGF0IDEwOjMxICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gSW50cm9kdWNlIGEgaGVscGVyIHRvIGNvbXB1dGUgdGhlIG1heCBsaW5rIHdha2UgbGF0ZW5j
eSB3aGVuIHVzaW5nDQo+IEF1eGxlc3MvQXV4IHdha2UgbWVjaGFuaXNtIGZvciBQU1IvUGFuZWwg
UmVwbGF5L0xPQkYgZmVhdHVyZXMuDQo+IA0KPiBUaGlzIHdpbGwgYmUgdXNlZCB0byBjb21wdXRl
IHRoZSBtaW5pbXVtIGd1YXJkYmFuZCBzbyB0aGF0IHRoZSBsaW5rDQo+IHdha2UNCj4gbGF0ZW5j
aWVzIGFyZSBhY2NvdW50ZWQgYW5kIHRoZXNlIGZlYXR1cmVzIHdvcmsgc21vb3RobHkgZm9yIGhp
Z2hlcg0KPiByZWZyZXNoIHJhdGUgcGFuZWxzLg0KPiANCj4gQnNwZWM6IDcwMTUxLCA3MTQ3Nw0K
PiBTaWduZWQtb2ZmLWJ5OiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5j
b20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
fCAxMiArKysrKysrKysrKysNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5oIHzCoCAxICsNCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA3
MDNlNWY2YWYwNGMuLmE4MzAzYjY2OTg1MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC00NDE2LDMgKzQ0MTYsMTUgQEAgdm9pZCBpbnRlbF9w
c3JfY29tcHV0ZV9jb25maWdfbGF0ZShzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiDC
oA0KPiDCoAlpbnRlbF9wc3Jfc2V0X25vbl9wc3JfcGlwZXMoaW50ZWxfZHAsIGNydGNfc3RhdGUp
Ow0KPiDCoH0NCj4gKw0KPiAraW50IGludGVsX3Bzcl9taW5fZ3VhcmRiYW5kKHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5ID0NCj4gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gKwlpbnQgYXV4
bGVzc193YWtlX2xpbmVzID0gY3J0Y19zdGF0ZS0NCj4gPmFscG1fc3RhdGUuYXV4X2xlc3Nfd2Fr
ZV9saW5lczsNCj4gKwlpbnQgd2FrZV9saW5lcyA9IERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMjAg
Pw0KPiArCQkJIHBzcjJfYmxvY2tfY291bnRfbGluZXMoY3J0Y19zdGF0ZS0NCj4gPmFscG1fc3Rh
dGUuaW9fd2FrZV9saW5lcywNCj4gKwkJCQkJCWNydGNfc3RhdGUtDQo+ID5hbHBtX3N0YXRlLmZh
c3Rfd2FrZV9saW5lcykgOg0KPiArCQkJIGNydGNfc3RhdGUtPmFscG1fc3RhdGUuaW9fd2FrZV9s
aW5lczsNCj4gKw0KPiArCXJldHVybiBtYXgoYXV4bGVzc193YWtlX2xpbmVzLCB3YWtlX2xpbmVz
KTsNCg0KaG1tLCBub3cgaWYgeW91IGFkZDoNCg0KaWYgKGNydGNfc3RhdGUtPnJlcV9wc3IyX3Nk
cF9wcmlvcl9zY2FubGluZSkNCgkJcHNyX21pbl9ndWFyZGJhbmQrKzsNCg0KV2hhdGV2ZXIgaXMg
dGhlIFBTUiBtb2RlIGl0IGNhbiBiZSBlbmFibGVkIHdoYXQgY29tZXMgdG8gdmJsYW5rDQpyZXN0
cmljdGlvbnMgYW5kIHlvdSBjYW4gZHJvcCBwc3JfY29tcHV0ZV9jb25maWdfbGF0ZT8NCg0KQlIs
DQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+ICt9DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuaA0KPiBpbmRleCBiMTdjZTMxMmRjMzcuLjYyMGIzNTkyODgzMiAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+IEBAIC04NSw1
ICs4NSw2IEBAIGJvb2wgaW50ZWxfcHNyX25lZWRzX2FscG1fYXV4X2xlc3Moc3RydWN0IGludGVs
X2RwDQo+ICppbnRlbF9kcCwNCj4gwqAJCQkJwqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZQ0KPiAqY3J0Y19zdGF0ZSk7DQo+IMKgdm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWdf
bGF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiDCoAkJCQnCoMKgIHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKTsNCj4gK2ludCBpbnRlbF9wc3JfbWluX2d1YXJk
YmFuZChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+IMKgDQo+IMKgI2Vu
ZGlmIC8qIF9fSU5URUxfUFNSX0hfXyAqLw0KDQo=
