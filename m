Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DECF97ABB7
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 09:00:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00B5710E1B1;
	Tue, 17 Sep 2024 07:00:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BN0jDx8X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4DE910E1B1
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2024 07:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726556415; x=1758092415;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FQAk4h2BplCTu+a5hC/X2/3XtmQf8Lr9Raq733JCwCM=;
 b=BN0jDx8Xj6JRGmr1QGuECqo/bXJ1taXKl7tOPTgr024vxI6DFeX/KGaG
 Zqjlau61L6LCrqik1Lyhs8dwv6q4QSth1DnG5miPc88zYhqcVpwmldw9B
 Q8v/K18V42c9wF4XmeRbQJsC3wBiO72ZAHtEyXSRBcOB4ftVkPB01i4TP
 8ERe8PEVBoLZtQax9qotPUXcYgQv6KwN04yhg+TLngAyxLgD0HnOlg5DF
 L5XzLgB0wzcOT0fjmVo6UFhwA9mJ2dIkY2PJl1ejUcAGij1ifIkn/eMdL
 eTwhsKfvLPwLpa81bwi72rPe0NDcUHMh4fg8i5xQWip6xGpifuUWlxeaO w==;
X-CSE-ConnectionGUID: Ht4X+TNiRbyHBlwJkO2rwQ==
X-CSE-MsgGUID: wWl4DtcQS3mpgEQHw6gY2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="25283700"
X-IronPort-AV: E=Sophos;i="6.10,234,1719903600"; d="scan'208";a="25283700"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 00:00:15 -0700
X-CSE-ConnectionGUID: tFez0msXQiKqV0YVDKvssg==
X-CSE-MsgGUID: 8GdiHDlvRdCGu4BFXsI9dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,234,1719903600"; d="scan'208";a="99946508"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2024 00:00:14 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 00:00:14 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 00:00:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 17 Sep 2024 00:00:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 17 Sep 2024 00:00:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P6YFigrovcS26AOqNJzCNCjuam9kAyGZs8dxJZYfFSmhrhRwBdBZHxWUF517A8GfyZ6ATJRMFV0t6eC3XpJTO3Ko/3hpkL5PwgBJM6ml2GdbS/7YiINlCcYHH9T8khLnV4cA6Pp6azhxEOlIFWJQQ9j4Q1ardKjp+aFlo2uqtsfN1qs43bQJvPbb27y+jw91NBovlJZrOdz5EO2DrO688k3ay376q97315SfFMRo/lCeB+v6QSs2VgqtfdLzz7EKTWyEWqPoMFlJWdsqVKIXIsliw4v6B8AuRv3i19ntPip/XlFD+Qp3CeJi582JXEKOlGH1aQINzozwGjqUKHYUxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FQAk4h2BplCTu+a5hC/X2/3XtmQf8Lr9Raq733JCwCM=;
 b=U2IKMl/Gejz6GexewoY1nxjRzUPk0unq/UgT8U2ChAre4e/6v6neu+nn4+CgvCicHoFDMIqMsSUTQ9VGF1qEGGDcHF9deMH0O/ryHY+4JJvJkutifk5rrdR1WfUskXaVODbMUJwSehXRsLoQmUlJ6SS4LxfqpenE6oEL0+OIiAlgICkK7AniKONn+RASlE4tCgvORNtT8rgwh0q2ljR/RGkCFe2V3XzMopVIIZrUysyM4lD/3JxdaBiEDo+qEzp5JD99o4oKqzG2JsPr+VPIj0cj5786CcsenK6nHsx+178oArOO9WjQs87MJhfZ2Z/oLT0duUJTYwm0OEOPRWsiQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ0PR11MB4861.namprd11.prod.outlook.com (2603:10b6:a03:2ac::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.22; Tue, 17 Sep
 2024 07:00:11 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%3]) with mapi id 15.20.7962.022; Tue, 17 Sep 2024
 07:00:11 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 00/13] drm/i915: Use DSB for plane/color management commits
