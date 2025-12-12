Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3965CB92D9
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:46:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 506BA10E90D;
	Fri, 12 Dec 2025 15:46:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QRU5BCC/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A53C910E907;
 Fri, 12 Dec 2025 15:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765554391; x=1797090391;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=m6Kl/oWuLClixAzeOhg2F+OIsW17GuaKdTZ4lBZ/qtM=;
 b=QRU5BCC/ItoCUygKyqIwKV99D2O2UjO2YYzHtOrp44n9o8Q6UeaEMwq+
 W7PAVnN75ZrcCdQvp1zkWj358MM9pajyQEjFNy4iWJPY55Aw/yvM24YLH
 wkj2/5soucaKaIYQ23a0lXo69D5w7y4w/cft51Spl0tp2tpfmJ4M4648m
 wi3azMS3r/29U0eMvKkXNH2V/T+kxfsayFOuI8vHoNznJnHwaBReTOWW5
 9rlUqYME+j90nbEHBxHPJPkaAfaF9cZzBdsB/6RaFT6XK0zZef3moeyQP
 Sr0s6cOTKnGknZeEXovzICEbewipIdny848KTTJJTKpCK36SNDuN/IQmU A==;
X-CSE-ConnectionGUID: 7sKcYDlkQcK1AaOJJIJVQQ==
X-CSE-MsgGUID: m5zPSY+eSGGfbcIeWXAx1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="78194895"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="78194895"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:46:21 -0800
X-CSE-ConnectionGUID: SJ/OVCWTSJiNp7Rz+CpvAg==
X-CSE-MsgGUID: eRET/wrDRGqMiqF5oxigSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="202039929"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:46:21 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 07:46:21 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 07:46:21 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.36) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 07:46:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WEWRir7h4F+anmzeaAHv8QFhQGwIssRcZeJATh/5viuudQ9IfwQbC7M8RQZNONTH6mjv4YJ1Im+crxlBZmMx7fZOUZiDw2ErtMEPmKAI5kAHToKTrCQxk3m0pg531bgmNbvqvvjz8MU4296dU1JcBRUBaxZ3QIZPB2dLt+XPFGByjuhFcVkGJy5bUIqnVZYZdfRN5U2HehzJ0wgRibqJNcxhdALGtaV9jQgQnND5kCvW3DQqoqJNLRJ+bnuKl5HQGTmSyDV6o4SKQzf8Yt8jZlmKVyRaGjdkqY6pcsXniMXKNWOcK3idzlksyYGImHGmAmSJE7IezKqLlLHb3VQu4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m6Kl/oWuLClixAzeOhg2F+OIsW17GuaKdTZ4lBZ/qtM=;
 b=cutPeW/ufc0cBRBZI5hdb0NX67hYFw2OclLM1jY01Qz9vsVTO5lctLcQrmQKg998cF+77COPOySsRZc3SHo/1BnXglzEgLcHjtIUsOF7Cy4fKkG8FjLCZ8qVpeOr/SgxIijjtK2T5jecktwmGn4djihUzevNnsKsY0EfjjbdgD1b1sz/vv5RFAZ6GunzGKxxiBUKBe9J0D4DeuwafxKJBwXgpfLnMVdqne6EeLmKkheVWRXdwFBj92fe0gS1j3BKWqaCHQXmf+eVXhD2SXALQU3eYh9cuUN+mArsd9avj67cqpqECaiJWQVHC1W0t3NdQBlSaJbkdYSPLueT39tGGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH0PR11MB7494.namprd11.prod.outlook.com (2603:10b6:510:283::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Fri, 12 Dec
 2025 15:46:17 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 15:46:17 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 15/50] drm/i915/dp: Factor out
 align_max_vesa_compressed_bpp_x16()
Thread-Topic: [PATCH 15/50] drm/i915/dp: Factor out
 align_max_vesa_compressed_bpp_x16()
