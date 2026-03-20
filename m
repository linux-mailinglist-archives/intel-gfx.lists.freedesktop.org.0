Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPv4KKg4vWkN7wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 13:08:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 012E32D9E7A
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 13:08:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B38210E54A;
	Fri, 20 Mar 2026 12:08:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YN+5c6Q+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C89B010E54A;
 Fri, 20 Mar 2026 12:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774008485; x=1805544485;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8pSJRI9YhAgp3xBIeqp4dchI9uZgLqfYwrJjlVcppp4=;
 b=YN+5c6Q+al0kBv1C44A/zvAQgcvEdIv34uN8H1Vr//KAKd6pPl6ihU99
 8EqwxiT05+6Mn9cKYfNO+nhrI7NAp8av3Qyc1HvdyIh1bs+mQP1AqrM6A
 uKHx4A6wqNPg3bslLEsRYCuPJrJGlV9mH3X97o/Wpkam7uORe7FR6GV/V
 XMdb+YV9sad/WDJSbNplR6N/x3xy+zHDv9C16tcaWACkd96/CZZk172dU
 /AByebH6Q07/tUoz0zCr0jxFJDCXQY/G5a/682ksZxcH/XSawCRJkyIo8
 J5ePCA2PxiDzTJKnEuwgYVZ7O7Pr3DmKn2als3Q/y2hE6YqeUawt/UQb5 Q==;
