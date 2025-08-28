Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA51B393E9
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 08:39:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDEC010E19B;
	Thu, 28 Aug 2025 06:39:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kPnYmnsQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A03710E194;
 Thu, 28 Aug 2025 06:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756363160; x=1787899160;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JOwy7PtlZIsbDULuBMRVN7zFyg0uFf9wbJsLCV9UL08=;
 b=kPnYmnsQqRygfcXfOeqcXSqfeTALqQSuL11k/DMBasKKvAW3voItCBf6
 uRoPcXutvtbUT0+pSOBA7kEja441L6ix16PO0DKalzEcG5R6TMyxGAQ01
 IOIC+oH1bLQQsubUQE76sKXpvPq6Jz8v2aUmZdUWcmUASxSgjLra9TsVJ
 lJiyHTmdm/C7Lo0yNMJ666M46uyKYt+8YG2Qe32RJxYLuIjsnVMKbW0t+
 JE5712YflFR+syyE0nAAi7MLhF5hbI6l1IioJEIlrwrmcQIf44h+AXxWx
 YKTGRKGHJIt/R5YBmT26HPZUUBycQOL2qtzMUT+yitknl9PacdgbORWB1 g==;
X-CSE-ConnectionGUID: BEj2fV/VRX68o9MyaprFzg==
X-CSE-MsgGUID: bHu7B4JxRPWMfp6B4whxzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="58687712"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="58687712"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 23:39:20 -0700
X-CSE-ConnectionGUID: 77+qbvgiRk+ns3lmDQmk2g==
X-CSE-MsgGUID: RfdzfIjzTCCPBHHgwph1cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="169627752"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 23:39:19 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 23:39:18 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 27 Aug 2025 23:39:18 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.86)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 23:39:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BqSappkAB02dMYth2fMqAnJpvdAZkmysJ4ww0PgAxSVT20pk6V+expiiHkltpVdfyghphtIvp4BEpyvWgEOHjR3BK0p0xp+61+OMC68R3QuMKhNo7qoJMsoIDrCvG+lUU+1cvbQ8+MkgrBUTbvxCbxMWO1gAvHmpSiMHGJYiajkP2V75QR9oZR9HRIus2hM/zGa2wYCqz03WFEvqfTPLUUsYUDGulpZbxjKHN3qfn8upkomlHU2BNXn/Uk9rUcWL4fefXxiGkuYhYnkFMdoX//786iuWgCb5Nu6MyPH1H1MgudmsCQNut1MJHRSNmVdbvscpO/+HIX9s48+4j5C1qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JOwy7PtlZIsbDULuBMRVN7zFyg0uFf9wbJsLCV9UL08=;
 b=aGXGK1CG+n7Yc7z7PZ/1aghfVeqLswo9s3hvTY8iVY9kmd8IAFFGe/9bJwCMqcULnpTeiUQ/1X4p+yqXfilfFGxSkzuLS9NWPpiFGhbpwOB0WwlRNPkZtnRjQo1atrIr+9pPSWrVG74WDE1+KSipPMb8Eebkh8xuNi5aRpQha1RnB/h9HcVJDqkR1LDdO7tML6vYEzyVyeOc0EGcyN7oimJyNrWIh/J0guw46FLfFzSTaBpHR2e9OdbTrWUCd7z6Wk8E+BqzErwFY9mxKfgvsG5ZEsSmVoxI4K6aOzmIpQQoMuMl6VuG1Ar/0BU7aFJ2rqalB3pqBR7Nqc9xdA4Oxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 CH2PR11MB8867.namprd11.prod.outlook.com (2603:10b6:610:285::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9052.20; Thu, 28 Aug 2025 06:39:07 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c%4]) with mapi id 15.20.9052.019; Thu, 28 Aug 2025
 06:39:07 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 1/4] drm/i915/alpm: Calculate silence period
