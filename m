Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2OoOC7mBfGlwNgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 11:02:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 450B2B9204
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 11:02:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CA8810E947;
	Fri, 30 Jan 2026 10:02:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LjDlCSOh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A244410E941;
 Fri, 30 Jan 2026 10:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769767350; x=1801303350;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Etsq5wtIFFYxBuBnYKbADSJQvgwchwGoO4g88OSEWV0=;
 b=LjDlCSOhu3vWSZ+PN17aQAdrQs22pChx7c2/rn6r1bE4MklvVXVCPE6m
 +wF1cAUsgjnrPD/DoRSiSRyvH1dYQF2k2a3ODoY2+5FjALID75CNT1wav
 fq1akN5TTq6uoRC5boZRwgtyeHQ2N84AVAePl1BP8PBzyhz7LN91+W6aE
 eTWTV+Cw8aJz+ikD00U8QheqHjLuMiEP+CJr9eokWj9h6P8D5elfGUI6L
 V9PP/PP4gC/Q7pLR83i2XrP9kPtFPU9unFwq3MnsuL2EHqMaLL8GIkcr1
 zYiBTJTt7bJPi4l4NUrSVa97629CTC7YfjMKlZNYHRabZ17ppfSINqhw+ Q==;
X-CSE-ConnectionGUID: 4QorY7BsT8a8ZBb91wZ5Ig==
X-CSE-MsgGUID: yy9re1TPQ2S9mIk4l7A3Wg==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="70218590"
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="70218590"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 02:02:29 -0800
X-CSE-ConnectionGUID: jjTiIgt/QTOx8x7QyIy8pQ==
X-CSE-MsgGUID: Ps+sb+gKT0KIyxTSmrcDew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="213719586"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 02:02:29 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 30 Jan 2026 02:02:28 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 30 Jan 2026 02:02:28 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.69) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 30 Jan 2026 02:02:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OL6mPjXGqb+G8KNk/1/YLJ5lzMUXzKnBOtt1szJFlABkJMjwIYJqN6S1XYlC/4RH9XPkHOjMJG9VvOylBNHq0zPOR3pSIdHu+E0VaPWQ29AyZA+IyBsie+awFqwZnXkUwlJLSe933J9lqP1oOMZliOyYgMS5Xjivn66CeqQ2Wu6t15R9jl9m4eu+ZMzpupLz7UwS20Dd7cYtwHk5aoFdHBsKuYop0ZoaPJIpEjShkf6UeUtvhyI1NImNZf6Y9n10yD2PdkDfNrdbTe6HP2c10fboq9h7sPvly7g8PK6Mikq31T+p7IkPlKq06Xlwihdtnwvw9cnl8wgvcVxiQI1Pnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Etsq5wtIFFYxBuBnYKbADSJQvgwchwGoO4g88OSEWV0=;
 b=xSmXLPLNxlyJiwC8NeE57Gpzku0dtO+sRA00E8h+FLAJ6JXyVkHGQCcHEkb51lAdklNHGlrsxk9xPPy1BGGQwLnso2RhMJpgs6i1bVUX41uURg6Zenk/BG/ftfbsEmrfCwekuNAuZFwSIi57iBZwBtq82CXcumPZbsENWhl5lKQHr+JKvA9kXCw6agomey0H52w41MGziMf5XdBlCu4R8nQZl3RyfNNUIQLyE7m+kmUyBXCMo01ObwOpItWhxbK10e0xpiGNorj0julC2GYj2vZeXqyLtK6oYbC5fPKupn6ysLj385Xb8imL0M1z2anw/eCq9j0pIwklVIGwdbyNmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by IA1PR11MB7856.namprd11.prod.outlook.com
 (2603:10b6:208:3f5::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Fri, 30 Jan
 2026 10:02:27 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8%3]) with mapi id 15.20.9564.006; Fri, 30 Jan 2026
 10:02:27 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/power_well: Enable workaround for DSS clock
 gating issue (22021048059)
Thread-Topic: [PATCH] drm/i915/power_well: Enable workaround for DSS clock
 gating issue (22021048059)
Thread-Index: AQHckCp497DUccjaR0esMjQ+crWtQ7VnY6YAgAMaQwA=
Date: Fri, 30 Jan 2026 10:02:27 +0000
Message-ID: <DS4PPF69154114FDAA077C5C159BC93B42DEF9FA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260128074806.3324942-1-mika.kahola@intel.com>
 <dbf4f2f926ab41f860bfac9b22b185fc519a6815@intel.com>
