Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F379686B6
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 13:52:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B51D210E2B8;
	Mon,  2 Sep 2024 11:52:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uy3lnaGk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B64E10E2B8
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 11:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725277942; x=1756813942;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=cz53heicnvKJzEI6P8rr28vlbVBWJVStxwwg+mteNcE=;
 b=Uy3lnaGkOSAOQVHAzoG5WI8aJEBLfxMqseTMsamsqxd2jkJAbcMLosoy
 vr3mPBldLuBR1gcKSB/1HUvMvt3jIPAj0dysq/ceFdcckar3+vTh8qjbp
 nYywU7U3wB4Mzt7kYhcKj642T5CUUFSVHnGjeb1mWMjFP0Qgijas8s98L
 tR6HU/e94XMOLPCapfqHpcfDTS2EPFN5Z4E1wTtzwdekSLYF6gTWaKXW1
 JGcJRqFJXOhyyXl0brWukv4Vp89p9UWKxEkjZzIt91yDGjSClLGuGWu6B
 N3OvUixGADINh7Imcp91Mle1+I49bVTycrC8LRsBkyVXtlarfuyQQYmz8 w==;
X-CSE-ConnectionGUID: EJyzGNhgQa+nCk0N29A8Rw==
X-CSE-MsgGUID: hYQwYIecQFm8LB01wQTagw==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="24036371"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="24036371"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 04:52:10 -0700
X-CSE-ConnectionGUID: EnwIOtEeSiGYtUITY/rlQw==
X-CSE-MsgGUID: qJe7xyK2SjWnPoPZxmjEiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="65087902"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Sep 2024 04:52:08 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Sep 2024 04:52:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Sep 2024 04:52:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Sep 2024 04:52:06 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Sep 2024 04:52:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vysfruhJ9l6bFt1K+Ok6O628rRuzOQsCjU83avU2g3xlw9dMcRI/w3HJFN4HhcEiBMzN0bV75Ytip7KRYC+to6wV0qv9q2sCR57GoinVg9MZK6r03nofa7VP9o5bYbaw9KJ74sTppTKBnlAfnQ1Qhm5n4Iw7cLarN8OQtWcGedV/a7H66giQYiGTztQenxJCNk7E1CuSeqniQvi/WkihLWE9ncvWR6bSReMQ45Tnlxfku55VQr+smyirKzpNuTjusu6Gvw50Z8h8zC4PFJwIMzk/2U2PxsIC+XH9oGqviKHzL7ZZAQVRqNN+m49fF9PfD2OtFMcwlVd9IbSeCNdf5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cz53heicnvKJzEI6P8rr28vlbVBWJVStxwwg+mteNcE=;
 b=A7QWNrLFYgcxH3+mlGPnTJbSBZhNgbYDrFiPsbO0+5SedORg8s9UY2x++BxJstg0Una87BLsJKzCcaUSFgRbT0468X1YnOLQKEwkDe2ryDKdayFLiuyohQhJ6wBURJgJtPzbErdGcb0LvVbuwhxcw4p1WvvedZnYDxNZ097NUDbt8stY1uc+4JyCdPtf0tRlbaXt7v4JDPhZroztsQz8xi+C9hcx+H/kz5LilbUaDO4iiCUjWJ75bLP/WtOX1JzA78U6Tapq0n48N50UfIZ8oHrLtNZVfBWLbzhvVk7aFtd+GH+juZlUOpiaOMD5ty5nWGyus0VL7FR94DRP+rYnAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB8502.namprd11.prod.outlook.com (2603:10b6:510:30c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7918.25; Mon, 2 Sep 2024 09:37:24 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%3]) with mapi id 15.20.7918.020; Mon, 2 Sep 2024
 09:37:24 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/i915/psr: Implment WA to help reach PC10
