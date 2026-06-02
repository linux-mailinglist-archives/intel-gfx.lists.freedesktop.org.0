Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOYKNhxfHmo/iwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 06:42:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AED5162826B
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 06:42:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D638111382D;
	Tue,  2 Jun 2026 04:42:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="haq9lrMu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 380F510EBBA;
 Tue,  2 Jun 2026 04:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780375319; x=1811911319;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lCl6kbiVj6qAzJdb88sZDHU2VVbnSWuvGupKNEghPB4=;
 b=haq9lrMuBuDLyM3C1oHnsyxsxXDuDE5jlrpjdzNzBBn3H2zbrnw/RtDV
 GtreAZtw87eTATf75SlB/BzVDrJWOxK0cg3+gm/56TdsOyOcPXpRLEitb
 Mvyw+xKbXRrnpYLVMtNvT1Sjdw/A5H/qxVajuCtfd9MIVt5GgxA2XqMX6
 LRjbdfJZOHGlfHesOP8P727MyO3KIe1UD3UN0jU4f0tMu7xfv1zfsZayH
 fhHr/iO1O9R1ZPiza/ZQUdcx6N14ifawd5R7nrZujDy8oSn2urQAIM7MS
 fwYnoGMbcY3AfClVOxr7CmqbrZZyc+xGlrCmAFyYPJOIVTAGx33s2Y/kW Q==;
X-CSE-ConnectionGUID: 1ly47aPjRM+VBVEgbGA07w==
X-CSE-MsgGUID: Cyi93bUqTsmVbVAg4e4QbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="80182714"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="80182714"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 21:41:59 -0700
X-CSE-ConnectionGUID: 9JTQH7n1SguaoF4ieRxPaA==
X-CSE-MsgGUID: 7iU2Ixh6RkeJjRPBTPHySw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="245601072"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 21:41:59 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 21:41:58 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 21:41:58 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.0) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 21:41:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mWRGurgmuIYP7434dfovgZUmAFAYb1VViDXkYtxvxfyVpqy29XOw7aLaGOJhGsS+wZirQ2IOb158FvF5w2/PUopcaTW3bss2ekG3XZWBWE6qW3yDq6RoG3/uVgMHKGzDpW0/h2rt0sDQPLIxbIZwvU1NHDUDTMSnY+NS38AbtDOVTGWyCNjf7PsLQpfSSb2uaGjVol0JiLXzaFEmhtLGaqDMsBsaDSV+kpPEtD4zJiHBwJVTXILP+MUwZg5M9IzD1vtUmlMB8Z+t7Aw9Bpfr6apq/o4kU5bqqdaNuSR/zNYzQoSeeoUOlCPXNY76JKIPRUpv2P6J4hvtZbiL5DK9CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lCl6kbiVj6qAzJdb88sZDHU2VVbnSWuvGupKNEghPB4=;
 b=TUpUgWvjG9C+m7os3KXdESy+6BRMhJTAkgxjEx7rqzDq9iUHNQkrwuJfMNN3S9c0ZctkxDjmWwWyGVBDJyID+wCfkBEuMvdPy/t4sFNrgMRza5L10jDKLp60pbKIarTOK7UPTIM+ZRUbPQzU0ptG1ctmq11C5g+1sagTDlP7We5+6u9J2HdRRKtWzBQdLxmyzMK59sIyd05in1HqVWzVKx5GKt+++rZnvmHrc1IYweXlBf9uCJkKyPreOxUFZFWug3hAKCa0KV1JHED4ft1ZuYPp5lMblTJdpTUcQtbS1l806+HZATIXCucVILJ0c+v2dgws0y/rQ9fnNxk2OYTzLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by PH7PR11MB6032.namprd11.prod.outlook.com (2603:10b6:510:1d3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Tue, 2 Jun 2026
 04:41:50 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::fdb2:e2ba:9504:5adc]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::fdb2:e2ba:9504:5adc%3]) with mapi id 15.21.0071.011; Tue, 2 Jun 2026
 04:41:50 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v4 08/10] drm/i915: override Snps's VS/PE when requested
Thread-Topic: [PATCH v4 08/10] drm/i915: override Snps's VS/PE when requested
Thread-Index: AQHc76F/EvmqaTe93kGf+05djE6J57Yqs6GA
Date: Tue, 2 Jun 2026 04:41:50 +0000
Message-ID: <IA3PR11MB89379C934A30BB143AD93CB9E3122@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20260529192859.4172376-1-michal.grzelak@intel.com>
 <20260529192859.4172376-9-michal.grzelak@intel.com>
