Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBx/DAaOgGkl+wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 12:44:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 756B3CBDE2
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 12:44:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61D0810E4A2;
	Mon,  2 Feb 2026 11:44:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EWOrTxxu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1B5910E468
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Feb 2026 11:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770032641; x=1801568641;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ILslQCWSuqVo5uEl2jeubkA2ycRVXlxWpmzo6P0CJ0s=;
 b=EWOrTxxufdxh+pjALs8YeAJrWarc8gO9ZNYKzeWHY/K5Y8NES0uMbCHF
 g7qxTpvG/Ir2DGIEjqHDETP6GnxKzPR+6RxxqFuONYwxS7qlYSXidtuK1
 IlocdzAvjX9T16wdHyd48rvcUfSm8fHl8+IciFxXRSsloMokvdn5+bI42
 7eUnIM0MYP+YEUpdunnB3nIpWh8StPYF3GbxrmBORxfW1KUjiO8lIjMzu
 fsWFUgKwb5rJkT0nzYMoav41tnR4jcR9BptIi7Z38zr8sE2owaShzMZt7
 8cmualnrbhS3Ej2iLtD61aftp7JOnPg2e+GX4KSvvwiKjUvHmbqlLB8ki A==;
X-CSE-ConnectionGUID: e0VyIsMJQCKwk2K7LPMj7g==
X-CSE-MsgGUID: efDNOk9wSMKfNqp/cnOGMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="88608085"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="88608085"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 03:44:01 -0800
X-CSE-ConnectionGUID: ad+VAm9MSqqYIvLuMG3u6A==
X-CSE-MsgGUID: wm04gKP2Qda/xzcxjWUGmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="213607563"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 03:44:01 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 03:44:00 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 03:44:00 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.33)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 03:44:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SEzLU1iTE76qNFvlpEqTn+XkeiygQ37NLsnZdZeLPHK3RZwZhmxOEuAzkkycvzko/mFq7IhCwrmp1y5CYcvTCds0lbHQZcO3S9EFRw3KV3JiVbQqhWcOzL0mIEOImrVOKXROYaBN30Z2GN4DqEunYekwK0VRh91v5IAd9eWcPVS6d+yOEoTsn4y6PZpxdMKI+CJWnzbGFZJ8KtxCh6iHwrTDCON+M6e1RnrXFYh5a4klKcLEibK7gMQ26VOSMzJP1kWnFVv794hBXwdE1cEk0HitwT0dki7deqIyxjKI6HZ5Hb9ZlDHRFVn+NQ94l129p4+f81iG23vCy3zYGNFjMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ILslQCWSuqVo5uEl2jeubkA2ycRVXlxWpmzo6P0CJ0s=;
 b=fQbzvAsuM0JgAttSi/On6e9TRWM8NiuvT0RrTHLoUGcoaOJLvsYh6lugQf6ewL6v3wIGvqffdneub3YKvF2JbAe4UCdsHjqBim3fafo3deBkxWzVQBn6YzMuJ/syic0w/0yHdxcoHaK7KL4QFTAyLTtZHCso+g6Hr6hOFkT96zHkDsvFwAdcJp01h68ZFvbh61H40JgZ0e7PlX2BVl67oRuj90kfRPbiMqL6+CrulXldBtksaYa/QUqxXRuLCEICZH1fneaGLNS0tLAwjafdODCPBSeh3GjKWaFx2JyWYXIKOs4MZjU69nlyhmhXpIxnOaRjixPFxL8L+pCKHkwDqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6366.namprd11.prod.outlook.com (2603:10b6:930:3a::8)
 by BL3PR11MB6532.namprd11.prod.outlook.com (2603:10b6:208:38f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 11:43:58 +0000
Received: from CY5PR11MB6366.namprd11.prod.outlook.com
 ([fe80::22af:c9c9:3681:5201]) by CY5PR11MB6366.namprd11.prod.outlook.com
 ([fe80::22af:c9c9:3681:5201%5]) with mapi id 15.20.9564.014; Mon, 2 Feb 2026
 11:43:58 +0000
From: "Usyskin, Alexander" <alexander.usyskin@intel.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
CC: Simon Richter <Simon.Richter@hogyros.de>, Arnd Bergmann <arnd@arndb.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] misc/mei: INTEL_MEI should depend on X86 or DRM_XE
Thread-Topic: [PATCH] misc/mei: INTEL_MEI should depend on X86 or DRM_XE
Thread-Index: AQHcj8C6wVzGmrsdxUmI2QR5ftbOoLVnGXgwgAALtwCAAACmoIABbuoAgAARJgCAApWmAIACa9/AgAGHHgCAACRjcA==
Date: Mon, 2 Feb 2026 11:43:58 +0000
Message-ID: <CY5PR11MB63662481708F03CC68A8368AED9AA@CY5PR11MB6366.namprd11.prod.outlook.com>
References: <8e2646fb71b148b3d38beb13f19b14e3634a1e1a.1769541024.git.geert+renesas@glider.be>
 <CY5PR11MB6366560330FE64F22ADF2C2EED91A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <2dd8286a-a3c7-4a3d-bd5d-011966dc07f9@app.fastmail.com>
 <CY5PR11MB636685688893B7873C3BE85AED91A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <ab91fa38-2f5c-4237-811e-854d442a71bb@hogyros.de>
 <CY5PR11MB63665464BE137AE70B0D47ADED9EA@CY5PR11MB6366.namprd11.prod.outlook.com>
 <aX0fYgU4FHIbsUET@intel.com>
 <CY5PR11MB636633FFBB10ECA1033BC114ED9DA@CY5PR11MB6366.namprd11.prod.outlook.com>
 <CAMuHMdU+D_US5crXHCD-z4DhV+wkih_NyQ1McYtH9OdLLh=NFA@mail.gmail.com>
