Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCD392CDA7
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2024 10:58:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A1D510E709;
	Wed, 10 Jul 2024 08:58:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PtxGPamw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB0CC10E708;
 Wed, 10 Jul 2024 08:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720601901; x=1752137901;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f+rtvVsR1nWTDW4HX+NuUthgAhKx4ZPoS3TIopBz/r4=;
 b=PtxGPamwhUVnvv4aqCOzUu3VM1h0MeKeDhDzaVVh16O3m63AU8Q0e5qv
 fzho/PEYB6Fdwc0WaGGoZJ7IcxSJtePobm11iLkNm1IPYwQhobbL0GvsH
 JrsCL5VgwXRI0X0FobCJQyyeNlIGkofaExbFUxJKQzeo9FQH8du3ew0n5
 DMAGiYl7ypJFiEH/YAL43e8+ce38to+3smqiE8xsc/hy1zyinIuxQ1Pwa
 0b9dTZdjfUBNuX2GS9bbLWXKG7kzoPbJf1HRlmYKkQWKFod8Izo27bvdi
 BvJlzoa9eLHaMoPINGfIe1OAqYCC1qrErgMhM7U+iq35EM4QEVktjZXv/ A==;
X-CSE-ConnectionGUID: NUuvPUpfTYmHQshWcxPROg==
X-CSE-MsgGUID: rzsEDrTVRdKGERuJI8yjag==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="35343568"
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="35343568"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 01:58:20 -0700
X-CSE-ConnectionGUID: hSQhPXLCSXGXhN7KtJaZSQ==
X-CSE-MsgGUID: p6nCGPp+TpqzL+Blo7ts1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="48126575"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jul 2024 01:58:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 10 Jul 2024 01:58:19 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 10 Jul 2024 01:58:19 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 10 Jul 2024 01:58:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MZ1yiuEZVZ2FKfXEw+RsG4bJAq/ofNOJdCb4/20MSCpzp6hZn1iRRFp7bw8FW5v+t1vlhnY3cfvS82jKrBGzpnzFHdR3heluzOrc2c+R2hdhAX8xsCFs8+BWPU19NRD01kJPH5uLjwCz05G/E7d/1qHPkWXu9Gh/3PjaW/9IlIqqweBpT8DKqFPSXqPihDccYJdmw/k0rbGdUqaKn4Pjwo3Aszftg+yzC0wZYqgMdhHN0K7qs8WYQIV55wfkUPv+1dqb2Asd/dqbK4AMqSLVs17AHXQCqYKl5u/26WqnuxSkbF/rwDQX33HBhmOr0aHvG7CT93bR9biQmmiLUPQhrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f+rtvVsR1nWTDW4HX+NuUthgAhKx4ZPoS3TIopBz/r4=;
 b=MmggeksMigpWHAyqIFRmdGn1NHnlAc3sxA2+LEmGdLVnhyB/a5E+uW7ZuKKH2nBpnaMenLkvZzJqzk9uSaVMcgBsFcB/GG2EueAlQjncRs3PZ0klqouyCAKvmBxgyuKoeNSKjgZ1zTripniZmAN3iLxOXTyTroO9i0XtaGvdKOJ9WKUuwTCUOQQ1yrqSTU7fMK17O+XEkvxi3iM/zGRvxa2vIkknLdboqLnTgr2wm4KCd9P0Kid8uCtB5Du0Sw3hMTIYptAiuP2tFeK4RF4DFyla/cRitsT287VbmaEJkt5wQHRJNF8HDFJrirfsZe7njTBUJnqkGUJsm6Jpotq4iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH8PR11MB8108.namprd11.prod.outlook.com (2603:10b6:510:257::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.29; Wed, 10 Jul 2024 08:58:18 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7741.033; Wed, 10 Jul 2024
 08:58:18 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 17/20] drm/xe/fbdev: Extract intel_fbdev_fb_prefer_stolen()
Thread-Topic: [PATCH 17/20] drm/xe/fbdev: Extract
 intel_fbdev_fb_prefer_stolen()
