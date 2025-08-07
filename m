Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5058EB1D46F
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 10:49:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3A5210E801;
	Thu,  7 Aug 2025 08:49:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SXiDBuaB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70F0910E7FD;
 Thu,  7 Aug 2025 08:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754556595; x=1786092595;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uhnNwe23X9BjCUzVUH5O0pEz5Ug3BegtUBs0l3RroPs=;
 b=SXiDBuaBoxnxWadQ5UkFfbA092EhBKIYdmFMXjnKuTNN9c+aJjECrjPH
 AIqA4CG77YkKqaTR5FCrt6cTuQUwRiLBoLkKApMIe3iwpRovV6szBe4GX
 FATCR0fwpwxxicmWJ24EQBAxwSTEmroMGQzBvuUQTqHxqUAubPHxiI3/K
 aRak4VBZmFl49UFqKpak1X0GA/dKCQH/+JCKAO/SBJAyvL/wSK+Py1Ee2
 OiIni9WZvydNSRhcqlfo2ZWMgxDTOnU/WL0KPx5PSWpiM+1ucHWJQwi4n
 YIgMjcapN6gheNjuzffkur2Xs6xFy0vMqOJTL+i3HcD/pzgkgSFYv1fam Q==;
X-CSE-ConnectionGUID: +WUkB+qURpamIQ4RfWVVmA==
X-CSE-MsgGUID: mEP9SpAsR+KWkpmcFfQWdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="60517384"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="60517384"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 01:49:54 -0700
X-CSE-ConnectionGUID: vdMbnCwkSg2sbYpG2PjJ7A==
X-CSE-MsgGUID: jY31UIlHShK1MYhphiBCEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="170264893"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 01:49:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 01:49:53 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 01:49:53 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.74)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 01:49:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W57WPvuKlqJkvgn+aacjKPql42md3MEH/KJdwHM8AGdLhgjZrmAVXR3/yxgei9vPAEjFR1xRmP5qm2aQTLyaWn4xa59lJGJtTUoqUEXE5CbP9+rBoykE7Vl5oSWaXeml+GeGvsBODJAtjRiGtsrOv+VD5gcO9HxeKuviAdxLJ2xTlLx/LG6D3UEhmdaRGdokILOzDGHqKEPi0zrR563dWfV5iApebuJbZpT+b+voEvJWuqK5WnqnNKtMcIC06qSv0DxoAiE96DxW/5cJOqZq+aYwuB6D16+fWLx3r3UM/0wW5kWl7rbWMC4NBzH7st51FaIFjMCJAtZLekPKjUKA0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uhnNwe23X9BjCUzVUH5O0pEz5Ug3BegtUBs0l3RroPs=;
 b=dzDAR37SOzIDumUCt1V9DmpryUxSXyLx3eOFH4Gl666y96mAKcTdeTw47/TVlVgaFPhn/z/susSoOoV7cAO22x3a8kI26y/R22dFvd1KyDD5dJxVlSh5jz06OHoUKJMt97WPwhSUQQDyeW7WcTlvj0PPN+riubBulNIZNYFEb8TPIPJe2Vf4z1K4GkfDJQInt9Osvpr2/uih6jKcQ78SOtisJMwrnUHrQ7gd+mVFS+Kg0aGvZrmab+/Z3yXjNc41uR/Jpjr1SKeCsvd4cRwTfM0UhF8f/5NQGsmp1w0nylSGIXAKJRd326TfqfR83UpbBPR7iYG7q0ovkiPwW0Khmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by IA1PR11MB6074.namprd11.prod.outlook.com
 (2603:10b6:208:3d6::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Thu, 7 Aug
 2025 08:49:50 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8%8]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 08:49:50 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>, "Lin, Charlton"
 <charlton.lin@intel.com>, "Almahallawy, Khaled"
 <khaled.almahallawy@intel.com>
Subject: RE: [PATCH 04/19] drm/i915/lnl+/tc: Use the cached max lane count
 value
Thread-Topic: [PATCH 04/19] drm/i915/lnl+/tc: Use the cached max lane count
 value
