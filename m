Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1146DA4E15F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 15:43:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B8F010E601;
	Tue,  4 Mar 2025 14:43:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zugl0tbr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AAF310E600;
 Tue,  4 Mar 2025 14:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741099389; x=1772635389;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nGH3qhDeM6TFkLxiDNOXHz3fpwV4VRjgNqWUMbD5Cis=;
 b=Zugl0tbrMGNzHJqYIkyJweHySd7fm2CNvnFJd1CnguftAY8WrH+yJ7cQ
 51o2UQ9lIEEUUaupEt0ok9EREaLUUGdy3Ix39H3T2HFRcyQEHj4moPsHS
 z+uJ8ZU5p4C1rp5nCg1TmMaBF2Q/GUDSxtZr7SL2v1wRyM8qYG/qzxOjl
 OD4zD1c5euiatobW6QrYcgFjcMLgmwUVnt0Hj6b71hL8iHd0wH1H0GwSb
 9wueyvzxK24xm6EZOZ1YuzjIYT8eUHHWv91aq7SfjtryXvbO2fcubgSmK
 b+UR7mUnaxngmC7fVJV0LuWy3t0/Rg9RXXwKVBLjp5N/YbEi7Uvw9GDdV Q==;
X-CSE-ConnectionGUID: v3Murzg8T4KJV0PPlmcFpw==
X-CSE-MsgGUID: 0Ruj1anZQVe0vBoL3ZCVzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="45797011"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="45797011"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 06:43:09 -0800
X-CSE-ConnectionGUID: FG23cEUTRrGS8EaWsAtOuA==
X-CSE-MsgGUID: /m6rAU5CRxS8m920KS/0cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="122523857"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 06:43:08 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 4 Mar 2025 06:43:08 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 06:43:08 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 06:43:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kqyTljAd1jl4NMVQp+ARb3vJSvsj1+Us91A0JfCEe0xPvY9qWsD50nwRrWTLo0RR/3zNZDa5kmgkK+n4ynL0D39p7qzvDAkwW8k1cYYpkAJzGGJos5bZiyNTQYAade+Mr5ExiuZTj/ouWcGA9rv3q3K9/ep/v5rSu0ihClwKWQa/82qU0/jt8jkNc8RspS2w3I3i8ntKg2ke2XQZIBjC5J6MRu+sU6cf5Oy9z1+gIdJjx21QYU+g8cDDbleCoSzy8xWctEsVpYmxGr2pof2QORdc664BbrBEH407wLR/vyumSOvV2xIpe1iXA3oXkhNTt6OxgVlFcCoYO6M3RQaR5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nGH3qhDeM6TFkLxiDNOXHz3fpwV4VRjgNqWUMbD5Cis=;
 b=VpUUjFja8aIF6yw4WADmSa7HTqBc7fYREfqr4+dcL12NWXoVnXPp83CPTzVNNTpETcN5gb8XJJicIRlq1Goqz3gnBEEljgguQvQn96n0K8mpFAsWsFFo3i+BnTdXgoGL6QAMB8ojMMyfeQF2wA0fwGtpKbfTK2zELyBTh3UPWevMywc+IXRZ0+muTABMfaxXsWlFihVSNP+vmqTHnimotcAWmw6/bOpe3Y3zKiQMfV2ecpWJof+4dijoizy+hd2szoeAwtUbcKK6yJ1S7xxX4vvGnCecd45aSFOOX68PZcEBo+UPzzy0THFS7OvMzekjH9znxVEKMOzv1LTnWAt7cQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA2PR11MB4922.namprd11.prod.outlook.com (2603:10b6:806:111::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.16; Tue, 4 Mar
 2025 14:43:06 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8489.025; Tue, 4 Mar 2025
 14:43:06 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/display: Add MMIO path for double-buffered
 LUT registers
Thread-Topic: [PATCH 1/2] drm/i915/display: Add MMIO path for double-buffered
 LUT registers
Thread-Index: AQHbh7KPGeGOC3KS0UqV3/vacIMwrrNc15OAgAY5OeA=
Date: Tue, 4 Mar 2025 14:43:06 +0000
Message-ID: <SJ1PR11MB61292C5FE06F53D9D1E904E9B9C82@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20250225180905.1588084-1-chaitanya.kumar.borah@intel.com>
 <20250225180905.1588084-2-chaitanya.kumar.borah@intel.com>
 <Z8HS36_mC1kNCN93@intel.com>
In-Reply-To: <Z8HS36_mC1kNCN93@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA2PR11MB4922:EE_
x-ms-office365-filtering-correlation-id: dc2fba16-0501-4e68-070b-08dd5b2adff9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Q1JnS0NYQjBsM2tEN01hellYWENaalZBdHpIUzRBUGwzcCtnNkkxY1FIZnlx?=
 =?utf-8?B?Q3B2M3dyMVpNY1NqWjN1MGFvY25LNzVtTkY2NnRPVDNZSmMrMFdUL2ZlRlND?=
 =?utf-8?B?Y0VsWWZ5QzJGRkN2QXhFRG9FTG5ETG00RFMwaFk4OUF3a0gzQWVoWHhYRWlP?=
 =?utf-8?B?akpnRThORndDYkVmelV3cDdwY1psY2ZYblI3ZmgyTENERHJTZGExSnRVSTk0?=
 =?utf-8?B?WXRhWFlmN2pzU1lnbVowZ09vNFNHMmdPa1F0cy9QL2p0UGMwdHZwSWc3dnlv?=
 =?utf-8?B?RUc0SmNMdkdCQmhFRHBpWms5SitHMlVvZENzMllYMTZPaUllTkZHVjNvbWFM?=
 =?utf-8?B?aFdJZU9uUjdRbU8raTBKczBHOExtbmsxT2Izajh4WHJUWTNqTVQzYk1nNTJh?=
 =?utf-8?B?T1dYU3ZGb3VoNG9DNWhad1hkTTZqeWJoT01FTzY4bTExQ2x1V1VvWWszeUlQ?=
 =?utf-8?B?Y2JJS0Q4bXVER1NoNW9hRFQwVDFpVXRpcGpoMkcrZFpLS1hZYjJmZVNnSllT?=
 =?utf-8?B?aEc2VXN5N0pXbUg4NUFudTVLQ2h0Smh5akI2TlJFY2xKUzRqRjBJS3ZuaVBu?=
 =?utf-8?B?VzR5MHVBNlBld25PbXRCOVdUeGVGRy9tUEw2cGZQNWRXNmcwUW5lOVJoSC9E?=
 =?utf-8?B?dGZ2cWZ3ZzlpbEQxdWd3akNQNElaMTNqYitGQkhhbGdtRHRrZlFST3NuZzhI?=
 =?utf-8?B?SmNtajUrTmRKUnlmN25Da0ZBejdQWEhXdFR5YjdNYldYTXZEaDRTTjBkVGVk?=
 =?utf-8?B?Qkl4UHJRRzZxNkJzaFpGdW1abTVJenF0Y2Nuc2JQNHhmSEVHbjFUcVhZOGFy?=
 =?utf-8?B?eTBvZS8yT3dWTXNOcUVPdDVYQmhjMVg5TStSQk9DYW1NZ2kxd1R1aEwraWhv?=
 =?utf-8?B?T2tab1ZvbktUT2FPWlhKSXZablVUaXBlQjRIdzFTYlRrVGwxVWRSSXlrVUpZ?=
 =?utf-8?B?NmhvQjE1L3B2Z2dzQVJVY3QyUmpxRjhsN0g3SVpaRys5UEVlNVlaMHlUMlNM?=
 =?utf-8?B?K3dRWXZlN0s3UGZjbWx6Mm5vWTlNSE14dXJDUlRBM2RZdG9NOWpPNHRFbXBm?=
 =?utf-8?B?RFpaNDNCVEEzSlZRWUVPLzBzRjdkS2llMG10a3hpWW4wQlFYRXBDZWlSaUlj?=
 =?utf-8?B?UjVHR3BOSnpnY2t3UkhTbnduZUUwdTBPNFdHQU0vOGJzeHdzb25wZDdpdnlU?=
 =?utf-8?B?R1REYVI3aWlDMVlPTU94MWRUNC83T3U2Q1lpT21LZ0hkNmpoOEVpZmY0QTdt?=
 =?utf-8?B?YVNGYThVakF5bzRrNFU5TjBEdXJxUVVXNlhpQnMvTU5jS1FnRlBYc2pOR3JK?=
 =?utf-8?B?SkZ2SWtDQXRRaitOcU56cWcvQkxzZzRwbHNvTGxLenZnZWNqb1NrY0JCSElX?=
 =?utf-8?B?VExIR0IzU2txM3ZmNzY4ZUxSMW94cjFGNWxDS3NneVFqZmI5bzdKZURGemFR?=
 =?utf-8?B?MHc1SjR2NHl0UFRXYVFZT2tGWHVxT2ttdm5VRFpxaFZxMm9iRlFjR2xQenlP?=
 =?utf-8?B?TnRnUVY1Ny9HbnJ2WGgwSVIrNTVQR28wRldnVC9lNi9xL1loanJscXp2eDcw?=
 =?utf-8?B?eGdVN3VSN1BtOUJiYXRFNnpsRUpLc0pHNTE2K1Y4UkJTOHd0VFNGU0ROeFA3?=
 =?utf-8?B?VS85K0lrZjRaN25GWllQRkp2ci9SU2NybmF3M2pkUUYrQld3b1E4cWhINFJ2?=
 =?utf-8?B?OFVTTCtuRDdyeGIyWFBXTlZZUTRsV2hzQWxBNVJuTVVXRC9tRnh5NmFTUFpt?=
 =?utf-8?B?NkREcVNBT3k0UFI4bnREeXJSWGpzZ0ZBWTVRekJzSGdzS1NDdUhlc0YzTDZl?=
 =?utf-8?B?TlVlTitNYlRvVEJKQXFPUUpmRG5ORy9PZHl0YWdYZGExOXRwaVovQldTOENU?=
 =?utf-8?B?TU9kckgzV2U0SjY3Tlp5N1lDY3ZWN1p1WHREZlF4WjJkN1RiNFlDdVZha1Fq?=
 =?utf-8?Q?aMrM50HBzOl/bDi9l0+lyKL6QlWyPUpP?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dld6S2hycDU5Z08xNTFZc2E1NHp6VlJvS1ZHMkUycm91eUlTT1V5RHNLeTN2?=
 =?utf-8?B?Y2h5dTU0TmMzc1c2NHh4clFJY3ZzQUpVNU1mNEhHRjZJMThuSzg5QXlWTlhF?=
 =?utf-8?B?ZlRFeWsxaTlSeHlmelptdVlXaFh3UHc4a3pRMk5WMHdBbzlDTUU4U1JFd09K?=
 =?utf-8?B?VlNTZjA4UklXeksyNTNScjdHV1plUWw0bEhpSy9PejFyeEUwb1hIZGNobFo5?=
 =?utf-8?B?eW1lNmJCOE9IblN2VFRnNUplVmtoN0VZZ05sWnBGNTgrNDEwM0FDTi9Yd08z?=
 =?utf-8?B?R0hGOENrTEFVR0cxbEFUa29RYld5cnAzbVJxZDdIOWgyM2xia2xHVzNUN2tH?=
 =?utf-8?B?ZGxlUW5vNm84ZkFaWlptSWlqVVZIeDBwZzF2VTlCNHcwVlpuQmxQcHc5c1Bt?=
 =?utf-8?B?ZnZKYjJMWmllbmlOT3d2aUdNZHVsNHRKZFNHdklJNWJHTGhPTUxEOU5mQXUy?=
 =?utf-8?B?djFwQklsK0JJQlV1SUZOODVwLy84NWs4MlNkbFNlTjB2UjJpWnlvckU0V2Rk?=
 =?utf-8?B?SElrb3E5UkVXMUU3MGRnRDFkbzBSSEdBc1BzcThrZHVnL1dpYXU2c3ZnTGYr?=
 =?utf-8?B?R2VoMXRQcjF3ak9aRFQ3ZlVqTk5EMUNQNTdVZWRacy9PK3VVUHNDdEZRVDhy?=
 =?utf-8?B?a3laV2JqMkFLWnB1VWpjTjhHUDNadGg0TXBYRy9iVjdNR1NUYmtCblJHblpt?=
 =?utf-8?B?cWtxR1ZtaGJsSVY1ZmxFbjBnakdrNitzdEpROEJOSFFrTC8yRkc0SEcwYXpT?=
 =?utf-8?B?WW5PTnlCUUZEY0R1TjdSeHV2UDBxdmV4dzlqY3owVkthSDlrNC9jMm9rcVpn?=
 =?utf-8?B?SzhVU3dJOXFGc1R4TGU0ZURHOVBpV3pwdi9IWEt3MEhIMDdLUGRtWml6OExi?=
 =?utf-8?B?dWhFZVV3NHJpbjhidzNOY0twYThzQkpPRkFPT0dybVpWY2pHc0JxK3FEZm52?=
 =?utf-8?B?Y3pUQTljZHU2SUVrUmh4U2UrbGUrb3graTBsNVV1em1BTzAwMFhtdjhTOE94?=
 =?utf-8?B?UkFwbjRZTjJmNEJJOG9Nc3RRSmx0N3hNeTRjdURiR0NCNTQ0QU1vbjRXSW5p?=
 =?utf-8?B?L1JvTG8rZ2xqZStidUFsb1oyTzdwdnlKWUFoMmw3WEVwZVVaOGwwYjVtQVgw?=
 =?utf-8?B?eXJLLzFqWGIySHplbUh5N0hhQWtuK0t1clllekZrWHZNNnBwZnRnNENHZFFL?=
 =?utf-8?B?R3lNQ3VzZVpHRitHTHFqNUJBb1VXWkJPVjJveERoZ3QrU0lwRnczWHN3bHlo?=
 =?utf-8?B?SFpYUmQrdDBNZDBoeExuWWhiQngzQytNcURsSjh3MGhMYW9OQ211ODVOaFpD?=
 =?utf-8?B?dUJOUkJwUC9QMU9TYWxQZGt0ZUFGMitzRG9tR3luSGJSYWpNdVFMaDZhc2NE?=
 =?utf-8?B?cXpCS28yUlhzUlJ2dWtKMlNLejZrVjljNFdjUXBkbDNlTXF6b2VQaUFIdEpn?=
 =?utf-8?B?NlVoZnN2R3NDVktobFllS3gxNlRtbEVWaVNCaElrQzRxM1pXL0lNUUJ3ZUFt?=
 =?utf-8?B?T2F5bUtJRFBFK1hjSnI4YXV1T2JLSitjODlNRUFkS01nRURlNXZWYUhBUTJa?=
 =?utf-8?B?Q2c0K2trWXFoTjRzTzVpdFpWV0swazB2NnBRMllGZ0FDcHU0S3p4djE0bGlQ?=
 =?utf-8?B?N3dtQUVlazFkRG9RR1BaWlZ4THBNdWlVeGluSmlKTVhMQjk0SGxuUlltS0Na?=
 =?utf-8?B?TTAvbjNHeEZwcWl1a1FoWTludDRNbDNMSVJReXhpUXp5TUlEazRNUmt5ODBE?=
 =?utf-8?B?MHNXR1AzQmlVeXNNKytYaHkxaHlVVTlsZyt4eVQzMldOd1lKL0t2ODJMd2JY?=
 =?utf-8?B?OVUvNVNja0NrK0dFVER2VFFrRUp1VzVVcjUyWUVxbTVuMUxtSWt3NnBYQmp0?=
 =?utf-8?B?enVXRytJSjl2N2djMjZpREQ3TGk2M3llYmZxalVlMHlHVU5UdVJVYTAxMlZD?=
 =?utf-8?B?SnBGMEw0emdmSXB1MWhtMkYyMi96aUw2WFRtZEo4MElUWFlZVFI5RUhETkFa?=
 =?utf-8?B?NjFya1Zxd0ZOU0xxa1hPRmZsT2tLcC9JVU4raVp2aDE1RW1nVGZHRUdUV2pw?=
 =?utf-8?B?eVE3MVpFTUZ2WGZiMUFBdmE0YnIxYUkxVnlOb2hENEZTdURSay9VcE9yU1p3?=
 =?utf-8?B?YktpakxPancxYVRWVEo2Wkx0SHJXRWtBZFdUNTlGbklINFhFSXJYYmNCVFNz?=
 =?utf-8?B?T2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc2fba16-0501-4e68-070b-08dd5b2adff9
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 14:43:06.0858 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7hGMPjdMS/iO2Cmp6Kt6uZtIMbHaDvDOy6YpXSK6VYsISrcTyL4qaJwarhCitej1DkF237IgOZ3YzkGoiofv1GCK/GQJ5rfWBP+Xxv6JjJs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4922
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

VGhhbmsgeW91IFZpbGxlIGZvciB0aGUgcmV2aWV3Lg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgRmVicnVhcnkgMjgsIDIwMjUgODo0NSBQTQ0KPiBUbzog
Qm9yYWgsIENoYWl0YW55YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4N
Cj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgU2hhbmthciwNCj4gVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+
IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMS8yXSBkcm0vaTkxNS9kaXNwbGF5OiBBZGQgTU1JTyBwYXRo
IGZvciBkb3VibGUtDQo+IGJ1ZmZlcmVkIExVVCByZWdpc3RlcnMNCj4gDQo+IE9uIFR1ZSwgRmVi
IDI1LCAyMDI1IGF0IDExOjM5OjA0UE0gKzA1MzAsIENoYWl0YW55YSBLdW1hciBCb3JhaCB3cm90
ZToNCj4gPiA+RnJvbSBQVEwsIExVVCByZWdpc3RlcnMgYXJlIG1hZGUgZG91YmxlIGJ1ZmZlcmVk
LiBUaGlzIGhlbHBzIHVzDQo+ID4gdG8gcHJvZ3JhbSB0aGVtIGluIHRoZSBhY3RpdmUgcmVnaW9u
IHdpdGhvdXQgYW55IGNvbmNlcm4gb2YgdGVhcmluZy4NCj4gPiBUaGlzIHBhcnRpY3VsYXJ5IGhl
bHBzIGluIGNhc2Ugb2YgZGlzcGxheXMgd2l0aCBoaWdoIHJlZnJlc2ggcmF0ZXMNCj4gPiB3aGVy
ZSB2YmxhbmsgcGVyaW9kcyBhcmUgc2hvcnRlci4NCj4gPg0KPiA+IFRoaXMgcGF0Y2ggbWFrZXMg
dGhlIGZvbGxvd2luZyBjaGFuZ2VzDQo+ID4NCj4gPiAJLSBBZGRzIHRoZSBtYWNybyBIQVNfRE9V
QkxFX0JVRkZFUkVEX0xVVCgpIHRvIGRpc3Rpbmd1aXNoDQo+ID4gCSAgcGxhdGZvcm1zIHRoYXQg
aGF2ZSBkb3VibGUgYnVmZmVyZWQgTFVUIHJlZ2lzdGVycy4NCj4gPg0KPiA+IAktIFByb2dyYW0g
TFVUIHZhbHVlcyBpbiBhY3RpdmUgcmVnaW9uIHRocm91Z2gNCj4gPiAJICBpbnRlbF9wcmVfdXBk
YXRlX2NydGMoKQ0KPiA+DQo+ID4gCS0gRGlzYWJsZSB1cGRhdGluZyBvZiBMVVQgdmFsdWVzIGR1
cmluZyB2YmxhbmsuDQo+ID4NCj4gPiAJLSBEaXNhYmxlIHByZS1sb2FkaW5nIG9mIExVVCB2YWx1
ZXMgYXMgdGhleSBhcmUgbm8gbG9uZ2VyDQo+ID4gCSAgc2luZ2xlIGJ1ZmZlcmVkLg0KPiA+DQo+
ID4gU2lnbmVkLW9mZi1ieTogQ2hhaXRhbnlhIEt1bWFyIEJvcmFoIDxjaGFpdGFueWEua3VtYXIu
Ym9yYWhAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NvbG9yLmMgICAgICAgICAgfCA0ICsrKysNCj4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMgICAgICAgICAgIHwgNCArKystDQo+ID4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICAgICAgICB8IDYgKysrKyst
DQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2Uu
aCB8IDEgKw0KPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb2xvci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NvbG9yLmMNCj4gPiBpbmRleCBjZmUxNDE2MjIzMWQuLmMzZWUzNGI5NmMxNSAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gPiBAQCAt
MjAyMiw2ICsyMDIyLDEwIEBAIHN0YXRpYyBib29sIGludGVsX2Nhbl9wcmVsb2FkX2x1dHMoc3Ry
dWN0DQo+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwgIHsNCj4gPiAgCWNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSA9DQo+ID4gIAkJaW50ZWxfYXRvbWlj
X2dldF9vbGRfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZGlz
cGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY3J0Yyk7DQo+ID4gKw0KPiA+ICsJaWYg
KEhBU19ET1VCTEVfQlVGRkVSRURfTFVUKGRpc3BsYXkpKQ0KPiA+ICsJCXJldHVybiBmYWxzZTsN
Cj4gPg0KPiA+ICAJcmV0dXJuICFvbGRfY3J0Y19zdGF0ZS0+cG9zdF9jc2NfbHV0ICYmDQo+ID4g
IAkJIW9sZF9jcnRjX3N0YXRlLT5wcmVfY3NjX2x1dDsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+ID4gaW5kZXggNWIyNjAzZWYyZmY3Li45Mjdm
OWFjZjYxYzQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jcnRjLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NydGMuYw0KPiA+IEBAIC00MzIsMTAgKzQzMiwxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jcnRj
X3ZibGFua193b3JrKHN0cnVjdA0KPiBrdGhyZWFkX3dvcmsgKmJhc2UpDQo+ID4gIAlzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9DQo+ID4gIAkJY29udGFpbmVyX29mKHdvcmss
IHR5cGVvZigqY3J0Y19zdGF0ZSksIHZibGFua193b3JrKTsNCj4gPiAgCXN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOw0KPiA+ICsJ
c3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGNfc3Rh
dGUpOw0KPiA+DQo+ID4gIAl0cmFjZV9pbnRlbF9jcnRjX3ZibGFua193b3JrX3N0YXJ0KGNydGMp
Ow0KPiA+DQo+ID4gLQlpbnRlbF9jb2xvcl9sb2FkX2x1dHMoY3J0Y19zdGF0ZSk7DQo+ID4gKwlp
ZiAoIUhBU19ET1VCTEVfQlVGRkVSRURfTFVUKGRpc3BsYXkpKQ0KPiANCj4gV3JvbmcgcGxhY2Uu
IFlvdSBkb24ndCBldmVuIHdhbnQgdG8gc2NoZWR1bGUgdGhlIHZibGFuayB3b3JrZXIgZm9yIHRo
aXMuDQo+IA0KDQpBY2suDQoNCj4gPiArCQlpbnRlbF9jb2xvcl9sb2FkX2x1dHMoY3J0Y19zdGF0
ZSk7DQo+ID4NCj4gPiAgCWlmIChjcnRjX3N0YXRlLT51YXBpLmV2ZW50KSB7DQo+ID4gIAkJc3Bp
bl9sb2NrX2lycSgmY3J0Yy0+YmFzZS5kZXYtPmV2ZW50X2xvY2spOw0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBpbmRleCAwNjVm
ZGY2ZGJiODguLjkxOWUyMzZhOTY1MCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gQEAgLTY4NzksOSArNjg3OSwxMyBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9wcmVfdXBkYXRlX2NydGMoc3RydWN0DQo+ID4gaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSwNCj4gPg0KPiA+ICAJaWYgKCFtb2Rlc2V0ICYmDQo+ID4gIAkgICAgaW50
ZWxfY3J0Y19uZWVkc19jb2xvcl91cGRhdGUobmV3X2NydGNfc3RhdGUpICYmDQo+ID4gLQkgICAg
IW5ld19jcnRjX3N0YXRlLT51c2VfZHNiKQ0KPiA+ICsJICAgICFuZXdfY3J0Y19zdGF0ZS0+dXNl
X2RzYikgew0KPiA+ICAJCWludGVsX2NvbG9yX2NvbW1pdF9ub2FybShOVUxMLCBuZXdfY3J0Y19z
dGF0ZSk7DQo+ID4NCj4gPiArCQlpZiAoSEFTX0RPVUJMRV9CVUZGRVJFRF9MVVQoZGlzcGxheSkp
DQo+ID4gKwkJCWludGVsX2NvbG9yX2xvYWRfbHV0cyhuZXdfY3J0Y19zdGF0ZSk7DQo+IA0KPiBF
eHBsYW5hdGlvbiBtaXNzaW5nIG9uIHRoZSBkb3VibGUgYnVmZmVyaW5nIGJlaGF2aW91ciBvZiB0
aGUgTFVULg0KPiBUaGlzIG5vdyBhc3N1bWVzIHRoYXQgaXQncyBub3Qgc2VsZi1hcm1pbmcsIGFu
ZCB0aGVyZWZvcmUgc29tZSBvdGhlciByZWdpc3Rlcg0KPiBtdXN0IGJlIHRoZSBhcm1pbmcgcmVn
aXN0ZXIuIFdoaWNoIHJlZ2lzdGVyIGlzIGl0Pw0KPiANCg0KWW91IGFyZSBjb3JyZWN0ICh0b29r
IHNvbWUgYnJhaW4gd29ya291dPCfmJApLiBUaGUgYXNzdW1wdGlvbiBoZXJlIHRoYXQgdGhlIExV
VCByZWdpc3RlcnMgYXJlIG5vdCBzZWxmLWFybWluZyBpcyB3cm9uZy4NClRoZXkgYXJlIHNlbGYt
YXJtaW5nIGFuZCB3aWxsIGxhdGNoIG9uIHRvIEhXIGF0IGRvdWJsZSBidWZmZXIgdXBkYXRlIHBv
aW50LiBJIHdpbGwgYWRkIHRoaXMgdG8gdGhlIGNvbW1pdCBtZXNzYWdlIGluIHRoZSBuZXh0IHZl
cnNpb24uDQoNCk5vdyB0byBlbnN1cmUgYXRvbWljaXR5LCB0aGF0IGxlYXZlcyB1cyB3aXRoIHR3
byBwb3NzaWJpbGl0aWVzLg0KDQoJMS4gV3JpdGUgdGhlIExVVCByZWdpc3RlcnMgZHVyaW5nIHZi
bGFuayBldmFzaW9uIGNyaXRpY2FsIHNlY3Rpb24uIFdoaWxlIEkgaGF2ZSB0byBwcm9maWxlIGl0
LCB0aGlzIG1pZ2h0IG5vdCBiZSBwb3NzaWJsZSBiZWNhdXNlDQoJICAgIG9mIHRoZSBudW1iZXIg
b2YgcmVnaXN0ZXJzIHRoYXQgbmVlZHMgdG8gYmUgd3JpdHRlbi4NCiAJMi4gVXNlIGRvdWJsZSBi
dWZmZXIgc3RhbGxpbmcuIFRoaXMgYXBwcm9hY2ggbWlnaHQgY2FycnkgdGhlIHJpc2sgb2Ygc3Rh
bGxpbmcgdXBkYXRlcyBvZiBvdGhlciByZWdpc3RlcnMuDQoNCldvdWxkIGFwcHJlY2lhdGUgeW91
ciBpbnNpZ2h0cy4NCg0KUmVnYXJkcw0KDQpDaGFpdGFueWENCg0KPiA+ICsJfQ0KPiA+ICsNCj4g
PiAgCWlmICghbmV3X2NydGNfc3RhdGUtPnVzZV9kc2IpDQo+ID4gIAkJaW50ZWxfY3J0Y19wbGFu
ZXNfdXBkYXRlX25vYXJtKE5VTEwsIHN0YXRlLCBjcnRjKTsgIH0gZGlmZiAtLWdpdA0KPiA+IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4g
PiBpbmRleCBmYzMzNzkxZjAyYjkuLjQxOWQwMjEzZTQxMiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4g
PiBAQCAtMTU1LDYgKzE1NSw3IEBAIHN0cnVjdCBpbnRlbF9kaXNwbGF5X3BsYXRmb3JtcyB7DQo+
ID4gICNkZWZpbmUgSEFTX0RNQyhfX2Rpc3BsYXkpDQo+IAkoRElTUExBWV9SVU5USU1FX0lORk8o
X19kaXNwbGF5KS0+aGFzX2RtYykNCj4gPiAgI2RlZmluZSBIQVNfRE1DX1dBS0VMT0NLKF9fZGlz
cGxheSkJKERJU1BMQVlfVkVSKF9fZGlzcGxheSkgPj0NCj4gMjApDQo+ID4gICNkZWZpbmUgSEFT
X0RPVUJMRV9CVUZGRVJFRF9NX04oX19kaXNwbGF5KQ0KPiAJKERJU1BMQVlfVkVSKF9fZGlzcGxh
eSkgPj0gOSB8fCAoX19kaXNwbGF5KS0+cGxhdGZvcm0uYnJvYWR3ZWxsKQ0KPiA+ICsjZGVmaW5l
IEhBU19ET1VCTEVfQlVGRkVSRURfTFVUKF9fZGlzcGxheSkNCj4gCShESVNQTEFZX1ZFUihfX2Rp
c3BsYXkpID49IDMwKQ0KPiA+ICAjZGVmaW5lIEhBU19ET1VCTEVfV0lERShfX2Rpc3BsYXkpCShE
SVNQTEFZX1ZFUihfX2Rpc3BsYXkpIDwgNCkNCj4gPiAgI2RlZmluZSBIQVNfRFBfTVNUKF9fZGlz
cGxheSkJCShESVNQTEFZX0lORk8oX19kaXNwbGF5KS0NCj4gPmhhc19kcF9tc3QpDQo+ID4gICNk
ZWZpbmUgSEFTX0RQMjAoX19kaXNwbGF5KQkJKChfX2Rpc3BsYXkpLT5wbGF0Zm9ybS5kZzIgfHwN
Cj4gRElTUExBWV9WRVIoX19kaXNwbGF5KSA+PSAxNCkNCj4gPiAtLQ0KPiA+IDIuMjUuMQ0KPiAN
Cj4gLS0NCj4gVmlsbGUgU3lyasOkbMOkDQo+IEludGVsDQo=