In-Reply-To: <20260529192859.4172376-9-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|PH7PR11MB6032:EE_
x-ms-office365-filtering-correlation-id: bd42e84f-ce83-4a5d-4909-08dec0614303
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099006|4143699003|11063799006|18002099003|22082099003|3023799007|38070700021;
x-microsoft-antispam-message-info: jMf4N6RcrcdcHmEx5/mjDSv0lSfOmtbaIKSbzAO6AD2Xyq54svek9VNzcuVfJgGI9hvjzT9X3JiAeV2aTPZtMKxqz8MhtF0l+7UbGDYhlKATfgjYGcdPo3nJsUzacLdeXM0F4k9jkDiFHCYHp6iGXabXgiQ4GB8D+08ZHdxTX0UxEAHMLfoV2HMzeNQvKpKI7f+Nar3kl3D9uBMU51xw1yMFo7VjYlrD3coyIeL9HLJWCqW/CXhRJw8oCpJe2QcH/ye3D1jJSD7v4KgSzwtwz2XDwABRIpEuX6vX83jxJ+henmpTq6S1mzIz6PKUqxwuDY2HqAw1lfVrQAEqjSw6P149eObIa7xL2N/5mmLkFOSfl/0zuSFCfVcswjE7dKV1plM9HGXptUEAPLXKc4uuqLRrFjJjrI5yujmk/ZEK4b68xTlM0phlwoC7GXAOG2/eIbpLvSyaW6apQ8BjkZGA6KBHLAU9Qpu3zHD1vwvv8TXx43M9P0sC7wjQKnKj99gtodh/ygEhkLxX9cB1x6xSy9O0CyT7TE6Lhkg78VlrdpyJ7LynKGXQj22ZXaJORAWbac2/E9Ycu73uXLco67boTZ7Zman84N1EfKkOu8M+DvdE+07BueDkay9cunwutXZVTDBr46OKp0j4pW7Zs/Zp8QTBWDI2aIzayAXXLxZE79CUQtme0mwSsiAmAwHSKytjC72jeeEszGIkHaOfXHgHUisQ11xNTz338id6kVxR/B4vqmjfgKjfX36/6OQXbwnz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099006)(4143699003)(11063799006)(18002099003)(22082099003)(3023799007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TFhWZllNVHBkbFBWU2dVVDBZbTRyalBSMmRmMGM1ckVOYkNUTk45N3dENmZP?=
 =?utf-8?B?Znc2dkU2dVpuNzRsMVBMUkpVc0VqNVYyTnc1dFN2Vlh2dEh1OEViRUxUZ3Vh?=
 =?utf-8?B?c2JrWHVYZEs3UXNDckUwcHM2MnkxejBOVFdXaFNZRHVrVDRqd094RmdBM0Np?=
 =?utf-8?B?Q3FISmtVR0l2KzZWUEd4cndGR0srODVyV1BJUU51WjN1QmNVNFBxZ0ppRlkw?=
 =?utf-8?B?YXZURm42Mi9TSkxtaUQrMUFpRmdacGp0cm9oQitLd0FYMkYreVN4Z1pLbjBp?=
 =?utf-8?B?WEdQQkpYTHRwaCtvaEdrUW1PTG5FQ1JZUU00WGlCSTNEaFlJZEI5L1U4MW01?=
 =?utf-8?B?RlhqdmRER0NZWEVJb3ZKMllKaGhmMzJVN3Y1Z21zeVNIZ2tiVVEzaU1wSVJr?=
 =?utf-8?B?bnlqYVdOQVVkZXVFMThZWUluVWU4OVorUG13dm5VVnR1dHZCQ09PTDQyUWU0?=
 =?utf-8?B?K0s0NlBpelhzbEUxZmpWdjBCck03NTdKOVFOeTVMOFBOL3hna2JTZEx1eURX?=
 =?utf-8?B?NXFWcDNQS3cvTWlISXU0dmxxWWcxMmkwMkg4OVR1dktudUd4NE1tVlFTQlE1?=
 =?utf-8?B?NUp4T1I3MnpvUVVNdWR5eHl4L3FtUGhsa1FwSW4zWGhwcGtkQmFrUUkxdnpV?=
 =?utf-8?B?aE5hcEo1dzdFZWJ3UVhGeFZhOXd1R0ZpWEZjTEhDT2crbmhzWTUwYnJnMldO?=
 =?utf-8?B?L1lYQXhyazF6QmtXYVdOV3VMQzRocTB1Qm9FN2JwM2hzWVorV3RaVXN2d0x4?=
 =?utf-8?B?N3FMSzkrdExqMHFFV2hUTXg2OGFwTWpZMDc5VFBtY1NzVk5sN1BNM1Nna2NZ?=
 =?utf-8?B?RzZkSmFQOVpLSmRxbjJUcFdsTXE3Y0MzUGFMdEJpejVZWDNCMnoxeDRkNU5R?=
 =?utf-8?B?WHlBUXR4czlPakg0ZTBienpJVUNTbTVKZk5lcWF0ODdwRFFadkU0QlZXN2lY?=
 =?utf-8?B?OXFWUEFHdDU5VFQ5OVJFU2xuaytWSTdVb0VDMGR0cUdsTzBJTFB6L05RZW15?=
 =?utf-8?B?NVBVdzhMZGMxcHBRaHZwc01jaGJibXZnODljaUxoN2h3d09qRndjODBlUnZG?=
 =?utf-8?B?bVMza3JTUnQzRUlZSE55eGxJTmNlUG9UYjkzTjNlNWRwOTRwWFZnUGt3aFhF?=
 =?utf-8?B?U2JuaXdlYWpISUFVOTQ2Ynpqb252RWN5WDNtZ2RqK0JKU3A1OVhoa2NiOXhv?=
 =?utf-8?B?aVRjd2JxQ2ZlR0t0bW9qcEF6Q0lQWjI4ekJYNFpqSFRzZUJmYUdYVENtcHcy?=
 =?utf-8?B?eGdtU2VLdjZza3NFeG9OOTVoMDliNFBhSUVyRnpMTDAzdE9zck5CL1ZsblFy?=
 =?utf-8?B?RGh3SlRvZW1KbTdCS0k0aHZnM3lmYW1FbENadFJmSW1BczJtRGZPTTFWc1dQ?=
 =?utf-8?B?Tmx4TENCUlQ3Q2diQlozbjdoSDFnZXhwZlA0ZGtTUXlaWit3QkVyQzA0Si9r?=
 =?utf-8?B?UjlNQlZMVmQvaTdGRGZkWklFbVNhNVUvNnBwWFRmV1I0bGh2R3M4K1JLWFdF?=
 =?utf-8?B?a0NRUWlXUi9qUDZqb1ZyTlIwV09RN0pDUUpvNlozQ2hLOXhCcndSYXA0dks5?=
 =?utf-8?B?ajRkeHRhZzJMZ2ZLM1hrRVVLd1BBQTRkL3RMQXZ3SGoyY29McDNKMnpiZFZv?=
 =?utf-8?B?RHNER0d0bHB2blpEcmVVMVFYdFhuWFlRMzRjNW5KWURqdGdSckZPK2VoMnRw?=
 =?utf-8?B?cE4zV01VaWZVSGpHTmlBdTY2anF3WlhKSGVaMUthellGOXdsSHF0MWZYTzJs?=
 =?utf-8?B?Qkg5RlRjQk5pKzRQa3pXa2VLN0Z3N1lFMFhRbTV2a2tpbHFEbm5JQnVLVU9B?=
 =?utf-8?B?UHJJcU1sY2diTW1JTHpLM2lwRnY2cUNqUmpLMjFTamwvSkhLTzB6M0ZXanRP?=
 =?utf-8?B?N3JqcFNObGdSMmN3SWVLeWtVSWVVRE1UbkVuSHBSQW9JOXZaSGZKRm0vVjZi?=
 =?utf-8?B?KzdXR2VyZk9MUkx2cXJGWjlZODRlQkFTVEJXRHczZmFJNitLTTF4eXNZbUVV?=
 =?utf-8?B?aWpyNnVCVGQzUkc5MjVHMlhJNmxURkFrVC9tVlMzQXBjUVgxdXZmcU54ZjBu?=
 =?utf-8?B?V1RpdnREVHZIckJRRGtvVit3Y1BaeXZzd0ZEZ2RqTUdpWjlyMXR2Y1JYY0ND?=
 =?utf-8?B?QWxneFlZWHY2MEdlRVd3d05qNFZqTThVWnhnSzZEb2ZxbnlJVFBLcDBlVk1N?=
 =?utf-8?B?eUE5bTJxN0tNMXlKdVBPQ2VxZmdMQ0xJSjFjY25lU0kzVTlwcEZjNDlxQTJi?=
 =?utf-8?B?Qk50aGhWcDVaRDN0Vng1eVRJTmNJMXdmWkYyV0ZsN3ZjRnpJNS9vdnI2SWpt?=
 =?utf-8?B?OXJxaDcyUUFUOG94dWhKOGIrTjNFM3BmRVpiY1c3bVVJN3lmSUxZQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: D5z4OjxgsnSatEtSMOpkwvGvSpJvIqra5iGfDWV2XjAJ+zb4X7VHnjufx3H5R+RvGnEQoxVIVhHYz5uhIlLatK83y/LrXGGIs4HZKKGLNuEBlH8XzcQgtJdrXH7kCLsSSSVwN6qKE1Bt78aao8GUqOLForQQOVb72CKHwctFBzXQYnys1NSL4uZe6yYYTJqlBUw1ricaqrL1Driw/aVmGMKmaESw9J5vcp22F3nwSzgGgMos8fmyHIilq7qg+jF2ZoN/3F4tNL13hFPbNibSQqOAhHvMLzMDj5x9DpMpa9F2KVDXWQQy9FV5yh9el9v1fivBOfHLB7ax9zQ/8z9dow==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd42e84f-ce83-4a5d-4909-08dec0614303
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2026 04:41:50.1511 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rN9u2duAz2PFCpH1Z0GRqxN1JAjmF/kLAupDkq4/J2FBebby4S6Ospwz/ryPkkAeXkef6ENfQBerYluQnbEP1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6032
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AED5162826B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQo+IFN1YmplY3Q6IFtQQVRDSCB2NCAwOC8xMF0gZHJtL2k5MTU6IG92ZXJyaWRlIFNucHMncyBW
Uy9QRSB3aGVuIHJlcXVlc3RlZA0KPiANCj4gQWRkIGFjY2Vzc29yIGZ1bmN0aW9uIGZvciBTbnBz
IHRvIHJlYWQgcmVxdWVzdGVkIHRhYmxlIGZyb20gVkJUICM1Ny4NCj4gUGFyc2UgdGhlIHJlcXVl
c3RlZCB0YWJsZSBhbmQgdHJhbnNmb3JtIGRhdGEgaW50byBwb3J0J3MgYnVmZmVyLg0KPiANCj4g
Rm9yIEMyMCwgdXNlIDZ0aCB0YWJsZSBpZiBlbmNvZGVyIHN1cHBvcnRzIERQIDIuMCBvciBoaWdo
ZXIuIE90aGVyd2lzZSB1c2UgNXRoDQo+IHRhYmxlIGZvciBEUC4NCj4gDQo+IEZvciBDMjAsIHRh
YmxlcyAxLTQgYXJlIG5vdCB1c2VkIGF0IGFsbCBhbmQgYXJlIG1vc3QgbGlrZWx5IHRvIGJlIHpl
cm9lZC4gNXRoIHRhYmxlDQo+IGlzIHVzZWQgZm9yIGFueSBtb2RlIGJlbG93IERQIDIuMCAoZXhj
bHVzaXZlKS4gNnRoIHRhYmxlIGlzIHVzZWQgZm9yIGFueSBtb2RlDQo+IGFib3ZlIERQIDIuMCAo
aW5jbHVzaXZlKS4NCj4gDQo+IEZvciBDMTAsIHVzZSAybmQgdGFibGUgZm9yIGV4dGVybmFsIERQ
IGlmIGVuY29kZXIgc3VwcG9ydHMgYW55IG1vZGUgYmV5b25kIG9yDQo+IGluY2x1ZGluZyBIQlIy
LiBVc2UgMXN0IHRhYmxlIGlmIGV4dGVybmFsIERQIGVuY29kZXIgc3VwcG9ydHMgYW55dGhpbmcg
bG93ZXINCj4gdGhhbiBIQlIyLiBGb3IgZURQLCB1c2UgNHRoIHRhYmxlIGlmIGVuY29kZXIgc3Vw
cG9ydHMgSEJSMy4gT3RoZXJ3aXNlIHVzZSAzcmQNCj4gdGFibGUgZm9yIGVEUC4NCj4gDQo+IEZv
ciBDMTAsIDFzdCB0YWJsZSBpcyB1c2VkIGZvciBleHRlcm5hbCBEUCB3aXRoIG1vZGVzIGJlbG93
IEhCUjIgKGV4Y2x1c2l2ZSkuDQo+IDFzdCB0YWJsZSBpcyBhbHNvIHVzZWQgYXMgYSBmYWxsYmFj
ayBmb3Igbm9uLURQcy4gMm5kIHRhYmxlIGlzIHVzZWQgZm9yIGV4dGVybmFsIERQDQo+IHdpdGgg
bW9kZXMgaGlnaGVyIHRoYW4gSEJSMiAoaW5jbHVzaXZlKS4NCj4gM3JkIHRhYmxlIGlzIHVzZWQg
Zm9yIGVEUCB3aXRoIG1vZGVzIGxvd2VyIHRoYW4gSEJSMyAoZXhjbHVzaXZlKS4gNHRoIHRhYmxl
IGlzDQo+IHVzZWQgZm9yIGVEUCB3aXRoIG1vZGVzIGhpZ2hlciB0aGFuIEhCUjMgKGluY2x1c2l2
ZSkuDQo+IA0KPiBJbmRpY2VzIGZvciBvdGhlciB0YWJsZXMgaGF2ZSBub3QgeWV0IGJlZW4gb2Jz
ZXJ2ZWQgdG8gYmUgdXNlZCBhcyBvZiBub3cuDQo+IA0KPiBUaGVyZSBhcmUgbm8gY2hhbmdlcyB0
byBpbnRlbF9kZGlfZHBfbGV2ZWwoKSBzaW5jZSBzZWxlY3Rpb24gb2YgY29ycmVjdCByb3cgb2YN
Cj4gaW50ZWxfZGRpX2J1Zl90cmFuc19lbnRyeSBpcyBzYW1lIGFzIHdoZW4gbm8gb3ZlcnJpZGUg
cmVxdWVzdCBoYXMgYmVlbiBkb25lLg0KPiANCj4gdjMtPnY0DQo+IC0gc3RpY2sgdG8gc29sZWx5
IGNoYW5naW5nIFZCVCBkYXRhIGludG8gY3VycmVudCBzdHJ1Y3R1cmVzIChKYW5pKQ0KPiAtIG1v
dmUgaXRlcmF0b3IgZGVjbGFyYXRpb24gdG8gZGVjbGFyYXRpb24gYmxvY2sgKFN1cmFqKQ0KPiAN
Cj4gdjItPnYzDQo+IC0gcmVtb3ZlIHVubmVjZXNzYXJ5IGJyYWNlcyBmcm9tIGlmIGJsb2NrIChT
dXJhaikNCj4gLSByZXR1cm4gLUVJTlZBTCBpbnN0ZWFkIG9mIC0xIChTdXJhaikNCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IE1pY2hhxYIgR3J6ZWxhayA8bWljaGFsLmdyemVsYWtAaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgICB8
IDM0ICsrKysrKysrKysrKysrKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9iaW9zLmggICAgIHwgIDMgKysNCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9i
dWZfdHJhbnMuYyAgICB8IDQzICsrKysrKysrKysrKysrKysrKy0NCj4gIC4uLi9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuaCAgICB8IDE3ICsrKysrKysrDQo+ICA0IGZpbGVz
IGNoYW5nZWQsIDk1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBpbmRleCA0ZjFhN2Q1MTAx
YzYuLjJkMzU3ZDMzMmNiMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9iaW9zLmMNCj4gQEAgLTM4OTksNiArMzg5OSw0MCBAQCBpbnRlbF9iaW9zX2VuY29kZXJf
Z2V0X2x0X3ZzcGVvKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2
ZGF0YSwNCj4gIAlyZXR1cm4gdnNwZW87DQo+ICB9DQo+IA0KPiArY29uc3Qgc3RydWN0IGludGVs
X2RkaV9idWZfdHJhbnMgKg0KPiAraW50ZWxfYmlvc19lbmNvZGVyX2dldF9jeDBfdnNwZW8oY29u
c3Qgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhDQo+ICpkZXZkYXRhLA0KPiArCQkJCSBp
bnQgaWR4KQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gZGV2ZGF0
YS0+ZGlzcGxheTsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqdnNwZW8gPSAodm9p
ZCAqKSBkZXZkYXRhLT52c3BlbzsNCj4gKwl1bmlvbiBpbnRlbF9kZGlfYnVmX3RyYW5zX2VudHJ5
ICplbnRyaWVzID0gKHZvaWQgKikgdnNwZW8tPmVudHJpZXM7DQo+ICsJY29uc3QgdTMyICp0YWJs
ZXMgPSBkaXNwbGF5LT52YnQudnNwZW8udGFibGVzOw0KPiArCWludCBudW1fY29sdW1ucyA9IGRp
c3BsYXktPnZidC52c3Blby5udW1fY29sdW1uczsNCj4gKwlpbnQgbnVtX3Jvd3MgPSBkaXNwbGF5
LT52YnQudnNwZW8ubnVtX3Jvd3M7DQo+ICsJc2l6ZV90IG9mZnNldCA9IDA7DQo+ICsJaW50IGxl
dmVsOw0KPiArDQo+ICsJSU5URUxfRElTUExBWV9TVEFURV9XQVJOKGRpc3BsYXksIGlkeCA8IF9D
MjBfdW51c2VkMCB8fCBpZHggPg0KPiBDMjBfRFAyWCwNCj4gKwkJCQkgIkN4MCByZXF1ZXN0ZWQg
aW52YWxpZCBWUy9QRS1PIHRhYmxlOiAlZFxuIiwNCj4gaWR4KTsNCg0KU2FtZSAgY29tbWVudCBv
biB0aGlzIGFzIHByZXZpb3VzIGNvbW1pdA0KDQo+ICsNCj4gKwlvZmZzZXQgKz0gaWR4ICogbnVt
X3Jvd3MgKiBudW1fY29sdW1uczsNCj4gKw0KPiArCWZvciAobGV2ZWwgPSAwOyBsZXZlbCA8IG51
bV9yb3dzOyBsZXZlbCsrKSB7DQo+ICsJCXUzMiB2c3dpbmcgPSB0YWJsZXNbb2Zmc2V0XTsNCj4g
KwkJdTMyIHByZV9jdXJzb3IgPSB0YWJsZXNbb2Zmc2V0KzFdOw0KDQpTcGFjZSBhcm91bmQgb3Bl
cmF0b3IuDQoNCj4gKwkJdTMyIHBvc3RfY3Vyc29yID0gdGFibGVzW29mZnNldCsyXTsNCg0KRGl0
dG8uDQoNCj4gKw0KPiArCQllbnRyaWVzW2xldmVsXS5zbnBzLnZzd2luZyA9IHZzd2luZzsNCj4g
KwkJZW50cmllc1tsZXZlbF0uc25wcy5wcmVfY3Vyc29yID0gcHJlX2N1cnNvcjsNCj4gKwkJZW50
cmllc1tsZXZlbF0uc25wcy5wb3N0X2N1cnNvciA9IHBvc3RfY3Vyc29yOw0KPiArDQo+ICsJCW9m
ZnNldCArPSBudW1fY29sdW1uczsNCj4gKwl9DQo+ICsNCj4gKwl2c3Blby0+bnVtX2VudHJpZXMg
PSBudW1fcm93czsNCj4gKwlyZXR1cm4gdnNwZW87DQo+ICt9DQo+ICsNCj4gIGJvb2wgaW50ZWxf
Ymlvc19lbmNvZGVyX2lzX2RlZGljYXRlZF9leHRlcm5hbChjb25zdCBzdHJ1Y3QNCj4gaW50ZWxf
Ymlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEpICB7DQo+ICAJcmV0dXJuIGRldmRhdGEtPmRpc3Bs
YXktPnZidC52ZXJzaW9uID49IDI2NCAmJiBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Jpb3MuaA0KPiBpbmRleCA3Mzc4NjgzMmI0MDIuLmIxNTNjMDA5ZWZjOSAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgNCj4gQEAgLTc2
LDYgKzc2LDkgQEAgaW50ZWxfYmlvc19lbmNvZGVyX2RhdGFfbG9va3VwKHN0cnVjdCBpbnRlbF9k
aXNwbGF5DQo+ICpkaXNwbGF5LCBlbnVtIHBvcnQgcG9ydCk7ICBjb25zdCBzdHJ1Y3QgaW50ZWxf
ZGRpX2J1Zl90cmFucyAqDQo+IGludGVsX2Jpb3NfZW5jb2Rlcl9nZXRfbHRfdnNwZW8oY29uc3Qg
c3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhDQo+ICpkZXZkYXRhLA0KPiAgCQkJCWludCB0
YWJsZSk7DQo+ICtjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqDQo+ICtpbnRlbF9i
aW9zX2VuY29kZXJfZ2V0X2N4MF92c3Blbyhjb25zdCBzdHJ1Y3QgaW50ZWxfYmlvc19lbmNvZGVy
X2RhdGENCj4gKmRldmRhdGEsDQo+ICsJCQkJIGludCB0YWJsZSk7DQo+IA0KPiAgYm9vbCBpbnRl
bF9iaW9zX2VuY29kZXJfcmVxdWVzdHNfdnNwZW8oY29uc3Qgc3RydWN0DQo+IGludGVsX2Jpb3Nf
ZW5jb2Rlcl9kYXRhICpkZXZkYXRhKTsgIGJvb2wNCj4gaW50ZWxfYmlvc19lbmNvZGVyX3N1cHBv
cnRzX2R2aShjb25zdCBzdHJ1Y3QgaW50ZWxfYmlvc19lbmNvZGVyX2RhdGENCj4gKmRldmRhdGEp
OyBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVm
X3RyYW5zLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZf
dHJhbnMuYw0KPiBpbmRleCA2ODI1OGZiZmE0M2UuLjNiNDQ0NjY1YzMxZCAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMN
Cj4gQEAgLTE3ODYsNiArMTc4Niw0MSBAQCB4ZTNwbHBkX2dldF9sdF9idWZfdHJhbnMoc3RydWN0
IGludGVsX2VuY29kZXINCj4gKmVuY29kZXIsDQo+ICAJCXJldHVybiBpbnRlbF9nZXRfYnVmX3Ry
YW5zKCZ4ZTNwbHBkX2x0X3RyYW5zX2RwMTQsDQo+IG5fZW50cmllcyk7ICB9DQo+IA0KPiArc3Rh
dGljIGludA0KPiArc25wc19nZXRfYzEwX3ZzcGVvX2luZGV4KHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyLA0KDQpTaG91bGQgYmUgbXRsX2dldF9jMTAuLi4uDQoNCj4gKwkJCSBjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgew0KPiArCWlmIChpbnRlbF9jcnRj
X2hhc190eXBlKGNydGNfc3RhdGUsIElOVEVMX09VVFBVVF9FRFApKSB7DQo+ICsJCWlmIChjcnRj
X3N0YXRlLT5wb3J0X2Nsb2NrID4gNTQwMDAwKQ0KPiArCQkJcmV0dXJuIEMxMF9FRFBfSEJSMzsN
Cj4gKwkJZWxzZQ0KPiArCQkJcmV0dXJuIEMxMF9FRFBfTk9OX0hCUjM7DQo+ICsJfQ0KPiArDQo+
ICsJaWYgKGludGVsX2NydGNfaGFzX2RwX2VuY29kZXIoY3J0Y19zdGF0ZSkpIHsNCj4gKwkJaWYg
KGNydGNfc3RhdGUtPnBvcnRfY2xvY2sgPiAyNzAwMDApDQo+ICsJCQlyZXR1cm4gQzEwX0RQMTRf
SEJSMl9IQlIzOw0KPiArCQllbHNlDQo+ICsJCQlyZXR1cm4gQzEwX0RQMTRfUkJSX0hCUjsNCj4g
Kwl9DQo+ICsNCj4gKwlyZXR1cm4gLUVJTlZBTDsNCj4gK30NCj4gKw0KPiArc3RhdGljIGludA0K
PiArc25wc19nZXRfYzIwX3ZzcGVvX2luZGV4KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LA0KPiArCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSB7DQoN
ClNob3VsZCBiZSBtdGxfZ2V0X2MyMC4uLi4NCg0KPiArCWlmIChpbnRlbF9jcnRjX2hhc19kcF9l
bmNvZGVyKGNydGNfc3RhdGUpKSB7DQo+ICsJCWlmIChpbnRlbF9kcF9pc191aGJyKGNydGNfc3Rh
dGUpKQ0KPiArCQkJcmV0dXJuIEMyMF9EUDJYOw0KPiArCQllbHNlDQo+ICsJCQlyZXR1cm4gQzIw
X0RQMTQ7DQo+ICsJfQ0KPiArDQo+ICsJcmV0dXJuIC1FSU5WQUw7DQo+ICt9DQo+ICsNCj4gIHN0
YXRpYyBpbnQNCj4gIHhlM3BscGRfZ2V0X2x0X3ZzcGVvX2luZGV4KHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLA0KPiAgCQkJICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpIEBAIC0NCj4gMTgxOSwxMCArMTg1NCwxNCBAQCB2b2lkIGludGVsX2RkaV9idWZf
dHJhbnNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlcikNCj4gIAkJZW5jb2Rl
ci0+Z2V0X3BoeV92c3Blb19pbmRleCA9DQo+IHhlM3BscGRfZ2V0X2x0X3ZzcGVvX2luZGV4Ow0K
PiAgCQllbmNvZGVyLT5nZXRfcGh5X3ZzcGVvID0gaW50ZWxfYmlvc19lbmNvZGVyX2dldF9sdF92
c3BlbzsNCj4gIAl9IGVsc2UgaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDE0KSB7DQo+IC0J
CWlmIChpbnRlbF9lbmNvZGVyX2lzX2MxMHBoeShlbmNvZGVyKSkNCj4gKwkJZW5jb2Rlci0+Z2V0
X3BoeV92c3BlbyA9DQo+IGludGVsX2Jpb3NfZW5jb2Rlcl9nZXRfY3gwX3ZzcGVvOw0KPiArCQlp
ZiAoaW50ZWxfZW5jb2Rlcl9pc19jMTBwaHkoZW5jb2RlcikpIHsNCj4gIAkJCWVuY29kZXItPmdl
dF9idWZfdHJhbnMgPSBtdGxfZ2V0X2MxMF9idWZfdHJhbnM7DQo+IC0JCWVsc2UNCj4gKwkJCWVu
Y29kZXItPmdldF9waHlfdnNwZW9faW5kZXggPQ0KPiBzbnBzX2dldF9jMTBfdnNwZW9faW5kZXg7
DQo+ICsJCX0gZWxzZSB7DQo+ICAJCQllbmNvZGVyLT5nZXRfYnVmX3RyYW5zID0gbXRsX2dldF9j
MjBfYnVmX3RyYW5zOw0KPiArCQkJZW5jb2Rlci0+Z2V0X3BoeV92c3Blb19pbmRleCA9DQo+IHNu
cHNfZ2V0X2MyMF92c3Blb19pbmRleDsNCj4gKwkJfQ0KPiAgCX0gZWxzZSBpZiAoZGlzcGxheS0+
cGxhdGZvcm0uZGcyKSB7DQo+ICAJCWVuY29kZXItPmdldF9idWZfdHJhbnMgPSBkZzJfZ2V0X3Nu
cHNfYnVmX3RyYW5zOw0KPiAgCX0gZWxzZSBpZiAoZGlzcGxheS0+cGxhdGZvcm0uYWxkZXJsYWtl
X3ApIHsgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpX2J1Zl90cmFucy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGlfYnVmX3RyYW5zLmgNCj4gaW5kZXggNTYwODkyYjRlZjhjLi43ZDNlMGI3NTM1ZmUgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFu
cy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90
cmFucy5oDQo+IEBAIC04NCw2ICs4NCwyMyBAQCBlbnVtIGludGVsX2x0X3ZzcGVvIHsNCj4gIAlM
VF9EUDJYDQo+ICB9Ow0KPiANCj4gK2VudW0gaW50ZWxfYzIwX3ZzcGVvIHsNCj4gKwlfQzIwX3Vu
dXNlZDAgPSAwLA0KPiArCV9DMjBfdW51c2VkMSwNCj4gKwlfQzIwX3VudXNlZDIsDQo+ICsJX0My
MF91bnVzZWQzLA0KDQpBYm92ZSBub3QgbmVlZGVkDQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFs
DQoNCj4gKw0KPiArCUMyMF9EUDE0ID0gNCwNCj4gKwlDMjBfRFAyWA0KPiArfTsNCj4gKw0KPiAr
ZW51bSBpbnRlbF9jMTBfdnNwZW8gew0KPiArCUMxMF9EUDE0X1JCUl9IQlIgPSAwLA0KPiArCUMx
MF9EUDE0X0hCUjJfSEJSMywNCj4gKwlDMTBfRURQX05PTl9IQlIzLA0KPiArCUMxMF9FRFBfSEJS
Mw0KPiArfTsNCj4gKw0KPiAgYm9vbCBpc19ob2JsX2J1Zl90cmFucyhjb25zdCBzdHJ1Y3QgaW50
ZWxfZGRpX2J1Zl90cmFucyAqdGFibGUpOw0KPiANCj4gIHZvaWQgaW50ZWxfZGRpX2J1Zl90cmFu
c19pbml0KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKTsNCj4gLS0NCj4gMi40NS4yDQoN
Cg==
