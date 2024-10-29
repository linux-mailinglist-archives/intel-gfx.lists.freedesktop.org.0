Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7E69B451C
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 09:58:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B218610E5DC;
	Tue, 29 Oct 2024 08:58:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KGeYxit2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 389DF10E5DB;
 Tue, 29 Oct 2024 08:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730192328; x=1761728328;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LtgmqdDGeUCSqvRQTx+KEoV4gtXkBP7JCEdjIu0slPI=;
 b=KGeYxit29D45ynZjOZJ9BZ/zBI9hxVBAvWCXUIWAjW0NAu+4NeRXf0NQ
 /Xo2iomZcRQLcc4u+n9X+FvZK6Q+IQwQ4CnDOSf/GlXWB2YiyZt/7s06O
 r+4Mj47K7CeX6XDh5XmykCaa9LXrnHwxcGK8zIrEQuC5JE9HOgMlcJN2G
 t+bC0EuhZiJ/15yErKVHWSxUwCEI8rfkhBwgwUtfGL9K1toQ7ONK71TsW
 ptMuZBm7Jhl0t9QgjXZJv+2obHou+NLZ6PDwh3crNAxew6cjy6wfYeExT
 pvKfC0fauVr9ciurIlB4+w1PX+ZluQ+vn46Z3wLPLEYyrpo2qz4UTiHen g==;
