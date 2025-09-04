Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD32B434EC
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 10:05:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7753410E237;
	Thu,  4 Sep 2025 08:05:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XUxcUoCT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DC2010E235;
 Thu,  4 Sep 2025 08:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756973124; x=1788509124;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=tzRwDLgay2r6pUhOAv5MimLT0/wsIW2CJ92E8DqHjNU=;
 b=XUxcUoCTW4K/dXXUllQNPC9UGwK2QiPgvG//t4F7sW6gLaAdGKB4zdtl
 TDPXwURAb8CrQiGeW0CrNbBwvyZZxbvmn7RL9FBK47gHVrJR9Uivufgoq
 ndzWkBkm7wemCwddyhiFjdUinK/THho8aeIN9vJoF0S9YT/i+UhHxcVAm
 6abmsyeuE/O6vAQGPQ9J+XhCTHB1nFA7+L66920obarzEjFmksMNC2KH7
 TJLwc9bl1OVCUgj4OgiQR0rrVHdlk4pRhCCI7lFBXmAiNiOgggBgoZhGS
 vMM+VKFMptKb5CuRO/cwQRQKsj5axr/zfSzY+KL3h4+1DMA8QXhqNXvJB A==;
X-CSE-ConnectionGUID: UDslL1+sTMCrG6vGnJodDw==
X-CSE-MsgGUID: 0BFohe+uSMyujxnp9P8w1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="69918841"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="69918841"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 01:05:24 -0700
X-CSE-ConnectionGUID: E05Ig16QQQSgLbCW9vRAyw==
X-CSE-MsgGUID: vmAADQbmSwuNyD6DPjIAvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="209008539"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 01:05:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 01:05:22 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 01:05:22 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.42) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 01:05:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AEinx7AbSYd/+vZ8BEmEp81xUhaspdUiHPPYppv6FEGIKC46YObwSmhvSJbRvMOQhibrlexvFusGE6LboU8KaItjRMNGNrPUTFerOvEJuHtloiqMyp2s+OaaDz6o9yr0Y68nRgbbSUQOsIb+Ob4tBG+pRvJELieXfrr58nOr61GpFlOSENA3zw2AW/4E0SEmAMXMvxSmn9mGdovjGhiA5wLQzkDF1yBwSKOjyCwOkGxVsmM43xXvrNqBXsuL1/wvLWcpy1HRuhFVF2wcrCNwhrOpcHaCUMi3FoD/kYxtF5ImQnbfYTuiVbkPwUEpL3AEG9QLtxfXT8Cweb0unhGUYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tzRwDLgay2r6pUhOAv5MimLT0/wsIW2CJ92E8DqHjNU=;
 b=cuk/PXFuG8E7PxY3z5oH8uQtCOWlc0/oqd2oCzW27tV9PjO3OY6n3SpdelAqBMStJ/glw2QNd4jUKQGCM6sEWDYj7WW4aMeTOnMGmPrp2TFGrXr1/MBvriJF5CPHDKv6KcaEh1NfrYkp68rxASS99+wTtunA2ifrbwBSPwZx/8FfBWbvTDXFH8V1AS2/yABUVF9SGMGR91Bi7LWKxIOr856X3ejbuW8Fr2scUT5biKNIK/pwVmtxO1gQlI3bsIM9+5Jk6ULvm6p+//vOFZ/uaFn5tWfKth1bBSpGAGEik5x+p4Bwm5PZgacpUg88io9rqhrsc7whFY4RNm17XS0fRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ5PPF89507EDE4.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::83e)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.29; Thu, 4 Sep
 2025 08:05:20 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Thu, 4 Sep 2025
 08:05:20 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 14/20] drm/i915/vblank: use generic poll_timeout_us()
 instead of wait_for()
Thread-Topic: [PATCH 14/20] drm/i915/vblank: use generic poll_timeout_us()
 instead of wait_for()
Thread-Index: AQHcGBZwAHtB96oBbUSMBxnMU38eq7SCtSKA
Date: Thu, 4 Sep 2025 08:05:20 +0000
Message-ID: <5084cf397b5312678852a35e1406a41910cd05c7.camel@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
 <162dff5862d3213304491a6d2eb31a57346b523e.1756383233.git.jani.nikula@intel.com>