In-Reply-To: <CAMuHMdU+D_US5crXHCD-z4DhV+wkih_NyQ1McYtH9OdLLh=NFA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6366:EE_|BL3PR11MB6532:EE_
x-ms-office365-filtering-correlation-id: d7c71678-d0d4-4fc3-3581-08de62505a36
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?U0NrMnRoSEUwdlN4Mjg1M0VkSkYwNmQydm1EQ3p4Q2FOU3lvUVJKdFN4aDVL?=
 =?utf-8?B?bFYwSHU2cDd5MlIvOFdtblhwajBEWG5uWEZIK1hzTVFUMTdEUE5pWCtqTmRm?=
 =?utf-8?B?RGJ6NmorZnhDclNGdkZ1RkY5SjcrZWtDVXNMMUdTOFArWkcwY21JZVZTNmVZ?=
 =?utf-8?B?ZWtoUG5JV2MwVlJiQlU2MlNKZFk5N0NJTzc5R3B0VlZxK2lHcDRwZWZTcGZn?=
 =?utf-8?B?cEVyYzE5MmlQM0d2VE5scTJtQnNBbWI4VkVibFF5WWY4cDFTZ0dVbW8yY1F2?=
 =?utf-8?B?clM2clhrWHFCYWR3WEphUnVmYUY0eVU0bVlJV1BTT0I0bkU1dUlxRW9rKzNp?=
 =?utf-8?B?STJmMi82dVBTdXF6c2RYV1U2ZU8vK0Vyd2lOTlliMytOcmZxRlI1aVpETXRW?=
 =?utf-8?B?Q3g5aEhwS3UrU0l1Njh0a2oxVGhGWnFVMkxSbStCaFY5ZnJzT2ltVTZvTmdU?=
 =?utf-8?B?MTFKWEIxbzZmNmt1VWhpOEV6amJjTGE2UTVpeVcrdHZoRmlOZkN3TlFONi9N?=
 =?utf-8?B?WmJTa0J6aFlPdTFId1d4RGJZdFVLc05MeE9FbXE4Z1JkN1Rhd0ZGYy9PeXJO?=
 =?utf-8?B?b0MxWE9UQlpzN2RHSXphSHZmOFJzNXBiUklwNGlsMEdEOGZUWExveDZWQ25T?=
 =?utf-8?B?VENXVzZhVzZZSHlCQk9xNHcwcktmYjAzYTAyRk85Qm04VVZ0eExqZmRBQ0VE?=
 =?utf-8?B?REY5eU1FaUVXUHFEZ0VKNk5kTnIvRDhwUzZSa0RreUdFaWdSbFNZVDgxMEo3?=
 =?utf-8?B?cFJqR2JTQlVZa0pwTGxwdkk0MDZHcHdBbmdrYklGei93c1hmdmtGT3V0T2hT?=
 =?utf-8?B?K0h0V3B1eVpMMUdydW9jR2lSQXVNalJTbEkzU2RHV256bmF5OVVDT3pHc21Y?=
 =?utf-8?B?eUJFUWZCU21SVUhYSkppSHI3NXBUSlFFTmY0TWdjQWJBdCtvVG9RbTBnbmtM?=
 =?utf-8?B?aEF0SkpyTWVTZEZFOXAvc0tXa0hwdFNCRmtaRmlaNDRmQ21hNXl6S21IRnNh?=
 =?utf-8?B?VnhNMjZ4TlZkWVAzay9oOU1IZnZITm45Tm9wYmNWSjJvTU9kbFYvZEI1L2VZ?=
 =?utf-8?B?SGZRWGJuQ1hTTVJiSUF5U000Q3lOdWJKeS9VU2RKUW04QzhhSFM1ZUdIVXgy?=
 =?utf-8?B?Z3lTL0hXTGlwM2R1djZzUUROdDJhcHZzUUJ4dXRpbjVVcWdDbERka0JpbXR0?=
 =?utf-8?B?eWpUaEVhR0RObFEwQ1h5ZFllTy9KZHRUUWUvemkyK1lSK25qaFBZdXhRRW5j?=
 =?utf-8?B?aFhiQnJiemRjWVJUOHd0QkNEQWZmdzFFZ1ByUGdPSWtCSGpON0JSWFJ3SitL?=
 =?utf-8?B?bkluQkdqdFBkQWxQWTE1Tmd1VjErUXFsZVZuTk14VE5kT2ZoZU9KaWdpdkt0?=
 =?utf-8?B?MVA0TVN1UkpxRVhCYlFvb2JtNnMyZHh4ZytXd3VtTUJzanJSWVpjTlBpM2xk?=
 =?utf-8?B?TTcrUWRScXVMU1E4L1YwRm81QWthYm14ZGZkc2ZITjFPUmlPN3BWVDRyZ0gr?=
 =?utf-8?B?WEw2dVovTVVIVWhoOXQydU5zakJoc1B2RzRUb09zME16RjRlblEzcHZXc01k?=
 =?utf-8?B?SnduZnZ2MENLRldBNUozTHVvVEV2eHRjYkR4dldRdlcwR20zZVJ1c0g0cG9P?=
 =?utf-8?B?empNcUFhQjVPUTdoK3NZQW5NVXVSN2FJM2RVUmltRVUrU09YZmhDSVNEbHNW?=
 =?utf-8?B?NWhYWWJQekk5UENFaFlNRjJ2dVRLdUx6c21Cd2hqU0xyV21BTksybVZnaXQ4?=
 =?utf-8?B?TytRVlFiYVVpTmZQT0JVZi9aRkt0d1RVa1BMdE9NMFFUMWNiNVRxODNOZGJF?=
 =?utf-8?B?U3hSYTVqUlFoZlBLMUZGRE1PMVBkb005YmlWak82ZG01bUkzUlVtbkt4dUlK?=
 =?utf-8?B?ZHllRVFjZGpvY0pXZmIwMUtkb0YvSUJvZ1JSRTFkTVhrcWt0L201THZQWDNp?=
 =?utf-8?B?dkVJUEROZElPSHdlbndWWnI1cTV0WCtkU2Iwck4xRm1vNXdkN2ljaDJtc29U?=
 =?utf-8?B?dGFSZzhSV1cyYnpNQ0xwcjFpUkVMR2NGdmE2KzJJNGF1VzdwMnBZclhSY0xm?=
 =?utf-8?B?ZGdKWHViTW95NVhhQTRnS0tvTnZHOWpEZEdFQndja0s0aSs5a3dtV29Hc0dK?=
 =?utf-8?B?cW5tT0dGQm5MUm14QmhVTEZsa05KS1QvajZIMlNabUROMnB1TFQrUWd1c2oy?=
 =?utf-8?Q?IVyPpNZ8vNIeCzP5moWX1qk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6366.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QU50M0VRSUVHRlBIREhMeDQ0L0tzVjdyRSs3SWNLQnA0Z3o3bzhZeTIweTZ1?=
 =?utf-8?B?V2l2aUFGZk5LbWUwaFlMODRZUFIzYnhwa290VkN1RFVaQWgxSmZicytDazNM?=
 =?utf-8?B?eFJrMjdKTm9Ybitpb3czMTFkdXdVNXZKMCt6NW5mN1Y1UkJkY0p4RnpWSk5U?=
 =?utf-8?B?YUJqbTdGVCtQek85QThKRkljRFY3bTlPbnppeW5pUmVONWdVUnhRakh2czFu?=
 =?utf-8?B?NHg3T1ZnbEZhMi9KYmlFcCtlbklrc0hUMHg0OXJkU2J6L0RzUkZpSmV4eFBw?=
 =?utf-8?B?YVcwZVhHaS9TbE9xdi9rWDB3TEdjdlBwZ0RZbU1JNEhkNHljeUtpNG84MVVv?=
 =?utf-8?B?TWp6bG1XSFFZNWNuTWx4RjBLRitzcm9zeWttV0tyS2tBcWZYTGFlVnhWeldY?=
 =?utf-8?B?d0lEYjNiMXhLNkVhNUp2QXg1YUdiQ2llbnhuTkZxRnZ3ZXZkalpPMk9Ud3NM?=
 =?utf-8?B?Qmk0aFpkb2xzcmxDUG9HSVFZOWxUZE1PeXgvLzY3MFVCYzMySmRDdFlOL1ZD?=
 =?utf-8?B?WXUvSHBoNU5ITnpySkIwQUxyVXVRMHlNeDNobkQwVTlkSVhmQVlRaUNsaXM5?=
 =?utf-8?B?NjR6SFdMdUpmcGZ2Y2ZwdjJ4Q0lqaEtLMURuNHFpbWxQeFpyQ1RPRVM0cXdV?=
 =?utf-8?B?NkpSc2VZcFNCNWk3ZGRsc0t1aVBva2VOMTljRWVNL3lIQjNRd21Zc2ltUGxs?=
 =?utf-8?B?NE54akxzRGhmcnlpSGo5QXA0SEJyeWVJK2pSNGNWcUp1Z0tBc3F5Nm5FNi9N?=
 =?utf-8?B?UjFNR2lmVnVpVkVoR0k2Z2ZrQ3M2OEpFdVRpRGR0WEZqYU9CTWtxSStJYUh4?=
 =?utf-8?B?V1dUWWkwa0o5TFBFbG5WZGxybmZUM3RJVytCR2QzWVNXcktDMUhsNzBST3dl?=
 =?utf-8?B?WElsRE1SSTc5MlNUQ0g2cmhtaTN6OExZMU9kWUtvNzU5Y09rTURaNVNWY2Fk?=
 =?utf-8?B?dU5sY0FwTVhPcmZSQm9WZnlONEpicDkyK0o4MUU1OURXQXVla08zMDVPbHRU?=
 =?utf-8?B?TUFKbmRheVJUZ3l0VCsyVitJdDB6TnZHS0cyU0U5MTJuZEdFNk9MakZXS3NR?=
 =?utf-8?B?Q3daMktsK0ZqZFNBK0E1eWxHZGI5TG56ak1EWEZjM1VlbStxQldJTEpLaklI?=
 =?utf-8?B?cFlzVldKQ3NkbkliMWFVWm5vZG8vMUsxZFlWOFNoK215S0M5aVhrK2pPRjE5?=
 =?utf-8?B?MEZNV0I4MmFLVWV6eDdrWjRsdG9hNVBiSytkRzkrR3pLRG1lMnFhZWJiV1c5?=
 =?utf-8?B?V3RLdGtYQzJYN09ZZUQ1Uk51Q0M4aENTY1g1bUJveVVHUXM2N0RkZ3V4aGpF?=
 =?utf-8?B?ZnBtekFNQVUvdUg0bm5BdlFFelR3cnNXTEdZc1B6YlJpZXVWSUhJSVFPVVRp?=
 =?utf-8?B?M1Ria0U1cy8rdkUwNFNDa2s2amFCSC81ay9PaFdISmdKNldVYklQeVlDcTFy?=
 =?utf-8?B?SVVGRUJwQnlQaDRLTVJhcmpqMXBBQlpiZDExTnp6S3ZYS2k2TGdjRmNqQnZw?=
 =?utf-8?B?R241VFlPeEQrdTJQVWJoa1A1dHZERStTam5nZm5pTHZjcnVYQmpoK0hNQXRq?=
 =?utf-8?B?ZE9hRm42cFQxczA0UFFVclIwUDc4N1lNcUhzUVd3Z2duZkZSY3Z4Q09VK0hR?=
 =?utf-8?B?d1c0RXFlcmIrWW1YZlhUZHpiWjVOK25IQzd2cHNVT01mdG9zUGlETGFUanc0?=
 =?utf-8?B?bkx3NjQ3cERRSzlWM3pWbklMaUwwbmVGSFZmNktZenlZVyt4TDdkUTJ5a1Y4?=
 =?utf-8?B?YU43S1pyVUhoZ3VmUE9SNmZacEdabnlBajJ2c09SaS9oeFZDY1lyQmV4M0p1?=
 =?utf-8?B?c0R6aXZqVTBsdG9BTkNKZm9NRnlOY3p0RG5rRHBBQ2RjSkRHVG10dGUwNXhw?=
 =?utf-8?B?Z3EvY3N3QlMzUWQ0Uk05L3JEMnIzSXhPOXkwNU9Ga3IxMXVrdDNpQnAreEw2?=
 =?utf-8?B?K3VpbUtmSkR5MXdsczNEaVhWM25tQWtXanNKeEhIVFg4M3NQNFhmQ21yVkp3?=
 =?utf-8?B?amozTnhpTDB4b0JUd05RVHpDazl5VVV0MGNya2RqR2x0WFMwUU5wcHZUZGJH?=
 =?utf-8?B?bkRWczRabWxSVW94T3pLU2hUMDZpdVVYV01WYWpkMUovYlFudkVzS2w0Slh4?=
 =?utf-8?B?VEtsbmRLTEdWUm1nZkRTejQvQ29tVXdsb2JzYTNRcGRDRVY1N1FPQ1RWWFEv?=
 =?utf-8?B?UnFLOHdBbnpzN2xmL3RHV2t1RnF3VGp4Tkl5TXZ2N3lMN2ZmVW9GWnFRZUZC?=
 =?utf-8?B?Vnhsc0JyaDZCWXkyRFVEellzbmNubUZaR2RwRTYvRzBNanZCaWgxQks5OXNS?=
 =?utf-8?B?Mm8vT0k3aGJOa3ZhdXhjY05YMVExcXl4LzlHbDYybzN6ZmFnblhmUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6366.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7c71678-d0d4-4fc3-3581-08de62505a36
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 11:43:58.3307 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CU/Ux7Zhjjp9KzQFgSzeBJHrQmFeilR9bwL/kqZ0CKppqhaHWMPoLmRwHodkNG4O/eVUM3sgsY7QorWTX2NgAETOF63kEIGEsRLCLNyEv/Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6532
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:geert@linux-m68k.org,m:Simon.Richter@hogyros.de,m:arnd@arndb.de,m:geert+renesas@glider.be,m:gregkh@linuxfoundation.org,m:linux-kernel@vger.kernel.org,m:rodrigo.vivi@intel.com,m:geert@glider.be,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[alexander.usyskin@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[alexander.usyskin@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 756B3CBDE2
X-Rspamd-Action: no action

PiBTdWJqZWN0OiBSZTogW1BBVENIXSBtaXNjL21laTogSU5URUxfTUVJIHNob3VsZCBkZXBlbmQg
b24gWDg2IG9yIERSTV9YRQ0KPiANCj4gSGkgU2FzaGENCj4gDQo+IE9uIFN1biwgMSBGZWIgMjAy
NiBhdCAxMToxNSwgVXN5c2tpbiwgQWxleGFuZGVyDQo+IDxhbGV4YW5kZXIudXN5c2tpbkBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+ID4gPiA+ID4gVGhlcmUgYXJlIGRpZmZlcmVudCB1c2FnZXMgb2Yg
bWVpOg0KPiA+ID4gPiA+ID4gLSBmb3IgZGlzY3JldGUgZ3JhcGhpY3MgeGUvaTkxNSB3aWxsIGxv
YWQgbWVpIHZpYSBhdXhpbGlhcnkgZGV2aWNlIGFsc28gb24NCj4gbm9uDQo+ID4gPiA+ID4geDg2
Lg0KPiA+ID4gPiA+ID4gLSBmb3IgaW50ZWdyYXRlZCB4ZS9pOTE1IGNvbW11bmljYXRlIHdpdGgg
bWVpIGZvciBvbi1jaGlwIENTTUUgLSB0aGlzDQo+ID4gPiA+ID4gc2NlbmFyaW8gaXMgeDg2IG9u
bHkuDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiA+IElNTyB0aGlzIHNob3VsZCBjb3ZlciBhbGw6DQo+
ID4gPiA+ID4gPiBkZXBlbmRzIG9uIFg4NiB8fCBEUk1fWEUhPW4gfHwgRFJNX0k5MTUhPW4gfHwg
Q09NUElMRV9URVNUDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBJcyB0aGVyZSBkaXNjcmV0ZSBpOTE1
Pw0KPiA+ID4gPg0KPiA+ID4gPiBERzEsIEFsY2hlbWlzdCBhbmQgc29tZSBzZXJ2ZXIgY2FyZHMg
YXJlIHN1cHBvcnRlZCBieSBpOTE1DQo+ID4gPiA+DQo+ID4gPiA+ID4gRFJNX0k5MTUgZGVwZW5k
cyBvbiBQQ0kgJiYgWDg2IChzbyAiWDg2IHx8IERSTV9JOTE1IiBpcw0KPiByZWR1bmRhbnQsDQo+
ID4gPiA+ID4gd2hpY2gNCj4gPiA+ID4gPiBpcyB3aHkgSSBkaWRuJ3QgYWRkIGl0IGluIG15IHZl
cnNpb24gb2YgdGhlIHBhdGNoLiBJZiBEUk1fSTkxNSBpcyB1c2VmdWwNCj4gPiA+ID4gPiBvbiBu
b24teDg2IHdlIG1pZ2h0IHdhbnQgdG8gY2hhbmdlIHRoYXQgYXMgd2VsbC4NCj4gPiA+ID4NCj4g
PiA+ID4gTGV0IGFzayBnZnggcGVvcGxlLg0KPiA+ID4NCj4gPiA+IENjOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPg0KPiA+ID4gPiBSb2RyaWdvLCBpcyBEUk1fSTkxNSB1
c2VmdWwgb24gbm9uLXg4Nj8NCj4gPiA+DQo+ID4gPiBObywgSSByZWFsbHkgZG9uJ3QgYmVsaWV2
ZSBpdCB3b3VsZCB3b3JrIG91dC4NCj4gPg0KPiA+IEluIHRoaXMgY2FzZSB0aGUgYmVsb3cgc2hv
dWxkIGJlIGdvb2QsIEkgc3VwcG9zZToNCj4gPg0KPiA+IGRlcGVuZHMgb24gWDg2IHx8IERSTV9Y
RSE9biB8fCBDT01QSUxFX1RFU1QNCj4gDQo+IC4uLiB3aGljaCBpcyBleGFjdGx5IHdoYXQgSSBh
ZGRlZCBpbiBteSBwYXRjaC4gU28gbGlmZSdzIGdvb2Q/DQo+IA0KDQpGcm9tIG15IHBvaW50IG9m
IHZpZXcgbm93IC0geWVzLCBpdCBpcyByZWFzb25hYmxlLg0KDQotIC0gDQpUaGFua3MsDQpTYXNo
YQ0K
