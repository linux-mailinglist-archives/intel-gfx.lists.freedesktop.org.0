Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D63C98333
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 17:13:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B65910E432;
	Mon,  1 Dec 2025 16:13:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZA3mTxvX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACEB910E046;
 Mon,  1 Dec 2025 16:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764605603; x=1796141603;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nli7KpAt4XpsrZgOxyjQhwCVXCRA5I6S6wz/UpzfiMU=;
 b=ZA3mTxvXXuXcYdL8n2w3vVpHbcWJIk8HhiIOhoUOtPWH7MT0nWazdDKf
 AR0SpzMypHBFUGStswGchM9PFbrg8KVykKnXzP+nCctzi9KCsIfWgVdKM
 CwijVLw469ZpN+qXikDcHf5oif6pNtVE5flo8CMdVE9/SvJtN3mBneyb7
 vCpTr0c5aVXpyTzT6jmZpKuT5YoWPKvJZIo3a5SfrS8tZXH/pmE8aA/R2
 CI2gJxE9EfkDI2A1kS5iUQQ/1CytSxyEm1k2OL4lVi9YoIlpioF6Ks85F
 W3N9eXULCfCfDpFhaahlo/WykdiUB9Z+5Xun1/OVgjN1HS5FCWXVOGqaf A==;
X-CSE-ConnectionGUID: XBPvfIUWQjO+iutPBL4eIg==
X-CSE-MsgGUID: Av9TJgV9QfKta9RzDZsGVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="66581340"
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="66581340"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 08:13:18 -0800
X-CSE-ConnectionGUID: GWGEzkFUSsWzl/CchAXI+g==
X-CSE-MsgGUID: w6Yuiaw8Rh+rBQKBv7/Tqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="225090812"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 08:13:17 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 08:13:16 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 08:13:16 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.17) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 08:13:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MaCjK0eJnsmKkPcKukux6xEL+bkh8FRo33lrcs0IYAc1XPDt1tWC7bmVPHFN4qs00lPvvDBmp0QQBM/amJMIclJKQhiPvNEb5SS9JH+LU/KZyGcTI/PrsABvVJrbvVYaR8K5ce9+z1EwElJSu+zyn1MA5eKTHNY+kp1t8NDMZ513NCCU370JUUUJPfmtBblgknVddxYJHIxvAq/9VW2LSl5XwyLhaw2HlymbidE54T5HMNf2AXfQrNd/lwiL7waLDJRdgp/YzZaedou7+65S7+3TtyMdpYju8Sh3d+zHxkbd+/G3k+BeSR1rCLC6P5MwEqYNH3GmXRg22rX+xgPLrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nli7KpAt4XpsrZgOxyjQhwCVXCRA5I6S6wz/UpzfiMU=;
 b=vCBNSNlmAg1a6pO5XOunslNcRhZYO+VV3fB3/8CxNYffcPEyRnOYDO5b4y8xgA5oftMfhXLQ76LAgz49/K6g4D+1ThRsPS2T0OLWpnoFL7xQHghX3diwLYcVtwQChnUHqACVzcS2oGXdLxvLH540vGVH4dlRo/bd61CYPlMV/Qjglq17tObtnWOBdym9uusPdUUhHBVYjnTh4Y0BDd+gkBWy1gsU5WCMAGvrsqAzaQ3dnIJ6wHo3OtNTU/wPhGk/r/KNiAXxUlt1CA0CDb37GyRbsqOzCrw78cedUK4ynP7n+5O/sWNcR19YV1l8hCToa19tqmsZ+YAnBhp0pZ3gQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 SA1PR11MB6847.namprd11.prod.outlook.com (2603:10b6:806:29e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.17; Mon, 1 Dec 2025 16:13:09 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9%3]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 16:13:09 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Borah, 
 Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "brauner@kernel.org"
 <brauner@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Subject: RE: REGRESSION on drm-tip
