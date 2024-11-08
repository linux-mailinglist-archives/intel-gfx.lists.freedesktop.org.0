Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB759C1759
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 08:56:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CDE310E0C7;
	Fri,  8 Nov 2024 07:56:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Egsg1TcL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEF3810E0C7;
 Fri,  8 Nov 2024 07:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731052601; x=1762588601;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SSzjhYVmFjs9+3nOS8ybnpfQDm3oMkXyPD7KTusUAj8=;
 b=Egsg1TcLnc4zJP7Ng1i7xCm/lkttmAGnu7fmnZQcKPgb3MmvWgB/Qpu+
 2LPcEJxZJ5WqpZ1Lqkt8WzSayWMLazIUhWgzYs68+AdTFk+tcT8p2Xdir
 rl/3j93nWiAFdiyu2VjtJcRV+5jajCn+2BK8IKL/DqmuE6kcevKKDlKsF
 o7vG8i4/wmzQwBdChoZjZEMJfYqANhgUgJRcUi/AOht7MG3IDFNffhqlT
 5PH3C+R5AdSp4EeqCdEjOaq9MbGeefNc3Tn/idi0LYoAPeWhuIo0ULF/J
 AsBSeTGXaCPkzzI2PusmJ/eCVSAib3nbt9EWGb/rKzxVND41EX6OixUVb Q==;
X-CSE-ConnectionGUID: Vt0gIQHdR5aAEdtmgAoyiw==
X-CSE-MsgGUID: w5wCn3UoQsqrAeV0uDPXqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="41534629"
X-IronPort-AV: E=Sophos;i="6.12,137,1728975600"; d="scan'208";a="41534629"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 23:56:41 -0800
X-CSE-ConnectionGUID: JvezmilTRQepDlAuWGVTOg==
X-CSE-MsgGUID: +UPXvSK2Qlu+/suAbg50oA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,137,1728975600"; d="scan'208";a="85668667"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2024 23:56:40 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 7 Nov 2024 23:56:39 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 7 Nov 2024 23:56:39 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 7 Nov 2024 23:56:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bSXgI0LBgPLCXNPj8Gqk/7ZaJ8EbgzI3dTxES32FyW3uzuOWteMck+DSTfUS0QTRiMt7VViUzX8His9vw9+8Wxqgi/3JwEh8uoNkbR3igxMfosx8gdWGGdtUrJAei8B2Lfg2czUg6z8qEAPF2/oTqavwf+95R5wRz4v82Db50rsM99BAIj6QmsKWeXQe6qrffnaGw7ls2yvf9kfUNhg+Ek1UXGuqyMWRpiKRBExR7oBXlVQ3WhZWOu0TXw2v8LDH6rB3R623yVL1u69mQV4LB3m19NSO/TfAeb+hTPvO+JpU5FgStCoi4LwL2mVFhT4Worc2uqUMVw3/8w+CUUgjcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SSzjhYVmFjs9+3nOS8ybnpfQDm3oMkXyPD7KTusUAj8=;
 b=VZbBt9gXg9WVZ5+6xNvN9nAaCAqVkP77AxCFsr8LAyyOHmpnHKz2hVbEiRew5kar0FcanBY6Jw2NHjFhaYDiH1F3C+c4dB4Nhyu+QqCXFyyO1M/+LU2+79A/oiOp7zjzOucpPZ8EEAbBrI8Dbsl9oIlL02qi0WQPcHAcHQZyjrmNZoafDIpPeBO298hs2ecpfjEJJ2Bf6KKSqehWAsnxgZV1vmR0KRA9kvuHCvkaFuKuKpwz9st09E0b4Chlmys51F+Iqezj+WG+bfXsOmzMZEixKN1pMegTz9rjOFwrg1UaJVUN3ARenWtafSW47dWdLD5NSSH3I11pZs20dTiZww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by SA1PR11MB8474.namprd11.prod.outlook.com (2603:10b6:806:3ac::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Fri, 8 Nov
 2024 07:56:34 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::3ac4:e20e:84f1:f826]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::3ac4:e20e:84f1:f826%7]) with mapi id 15.20.8137.018; Fri, 8 Nov 2024
 07:56:34 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/psr: Disable Panel Replay as well if VRR is
 enabled
Thread-Topic: [PATCH] drm/i915/psr: Disable Panel Replay as well if VRR is
 enabled
