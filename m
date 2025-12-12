Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F3ACB8BC2
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 12:44:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17A2F10E722;
	Fri, 12 Dec 2025 11:44:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FScUoS8J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAF0F10E721;
 Fri, 12 Dec 2025 11:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765539842; x=1797075842;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Njb7n7kLrokHLgjqcvymSD5g5ASChVmD8AALqhxc2is=;
 b=FScUoS8JVlMYLnZSw8t5kdh8KBOWpO4A5xGqPjQw5OjbOeJPh1qK9ZJV
 /qBHIJpa4MWZrLdPVlPfkt7lXelSff2cIi+A+jF/cV1z0Zcx9pLqlOwyy
 5VBMkRNcwRlmwtO0aH8WVYvFFmsktY9Qle4hIsZQ8/xWmCos/LRj9fvBi
 LhUAwO7SGV1FDH9G45JD8E1nVp3qesuLU6ENvgE6urIpj/R/i2KWFqSwT
 ZcNLAQqxEL96L3CTKQaHvPFAkHJyZ9YXSYjYn580PSaECsGRB9JT3SRXO
 7m0by+MNnG6RYnNQeBHMNAh25pnvF1pPC1klFJ/pPK56+RpnUXcJExVmh g==;
X-CSE-ConnectionGUID: Pi9oXFerRUeW1Kxfnn/+1w==
X-CSE-MsgGUID: /NWzwCRMQsGJ1IEQSrHejA==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="90188522"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="90188522"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 03:43:36 -0800
X-CSE-ConnectionGUID: ZMQfy04rS2WbXipmX9DuTg==
X-CSE-MsgGUID: wHnq0YySRUSlQ0a7AKWPAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="196823964"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 03:43:36 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 03:43:35 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 03:43:35 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.42) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 03:43:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OScP9BkOBQ+HY8Re9r7mrnlcQissJN9tqgj9BvFoCgGz1erNgQU6ObyLABxaSvefhCR/pE/s2mSvpDeHSF5eJ4Mo8u0R6XbQMqAYB3aoxtsuAfasw7il+bwKqRIhPXEFUmMDx5tJqJVL+l1Zjy5VxT4FIKBeEIFbqYBuzTXQPsPH+WiFBkDJ22t4zAzYqhmLFCk6dXeGjwfNnBFov11F47aUgtj3llcE+p9MSXcHxxUOJkrz3cWObaSmZp+VW+0cOcgmMia15imQlr9AVjOB2eG5E4igIhyIwugpYrgKmx1mLkk2U07JdctfR1ioP43V5NJjpi2f0TD8vlbJxTwGRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Njb7n7kLrokHLgjqcvymSD5g5ASChVmD8AALqhxc2is=;
 b=TR6EtiUfYXqKELQXgdsnFeEPkHLPOUuikw/68KazRJNTCB84HV3+dy2+Qm76dBEt4EGu+9FXseU1iRYsWLwspTGw8NEDfFm4yLF4Iw7jgEepPwuXzr13YPSfM2rnxM5pXAsi6Ak+0hHzlssgf82CE+3iiqAOSYcPK0YLT8H2um+V2WrJijBVps1Yn2aC0LY631e3/fdwLkJsH9Lrpq0kmyGH2a0cb3VfH3TNpxb6IwYv5wn44khly0/OI3+sfFnQq1Cba0Brof2YW7GTUXuhz0rjG9xBQHny+7udjYY7peyu430RXrnSOw1WQgcDgAxBRZMIBBkddKtFW4WTlqIMGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by BY1PR11MB8005.namprd11.prod.outlook.com (2603:10b6:a03:523::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.11; Fri, 12 Dec
 2025 11:43:33 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 11:43:33 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 27/50] drm/i915/dp: Add intel_dp_mode_valid_with_dsc()
