Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F7D8D2E04
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 09:21:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5C2810E0EB;
	Wed, 29 May 2024 07:21:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kNCc8PVu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B00AF10E0DF
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 07:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716967269; x=1748503269;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xybmGfxjAbziu+PoFYKfqfxMPCwiBrXrV0eJfMYpVqE=;
 b=kNCc8PVuoidSmGaWCHx7SNVq9SLSiVhv9DuRXRK6QABzVTt4JA0srx+2
 4fysmFks7PfxoYC2Q4O3HhP/6U0l2zXaAxHHYHMAoo8DX8acTxvrN/Gdv
 NImHnhxw96o7ST3LR4B/AFJRfESKp4zGL8c6/cEndyPkBvl7D8tdMkrJ1
 V8Cj75FIS2sz4uDFUif0DMa1qo+B5FaRG978hrDlvsKXS4EOdgRRcfF1g
 u9vrYJSzJuPfloT88E3+gpUv4lyTL505XuS3shUUtkkj1890Ewx/xFMFi
 L64ywFq5GEGIMXcbS+OahDJCbZ/DOglx1ORUSKtFAHxiBfOOGsojHqiw9 w==;
X-CSE-ConnectionGUID: 1dc54sieTGCaypA8tdbqNw==
X-CSE-MsgGUID: 7NTgJ6IeQtSaWeuSarJJ+Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="24768471"
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="24768471"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 00:21:08 -0700
X-CSE-ConnectionGUID: jEbyF5iARzajX9iNbVbF5A==
X-CSE-MsgGUID: zX8c2orQSQGJw9UkCLBjvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="35312654"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 00:21:07 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 00:21:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 00:21:07 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 00:21:07 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 00:21:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dDbinHs0udctkahsYGwDGnVb/qxFO6WfEtXVnYn5NzwCVbPxUGbNlOpLZJGTLV+IwQcL7WnNqHhE/NwbAid9Y3LVuWZVoErp67RfF9Pw+BKJ1lHtyBvuB38tcybrLKScRUTSvZUusydigmtPt+EhVLtZrmK10UyqFgcfBEB0EUWbC3PskjhyLku38fupdH5BfdPeUvpUDU41+CxSHf+ZRMDKTXmtjCsuqBquNFOVHj7u5E550/2cR21FuTez0IoXM+QpuvJxjGXHxMb2cKnmbLsIbsCj1jjepRqOiUmMOmDcvqZHBpBVfoPj1y6yjut83s2kKYmDklPlyL/w5QKGtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xybmGfxjAbziu+PoFYKfqfxMPCwiBrXrV0eJfMYpVqE=;
 b=HQy/fgYcNiqLa9gYmLcQk5zhkQ8pmhjOgNxFFEN7ax4pxXTL/ZOXLC+GeKTlz10Lhj6yKzmnNy/9UzK0/KdcGSpB+J0qiYomrZiq+3/NoyT5I0Tchuc3BrTv7mKVDnMe3WcAyaYV7Lrna57cjvAdWwjbfr2NRLSvxQ3Bz2sZxGuhxsd6ZTsBfOPvmxtq3S0sfuh4l8lqvGpOQ2lF+CBA9KrCU8usn2Ne4uOxoGEiABLQhljyLNZ2maPTH0FYGoU6THn3jezh5GJYQYHRgy6ZZXG0kG8ktxj6/WN+Wk7PYXa1u+jF8fiDt9q3euXvnLZb2rmovu6l7VVexcMHo1GDjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DM4PR11MB6480.namprd11.prod.outlook.com (2603:10b6:8:8d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.17; Wed, 29 May
 2024 07:21:02 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7611.025; Wed, 29 May 2024
 07:21:02 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v3 07/20] drm/i915/psr: Add Early Transport into psr
 debugfs interface
Thread-Topic: [PATCH v3 07/20] drm/i915/psr: Add Early Transport into psr
 debugfs interface
