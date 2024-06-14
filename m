Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FFC9090CA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 18:54:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34A1710E1CD;
	Fri, 14 Jun 2024 16:54:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f5ut91i0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF96B10E00F
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 16:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718384071; x=1749920071;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=P8bzscdAgHHP7zCkxOU9ZNnXV/Uq11iS12ajxw6lPT4=;
 b=f5ut91i0DQqJyWbvOMJe9//jf4877tNZQfdslBpL0HTPw35ZTXhPGMgT
 9nhyU5Gr/DfiMgkV3impxdgDu2jNaAy3I/9hVDL7prsPBUazCFEMY1ucJ
 xwmp99k7DmzyOM6niSyRCJOL0PPDi4XfuKHxKFM7DpVCpOqZP27jrYHaF
 1qNSNShlsA2MFwJn2GhV2AiFjgTRCfTy2GRn/g3iYAZ2qDEebKsWwpvIz
 YqTNhSzx66yvJBD2zb8B0FzE7F3aysX6X6sU0ljdjcE9fBD71FJEfbH4G
 FT+MVdprFM/9/H6ED8IXd+K2LDlr7VjQaozON8QS3GdLC9DtCM6shLcrD A==;
X-CSE-ConnectionGUID: dCnscJ1TTrGaFRQXnQ8+1A==
X-CSE-MsgGUID: 349c/pRiQxeHuK96fZINFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="25916764"
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="25916764"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 09:54:30 -0700
X-CSE-ConnectionGUID: fHfZ8OqESIWw+eAob6+8uw==
X-CSE-MsgGUID: BjE57u8ARs6ncKoe5ubEdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="44925590"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jun 2024 09:54:30 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 09:54:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 14 Jun 2024 09:54:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 14 Jun 2024 09:54:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fssf44yJNqH1lYcXTaYvv2lp1+IBBFH1M6gsFsN9DLH5apITzKsGIw3VbQHTROCSw4mnakmEUftCGZ5+EWzvr/1UYugI+pljQWf2uQqlCXVdiwN6+PV2IH0MJHChWuUqlDkRs8huuGUcf2naixpafoHCyClYHI9ccEAzMQkXDmtbeKWAcbwrncwD7Ej6j5Md28hvrjnODgrKoTJDpTkpCJTE/5wt5EJYFKE+80lVUDkGaZpr5SOxfVVV/2LZeel5CxyizEmJB/6UoKpIjOvxQio82DoIPuMAMmnbBEyxW9x/I0dGbbrgYlMGfbuoZUvf/OOh2PBh9BbNzTRCfvtWAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P8bzscdAgHHP7zCkxOU9ZNnXV/Uq11iS12ajxw6lPT4=;
 b=Tp1XqiCLtgZBFROwjmW9DTs+8jwYLRNnniCro29zZTv8TR6556mzcAAjDYONPM7CNW/lcKM90FriInJ58NesG4GFF/LYNu6y2MMwMazlO3Lz7zJUbTshGB9VJ+mLFkjdaBj1mlt5UY4IrirNrCPyP6Xp0NWwki7VoPwGSrB+VGfmBAZLtLBZkUnrY/h5ySRBf0R2qxx+WxBikxmjjS6pjgFkQj1TtUS9yaLaXgAS1TSoxOSzUZ+Ge/17mtsi8eRfizjyyrQLaZI+kL/DHU5AscGygf14iohmktwGFGAwm3C7w9mfX23dotgREloxlOSxgBLP1waavnUJKk/J9foNjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CO1PR11MB4818.namprd11.prod.outlook.com (2603:10b6:303:93::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.24; Fri, 14 Jun
 2024 16:54:19 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7677.019; Fri, 14 Jun 2024
 16:54:19 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v8 05/20] drm/i915/psr: Disable Panel Replay if PSR mode
 is set via module parameter
