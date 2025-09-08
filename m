Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BADB48545
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 09:32:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E07010E477;
	Mon,  8 Sep 2025 07:32:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pk7zJXqQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AF2F10E477;
 Mon,  8 Sep 2025 07:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757316734; x=1788852734;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=J1OFYSVZcBlnvGhgNBhPF+ACjAxOF+v3GyBrhdL7/Ec=;
 b=Pk7zJXqQupTBpepKfTU0qiK2sYd/Cs/eOgxK4mjp739zgaJVl9dFS9ty
 KUUWKQyiP0HqBZkN/oLxmMcMsTfOUV7fJ1F+QsUZL9HrbN8zywBMAOeeH
 tTMWN5hhTH0+sRVqCy6veMAF1jYc1epP0wgPyYM99sXVeqLfXlQNVRt7/
 z1JppHje6woovBcWJQgvFIMb9F8n0PDvM1TIhLefN9Uvvs+anSJFe0ZC1
 kfXPzmfmn6GPzbzwExhRw+1v5OTdzCXJ6PYwUrZ03LNtdctHsUOST8eMg
 ryWumlFmodAcCf10Y9xOdrT2LqzprjvrPdZKo+Vsroxu/gWok1nZAEL5G w==;
X-CSE-ConnectionGUID: C9//VfR+SEWKxMNJn2aK0Q==
X-CSE-MsgGUID: LkQd+IRDT0eF3lwDNDV7yA==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="59505930"
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="59505930"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 00:32:13 -0700
X-CSE-ConnectionGUID: az3SmsVlQxWRFIr60XM81w==
X-CSE-MsgGUID: DbDhIEfZRECw+SFkuTfhsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="171985954"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 00:32:12 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 00:32:11 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 00:32:11 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.81) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 00:32:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Vz6aYQxzb+8N9StE/9/zwc3WcnpqUiRzMR8COUBrkVHKFu7R+obbOUCk3WPgGzWUFHfKL+VZlHRD7uFjL548x+BFmnYbTaOCnyqwYDFoSZpb1d64gVAW6TUCtj4ENT7f+P2+43uPEd0shYsmwNxbC21Bevu4IVLs6TSXAUxcgCMLj49XrOqnFO03lLE219w5C1OGelA78b5r7iGqP9UlUwvbNga6Xip83ROqmzp0LsBrhlf6LUbt1mcblAjbmiFtk/x2pnrFtttZRSRq+AYPoygN4R/OwUCcmjcckvhEax5yv5TwT5NNfTMR9ELi18PcXvJQkIHI7E3fibusxe+JKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J1OFYSVZcBlnvGhgNBhPF+ACjAxOF+v3GyBrhdL7/Ec=;
 b=pbzAfXhPouKiD3Y/iWP4kg7kA8Pf3vn+6/EAzBMbnbvsXq6d9sRuti4omRmEkBprwr0lu6bHV1Dsb32RGfB15NkFjAh2xzO5rQ2Wyqs4Si8PabZdGvDYX0XmW9Wtvb04mojtvcfbROS4XwrYUbTEPwohPNoFPOg6WdrC9yMwalqE6Kh9JJDsZNPz36hoeyIyJKtqyNYc3HFv936eOiRZdGpLXHZGjUsxdCUOYZgCLTRsgI8rBckgStIXYZz/bbRj4R+soQiohgbIfMzWjFIvnv5j5U4cKmDK7STEHUiYLLJt+etesQrA3AfprH7wt8W6dfMr9kMq0glmRjo59muzRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7289.namprd11.prod.outlook.com (2603:10b6:930:99::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9094.19; Mon, 8 Sep 2025 07:32:09 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 07:32:09 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 0/4] Wait PSR idle before on dsb commit