Thread-Index: AQHazusqVMFy7GcqoE2yO1dQtlWVtrHvr7Tw
Date: Wed, 10 Jul 2024 08:58:18 +0000
Message-ID: <DM4PR11MB63601D4DB86353164B7125F4F4A42@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-18-ville.syrjala@linux.intel.com>
In-Reply-To: <20240705145254.3355-18-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH8PR11MB8108:EE_
x-ms-office365-filtering-correlation-id: bb2a2698-db9a-44fd-b72e-08dca0be7121
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Ni85RDZzSWxMSC9TSE1VOE1JYzVaVXRieERYbmpoN01DVkdyaEdXUnhUb3dI?=
 =?utf-8?B?clRTZno4T0lHOGVvdURmUkd0SGhVMUF1MHk1TWxlSmFFVk9xMEJzeDRQUFF6?=
 =?utf-8?B?Y0U3S0NPazkvTWVVOThLczlwdUFoMHp3YmhKdnhBbkNTU1Z6MzJpNzhXTENu?=
 =?utf-8?B?Wm9YRTBOUlJGMElvU1M2ZDZxK1ZTU3dJdlFyUDNYUC9Fa094YTJxUTZHNElB?=
 =?utf-8?B?eTg0RSttK09JS2xDVmQrdUx2eXVpUVRIMisxKytSdTVJNk1GTGViZ1UvSlIv?=
 =?utf-8?B?TFN2MkUwS20rbWxScmt4N1BJRVQ2ekxZRCtsdi94NklCSnZBeXhEa1NITzlo?=
 =?utf-8?B?c0RwZ3RzWUUxK3FRYytBQkt1bHowY291Zkg4NENTcTNybzVuVkxFaFJzZlNF?=
 =?utf-8?B?UktsYUFqUmNjR2NmdUMyNDJwRFZURVBhQlZlR09PdVFudXFPR2YvWCtLU3lE?=
 =?utf-8?B?SXJhc29jRGVCQzFVZnRGOURIYmRlbjNXYlFrVkxyOEhFUW4vcG5nUDlCd0pF?=
 =?utf-8?B?QU94WGRiMEZWZm9PdHZyazZDc05PZTM5SXQ5SGdrMk5za095UTFsZHhJaXF3?=
 =?utf-8?B?QnpNZld0OFZtSllNVi9hWjBhT0lOUDF0b0Z2SVJZaG9odGltVzJPeVJCMzdx?=
 =?utf-8?B?eG9ZUXZ2VHVsMGhRRWI5eUhWTm9tb3VoRlp4aHBvY3ArN0did3hEYkFxTTNr?=
 =?utf-8?B?RFhGdTJMYktJVEs4djBGd3VkWThGWFM2R3NrM1lkN2dmTWNvaUZQS3lZd0Rl?=
 =?utf-8?B?Zm1xbjNIdkZJTHVTdVRZQmcraGE0OVZkN1hhMVVkYlBFNkl3STBROTcxUmFh?=
 =?utf-8?B?MDAzWWQxUTZGdkVvOTREYnFVU3YvajEvTllaUU5wWXp0UDBCQTdSUlpTb1V4?=
 =?utf-8?B?VDM5Q01rclllQ09uYlVYaVJSbVBYOTd1MzJOZ3JmSFd3SlVhaXVLTUIrMmFv?=
 =?utf-8?B?R0xrSHJnNEUxaGtTdWxJanUraEJyc1orTWRJakJ6c01LcE9raE5WVDBrWVdv?=
 =?utf-8?B?QnlpelVKNGZkMDdlNHVkdUI4SlpZR1FVRE5iemFjaEFNbks0NFBKdDNFSVg3?=
 =?utf-8?B?cUVpZ25IZ1Y2WmJTUDh6RzJLRHo4bno1cFNYUWwvemRHUTFJeUJSbDBSSGdC?=
 =?utf-8?B?bVdiMmRuV0JGaUhGVkpZaVN2d3VVMUZaZTZRWG1nbFEyYkl4NkNJakQ3b0Zv?=
 =?utf-8?B?OGgzNStYcmlvV0toT0JWRFIxMy9CVEw3alNyc3N5VEVjRjZxSXptVmIwaVBI?=
 =?utf-8?B?Vkd0SjdrUHQ1MzZvWHFiQmNpUVZLK0t2TmNiUVhHVjJ0SktZWE1qZk4vNlRo?=
 =?utf-8?B?L0tNRGhzcnhGUGlPUUZIV0lkeW85YXNiNnhBTmpZUkN0cy9rc3ZoVUdxMGp6?=
 =?utf-8?B?c1gwVTNGbjlaL0Rndm1KSzVSdVplbjMrYVZpZEhRUStBc0FLRVgvTG0xa2JR?=
 =?utf-8?B?Ukt5YmU1RHBxODI0MkRRMEc0bW1FL2h0WGZKMDJTNDJab0hiR0h2Mys1Mnd3?=
 =?utf-8?B?alRSU09ZcEFsbmpLMXIrUzIxQmsveUFpL3ZjZFluUjNvckhvTW4wbUFLMkt3?=
 =?utf-8?B?dGpHQXhua1FGWm1vQUlQL3FZdnlReTN2N3c4MjdmMW1MaFgraTFyRnJlcmZy?=
 =?utf-8?B?Q2ZwbkNQMm1XQU5vdHl3QmI3NTR3THVsMnJnK2NHYlA3U25Pb0U2elFvNE02?=
 =?utf-8?B?ZXNQdEQxYzdzOEExUEZEaTRBc21RNzNJd3YwQ1lGbXpGU0w0SjNUeDMyYS9L?=
 =?utf-8?B?VEhkZFdSeVB6dDlmc3lpc1lnZklCVmtqQUZyL1M3cjBrd1NXd3RET2htY0VX?=
 =?utf-8?B?WVlldXdaN0RvYUs3bE0vRlJiY0tTN3U2aUtlZUh0U0tETVdvL04xK25UQWI5?=
 =?utf-8?B?djlSWEdaOCtzSVhyMlVpY2FUM0w3bEIyNWhUY2ZUNytrS1E9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WTgySTAxSzhlYS9tLzNCdno3VzlSWmk0NHZYRUgwZzdlcktwRjFaVjcyTTFS?=
 =?utf-8?B?MTBndnhLajZwVncycVdNT1Y1Q0V5bk9JSlVqMk5UWFpwQmRoQ1Bvakp3K0d4?=
 =?utf-8?B?K2hEM3BJa3BRUFdrclZqRXlqZFNGbE1LVzAxT0JCcEowTitmTUxLQ1RPNjVi?=
 =?utf-8?B?d1VMLzVuVlpDWms1MmNFdEhOZ3MwSDhuRDM4bzZ6Z0JNM2UwUG4xV21IdW0z?=
 =?utf-8?B?bzYzOC9FNUI4ODNjRFBVczRrSXp0anM4NVFWNzlPWEJBc3hIa1FwK3BsaFNm?=
 =?utf-8?B?Zm9FOHVJdDNPYzRhcTRWR2NBemlpZWVMcVJVYjZGb3E0UCtJU2JYTXM1alp4?=
 =?utf-8?B?MVowazlmOE9mek1XTkptTTVOdklYb0I5OUN2SlNiVThoOWttVkFUWlVwU0RR?=
 =?utf-8?B?L2JOMmRaZWl6ZHNzQzV2NXR6YTNKRHlhbm4vVGtMK2t3ZTZDRm95WGNpMXhF?=
 =?utf-8?B?OGdzNDVuWDZ2MkovSkxhWGU1VGI0ajR4R285L2tWa2ZUNVFqNnU1NEcxQjNK?=
 =?utf-8?B?NlF3RnVaVkZUVTZUb3p5NEttU1IwazNrUzJ2OW5WaGhCUnluVU1WS25CbU5W?=
 =?utf-8?B?RVQ4dlJrWmNvYkxXNDBjT3FHanBBUGhkUXNQSUZrU2Q4eXozcFpQcW42enpQ?=
 =?utf-8?B?ZDZUTHUwSGtJYVZTK1NhSHZ2K1dTYXVPYnRVMnhBM2F6REtUekdWeDZScWs3?=
 =?utf-8?B?Vzkva2dJU0NDWi9GdDN5TG9PVEpBMlgyRkMvZGhUQ24vTlFidk10dUlvTjh0?=
 =?utf-8?B?OWsvVS9nRnlTWjNZRzlSZS9pVWRQQ2YzQWZIRVhEeGRpcGF6Uk4yRUwwMHlt?=
 =?utf-8?B?R2xyQUlPSUl0UXVwbStBZXFzZ1NtUTZvR2QxK08wRVg5ZzBGM3RzNEpsc0p3?=
 =?utf-8?B?bVNSRUQ1cjZwZWdzZHR4L0xuNHBwdEw0cFZCdlVQUi9jUVFjZWo2YjlIUjEw?=
 =?utf-8?B?c3pwQ3YyWEt4SktwRWI4SE5oNDBNNTYvV2lpU1Ura202bVFGd0RjTUg0QU4w?=
 =?utf-8?B?dUR4YlBzd0V2MmpQUSt2bWFZc2dMWTBmNHpsWlhCcVdxc1dSTzVjeUNiVkJG?=
 =?utf-8?B?b2U4ZXNFZ21MM2lZalBqekZNTEVpNmVUdmFwQTRNMmlJOEY5dTY0RkhPcDI5?=
 =?utf-8?B?WmtXb3FXN2hTZGhQY1lvWS9FQThGRnhBaTR5VHZIRm5jNjZDQkRZMkRQSDZI?=
 =?utf-8?B?cjZMWkd3SWowNHRIWU5NUngvUDhJdU1pUXJhUGlGSWgyQ2hXWW1jNTZZZ3Yy?=
 =?utf-8?B?UFBFRnZBMW4yeDI3SjRPVFFIL3gxRXQ5WEJHaWszSEJhOHNBOVFydlZXd0wr?=
 =?utf-8?B?UUY2SjN6eEFCRnc0d0lFdFAvTnp2NjFLcUw1bXQ5cXEzTzN5VWxKa3Axcmdy?=
 =?utf-8?B?WHA2Vm1makIvTndidmJ6cFNvMFJHSkdmR2tBRzZDSlFINTBaYUszYUlSOUQ2?=
 =?utf-8?B?OTZyY3FKaHZRVEVVVVcxSkpBWWtMckJOck9lSkZtN25WY21pSWJlbWdWRGxB?=
 =?utf-8?B?bUdCY2wwcUtVdEZEVythMnU3Smh4ODdheHRlNlJTWlhnaEV1UlVtYktMOHZU?=
 =?utf-8?B?Q09NWjA1Z09NdWprbkgyVUlabWJuUmZIYktzeEJUZTFqRGJyUW56ejZ6Rkg1?=
 =?utf-8?B?KzlPM0ZzZzRVVnM0Mm8wemUwQ0FPR1g3dTF6L0hNR1BGN0VMcmJIVXBMOFJK?=
 =?utf-8?B?SlBydU8zTWpYMlNQVlpHSlBycVd2N2c2NXNqRWxoeUJzRWcvWUUvRTZZUFVz?=
 =?utf-8?B?SVArZURpcGRFRWlxUktRRURSbFg0NWxxWmhDOFJDQURqTmM2d2xhQitKdGxL?=
 =?utf-8?B?TnFyTW1DZ0grUVU3eHpVMzNwVlpkWWpXSy93VUQwL0dUWFBQcjEwR2N3cXg5?=
 =?utf-8?B?WDVPRUtpak81N3M0V1VKVlpHWXZiSmlzbGdLSnA5S0J0MFBrcXlsTUM5cU5Z?=
 =?utf-8?B?ZTZia2JUaHB3ZHhjc2pndnFWbHgwNHhTd3hMVGVqcElDb1JpTndzQ2lGWW1k?=
 =?utf-8?B?WTZnZitLa1JBRlJwcStmbjdFSWtmVGhvTUFrQU1uSHdGMnJhb1cwYXB0TTBw?=
 =?utf-8?B?VGUxbmRtbkFzb0trM21nSlJWUzdDZkNOSHRsQUoyZGJYT1FSUUFkN1dFV1F2?=
 =?utf-8?Q?R/vPHZ9f9cqkWRyUmHPrDdRUv?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb2a2698-db9a-44fd-b72e-08dca0be7121
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2024 08:58:18.1664 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +WkP5ghmkPOrfmcBiG3AYqW6fNxrCQtDbStdZ9/0EwaXgyJ86YVcy5AwDrLt6hDhUKFXh0H9eJMFNO5Csq9IlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8108
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUgU3ly
amFsYQ0KPiBTZW50OiBGcmlkYXksIEp1bHkgNSwgMjAyNCA4OjIzIFBNDQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDE3LzIwXSBkcm0veGUvZmJkZXY6IEV4dHJhY3QgaW50
ZWxfZmJkZXZfZmJfcHJlZmVyX3N0b2xlbigpDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gUHVsbCB0aGUgInNob3VsZCB3
ZSBrZWVwIHRoZSBiaW9zIGZiIGluIHN0b2xlbj8iIGxvZ2ljIGludG8gaW50byBhIGhlbHBlciBm
dW5jdGlvbiwNCj4gc2FtZSBhcyB3YXMgZG9uZSBmb3IgaTkxNS4gR2l2ZXMgdXMgYSBzaW5nbGUg
cGxhY2Ugd2hlcmUgdG8gdHdlYWsgdGhlIGhldXJpc3RpY3MuDQoNCkxvb2tzIEdvb2QgdG8gbWUu
DQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L2ludGVsX2ZiZGV2X2Zi
LmMgICB8IDE4ICsrKysrKysrKysrKysrKysrKw0KPiAgZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3Bs
YXkveGVfcGxhbmVfaW5pdGlhbC5jIHwgIDggKystLS0tLS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwg
MjAgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0veGUvZGlzcGxheS9pbnRlbF9mYmRldl9mYi5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL3hlL2Rpc3BsYXkvaW50ZWxfZmJkZXZfZmIuYw0KPiBpbmRleCA4MTZhZDEzODIxYTguLmY3
OTA1YjM4MmQwNiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkvaW50
ZWxfZmJkZXZfZmIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS9pbnRlbF9m
YmRldl9mYi5jDQo+IEBAIC0xMSw2ICsxMSwyNCBAQA0KPiAgI2luY2x1ZGUgInhlX2d0LmgiDQo+
ICAjaW5jbHVkZSAieGVfdHRtX3N0b2xlbl9tZ3IuaCINCj4gDQo+ICtib29sIGludGVsX2ZiZGV2
X2ZiX3ByZWZlcl9zdG9sZW4oc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ICsJCQkJ
ICB1bnNpZ25lZCBpbnQgc2l6ZSkNCj4gK3sNCj4gKwlzdHJ1Y3QgeGVfZGV2aWNlICp4ZSA9IHRv
X3hlX2RldmljZShkaXNwbGF5LT5kcm0pOw0KPiArCXN0cnVjdCB0dG1fcmVzb3VyY2VfbWFuYWdl
ciAqc3RvbGVuOw0KPiArDQo+ICsJc3RvbGVuID0gdHRtX21hbmFnZXJfdHlwZSgmeGUtPnR0bSwg
WEVfUExfU1RPTEVOKTsNCj4gKwlpZiAoIXN0b2xlbikNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiAr
DQo+ICsJLyoNCj4gKwkgKiBJZiB0aGUgRkIgaXMgdG9vIGJpZywganVzdCBkb24ndCB1c2UgaXQg
c2luY2UgZmJkZXYgaXMgbm90IHZlcnkNCj4gKwkgKiBpbXBvcnRhbnQgYW5kIHdlIHNob3VsZCBw
cm9iYWJseSB1c2UgdGhhdCBzcGFjZSB3aXRoIEZCQyBvciBvdGhlcg0KPiArCSAqIGZlYXR1cmVz
Lg0KPiArCSAqLw0KPiArCXJldHVybiBzdG9sZW4tPnNpemUgPj0gc2l6ZSAqIDI7DQo+ICt9DQo+
ICsNCj4gIHN0cnVjdCBpbnRlbF9mcmFtZWJ1ZmZlciAqaW50ZWxfZmJkZXZfZmJfYWxsb2Moc3Ry
dWN0IGRybV9mYl9oZWxwZXIgKmhlbHBlciwNCj4gIAkJCQkJICAgICAgIHN0cnVjdCBkcm1fZmJf
aGVscGVyX3N1cmZhY2Vfc2l6ZQ0KPiAqc2l6ZXMpICB7IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0veGUvZGlzcGxheS94ZV9wbGFuZV9pbml0aWFsLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
eGUvZGlzcGxheS94ZV9wbGFuZV9pbml0aWFsLmMNCj4gaW5kZXggMjE5NjVjYzhhOWNhLi40YzAw
MGU5NWFlYTUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX3Bs
YW5lX2luaXRpYWwuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9wbGFu
ZV9pbml0aWFsLmMNCj4gQEAgLTE1LDYgKzE1LDcgQEANCj4gICNpbmNsdWRlICJpbnRlbF9kaXNw
bGF5X3R5cGVzLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZmIuaCINCj4gICNpbmNsdWRlICJpbnRl
bF9mYl9waW4uaCINCj4gKyNpbmNsdWRlICJpbnRlbF9mYmRldl9mYi5oIg0KPiAgI2luY2x1ZGUg
ImludGVsX2Zyb250YnVmZmVyLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfcGxhbmVfaW5pdGlhbC5o
Ig0KPiAgI2luY2x1ZGUgInhlX2JvLmgiDQo+IEBAIC0xMDQsMTMgKzEwNSw4IEBAIGluaXRpYWxf
cGxhbmVfYm8oc3RydWN0IHhlX2RldmljZSAqeGUsDQo+ICAJCXBoeXNfYmFzZSA9IGJhc2U7DQo+
ICAJCWZsYWdzIHw9IFhFX0JPX0ZMQUdfU1RPTEVOOw0KPiANCj4gLQkJLyoNCj4gLQkJICogSWYg
dGhlIEZCIGlzIHRvbyBiaWcsIGp1c3QgZG9uJ3QgdXNlIGl0IHNpbmNlIGZiZGV2IGlzIG5vdCB2
ZXJ5DQo+IC0JCSAqIGltcG9ydGFudCBhbmQgd2Ugc2hvdWxkIHByb2JhYmx5IHVzZSB0aGF0IHNw
YWNlIHdpdGggRkJDIG9yDQo+IG90aGVyDQo+IC0JCSAqIGZlYXR1cmVzLg0KPiAtCQkgKi8NCj4g
IAkJaWYgKElTX0VOQUJMRUQoQ09ORklHX0ZSQU1FQlVGRkVSX0NPTlNPTEUpICYmDQo+IC0JCSAg
ICBwbGFuZV9jb25maWctPnNpemUgKiAyID4gc3RvbGVuLT5zaXplKQ0KPiArCQkgICAgIWludGVs
X2ZiZGV2X2ZiX3ByZWZlcl9zdG9sZW4oJnhlLT5kaXNwbGF5LCBwbGFuZV9jb25maWctDQo+ID5z
aXplKSkNCj4gIAkJCXJldHVybiBOVUxMOw0KPiAgCX0NCj4gDQo+IC0tDQo+IDIuNDQuMg0KDQo=