Thread-Topic: [PATCH 1/4] drm/i915/alpm: Calculate silence period
Thread-Index: AQHcDCDwvdIMRiBl60mxdvjGCFmasbR3tGZg
Date: Thu, 28 Aug 2025 06:39:06 +0000
Message-ID: <DS0PR11MB804924C06537839DF9078BEEF93BA@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20250813070617.480793-1-jouni.hogander@intel.com>
 <20250813070617.480793-2-jouni.hogander@intel.com>
In-Reply-To: <20250813070617.480793-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|CH2PR11MB8867:EE_
x-ms-office365-filtering-correlation-id: 9114cf91-8bfb-4468-c60a-08dde5fd9678
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?UU1rQjhjdVhzekthM3Z4WjlUc3l2dC8rb2Q1SzdXbjgvK2dQYlcwYWR6YmRz?=
 =?utf-8?B?NHhobEt4UW5VNTRHbjNHSzNPamh2alFTREtrNXkzUnZTSFZTdlRTUDNyS2Nv?=
 =?utf-8?B?VXV6RWIzbm1mVUt6NzN4eWtxNlhsYWU3TTBUNGVtd1hGK0o3cThyejNuSTRI?=
 =?utf-8?B?VjZIYThSOFY5cGMzendibUZmVGowVUFURG5nZjVtQk1TYlB5VE90OHpGN0RN?=
 =?utf-8?B?b2VVWXJISDk2Y0I4Mmpsb0dIekpHaGtVTXJLSk8wRXlJeGppUEtpQTdDbHZU?=
 =?utf-8?B?NDFVK0E0bjRhREVxWkQ0SmYyd284YnVqM1JuSURLU2xERFNjeFRWSFMwbyt6?=
 =?utf-8?B?TzRBWlZ0c3Q5S0lnMDUyYktzaVJvazRHSFUzdkk5akVTNC9KTU45WkF4YnM1?=
 =?utf-8?B?MzJkbnlodGtmVXl2d1RXRGMrOVU1c29xaC9MTVFtbDd6QjdWQ1Fha0doMVNu?=
 =?utf-8?B?SnlEdTg2U2tSZFFQL0VMREN0d2hVdXg4N1NrM0k4M2M1QXdjeFYxL3hHUE50?=
 =?utf-8?B?WHE4MTVWejhJeVp2OWtyMlVKdWpwM3c3UW5UR3ZjY1h4TzdUbExkRjIxZ2tv?=
 =?utf-8?B?bmFHbU51am5PU05wUDJvUkZDamdJQ0dCdUgzd0kxekxHVUVyR3BKZDcvcy9I?=
 =?utf-8?B?clF6c0k4ODY2ZlVOaXd6M1hHZEEwMHNWbFNxbkZvR201Y2poVTNJemlod09p?=
 =?utf-8?B?SXkvYitXR2wzaEdadXlYRzNBL1lrSVJ4WitMVGQySkJjdUpxWHRsaXdUVi9h?=
 =?utf-8?B?Y2RBK3FkZUdzMnZCL1VLcWhHYVFnOXVHMDhnNTh0VGRwYWtFdXM3eld6a0d4?=
 =?utf-8?B?eHlYQ0hybytmWWc2eDFBamJlajNjdnFqSkFzSmhCUEt2R0ZuelBWRFlCM2t0?=
 =?utf-8?B?ZjRnSmNNanZnU1dzc0JSRmpRRlg0YnkySE1KVEF5NTdOM1o5Qm4yaVdtd215?=
 =?utf-8?B?QnREaW9JTnpjTmRjWGFaemc1SG53TWNVWWJXczZub2Y3T3VPN3dwbzVGbm1p?=
 =?utf-8?B?N3BSaHk3NkJoTVFVblVrWWVVNlF2ZzRTdHhUQzAyVERtMnNmZUtpY3FEV3J1?=
 =?utf-8?B?NHBraS9ON25mU1p6SFN1b0dNbCtjUmxMeFphSmpCeFd2UFh5dytIN0lOSzNJ?=
 =?utf-8?B?dW5Cc3VwRkF6YS9qRTExOVRMK3R5QWhVRHhpOWl4Zm1GaEtkc1ZXeXBZQXl2?=
 =?utf-8?B?VE1SVUduMjhiZk1CV3hzOXlLaWt0cWFrZ25wclRRajlPdGhmbUJNNzdYTHBR?=
 =?utf-8?B?MndWMS9EWUFyOThyL3JCeFYwSVpvcFVGcjNVZlBKd0dsWVNLdTliUDZ0bDRq?=
 =?utf-8?B?WStpSHJwdy8zMmtibmFFdmN5bFZrd2FEOTBocS9qMGVXNzV5YVhqT3F5SDNH?=
 =?utf-8?B?QjVCeWtPd0ZoSHNPbVgyb3NlOGVOQzRTRmxUMkZQZ2dmSlpiT3hNVG91QkJq?=
 =?utf-8?B?ck83MlZ3Z0pxWThpTW9BZk8xUFlER01zWWYvRTdOcXgxOWN3U21VL3JDZ0lI?=
 =?utf-8?B?RlRYRWM0eFU5STBvYTFXVzljSnBRb3VCa3VSNXRUU1paemljWnR5anRwelFH?=
 =?utf-8?B?elJPZUEzVk1YLzJKTkw3bVh3S0FQM21EcDd2L0huakxxQnhxY09qb0krMzBL?=
 =?utf-8?B?Z21ocDdQc3dXdXFhRzlkYlRhdGRmMkFoeHVoZ3pDUEpKSmJYVnFuOEZsMFlN?=
 =?utf-8?B?ZlRBNlhZVzhNdmdYbWtQRFZNQkNBbHJzN0FwazY2YjJRbU9KUUJ6WU5GLzR5?=
 =?utf-8?B?cWp2MC9ZOEdCN0w1aEMwUDYvQUJsQzJWUDQ0bCt2Wk9vR25qTWY3SnZSTGR6?=
 =?utf-8?B?ZWNQR05DUjRSUG1ISzFrKzJ4SGMxdWdscjVXY1Y2TnJMa3JJMFg2SC96dWJa?=
 =?utf-8?B?S2tWQmdsSTNhVnNZRkxUZ1paU3dJWXhxTU9vU3VUK1VkZDBEbG94dkt2dWND?=
 =?utf-8?B?VXBzMFFHempXOFY0dThqRkN6WXFURTh0OWRsUTZ2STczQXMvcjM3SjFSQ3V1?=
 =?utf-8?Q?ziCeNhwBgCMemWcoiAnNwlchPLS1p4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WVdNdndXQUljR3oxczZRM3QwOU5zVEZIdHUvbnVYWHNGd20wZGxPdG4rUFlr?=
 =?utf-8?B?aktWNC9RYzVWUEJFVUpSdkVyUGZKNW16S29TT3NUQmxhOUFZTXdXbm9JZXFB?=
 =?utf-8?B?eWxUeGZQY1J0UitRNklBMm9FeXFGeEwvY2hHd095SFM2Q2g5RngzcFhTcUp1?=
 =?utf-8?B?VkFWbFUwOGJFSUM5alpQSUxMTDFidGpNczZWd3FUNmVjK3laVGxwUHI5N3dM?=
 =?utf-8?B?dmxFRy9HODllVGxoa1JFYU9tMEFMS3VTSDdYUXFtUFpnSU1mR2RvYkV2bWVJ?=
 =?utf-8?B?OG90UUhib0RzbkowdUFuWmNha0YrL2RqcTV0Y0ZwcEQzT2NsQzIySEhIVVhq?=
 =?utf-8?B?aXRpNm50MWxSNzJTdktxcnlWdk1TaVpNQ1RSYzUzaGFmTHRFaXlOMEJ0ZmJk?=
 =?utf-8?B?bm5VQmd4VHgwQytlQVMxUEF3dWozeHBQRUM5M3V0Z05VVDlnV0xBZGRZVThZ?=
 =?utf-8?B?NERLQ0R2amVBQU02Q2RDN0ZZcnlGa0dOUUtvWjlsYm1vZ0JZdDVYRE9sUmUx?=
 =?utf-8?B?WHIxQ3JabmxNQk9icXhPWGgxWkJUdVA0eEFqRndTM00zWE1wN0t5VmRBZmRD?=
 =?utf-8?B?R1pNWU5GbFF1Vkd6OVJZakxaeHh4QmtQNjQzcU55d2FYK2d6bGRsalYzajVz?=
 =?utf-8?B?UjRtcFVqMW5IMHdaWmFsS3I3Ti9EVy95czlQb1RGRWoyb0RyemYrV3VLT2JE?=
 =?utf-8?B?ZVBvM3J3dU41TEN2MHc1aStJRzBTeHFtOE9JSm55V2xtemNmZHBSaVduNUtU?=
 =?utf-8?B?REZDRU5GMG1sTDhjNWh5SzE0VHM5V3ZxRFV6bWpRUkJLbTVDV2hUbGxETmwy?=
 =?utf-8?B?OG9GMVkrS2xpL20wRGlIMTZTNlBNcW9US0YySFl4VWVqdjB3Q1pkeW1VS1ZB?=
 =?utf-8?B?OGJrdkRiUFROT016NkdHS2REbG9PK280cEtObnhMSHFnMXhFOEl6bW1KRHVv?=
 =?utf-8?B?RXBOWmVodGxSSFQxVkxSOFNBSTdaSVpGRkVxVHJUeWRHMjl2NVUyS2E0bGph?=
 =?utf-8?B?bWR3bGo3NFJTeHVIRml3bzRFck1kRTJSTWJGSkd4bHZkVWpCYjV0d3E2M1ZV?=
 =?utf-8?B?M05QQS8zdmVNUzlEY1VVYVcrMjFsWXJSbktPVFU5QXgyWUlZS2pRb1NNcWsw?=
 =?utf-8?B?bnpDWmw3UFJsWEhJYVkvN1kxZWVGUzNpTnlud1pYS3FDc2hNTmM5dE5FS0VV?=
 =?utf-8?B?NUdnNHFZa3JqUmtmbnZ2MncwSjNJcCtzYTMrZVFRTXU3RXBCTWlXaWo3RUIx?=
 =?utf-8?B?TU9PbytINVRSNkxpMXhMQXFGM3R5d2c5QzZDRjRrTkxwNVQyVk1wU0J2aGlF?=
 =?utf-8?B?SVRjbmljVXc4cHY2WU8yN1orSS90LzJtOFZGMjc1a05hbGY2TkRoY0dTeGlr?=
 =?utf-8?B?YmtSNnc1aWJ2WDN6RSszemRhNWtWYjRUZVdpZCtIYy9kRmF3dHEwWUFjamRL?=
 =?utf-8?B?elhnZXg0NVpLTkdPRTJmZnUwbjc2czVrRmxOSU5PbkRGckhmamJINlZTMHow?=
 =?utf-8?B?M1BVMFRzck9XR1RyNEsybjdCSnN0MGlSTSt2SGFwcWJiUjFoa01wZWRuSnlF?=
 =?utf-8?B?eU90aUdlOUtBNU9mc3ZrWDJMS2pkQzBYOS80elZNRTE1bEFXMEV2Z2xjM1Rv?=
 =?utf-8?B?cHB3S2s3U1lDcDZGY1FxREdRS2VneXg5NjZiNlVOLzloM2Fwei84NzZiUytF?=
 =?utf-8?B?blltTFhLcWpDc1BXQWVWajNpbDM5bFVlSDZ5c2t6Vk12U3lmVWhPYWVLWk8r?=
 =?utf-8?B?RnZuVGQxRDM3ZTJabDF1NkpXc2xFaVhNL3BCN0I0T3lpajQ5aURuMFBrdkZY?=
 =?utf-8?B?YUsxVVQ4bktTZUpCZnBnblVHMFJKaWxqK0JSTGJlT3ZwTzluVmdUekEzNFV0?=
 =?utf-8?B?ZmhaNkhJcmU3ODFXRUtFUVJja2hXeWJuRWY4ak43ekRxUDBKUUxlUTQzQmFy?=
 =?utf-8?B?amdPSVNmbXZTMHJsakRGYkRQSVhPa2krcjU0UjcrNktScnBlTmdPdU4zOWdD?=
 =?utf-8?B?OXdFY1dwVWtITE9JWjFYZVhNMW1nUmVMOUluRWhRUm5YNVlWcXhZSEkxbmVi?=
 =?utf-8?B?L2doUm1GNXkyYnltNUMxQXBSd1ZPbHlDejg5ZFpKckJSWkRnSTZodHVFaFpq?=
 =?utf-8?Q?zg8xDh7XydSczPc/zdjhrcb17?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9114cf91-8bfb-4468-c60a-08dde5fd9678
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2025 06:39:06.9827 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s/IL7YjA6wb778RPzvP5Ew8aH0xkovYvthRXQLpecCxgL3h4sLWhMGUMu7dmhlrAdarvscyKyF7pBY1YzBykeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8867
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
PiBIw7ZnYW5kZXINCj4gU2VudDogV2VkbmVzZGF5LCBBdWd1c3QgMTMsIDIwMjUgMTI6MzYgUE0N
Cj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCAxLzRdIGRybS9pOTE1L2FscG06IENhbGN1bGF0ZSBz
aWxlbmNlIHBlcmlvZA0KPiANCj4gQ2FsY3VsYXRlIHNpbGVuY2UgcGVyaW9kIGluc3RlYWQgb2Yg
aGFyZGNvZGluZyBpdCBpbiBzd2l0Y2ggY2FzZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQpMR1RNLg0KUmV2aWV3ZWQt
Ynk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMgfCAzNyArKysrKysrKysr
Ky0tLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDIwIGRl
bGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
bHBtLmMNCj4gaW5kZXggZGZkZGU4ZTRlYWJlLi5lNDhhNDIxOGMxNjMgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IEBAIC0xNiw2ICsxNiwxMiBA
QA0KPiAgI2luY2x1ZGUgImludGVsX3Bzci5oIg0KPiAgI2luY2x1ZGUgImludGVsX3Bzcl9yZWdz
LmgiDQo+IA0KPiArI2RlZmluZSBTSUxFTkNFX1BFUklPRF9NSU5fVElNRQk4MA0KPiArI2RlZmlu
ZSBTSUxFTkNFX1BFUklPRF9NQVhfVElNRQkxODANCj4gKyNkZWZpbmUgU0lMRU5DRV9QRVJJT0Rf
VElNRQkoU0lMRU5DRV9QRVJJT0RfTUlOX1RJTUUgKwlcDQo+ICsJCQkJKFNJTEVOQ0VfUEVSSU9E
X01BWF9USU1FIC0JXA0KPiArCQkJCSBTSUxFTkNFX1BFUklPRF9NSU5fVElNRSkgLyAyKQ0KPiAr
DQo+ICBib29sIGludGVsX2FscG1fYXV4X3dha2Vfc3VwcG9ydGVkKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHApICB7DQo+ICAJcmV0dXJuIGludGVsX2RwLT5hbHBtX2RwY2QgJiBEUF9BTFBNX0NB
UDsgQEAgLTQ0LDExICs1MCwxNQ0KPiBAQCB2b2lkIGludGVsX2FscG1faW5pdChzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKQ0KPiAgCW11dGV4X2luaXQoJmludGVsX2RwLT5hbHBtX3BhcmFtZXRl
cnMubG9jayk7DQo+ICB9DQo+IA0KPiArc3RhdGljIGludCBnZXRfc2lsZW5jZV9wZXJpb2Rfc3lt
Ym9scyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiArKmNydGNfc3RhdGUpIHsNCj4g
KwlyZXR1cm4gU0lMRU5DRV9QRVJJT0RfVElNRSAqDQo+IGludGVsX2RwX2xpbmtfc3ltYm9sX2Ns
b2NrKGNydGNfc3RhdGUtPnBvcnRfY2xvY2spIC8NCj4gKwkJMTAwMCAvIDEwMDA7DQo+ICt9DQo+
ICsNCj4gIC8qDQo+ICAgKiBTZWUgQnNwZWM6IDcxNjMyIGZvciB0aGUgdGFibGUNCj4gICAqDQo+
IC0gKiBTaWxlbmNlX3BlcmlvZCA9IHRTaWxlbmNlLE1pbiArICgodFNpbGVuY2UsTWF4IC0gdFNp
bGVuY2UsTWluKSAvIDIpDQo+IC0gKg0KPiAgICogSGFsZiBjeWNsZSBkdXJhdGlvbjoNCj4gICAq
DQo+ICAgKiBMaW5rIHJhdGVzIDEuNjIgLSA0LjMyIGFuZCB0TEZQU19DeWNsZSA9IDcwIG5zIEBA
IC02MCw1MyArNzAsNDEgQEAgdm9pZA0KPiBpbnRlbF9hbHBtX2luaXQoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCkNCj4gICAqIEZMT09SKCBMRlBTIFBlcmlvZCBpbiBTeW1ib2wgY2xvY2tzIC8N
Cj4gICAqICgyICogUE9SVF9BTFBNX0xGUFNfQ1RMWyBMRlBTIEN5Y2xlIENvdW50IF0pICkNCj4g
ICAqLw0KPiAtc3RhdGljIGJvb2wgX2xubF9nZXRfc2lsZW5jZV9wZXJpb2RfYW5kX2xmcHNfaGFs
Zl9jeWNsZShpbnQgbGlua19yYXRlLA0KPiAtCQkJCQkJCWludCAqc2lsZW5jZV9wZXJpb2QsDQo+
IC0JCQkJCQkJaW50ICpsZnBzX2hhbGZfY3ljbGUpDQo+ICtzdGF0aWMgYm9vbCBfbG5sX2dldF9s
ZnBzX2hhbGZfY3ljbGUoaW50IGxpbmtfcmF0ZSwgaW50DQo+ICsqbGZwc19oYWxmX2N5Y2xlKQ0K
PiAgew0KPiAgCXN3aXRjaCAobGlua19yYXRlKSB7DQo+ICAJY2FzZSAxNjIwMDA6DQo+IC0JCSpz
aWxlbmNlX3BlcmlvZCA9IDIwOw0KPiAgCQkqbGZwc19oYWxmX2N5Y2xlID0gNTsNCj4gIAkJYnJl
YWs7DQo+ICAJY2FzZSAyMTYwMDA6DQo+IC0JCSpzaWxlbmNlX3BlcmlvZCA9IDI3Ow0KPiAgCQkq
bGZwc19oYWxmX2N5Y2xlID0gNzsNCj4gIAkJYnJlYWs7DQo+ICAJY2FzZSAyNDMwMDA6DQo+IC0J
CSpzaWxlbmNlX3BlcmlvZCA9IDMxOw0KPiAgCQkqbGZwc19oYWxmX2N5Y2xlID0gODsNCj4gIAkJ
YnJlYWs7DQo+ICAJY2FzZSAyNzAwMDA6DQo+IC0JCSpzaWxlbmNlX3BlcmlvZCA9IDM0Ow0KPiAg
CQkqbGZwc19oYWxmX2N5Y2xlID0gOTsNCj4gIAkJYnJlYWs7DQo+ICAJY2FzZSAzMjQwMDA6DQo+
IC0JCSpzaWxlbmNlX3BlcmlvZCA9IDQxOw0KPiAgCQkqbGZwc19oYWxmX2N5Y2xlID0gMTE7DQo+
ICAJCWJyZWFrOw0KPiAgCWNhc2UgNDMyMDAwOg0KPiAtCQkqc2lsZW5jZV9wZXJpb2QgPSA1NjsN
Cj4gIAkJKmxmcHNfaGFsZl9jeWNsZSA9IDE1Ow0KPiAgCQlicmVhazsNCj4gIAljYXNlIDU0MDAw
MDoNCj4gLQkJKnNpbGVuY2VfcGVyaW9kID0gNjk7DQo+ICAJCSpsZnBzX2hhbGZfY3ljbGUgPSAx
MjsNCj4gIAkJYnJlYWs7DQo+ICAJY2FzZSA2NDgwMDA6DQo+IC0JCSpzaWxlbmNlX3BlcmlvZCA9
IDg0Ow0KPiAgCQkqbGZwc19oYWxmX2N5Y2xlID0gMTU7DQo+ICAJCWJyZWFrOw0KPiAgCWNhc2Ug
Njc1MDAwOg0KPiAtCQkqc2lsZW5jZV9wZXJpb2QgPSA4NzsNCj4gIAkJKmxmcHNfaGFsZl9jeWNs
ZSA9IDE1Ow0KPiAgCQlicmVhazsNCj4gIAljYXNlIDgxMDAwMDoNCj4gLQkJKnNpbGVuY2VfcGVy
aW9kID0gMTA0Ow0KPiAgCQkqbGZwc19oYWxmX2N5Y2xlID0gMTk7DQo+ICAJCWJyZWFrOw0KPiAg
CWRlZmF1bHQ6DQo+IC0JCSpzaWxlbmNlX3BlcmlvZCA9ICpsZnBzX2hhbGZfY3ljbGUgPSAtMTsN
Cj4gKwkJKmxmcHNfaGFsZl9jeWNsZSA9IC0xOw0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+ICAJfQ0K
PiAgCXJldHVybiB0cnVlOw0KPiBAQCAtMTYwLDEwICsxNTgsOSBAQCBfbG5sX2NvbXB1dGVfYXV4
X2xlc3NfYWxwbV9wYXJhbXMoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJX2xu
bF9jb21wdXRlX2F1eF9sZXNzX3dha2VfdGltZShjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrKTsNCj4g
IAlhdXhfbGVzc193YWtlX2xpbmVzID0gaW50ZWxfdXNlY3NfdG9fc2NhbmxpbmVzKCZjcnRjX3N0
YXRlLQ0KPiA+aHcuYWRqdXN0ZWRfbW9kZSwNCj4gIAkJCQkJCSAgICAgICBhdXhfbGVzc193YWtl
X3RpbWUpOw0KPiAtDQo+IC0JaWYgKCFfbG5sX2dldF9zaWxlbmNlX3BlcmlvZF9hbmRfbGZwc19o
YWxmX2N5Y2xlKGNydGNfc3RhdGUtDQo+ID5wb3J0X2Nsb2NrLA0KPiAtCQkJCQkJCSAmc2lsZW5j
ZV9wZXJpb2QsDQo+IC0JCQkJCQkJICZsZnBzX2hhbGZfY3ljbGUpKQ0KPiArCXNpbGVuY2VfcGVy
aW9kID0gZ2V0X3NpbGVuY2VfcGVyaW9kX3N5bWJvbHMoY3J0Y19zdGF0ZSk7DQo+ICsJaWYgKCFf
bG5sX2dldF9sZnBzX2hhbGZfY3ljbGUoY3J0Y19zdGF0ZS0+cG9ydF9jbG9jaywNCj4gKwkJCQkg
ICAgICAmbGZwc19oYWxmX2N5Y2xlKSkNCj4gIAkJcmV0dXJuIGZhbHNlOw0KPiANCj4gIAlpZiAo
YXV4X2xlc3Nfd2FrZV9saW5lcyA+IEFMUE1fQ1RMX0FVWF9MRVNTX1dBS0VfVElNRV9NQVNLDQo+
IHx8DQo+IC0tDQo+IDIuNDMuMA0KDQo=
