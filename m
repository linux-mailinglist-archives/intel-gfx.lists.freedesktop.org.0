Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F921BE2FAF
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 12:58:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2012D10E9AB;
	Thu, 16 Oct 2025 10:57:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LeC4rN8g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA16C10E9AB;
 Thu, 16 Oct 2025 10:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760612278; x=1792148278;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vUyrm8sOMplclIduHscF0S+uSKOwRC1hE51tExgFaSo=;
 b=LeC4rN8gW2YsFFjzBbpzWhzXGlJpPZsQ41E9xqpKVzsXriQITI8dTUbu
 sTf/047AYEtLZZHGajXLisKI6cUrUFTy+bXFVLVUbjZTFBe5+L1NkYU1T
 zaoDZilPJMfz++O3IRo131071nrkAOZ4oxOYqHxP/SuYgiYSYz1Y19VmO
 E4du6pVkRmTFdqHZemn3nCaaEM9vNk59A7Mmn4u8mTkFJH8z5BMlnu7/V
 mJ92NI3n+Q1HyxP00aDt7yxJ9vJPyvQ9kwfpMVk75IX1bU//SfILsXUtL
 APRbx02GJxOFFD1XOs4Bj0/2XDaq+rkpvENxE/BoWcc82V68CsyyPgQAm Q==;
X-CSE-ConnectionGUID: V5KpWpjSQa658Zto8XubEg==
X-CSE-MsgGUID: 0LRVOLRFSwaimVwZ57OehQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="66664196"
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="66664196"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 03:57:57 -0700
X-CSE-ConnectionGUID: x53EE+32Q66NiPdcPnajJQ==
X-CSE-MsgGUID: 2yDhTi7ASm6B6s6SCpplcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="187517858"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 03:57:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 03:57:56 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 03:57:56 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.69) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 03:57:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mJNlSYIzQ5QvSjbLkztdR9wUyPkhgtJUKNxsMHVnxgK2TYD/FFZhAu+moW8cPRe4K27WGrAKum+VXypHywHwTzpT4v4gpZbOP/lOynEtGMRDyc2E82Ht2IXI0Y8SluNY6bO+G3HrjCKpjYvSQp6vyOTofyZg6BDqDQOeHXXUOmaYnmZWL7hAS8MkEfcrFj0W8BBx39UBlOQhRQBwZx16u24vRh412BnSR/MmCGrZtWb9sLsuRufJMyF9p+E5Rdx+C48jdVT4+HYrKNQiJTlh5z8unRDuiOL9Qnbpaj7f/orRn9CTrG+oobQfrvVS+ynOpm/dlJ/qRFIH0yqaODCPhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vUyrm8sOMplclIduHscF0S+uSKOwRC1hE51tExgFaSo=;
 b=SLpDNd0+NMvC7Ti41N/QXL04CfW05KU1gMpFvuWKAf4l+6W9u9jmBuKRHw60UExFG7P2xRlt/bEUKMVvp+lJzE9SHJxKY9w2McgSWYz4AZ4y6IHkNyAdAmrMjGBVvpnprQiXZXV9DBMYC2VePfvKGhg33acIRPsl+wKUqfi8ehPIXE5tEGRtXA1kuSpmY3Gngfm+ZA7JDmMFdHwIi0B0eNniKRx+2w2jGdAH1PIc0gTOwPeYmohjzvquTqdMMGb2TPW+XkWUd4qX0h5RhcnxQ7wcWLvh8yd/ws3gtvOwgWifHogjy3e4RV7azeXqSu76w6inm2rNhgFX0PwFEeCFNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by CY5PR11MB6535.namprd11.prod.outlook.com
 (2603:10b6:930:41::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Thu, 16 Oct
 2025 10:57:55 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720%7]) with mapi id 15.20.9228.011; Thu, 16 Oct 2025
 10:57:54 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 4/9] drm/i915/ips: Eliminate the cdclk_state stuff from
 hsw_ips_compute_config()
Thread-Topic: [PATCH 4/9] drm/i915/ips: Eliminate the cdclk_state stuff from
 hsw_ips_compute_config()