Thread-Topic: [PATCH] drm/i915/psr: Implment WA to help reach PC10
Thread-Index: AQHa/PWp1HodD3UAnEShApl64iwcF7JEPYGA
Date: Mon, 2 Sep 2024 09:37:24 +0000
Message-ID: <e35c0591a0708fc069aae10aaf35a20002b71aba.camel@intel.com>
References: <20240902050214.127352-1-suraj.kandpal@intel.com>
In-Reply-To: <20240902050214.127352-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB8502:EE_
x-ms-office365-filtering-correlation-id: efb77fca-521e-4668-8bef-08dccb32da0d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?c2UzUWlxVk50MVJYNVdhYWx5RTZjNXJzYTF4MXBVUGRURXRoRk9RSUFPUGtG?=
 =?utf-8?B?MHBNdTh6NHl2SjJWL2FaUDVCU3d4S1hvb0dGVFp3aDM0cG9wd3F6QkY5ck1T?=
 =?utf-8?B?U1Vmd05wVzhWRUNaM2lFaXhPd2EzekRvSWxtQXNMdzcycHYrc09BSFE1Q3ZW?=
 =?utf-8?B?VnhaZjROYUlsRkxPbU1SSTRaZTNIVVRTQVRXTjdORGZrem1taTFJNVJJNDlV?=
 =?utf-8?B?eDE2RnpQUklwTWhQQXRnaVZnVzRRc0pENTRLMi8ybGY4RUF6a21OTmdGeWFq?=
 =?utf-8?B?bFh5K1JVRDAzeFdCcnRLWVZBVVFGdDVwYVZhQ3ZkT2loUkJ1OHlVdnovZitX?=
 =?utf-8?B?ZGUydWFnZHQzSWhEallGeWtRQlF6L3owLy9URXByOFhlaW5WQmNEd2EzUG11?=
 =?utf-8?B?TjFaUjFCYllpUlFNT0dyeGsvd3g0dVJsTFNWM0cvUDN2UWtaSFkyZHMwek95?=
 =?utf-8?B?c2tnczRIK0crMWpCQ0pzV2pXZ1BqQ3AvcnJZbTNIOHd0dGtIZ0FHSkVNaWlG?=
 =?utf-8?B?OWlCUnpweVBkWjV6eWRMRW05b21iU0pvOVFJbUMzT016MUVZbHVvL1FMeUVK?=
 =?utf-8?B?WU1idy9rZGRaOU10ZTlLS09UQXU0RndlZ1BiMjRmbno0b3ZITVAwMkZaU0Q5?=
 =?utf-8?B?SHpoQmg0d1o5MDJUODFSMWErdVpKazRLNkppTnJCaGQ5TjZhWldxT3pIRUNP?=
 =?utf-8?B?K0NiRzByN0p3Rkd2R25PU21UcmEzdERKeExMdHFOeWRYZmhqa0h2MFhuQkFR?=
 =?utf-8?B?Yi9MZWtmWjFoTzMrZzZwYWpGVVR4UG9DRHE3T0FoVWQ0ZS9kQ2oxQytKbWxQ?=
 =?utf-8?B?MWVaTmh0aUw3TGpKUS9WenI3aVdoZFhhK01Fc1ZxbEVKdzhYM1k4U3NWem1N?=
 =?utf-8?B?bzNYWW9zTjJ3c21hQVU2NHVJNWQ0U1JuTkI0RnkxZjV6RWNMN3JyaGdDTy9a?=
 =?utf-8?B?aTh6V1cwM2RLSmE2dENYM1pnakZtRkp5WnBsQXlxN3Q0RGpqQjN0M1FJUjlQ?=
 =?utf-8?B?WU9KVkpBd0F0cGR1czQwOWpDdTEyREhLS2psOWRjcDU4OG1KVTVTamNmN2tK?=
 =?utf-8?B?UUJNMTdXUlVJQ0M2TnFyWFFwOENsdEZ6MWZ0ZmNDTE1iaUI5d25Jd2ZSNmRw?=
 =?utf-8?B?ak11QzYyTXJUekEyd2ZNMkJ4akxuMDdiNCs3QnQ4dGJVWDJNV2tVRTJkSkNh?=
 =?utf-8?B?TVZzNXhaQVdPTEtKY3lpYlNZdGJWelRXaGJBa0NTQUFUdUhBRVBVRWVXUnhS?=
 =?utf-8?B?d3Bic2ZIazV2L1dZbXh3VmhuQ1k2NllqR3QvRVpjVEdFbysxeXFxTXAwZlo3?=
 =?utf-8?B?VkEwVUk0UDRCM1oycGRFTHloYWQrSXNxa05paHNYMGhLcGFUUjBNeStXVWEr?=
 =?utf-8?B?Y3BOL2NBRGx2bDZ3VzRlNnhjWklpSW9DclpIT2E0RWZrRllaZzdTMnJjcU5t?=
 =?utf-8?B?NG1RZk45cHpyV2ZVUGZ2V1Jycjkzb1lGODZ5NWtDclF5NzhwaGNaeldxQmJk?=
 =?utf-8?B?MDRLUnNpT3U3cmEraHZNeWZHeFkxYk1ZQk9qRzJ2WmR3N3RtdGhnUVlQWTJY?=
 =?utf-8?B?Rll1ZlRIRGZNb0o3a1QvMzB3eEZVM1NyWGx3NjAydVVxSjNWRnpZVHJKNzlh?=
 =?utf-8?B?cGNPNFFxak5MK0Rhc3NVNGlHdkp3THVoNUVaVVIybzJ2L3F0OHVUeW5UWkwr?=
 =?utf-8?B?blA2em8zYmpibkZVa09PN3VNZkRVZkt0TmowTUNOTkxZWThoalIxTzd6QmVu?=
 =?utf-8?B?c2ZHL1pmalpzYktkN2VnOXh4OGdsUloxRlZzOVFGeGVFaWdYMyt4Z3gvZjdM?=
 =?utf-8?B?VVIzck9wS0F0eGZQMUhmbUNQV2JTMmFmTDczTHVWTEZRZHl2Q2NZbnpkR2hS?=
 =?utf-8?B?L2MxTGdncCtHRjB0cTVSSERaQmxqcDBRVmY0bGlxMEdCbkE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dHZyVXVSdGtXUU9NS1k3SmlObVVPdjdiYnk1TkNWaW43Ui8wSGg3cVQ5Z1pa?=
 =?utf-8?B?S1NUT1pLemV4Tjd4YmVvYVdXOFg3OHZqNHJlNFhBWGtQenAzYytGT0ZhdE1X?=
 =?utf-8?B?VVBLSnh2akkrcHVELzhrWjRLamlXd2hPclNqc01TOE92NHhpL0llNmVoWElZ?=
 =?utf-8?B?dHVoU3VJVXUrUUc2Y0o5VnNUYjB3UmpaZ2pDY0Z2TGpYd0VUdVBkaVhHM0R2?=
 =?utf-8?B?RlFIRGNxT1M0WDVmL3dMWnJIRU82NndVWWhQaUVuZVEvWHlmRkZYdEt2OTRX?=
 =?utf-8?B?TmNzSnkwVHlDcnp6bWZYVVQ2UWtrNEFvSHhpY0VKalQ0N3ZYRDF3MnpnTkZv?=
 =?utf-8?B?VE9kei8rRDRiTWg4clFvZkpBeHhaQTk4MWR2MHcwTnZVRitPWngwb09qUlpJ?=
 =?utf-8?B?WFNhZVc4N25KUExTZkovZ3V4bUxOdkNNTE4yVnZ3cE9jNStpb3l5TWxBODMw?=
 =?utf-8?B?QWlZS3ZlSlhObTV3Tjdkd1EzRUYxY2I0dGd4ZnVMcmVqQ0RwNmoybHhjMHJQ?=
 =?utf-8?B?cnRDcXlGM3ZRRkFlYjNKTE9RaEljeWEvZUg2MWhieWwvZVJWS1RTRDdYdVVM?=
 =?utf-8?B?WkFuZG5xb2FtV2xzZVhtVW1ybzArMFVubWk0WVJIeVp3YXNXTXNqeW9yNEJ2?=
 =?utf-8?B?Tm5ZbUNTTkp4Yk1oVnYvQnRvSVFPNG1nMkUwV1VrQnVjcWVLcFhReWRUL2Q0?=
 =?utf-8?B?WFZGYkEyZ0xSMFo3OEQzeXd6dm1LZ2FLRHJoSVAvY3hWbkNBSEJiQ0J4b3Er?=
 =?utf-8?B?TGJIWHU5VElxYkQ0MENHQkNqWUlLMUh2ZWU2NjkxZWdnbnVRTXlXSmFBa2hN?=
 =?utf-8?B?Y3pUelg1N1h6SXhBOVViSnpKSElwSDVXazdYVmxjUUh3V0J6T0kveWI1S1BB?=
 =?utf-8?B?ZVBCdGdMNDNoeVowUjUvdEdOdExYbDkyRGwzNENWKytpSUttcFVmcm83b0pp?=
 =?utf-8?B?enNiYkkzdWNMYWZEbUl6aHU5c2UrMlF3Y0NBaXdPQ2J1bVlyUjNDNzIveHdH?=
 =?utf-8?B?MFBzQWVuRUdoNUxQb2twYWVyVjVPb1EzMlpBRlF2cWE0SEJUbHZsTnUvQjZR?=
 =?utf-8?B?YitUclVCWUFuNXpXR2ppakNkVGNyUUo0RmtraUFiVDhadE1rb05rT2tqblhl?=
 =?utf-8?B?Zkwxa25aYlR6NlRhaUxUWW42VHZuL2JtS09PMytZNEtuUUlxczk4SzdMc1pR?=
 =?utf-8?B?aVVRSUQ1eDNSS1J3R3kxdmU2SVlieDN6VjhxTG1zWHFJMjk5alNoUjBKaXYv?=
 =?utf-8?B?NGswcUdwZUdPQXh2SE5HWUN4OGt1RTJjZHJIbW53bzFxUFFXS1RKcmVjR2VM?=
 =?utf-8?B?K3FHNFEzSDlteE9PMnVHQ25lU3ZPNHhRSDZVdDFnSnYycnUwc3RDVlJJaC81?=
 =?utf-8?B?L04vMDhKeThqNDNyUzJPSDZaeGh2RUNYeTN1dnlGNVZYNDFWaFEzWVYwSGU0?=
 =?utf-8?B?RVczRCtQeFVZa09saWZCSkJKOEE2Z28zRjRGc0ZOOVFEVDdtVzJ2QnBaaUVs?=
 =?utf-8?B?ZHMxQWZRRmNqbExjd1haYUkwTldTdXZtUkxGc2psWFN0b0dmcldFZ3d1emJP?=
 =?utf-8?B?Um90Nk5LbVl3VGp0cmRFN1pWYURWdExrVDdtRlI5T0gvZ09UblFpVSs0aThX?=
 =?utf-8?B?RTA3V2JuTmxVV0tVMndrbXMweGpJVEtGNEowc0g4bjFFY2RSbGtrdzY3Z0cv?=
 =?utf-8?B?c09aMzBzUGNUVUd2amJIQ0o1WEMrTzJaVUlEY1BMUUh5eDNRTkRJa2VMT3c4?=
 =?utf-8?B?K1pZL3VnSDNtVE1NM3N5VUlhUi9wS0VubTJhNTRYSHVSUGVsZGRJclpsdHpK?=
 =?utf-8?B?MkNLbWtXSjdXeENsZnB4UFNjSDN6UzVwNzV5OGNYM1BUT1VzTENFZEVxZVps?=
 =?utf-8?B?blFmd3RMbHFOYmpnVi9Uak5yV3JoTWRRc0UxLzFpSEpSNDRubGNJRnJtVnBk?=
 =?utf-8?B?TzczM1VRVzZ0TjJ4KzFZVU9xWTJRSDYwQVZWVG9NeExTR3ZkbFJISVBZdVVo?=
 =?utf-8?B?WXMwMVVGNkVhdjBnRkVVcE1MMGxqODJrR0o4YmVSVEJIMnJ0YmNJWnJOK1ZU?=
 =?utf-8?B?RktMcGhUY2lsYWdnN0NMVzgyWndJSTdqSlV5UmZpOVVlWjVmQXEveUNRWnF2?=
 =?utf-8?B?VE91TFU2VFZOK2t3U1RpTG45WXQ5eFFZR0N0ekhIVWlXSWNBTXdPNEQzVGhZ?=
 =?utf-8?B?UEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C5FDE2287D69B645A09E3DE647FF834D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efb77fca-521e-4668-8bef-08dccb32da0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2024 09:37:24.6757 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8aRKiVnQnETaNeru8Up1jUM4f7UQxI4PyG5KboVHSmf7LXz8APJK3BS60uwsC5nbIgW7/iVNxdtSCmrCrRuvy1+i7ZTGI+H4EsKfURchv7M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8502
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

