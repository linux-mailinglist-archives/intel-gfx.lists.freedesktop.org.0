Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F56928D07
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 19:26:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4344210E0DA;
	Fri,  5 Jul 2024 17:26:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZubTEPk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4886310E0DA
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2024 17:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720200391; x=1751736391;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=EwxTEL6nVkZVGyCFwsoUKZAtSDCFi06OyjZ+kop7wnw=;
 b=VZubTEPko0ZR3O9SgvXwTSgZgkYKZgQOoi74ygV+YqXJZuA1a7Zeo7ak
 0zreEuywtbuS9ESkVqtoH+38g0KfkC/GIsJ6LDZP354cboBARVCHr22E4
 kvvdwX6q+XWy2lNRvoSERizslErq1NTPc7MC1yM9SwdnCk0XyedWa++Dt
 ywLhVCQ0RsXt/iCdt9CQ0CDtyKAQKxg+Ky+0F5sTIwnM9879JF6fpQKfV
 TiGn1Up4A5fD+ZduiJylAYHTFLczW+2hoCZANt2Lv24N2mZT4hf5aLpg9
 3SRAiNUF/s6nw+z8MU4coAb+Gk0IYmTxdF95QNxkNWBzV7ABJaIyZ08Sq Q==;
X-CSE-ConnectionGUID: Bb108fEFTlWmdDoTDFL94A==
X-CSE-MsgGUID: 1Or1Cp5BSh2gLCR+0bliKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="28169318"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="28169318"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 10:26:30 -0700
X-CSE-ConnectionGUID: lMCmV5gtQKCThixo0Z/JUQ==
X-CSE-MsgGUID: P9iexn6eQFKuHj/NAgtqMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="51878372"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jul 2024 10:26:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 5 Jul 2024 10:26:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 5 Jul 2024 10:26:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 5 Jul 2024 10:26:29 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 5 Jul 2024 10:26:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RVcdfoi4Fb65ofraJ6c2gqZsplB5y7wD5afMN1HPaI4nKI8H6HprWje8cjk4GSCNGmDvnt8DKggAoC99NUwnwcbPuT0wvd60uiy9HEqu6xpV6ROdeULAZHzeCd3o0TIr/Yja3I6xajoFnDiIUxl6ifR1q2CWaUG+sHcS30EemCF0U5AwqdeLcy4jn1/5V43Ypu6JDZ1zw9oA0ztnjcfO7Qx+MtsET+xulOkBGGTMfrs4QpEV6pqkwKBhAkmqFAeWbzMDCNJlmn2JjYXsGQBPAKlPicbgZ+gdaqtxNXl3vOPeT/O+Q5QTRJ+aPtitQ8SeOij7mVGeYf6k76Jc6IHWFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EwxTEL6nVkZVGyCFwsoUKZAtSDCFi06OyjZ+kop7wnw=;
 b=JkT98NpSDrdiZZBirWMasxFcKfSuR6NnIg6MbDFAxHcKOam4r/PxkMoXZbBrZ008idZBfq3UEAiwZt7bA4SvdH7E5occr/I8HHjrtf1fViUUsNcTeHo1cdLeq4F6in6u2ZlLXR3EuAAW6NTxJu/sg5ad54s2bStaVKIw+hQetpQQqPyTv6a1L/Ks5iY8L34hXdgZmAZDd3GQct/ibMVmfjShSfjwvxrSO+53e26rgEYw89OFPQk9gEOFYcout7u34eAsDijryu6fRad+ao1A4sW71bvXMedEMrCvQvAchu0DTenjWMif7aHmxY9XWltWygxuUbap/MJD3FAbx1utxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH7PR11MB7121.namprd11.prod.outlook.com (2603:10b6:510:20c::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.33; Fri, 5 Jul
 2024 17:26:27 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%4]) with mapi id 15.20.7741.017; Fri, 5 Jul 2024
 17:26:26 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 12/14] drm/i915/dsb: Clear DSB_ENABLE_DEWAKE once the DSB
 is done
Thread-Topic: [PATCH 12/14] drm/i915/dsb: Clear DSB_ENABLE_DEWAKE once the DSB
 is done