Thread-Index: AQHcPH3Rejecu3t2fEOjn0hgrbafgrTEnj2A
Date: Thu, 16 Oct 2025 10:57:54 +0000
Message-ID: <DS4PPF69154114F6250928DECDD3E036F15EFE9A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251013201236.30084-1-ville.syrjala@linux.intel.com>
 <20251013201236.30084-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20251013201236.30084-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|CY5PR11MB6535:EE_
x-ms-office365-filtering-correlation-id: 0ebd058e-5363-470d-9785-08de0ca2dc0f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?dVd4YUhDbGNGdkU5MzV3a2ZOeFdaY2wrajA1WDlzV241SU9kQmNiK2w0NkxO?=
 =?utf-8?B?YWNjZmhvSGw3bStyTWhGUjNSSXV0L2JVQTgyQ0JzZEVxcm1aK0NPN2FLOFU5?=
 =?utf-8?B?MksyaGlCNHBJVEUxWStva0FicGdzc00xelozcmlUQjl6MjJJbkc5WEFyMzlH?=
 =?utf-8?B?UW5sd2QyQWFKaHU3aDdzSHNKdVhuRjRzVWZpZVp1ZG9mUm0wN0ZuQ1BWQ0Uz?=
 =?utf-8?B?bkZ6dVREcVJuSSt5YnNEU1JzQ1R0LzArZGpYNE5xaCtxTVkyNzRQSjhsNGVE?=
 =?utf-8?B?LzZmMlg1bFpieUV3NGRiemQ0SWJWTVVva2lISzVoYUxwYkZ5SGd4RE1KcTFY?=
 =?utf-8?B?dGV2aWFPdi9wOXUyVExwNE91SmFxcVRGemV1SWQ3aGtidklGZDNsRVM5NFFR?=
 =?utf-8?B?MFA3SUZMNFVHWEpoc1Rlam8zWktrVFFJYjkzcmw5WmZiT0ZEMmU4TEZxSUVJ?=
 =?utf-8?B?N3hZWHJKVzc4aDhqUmx5UkJHOTAxRUNnVEptSGJSYTlUckh1U3FIbXphUFZv?=
 =?utf-8?B?K2E1MmpDRHJqc2FVQldGWDFyc2h1bWhVTW1QY0wrMTduejVkbCtGeHhlVUVq?=
 =?utf-8?B?c3cvYnRFNUY5R0IzSk8zMjNKbHEvYmpsKzdNYXBjeVM2MHFDNHpMblE2SnA2?=
 =?utf-8?B?azFMNStOeVEyZG5VRHZPMHRFTU1UOFhTL2pzYkppbXJXUTVPb0Y5bGxpQU0y?=
 =?utf-8?B?UUxBcmFiMTBNOGFEVUcxd2lCb1prZXBudFhjMEVSL25VZzB6eUJ4RVFna09T?=
 =?utf-8?B?TmRWL25ZU2pyYjVMOFJqVVR6bFA5V2s5bkFyNmFxcGhXOE02R0ZsWllqNUFy?=
 =?utf-8?B?Rmt6NktWSXdsdUJoODZ6S21jcmp3OStDU1RueWRNQzNNWjRDRGE5Z2NkOVdn?=
 =?utf-8?B?OUdIT2ZTSUhjSHlsOVJBbmZuSkIrZ0VKWDhhSXdiQmExMjh4cGRxWEJ4Q3o4?=
 =?utf-8?B?VDI5VHc1aHBWVFphMkRJcnlwR0tHaUk1RWFFcVdZaytXTStDSW1US1BVemxS?=
 =?utf-8?B?R3N2MHpFL0lxK3V6bWpTLzdDSE5jdGUyRXhiNmZIRmJCcE5XT0xFU3dNWXFk?=
 =?utf-8?B?bXkybnBaNWRmYnhiaXczY2JLa1kzRndqL2RIckphRmdqbnhiRE8rYnR4RVFu?=
 =?utf-8?B?SEk1NXhsdnRLekc2MGFJVGJHTHVvRmRqZmdHcnpwTy9LYVZ5UEd6Vm9ZL1k1?=
 =?utf-8?B?ZTA2bys0Q25jTVhVWlk2WVNoRC9TRHFkay9EVkMyTzdhVUgrTHA5TDE2Ym1Y?=
 =?utf-8?B?RXlnQ080bndvN3AvWGdqWis4akp2bzRyS28zZE1tT2xVYU5XcVdTald6aUMv?=
 =?utf-8?B?blUwVFY5MVRUaVNiYTArN3lpRU81NkJFZnNwN0hNQ2lPK2cwdFk5TEJvVjlo?=
 =?utf-8?B?a2pBdDROdnVDc2JYRktpWTBJd1BGeXUzcW9rU0x2U3dEekR3RW5vMWMxbW1u?=
 =?utf-8?B?SjJpNUVtT1gzMkhZN3Fnb2s1SGdFSy9kTFg5TlZHN3JUc2FxUkdBc2NRREIy?=
 =?utf-8?B?QktZOExKUkEzYmNKL09BQ1pxR2pkMjZkMFJsYTY5U0dqTU9BQ2JnZDZYV1Jj?=
 =?utf-8?B?b0MxcmRzekFLTWc1L3JOMGdYbHRLK29CejB2Z0ZKSkpFU2dtM3Q1VG44cXlQ?=
 =?utf-8?B?NkJ2VmFIcXdPQmpicE02YjdVZ1VSSURxTVlWdVdCdHM1cFY4WlI4ZFQwcVox?=
 =?utf-8?B?OXI0aW40bHpMbGZwRGM2NXR5TDlLWm40TjBmc1hxdDY5NHd5alJuS0xmVHNx?=
 =?utf-8?B?UkcxU1BLQWsyQWlFMVRtR2c4NWRackwvT3RVMWt6TTlnamhFUjNkMVZVT2F0?=
 =?utf-8?B?MEZJUHQvWW5uc1BHWXBSMjhsTk9YSnY4cmJuUm52U3FHaDZHWjRHRGtVNm5G?=
 =?utf-8?B?K1NFd2FQTjEwMUhpK2dETUZCdzE3MWptMTdxbnBkREtUR2s3SlQ5Vlp2MDFR?=
 =?utf-8?B?RmpkSUhobVRlK1hXMHMyaG5UYXEvazZBT2h1dVlobkVWUjRKWm5CT1lzd05j?=
 =?utf-8?B?cVFQMEk3eThha1BDdGtmaGMyRFZyMVo2OGZhU3c0anpVNlQrdkErNVVDUldn?=
 =?utf-8?Q?SvF1Tg?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MHdsTnNjWDZCaU5WRUFjaXRySDZqSUQyWk85cWZveE8zVzc3THB0TzlURDhi?=
 =?utf-8?B?UDJVejVqR3lzVERuRHQ1VCs3TkludnF2RDRIZmU4ZDBuNGpIcGp5azdwWk9s?=
 =?utf-8?B?RUNkNTVXWVJVU2pZNHkvdU44QjVKL1cwZFVxN1VKM1hOZUNwNTZnemZma1A5?=
 =?utf-8?B?cUtKMHhJTnQvWkpaZWNRSTBSWE1aM0QyMU5CQVZWOExaekJ2ZEVEZUZ2YXJF?=
 =?utf-8?B?K0QvMnBvbDUyUk55Q3hlNUZIanMvUm5wV2RlanBlWHRLNm8vdkVtbytTU0FT?=
 =?utf-8?B?OGs2WTVHZTlFUlRzOHRwRlkrR0daTW1PelVTNlZ1aExKS1JkSEJVb2ZFSHY0?=
 =?utf-8?B?VEFOTlBWSDJhM2JsMjUxYlhXUERFdXRIMExJNzkvTGJ1dzNjOWY3R0xoUVRt?=
 =?utf-8?B?VFp6aEYwOTBRL1JYNEptZDNBdW95RUk3VDJOYUNtdnZ3Z2NCN0pHaWFqbHl3?=
 =?utf-8?B?V2pleUJjTG5qVzZKUjhBT2xuM2ppWW9sK2NQSU5ubFhSUTg4VU5XMmlMNDZa?=
 =?utf-8?B?cStvZ3VBeFdJYnlkRmdnUGtMNFNZSUVSS1dndGEyUXA0OS95d2FiQk82RWkr?=
 =?utf-8?B?TkpZNG16SFNEc1BoQzNYZ2pza2VjK0dGeTlhUncvUVB3ZE5pck9UNFRLWDRh?=
 =?utf-8?B?alNmZXczNStYWmlTVHlYUnlGTlVDemNIekpLMVhSTGF5ZktMSGpxa0hlNDJT?=
 =?utf-8?B?VVY2eUpzcmVudUxzSGlSMnR2dVRjSXlBditnR2ZIRmIwM2J6VkZYS3dnQ0ox?=
 =?utf-8?B?eDAzT0c5SzdvNE9NT0Jwc2h6M0l4OEpYWVVFemJFbGNLaUZFcGtwNUNIWUx5?=
 =?utf-8?B?QVU5SFlDYmlOaGhBcERmY0Vzc05xd2JoM2t2V2NUVTRBZ3ZhdVg4VkNRcC9J?=
 =?utf-8?B?R2U5YVlJNTZWTkJ1U2NUbGIxZjQvMW1ScmdDL3hGQzFtM2NXMkF0UTVEWG9a?=
 =?utf-8?B?WERYYlNMY2JUZlRrWHhhVGdtTUEzczEvRXNYbzNxeGM2Ly9rZ1c1RGI4UWti?=
 =?utf-8?B?eUtNRFRHamF3QzdPVEcrVkVnVUZFTitzSm4wdUh1cXJzbndoQ2JxbFdHVDFR?=
 =?utf-8?B?dVRaQlR1ZEYxU2k5QWdEbXh1TEZSalZzOE9MUXJTUXdtZEhlZG1OL0pDUWYz?=
 =?utf-8?B?R25CS2ZQZk5WMitReWtNQmtwT0NpYWNuZ1VUN25KTUhZMUROeTZ0TXdpOG9W?=
 =?utf-8?B?d1QyZ0xrcDlxeENiL2JnRmY1ODl1ZHdmMVlicGhEVGJtTXptdUdaVmJ0T0R6?=
 =?utf-8?B?ZWNLZVEzbFQrc3Q1UGdiL2NsOXNQYnlFaFpwT3Zva3VsSVBhT0tEK3JQVi83?=
 =?utf-8?B?RW40TDFaM29kQmg2V3kzWlR2MmVSeW13eGsxNDNjUEw3Rkc0dHBETVJwMW01?=
 =?utf-8?B?dUh6TUNGelNYQnVGQjBTM2hLZ2xDSVI1Y3lvZEdJOERIOUdGWUhURi9tN1ZC?=
 =?utf-8?B?UVpjVkxQYnhJT05DWm5MbVdyejJLTjVpWU92RndBenRWcEYvQzVLaTdjV1BQ?=
 =?utf-8?B?djNEa3B2YzZ1RFhqaFZjTG1FSThhZUFRV2pmL00xYTNFaDViSWJDNEhDeFpT?=
 =?utf-8?B?T0ZPZnRMUHV4OHBBNkRhRFc0Ny9pTzJmTk85RFBOUUsyemloZTFIS3lia1Z6?=
 =?utf-8?B?ZTkyZjdtVk9Dam90ZldSS1ZuUEdHdzdDSFhyRFpuVW1IVVo3THZ5ckM3SzBX?=
 =?utf-8?B?R3VmOGxKbkZOYklaeDNSQ21hNng5RWM3ZzB3ZmJRTnZoZmljV2M5VTV1QldF?=
 =?utf-8?B?dS9xUzNxaFVHcW13Q3RnN0dMUDhKYzU3Y1lPdEZDeTcvelUyd3BYbkFlUXdC?=
 =?utf-8?B?NEFINTloMWhhUjR1Z0FwS3gzbU9NYTl6ZjNVUm9sWFNpMGFVMnBrVHJiejQr?=
 =?utf-8?B?WnF0M0l5bUVobFdVcjd5SVp3Zlp1T1V2RG96NXUrZytXYUdmZm1kV2FldlBD?=
 =?utf-8?B?bWxHSnN0K1NhU1VKakNrYWtlMnBCZEhXNGl1QlVZODRMUzhidjZUSjczUDA5?=
 =?utf-8?B?VmpjY0FnWkxpcDRZTnpRNnc2ZHBnVVBVQjBWNDRrYjg1NitwZ3ZjWEI5L25I?=
 =?utf-8?B?TDlQQTdTOHBqdUtwU1dBRU9BMjJXRkM0ZE5pa0RCOWtKY1FQSGkzdXB6bUNq?=
 =?utf-8?Q?3w/By85BtknVHovVAQa+F2bcn?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ebd058e-5363-470d-9785-08de0ca2dc0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2025 10:57:54.9124 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P9zGfdhWHsKkMl9VRn2tPrgCC8aEHvmYBnS68EXFA+JWXCcCnxMW6vMDUaoxBuns2s5SKuuJMveIFZFTAX2uzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6535
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlIFN5cmph
bGENCj4gU2VudDogTW9uZGF5LCAxMyBPY3RvYmVyIDIwMjUgMjMuMTMNCj4gVG86IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggNC85XSBkcm0vaTkxNS9pcHM6IEVsaW1pbmF0ZSB0aGUg
Y2RjbGtfc3RhdGUgc3R1ZmYgZnJvbSBoc3dfaXBzX2NvbXB1dGVfY29uZmlnKCkNCj4gDQo+IEZy
b206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0K
PiBSZW9yZ2FuaXplIHRoZSBJUFMgQ0RDTEsgaGFuZGxpbmcgc3VjaCB0aGF0IHRoZSBjb21wdXRl
ZCBDRENMSyBmcmVxdWVuY3kgd2lsbCBhbHdheXMgc2F0aXNmeSB0aGUgSVBTIHJlcXVpcmVtZW50
cy4gVGhlIG9ubHkNCj4gZXhjZXB0aW9uYWwgY2FzZSBpcyBpZiBJUFMgd291bGQgcHVzaCB0aGUg
Q0RDTEsgYWJvdmUgdGhlIHBsYXRmb3JtIG1heCwgYnV0IGluIHRoYXQgY2FzZSB3ZSBjYW4gc2lt
cGx5IGRpc2FibGUgSVBTLg0KPiANCj4gVG8gbWFrZSB0aGlzIDEwMCUgcmFjZSBmcmVlIHdlIG11
c3QgbW92ZSB0aGUgZW5hYmxlX2lwcyBtb2RwYXJhbSBjaGVjayBvdXQgZnJvbSB0aGUgbWluIENE
Q0xLIGNvbXB1dGF0aW9uIHBhdGggc28gdGhhdA0KPiB0aGVyZSBpcyBubyBjaGFuY2Ugb2YgaHN3
X21pbl9jZGNsaygpIGFuZCBoc3dfaXBzX2NvbXB1dGVfY29uZmlnKCkgb2JzZXJ2aW5nIGEgZGlm
ZmVyZW50IGVuYWJsZV9pcHMgdmFsdWUgZHVyaW5nIHRoZSBzYW1lDQo+IGNvbW1pdC4NCj4gDQo+
IFRoaXMgYWxsb3dzIHVzIHRvIGNvbXBsZXRlbHkgcmVtb3ZlIHRoZSBjZGNsa19zdGF0ZSBzdHVm
ZiBmcm9tIHRoZSBJUFMgY29kZS4gV2Ugb25seSBldmVyIGhhdmUgdG8gY29tcGFyZSB0aGUgSVBT
IG1pbiBDRENMSw0KPiBhZ2FpbnN0IHRoZSBwbGF0Zm9ybSBtYXggQ0RDTEsuIFRodXMgd2UgZWxp
bWluYXRlIGFueSBvcmRlcmluZyByZXF1aXJlbWVudHMgYmV0d2VlbiBpbnRlbF9jZGNsa19hdG9t
aWNfY2hlY2soKSBhbmQNCj4gaHN3X2lwc19jb21wdXRlX2NvbmZpZygpLg0KPiANCj4gQWRkaXRp
b25hbGx5IHdlIHJlZHVjZSB0aGUgdGhyZWUgY29waWVzIG9mIHRoZSBjb2RlIGRvaW5nIHRoZSA5
NSUgY2FsY3VsYXRpb24gaW50byBqdXN0IG9uZS4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEth
aG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9oc3dfaXBzLmMgfCA2MSArKysrKysrKysrKystLS0tLS0t
LS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKyksIDMzIGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaHN3
X2lwcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9oc3dfaXBzLmMNCj4gaW5kZXgg
OTI3ZmU1NmFlYzc3Li5mNDQ0YzViN2EyN2IgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaHN3X2lwcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaHN3X2lwcy5jDQo+IEBAIC0xOTEsNDUgKzE5MSw0NiBAQCBib29sIGhzd19jcnRjX3N1
cHBvcnRzX2lwcyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gDQo+ICBzdGF0aWMgYm9vbCBo
c3dfY3J0Y19zdGF0ZV9pcHNfY2FwYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSkgIHsNCj4gLQlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2lu
dGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+ICAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0
b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7DQo+IA0KPiAtCS8qIElQUyBvbmx5
IGV4aXN0cyBvbiBVTFQgbWFjaGluZXMgYW5kIGlzIHRpZWQgdG8gcGlwZSBBLiAqLw0KPiAgCWlm
ICghaHN3X2NydGNfc3VwcG9ydHNfaXBzKGNydGMpKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+IA0K
PiAtCWlmICghZGlzcGxheS0+cGFyYW1zLmVuYWJsZV9pcHMpDQo+IC0JCXJldHVybiBmYWxzZTsN
Cj4gLQ0KPiAgCWlmIChjcnRjX3N0YXRlLT5waXBlX2JwcCA+IDI0KQ0KPiAgCQlyZXR1cm4gZmFs
c2U7DQo+IA0KPiAtCS8qDQo+IC0JICogV2UgY29tcGFyZSBhZ2FpbnN0IG1heCB3aGljaCBtZWFu
cyB3ZSBtdXN0IHRha2UNCj4gLQkgKiB0aGUgaW5jcmVhc2VkIGNkY2xrIHJlcXVpcmVtZW50IGlu
dG8gYWNjb3VudCB3aGVuDQo+IC0JICogY2FsY3VsYXRpbmcgdGhlIG5ldyBjZGNsay4NCj4gLQkg
Kg0KPiAtCSAqIFNob3VsZCBtZWFzdXJlIHdoZXRoZXIgdXNpbmcgYSBsb3dlciBjZGNsayB3L28g
SVBTDQo+IC0JICovDQo+IC0JaWYgKGRpc3BsYXktPnBsYXRmb3JtLmJyb2Fkd2VsbCAmJg0KPiAt
CSAgICBjcnRjX3N0YXRlLT5waXhlbF9yYXRlID4gZGlzcGxheS0+Y2RjbGsubWF4X2NkY2xrX2Zy
ZXEgKiA5NSAvIDEwMCkNCj4gLQkJcmV0dXJuIGZhbHNlOw0KPiAtDQo+ICAJcmV0dXJuIHRydWU7
DQo+ICB9DQo+IA0KPiArc3RhdGljIGludCBfaHN3X2lwc19taW5fY2RjbGsoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUNCj4gKypjcnRjX3N0YXRlKSB7DQo+ICsJc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGNfc3RhdGUpOw0KPiArDQo+ICsJ
aWYgKGRpc3BsYXktPnBsYXRmb3JtLmJyb2Fkd2VsbCkNCj4gKwkJcmV0dXJuIERJVl9ST1VORF9V
UChjcnRjX3N0YXRlLT5waXhlbF9yYXRlICogMTAwLCA5NSk7DQo+ICsNCj4gKwkvKiBubyBJUFMg
c3BlY2lmaWMgbGltaXRzIHRvIHdvcnJ5IGFib3V0ICovDQo+ICsJcmV0dXJuIDA7DQo+ICt9DQo+
ICsNCj4gIGludCBoc3dfaXBzX21pbl9jZGNsayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRv
X2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+IC0NCj4gLQlpZiAoIWRpc3BsYXktPnBsYXRm
b3JtLmJyb2Fkd2VsbCkNCj4gLQkJcmV0dXJuIDA7DQo+ICsJaW50IG1pbl9jZGNsazsNCj4gDQo+
ICAJaWYgKCFoc3dfY3J0Y19zdGF0ZV9pcHNfY2FwYWJsZShjcnRjX3N0YXRlKSkNCj4gIAkJcmV0
dXJuIDA7DQo+IA0KPiAtCS8qIHBpeGVsIHJhdGUgbXVzdG4ndCBleGNlZWQgOTUlIG9mIGNkY2xr
IHdpdGggSVBTIG9uIEJEVyAqLw0KPiAtCXJldHVybiBESVZfUk9VTkRfVVAoY3J0Y19zdGF0ZS0+
cGl4ZWxfcmF0ZSAqIDEwMCwgOTUpOw0KPiArCW1pbl9jZGNsayA9IF9oc3dfaXBzX21pbl9jZGNs
ayhjcnRjX3N0YXRlKTsNCj4gKw0KPiArCS8qDQo+ICsJICogRG8gbm90IGFzayBmb3IgbW9yZSB0
aGFuIHRoZSBtYXggQ0RDTEsgZnJlcXVlbmN5LA0KPiArCSAqIGlmIHRoYXQgaXMgbm90IGVub3Vn
aCBJUFMgd2lsbCBzaW1wbHkgbm90IGJlIHVzZWQuDQo+ICsJICovDQo+ICsJaWYgKG1pbl9jZGNs
ayA+IGRpc3BsYXktPmNkY2xrLm1heF9jZGNsa19mcmVxKQ0KPiArCQlyZXR1cm4gMDsNCj4gKw0K
PiArCXJldHVybiBtaW5fY2RjbGs7DQo+ICB9DQo+IA0KPiAgaW50IGhzd19pcHNfY29tcHV0ZV9j
b25maWcoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsIEBAIC0yNDQsNiArMjQ1LDEy
IEBAIGludCBoc3dfaXBzX2NvbXB1dGVfY29uZmlnKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlLA0KPiAgCWlmICghaHN3X2NydGNfc3RhdGVfaXBzX2NhcGFibGUoY3J0Y19zdGF0
ZSkpDQo+ICAJCXJldHVybiAwOw0KPiANCj4gKwlpZiAoX2hzd19pcHNfbWluX2NkY2xrKGNydGNf
c3RhdGUpID4gZGlzcGxheS0+Y2RjbGsubWF4X2NkY2xrX2ZyZXEpDQo+ICsJCXJldHVybiAwOw0K
PiArDQo+ICsJaWYgKCFkaXNwbGF5LT5wYXJhbXMuZW5hYmxlX2lwcykNCj4gKwkJcmV0dXJuIDA7
DQo+ICsNCj4gIAkvKg0KPiAgCSAqIFdoZW4gSVBTIGdldHMgZW5hYmxlZCwgdGhlIHBpcGUgQ1JD
IGNoYW5nZXMuIFNpbmNlIElQUyBnZXRzDQo+ICAJICogZW5hYmxlZCBhbmQgZGlzYWJsZWQgZHlu
YW1pY2FsbHkgYmFzZWQgb24gcGFja2FnZSBDIHN0YXRlcywgQEAgLTI1NywxOCArMjY0LDYgQEAg
aW50DQo+IGhzd19pcHNfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUsDQo+ICAJaWYgKCEoY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lcyAmIH5CSVQoUExBTkVf
Q1VSU09SKSkpDQo+ICAJCXJldHVybiAwOw0KPiANCj4gLQlpZiAoZGlzcGxheS0+cGxhdGZvcm0u
YnJvYWR3ZWxsKSB7DQo+IC0JCWNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa19zdGF0ZSAqY2RjbGtf
c3RhdGU7DQo+IC0NCj4gLQkJY2RjbGtfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X2NkY2xrX3N0
YXRlKHN0YXRlKTsNCj4gLQkJaWYgKElTX0VSUihjZGNsa19zdGF0ZSkpDQo+IC0JCQlyZXR1cm4g
UFRSX0VSUihjZGNsa19zdGF0ZSk7DQo+IC0NCj4gLQkJLyogcGl4ZWwgcmF0ZSBtdXN0bid0IGV4
Y2VlZCA5NSUgb2YgY2RjbGsgd2l0aCBJUFMgb24gQkRXICovDQo+IC0JCWlmIChjcnRjX3N0YXRl
LT5waXhlbF9yYXRlID4gaW50ZWxfY2RjbGtfbG9naWNhbChjZGNsa19zdGF0ZSkgKiA5NSAvIDEw
MCkNCj4gLQkJCXJldHVybiAwOw0KPiAtCX0NCj4gLQ0KPiAgCWNydGNfc3RhdGUtPmlwc19lbmFi
bGVkID0gdHJ1ZTsNCj4gDQo+ICAJcmV0dXJuIDA7DQo+IC0tDQo+IDIuNDkuMQ0KDQo=