Thread-Topic: [PATCH 00/13] drm/i915: Use DSB for plane/color management
 commits
Thread-Index: AQHa/T+SBWTQdSg+6UanNsZiIijyG7Jbot5w
Date: Tue, 17 Sep 2024 07:00:11 +0000
Message-ID: <PH7PR11MB5981F12A570FABB96F78C43DF9612@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ0PR11MB4861:EE_
x-ms-office365-filtering-correlation-id: 59d3caec-62d1-42f3-9c16-08dcd6e65f9f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NGU0d3BNRzRqalZXQ3FKMFNiN2theTJ6eVRKclZUVmVLRTNFQms0MXlKaW5Z?=
 =?utf-8?B?clk2Qzk4TlpIRkJhVjE5MFpWRUM5cHhhdFRaZmlFSWJ0ZGVibXZSajlnekVx?=
 =?utf-8?B?YnJ3R3pseDNPMUJubkYyRDVFc0VHU05Hd2xwbEljck56M3BMWE9vM1l1MFEy?=
 =?utf-8?B?OXJHdktIanQ3c3pDNE1OMDZwRXhtNXBTUlZQc3RObTlFSGdCd0grc0NHeEN2?=
 =?utf-8?B?SjNQQ1JvbDhiK05ybWNaUEdDMk1YU2VkSVhaTVByc2lKVnptNGhIWWhXeC9N?=
 =?utf-8?B?NDVETzdpa05xSDZ2VnhTYU1nRXkzbmQxay95ZzFna3UzZThibE1qSDFiamJY?=
 =?utf-8?B?eVJNQXVmWENYRG1pUE82Vm9pSEllVzhKMVljUVV2SVdBYkY1L0tzR1ZiSE1N?=
 =?utf-8?B?bktNLzRBaC9sU0pSOXMwbUhoamkxYjNDOXdvcWg1S3hWdU1MWnRuZ0QvdW1H?=
 =?utf-8?B?SktHSVJJYXJsMWM0WDNnbHNVeEhjSlhJUmpjVHEyNS9MOFZ6bnVEQTRoenU4?=
 =?utf-8?B?WCtzanBVTCt0ZERtT1l6YjVmUzZRcUZCSkJxNVRTTjgreDNBTzZvSnlsSEVC?=
 =?utf-8?B?REFkSDhMQ3ZOa2Znb0JlSDh3ak1xd0xlVDN6UHZYRHB4S0RuUGVTTmdqU2xI?=
 =?utf-8?B?eFNJOXdwenNab09HQWRKL3NHQndkQjF6dDV0V0RzdFJlcEcrcUFSMmxUUm16?=
 =?utf-8?B?d2ZnZVR0MWp6emhQS3MwekQvZVcyZ040K1pxLzV2cWZXOENPVXVHbUFWUlZC?=
 =?utf-8?B?d3EvN3ovSXBzVGVXV2dSS2w1NHJvSDBRMS9jeTlmcmxBckhreGh6RUZZZzdv?=
 =?utf-8?B?RjhZUEROeGkzNURJTEsrWEgrYko2ck43ekhjQXhVejljczN2UUVKN0NEZjNa?=
 =?utf-8?B?OEZ3Vlgwck9BZ3Y2K3UySWU3TXB4TXZwZkRpZzd3ZHYyRGFEUkJqWEhwVkVJ?=
 =?utf-8?B?aTQ3b1Zlcm5HT2dVVGNvUW1PVlNkbjl0NzZVM3N4WlVaa1Jua2QyZG15UENv?=
 =?utf-8?B?TW1Qc3l1SCtNZFlieGFXWDdUUy9oK0VqN2NjNS80eEZ2RkJWN3JaeUlJWkpw?=
 =?utf-8?B?QUNwY01CN3RTWVAxVWFJY3kxZ3A2ZnNMSmMxREU5SVkvUHRKVWJtaVlKclM1?=
 =?utf-8?B?eUM3SlJoK3NtWXZueGpyNFJIQ1djdEZuT0dua2c4SE44MUdhcGRnMDRhY1c2?=
 =?utf-8?B?SVNYdmdNbzkxL0VWbnRSd1lOSWp1UDBoN0dTTTB3R1V1U0hwRzRNQTBHeUw3?=
 =?utf-8?B?bXRQQ3lScitWZURVakRwS3pzY1ZMOTlmbU4rVVR1WW5memRTSlloS05VOXRq?=
 =?utf-8?B?Y0JMOCtMa2pDRW5XMXFkY21iN2dzUVFoT21TWFhBWllScHFXS0FjRGQ0eTR3?=
 =?utf-8?B?bUhGV1diUWs5ZlZQa0hoanA5Q3ZnOHBOcEFsYklDcmNSM2I4dDE2bWtBUHVp?=
 =?utf-8?B?TUdmOW5WQkxrQ3U4T3gvU1hHdHo1MFRsUEo4VzgwVmhibFJGZjNnZS9qM1lQ?=
 =?utf-8?B?bmZBOUlmVEpCcGxBNUpvT2svTHE2Wm5uaVU3YXZQTVk5VWpJUi9rTWpKZTZu?=
 =?utf-8?B?eUszZjQvQ2IySWx2U2htamR2YndJbkxjWXZlVmxkcEdwTHNYTkhBaEJqeVFJ?=
 =?utf-8?B?NmdLTzFGMHY2N1Raa0orMWRxRTNOc2pGV1E3bERaTlMyTkZQNm9zL1pYRzI3?=
 =?utf-8?B?bXZPV0JwNlNtb3pXb29PbEZwWG14amQ5TUpGK1RVckk3aUVwcTMweUVsU3Iz?=
 =?utf-8?B?L2pQV0dVVGNpUllOYm1UQzBKaXYwRXFzcWZCa3FqY3VMRGxndVBydkIrdXFm?=
 =?utf-8?B?bEE1Q1owNTBmRnBGZXNhYXhkbG5ZNU1FZ2w4TFBKWDhpQ0tJakU4ZkVHTmxn?=
 =?utf-8?B?UW9pN3JjSG41VXdENXU3eko5M1pCZ0xmTzZUTXFpMCs1Qnc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M0diQU1CekFnY2hnU3h6QjRvemd5MXlSbGNubjd2QmJTak5Bc2RZKzVQcnBX?=
 =?utf-8?B?UVJBSElOYjNjMmFRZHhOQS8xcTBuOXQwb2VHU2hJalNvQ0daTDR1b0FzTW11?=
 =?utf-8?B?dGFtZDB5NG43R0QvZFJGeHVCdXBsU29pNE5SUEtIR3M5L0NQekJoY1V1eXg0?=
 =?utf-8?B?MG03d3VEY0FUZTQ4K0NRYlFhcGdGWHNCbTAyTUtEY2JjNFJzTDJqY0MybHdr?=
 =?utf-8?B?aWdNaWljWkJCN3lFQ04weUFsa1J6bDhST1NpeS9Yb0hGVmxjVGcvWlVXYXR3?=
 =?utf-8?B?MkppTUg5OHphajRwRmpZK0hGZHF3Nk5DNmNZeHBwd3RMKzN0TFpKSWVVWHNy?=
 =?utf-8?B?aVI3WXF4RDUxdG94OVVUemFwU1Zjbkw2d2tSanhId0ZOaGZOckVIbUlHdkhv?=
 =?utf-8?B?bVllVml5RzlNVVVBdlNINVdMRXg4RmZRaDMyV1RaL2UrcFRmNUZabklUVUQ3?=
 =?utf-8?B?S0tXazBaS2hwWTdWcmk2QXVmc3ZVNTcreWxMZFpxaWFWYW1nTW1pVnltQzNk?=
 =?utf-8?B?OGFTR0pzUjdkcC9DdVI3TW9qOEdxRmVvcVJaeHkrTHhwNm1McU1TZ0ZsOGRL?=
 =?utf-8?B?ZW1IZVhyQ2E5Y3ZiRDNobGROcHUwWXFsTlFWdlBqVllINW1INnYxRXJWL0p1?=
 =?utf-8?B?bTlyeTM3aHlyMkpqUlZNbFR2RmtnaEowUElIbHczK0dXei9CV0kxaVF0TlBB?=
 =?utf-8?B?V1hIWDdtUHVvcDFVUWcybnlpV1hNalQyK1Yzc3JnVG1qa0pVMU5JNnZFZHFT?=
 =?utf-8?B?cWdBN1BBNXVSSXo0U2lGeGpSRkFtaS9tSW14Qk54RVB2L3FoOGdXNUhoUFhh?=
 =?utf-8?B?a3A5d1lkSzMwTEFjNGJtOE1TeTZ4SE93T1ptbHF2UU1UUEdNVXg5YlJ3YXJG?=
 =?utf-8?B?SUlMT01rZGRCYUF4UTBialNoZWNBWEl3RnlVOXpPYUdONG8vNXFtYjQzLzhL?=
 =?utf-8?B?ZXAvM1FDVjU4c0cwL3RKUUpJdkZUdDJiZDN4WStqcWZzNXRjZ1YxVVRvYlVP?=
 =?utf-8?B?YkZkWlA2UkZqbCszY05iRnVHQ096cGVjQm16SkNRYTg4N0N3bkNpQStWUlFF?=
 =?utf-8?B?dHdJY2ZnWXg2bGg1MlprRmFPWjRTTmxlMHNoQUhja2hmQXVubXhKVnNWbmFG?=
 =?utf-8?B?S2oydFliekpWNVprbGlaYlBNK2FsNzdmT09veUt2eEtQM1ZVamFlNk9lV1VC?=
 =?utf-8?B?eW9vWkNNWVhjMzlSdFFsWmlvcVNNTTVLUXdpTEZROW50eGJUalUyaWxWOEFm?=
 =?utf-8?B?ajE0UEJVajloL2NIVUoxRy9adHlxSm91ampoM0RqbU15Rm9hM2o5QyttZkFN?=
 =?utf-8?B?aXhnUUtRN29UZ3cxTE5qZTA3cHlHaWVTeTJIZTk1RnAreWJLcU5nTzMya3FL?=
 =?utf-8?B?cmxhb1U0ZXEyT2ZFZDJ3V2FlSGlaWThuR3hkZHVZWkJMSk8vK3NqcmFKa1Bx?=
 =?utf-8?B?cmN1WWFDbmF3TkUrRHAxcEdLRVZaTkZXM0prU3dTT0FiZU5oRUNIRG53VDh1?=
 =?utf-8?B?eEhpT3BFWWdDOVBXcE5JYloxdFJoNUFRdkdNOXI3bjlJdE93MExHeHhqUlp0?=
 =?utf-8?B?b1lDRVNUL3BCeWhORnF1UmxXNDl2YUtPelIyZDRBQlhrUHMvQXAwTDlLc2dS?=
 =?utf-8?B?dm9qYW0xRzM1YzVYanFYSlBRZlJTay9vZEVjTFd2WkpKd1pBSnEwc2U5L2M4?=
 =?utf-8?B?anJGdUV2R01VZDN1YnBNZUx0ZXhRWWxQNkpDSVU0c3VqUTVDaitNN1lTZVR2?=
 =?utf-8?B?dy9Vam1iTmNibEs3U1lqSkdlK2JvR3BjNXp0U3FEOE5QbngzYUpLZHhucGd6?=
 =?utf-8?B?bFJJQ2gxaG82cmM3RDM5aXhYYnFJSXdOTFZXWkNEZEhqWlhwbDl1QlBmZVdK?=
 =?utf-8?B?VnExT1ZzbW1lb3llU0xadi80R2tQbXVMNUlhTmtEKzljZmtreHMxZXVsTEN5?=
 =?utf-8?B?dDNuYm84dnJJWEZiV2F6Z2w3VmdLMlJRcHBhbjdaeXJyNUtNV0lDSVc0NTBP?=
 =?utf-8?B?bEN4clFjeEtWdXg0S0Q0SE9kM2Rhb1QvTzYxWWh2SnJHSkVpcnAwSk5pWTlT?=
 =?utf-8?B?YnN1S1ZjeVc0djVSa1pGclM4WUUrU2wxYzhQaGxuWHRDcy9VRWpiUGxIWHB6?=
 =?utf-8?Q?eswTEPjfeQJAqGnQq0Y4XVsn5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59d3caec-62d1-42f3-9c16-08dcd6e65f9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2024 07:00:11.4693 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fHM0gLt1TBLISSBV28S2bPeZZ55VVuXtUjaTwVbTJP/CD9ZBF2rRZLld/HO+nfqbrH1eIuAnhj/JvP6DSkdjhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4861
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
PiBTeXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgU2VwdGVtYmVyIDIsIDIwMjQgNzoyMyBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggMDAv
MTNdIGRybS9pOTE1OiBVc2UgRFNCIGZvciBwbGFuZS9jb2xvciBtYW5hZ2VtZW50DQo+IGNvbW1p
dHMNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+IA0KPiBVc2UgdGhlIERTQiB0byBwZXJmb3JtIHNpbXBsZSBwbGFuZS9jb2xvciBt
YW5hZ2VtZW50IGNvbW1pdHMuDQo+IEFueXRoaW5nIG1vcmUgY29tcGxpY2F0ZCAobW9kZXNldHMg
YW5kIGZhc3RzZXRzKSBhcmUgc3RpbGwgcHVudGVkIHRvIHRoZQ0KPiBtbWlvIHBhdGguDQo+IA0K
PiBBbHNvIERTQiB3b24ndCBiZSB1c2VkIHdoZW4gYW55IG9mIHRoZXNlIGFyZSBpbiB1c2U6DQo+
IC0gc2NhbGVycyAoc2NhbGVyIGNvZGUgbmVlZHMgbW9yZSB3b3JrKQ0KPiAtIFZSUiAobmVlZCB0
byBmaWd1cmUgb3V0IGEgcmFjZSBmcmVlIGNvbW1pdCBjb21wbGV0aW9uIHNjaGVtZSkNCj4gLSBQ
U1IgKHplcm8gdGhvdWdodHMgZ2l2ZW4gZm9yIFBTUiBpbnRlcmFjdGlvbnMgc28gZmFyKQ0KPiAt
IGFzeW5jIGZsaXBzIChubyByZWFsIHRob3VnaCBnaXZlbiBoZXJlIGVpdGhlcikNCj4gDQo+IFZp
bGxlIFN5cmrDpGzDpCAoMTMpOg0KPiAgIGRybS9pOTE1L2RzYjogQXZvaWQgcmVhZHMgb2YgdGhl
IERTQiBidWZmZXIgZm9yIGluZGV4ZWQgcmVnaXN0ZXINCj4gICAgIHdyaXRlcw0KPiAgIGRybS9p
OTE1OiBQcmVwYXJlIGNsZWFyIGNvbG9yIGJlZm9yZSB3YWl0X2Zvcl9kZXBlbmRlbmNpZXMoKQ0K
PiAgIGRybS9pOTE1L2RzYjogR2VuZXJhdGUgdGhlIERTQiBidWZmZXIgaW4gY29tbWl0X3RhaWwo
KQ0KPiAgIGRybS9pOTE1L2RzYjogRW5hYmxlIHByb2dyYW1tYWJsZSBEU0IgaW50ZXJydXB0DQo+
ICAgZHJtL2k5MTUvZHNiOiBJbnRyb2R1Y2UgaW50ZWxfZHNiX3ZibGFua19ldmFkZSgpDQo+ICAg
ZHJtL2k5MTUvZHNiOiBJbnRyb2R1Y2UgaW50ZWxfZHNiX3dhaXRfdXNlYygpDQo+ICAgZHJtL2k5
MTUvZHNiOiBJbnRyb2R1Y2UgaW50ZWxfZHNiX3dhaXRfdmJsYW5rcygpDQo+ICAgZHJtL2k5MTU6
IEludHJvZHVjZSBpbnRlbF9zY2FubGluZXNfdG9fdXNlY3MoKQ0KPiAgIGRybS9pOTE1L2RzYjog
SW50cm9kdWNlIGludGVsX2RzYl93YWl0X3ZibGFua19kZWxheSgpDQo+ICAgZHJtL2k5MTU6IEV4
dHJhY3QgaW50ZWxfY3J0Y19wcmVwYXJlX3ZibGFua19ldmVudCgpDQo+ICAgZHJtL2k5MTU6IFBs
dW1iICdkc2InIGFsbCB3YXkgdG8gdGhlIHBsYW5lIGhvb2tzDQo+ICAgZHJtL2k5MTU6IFBsdW1i
ICdkc2InIGFsbCB3YXkgdG8gdGhlIGNvbG9yIGNvbW1pdCBob29rcw0KPiAgIGRybS9pOTE1L2Rz
YjogVXNlIERTQiBmb3IgcGxhbmUvY29sb3IgbWFuYWdlbWVudCB1cGRhdGVzDQoNCkNvbnNpZGVy
aW5nIHRoaXMgcGF0Y2ggc2VyaWVzIGlzIGFuIGluaXRpYWwgcGF0Y2ggc2VyaWVzIGFuZCBtYW55
IHRoaW5ncyB3aWxsIGJlIGZpeGVkIGxhdGVyIHdoaWNoIGlzIGFkZGVkIGFzIFRPRE8vRklYTUUs
IHRoZSBhYm92ZSBjaGFuZ2VzIGxvb2tzIGdvb2QgdG8gbWUuDQpGb3IgdGhlIHdob2xlIHBhdGNo
IHNlcmllcywNCg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50
ZWwuY29tPg0KIA0KPiANCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF9wbGFu
ZS5jICAgICB8ICAyMiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
dG9taWMuYyAgIHwgICA1ICstDQo+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRv
bWljX3BsYW5lLmMgfCAgNDkgKy0tDQo+IC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
dG9taWNfcGxhbmUuaCB8ICAxOSArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jb2xvci5jICAgIHwgMjAxICsrKysrKy0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jb2xvci5oICAgIHwgICA3ICstDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYyAgICAgfCAgMzcgKystDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuaCAgICAgfCAgIDUgKw0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYyAgIHwgMTAxICsrKy0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZS5oICAgICAgIHwgIDExICsNCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8IDE5OCArKysrKysrKyst
LS0NCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAy
MyArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyAgICAgIHwg
MTM1ICsrKysrKy0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5o
ICAgICAgfCAgIDcgKw0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF9zZXR1
cC5jICAgIHwgICA0ICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nw
cml0ZS5jICAgfCAgMjcgKy0NCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxf
cGxhbmUuYyAgICB8IDMwNSArKysrKysrKysrLS0tLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS94
ZS9kaXNwbGF5L3hlX3BsYW5lX2luaXRpYWwuYyB8ICAgMiArLQ0KPiAgMTggZmlsZXMgY2hhbmdl
ZCwgNzM5IGluc2VydGlvbnMoKyksIDQxOSBkZWxldGlvbnMoLSkNCj4gDQo+IC0tDQo+IDIuNDQu
Mg0KDQo=
