Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 207849D0A64
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 08:48:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B26610E32C;
	Mon, 18 Nov 2024 07:48:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SrjPUeMw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73F4610E32C
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2024 07:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731916109; x=1763452109;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=hMaeFiR72y8piu7UhZQ2Bnh5BavX8irs8h5am3/7E2Y=;
 b=SrjPUeMwXk2OK3bjl9jS5TqkYWitlFvif9jcS320PT8uodyg3WRUYjRv
 wQG8gr5XBf89QdPEGyhpMFpVzrCsWnqJJeXnNHus7RSnmRA1r0b718taB
 Nb+00cgWmwqHn6nN7at6/TsXhirF5zf+qymixXFezGOWXRk6dHduxQ+pA
 8w3MiSk5x8Q01NWDMhi3CSjPLFyPWLExIEt+vrjZ8+TxAIipChP/wpWxJ
 ESmb6Fc2K+ID+n07YcUs5koZmcgeG0yCCMneEnAJc4oF/xREv+ZR9Kun9
 C2VM4yiHnECb5u7IGEs+qTz4zEWjXbsBzZZXukuGhmiA+fD0+VuX9OACK w==;
X-CSE-ConnectionGUID: GRX3WiVkSLCL22Id9Hlamg==
X-CSE-MsgGUID: rJgyEKHyTFW+3z0/pjTs5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11259"; a="42497643"
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="42497643"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2024 23:48:29 -0800
X-CSE-ConnectionGUID: Et76jQLFSxefyEZjswF+Lg==
X-CSE-MsgGUID: Q3kHM8dOQu6/7YIEp2tYkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="89551823"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2024 23:48:28 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 17 Nov 2024 23:48:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 17 Nov 2024 23:48:27 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 17 Nov 2024 23:48:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ah23g5LPi1kFVkV3EMK2f7QvqjaKarVRH0MyUx2pj9B958tRQDkUGvSFZqEIvbkA9Yxyrajgni6isqR8dwsK1ltEXSg0jdlF7KKIhVwQEq7CSK9p5XWWgcXOBBaFc0YeNuv1ZZImLAeh4aB0dv9RF5QxuYUBGiCpKf4nHdACT9pv6geFP5gNlHpmZnKGCIab4Pqwtxkd77YdFtSfzbHOoY3IhgC+M3Bn5VyvXw35dAR8C2bLtE0fX2DdEaAWyXwS/1UPRyzVSyzDG5fNa/n/VBiCtzdsghMOlJrAyUwQkbEWagtuLuBn/ubccbfGf/UIUrawbkjbskpDSS1ck+WsQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hMaeFiR72y8piu7UhZQ2Bnh5BavX8irs8h5am3/7E2Y=;
 b=MIRwXyftJwH8uxboj27o+92FBCIe5d4GN9debQTsYCmLlQkVYCjurU7yFqoIeCV3JiIQafNLZzmEeiP6eTO8psY9QIvpQJ5Jtj7pu0FJh2t6QRt9HOPpT95iNCK0HHdtTin9OKsWi6GBV9lOczagAl3qRCYg1WTb50+O5/7b6SoS+Erecs/G1Nr/g7Ik79pL5WkZAQQLITGUPPf5oANt5aHa4E+QxG/VESRkcVM4B/aQtGtWJsYnCtd6+goQDtTYOok+wke3js/Qlb44hsoXP9+wg20LUJb30MmSPclrbDSQasXjVkih/S82fZByaCQ39qSdqxeRM64VBtl4q+gTmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB6796.namprd11.prod.outlook.com (2603:10b6:510:1ba::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8158.22; Mon, 18 Nov 2024 07:48:25 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8158.017; Mon, 18 Nov 2024
 07:48:24 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 6/9] drm/i915: Disable scanout VT-d workaround for TGL+
Thread-Topic: [PATCH 6/9] drm/i915: Disable scanout VT-d workaround for TGL+
Thread-Index: AQHbGng/Te/2IGXERkiS3ASkvKxTxbKV0AeAgAaPcoCAIIgSgA==
Date: Mon, 18 Nov 2024 07:48:24 +0000
Message-ID: <eb9c9914d8a53c0b4823a5a991fb23669b686697.camel@intel.com>
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
 <20241009182207.22900-7-ville.syrjala@linux.intel.com>
 <cf761598f491ed4567bd8937b2fca1593bce4e6a.camel@intel.com>
 <Zx-nL8970BVaxlLE@intel.com>