Thread-Topic: [PATCH v3 0/4] Wait PSR idle before on dsb commit
Thread-Index: AQHcHjaJbjxc4BDPKkmnQSdmzp+V2rSI6O6A
Date: Mon, 8 Sep 2025 07:32:09 +0000
Message-ID: <58313353b8698da15d046981d9346154c49c22cc.camel@intel.com>
References: <20250905072708.2659411-1-jouni.hogander@intel.com>
In-Reply-To: <20250905072708.2659411-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7289:EE_
x-ms-office365-filtering-correlation-id: 55781e16-ef6d-410f-bef2-08ddeea9d1dc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?bTBQNGMxOURSeFJ6UTdJQm1zdHNQSUJIazlBdTVoZmhndFpVWW5FUzl2NTBB?=
 =?utf-8?B?SXRUSmowcGowSGdBQTFsK2VrWHJ2RHZaaG9HVkhJQWtJZDZTdUZ3ZjRES3hJ?=
 =?utf-8?B?NDhXUjNYczVVVzdBU083K3dzcTBHOEp0YXZNTm5HeGVPNUVBaVhTU3pmaDBL?=
 =?utf-8?B?SFk1aUJOZnVrS25vT2JQSjdvNFROTUYvR04wQ3JrK0IwV2FSOW4zcTU3Wkt5?=
 =?utf-8?B?a0V5OWRjV0dRZEtOSkpjZGR5clc4WG9yWUd5c3ViMXl2ckpQU2ErOG5zN1Fl?=
 =?utf-8?B?Qmh6MFQ4WFQ4dnBDKzlLQlMyN1BtKzdOdEFJanNhZnR6WFhJWldiNzZHUi9n?=
 =?utf-8?B?a2RRaDZYR20xZnZTNkxWZHRIL1dSMXh0U2hIM05HOGowUmN0SEJsb2l5bEIx?=
 =?utf-8?B?OE9wNnVBazFsZFltRE1wa3NpcUZPRjJ5Q2V2WTZPYS9vakc3Qi80UnVWQWor?=
 =?utf-8?B?eFFzR1c0MldhanVuQVArN1pQNjRjdTZzUEZkNEFmdVd6UXpZUzZHVnAyS1c3?=
 =?utf-8?B?MHVaZFZlK2pvRHZuUTNTblhTelBQeWlSVmVqTE5pRTc0V3U3SXVOOXFNS2wr?=
 =?utf-8?B?UHNmeXM4TXBPSGhmdXhjYTBtWkFSTlVlNjY1Z2RrcXFwNzNodHU3R2xSdjdT?=
 =?utf-8?B?MmVqMkNRWUQrSGNvWnhCdUxuVjlVSE9VbkV1RGVpT1l0V1FqUHUvSmh2TE1T?=
 =?utf-8?B?WTkwNjlXd1VsVE94TzFYZlhhUnhjTlozMjRtK3R0cVpuRC9QK0RKa2FKczRM?=
 =?utf-8?B?Q1lGdXQ3NHo1Qm03OTVZaG11eDFJL0phcE1RQXVnNTJ4ZkxZcnVRamNyOXpJ?=
 =?utf-8?B?QUdqeTRLa2xaTXpzN0NTMjcyQ2hCYkNxMkI5T3Vzb3dVYXNYTW9lZlJTMVA4?=
 =?utf-8?B?R1VKNmpzOFY4amd1YXY5K2pUTTQ1eDlyb2RHQlFTRERReUFXYmhscitOMUdw?=
 =?utf-8?B?ODhJZ1p2Yk5mMVhXN1Q4V3Ftd2x4RzZMekxzZ3M5aVR1UnRFa2p2OG1xQlho?=
 =?utf-8?B?RDhuckdncW1mZGE4YmZpQnBwQUtOaXVRcUw5YmZ1aElWS3RmNytxMDdxSm1v?=
 =?utf-8?B?RWtSYUtZc2cvNW1tOTRHcWZtSUl2UjFRTFNkQWFtd1JoSlBNZ1QrdVZNOWJV?=
 =?utf-8?B?bEJuOTU0dmlpdFBhOXlNaHZGaFVVSjYvQldmMHluN1Rub0N0aW13dzVOSktz?=
 =?utf-8?B?NkZNYmtuaC9BVkRqR1pCbWlmQUc5cXZzc1diWWM2MklVTnJkd2NzY1FLVVZH?=
 =?utf-8?B?RGkvUHJUU0xvUEtsRU9sMUVsTVlTUDNMQ21nZm4zVnVOWHQ2c1ZKalp3SXVJ?=
 =?utf-8?B?ZloySzB1T1UxQlJDcWRodUFlaTVIMDRHNk1zWElrSTNGaUYwQTQwV3dCcVRK?=
 =?utf-8?B?UlpxN2pqNVJSc01OcXZUWjFaU1ArMEphV284N3h3bzRSWUZUTzBVTXd4alZn?=
 =?utf-8?B?UGlYY3ptMnk1QnlMOVF4M0I5Rm5SVDhwbUdrclpvblJ5T05tWCtkalJoeFd1?=
 =?utf-8?B?b0Q3UERvZnlFOXFhd2tHQmN2ZVgrOWxqYVNjSkJEYjJMbWszckdWbDVYKzNt?=
 =?utf-8?B?aTdHdnJWOVhVU0VyVC9hY0F1MDMxemZ6VkNsWUJqd3R5QktnTk5aUDFiT2Fu?=
 =?utf-8?B?MHJubEY2QzhqU21wTnpiQnJZN0xoOHVMYTcrcTdCWk94TlBVVGJMYU5XWUVn?=
 =?utf-8?B?cVgrUlFEUFR1a2UwSS9ldmRFSDR2Z201dy9HdlNacFNOVGZieTdzbHJaOVdJ?=
 =?utf-8?B?U1NNYUJUY0Vvc1BGTkxNRjNmODkyaFhTeElTckZ1M0VvbHUxY09wU1laS1pw?=
 =?utf-8?B?aEttV1ZldldncHIrcWYxSzd5NUdRSlJWdG16VWNqMDlaVGdQRWYrcC9DNTlS?=
 =?utf-8?B?QTI0M0hFZkFDbHVWTGNtckhHMGVIR21GZ2h1b3VpcnluSlBlWFloNk1vUkhY?=
 =?utf-8?B?MlFneERpcnNkSjEzVXRIMHpwb2g2c3JDeXl6cGFvTzdmeUpIZytaY2IrOUJH?=
 =?utf-8?B?QlE2RWpZZm1nPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cnhnNTEveWVPdForS1N0NzlIK3MvU2lXWEFWd3JMcEdCSjNrVkgxeVlXeVVS?=
 =?utf-8?B?dTFzY1FpdjlxbTczYkdqOVNyY2FkOEp3R3MydWNNMWNmSzlkRFltdlVpaEhM?=
 =?utf-8?B?RDVMYkIraEdPUGIzc1E1UjhjQStxZFEzZ1NlUk9DcEZrMXdrUTRGSzJDTDc3?=
 =?utf-8?B?bUFmeEhnRkx0S25idFF5MGNLT1l0SWV6TmxialJzUUR5enU4b2tBQlI1dWxG?=
 =?utf-8?B?YW1WYjhLL3ZGTEl6cnJTL29PSzJMWTltTGp4eDlITjk3Y2g4V2syekdLNVd1?=
 =?utf-8?B?cUdVVWdRYitjby9OcXJvU0xsQ3lza0JqZVZDWkVwNWs4dVpRVEV6Y3ZNWFhN?=
 =?utf-8?B?dXd0MDd2NVJtbkFNMHhZNHhRNytSa29KNXVFc2JqdnpVS3l1bXMzNHFjcjZ3?=
 =?utf-8?B?WjJNd2JaWUdMb0hYbklCUmowMWpWMzVPdXJHbDRtRWFrbEk1NVg4WEVxQlRs?=
 =?utf-8?B?UGdKR01USER6Q1FXbkFCVGIxaURHcStMN29DQW9VMmpWd1c2YXlnV2dxd3BK?=
 =?utf-8?B?M0FrWmQrdGxPRlpkYlVzSGVaVitNUklvK1hGWXJZSmkrcENmWktienAvMUV0?=
 =?utf-8?B?NVJUQ21UenBwdnVjVjVCaE9RaFJrOHJ1QVQybzFRS005dy9VRWZPRFdSOTdD?=
 =?utf-8?B?L2p6Sk5xWGIvaWNESWpUOE1aaWNKclVYSWl2c3daT2R4ZGFsbXorN0hTSTZr?=
 =?utf-8?B?Yk5QSXhwRUtwMHJrMmJnMUdkMFY3NmlONWkwdUtURERBS0kxYkx0ekxHZjFD?=
 =?utf-8?B?WGwzL0dyRk9kRW83S0pSTmVPYnJPNjlvRnVHUStTNHNJd3AyTmxKUGd5QVBU?=
 =?utf-8?B?c2s5dGJNemxwZWY0R2Y5MW9JSzJlRWVaSmM1bjFHaEFCWWcyeGtsUFdGNER0?=
 =?utf-8?B?cnRtSkFDWlFRN2lpVmJhWHVZaGVNSVZQRndkL2k2clAvMjVkT1FXZ0I0Rzl6?=
 =?utf-8?B?RGJVTDU0ZUs4aGdvUzJwZXB2RUpTU0NtendYQk8zQ3RvVmg5WWs2S2lpR0xn?=
 =?utf-8?B?aEw4TVkxYnlZK2RGSHM5enhyaVFKejU4eDluK2RwNCtmcUhsUVdaQ0ZicDNN?=
 =?utf-8?B?YUFTdFVDWFpPR2Jad1lCWDZCdGlIek9XWk15eE8rMXhOT3l3RjVnWjcyQVpP?=
 =?utf-8?B?cWJ2QjVnZ2VHOTM5NWV4TjZwK1RJVXFUQVR3ZTZGVXdWcGtEcFdpM2FKS2Vj?=
 =?utf-8?B?KzRUMjdlcFd3WnRFc2dqdVNNNUhCZ29SdkdkUVJBeXRpM0FFQjkvMXB6ZWk5?=
 =?utf-8?B?TVByV0Z4ODUxVXFIZlhGQURuS2ROZjRjN2k4ODdKZTNteFNNUWJrd29LS3ZF?=
 =?utf-8?B?QXB6WkhBemNPaEVFUDAwMW1LTnlHWCsrOWtZRDgraElidi9nWUMzZjByWWdW?=
 =?utf-8?B?Q0xITXBRNFgxMnNEZFFIdWFGcml1a0ZkaVV2djlOUGxlekZBS0JxaGNKWFZk?=
 =?utf-8?B?R21xek1hejNGdFFPUGdhU2lPV1RhZ0NpTEk4R0w2cUNsSTJJeHNMeDMzeE9G?=
 =?utf-8?B?ZURoWHVSWTlXNTl4U2xlZ2dVS2JCbDIxbnpJMk1ZYUhiOEt3eURVZ3I0SE1N?=
 =?utf-8?B?S2l5eGVoc0pab0dZYXBHZFlRU2VuT0o1UmZaRzYxMTYydHFzalc4ZTlWc25z?=
 =?utf-8?B?KzFiSE45K0lPd3dvVGQwbjZ6OGFoOUtiMGdkb1Z2VDRKN0wxR3I3MVNoaUlt?=
 =?utf-8?B?TXN2UE81M2NnRWJqKzUxdjNFK2FXd3ZJRGo5Q21ocUlQanFzUlZCL1FyY2sx?=
 =?utf-8?B?TWU4OENoZU96cG5PYTh0aU9SeGROWi9YWUkydHByWmduSk9NU3hBZWpQVHlW?=
 =?utf-8?B?V3dqUnRWcWNIMk1MQ3NmbXI4NzlZQnQxblYzYTZDT2NPSVVBTDNRY0YwWUI2?=
 =?utf-8?B?VndBSk41RkxjWVZZVXl6WmJ5eVhsVDJnM3Z1NlpEeHh2WXZNTnpDYWFBWnI0?=
 =?utf-8?B?cnJzZUk3bEVqRGRCSi80c3IyWHhma2RyQU1iczZ4QnNpUllVVTZnOW52WWtl?=
 =?utf-8?B?QW1kL1RMa3p0VWFGZnRlSlZCRjZIQWhjbERVbHBOUGdFVURzOWZMNkd6Y0hE?=
 =?utf-8?B?QUZ5TTZhYXl2dWV2aXIwaDZydmxHVjIyZDVUVHp4bjR0KzBsbGVGUlk5Qmsx?=
 =?utf-8?B?WlVBOEZCMTA3R0V0bm1UVlJUSnorc2FXK2RiVWRWT3JqSXFJSDkyWHh6MXJZ?=
 =?utf-8?B?Qm5TdjMxdDgzODRGNGZkbUFFVUJDN0NpRVVBVVNyckVNS25IczBkdlVFWWRu?=
 =?utf-8?B?cE9iemhZZGh4aFdzNXBIMWZPRHZ3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F8CFF099921F694CB8F45204CDBE1DF3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55781e16-ef6d-410f-bef2-08ddeea9d1dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2025 07:32:09.4218 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: axsFG64/uoBqsszGlzo7CKrhb6yARGEQK/EIzWGTKjAWJGXQvhfp2Hw586hbie1keeD/eD7BlaUwi8s31jCwzNB4WIk4suKcCcZPQPEUh08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7289
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