Thread-Index: AQHasAazjkFckPOB+E6zV5vzVRmUkbGt0VPg
Date: Wed, 29 May 2024 07:21:02 +0000
Message-ID: <PH7PR11MB5981363419F92BA954768EDBF9F22@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240527072220.3294769-1-jouni.hogander@intel.com>
 <20240527072220.3294769-8-jouni.hogander@intel.com>
In-Reply-To: <20240527072220.3294769-8-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DM4PR11MB6480:EE_
x-ms-office365-filtering-correlation-id: 3e769cd3-ad8b-4af3-9279-08dc7fafe59d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?MUl0NWRucTJEVHNRL0tkWmZ2ZFUydXc4TGFPUklOTjBDd0lEN1dWVm4yYnhq?=
 =?utf-8?B?UTVKTGVlR0pCQjRROXFoVXAzWG81djgrTWpVZTQzQ1pzUGN1NWNCMWhyZjR0?=
 =?utf-8?B?TDMzVEpmUDIwdXBqMGZlY2lEaTNsY0NlTVhueVpLb2NMSnE4d2dGOTE3akhS?=
 =?utf-8?B?RytuTnRlRTU4Y2lTUE80VzEySnhMNWl0dmY2cGg4VDlENHRPWVpmeXhBZmdF?=
 =?utf-8?B?UDIxNE9BRmpQMVN0dUVzQjRtRGdjNXVJM2QyK0x4TUxpM1hwWnNyK25ZWnd2?=
 =?utf-8?B?VmZTNEFER1JDb0JwZ0poeUc4akRBNk1mbHlyUzBIYnZwYXROSWJWWS8xMW5Y?=
 =?utf-8?B?UDVGcXd5bXF4SjdHa3RJSXl0WlByV3RvbGFpZDh3cWsrUndmeW1ZaWFWNkg4?=
 =?utf-8?B?KzBWTW1BREdFQWdXbThtNXk3Q3BCV213M2FBNlhKK2JBU0J3SWVCb1JncVcr?=
 =?utf-8?B?NGluOUxOVDQ5eFJpWmx5bVV0U2tqZU0rc0JFMThxSXhoRll6SHRpR2JYYWkx?=
 =?utf-8?B?TjBnaGhtV3hSM0FQVEJvVkIvR2ZQV2pOWDh1NlFiL25EYkV2MDFZeEFraHgr?=
 =?utf-8?B?ZE1NVEhjR3hRQ3BEeS9HNk1ZLzhMenVhQjRYL0YzcGt5QVozR3VsKzdvT05X?=
 =?utf-8?B?TnVjWHMrY2pwM3BSRXBRMXJqM2dQa1BON1E1NHFSQUlRdm53OXAyLzQwcnRh?=
 =?utf-8?B?N0NzRG9iY3Y5b3RQSU1HdXIyNVBKVlZXQ2YzVDcwdzhlTktJQXZzSlZ2VjNl?=
 =?utf-8?B?eTBnaTMyWU1EMWVIRTF0L3NHaDZXSzFCd3JYcDRiV2EzNStlS0RIeWJub3Qx?=
 =?utf-8?B?alhYRTkvR0lCS2pNOGZmdnk2TWtqMGs2d0pzNUtwdGh3NFlhdG1xNENXRjk3?=
 =?utf-8?B?dTZ4YjkwbnlXQXpORG5rS2JGcnNWTElSSks1ZXI1NmZlZkp5akJ0b3o3Umor?=
 =?utf-8?B?WHRrSldqNVNHMDgrbnB3SWVOQzgxbE9hWUxDbXM5bEFIK2tEeUlMZjRHRXlT?=
 =?utf-8?B?dEhsWXM1QVlodTg1bTFrZzd5R3ZlSVhJaXFmZGlCZVpYb3VPdUpPWTlaQkFB?=
 =?utf-8?B?aXBTa29hbXgxeVNRSzlma0pUb2hPL1dnN2JEWnJqLzVMdUtKeDdFREwxTTZ0?=
 =?utf-8?B?dUluSFVOVXB0SEpUZWxjd1ZNZ3lwM2N1bHRzc0NaUVhEajlMVzlFSnBvN1JP?=
 =?utf-8?B?N0hQL24xaWw3Q1J6WVRrUStyM21aMzk0UTJWeUV5cm16TVF4blpUSks1alUv?=
 =?utf-8?B?MFR5NnBDQlNYZDc1SitOcE96cU5tdHhxV1hHVkJVWWpHNHR5Z1VkOTRFRXlN?=
 =?utf-8?B?bXFqY1lTWTRkald2SnVDc2x0djFXYTZoMXBDd3hwbHg5VmZwU1RFTUNzeFhB?=
 =?utf-8?B?ZHduV09SVjZHd2tsUXRqWEE1Q0p0WEpoWFZxYS9VY0czNHN1T3ZyK0VXN3Vs?=
 =?utf-8?B?eER2QlF4ZTVscVZxNVFqTmUzdDNXOUIzQUtvalZSTnZyekVhTWp3d2ZxL1FX?=
 =?utf-8?B?MmNIeHVkTGkyaUhuT0hkL01xZEY4eHBHcHhQbEpNQUVvY2Fwbk90ZW42cStw?=
 =?utf-8?B?dnk1RWZlczlBbXU2bCthNkQyOW8yb1RwZnk2R0c0VE5jKzlkTmZuUWlzUHFM?=
 =?utf-8?B?cVB6Q0s4UitpL1lDYUpRQ2FhaVRsMnRqb2gzWnhjTDI0cnpzOGJpQzBDMWJ3?=
 =?utf-8?B?c0RZYTUxaXZZTHNRV09jQ2dST3hKS0hqeVVoNWVFQzFQWUl1WXNzWERpb2U1?=
 =?utf-8?B?YkJuTnovSnNaeFZ6eFJJemhraEczaEhzcHlTZy9mR2FLbE1vV0FQWUp4YXZX?=
 =?utf-8?B?NlFHZldveHNwTHFNVHBPZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dlpJWldxNzdmdEd1NUw4SDYwMTRqQkFqQVI3OEptK0hZbEZ0cEZFeWJ5SzZY?=
 =?utf-8?B?L0dnSTFvWjBBSzNpREY1N1ZPdWxjdEJiam5IN1pYSDlZelFncG9rTVJ0ZkxL?=
 =?utf-8?B?V2gwZm8vZEhXOC85ekdhTGRheCtZUy9iWkFSZE1JTnM3RDFVbi90Ui80TW5T?=
 =?utf-8?B?aFkyK0V4cmcrMy9MS1FxR21uMmVzRVdyVG9helZUbm9ZbHR5T3M4TGR0Tk1C?=
 =?utf-8?B?UXE4TDY5aGd5TXkrKysxK1AzL0ZjeC9xajJqUGVQSXFPeDZLalVGMVZIWG83?=
 =?utf-8?B?WXk0Q1ZlTVpLV3FveFh5OWR0bXBTQjZtUDRqUW9oYTFSbUMveU1mZi93dTJa?=
 =?utf-8?B?Rjk0Y3VsTnRFdDRhQldpOHV6WlJ1akU2RDVVVEZIdmZ3UXlCZTBBUW1NYS9X?=
 =?utf-8?B?ZEErOHNDV0wyOWNlUmZ2ZkxMQ3hEMEF6L0Y1QitWN0oxdXJXSnYrSHR5YVpL?=
 =?utf-8?B?WEJiWHhQQU5uQTNVdVJWMWlUMDh5OFowSnJ6ZGp1RytJQUMrdjhyS0xsWUJq?=
 =?utf-8?B?ZDlwMFVWbGFtd1E2MlhsV0EzbnZxcjkzaEVQYk16QjRHQTM5aVpkckR1YXZB?=
 =?utf-8?B?S0xGaXJFc3NwTjJDTURIbUJrd1p3TGt5TkY3eG5CVzNZRklTR25NTWpzMnhC?=
 =?utf-8?B?cnVJWGcvWkQxNzFRQXFWRjNEZ1diUUJScEVxZUYyT0ZCTnJtQytSVEg4UXcv?=
 =?utf-8?B?QURSOUY5TVVZTVR6MEtZYmtMS0JrUmFDMkZKT3dOT2cwLy9tWGZTVFV3Z1E3?=
 =?utf-8?B?UWtGOVNvZkwyZUtMVVVXQjNiTjRwMnh0WlZjNDMvYkhKZ2ZwS1QybkxHMEJk?=
 =?utf-8?B?Yk5IelYrbTFiOVlxTVNTWUlWTVNtc0djd3ZRbzhKSUp6SGFqOW50ajZ3ajRr?=
 =?utf-8?B?WHl5ZEJaR3htWmlCMTJWUDZweXhTMUlIRDJrZ3V3b2ZTTGR5ZUpHYzgyaVho?=
 =?utf-8?B?MW1aWERuQzJUMzBXWUtLOVN6aEdqMVpIUTBKYTJ4N3V4VHgycVhoa25vMUIv?=
 =?utf-8?B?VjhTdGpxKzJaSUgxQnVBSlFzdDh1T3I0UWVrSE50RUU4cVNNdncwdDhRNW44?=
 =?utf-8?B?cVJzTTh3dFRQTk0xTzdobWs4dEJZSkJDQXNvNXhGYjZ0RXA0TWF3QWVyZXdM?=
 =?utf-8?B?WGNZa20zTGhZRTFuaTVTRm5panB1dUZ3SjBtZ0ZlT3dJZzNnRFZOaEFUT3gx?=
 =?utf-8?B?ZGtCU09mN0lBQ3dNd1ZTWkcwa3kxOVFSeHdrRVJxenRyRm1MeWx0YVVrY05l?=
 =?utf-8?B?VnU5YW1UZFdwd2VDYWd5dDMzc1JsTmxDWlYzRHJWRGNHcmpjQi9MTTFVUnZ2?=
 =?utf-8?B?WEVWZU9TWU1zNXFGN0UzV2x4S3phT3ZIOFBJQXREblB5YnFKTHN1RzNPZ0ZT?=
 =?utf-8?B?ZkRqcHpRanRya0hWL21DTTY2YzZtT25CR3pINlFjdkthVE5iWTRKWVl1VkI5?=
 =?utf-8?B?eGUvK0JsYmd6SjRSd1BMZTJYNjIzeWc3TWx4NTBESHRHZVR6ajhlSlNWdWxQ?=
 =?utf-8?B?WXA3ZlhzSFZDNm0vZTRFN0dmdlp2QWZoV2dKckVBaHZhR3RjcVdTMkVrajhz?=
 =?utf-8?B?UllBL1BKN2gramlsVDR1MjhibCtqaTBjbU1HbThTQ3N5SjdOdkdjU1NUTnU5?=
 =?utf-8?B?RXZnU3l3clduTGRwaEtPT3ZQUXA1L2ZwLzJ5V3h1MUt2UVA1anJzN2RLT3Jr?=
 =?utf-8?B?SEVmNktIcFFpUTUzTDNJbEkwaGZXNnBjdC9NbE9CdDNOSGhNOWhzcmg1NGVW?=
 =?utf-8?B?WjIyY0NDUGQwa1g0Z3AzK0g4YlgybG1STzBjaG82TEJRL3Y3cWF5MFJEUlYr?=
 =?utf-8?B?WjFVS1RrTjk5UC85c1ZEMk1YV3dsbmdiWmdEdXpDcGR6U0c3Snk4Z2Rabm5x?=
 =?utf-8?B?S0pjK0F5Qm5aQW9VdmtpalJDdlRvZXQxZm1jTnVON0ZpUHFHZ011NDdXeTU2?=
 =?utf-8?B?cXpYaXlSNUN1OFpQaHB6ZGwrcGR2cFg1eVBmb3lRUXhMbVdRUFdpQVdDRkls?=
 =?utf-8?B?RmJUVmtlSTBwR0RPb0lYeExPZFpiT1BvektJU2REeC9JUDU2THQvcGVoWWI3?=
 =?utf-8?B?eVczd096MzQxTVA4Wi96YkxJQWE0THJyNWQ3dW5kWDBYdTQ0UFR1NFovbU52?=
 =?utf-8?Q?homf0iVOm4endUfcJpAxqT6L4?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e769cd3-ad8b-4af3-9279-08dc7fafe59d
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2024 07:21:02.7592 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RfHqk6uWaVOKWVhsBA+hB7Vr04Gq6XnPffml1U29HLZ1CDUIybCaiqnGAG7iC57filhwFoz5pdWOyzjlOjjYcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6480
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgTWF5IDI3LCAyMDI0
IDEyOjUyIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBN
YW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBLYWhvbGEsIE1pa2ENCj4g
PG1pa2Eua2Fob2xhQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDcvMjBdIGRybS9pOTE1L3BzcjogQWRk
IEVhcmx5IFRyYW5zcG9ydCBpbnRvIHBzcg0KPiBkZWJ1Z2ZzIGludGVyZmFjZQ0KPiANCj4gV2Ug
d2FudCB0byBoYXZlIHNpbmsgRWFybHkgVHJhbnNwb3J0IGNhcGFiaWxpdHkgYW5kIHVzYWdlIGlu
IG91ciBwc3IgZGVidWdmcw0KPiBzdGF0dXMgaW50ZXJmYWNlLg0KPiANCj4gdjM6IHJlbW92ZSBl
eHRyYSBzcGFjZSBmcm9tICJQU1IgbW9kZTogIGRpc2FibGVkIg0KPiB2MjogcHJpbnRvdXQgIlNl
bGVjdGl2ZSBVcGRhdGUgZW5hYmxlZCAoRWFybHkgVHJhbnNwb3J0KSIgaW5zdGVhZCBvZg0KPiAg
ICAgIlNlbGVjdGl2ZSBVcGRhdGUgRWFybHkgVHJhbnNwb3J0IGVuYWJsZWQiDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0K
UmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDM2ICsr
KysrKysrKysrKysrKysrKy0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDI4IGluc2VydGlvbnMo
KyksIDggZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gaW5kZXggYTAxYzIxNzNhMmU1Li5mYTEyMjY3Zjg1MWYgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMzYwMywyNSAr
MzYwMyw0NSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3Jfc2lua19jYXBhYmlsaXR5KHN0cnVjdA0K
PiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IA0KPiAgCWlmIChwc3ItPnNpbmtfc3VwcG9ydCkNCj4g
IAkJc2VxX3ByaW50ZihtLCAiIFsweCUwMnhdIiwgaW50ZWxfZHAtPnBzcl9kcGNkWzBdKTsNCj4g
KwlpZiAoaW50ZWxfZHAtPnBzcl9kcGNkWzBdID09DQo+IERQX1BTUjJfV0lUSF9ZX0NPT1JEX0VU
X1NVUFBPUlRFRCkNCj4gKwkJc2VxX3ByaW50ZihtLCAiIChFYXJseSBUcmFuc3BvcnQpIik7DQo+
ICAJc2VxX3ByaW50ZihtLCAiLCBQYW5lbCBSZXBsYXkgPSAlcyIsIHN0cl95ZXNfbm8ocHNyLQ0K
PiA+c2lua19wYW5lbF9yZXBsYXlfc3VwcG9ydCkpOw0KPiAtCXNlcV9wcmludGYobSwgIiwgUGFu
ZWwgUmVwbGF5IFNlbGVjdGl2ZSBVcGRhdGUgPSAlc1xuIiwNCj4gKwlzZXFfcHJpbnRmKG0sICIs
IFBhbmVsIFJlcGxheSBTZWxlY3RpdmUgVXBkYXRlID0gJXMiLA0KPiAgCQkgICBzdHJfeWVzX25v
KHBzci0+c2lua19wYW5lbF9yZXBsYXlfc3Vfc3VwcG9ydCkpOw0KPiArCWlmIChpbnRlbF9kcC0+
cHJfZHBjZCAmDQo+IERQX1BBTkVMX1JFUExBWV9FQVJMWV9UUkFOU1BPUlRfU1VQUE9SVCkNCj4g
KwkJc2VxX3ByaW50ZihtLCAiIChFYXJseSBUcmFuc3BvcnQpIik7DQo+ICsJc2VxX3ByaW50Ziht
LCAiXG4iKTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfcHJpbnRfbW9kZShz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCQkJCSBzdHJ1Y3Qgc2VxX2ZpbGUgKm0pDQo+
ICB7DQo+ICAJc3RydWN0IGludGVsX3BzciAqcHNyID0gJmludGVsX2RwLT5wc3I7DQo+IC0JY29u
c3QgY2hhciAqc3RhdHVzOw0KPiArCWNvbnN0IGNoYXIgKnN0YXR1cywgKm1vZGUsICpyZWdpb25f
ZXQ7DQo+IA0KPiAtCWlmIChwc3ItPnBhbmVsX3JlcGxheV9lbmFibGVkKQ0KPiAtCQlzdGF0dXMg
PSBwc3ItPnNlbF91cGRhdGVfZW5hYmxlZCA/ICJQYW5lbCBSZXBsYXkgU2VsZWN0aXZlDQo+IFVw
ZGF0ZSBFbmFibGVkIiA6DQo+IC0JCQkiUGFuZWwgUmVwbGF5IEVuYWJsZWQiOw0KPiAtCWVsc2Ug
aWYgKHBzci0+ZW5hYmxlZCkNCj4gLQkJc3RhdHVzID0gcHNyLT5zZWxfdXBkYXRlX2VuYWJsZWQg
PyAiUFNSMiIgOiAiUFNSMSI7DQo+ICsJaWYgKHBzci0+ZW5hYmxlZCkNCj4gKwkJc3RhdHVzID0g
IiBlbmFibGVkIjsNCj4gIAllbHNlDQo+ICAJCXN0YXR1cyA9ICJkaXNhYmxlZCI7DQo+IC0Jc2Vx
X3ByaW50ZihtLCAiUFNSIG1vZGU6ICVzXG4iLCBzdGF0dXMpOw0KPiArDQo+ICsJaWYgKHBzci0+
cGFuZWxfcmVwbGF5X2VuYWJsZWQgJiYgcHNyLT5zZWxfdXBkYXRlX2VuYWJsZWQpDQo+ICsJCW1v
ZGUgPSAiUGFuZWwgUmVwbGF5IFNlbGVjdGl2ZSBVcGRhdGUiOw0KPiArCWVsc2UgaWYgKHBzci0+
cGFuZWxfcmVwbGF5X2VuYWJsZWQpDQo+ICsJCW1vZGUgPSAiUGFuZWwgUmVwbGF5IjsNCj4gKwll
bHNlIGlmIChwc3ItPnNlbF91cGRhdGVfZW5hYmxlZCkNCj4gKwkJbW9kZSA9ICJQU1IyIjsNCj4g
KwllbHNlIGlmIChwc3ItPmVuYWJsZWQpDQo+ICsJCW1vZGUgPSAiUFNSMSI7DQo+ICsJZWxzZQ0K
PiArCQltb2RlID0gIiI7DQo+ICsNCj4gKwlpZiAocHNyLT5zZWxfdXBkYXRlX2VuYWJsZWQgJiYN
Cj4gKwkgICAgKHBzcjJfc3VfcmVnaW9uX2V0X3ZhbGlkKGludGVsX2RwLCBwc3ItPnBhbmVsX3Jl
cGxheV9lbmFibGVkKSkpDQo+ICsJCXJlZ2lvbl9ldCA9ICIgKEVhcmx5IFRyYW5zcG9ydCkiOw0K
PiArCWVsc2UNCj4gKwkJcmVnaW9uX2V0ID0gIiI7DQo+ICsNCj4gKwlzZXFfcHJpbnRmKG0sICJQ
U1IgbW9kZTogJXMlcyVzXG4iLCBtb2RlLCBzdGF0dXMsIHJlZ2lvbl9ldCk7DQo+ICB9DQo+IA0K
PiAgc3RhdGljIGludCBpbnRlbF9wc3Jfc3RhdHVzKHN0cnVjdCBzZXFfZmlsZSAqbSwgc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCkNCj4gLS0NCj4gMi4zNC4xDQoNCg==