X-CSE-ConnectionGUID: Hb4cicHBS3+YETDxpzu2Hg==
X-CSE-MsgGUID: qV5yb8EaQaSufC0dX32qHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29594877"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29594877"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 01:58:48 -0700
X-CSE-ConnectionGUID: P7ua3wbDRya3CuMEGrT+4Q==
X-CSE-MsgGUID: tCCuPevdTzG8n5lw7X4HGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="85850808"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 01:58:47 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 01:58:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 01:58:47 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 01:58:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fbiwHaNSgqt304RzaOgimDPG+aC94466qdJxYMjmHJsHKIdgDWZ8rIyl2G8faNNaxYoWbaUA2YkuBkRE0ot/UNnFzB15FpSvNSml+TA0NHQWqh0s9mfAX/+RDp170WEuYd+8/Pq5svbHV6noqRl1awPx/cFrDq5UlSUmUCdIDTt50jFpRLGffBqqb3CFqwuFfFbLgkSdqyexvg2nYAjgJykFRA8hUvoHWm1J0sfGMii/lxPxqEAvYrSQYob3yofOnDg4me3aJzN4GB8Fu56V+A+JnrNO8OAliSxor9ONhwNnuFMddEbvKWJihTiJPpdS4SUrYMfMrNImF05cv2maCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LtgmqdDGeUCSqvRQTx+KEoV4gtXkBP7JCEdjIu0slPI=;
 b=vphwG1vjLeEQjTvIrf9z3MnEuCVVHf49SUo2JO6caNKx6FZs961MsAnP2JgRqDINnnX2/jlmk/rZSs2lRyBO32jBI4bHPH15hA6j1PTBFmgVqzNCLTFG40/AhDiDECOOGPXK2BkYthvZlLd8f+SWRbuBFNSrmXcrUlHrBgTIhX4w0LzeyIT9FkAijQuEqIp0LoBNjsddIKKTlFL0pEc4zkbpqTM8AYbbFOuHj7v1Y4UjodHeMEoibt4xBjwBqoqofR9XSeAOQ3qBgQ3mXLzd4mxOTYe8QM8GTUzrVHekqWUucC6nhVcdZfKXWCeGcp2v5RQPM42igq/JW0V6BZRWoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by LV2PR11MB6047.namprd11.prod.outlook.com (2603:10b6:408:179::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.27; Tue, 29 Oct
 2024 08:58:42 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8093.014; Tue, 29 Oct 2024
 08:58:42 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Thread-Topic: [PATCH] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Thread-Index: AQHbKcMlpoZbu/w0fEWI06u0i8Tng7KdaZEAgAADoqA=
Date: Tue, 29 Oct 2024 08:58:42 +0000
Message-ID: <SN7PR11MB6750F47789BED8798DC266DEE34B2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241029052603.215853-1-suraj.kandpal@intel.com>
 <e7cc3d1d-06ff-4c47-b60c-84eea92b308e@intel.com>
In-Reply-To: <e7cc3d1d-06ff-4c47-b60c-84eea92b308e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|LV2PR11MB6047:EE_
x-ms-office365-filtering-correlation-id: 6ffbc363-88bb-4500-d8bd-08dcf7f7e370
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TVZESHpYZjJNMXZYVXkvTjlOOTdHWm44VCtwcW1MSzBzWHVwYzlQZ3E0U1Nq?=
 =?utf-8?B?NFpqTjlFL2NtSHo3bmxIOEZiSEFxUmFXSVMrUmJEek9GbUYyVFRoOGJKVUhi?=
 =?utf-8?B?OW5iaCt2TzRFRFNFYlBjOFBjeExIakFPRE5PNGRYdlJqTnZ5S1NPaks2ZTJm?=
 =?utf-8?B?c21MOFJCQ3hWR0tiOTNWdzZpbVBHK0wxTWhTc3lPVnltTUZVaTd5N0xSa1JM?=
 =?utf-8?B?blZFTjZZSjRrdERmOE1WaUV0VEZQWmNjOEx6ckxnRGNjMmVWTmNCd0RmOUVx?=
 =?utf-8?B?VVZraUViMUw1Y3JROSthRk1zMG5CNHJSdVpudjJlVXUvVFVwbHNwdDZpL1RS?=
 =?utf-8?B?STlyZHZCMDZNMDhabUdkdEVBZGEvM2RBck54R254cEN0dDRrMm9WZ2pXdGo4?=
 =?utf-8?B?enR2QjVyZFhmY0VnSUQ0TXEwR0dPdG83YXZjNk5XT09NNWJ2bG5OeDgzMEp6?=
 =?utf-8?B?RDhjMVJzZTE1T3N4dTR6YU1SVTliYVB1KzFUR3FxYW1aaElmb21CVE90aEli?=
 =?utf-8?B?L3pqWmp0ck9VeXZIaHZNUG1uTnc2aXYvRVhkaTN3ejhsNExybEozamowR25C?=
 =?utf-8?B?dlZKMTVnd3NyWmM4cnY2R2tON0taT29WU1hxQlFmVTdpU1NMV09tdUhxbjB5?=
 =?utf-8?B?empRQmZIQnBHaG81c2c2RHFvdU1VanZwZU9ob1kxcXF6SlpqaG9ESXlETnlP?=
 =?utf-8?B?RWRCYk1ud3BlS1AzRDR0MWk1L09lZmJ6VEVJMXkxOVVMNTNCaEFrVmcyek5F?=
 =?utf-8?B?SlpIMzZ0ZktyVWZjeUdmVDl4ZkpTZ0hPMTA4U3dZc0pNVGE4T040WG5YTnpD?=
 =?utf-8?B?VDFvU2pLSHFMalFOaHk3R20zeHdSdmhEZWpuZDc0SHpnN1JGRGFDL0V4cmFs?=
 =?utf-8?B?ZkFMYjBIMWd3M085eEtya3I2ZWI1WS9DTUV5cnBTdG5PM0drUHJUTUltYVNi?=
 =?utf-8?B?dUs5NFNweVpKdDhTeURYTjhNMC8xcElnTkFmL3FNNndZdkg4M2VQUFdaRFgy?=
 =?utf-8?B?M3N5M1lVMkFic2grSnVvUlNQSWRJazdwTU44R1RJUm9jY3Nud1FYUHo5aEov?=
 =?utf-8?B?K0txSFRmT2tQcGlXcXV2d1FxZTVha3dDV1U2UDU0SWlMWFpNQ21qTlZWcy9l?=
 =?utf-8?B?YzkzSFVvTE9YVkQvTkFxSlhtWnkxWksvK3FEbHkrRElTQ2NJNGxqU3NtKzJV?=
 =?utf-8?B?NEFTbnZNb1M5R2ZLZG1jdzRzQlhqSU5SQitnUTl0bitsUmVPcFRNeWFrMHR6?=
 =?utf-8?B?c0lrNFVvZGVFSkp6OStISzI5OUZuVHU1QTFQTVIyV3duazFBR0lhNUpwbzBH?=
 =?utf-8?B?TWlGK01WUEZ2RXJCb0Y5SXdKY05oQUZ1UzVpdlhrMTh6dElDKzZkckdtMDIz?=
 =?utf-8?B?VnEwT2ZMT0ROZW1aVmJMamprWDNHVlE0TktlRDBnWUI5UC9EdDFZNmp0ZFlO?=
 =?utf-8?B?amMzMExxS1k3c2Uzc1pJaVRRSUVyL3ZVSzZEdzBDeXF3c1JEeEs5TGhVODRn?=
 =?utf-8?B?dTcxbE9tM0pmSEIwRUdBYlo4UVpPZ0dudmdHc2MwK1FmSTZudzFyZDFhcG54?=
 =?utf-8?B?SjVFWDVzWEthTmo5WnQ3dmdSVzVCak94Q1hOT3IzbDVCYVl4cWRCMHBYYTZ1?=
 =?utf-8?B?cXhpcm1CVHdYb2lrNFlYV1I5ME1UcGhTNkdjdlMwdkVKUUVhR29XRXk2UmFX?=
 =?utf-8?B?c21DMEdFS2Q3SWtTM1JrZDVDZnByWkNCOFI1TlRTaDNvSTZNT0dWNzNhV21r?=
 =?utf-8?B?WjBYUzR5cklTQ3labnlqQjlQV0ltV1RIb0k0cWNPMU1meHB4Z0k5N3NmRkxB?=
 =?utf-8?Q?7YqbgJvcG49dC7dhs5PzbmV0dwr37z10FmPgg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2JONWI5WEFQQkR0WnMxSzBnS25SSVg2NmhqcklVSkhyVmlKbUpHemdkbk5z?=
 =?utf-8?B?ZmszYUw5N2RPWVVtWk9EYVBzWjB5WGtleHRpYjVYSnQ2VWFpSXE3Slc5Nm5i?=
 =?utf-8?B?eEljUU9sbDdvcm1zNlR4VjV1b3VZQTZUYjBFbVhjVU9PYVhxeHgrVDN6cHB4?=
 =?utf-8?B?NlVMZWcyaStaS2c0VlFOUDBNL3NMY2pWd3JlYkYxdnM1VnVoSE9VQm1SUmtD?=
 =?utf-8?B?Qk0yaXYzOTAyS2k4NzNDTWQ1R1JHNFluVmtrSUhzVFJTSmF5Yk00allQY2Yv?=
 =?utf-8?B?Tm5URDVTc1QzTWduTEFBTlNNVUVkZ0F6RHc5M3ZyU1NZalJyaEtmT3JLeHcy?=
 =?utf-8?B?TXY3WXR4WVNQUXdzaHdYVkIrcnlKWWRBQ3p1UFR0dzdLVHBLelF5eWpQV0hy?=
 =?utf-8?B?MkpIdzhMTEJqTG5Ec0lvaVdOcldFSkt5V2oyVjdhTXFQWVdoaW9KaHBETzNF?=
 =?utf-8?B?V3IxKytkdkVLQ1EzTFMvVzZnY2Mybk9aT2VhZ0VFdHpRaFhvSU5uVHliQTJB?=
 =?utf-8?B?N1c5MmVPc1FHb3lCS0xZUU5SVnJxRHNUanZqWTI1TUpWb3E4WkxZSWxwSXVq?=
 =?utf-8?B?dThjN2ZtMnlqbmMxSDRqUlAzMytRVzdWbkJwYTl2dVYrVTNqWXFCWngzK3Fx?=
 =?utf-8?B?bnl3ZkZJWVUvZ0tYejUvTWFIb3ZpV3pCU1ZYc2g5RGx2cHdpbk5MQlVRblVz?=
 =?utf-8?B?cTBuSEpXSWJRdFR1Y3R3NVZGWkNkLzQ5M2JPMDJyc1hKdXlrS0xTMVQzN1Zs?=
 =?utf-8?B?clN3bkhpWEZuYkdOM013bHZnL0JNUGJoei9LVFQzTW0wbXpkUVlsRUd0Nmti?=
 =?utf-8?B?OFBXT01HMWdWL1BIUlVKMk16V3RkYkdnbm9OQnJpdVB1cjY5L1BrR1lHQkFO?=
 =?utf-8?B?a0lHdVh0b2E5RGEwUDRjWmd1Z014ejZJUzBrbGE5M3haQUduMTk3cG9iL210?=
 =?utf-8?B?Zm1ST1pnMXVJTTVyd2dmWCs4VU9oMWRZelViaUJrY2JiYXZPSWVTcDhwdlRW?=
 =?utf-8?B?b21IMHMzdHd6aS9oQU1KalBIdDhTdmFlNzhxZDVHU0ZiODd1UmM4NVlRbGhv?=
 =?utf-8?B?SEZ6Z2NvVWZXd0Zqd09Ud2haMjRZdHBrRVBTVG9SQW92UWZBbVByMDNLTVN4?=
 =?utf-8?B?R2wwdXJDTy9lbmNkQ1RIaWdPV1NEOG5ZZy9MdW5wemVCSGx2VGREeEJrOS9q?=
 =?utf-8?B?aVhTVm1uWXp6Mit6dnFibnJVK0hleW5SdGpjcmRTOTByU1JVc3FwQWJmN0JZ?=
 =?utf-8?B?SjZOc05MUXAxanQyWG41SDd4UVF1Qk1KajNiK004TXViYmhWazZaTllqa3ht?=
 =?utf-8?B?U1ZnRWZPTHEwQmhvY2NNaXUwREJKbENBTFNZV2pxcmpIbnUwRlFXUk5OZEFI?=
 =?utf-8?B?ZHZSWUM3K2ZhN1JVNGM4ci9jdnNhSEpaVkp6RTZZajZ5aW5oRnJXak93bW5Q?=
 =?utf-8?B?a0hmVzVtN2VrOFh2NHZOdDhpQnFJZ2VDTXIrSlkyRkxhcXR4azZOeVJJK1o0?=
 =?utf-8?B?WGY0T3liMDBZQ2wyTVhZb1hzOEhWWlZjb1czWVg2enRIQ0FicWgwVXhBM3Nx?=
 =?utf-8?B?MW53VGtOSCtaVDgwS01xVnBKVUpkZTBpRTl6WERsRmx5cWR1S3g2MU1Udk80?=
 =?utf-8?B?YkxuclFicCtiR1R0UHlpcHhmQWZWd3FIenR4L0hsVEszSjY1cENndUVHQWd0?=
 =?utf-8?B?S1lQeWJ2LzdjdUFMTllER3IvU1huVERiQnlBNnhaeTh4dHBzLzBOOTZNOUFs?=
 =?utf-8?B?eFF2a2FsZDhmYWp0dXVMeEZYdlN6NXRmUnpOZzBTRXFBR3kycHJzazcxa0NW?=
 =?utf-8?B?Q2NNUkc1aVRVT0pjOWM5Y3FvZ1l1ZEplRk9aK0Znd3FOb2NUSWJ5bXp2R0dZ?=
 =?utf-8?B?Y3ZJNUdiMHMyeDkwR29FM1MwWTNVYy85Z2UzMG9wSVNISHRpLys3VEgzY2Zs?=
 =?utf-8?B?RUExVUJXTE9obmFOcjlHdk5UTG9jTlpPT00wQnZBM2pWVDh3dXBCeDVpRWtj?=
 =?utf-8?B?cUxyNXRrZnFHMGRVUXBuUTB4M3FraE04V2kwc0YvVDN5WkY5MnlNQnBUamcz?=
 =?utf-8?B?UGUxWWxoWU9sYldnMzMzYUNDYjc2MFg5VEhSWGFCanc3VnF3UDhPZ1MybHhp?=
 =?utf-8?Q?pXNB3L0UIiUUh/6qS8gjfEgPf?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ffbc363-88bb-4500-d8bd-08dcf7f7e370
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2024 08:58:42.4375 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4L0FKuBiCIyHCutdiNMC+438vzqwgiTGKyuxyndi353SNWhyFOWiQqa/sMY4BNvfY0g1H/EtfInnx5h/qLUcDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6047
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUG90dHVtdXR0dSwgU2Fp
IFRlamEgPHNhaS50ZWphLnBvdHR1bXV0dHVAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBP
Y3RvYmVyIDI5LCAyMDI0IDI6MTMgUE0NCj4gVG86IEthbmRwYWwsIFN1cmFqIDxzdXJhai5rYW5k
cGFsQGludGVsLmNvbT47IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4gaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBkcm0vaTkx
NS94ZTNscGQ6IERpc2FibGUgSERDUCBMaW5lIFJla2V5aW5nIGZvciBYZTMNCj4gDQo+IA0KPiBP
biAyOS0xMC0yMDI0IDEwOjU2LCBTdXJhaiBLYW5kcGFsIHdyb3RlOg0KPiA+IFdlIG5lZWQgdG8g
ZGlzYWJsZSBIRENQIExpbmUgUmVrZXlpbmcgZm9yIFhlMyB3aGVuIHdlIGFyZSB1c2luZyBhbg0K
PiA+IEhETUkgZW5jb2Rlci4gQWxzbyByZW1vdmUgdGhlIFdhIGNvbW1lbnQgdGFnIGFzIHRoaXMg
Zm9sbG93cyB0aGUgYnNwZWMNCj4gPiBhbmQgZG9lcyBub3QgaW1wbGVtZW50IHRoZSB3YS4NCj4g
Pg0KPiA+IHYyOiBhZGQgYWRkaXRpb25hbCBkZWZpbml0aW9uIGluc3RlYWQgb2YgZnVuY3Rpb24s
IGNvbW1pdCBtZXNzYWdlIHR5cG8NCj4gPiBmaXggYW5kIHVwZGF0ZS4NCj4gPiB2MzogcmVzdG9y
ZSBsb3N0IGNvbmRpdGlvbmFsIGZyb20gdjIuDQo+ID4gdjQ6IHN1YmplY3QgbGluZSBhbmQgc3Vi
amVjdCBtZXNzYWdlIHVwZGF0ZWQsIGZpeCB0aGUgaWYgbGFkZGVyIG9yZGVyLA0KPiA+IGZpeCB0
aGUgYml0IGRlZmluaXRpb24gb3JkZXIuDQo+ID4gdjU6IEFkZCB0aGUgYnNwZWMgbGluayBhbmQg
cmVtb3ZlIHRoZSBXYSBjb21tZW50IHRhZw0KPiA+DQo+ID4gQnNwZWM6IDY5OTY0DQo+IEkgZG9u
J3QgdGhpbmsgd2Ugc3RpbGwgYWRkcmVzcyB0aGUgd2h5PyBwYXJ0LiBUaGUgcmVnaXN0ZXIgYW5k
IGJpdCBkb2Vzbid0IGdpdmUNCj4gYW55IGV4cGxhbmF0aW9uIGFib3V0IGRpc2FibGluZyBsaW5l
IHJla2V5aW5nIG9uIHhlMyByaWdodD8NCj4gPiBTaWduZWQtb2ZmLWJ5OiBTdXJhaiBLYW5kcGFs
IDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jIHwgMTEgKysrKysrKy0tLS0NCj4gPiAgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgIHwgIDEgKw0KPiA+ICAgMiBmaWxl
cyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMNCj4gPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jDQo+ID4gaW5kZXggZWQ2
YWE4NzQwM2UyLi43YTMyYmZlZjhkODcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2hkY3AuYw0KPiA+IEBAIC0zMSw3ICszMSw2IEBADQo+ID4gICAjZGVm
aW5lIEtFWV9MT0FEX1RSSUVTCTUNCj4gPiAgICNkZWZpbmUgSERDUDJfTENfUkVUUllfQ05UCQkJ
Mw0KPiA+DQo+ID4gLS8qIFdBOiAxNjAyMjIxNzYxNCAqLw0KPiBQcm9iYWJseSBpbnN0ZWFkIG9m
IHJlbW92aW5nIGl0IHdlIGNhbiBhZGQgdGhlIGxpbmVhZ2Ugb2YgdGhlIHdvcmthcm91bmQNCj4g
KFdhXzE2MDIxMzUyODE0KSBzb21ld2hlcmUgaW5zaWRlIHRoZSBmdW5jdGlvbiBzbyB0aGF0IHdl
IGtub3cgd2h5IGFyZQ0KPiB3ZSBkaXNhYmxpbmcgbGluZSByZWtleWluZyBmb3IgdGhvc2Ugc3Bl
Y2lmaWMgaXAgdmVyc2lvbnMgYW5kIHN0ZXBwaW5ncy4NCj4gPiAgIHN0YXRpYyB2b2lkDQo+ID4g
ICBpbnRlbF9oZGNwX2Rpc2FibGVfaGRjcF9saW5lX3Jla2V5aW5nKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLA0KPiA+ICAgCQkJCSAgICAgIHN0cnVjdCBpbnRlbF9oZGNwICpoZGNwKQ0K
PiA+IEBAIC00MywxNCArNDIsMTggQEAgaW50ZWxfaGRjcF9kaXNhYmxlX2hkY3BfbGluZV9yZWtl
eWluZyhzdHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiAgIAkJcmV0dXJuOw0K
PiA+DQo+ID4gICAJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDE0KSB7DQo+IA0KPiBOb3Qg
cmVsYXRlZCB0byB0aGlzIHBhdGNoIGJ1dCBwcm9iYWJseSB3ZSBjYW4gcmVtb3ZlIHRoZSBhYm92
ZSBpZiByaWdodD8NCj4gVGhlIGludGVybmFsIGlmIGVsc2UgbGFkZGVyIHdvdWxkIHRha2UgY2Fy
ZSBvZiBldmVyeXRoaW5nLg0KDQpXaHkgc2hvdWxkIHdlIGRvIHRoZSBleHRyYSBjaGVja3MgZm9y
IG90aGVyIGRpc3BsYXkgdmVyc2lvbnMgdGhhdCBpcyB0d28gY2hlY2tzIGZvciBkaXNwbGF5X3Zl
cjwxNCBpbnN0ZWFkIG9mIGp1c3Qgb25lIGNoZWNrDQpXaGljaCB3b3VsZCBoYXZlIGhhcHBlbmVk
IC4NCg0KUmVnYXJkcywNClN1cmFqIEthbmRwYWwNCg0KPiANCj4gVGhhbmsgWW91DQo+IFNhaSBU
ZWphDQo+IA0KPiA+IC0JCWlmIChJU19ESVNQTEFZX1ZFUl9TVEVQKGRpc3BsYXksIElQX1ZFUigx
NCwgMCksIFNURVBfRDAsDQo+IFNURVBfRk9SRVZFUikpDQo+ID4gLQkJCWludGVsX2RlX3Jtdyhk
aXNwbGF5LCBNVExfQ0hJQ0tFTl9UUkFOUyhoZGNwLQ0KPiA+Y3B1X3RyYW5zY29kZXIpLA0KPiA+
IC0JCQkJICAgICAwLCBIRENQX0xJTkVfUkVLRVlfRElTQUJMRSk7DQo+ID4gKwkJaWYgKERJU1BM
QVlfVkVSKGRpc3BsYXkpID49IDMwKQ0KPiA+ICsJCQlpbnRlbF9kZV9ybXcoZGlzcGxheSwNCj4g
PiArCQkJCSAgICAgVFJBTlNfRERJX0ZVTkNfQ1RMKGRpc3BsYXksIGhkY3AtDQo+ID5jcHVfdHJh
bnNjb2RlciksDQo+ID4gKwkJCQkgICAgIDAsDQo+IFhFM19UUkFOU19ERElfSERDUF9MSU5FX1JF
S0VZX0RJU0FCTEUpOw0KPiA+ICAgCQllbHNlIGlmIChJU19ESVNQTEFZX1ZFUl9TVEVQKGRpc3Bs
YXksIElQX1ZFUigxNCwgMSksIFNURVBfQjAsDQo+IFNURVBfRk9SRVZFUikgfHwNCj4gPiAgIAkJ
CSBJU19ESVNQTEFZX1ZFUl9TVEVQKGRpc3BsYXksIElQX1ZFUigyMCwgMCksDQo+IFNURVBfQjAs
IFNURVBfRk9SRVZFUikpDQo+ID4gICAJCQlpbnRlbF9kZV9ybXcoZGlzcGxheSwNCj4gPiAgIAkJ
CQkgICAgIFRSQU5TX0RESV9GVU5DX0NUTChkaXNwbGF5LCBoZGNwLQ0KPiA+Y3B1X3RyYW5zY29k
ZXIpLA0KPiA+ICAgCQkJCSAgICAgMCwNCj4gVFJBTlNfRERJX0hEQ1BfTElORV9SRUtFWV9ESVNB
QkxFKTsNCj4gPiArCQllbHNlIGlmIChJU19ESVNQTEFZX1ZFUl9TVEVQKGRpc3BsYXksIElQX1ZF
UigxNCwgMCksIFNURVBfRDAsDQo+IFNURVBfRk9SRVZFUikpDQo+ID4gKwkJCWludGVsX2RlX3Jt
dyhkaXNwbGF5LCBNVExfQ0hJQ0tFTl9UUkFOUyhoZGNwLQ0KPiA+Y3B1X3RyYW5zY29kZXIpLA0K
PiA+ICsJCQkJICAgICAwLCBIRENQX0xJTkVfUkVLRVlfRElTQUJMRSk7DQo+ID4gICAJfQ0KPiA+
ICAgfQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggaW5kZXggNDA1ZjQwOWU5
NzYxLi4xODQ0MjAwMTFhODgNCj4gPiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aA0KPiA+IEBAIC0zODE2LDYgKzM4MTYsNyBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsNCj4gPiAg
ICNkZWZpbmUgIFRSQU5TX0RESV9QVlNZTkMJCSgxIDw8IDE3KQ0KPiA+ICAgI2RlZmluZSAgVFJB
TlNfRERJX1BIU1lOQwkJKDEgPDwgMTYpDQo+ID4gICAjZGVmaW5lICBUUkFOU19ERElfUE9SVF9T
WU5DX0VOQUJMRQlSRUdfQklUKDE1KQ0KPiA+ICsjZGVmaW5lICBYRTNfVFJBTlNfRERJX0hEQ1Bf
TElORV9SRUtFWV9ESVNBQkxFCVJFR19CSVQoMTUpDQo+ID4gICAjZGVmaW5lICBUUkFOU19ERElf
RURQX0lOUFVUX01BU0sJKDcgPDwgMTIpDQo+ID4gICAjZGVmaW5lICBUUkFOU19ERElfRURQX0lO
UFVUX0FfT04JKDAgPDwgMTIpDQo+ID4gICAjZGVmaW5lICBUUkFOU19ERElfRURQX0lOUFVUX0Ff
T05PRkYJKDQgPDwgMTIpDQo=