Thread-Index: AQHaxmpUVnpTGK+Yr0ixmtno+IKzZbHoc9kw
Date: Fri, 5 Jul 2024 17:26:26 +0000
Message-ID: <PH7PR11MB5981874ABA9E53408DB82A9EF9DF2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-13-ville.syrjala@linux.intel.com>
In-Reply-To: <20240624191032.27333-13-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH7PR11MB7121:EE_
x-ms-office365-filtering-correlation-id: 559a0176-7252-4237-b61f-08dc9d1799a7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RzRZckp5b2ZwUzIxbkZoVE9ZeU5sMkJvd0Y5ZXRpeXQ3a01NcFZoMEQxS3U4?=
 =?utf-8?B?NnkrU3BhL3RuQXZLSkVES2MxR3RCZGxuZjVjU2Jna2hzdWFHeFUveUI3YXRt?=
 =?utf-8?B?eThzVVRJbE1QL3NGcnJTWnROaEVSQWQrTzlGMTFzZC9IaDlUTlQ1S2FsaTNm?=
 =?utf-8?B?V0Y4dWVkdTdMSk9laHd3LzZuVzF3ZENEb1g3K2d0bHNTRDlBd1ZicjJxMWhN?=
 =?utf-8?B?VVhvNlFJN0JwemZFb0VQRjdOSXZPYnpXY05samYvQ3JBMG8raENETUpleVF4?=
 =?utf-8?B?MkJTclR5MzZiQnB6MG0xdFB6c2hjS0FlbU9oTS85MDlpbGJvWGtNQnpsMU9J?=
 =?utf-8?B?TU9kcXJrKzlGUFVUVHY5QmxwMisxR3dvTDVCeHNqR2pKVitubUVsMEFFQ0FY?=
 =?utf-8?B?TFJGc0J2dlJwc21DWkd5cTZzRlpwY1M3NG41a3lmeC9lTnlaQ2JaT2NEME9r?=
 =?utf-8?B?WGdwYnp6ZnhNQ003UkJLZzlOUUJmbTgrWW53STFCb1hxdVVQdGJzblhodC9w?=
 =?utf-8?B?MEZweXNQazhqL0t2eHA1NVY0YTdrWmJFZU52MVhJZnphQSs0U08zZ1Vrd1RB?=
 =?utf-8?B?L3JWanRTVFpJUVVrWloraEYrV1pPMDhoU0hQaXdVQ0tzTk8rdUFyTTdVWVRB?=
 =?utf-8?B?Sy9pdTJtZVhOUi9zR2NqbWZnQzV3V2lhdFlydE9mOXB6REdwalUvSmc1TThL?=
 =?utf-8?B?VVpyb1NxTC80SURzdk95QTl2S25PTVZ5dWFpclJyM2MrV1RKbS80Z2V1KzBy?=
 =?utf-8?B?S25yb0t4Q1RuVzZZRWxGQTg4Lyt5bDFqejFMK3lJRVVMRS9qTk42cE1YVWta?=
 =?utf-8?B?YWVJOHhlcEpQb0NpeVpuRnkzQy9CT3V6S3puQUlhOHJpdk51cHRzSGxNeHhm?=
 =?utf-8?B?Q2Y5VkZtYkVmaXpxZEtCZVNNMER5RDJkdWtIelV5ZkRwdUVNU1JvT1lqQmR3?=
 =?utf-8?B?K0tCeTI0cE4vSEE4bEp3bWNhc1hRR3ZHcWNzSE04MVIvNXdabUVNNnZtSExI?=
 =?utf-8?B?RVZMNEVyOTJnMU1LdlJKVGJhM1dWdFRCYm50OE9ocXhxRUc5UlhuWFl2eGF3?=
 =?utf-8?B?R0pwdC9RMmNRb1gyYUwwUHlMTlVoY203YmJPVytSeGc1NmdZaS9hd2ZWRWd6?=
 =?utf-8?B?cVp3OTM5YXp4MUU2eTA0MStqa2Z2c3d6RXI0ek9hbzViVmFQU3BMc0hKMUpp?=
 =?utf-8?B?ejNsUGorTHAxQVBFbUt6bFBWS01CV3lQaXdVWlc0UmVPMEFiYSsrR241Z0Zz?=
 =?utf-8?B?NStJSU5ubW1oMHFHMWtCaWFXTEZHVzdVV3NDOHhaMGhDRmFhRTB0OUF3b1BK?=
 =?utf-8?B?aGpRQ3pSUnVCTDlHZWRDRGROMWxDaXF3SGJEWVlzQW8ybXpzQk5MaExaY3hG?=
 =?utf-8?B?RGV1LzJKU29PcmZ1YkNUSDlnMnZrcUtJL3Y4MU5hZFkxaGN4RXUwR095cXQ3?=
 =?utf-8?B?QlBDZDFnQmVRUG8rdU8xZnM5dE9GMXBFOFZVMzJBaFd0Ym5jVzcwUFF2Q0Ju?=
 =?utf-8?B?djNWeTNSUjZBd1E4K1hSWDQ4L2xKNlZURVljVEhHcDlmOHRDUnl2dHBaTVlv?=
 =?utf-8?B?TlFMN2NUMlFEK28xVE1mTWlOMHNFZ2FsQ1Y5UWxTQWliV1R0eGc1RFNiT2VS?=
 =?utf-8?B?SiswaUlqQnJwVmVVUUJRWEl6TmVtTkYveVNnZ2h4ZzBxL2YyeEk1UjlIempR?=
 =?utf-8?B?ZkJ6c3d4VFVraHZud3A0dHkzUFQyanlJUDFaVE52TEc2a01HWEdtcjR0ZUk0?=
 =?utf-8?B?czJZekJLdVJaSFRhZzYzRVlMS2YxTXYwbVBJbUhnRFprc2ZiVXZGNkZZdy92?=
 =?utf-8?B?WWVzTEVKRm0rL2pwTDVHaU5LMi9ydzczb2pnNFIwN3pHakY5VDFPR0ZoSkE1?=
 =?utf-8?B?TnBkNnREZ1YwcEJFL0FkNnJaRk5MZm9SaXNhdnhpenV1RUE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cVFjZ3gxMXRlb1REWmdDMjZqWVluZVpYS2VlTVR0cDd6M0FRbEEvSHlvc0Fn?=
 =?utf-8?B?bmZGd0UvMk1vZzdnTmJFN0VUcUxabjJNQXI3STNuZ0FmTll5a2g4ZmVlcCtz?=
 =?utf-8?B?NDU4Q2lQaEwyMDhiMXViOUtJY0tQbnB1VTVXUTNiMVZXMGhUOVRDemdlSmlK?=
 =?utf-8?B?SUFnMGhoVDV2QndVMUFGWGloYVR6WGQyeTJsZVQ3UGpsRWMxeHVubnFFU1Bj?=
 =?utf-8?B?TVl1VGJNZHFKc1o3N2VVbUtlajRITm1XZG9sMWdDR3ZTMWdzaEd2bzlDU3dy?=
 =?utf-8?B?WWU5bWRxOUNDWjh0WmlXbGV2WTg5SGhjY1JEUE5zdVJZSW5pdGpNRUdiaUhY?=
 =?utf-8?B?TFBjQWlOQlQvS2JleVJWbkZaaDZWQStVS1pmSUo3cDVtN1Noa3pTVjVOSVpV?=
 =?utf-8?B?VUVCbnpoZ3NRTWMzQjlSWllFVG1QcUpWMkdMMmZGVEw0QXBHZCt3bVc5MlVN?=
 =?utf-8?B?Y0Y1ZC9ScjZ4NFk0S2NCM2FoeGtBV2lKT01QOW91VVFQWE1RSE5KMktmRTJJ?=
 =?utf-8?B?ZnVkNFZwQ2pJQ2RwZDFMYys4VXpyR3prWGhzZFZhZ3lkYmtFbktmYkhpWWp2?=
 =?utf-8?B?VCtIZElUbGZKRGZPRkxGbEtqTllxMFdXQzZUbTkwNEY1bE9IeGpncmt2TGwr?=
 =?utf-8?B?L1RLTGNaZWN3SnBoQWNueEpuSmZIak1hNTIyckNQdnRHdG0zVWVmSE1NMjBS?=
 =?utf-8?B?U3lwVUEwY3JTSFgwVEdGQS96QUFHanhiZ0ZvYlVvUjRZY0Jxa3ZwMW81Uk5T?=
 =?utf-8?B?UEVBWURJa0k4L2tidTZqblZMeDJDanVMMHFib2VrVDlHeC9Nd0tieW95QzF3?=
 =?utf-8?B?NUdoUVJML1ZWa3YxU1lYcEJkY1hiMUpNV1haNDVFQTBCSkk5eFZWNThXYkQz?=
 =?utf-8?B?dDU5YjRKR1ZUQW5jQzhpVi9IeVdsbWNOM2ROakpiY0xvRjJEd0M1VE85K0lh?=
 =?utf-8?B?TFNkYUcyWi84QnZIekNqZU1pTm50bWNwNGkwQjh5VmY4SWxmV1ZYcnFGMHlj?=
 =?utf-8?B?WEVZOU1xSnRwaGp0bk4yTEZ1Ymx4RVJYRXJPMlJZaXg4NUNqWHh0K2gydTFw?=
 =?utf-8?B?ejkrNWV6RTdZUlFDNVVEUjM4ZjZ2K0VWcDY4bTZNT21jRVZGVlRYc2c5djdz?=
 =?utf-8?B?Njdwd0FjbEVNckRsdDlCdWJzUVNJMXkxK0hTWmdhSUkrdDdlRnptalkyMngv?=
 =?utf-8?B?RTBDSEpqZkpnM25weFZFVEltOGFKQVFLZUVoemtZZUpWVkxvbEZJQkhkNU43?=
 =?utf-8?B?SkVBRkhnazFuWWxUalpmQmFCOGtHUlp3VjZvNVA1OFlnRUQwSFBBNDVRTCs5?=
 =?utf-8?B?ejBBNGx6c3R6NWhGNTFRdzFsZERRQytiWTM2dFIyNnV1VWlPckdNUnpFYTJT?=
 =?utf-8?B?WllIbFNwdkFJL05XTCt1eGFiUUh5eVVBc1lMa0UvZVRSdXJWeTZMeWw5UWpw?=
 =?utf-8?B?TTRsMnJ1U05DVzA1NVlQVEFPVG1pcEVFVGo1N2dTUVRvcHhRUlhqejRZVXg5?=
 =?utf-8?B?MUNnL2tOblhFZEVIb3RrUUxYTU1PWkEvOFVkQWFNeUYzdHEzQzFWM2RGZ044?=
 =?utf-8?B?aVZtZzRUNUtqTXBrQ1ZSckFxalNWYjA1V0duNENwQ2xiekhJbzNhMFI4NTc3?=
 =?utf-8?B?UU0ybmtUclErazhiby9qSURiaUNweDN2TDhNbUNURGorZnk4WnhSeHk1alRP?=
 =?utf-8?B?UEpPcldvbFlhR3ppVVdwc0xSekhhcVB6cTBzZ0ZDVWU3dWUvdlg4VTdZelc1?=
 =?utf-8?B?WGZuUStUR0ttU2Z2Ym54dE1MS1kvaWVCb2FvblRtOERBcWJkT2w5d2dxc3oz?=
 =?utf-8?B?RWVHU1FCdDZJY1UvR2RsU0RIeWI1MFFLRWUwOFlCY2NKTnpmSVo2eFRHMG1B?=
 =?utf-8?B?bGttTmM2YXV1TW1oMG4vQzJlekFEMjRoSVM4Z0VPenNZZktpaExQVXdNazll?=
 =?utf-8?B?N3hmbnZyRTZLekpUSndZWXg0VFZzZkVtSVZLYVRqZDRlZ1R5Vm9BUzdTdzVY?=
 =?utf-8?B?NjdaK3RiQnpWL3NxVnlnZU83aVFyMWVtN1p4dE4wYVpSblpXb1dJbm4wamE1?=
 =?utf-8?B?ZllyWldHVVhqM1BHblFrVklib2pVa2w0cWZFRFlWdndDUFdsZ2tpOUg4Y1pl?=
 =?utf-8?Q?F+edCRFFrGCV7wdj6BqrYlZ6h?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 559a0176-7252-4237-b61f-08dc9d1799a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2024 17:26:26.7142 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ClopAl2HOSW7PX8or267gBOJ9r4K0YBjGvH8vrLTa9EGcFw65rSGAPuwwoq1XJr/Z0XjeqAfw1V2SYJb+7J4ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7121
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMjUsIDIwMjQgMTI6NDEgQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDEyLzE0
XSBkcm0vaTkxNS9kc2I6IENsZWFyIERTQl9FTkFCTEVfREVXQUtFIG9uY2UgdGhlDQo+IERTQiBp
cyBkb25lDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiANCj4gSW4gb3JkZXIgdG8gYXZvaWQgdGhlIERTQiBrZWVwaW5nIHRoZSBE
RXdha2UgcGVybWFuZW50bHkgYXNzZXJ0ZWQgd2UNCj4gbXVzdCBjbGVhciBEU0JfUE1DVFJMXzIu
RFNCX0ZPUkNFX0RFV0FLRSBvbmNlIHdlIGFyZSBkb25lLiBGb3INCj4gZ29vZCBtZWFzdXJlIGRv
IHRoZSBzYW1lIGZvciBEU0JfUE1DVFJMLkRTQl9FTkFCTEVfREVXQUtFLg0KPiANCj4gRXhwZXJp
bWVudGFsbHkgdGhpcyBkb2Vucyd0IHNlZW0gdG8gYmUgYWN0dWFsbHkgbmVjZXNzYXJ5ICh1bmxp
a2Ugd2l0aA0KPiBEU0JfRk9SQ0VfREVXQUtFKS4gVGhhdCBpcywgdGhlIERTQl9FTkFCTEVfREVX
QUtFIGRvZXNuJ3Qgc2VlbSB0bw0KPiBkbyBhbnl0aGluZyB3aGVuZXZlciB0aGUgRFNCIGlzIG5v
dCBhY3RpdmUuDQo+IEJ1dCBJJ2QgaGF0ZSB0byB3YXN0ZSBhIHRvbiBvZiBwb3dlciBpbiBjYXNl
IHRoZXJlIEknbSB3cm9uZyBhbmQgdGhlcmUgaXMNCj4gc29tZSB3YXkgREV3YWtlIGNvdWxkIHJl
bWFpbmcgYXNzZXJ0ZWQuIE9uZSBleHRyYSByZWdpc3RlciB3cml0ZSBpcyBhIHNtYWxsDQo+IHBy
aWNlIHRvIHBheSBmb3Igc29tZSBwZWFjZSBvZiBtaW5kLg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KUmV2aWV3
ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQo+IC0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8IDQgKysrLQ0KPiAg
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IGluZGV4IGNmNzEwZjBi
ZjQzMC4uZmFkMzdlNzg1NmIxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RzYi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHNiLmMNCj4gQEAgLTQ2NCw4ICs0NjQsMTAgQEAgdm9pZCBpbnRlbF9kc2JfZmluaXNo
KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikNCj4gIAkvKg0KPiAgCSAqIERTQl9GT1JDRV9ERVdBS0Ug
cmVtYWlucyBhY3RpdmUgZXZlbiBhZnRlciBEU0IgaXMNCj4gIAkgKiBkaXNhYmxlZCwgc28gbWFr
ZSBzdXJlIHRvIGNsZWFyIGl0IChpZiBzZXQgZHVyaW5nDQo+IC0JICogaW50ZWxfZHNiX2NvbW1p
dCgpKS4NCj4gKwkgKiBpbnRlbF9kc2JfY29tbWl0KCkpLiBBbmQgY2xlYXIgRFNCX0VOQUJMRV9E
RVdBS0UgYXMNCj4gKwkgKiB3ZWxsIGZvciBnb29kIG1lYXN1cmUuDQo+ICAJICovDQo+ICsJaW50
ZWxfZHNiX3JlZ193cml0ZShkc2IsIERTQl9QTUNUUkwoY3J0Yy0+cGlwZSwgZHNiLT5pZCksIDAp
Ow0KPiAgCWludGVsX2RzYl9yZWdfd3JpdGVfbWFza2VkKGRzYiwgRFNCX1BNQ1RSTF8yKGNydGMt
PnBpcGUsIGRzYi0NCj4gPmlkKSwNCj4gIAkJCQkgICBEU0JfRk9SQ0VfREVXQUtFLCAwKTsNCj4g
DQo+IC0tDQo+IDIuNDQuMg0KDQo=