In-Reply-To: <Zx-nL8970BVaxlLE@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB6796:EE_
x-ms-office365-filtering-correlation-id: c4062b97-299d-48d4-abb1-08dd07a561ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?MTduYmZaZkFCTDNJRGJKc0FCQUxlTTFUd1A5ZFh4RnFEbzBiQlg5ZTlvZ0cw?=
 =?utf-8?B?OTdQSm4vU3N1MTdTTzNqZjVieVhxU1dGTHlaTStsQ1NGQnBONm9MdVFsb3c1?=
 =?utf-8?B?dTMxWkpidmtDayszQzB5SHRUbXpmamVqbEsvVjRjUkNqdVB2RWpCb0FWK3Bn?=
 =?utf-8?B?Ri9TSzBpMkRtU2FMaEw5TWJpSitvR0VOQmhPeVFBODhJczdUek9ueEMreVln?=
 =?utf-8?B?OXJlSkt4anlhRG1PbXd3VWY2dVhhN2dRcmQ2cjNxaWpXb280UC9BbUZhR3h6?=
 =?utf-8?B?aFRtd3BkUTFDOWpHNnF4MmlsUHpJczhtSTZVSXM2eWpzMk1wTlRBTUNmTGZR?=
 =?utf-8?B?ZnNodm5xcC9VUnpOVHVWa2tTcU9yaFRPbnFzK2J4eTJvZy90eDlxUVc0K3pT?=
 =?utf-8?B?MFdpa3pVK0Rhb3pqbURWSlFkNWRuTmF4Ynk4L2VjbWQyVU9la2U0eGJHNkYz?=
 =?utf-8?B?L0VUL0RVM2YvN0xSelBPYnBwbXNkWjdpMzJ0ODF2QXM1bmZTcmtwKzYrV2Y4?=
 =?utf-8?B?WkthUVo2Mm4vVzVzVzg1ZzhacmlmTTlhUU9aOG8yTXM4TEs1K3lCb2wyd2h2?=
 =?utf-8?B?Z05ySkMyV3pVMEVOR2lDY1N5dWZSSGNHa0tWYlFsVGNnU24vNngxblVvWlZn?=
 =?utf-8?B?RDYxV3pjbU9WbmtZSU5KWExOSzhTN3gwdktHUjJodXJScGEyMVlCY0h0ZENh?=
 =?utf-8?B?bDA3VmNlWmJIVXVicjRaZW5TMjRGMUFhcXBYSi9jbGloK1p1TE9ObXZXR1hx?=
 =?utf-8?B?UDZBZElUQTVBZk8wQjNJK3dMQTZGTlRMR2kwTU04OXZaUm1oYlBoVGtNSW14?=
 =?utf-8?B?TVFoa05GUVZsbS84aml6QThCT0J4emNHVFJDdFoxdEtmQmVxc2pnRDNsYlY5?=
 =?utf-8?B?M296VXZBcGdPcjBoSVpMM3pST2w3akxFSDFwYkdVTW8razhLL1A3STJzRi9l?=
 =?utf-8?B?aVJtbXd5Zkk3dTMweklWSTgvb3A3Tk1DbVRvZU50dWtQVTl2RU1wWEIyRkZ5?=
 =?utf-8?B?U1F0VFpuaEJnMTRGSmZndUlCQ1ppaE1WN2ZueHMvUDYvYlBQeGc4RlcxcXIx?=
 =?utf-8?B?UTNZTjZ2aG9VUWVJeFkwSjgrejExOHlFUHd6V3N1YmlySHRsdmw1elpvejFx?=
 =?utf-8?B?WTh6Z3RBc2F4SnV1bjlUaFoyZ3VKWS94UFlaV1RKd2N3R0VVWDFxYlQ5VzJx?=
 =?utf-8?B?bDh6L0F4a2kwby9jTml0cTNTRHRYQ0pkakgyM0VtRU9GTWRDa21yL2lRZjd6?=
 =?utf-8?B?YWdLS1AvVU5HNndmdXFTTmVpVzdFQkRSdEIydnYzdGFLbDhBcEVHelJqSjZ6?=
 =?utf-8?B?SlBNM1BjU0FEOXFtSnltN3hxRUVlYmVmL0RZeDdFZmNtR3lIUWc1NzhtK1Yz?=
 =?utf-8?B?N0IydGNISko4dkEyeDdoUUlOWEE4UTdyeDZiRC85ZklDV3FjRWhzd3poeEwz?=
 =?utf-8?B?enRLd1YwTFhzUStNbEpOekFuc1ptL2JkSUlDTW5zOHlSYVZsYW9MenJEQTdp?=
 =?utf-8?B?SXR6Qkt5dXY1TlpzU3RpSTZSTkcwdTZaajEzdGdEeGlJNVd3MXdWT3hsY0JT?=
 =?utf-8?B?Z0YweEN1S3FUcXpkSW5UTEQ5TzZwTW9HSUsxMmsyQzVWcS9POHhPWUNIRDN1?=
 =?utf-8?B?MUo0NSt2WGJxWmdlRzM3WTRxcy9xQWgrK2VZVGRCaThnTGhwQ2xvdzlRMWJX?=
 =?utf-8?B?S2RRQzQ3b0pOL3JnVGZHdGdTQWRNWVBnNWM2Tk5YM0VHelpGc0s0cWUxbmgv?=
 =?utf-8?B?QnRTeFZGejU2NzhieW9VdVMrY1NXcWNEaDA0RUQvRGRCUy9ydnJCSmp3Y2dP?=
 =?utf-8?Q?w8XHO+0J6HJ8u0A6FioY9LIKFqEh+rr2C0N64=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M2poRGRpSEdqckdwckJUWk1OS3RFc1lYWlJwQ0ExemVsNzJYdW1NZytVenkr?=
 =?utf-8?B?ZHh2SzRORnVCS2txUDdoNGV5cVVZUTJyK1BManZ3VzBVY2tIN0Y0bUdSbVA0?=
 =?utf-8?B?K0I1cGxHNHZiQzRvcVhVcVVTNnR6NHNXdmdiWERocER0YjFvS3NzdUtWUkRT?=
 =?utf-8?B?a1I0U0tlU04wK1lCMGJMNGhjeFpRUnhvY21WLzJCNjdWOFQ4V3FPblIybVov?=
 =?utf-8?B?RGFNOWd3V2txVnh6Rkk2ZTBsME1DaDMwbzhTVS90RlA1c1RySFU1dXBvajc2?=
 =?utf-8?B?K1RGdzdiZzkwZ0JFNDV1YkcvaTBJK2dUTkJ0WjdFb0huZWtHQ2Znbm9UTi90?=
 =?utf-8?B?QzlxTFpsRUhVZE9uSVd1UzdaVmhKSTIzY2lHWkZsU0EveXlJOGhJOVR4YVEv?=
 =?utf-8?B?RjByS1czRjhjZkFmZ2ZNcWtXV3daTkVmeS9zUWpZdGpYbU5CWUxiSDNUZzFN?=
 =?utf-8?B?Vnd0TzJnaGhDdHZmUFhMVFZMYWRTTUQ0ak96aWcvSFpGTGJCVzNyNjFnSU1k?=
 =?utf-8?B?MFJNcjBCYnZqWTcrRDh5NUp2bGhJSWdaVUpEb25sSWlTSXJFUFVPMDVJZHNw?=
 =?utf-8?B?VnUzTjFjTjRtZndCUGU4YjJ3TGpmRDZSemRoT0Z2SDl4Uk1yTVFjdnFHVXQx?=
 =?utf-8?B?dDVhQmpqbE96U3Q0OWhCalkvSTdsN3VyWEFQZ3BvZ0RtS2hoNlJJWmlNQnQ4?=
 =?utf-8?B?OTdiY1drNyswZkhpQmtyaHZGMHgrLyttQkdhSWE5UmJ4dWErOXppamhLNnlH?=
 =?utf-8?B?dmx1ZWplQVlSNlE1cjBkN2JYZWpkOVphOW54eGNKMkhVc21HUmN5dEwrM3RT?=
 =?utf-8?B?RHR0MkhxQ2RNVC9zcXRUdXhvS3YzTjdCd3hJTElYR3g4SWJiTlp3U2tZZ1or?=
 =?utf-8?B?R29MbjFFTlU2RWZhcDRTT1BjNWdUajJFU0d0ajVtOFEyajhKL1R5UWMwQWRK?=
 =?utf-8?B?cUczREVMa3lTRTFtWURCVGZmZkplbWZMcHY1N1pGaC9HYnJhTm9TVEVmMlFP?=
 =?utf-8?B?QkpwSGpKOXBSektpeWhkZzJDMUhJcXMzNUNIL0ZqaC8wS0xTQks5VzVSRUVB?=
 =?utf-8?B?TnVmZWNHMVFxTnRucnVhZzQ4Z1ZIcmttR3l5bThRcmpPTWREM1pYV1B2MkdY?=
 =?utf-8?B?bFNISmozSVBZbmVMdFhCY29meW1tcFpnZEZISFMyUmsrQmpPbzFYMzJwWlhh?=
 =?utf-8?B?cWFCV2JFZVZPOU5VWS9xa1hFVzlWZS8yQmpPaFBVOTBicStXUHo0Nkl5RHlD?=
 =?utf-8?B?WTBxaXZRa1lhRmtabGVkTGphZzlvSVVTNitwUTZpRlhJL0pLQW1yV2NVZnlY?=
 =?utf-8?B?WFZTYnhvRy9OWDEvVFZSWnN3MUJjK0NINVRrS0gzV05KN200K2hXZDM4WDJn?=
 =?utf-8?B?Vm4vQzY0MmQ1K3hFa2l4TjU5UlYydU5NaXN5dUxJV0pyVlU1VkNZQjNLRnVO?=
 =?utf-8?B?azdVQlJGQWN4emdFZU8yeUtpOGcxVXFpdlhxbkEwamE1bDR3bnFuVmJBZFR5?=
 =?utf-8?B?ZG9weWNibmYvS1RnY01UZ2NqTHVMTy9ldHVXL0tWblE2cWxacEZvZllVenZD?=
 =?utf-8?B?OGFOUzNhdDVIWkZDY3BFUUNkSFp3TzdVb3d3SkZqT0dGQ1dEaTFkWU0xV3Nq?=
 =?utf-8?B?TGpyMnpyanJ1T05SOE0za0NzUXRTN255WGxqc0pZQk0yMEk5UkVyVFFnYk96?=
 =?utf-8?B?RXM2TkFHYTBLT1hEMHl2TU10eVh5alZxRGZBRTdBaVpvTU9IcExLM2l4TUJx?=
 =?utf-8?B?ckxCVjJUTVRlRnVhcDRzYVVrSVhiM3dsR0I2Q2pBZmZ2L1VweTNjY0VwOHFk?=
 =?utf-8?B?V1pxNWdLaUM1bFlROVlTbjBnODkweUxxTk9IZEE3WTBHcUlKYzFCNCtUV0Jl?=
 =?utf-8?B?Z1ByaFUwUDNwYUdxc05mUGo4azB6RGc0WXY1b0dlTSt2VHpzR1A5TUg2WHcy?=
 =?utf-8?B?ZUhXMkZ1SFZUU3V3NmJzUFhXUmp1NnVLTGNZTmxIVDg4WXprK0VSQ0luSmlO?=
 =?utf-8?B?Vno4NWg0eGxISzN2K1ZvWkttYXlLSThod1VaUExTU3duQVhaR3cxdDFhTldW?=
 =?utf-8?B?ZjFkaGNXWG5IU2ZqcTNvcXI0a0RRVU4wdEMrcFY4TWJUTUs2VGg4UnVUdmtW?=
 =?utf-8?B?OGZCNjZ3ZFd5WVQ0VTNyMGVlMjBTR3c3Z0cvaWRNSWgvTDJMbWVGYVl5SlNJ?=
 =?utf-8?B?UUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <67AC052823BEAF4FA46B44A53026CCC5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4062b97-299d-48d4-abb1-08dd07a561ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2024 07:48:24.5793 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EGSx427D+JBRzNyQf5FRMc8Smx21xMsY1YvhiO/Bd8IwtQSOrj4tgXdpTLYmMuax4Eg+Ic/pY0iDwFKWpImSU8l6ieEn1ZgHcM4lNUlanCg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6796
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

