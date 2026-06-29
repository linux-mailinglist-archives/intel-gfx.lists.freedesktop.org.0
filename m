Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JSxaNhVFQmpM3QkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 12:12:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC176D8BEA
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 12:12:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=bIZvDjlM;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C284910E7C8;
	Mon, 29 Jun 2026 10:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB70010E6E0;
 Mon, 29 Jun 2026 10:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782727954; x=1814263954;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eJGc7/o8t+ny9/fGQ5gXOgWrLOh5IdSDoSWHdPV79uw=;
 b=bIZvDjlMeU9U/QoOXt8NtpaR10SizXmEMI0K4jb+4GdWSMnMLMFt7gLt
 /Jl67MB9tGQPfux+d08uIBa8RtNGksS9cxua5M/556y/hw0iTwRoEOXfd
 W7XLPV9Wp+t1fd4xcHTVV7KIPJ9JsJZfKBS9EGEBAS66l4tMQS2NN3VQe
 y/kp9Eh9X6ti/UfRichQNEjClqhHtRxVQHoXkXaIWq/uBDfqg34cBypzx
 xMPh15gGx35FibTLE8fjf9w9UKrdQC0z74KnG2MxfL3X+WbF/1n2u88g1
 tQL2/BadXtzNfmDwv6CLM1jbjNnx2Oykjm/aMZf+4HcCSLuSoPl5oHZ3A A==;
X-CSE-ConnectionGUID: lbv5D7ksQVCGXTzm9WOIUg==
X-CSE-MsgGUID: vPGsAUSzSAuTE/IjD+CQGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11831"; a="93761682"
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="93761682"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 03:12:34 -0700
X-CSE-ConnectionGUID: qdojdRbaRZu0t57FeCV+hQ==
X-CSE-MsgGUID: FiVC7topT9SCHR9k4FK8/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="290047402"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 03:12:33 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 29 Jun 2026 03:12:32 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 29 Jun 2026 03:12:32 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.63) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 29 Jun 2026 03:12:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uZqlM68Ve7JJS66whaL5xtpB+FwYL7H31Zlp8nnaf8WiAW6QK0jlR6x66CP9wG1f3VXZruYBOc4Rc9EjJEuM0XOHeNnSKIdOBbPmf0zM/1gPlks+EohHWiQ/Zd3drZvjd40VibV9kzZspB0Na0FXHR9d1IOQ/+uMRlKMxUyTgtPGmKDrSsFTl7vz3kGt6UA3y2k8coLP3SKwpPIas0Fuwlxfjx6OhCCvQreJQn61jbOzh61lvFjD2BCoU0b4/umP0yLgZan5rXa7GZ0t7+Lbk/50R2zRYT4bpLtuCI7w04+sfM0kV1hAlDDornQvVZ4k9UQtcPSAwr1s54r99/7Dvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RFc0h5mc6W+FINpuc0gKs7AxEXtdJcZyTFEDbmnOHpE=;
 b=GFwJeoBiBVcvBLyS4KYWeDYD/tKVMQpzQeuj21eBuKoeOaSHWrmVk2n7Ra4VZoQj0dVDbA91D+yXg3pFnTAcS9yrLGEI9veIA+qj1iWxGInLdYLThAkt1Stq/9fxT0mC22WiBwdZw7gFLnGsL3TaJXPVvhpC86s+gl7xweWpt5iivvbYlsCy/QnVzC3kEwb99LBiTOcwLCoVh1HCIjM8zA6AjS1xsWuBrXNvjRzdJbfsliNkLKMnk16w//SJGbv5zQcql9QFPRIsMOuhZVRLet7TV6MeZ0Xr9K7GYO22F1cFJAk43aE3V8WJbvnNveATps5MxsT+y/0VIQJ3r7sGow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by SN7PR11MB6828.namprd11.prod.outlook.com (2603:10b6:806:2a3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 10:12:28 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0159.018; Mon, 29 Jun 2026
 10:12:27 +0000
Date: Mon, 29 Jun 2026 10:12:17 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Robin Murphy <robin.murphy@arm.com>
CC: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <iommu@lists.linux.dev>, Andi Shyti <andi.shyti@linux.intel.com>, "Joerg
 Roedel" <joro@8bytes.org>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH 1/3] drivers/iommu: Unroll unsuccessful mapping
