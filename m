Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F936A4E041
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 15:09:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 005C710E5E2;
	Tue,  4 Mar 2025 14:09:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G0BqxIX+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5731710E5EE
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 14:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741097362; x=1772633362;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=7B1QxgLtq66H74b6CZHktQuEfFPEkE6R/a8tp7yT8sY=;
 b=G0BqxIX+7Q6S/WEfc4DqhSNN8o6TojVgkW1mOSOvcpjwVGxRxRt/yLRn
 dqLZdmztFkkTJpl8+eQQr3kID/58iSXNVqnCZ7NaYWRj1ESXvGP+4YbNZ
 xqMb/ITHt/IT8z+ochaY0rIbCCis1/CWmsmTimWQ4KKMK7YvdJKGr3g2D
 zKL0sBKM+7g8+jDMkAPD/07Bn45jEu02sKJzR2GBFH4G+p0hmfhOox8Ia
 zCUygUXm1IAdXENhcePyHQX6ZkCz7H6FH+c/J2AubKDnRhEtLrc/hxTNH
 tzzLo0XjwfeRJ1LtjwglQK1HYXW7UPgDqb96VACowZZXGBcMTDHIB/b/y w==;
X-CSE-ConnectionGUID: TPWGpxxfTbuXZ1lZS92p0g==
X-CSE-MsgGUID: C9Za42IZT46W3KNAdNTYew==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="29604165"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="29604165"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 06:09:22 -0800
X-CSE-ConnectionGUID: mVdouBENSKWkL4oT6UTWsA==
X-CSE-MsgGUID: 3lyyFH/ZR8OTlezOZ0T8zA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="123321635"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 06:09:22 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 4 Mar 2025 06:09:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 06:09:21 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 06:09:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AJXqbhiqczstSVtGIA4iS06q6gOB8h8M9LH/HyjIr4x2yTBLqdj4ZNaWaQuS08RjaYDuf3uXoPFdNUZdsK3pq3fyxWUopseFySc9aeWvsq0XC70Q6d4qOQR82jT3xXPKhLtB/SAMx0qbG7n4rvCeQ69DIwQAi7TShUWU4p/2j3zfi0WCNgIM3zNRRSTmVkLzahgCfYDohyq8wy0EXla/J6JdAypYq/QBfphgPodd1zTHf0Q6US86YeowdSX9aF9Rwl3FDaQCq3xDH5lf7v5ZUpap0lUiUQh1yoMWdyISQc5JPpr/6mKuzvkvgkyONwRTiVHa6dTH5/SBf7IcDdffYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7B1QxgLtq66H74b6CZHktQuEfFPEkE6R/a8tp7yT8sY=;
 b=KAb+L4djnPXRrQ7Dl/2XoOMl7MjAERYmZwtrY2xvSE27KL47qG8I7QuXzcGc1FAjA/f/nFZUKOL+PSHVUO9vm2TCCdSoBLrU55Y4LDXxO/txo9mFDeew8N47V5ndSJIiPQz41A9oP2ISbsxmHoaST4eUfXTdBZ24M4XYdzZ3LdSLu7JLeCrLxVVMvHN6Dz07Uh5OIyNKC5OkektrGFfxVjdwc3+TfQs2ZceeX9unHfXYgNBvIQIGiZWGkV29REPNN/BLyMLsKGeYH1+0HF+f7Gvg5Zcmz/DY8kWz4QV5Gp1C2Gzw+4zeLmeWcf77WKcBmL6KMnvhTJCzR4ffZ604+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CO1PR11MB4979.namprd11.prod.outlook.com (2603:10b6:303:99::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.17; Tue, 4 Mar
 2025 14:08:42 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8511.015; Tue, 4 Mar 2025
 14:08:42 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 11/19] drm/i915: Extract intel_bw_update_hw_state()