T24gRnJpLCAyMDI1LTA5LTA1IGF0IDEwOjI3ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IFdlIGFyZSBjdXJyZW50bHkgb2JzZXJ2aW5nIGNyYyBmYWlsdXJlcyBhZnRlciB3ZSBzdGFy
dGVkIHVzaW5nIGRzYg0KPiBmb3IgUFNSDQo+IHVwZGF0ZXMgYXMgd2VsbC4gVGhpcyBzZWVtcyB0
byBoYXBwZW4gYmVjYXVzZSBQU1IgSFcgaXMgc3RpbGwgc2VuZGluZw0KPiBjb3VwbGUgb2YgdXBk
YXRlcyB1c2luZyBvbGQgZnJhbWVidWZmZXJzIG9uIHdha2UtdXAuDQo+IA0KPiBPbiBub24tZHNi
IGNvbW1pdCB3ZSBhcmUgd2FpdGluZyBQU1IgSFcgdG8gaWRsZSBiZWZvcmUgc3RhcnRpbmcgYSBu
ZXcNCj4gY29tbWl0LiBGaXggcHJvYmxlbXMgd2l0aCBkc2IgY29tbWl0IGJ5IGFkZGluZyBzaW1p
bGFyIHdhaXQgb24gZHNiDQo+IGNvbW1pdCBhcyB3ZWxsLg0KPiANCj4gdjM6IGFkZCBpbnRlbF9k
c2IgYXMgYSBwYXJhbWV0ZXIgdG8gaW50ZWxfcHNyX3dhaXRfZm9yX2lkbGVfZHNiDQo+IHYyOiBh
ZGQgcGFzcyBjcnRjX3N0YXRlLT5kc2JfY29tbWl0IGFzIHBhcmFtZXRlcg0KPiANCj4gSm91bmkg
SMO2Z2FuZGVyICg0KToNCj4gwqAgZHJtL2k5MTUvcHNyOiBQYXNzIGludGVsX2NydGNfc3RhdGUg
aW5zdGVhZCBvZiBpbnRlbF9kcCBpbg0KPiDCoMKgwqAgd2FpdF9mb3JfaWRsZQ0KPiDCoCBkcm0v
aTkxNS9wc3I6IEFkZCBuZXcgZGVmaW5lIGZvciBQU1IgaWRsZSB0aW1lb3V0DQo+IMKgIGRybS9p
OTE1L3BzcjogTmV3IGludGVyZmFjZSBhZGRpbmcgUFNSIGlkbGUgcG9sbCBpbnRvIGRzYiBjb21t
aXQNCj4gwqAgZHJtL2k5MTUvcHNyOiBBZGQgcG9sbCBmb3IgY2hlY2tpbmcgUFNSIGlzIGlkbGUg
YmVmb3JlIHN0YXJ0aW5nDQo+IHVwZGF0ZQ0KPiANCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8wqAgMyArDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgIHwgNjkgKysrKysrKysrKysrKysrLS0tDQo+IC0t
DQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaMKgwqDCoMKgIHzC
oCAyICsNCj4gwqAzIGZpbGVzIGNoYW5nZWQsIDU4IGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9u
cygtKQ0KPiANCg0KVGhhbmsgeW91IFZpbGxlIGFuZCBNaWthIGZvciB5b3VyIHJldmlld3MuIFRo
aXMgaXMgbm93IHB1c2hlZCB0byBkcm0tDQppbnRlbC1uZXh0Lg0KDQpCUiwNCg0KSm91bmkgSMO2
Z2FuZGVyDQo=