Message-ID: <xajagmgqwrspthaza4zkxfgubatdg762k6icu6vwv2lzwzarh5@hxzhg7vkuc2g>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260625134342.1102921-1-krzysztof.karas@intel.com>
 <20260625134342.1102921-2-krzysztof.karas@intel.com>
 <ce5f27fd-82be-4750-8592-2eeb31a54523@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <ce5f27fd-82be-4750-8592-2eeb31a54523@arm.com>
X-ClientProxiedBy: DUZPR01CA0110.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bb::7) To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|SN7PR11MB6828:EE_
X-MS-Office365-Filtering-Correlation-Id: 144293e3-71f5-4caa-f5e9-08ded5c6ec3f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|6133799003|18002099003|22082099003|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: oSNMvLlSy9ruM/F+89Wf5PY51KmSO0Ibq8Ztq6csoGoPbYr3rsDfe/MuiXm6ocbtTTgknnQ1kOJfE2/fea36lP3BFvJzTZ8osVNdvTQ1NeHXWHJBtjdKdDTl6XwW8E4tyjdO64ozI6ldx+M0/XTLCZz7tb53jNJ+j57FLabek0JO+PyHzuiEGnUY5M/O/PmXnLSuF8WRxqBTP1Rc0UHIJwsM+zhVT56XX2c7SDRKtIUpCplN2rqmQ1tAfZx+r9+7ME3UIIRHvwLuC9fGK3+CwpB++pj8p4ZFwWJ2mNzocaY+AA3QqQlV+/dDIXt44Rtnwrv7qHuotWM8J2Mc60FKQQkjXKPfdBfXLXzFt0xNtcLr/J4dlUb9isOOg+Duneb56d9yzY6jXCR9ago+JZfUL47O318EiRHCOKANdfkT4bGb9Inci2j9rke6b1sPkA4JEHruU2U3JOdH1DEHsH0OzrK2zhDwP9XoeEzc11dik2FrCd6CQNxWw12U0O5OQrjXlNJh1JI2D05NmeybVlXA+hfYBHSwOGGLguyROdxGL22DESjkWTFkfN8mmzczvRrYEOe21JiUAWDowllwFDJRAL50zJdv+ZZ2LZD0XQZ25JgAC/ZvEWQoRwIecxEtWovjOkSFAaLezLqks5wu9V/JMgnGLq4iz+5w8IjudD5hq3c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(6133799003)(18002099003)(22082099003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YU1KYjJ1Unc4RlcwK1BDN0ZoZk5FMTJQdmJuRllTNjJySDcxVXBTVWxlNHA4?=
 =?utf-8?B?Qm5kL0JiOG5UZjY4UWVPdVV3c0s2bUlERTBPdEFvK3FhcitadXJsUnQwR2Ew?=
 =?utf-8?B?dE1RWG5EV0RabW1DRmZyRkI1RVhPS2txaHZiZmpPM2s1VGlsU3NLWm9iOXdl?=
 =?utf-8?B?OGlQcDlKUDZ0YlE2aWlpUU1DemZqZ25BLzdpY0QrUzZUVjQvbkxrUmhiSkRs?=
 =?utf-8?B?cE9ScDlLWnhOdEhsd0RmL1R6WElPcnBXRDVDYzNhcmpoenp5THBmRU9GVk5m?=
 =?utf-8?B?OGltYmRQcStIcy83TUVLQk9xRzhhYS85c09OclFQL3BqUW1IdnAyRUI0ZDFz?=
 =?utf-8?B?SWdQOFl1SytYdjJySXFBdENiRXFmMEpobE9JSzNwRHR1SW1uelVaSVpoV1VC?=
 =?utf-8?B?bzF0dlJpMVFTNjNvRE5lenJVV0p2R0VPMEI5Q3JZdzYyZ0Ixb2loNVkwOUdH?=
 =?utf-8?B?R0RTeFh0OElERnVwTExzaWRXaFFKbUgxdUVvUXl2ZVhuaVpETlpwWXFrUXZ1?=
 =?utf-8?B?ZUhZQTZmWm82VHV4cDFTN0VJdlVUNU5zQ2pmKzRwL3kwR0tUK2lBZTBOSDR1?=
 =?utf-8?B?WkRXZVh2R3BuTkZ5WnB0bFBVb0hkdVRXRHZ3aklQYjk0bTArbkg5dk9Cb21L?=
 =?utf-8?B?bHcwWDhWandNbFBwV2RDZTNseGNWZXhXUFJFWEVraFRYU3FYV1QyQWhPQVR1?=
 =?utf-8?B?Ky9MV3F4R2hDY0FiQzVVelNYNzZSOUs5aHlSWFVZZXQrRDc5Y3BNUmJldktE?=
 =?utf-8?B?TlBndXQ3RUxVREdXTUpqVUhnbzA1T0xrRnhjZU9QclBuc1dpM21CUTJBdFpy?=
 =?utf-8?B?RTNBRnhaeDVxNFV2THdDejlnNVFTYmkzS0pFU1pJSzJEazFVbzV1dU5lZVBY?=
 =?utf-8?B?MHhuc3gyUG5OWGRseGM2RmNVcXQ2TTVvN2hSMEdac3ZSWW5CaHdod2kxSitz?=
 =?utf-8?B?UE5xTGgvY1FTbmJIRjVvSGVMRXA0SFUwTXZXVkZ1SGNVamNYREQwWGlKYisx?=
 =?utf-8?B?VnFjZzRIb2JjM2FLajJDT1RDKzcwNEZZcklNcWtXRTFocmFBWVRWYXVQdkZ2?=
 =?utf-8?B?QjZGZmQyNzdmOUROREhta0NqN3Nsdi9NS0k1ekY0VVhiQ2s2SURmTXJKQXZh?=
 =?utf-8?B?S3VoZVh5aW1tZ0Y1V1NiV0twNEh0VHVnZUplSW9vQjlGOTRqTmlaVkhJOXVr?=
 =?utf-8?B?RXBTQTJyRkdCVmdSeFFwb0xZYXJrbklxQ3R5K3hRQ1NNTVJDVThkRy9OR0M1?=
 =?utf-8?B?QmRvWVhyNW1XVTRKT1BRLzVEejVYYVZGRXVPTHJOWTFabUVNcWMrVHdTOWNZ?=
 =?utf-8?B?QUpBMlozY3pRL0dXT0cvREhVUXFEWkZBK0NPNVEwNkV5ZzBXcjR0OWZLQy9y?=
 =?utf-8?B?YnVsbmFqQzU1QktDMVI4aFZicWdzdlVCOEJ2NDYramhLZzRpQmQ5R0RKemd3?=
 =?utf-8?B?a1k4ZmxMeTZUR2IzdUovWDFhNFdYWS83SDJsMzlsQTFZOW4rU0p0Z1FYV1hv?=
 =?utf-8?B?d2lmOXgxZVljb21MYU1vTUNvUjltNldXWVdmYTZ4d0ZoK2lURiswVE92VTBV?=
 =?utf-8?B?dmhrZGsyakxMSEJxK0FjZEJCTW41OFdwa1NlS1p3NVB0Mis1Z1ErYnUwM2RV?=
 =?utf-8?B?cDJxd2h6UGpkZmJibXZiRGM1RE9WMWNkREJmQ3IrRy9GQmsvZ2JOM2haTFFL?=
 =?utf-8?B?N0JsQmJvaUdnblBCeUpYQ0NPZGY3WFpVQ3ZmYXcyTDFmOHRtSkZ5VDRkdmtC?=
 =?utf-8?B?Mm52aHNSYllvTTFKbDJjYXdaZldpblM0ZUtYMlF6cGVtY2JpOEpZbjVBb1la?=
 =?utf-8?B?VVppa3ZzcnJLMG9KcDRVWUE1bEdUOVZEREx3UCtNZWR0ci9ya09rdDM1UEdu?=
 =?utf-8?B?M3NlY0t1cURhMHZBYWprcmxMeFFIWUNrL2twMnFWZElLS0VXbml0cGt6TXQy?=
 =?utf-8?B?NVdQdWM1U0lXeEx6Mkt4Vkc1dTVLeDU4VitkdWtHS0pJbnBxcjFKVTh1YVNI?=
 =?utf-8?B?cmFKellsNEl1T2plQ1JDYzZsTDJMaHpYZUErcGw2THRxbXZaN1UyRnp1L2cw?=
 =?utf-8?B?OFZkT1hGM0UycXZNY1RjQU1IWUFUQTZ5Yld6UUVmWWZwaFU5b3JFRHNQT0tk?=
 =?utf-8?B?VStJYkRnSlpSUjNPSFRFTW1BZ081MU03NVptZm5pR0lFZEV1b0QrcnJTMWNi?=
 =?utf-8?B?Y2tISDZ3d3g0T1N5TU5BMWF1Z3VyeDRHWWJabGk5SVhFeXNCTlY1R2x3QXYy?=
 =?utf-8?B?Tzd6ZVRrN2RUUi9sWTlJb2paTFZPc3dJNDk5WDY4Ui9nWHhvcTFUeTJJRHpt?=
 =?utf-8?B?OUt1bk9XaEQ3V3VQQU4yWG5UQ2pWLzdlTnp0ak94R25BTit4aFRaWGFsOWFK?=
 =?utf-8?Q?D5NZrTcDb3v7+oxc=3D?=
X-Exchange-RoutingPolicyChecked: JH43wMjOcqMuOc0E/8EqQKJdOEmXPDxWVH0hHaSOS1M04Ga0fDd+2nkISIGEAaZSsldBcIyohyurT+/EOSwpPxzpwMa6bScJx6Lwj+XdGionKbEJGl1g32trra8QNEFbsiyoY7qRTonrkYiq7/ikTGMfoX5KTmZjOchqpLpZF6d09EkONIHVYtFlMZ08GgnO2rELvoA7qHDUZ+vIPzS4YwgpdTyOHm64mYdIUFjfgWgvoQXyXw3wG09VjjbTQjySKS3H8O1P5micGkFdnfT3i/n2AQxmEHPxMfEmoSjA6YxBO8cFxs6H1nh4wPnUK4oEo+VcI0zlNysAYLickwe5Iw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 144293e3-71f5-4caa-f5e9-08ded5c6ec3f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 10:12:27.8812 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M18E4kFKfED9lwiwDKeawFEE8uNh6KU2aB42IudEPR5AxozBEWBZGkngIUpkI8qLLxdeyVxSctLNB9h2zoa+gc/DF7ogAOwq8Uiix+2cXWs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6828
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3BC176D8BEA

Hi Robin,

thanks for looking at this.

On 2026-06-25 at 15:29:10 +0100, Robin Murphy wrote:
> On 25/06/2026 2:43 pm, Krzysztof Karas wrote:
> > Currently, if iommu maps fewer bytes than requested (iova_len),
> > it proceeds to free the iova, but never tries to unmap already
> > touched bytes. This behavior may cause memory hogging down the
> > line.
> 
> Huh? iommu_map_sg() has always unmapped internally upon any error - can you
> clarify how you've seen it returning a short mapping in a non-error case?
Yes. I applied some debug logging:

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 381b60d9e7ce..f166cd31d68f 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -1515,8 +1515,10 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
         * implementation - it knows better than we do.
         */
        ret = iommu_map_sg(domain, iova, sg, nents, prot, GFP_ATOMIC);
-       if (ret < 0 || ret < iova_len)
+       if (ret < 0 || ret < iova_len) {
+               printk("%s: ret = %zd, iova_len = %lu\n", __func__, ret, iova_len);
                goto out_free_iova;
+       }
 
        return __finalise_sg(dev, sg, nents, iova);
 
@@ -1525,8 +1527,10 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
 out_restore_sg:
        __invalidate_sg(sg, nents);
 out:
-       if (ret != -ENOMEM && ret != -EREMOTEIO)
+       if (ret != -ENOMEM && ret != -EREMOTEIO) {
+               printk("%s: returning -EINVAL\n", __func__);
                return -EINVAL;
+       }
        return ret;
 }
 
diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index d1a9e713d3a0..59163ad0bce3 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -2900,6 +2900,7 @@ ssize_t iommu_map_sg(struct iommu_domain *domain, unsigned long iova,
        return mapped;
 
 out_err:
+       printk("%s: Calling iommu_unmap()\n", __func__);
        /* undo mappings already done */
        iommu_unmap(domain, iova, mapped);


and ran "gem_exec_big" with subtest "single" from igt-gpu-tools
(./igt-gpu-tools/build/tests/gem_exec_big --run-subtest single)
on a Tiger Lake platform. I observed:

[   77.494513] [IGT] gem_exec_big: executing
[   77.513162] [IGT] gem_exec_big: starting subtest single
[   77.513739] gem_exec_big (2863): drop_caches: 4
[   79.912199] i915 0000:00:02.0: Using 39-bit DMA addresses
[   79.915571] iommu_dma_map_sg: ret = 7138717696, iova_len = 20023619584   <<===
[   79.915581] iommu_dma_map_sg: returning -EINVAL
[   82.680323] [IGT] gem_exec_big: finished subtest single, SUCCESS
[   82.682692] [IGT] gem_exec_big: exiting, ret=0

on a first test execution and then subsequent runs would result
DMA remap failures:

[ 1053.077620] [IGT] gem_exec_big: executing
[ 1053.086272] [IGT] gem_exec_big: starting subtest single
[ 1055.220807] iommu_dma_map_sg: ret = 10581184512, iova_len = 19171119104
[ 1055.220821] iommu_dma_map_sg: returning -EINVAL
[ 1055.343891] iommu_map_sg: Calling iommu_unmap()
[ 1055.343895] iommu_dma_map_sg: ret = -98, iova_len = 15817768960
[ 1055.356710] iommu_dma_map_sg: returning -EINVAL
[ 1055.356807] i915 0000:00:02.0: Failed to DMA remap 3861760 pages
[ 1055.509975] iommu_map_sg: Calling iommu_unmap()
[ 1055.509981] iommu_dma_map_sg: ret = -98, iova_len = 19171119104
[ 1055.509990] iommu_dma_map_sg: returning -EINVAL
[ 1055.636194] iommu_map_sg: Calling iommu_unmap()
[ 1055.636198] iommu_dma_map_sg: ret = -98, iova_len = 15817768960
[ 1055.648844] iommu_dma_map_sg: returning -EINVAL
[ 1055.648955] i915 0000:00:02.0: Failed to DMA remap 3861760 pages
[ 1055.800664] iommu_map_sg: Calling iommu_unmap()
[ 1055.800670] iommu_dma_map_sg: ret = -98, iova_len = 19171119104
[ 1055.800679] iommu_dma_map_sg: returning -EINVAL
[ 1055.924869] iommu_map_sg: Calling iommu_unmap()
[ 1055.924873] iommu_dma_map_sg: ret = -98, iova_len = 15817768960
[ 1055.937634] iommu_dma_map_sg: returning -EINVAL
[ 1055.937729] i915 0000:00:02.0: Failed to DMA remap 3861760 pages
[ 1056.042152] [IGT] gem_exec_big: finished subtest single, FAIL
[ 1056.042736] [IGT] gem_exec_big: exiting, ret=98

which would cause the test to fail. Rebooting the machine is the
only way I could get the test to pass again.

> 
> Thanks,
> Robin.
> 
> > Correct that by unmapping before exiting.
> > 
> > Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> > ---
> >   drivers/iommu/dma-iommu.c | 10 ++++++++--
> >   1 file changed, 8 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> > index 381b60d9e7ce..c4c058ba07ef 100644
> > --- a/drivers/iommu/dma-iommu.c
> > +++ b/drivers/iommu/dma-iommu.c
> > @@ -1515,8 +1515,14 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
> >   	 * implementation - it knows better than we do.
> >   	 */
> >   	ret = iommu_map_sg(domain, iova, sg, nents, prot, GFP_ATOMIC);
> > -	if (ret < 0 || ret < iova_len)
> > +	if (ret < 0 || ret < iova_len) {
> > +		if (ret > 0) {
> > +			/* Unmap partially mapped bytes before freeing IOVA */
> > +			if (iommu_unmap(domain, iova, ret) != ret)
> > +				ret = -EIO;
> > +		}
> >   		goto out_free_iova;
> > +	}
> >   	return __finalise_sg(dev, sg, nents, iova);
> > @@ -1525,7 +1531,7 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
> >   out_restore_sg:
> >   	__invalidate_sg(sg, nents);
> >   out:
> > -	if (ret != -ENOMEM && ret != -EREMOTEIO)
> > +	if (ret != -ENOMEM && ret != -EREMOTEIO && ret != -EIO)
> >   		return -EINVAL;
> >   	return ret;
> >   }
> 

-- 
Best Regards,
Krzysztof