Thread-Topic: [PATCH 11/19] drm/i915: Extract intel_bw_update_hw_state()
Thread-Index: AQHbgkrxdFdgPzphvUSJU4o5HqGKLrNjGUYA
Date: Tue, 4 Mar 2025 14:08:42 +0000
Message-ID: <dcd6e57e66f28107d21fe7c35c6a38e757862025.camel@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-12-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218211913.27867-12-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CO1PR11MB4979:EE_
x-ms-office365-filtering-correlation-id: aa2421ed-4839-40b3-b76a-08dd5b26120e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?L3FNaGVHeUtEVGxSdnJNbEdsSHFGRzRvNG81Mlg3VkVaNUU4a292bjV5RFN2?=
 =?utf-8?B?SklTZ3hsc1hTelFuSC91MFdTL0xqZDI0bTV3NVlHdS94MHBnV1dxZUtKZWo3?=
 =?utf-8?B?dDQ5SEhTQ2Jyb1hKOWxWSkFOVXlFZHpJSGdLZEF0VC9zQVBNRmJMdnpmaHpW?=
 =?utf-8?B?OWhnMFVoc1pnSzRYYVVOU0ZQNm5hTkFieERFNnB1OENRVmlBQUR3Z1RnMDhD?=
 =?utf-8?B?RG9mU3RHY1lyM2N2N1dub3p5MThjZDJqeFp0K0pkTkp2ejBNc2pzbzI2SUFt?=
 =?utf-8?B?dXpOdmpoV3ZsMlNERTZZSGgzR21kalhRQ1plUVJGb1RaNUI5NjJYV3ZBQ2w1?=
 =?utf-8?B?ZDFnY1hMVW1Jemhoa29KcXBtRUlyQjI1K2FRRWdUamJLWWRZSWJIdzZXdDRL?=
 =?utf-8?B?YWtUYU55VjhEQzZOdWhqeTVkaHlzV0pGNVd5VlA3eGdmdjJ4NWt6TnlCMC9X?=
 =?utf-8?B?Z0tDbWRpT2ROUWFNc3d6QW9NcWRmSDRXajRwZTdEK2NmQlJHWUJzQ2poQjJY?=
 =?utf-8?B?czVOWUFpU09LMmJGTEN0dUNKTTZSQysrLzdXTnI1K2p4dTlsdDN5a3h1bFIw?=
 =?utf-8?B?dCtIeGhjbVpEOTlja3RpNTFHSzhTa1pvWk5xYmgwSXBxYURMN2pIcTJjUlBw?=
 =?utf-8?B?dmp1dlB3N1U5T21pT2QrejhnbWM1MXNhMjc5aWRROUtnOGIyNktneWppeVZH?=
 =?utf-8?B?dkZaQWtFZzR3NjQ4c3VyRHkyWm5JRk5ZYzA4T1laM2hIVDlQYmJLQ0ZmdUlo?=
 =?utf-8?B?VzJoRnY0S2JhbUFaNUR5SkRhYmR3Vkh3U2EvRE5FdGoza3o5dFZwVjhTQmtv?=
 =?utf-8?B?V3VYdzU2ekduTHQzMFlYR09ZRVhka1lIekxPTnZFd2tHUzdRVUlBSkNPd2Uw?=
 =?utf-8?B?dm9OaUxWQ2JCQXlZeFNxUWttTFJlOTJLakZQYmd3dmVkRU54L2h6SFFteG1n?=
 =?utf-8?B?bVBQRmlxemUyeFNzZVRoVTBROEx1ekdHOGYyWkxFVkJxZ3F2cVd0L3lsczVU?=
 =?utf-8?B?bXR5U3BaQk1ud3QvNlNXaExwTnVtU0hDWVplUXJMUFpFemZld2hqQUJ4SXhw?=
 =?utf-8?B?ZHFYVElBcnArMFU5ZzF1S2hxcjl4QXpiQVZIU21BQy9iTXNRc3M4OWkyeTJt?=
 =?utf-8?B?a2xvZXZocGl2bzBXTXNwMWFPdWtpbDZpb0FqL1ZPWWN0aWk1L09JVXlhRVFT?=
 =?utf-8?B?ckdBSXgydmNzR21iWHZ4ZU9xaUtnYWFyVGYwTjdvY25xZk9wUFhmTjN2SCtx?=
 =?utf-8?B?ZzBHeGtERFlTb1cyeVQ3R0F6QVNQT1U2STcxTEExSFRBeXRXZFJ5d25PYlMz?=
 =?utf-8?B?dVdzREZBMGw2VHhldktkbTR1NnZSWkxSTkw4NEFwMkcydGw5RGFocTBjdmd0?=
 =?utf-8?B?cytsLyt3Lzc2VzRFVHQ4eHdXakpzNTJUNkM5RWtYQ3FHMHFPYVVLTzQrK1NP?=
 =?utf-8?B?Z3p1bWREeWhodVZsbHVzMXlnRGsvaUo4WU5BZk9kSWpQSHhlSlNtd2RRN01G?=
 =?utf-8?B?ZFBlUEUxcDBicjhBdFp5OFdnSGVaUDQ0c2tPY3Q2WlgwKzlYYzZ2ZnNuSlB4?=
 =?utf-8?B?MmE0WUhPQzhWcnNWM3NaKzNTY0c0ODJnUlBmR0kwWTFMQ3NuQUVZK3pFMU9a?=
 =?utf-8?B?eDBOQUJJU2V3cXFENXNqTHMzbStuZVZBbmtrTFc0c01TdXZFdE5jOFdXYS9o?=
 =?utf-8?B?RXZKOE5Ndk41eVlteG1PL3N1VVZJUEZobEY1S2Q4dWdseTU5Nk9hTG5kY1dY?=
 =?utf-8?B?YmtTWi8yaWZ6aW1hSytZanpSVjgzcFFyZHVCM3ZtTi9IYmk5cVZYSVhSVmJ5?=
 =?utf-8?B?ZUJiYXEvbVU0NW9Sd3l0d1FTUC91Y1l3ODl2dDk4Vnh0SFVIbkFOanppc3ZX?=
 =?utf-8?B?S0dESWdrck5CVWtmTUhXbFFQMVA5WWx3Q2FUUzZQSFhwemJuaW03bjUwNFA1?=
 =?utf-8?Q?s2vbWSqtAlzcedd+HAzR0dvCV5Un9oj1?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cERkRnk0anBLc0x2cTAzajF3MHk3M01Vd1laN3NJSEd4QlFma2duRFAvRWlF?=
 =?utf-8?B?RytTT005ZGJxNTg2a1JHY3BZdFE3c3R3Skw0RmxNS1ZpejdrM2Q3VVZhU1Nh?=
 =?utf-8?B?dDBKaXpleTVxdVJnN3FZUGtwZFp5Qms3QzRjVmRDblJGb0svVzIwdDhqYm1r?=
 =?utf-8?B?MUVObktWQXE5VTBYTEVQZi9GUERkWFFKSm8vQzFLNm1XekV1US8xLzVPcThs?=
 =?utf-8?B?N1d4T0pDSk55TEU5NEtxY1ZwRlhLQlJqR0hKeVZhSUtTLzlxZDROQXhja2x5?=
 =?utf-8?B?UVRVQlVYMDNNUEp4SzIvRm1hY0hlSTcwNDR4VzV0b2k1L2pQRUZJSmVZSUtV?=
 =?utf-8?B?VVFDZENEcXVGMjRmNExUZ0RJeGVKQTU2MmNxNEF4aGI5MFJRR3FaZXVhZVgy?=
 =?utf-8?B?clhESGRndzhqVzNIOFB2T1JGSWRhZzlYR1FmcXc5SER5Q1JneWgrd2x6VnlN?=
 =?utf-8?B?K25PanAwM2NoVWZIWFkwQ1grOVdXZ1ZFQkFTTldMMWxCaGhIaFVVSGpFeXo4?=
 =?utf-8?B?US82R2tZSFdLK1pZRlZVZkFiM05FTjdwejhOTW8rZ1BwN2t5ZTlwcjFlbzdI?=
 =?utf-8?B?aUxXS2FGaWhJcVUzWGtUWHlzcjdQTFA2VjFMUUFwUE9STVd4RGFvbHR4SXk1?=
 =?utf-8?B?dGZSY2NkQXJ4Mk4vb21McWE5eVczeGtjNTUzT21WbVV6amlST0VjdFJKbUxX?=
 =?utf-8?B?WE9MZFV3dGtzZWdOUEhmWktCUlhEU3F3MzhEdlVMUlJwVWVZRUN6LzJYZm85?=
 =?utf-8?B?VURMa2hBME0wSGwvMmQ1TXJFcjFFQXFZVFhWU0c4R2F2eWlYb3BxYVJEZGtC?=
 =?utf-8?B?R3VqeDNibjZsbi9FNktwT3JYWVU2UnJqTU9GcXRTZXBlK0d3YzRlZVlnUmQv?=
 =?utf-8?B?MVZFUlpIb3VvQTJ6Z1YrdUpwZi81ajhSUC9Pa3hDd1RtdG90S25SVW5lUUxX?=
 =?utf-8?B?TGR6bVB4ZGl4QllTTmJUZElNSWNsQnlRaUowSTZZQ3ExdDVMTThsS2ROL2NV?=
 =?utf-8?B?Zm5wN2VQZmRuUmpqeW5EZWN1TkVhaTFiQlZ1NzRsbmo0R2pobWdPWjZsWlpH?=
 =?utf-8?B?d216dHVSVnlpQ0cvY1VtYStMdmZWQ0JEdnJ6Mmd5YnJKNGxlTWlaa2RMN2xC?=
 =?utf-8?B?TTYxbjVyV3BTRzI2NVhPM2hCRjEwS2dGaXgxOG1RMDcrelN2QnNrSUd0aUhs?=
 =?utf-8?B?alRtSFJzdDRNTGZ6bW1LWnBab29TalMxT0RNdlFZQnNqRkNTRW9MM01xTENT?=
 =?utf-8?B?Y0VBb1BpTnViZGx0ZVR1UWZKL3o4dVRMcG1UVkJXQ0ltSi9iQVB1TGFJVHE2?=
 =?utf-8?B?K2tDMzY5QllxR1czOXhtR3BIYjEzbEZTaGRXL1hhTVRzOVFqQkVIaGQ5QUNU?=
 =?utf-8?B?M3hqUi9sUWUwTW9hTUN3dEM4aVcwdER1NjBuMjBiem5MSnlGa292VnZyZEZM?=
 =?utf-8?B?MDQxQVJINEpLa1c1bkhDdSt6ZXkxbUJRSXRYYUhmd1N2S3lwZ0hVVmVQdHo4?=
 =?utf-8?B?RjhTVjRiVVpHSXdZZ3QwYytkWlNYbDJPL1JzRy9lVVhZR2hNTWxqUGdYaHN1?=
 =?utf-8?B?UXpCZ2l1cis4ZW92Zi9OSzFmdnlGMHJrbmt2TjRJdm1PQ3FrS1JOdW9kZ3pY?=
 =?utf-8?B?cjcwaDYzZ1ZzVVFmaWlvN0RRbjVLUisyODl2ZFBHaGlTVnNnalVrWERjSk5T?=
 =?utf-8?B?aTZLdVBDditPMjMrT3g2S3Z1N1dYS0N2eFhpWTNPdzYzdUwyaWI3THYzUjBS?=
 =?utf-8?B?UXdrQTJ5QU5NZUd4OU5pU0R6aG92WStsd3d1OVhma0R1ZEg1UExOZ3BPM1M1?=
 =?utf-8?B?d21MWE41KzZXYm52VFZESWZQS2VLQ0NSbWpwODNMTk1ib09LUXF2ZkhmZElw?=
 =?utf-8?B?YWJuWWlNYnpvN2JJbFE3T3JBcjFuNTRtQmlRL1hlRTNzYTFCK2V3QVM5bXJl?=
 =?utf-8?B?dXFoOEZEdmwxVEhTREx5Ni9pY2kzUDl3MHowMGlxM1Bta1UwdVhxMml4MXNT?=
 =?utf-8?B?dnFvZjJDanhHNU1iWk5tRmxCa0p3RHRaUUFOSkxTcEMyeW5aWDRaQ1FDSUlW?=
 =?utf-8?B?NlBHV01RZmVyQlRHSENaRE9wdVRkcHRYYkZRQ3pHK0VUT0VqdGRKQkxLbm5j?=
 =?utf-8?B?eDNWTzRUc2RreHJna3BaNU1pOHd3QncvRitmTEhMM1dDdzV5ZGpXQnNLNklF?=
 =?utf-8?Q?hqC3r1XXsBmuD7UXe2M00RA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0A01204CC98DF640B869930C8FC2E655@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa2421ed-4839-40b3-b76a-08dd5b26120e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 14:08:42.5775 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CM4Yi3SYRWBGAWo6UCL2pBFrqSBxLcbcOSBsGAILUBNvSKWIbt7lb6FDeLNBtIwAOYKRyyiny1NO0KSw6wGoYebKkgHI+YJJ22s86qQVakc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4979
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