Thread-Topic: [PATCH v8 05/20] drm/i915/psr: Disable Panel Replay if PSR mode
 is set via module parameter
Thread-Index: AQHavXS4Hx8X3TPaC0u8F+XtE/6nvrHHczkg
Date: Fri, 14 Jun 2024 16:54:19 +0000
Message-ID: <PH7PR11MB59810D81DAE59D569A2C0E62F9C22@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
 <20240613093239.1293629-6-jouni.hogander@intel.com>
In-Reply-To: <20240613093239.1293629-6-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CO1PR11MB4818:EE_
x-ms-office365-filtering-correlation-id: be140bb5-f45e-4461-90e2-08dc8c92a215
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|1800799021|366013|376011|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?dnQyOE8zaFE4b3N0Z002UnF0OC9xTHJiTlZlelc2R2ZGTGFidFptTEVIek8x?=
 =?utf-8?B?OW1rdUJvYnFLOVdWaXlXWm5uVWV2Q05YMjdtbTJ0Vm5ycjg4YUhQSitkblZ5?=
 =?utf-8?B?UCtWZWwrK3NoZ2ZldGxlUW1zR3JhOEp4dmtiVStXUEdhQmEzWktqWEQ2a0Jp?=
 =?utf-8?B?UURJMml3c3pxL200NVdTamx4dFBhZnR3SDBzVll0bFl3Z2hjK1FKNkRreHhW?=
 =?utf-8?B?R0RDb2cyV1dKb1RDenFLWkx0b3ZSUEU3Tk1IcTNQRHFkVlpxWllkcm9vNUVo?=
 =?utf-8?B?Vm9ZbUJua3N5NUZDUUxyc2d6Rm80eENoNXI5bHZzZGd5M0JtTElnNmpZaWt4?=
 =?utf-8?B?NlNNYVdFOGM2Q1dkcDUwVmpCQmNhMHRxcjJhZGxWQXpqcmYyNFlvYmxCek1V?=
 =?utf-8?B?TjlKbndHbDROMlRSdUROekE3QlBuQWx4N2ZhaFJINXZmOEp5eXRlak1HTith?=
 =?utf-8?B?STY4N01lWWszNjBXUTZ4VzJ6VXJ2bmJkNWZQM05JOHhxekU3V0RtKzZkb2tN?=
 =?utf-8?B?L2RkT2NyaVNpL1dIK3NONkhRN29pU3FOZTV6cVBrSmJCbDU0ZVZjdW5kamxN?=
 =?utf-8?B?anFhUjFSRThSRWJKZ1htN3RqeFlqaGxLZDRZbldtT2IzWjJYVk4wcHFHRVQ3?=
 =?utf-8?B?d0NsLzF1S0p0L08ybXBkUjNkblBaVnc5eVBYbmEwOFJ4UVA5dWhyNFdXc1JB?=
 =?utf-8?B?cGVPeXJ3cW8rTWZhRkxoWjllNVQzZlhPbjhxRDUrdXBncWZJTE9aSHVDeGFR?=
 =?utf-8?B?RXNQYm1hVUpkSDk1MXpTaWs0R2t6a09ydjVUNXdwRDVYUVhzQy9GYkg4cHlK?=
 =?utf-8?B?UjcvbGIvU2JJeGV3K3N0SUhlamgvVHFCOGh4SlVVblJzcDA5NzZKbEZVa0VF?=
 =?utf-8?B?R2xoZE1oNXdjL3lTcDV5ZmkrYkt1YWhETnRBMUZ5OTltckxWLzY5UC9HaHBo?=
 =?utf-8?B?dVZpSEhFZzBYSlgrWTNYeXBOOEVWNktwb3NDbjNlOUN2VzRBUnhTemFHbkJk?=
 =?utf-8?B?eE9FYXV4S25pZVdRL0l5MzRPeUg5NmxNUUwrUGhaVnVwSFdhTUxOd3dSQWxu?=
 =?utf-8?B?VmJOREg0WTJOaVZqRWhWRFp2TzBBWWVJQ3o3Lzl2V2c0emFKZkZhTW9iZStK?=
 =?utf-8?B?QkY1SGhDMEwwUmlDYlJFZ3RneUF6WWpTei9xdXIvNUp1RlpDK2JQV2JmZU9K?=
 =?utf-8?B?eVcyWG1XRnNNT3JzSlJLYXVjM1RiOG1YVGRkM0YwS21NU0FhaTkxNVloY3k3?=
 =?utf-8?B?WjEwWks0UFFnNVFUdDBHNDdFQVRtbkJFWXR2TmNJQ2pSaFJycGEvSUY0K0xW?=
 =?utf-8?B?ZlFMZ2dGbkFnMmRWeVBkbC9Ia21NZFFUK1crSE5Bem9qOVdsYWdOV05wbTZX?=
 =?utf-8?B?NC81ZzluSU1RVWk4VE5ZOGRQU3c5Qm0vVVpack9xK1p4Z1Z1cVpkSXFvQm5U?=
 =?utf-8?B?c2l4L3FhS2M0T0NsWDNzNlRyUS8rRkJDN095VXo5bExBdUpDT0dPWUozZjJQ?=
 =?utf-8?B?bTY1VjVNR1FsVGtXbHF1d2MvS0QvM2ZvaU1jZGVlektvcVBoNWlFQ0x1ZDRC?=
 =?utf-8?B?QjMraWxwYjZkZlRvN3NYVk9LdUE3VVVXc1EyVHJ3aUM2dzA5TDFLY0hKOHhY?=
 =?utf-8?B?bnBNSEhlSFNJRGFhbmFJM0hPVEFuRUszenRhWWpsdmRKdjZlcklnWFhXMktt?=
 =?utf-8?B?U0VOVUJ0di9jbXBFSmNOSjFYOHd3cHZFVWFvbTgveDJrNzY5SXVhWE95UnNJ?=
 =?utf-8?B?akVCa0pWVHpRTmRjNDBrYXd6YkpScGNzVDMvTERFVGZLMlJPenlQdHFibHZE?=
 =?utf-8?Q?2lUfgbuAECYaBLKh20jR0JV1lW73W7oE61kGE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(366013)(376011)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TGl2WDVJd0orVzlEZ3Q3TnlmZVphYTZadUREVXpuWlVhOHNkTUhxTVpKeHZp?=
 =?utf-8?B?V09YN09vakIrVWkyRHpDajJqMWRaTG9GdndhWHAySkU5TDdOK1B0SjFhYWNU?=
 =?utf-8?B?cHlISWFhcFJSYVZ2UFBwQUpvTkpXTi9iTUI1amtQNnBLR0ZJQ05nVCtGOHZk?=
 =?utf-8?B?WC9HOVVFWVJTTDZEY2FYZFZqVU03MWtFc3ljOXpnbFdSR2x4Mm9GdTB0TFhV?=
 =?utf-8?B?VWo2dE1keTRINHRZc0xMVmZnTjlKVG5PV3NiTFgxQnJmcXhaR3I4WGxWWHMw?=
 =?utf-8?B?blZ4aThpZ0VnZ2l4M3E0a200dGhJUzZNSUkzY2FkeUFveForMlI3UTJRaXFm?=
 =?utf-8?B?N3liNkNhaTgzWldpMGdzUzdVZHloYjFqMVlrQ3dFNnY4YW5EQS96cmRCbkpB?=
 =?utf-8?B?WTc1eXM1ZzdmOTlsclpmSWZ4MDRoSHNqMDB4eThwajFrUlAvUjRJcjRlaVVW?=
 =?utf-8?B?ZnhBaXhDc0J4SFJmd3l6dnVaNzJLNnhuaVpKSE4ybkluM0lLL3AyVHVwNFVo?=
 =?utf-8?B?ZWRPMkZJYmwzdTBIZkV0TW5Fbldxc1V3MG5FY0xlc0Y5S2F5Q2JsTEQ4aUxV?=
 =?utf-8?B?V0F5c1Z6aEpBQTRYb3ovMjFjMGhCTzZMNEVXWDdJdTY2TUFvOXhubkkzQXVt?=
 =?utf-8?B?NUx3ZHVWTGJVajVhdTR3aFF0elI2QVpmdGxDSVN1eWJ1Slg1NjJxdVBKemlC?=
 =?utf-8?B?ZFgrZ0Q2VXVkQjM1WkdGdFBsSkIwU3lRUjdhdmRDc3Blczc1MmNyd09IRm80?=
 =?utf-8?B?bVBSOEowbmZBUFFkalh3ckpwUUIrQ1ZCNUU5TlVSbzRmbC80VmZQK2ppZzBJ?=
 =?utf-8?B?TFlvR1BTS2ttblFQMUpJZ0tYL2xKMy9CV1FRQ1VwRzg1YlBlUTM2Z05VaTJt?=
 =?utf-8?B?QjVRcXBLOWsvV21Pa0N2QzZMSUxXUUI0RmxmMzNQaXZmaGxGakJnK1R0c20r?=
 =?utf-8?B?WXhibitpRm1MSm5Dbk9weFFQYXYxK0wwSVhWN0Rha1Y0c08vODcwc2p4bGY0?=
 =?utf-8?B?Z1BiTkhuRmRkUW9NUk5Jb1E0ams4S2hUUHpwV0NaMDEvSW40eUtkTHFMcnAy?=
 =?utf-8?B?YzNCVU5QTy9zWmVkTS83aWdJK01ia1prNW4xcG5LS3htVDhVWDZhd0tZNno4?=
 =?utf-8?B?MG15NVhxTXlVN2VhamFHYXVnTlFWNEJjNlZrcUhKUUJBZkZjU2puVTJqSFdE?=
 =?utf-8?B?ODFWK041aThNS1F6OXNVUFB2MEVjVHhtME4vdWg0VWtXZkN4bTZEckswcFo4?=
 =?utf-8?B?YWprNFVwS3FRNEJEQTJxYWg0MlhPVEp4SWxGcGpIeGtEak9WcjdXaUwvdFho?=
 =?utf-8?B?Z1VEbklaTEdJcG9BWG94bWNPYWhGQTgvdVFyZ1RydkRzdHdwempabThETGxL?=
 =?utf-8?B?aHZFZ2l2eVNGdjRTMXBKTWw1aTJpQ1N1UG5Mc204VkhRTVdJQUV0VDhIK0Jl?=
 =?utf-8?B?WGFpK1VEbjRzWHY2L1BsSzVNNlhQa1ZMaVVhSjVmM0tlWUpjN2dyMWtsVDRm?=
 =?utf-8?B?dExoYmRNaHBUUElPMUlUWnh3bEVXUEFqSXZFOElrTjhSaGFrWUpvOENPb3R0?=
 =?utf-8?B?aExobmJSWkpRMGpKdU1DU0tJVlVodGg1ZHZLNGlNcGFWWEtvUTYyODdyZHAw?=
 =?utf-8?B?K21MVHJIc01tRk9Zb1JFdEQ3V0FIeUhpYjY5dzYyRGIySmNTR20vcjdHSWdQ?=
 =?utf-8?B?NytrL0M5ZDV4aTd2QUdlM1NHWGxXNS9oQ2VLWWUyYjQyb2ZRaGRBRGxCOURN?=
 =?utf-8?B?bmlPYlZ0Rld6SmxiQm1pN3JDb2VDZTdtYzdxbk1sbEVXYk4xa04vMkRENWxD?=
 =?utf-8?B?RTA2MXYwbXR4WjdTMmtjNFR6aFlPUkdtRTYvUjlSZVpJeUlZTG5yZThpaGo0?=
 =?utf-8?B?RFlZL3pnS1k5OEs1dlkxUUlEMnEzNnlTTnlhei9ZR2gwYlJZSFgrdDBPTkJ0?=
 =?utf-8?B?YWRMN3E2UW1GeFBrMHB0bFZNTDhxKytUTUU3aG9MWm9QZm9uSm5iWmJsdmxE?=
 =?utf-8?B?OWE4RWZmQWVSdFRkMk4zSWZuKzZzM1NocmtGMXV0cWtNNDF5MkhqaElkSFNH?=
 =?utf-8?B?NVJJanowdk9aQzRPazIwZTRxOUQyazVicU5Ub08xMDB2MUpGVUttNkRmcktx?=
 =?utf-8?Q?PC3L4vrC4HOjXIDlAHR6NU3T7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be140bb5-f45e-4461-90e2-08dc8c92a215
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2024 16:54:19.1764 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WMUocuJi6qYIqy7/8RS1Jofhy4jU6ZfRsbYRyLPXU7DpulKDJqlqTs276f7OpqDeVsb2KUu441rlU+UzHLjLxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4818
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDEzLCAy
MDI0IDM6MDIgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2OCAwNS8yMF0gZHJtL2k5MTUvcHNyOiBE
aXNhYmxlIFBhbmVsIFJlcGxheSBpZiBQU1IgbW9kZSBpcw0KPiBzZXQgdmlhIG1vZHVsZSBwYXJh
bWV0ZXINCj4gDQo+IElmIGVuYWJsZV9wc3IgbW9kdWxlIHBhcmFtZXRlciBpcyBzZXQgYXMgZGlz
YWJsZWQsIFBTUjEgb3IgUFNSMjogUGFuZWwNCj4gUmVwbGF5IGlzIGRpc2FibGVkLg0KDQpUaGlz
IHBhdGNoIGlzIG1vZGlmeWluZyB0aGUgd2F5IGhvdyB0byBlbmFibGUvZGlzYWJsZSBwYW5lbC1y
ZXBsYXkvcHNyL3BzcjIgdGhyb3VnaCBrZXJuZWwgY21kbGluZS4NCkdvb2QgdG8gaGF2ZSBsaXR0
bGUgbW9yZSBkZXRhaWxlZCBjb21taXQgZGVzY3JpcHRpb24uIFBhdGNoIGNvbW1pdCB0aXRsZSBh
bmQgZGVzY3JpcHRpb24gaXMgZGlmZmVyZW50IGJ1dCBhZ3JlZSBhcmUgdHJ1ZS4NCg0KPiANCj4g
U2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+
DQo+IC0tLQ0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1z
LmMgIHwgIDMgKy0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
ICAgICAgICAgfCAxNiArKysrKysrKysrKysrKysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDE3IGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jDQo+IGluZGV4IGFlYmRi
N2I1OWRiZi4uNzkxMDc2MDdhNmZmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jDQo+IEBAIC0xMDYsOCArMTA2LDcg
QEAgaW50ZWxfZGlzcGxheV9wYXJhbV9uYW1lZF91bnNhZmUoZW5hYmxlX2ZiYywgaW50LA0KPiAw
NDAwLA0KPiANCj4gIGludGVsX2Rpc3BsYXlfcGFyYW1fbmFtZWRfdW5zYWZlKGVuYWJsZV9wc3Is
IGludCwgMDQwMCwNCj4gIAkiRW5hYmxlIFBTUiAiDQo+IC0JIigwPWRpc2FibGVkLCAxPWVuYWJs
ZSB1cCB0byBQU1IxIGFuZCBQYW5lbCBSZXBsYXkgZnVsbCBmcmFtZQ0KPiB1cGRhdGUsICINCj4g
LQkiMj1lbmFibGUgdXAgdG8gUFNSMiBhbmQgUGFuZWwgUmVwbGF5IFNlbGVjdGl2ZSBVcGRhdGUp
ICINCj4gKwkiKDA9ZGlzYWJsZWQsIDE9ZW5hYmxlIHVwIHRvIFBTUjEsIDI9ZW5hYmxlIHVwIHRv
IFBTUjIpICINCj4gIAkiRGVmYXVsdDogLTEgKHVzZSBwZXItY2hpcCBkZWZhdWx0KSIpOw0KPiAN
Cj4gIGludGVsX2Rpc3BsYXlfcGFyYW1fbmFtZWQocHNyX3NhZmVzdF9wYXJhbXMsIGJvb2wsIDA0
MDAsIGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRl
eCBmOGU3NDZlNDc2ZTkuLjBkZjU1NzY3NmUwOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0yMzUsNiArMjM1LDE1IEBAIHN0YXRpYyBib29s
IHBzcjJfZ2xvYmFsX2VuYWJsZWQoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gIAl9
DQo+ICB9DQo+IA0KPiArc3RhdGljIGJvb2wgcGFuZWxfcmVwbGF5X2dsb2JhbF9lbmFibGVkKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApIHsNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiArDQo+ICsJaWYgKGk5MTUtPmRpc3BsYXku
cGFyYW1zLmVuYWJsZV9wc3IgIT0gLTEpDQo+ICsJCXJldHVybiBmYWxzZTsNCj4gKwlyZXR1cm4g
dHJ1ZTsNCj4gK30NCj4gKw0KPiAgc3RhdGljIHUzMiBwc3JfaXJxX3Bzcl9lcnJvcl9iaXRfZ2V0
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7IEBAIC0NCj4gMTQ1Nyw5ICsxNDY2
LDE2IEBAIHN0YXRpYyBib29sIF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwDQo+
ICppbnRlbF9kcCwNCj4gDQo+ICBzdGF0aWMgYm9vbCBfcGFuZWxfcmVwbGF5X2NvbXB1dGVfY29u
ZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApICB7DQo+ICsJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gKw0KPiAgCWlmICghQ0FOX1BB
TkVMX1JFUExBWShpbnRlbF9kcCkpDQo+ICAJCXJldHVybiBmYWxzZTsNCj4gDQo+ICsJaWYgKCFw
YW5lbF9yZXBsYXlfZ2xvYmFsX2VuYWJsZWQoaW50ZWxfZHApKSB7DQo+ICsJCWRybV9kYmdfa21z
KCZpOTE1LT5kcm0sICJQYW5lbCBSZXBsYXkgZGlzYWJsZWQgYnkgZmxhZ1xuIik7DQo+ICsJCXJl
dHVybiBmYWxzZTsNCj4gKwl9DQoNCkp1c3QgYSBuaXRwaWNrOiBNYXliZSBjYW4gYWRkIGFuIGV4
dHJhIGRlYnVnIHByaW50IGxpa2UgYmVsb3csDQoNCglpZiAoIXBhbmVsX3JlcGxheV9nbG9iYWxf
ZW5hYmxlZChpbnRlbF9kcCkpIHsNCgkJaWYgKGk5MTUtPmRpc3BsYXkucGFyYW1zLmVuYWJsZV9w
c3IpDQoJCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiUGFuZWwgUmVwbGF5IGRpc2FibGVkIGFz
IFBTUiBpcyBlbmFibGVkXG4iKTsNCgkJZWxzZQ0KCQkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwg
IlBhbmVsIFJlcGxheSBkaXNhYmxlZCBieSBmbGFnXG4iKTsNCgkJcmV0dXJuIGZhbHNlOw0KCX0N
Cg0KUmVnYXJkcywNCkFuaW1lc2gNCg0KPiArDQo+ICAJcmV0dXJuIHRydWU7DQo+ICB9DQo+IA0K
PiAtLQ0KPiAyLjM0LjENCg0K
