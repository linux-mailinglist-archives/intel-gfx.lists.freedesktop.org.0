Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C96AE3725
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jun 2025 09:41:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54B8F10E1AB;
	Mon, 23 Jun 2025 07:41:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="frPufeO+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AE5610E1AD
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jun 2025 07:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750664475; x=1782200475;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=A3YLt/qZ8ac2k1uuy5wWGwWDM16b6XM3mMpRbf88vIU=;
 b=frPufeO+NMaCVSW8hRIMv3L2E3+rPlEGt7aB7JbTL7W0SMxa4ObvyH/+
 awdOO8/JYeXpYTb4zh4Wy8x+z8ydo+M3tLLE/dwUWUMDKEYOK/J8VkxYn
 k2QMSlZgQfxjJuX/L95E/gcv274JbPJkn8vqW0/oStzYlDCFI6EA3+Y93
 OranbsmSVbnv2fIeJg0n1D1r5qXg2YsM0SuvhvquSafGE8yX10HnMzuTA
 +0wipWTeo+7B1hjhBhoF81z4K/CG7qhVRu2xDoimINBnZyBe9K789Kl2u
 UE8z1ldngPiift6OZGZpuHHXrKxnIV16d2NdQ9uwDQw8MK7yLVw77lNxw Q==;
X-CSE-ConnectionGUID: u0B6Ovu4SUSNMxP4QPVGQw==
X-CSE-MsgGUID: 6ZTGF5JWSE272afrj0wWFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11472"; a="51976724"
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="51976724"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 00:41:15 -0700
X-CSE-ConnectionGUID: qifpmUMmRwaLDPDk+y4UhQ==
X-CSE-MsgGUID: RBTKB5wpSdCX+XfKRjeGXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="151809467"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 00:41:15 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 00:41:14 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 23 Jun 2025 00:41:14 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.60)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 00:41:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w/C8gJOnBJ8qsUBi6jqInOv55QlGRpV57H0QpAYv1BsbqM2XngxaA95kn2gQSFIKXR00kgSbwIuIA+UfYL4MOmTTRxtJx9K5r5AX7HvnQUQbvliH78HOP/AFOt7rBInaL4oRhzqc3JN3a5R7wFhFm3GB6u9SVmsXfKpa+8TgbLuo0LNIYn4qxfruN0BznjDKWBmZJsULRpyQm/8B7iC8f3hWDDjhNmq0cV/K5A6jPvyZExCrl4PJx+QHlRIyI94Mj2PlgmmF356/dwWTjv35dB5ooL7IhFbO8OLnasL/qWiToglNabqB/XwFUWlnfNn98H8DgxgcaRXys71N23W2kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xwScTkV0NTHWoxsxAFKMVCcGRTbm8KFIrNX+RV33Eeg=;
 b=QhXCRzedfS7PyRjR1zK/WGiR8UVnXfC18AdViFBPsYKdrpjwy+4SPNSnT7WvdHkJB7Fsb9THbAXlKIFd37SePcpmC8NQIa7xiaVf6oUzpgWDuj96jjf1nrUsijEyKjum9omyXvtsyGH8iMQK0umIVeDgApywYkfWh7Awk8u+cVJj1lQyBhMg1sOABl3XpI/OU0+mHKPDdJTABfyl7qwhl35CykUAZkM6tK9bjtjg0ItvlKHmn464moateFo8Z2FrdZEzqaAUOPAP0d/n9aAqvzFsgPbqPJmxJYcHCXUV5a4ftxcWN5gEmur3y3kQVAvMQ8SlbcYegmT8MkN8iEQaVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DM3PPF9D56E7727.namprd11.prod.outlook.com (2603:10b6:f:fc00::f3f)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.25; Mon, 23 Jun
 2025 07:40:57 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8857.026; Mon, 23 Jun 2025
 07:40:57 +0000
Date: Mon, 23 Jun 2025 07:40:48 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Chris Wilson <chris.p.wilson@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Matthew Auld <matthew.auld@intel.com>, 
 Andi Shyti <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH v3] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
Message-ID: <z2dygiyxb5b7baal7x7wnblfsxnypdmvsq4za7cc4snu7tsbsb@5my2zixfojr7>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <di25mtf23dwhfrb5lawcytbn5pg73dc2mma42ny3moiqluwl66@gkepxlpv63cs>
 <175034204806.2265741.12155401070258841657@DEV-409>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <175034204806.2265741.12155401070258841657@DEV-409>
