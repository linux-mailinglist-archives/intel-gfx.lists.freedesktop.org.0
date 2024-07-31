Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC0A9435BF
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 20:44:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D488E10E67A;
	Wed, 31 Jul 2024 18:43:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ceosP7rN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CFEB10E67A
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 18:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722451438; x=1753987438;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=erhtmeP2rSzZHeG9UUVtT/Y2ZU+P9hRDL+3JOLNKE6Y=;
 b=ceosP7rNaPGEcb55AZG9QYghMm+z5YC2Ipk9pwDgxjpheARW7P4277fl
 DCeaOaE38u04TAYzvFTB5xAHLlhXb3filVBVaQrHlyNBU1C9Oh9LEFJWS
 g2t8noUmSQfWNHECxM2YU0fkDnc0gVzYxs5733O2O7eT0J0QeO1xQyz0N
 4juVGijVqWW4B6nZKolmkNpPOLkKsmNIZABBTIDKxZcO38NkzC9tNNIh3
 mw3+6ZVZTRB7SORYVpkcdXhWaRonkwfs6bryCQKAXoLgxZ1itsiF/3T6A
 RPz5vv0wvtV8vFjsFfieD3W7mZSIFAhzPh0pHyUEVnW459CYVj1rleOfk A==;
X-CSE-ConnectionGUID: 5GMwpzeIQX6apNDMJUsFYQ==
X-CSE-MsgGUID: hUDPL4AwQqa+K8k8EJQjZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="31762599"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="31762599"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 11:43:54 -0700
X-CSE-ConnectionGUID: DXl0omcpRS+YDNegQ2OI/g==
X-CSE-MsgGUID: 7m2cRgsqRSCuBtGTLv/U9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="54840003"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jul 2024 11:43:53 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 11:43:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 11:43:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 31 Jul 2024 11:43:52 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 31 Jul 2024 11:43:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pzhqtBoFxHG2n6GBUNHL/bLcSpmHYobP8urTdoyX4P8C8fohnrgVgx0lypdqDjqU+DmHwpzm4w74gb4l1Jvc+lZcDvCzZTqs4adRB6RavpNI0k5GyXoEQu4po9tS0OKOcs3ciVTo+xKqNNLrn4gK+tu1msZt9W8HVg9IoSSuBfFGo6PiCfWFmPDSUsAGOB47lwW3Yh38SSpLojIZXR16iC0ieamdgVZ9vO01MCLJKlS98a8ATvUoiZvuDcJO1laR2zhfotZOUdKw/kGFesDD6yXDDRUTq55ADExUze4ydGENM6JXKbf/0+ts1imG2s6oQWUbbE2HGntM1UY1VmW9Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AGoBI+HVjFT0NzW54gGl8pJPJL0X4cGTZ30YEH5Ni/0=;
 b=NKtmQHYZDOqKQ4sWCFd5Kw0yi77LoGvxj7cKtbPa6KM76aSB1sNopHPCA4hej8RKOIh3riREnn2cVBhnic7iqxz1djbNXsPl53MzXHu3SA3go92qWXTL2wLj2XUT1gZq22MFvTrIxS6Nj9Mj/4YQVSBOznMX6h3IQP1Otngyib2aHLKzK31Qf54Xn4VHEhAV6ZUns6S0vXwcuNc6oB/koqC+95FVVqWllZzSwnXg5N7FjL+Yex37ciknBM2zbAExYzMft2Mn847wtwr02b+7a8vqcXOH7hH5Xv5JH8b3p/nDS9i5O6LBGOGItc/p34c0Q3SlcbSjpeGpTryp59X99g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM4PR11MB8092.namprd11.prod.outlook.com (2603:10b6:8:184::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.20; Wed, 31 Jul
 2024 18:43:49 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7807.026; Wed, 31 Jul 2024
 18:43:49 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240731110744.1572240-1-jani.nikula@intel.com>
References: <20240731110744.1572240-1-jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915: remove unused HAS_BROKEN_CS_TLB()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 31 Jul 2024 15:43:43 -0300
Message-ID: <172245142302.1938.10864634863760833147@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0193.namprd04.prod.outlook.com
 (2603:10b6:303:86::18) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM4PR11MB8092:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f54e5a6-2f5f-4737-7c96-08dcb190b765
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?czV3TWhxSGh0QVJUSGJiMHgvekZvV1A2WkJURGRoeUM1eVVGQzl3LzJPUEhv?=
 =?utf-8?B?NDNySTdCWmZiZ1lUd2FiQWtBRWpPclNpNHZuZXlXRVlmcG5XTDI3cXNRRkpD?=
 =?utf-8?B?Z29lL09zZXFXRkxKby9ib0xiRVVtbGVsTis4clVrc09JTVBCQUl4OEhPWFc3?=
 =?utf-8?B?ZFZEaUVmbDU1YWtDQXBHQW1URFpraW12T25DdXZNb05hWXhnTTVETFVhR2lU?=
 =?utf-8?B?KzF6aktIaHlzWkljL0VwYUNXOEsrUkVDSXdXRXc2M1k5UUt0WSt4U3lIbS80?=
 =?utf-8?B?RkZsdDNzRGhZOEZZTmdzeFBCZTZNSm5hU1MwMnVMZHlnR2dWRWxkZVEwTTFQ?=
 =?utf-8?B?d3lNcGhnckRYaDRua2JZZXpTbEd0a2tqWWEwUTAvK29kRzFkYzBIcU1vVmw1?=
 =?utf-8?B?TTI3MEVlQi9jb2FtK29HcXdUZGh2a0dBT3JnOFd0alZkdDBlMFJsWmY4TXN3?=
 =?utf-8?B?RFc0akZqSS9DNzAvRmNzZWFWcC8vbDBOU2s0U0ZzNVlzWXBqbVBNdWdWTHdI?=
 =?utf-8?B?UEZlcEM4QUdkdi91dWdVRWM5MVVLNll4bDZVdVNDZ1VXcWF3S1JvdXVlSWMr?=
 =?utf-8?B?aWVGcXpNQ3h4eXFjODEzVCtOUG9rSlIrSEhvL0taSlpIWXNJL1RQQjgyMlpa?=
 =?utf-8?B?THFMOEhYYnE4bzByRTQzbXBJcW9FYUQ0MUFickt2WFMxUzI0NzFIY0RReEFh?=
 =?utf-8?B?RnlQMlY3anNxV2ZLRWZnZ1FWRHYxK0RtanV0OEkxSDV4THZXK3hkVUZzazFC?=
 =?utf-8?B?UFk2QldnUURZc2FzREFRalJvM3VNRHlsbStDWWtuWnlBR3hFTk1lMCtYSXlj?=
 =?utf-8?B?YnNqWk9jT24yVjVFeUFvOU9Pdis4SnRrdDdXUmU2RjU3eDFzM21jenZGZE9Z?=
 =?utf-8?B?N0k3dzdCK0VUOERycXdyNy9wa3owUVIvNitJSDU2eStIY1JZbVBDYys5dUZX?=
 =?utf-8?B?R0xFcFZpdXpWbVc0UzBVVWU3QVdlaGRFWnUvZk1QNDVaR1RoWkk5SmgwRHli?=
 =?utf-8?B?V2k4d0cveG04U3c1ekEwakNtUURNYkorcG80T0ZyU2JQeENWVDZkSjd5Wjk0?=
 =?utf-8?B?a01CYmNFSjEvdE5ZRnBTM1I4VUQyMzZuRk5xR2laci9rbnV6bklTYjlvcUxG?=
 =?utf-8?B?dUQvMXFVM0EwYXlkTys4dmxueEN2aURUWUYrME5NSTR3UFdDWVhHVllDQ2xq?=
 =?utf-8?B?SXhpeWlCTnN3OEVxR3pjUG9kckU5MW1kYU5KOGNXNTllMU9jOS8xQVNxSFR3?=
 =?utf-8?B?RGt6eGFXWTU1MUxxVTJyZ1dTVTYxSDdReDBNMGRYWXAwcm04UEZYdzBmTkNP?=
 =?utf-8?B?a21tK3R1b0NVQ3lKMmlGQXRqLzlrMVV4ZVFmRGdDVXgwbzZpV3VGVzg5cE9N?=
 =?utf-8?B?enpKNXJlNmNpZHJmSnpVWHAzM2dZa0VOWWFIUVNhNWN2OVljRTUxMSs4TkVB?=
 =?utf-8?B?Z0Uxa1Q5SjZJTnVaTENmWXlCUlg0dGEwYzJDeFVVZmhDamdKY1JoV05CM2M5?=
 =?utf-8?B?SkxZODAzN1ZiTGQyYmdPelcwNGR3ZzNybk9abUpnaTFKa3l6cnZjRXFsN3NH?=
 =?utf-8?B?QUU3Wms3dS9ZT29hMEpURnAvVmVUTnQ5dXc0bEYwUzhrVmZJS25tcUZ3eW8r?=
 =?utf-8?B?K1puanErZDJONk94bXk0QXJCN0ZEMVBVL3ZHRFI2UDJvM2dXd0FNS1pGU1pN?=
 =?utf-8?B?V0dONUdxNUFFN0M0UUUzV2JLYVk1aE52RkV1MDdYT3hXSXdxTXl5OFF4OVBU?=
 =?utf-8?B?QkN4QzYzOWtQUXNoYUlmM2JXNzdaMUFlNGI2VzI2QmFhQlNvZHcvVUhRMnJW?=
 =?utf-8?B?VjVlbWVQeGZrMWlhaHhLZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WW16MkIvbkVabW9ncHBQQkpUS2o3dU92dDUrNzlkc2QvMFh6N0J0UHNOb3RP?=
 =?utf-8?B?c0FYWmtpYW8rVHgreUNkVWE3QVFvdy94TDMvMWdmaDVpblBqNHNZSnpCRWQz?=
 =?utf-8?B?SjVCTnN4anFreFNYTlBmQ1E5dHVJVFd1WnNyd1YxRGdHVTI5NHdScEpXRVdj?=
 =?utf-8?B?bE00aC9TcVl2ZXpDOUViYjd1S3hTVzlRdlB4RjV2aHpZQVBkYVFEMjI3amFy?=
 =?utf-8?B?SmZ5SmdyM012ZGI4S1ZVTmdVdmtMSElzWHJkYXJDRGVRVXFOSkI0VnlNamNW?=
 =?utf-8?B?QTBwZ3J6SXJ6cnBGbWp6Z3M3eTVLWG4rZVBlRmRnSnFmMFJrazdWZEF1NUwy?=
 =?utf-8?B?d1g1WlpmU0ZVQ21lRCtUQVI2aXdXbGppRTlEVzdQcHVDWG9kUjhCQ0NWL0ZU?=
 =?utf-8?B?emhLSHIvNFdkT3htT3hmQ0wxL0FhcnRlV0djVWdhNG44eFlCK1loYnlMYW1q?=
 =?utf-8?B?MWs1Qk5oeXNlUjlla003dDU5SFNzdEVYMmxlRUVFd05Qa0UzUmo1UVVrUTVa?=
 =?utf-8?B?R0pQaGg3WTVsMzNKRWttcGpFYXNzL2Z2SmRuVG8wOUxjUjNvZm9Pa3kya3Z6?=
 =?utf-8?B?SGYwdStQS2E1Sk9tckpFTllORS9ybUVOdUVOZForV1FGR0RGUDNZWk5WQlJS?=
 =?utf-8?B?cmlnRFJEdGpWQXFqcnZ5RzZtLytWUUJyc3FuSzhsYXdwNEpQd1dqZEM4N005?=
 =?utf-8?B?QzNpMjd6M2dPbkFQUXpUREsvOENCRHVrZ2ZNdU9YV0dKbFpiV2dwb0x4eEZy?=
 =?utf-8?B?U25SclNrL2dzelJVdjI0OGdacHpnZzk2K0dyRm5lMGtGRjhxQ1AwT1VXRkhl?=
 =?utf-8?B?ZHptZ1Z3QldTSGhZY002bjJaUTFtZVltK09uOXlxaVpoakVZeEp0dVJ1ZDFR?=
 =?utf-8?B?K3RXSXZXdDZUdUY4WXhCRU1YVE8wcG55QThrNG1vQkVtYk5VelJuTkh6ZTFl?=
 =?utf-8?B?V2VQM3pNTnhUcEdQWTNocmVCU1lkdE5KV09pQ1lHd3IwbWEybkpaYy93SFY3?=
 =?utf-8?B?TmNzOGhwTFRjcko4V1hnZ2d6RmJFY0swNUpUUWllMFRUODU1dTV4eW1rTFpC?=
 =?utf-8?B?c3NUMS9vUFRDTjlRQUFIVlBvTTFHaGFkN1c4SHFTYks5QVhzajFyUUQ4U0VU?=
 =?utf-8?B?djBDSmd4dVo1U2dqYUNiWnprUk5EMm1sbWRHekltT3ExT1lEbzQzL0Y0cHJ1?=
 =?utf-8?B?TEEzWHBPWE9QRHZWNlB5bnNnMytRYWcvQU5OcFFDMDRsOXlhQmsxSXZhQkV2?=
 =?utf-8?B?a0g3U0FiN0YrTlIvVmRja3JqYU8zcXNwcEFjdDROTDlyRFduc2xJTmpLOEM1?=
 =?utf-8?B?MlZPN0ZHZStxMlRrN1ZaQnUyQTB1ME9GMzdRTTBscitzcVFXQmFIRG1FMzg1?=
 =?utf-8?B?WmQrTUJoOHBUcm1EOXdQcmwwWHI5YW5yeXZrQ2xaY3BEc2g0YXk4MUJmT2Rx?=
 =?utf-8?B?bmxWdXZQODlEMGNMckZwUHFtbml1U0ZnY3hpdHN3eTZ3TGNudk12VWRjM1R3?=
 =?utf-8?B?N1RxWGc5WC9DODY2RWQxbVhRNmJGQWhvQm95V3hXZ0pYTHNYcFFwVnJlaTcr?=
 =?utf-8?B?SktEMUt5U0NVT2ZRbG9LOVcxQlVvckViTTAyZ3NvR0p0b09UVC9KQ1VqTUlT?=
 =?utf-8?B?aXN1dFEvU2pIODdUR0kwekxORmpFNXdrRXJvL2NmWnJiakZxZHF2QVBZS1du?=
 =?utf-8?B?dXoxeGdkSVB5T3ZnM05QdlhMMUtlTW1UNW5mSzB5TTZWNk5JVTVYTkFCcVRu?=
 =?utf-8?B?dTBiWFBYMW4zckl1dkFacTY5Q2hFcGdzUng0YTdPSHY1dFdGb3NINnR0clZC?=
 =?utf-8?B?VGNBV1ArN0lEemMzOHFBbVF1QUk4cWJpaG1EWnJuWVBDUnY2S21GZ2tDQ25a?=
 =?utf-8?B?UGtLQ3pQaE5pQmFlKzk1N2lrT3l6cVVJMUdtZEpiN1IrZDJITDNxaWNKYW9B?=
 =?utf-8?B?Q08zZDBQczROYlA2TXpmT21MK2ZQYmE5RURIUFR5M1R2cmc4eVpBQldCUk5x?=
 =?utf-8?B?SDdnWHdGRDdETjQ3d1hqSzVMT0RrNXAwTXR4NHVmNEFtU3pDQVdHSENMOUk2?=
 =?utf-8?B?SldldGc0c2VvZXo0TG50MEtWaWVybUhyaDFmT0w4S2dMZWQ4WXlzaXI5ajNC?=
 =?utf-8?B?SzVjb0ZNdU1yajFVcUQxM3dvd1BETHFubVByZ1p1Znl1ZHNkNlRMaVBVZFZB?=
 =?utf-8?B?QXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f54e5a6-2f5f-4737-7c96-08dcb190b765
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2024 18:43:49.1269 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O6QnR6yQBSvhzybszOMiNFNJdkW0apcc1qSRYCK3PPAk7kzQgjm2JKOVPdug5mH3KNYkJM75PRa4KwwCKlQScw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8092
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

Quoting Jani Nikula (2024-07-31 08:07:44-03:00)
>The last users have been removed years ago. Finish the job.

It looks like it became unused with commit cbcfa8a3e160 ("drm/i915: Drop
the shadow w/a batch buffer").

>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/i915_drv.h | 3 ---
> 1 file changed, 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index d7723dd11c80..94f7f6cc444c 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -678,9 +678,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>         ((sizes) & ~RUNTIME_INFO(i915)->page_sizes) =3D=3D 0; \
> })
>=20
>-/* Early gen2 have a totally busted CS tlb and require pinned batches. */
>-#define HAS_BROKEN_CS_TLB(i915)        (IS_I830(i915) || IS_I845G(i915))
>-
> #define NEEDS_RC6_CTX_CORRUPTION_WA(i915)        \
>         (IS_BROADWELL(i915) || GRAPHICS_VER(i915) =3D=3D 9)
>=20
>--=20
>2.39.2
>