In-Reply-To: <162dff5862d3213304491a6d2eb31a57346b523e.1756383233.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ5PPF89507EDE4:EE_
x-ms-office365-filtering-correlation-id: dc97d822-b4be-4620-837e-08ddeb89cae0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?SkpJV010YTRoRG5ybUJGZXl1RFdZc3E5VmdTNVMrY1RQK0lyY1RLREh0VCtL?=
 =?utf-8?B?NTJzMGlsK1YvSExpN3d2N091bnBIekFiVVNMRk5ORFZ6YVU0Ny9LZDhldjda?=
 =?utf-8?B?YmEzM3hVYWFJcGl2STNSanV5dEFXMTJpU3BhQWZGVGkyK2tUWnF0OUpjS1pD?=
 =?utf-8?B?TnJ6bGtHZjR4V2RSekthY1BsOVRXVm5DRFRqR3Mrbk9uWW95RlJuZ1MzOEhB?=
 =?utf-8?B?SmJGaXVhMGduVUlmUEgrVWZPdmkzbFpFTnNqRUovekxjMGVkaWViUWk2OUdR?=
 =?utf-8?B?ZUQ0Nlo5TFoxeUpiSkJMN05HdGU4RnUra05pZmFwbjBLL2hHWGdHQUNGN2RR?=
 =?utf-8?B?QjdSMWVGVUJOZnYyREpidUQ0MFBIV3pyZjVRdTRuTkVTT1EyWDNkSVZEeVJ5?=
 =?utf-8?B?OVN0WERMenRneDNLUFExOFdyNmZQNmYrb0FFeHdyUUg3dmJwMCtxZElEMVJ0?=
 =?utf-8?B?S3Btek1haGIrVnR5ZEpqVnB3cWJEZnZaaG1HeS9GcTlCQlhSclpsTHpvbXlT?=
 =?utf-8?B?QW1wb0ZYZWkxamJ2VC9vQ1ZOQktwK2UrYWM1d1ZGb2dIUUM4NUM2RXlxNlJ0?=
 =?utf-8?B?aE02L3FRVElqaUpxbUZmR0tpYkpXRm0yaUdHRkQ5ZEN1Zk1RVjhsbUlkaXpJ?=
 =?utf-8?B?Q3BCUHBiWDJWMEpCRDRERjdiSGcrZExicGlvOHpKRlNNWThiWjFqY1NNM1hR?=
 =?utf-8?B?WlI2OFMra3piS0xKMGJoQlpaR3RKaDh3Y3YrT29jUlFyMXBzTHZSTHJmanox?=
 =?utf-8?B?UE15QTZvT0NzdU4vMU9ob1pSbklKU0h6WWxWaWNiRTcrbUVEdDd1aXpNNXJi?=
 =?utf-8?B?M0ZaYzZUdDRrSjZNVmUzZTlzZk9keEMyU0M1dEhrZEc5YkZ1U1R4ZWwyTlhM?=
 =?utf-8?B?WHJxWWV1TThtdURtNDI2MS9ybUNMNUNvZGxvcmxMSC9WKzRjNTZRSWhSYytP?=
 =?utf-8?B?eWwvUkZqVHFHanBOb3N5Z21RN0NjMTMwcEVsQXZZd3RrVXNkb2JRWWNEOHpi?=
 =?utf-8?B?UmUyUmpmSGpWb2RvVjNlVVN1TlNnamo4L0hlL0lKamF1Zml0bDhTcUxJWHN6?=
 =?utf-8?B?MUFmbm1hWDZUNUhhVDU0S21qcWs4cEl5ZWRZWm5LMXlmSndXaEFVQ0h0TVVS?=
 =?utf-8?B?S2JNaHVTZkNsTTA4ZG9Idy96bFl2WXFFbXl1NDhUZzNUZGZBV3dxYjRlN2xh?=
 =?utf-8?B?am9WaUgvQUcyK2hCYVhXWUNjVmxyWFU5dUMzaVY3UkJTNW50eG9EV2xPRmRJ?=
 =?utf-8?B?VmlCRml1WmVOeGZvd1VVY0cySzUvOG9tekJJQkRFa3ZZUHFSQ3REUWM0NkhC?=
 =?utf-8?B?c3hqaExCdGpyRU81ci9GWXdLY0UvVHdTYmFCbGdlcVR4cFdyTlBvdmRGUWg3?=
 =?utf-8?B?ZFFmbUxKOXIvazZyR3lOK3ZEVEc0TVJERERVVXJuVWFJL2RUWnR5OTdKYXhi?=
 =?utf-8?B?d2hxQ3lKczhVK09uV3NLSUJ6VmphMWVtbWswUG9hbkF5MVJRUUkvVGlKNVJW?=
 =?utf-8?B?cjZhL0JBdjdDOUlGZ3VDc0s0NHB0Y3l4R01yY0FNV3U2RFpJUGpjZERxdVA5?=
 =?utf-8?B?Y2JDSjdWVy95Q3JUUEJvemdrdjBRYXFUREdjZjE5OStFNVh3elBvSEhBM0VF?=
 =?utf-8?B?bUY3YzRvN3ZGVGUzeFI3VTljZUxacUtHS2ZYdlBtYmVtV0xtNEN6bldmR0Ro?=
 =?utf-8?B?dW1DZ0FIWndLN1Y3QTR1dnlVWWlaTUV0QW1zY1VTMERaZEtGZVRKdS8rUUQ5?=
 =?utf-8?B?eVJxcnhoNmFjL25lQTNZWS92ZXVpU1JlZmtvdEZMeUY2Q0ZteEcrY3Jmbjls?=
 =?utf-8?B?MmRkYjNKVzlMYy9qQUxpUFA5NklCcnFzR3NwMWRVaWJoWURXamdOT2RBSHhU?=
 =?utf-8?B?bGxLMzhTaVBacjVHVUZNQzB6VXVNNVBXZndmQ3MwZXZET3lML2lzZ3Voa3Jv?=
 =?utf-8?B?SWUrQzhQZUdyWXFUMjhCTHRpN1FjR0gwQnpsTkgrMXM3dG83VmxKcHNIQ3dz?=
 =?utf-8?B?Yk1NN3lKT3FBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bnAzVVdxdXJFYWs0Zm9seE5yZjhjS2tSWWJReEFobndjUUtHWUZReUNlQi9W?=
 =?utf-8?B?VjNvbmo5cHQxRU1XK2hsSDZnZTdWK21YdmRqQ0FWZEtJa2wwaUJXNmI0c2pp?=
 =?utf-8?B?VHRWd1FLOHBFSUxmK0VKb3FYUUZzeTZLL0FNMmM3SEl3Q0wxQUUvK1BUUHB6?=
 =?utf-8?B?WTcrUXdnb0h2Uldqc2ovZGR1UGJTUUpEVUN0ZUlrT1UycCtCeXg4UmJKaGRl?=
 =?utf-8?B?UG80K2FxUWQ3NTNtbVMrRUJZcEMxTUVnV1N5TmlBaEFOemd2UW96UWJEdytF?=
 =?utf-8?B?WVdEZjJWS2xXbXBCanR5YklIVmFBTnBXWCtMOG5SRVFuYmxtK2VSS2FQTmJD?=
 =?utf-8?B?dzR4VXBGelNjZUprcmN0cGova1NOVzA0cWcrNnJNRlE3ZitwSVZkT0ZwVTRj?=
 =?utf-8?B?Y21OaHM1R0pvQ1JBNXA2Mlh2K0JHR0ZwUVQ2MllJcHNhUVE3REZlR3NzUlFS?=
 =?utf-8?B?TUloNVVWSUh6MEhXQWVSUUNiL2F4amp2UndSWlNZRWs2NG1DTFU0aUcwL2sx?=
 =?utf-8?B?ODlMeTZ3UjEvSFFhOElkK2twd1llcEQ4YTk0c2QrZjZ3aWZ4ZWQ1R2VxUUVX?=
 =?utf-8?B?RS80QjZhWjlLNm1RSi8xVy9TNVRDWW1hTUFuWFAvZHo2L2J0R3g5MTd5YzEr?=
 =?utf-8?B?MFFYRWo1WEQvbTVaSXNnOTF2QzUyS2hMS2dDZk5tS1lwOXA3QWxYTUVDeWpa?=
 =?utf-8?B?NnVXNTVyWlRmSERBelRYU2d1Zmw0ZXVYOHZjV0lnb1JBQTNsNWJzNk9lTGRi?=
 =?utf-8?B?QkU0MDdDU0JZR1JQV1pZVDRSRzd6TlJHb2dFK0NST1RWME5RazBYV3pGSEho?=
 =?utf-8?B?WHliOGREVWpXdFY2bUNmOUxMTlVHa3FmbFdlWjZvN2Y0aGVmd2pMaVpNdnRv?=
 =?utf-8?B?dVo4SXcveWJaejBKa1lEUkh3Y0FjUDJPaTlCVlpGVFNpYkJPK0t3a3dlaE9q?=
 =?utf-8?B?S3IvT3c5aXZkUzlmRlRFMi9rajZBMFBEWGFSMkcyckpBdFY2MWtrSVhwNG9D?=
 =?utf-8?B?OUZEaTdMM0dnNHhaUktQTW9JUm9CelFlUE5PbDZMNUhSYzdlTGJoR2lCUDFl?=
 =?utf-8?B?ODJGbUtDZk5lSGpHV2Evd2xJMEJQamRtc1FpaFo1Q0hrUjZHYTRBVTI1T3BJ?=
 =?utf-8?B?NXQ1dWoya2F0OCs5S3pjcWcrTURmYVJYczhuRENKZWYvQjh6ckJ0SEQ4Q0l4?=
 =?utf-8?B?ZEkzcnBSaUVyV0xCdEtnMnFGalorUzNORE1tQ01BdlhWWUR3RURPMmRBTlps?=
 =?utf-8?B?WElRV0krNXdpdzI5Vi9SRnRvR3dDb3hPNnhXOTNUVENTd2hqbFE0RFYyMjUy?=
 =?utf-8?B?TjRPTkFiV05kakdCWnFQK1Fab3YydnRidEtrWWlCYmpjSytJS0dSUXNwRVJZ?=
 =?utf-8?B?Y2ROV3VWMGNEanRnSnVNRUlyTHZoR3Y3eW1ZMk5yMFBiUlRuZjFxQmtaaytZ?=
 =?utf-8?B?cktMNXRZTGJtbC96QUdROVpVRWs2dHY2Umt3SFVDUFFTK2Q1anJleGFJYlhV?=
 =?utf-8?B?eW5DU25jZ2tvYURnOEIzTXFrdElXU1pmcW9lYXRzUUZSc0liMkhoM1pBVEh2?=
 =?utf-8?B?SElFSGtHNW1CR01zZVdDekwwTzVvMEVuYjgrYkVSNks4a2UrU1U0NzZpUy9z?=
 =?utf-8?B?MEQ0VmxCc0tJY0JtbTltVkNIa3c0bGZ2ajhFa1ptRm5MbXlqVW5HKzdESGpE?=
 =?utf-8?B?REtDMFhCbHhvekt4T0FNRnN0em54ZGV0NHlBMXhTZ0JzWVVNU3J1WXVMYmJ3?=
 =?utf-8?B?SGs1Y2J2VWVjRHdERTBaOEdPOVdUU2ZkbkJDbFFYaDFsSDUrVXlxa1FYUVZX?=
 =?utf-8?B?THAxcXExVXVrRjJsdExqdFJVNGREV2crdy9RMDlVWVVaVXZ1VmxQQVJpT1ZK?=
 =?utf-8?B?QklIZStLMnd4enZXTS80NWdPVlZJTnhyL05OMFVsZHNuNUhMMW5tQmhTUkFD?=
 =?utf-8?B?ZzAra1RUTHJ1eGlBSXo1SmZDMUM5bm9Hb2srbFNOUXRDeFVFZjUvZVJieE02?=
 =?utf-8?B?cU01Ny9La0N3VWRiN1pUZ2dOV3dSVXNMK0xZNnArcVN1NGI4MDVtUkZTT0J2?=
 =?utf-8?B?OUM3SktxRlB2RnB6MjByaDRGWnRtTWtuSHl6YTQ3d0htQ2VvQkRSNmVTc2Rk?=
 =?utf-8?B?L0k5bzlvVGR2WmVyL3pkNi9zU1JJL3BGZncwM3JjSStaZ2piUUpvWkhZWkVh?=
 =?utf-8?B?NGh6WktuWjhVdTNmQytkRkxvMzB5UTlOeUxTZ1UvbEV4TElHem4vdHNIcnF0?=
 =?utf-8?B?NTh1WjFEMWVzdHNaTWJNNmFNNWl3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6E6312EFD7FD1643B7A6865A9DF4BD39@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc97d822-b4be-4620-837e-08ddeb89cae0
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 08:05:20.3177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N+4J7ahsQe45sv+m4zzVHLKZ0yUoPfCHkDGZkLz2wb1Uc7y1AelenQvCwVkfUcM18frE6UIlWFzR3ZFKk50jax8kTq3HdWAZ1OaMR99I8vg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF89507EDE4
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

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDE1OjIwICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
UHJlZmVyIGdlbmVyaWMgcG9sbCBoZWxwZXJzIG92ZXIgaTkxNSBjdXN0b20gaGVscGVycy4NCj4g
DQo+IFRoZSBmdW5jdGlvbmFsIGNoYW5nZSBpcyBsb3NpbmcgdGhlIGV4cG9uZW50aWFsbHkgZ3Jv
d2luZyBzbGVlcCBvZg0KPiB3YWl0X2ZvcigpLCB3aGljaCB1c2VkIHRvIGJlIDEwLCAyMCwgNDAs
IC4uLiwgNjQwLCBhbmQgMTI4MCB1cy4NCj4gDQo+IFVzZSBhbiBhcmJpdHJhcnkgY29uc3RhbnQg
NTAwIHVzIHNsZWVwIGluc3RlYWQuIFRoZSB0aW1lb3V0IHJlbWFpbnMNCj4gYXQNCj4gMTAwIG1z
Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4NCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KDQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJs
YW5rLmMgfCA5ICsrKysrKysrLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3ZibGFuay5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92YmxhbmsuYw0KPiBpbmRleCA0NmQ2ZGI1ZmVkMTEuLmMxNTIzNGMxZDk2ZSAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jDQo+IEBAIC0z
LDYgKzMsOCBAQA0KPiDCoCAqIENvcHlyaWdodCDCqSAyMDIyLTIwMjMgSW50ZWwgQ29ycG9yYXRp
b24NCj4gwqAgKi8NCj4gwqANCj4gKyNpbmNsdWRlIDxsaW51eC9pb3BvbGwuaD4NCj4gKw0KPiDC
oCNpbmNsdWRlIDxkcm0vZHJtX3ZibGFuay5oPg0KPiDCoA0KPiDCoCNpbmNsdWRlICJpOTE1X2Ry
di5oIg0KPiBAQCAtNDkzLDkgKzQ5NSwxNCBAQCBzdGF0aWMgdm9pZCB3YWl0X2Zvcl9waXBlX3Nj
YW5saW5lX21vdmluZyhzdHJ1Y3QNCj4gaW50ZWxfY3J0YyAqY3J0YywgYm9vbCBzdGF0ZSkNCj4g
wqB7DQo+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxh
eShjcnRjKTsNCj4gwqAJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOw0KPiArCWJvb2wgaXNf
bW92aW5nOw0KPiArCWludCByZXQ7DQo+IMKgDQo+IMKgCS8qIFdhaXQgZm9yIHRoZSBkaXNwbGF5
IGxpbmUgdG8gc2V0dGxlL3N0YXJ0IG1vdmluZyAqLw0KPiAtCWlmICh3YWl0X2ZvcihwaXBlX3Nj
YW5saW5lX2lzX21vdmluZyhkaXNwbGF5LCBwaXBlKSA9PQ0KPiBzdGF0ZSwgMTAwKSkNCj4gKwly
ZXQgPSBwb2xsX3RpbWVvdXRfdXMoaXNfbW92aW5nID0NCj4gcGlwZV9zY2FubGluZV9pc19tb3Zp
bmcoZGlzcGxheSwgcGlwZSksDQo+ICsJCQnCoMKgwqDCoMKgIGlzX21vdmluZyA9PSBzdGF0ZSwN
Cj4gKwkJCcKgwqDCoMKgwqAgNTAwLCAxMDAgKiAxMDAwLCBmYWxzZSk7DQo+ICsJaWYgKHJldCkN
Cj4gwqAJCWRybV9lcnIoZGlzcGxheS0+ZHJtLA0KPiDCoAkJCSJwaXBlICVjIHNjYW5saW5lICVz
IHdhaXQgdGltZWQgb3V0XG4iLA0KPiDCoAkJCXBpcGVfbmFtZShwaXBlKSwgc3RyX29uX29mZihz
dGF0ZSkpOw0KDQo=