Thread-Topic: [PATCH 27/50] drm/i915/dp: Add intel_dp_mode_valid_with_dsc()
Thread-Index: AQHcX8vXiPKDT6I8cU2Q60S9Psny4rUd+XyA
Date: Fri, 12 Dec 2025 11:43:33 +0000
Message-ID: <da52e80fa6111323202b0ad465c6e4233b071050.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-28-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-28-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|BY1PR11MB8005:EE_
x-ms-office365-filtering-correlation-id: 52929182-a3d5-468e-258e-08de3973add5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?VnBsSndYRzRsL2c3VUdnd2t4MEgwQ1dFM3Y0dHg0RDFmcEJONnRzVXhZNnRu?=
 =?utf-8?B?dnQxaFRxbmJIcS9UTkpjUHFXbThFYUFwTXd0cEZpblFDRUN3blFzNGpKVTlS?=
 =?utf-8?B?TXJiZ1htWXFkNVBkQTBja3VCUjJXL3Vhd2IxQU5malZWRElaaWpUSlVrYlMx?=
 =?utf-8?B?SURCYk1obnlQai9CZjJwdTlaUEJJWlVDclBQZDFJKzVQZ2pQbEEvRnBFeE5N?=
 =?utf-8?B?N0ZiV2QxWTNYbFd0OEVNVUNQMXd4dHUzZ1hNSE1reTcwQ0h0ZkFRc1BGd2Ra?=
 =?utf-8?B?WnJzN3hxRDR1bytwU3FJQlExbTBlRnl0U0pXOGVEZDg4bDNvbHNFWWFOWDlG?=
 =?utf-8?B?NkZ0d3p2eWxIclJKVFU1Zzc3c09OM3FuTURqV215Rk9HeURRV3VSUHpmU3lN?=
 =?utf-8?B?OEVOMjlZTU5kT3NHWXBraGVJQjh6ZmZYaGd0WDhOeldmaTJBdmJaTml4MnN3?=
 =?utf-8?B?ZjBmOGJIUmlMV0p4cTJiM3NCLzE0QWl2RDlXMzBESm11ekpvbzlKWCtja3NG?=
 =?utf-8?B?Y2FDVGUwM0hqL1dXSUlzcUs0bmtGT0NlNWxHaWlrR255NlZOTWVEOFNvdXRV?=
 =?utf-8?B?eEZjTE1EUksrWXZSVGphQlQ0bGJOUEUvcXNLNkVYdUdsMUxZWm5ONzJkZEVm?=
 =?utf-8?B?REV6L1dKbE81NmIweFJmVnJZTmxJblpxbDFEQXFxdnRCREp2eW1leFNDRVN4?=
 =?utf-8?B?MHFua25aYWtQV2ZFY21ybkNWcFpqZ3ZVY3ZxU04xelVReTZSTm9XcTlDK0pa?=
 =?utf-8?B?cEpZVXlWTUtTOTZzNEkydUJDeGdZTXp5eWtKVjduelBZWldtZnFmd2RCSnhE?=
 =?utf-8?B?dmt2S2VmdXQycHFQUmVETEc2cFdScjkzSU5Jdk9WQmZGblpLbjRXSWJMWmly?=
 =?utf-8?B?MVRtT01FeUduRVM4QnFHbzY1ajZyOCtTVTRkejY4MHNlTys2VXpBamJLcWIy?=
 =?utf-8?B?QU5LU1Uzb09zRzZaZS9QRXlqem1NK1Vzckk5bE5KcUo3Q0pwNzVyNUlGR3BZ?=
 =?utf-8?B?MnpaYmhiQ2M5eUR2QjJITUlFT1ZXM2FYNlc3NkRIWnRTV3Fza0F5Ujl5cGFr?=
 =?utf-8?B?WHIwNW5ydFYyL0JlNVBTbURRbGIyeTRZWWVWQUtBTEVMdmhkd3pHZFNvVERN?=
 =?utf-8?B?cU9OM3RNWjRRYVZnM3pMR3M2TmF0bjZKa2Q4WWdpOWFQVXVMQ09JWUlUUlZV?=
 =?utf-8?B?RS95dVJKVkFyL3lxcFVaU1ozem9vMVJETkhncVpPSnRrVmZNRWNyRXd0cVZR?=
 =?utf-8?B?cEhVaUJXR0RNVHV4cUVDbi9zQ2RaM1oyNVJRSWtqME5UK0x3TkJ4ZXd1SEdP?=
 =?utf-8?B?M25uV0ZPM25ydW1SZUtoM2NaYWJoM0dHd0t6bzh2Sk1PcDdzbUtGN1BFb3k5?=
 =?utf-8?B?aW9kdkZaQzhtUTFtN1RMZTZIdFQwc3dUeWw0QlVVVVlpOWROU2dkOG1wQWRl?=
 =?utf-8?B?eGtlVEVJVmRqQms3bk0vSWMzdlJ0eVVOVkdXemRIUk9wZi9sQjMrdHk2QWhr?=
 =?utf-8?B?Wk9HY09nQjdrUmE3dVU0WTlOZHl1b3ExdWRvbS9GaEJ5V1d4REJZZ2hhUXRW?=
 =?utf-8?B?bVlzc0xlUUQwYUFiSDl0OFBLV2t6bWdkQzBCcXRYVkhpdEFsWGRPNlk5Z2M2?=
 =?utf-8?B?Mm5DV21DV0I4YzQvNzVIdGpMR3hYc1E2Y0dyOHBkZXZaaWFoQ0ZTbjhYTEVi?=
 =?utf-8?B?bU1DUHFYK2o2U0xHK3hhWU1VUkJwaE5GWXVnRG5VSWcyMG1Tb2pTYVBJZ1cr?=
 =?utf-8?B?ZFhwTW13T3NmRnpRRE8rdEl0Q2lvd3pad3BpK2JLZkpVVVY1b2xneVZNbjY2?=
 =?utf-8?B?VFpLVmRzNEIrN3BrMlI0ck90a0FBU1V6WWFSSFJ0T2lYR1VjN3pMQkVneW9i?=
 =?utf-8?B?cVdBMjFROEFrZzNBYkJuRUR5dEhnV0R4OWFYaWlXbFV4SWU1ZzJ6QkkwMmI4?=
 =?utf-8?B?ZXRZeGJuS1IxQlZEYzNOMGsxbmk4UVZnYTBxOXhOMkU1N0liamJtQUhtS1Nq?=
 =?utf-8?B?aUlVT3NRZHJKeG0wSDArMG1QU0FKWXFVTXNJRUlFL0pZYWN5S0FFMCtZaDda?=
 =?utf-8?Q?w1xYhD?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NmpIS2NWWnJ4T1grSU9EdzNySXBzTEpqeDhxUnBaNWl3U3FVc256a2txeXg4?=
 =?utf-8?B?ZzBDTWRUVVFzSGpueUZhT3FqNUxqTVo4TU1Rb2xMZmFnOGd4bjhSbVI5S1Ft?=
 =?utf-8?B?SW15WnowZ1pUN0h0cUN5UHFISUhtcGhrOXRNeS95RzZhKzNOdjNCNXZEckMx?=
 =?utf-8?B?ZTQyUlZrS3YrbzZtL01pV0JwM09Eb2dqY2RXaVlrOUZHQ0t0bVV2S05NeXRE?=
 =?utf-8?B?L1k4WkJqOHlKeld1NkVPcWJVdklDTXZRWFYyZmsyWVo2NUw3eWczWHkzUWZi?=
 =?utf-8?B?Y05zcStpeGg4U0JYYk1JR1hpckVCR2tNOVpPaWVhRXhGZnVpM3FzTlpSMHNo?=
 =?utf-8?B?MlhLMzJ4NSs5MFFBK0ZjaERtUFFLUkdUc1NrNG1OVnlWSEZrSU9HZkZRd0lk?=
 =?utf-8?B?WW53RXlWMlU3RWRReG9raW1zVXpFQWhPR2M5Mjh3ckEydTBhRU03bE10Mng2?=
 =?utf-8?B?ZWRYVUxZZEk2QjAyK2pWdktvUmFaTDc5MERrRWRSVmVIZS9xVEFLeWJwaTkx?=
 =?utf-8?B?akI2dEJZZy9Tc3p0TW9SZ1l4S3RtU1NuNkxLZ3lqSUJtalNXNi9vUmh1ZU9s?=
 =?utf-8?B?UGZ4WjVHcllaUXpPMCsyTjgydDliZUxXdGlhSTVaRk82cUk3NWQweElydVVj?=
 =?utf-8?B?Zm5sUXlkNlFnbHVwVU5QTWgvaWdYdlo5QnZCb09DNkQzcG56bnJlRGdQcVNC?=
 =?utf-8?B?MzBabldjVTlRRmFDVTAwMTdZdzEwMWc1UUd6NHNtbGVXYWxNMldxcWRPL3dp?=
 =?utf-8?B?QjJtNGFSSmFJUFg2K0NXckFab1oxTnpTQWhxcStOeWRScXovWlFNRGIzSE5O?=
 =?utf-8?B?N1BvWUEwNGV6MjBpNjhnNFpPa1pXSFZ3dkw0QWJLQUtvNkIvczVYSzZXOWJo?=
 =?utf-8?B?TGxvbE5LK3dEYVVTMHRSNXdPb1FsSFR2c09vSnAyZitwR2tRazBzZDhGeFFs?=
 =?utf-8?B?OXc4dW1JT080SlhpNXJLU3JvaEh1SjVzRXBWMkVWVTZTY0hvWVVuWGVOYmdU?=
 =?utf-8?B?aWdzS05NZlMrQmJITUkwWUZSSzErUFlBYTZqOHpaL21ua3U5UWtKQzVmbkNW?=
 =?utf-8?B?M28vdXRxamszanlqYXpJRHFYRTE5VlFRZ1pIZ1V6YWRjYzc0WUdXb0U2dTZi?=
 =?utf-8?B?SVozMFF3K2Z0bEUwU2RtMWE4ZGNqUUNtWUltQmg1OHpOb3dRYUNTR3hCbE81?=
 =?utf-8?B?MjZQbnNkZDlKcjRBUE50Wmg0M3JyU2dMWVg5dmFvenJiQ2lQKzVDdXFKbFBO?=
 =?utf-8?B?d1pnNG1SY2JJdTFLMjdGdVRndDQrMWRJZjZJaEZtMk5sZHVkNTFwZkpBTlEz?=
 =?utf-8?B?VUNnYkptOXNsbVh4ZVozeGtuSllwNlY2a081N0JMcHpCL0loUmFBOStrTms0?=
 =?utf-8?B?UGlqVC9ZV0Jrekl1Z0dPS2dDS1FaRDFOaHZyMStYL3dOenVXL0FMbGpxTkhP?=
 =?utf-8?B?dURZbmdIUGpGV2Y3RWh2VzQydGVXSGpwVUZFR3Q0N1pHZzduajlqS0VRZGdR?=
 =?utf-8?B?eHZ4bTdtQUd5eGxmUEozUDlDWjJITkdLMkFoVXJIMGlUZGpsT1V5c3puOUxv?=
 =?utf-8?B?MEQ0eGRVTmpENFkwOWlPV0s4TDB5a0ZHc1l2bGF3Y2t2Nnp4RC9YVkZoRjAw?=
 =?utf-8?B?bmxZd3JKbFBTUzNpWnJhTEZVMEZoVkFKbE1kS0U0eWxDcmJITUI4NXM1elR4?=
 =?utf-8?B?QjlQNTM1c3pEYlJjSEtZVm1XSytoanFwTG1FMlVIUTdkb2NDWThxdnVzYnFO?=
 =?utf-8?B?WmxxQnFHY0R5Tk03cWxZcGUxMWlyc0lzankwdW00U0tMbEMyM3RhTVpLa3hi?=
 =?utf-8?B?YlVxZnJyK0QwaDFBZzlEaVRDOEgrWGlXSiszOGVBRkNRMGpHWmpCb3BkTzdJ?=
 =?utf-8?B?UTBCVSsvNzMvZ3ZPS2dRdklmZUlLZUFpRSt6WUMrT2c2dTNpVi9PU3FhdDNV?=
 =?utf-8?B?UFV3T2dMdFpnWXZMU1VOTTBwUHlEM3oyU09KMWh1WlFVZUQ3SS9qNGZlbVFZ?=
 =?utf-8?B?NlRoN0s4UzVvNVdjTkZHMVA0NWhvSksrL0tVbE9DSkhBVklRZjU2eHMzdXNr?=
 =?utf-8?B?UDVTczlHNUJkamlmczc0cnBLMkNlbEN4WDJ0QnZaREFJZ2dtRlJXZDAyNVhC?=
 =?utf-8?B?RjM5SnF5ejc1Wm8rU3ZLYWZwamc1bXVxSnBMQjZiS1BWQU1nQkFHeXZicEdz?=
 =?utf-8?Q?XeFAv32BgIkiQnCAM5G7bWQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <454A02E53262A94DB7BF2DD5C2965894@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52929182-a3d5-468e-258e-08de3973add5
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 11:43:33.3274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FF2ad0hQk4WbqlMszS/Rwab59vd4XfH03gsEtvCJnGoQljVHB7/RtLrMxxywmKiEvo91r7jtfzJTIwP/WDWr0eL5encCKKDFJiL0df7JyIc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8005
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEFk
ZCBpbnRlbF9kcF9tb2RlX3ZhbGlkX3dpdGhfZHNjKCkgYW5kIGNhbGwgdGhpcyBmb3IgYW4gU1NU
L01TVCBtb2RlDQo+IHZhbGlkYXRpb24gdG8gcHJlcGFyZSBmb3IgYSBmb2xsb3ctdXAgY2hhbmdl
IHVzaW5nIGEgd2F5IHRvIHZlcmlmeQ0KPiB0aGUNCj4gbW9kZSdzIHJlcXVpcmVkIEJXIHRoZSBz
YW1lIHdheSB0aGlzIGlzIGRvbmUgZWxzZXdoZXJlIGR1cmluZyBzdGF0ZQ0KPiBjb21wdXRhdGlv
biAod2hpY2ggaW4gdHVybiBkZXBlbmRzIG9uIHRoZSBtb2RlJ3MgZWZmZWN0aXZlIGRhdGEgcmF0
ZQ0KPiB3aXRoIHRoZSBjb3JyZXNwb25kaW5nIEJXIG92ZXJoZWFkKS4NCj4gDQo+IFNpZ25lZC1v
ZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jwqDCoMKgwqAgfCA1NyArKysrKysrKysr
KysrKystLS0tDQo+IC0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5owqDCoMKgwqAgfMKgIDcgKysrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9tc3QuYyB8IDI5ICsrKystLS0tLS0tDQo+IMKgMyBmaWxlcyBjaGFuZ2VkLCA1NyBp
bnNlcnRpb25zKCspLCAzNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggOWRlYjk5ZWRhODgxMy4uYjQwZWRmNGZlYmNi
NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAt
MTU3OSwyNCArMTU3OSwyMCBAQCBpbnRlbF9kcF9tb2RlX3ZhbGlkKHN0cnVjdCBkcm1fY29ubmVj
dG9yDQo+ICpfY29ubmVjdG9yLA0KPiDCoAkJCWRzY19zbGljZV9jb3VudCA9DQo+IMKgCQkJCWRy
bV9kcF9kc2Nfc2lua19tYXhfc2xpY2VfY291bnQoY29ubg0KPiBlY3Rvci0+ZHAuZHNjX2RwY2Qs
DQo+IMKgCQkJCQkJCQl0cnVlDQo+ICk7DQo+ICsJCQlkc2MgPSBkc2NfbWF4X2NvbXByZXNzZWRf
YnBwICYmDQo+IGRzY19zbGljZV9jb3VudDsNCj4gwqAJCX0gZWxzZSBpZiAoZHJtX2RwX3Npbmtf
c3VwcG9ydHNfZmVjKGNvbm5lY3Rvci0NCj4gPmRwLmZlY19jYXBhYmlsaXR5KSkgew0KPiAtCQkJ
ZHNjX21heF9jb21wcmVzc2VkX2JwcCA9DQo+IC0NCj4gCQkJCWludGVsX2RwX2RzY19nZXRfbWF4
X2NvbXByZXNzZWRfYnBwKGRpc3BsYXksDQo+IC0JCQkJCQkJCcKgwqDCoA0KPiBtYXhfbGlua19j
bG9jaywNCj4gLQkJCQkJCQkJwqDCoMKgDQo+IG1heF9sYW5lcywNCj4gLQkJCQkJCQkJwqDCoMKg
DQo+IHRhcmdldF9jbG9jaywNCj4gLQkJCQkJCQkJwqDCoMKgDQo+IG1vZGUtPmhkaXNwbGF5LA0K
PiAtCQkJCQkJCQnCoMKgwqANCj4gbnVtX2pvaW5lZF9waXBlcywNCj4gLQkJCQkJCQkJwqDCoMKg
DQo+IG91dHB1dF9mb3JtYXQsDQo+IC0JCQkJCQkJCcKgwqDCoA0KPiBwaXBlX2JwcCwgNjQpOw0K
PiAtCQkJZHNjX3NsaWNlX2NvdW50ID0NCj4gLQ0KPiAJCQkJaW50ZWxfZHBfZHNjX2dldF9zbGlj
ZV9jb3VudChjb25uZWN0b3IsDQo+IC0JCQkJCQkJwqDCoMKgwqANCj4gdGFyZ2V0X2Nsb2NrLA0K
PiAtCQkJCQkJCcKgwqDCoMKgIG1vZGUtDQo+ID5oZGlzcGxheSwNCj4gLQkJCQkJCQnCoMKgwqDC
oA0KPiBudW1fam9pbmVkX3BpcGVzKTsNCj4gKwkJCXVuc2lnbmVkIGxvbmcgYndfb3ZlcmhlYWRf
ZmxhZ3MgPSAwOw0KPiArDQo+ICsJCQlpZiAoIWRybV9kcF9pc191aGJyX3JhdGUobWF4X2xpbmtf
Y2xvY2spKQ0KPiArCQkJCWJ3X292ZXJoZWFkX2ZsYWdzIHw9DQo+IERSTV9EUF9CV19PVkVSSEVB
RF9GRUM7DQo+ICsNCj4gKwkJCWRzYyA9DQo+IGludGVsX2RwX21vZGVfdmFsaWRfd2l0aF9kc2Mo
Y29ubmVjdG9yLA0KPiArCQkJCQkJCcKgwqANCj4gbWF4X2xpbmtfY2xvY2ssIG1heF9sYW5lcywN
Cj4gKwkJCQkJCQnCoMKgDQo+IHRhcmdldF9jbG9jaywgbW9kZS0+aGRpc3BsYXksDQo+ICsJCQkJ
CQkJwqDCoA0KPiBudW1fam9pbmVkX3BpcGVzLA0KPiArCQkJCQkJCcKgwqANCj4gb3V0cHV0X2Zv
cm1hdCwgcGlwZV9icHAsDQo+ICsJCQkJCQkJwqDCoA0KPiBid19vdmVyaGVhZF9mbGFncyk7DQo+
IMKgCQl9DQo+IC0NCj4gLQkJZHNjID0gZHNjX21heF9jb21wcmVzc2VkX2JwcCAmJiBkc2Nfc2xp
Y2VfY291bnQ7DQo+IMKgCX0NCj4gwqANCj4gwqAJaWYgKGludGVsX2RwX2pvaW5lcl9uZWVkc19k
c2MoZGlzcGxheSwgbnVtX2pvaW5lZF9waXBlcykgJiYNCj4gIWRzYykNCj4gQEAgLTI3MDQsNiAr
MjcwMCwzNSBAQCBzdGF0aWMgaW50DQo+IGNvbXB1dGVfbWF4X2NvbXByZXNzZWRfYnBwX3gxNihz
dHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsDQo+IMKgCXJldHVybiBtYXhfbGlua19i
cHBfeDE2Ow0KPiDCoH0NCj4gwqANCj4gK2Jvb2wgaW50ZWxfZHBfbW9kZV92YWxpZF93aXRoX2Rz
YyhzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsDQo+ICsJCQkJwqAgaW50IGxpbmtf
Y2xvY2ssIGludCBsYW5lX2NvdW50LA0KPiArCQkJCcKgIGludCBtb2RlX2Nsb2NrLCBpbnQgbW9k
ZV9oZGlzcGxheSwNCj4gKwkJCQnCoCBpbnQgbnVtX2pvaW5lZF9waXBlcywNCj4gKwkJCQnCoCBl
bnVtIGludGVsX291dHB1dF9mb3JtYXQNCj4gb3V0cHV0X2Zvcm1hdCwNCj4gKwkJCQnCoCBpbnQg
cGlwZV9icHAsIHVuc2lnbmVkIGxvbmcNCj4gYndfb3ZlcmhlYWRfZmxhZ3MpDQoNCmJ3X292ZXJo
ZWFkX2ZsYWdzIGlzIG5vdCB1c2VkIGluIHRoaXMgcGF0Y2guIEJ1dCBJIHNlZSB0aGF0IHRoaXMg
aXMNCmJlaW5nIHVzZWQgaW4gdGhlIG5leHQgcGF0Y2guDQoNClJldmlld2VkLWJ5OiBWaW5vZCBH
b3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KPiArew0KPiAr
CXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjb25uZWN0
b3IpOw0KPiArCWludCBkc2NfbWF4X2NvbXByZXNzZWRfYnBwOw0KPiArCWludCBkc2Nfc2xpY2Vf
Y291bnQ7DQo+ICsNCj4gKwlkc2NfbWF4X2NvbXByZXNzZWRfYnBwID0NCj4gKwkJaW50ZWxfZHBf
ZHNjX2dldF9tYXhfY29tcHJlc3NlZF9icHAoZGlzcGxheSwNCj4gKwkJCQkJCcKgwqDCoCBsaW5r
X2Nsb2NrLA0KPiArCQkJCQkJwqDCoMKgIGxhbmVfY291bnQsDQo+ICsJCQkJCQnCoMKgwqAgbW9k
ZV9jbG9jaywNCj4gKwkJCQkJCcKgwqDCoCBtb2RlX2hkaXNwbGF5LA0KPiArCQkJCQkJwqDCoMKg
DQo+IG51bV9qb2luZWRfcGlwZXMsDQo+ICsJCQkJCQnCoMKgwqAgb3V0cHV0X2Zvcm1hdCwNCj4g
KwkJCQkJCcKgwqDCoCBwaXBlX2JwcCwgNjQpOw0KPiArCWRzY19zbGljZV9jb3VudCA9DQo+ICsJ
CWludGVsX2RwX2RzY19nZXRfc2xpY2VfY291bnQoY29ubmVjdG9yLA0KPiArCQkJCQnCoMKgwqDC
oCBtb2RlX2Nsb2NrLA0KPiArCQkJCQnCoMKgwqDCoCBtb2RlX2hkaXNwbGF5LA0KPiArCQkJCQnC
oMKgwqDCoCBudW1fam9pbmVkX3BpcGVzKTsNCj4gKw0KPiArCXJldHVybiBkc2NfbWF4X2NvbXBy
ZXNzZWRfYnBwICYmIGRzY19zbGljZV9jb3VudDsNCj4gK30NCj4gKw0KPiDCoC8qDQo+IMKgICog
Q2FsY3VsYXRlIHRoZSBvdXRwdXQgbGluayBtaW4sIG1heCBicHAgdmFsdWVzIGluIGxpbWl0cyBi
YXNlZCBvbg0KPiB0aGUgcGlwZSBicHANCj4gwqAgKiByYW5nZSwgY3J0Y19zdGF0ZSBhbmQgZHNj
IG1vZGUuIFJldHVybiB0cnVlIG9uIHN1Y2Nlc3MuDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmgNCj4gaW5kZXggNDg5YjhjOTQ1ZGEzOS4uMGVjN2JhZWM3YThlOCAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPiBAQCAtMTUw
LDYgKzE1MCwxMyBAQCB1MTYgaW50ZWxfZHBfZHNjX2dldF9tYXhfY29tcHJlc3NlZF9icHAoc3Ry
dWN0DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IMKgCQkJCQllbnVtIGludGVsX291dHB1
dF9mb3JtYXQNCj4gb3V0cHV0X2Zvcm1hdCwNCj4gwqAJCQkJCXUzMiBwaXBlX2JwcCwNCj4gwqAJ
CQkJCXUzMiB0aW1lc2xvdHMpOw0KPiArDQo+ICtib29sIGludGVsX2RwX21vZGVfdmFsaWRfd2l0
aF9kc2Moc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiArCQkJCcKgIGludCBs
aW5rX2Nsb2NrLCBpbnQgbGFuZV9jb3VudCwNCj4gKwkJCQnCoCBpbnQgbW9kZV9jbG9jaywgaW50
IG1vZGVfaGRpc3BsYXksDQo+ICsJCQkJwqAgaW50IG51bV9qb2luZWRfcGlwZXMsDQo+ICsJCQkJ
wqAgZW51bSBpbnRlbF9vdXRwdXRfZm9ybWF0DQo+IG91dHB1dF9mb3JtYXQsDQo+ICsJCQkJwqAg
aW50IHBpcGVfYnBwLCB1bnNpZ25lZCBsb25nDQo+IGJ3X292ZXJoZWFkX2ZsYWdzKTsNCj4gwqBi
b29sIGludGVsX2RwX2RzY192YWxpZF9jb21wcmVzc2VkX2JwcChzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwLA0KPiBpbnQgYnBwX3gxNik7DQo+IMKgdTggaW50ZWxfZHBfZHNjX2dldF9zbGljZV9j
b3VudChjb25zdCBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yDQo+ICpjb25uZWN0b3IsDQo+IMKgCQkJ
CWludCBtb2RlX2Nsb2NrLCBpbnQgbW9kZV9oZGlzcGxheSwNCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+IGluZGV4IDBkYjZlZDJkOTY2NGMuLmUz
Zjg2NzllOTUyNTIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbXN0LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9tc3QuYw0KPiBAQCAtMTQ2Miw4ICsxNDYyLDYgQEAgbXN0X2Nvbm5lY3Rvcl9tb2RlX3Zh
bGlkX2N0eChzdHJ1Y3QNCj4gZHJtX2Nvbm5lY3RvciAqX2Nvbm5lY3RvciwNCj4gwqAJCURSTV9E
UF9CV19PVkVSSEVBRF9NU1QgfA0KPiBEUk1fRFBfQldfT1ZFUkhFQURfU1NDX1JFRl9DTEs7DQo+
IMKgCWludCByZXQ7DQo+IMKgCWJvb2wgZHNjID0gZmFsc2U7DQo+IC0JdTE2IGRzY19tYXhfY29t
cHJlc3NlZF9icHAgPSAwOw0KPiAtCXU4IGRzY19zbGljZV9jb3VudCA9IDA7DQo+IMKgCWludCB0
YXJnZXRfY2xvY2sgPSBtb2RlLT5jbG9jazsNCj4gwqAJaW50IG51bV9qb2luZWRfcGlwZXM7DQo+
IMKgDQo+IEBAIC0xNTIyLDMxICsxNTIwLDIyIEBAIG1zdF9jb25uZWN0b3JfbW9kZV92YWxpZF9j
dHgoc3RydWN0DQo+IGRybV9jb25uZWN0b3IgKl9jb25uZWN0b3IsDQo+IMKgCQlyZXR1cm4gMDsN
Cj4gwqAJfQ0KPiDCoA0KPiAtCWlmIChpbnRlbF9kcF9oYXNfZHNjKGNvbm5lY3RvcikpIHsNCj4g
KwlpZiAoaW50ZWxfZHBfaGFzX2RzYyhjb25uZWN0b3IpICYmDQo+IGRybV9kcF9zaW5rX3N1cHBv
cnRzX2ZlYyhjb25uZWN0b3ItPmRwLmZlY19jYXBhYmlsaXR5KSkgew0KPiDCoAkJLyoNCj4gwqAJ
CSAqIFRCRCBwYXNzIHRoZSBjb25uZWN0b3IgQlBDLA0KPiDCoAkJICogZm9yIG5vdyBVOF9NQVgg
c28gdGhhdCBtYXggQlBDIG9uIHRoYXQgcGxhdGZvcm0NCj4gd291bGQgYmUgcGlja2VkDQo+IMKg
CQkgKi8NCj4gwqAJCWludCBwaXBlX2JwcCA9DQo+IGludGVsX2RwX2RzY19jb21wdXRlX21heF9i
cHAoY29ubmVjdG9yLCBVOF9NQVgpOw0KPiDCoA0KPiAtCQlpZiAoZHJtX2RwX3Npbmtfc3VwcG9y
dHNfZmVjKGNvbm5lY3Rvci0NCj4gPmRwLmZlY19jYXBhYmlsaXR5KSkgew0KPiAtCQkJZHNjX21h
eF9jb21wcmVzc2VkX2JwcCA9DQo+IC0NCj4gCQkJCWludGVsX2RwX2RzY19nZXRfbWF4X2NvbXBy
ZXNzZWRfYnBwKGRpc3BsYXksDQo+IC0JCQkJCQkJCcKgwqDCoA0KPiBtYXhfbGlua19jbG9jaywN
Cj4gLQkJCQkJCQkJwqDCoMKgDQo+IG1heF9sYW5lcywNCj4gLQkJCQkJCQkJwqDCoMKgDQo+IHRh
cmdldF9jbG9jaywNCj4gLQkJCQkJCQkJwqDCoMKgDQo+IG1vZGUtPmhkaXNwbGF5LA0KPiAtCQkJ
CQkJCQnCoMKgwqANCj4gbnVtX2pvaW5lZF9waXBlcywNCj4gLQkJCQkJCQkJwqDCoMKgDQo+IElO
VEVMX09VVFBVVF9GT1JNQVRfUkdCLA0KPiAtCQkJCQkJCQnCoMKgwqANCj4gcGlwZV9icHAsIDY0
KTsNCj4gLQkJCWRzY19zbGljZV9jb3VudCA9DQo+IC0NCj4gCQkJCWludGVsX2RwX2RzY19nZXRf
c2xpY2VfY291bnQoY29ubmVjdG9yLA0KPiAtCQkJCQkJCcKgwqDCoMKgDQo+IHRhcmdldF9jbG9j
aywNCj4gLQkJCQkJCQnCoMKgwqDCoCBtb2RlLQ0KPiA+aGRpc3BsYXksDQo+IC0JCQkJCQkJwqDC
oMKgwqANCj4gbnVtX2pvaW5lZF9waXBlcyk7DQo+IC0JCX0NCj4gKwkJaWYgKCFkcm1fZHBfaXNf
dWhicl9yYXRlKG1heF9saW5rX2Nsb2NrKSkNCj4gKwkJCWJ3X292ZXJoZWFkX2ZsYWdzIHw9IERS
TV9EUF9CV19PVkVSSEVBRF9GRUM7DQo+IMKgDQo+IC0JCWRzYyA9IGRzY19tYXhfY29tcHJlc3Nl
ZF9icHAgJiYgZHNjX3NsaWNlX2NvdW50Ow0KPiArCQlkc2MgPSBpbnRlbF9kcF9tb2RlX3ZhbGlk
X3dpdGhfZHNjKGNvbm5lY3RvciwNCj4gKwkJCQkJCcKgwqAgbWF4X2xpbmtfY2xvY2ssDQo+IG1h
eF9sYW5lcywNCj4gKwkJCQkJCcKgwqAgdGFyZ2V0X2Nsb2NrLA0KPiBtb2RlLT5oZGlzcGxheSwN
Cj4gKwkJCQkJCcKgwqAgbnVtX2pvaW5lZF9waXBlcywNCj4gKwkJCQkJCcKgwqANCj4gSU5URUxf
T1VUUFVUX0ZPUk1BVF9SR0IsIHBpcGVfYnBwLA0KPiArCQkJCQkJwqDCoA0KPiBid19vdmVyaGVh
ZF9mbGFncyk7DQo+IMKgCX0NCj4gwqANCj4gwqAJaWYgKGludGVsX2RwX2pvaW5lcl9uZWVkc19k
c2MoZGlzcGxheSwgbnVtX2pvaW5lZF9waXBlcykgJiYNCj4gIWRzYykgew0KDQo=