T24gTW9uLCAyMDI0LTEwLTI4IGF0IDE3OjAxICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgT2N0IDI0LCAyMDI0IGF0IDEwOjUwOjA2QU0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBXZWQsIDIwMjQtMTAtMDkgYXQgMjE6MjIgKzAzMDAsIFZpbGxl
IFN5cmphbGEgd3JvdGU6DQo+ID4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiA+ID4gDQo+ID4gPiBUR0wrIHNob3VsZCBubyBsb25nZXIg
bmVlZCBhbnkgVlQtZCBzY2Fub3V0IHdvcmthcm91bmRzLg0KPiA+ID4gRG9uJ3QgYXBwbHkgYW55
Lg0KPiA+ID4gDQo+ID4gPiBOb3QgMTAwJSBzdXJlIHdoZXRoZXIgcHJlLVNOQiBtaWdodCBhbHNv
IHN1ZmZlciBmcm9tIHRoaXMuIFRoZQ0KPiA+ID4gd29ya2Fyb3VuZCBkaWQgb3JpZ2luYXRlIG9u
IFNOQiBidXQgd2hvIGtub3dzIGlmIGl0IHdhcyBqdXN0DQo+ID4gPiBuZXZlciBjYXVnaHQgYmVm
b3JlIHRoYXQuIE5vdCB0aGF0IEkgZXZlciBtYW5hZ2VkIHRvIGVuYWJsZQ0KPiA+ID4gVlQtZCBh
bnkgb2xkZXIgaGFyZHdhcmUuIExhc3QgdGltZSBJIHRyaWVkIG9uIG15IElMSyBpdCBhdGUNCj4g
PiA+IHRoZSBkaXNrIQ0KPiA+IA0KPiA+IEFueSBwb3NzaWJpbGl0eSB0byBoYXZlIGJzcGVjIHJl
ZmVyZW5jZSBvciBpcyBpdCBqdXN0IHNvbWUgb2ZmbGluZQ0KPiA+IGRvY3VtZW50YXRpb24/DQo+
IA0KPiBUaGUgd29ya2Fyb3VuZCBpcyBkb2N1bWVudGVkIGluIHRoZSBQTEFORV9TVVJGIHJlZ2lz
dGVycy4NCj4gSXQgaXMgdGhlcmUgZm9yIHByZS1UR0wgYW5kIGdvbmUgZm9yIFRHTCsuDQoNClRo
YW5rIHlvdSBmb3IgdGhlIHBvaW50ZXI6DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KPiANCj4gPiANCj4gPiBCUiwNCj4gPiANCj4g
PiBKb3VuaSBIw7ZnYW5kZXINCj4gPiA+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDIgKy0NCj4g
PiA+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4g
PiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiA+ID4gaW5kZXggMmFmZDEwYmJlN2I4Li43YzI1MDYwZTVmMzIgMTAwNjQ0DQo+
ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0K
PiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMN
Cj4gPiA+IEBAIC04Njk0LDUgKzg2OTQsNSBAQCB2b2lkIGludGVsX2hwZF9wb2xsX2Zpbmkoc3Ry
dWN0DQo+ID4gPiBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+ID4gwqANCj4gPiA+IMKgYm9v
bCBpbnRlbF9zY2Fub3V0X25lZWRzX3Z0ZF93YShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkNCj4gPiA+IMKgew0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgcmV0dXJuIERJU1BMQVlfVkVSKGk5
MTUpID49IDYgJiYgaTkxNV92dGRfYWN0aXZlKGk5MTUpOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKg
cmV0dXJuIElTX0RJU1BMQVlfVkVSKGk5MTUsIDYsIDExKSAmJg0KPiA+ID4gaTkxNV92dGRfYWN0
aXZlKGk5MTUpOw0KPiA+ID4gwqB9DQo+ID4gDQo+IA0KDQo=