Thread-Index: AQHbK2xyoDtsinLzk0WKZN45G0hKCbKtEDXA
Date: Fri, 8 Nov 2024 07:56:34 +0000
Message-ID: <CY5PR11MB6344C7BDA3DDFFBFF2DC1CA7B25D2@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20241031081025.3215966-1-jouni.hogander@intel.com>
In-Reply-To: <20241031081025.3215966-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|SA1PR11MB8474:EE_
x-ms-office365-filtering-correlation-id: 4ba2c78f-2771-4f59-ad54-08dcffcaddbf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aktFUjI4MC92NDlTaFdmNzI0dlltQUF5eTJIckxnWEMwS1N5Vy9WQ2lNTXc0?=
 =?utf-8?B?K2F3aEdkUWVYVUZrRlhSVzVEczA4UFA4MEhSRHdhcm5OVS9XckJ1aGJ1b2Vr?=
 =?utf-8?B?TmtJTHlEU2U3WGtWTDZyOHRwSVdNODdEOXRseTBEN3gwOWYzMDFnZkUwYkh0?=
 =?utf-8?B?SHkyYXV2a3VxWE1yMDU4eHlZNFhPZVBJbTZJYWEreGJyWFdzakc3RVp6YXFB?=
 =?utf-8?B?cG9PYjZ6bXd5NXp1QVgyMFRmcS81aGNXckRRNXEyRW95SkxZbnREVWhBOEhz?=
 =?utf-8?B?a0ZrTk9xK2xEUmFSN2swaUxhTGJFQ0xIdGFIY2pBZHNFMW1EV2wrbnYrazBC?=
 =?utf-8?B?bWdyeGgvRTBjR3lkNWRCL1hidXBxS2x5NTY0bUJBcy80Q3c4WG1iVnptMDdw?=
 =?utf-8?B?UUtKbFE4dFhpNm41ZHBscWVnT2VRQU14LzZDZy8zajh2TFQyL1cwOG1rTHVT?=
 =?utf-8?B?V2pod2d3WUV4TXRra2FqVTZoYkV1TWhyRVkxQ2xBYWQyWWtaMjdLYmNxblcr?=
 =?utf-8?B?T3NXSHdXS0J1R25pRnMyUmplcmJrV2U1RzRTS1BNZ0VFeUtTSEkxU3d6Z04z?=
 =?utf-8?B?cnhLS1BESFRGRDJyK0g0T2RDWjhHclpnRk1WTWpoNUNmdW1INTFUNHVmSkN1?=
 =?utf-8?B?SEhNZWROVnVmWmw1V2RISHp0aFUvTjhya0FWRzJsZFBsYUZrcExHMFFOQXZz?=
 =?utf-8?B?bmFiMXp5NjR4VG55aHM2UWxKMlMzZlBBZVpDZWIyMHlVV3dVVjUxN0R2WXRt?=
 =?utf-8?B?dUlzemhlK0RSMDhML3FvNHJabkVLMGFobW40ZDF1UzgxK0x1dU1YbkZWMjdC?=
 =?utf-8?B?U2pVSjlsaEpLdWZLV2RzVk15Qm5DYnk3YnJ1MnRvYVRRN3F1bVN0VW41TEMy?=
 =?utf-8?B?b0lyVTdENWwzNDhQTVlyTnJIMDBmRGFDcHdOMGhEdlp3RkhIUUFBVitrV1FC?=
 =?utf-8?B?RVNXcE0ydnhXdDJDRC9aVVRvdFlMU1JYZFYzL29zeFYzbWV3a2kvbVlxeEl5?=
 =?utf-8?B?NFF3a1FmbmJSMXFMbDBaOXlOU0VheE5BRzBvY0FFVXhSeXB3UnhJWUZGczQ1?=
 =?utf-8?B?YUhlc0t3UEc1YUZ2OWlpamtiejhWOEdTekk5c3RBOHZzemdGWWlIVzlZRnox?=
 =?utf-8?B?dms1Sk5uSU9EQ1RPaDY5a3JpK1hBc2hxYmc2Q2tobEpRMkgwRjNZZHF4T0ZB?=
 =?utf-8?B?eVJJN2FqU0FNb20zakxkNmZnckt4a0JwdS9ubVNhKzBxcjA2MXBDUWIzOGxS?=
 =?utf-8?B?SC81VzhvUWMzMzZkbFpEaW5Ec2RWQlJMWFBVeldQb1FwQXdzQlpkbXVHMkJ6?=
 =?utf-8?B?d29iZnZWbE1BWXpXTU10aXJKL2hzUjlnOXhEVHNFRFowdFM3R2hsSzF2eHZM?=
 =?utf-8?B?b0JLRVRvbTNLODQ2MHZpRStidGkxc2VjVmg3NHRScklSSkU1cGQ3dEFPRDZI?=
 =?utf-8?B?MTJRWElVRFBnS0NDcUo2UmFOTzl5d1ZENWN3K0dUeEhWYzFLTmExVUhpWHNL?=
 =?utf-8?B?MHNyOWlqRDNzVHM0bDBzUnBpZ2Z6dmNmeGw4V000R283TXd5d2hxZEk0dGFt?=
 =?utf-8?B?cnJ6TFIrVmhDRUZ2QU1HT21EaVArWjJpZ0Jib0NmcERGZ3hreXVUM2ZkVlFK?=
 =?utf-8?B?L21paHZWeDdJTFd2WDA4ZjFEK211eTdkc0FaVXV4NzRaNGY0SUZnZVo1ODAx?=
 =?utf-8?B?VllFY0Z6T3Q1bG9helRyLytzRGhCRjBvRzVEZzhYdzVNUzZXL1IzMVI4OEx5?=
 =?utf-8?B?d0lWZFlQVHlIcWdLSFNIb3R1N3o1VGlsRTNkb1JXWlpJUFRaRnpoOG9BWG1G?=
 =?utf-8?Q?1ZO8jFJ9Dm5u9LAzVEZWxkbK6KrDhDIeBZXQ4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V2Jia1ZaUFRDZ0svcDVjaURyT2JRNkNhR0JlZXFIZmxXQjEzb3FiNFhUWk84?=
 =?utf-8?B?eXFpMmUzRW9BWFp6dkVlTGU3clFpd1l6Zk8zWUgrbzdFUDJiSTNLTjFZeTVs?=
 =?utf-8?B?dE1ZZ09TQXRlN3lHM3dmRmpUc3BKVVkvSFkwbGJpODFKeUd4ZTRUZkcwREtv?=
 =?utf-8?B?Zkxoalk3dk9oZStxYUpBMjl0dE9SejBEc1hveUpZbmtLVUxCOUxsZWw3cnVP?=
 =?utf-8?B?M0hPVnpBV09xQWJMM3JNN3o5KzhjdS9DUWxEbVlXYTZUQ3k3VU9TN2tCZjFR?=
 =?utf-8?B?cUVUVzg5MjNNL1BiM2NkNU4wY2tRYXYrMktxM2JJZno4YjJzYk1lZitMcVBT?=
 =?utf-8?B?MEIxUlhucTc2eVVKejg3Q3h6MWR3L0dzblpwQU1CWjRrdmp6KzRUN0cySjNp?=
 =?utf-8?B?SUdzVFFIdTBhdEs3N2NPT1RVTTlreUN1TGhBaDAvUGFQcTFOUHk3eFBzTFBq?=
 =?utf-8?B?ZUhMMDkyS3Q2MG52eHBQeHZmb2lHK04rcTdiczgyL2VBYnNsOCtYYlRwOTRa?=
 =?utf-8?B?Tk9JQ25tUXdIN29heldTRjdlOCt2ZXdPbU1pdUhqbmZTaHdyS3hTZldWVzRE?=
 =?utf-8?B?RmkzOGRoWVltZEhTVURpWDBUSWg1Y2ZkWDYzQndBR2JkekYxL1pod3c0WnFZ?=
 =?utf-8?B?NExMY3JNd1RLTnBTUldxOFNYVVFZM29Famo3K2hJOENnZS9Lc3JWRlMzYUhT?=
 =?utf-8?B?VUhLeTNldXFHMjlHeGZBWkJaSXVSN0hoRDYvK05Rc21NQkhLWkxON05LS3g0?=
 =?utf-8?B?K1NHbEk0eW4wNmI0dkZLRERMM1F3K2lVTm83OGlvbFFadEVxMHloZkUrVWJq?=
 =?utf-8?B?SzdoUy9CYmFWci8vWEFzTkxtTGFhRkFGSFI1QmFtUm8rTTMrazJERVNUZlda?=
 =?utf-8?B?Z28wOE9zRkV6S2x2TCtiUmlYS2RVa21JV3Z2OXZham1pd045ZmtuaUxLSWNi?=
 =?utf-8?B?YnJGa3MzWHFwZE12UFQ3NmdRNmdhdjI1VWQxczBvVmpCNWpzL3Y1dHNRNjZD?=
 =?utf-8?B?K1ZscExLTi9qN2o5cDVteG5LcWdEbUlnUmxFbFBBMDlhZytTNzNKeXZyZGt6?=
 =?utf-8?B?M3JUbW5OVVdWODhMMjhwRG5VYXIrWEdwa3BaZTNPajlpbGdlOGhnc1hwaVov?=
 =?utf-8?B?aG9UZWhRelBQeC9HQ1Z5L2FLRS9rRmRhekd6WFhTMkxPZTJRS05UWXFMa1BP?=
 =?utf-8?B?ZVpybWRuMEtZTnRSRXFaWEl6MXZUcDlFUExFSWtpTXBua3NVSng2MFhPMzFs?=
 =?utf-8?B?TzJIVFJhTzFBMFJEWXRCL1VsclBqaVVOYTNzMmEzTjZlQ0s2MFJ4UlBIcndR?=
 =?utf-8?B?WStoYnRGTHQ2eEpPNFZQc3lMckVsRE5pK1M0QXc5bktmRHU2UWozNkxhZXZt?=
 =?utf-8?B?Qlp4dnJ5MmtycTJwNmQ1eVdqdFUrQlZnTEhUMEhnL0U3OWM5WnV3VzlLdnoy?=
 =?utf-8?B?SXZYZGNET2E2SnIyblB3ZDhURTlxNFBiZ1FRK0Nyb1E3QXdjTzFETHQ2dHlv?=
 =?utf-8?B?QlY4ZUphWFZvWTJGelFOMVA5dG1lS1dGSWJSSE5oL3ZWMEx6RkNPS3ZaL2RV?=
 =?utf-8?B?aHE2eEpnMlpBanZxVG5pd0NYTTRuMWluMDhZNmh1azJOUWppLzFBRXJuZjdR?=
 =?utf-8?B?cUxsOWpCWmVVQzljdVZMek1Ib3pxaUxCL1RkcXR5N0MrZWdVWWljZGl6VFdp?=
 =?utf-8?B?aVhuYnlzbEgwVjdJeWtvcUtOWVg0L0NXSlVCY1psczZiYXBIT0N0U0d0TUxq?=
 =?utf-8?B?VnMyS0lCeFZyZ0JxUHRQbnVQeEZVVlJlVjUxNXduOVJZN2ZoYjBQY3h2TWRi?=
 =?utf-8?B?NmZhRkQ4MU9JTkZ3Zm0xdkRkMzN0R3hiMEY5Wi9kN0ZlU25GM1IxSW5ieUFh?=
 =?utf-8?B?bnpYUGdkTkxGQnhtM3FHajdkRUt3eWpyQXZTUXFlcDRINWFCN3NsMXlZY05m?=
 =?utf-8?B?M05takZjaEVPMG1WZTZnNEo5T1NxUXE3NGtCOW54aGdjelNSMG9TNC9mYXFD?=
 =?utf-8?B?NkhTdnpLRmdxTzQrZGwyYUxqUFc5NXF4RnhRQXUxRE9QYmRuUG91N3Vud082?=
 =?utf-8?B?bjI4UjVyak8zemhZT0h6M2NsZURVQ0tIZVMzMXRpdHVMZDdQSmZld1JwNHVs?=
 =?utf-8?B?ODBkYWF5ZDloOXl0WCt4UjlNcCtuZk95WGRaQjV0K2YyMGRYU08rNVo5MW9h?=
 =?utf-8?Q?4ssRj8h+F5Awq+GuqZyVlcU=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ba2c78f-2771-4f59-ad54-08dcffcaddbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2024 07:56:34.8187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pxb37CBDDYRYIip6YV5eT42HFX7Qx52+CyDVn4y/0BBAjrrg+t++2w2cLPogz3cN6zXYm8xmKl2Q9m20ye0sm81dzZu3xwj4xNW/Oy6dG6FJVJ/U5fTRtKVfk0BZ4G4Y
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8474
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogMzEgT2N0b2JlciAyMDI0IDEzOjQwDQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJq
ZWN0OiBbUEFUQ0hdIGRybS9pOTE1L3BzcjogRGlzYWJsZSBQYW5lbCBSZXBsYXkgYXMgd2VsbCBp
ZiBWUlIgaXMgZW5hYmxlZA0KPiANCj4gSGF2aW5nIFBhbmVsIFJlcGxheSBlbmFibGVkIHRvZ2V0
aGVyIHdpdGggVlJSIGlzIGNhdXNpbmcgZm9sbG93aW5nIGVycm9yczoNCj4gDQo+IHhlIDAwMDA6
MDA6MDIuMDogW2RybV0gKkVSUk9SKiBUaW1lZCBvdXQgd2FpdGluZyBQU1IgaWRsZSBzdGF0ZSB4
ZQ0KPiAwMDAwOjAwOjAyLjA6IFtkcm1dICpFUlJPUiogRmF1bHQgZXJyb3JzIG9uIHBpcGUgQTog
MHgwMDAwMDA4MCB4ZQ0KPiAwMDAwOjAwOjAyLjA6IFtkcm1dICpFUlJPUiogQ1BVIHBpcGUgQSBG
SUZPIHVuZGVycnVuIHhlIDAwMDA6MDA6MDIuMDoNCj4gW2RybV0gKkVSUk9SKiBGYXVsdCBlcnJv
cnMgb24gcGlwZSBBOiAweDAwMDQwMDgwIHhlIDAwMDA6MDA6MDIuMDogW2RybV0NCj4gKkVSUk9S
KiBGYXVsdCBlcnJvcnMgb24gcGlwZSBBOiAweDAwMDQwMDgwDQo+IA0KPiBMZXQncyBkaXNhYmxl
IFBhbmVsIFJlcGxheSBhcyB3ZWxsIGlmIFZSUiBpcyBlbmFibGVkLg0KPiANCj4gU2lnbmVkLW9m
Zi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDEzICsrKysrKy0t
LS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5k
ZXggMGM4ZGExNzAxYzNhLi5iNTI3YzFjYmIxNGIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMTU2NCwxMyArMTU2NCw2IEBAIHN0YXRpYyBi
b29sIF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4g
IAljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9ICZjcnRjX3N0
YXRlLQ0KPiA+aHcuYWRqdXN0ZWRfbW9kZTsNCj4gIAlpbnQgZW50cnlfc2V0dXBfZnJhbWVzOw0K
PiANCj4gLQkvKg0KPiAtCSAqIEN1cnJlbnQgUFNSIHBhbmVscyBkb24ndCB3b3JrIHJlbGlhYmx5
IHdpdGggVlJSIGVuYWJsZWQNCj4gLQkgKiBTbyBpZiBWUlIgaXMgZW5hYmxlZCwgZG8gbm90IGVu
YWJsZSBQU1IuDQo+IC0JICovDQo+IC0JaWYgKGNydGNfc3RhdGUtPnZyci5lbmFibGUpDQo+IC0J
CXJldHVybiBmYWxzZTsNCj4gLQ0KPiAgCWlmICghQ0FOX1BTUihpbnRlbF9kcCkpDQo+ICAJCXJl
dHVybiBmYWxzZTsNCj4gDQo+IEBAIC0xNjc5LDYgKzE2NzIsMTIgQEAgdm9pZCBpbnRlbF9wc3Jf
Y29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gIAkJcmV0dXJu
Ow0KPiAgCX0NCj4gDQo+ICsJLyoNCj4gKwkgKiBDdXJyZW50bHkgUFNSL1BSIGRvZXNuJ3Qgd29y
ayByZWxpYWJseSB3aXRoIFZSUiBlbmFibGVkLg0KPiArCSAqLw0KPiArCWlmIChjcnRjX3N0YXRl
LT52cnIuZW5hYmxlKQ0KPiArCQlyZXR1cm47DQo+ICsNCg0KUmV2aWV3ZWQtYnk6IE1pdHVsIEdv
bGFuaSA8bWl0dWxrdW1hci5haml0a3VtYXIuZ29sYW5pQGludGVsLmNvbT4NCg0KPiAgCWNydGNf
c3RhdGUtPmhhc19wYW5lbF9yZXBsYXkgPQ0KPiBfcGFuZWxfcmVwbGF5X2NvbXB1dGVfY29uZmln
KGludGVsX2RwLA0KPiAgCQkJCQkJCQkgICAgY3J0Y19zdGF0ZSwNCj4gDQo+IGNvbm5fc3RhdGUp
Ow0KPiAtLQ0KPiAyLjM0LjENCg0K