Thread-Index: AQHcBdvSQHeVQwboik2cJghsTNngyLRW5Kkw
Date: Thu, 7 Aug 2025 08:49:50 +0000
Message-ID: <DS4PPF69154114F5B26CE82B7886DB94CE9EF2CA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-5-imre.deak@intel.com>
In-Reply-To: <20250805073700.642107-5-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|IA1PR11MB6074:EE_
x-ms-office365-filtering-correlation-id: d72b6d7b-e36b-4a7f-8a5f-08ddd58f5eb4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?cXcvMTNYZ01FM3FvRnkwWmRpSGxlVC9iMWhZSDQ0bkJ5RzRLSWRzWWpkdWR4?=
 =?utf-8?B?OUhnTmVqYmZwK0pSZktRMXdRczRRczJTcUQ5OXlta3NEWlFWLzRCV2xnV1E1?=
 =?utf-8?B?MWdMQUc1Sm95bTQ3eHJjTnQ1UGxQZWt6UzFPQzJqK2NYYUVEQTJVTzRldVZ4?=
 =?utf-8?B?dDJwVjRHV01OcFVyNnpGY0FTMU5DTUFHdmMyakdXTCtManpJMy9PUnlJV1JY?=
 =?utf-8?B?d0tWMDZTMG5DcjlsVDRTOGFLOGxCOHhHN1pOUFA3YVNjUSsvcTFiV2NNU1Av?=
 =?utf-8?B?dHA5ZlM3VU1FYUszU2hJWFhhNVovTmFZbTZpd1RoQVEveHV1ZlZmL1UvYlpG?=
 =?utf-8?B?TEtZcDJFZzZRMjRkMkJnc2RzeVlxS0VYb2FWcVNLWjdwVTlZZ09jMW9LVUhB?=
 =?utf-8?B?QWxkVEoxbU9PNTN1bWdFMS9iVWJhQmVpbEdKYkZsNk13QU1lbGxjdFREQVlI?=
 =?utf-8?B?MXZPcVpCRkZ3d2Z2TzNsRm9ySk9vRUVsdklDblBkRXUycFJWblcxSVQ5aFoz?=
 =?utf-8?B?UlVyenhnK0wvK2JQdW5wVW5DVTBhcnk0NkpKWEtjMFVmNHROMDZKYXRzdVJa?=
 =?utf-8?B?dG5SWWVHRGtveDNBeTB2RC9BMFVKUXNFTUhzaXBwSEhOa0FSQkQxT096THhx?=
 =?utf-8?B?WVdONS9WbFB5dXZDeXhCMzYxV3BZK3ZoaXdZcXNJS2FRczVoSXFkNGVwMUFX?=
 =?utf-8?B?d0lTMTRiRklqWVRmLytTNkw0aTJyR2RhTmtENFoyVjVWdDhvd05IMG45NjY4?=
 =?utf-8?B?U3lrVnNjL1o1QzB4NldtOGc3Ri9BaXlNR1p2YTN3RFB3TGgxVlQxbG5haElR?=
 =?utf-8?B?aG1BR2xjZWk1OU5TL1lZUDVzUjlsSGwwNW8wU056K2dtVURoNm15bS83Z0Fi?=
 =?utf-8?B?UnEwRE4yTkkyZjRvU2FxUTRoL3VaNHRWblI3b3J1OU0vWmxwUk1yTXZwQ204?=
 =?utf-8?B?OXZBcFIzQ0RSNVRXeVF2UTNndG5taHpuQWlqclpDWTZuWS9IU2M4bHMxVkg1?=
 =?utf-8?B?VXRGWlJXQ2MzM2tZdXV1cHl2aHlsRllzQjZjbzUxeVdLZlpDcmorbEI5dDRB?=
 =?utf-8?B?YlMyTVNObmxrcWNxSk5MQ3lTU0RnbFJYWnR2UllLVzVrb3hESWtaRjNJanlt?=
 =?utf-8?B?RlJKY284clJZeFBNdWtVcmltWjc1b24vVngrbXFjNHRpekRtTUJ4blV4Kzk4?=
 =?utf-8?B?Wkd4b1RGb2NiQ202YWlITlBvNENTeXJuM3FHWEo1NUFqZU1DSGgyeVBPMWtX?=
 =?utf-8?B?L1I5NDZtWWpReVUxNkZOVEx3bEh5QWg2TGtvSUptT0xXVnZyYlEyd2tPL0dY?=
 =?utf-8?B?OFhlSUJQOVA0VVhva2tPelRhN2dxU0Zvam1qUGdkSDRVNXE1VGVHbk15bVg3?=
 =?utf-8?B?K1htUklObXU5NmhhU0tUR1hRRlVEbWFaOEY0S05HdXEwTFFxaTdRTVo3MVFs?=
 =?utf-8?B?dFdHaklUdFV6YkpZbDd5QjJ0Q3Fhd250VDdPeFUyUmZzNkdwekdVVmRCb1lY?=
 =?utf-8?B?OXcxZERHOFpRK3d3UTdOcWNONENLRmNTa2tKK3dwTzRrVHJhOERTMmEwejh1?=
 =?utf-8?B?VzVJRWhJNDZadkg3WVdwV3hSNGk4SEdWT1hqOFpONFpkSW1INHRUU0FBZ2dq?=
 =?utf-8?B?Q0NWSEVvWlQrd0ZYeFdMNSsyNDgrZ09vVmhIbC9vazM4NzVrK0YzaFQvQ25B?=
 =?utf-8?B?ZFV5cHNXQTBFMlE0T2xRSzFOY3ozSk03cVI1eUk2Vm9TcVlJWkpodmY4SitF?=
 =?utf-8?B?c0tkMEMwMS94eFlPWFhQRDRsaVZtLzBuUmI5N0JJbGdvdVlBZnQ5REZOUjE2?=
 =?utf-8?B?WTRtZU1wYml3UVhUWTBja2hQUzFvbkVtZGtEQ0VvWjdDVXRBSERxMDBvSkF1?=
 =?utf-8?B?K01JZDR2M1JTN0xpUVBLNVVVcm5DM2NPYjJYK0VMV21XdTlGR01oSUxxOGtI?=
 =?utf-8?B?MlBMc0pLTXY1NG9NY3p2bFFMV3VDMHFMTE4xNWE5dHR2ZE96N242L1hwRFAv?=
 =?utf-8?B?QWxoUkg3QzFRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2lUK01PdWQ1V25nZ2tWOXYxOU9SL2w5cTZ0MnFsVW53NVc0alpLNkpyMzZl?=
 =?utf-8?B?ajE3Q2ZmOUtlN2tTU29lM1NQVHgxYW1DOE0zT3IyMmJWMHliUTZiVUJIN2tN?=
 =?utf-8?B?cUQ1Z3FyM0kvNnZVSUdsdlNGZVdLS1dUbHlSNk5aR1pjWGwydElvcnlmWnBQ?=
 =?utf-8?B?ZVJKNzlvRzMvUHU0dFBTYXMzaGszdWgrVUt0dlN2dWJWUWxLTjNEVE5CZnBP?=
 =?utf-8?B?Mk00VnZPU0JlZ0VrdnRZNDlmRDZOQmFBeHpiaGt4RnVoVGRQY2x0MlJ6Y0hG?=
 =?utf-8?B?R01MT0t3Y1hkTTMrWndLczQzL09ia1l3K3l3eFhDVXllNVZ3Y2xhMUltR1Fh?=
 =?utf-8?B?NUwyNjBNOGJxY3FQUXR0Rm45Ri8yZ0pHMWxDR3VDZWZYK09LTTFWelpKbmxr?=
 =?utf-8?B?eU5RMzN2Q01aRnRySkR2NlpBWWRVazVXelBqTlZKUmhUdlVwbDc0NzY3NEdo?=
 =?utf-8?B?YmFEWVhscTNETXBlUVRqeDE1bnZmWmVaQmZEd1ZnQ1dYdmEwQlh6dGV5NU1q?=
 =?utf-8?B?U0hVQmduaEd6R2lXL0hHMkUzWjhVQkcvanp3UmxqSnpKYk9LUndKTy9zZFgr?=
 =?utf-8?B?RExIVVNPZXV0OWZld0FPc0xBY25HdWs3azdCS1pBWTdyNlkrMytZOXFFZ0hE?=
 =?utf-8?B?b1VQc3RQY0FUUGd5TEtwK0VmdWFKTTEzeGpQa2JvYUN3WnhWbStZbitkb3FN?=
 =?utf-8?B?bEhRTzFwWXZxYVZ6VW9Fcm5CNUdETm5wVkR1dzMralhyVlhzQ2tYQTVENjhF?=
 =?utf-8?B?WDc4VFJqQndmWXc5NmM2bHhidzg3ZE5La25GMWxoVENvUjk0U0pPcFV2amVa?=
 =?utf-8?B?RWw5TktaUTR1N0YvQWlXK1BSU1FWYkI5eWt2NXhOcldhU2dxVVYwOHdHQVZG?=
 =?utf-8?B?VEh5RjRseWs3OEFvb2lmL0NhL2lqWlYxSlE3Mng0NEgvNW1lTm5qWEx2Ulh5?=
 =?utf-8?B?ZVRRVnE2anMwUU5tVlkwTXdGTXdzdm16WGVZbFZKQ0h6UmRJdFdybmtTd2V3?=
 =?utf-8?B?UGNNelkwSU45Z3Roa0VMTUFScS8vUWlIL01sT0tDN0YrWUxHZkJTT2RqNS9H?=
 =?utf-8?B?Uk44akI2RmVzd3JRQ2p3ZEtadndWVWdId3V5VFl1azQ1L3lSaVRkcjE2Q21N?=
 =?utf-8?B?V0FiNTNaNFhramwzRmdUZ2hXKzM1eUw0alMwM2R4TUkvcnppaWJxR0prUEg5?=
 =?utf-8?B?NGY3dEdNM0FXbkxGU2w2STcvUUMwTlRONytvR1o2MjBucEN1cnowNUdRNjNa?=
 =?utf-8?B?Qyt0anVndDVJTTJ0SFZIS0tONWhuaXI4M1hxUGx6Z0lhNjFDZHZlWDU5dTZ3?=
 =?utf-8?B?ZEZtV01pMGVXa0xNWGhhY1RhSDJvMUxlZk1qV2dCV0dsY1paUEV0VWtuRndM?=
 =?utf-8?B?RkFxYXNkK0xoRDc2ZjBWd3RrdjhMb2NoTHZFYW55Q01iRWQ1UmdBNjB0d1dr?=
 =?utf-8?B?OVhIZWYxWGdITGNIWGgxaWZScG11ME5pbHVVR2MvME0yVG1IRE5BaDhpK3VX?=
 =?utf-8?B?cmNaL29Mc1FUQjRLaFRTcWZINVhFMVhudWMrazlWUzViakxJbEdJLzRySjJx?=
 =?utf-8?B?UXBUaVJjZjRNZ3NvWTBYN0FXajUrVC9QSzlpUFVKamRZN3FnY3hwMkh6aE9h?=
 =?utf-8?B?ZmdEbmdYMlBneXNLUUw1dFZLdFJ4UWhwU0N4RVQrcXAxdkdSV0VpNzJVSldy?=
 =?utf-8?B?TUgzZG42RkM0WGxVLy85Q0tCdUxITFRrQW1MbUpCWlZ2bDB5ajl4VGswQ2J6?=
 =?utf-8?B?N1hHOVZDeGlBWndaeTRmczZ1MjhJTGJsd1hNZEZmWFgzcFlVbk43Q2dpUFZE?=
 =?utf-8?B?Wk1FLzJRZHhSVm5IN3NwbHF4TmZFTHpIeEVidlBEYkJJeEZHK1Qwb2w0UTBq?=
 =?utf-8?B?eXNpejEvVGFrbkdNWWF2dHc3YWI0QnVqWUlTSWZVMnVvWkp4eENvNGhNUXJZ?=
 =?utf-8?B?WjdsVlYvNXkzUUJQZkhoQ3A3YThjOEZNUkV6bEQveUJkOGtoNnFuU1pzZ0Rx?=
 =?utf-8?B?Z0R1UGFDQXVZK25tMWtaeVdnSEl3em0vL2lBWXM3M1pTVGtMOGdvMHJLajcr?=
 =?utf-8?B?d3JyelBlRzUvL3RHdm93T203L0cvVG5CdkcwZUtEaTQ4RkY0RHJsMHY2cDBG?=
 =?utf-8?Q?oK267zPj5Redjy6BQ+o9XevHx?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d72b6d7b-e36b-4a7f-8a5f-08ddd58f5eb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 08:49:50.1850 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OoLfSfg6UrTf7nRKfxgJxsc4UhrW+clP5H5YZnicxKTCSFrStb1AYbX5nFYKJAIHbg4eCpygZTHJT5IuJmXY+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6074
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogVHVlc2RheSwgNSBBdWd1c3QgMjAyNSAxMC4zNw0KPiBUbzogaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBz
dGFibGVAdmdlci5rZXJuZWwub3JnOyBMaW4sIENoYXJsdG9uIDxjaGFybHRvbi5saW5AaW50ZWwu
Y29tPjsgQWxtYWhhbGxhd3ksIEtoYWxlZCA8a2hhbGVkLmFsbWFoYWxsYXd5QGludGVsLmNvbT4N
Cj4gU3ViamVjdDogW1BBVENIIDA0LzE5XSBkcm0vaTkxNS9sbmwrL3RjOiBVc2UgdGhlIGNhY2hl
ZCBtYXggbGFuZSBjb3VudCB2YWx1ZQ0KPiANCj4gVXNlIHRoZSBjYWNoZWQgbWF4IGxhbmUgY291
bnQgdmFsdWUgb24gTE5MKywgdG8gYWNjb3VudCBmb3Igc2NlbmFyaW9zIHdoZXJlIHRoaXMgdmFs
dWUgaXMgcXVlcmllZCBhZnRlciB0aGUgSFcgY2xlYXJlZCB0aGUNCj4gY29ycmVzcG9uZGluZyBw
aW4gYXNzaWdubWVudCB2YWx1ZSBpbiB0aGUgVENTU19ERElfU1RBVFVTIHJlZ2lzdGVyIGFmdGVy
IHRoZSBzaW5rIGdvdCBkaXNjb25uZWN0ZWQuDQo+IA0KPiBGb3IgY29uc2lzdGVuY3ksIGZvbGxv
dy11cCBjaGFuZ2VzIHdpbGwgdXNlIHRoZSBjYWNoZWQgbWF4IGxhbmUgY291bnQgdmFsdWUgb24g
b3RoZXIgcGxhdGZvcm1zIGFzIHdlbGwgYW5kIHdpbGwgYWxzbyBjYWNoZSB0aGUgcGluDQo+IGFz
c2lnbm1lbnQgdmFsdWUgaW4gYSBzaW1pbGFyIHdheS4NCj4gDQo+IENjOiBzdGFibGVAdmdlci5r
ZXJuZWwub3JnICMgdjYuOCsNCj4gUmVwb3J0ZWQtYnk6IENoYXJsdG9uIExpbiA8Y2hhcmx0b24u
bGluQGludGVsLmNvbT4NCj4gVGVzdGVkLWJ5OiBLaGFsZWQgQWxtYWhhbGxhd3kgPGtoYWxlZC5h
bG1haGFsbGF3eUBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5r
YWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFr
QGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3RjLmMgfCA2ICsrKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0K
PiBpbmRleCBlYTkzODkzOTgwZTE3Li4xNDA0MmE2NDM3NWUxIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IEBAIC0zOTUsMTIgKzM5NSwxNiBAQCBzdGF0
aWMgdm9pZCByZWFkX3Bpbl9jb25maWd1cmF0aW9uKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YykN
Cj4gDQo+ICBpbnQgaW50ZWxfdGNfcG9ydF9tYXhfbGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydCkgIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSA9IHRvX2ludGVsX2Rpc3BsYXkoZGlnX3BvcnQpOw0KPiAgCXN0cnVjdCBpbnRlbF90Y19wb3J0
ICp0YyA9IHRvX3RjX3BvcnQoZGlnX3BvcnQpOw0KPiANCj4gIAlpZiAoIWludGVsX2VuY29kZXJf
aXNfdGMoJmRpZ19wb3J0LT5iYXNlKSkNCj4gIAkJcmV0dXJuIDQ7DQo+IA0KPiAtCXJldHVybiBn
ZXRfbWF4X2xhbmVfY291bnQodGMpOw0KPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIw
KQ0KPiArCQlyZXR1cm4gZ2V0X21heF9sYW5lX2NvdW50KHRjKTsNCj4gKw0KPiArCXJldHVybiB0
Yy0+bWF4X2xhbmVfY291bnQ7DQo+ICB9DQo+IA0KPiAgdm9pZCBpbnRlbF90Y19wb3J0X3NldF9m
aWFfbGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwNCj4gLS0N
Cj4gMi40OS4xDQoNCg==