X-ClientProxiedBy: VI1PR0902CA0026.eurprd09.prod.outlook.com
 (2603:10a6:802:1::15) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DM3PPF9D56E7727:EE_
X-MS-Office365-Filtering-Correlation-Id: 053a8791-04dc-4ce3-b8f5-08ddb2294a76
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZWFxOXA1WEFHMmkwTHJSSCtOOXh3WDBnYjhDRS9rVUJFYmt3dWtpQXZTaVJK?=
 =?utf-8?B?WGJBT1JzNGNEdkQrMnFtSmxoL0srZXl4MjBIbjE0c2pGbHAyYytJNlNqNXdy?=
 =?utf-8?B?ZnJyNFRua1JWQm9hWU9PNS9GTnVDMkpnaVJ2R3p0Yk9kOWhyMHh4dGVYdDFN?=
 =?utf-8?B?M2VSbEdIZit2MGpXMHVieDFmRnJoemZUaDY5UXlHT2xoOEVISGZjZGN5eTU0?=
 =?utf-8?B?cFA5TWFkRFk2OGJrTytUdy84U3pLOEQyOEZWQ1RCYmE3czRkSE9KaWoyMFVx?=
 =?utf-8?B?VkYvdHZDRUNGUjdYcXBwNHJLVGpvd2E1Szg1V1RnTGJSNmFPc1drL2dmQTl1?=
 =?utf-8?B?TXVZaFR4aTVyczhiTzdtMjZhdFBOb2hxay9seFRNUFdTUUtwT1oweE1QMDV0?=
 =?utf-8?B?ekZBbnhleEpLc1JxcURocUxyRysvbFNjVFFBSzhQcmxLWE53VXppb29ybFhn?=
 =?utf-8?B?SndVdnZLMGNJb21ob01ZUzFFOE4xejBDL25qdHVIS1p3Q3ZUa1lnek12bm80?=
 =?utf-8?B?dHdzWFNQZStQaHpUZmNVVXE4akU3T1dhVXMvbHlVSFlZRG9obTZyaUxWZTF4?=
 =?utf-8?B?N3d3TXRDZTBGWkZOZmlYL0tjK0NIcXozbDZROElSTzNiZUV2eVF2WlFVV1hq?=
 =?utf-8?B?eXFrSDY1S21Bd3JUV0JhZVVzaCsyZWZZNlpvenhpTyt6cnczZjIzYkdYeGtX?=
 =?utf-8?B?REt3OVBmbnVydEFwWlAvdi9tYjJUN3VqaWFLOW9SNTNtSjZpK2ZWWGlWeis4?=
 =?utf-8?B?UnlGQ1kxZnAxSjV0WGlOUnZ1RjVLUGRuUmlKRUM2OWM3ZHhpVnVNRmE5UFVj?=
 =?utf-8?B?Rkx0cjExT2l5ak8vekFjVTd5VkZhcG5OajFqSXhQL0I5cGtDVzZrcDlVRElp?=
 =?utf-8?B?VkNMeVpjWkFVL1ZVZmlCUHRjUitTOUVyd3VGU1Y2cUJ2TVQ4SmhZTnVKUHFz?=
 =?utf-8?B?UTRmNU1ZaC9XNWI5WG9HYVFFTFZMU0dER0wyOG9FQmREMmdWbElyMTJ1czdl?=
 =?utf-8?B?UWY3SVB4TFY0V3NlNVdHaXRiS1lsaS8rNzVLbVFKa2RXL2RIK0dNVGtEUFU5?=
 =?utf-8?B?SEZLSW81NG1WaDlmOWQ1QXY2T2FubDZwZHYzRDNpYllDaW8wc3FNVjl0TDBn?=
 =?utf-8?B?dDFReWsvY2dWTEtaWXc3cTB5RWx6SmtHNzc5Mis2TkVzSW5ZTDdtRG1MVWE1?=
 =?utf-8?B?ZGFvcnY3cUUxRnBvVDRDQzN6RllMUGF4L0JjQ3BhTjFmTDIra21WaHREc2pK?=
 =?utf-8?B?bUZ0L1Qwd3RIR1E5WGhvWjYvZFc4ckZOTmVsU0M3YnJieEtTSnJ0R2x3VzlY?=
 =?utf-8?B?VmszSlRHMUlWQlNYSGdHMnRORmZBbWptNUpsK0JubXM5b3BZcTJVTE1CUC9U?=
 =?utf-8?B?TXBVRVFQZ1hEWEwrWHBJOGVXcHkwTUlhOHhObUFZNXhkL2dYMWdRSm1GWERF?=
 =?utf-8?B?aUVyUjNIMlEzN2xLNkVqK0R6K3NHc1JSZWVkMlNxLzRJVW1HZnBtZlY2OVN1?=
 =?utf-8?B?V0kyOW1zbkNuQUdDNDBOV0pRVCszNG9GWFBRUWVJWVBaaFlSUGRiekJsL0Zn?=
 =?utf-8?B?b1ZCbkx6RFNsOUF6ZHBTVmg5cktReTZhRmh1SzV2QWVsR1dxNEpXQXlYTmN5?=
 =?utf-8?B?SWZQYU5lTDNBWGIxdW9DbkZ3ak4xeU01SWtZeHN4Yk9DbkpBb1B1M3FhMUhC?=
 =?utf-8?B?OUVDNWVrcHJ4UU1GKzJ3NWtsaXlEdGswQ3VPSzRHK2NVUUpJZnZISGVUM0RN?=
 =?utf-8?B?dU1GdmVOK05Wc3huVG92YVowdlh4RWxsTWhsNWdoZ3IyWDdZVnpPSmJIb1dj?=
 =?utf-8?B?THkyQU9WRWxjTk9ZZGZZSlpoTG5QV3k2WEZxNGNtMStYUW1lWXhyREVSWHZ1?=
 =?utf-8?B?ak56NzRQeXJ5VFZBRTFkYVJzT05HckxkY0toeDU5b1BnelQ2TzdBNDJjaU1w?=
 =?utf-8?Q?gGDIiC18OZc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M0tsMEU1L2pEYmhXVHVROHFpcEdVVzAxQnRsNnJ4UW1HSWs3UFdlRDZWYzZ4?=
 =?utf-8?B?aGRPR1JOR3JWRzhURExPL1RYY3dXMFFHaXJld1RnSmoxYnlYT3RScDJaSjd0?=
 =?utf-8?B?VWVteG0rZm5qelR5d0p6S2N4UkdXRkFFbHlBdnNzUUNlamE1d2pqbHAvWi9O?=
 =?utf-8?B?Zk5CVXFpaGlzRXcyYUtHWnpDb1I0NEtVVk9HVXVrY1hCR1ZCRDEyZy9WOGwy?=
 =?utf-8?B?aEtqeENtc3JkRGlGRzRWeC9udlVzeml0d2UyVGxZY2RGTWFHbnB5T1MrYWZI?=
 =?utf-8?B?TGdBc1M5UnZ6RGU4bGdDYno3bVlYQXlEb1Q5YWFGZ0RHNjNsTlI4dTJzSWc2?=
 =?utf-8?B?TjZZU0dvT05Xek1FTjQxNUlSTncyWnpQM3pPaCsxcVNiU2doZlRRUW5pcGJy?=
 =?utf-8?B?SjdHZktEM2hwaThvRDl3cVV1RmxiTW9HdE1nSTVwbmE5b050Vlh3MmduNTFq?=
 =?utf-8?B?Z3JHbUFyZWVkdW5iVEY1dTdCRTBxelNnbUNGbVFuNCtVaGlPcFY3bVdxdEow?=
 =?utf-8?B?Q1NYeEtvUDRFOTVzN3ludXNFZElWV3FvTDY3dVJUbFZwSStnMEMzaDlRZW5K?=
 =?utf-8?B?T2t3ZjNNNVRzZWpOUVg2TXpVdlFkeXVnNUtxU3JPM3k0NUQ1WEE1SW85bkVo?=
 =?utf-8?B?d3FEZXJFQjJQcFhKRmdYbUxuOGZIRzd4Qi9WeWk2RzNVUnR4WWhMVFhxSjd3?=
 =?utf-8?B?YTkxRVF0NFBTMjlFUHE4VTZIbmZvcEFwckJEYVVCUmk2ZkgvRVNGMVdxVHdK?=
 =?utf-8?B?QkRxWGN6T09NVDRFMkMwVjd1TDQrcUw2ZFBHeFNQRDQyOTR1Q0tsMThSQklv?=
 =?utf-8?B?R2VYR1ltMFhHOG5FQ296RU9jUXhDK2h5SWhrT205akQzbm1oZEY4dzNZTGdK?=
 =?utf-8?B?alBoaTBkbTd4QXlVNUlROTlYQW9iQUdXZkpQSW8wTXZwYjBXMzhpcGpHWE1h?=
 =?utf-8?B?QWtCbGNZLzJvYzg0K0VpME5IblNJWXh6bFgwSlZWK1FlNW5lUk5wOGdEeUUr?=
 =?utf-8?B?RS9LY2NnNUZraDUzN21HTTFYOFNrWFluK29ldmc0clBPN25BS0I2NkJHZGJI?=
 =?utf-8?B?NlUyNXBjRFJvcWZpRVlSRVQ5REFnNjBubTRCL3ByTkUwbTZ5c1hRWFdoSG4y?=
 =?utf-8?B?Sk1BSXc1aWlHcnBvdE5PeWNuRElMMW0vemUrL2I4SXdxQkdxaThXZGJyZCtJ?=
 =?utf-8?B?bXBTdVR6ZmpjQ1JVQWV4a2grcGRFVi9DeDhGTGJxdVZRNGFxYnQ1YytvTk0z?=
 =?utf-8?B?anhLRWpNelZGM1FxYWVlSEx0YzhqVS9rSEs2eFpSaVgvMys4YVdhN0duWHor?=
 =?utf-8?B?eWduUDRxQjU0SmU1cGYySDhpU3B6SWtueFhTOVYrL3k2QlRNR3dWMUp5Q0JE?=
 =?utf-8?B?TGF6a3BWRVR0MFUyelpCMFZhcW5kenB5QkxKNHNMSGNUekdYRVdHVEpxQXZC?=
 =?utf-8?B?QzdjbC82VTdoME13K245Zng1elB4V2s4eFcrcjd4RFdYamVFTEl5YWJtVjU1?=
 =?utf-8?B?cXpzK09Mb1JaZnNhZHNldEtROCt5NG9EbC9HSkRVNlNqS0czenhLMWphYkhK?=
 =?utf-8?B?NnFueU5mT3ZwTms2US9pZ3dSV2MyMnNWdnlaSHczZS9WbW9KQUJxMC95R3Vr?=
 =?utf-8?B?dnRjd3MxaW1rRVBOQ04xaUFadlkxTkdDZ09mbE1KV2FiUkphdXZmQUNrT1ZV?=
 =?utf-8?B?SjB0QldLeEVXRTRMRmF2d2ZLTnpvaEtxQVpVbnJraXpqbWpER2tMT2NjK1F6?=
 =?utf-8?B?dlJIM21yS0F6Wk9ycWlmOFZSZnhnR3dIZ3d5VnJVS3FLN1kxQitWUmFzTjRH?=
 =?utf-8?B?aGhlVFBhdlBpdGZ2ZjNKQXpXY1lpTnpZYTBsQ2I5WjJkZjRDNDFTMWZKbjhP?=
 =?utf-8?B?aEZYcENrNktaVWxsTGZDeExna0hHaHFsNGVKcXkwTjdWOUp5WjBUNmNCMmox?=
 =?utf-8?B?ZWZySDJwa1pGT0xMd2lTQkdjRE9uQjB1WWNWZWtUbitWUFVhNHR4RWc4eTlC?=
 =?utf-8?B?TGRabXRDbmk1V3ZkYU5NNmlWSkYvTkZNYXZ0RzM5b242VmYzR1JSRllRYWtV?=
 =?utf-8?B?TzRLeTRlRnFhT1NqeHFCb0FyZVR0TXNrOFpONnR5cjRaT295ZXh1ZFRIc2Js?=
 =?utf-8?B?UjFrWHRTL0xmWXp4emlKbFZ2YmRnUnhPRUZCWHpqVUZ5cDJXRG15ckJQUHFv?=
 =?utf-8?B?Vnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 053a8791-04dc-4ce3-b8f5-08ddb2294a76
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2025 07:40:57.0944 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QrRTEOX5bdql12SLFHvbKU6RMtEOEL95gGQZqX7C2s5Yt/QbXp8seYwCztTZXBd88BonYY8EEfv4h+mPyTJKW0OsyNR6SifdeD292BH5s4A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF9D56E7727
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

Hi Chris,

> > Amend the problem by keeping the mock file open throughout the
> > duration of this test and calling fput() from the test itself.
> 
> That is not the problem; that is papering over whatever the problem
> really is.
Would you mind sharing a bit more? At this point we have a
problem in our code that we need to address and rejecting the
proposed change without any suggestions gives me nothing to work
with.

---
Best Regards,
Krzysztof