X-CSE-ConnectionGUID: My/k9tTgTF6ggzNsugTq+A==
X-CSE-MsgGUID: P//O2vnFQk+eU8yR/CP29A==
X-IronPort-AV: E=McAfee;i="6800,10657,11735"; a="97709429"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="97709429"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 05:08:04 -0700
X-CSE-ConnectionGUID: F0Z0Gf6KRRKV8LoVD2ukaw==
X-CSE-MsgGUID: 3TKnJX+uQhCiP7EZk0L3Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="223292906"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 05:08:05 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 05:08:04 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 20 Mar 2026 05:08:04 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.7) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 05:08:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TRdAucqyXZtwDK6fhKM6JXUBghyYI/pVxxO8XBeoGWO90AmnjLkL086RxQyvXlfJ29JWSYqCeDUe8JY+5hK98Vl71PlRdqLeQVWD3ro12HQmCAK1IgixspneJrIDVd7kcy/aDV70uVXMJHdX9qm8GxVPsHa+Wdgp4soBGjeSKCvglldEaPIxVI6baAsuqUzdHaWr1UYm0pPPIrLGNtBPpXCMD8iXrurDxMhSvVqJ3qUEnhVBHwf+p7JUbeF8rQvOOjwSeUs7sgfvWq4LBeCKtT/GE9AlAscw2Byb7hd1wiqnHHj1WjSC06TuWumA4cAGmn+f/BF2tisgy4aBTfCoPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8pSJRI9YhAgp3xBIeqp4dchI9uZgLqfYwrJjlVcppp4=;
 b=RoAM3Sbw6KiuMIltBEcwxRsc6zG1D9mni2TT583HyuELtVUlfNP+E3cvmjc/Rp7RK9JpHK29P1gg4mRhPNn/7sEKmieD4UVlUNQUUTVEkrkXbBw3uTeisSRaUafEOYP9kRHa7afBjjWYRtSBquQOVAP9A8mDlC/UIa85PAHri7Lj74H2LFl5XpSNmZOBB0/s6ye/uIsiteOzTXoGAbUL8OKhdaV1Zs+CgpKtEgW1kQU1n+JTsqsnomjdaBzod0g4dV9BH6tRIWwbCMe8DmdHUYOX92pNAhXODpzF2CTi2sk/0Hrs16DURDvgDeMqRxTIO3vIbMRmmzXxOv5btf59Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH0PR11MB7562.namprd11.prod.outlook.com (2603:10b6:510:287::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Fri, 20 Mar
 2026 12:07:59 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9745.007; Fri, 20 Mar 2026
 12:07:59 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, "Almahallawy, Khaled"
 <khaled.almahallawy@intel.com>
Subject: RE: [PATCH 1/3] drm/i915: Unlink NV12 planes earlier
Thread-Topic: [PATCH 1/3] drm/i915: Unlink NV12 planes earlier
Thread-Index: AQHctWOZoHtyMErgc0uipDVBA23DBbW3WMGg
Date: Fri, 20 Mar 2026 12:07:58 +0000
Message-ID: <DM4PR11MB63603F5E3AF3C2D837077A39F44CA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260316163953.12905-1-ville.syrjala@linux.intel.com>
 <20260316163953.12905-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20260316163953.12905-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH0PR11MB7562:EE_
x-ms-office365-filtering-correlation-id: 21ae1b85-e106-4ab7-e6b5-08de867953ef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info: 5INRmUAjbk8U1n+6Iw+IckZQMoY773cpNkWmvBh78rZ4dhtRhWmUk4cvGyXSX+83KKzkAQFYBcMmqgqkw3IBppfiSM8CP/HGLGjMxL3tPKm66v7Y4/SHjlX8YztzbzLJ/mJk2DNvmHJydKEABG4TyicJrHXSktfO2L5/yVc+1prurECp9Of8y2AHmUOSqKoB1C23GaM5DYed9k74/I9wZCEbdmabsetySaMFxNEYKs7RQ2L6vgW/C9ccCdPDO6l0tGMhzw+04aQKLI7rYtaT5aCCMpPf1zZ/Q6n7HTcS/PdPHnDR2e9+oqj2oMZyRH2tQgs72FPOYn3REHrvOFI6gqjtZv3Vuxb73NHYgXxA1GOLWNohzVdmEhUOooWYYhhtebfK5q0STfLztbe15yX7AvA+xilMzCavRb/Gw8L1bxnH2PS7fd2An1/Jlp+9assliqiu2CJzBJuKK7XABOGcbwS8JeaY95GBWI4CgeSjhS28x11Hojb7LB+8XWvGoVpPxWZC40ZvG4B/hNXZz4iBxP6i936fI3Or+pGGzG52X3d9pJy8Q2Vb9vfOYnghQOcUhL/fDMlF66MfBUoQHV90+GshJvQz8OorGJ8ARMXq4/0J3Npr25sgYbzYE2fXxNvTbsQLqCyiunykKqfDGe8HYoJIXIY8WuXYcnphFlsJMaDtZQpOIgqNFjix5NIEebXj4xtjVDVax/oW1Z/e/IBEeth5DLPg7hC/qJVM+RqspxYsH91t020QIBY1yc1ky2d5I8ImBp1h4JFfBy4Z1ka54LPJgm09s71OPYAbsbqVltA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VndBM2JpT01HSlIyaGcwT1ZDajFkK1VUL2UvSUlob1BFK0NGZHRZTFNGTzFP?=
 =?utf-8?B?c0p2WkdjZHdWNnFLck0yMzl1dnR6TGJEVDFqSGliTXdBS1AvSldkUUFMbnZB?=
 =?utf-8?B?K0ZyTGFFb3plU0FrVHBWQVd3YnJQa1gvOFFTU0dZbzlWK1NVSWlhRTVCK3pI?=
 =?utf-8?B?UkhEZUhsRGVLOFREM1FTMXRWOWZEUE9YeDgzNkNoK3FIaTNZK0FCclFidGF1?=
 =?utf-8?B?WXVCRTJ0LzNCRjQzRFRhMnY4YitzVVhqWjdOSmJxMFgrZHhLM3NZaFdLdEtx?=
 =?utf-8?B?YzQ5elBlYkxaVVlPQWd5dDB2REx2K0VlQ0ZKdWFuTkJ1MkpqMzVNTG1WaG00?=
 =?utf-8?B?dGRGRHJza0Vqb0x6NFA2U3l1MFcvb2hmUzQyZzM5bDIvMlVQVHpRd3l3Y08r?=
 =?utf-8?B?cWVlZlI5Z3JuZnViY2o2MEE3cERvWjdJR2FTZFB0eVdncFI5cTArVDk2Ym5Y?=
 =?utf-8?B?UzRLYzgzVGZOOEdkME9UWnMzZDZMbC9vR2ZSTDh3azQwSU44SjVlUFA0S1h6?=
 =?utf-8?B?aFlIMk1qL1RzQWFNTlQrcFRtRGp6Q1NjanRzS2RUUVBQN1M5NFZiU0kweXls?=
 =?utf-8?B?bVI3M3lCMDd3d3k3QWVIL0NES3JJcEE4NWEwb2cwc0ZtSGZwU2gxd2tEWnhD?=
 =?utf-8?B?bXg3VEpPUC9ZNW14Tm9GNTJiVmlhS091ZWdoZzYyTGo3MU1uQnJkb2F4TlRE?=
 =?utf-8?B?VlZGNVFkRVpmNkoycS93enBDZUJFM2tKa2tUZmlEaFdFTHNOUnprVUo5MjZC?=
 =?utf-8?B?K2dQVnY1cmNQUHJuaXUzM3dubGhLbGgzUmdjZU1YZC9HbjA1V0V1ejlINVNE?=
 =?utf-8?B?MUc5eEIzd1grT080dUtBbUgyWEFETmxBQmladjZockJTOUhSajN5YU8vSjg5?=
 =?utf-8?B?Tnh4YkduVkcySUpYZk9USGxLYUlaU2FJQkFVQTh4bzdSazhHVWp4UldJeC9o?=
 =?utf-8?B?eVF3N1pQdGtLRnExTisxZ1JNdXZESnd3MG5CalpRTk90b3RpSmVIVmlMRDVv?=
 =?utf-8?B?Rk5ReEJXb0lyZk9sTDJheE43N2FIUEJxV2t2R2FlYmt5bnZjdmd0WFpSZlRw?=
 =?utf-8?B?cEdOSGowZC9DT2ZIR0FVai9zdXBrZUdldlRzUFIvOUlRREpiUlR2eEtPdDRY?=
 =?utf-8?B?QUMvU1N5anNoMElRWTlpR2xqeUZFUFY5SkxHQm9DUE44dVRzSm04cW5Fdjhw?=
 =?utf-8?B?YW9FMnRZRjQvSzVOSlMwRTduNEMzVnVmMjlPQ0dqSGlTcWlYZkUwVDRKSGZF?=
 =?utf-8?B?dVNCdXJNS0c5WWFGcDk5ZUMrWjVpWnQ0OWFwSVUzL3IxcHd1cE42b05kTEUr?=
 =?utf-8?B?ais0c0lNSE1PNmo4Q3JpRGtmUDZWamYvNHlhakNxcHpKdlcxQk5xSlJ1amxJ?=
 =?utf-8?B?TVRlM2pPcDdCdW91MkVnODJFRWRBUXBrWVRkTEFPM280VjRTUE9veWJ4YXhL?=
 =?utf-8?B?a3h2S25BM2ZjN3FwR0ZSbGpMMzQrVUFTd250RktrT2poVnVrMDIrbkw0OWNC?=
 =?utf-8?B?SVRmMENlSDBudW5BY1pscnAvUVRTb0JDY2ZDbk5xR3cxbWRnVzRqdkgyWmxT?=
 =?utf-8?B?Q2g2cFhYTFErK0pVUFZwUzY0TTBheGVKS1QxcEk4eTFmSDQ3eUt2VzJRS3pr?=
 =?utf-8?B?Rm5LdjREbnE2WENVRU0vQnFUa1B2U09XdEVZTXJvNWM2NC9WeEI5UHJ5TFNG?=
 =?utf-8?B?TEl2Z3hCb3QzNG9GenlLdCtSRFR2WXdQT25iNTBYRGo4TEhlU2FYM1hyZGpl?=
 =?utf-8?B?OGlmZGFMb3p2by9oVFJKRXRsU0tZNEhOeDlqYlExZi9GTG5SSXVnUDZXNEFi?=
 =?utf-8?B?dVVRak1wSVBhWEZJcmxMMTRZQWd6eVFCalN4dGlBMk5KT0p1bW5Xd1FCYUcw?=
 =?utf-8?B?QWV3N1BGQkpBcTR2T1JxOG1XaHhya0FNaFQ3NjZUMkdpSERtTkRIRVVwa0Qr?=
 =?utf-8?B?TmVib2ZOdWxTRmNBMFk3YnNTb0xjL09Dd2daaWNKMlNjck1qUm1xTFBoSGhV?=
 =?utf-8?B?WmlJN1R1dG42NEdBS1RUcVhBamR4eFI4UjI1a2dmVG5Sa09vcXRQZzJnSFFG?=
 =?utf-8?B?ZkNxTi9pUWRyUE1PaUpYMzB0ZTUxbG51ZlJRcHhkeHREbllZcnN0ZXJOM3dk?=
 =?utf-8?B?S2FKTVRzOHlWNk5ObXczTTE2Y2lJTkZxeE1FV2ZyR3VkSkgyQXpodnNkY0Jq?=
 =?utf-8?B?Mnc2L0pSTjVTYkhKVm1tR21DeXFNVWNqbWtGK3ltdWJEODJ5eTdNNDBrY2Zh?=
 =?utf-8?B?ZE5nZ2dwdjA5R1JuVnpMZTNUdGhZUjl1aU52Tlp6VGdYc25tNitVbko4UEp6?=
 =?utf-8?B?ZURuK0I1UmU3bmJqYmh4N0x5b0ZpemowMXJxbVFrNTN4Z1M0NFJkUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: NsLJy0p/El6K4R79oTcvVmGt2crDYd0I6SecGBSTyI/xUDmtWRp95d/u5PEuXLi1oaUqW8buXh6Gt/tKBIT6KnXAlXxNl/FPuUg8kzniaShAR2+mMqmiVwCDXXjbfP3twNVeWqSEJcNnI+FWEHGnopn1Qya1PxGVP0ksR7TDEepKfe8x/xIFRSCoJfqSoeEeR66d+c13fHYoD9opUTGAjcW+7eq0Np2dva9x3/ESEK3xhfp6GN7RdxZtQyeSj2ZMstm1Juz8oJEETzo0vvsZychwbH7tY28AUV/k8DxIQRcVK1FrB0oZKMGU4thitNETsWSDYCGa3N/+QX3Hy+kD5g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21ae1b85-e106-4ab7-e6b5-08de867953ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2026 12:07:58.9616 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cr+MenBpRQ8ZukP45+feNbmDJEnmnPbIGzzHP1Gm0XwpMzYaSJQTR3QuSLf926fc0aIYh0vfoEyjWq1f29VAXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7562
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.987];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 012E32D9E7A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBNb25kYXksIE1hcmNoIDE2LCAyMDI2IDEwOjEwIFBNDQo+IFRvOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVl
ZGVza3RvcC5vcmc7IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc7IEFsbWFoYWxsYXd5LCBLaGFsZWQN
Cj4gPGtoYWxlZC5hbG1haGFsbGF3eUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCAxLzNd
IGRybS9pOTE1OiBVbmxpbmsgTlYxMiBwbGFuZXMgZWFybGllcg0KPiANCj4gRnJvbTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IHVubGlua19u
djEyX3BsYW5lKCkgd2lsbCBjbG9iYmVyIHBhcnRzIG9mIHRoZSBwbGFuZSBzdGF0ZSBwb3RlbnRp
YWxseSBhbHJlYWR5IHNldCB1cA0KPiBieSBwbGFuZV9hdG9taWNfY2hlY2soKSwgc28gd2UgbXVz
dCBtYWtlIHN1cmUgbm90IHRvIGNhbGwgdGhlIHR3byBpbiB0aGUgd3JvbmcNCj4gb3JkZXIuDQo+
IFRoZSBwcm9ibGVtIGhhcHBlbnMgd2hlbiBhIHBsYW5lIHByZXZpb3VzbHkgc2VsZWN0ZWQgYXMg
YSBZIHBsYW5lIGlzIG5vdw0KPiBjb25maWd1cmVkIGFzIGEgbm9ybWFsIHBsYW5lIGJ5IHVzZXIg
c3BhY2UuDQo+IHBsYW5lX2F0b21pY19jaGVjaygpIHdpbGwgZmlyc3QgY29tcHV0ZSB0aGUgcHJv
cGVyIHBsYW5lIHN0YXRlIGJhc2VkIG9uIHRoZQ0KPiB1c2Vyc3BhY2UgcmVxdWVzdCwgYW5kIHVu
bGlua19udjEyX3BsYW5lKCkgbGF0ZXIgY2xlYXJzIHNvbWUgb2YgdGhlIHN0YXRlLg0KPiANCj4g
VGhpcyB1c2VkIHRvIHdvcmsgb24gYWNjb3VudCBvZiB1bmxpbmtfbnYxMl9wbGFuZSgpIHNraXBw
aW5nIHRoZSBzdGF0ZSBjbGVhcmluZw0KPiBiYXNlZCBvbiB0aGUgcGxhbmUgdmlzaWJpbGl0eS4g
QnV0IEkgcmVtb3ZlZCB0aGF0IGNoZWNrLCB0aGlua2luZyBpdCB3YXMgYW4NCj4gaW1wb3NzaWJs
ZSBzaXR1YXRpb24uIE5vdyB3aGVuIHRoYXQgc2l0dWF0aW9uIGhhcHBlbnMgdW5saW5rX252MTJf
cGxhbmUoKSB3aWxsDQo+IGp1c3QgV0FSTiBhbmQgcHJvY2VlZCB0byBjbG9iYmVyIHRoZSBzdGF0
ZS4NCj4gDQo+IFJhdGhlciB0aGFuIHJldmVydGluZyB0byB0aGUgb2xkIHdheSBvZiBkb2luZyB0
aGluZ3MsIEkgdGhpbmsgaXQncyBtb3JlIGNsZWFyIGlmIHdlDQo+IHVubGluayB0aGUgTlYxMiBw
bGFuZXMgYmVmb3JlIHdlIGV2ZW4gY29tcHV0ZSB0aGUgbmV3IHBsYW5lIHN0YXRlLg0KDQpDaGFu
Z2UgTG9va3MgR29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5r
YXJAaW50ZWwuY29tPg0KDQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnDQo+IFJlcG9ydGVk
LWJ5OiBLaGFsZWQgQWxtYWhhbGxhd3kgPGtoYWxlZC5hbG1haGFsbGF3eUBpbnRlbC5jb20+DQo+
IENsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvaW50ZWwtZ2Z4LzIwMjYwMjEyMDA0ODUy
LjE5MjAyNzAtMS0NCj4ga2hhbGVkLmFsbWFoYWxsYXd5QGludGVsLmNvbS8NCj4gVGVzdGVkLWJ5
OiBLaGFsZWQgQWxtYWhhbGxhd3kgPGtoYWxlZC5hbG1haGFsbGF3eUBpbnRlbC5jb20+DQo+IEZp
eGVzOiA2YTAxZGYyZjFiMmEgKCJkcm0vaTkxNTogUmVtb3ZlIHBvaW50bGVzcyB2aXNpYmxlIGNo
ZWNrIGluDQo+IHVubGlua19udjEyX3BsYW5lKCkiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGxhbmUuYyB8IDExICsrKysrKysrKy0tDQo+
ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGxhbmUuYw0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGxhbmUuYw0KPiBpbmRleCBl
MDZhMDYxOGI0YzYuLjA3NmI5YjM1NjQ4MSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcGxhbmUuYw0KPiBAQCAtNDM2LDExICs0MzYsMTYgQEAgdm9pZCBpbnRl
bF9wbGFuZV9jb3B5X2h3X3N0YXRlKHN0cnVjdA0KPiBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVf
c3RhdGUsDQo+ICAJCWRybV9mcmFtZWJ1ZmZlcl9nZXQocGxhbmVfc3RhdGUtPmh3LmZiKTsNCj4g
IH0NCj4gDQo+ICtzdGF0aWMgdm9pZCB1bmxpbmtfbnYxMl9wbGFuZShzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gKwkJCSAgICAgIHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0
ZSAqcGxhbmVfc3RhdGUpOw0KPiArDQo+ICB2b2lkIGludGVsX3BsYW5lX3NldF9pbnZpc2libGUo
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICAJCQkgICAgICAgc3RydWN0
IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfcGxh
bmUgKnBsYW5lID0gdG9faW50ZWxfcGxhbmUocGxhbmVfc3RhdGUtPnVhcGkucGxhbmUpOw0KPiAN
Cj4gKwl1bmxpbmtfbnYxMl9wbGFuZShjcnRjX3N0YXRlLCBwbGFuZV9zdGF0ZSk7DQo+ICsNCj4g
IAljcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzICY9IH5CSVQocGxhbmUtPmlkKTsNCj4gIAljcnRj
X3N0YXRlLT5zY2FsZWRfcGxhbmVzICY9IH5CSVQocGxhbmUtPmlkKTsNCj4gIAljcnRjX3N0YXRl
LT5udjEyX3BsYW5lcyAmPSB+QklUKHBsYW5lLT5pZCk7IEBAIC0xNTEzLDYgKzE1MTgsOSBAQA0K
PiBzdGF0aWMgdm9pZCB1bmxpbmtfbnYxMl9wbGFuZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVs
X2Rpc3BsYXkocGxhbmVfc3RhdGUpOw0KPiAgCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUgPSB0
b19pbnRlbF9wbGFuZShwbGFuZV9zdGF0ZS0+dWFwaS5wbGFuZSk7DQo+IA0KPiArCWlmICghcGxh
bmVfc3RhdGUtPnBsYW5hcl9saW5rZWRfcGxhbmUpDQo+ICsJCXJldHVybjsNCj4gKw0KPiAgCXBs
YW5lX3N0YXRlLT5wbGFuYXJfbGlua2VkX3BsYW5lID0gTlVMTDsNCj4gDQo+ICAJaWYgKCFwbGFu
ZV9zdGF0ZS0+aXNfeV9wbGFuZSkNCj4gQEAgLTE1NTAsOCArMTU1OCw3IEBAIHN0YXRpYyBpbnQg
aWNsX2NoZWNrX252MTJfcGxhbmVzKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
LA0KPiAgCQlpZiAocGxhbmUtPnBpcGUgIT0gY3J0Yy0+cGlwZSkNCj4gIAkJCWNvbnRpbnVlOw0K
PiANCj4gLQkJaWYgKHBsYW5lX3N0YXRlLT5wbGFuYXJfbGlua2VkX3BsYW5lKQ0KPiAtCQkJdW5s
aW5rX252MTJfcGxhbmUoY3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUpOw0KPiArCQl1bmxpbmtfbnYx
Ml9wbGFuZShjcnRjX3N0YXRlLCBwbGFuZV9zdGF0ZSk7DQo+ICAJfQ0KPiANCj4gIAlpZiAoIWNy
dGNfc3RhdGUtPm52MTJfcGxhbmVzKQ0KPiAtLQ0KPiAyLjUyLjANCg0K