T24gVHVlLCAyMDI1LTAyLTE4IGF0IDIzOjE5ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gSG9pc3QgdGhlIGJ3IHN0dWZmIGludG8gYSBzZXBhcmF0ZSBmdW5jdGlvbiBmcm9tDQo+
IGludGVsX21vZGVzZXRfcmVhZG91dF9od19zdGF0ZSgpIHNvIHRoYXQgdGhlIGRldGFpbHMNCj4g
YXJlIGJldHRlciBoaWRkZW4gaW5zaWRlIGludGVsX2J3LmMuDQo+IA0KPiBXZSBjYW4gYWxzbyBz
a2lwIHRoZSB3aG9sZSB0aGluZyBvbiBwcmUtc2tsIHNpbmNlIHRoZSBkYnVmIHN0YXRlDQo+IGlz
bid0IGFjdHVhbGx5IHVzZWQgb24gdGhvc2UgcGxhdGZvcm1zLg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0t
DQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jwqDCoMKgwqDCoMKg
IHwgMjEgKysrKysrKysrKysrKysrKystLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYncuaMKgwqDCoMKgwqDCoCB8wqAgNCArKy0tDQo+IMKgLi4uL2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfbW9kZXNldF9zZXR1cC5jwqDCoMKgIHzCoCA1ICstLS0tDQo+IMKgMyBmaWxl
cyBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCg0KUmV2aWV3
ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29t
Pg0KDQoNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiBpbmRleCA0
MTdkMmQ1MjdhZTQuLjAwOTBlZTdlNzNhMSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYncuYw0KPiBAQCAtODA2LDggKzgwNiw4IEBAIHN0YXRpYyBpbnQgaW50ZWxf
YndfY3J0Y19taW5fY2RjbGsoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpDQo+IMKgCXJldHVybiBESVZfUk9VTkRfVVBfVUxMKG11bF91MzJfdTMyKGludGVsX2J3X2Ny
dGNfZGF0YV9yYXRlKGNydGNfc3RhdGUpLCAxMCksIDUxMik7DQo+IMKgfQ0KPiDCoA0KPiAtdm9p
ZCBpbnRlbF9id19jcnRjX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYndfc3RhdGUgKmJ3X3N0YXRlLA0K
PiAtCQkJwqAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICtz
dGF0aWMgdm9pZCBpbnRlbF9id19jcnRjX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYndfc3RhdGUgKmJ3
X3N0YXRlLA0KPiArCQkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSkNCj4gwqB7DQo+IMKgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0Yyhj
cnRjX3N0YXRlLT51YXBpLmNydGMpOw0KPiDCoAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOw0KPiBAQCAtMTQyMiw2ICsxNDIyLDIzIEBAIGlu
dCBpbnRlbF9id19hdG9taWNfY2hlY2soc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUp
DQo+IMKgCXJldHVybiAwOw0KPiDCoH0NCj4gwqANCj4gK3ZvaWQgaW50ZWxfYndfdXBkYXRlX2h3
X3N0YXRlKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiArew0KPiArCXN0cnVjdCBp
bnRlbF9id19zdGF0ZSAqYndfc3RhdGUgPQ0KPiArCQl0b19pbnRlbF9id19zdGF0ZShkaXNwbGF5
LT5idy5vYmouc3RhdGUpOw0KPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOw0KPiArDQo+ICsJ
aWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgOSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJZm9y
X2VhY2hfaW50ZWxfY3J0YyhkaXNwbGF5LT5kcm0sIGNydGMpIHsNCj4gKwkJY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiArCQkJdG9faW50ZWxfY3J0Y19zdGF0
ZShjcnRjLT5iYXNlLnN0YXRlKTsNCj4gKw0KPiArCQlpbnRlbF9id19jcnRjX3VwZGF0ZShid19z
dGF0ZSwgY3J0Y19zdGF0ZSk7DQo+ICsJfQ0KPiArfQ0KPiArDQo+IMKgdm9pZCBpbnRlbF9id19j
cnRjX2Rpc2FibGVfbm9hdG9taWMoc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+IMKgew0KPiDC
oAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY3J0Yyk7
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3Lmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmgNCj4gaW5kZXggYmQ5NGRk
ZTIwN2VlLi4zMzEzZTRlYWM0ZjAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYncuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2J3LmgNCj4gQEAgLTE2LDYgKzE2LDcgQEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7
DQo+IMKgc3RydWN0IGludGVsX2F0b21pY19zdGF0ZTsNCj4gwqBzdHJ1Y3QgaW50ZWxfY3J0YzsN
Cj4gwqBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsNCj4gK3N0cnVjdCBpbnRlbF9kaXNwbGF5Ow0K
PiDCoA0KPiDCoHN0cnVjdCBpbnRlbF9kYnVmX2J3IHsNCj4gwqAJdW5zaWduZWQgaW50IG1heF9i
d1tJOTE1X01BWF9EQlVGX1NMSUNFU107DQo+IEBAIC03NCwxNCArNzUsMTMgQEAgaW50ZWxfYXRv
bWljX2dldF9id19zdGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSk7DQo+IMKg
dm9pZCBpbnRlbF9id19pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7
DQo+IMKgaW50IGludGVsX2J3X2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KTsNCj4gwqBpbnQgaW50ZWxfYndfYXRvbWljX2NoZWNrKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlKTsNCj4gLXZvaWQgaW50ZWxfYndfY3J0Y191cGRhdGUoc3RydWN0IGludGVsX2J3
X3N0YXRlICpid19zdGF0ZSwNCj4gLQkJCcKgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKTsNCj4gwqBpbnQgaWNsX3Bjb2RlX3Jlc3RyaWN0X3Fndl9wb2ludHMoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiDCoAkJCQnCoCB1MzIgcG9pbnRzX21h
c2spOw0KPiDCoGludCBpbnRlbF9id19jYWxjX21pbl9jZGNsayhzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSwNCj4gwqAJCQnCoMKgwqAgYm9vbCAqbmVlZF9jZGNsa19jYWxjKTsNCj4g
wqBpbnQgaW50ZWxfYndfbWluX2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0K
PiDCoAkJwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9id19zdGF0ZSAqYndfc3RhdGUp
Ow0KPiArdm9pZCBpbnRlbF9id191cGRhdGVfaHdfc3RhdGUoc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXkpOw0KPiDCoHZvaWQgaW50ZWxfYndfY3J0Y19kaXNhYmxlX25vYXRvbWljKHN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gwqANCj4gwqAjZW5kaWYgLyogX19JTlRFTF9CV19IX18g
Ki8NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9k
ZXNldF9zZXR1cC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9tb2Rl
c2V0X3NldHVwLmMNCj4gaW5kZXggMWNmYTAzYmQzMjI0Li43MGZhZDlmODljZWEgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF9zZXR1cC5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF9zZXR1
cC5jDQo+IEBAIC04MjUsOCArODI1LDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfbW9kZXNldF9yZWFk
b3V0X2h3X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiDCoAlkcm1fY29u
bmVjdG9yX2xpc3RfaXRlcl9lbmQoJmNvbm5faXRlcik7DQo+IMKgDQo+IMKgCWZvcl9lYWNoX2lu
dGVsX2NydGMoJmk5MTUtPmRybSwgY3J0Yykgew0KPiAtCQlzdHJ1Y3QgaW50ZWxfYndfc3RhdGUg
KmJ3X3N0YXRlID0NCj4gLQkJCXRvX2ludGVsX2J3X3N0YXRlKGk5MTUtPmRpc3BsYXkuYncub2Jq
LnN0YXRlKTsNCj4gwqAJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0NCj4g
wqAJCQl0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3RhdGUpOw0KPiDCoAkJc3RydWN0
IGludGVsX3BsYW5lICpwbGFuZTsNCj4gQEAgLTg4MCwxMCArODc4LDkgQEAgc3RhdGljIHZvaWQg
aW50ZWxfbW9kZXNldF9yZWFkb3V0X2h3X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQ0KPiDCoA0KPiDCoAkJaW50ZWxfcG1kZW1hbmRfdXBkYXRlX3BvcnRfY2xvY2soZGlzcGxh
eSwgcG1kZW1hbmRfc3RhdGUsIHBpcGUsDQo+IMKgCQkJCQkJIGNydGNfc3RhdGUtPnBvcnRfY2xv
Y2spOw0KPiAtDQo+IC0JCWludGVsX2J3X2NydGNfdXBkYXRlKGJ3X3N0YXRlLCBjcnRjX3N0YXRl
KTsNCj4gwqAJfQ0KPiDCoA0KPiArCWludGVsX2J3X3VwZGF0ZV9od19zdGF0ZShkaXNwbGF5KTsN
Cj4gwqAJaW50ZWxfY2RjbGtfdXBkYXRlX2h3X3N0YXRlKGRpc3BsYXkpOw0KPiDCoA0KPiDCoAlp
bnRlbF9wbWRlbWFuZF9pbml0X3BtZGVtYW5kX3BhcmFtcyhkaXNwbGF5LCBwbWRlbWFuZF9zdGF0
ZSk7DQoNCg==
