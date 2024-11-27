Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A74229DA34B
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 08:45:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BF3010E9FC;
	Wed, 27 Nov 2024 07:45:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VbLZ8KJo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 607A210E082
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2024 07:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732693507; x=1764229507;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Osfo7OKgNX0Ih8zXs/98F7gkf96bYDCY3upm1UJZwN4=;
 b=VbLZ8KJoMov74YWM/prcAmbBcoZRBzyuBPv+LIsyWWBLI0OgunqNyzB7
 /srXr6S/0Dzn1/ze7Nitoh7eBUzn+7SETdSfxhN4twT3QHixIsyStXZXt
 FcHykLbT+IbT364CGDRqQRE6bcUIizFqe1nHdTdxnq5b2lUPNINqaMsHZ
 hvxbNNGWTneXMkER9wPlWiSXNfDKmfOhjWul61pDR7jgNSwv30EGdourU
 rWMwj5VEl6Uyqz2hE/eN6h2C9O4cZx7DYVWwWR9KcxaI+zQR+E8ufYdU7
 RzC19drkrvZ9qDVXo1q9gHNSKvE7sBwSejI7VXt0mE1QKzsKDVN2BKm/O A==;
X-CSE-ConnectionGUID: 71eNYxDySZ20IBK8aVwZgw==
X-CSE-MsgGUID: JW+BIS7wQlSTQG5Z58w+VA==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="43543234"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="43543234"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 23:45:06 -0800
X-CSE-ConnectionGUID: lvU5R/zETCmiW46YbQoGWw==
X-CSE-MsgGUID: vDDSarBxQ6i1qLKkJSj4pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="91810032"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Nov 2024 23:45:03 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 26 Nov 2024 23:45:03 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 26 Nov 2024 23:45:03 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 26 Nov 2024 23:45:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mE6mFtzhm+V6CAM0hhED6JUlgvszjwvv0h9n1SyOj7XiVmLG0AiSnjeIQODs2QjaVYJMcCvTdALLqjreRMb5X8lyVL+N6STqWSWMxolovwR18m/L9JW0Hv7vaqSzjWvLGeUvK5nzSwUGDYBHbZ0Y8jRSIU9nkcITdDWMR176OjMI78HixpOdrlhd/FlRSGbYCcvAHoYaoEig9nm9Q3e0fxJ20X6Lkd2EMK9Yun0EA+1r2phFoHovDQJ/KZvBiW4AY1AdxFPTVx1u9QHEYc3ZSkURRh+cOHQXBWJq6R6pRIq26BcgQv1H9E4tHo1ZM1ck45OMDBYLk5CE92ajg1y5Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Osfo7OKgNX0Ih8zXs/98F7gkf96bYDCY3upm1UJZwN4=;
 b=b7gBQZzXXsczYFHsJHbL2CRGHW4nDQIKJWymwPQY4Fg9lowh0t0/r0zhIe7VR3TeUvkJciLlY2BA9PcIrjTc7qibVK7Kcodq+rJVVDgc/w/NayFR1iH266nsmo7uR3I1DL+k0uDFaLzDBKxH0CN8FdhASqtIdev8TtPbTYSyCTwUGUFA63LWfNOvpST4Iw86PLGcXwzDKz5JgrqCfa0hS1Bj447tucEIrCUEew6gzFbcQ8DVMfh5EQdhRhPWydlV/nLnLrRpF0Q3gx7y4ql9Cq2/oel8WCi3reDa/f9o2ZcuRxL+qJAmimRYa5EfF2VTQW/6N0voz5Fm22cU2cBW3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7041.namprd11.prod.outlook.com (2603:10b6:806:298::15)
 by MW3PR11MB4602.namprd11.prod.outlook.com (2603:10b6:303:52::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.21; Wed, 27 Nov
 2024 07:44:53 +0000
Received: from SN7PR11MB7041.namprd11.prod.outlook.com
 ([fe80::3e58:bbf7:9767:4972]) by SN7PR11MB7041.namprd11.prod.outlook.com
 ([fe80::3e58:bbf7:9767:4972%5]) with mapi id 15.20.8182.019; Wed, 27 Nov 2024
 07:44:53 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/display: prefer DISPLAY_VER over
 GRAPHICS_VER in display s/r
Thread-Topic: [PATCH 1/2] drm/i915/display: prefer DISPLAY_VER over
 GRAPHICS_VER in display s/r
Thread-Index: AQHbP+u9QOuSLL+NiEyjF6VNjcgLibLKwHew
Date: Wed, 27 Nov 2024 07:44:53 +0000
Message-ID: <SN7PR11MB7041961C1C14C32794C4091DEF282@SN7PR11MB7041.namprd11.prod.outlook.com>
References: <20241126101222.2671224-1-jani.nikula@intel.com>
In-Reply-To: <20241126101222.2671224-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB7041:EE_|MW3PR11MB4602:EE_
x-ms-office365-filtering-correlation-id: 531f35b1-a734-4b67-5683-08dd0eb76170
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?UGxiY29hVWFsNzZDdlNrblZzZHpFbFkwdlhUZVpDMm43cXdDZkYxby8vWi96?=
 =?utf-8?B?djVoaEE3cXl3aFdOYUlzRDZrRHB2YW92Si96NUFIVDd1dEJXNXpwRzkyQ2c4?=
 =?utf-8?B?RlpyRVdTb2UwRm91b3lkSnN3dFl6Vm1LaTMvaVBDc3ZmcFpzUGpVcnExYzFE?=
 =?utf-8?B?WEc1a0JweWk5czdPdGFHaWJlK3RTRzg2dlpRRzVpWFRURHd3WVQzWktoYll6?=
 =?utf-8?B?Y3dkTzU3UTBNSzc2YWJXcTBIandFM2hOYmJWWmE5TjcxWFJxaXlTSGdIdVFl?=
 =?utf-8?B?ZFZJbXdoQUhjUWtxaDhmbXNWcGRsb2d5ZjlGd0poUTh5OVlkbm5pSDBGd2xL?=
 =?utf-8?B?R1ZIZnpWMklRVVlGMFlzOTdZSGJiR3MrMzF2YzRrUk1ZeGhBMmtncHJTbG1y?=
 =?utf-8?B?VmFJWDNOaFZISlk0SkhZRzAydjZ1Zi9CcHFIWlBua3JSS3ppUi9CZ1V5QnlB?=
 =?utf-8?B?QXArbEVVRExyczV6VEVaQXBYQnBxbWNqWXVJT1phRmNGclhaRkJKUkdhaGRr?=
 =?utf-8?B?SDF2WG1tQm1hdzRYaTFDTG5TYWJ3d29mUmNKOTFCRkpQNU1lNnhwTzZITVNw?=
 =?utf-8?B?bG5TK0FLUHJtMWpwWEpOWHRsQmdWT0NWWXFXK1hUOFE2R1dGUW9iNUI1QkNO?=
 =?utf-8?B?OUVZMkRPNXRvNkZYSFVMQitsMTBCemRQSSs1L1p4NkVTYVZnTUU0VS9CSkdH?=
 =?utf-8?B?QzNSK2g3SXVMalVWcjYzQjFFQWpJVlUxbTNiSUYxT3JxN1ZaVnlnaUp4S1Vs?=
 =?utf-8?B?WWtXeU0wc3FVaHkrOFBTQmcrVjRUUkZiNlhpMTRXa216L1pmMVRvUXlhRmtI?=
 =?utf-8?B?emM2K3dmUkVvTnVwNW91cVh5WlVzYS8xZ1Vic29QMVcvR2ROUVhRd2NxWDhL?=
 =?utf-8?B?Tzd4MEtRL0hvMmR3UTNkTVZ4M2JsY2xxWVk1N2NZVE1qNG1hYndoQVE4ZVJq?=
 =?utf-8?B?bkEwL1VBU3RPUy9ZWDRsYWhSN1BQeit0OS9BTjdHaXM2ck1CQWxGSC9SYU4x?=
 =?utf-8?B?amo4SURreTBJQVlXMXdRc2hBUWxQY3JlR0tBZkFwR0I3V0VwQlZrMitxK2xm?=
 =?utf-8?B?L1c3Zkk0WlJFc1J1dWVmM0kxYXJnTlNEcmM3cHJ2WmNqSHZIOGRtMDhVRW1i?=
 =?utf-8?B?VzBDYm9taUE4SU1QMmRSM1ZybTVaSFNodFN4NHZoY3ZNRTlSMHA1TE1xSkY2?=
 =?utf-8?B?T1NRZHZhUGFueGlRUTA5WHdJaFhhYTBGRFI4UXd5Yzh6SDZTd3dqY1djRUww?=
 =?utf-8?B?TjljWll5UEhTNFN1QjRQNU9CWHFEZ2lGcTJEUVNKWjl4TEREdHl4TDl5ZlFT?=
 =?utf-8?B?NjdxMTRRdGlraFJUcFI5SzNhNlgzUTJpSEtubWdXY0pZMmZIaVFWSnpSU1N0?=
 =?utf-8?B?R0R1MVlHenFUanNWZ0dJN3NKYWkyLzFzdFA1RTcwYUYxbjV1VXY3aGFoNUFF?=
 =?utf-8?B?UlNiZjNXeDV4RHBENm9WRUtBdG92eExJaTZrdlBJcGxmekFLUFJLWkVhNzBN?=
 =?utf-8?B?WTkzRGlaMThqYXROcy83WllJalRaOWxqbFFBbVRwU0NZMlJWaWhRTzRxM2E5?=
 =?utf-8?B?Unc2K3NLTGIrNnFVS21IajJMNjBvWlJRWU9LSkpNbGkzYUtUSVkzUDZOZDgv?=
 =?utf-8?B?VGw3aE9UeVRCR1JqMnYxS3hkemc3Z0lQdEdIZGgyMjI0YkRLTWRaSnJicWJi?=
 =?utf-8?B?M3NWUTJQeWtDbW1OTlNIQUVJSjQ0aHlSZkZEd0VXV0drMEV2bjNjdWxOM1hK?=
 =?utf-8?B?VFJ0amk3SXo0Ymg2SWx4WklLR0xzajNuNEQyZ3VaM2JwWUp0WVhZMkZVMXZV?=
 =?utf-8?B?dklDYmtaSVdMYlNkLzZXRjBWeE1jb0JhTXY2TG5teXEvNUtIbTNKa2dyN0tU?=
 =?utf-8?B?NnVxU3o3SFpFSEd5S0owUHAzdXJkSWNjdXdJOS9hd0JTWGc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7041.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TmZ2MjVNMGR6cFo5WitiRXBHMmMrSnppdGZVTUc3RlBkUVcrQWZ6NC9HeGFW?=
 =?utf-8?B?RjJKeGN4TFQyZ3JqbmJvMzNNL0lZNHlZenN4ZDNWdlIwYXNyZ0p6RVQ1OXVV?=
 =?utf-8?B?SENaUUpYRkplQmVmTG94blI1VTAxR1hNQkFrOVJSSXVMY2EwZGVhT25IRzVm?=
 =?utf-8?B?djl6SmM4UFZjdjd2S0E2RGVacFMva080aTJ4OU01bHNlQzhUUnV0WGQ2ZnJ2?=
 =?utf-8?B?SENFdnEwc01pQk9lak0yOG9Nb3JtOEJweG9qbFBQa0JmQ0sxSjdZdHJ5bVM5?=
 =?utf-8?B?REIxMTFlNUkxOHRnRnhkTGlBSGVJcVZBQ3FwTERLTzJMdjhiQXppdjMwOXR1?=
 =?utf-8?B?Q1JxZkprTnl6czlpYVNybHRtZVNCMExHUkVkSTEzRFdUWGFLV0JXUW02eUsz?=
 =?utf-8?B?RWZCYmYxRE51enBFWXFKckNXOUlDaDUyNnB1VEpZQk5sYjRFdmE1ZzZzTVBa?=
 =?utf-8?B?SU4rMk80bkN1UEhhR3FUVXRHV2NmdWFJUEJnck1BVFR3Z2dYNUhqcVFNa1h1?=
 =?utf-8?B?UVNZZlRuNHZscmM3UnVXTzBXblhFTUVBUWcvdnZFNmVOUHIrYVJGVDZBUzVN?=
 =?utf-8?B?N01GNUpvc1dWTzYvZ0Jpd2E1V1IybVpBbks2SnFyNFBTaEtXYkVkTGEwNmdu?=
 =?utf-8?B?cS8yd1A3UlJZdW5laUYxaU9HSzIxNjBGSldEMWpFT2tkWk1YM0hKcCtNd0lF?=
 =?utf-8?B?djFnN0p5YXl3MTd4dDFwTnA1WCtoRFhSbjZXNkxOUGJ3cVRjVFpqenRHUDZB?=
 =?utf-8?B?dEJXZVo2WWdVYmhETFJWRFM5RklxSHJhbW50ckxxSTdDMGRxbzRrQ2NKOEZv?=
 =?utf-8?B?Y3B6VzBoWGtBTWVyZFMycjl6NGxwQXJBRWF5SFViNk9mQ3ZzY2ROTmQrc1FT?=
 =?utf-8?B?WGhwUVNDWVV2ci9ZbW9GVWpqLzc2OVIyckR6NE9nUTVDZlE4TmVITURJQzQv?=
 =?utf-8?B?RzVqTDdNMC9XT01MNVNYa0pVcExHdSs0aDd6ajlmZ0hqMmdVVkh0RnJWSG9D?=
 =?utf-8?B?YkZIbHJlMDFNcCtSV2E0VEp0OHkzM1l0c0dzVjNrRnRFT2VPV0hwRWpJTGRQ?=
 =?utf-8?B?K2dVRnpYbVhCWjQ1RHJ0WThvVlVhVWI3VTZ5eW5XZllrYWRuc0xwUUN1R2I3?=
 =?utf-8?B?WEdac1BEbE1MV3ptQ2JZaTYvd0tDQlRBNlRxa1kxWlhMdnVkUGJrcjNaRGFm?=
 =?utf-8?B?YmYwVVJJZE01clZYbTBVbGM0dnI4ZUlyQitLWlEvMlQ1Lzd5c2xZYmk0SXNS?=
 =?utf-8?B?Zm9qNWZkQS9tRmU3d3FidTYxcEZyU3V1YnNTS0RsZDIzVXF2disvUTZmemVs?=
 =?utf-8?B?M3BXNy9kZlpWd2dwTVhFeHVkMGovSjErTmpWNG84ejZBV0NZbmNEMmJkWEo3?=
 =?utf-8?B?M2UvanY0UWwvL0prbVQwNkZVRWlPazcySGttVDJ6KzQzSmdMNGtHNXNILzJ0?=
 =?utf-8?B?SHBpWjVHbUQ4NzFhWXFCVnZucUhFcE5OTGdaL2FZME5tS2srZy96Wk5WcDhB?=
 =?utf-8?B?cHBpQ1o1Zkx1ang3ZkcybU9iVmtsczlsL3hFWFVvUk4wUXJqRHMyK1Frd0pB?=
 =?utf-8?B?YlU3aDRqa3NkTkY5dzVEUmxTVURXTzNRaFg5T3JjM3RESlh3OTA1Mlo5VklT?=
 =?utf-8?B?STR2VGVwdzR2ZWVRSE9rbHFzZWdNdk1yOFM5VHZkR0xySmFMZG1hWmo4WGY5?=
 =?utf-8?B?T1FTVnlac1BWVU51cGxUM1U5eWh3M01Ob3hLdENJYUVMK0NIRFpNWUZJTU9i?=
 =?utf-8?B?b3Y1YTNpNTJYWktOR25zSkM0Y0M1MW5maUc0Si8vT1pwUUJVV0VVaUovRzJ3?=
 =?utf-8?B?WkJqVU8zeUZSQnpGcHRabjBkV0dFbjlJYmppV3NBRXlIZnIyK1F2VndYaXVr?=
 =?utf-8?B?RGF6TWprR3FGOTQvelpTVjE5R3pVbjQzMWZPeUdldTV0dTBqbklvNTk3dWhX?=
 =?utf-8?B?M0lKS0Y3M3FObU1UMVRjdmR0cXQ5U2UrTFFMNTZWcDA5RXFET1JEMWE5RmRN?=
 =?utf-8?B?M2ZpbDN3VEFKTDdGVXY5RlY0a3dYZzlJSTlGdWQwNWpicXFEaTk1SHpFeGF6?=
 =?utf-8?B?d0Q3dmhTWm4rdWFsS2wzVTBhMmFtR0ZzNC9TNVE2U2tkZlVxRXo1Y05QYmlz?=
 =?utf-8?Q?baxwxun0SRFH50osHkEHahQOM?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7041.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 531f35b1-a734-4b67-5683-08dd0eb76170
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2024 07:44:53.2965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RhF93HRZXtuoQuzHsYivtvHEpILpz4eXF8hSXltQWLSgLC3dGns9L4OFMm2TyhVaNS7EiUzen46t8MXsrvfdSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4602
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEphbmkNCj4gTmlr
dWxhDQo+IFNlbnQ6IFR1ZXNkYXksIDI2IE5vdmVtYmVyIDIwMjQgMTIuMTINCj4gVG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPjsgVml2aSwgUm9kcmlnbyA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4g
U3ViamVjdDogW1BBVENIIDEvMl0gZHJtL2k5MTUvZGlzcGxheTogcHJlZmVyIERJU1BMQVlfVkVS
IG92ZXIgR1JBUEhJQ1NfVkVSDQo+IGluIGRpc3BsYXkgcy9yDQo+IA0KPiBVc2UgZGlzcGxheSB2
ZXJzaW9uIGNoZWNrcyBmb3IgZGlzcGxheSBzY3JhdGNoIHJlZ2lzdGVycywgbm90IGdyYXBoaWNz
IHZlcnNpb24uIEFuZA0KPiBmb3IgdGhlIG9sZGVyIHBsYXRmb3JtcyBpdCdzIHRoZSBzYW1lIHRo
aW5nIGFueXdheS4NCj4gDQo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5j
b20+DQo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
DQoNCkxvb2tzIG9rIHRvIG1lLg0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fo
b2xhQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aTl4eF9kaXNwbGF5X3NyLmMgfCAxNiArKysrKysrKy0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgOCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF9kaXNwbGF5X3NyLmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfZGlzcGxheV9zci5jDQo+IGluZGV4IDRjNzhiNzE2
NTgzMS4uZTBlODA0NGY5YmNiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2k5eHhfZGlzcGxheV9zci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaTl4eF9kaXNwbGF5X3NyLmMNCj4gQEAgLTE2LDE0ICsxNiwxNCBAQCBzdGF0aWMgdm9p
ZCBpOXh4X2Rpc3BsYXlfc2F2ZV9zd2Yoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
DQo+ICAJaW50IGk7DQo+IA0KPiAgCS8qIFNjcmF0Y2ggc3BhY2UgKi8NCj4gLQlpZiAoR1JBUEhJ
Q1NfVkVSKGk5MTUpID09IDIgJiYgSVNfTU9CSUxFKGk5MTUpKSB7DQo+ICsJaWYgKERJU1BMQVlf
VkVSKGk5MTUpID09IDIgJiYgSVNfTU9CSUxFKGk5MTUpKSB7DQo+ICAJCWZvciAoaSA9IDA7IGkg
PCA3OyBpKyspIHsNCj4gIAkJCWRpc3BsYXktPnJlc3RvcmUuc2F2ZVNXRjBbaV0gPSBpbnRlbF9k
ZV9yZWFkKGRpc3BsYXksDQo+IFNXRjAoaTkxNSwgaSkpOw0KPiAgCQkJZGlzcGxheS0+cmVzdG9y
ZS5zYXZlU1dGMVtpXSA9IGludGVsX2RlX3JlYWQoZGlzcGxheSwNCj4gU1dGMShpOTE1LCBpKSk7
DQo+ICAJCX0NCj4gIAkJZm9yIChpID0gMDsgaSA8IDM7IGkrKykNCj4gIAkJCWRpc3BsYXktPnJl
c3RvcmUuc2F2ZVNXRjNbaV0gPSBpbnRlbF9kZV9yZWFkKGRpc3BsYXksDQo+IFNXRjMoaTkxNSwg
aSkpOw0KPiAtCX0gZWxzZSBpZiAoR1JBUEhJQ1NfVkVSKGk5MTUpID09IDIpIHsNCj4gKwl9IGVs
c2UgaWYgKERJU1BMQVlfVkVSKGk5MTUpID09IDIpIHsNCj4gIAkJZm9yIChpID0gMDsgaSA8IDc7
IGkrKykNCj4gIAkJCWRpc3BsYXktPnJlc3RvcmUuc2F2ZVNXRjFbaV0gPSBpbnRlbF9kZV9yZWFk
KGRpc3BsYXksDQo+IFNXRjEoaTkxNSwgaSkpOw0KPiAgCX0gZWxzZSBpZiAoSEFTX0dNQ0goaTkx
NSkpIHsNCj4gQEAgLTQyLDE0ICs0MiwxNCBAQCBzdGF0aWMgdm9pZCBpOXh4X2Rpc3BsYXlfcmVz
dG9yZV9zd2Yoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ICAJaW50IGk7DQo+
IA0KPiAgCS8qIFNjcmF0Y2ggc3BhY2UgKi8NCj4gLQlpZiAoR1JBUEhJQ1NfVkVSKGk5MTUpID09
IDIgJiYgSVNfTU9CSUxFKGk5MTUpKSB7DQo+ICsJaWYgKERJU1BMQVlfVkVSKGk5MTUpID09IDIg
JiYgSVNfTU9CSUxFKGk5MTUpKSB7DQo+ICAJCWZvciAoaSA9IDA7IGkgPCA3OyBpKyspIHsNCj4g
IAkJCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFNXRjAoaTkxNSwgaSksIGRpc3BsYXktDQo+ID5y
ZXN0b3JlLnNhdmVTV0YwW2ldKTsNCj4gIAkJCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFNXRjEo
aTkxNSwgaSksIGRpc3BsYXktDQo+ID5yZXN0b3JlLnNhdmVTV0YxW2ldKTsNCj4gIAkJfQ0KPiAg
CQlmb3IgKGkgPSAwOyBpIDwgMzsgaSsrKQ0KPiAgCQkJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwg
U1dGMyhpOTE1LCBpKSwgZGlzcGxheS0NCj4gPnJlc3RvcmUuc2F2ZVNXRjNbaV0pOw0KPiAtCX0g
ZWxzZSBpZiAoR1JBUEhJQ1NfVkVSKGk5MTUpID09IDIpIHsNCj4gKwl9IGVsc2UgaWYgKERJU1BM
QVlfVkVSKGk5MTUpID09IDIpIHsNCj4gIAkJZm9yIChpID0gMDsgaSA8IDc7IGkrKykNCj4gIAkJ
CWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFNXRjEoaTkxNSwgaSksIGRpc3BsYXktDQo+ID5yZXN0
b3JlLnNhdmVTV0YxW2ldKTsNCj4gIAl9IGVsc2UgaWYgKEhBU19HTUNIKGk5MTUpKSB7DQo+IEBA
IC03MSwxMCArNzEsMTAgQEAgdm9pZCBpOXh4X2Rpc3BsYXlfc3Jfc2F2ZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gIAkvKiBEaXNwbGF5IGFyYml0
cmF0aW9uIGNvbnRyb2wgKi8NCj4gLQlpZiAoR1JBUEhJQ1NfVkVSKGk5MTUpIDw9IDQpDQo+ICsJ
aWYgKERJU1BMQVlfVkVSKGk5MTUpIDw9IDQpDQo+ICAJCWRpc3BsYXktPnJlc3RvcmUuc2F2ZURT
UEFSQiA9IGludGVsX2RlX3JlYWQoZGlzcGxheSwNCj4gRFNQQVJCKGk5MTUpKTsNCj4gDQo+IC0J
aWYgKEdSQVBISUNTX1ZFUihpOTE1KSA9PSA0KQ0KPiArCWlmIChESVNQTEFZX1ZFUihpOTE1KSA9
PSA0KQ0KPiAgCQlwY2lfcmVhZF9jb25maWdfd29yZChwZGV2LCBHQ0RHTUJVUywgJmRpc3BsYXkt
DQo+ID5yZXN0b3JlLnNhdmVHQ0RHTUJVUyk7DQo+IA0KPiAgCWk5eHhfZGlzcGxheV9zYXZlX3N3
ZihpOTE1KTsNCj4gQEAgLTkwLDEwICs5MCwxMCBAQCB2b2lkIGk5eHhfZGlzcGxheV9zcl9yZXN0
b3JlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICppOTE1KQ0KPiANCj4gIAlpOXh4X2Rpc3Bs
YXlfcmVzdG9yZV9zd2YoaTkxNSk7DQo+IA0KPiAtCWlmIChHUkFQSElDU19WRVIoaTkxNSkgPT0g
NCkNCj4gKwlpZiAoRElTUExBWV9WRVIoaTkxNSkgPT0gNCkNCj4gIAkJcGNpX3dyaXRlX2NvbmZp
Z193b3JkKHBkZXYsIEdDREdNQlVTLCBkaXNwbGF5LQ0KPiA+cmVzdG9yZS5zYXZlR0NER01CVVMp
Ow0KPiANCj4gIAkvKiBEaXNwbGF5IGFyYml0cmF0aW9uICovDQo+IC0JaWYgKEdSQVBISUNTX1ZF
UihpOTE1KSA8PSA0KQ0KPiArCWlmIChESVNQTEFZX1ZFUihpOTE1KSA8PSA0KQ0KPiAgCQlpbnRl
bF9kZV93cml0ZShkaXNwbGF5LCBEU1BBUkIoaTkxNSksIGRpc3BsYXktDQo+ID5yZXN0b3JlLnNh
dmVEU1BBUkIpOyAgfQ0KPiAtLQ0KPiAyLjM5LjUNCg0K
