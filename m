Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57531A8769F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 06:07:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5682510E470;
	Mon, 14 Apr 2025 04:07:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aMrcDEUx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27A6710E46B;
 Mon, 14 Apr 2025 04:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744603651; x=1776139651;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QrVrx13YOA/VuQyFqUF5C4Q/nBfY5kh6QaGKFpVZZfg=;
 b=aMrcDEUxv7zfOQjM3FJZek8GQUOHLv8gY+WlZ8h9tbNO6UZNzoXo/cn3
 r6fAeL/C4USrKA1wY50MDmkhnjkXnBA0W/k2sXQ8H5hsvJB95c71Vrs/1
 24ZPRnDkrkT0OrwhrhQSqjhZq5NNMYCAgalPPhcvi2fgopkGUYRoERAuw
 OWApliE0eMfqu58/qhS5o6eaPsWin4Q1bzmB86HBV/dYEaXSYCceh8OXG
 za/DYp0vvf8Xw48T1KUbKiArLefn5Qb3dEeOowb1E/KwrCW+b0w0LNcds
 Ak0cA3x/U/eHcOmpgJi11dfr3ifcoHOdFYBMZwBY60tE/RL4UE3mtPTat Q==;
X-CSE-ConnectionGUID: RQMe7X4lQpiNFP8H7aLGDw==
X-CSE-MsgGUID: ZIr+p1kBTVu5mqhAapD+tA==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="45944899"
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="45944899"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2025 21:07:31 -0700
X-CSE-ConnectionGUID: B6rgf2HWTYunAOF74KToow==
X-CSE-MsgGUID: 4ynI3forQNqaXH2k5tbpAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="133804049"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2025 21:07:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 13 Apr 2025 21:07:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 13 Apr 2025 21:07:29 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 13 Apr 2025 21:07:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=snNfT+PlJcq/1DVuyoqmqsBhm/XfGDAUFT46kN2NulpUSjgkacG6ayRSH0mY3LpCWvNU9MtU62jPwPeWRa4FKvtfRFPujUzOUvfryOQEbVu9J9zW542ILEeX3sNWv7bCGkbWKJlHvveEarVER7ZlN5NK6ZJohbBDoT9mrntmmRC2GrtF4+DoiR/5JHQ2Y1yUFZMX/dCMo+Ub5ZB1AioH+sGihGDMYX3fDihvvkma92Vag4/CozrazbMNHToEqZlkwZzdHYk9c61Al/6MBB29YVvpAQJdqMLeE7Je7Hj27oNlB6gwe+cALRWpy4haNl9qDvS0uu/PjRci0xfUx39vNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QrVrx13YOA/VuQyFqUF5C4Q/nBfY5kh6QaGKFpVZZfg=;
 b=nk0yKdNpyzkVZ5YRziQJQFLwxqGjkSb4c8CbRQD5KtIn9vx3pQ5AQS52P2H58v2w1GGMRYNpUX1WzxXmb4rSSXpg8X4gLMBcbHIdKiCJkRl/G0QHg716aQzVcKCLceO+xf/a9MEFcU1f+ftOUqx8K+4jInxLu5wxp6t7OIAIQTlPAVV/Fprz4dpAuL9t42O/MSg86Mrwzn8K+TE9CF1I1klrC/wyJgoZgQxHtOXafW8Co0QDivEyCYyeCkNGQ5CdAGA04n8pGEicz6QmCwlTbPBd0uaxH9bExlMrpqwo/LRhjZv3ZSi0BGDsFXOSigZ9n8NvIMUWyMiSG3B6vV6leQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW4PR11MB6958.namprd11.prod.outlook.com (2603:10b6:303:229::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.27; Mon, 14 Apr
 2025 04:06:59 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8606.033; Mon, 14 Apr 2025
 04:06:59 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: RE: [PATCH 1/2] drm/i915/display: Add macro for checking 3 DSC engines
Thread-Topic: [PATCH 1/2] drm/i915/display: Add macro for checking 3 DSC
 engines
Thread-Index: AQHbrOiOx+o/Xxf1GUWf3BCA7GoKMLOihcAggAAFXICAAABPYA==
Date: Mon, 14 Apr 2025 04:06:59 +0000
Message-ID: <SN7PR11MB67507E7901F1734402556CFCE3B32@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250414024256.2782702-1-ankit.k.nautiyal@intel.com>
 <20250414024256.2782702-2-ankit.k.nautiyal@intel.com>
 <SN7PR11MB675077FC1AD909171A753B24E3B32@SN7PR11MB6750.namprd11.prod.outlook.com>
 <64f447b4-99bf-4095-88c6-707629107772@intel.com>
In-Reply-To: <64f447b4-99bf-4095-88c6-707629107772@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW4PR11MB6958:EE_
x-ms-office365-filtering-correlation-id: 62fa7f3a-47d2-4f1b-556d-08dd7b09cde9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Yy9ob3dwTUk2V3llUG14NitqSzQrcGwvTXVNaVJsaGk3anBvWHhtZ2JiKzdW?=
 =?utf-8?B?ZXFDeUdqZ3NtdlpwNmQ1QWFPYWR6bk1LcjJUcG0wNUg3em9ldSswUW9DUEE0?=
 =?utf-8?B?VFNmSk00NG5OVFEzUTREUGxOUGZ6MEFnaFRNZjI4VkgyZks1bWZJSTJBT3hl?=
 =?utf-8?B?ZmNPSnI5ZTlNZy9nYVBoMkkzRUE3VTNlM0RvYUdaUlhOa01aOUNMVXlvRDl4?=
 =?utf-8?B?MzlqTW9ManplMCsxV2dCZGNhenZnMkt4Rm5YS0g0Tk00RDhBWmhWTll2NDh6?=
 =?utf-8?B?ek5jaTIvVFRSYVA4V0h5VnNQN1FOUEVDbTJybXNHcEI5RW50WWdDcDdncldm?=
 =?utf-8?B?R2Y5RVVpK00xZG82eklEZ1FHUW5XNmVWZU1BZVBCS1ZFVldFZ2FraStTajFX?=
 =?utf-8?B?L256UENySW1jaWluTDBqMGVzdHF3b3J6Njh3eUR3dTBvQ1g1MER6M2hBUU90?=
 =?utf-8?B?TXllb2xuWGRkQ3RLdGxjM0grTlJvMGxOMlBpTUZ2Ui9rRnpxMWxWRGQ5M2Zz?=
 =?utf-8?B?ZW9sZ3E1TDFwNmhrK2E1T2VncVAxSmRpekxrQS91bk1ERlQ4K1YxM3g0VGhE?=
 =?utf-8?B?a0NWWlZESzRteTFrZ3A4bE5YL1h1aDFycFZpNHZXWDgzQ1pGc0VleDRBb1Vp?=
 =?utf-8?B?WGZET2RmcVZqbVBxZW9sOEcvY1RTcXNTSnYxV2hIVTNvRVAzZEN2UG9seGU5?=
 =?utf-8?B?SFpGMmQwY0hXMXpzMzdaOXgzWEIrVnlwNllMdzAwM2VpRWovYmJ5MlV2TENK?=
 =?utf-8?B?enhjemxxTDZ1dXhMb3AwZGFHZWtWOG9FdUlVanpSTi8yK0tUWWlpeWtHK0pK?=
 =?utf-8?B?Q0N1SFZQVEoxYmlBUXVsbW9yb0grRGpPMDRUWW9jUnY2ZndhZmtqQThmS2c3?=
 =?utf-8?B?enU5b3duTHR5eDczVlBCMy9kTjA3a0lVKzhUZ2FPSzlwSi9YY3VMczF1b3RU?=
 =?utf-8?B?R2JuanhSOWUrdVY2Q2EzQjFZb3dXN2twakRFYTVXbk5BcWdCaDVxOSt2VDJC?=
 =?utf-8?B?d0FuSlBEbzFwbjkxZXBId0NaaGljSmdFbGovQ1B6RzlwUGVDVHNUWWhQSm81?=
 =?utf-8?B?d3NiTUxjeGxqR0dWT3J1ZkRHc2E4NHpJYU4wdndaTmptWGpvUjlyNytwb0Js?=
 =?utf-8?B?WlBWZC8weTNwZkZhY2gxcVBKU0l6QWpTblBNV2NZZnA0WkxEYlluVUYwTGJ5?=
 =?utf-8?B?d3RvZEdpVWRGNEVkTEx0dzdHcGNLc1M4dk5RUHZUaXBWdEZZM1Q4ZGJwM3lR?=
 =?utf-8?B?WmZMek0rUTlWaXh5ZDkwUW5zRWhZNm5HTWRnVHF3VTFrMVpkQzl5aWlLTkZi?=
 =?utf-8?B?b3BLRjJuR1NaZ3pGODAvTGFLLzVJaHAvbnFQQ1JZYU9HV3FHcDBCczBhN255?=
 =?utf-8?B?ZWRHTGtEVlVQa0hqdlBBZU1Bd2FVZDlrdUxpYk1lLy9tdzFQYjZYUHU4dmhQ?=
 =?utf-8?B?aHZIT0docmN0ZFExbHNEeFZOTjZtY25lTkR6dXQ4aUlOM0NYZTdxdDJxaVZ4?=
 =?utf-8?B?TGZTWWduWnZIbm53aUFucllCR0hoRkhFZzZNazRLbEFFd05VR3B2T1BSdFFx?=
 =?utf-8?B?UUk1aWMvcVViUWZGUVFUUnJiMGNORWZHRnhvRG0zbzBhbDFRMXEvTDVKdXdP?=
 =?utf-8?B?ajFDbG9pNXhUdmpMVElOblBvMVhpQTZrK0lZdXMySzRpSnlHUlUwS1R5cW5S?=
 =?utf-8?B?dks1c0xGdnN2eUIyUy94T3VScDhDYXJSV1lxVHZ2MjhiNGhBc2ROUGxBWjBQ?=
 =?utf-8?B?OURZSEZMa2YySE1DMG5mK0d1em00RGNPNkcvUUIvWUc0YzZZMnlpQlVsVjg1?=
 =?utf-8?B?S1Y1cXY4NVAwRUlyRU9uZ1pNdkYwNUdvcE1zOHpqWVZtY0g5MGJTQmYydVlK?=
 =?utf-8?B?UWZrNXhNTHlyd0dlSVNpMWxsVGhDaU51djEyaEQzZjFiVVJLczc4emRRZ3Y4?=
 =?utf-8?B?RGZiOWtjUlJ3c0J3TFI5TEt0S0FaQVlCaHY5ZjgvWng5RjRUNWpGRnc0LzBC?=
 =?utf-8?B?c0w2cTR5dUhBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R3ZvalowbFQvMm5BOXpLWnRTOUxHcEpiVHdqOExlUnd4ZTBIbWtqSllFVHFp?=
 =?utf-8?B?SEhZQnQrMmdnYkQ5c01QZzd0ZlNaTkswR0JVMGIwSjVEMDVVRTVTRDJ0ZCt6?=
 =?utf-8?B?Zzh6aXowZWRaeCtJZkVSRVBJVEJRallnNnMzSmYvbmhHaHVpblZZL1JsUzAx?=
 =?utf-8?B?WldXY2pudHQ5VWQwZjVuNkt0bm51YmVqOVF1Z3dYaTh6bnlYVWlhY0lDc1Zh?=
 =?utf-8?B?d1lTNWhFZno4WVozMFFzQ1FmaFpyZSsvNG0zeUQwL2ErZ3d0RndYSXRENmkz?=
 =?utf-8?B?S0Q0YjhFUElpSTVZUVA2dExTYnU2NEdjdEtyR2pPcjB2eUZQVy9VT2ZLakJn?=
 =?utf-8?B?amlNb3FKUEh6RmJBTUxGZ1ZpWVNkSVgyenU5blgwM3pWejFsNWNCQjNwYi9V?=
 =?utf-8?B?ZFZPUXNGM1JaTWdEb0NJcVB1L0JmZ2hmanFNWkRsMENpSll1S2FodHNYdVZF?=
 =?utf-8?B?WkZ0QUZ4TGFNR3NYNVh0VFJPTS9HZzZ0SWp6RVkwU3hSWjk1UTlMUGpiY2ZU?=
 =?utf-8?B?bHJwWStpOHhCV21pd0xwMzhaVStHTy9scVRBeWthYXZ3aEpBS2pGd1FTR2pj?=
 =?utf-8?B?TGdydjZTUXZEaVhLMTdFcXErd240VDhtQ1J0MVE1QUh1QjFTSnhFS084b2JI?=
 =?utf-8?B?bzBDSGVZd2J6eGljdzlLR05XY2dtNmFBRjhhamNta3Q2ZkNlK1BvWkwySE9Z?=
 =?utf-8?B?ZU5YcFlvODh1c05yS2RGSDRaMGlmUkhsa2I3Y2pjWnVSV3dwTGd3cHd3RFh0?=
 =?utf-8?B?dTRsdFh5MTdJMHJadHMvWXBSbU00SndHSTdWaVpkM0RlTlM4dzlNZTBIWjYr?=
 =?utf-8?B?MndpU01Lclcycjh3aXdWNU1qSlE0K1NSTlF0OFhGemFoNTRuK2lWM2FaUWYx?=
 =?utf-8?B?UklkY2ViOWF6SGhhYzhDMmdhNExtZithL0NaWUZmVStaNGo3SUhQcUdzTzc4?=
 =?utf-8?B?Z0ZaaUdnOG9HSkFZSzN2YXhxWTlVL2dldUU0VEl1Qi9CWnlRMDRON0k3RHk4?=
 =?utf-8?B?dUNUaERFSGFQZXp1cnltbTYxNC9meTIyQkhORStsd1NXY0NOMG5Yc0FtMFp1?=
 =?utf-8?B?U0svSjQ0NVZuZGJpWkJzQm15dGUwV1g2NWtkK0F6TnErK0dUVjRTd2NkcnFE?=
 =?utf-8?B?dm5LZjdTWVFtRHR0RVd4eXlib2ZGeU42MEZpOXZxOC8yU2pMTXAvUFFUcGlU?=
 =?utf-8?B?eENYRlNYSXcyVmxLY2JkOGlQTkx4TFU1WlhHUnJwTEVDSGpIY21QS0xaY2cw?=
 =?utf-8?B?TDZVL1NKbTZMSjVjM25VL21mOE5YUU1oMW9mV0FuNzdNNFNqaThSQ0lJYVRV?=
 =?utf-8?B?b1YzY3pqWE9MK1NEWlFaMng5dS81aGJiU1BCVGdqS2RRd2dwRWxma2NSVkN0?=
 =?utf-8?B?dmR5azZjV0JkTU1RNXgxS09heHBYcm1qbWRKSnhST2FBd0MyUGlBR2R3QW5B?=
 =?utf-8?B?aFVPN2pFZ2Zwam9EWS8zSEpmb01VL2VjNHVqcnF5Y0t0Mm1MT1ZFREtkMHZm?=
 =?utf-8?B?WW5BM3QzWEVabG9IUzJOMHRZVURpQjFLc2NMTWk5T29Gcm4vb2tHaTdrOEU1?=
 =?utf-8?B?K210b21RNVNZNnJ4TmxORzlZeTd3U3AwT1F0YVJib0JsU0xldjZoYVp0NXl5?=
 =?utf-8?B?ZTRvMDNhRldKdlhlUk1Od0VsTUVRSUdCbDcrQW1RS3ZsK2tvZXQzSHdpRkF1?=
 =?utf-8?B?U1gwY3A0M1lYK0dRbDdJTFpmT1RmUE42QUNGWTlxeHFyd1RvblNBMXRWcWhU?=
 =?utf-8?B?N3F5WS9kRk8wa2J6bURTUXI3NEtEMDgxakg5eGQvcjI4SUY2VWdvUnR4L3NR?=
 =?utf-8?B?S3dxTkoyWDRqOUl0ZEQ3dW9NTGVHdXpidUpOcXVpSlhiYWI4UjZmL3NEcmFz?=
 =?utf-8?B?LzRhelFORnBsbmppYkhDczBGMm95VmZPYlFkSnpxeXBMT29ucDhjUjF5TFpT?=
 =?utf-8?B?d092QkZzY2FpaVhiN1YvN1R4cFp4aHM5RThHNFpGZXova1E1RE5BcERjbkdO?=
 =?utf-8?B?TlFsTElBOVdzT3NqOWVndXJSVjRBdUU2THFBb1p3cWZHTEE1YjU0RzlaK1dz?=
 =?utf-8?B?TC9KN2t6T1ZsKzJ0M29oT1N5UzBUNUIydzI4NHp5T1ZJa294eTN1ZldkVk15?=
 =?utf-8?Q?SBXGr1r2QxgOuOnohYZLSOyBP?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62fa7f3a-47d2-4f1b-556d-08dd7b09cde9
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2025 04:06:59.5564 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lRdJ6ZYnmg6M0xuK0y6YhbE5Qqegsu0iBqEIFJ1aUwCKIxee+836Yq2Oax12RcAjMUdPn6W8p9koOk+XrPBezA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6958
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmF1dGl5YWwsIEFua2l0
IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIEFwcmlsIDE0
LCAyMDI1IDk6MzYgQU0NCj4gVG86IEthbmRwYWwsIFN1cmFqIDxzdXJhai5rYW5kcGFsQGludGVs
LmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7DQo+IGludGVsLXhlQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0
OiBSZTogW1BBVENIIDEvMl0gZHJtL2k5MTUvZGlzcGxheTogQWRkIG1hY3JvIGZvciBjaGVja2lu
ZyAzIERTQw0KPiBlbmdpbmVzDQo+IA0KPiANCj4gT24gNC8xNC8yMDI1IDk6MTggQU0sIEthbmRw
YWwsIFN1cmFqIHdyb3RlOg0KPiA+DQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+
ID4+IEZyb206IE5hdXRpeWFsLCBBbmtpdCBLIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4N
Cj4gPj4gU2VudDogTW9uZGF5LCBBcHJpbCAxNCwgMjAyNSA4OjEzIEFNDQo+ID4+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gPj4gQ2M6IEthbmRwYWwsIFN1cmFqIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT47IHN0
YWJsZUB2Z2VyLmtlcm5lbC5vcmc7DQo+ID4+IE5hdXRpeWFsLCBBbmtpdCBLIDxhbmtpdC5rLm5h
dXRpeWFsQGludGVsLmNvbT4NCj4gPj4gU3ViamVjdDogW1BBVENIIDEvMl0gZHJtL2k5MTUvZGlz
cGxheTogQWRkIG1hY3JvIGZvciBjaGVja2luZyAzIERTQw0KPiA+PiBlbmdpbmVzDQo+ID4+DQo+
ID4+IDMgRFNDIGVuZ2luZXMgcGVyIHBpcGUgaXMgY3VycmVudGx5IHN1cHBvcnRlZCBvbmx5IGZv
ciBCTUcuDQo+ID4gV291bGQgaXQgYmUgYmV0dGVyIHRvIGhhdmUgYSBmdW5jdGlvbiBoZXJlIHdo
aWNoIGNhbiBiZSBtb2RpZmllZCBsYXRlcg0KPiA+IHRvIGFkZCBtb3JlIHBsYXRmb3JtcyBpbiBm
dXR1cmUgaWYgdGhleSBkZWNpZGUgdG8gYWRkIDMgRFNDIGVuZ2luZSBlbHNld2hlcmUNCj4gdG9v
Pw0KPiANCj4gSSB3YXMgdGhpbmtpbmcgYWJvdXQgaXQgdG9vIGJ1dCBpdCBzZWVtcyB0aGlzIGlz
IG5vdCBnb2luZyB0byBiZSBjb21tb25seSB1c2VkDQo+IGFuZCBwZXJoYXBzIHdlIGNhbiBhZGQg
c3BlY2lmaWMgcGxhdGZvcm1zIGluIHRoZSBtYWNybyBhcyB3ZWxsLg0KDQpPaGtheSBpZiB0aGF0
4oCZcyB0aGUgY2FzZSB0aGVuIGl0IHNlZW1zIG9rYXkgdG8gbWUNCg0KPiANCj4gDQo+ID4NCj4g
Pj4gQWRkIGEgbWFjcm8gdG8gY2hlY2sgd2hldGhlciBhIHBsYXRmb3JtIHN1cHBvcnRzIDMgRFND
IGVuZ2luZXMgcGVyIHBpcGUuDQo+ID4+DQo+ID4+IEJzcGVjOiA1MDE3NQ0KPiA+PiBTaWduZWQt
b2ZmLWJ5OiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQo+ID4+
IC0tLQ0KPiA+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9k
ZXZpY2UuaCB8IDEgKw0KPiA+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQ0KPiA+
Pg0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X2RldmljZS5oDQo+ID4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X2RldmljZS5oDQo+ID4+IGluZGV4IDM2OGIwZDM0MTdjMi4uMWEyMTU3OTFkMGJh
IDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfZGV2aWNlLmgNCj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X2RldmljZS5oDQo+ID4+IEBAIC0xNjMsNiArMTYzLDcgQEAgc3RydWN0IGlu
dGVsX2Rpc3BsYXlfcGxhdGZvcm1zIHsNCj4gPj4gICAjZGVmaW5lIEhBU19EUF9NU1QoX19kaXNw
bGF5KQkJKERJU1BMQVlfSU5GTyhfX2Rpc3BsYXkpLQ0KPiA+Pj4gaGFzX2RwX21zdCkNCj4gPj4g
ICAjZGVmaW5lIEhBU19EU0IoX19kaXNwbGF5KQkJKERJU1BMQVlfSU5GTyhfX2Rpc3BsYXkpLT5o
YXNfZHNiKQ0KPiA+PiAgICNkZWZpbmUgSEFTX0RTQyhfX2Rpc3BsYXkpCQkoRElTUExBWV9SVU5U
SU1FX0lORk8oX19kaXNwbGF5KS0NCj4gPj4+IGhhc19kc2MpDQo+ID4+ICsjZGVmaW5lIEhBU19E
U0NfM0VOR0lORVMoX19kaXNwbGF5KQkoRElTUExBWV9WRVJ4MTAwKGRpc3BsYXkpID09DQo+IDE0
MDENCj4gPiBTaG91bGRuJ3QgdGhpcyBiZSBfX2Rpc3BsYXkgaW5zdGVhZCBvZiBqdXN0IGRpc3Bs
YXkNCj4gDQo+IFlvdSBhcmUgcmlnaHQsIHRoaXMgc2hvdWxkIGhhdmUgYmVlbiBfX2Rpc3BsYXku
DQo+IA0KPiANCj4gUmVnYXJkcywNCj4gDQo+IEFua2l0DQo+IA0KPiA+DQo+ID4gUmVnYXJkcywN
Cj4gPiBTdXJhaiBLYW5kcGFsDQo+ID4NCj4gPj4gJiYgSEFTX0RTQyhfX2Rpc3BsYXkpKQ0KPiA+
PiAgICNkZWZpbmUgSEFTX0RTQ19NU1QoX19kaXNwbGF5KQkJKERJU1BMQVlfVkVSKF9fZGlzcGxh
eSkgPj0gMTINCj4gPj4gJiYgSEFTX0RTQyhfX2Rpc3BsYXkpKQ0KPiA+PiAgICNkZWZpbmUgSEFT
X0ZCQyhfX2Rpc3BsYXkpCQkoRElTUExBWV9SVU5USU1FX0lORk8oX19kaXNwbGF5KS0NCj4gPj4+
IGZiY19tYXNrICE9IDApDQo+ID4+ICAgI2RlZmluZSBIQVNfRkJDX0RJUlRZX1JFQ1QoX19kaXNw
bGF5KQkoRElTUExBWV9WRVIoX19kaXNwbGF5KSA+PQ0KPiA+PiAzMCkNCj4gPj4gLS0NCj4gPj4g
Mi4zNC4xDQo=