In-Reply-To: <dbf4f2f926ab41f860bfac9b22b185fc519a6815@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|IA1PR11MB7856:EE_
x-ms-office365-filtering-correlation-id: facc0b7e-0a85-4cca-382d-08de5fe6ac61
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?b0RReG1RTGpDeGZSc20rcE1keGVzTnQ5aG9kSUppZGx5NUJJclNLa2h0bDZY?=
 =?utf-8?B?L2xvWEFqRm9LMkRzZUxKQmJiTG9rK0xGWGhWSkltU3BXMzdYUTFqaVhhYnY1?=
 =?utf-8?B?bi9qUHVVRTg4bHNRNXc0eUFHS0xlT3ZkWXJBU0ltRlh4d08yVjB2OHM2eWtZ?=
 =?utf-8?B?VW1kZElpQnpzaVhFMzltZnBKSVphZjdwVDdYQytPQ3RPV1JDU2lEMW82ZE5T?=
 =?utf-8?B?K1FlRFZYcW1hNmoyYnZPR21NQnRrTzNSbDZUY2pEWElJemdUdHkxVTl5SUlS?=
 =?utf-8?B?aHYwME1xaWxwYlRlenZuQWw2R3NleTZlVEtWQXh0c2l4STF3SDFPNUJ6L3JX?=
 =?utf-8?B?NlEvejFUNEdvS0MwR2prV2N5MDBXTy9QMHQyOTh4Y0V3UkcvYUZmSEFnc3lU?=
 =?utf-8?B?SGM4U0FuNFNqSGpWbERORXR4eXRFYjFqc2JIcGVTS2dTemNzbkV0dXBRUTl4?=
 =?utf-8?B?T2o3VDNZcGZOYk0rTU9xTVh4a0Fldng3WUJuaXN1VXdZakNDZnZXWFRRUmVI?=
 =?utf-8?B?QlZveUJ5VjdlVEEyYjBIY2Zkb1lQbG1nc3dCZFV0dHE4VkxqYm1UWXZtNnRV?=
 =?utf-8?B?UFI3UWJpME1qZ2ppdGd0YXpoMUpXcUlqTG9kN1lDOFJkM1UzN0hjZVdvZjZQ?=
 =?utf-8?B?RDdMTkV0TENQNW9CczBnMDZUeG1iY2FERjBrRXU3RkF3NGlsbHlKRmd3TXF1?=
 =?utf-8?B?RlVyV253VEZmYloxV0pRMVRqRTdiLzMxZ05wMnJpazJ6WWhrMUlrS1lQUEZt?=
 =?utf-8?B?Ni96amdGMURpY3A0V3cwbW1PUTBZQWIyVW81MVVEMFMycVZUMnp6SGJKQ3JG?=
 =?utf-8?B?TG5xVEFDeDhCS3pnV0kxYWpuT3R0MU05alRoVUZtRXJhV3RhMUxoZ1Nhanhj?=
 =?utf-8?B?VUFuYmhJQWFKVTBWTVhrTTIwUmIrRldheCtwSmk1N3QwMnhJS3dnUEo5dHN3?=
 =?utf-8?B?cHRDZEtZQVZnN090cE9kb3JYQVdRZ0JyZnlsUHh4MzQrMVhCSGFDb1REV2dD?=
 =?utf-8?B?MzQ5SitGalcvSzlzYjlIWDRKL2IxUm9zNis2QmZkNGVGTHRoT3BZczEwbzJK?=
 =?utf-8?B?RS8yRjBiamRpaWhhRnVlNCtYUnl0YkdpUFl3MmFsUEFOSXRSclpPUURyYUpn?=
 =?utf-8?B?TXFwZExrSHlmSFlJeG1RK21paXd4VFJJb0NjUXdnM1N6OWV6Q2EveExTdXFR?=
 =?utf-8?B?cUV2N1F6WmYwTC9Sb05ZSTJkYWZkdnhCQzVkTmN5KzRkVUZYVVU2TTZmeDZ0?=
 =?utf-8?B?U0NrWXFZNXJCbkpFRlBLZHFvSFJPM0N1TzgrZnV1ckg0c1c3dTBVSzR2OHM1?=
 =?utf-8?B?T2VtSGVKMERYaUVqelhHNzVZMm5CLzhHREkwK1M0clpDNkZka24yQjRPd1JK?=
 =?utf-8?B?N0xKMkVZS0JFUVo3SU12Z2paLy9odzh3TnRiZEhOVGtGbEpjSktTZ1VLczlx?=
 =?utf-8?B?V1RTRDl5WjZqT3NGcmZMbWhxUzArZnpaZW5mVjRiTjBhRHNpRGVweG5kVXNx?=
 =?utf-8?B?UkdWdUlreDJrVlYxK1ZhMHM2MkFDZThwTm9oeHY1cXlrd2dNUkl4NTZYdzl3?=
 =?utf-8?B?bnZwNnBaK29wLzMvMmlDa2w0bWJubC9PUU94U2ZyY3FWemppUFhUOVpZK1NG?=
 =?utf-8?B?SXBXblJiOXhlRkMzZ0ZHc1YybENlcHlIRG5wZDFEdS96SDRWM2FmRTZyWEcz?=
 =?utf-8?B?M0ZmY1l4ZXFPT0ZJVytmWXoydUZzQkE5SmlJQmtsTFBuK2UwV1dlQlh6dndE?=
 =?utf-8?B?UW5rdHd6ajBpK2xkV2Jmc0xhSVdORUJ5QWtLOFhIZ0JCaE9Pc2V4ZGtHT0xi?=
 =?utf-8?B?UnUveVhwQXEvMEZzU3poNWNkRXl5RG9RbmlHZ29mSFZsSHM4NGYrWjRaZmJB?=
 =?utf-8?B?SGRLWG9GYUY5TlRRQXhaTlAzZmc2VWQvTXg0OHI4UzkvQVVXaXFwNHBzNDNY?=
 =?utf-8?B?SzBLdFpkeGE5RThRWk04ZVNodDJDSGFzQTRiQlduL21FWmdQOEx6NGFMNHds?=
 =?utf-8?B?SWZFTXJWM3FTYTZVcDc1alNyNmdkOEhYNWFPTzU1VDZQRHVzTzlLQVhOYjdF?=
 =?utf-8?B?eDVRYXBCOVk1am0wbmlFb2h1d3RVMnhyV2NDT0NWSklCUm84L1BCb3ZVTktw?=
 =?utf-8?B?TWFWWkxkcEh5Zy9kU2JzbGlFRldxRDdJbEo0a1RJaG00KzdxS093MmxkaEhk?=
 =?utf-8?Q?PJ7NdlZB7rbCugguvWN9OtQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M29yQ1dOalFZZ2VwMHh2Znh1aithVVpCNHZPQXNRb3o3R1ladnRVOW9sUzBP?=
 =?utf-8?B?NGVIY0NTaTZLVElmVUtySHRVYU1MUm12NmQ3RG10cE9vdU9QN0xxM2pLaUJ6?=
 =?utf-8?B?QVlMWWRXbHNNTkZvUCtwQ3RhRk5keGVEWjhSWnZoTVl1S0phQ0JpRDhUU204?=
 =?utf-8?B?dGk5d2JvOHRuVzJUQ0h1S2dYOENEVEdwVGxpeGw3TlZFcHpCKzY4eHlOMTVu?=
 =?utf-8?B?YlJPbytkN2xQMTVidzU5Y001Qld5ZkJ0eWVmV3U2OFhramtGemxObTV4Q2Mr?=
 =?utf-8?B?UHhVZnpYaGROWHNrSk8zNnVzUEFQdGNGRGI3SkVQZ0lGemNUMythREdPb3JS?=
 =?utf-8?B?ZkF0ZkVuZUEvV2NCWDZ4dGxnN3VhQjBUcHdhY3dVbDBGZzVxWkU3YnJvTWRV?=
 =?utf-8?B?SlhrOXNSUDZVazdUOTZZQmFyV2Y3bkZpUUk2RmtIbEJZeW5PUlYzbVNId1dH?=
 =?utf-8?B?ck9DZFBSUCt3RUk3bzBwOVo1Ui9xZFFLQjN1VWlSeDJZRGxCSENPVWp4TXJ6?=
 =?utf-8?B?YWRyeEtBMktwZ3NqdWRsSFhDWVZmbGx1UXp1ZEkwczR2SVNrdUt2SXQ1NHdL?=
 =?utf-8?B?Z0dUUElkQ05yVkdsb0xnV1Rha2lyL2FoZzNaQ25ydmUwUkJySXNmdmNCU3NK?=
 =?utf-8?B?RzFLZDI3WXRRSlMzeUY5cjZ1L1VnZGQ3S3A4RmdFbldUbHJ4QUxEcmMyN2VK?=
 =?utf-8?B?ckNBUTBqT2d2Z2hkWHp4MjFURVdTbkVMNE8yL1VvRkEraStxNEl6ckhnelQ5?=
 =?utf-8?B?RWpIbitTVVlrby9sdTQ1QWRNcUlFVlBHUGwzcDJVdnNrZFV4akkwRVZVSGgz?=
 =?utf-8?B?Sk54d3lYTVppSlVxcUtycUptZ1AyUURzQm1iZFpTdWJrNmlMM1N2VTJBOVU3?=
 =?utf-8?B?T0xCUjgwUmpCdnZldlVoOEtRbXBmK0ZXVWdOZmZabU1KaGt5YmZPbVRMQ0FK?=
 =?utf-8?B?dURuZUp6Q3J5L2oxZC93dXc5bVA2dnhHY0hZMTI3d3pWWGhzZlcyNmFPQ0t5?=
 =?utf-8?B?T0EvRjVwNnR1MFNSbXVFT1ROemtYUmorVG1MMEE4M0ZZTkFNcHVINkhDUU5i?=
 =?utf-8?B?dDlZcVE0eFhQQmg2VnE2dUNlOElYcGhCMWQyYmkxaUpURHcxTisvK25lL1Q0?=
 =?utf-8?B?N1dyaEVua1NmR3lLNS9oRlk5Q0VlbkdDNFpkMHR3K25YTHlHeXUwdnh0NnFy?=
 =?utf-8?B?TU9DMEE3cHJMWWg5b3VtYjJESFZhTGdsUVRlYXdXSFhiZHRXQ1JSaTVVUnlK?=
 =?utf-8?B?ODVuYjFwT1FKZ2xTaHpCZGx5dDVHY1A4VU0xdEQwSDRESlY4NTZLSHdFM0JQ?=
 =?utf-8?B?VktSOTJKRFFudTFCQ2ZLQzluQWJRNUNURzlxbnlpZ3c3cnZUdHBKYTg0eWhL?=
 =?utf-8?B?RGhiTkMxdkR2aSs1ZFdoaGYzQ2ZVOGJhVW9SYTlvd3dmdElrR3FpZTgzNHBY?=
 =?utf-8?B?YVppOUtqdGxzM2d5a2R2VHBGTHRDdlZyNDRJcWhaTUQrbEpsMjFLMG83dTNK?=
 =?utf-8?B?b0tFdnJwS0RnQUd2M2ovUnQraTRRd2JWN3ZBbnUvNUJpUnJ5VUtBMmVEMlV6?=
 =?utf-8?B?RC9INzJ5MVlVS2IvMTZTeDBWcXp0Z2JqcVVXNDIzbnEvbE5mb0FPVzVsR3Q0?=
 =?utf-8?B?SVZpeGhBWTZCSmc3d2ZKQ3RGUDFCNnFkeHVHZEdmV3dDNUdFdzV2bHA3eDdV?=
 =?utf-8?B?VUl0K0xrTm1RV0M0ZnVkZnVmUy8vVVpucnFUMWE5WDByU0xMd3lSYW5iMDNL?=
 =?utf-8?B?MWtEaGFqTjVzb1YxTDFlVit4RUlsZGhWbW5Ld1pEQXlUb2YvVmU2SkRUc3lE?=
 =?utf-8?B?N0gyNFFkZmJOdDBsQTkrQ243WGJReUVvc1psV1dmT1dteUYyV28vdVp4L1py?=
 =?utf-8?B?THJiKzg5Q0cvVlczUU02L0k5NVVudWRyL00vQjU3YlQ0aXQ0cG1ZNDBxS3pN?=
 =?utf-8?B?ZHJicG92OENXU1NYZEVNUXQvMnlSeElWYmtvVDE1VWJNTGxZWFRHZ2toSTlK?=
 =?utf-8?B?b2F0SzRoVmhxTGE4SVVrMFE1RlZkWmVpWW9rb0ZQOVVCb1RFS2lKejdNNnB6?=
 =?utf-8?B?WVFEQ21PWkRtUTZ2V3VvL0VEY3g3ODFVUkFOZXZ1UE1HU1dFMGpFMFZQNmdo?=
 =?utf-8?B?VGljRFNONnYyeGpiVFV0bC9RNUlYYy96Yis3WDkwZnFPcmlZekYwclVUMlkv?=
 =?utf-8?B?NlJLV3JFNXZ3S21leDlvTHY5M0t4V2pKV1ZzNzdPdUllNUtxdmdEVUszdHZP?=
 =?utf-8?B?MmZUNTlXZ0x3NmlIWnowaUJ0V01BZlp5Z3F2b2xFV0s5dU1RNW5PZGxNcWhQ?=
 =?utf-8?B?Q3NQMlpnb2ZhS0Y3ZE9zN3NabnJTamF4dDEvR2xQTWtKalJuNitJUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: facc0b7e-0a85-4cca-382d-08de5fe6ac61
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2026 10:02:27.2288 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NIcRe1qwvrzDU98qWHHVoG7dgEKUM331MGufwoq32LB3U7yHWN67zSEwaU2x1gbBLUeCG0JJ+/h7MsxbQn2nEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7856
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 450B2B9204
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIDI4IEphbnVhcnkgMjAy
NiAxMi4zNw0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gQ2M6IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0
OiBSZTogW1BBVENIXSBkcm0vaTkxNS9wb3dlcl93ZWxsOiBFbmFibGUgd29ya2Fyb3VuZCBmb3Ig
RFNTIGNsb2NrIGdhdGluZyBpc3N1ZSAoMjIwMjEwNDgwNTkpDQo+IA0KPiBPbiBXZWQsIDI4IEph
biAyMDI2LCBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPiB3cm90ZToNCj4gPiBQ
cmV2ZW50IGRpc3BsYXkgY29ycnVwdGlvbiBvYnNlcnZlZCBhZnRlciByZXN0YXJ0LCBob3RwbHVn
LCBvciB1bnBsdWcNCj4gPiBvcGVyYXRpb25zIG9uIE1ldGVvciBMYWtlIGFuZCBuZXdlciBwbGF0
Zm9ybXMuIFRoZSBpc3N1ZSBpcyBjYXVzZWQgYnkNCj4gPiBEU1MgY2xvY2sgZ2F0aW5nIGFmZmVj
dGluZyBEU0MgbG9naWMgd2hlbiBwaXBlIHBvd2VyIHdlbGxzIGFyZSBkaXNhYmxlZC4NCj4gPg0K
PiA+IEFwcGx5IFdBIDIyMDIxMDQ4MDU5IGJ5IGRpc2FibGluZyBEU1MgY2xvY2sgZ2F0aW5nIGZv
ciB0aGUgYWZmZWN0ZWQNCj4gPiBwaXBlcyBiZWZvcmUgdHVybmluZyBvZmYgdGhlaXIgcG93ZXIg
d2VsbHMuIFRoaXMgYXZvaWRzIERTQyBjb3JydXB0aW9uDQo+ID4gb24gZXh0ZXJuYWwgZGlzcGxh
eXMuDQo+ID4NCj4gPiBXQTogMjIwMjEwNDgwNTkNCj4gPiBCU3BlYzogNjkwOTkxLCA2NjYyNDEN
Cj4gPg0KPiANCj4gU3VwZXJmbHVvdXMgYmxhbmsgbGluZS4gVGhlIGdpdCBjb21taXQgdHJhaWxl
cnMgYmVsb25nIHRvZ2V0aGVyLg0KT2ssIEknbGwgcmVtb3ZlIHRoaXMgYmxhbmsgbGluZQ0KDQo+
IA0KPiA+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+
DQo+ID4gLS0tDQo+ID4gIC4uLi9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlcl93ZWxs
LmMgICB8IDc4ICsrKysrKysrKysrKysrKysrKy0NCj4gPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcmVncy5oIHwgIDcgKysNCj4gPiAgLi4uL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuYyAgIHwgIDIgKw0KPiA+ICAuLi4vZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5oICAgfCAgMSArDQo+ID4gIDQgZmlsZXMgY2hhbmdl
ZCwgODYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXJfd2VsbC5j
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXJf
d2VsbC5jDQo+ID4gaW5kZXggNmY5YmM2Zjk2MTVlLi4xZWY0NTBmMjY4NzkgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyX3dl
bGwuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9wb3dlcl93ZWxsLmMNCj4gPiBAQCAtMTQsMTAgKzE0LDEzIEBADQo+ID4gICNpbmNsdWRlICJp
bnRlbF9jcnQuaCINCj4gPiAgI2luY2x1ZGUgImludGVsX2RlLmgiDQo+ID4gICNpbmNsdWRlICJp
bnRlbF9kaXNwbGF5X2lycS5oIg0KPiA+ICsjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9saW1pdHMu
aCINCj4gPiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfcG93ZXJfd2VsbC5oIg0KPiA+ICAjaW5j
bHVkZSAiaW50ZWxfZGlzcGxheV9yZWdzLmgiDQo+ID4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5
X3JwbS5oIg0KPiA+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIg0KPiA+ICsjaW5j
bHVkZSAiaW50ZWxfZGlzcGxheV91dGlscy5oIg0KPiA+ICsjaW5jbHVkZSAiaW50ZWxfZGlzcGxh
eV93YS5oIg0KPiA+ICAjaW5jbHVkZSAiaW50ZWxfZGtsX3BoeS5oIg0KPiA+ICAjaW5jbHVkZSAi
aW50ZWxfZGtsX3BoeV9yZWdzLmgiDQo+ID4gICNpbmNsdWRlICJpbnRlbF9kbWMuaCINCj4gPiBA
QCAtMTk0LDYgKzE5Nyw2OSBAQCBpbnQgaW50ZWxfcG93ZXJfd2VsbF9yZWZjb3VudChzdHJ1Y3Qg
aTkxNV9wb3dlcl93ZWxsICpwb3dlcl93ZWxsKQ0KPiA+ICAJcmV0dXJuIHBvd2VyX3dlbGwtPmNv
dW50Ow0KPiA+ICB9DQo+ID4NCj4gPiArc3RhdGljIHZvaWQgY2xvY2tfZ2F0aW5nX2Rzc19lbmFi
bGVfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gPiArCQkJCQkgICAg
dTggaXJxX3BpcGVfbWFzaywNCj4gPiArCQkJCQkgICAgYm9vbCBkaXNhYmxlKQ0KPiA+ICt7DQo+
ID4gKwlzdHJ1Y3QgZHJtX3ByaW50ZXIgcDsNCj4gPiArCWVudW0gcGlwZSBwaXBlOw0KPiA+ICsN
Cj4gPiArCXN3aXRjaCAoaXJxX3BpcGVfbWFzaykgew0KPiA+ICsJY2FzZSBCSVQoUElQRV9BKToN
Cj4gPiArCQlwaXBlID0gUElQRV9BOw0KPiA+ICsNCj4gPiArCQlpZiAoZGlzYWJsZSkNCj4gPiAr
CQkJaW50ZWxfZGVfcm13KGRpc3BsYXksIENMS0dBVEVfRElTX0RTU0RTQywNCj4gPiArCQkJCSAg
ICAgMCwgRFNTX1BJUEVfQV9HQVRJTkdfRElTQUJMRUQpOw0KPiA+ICsJCWVsc2UNCj4gPiArCQkJ
aW50ZWxfZGVfcm13KGRpc3BsYXksIENMS0dBVEVfRElTX0RTU0RTQywNCj4gPiArCQkJCSAgICAg
RFNTX1BJUEVfQV9HQVRJTkdfRElTQUJMRUQsIDApOw0KPiA+ICsJCWJyZWFrOw0KPiA+ICsJY2Fz
ZSBCSVQoUElQRV9CKToNCj4gPiArCQlwaXBlID0gUElQRV9COw0KPiA+ICsNCj4gPiArCQlpZiAo
ZGlzYWJsZSkNCj4gPiArCQkJaW50ZWxfZGVfcm13KGRpc3BsYXksIENMS0dBVEVfRElTX0RTU0RT
QywNCj4gPiArCQkJCSAgICAgMCwgRFNTX1BJUEVfQl9HQVRJTkdfRElTQUJMRUQpOw0KPiA+ICsJ
CWVsc2UNCj4gPiArCQkJaW50ZWxfZGVfcm13KGRpc3BsYXksIENMS0dBVEVfRElTX0RTU0RTQywN
Cj4gPiArCQkJCSAgICAgRFNTX1BJUEVfQl9HQVRJTkdfRElTQUJMRUQsIDApOw0KPiA+ICsJCWJy
ZWFrOw0KPiA+ICsJY2FzZSBCSVQoUElQRV9DKToNCj4gPiArCQlwaXBlID0gUElQRV9DOw0KPiA+
ICsNCj4gPiArCQlpZiAoZGlzYWJsZSkNCj4gPiArCQkJaW50ZWxfZGVfcm13KGRpc3BsYXksIENM
S0dBVEVfRElTX0RTU0RTQywNCj4gPiArCQkJCSAgICAgMCwgRFNTX1BJUEVfQ19HQVRJTkdfRElT
QUJMRUQpOw0KPiA+ICsJCWVsc2UNCj4gPiArCQkJaW50ZWxfZGVfcm13KGRpc3BsYXksIENMS0dB
VEVfRElTX0RTU0RTQywNCj4gPiArCQkJCSAgICAgRFNTX1BJUEVfQ19HQVRJTkdfRElTQUJMRUQs
IDApOw0KPiA+ICsJCWJyZWFrOw0KPiA+ICsJY2FzZSBCSVQoUElQRV9EKToNCj4gPiArCQlwaXBl
ID0gUElQRV9EOw0KPiA+ICsNCj4gPiArCQlpZiAoZGlzYWJsZSkNCj4gPiArCQkJaW50ZWxfZGVf
cm13KGRpc3BsYXksIENMS0dBVEVfRElTX0RTU0RTQywNCj4gPiArCQkJCSAgICAgMCwgRFNTX1BJ
UEVfRF9HQVRJTkdfRElTQUJMRUQpOw0KPiA+ICsJCWVsc2UNCj4gPiArCQkJaW50ZWxfZGVfcm13
KGRpc3BsYXksIENMS0dBVEVfRElTX0RTU0RTQywNCj4gPiArCQkJCSAgICAgRFNTX1BJUEVfRF9H
QVRJTkdfRElTQUJMRUQsIDApOw0KPiA+ICsJCWJyZWFrOw0KPiA+ICsJZGVmYXVsdDoNCj4gPiAr
CQlNSVNTSU5HX0NBU0UoaXJxX3BpcGVfbWFzayk7DQo+ID4gKwkJYnJlYWs7DQo+ID4gKwl9DQo+
IA0KPiBpcnFfcGlwZV9tYXNrIGltcGxpZXMgaXQgY2FuIGhhdmUgbXVsdGlwbGUgcGlwZXMgc2V0
LiBUaGF0IHdpbGwgbGVhZCB0byBhIHdhcm5pbmcgaGVyZS4gRG9lcyB0aGlzIG5lZWQgdG8gdXNl
DQo+IGZvcl9lYWNoX3BpcGVfbWFza2VkKCkgaW5zdGVhZD8NCj4gDQo+IFRoZSB3aG9sZSB0aGlu
ZyBpcyBhd2Z1bGx5IHZlcmJvc2UgYXMgd2VsbC4gUGVyaGFwcyBmaWd1cmUgb3V0IHRoZSBiaXRz
IHRvIHNldC91bnNldCBiYXNlZCBvbiB0aGUgcGlwZXMsIGFuZCBoYXZlIGp1c3Qgb25lDQo+IGlu
dGVsX2RlX3JtdygpIHN0YXRlbWVudD8NCg0KTGV0IG1lIHJlcGhyYXNlIHRoaXMuIEkgd2lsbCB0
cnkgdG8gc2ltcGxpZnkgdGhpcyBzdWNoIHRoYXQgb25seSBvbmUgaW50ZWxfZGVfcm13KCkgY2Fs
bCB3aWxsIGJlIHVzZWQuDQoNCj4gDQo+ID4gKw0KPiA+ICsJaWYgKCFkcm1fZGVidWdfZW5hYmxl
ZChEUk1fVVRfS01TKSkNCj4gPiArCQlyZXR1cm47DQo+IA0KPiBUaGlzIGlzIHJlZHVuZGFudC4N
Cj4gDQo+ID4gKw0KPiA+ICsJcCA9IGRybV9kYmdfcHJpbnRlcihkaXNwbGF5LT5kcm0sIERSTV9V
VF9LTVMsIE5VTEwpOw0KPiA+ICsNCj4gPiArCWRybV9wcmludGYoJnAsICJkc3MgY2xvY2sgZ2F0
aW5nICVzZCBvbiBwaXBlICVjICgweCUuOHgpXG4iLA0KPiA+ICsJCSAgIHN0cl9lbmFibGVfZGlz
YWJsZSghZGlzYWJsZSksIHBpcGVfbmFtZShwaXBlKSwNCj4gPiArCQkgICBpbnRlbF9kZV9yZWFk
KGRpc3BsYXksIENMS0dBVEVfRElTX0RTU0RTQykpOw0KPiANCj4gVXNpbmcgYSBwcmludGVyIGlz
IG92ZXJraWxsIGZvciBvbmUgbGluZS4gVGhpcyBzaG91bGQganVzdCBiZSBhIGRybV9kYmdfa21z
KCkuDQpJIGhhZCBhbiBpbXByZXNzaW9uIHRoYXQgZHJtX3ByaW50ZigpIHdvdWxkIGJlIGEgcHJl
ZmVycmVkIHdheSBidXQgbmljZSB0byBoZWFyIHRoYXQgZHJtX2RiZ19rbXMoKSBpcyBzdGlsbCBn
b2luZyBzdHJvbmcuDQoNCkkgd2lsbCBzd2l0Y2ggdG8gdXNlIHRoYXQgaW5zdGVhZCBvZiBkcm1f
cHJpbnRmKCkuDQoNClRoYW5rcyBmb3IgdGhlIGNvbW1lbnRzIGFuZCByZXZpZXchDQoNCi1NaWth
LQ0KDQo+IA0KPiBBbmQgdGhpcyBhbHNvIGFzc3VtZXMganVzdCBvbmUgcGlwZS4NCj4gDQo+IEJS
LA0KPiBKYW5pLg0KPiANCj4gDQo+ID4gK30NCj4gPiArDQo+ID4gIC8qDQo+ID4gICAqIFN0YXJ0
aW5nIHdpdGggSGFzd2VsbCwgd2UgaGF2ZSBhICJQb3dlciBEb3duIFdlbGwiIHRoYXQgY2FuIGJl
IHR1cm5lZCBvZmYNCj4gPiAgICogd2hlbiBub3QgbmVlZGVkIGFueW1vcmUuIFdlIGhhdmUgNCBy
ZWdpc3RlcnMgdGhhdCBjYW4gcmVxdWVzdCB0aGUNCj4gPiBwb3dlciB3ZWxsIEBAIC0yMDMsMTUg
KzI2OSwyMyBAQCBpbnQgaW50ZWxfcG93ZXJfd2VsbF9yZWZjb3VudChzdHJ1Y3QNCj4gPiBpOTE1
X3Bvd2VyX3dlbGwgKnBvd2VyX3dlbGwpICBzdGF0aWMgdm9pZCBoc3dfcG93ZXJfd2VsbF9wb3N0
X2VuYWJsZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gPiAgCQkJCSAgICAgICB1
OCBpcnFfcGlwZV9tYXNrKQ0KPiA+ICB7DQo+ID4gLQlpZiAoaXJxX3BpcGVfbWFzaykNCj4gPiAr
CWlmIChpcnFfcGlwZV9tYXNrKSB7DQo+ID4gIAkJZ2VuOF9pcnFfcG93ZXJfd2VsbF9wb3N0X2Vu
YWJsZShkaXNwbGF5LCBpcnFfcGlwZV9tYXNrKTsNCj4gPiArDQo+ID4gKwkJaWYgKGludGVsX2Rp
c3BsYXlfd2EoZGlzcGxheSwgMjIwMjEwNDgwNTkpKQ0KPiA+ICsJCQljbG9ja19nYXRpbmdfZHNz
X2VuYWJsZV9kaXNhYmxlKGRpc3BsYXksIGlycV9waXBlX21hc2ssIGZhbHNlKTsNCj4gPiArCX0N
Cj4gPiAgfQ0KPiA+DQo+ID4gIHN0YXRpYyB2b2lkIGhzd19wb3dlcl93ZWxsX3ByZV9kaXNhYmxl
KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiA+ICAJCQkJICAgICAgIHU4IGlycV9w
aXBlX21hc2spDQo+ID4gIHsNCj4gPiAtCWlmIChpcnFfcGlwZV9tYXNrKQ0KPiA+ICsJaWYgKGly
cV9waXBlX21hc2spIHsNCj4gPiArCQlpZiAoaW50ZWxfZGlzcGxheV93YShkaXNwbGF5LCAyMjAy
MTA0ODA1OSkpDQo+ID4gKwkJCWNsb2NrX2dhdGluZ19kc3NfZW5hYmxlX2Rpc2FibGUoZGlzcGxh
eSwgaXJxX3BpcGVfbWFzaywgdHJ1ZSk7DQo+ID4gKw0KPiA+ICAJCWdlbjhfaXJxX3Bvd2VyX3dl
bGxfcHJlX2Rpc2FibGUoZGlzcGxheSwgaXJxX3BpcGVfbWFzayk7DQo+ID4gKwl9DQo+ID4gIH0N
Cj4gPg0KPiA+ICAjZGVmaW5lIElDTF9BVVhfUFdfVE9fUEhZKHB3X2lkeCkJXA0KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVncy5o
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVncy5o
DQo+ID4gaW5kZXggOWUwZDg1M2Y0YjYxLi45NzQwZjMyY2VkMjQgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3JlZ3MuaA0KPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZWdzLmgNCj4g
PiBAQCAtMjIxMSw2ICsyMjExLDEzIEBADQo+ID4gICNkZWZpbmUgICBIU1dfUFdSX1dFTExfRk9S
Q0VfT04JCQkoMSA8PCAxOSkNCj4gPiAgI2RlZmluZSBIU1dfUFdSX1dFTExfQ1RMNgkJCV9NTUlP
KDB4NDU0MTQpDQo+ID4NCj4gPiArLyogY2xvY2sgZ2F0aW5nIERTUyBEU0MgZGlzYWJsZSByZWdp
c3RlciAqLw0KPiA+ICsjZGVmaW5lIENMS0dBVEVfRElTX0RTU0RTQwkJCV9NTUlPKDB4NDY1NDgp
DQo+ID4gKyNkZWZpbmUgICBEU1NfUElQRV9EX0dBVElOR19ESVNBQkxFRAkJUkVHX0JJVCgzMSkN
Cj4gPiArI2RlZmluZSAgIERTU19QSVBFX0NfR0FUSU5HX0RJU0FCTEVECQlSRUdfQklUKDI5KQ0K
PiA+ICsjZGVmaW5lICAgRFNTX1BJUEVfQl9HQVRJTkdfRElTQUJMRUQJCVJFR19CSVQoMjcpDQo+
ID4gKyNkZWZpbmUgICBEU1NfUElQRV9BX0dBVElOR19ESVNBQkxFRAkJUkVHX0JJVCgyNSkNCj4g
PiArDQo+ID4gIC8qIFNLTCBGdXNlIFN0YXR1cyAqLw0KPiA+ICBlbnVtIHNrbF9wb3dlcl9nYXRl
IHsNCj4gPiAgCVNLTF9QRzAsDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuYw0KPiA+IGluZGV4IDg2YTZjYzQ1YjZhYi4uZjhlMTRh
YTM0ZGFlIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV93YS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3dhLmMNCj4gPiBAQCAtODQsNiArODQsOCBAQCBib29sIF9faW50ZWxfZGlz
cGxheV93YShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgZW51bSBpbnRlbF9kaXNwbGF5
X3dhIHdhLA0KPiA+ICAJCXJldHVybiBpbnRlbF9kaXNwbGF5X25lZWRzX3dhXzE2MDI1NTczNTc1
KGRpc3BsYXkpOw0KPiA+ICAJY2FzZSBJTlRFTF9ESVNQTEFZX1dBXzIyMDE0MjYzNzg2Og0KPiA+
ICAJCXJldHVybiBJU19ESVNQTEFZX1ZFUngxMDAoZGlzcGxheSwgMTEwMCwgMTQwMCk7DQo+ID4g
KwljYXNlIElOVEVMX0RJU1BMQVlfV0FfMjIwMjEwNDgwNTk6DQo+ID4gKwkJcmV0dXJuIERJU1BM
QVlfVkVSKGRpc3BsYXkpID49IDE0Ow0KPiA+ICAJZGVmYXVsdDoNCj4gPiAgCQlkcm1fV0FSTihk
aXNwbGF5LT5kcm0sIDEsICJNaXNzaW5nIFdhIG51bWJlcjogJXNcbiIsIG5hbWUpOw0KPiA+ICAJ
CWJyZWFrOw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfd2EuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3dhLmgNCj4gPiBpbmRleCA0MGY5ODlmMTlkZjEuLjc2NzQyMGQ1ZjQwNiAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
d2EuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV93YS5oDQo+ID4gQEAgLTM0LDYgKzM0LDcgQEAgZW51bSBpbnRlbF9kaXNwbGF5X3dhIHsNCj4g
PiAgCUlOVEVMX0RJU1BMQVlfV0FfMTYwMjM1ODgzNDAsDQo+ID4gIAlJTlRFTF9ESVNQTEFZX1dB
XzE2MDI1NTczNTc1LA0KPiA+ICAJSU5URUxfRElTUExBWV9XQV8yMjAxNDI2Mzc4NiwNCj4gPiAr
CUlOVEVMX0RJU1BMQVlfV0FfMjIwMjEwNDgwNTksDQo+ID4gIH07DQo+ID4NCj4gPiAgYm9vbCBf
X2ludGVsX2Rpc3BsYXlfd2Eoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGVudW0NCj4g
PiBpbnRlbF9kaXNwbGF5X3dhIHdhLCBjb25zdCBjaGFyICpuYW1lKTsNCj4gDQo+IC0tDQo+IEph
bmkgTmlrdWxhLCBJbnRlbA0K