Thread-Index: AQHcX8vWP0Sq0aIteUay91LskqxyxrUePU2A
Date: Fri, 12 Dec 2025 15:46:17 +0000
Message-ID: <6910972d0d8686ace253bad6db6ad45516244f90.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-16-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-16-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH0PR11MB7494:EE_
x-ms-office365-filtering-correlation-id: b34f64fe-c81a-4dce-8ac2-08de3995969d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?NVEvcVk3WVRtby9uTk1ZMVQ4QjczVnpDSHV4RWVNeWY1WlZkU00vNGpOZE15?=
 =?utf-8?B?T2ZKYWQ2UVlQU2xHb1JOUzlPaHhvc0hhZmZYa3VPckVqMlcwRnZJMjVGc294?=
 =?utf-8?B?M2FXYWZYYWRQMm1OK0tOWSs2NUtCckdVNU9OUTRYYjRtMnBrZCttbmZYdEtR?=
 =?utf-8?B?MzJkejRUc1VRRWExUU9wZm5PeU1VYTY4WjNiVHpKNG5RMGwxYzBPWmZRMEdV?=
 =?utf-8?B?RjNaQ3hJU2phMUpscEZOcktLejVYZkRKaXR6UlNEaFIwYW9RZzYxNWhNZWxG?=
 =?utf-8?B?YkZIR0oycEc2bU5GOVBVRXZZNXI3d1BWRkQwcTV0M3FYSkZlWkxQSkRxMzJR?=
 =?utf-8?B?S244OEZGQnZFQ1ZWaWZJU0VCbnBZRS9uVVh4NSttdTQrNWtTQVI4RVg3Y2tZ?=
 =?utf-8?B?THViRW5lY2MxcFJ0U1lpb2hCME9oSXhFOXVzQzRrdmoyeFpwQjdPUEtlMDhP?=
 =?utf-8?B?Vjk4V3ZTc2ZwVGZDWkhLVTVjeU12ZmtzNDZ2V05rZmlRbGtaNU1aZFZWT1hY?=
 =?utf-8?B?dnZxbzVrdlM4OUpXOWQrT1VjLzRteHVHZ1R6U3lDb3NHb1I3TllmekhCbVNi?=
 =?utf-8?B?TmFWY05kYVVocXBXUnBic1p1TTcrTGg1M01uellNODRqSUxJOC9Sa0oweTFT?=
 =?utf-8?B?UUZWR01GZ2ZjMWNCNVloN3A2TVdTbkluL2I2cnRvK21ObUVBSDFTeFZZbEhK?=
 =?utf-8?B?Nng4UEQ4cks3eGFnVldZWkRVekxMRGNyNWZJRDNJYWJxZmlzelRTaGVNV2tS?=
 =?utf-8?B?SCs0enJjeE9WZzI1bGhjRWwyZmNpbGtwUUk5TXZhUkJPbjluLzhOWW5saU5z?=
 =?utf-8?B?MXFKQlBTcHRTdmxKYzNCVTV3RzRWYnN3WFFlNXRIMFFzM2YrWGI5K0dCQ2x3?=
 =?utf-8?B?WmkxOW5tbnd0Sit0d0FnNmQ4Rkc1enNMRGpnVUlnSTlpTXQwVVRxTlNia2N6?=
 =?utf-8?B?NjcrbHdQQ2wvQ01MR09BczNEQnNHSWVpMGp1OXZ5S0RGT29zcjBnRHJjR3Rq?=
 =?utf-8?B?MWgxbE5sWEttK2hRaTZpQUtEQzU5WXBtSzQxZnJCM2lqMFd4N0d4Vkl4MDdE?=
 =?utf-8?B?a2Z0S29jUEtoc2htYTE1N0djTFFxZCs2dlJQZnJTOEtSV3JnU0hGMHErSE9B?=
 =?utf-8?B?dHduTlk5cWtSc2RLVDRPb3lPaVpDQ1pZU01LMzlUWlZ4WDNyb29ZVWtmNXB3?=
 =?utf-8?B?S1hYUzB3ZHR4MnV2SHJ3aDgvUWk3aUtxNTFzdStHb0ZyeUtFbHJJbzJLeFdO?=
 =?utf-8?B?RkNVZDlSZ09CVjIzVVhKMlRldityVGs2Q0RoVkVjZDhZZDlNQnJSZG9oNDhU?=
 =?utf-8?B?enU1TE84dWR2Y0hka3BoQjJnUmVhNGlKNTRRcDJ5cHgrLzA2RUI0VWFLbFBv?=
 =?utf-8?B?UGZwUFVXY0ZmTWVTdlRTa2ViYmVqN2hzRUNJTXNWSVdiUjRvQmhJdnFEK1M0?=
 =?utf-8?B?bjJreUFmcXlSWFJCTmxORFpKS1ordW1zOFdLSGoxRmUvYmRYa1FOREVuWm45?=
 =?utf-8?B?MTZWOUprcWgyV0s2YS92czdVYTgwdWU5eE5ZSktKbDhidURCWGdRTThmRlFk?=
 =?utf-8?B?cDRMUS9LelVDQ1pma2MvSEZNbjgrQ001VXhYYXhESXlmakFmRi8vSE5PeDgv?=
 =?utf-8?B?RWowTmhXRDBUaitGbkRNQW9tYjREOWZIbWxlZzNEdk1UcHBiVllPajQxaVAx?=
 =?utf-8?B?WVFTc21kSzlWa1RhSFN1U0d1TmovSUJKMnY5amtJbE54aUh5UzVBd2pMUXhN?=
 =?utf-8?B?VUgvenlub2E4TlRJc3h1dnIvT1J4WnZFSEZTaVdwNUtSN0ZENHlFVWFXSnNH?=
 =?utf-8?B?WVRvRFFMSUM2c3ZmSmw2aURlcndhZStVWkhxZkRYaGxUa05jV3dtN01Mb0dF?=
 =?utf-8?B?ZkNKeEdKcWNSbSttNjlXUW94MnZBQ1UyUE9lTUoyQTJjcEFPbG9OWjBtUFlZ?=
 =?utf-8?B?cno3aDVJOSs5eHJoTDBTYU5hdmYxck9HaSs0WmFIUG44eFlsQW1VOGFDMEtS?=
 =?utf-8?B?SGZKSmRvQ3Yra01qMkwwSkJtVzdHNC9qM2pnQnBvMG1ldkFoaVJTSFBQcUd2?=
 =?utf-8?Q?5xlxtc?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZDNleVBnNHE0TWxreTByMEpXYnU4SlhyaDM1WjB1N3lqYURnejNQOWNMQ0ty?=
 =?utf-8?B?ajl2b0VXa09XVDJtMnVBU013cndzVm4zYXBDYzBMcXYwOUd2cXZINWxVNDNk?=
 =?utf-8?B?ZXBTcDdUM0VDYTkxVGMrRVFIMFhuakU2Rm9NT0FJSzZHYUdIRVVPbzdpYzMr?=
 =?utf-8?B?TG1YS1V2eVIrM1hvUHhvNHUrOTJqbmlzY0xTR2xnV0NLdnRIMG52YUN1Yllu?=
 =?utf-8?B?dTFLQnh2WEdCQnVOcm9Zb2FhdUZiZFNGWUlrU2hyQk9vWHJZYlNlcVBPbVl6?=
 =?utf-8?B?K2FrYXZ0YlRHcGlCVi9xNWRWaUxZTjhwZjQweFNaVW9EeFlxWG9DTWYvWFBG?=
 =?utf-8?B?WU5ERTlVaXVwazFjbWx5eUhHc1hLWEhKN3BGdzBRRnJUTFRJK2ZqdUEyditl?=
 =?utf-8?B?RnBKVkV4aDBkcFlQY1FqZnpsUjJSNEJESDFQRHV6dU1aTDZxcGxMNllMaE5L?=
 =?utf-8?B?aisrVkRsVFZ2QU1DWVJTUXVYT3E4Tll4OXozZ2pkMm9RQTBiaktsMWZwczNy?=
 =?utf-8?B?Z0txR1IzenhWYWJBelBLNVE4TkU0VUltenFWNmxSRk1BVFNBSjRjZUxUZ0xG?=
 =?utf-8?B?T3hhSDlYejNnYTFldkg0NFBMQUFJZ0RFMjhKRnVCd3FaaGZmR2hmeE1GeGZu?=
 =?utf-8?B?RjhpZjMvTWdQVVcxUWZxZ2lxaXdSYWlWc29ISzc3LzJuYjNWbklOZzNNTUk3?=
 =?utf-8?B?UVgxMTBrTkN5d0Nkc0xEcFgvaXh4YlBEMVhvMzJ0NFdLMUNXQUhOcEtxM3dz?=
 =?utf-8?B?WTRHSXVCQ01lZ0RWT2oxWjRERWNGcnd5NDR2blZUUVZtcUZwSUxtemptejhs?=
 =?utf-8?B?eGNVbUxYdmRrNHFpR1g1R08xZDE0NGNRalhUMmVRZjN5SDlzdWpaeCtIVnFv?=
 =?utf-8?B?V2NKWDBWbW5pNTV5aUtQWjFLS0QySE1GekdEVzVpYzltZlBLeDN2d1hRWnRt?=
 =?utf-8?B?Z2REdEs0cktrZkRLSm9tcDdVb25YUGJHMlBkcDNVcHRJNFpaWVF5eUVDVjJH?=
 =?utf-8?B?Qk9VcFZZZGlqc21PcmR3cWRNVGFIaGVCa2NlWjFTMU9rZ2ZQeTM2RFZHUXJ4?=
 =?utf-8?B?bmZkeE1kRVA4RlFBLzNvbS9WRWNvSDEyc2J2ZjMyVThMWWdwZjMwVTMrVXZB?=
 =?utf-8?B?MmRXL2x5Y0ZCZ3VSempVaGpneEI1S1RMVTk3Z2xMNWZzVjBLNXV4MVNwVGc2?=
 =?utf-8?B?UDd2ZXZLYlR0cmtBS3JnU1E3WVc0UFhFNGwycW1sdG9ybzVjRTZKM3BxR2ta?=
 =?utf-8?B?UmQ5d01kMmJKa2lGVG5pV2JWRnJ2QUU5UUdOZWlIdUhsVXFyOFhPdnZ6VVQ3?=
 =?utf-8?B?VFF3cXBYNmlXVGtqaW5wMk5EZUJROTBLWFVTd0NVZU9XOHNFdmd3eE93SDd0?=
 =?utf-8?B?aFFuUUxJNjVFSVdYTmFpcFgwN0gwRTRFck1FcWlNL1dQWGQ5TVpxYTBjcWZ6?=
 =?utf-8?B?Q3pLSG5wc2t3Q3hXL2d4MGdObTd2dU1EWXZmK21GamFlM1hPZkhpak4rczIx?=
 =?utf-8?B?MnhqUmUwZEJJSXJ1Nzk5WHRCZ0hHTkpERUIrTnd2QWF5MHNISFJkUkdraFpo?=
 =?utf-8?B?aCtYbVFjVjRlVEFnUWhkRWljUUdQcUZiRWZvNS9IRW41cmNOYTJ3bUpvTDln?=
 =?utf-8?B?NE12aGlpeitpajZ0cGZ5NnJDRmFZbUtYVDJ0Y0FyNVMyWDM1KzhuaDRyZWxU?=
 =?utf-8?B?M2wxNWFDLzRybmdndytQcERoL21XWVFiNkpQby9YYU9uVVBFU05oc0ptNkZn?=
 =?utf-8?B?VFZKTnFQbHgxKzZ4bURGeGNWZTFHOWErV21JVTNlOXNLL0tacEhUNVJzb05H?=
 =?utf-8?B?ck9KUjg1NmxkSHhtNEpGN2d2Q1p1TVQrOWxJUGM0aDB4dktXR3ZzM2d3cHlz?=
 =?utf-8?B?R2liOHdTSVkxSXgvaTV4NTZhc3ZuRzJiUDk4V0NLRk8wSGVJNEdXRERrdGdr?=
 =?utf-8?B?OGYrMDZ3TjRBK2s2OVVObzd5SHpSRlZkUWxaT2F4V1BRelovcFBZdThwT0dR?=
 =?utf-8?B?aTBhaVBWamtsUmNQS2xrdlVQWWd5ankzV3lsL0c5VmtOdkxRVUtBTk1ydEJK?=
 =?utf-8?B?c3dLM0V5UkovY3hMRmlVN2xzSG9GVmZwWWpXRzJkSHBzM01pMWRUUkx0OE5l?=
 =?utf-8?B?QUduVTRubVdFaHhlU2N6aWV1TzNicjFxVk1TZE8yNGJJRGdwSzZOOEJySkFG?=
 =?utf-8?Q?FzgwV3PfXzRqJP0N6b9djgE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <50BC97B825277740B4FAE1F09B52DDBC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b34f64fe-c81a-4dce-8ac2-08de3995969d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 15:46:17.2629 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WD0m7mrtw4OKobw6zlmqAG4NxXlN8Yf/ObXk5SNMLGf0vCZOVpd2O9+2lDZpAZt0NcyNGtbNXyy0lYdK0LOIyp2Kocy+RL4Jlyu3fWuHCaY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7494
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjQ5ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEZh
Y3RvciBvdXQgYWxpZ25fbWF4X3Zlc2FfY29tcHJlc3NlZF9icHBfeDE2KCksIGFsc28gdXNlZCBs
YXRlciBmb3INCj4gY29tcHV0aW5nIHRoZSBtYXhpbXVtIERTQyBjb21wcmVzc2VkIEJQUCBsaW1p
dC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4N
Cj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMzUg
KysrKysrKysrKysrKystLS0tLS0tLS0NCj4gLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMjAgaW5z
ZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pDQo+IA0KDQpSZXZpZXdlZC1ieTogVmlub2QgR292
aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRleCBkY2I5YmMxMWU2NzdiLi4z
MTExNzU4NTc4ZDZjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jDQo+IEBAIC04NjcsMTAgKzg2NywyMyBAQCBzbWFsbF9qb2luZXJfcmFtX3NpemVfYml0cyhz
dHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSkNCj4gwqAJCXJldHVybiA2MTQ0ICogODsN
Cj4gwqB9DQo+IMKgDQo+ICtzdGF0aWMgaW50IGFsaWduX21heF92ZXNhX2NvbXByZXNzZWRfYnBw
X3gxNihpbnQgbWF4X2xpbmtfYnBwX3gxNikNCj4gK3sNCj4gKwlpbnQgaTsNCj4gKw0KPiArCWZv
ciAoaSA9IEFSUkFZX1NJWkUodmFsaWRfZHNjX2JwcCkgLSAxOyBpID49IDA7IGktLSkgew0KPiAr
CQlpbnQgdmVzYV9icHBfeDE2ID0NCj4gZnhwX3E0X2Zyb21faW50KHZhbGlkX2RzY19icHBbaV0p
Ow0KPiArDQo+ICsJCWlmICh2ZXNhX2JwcF94MTYgPD0gbWF4X2xpbmtfYnBwX3gxNikNCj4gKwkJ
CXJldHVybiB2ZXNhX2JwcF94MTY7DQo+ICsJfQ0KPiArDQo+ICsJcmV0dXJuIDA7DQo+ICt9DQo+
ICsNCj4gwqBzdGF0aWMgdTMyIGludGVsX2RwX2RzY19uZWFyZXN0X3ZhbGlkX2JwcChzdHJ1Y3Qg
aW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSwgdTMyIGJwcCwgdTMyIHBpcGVfYnBwKQ0KPiDCoHsN
Cj4gwqAJdTMyIGJpdHNfcGVyX3BpeGVsID0gYnBwOw0KPiAtCWludCBpOw0KPiDCoA0KPiDCoAkv
KiBFcnJvciBvdXQgaWYgdGhlIG1heCBicHAgaXMgbGVzcyB0aGFuIHNtYWxsZXN0IGFsbG93ZWQN
Cj4gdmFsaWQgYnBwICovDQo+IMKgCWlmIChiaXRzX3Blcl9waXhlbCA8IHZhbGlkX2RzY19icHBb
MF0pIHsNCj4gQEAgLTg5OSwxNSArOTEyLDEzIEBAIHN0YXRpYyB1MzINCj4gaW50ZWxfZHBfZHNj
X25lYXJlc3RfdmFsaWRfYnBwKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCB1MzIgYnBw
DQo+IMKgCQl9DQo+IMKgCQliaXRzX3Blcl9waXhlbCA9IG1pbl90KHUzMiwgYml0c19wZXJfcGl4
ZWwsIDI3KTsNCj4gwqAJfSBlbHNlIHsNCj4gKwkJaW50IGxpbmtfYnBwX3gxNiA9IGZ4cF9xNF9m
cm9tX2ludChiaXRzX3Blcl9waXhlbCk7DQo+ICsNCj4gwqAJCS8qIEZpbmQgdGhlIG5lYXJlc3Qg
bWF0Y2ggaW4gdGhlIGFycmF5IG9mIGtub3duIEJQUHMNCj4gZnJvbSBWRVNBICovDQo+IC0JCWZv
ciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHZhbGlkX2RzY19icHApIC0gMTsgaSsrKQ0KPiB7DQo+
IC0JCQlpZiAoYml0c19wZXJfcGl4ZWwgPCB2YWxpZF9kc2NfYnBwW2kgKyAxXSkNCj4gLQkJCQli
cmVhazsNCj4gLQkJfQ0KPiAtCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJTZXQgZHNjIGJw
cCBmcm9tICVkIHRvDQo+IFZFU0EgJWRcbiIsDQo+IC0JCQnCoMKgwqAgYml0c19wZXJfcGl4ZWws
IHZhbGlkX2RzY19icHBbaV0pOw0KPiArCQlsaW5rX2JwcF94MTYgPQ0KPiBhbGlnbl9tYXhfdmVz
YV9jb21wcmVzc2VkX2JwcF94MTYobGlua19icHBfeDE2KTsNCj4gwqANCj4gLQkJYml0c19wZXJf
cGl4ZWwgPSB2YWxpZF9kc2NfYnBwW2ldOw0KPiArCQlkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0s
DQo+IGZ4cF9xNF90b19mcmFjKGxpbmtfYnBwX3gxNikpOw0KPiArCQliaXRzX3Blcl9waXhlbCA9
IGZ4cF9xNF90b19pbnQobGlua19icHBfeDE2KTsNCj4gwqAJfQ0KPiDCoA0KPiDCoAlyZXR1cm4g
Yml0c19wZXJfcGl4ZWw7DQo+IEBAIC0yMjE5LDcgKzIyMzAsNiBAQCBpbnQgaW50ZWxfZHBfZHNj
X2JwcF9zdGVwX3gxNihjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3Ip
DQo+IMKgYm9vbCBpbnRlbF9kcF9kc2NfdmFsaWRfY29tcHJlc3NlZF9icHAoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwNCj4gaW50IGJwcF94MTYpDQo+IMKgew0KPiDCoAlzdHJ1Y3QgaW50ZWxf
ZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiAtCWludCBp
Ow0KPiDCoA0KPiDCoAlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTMpIHsNCj4gwqAJCWlm
IChpbnRlbF9kcC0+Zm9yY2VfZHNjX2ZyYWN0aW9uYWxfYnBwX2VuICYmDQo+ICFmeHBfcTRfdG9f
ZnJhYyhicHBfeDE2KSkNCj4gQEAgLTIyMzEsMTIgKzIyNDEsNyBAQCBib29sIGludGVsX2RwX2Rz
Y192YWxpZF9jb21wcmVzc2VkX2JwcChzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLCBpbnQg
YnBwX3gxNikNCj4gwqAJaWYgKGZ4cF9xNF90b19mcmFjKGJwcF94MTYpKQ0KPiDCoAkJcmV0dXJu
IGZhbHNlOw0KPiDCoA0KPiAtCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHZhbGlkX2RzY19i
cHApOyBpKyspIHsNCj4gLQkJaWYgKGZ4cF9xNF90b19pbnQoYnBwX3gxNikgPT0gdmFsaWRfZHNj
X2JwcFtpXSkNCj4gLQkJCXJldHVybiB0cnVlOw0KPiAtCX0NCj4gLQ0KPiAtCXJldHVybiBmYWxz
ZTsNCj4gKwlyZXR1cm4gYWxpZ25fbWF4X3Zlc2FfY29tcHJlc3NlZF9icHBfeDE2KGJwcF94MTYp
ID09DQo+IGJwcF94MTY7DQo+IMKgfQ0KPiDCoA0KPiDCoC8qDQoNCg==