T24gTW9uLCAyMDI0LTA5LTAyIGF0IDEwOjMyICswNTMwLCBTdXJhaiBLYW5kcGFsIHdyb3RlOgo+
IFRvIHJlYWNoIFBDMTAgd2hlbiBQS0dfQ19MQVRFTkNZIGlzIGNvbmZpZ3VyZSB3ZSBtdXN0IGRv
IHRoZQo+IGZvbGxvd2luZwo+IHRoaW5ncwo+IDEpIEVudGVyIFBTUjEgb25seSB3aGVuIGRlbGF5
ZWRfdmJsYW5rIDwgNiBsaW5lcyBhbmQgREM1IGNhbiBiZQo+IGVudGVyZWQKPiAyKSBBbGxvdyBQ
U1IyIGRlZXAgc2xlZXAgd2hlbiBEQzUgY2FuIGJlIGVudGVyZWQKPiAzKSBEQzUgY2FuIGJlIGVu
dGVyZWQgd2hlbiBhbGwgdHJhbnNvY29kZXIgaGF2ZSBlaXRoZXIgUFNSMSwgUFNSMiBvcgo+IGVE
UCAxLjUgUFIgQUxQTSBlbmFibGVkIGFuZCBWQkkgaXMgZGlzYWJsZWQgYW5kIGZsaXBzIGFuZCBw
dXNoZXMgYXJlCj4gbm90IGhhcHBlbmluZy4KPiAKPiAtLXYyCj4gLVN3aXRjaCBjb25kaXRpb24g
YW5kIGRvIGFuIGVhcmx5IHJldHVybiBbSmFuaV0KPiAtRG8gc29tZSBjaGVja3MgaW4gY29tcHV0
ZV9jb25maWcgW0phbmldCj4gLURvIG5vdCB1c2UgcmVnaXN0ZXIgcmVhZHMgYXMgYSBtZXRob2Qg
b2YgY2hlY2tpbmcgc3RhdGVzIGZvcgo+IERQS0dDIG9yIGRlbGF5ZWQgdmJsYW5rIFtKYW5pXQo+
IC1Vc2UgYW5vdGhlciB3YXkgdG8gc2VlIGlzIHZibGFuayBpbnRlcnJ1cHRzIGFyZSBkaXNhYmxl
ZCBvciBub3QKPiBbSmFuaV0KPiAKPiAtLXYzCj4gLVVzZSBoYXNfcHNyIHRvIGNoZWNrIGlmIHBz
ciBjYW4gYmUgZW5hYmxlZCBvciBub3QgZm9yIGRjNV9lbnRyeSBjb25kCj4gW1VtYV0KPiAtTW92
ZSB0aGUgZGM1IGVudHJ5IGNvbXB1dGF0aW9uIHRvIHBzcl9jb21wdXRlX2NvbmZpZyBbSm91bmld
Cj4gLU5vIG5lZWQgdG8gY2hhbmdlIHNlcXVlbmNlIG9mIGVuYWJsZWQgYW5kIGFjdGl2YXRlLAo+
IHNvIGRvbnQgbWFrZSBoc3dfcHNyMV9hY3RpdmF0ZSByZXR1cm4gYW55dGhpbmcgW0pvdW5pXQo+
IC1Vc2UgaGFzX3BzciB0byBzdG9wIHBzcjEgYWN0aXZhdGlvbiBbSm91bmldCj4gLVVzZSBsaW5l
YWdlIG5vLiBpbiBXQQo+IC1BZGQgdGhlIGRpc3BsYXkgdmVyIHJlc3RyaWN0aW9ucyBmb3IgV0EK
PiAKPiBXQTogMjIwMTk0NDQ3OTcKPiBTaWduZWQtb2ZmLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJh
ai5rYW5kcGFsQGludGVsLmNvbT4KPiAtLS0KPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaMKgwqDCoCB8wqAgMiArCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqDCoCB8IDk2Cj4gKysrKysrKysrKysrKysrKysrLQo+
IMKgMiBmaWxlcyBjaGFuZ2VkLCA5NyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaAo+IGluZGV4IDg2OGZmODk3NmVkOS4uNTM5NWMxZWNkZTdmIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiBAQCAt
MTcxNyw2ICsxNzE3LDggQEAgc3RydWN0IGludGVsX3BzciB7Cj4gwqDCoMKgwqDCoMKgwqDCoGJv
b2wgc2lua19zdXBwb3J0Owo+IMKgwqDCoMKgwqDCoMKgwqBib29sIHNvdXJjZV9zdXBwb3J0Owo+
IMKgwqDCoMKgwqDCoMKgwqBib29sIGVuYWJsZWQ7Cj4gK8KgwqDCoMKgwqDCoMKgYm9vbCBpc19k
cGtnY19jb25maWd1cmVkOwo+ICvCoMKgwqDCoMKgwqDCoGJvb2wgaXNfZGM1X2VudHJ5X3Bvc3Np
YmxlOwo+IMKgwqDCoMKgwqDCoMKgwqBib29sIHBhdXNlZDsKPiDCoMKgwqDCoMKgwqDCoMKgZW51
bSBwaXBlIHBpcGU7Cj4gwqDCoMKgwqDCoMKgwqDCoGVudW0gdHJhbnNjb2RlciB0cmFuc2NvZGVy
Owo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gaW5kZXggMjU3
NTI2MzYyYjM5Li4xZmFlYzc2ZWFjMzIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMKPiBAQCAtODcwLDYgKzg3MCw2OSBAQCBzdGF0aWMgdTggcHNyX2NvbXB1
dGVfaWRsZV9mcmFtZXMoc3RydWN0Cj4gaW50ZWxfZHAgKmludGVsX2RwKQo+IMKgwqDCoMKgwqDC
oMKgwqByZXR1cm4gaWRsZV9mcmFtZXM7Cj4gwqB9Cj4gwqAKPiArc3RhdGljIGJvb2wgaW50ZWxf
cHNyX2NoZWNrX2RlbGF5ZWRfdmJsYW5rX2xpbWl0KHN0cnVjdAo+IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUpCgpZb3UgY291bGQgYWRkIHNvbWUgY29udGV4dCBoZXJlIGluIHRoZSBuYW1l
LiBUaGlzIGlzIHNvbWVob3cgdGVsbGluZwppdCdzIHNvbWUgZ2VuZXJpYyBkZWxheWVkIHZibGFu
ayBsaW1pdCB3aGlsZSBpdCBpcyBhY3R1YWxseSBsaW1pdCBmb3IKdGhpcyB3b3JrYXJvdW5kLgoK
PiArewo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9t
b2RlID0gJmNydGNfc3RhdGUtCj4gPmh3LmFkanVzdGVkX21vZGU7Cj4gKwo+ICvCoMKgwqDCoMKg
wqDCoHJldHVybiAoYWRqdXN0ZWRfbW9kZS0+Y3J0Y192Ymxhbmtfc3RhcnQgLSBhZGp1c3RlZF9t
b2RlLQo+ID5jcnRjX3ZkaXNwbGF5KSA+PSA2Owo+ICt9Cj4gKwo+ICsvKgo+ICsgKiBQS0dfQ19M
QVRFTkNZIGlzIGNvbmZpZ3VyZWQgb25seSB3aGVuIERJU1BMQVlfVkVSID49IDIwIGFuZAo+ICsg
KiBWUlIgaXMgbm90IGVuYWJsZWQKPiArICovCj4gK3N0YXRpYyBib29sIGludGVsX3Bzcl9pc19k
cGtnY19jb25maWd1cmVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlCj4gKmk5MTUpCj4gK3sKPiAr
wqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0YzsKPiArCj4gK8KgwqDC
oMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5MTUpIDwgMjApCj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgZm9yX2VhY2hf
aW50ZWxfY3J0YygmaTkxNS0+ZHJtLCBpbnRlbF9jcnRjKSB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOwo+ICsKPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKCFpbnRlbF9jcnRjLT5hY3RpdmUpCj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb250aW51ZTsK
PiArCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNydGNfc3RhdGUgPSBpbnRlbF9j
cnRjLT5jb25maWc7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoY3J0
Y19zdGF0ZS0+dnJyLmVuYWJsZSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsKPiArwqDCoMKgwqDCoMKgwqB9Cj4gKwo+ICvCoMKg
wqDCoMKgwqDCoHJldHVybiB0cnVlOwo+ICt9Cj4gKwo+ICsvKgo+ICsgKiBEQzUgZW50cnkgaXMg
b25seSBwb3NzaWJsZSBpZiB2YmxhbmsgaW50ZXJydXB0IGlzIGRpc2FibGVkCj4gKyAqIGFuZCBl
aXRoZXIgcHNyMSwgcHNyMiwgZWRwIDEuNSBwciBhbHBtIGlzIGVuYWJsZWQgb24gYWxsCj4gKyAq
IGVuYWJsZWQgZW5jb2RlcnMuCj4gKyAqLwo+ICtzdGF0aWMgYm9vbAo+ICtpbnRlbF9wc3JfaXNf
ZGM1X2VudHJ5X3Bvc3NpYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICt7Cj4gK8KgwqDCoMKgwqDC
oMKgc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGM7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoGlm
ICghKGNydGNfc3RhdGUtPmhhc19wc3IgfHwgY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUpKQo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7CgpDdXJyZW50bHkg
dGhpcyBpcyBub3QgcmV0dXJuaW5nIGZvciBEUDIuMSBQUi4gVGhpcyB3b3VsZCBiZXR0ZXIgbWF0
Y2gKd2l0aCBjb21tZW50IGFib3ZlOgoKaWYgKCFjcnRjX3N0YXRlLT5oYXNfcHNyIHx8ICFpbnRl
bF9kcF9pc19lZHAoaW50ZWxfZHApKQogICAgcmV0dXJuIGZhbHNlOwogClN0aWxsICJfYWxsXyBl
bmFibGVkIGVuY29kZXJzIiBpcyBub3QgaGFuZGxlZC4uLgoKQlIsCgpKb3VuaSBIw7ZnYW5kZXIK
Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoGZvcl9lYWNoX2ludGVsX2NydGMoJmk5MTUtPmRybSwgaW50
ZWxfY3J0Yykgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2Ny
dGMgKmNydGMgPSAmaW50ZWxfY3J0Yy0+YmFzZTsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgc3RydWN0IGRybV92YmxhbmtfY3J0YyAqdmJsYW5rOwo+ICsKPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgaWYgKCFpbnRlbF9jcnRjLT5hY3RpdmUpCj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb250aW51ZTsKPiArCj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZibGFuayA9IGRybV9jcnRjX3ZibGFua19jcnRjKGNy
dGMpOwo+ICsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKHZibGFuay0+ZW5h
YmxlZCkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJl
dHVybiBmYWxzZTsKPiArwqDCoMKgwqDCoMKgwqB9Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoHJldHVy
biB0cnVlOwo+ICt9Cj4gKwo+IMKgc3RhdGljIHZvaWQgaHN3X2FjdGl2YXRlX3BzcjEoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCkKPiDCoHsKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7Cj4gQEAgLTk4MCw3
ICsxMDQzLDExIEBAIHN0YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9wc3IyKHN0cnVjdCBpbnRlbF9k
cAo+ICppbnRlbF9kcCkKPiDCoMKgwqDCoMKgwqDCoMKgdTMyIHZhbCA9IEVEUF9QU1IyX0VOQUJM
RTsKPiDCoMKgwqDCoMKgwqDCoMKgdTMyIHBzcl92YWwgPSAwOwo+IMKgCj4gLcKgwqDCoMKgwqDC
oMKgdmFsIHw9Cj4gRURQX1BTUjJfSURMRV9GUkFNRVMocHNyX2NvbXB1dGVfaWRsZV9mcmFtZXMo
aW50ZWxfZHApKTsKPiArwqDCoMKgwqDCoMKgwqAvKiBXYV8yMjAxOTQ0NDc5NyAqLwo+ICvCoMKg
wqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgIT0gMjAgfHwKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqAgKGludGVsX2RwLT5wc3IuaXNfZHBrZ2NfY29uZmlndXJlZCAmJgo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGludGVsX2RwLT5wc3IuaXNfZGM1X2VudHJ5X3Bvc3NpYmxlKSkK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdmFsIHw9Cj4gRURQX1BTUjJfSURMRV9G
UkFNRVMocHNyX2NvbXB1dGVfaWRsZV9mcmFtZXMoaW50ZWxfZHApKTsKPiDCoAo+IMKgwqDCoMKg
wqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpIDwgMTQgJiYgIUlTX0FMREVSTEFLRV9Q
KGRldl9wcml2KSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZhbCB8PSBFRFBf
U1VfVFJBQ0tfRU5BQkxFOwo+IEBAIC0xNTk1LDYgKzE2NjIsMzIgQEAgX3BhbmVsX3JlcGxheV9j
b21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAKPiAqaW50ZWxfZHAsCj4gwqDCoMKgwqDCoMKg
wqDCoHJldHVybiB0cnVlOwo+IMKgfQo+IMKgCj4gK3N0YXRpYyB2b2lkIHdhXzIyMDE5NDQ0Nzk3
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQo+ICt7Cj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSBkcF90b19pOTE1KGludGVsX2RwKTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlf
VkVSKGk5MTUpICE9IDIwKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47
Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoGludGVsX2RwLT5wc3IuaXNfZHBrZ2NfY29uZmlndXJlZCA9
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX3Bzcl9pc19kcGtnY19jb25m
aWd1cmVkKGk5MTUpOwo+ICvCoMKgwqDCoMKgwqDCoGludGVsX2RwLT5wc3IuaXNfZGM1X2VudHJ5
X3Bvc3NpYmxlID0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfcHNyX2lz
X2RjNV9lbnRyeV9wb3NzaWJsZShpOTE1LCBjcnRjX3N0YXRlKTsKPiArCj4gK8KgwqDCoMKgwqDC
oMKgLyogUFNSMiBub3QgaGFuZGxlZCBoZXJlLiBXYSBub3QgbmVlZGVkIGZvciBQYW5lbCBSZXBs
YXkgKi8KPiArwqDCoMKgwqDCoMKgwqBpZiAoY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUgfHwg
Y3J0Y19zdGF0ZS0KPiA+aGFzX3BhbmVsX3JlcGxheSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgcmV0dXJuOwo+ICsKPiArwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfZHAtPnBzci5p
c19kcGtnY19jb25maWd1cmVkICYmCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIChpbnRlbF9wc3Jf
Y2hlY2tfZGVsYXllZF92YmxhbmtfbGltaXQoY3J0Y19zdGF0ZSkgfHwKPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBpbnRlbF9kcC0+cHNyLmlzX2RjNV9lbnRyeV9wb3NzaWJsZSkpIHsKPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwKPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiUFNSMSBu
b3QgZW5hYmxlZCBhcyBpdCBkb2Vzbid0IG1lZXQKPiByZXF1aXJlbWVudHMgb2YgV0E6IDIyMDE5
NDQ0Nzk3XG4iKTsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY3J0Y19zdGF0ZS0+
aGFzX3BzciA9IGZhbHNlOwo+ICvCoMKgwqDCoMKgwqDCoH0KPiArfQo+ICsKPiDCoHZvaWQgaW50
ZWxfcHNyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkcm1fY29ubmVjdG9y
X3N0YXRlICpjb25uX3N0YXRlKQo+IEBAIC0xNjQxLDYgKzE3MzQsNyBAQCB2b2lkIGludGVsX3Bz
cl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAKPiAqaW50ZWxfZHAsCj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgY3J0
Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUgPQo+IGludGVsX3NlbF91cGRhdGVfY29uZmlnX3ZhbGlk
KGludGVsX2RwLCBjcnRjX3N0YXRlKTsKPiArwqDCoMKgwqDCoMKgwqB3YV8yMjAxOTQ0NDc5Nyhp
bnRlbF9kcCwgY3J0Y19zdGF0ZSk7Cj4gwqB9Cj4gwqAKPiDCoHZvaWQgaW50ZWxfcHNyX2dldF9j
b25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCgo=