Thread-Topic: REGRESSION on drm-tip
Thread-Index: AQHcX2a0wIOe8SxGHUax1eGbt/7hIrUHJYKAgAXWNIA=
Date: Mon, 1 Dec 2025 16:13:09 +0000
Message-ID: <DM8PR11MB5655BBD7E94625E6CAA4C8B8E0DBA@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <03c013c0-be12-42ab-91d1-f87395c890e3@intel.com>
 <aSjY8et1QDyvFq9x@intel.com>
In-Reply-To: <aSjY8et1QDyvFq9x@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|SA1PR11MB6847:EE_
x-ms-office365-filtering-correlation-id: 4babee37-2f90-4d45-cadd-08de30f48533
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?WXV4ZlpSdmtRRFU0L0tuVzVuMTMrUm9sVCtGQlFGS05vL2VXNkNaNFlvcGp3?=
 =?utf-8?B?NG1mV2lqT3EwMGJUQnoyMEFkaWc0bzZqOEMxWnIvTWFmU2VuSmtJMmxLWXFq?=
 =?utf-8?B?QnJ5VDlGeDd2WFBUNXJEaVdNanhadlpubjJteUw3ZUloZnlUTWY1Uk9hTlJM?=
 =?utf-8?B?aVpBZ2VzNEthaUhkRjNrMkxOc0JLbDNrZmcySVFicHJURVMrTUVCZDY5aEh5?=
 =?utf-8?B?Y1BOY1RncVRFVlI3M0ZONHd0T2ZGcTYxUFBKOHlOV1Uxblp4WFJpYWlYTEd5?=
 =?utf-8?B?bzdNamJoU1BTNHBwUVpVRWFYNjRCSFpDQjg2Wm15dUh6T1lhNEthbGxkdCtI?=
 =?utf-8?B?L1MrdzB4NTB4dzdNUnYxSDVZYUpMNFdORjJFTTQ3ODJlOWtxYllDSm1TcGhF?=
 =?utf-8?B?RnhWd2FHM1BMeWY2VXltVzlQdHFZTlowUjVvMGJlU1VOT2t6Q0RiSytRT2xn?=
 =?utf-8?B?cjNqdVhVZ2hxMm9nZjVsSFVzTzRKL1BrWDdKZDRaWnBsZFhIZjRiNEY2QjMr?=
 =?utf-8?B?VFNzK3RBTXBGVWEwVG5wVjR0UndLemhWVE1VajV2NzRaVE9BcnVXR29nM0V6?=
 =?utf-8?B?cXE0Kzl6ajRIQzg3OVZlWnV3djZ3Kzd4QUd0YXBVUUhXeExvblVsR3J3K2Nk?=
 =?utf-8?B?aVFGWU1BcUNjUE0vcGZDSmloZUxvNXlFZUtUYjY1UzdpcHFIQ1AzbkZpUDk3?=
 =?utf-8?B?Rlp0czE4NG41Wk04NStBYmtQT3QrVHVQeU9kVUZrb0NScTNGS3RrV1MrL00r?=
 =?utf-8?B?ZXhPTWlDOW5Qb0cvUjFpYjdrenR3M29LSm1zWlJrK1JXSVpLTHBFNXZCVlVB?=
 =?utf-8?B?cTB5Sy9aZkY2eHArcWt4SDFqcExwZmt3cFV0ckdTdlZ2MTY0V3VPZzJHVUha?=
 =?utf-8?B?b2hHaGViZlF4Y3ZSQXpvZDZPbHJGQ3Rvcmd1NnQrL0hWYzRhTGE3WjM3bFVU?=
 =?utf-8?B?MW1Gdm9LUzlJc3BsSDNBbm9PaCt0bS85NndPbmtib2IzV1FUUzZBOW9BMHZM?=
 =?utf-8?B?SG5IUFQ1R3ExcjU2Um5Edk43SHFLd0hSSUdBdG9Nb0xmeEZrWjlNbXFvbVBx?=
 =?utf-8?B?SUI5NjlFbll5bFZuelpmNHBRb3FRNFdNRlhSWVl4bi9LbmdUaDhBOHRYTVN1?=
 =?utf-8?B?TUsrNTZXeDd2ZnB5Rm94SThEWlIveHhMU2dSZjJuQjlnVFo4ekdEMXN1WkJK?=
 =?utf-8?B?ZnhvOHhiWlFOdkVpWXl2MDdxTkp2eWlqSjErODNlWUdMRmFrNytwRVBBU2xn?=
 =?utf-8?B?bm9ERWowcElvUU1uWHY2Vlk0aUxMNGREeUk5bUcyQldicUUwOXl0SkNHVDlw?=
 =?utf-8?B?N3M3cWpacHVrdDN1QXU1RGFEN1psV1B0S2hIbGUzeS8rV2ZhQStDWm50NU1t?=
 =?utf-8?B?aDIzRFBQVVVjZzhEMEpUODcvSmZ6VmVyMmFGUW1EbS9maWZiMXUvMXgrWVFJ?=
 =?utf-8?B?K0ZKZUcxQ1Y4aEdlUXRTYktDbXRrZDU1ZnpMYWplRzNEc0x0d3piTDlHMFRL?=
 =?utf-8?B?eWlENEt2UThBWk1LbUZFMlROWlJFM3N3b0N3dHBnL3dTd0NPTFluZGl0WUV6?=
 =?utf-8?B?cGlzc2MxUlgwc3FZdWtnbWRwRktuUExvdXg3NDQ0U2VxVWUvNUNTdDR5TXNt?=
 =?utf-8?B?TjRycjFmeE9jUEtmZXBMTmEzTG1jVXBLRjFQcm9raTVWWlRReS9FVzdMak5x?=
 =?utf-8?B?ZUVuWkVEenBGQnRRd3U3OHIwd0h5cUlmTmxRTy9IbUJNTzJtN3VRK0dld0Iv?=
 =?utf-8?B?TzQrQS9EZFdqUUJIZk0vMW14L3BtYlRsdWtLUUhabnJ0d0tsWDBNbWN5NEJu?=
 =?utf-8?B?UVlscElnR3EzditxWE9tdUhGWkVZZ05RTVE1WmxQbEUvcVdQeUY4QkJSQk5w?=
 =?utf-8?B?OGlSY2V2ZzRQcTVLbWJRVEpHSHFTVC9FQ2MzM3FVZDAveUp4bktZVXVsRUJ5?=
 =?utf-8?B?VjJkN3dYR0ZRSEt5dTJtU0ZZaVpHV3BXOThOUG9yeFFGMFM0UXFOTGNicHE5?=
 =?utf-8?B?emJrTythZ1pHQUJwVGtaZXhPK2hkQUtSckYyd1prdkxTMSt3QTRMOG9EWFlH?=
 =?utf-8?Q?T+sb3p?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Slo1SER0Vmk1VmlPb0QzNnBFTC9oUlNoalZ4WWhHZzN1ZFhEbXo4SWlaajB0?=
 =?utf-8?B?RHl6bXVlb3VNV1hMSkRwTVNGZnFyK09teDE1TnJLOWV6N1E4UWNQTGQrTjdo?=
 =?utf-8?B?SFN6amg3Q25STFQrT3JEQjZ2K3hRbWRZU1hKN2FXOXNLNjlhWFFGUmdPQXZV?=
 =?utf-8?B?c2FaN2R0Z1doNGpMU2d2UDFwbjZ2V0ViNXZEWTFBTHJuS214Z0libVdoeHRG?=
 =?utf-8?B?ZnEwNlVZcXBtUU1vQlFydlRsd2NsdUo3YnIxZkYxYXhncG1uWHpROFNkL0JM?=
 =?utf-8?B?SHpabnZWM0FlMkNaT0VuU2VNUk40TG9FL0JxQmlVS3dieUhUTm5xUStNZXBY?=
 =?utf-8?B?U3RTTmlEcG1ZcEgwMERHeDlkUWdlQ3FVUnVmRE5kZ1o1YVJGSnNpV25pbml6?=
 =?utf-8?B?cXdSTmlkRVNiUXlDQkJBRU1wYzIwMVY3cEF1ZGxPQmxpUUNPdXRibjRCeEZp?=
 =?utf-8?B?aXpiNHA0MkdMdWdxUzQ1WkFFT1Z4cXhvS0lmM2JGeHdOT2ZxOHFYZUZaQ0xL?=
 =?utf-8?B?dUUvSXdreEhSQng0YXFsWkFXL0g3SXVraUhoeW5BdXM4RGthL0lncjhPeFhV?=
 =?utf-8?B?NkdyMEdBNEJ5cjl5dTBMSDN5NmczSHRQQy9Iai9TRUVHYmNaa2tzU3V1Y0py?=
 =?utf-8?B?N2FqS0MzU0xsanBPUU0yeForS1BWODRRRUNGcDJOcmdRblZoc2l0ZUdyYkVR?=
 =?utf-8?B?cHlQK3drd3ZDUXNKNlpRUnhzN1FYc1pwbGRlZHZWMEFKd3lialFndkR5U1Z6?=
 =?utf-8?B?V2xPMDFLeXdzOFVrTXYwY1NUaHlmS2x1UnpyMzRoOWNYa1pKMEl4dzg3MjlW?=
 =?utf-8?B?bURtekc5SDRSVUF3RFJ5VlFjWlRGTE9YR2R6NGhBV1cwVDRLSGtBYytMYzZa?=
 =?utf-8?B?dkN1QnFuTGkzcVVpdVpub0ZwU1VhdGdHSy9DL3NiUHhNczRkQXdGcExtalNM?=
 =?utf-8?B?UjhjMHJGREx4MUxvY1g2S0lDNUJBVGdzM2g3QnFkdTBIMEEyQWlKMHV6Z3Z0?=
 =?utf-8?B?YTFIT2RhZHVvWmJ1RllFZ0UrSTZDUUlDWEF5bXlxMzlwSDFEK3Vtc1RNMEk4?=
 =?utf-8?B?WGhOY2hZZ3hjbnFUTHFwbzZtOVRRaHQ4Rmw1L2tERXZNTkJhaHVLOWYwZG1P?=
 =?utf-8?B?Z3ErMHZqMmtTQ0hHaWFOSWRmVTQ1WCtRUkRPbzltNHRMQlh6Tm90TnQ0RHhK?=
 =?utf-8?B?SDBpQzhRM1JVUlRjRGpzUEZXTlIvSUkwbWtraklSSTNGVTlvQ2Y2UWgxSVVE?=
 =?utf-8?B?OTFuWGJPdjNvWkpKaFI1SWVpczRqSzV6TnlTdWNXVUg0Z3hJbldQZ29HSU41?=
 =?utf-8?B?eEJodWVRbURwQXpOc2RvVlpoWG1SSGJvNHJrRWpBVVlMalc4bzZIbURNMlFw?=
 =?utf-8?B?REVNc0srdlBVN3VqcGY5d3lEM0tSS0o1Nk8wcldHNEpsL3VydXFndCsremt4?=
 =?utf-8?B?WU53dzFEVEZ0bUNNRTJESkZoL2V5dnNLQzBPMTg5ZURkKzc2M0dCaUJaUHQy?=
 =?utf-8?B?ZFRvdnlWS0Vsb1dUbkl2RStCdlFqbzdEYXJLTDBKbmpsVCt1ZDBSQS9adjJa?=
 =?utf-8?B?QXRVNWN6aDFCZVVTQzEvQmtHYk5Iakg1c0JhZiszUU5uMWpBMXN4V0twNHpY?=
 =?utf-8?B?cEdUL1lnSlNqbERmbE51RTJ0NG1Na2VSOG83bE1ZaStnWS92SEdyUjFDUEhW?=
 =?utf-8?B?bHhWTHNiWU1zQWhoTHNBRTNHZXV5am1aL1BLbFpYY2NyNXpEaXdhUHkzQ1FZ?=
 =?utf-8?B?Z3RONk5EeTNKcG5qVlpCR09aVnZ2S1AyM2QzV3NmbFhFYjE3Q1lWK1pSUGdT?=
 =?utf-8?B?S0lIUmtuVTFGTGJ1ZW55TEI5eGlYbkFMUlNOY3ZHQmt5R2NHek04SEdYZ3VH?=
 =?utf-8?B?TW5ZWEdwUzN1UU1EemVjcGp2RHVqR1MzTTh3NmJZcUc2T0NXMFBiUWxCSm93?=
 =?utf-8?B?Nk5sUGUvaGR0SU1ZR3NnRnBaaGh6a3ZYSjdmYmxyN0k5T3YweitSRHhaZTRw?=
 =?utf-8?B?Y3U2bUxRWm9RRTcvUHJsQlhtSUh3amhwZCtYSmNZcFh2UEJFaUd3S283cTEy?=
 =?utf-8?B?RTRQa2FpRmRZbjJtN2lrMmdUc0ZOMDdpeXVicUV4VXRJLzJjSllIdE15T25K?=
 =?utf-8?Q?TLxYH+d7NFNQll5m2e0lXn4f3?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4babee37-2f90-4d45-cadd-08de30f48533
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2025 16:13:09.7540 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jz7I/ycPD+RbJ0j2i6bUXQraPK/TJaE9z3XYgBSwuAMt26eSLunIdERqg58q1KPN3DHcHEdh5Ca1+6oGtpNIyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6847
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCAyOCBOb3Zl
bWJlciAyMDI1IDEuMDQNCj4gVG86IEJvcmFoLCBDaGFpdGFueWEgS3VtYXIgPGNoYWl0YW55YS5r
dW1hci5ib3JhaEBpbnRlbC5jb20+DQo+IENjOiBicmF1bmVyQGtlcm5lbC5vcmc7IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLQ0KPiB4ZUBsaXN0cy5mcmVlZGVza3RvcC5v
cmc7IFNhYXJpbmVuLCBKYW5pIDxqYW5pLnNhYXJpbmVuQGludGVsLmNvbT47IEt1cm1pLA0KPiBT
dXJlc2ggS3VtYXIgPHN1cmVzaC5rdW1hci5rdXJtaUBpbnRlbC5jb20+OyBEZSBNYXJjaGksIEx1
Y2FzDQo+IDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBSRUdSRVNT
SU9OIG9uIGRybS10aXANCj4gDQo+IE9uIFRodSwgTm92IDI3LCAyMDI1IGF0IDExOjU1OjU0QU0g
KzA1MzAsIEJvcmFoLCBDaGFpdGFueWEgS3VtYXIgd3JvdGU6DQo+ID4gSGVsbG8gQ2hyaXN0aWFu
LA0KPiA+DQo+ID4gVGhpcyBpcyBDaGFpdGFueWEgKGFnYWluISkuDQo+ID4NCj4gPiBUaGlzIG1h
aWwgaXMgcmVnYXJkaW5nIGFub3RoZXIgcmVncmVzc2lvbiB3ZSBhcmUgc2VlaW5nIGluIG91ciBD
SQ0KPiA+IHJ1bnNbMV0gb24gZHJtLXRpcCAod2l0aCBib3RoIHhlIGFuZCBpOTE1KS4NCj4gPg0K
PiA+IGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGANCj4gPiBgYGBgYGBgYGBgYCA8ND4gWzE1Ny42ODc2NDRdIC0tLS0t
LS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLSA8ND4NCj4gPiBbMTU3LjY4Nzc2OF0gV0FS
TklORzogQ1BVOiA1IFBJRDogMjI3NyBhdCBrZXJuZWwvZnJlZXplci5jOjEzOQ0KPiA+IF9fc2V0
X3Rhc2tfZnJvemVuKzB4N2YvMHhiMA0KPiA+IC4uLg0KPiA+IDw0PiBbMTU3LjY4NzkyM10gUEtS
VTogNTU1NTU1NTQNCj4gPiA8ND4gWzE1Ny42ODc5MjRdIENhbGwgVHJhY2U6DQo+ID4gPDQ+IFsx
NTcuNjg3OTI1XSAgPFRBU0s+DQo+ID4gPDQ+IFsxNTcuNjg3OTI2XSAgPyBfX3BmeF9fX3NldF90
YXNrX2Zyb3plbisweDEwLzB4MTAgPDQ+IFsxNTcuNjg3OTI5XQ0KPiA+IHRhc2tfY2FsbF9mdW5j
KzB4NmQvMHgxMjAgPDQ+IFsxNTcuNjg3OTMyXSAgPw0KPiA+IGNncm91cF9mcmVlemluZysweDg5
LzB4MjAwIDw0PiBbMTU3LjY4NzkzN10gIGZyZWV6ZV90YXNrKzB4OTgvMHgxMDANCj4gPiA8ND4g
WzE1Ny42ODc5NDBdICB0cnlfdG9fZnJlZXplX3Rhc2tzKzB4ZDIvMHg0NDAgPDQ+IFsxNTcuNjg3
OTQ2XQ0KPiA+IGZyZWV6ZV9wcm9jZXNzZXMrMHg1Ni8weGQwIDw0PiBbMTU3LjY4Nzk0OF0gIGhp
YmVybmF0ZSsweDEyOS8weDRhMCA8ND4NCj4gPiBbMTU3LjY4Nzk1MV0gIHN0YXRlX3N0b3JlKzB4
ZDMvMHhlMCA8ND4gWzE1Ny42ODc5NTRdDQo+ID4ga29ial9hdHRyX3N0b3JlKzB4MTIvMHg0MCA8
ND4gWzE1Ny42ODc5NTldICBzeXNmc19rZl93cml0ZSsweDRkLzB4ODANCj4gPiA8ND4gWzE1Ny42
ODc5NjNdICBrZXJuZnNfZm9wX3dyaXRlX2l0ZXIrMHgxODgvMHgyNDAgPDQ+IFsxNTcuNjg3OTY3
XQ0KPiA+IHZmc193cml0ZSsweDI4My8weDU0MCA8ND4gWzE1Ny42ODc5NjldICA/DQo+ID4gZnJl
ZV90b19wYXJ0aWFsX2xpc3QrMHg0NmQvMHg2NDAgPDQ+IFsxNTcuNjg3OTc2XQ0KPiA+IGtzeXNf
d3JpdGUrMHg2Zi8weGYwIDw0PiBbMTU3LjY4Nzk4MF0gIF9feDY0X3N5c193cml0ZSsweDE5LzB4
MzAgPDQ+DQo+ID4gWzE1Ny42ODc5ODJdICB4NjRfc3lzX2NhbGwrMHg3OS8weDI2YTAgPDQ+IFsx
NTcuNjg3OTg0XQ0KPiA+IGRvX3N5c2NhbGxfNjQrMHg5My8weGQ2MCA8ND4gWzE1Ny42ODc5ODdd
ICA/IHB1dG5hbWUrMHg2NS8weDkwIDw0Pg0KPiA+IFsxNTcuNjg3OTkwXSAgPyBrbWVtX2NhY2hl
X2ZyZWUrMHg1NTMvMHg2ODAgPDQ+IFsxNTcuNjg3OTk1XSAgPw0KPiA+IHB1dG5hbWUrMHg2NS8w
eDkwIDw0PiBbMTU3LjY4Nzk5N10gID8gcHV0bmFtZSsweDY1LzB4OTAgPDQ+DQo+ID4gWzE1Ny42
ODc5OTldICA/IGRvX3N5c19vcGVuYXQyKzB4OGIvMHhkMCA8ND4gWzE1Ny42ODgwMDNdICA/DQo+
ID4gX194NjRfc3lzX29wZW5hdCsweDU0LzB4YTAgPDQ+IFsxNTcuNjg4MDA3XSAgPw0KPiA+IGRv
X3N5c2NhbGxfNjQrMHgxYjcvMHhkNjAgPDQ+IFsxNTcuNjg4MDA5XSAgPyBfX2ZwdXQrMHgxYmYv
MHgyZjAgPDQ+DQo+ID4gWzE1Ny42ODgwMTJdICA/IGZwdXRfY2xvc2Vfc3luYysweDNkLzB4YTAg
PDQ+IFsxNTcuNjg4MDE1XSAgPw0KPiA+IF9feDY0X3N5c19jbG9zZSsweDNlLzB4OTAgPDQ+IFsx
NTcuNjg4MDE3XSAgPw0KPiA+IGRvX3N5c2NhbGxfNjQrMHgxYjcvMHhkNjAgPDQ+IFsxNTcuNjg4
MDE5XSAgPyBwdXRuYW1lKzB4NjUvMHg5MCA8ND4NCj4gPiBbMTU3LjY4ODAyMV0gID8gcHV0bmFt
ZSsweDY1LzB4OTAgPDQ+IFsxNTcuNjg4MDIzXSAgPw0KPiA+IGRvX3N5c19vcGVuYXQyKzB4OGIv
MHhkMCA8ND4gWzE1Ny42ODgwMjRdICA/IF9fZnB1dCsweDFiZi8weDJmMCA8ND4NCj4gPiBbMTU3
LjY4ODAyOF0gID8gX194NjRfc3lzX29wZW5hdCsweDU0LzB4YTAgPDQ+IFsxNTcuNjg4MDMyXSAg
Pw0KPiA+IGRvX3N5c2NhbGxfNjQrMHgxYjcvMHhkNjAgPDQ+IFsxNTcuNjg4MDM0XSAgPw0KPiA+
IGRvX3N5c2NhbGxfNjQrMHgxYjcvMHhkNjAgPDQ+IFsxNTcuNjg4MDM2XSAgPyBpcnFlbnRyeV9l
eGl0KzB4NzcvMHhiMA0KPiA+IDw0PiBbMTU3LjY4ODAzOF0gID8gZXhjX3BhZ2VfZmF1bHQrMHhi
ZC8weDJjMCA8ND4gWzE1Ny42ODgwNDJdDQo+ID4gZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2Zy
YW1lKzB4NzYvMHg3ZQ0KPiA+IDw0PiBbMTU3LjY4ODA0NF0gUklQOiAwMDMzOjB4NzI1MjNjOTFj
NTc0DQo+ID4gYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYA0KPiA+IGBgYGBgYGBgYGBgDQo+ID4gRGV0YWlscyBsb2cg
Y2FuIGJlIGZvdW5kIGluIFsyXS4NCj4gPg0KPiA+IEFmdGVyIGJpc2VjdGluZyB0aGUgdHJlZSwg
dGhlIGZvbGxvd2luZyBwYXRjaCBbM10gc2VlbXMgdG8gYmUgdGhlDQo+ID4gZmlyc3QgImJhZCIg
Y29tbWl0DQo+ID4NCj4gPiBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgDQo+ID4gYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGANCj4gPiBjb21taXQgYTNmOGY4NjYyNzcxMjg1NTExYWUyNmM0YzhkM2Jh
MWNkMjIxNTliOQ0KPiA+IEF1dGhvcjogQ2hyaXN0aWFuIEJyYXVuZXIgPGJyYXVuZXJAa2VybmVs
Lm9yZz4NCj4gPiBEYXRlOiAgIFdlZCBOb3YgNSAxNDozOTo0NSAyMDI1ICswMTAwDQo+ID4NCj4g
PiAgICAgIHBvd2VyOiBhbHdheXMgZnJlZXplIGVmaXZhcmZzDQo+IA0KPiAtICAgICAgIGlmIChm
cmVlemVfYWxsX3B0ciAmJiAhKHNiLT5zX3R5cGUtPmZzX2ZsYWdzICYgRlNfUE9XRVJfRlJFRVpF
KSkNCj4gKwlpZiAoIWZyZWV6ZV9hbGxfcHRyICYmICEoc2ItPnNfdHlwZS0+ZnNfZmxhZ3MgJiBG
U19QT1dFUl9GUkVFWkUpKQ0KPiANCj4gPw0KPiANClNob3VsZCB3ZSBnbyB3aXRoIGZpeCBvciBy
ZXZlcnQ/IFdlIHNob3VsZCBkZWNpZGUgYXMgc3RpbGwgYmFkbHkgYnJva2VuLiANClN0aWxsIG9u
bHkgaTkxNSB2aWV3OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL2lu
ZGV4Lmh0bWw/dGVzdGZpbHRlcj1zdXNwZW5kIA0KDQo+IC0tDQo+IFZpbGxlIFN5cmrDpGzDpA0K
PiBJbnRlbA0K
