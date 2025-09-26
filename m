Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B10BA27BF
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 08:00:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 390F210E325;
	Fri, 26 Sep 2025 06:00:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QW0/oxGB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70F8F10E325;
 Fri, 26 Sep 2025 06:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758866423; x=1790402423;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=jVQQ+URJkePC6r4N2XFjqC1J5lJEGj4qVwK84x1ibtg=;
 b=QW0/oxGBdA8LZBSDSZ0G8g7FWMuiw/OPzI3WaR91q/cWlgwFa5jK9bA9
 X8N15XkuJxoYeNGHcrq4JS2C30xYjqM1GZGA/MY8p8BeIuHt8oeQtYkA8
 VFafEo+MF5ose+eWPo9b9KSt+yOE5/Fv1QohuJ9z4rj0CJAW918RhvjlZ
 BcJCYB9ZCMdB79Cr2IinPQyD5b02b96Iwnl2D73ceB1/OaAes3eKsZwpK
 9tcC8AE2YRMB1paujBFgYFTDWQuUozxhb5eDDEpzK87LA5fMzF2wOn3Eh
 U7qW4ZXc6NaYAm5e3Y9flOlu59gwYJUTa2y5S/9dCfFs9YdsHYHj+nNUj Q==;
X-CSE-ConnectionGUID: FVSVfDWWQm6/8zDq3EcQhw==
X-CSE-MsgGUID: w6chn0CMRo+wGQVs75gRdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11564"; a="63826439"
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800"; d="scan'208";a="63826439"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:00:23 -0700
X-CSE-ConnectionGUID: Ki+angKuTuqAXCYBdiCRkw==
X-CSE-MsgGUID: pLIwRBrZSg6vs/ITi5b60Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800"; d="scan'208";a="177132780"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:00:23 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 23:00:22 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 25 Sep 2025 23:00:22 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.13)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 23:00:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kI1yK635oqbgSoWwLnUpH2Uda5A+CJRSFjDzCZdEspBQXsSfk7poRMFa4MhTR86TAKmI11lAEKZcDMseRHn1Pexgn/I+wU0BkzSUUtULFILoOHIbQCXGvaybJ8/KdzKAqlaDhbjAK+4RbEaya1UOln9s9AN/uAyMzTt/Vcik2HAG0ZCdctrH92wdUsRJdoHnHmyaLQkFL8LnK819NiVOqi93rwPtGSsEtjIYYPMd3grR6qLfTmTKIsOneyrl4/XKrtt6+bTzHvmkOMIJYs/CR4kkQovhydKSKrgfrEhbMR3GviBtLjCFBvANnhbeGYSfrOUqhdDEluFql2GJY8i6KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jVQQ+URJkePC6r4N2XFjqC1J5lJEGj4qVwK84x1ibtg=;
 b=fJwfg9VrjuNVRzq6EMRy+0Hq18K/8pQhathHaJZpUtrxvPQ9+a/GPRgtm3pOAKU/SaL4SU0PKCvnKq7F9dbYNFnKJTE2PQd04p01ctFOj9vIgI+OWl7Pf6si/BDo/aWxpR6BDSTY9i60nvrw1DmTn2rQcnY/nbs2moT9ZTsQ/4yILYm0gA/ZhMpzzkUS1O0aQY+8aqN19Bj91I/cDzNhDkmGNaUX7h6pFqAXe16PCiXRtw4WmVZX+/alOKWvsPj+7LCCA+FtGlw8ENfEVuPEuOCiOcpKhz3smKcA/LUIgrqdj4i0pBEsMlsybCkowyttvE/aFw6XaITlL3fesX4sPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA3PR11MB8024.namprd11.prod.outlook.com (2603:10b6:806:300::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Fri, 26 Sep
 2025 06:00:20 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9160.008; Fri, 26 Sep 2025
 06:00:20 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "lemen@lemen.xyz" <lemen@lemen.xyz>, "koos.vriezen@gmail.com"
 <koos.vriezen@gmail.com>
Subject: Re: [PATCH] drm/i915/psr: Deactivate PSR only on LNL and when
 selective fetch enabled
Thread-Topic: [PATCH] drm/i915/psr: Deactivate PSR only on LNL and when
 selective fetch enabled
Thread-Index: AQHcK6uRjVXcxjV6M0SESxLv00mi8LSfQsUAgAW7M4A=
Date: Fri, 26 Sep 2025 06:00:20 +0000
Message-ID: <6fecd545422c51408224e90cc540105f9595ca86.camel@intel.com>
References: <20250922102725.2752742-1-jouni.hogander@intel.com>
 <DS4PPF69154114F115E08971D23AA2DC193EF12A@DS4PPF69154114F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPF69154114F115E08971D23AA2DC193EF12A@DS4PPF69154114F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA3PR11MB8024:EE_
x-ms-office365-filtering-correlation-id: ac0674c8-39d3-4330-200b-08ddfcc1f98b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?VmFZNittOFdMdWN0b0dJTmlQK3RpUUYyLzRaVkpUNUZncERmZkF3T2FQVldr?=
 =?utf-8?B?VWZ5M1YzQzRSTUFxMG9paVlzbCtzYzA5b1lEeFlIMnE2Ukp3Z043cVcvNFZN?=
 =?utf-8?B?cG83ZWNlbHkyRmVvMDlaVjdROUdJazJIV1VsdE1kUFZVN0NzYUhKTUtLK29x?=
 =?utf-8?B?aSt0TFh1TmErZzZmNllrMDhXMmhPVDlmTzkrWmZyYjQ0R3JHbVlZdkkrVU1Y?=
 =?utf-8?B?ZldPMHlaVlpBSWJQR2tCT01SVHdocHd4MGxiQUtiRU43UDczZ2ZQOTFQRHgy?=
 =?utf-8?B?STNmM2xKUWNwMSsrZkhtWmc5UjBoMzU1ZFhHMnErK2E1THJBUzFibEFhNjdX?=
 =?utf-8?B?b3hvUytPWmloT3NhdjFGOGM2aTB1bWQvOWtDZndRWkxlcjRWanU5RENGOUZC?=
 =?utf-8?B?U2Rzc2txaXVkSmlVMGc5MDJaVFp2b1dUS3VJN1RXL2V4OVVBQ2pKYzlFNzR6?=
 =?utf-8?B?eHI0ZmtVdnNMWGVTd29SdkxlVlVyNytGNWZ2dEJpalFndTIrZTNrTG52TXgv?=
 =?utf-8?B?aUVYWDZEaU9YQk1BVllDU3BIeHBDUml2U2hxVkNBeGVvR3V1TFZjeGxGRGI5?=
 =?utf-8?B?OFpGVlVlV2RFVkJGaUIzckVzdkJVVUY3RWNmYXJiWWkwN1B6b285TFhOTkRY?=
 =?utf-8?B?TlhYazcxREVRMGdxVUh1NzRJMUpzMllCdlA2Q0IwTjBRT1pKWTJkZk1sK1gw?=
 =?utf-8?B?VVNxOUE4L3JsZUJNMFF2RlpRN2RoQ0p0M0pyRlMvZ1NWMndrM1JzWlNZMXJY?=
 =?utf-8?B?U0c3M2tobVhBTFFUZDNGUW5ES3F6VTd5Um9nMXpBeWJvdVBaZkNKNUR2K3VM?=
 =?utf-8?B?SCtnQURFSmRkUldCb3VXUXFOTEI5VmZ4RUovK08wamlzSlNpS3NEZllqdnhF?=
 =?utf-8?B?YWlqcHc1NHdYOVlMdXRLaHRiWVl1Y2w3amlBbUh6MW5SZ1J2NDNYMHVJTW5w?=
 =?utf-8?B?WGZYbmE5a3JkS3o4ZCtDdUlrM2lKcDRZN280MmJrSklYTG91cXpBV2IxT2hP?=
 =?utf-8?B?RmFydjdPK1k3U0l3cWtsUWN5YmxCaTVCYzY4czg5dEVmZ3Raa2w4QUV5NW45?=
 =?utf-8?B?Y2tYQU5sNC9ZbTFyNGZDME9SOGlSYlY1MDN6WldWMEoyMWVZK0tVdnRsalNp?=
 =?utf-8?B?OWhabFB2TXBzY0w2ekZJSDNmdnhnbElYUXpYdEZjT2pvU2N5dFlYbUg1QjND?=
 =?utf-8?B?NEQvVVMvczFQWWRweU5wT3FPRnRKTFN3c0FtQUFrMjZFRDBLSDVpMkcvR0JL?=
 =?utf-8?B?ZnRQNlQvYStqbk51TDAyNGVzOWtMZUtkTStaclRBQTZoWVhTWnpSUGN3N3lM?=
 =?utf-8?B?NHN2RUx5cVRycnF3YjNHU3NLOUJBeFZLcjlXaXNJSENvOEdTVUx2YldSZzVw?=
 =?utf-8?B?NHpQV1puUVlBdEROdEY3QWVXVGwxdUptc2kvK0k2QlN3VHBtOWhpZ1N2ZTJY?=
 =?utf-8?B?aThlTVhlZ2ZuV3lpWCtreHNMZXcrWFRoT29IMnVBOWlNRTM5WmUzQmx1U1Ew?=
 =?utf-8?B?OE1FR1FyZFRMWG1GQ1c1WUdTT3haTUVHVTJnTlhQN3ZMSGl3ZGZiVXVRUEdq?=
 =?utf-8?B?Slc5Skw3djVVRTAydysvZFQrWjVvb2QxY3Q1a01Ja0xzMjJhdHNZWDhOandQ?=
 =?utf-8?B?UW91SHVneHZtd2dIQkJ4ZWhBQWFUQ2wxckw1TFZ0TmprR25PcEE1RWkzZkpU?=
 =?utf-8?B?OGQzeW5yVm8wVDJWbjhSODNEUU9tRXYwdXlqU1lERGphU3c2NmJ1SVlFS1h4?=
 =?utf-8?B?S05Yb05HeXdrZFVBTzNBUUpBeXB5c3AyWW9GbFVyZWI1R0h2SVZQZ2dEbmtw?=
 =?utf-8?B?aHdRcjRWSnpyaWhlYkZURGh0dTA0a3V0MkhiZ0czbWJiRWFqV3U0cGt0cjRa?=
 =?utf-8?B?ZHJPUStQUk5aYTk5dTF5ekdYL0kxMHRIR2dPSnNQS2hOTEd0SmZ2eHc2bUFp?=
 =?utf-8?B?cHVuMmtneEMweVBnaG1yQmJ1OUZzeDRJVE1ZaVZGM21zR2J5bmdBZXd3L0ha?=
 =?utf-8?B?Z2x6UjdkR0dIazJ3TTFpUm1lR2I2Nm5qNzJseFVMUVVNZk1MaVlORUpHd0hJ?=
 =?utf-8?Q?Nz5wrM?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2poR1JURW1JWUdBSzN6U0tuSHpweUtObDlTKzFuSEZJNXNZL0VVOWFPd3Yr?=
 =?utf-8?B?d2FLQ1J1ZmtubzVXbTdxcFBDSUZaQ3cxczlDcEx3NE9Yc2JySkJqRGJOdDF5?=
 =?utf-8?B?bnVRVUFmOU9iSjhkVExIa3BFK0tnWWpDTWdpTS8vcjN3aldidlhCSytOSHNj?=
 =?utf-8?B?QVRpbnY3RlRYdlg3THJ6WUtyM2dOcm9xTjRJNVhMR01nRVlobVBvUkZsbGZq?=
 =?utf-8?B?T1cwY0dLSlU5dnpQU20vQld1bVJMTmE5OWJyZGY0TE9tNXZCaVkzMnRiNGEw?=
 =?utf-8?B?RHY4UWhFUHlLaWFVVmN2Qk51bEFGUnZnUnNYOGc3K0NEakFjdkpyb2oxSDZK?=
 =?utf-8?B?SUN4QytidlR2S3lyb3dHRHhmNXQvOGtjSStjYW95VkdtQllUYm1OaEpsL05p?=
 =?utf-8?B?VDhGNkVXWlhVc2dHUXNiSDhRWnNMSWdvM2U3ZkNodm5DanBHSGpROVlRUEh5?=
 =?utf-8?B?NlNlWlBEbndrQUo1S2phL2dZa2E5djFRQnU3WlZmcVZQUWZnaWFBOVZDSHda?=
 =?utf-8?B?VHlSU25ELzBEVWJxL2Qvc3BxQ1F1RnZEYlB3OXpFdy9manI4bjdtdy9xblI5?=
 =?utf-8?B?ay9OVjVyQ2JVRWRaeVI4OUQyRmVGeGFCQWRFa2lkTlp6blFTL2dwRTFnU25R?=
 =?utf-8?B?cTdzdU9sdHNhSFo3eW5mcVNqdFo2TG4zdFljL1JWbGhud0NtMW1PYVA3VC9S?=
 =?utf-8?B?OVdIb3dDZHJXSVpaK2xQQlNUNmtEUGlaN0ZtUW1NOHNuSWZiVW51dmdrY29N?=
 =?utf-8?B?SUxEOXFOdmJhK2FYTmhuaGNQbmNueDUreXo0RENMb3RwUE02SmRPQWlOcGRO?=
 =?utf-8?B?NXNJcHJQdkpsRkFqd0I5YjNDeFlkbmNWNzNjVHVrd2lCVDAwYmFIQzk2UDlM?=
 =?utf-8?B?Slp2WUVOM0dib0pYUjJRYzhrU3ozcndncnM2ZXN1UU81NU45SUpyVzdGcUNT?=
 =?utf-8?B?NXYzSWJuSXBWWm9POXdVV3hmSWNRWGdYTEJ4R3haNm9XdmlJQ1ZicUhpQ0JW?=
 =?utf-8?B?dlFsSmo3RWZqb2g0THB6RDd3ZlZGc3VuWExNTlk0cUVEMVFFS3lUdzRMLzBH?=
 =?utf-8?B?N0tpMU11eitrQnNlek9oeXZNclVvVVptSExHTFF0MnhpTG9rRUdYRTBzZ1ln?=
 =?utf-8?B?MUJDeGVBV3FrVGI0Qjk3OTBweklmM3ZuQnoxVGRycVR1bFFsNENhSWE0a05Z?=
 =?utf-8?B?YTlnTnMvUDREWTE0aTBPV2VVc1V2S1ZISWxUN3UvaDJVYU4wNGY4T01mUDNj?=
 =?utf-8?B?YStMajJWQWg1L0VFbXR6bUhGcXhIZ2NJeGNCa2xVS0FHL3RWVXl5R0ZwUisx?=
 =?utf-8?B?VGNlV2dEU0RTajdFZ0xHTnR1UXQ3cGpZa3E1emI2eGFqWXdnVnVUZUY0NVQz?=
 =?utf-8?B?YmtNekdjeGk1TFJtUWo5bmdyc2doZFRwRXU1YmpSYUdmZSt4Yy96SGRXQlRo?=
 =?utf-8?B?M3hqNVJjWStCWTJMWjMyc1h5d0R3K2NJQ3FncW9mRk01eXZhZEY3OUVoclZz?=
 =?utf-8?B?WkRRdEk3ZlUxMVpZTFV6Wnc0MTlzeUNEQzdJcEQxdXJ2QmNqVXpRSHdUdVJ3?=
 =?utf-8?B?UU9KWU1KWmpMazlhVXN4enFDTnFoSzlDYThkaFJqSlRDNDl4ZDZsTlc0V3hu?=
 =?utf-8?B?OUcrQjg2M2lvZm13VTRoSG9YR2xoQVR5VktONHo1cUhMdStYZDBEV2dGaklM?=
 =?utf-8?B?bzVmSWhiNlAzZEN4b1lWTzZIVW1xUThuei9YdUphY1gvZjRBcFg0Wi9jc3F1?=
 =?utf-8?B?R3hXdzZYNVg5T3RyS2kvWVdqU2h4R0syRis3WElJd3VkZ2xWRmdVUnVPWFlJ?=
 =?utf-8?B?azUyS0F2dFJINnN0S3NQUlRpa3QvOEVqVE54NmNiUTFCZTVRQW0zbXZBVloy?=
 =?utf-8?B?YlRCWkloKzh3OTR3MFRoa0xyT2QrT1hZV0lSSUZ4TXlTYnpSbmxSMW1kc0FX?=
 =?utf-8?B?OHFVdGlzVjhINFRVT1NGRXBCYWtMekp0ejRKKzVsQUxpcW1EMWJ6bDU3MkJT?=
 =?utf-8?B?TlpqVVBLS0dwVVRqbnNDL0xsN2xnVCtOVHFZeUZ4amtwMStDNlppT29TUmJK?=
 =?utf-8?B?ZW5WTjBZck1ZRURYbWZTMUpkVTE4QkxLN29sdVozZ05pNjJFNGs5ZFNWQmtr?=
 =?utf-8?B?dnhmY1FNNU5qWks3VS9HaXVOQkJKZXprZnF3OHRNRHE4QjVFcEhVV1Q4dEdO?=
 =?utf-8?B?aFVWam80VnhnTnJ3MmFLSW5mZjUvYUJxeUpNUkJxd09LQlBDUE9YUkFrZXhj?=
 =?utf-8?B?SnFZWHNxV3lYdnNEOHZxZkl0a1lnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <91A7E41CEB00DE44A02FBB6371F77344@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac0674c8-39d3-4330-200b-08ddfcc1f98b
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2025 06:00:20.1654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DNPehRocg8ZZJsaQI3L7uyLATWa3Ph7XB85gk+EWAlzNKAzbQ+rCHfFKXZUezXR//ZzBBxa+auMVwYLvUe0jQIz0MtSUKbcEV+EPp1nJs7Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8024
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

T24gTW9uLCAyMDI1LTA5LTIyIGF0IDE0OjI3ICswMDAwLCBLYWhvbGEsIE1pa2Egd3JvdGU6DQo+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRlbC1nZnggPGludGVs
LWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmDQo+ID4gT2YgSm91
bmkgSMO2Z2FuZGVyDQo+ID4gU2VudDogTW9uZGF5LCAyMiBTZXB0ZW1iZXIgMjAyNSAxMy4yNw0K
PiA+IFRvOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBp
bnRlbC5jb20+OyBMZW1lbg0KPiA+IDxsZW1lbkBsZW1lbi54eXo+OyBLb29zIFZyaWV6ZW4gPGtv
b3MudnJpZXplbkBnbWFpbC5jb20+DQo+ID4gU3ViamVjdDogW1BBVENIXSBkcm0vaTkxNS9wc3I6
IERlYWN0aXZhdGUgUFNSIG9ubHkgb24gTE5MIGFuZCB3aGVuDQo+ID4gc2VsZWN0aXZlIGZldGNo
IGVuYWJsZWQNCj4gPiANCj4gPiBVc2luZyBpbnRlbF9wc3JfZXhpdCBpbiBmcm9udGJ1ZmZlciBm
bHVzaCBvbiBvbGRlciBwbGF0Zm9ybXMgc2VlbXMNCj4gPiB0byBiZSBjYXVzaW5nIHByb2JsZW1z
Lg0KPiA+IA0KPiA+IFNlbmRpbmcgc2luZ2xlIGZ1bGwgZnJhbWUgdXBkYXRlIHVzaW5nIGludGVs
X3Bzcl9mb3JjZV91cGRhdGUgaXMNCj4gPiBhbnl3YXlzIG1vcmUgb3B0aW1hbCBjb21wYXJlZCB0
byBwc3IgZGVhY3RpdmF0ZS9hY3RpdmF0ZSAtPg0KPiA+IG1vdmUgYmFjayB0byB0aGlzIGFwcHJv
YWNoIG9uIFBTUjEsIFBTUiBIVyB0cmFja2luZyBhbmQgUGFuZWwNCj4gPiBSZXBsYXkgZnVsbCBm
cmFtZSB1cGRhdGUgYW5kIHVzZSBkZWFjdGl2YXRlL2FjdGl2YXRlIG9ubHkgb24NCj4gPiBMdW5h
ckxha2UgYW5kIG9ubHkgd2hlbiBzZWxlY3RpdmUgZmV0Y2ggaXMgZW5hYmxlZC4NCj4gPiANCj4g
PiBUZXN0ZWQtYnk6IExlbWVuIDxsZW1lbkBsZW1lbi54eXo+DQo+ID4gVGVzdGVkLWJ5OiBLb29z
IFZyaWV6ZW4gPGtvb3MudnJpZXplbkBnbWFpbC5jb20+DQo+ID4gQ2xvc2VzOg0KPiA+IGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTQ5NDYN
Cj4gDQo+IFJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0K
DQpUaGFuayB5b3UgTWlrYSBmb3IgY2hlY2tpbmcgbXkgcGF0Y2guIFRoaXMgaXMgbm93IHB1c2hl
ZCB0byBkcm0taW50ZWwtDQpuZXh0Lg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+
ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jIHwgMTIgKysrKysrKysrKy0tDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IDAxYmYzMDRjNzA1Zi4uMTBlYjkzYTM0Y2Yy
IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
ID4gQEAgLTM0MDIsNiArMzQwMiw3IEBAIHN0YXRpYyB2b2lkIF9wc3JfZmx1c2hfaGFuZGxlKHN0
cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCkNCj4gPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxh
eSAqZGlzcGxheSA9DQo+ID4gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ID4gDQo+ID4g
wqAJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMjAgJiYgaW50ZWxfZHAtDQo+ID4gPnBzci5w
c3IyX3NlbF9mZXRjaF9lbmFibGVkKSB7DQo+ID4gKwkJLyogU2VsZWN0aXZlIGZldGNoIHByaW9y
IExOTCAqLw0KPiA+IMKgCQlpZiAoaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9jZmZfZW5h
YmxlZCkgew0KPiA+IMKgCQkJLyogY2FuIHdlIHR1cm4gQ0ZGIG9mZj8gKi8NCj4gPiDCoAkJCWlm
IChpbnRlbF9kcC0+cHNyLmJ1c3lfZnJvbnRidWZmZXJfYml0cyA9PQ0KPiA+IDApIEBAIC0zNDIw
LDEyICszNDIxLDE5IEBAIHN0YXRpYyB2b2lkDQo+ID4gX3Bzcl9mbHVzaF9oYW5kbGUoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiDCoAkJaW50ZWxfcHNyX2NvbmZpZ3VyZV9mdWxsX2Zy
YW1lX3VwZGF0ZShpbnRlbF9kcCk7DQo+ID4gDQo+ID4gwqAJCWludGVsX3Bzcl9mb3JjZV91cGRh
dGUoaW50ZWxfZHApOw0KPiA+ICsJfSBlbHNlIGlmICghaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9m
ZXRjaF9lbmFibGVkKSB7DQo+ID4gKwkJLyoNCj4gPiArCQkgKiBQU1IxIG9uIGFsbCBwbGF0Zm9y
bXMNCj4gPiArCQkgKiBQU1IyIEhXIHRyYWNraW5nDQo+ID4gKwkJICogUGFuZWwgUmVwbGF5IEZ1
bGwgZnJhbWUgdXBkYXRlDQo+ID4gKwkJICovDQo+ID4gKwkJaW50ZWxfcHNyX2ZvcmNlX3VwZGF0
ZShpbnRlbF9kcCk7DQo+ID4gwqAJfSBlbHNlIHsNCj4gPiArCQkvKiBTZWxlY3RpdmUgdXBkYXRl
IExOTCBvbndhcmRzICovDQo+ID4gwqAJCWludGVsX3Bzcl9leGl0KGludGVsX2RwKTsNCj4gPiDC
oAl9DQo+ID4gDQo+ID4gLQlpZiAoKCFpbnRlbF9kcC0+cHNyLnBzcjJfc2VsX2ZldGNoX2VuYWJs
ZWQgfHwNCj4gPiBESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAyMCkgJiYNCj4gPiAtCcKgwqDCoCAh
aW50ZWxfZHAtPnBzci5idXN5X2Zyb250YnVmZmVyX2JpdHMpDQo+ID4gKwlpZiAoIWludGVsX2Rw
LT5wc3IuYWN0aXZlICYmICFpbnRlbF9kcC0NCj4gPiA+cHNyLmJ1c3lfZnJvbnRidWZmZXJfYml0
cykNCj4gPiDCoAkJcXVldWVfd29yayhkaXNwbGF5LT53cS51bm9yZGVyZWQsICZpbnRlbF9kcC0N
Cj4gPiA+cHNyLndvcmspO8KgIH0NCj4gPiANCj4gPiAtLQ0KPiA+IDIuNDMuMA0KPiANCg0K
