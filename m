Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1DC94528F
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 20:10:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 565D810E90A;
	Thu,  1 Aug 2024 18:10:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AKCCeW92";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D1A310E03E;
 Thu,  1 Aug 2024 18:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722535820; x=1754071820;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=gXKcdLfDnky3yFNDvJSfLi1jiGcaN2qQC4YA+hQuMWI=;
 b=AKCCeW92PbSDlxfqz42ZqMVU/afb6H/vKKCP7rTwVzDy5HAD4P6/v7kK
 8+oLDh6XdMzGuRroumhecKJrkSajms3GVGKJ25lVkSUlcCPkxFwAgaEAO
 n+HrKVNKbzZVorlpwkthUuT6dZl/W34XhNA4v9hfwJI8R00Bl/NaFOXS1
 gsLL7/7CtQF8GKqUCLUuRodNBbRFWRLx+kU/jdzLEMMCBPIosoN/vT4JY
 3N8DAwfqfLclmcL7hO9+i5fARKuUprPE0PvehGh/MH5qFyZKIGZ11Xmmn
 6+34CBD0zAlqQl/XyMar2DdHf08Oeq9sorZh+pV+CQR4pDmhJvcbGXwR4 A==;
X-CSE-ConnectionGUID: lme3sgJnQ8+np7CrokbJpw==
X-CSE-MsgGUID: hpaJ2cd7S1a2JsAuF67ACg==
X-IronPort-AV: E=McAfee;i="6700,10204,11151"; a="20337571"
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="20337571"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 11:09:45 -0700
X-CSE-ConnectionGUID: BrWPC7MLTe+A/m1CZBJjYA==
X-CSE-MsgGUID: kJa2qvUtQc+ZD/5qbUBcNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="59970668"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 11:09:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 11:09:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 11:09:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 11:09:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 11:09:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AT5KwdPO/vNCoe/kZJNz/GRvd/3FoVGm3Z2Je9KJs9J1nNIXMl0yTWdmP1f77cJJemtnri2xspDULoLfUvlT1u26jdmsHQeYDmi4de7+9WOicA8y1bArqcqo9wah4k9EJoI0+RjxusgsTHmEusFzoAf/umuVjmLPRG4mzA0SucPnpMu0W/Al8TGdydPQ/0qU8jx8/FbAmBwwozGpP+h87UkJoG3OOuJsmt4/l6jod8gR641tNSORR5ozS9Gkox3GTvrW0c06W5YeTfeeXgMIoCSd1ff26n9PFy+7QJVOoc7hruKlUXMduputbfnEdNzwOyfnnSbY0UYHZbqmex3l1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n7Sufv/CgWapdhTmm8Y0deDbU7FOi1bk1P4PaN5/aWI=;
 b=FsLfo7vmrhhvTMXmm+73IWaWJYz8U9fVfX19pvUBOVzmx2LNt8LlKgfylvDPD+c2Hu0AOT8ZPuFTnVFnBdd27hKFHkA97ZrYU2HA0/EMrdSue4ZSfJc3XgpFtuNWn5f3rLRp+edpdeMYDIngAg46EphKgyxa0iwu4JD1wAIeTzx5eG7fr1jfr3mk+NvA8k956sJr7/ai+bZjrm/CM5zDrTmE5fdBHUjQFZGXea3nPhQl0nVYXcQS9DBc8h7zTCEXKx8eexG+UNNz18+RI8yFPKsxM/Qs2nK8RHIqOVHykMAYB1DrWiiCr9lcN7P8vxkT7rO3jJl2X+F3z0jnTL/8cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by BL3PR11MB6411.namprd11.prod.outlook.com (2603:10b6:208:3ba::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.20; Thu, 1 Aug
 2024 18:09:40 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7828.023; Thu, 1 Aug 2024
 18:09:40 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <3e32cbf601f367e353637afc22dc84436aaaf06f.1722263308.git.jani.nikula@intel.com>
References: <cover.1722263308.git.jani.nikula@intel.com>
 <3e32cbf601f367e353637afc22dc84436aaaf06f.1722263308.git.jani.nikula@intel.com>
Subject: Re: [PATCH 09/10] drm/i915/hdcp: migrate away from kdev_to_i915() in
 GSC messaging
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 1 Aug 2024 15:09:36 -0300
Message-ID: <172253577624.5121.4958252043028255730@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0175.namprd04.prod.outlook.com
 (2603:10b6:303:85::30) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|BL3PR11MB6411:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b088142-0779-46e3-d7f0-08dcb2551cb4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R3l1QUpHbStuUVpaaTZxZFZaN3hpYVlzWThpT2VwMFNKYUFqL09KbDMxTEQ5?=
 =?utf-8?B?VG9JYVlydkFBWXdXRFp0STVOalFPVUk2b055VTdPZ01QaTZoUHppb0d6MUFm?=
 =?utf-8?B?cGZNd2xEamFvTTJTZGtpbVNnM29xcUZ4cXhzdExNb0JBcUhSemRJR2ZKSTNW?=
 =?utf-8?B?dXNMODl4SGN6ZFZTbWRWYUc4QVovb2ZFdWZqaks1Vll2d3V3cndDNkdBd2lz?=
 =?utf-8?B?STQvWFNKODFRWEp3LzNLUFZTc1oxSkVHSG1VbWZDS0ZJcW5uRlp5cFRsNjBs?=
 =?utf-8?B?NkhDRjNFSUpNL1FSbnBLRGlWVHRkM2JzL0J6cGRFRHBLNmhBQ29GVHJuYXAz?=
 =?utf-8?B?dlJWVDVFNXhDUjVqTWJlb1dHTldTcnBPUDc4TW9FWWprdStiNG1IQXVVc214?=
 =?utf-8?B?Ly9yaTc4clB4YzZqNGFaRXVKRHpzczdTUFBkSGdNTk9yN3htQ3hBMDVXMkJH?=
 =?utf-8?B?VXZQT2lYZVlsVEs5OFM3eXpNSVlRcmxpcnJFS2M5bmc4NzFySFlZaUdibzNT?=
 =?utf-8?B?VzZQVXB2K2FCTmZGTnNQRUpWYUsrVHJJZkNOWFZOK1loRUs3VVZ6em9iMHoy?=
 =?utf-8?B?akxYQ0lUZHh3aFBodXhxR200NmFmMEcyL0hGMFI0b0R0MHFhdmozNk94MHRi?=
 =?utf-8?B?Q00vUTErNS8zdkZQTHBvWVh1WEhmOTZ6UFNQSjQrM1pzZGQ4SVlmaXcxbld2?=
 =?utf-8?B?YUZDL2h3RUFEcGFrZUhLQXhkNWpxKzQ3eFZvc01jc1RjcUdPMjBSbHJYT2pP?=
 =?utf-8?B?UE5vVjJXMmlXV2pJL3JBY21CWGxZWWJHQ3dKOXRtRk5rcmtPZGRtRS9xdnlI?=
 =?utf-8?B?K2ZVSVVoREZHTU1MRUhwYm8wMERXZDBQamJGZnp1dGp3Nk96S3VlZHZFYzJr?=
 =?utf-8?B?b3M2TjR0LzNidUIweUxXTDU4ZXJSSjN2TlIzNlh2MjRSVkRuNVdXK0ZlWGh6?=
 =?utf-8?B?RXM5cG1DSlRpd3JpU1l0ZVZ1VWZMRk1nMHJZYit6M29UZ2JzRzdHQjRZMEo1?=
 =?utf-8?B?cXo4dDQ5SDM2SXJTelNVTmVNVXpUaGxieUtZWnk2dFd5Y2hEWU1kZVFHZmJi?=
 =?utf-8?B?N3YweGdaZVlMcTZvQlAyTHRTVUUzdGtTS2gzSGFoQWRQUlFtRXhJYkpTRW5M?=
 =?utf-8?B?a09sSEZBQnc3b2RHTWp4anVJNEdSdUZGQ3VDM2k2RWhrTDA2QzBRY21QREZa?=
 =?utf-8?B?WXR3NWYrNWFCUWk2NUgvV09mbzV0M2lMZk9naW5JZXBHV1hrNytrUG16VEFN?=
 =?utf-8?B?RmxpT09kQktucmFYWWplUEw1QWFPSDFvYlgvWlEyRjZoNFlwa0pUQzh4Z3RJ?=
 =?utf-8?B?UjczWWNueXI1ZW50cjQ3UkNqcm1HeTZ5blpVWDhBSmFkZ3lvd1ZqTENlQkpj?=
 =?utf-8?B?MUZmaHIzUjNQbXNHWHZ6RHVJZjJtWEFFVTlDb3o4MnhGWkZBV2VmTG1xTmVt?=
 =?utf-8?B?a3liQnVnejFvdXlTZzZGVFhMeC8zS0F6dDNjS1hJaWxld2tGZGtpM1daOEU5?=
 =?utf-8?B?VWYycUwyZFRhTHR0djlOZkdLOFZJcWF6d0ZPYUVWTUh0SGpPa05UVjc5WndU?=
 =?utf-8?B?UDBNdkNGdCtGbG5mZllqNUozcWRaSHRRZXhUb1Z6WXJoVUtqa2NtKzJEOE4x?=
 =?utf-8?B?SHlRemt4SHRtcFVDa2pqRHZiM1RmY0N4aDRJTUNBWlVMZTdrT2NVeVd3bUlI?=
 =?utf-8?B?cXpZVFA4aXpzTDBDUzdLbWk0UElPNWg5TW9UcDNqYXgra012VWI2M0hOc1Ba?=
 =?utf-8?B?S3Q4QkhhTHA2ZS9Gcjl4ZlI1czVmaG95TWsvSEZrSXpLU2JpVWIvM1Q0eXUv?=
 =?utf-8?B?RDMvNTg3YXVzN20yRWRVdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aTdzbUFNblB1YUxMOXNGb2EvRDFQZVRiZHBGY3c0ZU16WDRpV1pNRFFTNVha?=
 =?utf-8?B?SExhaFlaMlZEZ2hBb3pQcUtUbVNvajJrYTlXRjRuSHRTdkVSeUx1aEJKWFdn?=
 =?utf-8?B?WG1vdmdibW9ibEtoUi9mMVp6NjZHNERVZ0FUQ1BtenNhOVREZzVmTlhJekdC?=
 =?utf-8?B?YWdRbUIwWUpWT2ZHeStnd3lxU3JDWFl2SGVKMVl4clFRM3NyWjhrSVZmM2w4?=
 =?utf-8?B?V25LN3FTVXFhQTNHbzZ0QU1PMEpKR3FHNytndXFra2hnTUJ2RFRldlphOGF3?=
 =?utf-8?B?bXRzZlZmQkZXS2lPUkJnMHpwTXRMS3JaeFh2SEtMUWZvdVVmTHNqdmVzbHlk?=
 =?utf-8?B?T051d0oxVXNmU1NPOUw5Z0E1Z0psOUZGY2tIdHNqR1pvVzVrTldsdEcyTng0?=
 =?utf-8?B?ZmR0cFN1TjlWbUx4bW0xQVJlc2F6cjl0ODRrVXNaQkFrd3p5RDZ1WFZXS0Vr?=
 =?utf-8?B?Q21FaisvQkZYQ1lxbWhyVW1LbEs5V2l5SW9YTituTTBJQnIrQzZhRS9zbHV5?=
 =?utf-8?B?alNacVZGc3dSV2NBazRHTnRBMWFIM3hqRVZYSTJmNEdzMVhseWhTOXdBdVdu?=
 =?utf-8?B?RjlSbnA4NmhOVG8remFuMEdpYTFhN0Zibm45cHNXaFhUSmZuMlJZT21EYjQw?=
 =?utf-8?B?c0JmZDQ2WC9DR0dRVTdjeEFKZERMelRYRVlCUnVzOUJjS3ZGU3ZidjdyQmpG?=
 =?utf-8?B?N3dzdkF5QVRwV2NxbjR5V3ZtZ2h6NXFQbHlFek53c083eVlxZEtWZ2kwR3Zw?=
 =?utf-8?B?bytVUWNsaWFDUG9oNkdqREFmMk0yVy9IRzVIWWQ0cEdvM3p5Q1BkVVpVN3M0?=
 =?utf-8?B?bGdDRGJybVd2dHJpWXVoM3YwS1VaenlOM1VHR2RCNHVQZUM1UGNCWXY2S3du?=
 =?utf-8?B?bXh5RVJTdzYrdHloWlJGd2h2WGNISVdUZkJGNFlTYU9kN2wyS2NQWE5pOUpE?=
 =?utf-8?B?RG5GNHRaMWJEUjdmeFhVd0dVRkx4L2RxUEQ3MXJadjUvWjJnMVg1NWJQOGxm?=
 =?utf-8?B?c0FiRFRaSDdDU3YxRXJnYW5vVDJ4eG4zNm01N3VlWU5XYnlMT1pJOVE3OEtE?=
 =?utf-8?B?aEI3L3VMcGYwMnh0SlF2UnBaL2lLRExGQ1VWNXVZS1FYWHRZckFKM2lLaWwr?=
 =?utf-8?B?VXo4c1VUNldrL2d6UjBRdDJNWWhBNkE2cXVLZDJ4V0J2RkF1M3VKemhUdHJm?=
 =?utf-8?B?QzdpeUlwL21GVVIvS0MwSytKWkc1TUtxT1NNMXNNb1FpckcyWDdyRW1yMlMv?=
 =?utf-8?B?NUdZRXlGZExOZm51eGV1c2lkbXdoZHJTT3JuK2FzMDVUb2VNL1BuOXc5SVlw?=
 =?utf-8?B?cnh0VjVBNy9OYUo1RCtvVnVSNjdOQVIxejAxN0JVbGlMYVQ3VzlMWHRoTEpU?=
 =?utf-8?B?SlY4MGR4SlRZeTI2bXNXNHNhNnkzQ2EwVFlHcU1qelBBVjVBZ1g4SjZHbWdw?=
 =?utf-8?B?R2IvRnV0M1cxMjdRU3VEazhXZG9WekV2emVMZytJcDNBSWxvbjdoUmV0UnlZ?=
 =?utf-8?B?M3RzR1FSQkEzNHQxZHhCTEdjWll2b2lYRitmSWYxUjRGSE1yRzZPT0wvS2Z6?=
 =?utf-8?B?Z1pIRGlLMXJiTkFmQjlqSzhjKzBCQmRBeG5hT2lFZUJ2WFROVlAvYk1xM0E2?=
 =?utf-8?B?NmxxTE9ja3Jka0tjTW1VNlB0WGNrT1NmNnIzRXBGdnVETkFsQjBmR0krOGFB?=
 =?utf-8?B?WmtnRjJnd0VJeExkc1lzMUlhcjJTN3NGZVZoM0VMeGk3S1M1ZkRvRjhVTWdT?=
 =?utf-8?B?d0QrSzM3V3JNSjdJQ2FJSXBxem43V2FTUW5GeEVhS3NNWUwwNzdyancrYi8w?=
 =?utf-8?B?NnNqVllQMW9hMVMyL2RrdGcyMVcvQzRrVjFiN09mWVZmUGU2ZEh5cDNFcFkr?=
 =?utf-8?B?SURqbm14M2RZSHkweDM5V0ZGODJSc0RadVZwVmFldndWYXMvdU1KT0cwZ1R0?=
 =?utf-8?B?UHNIRWd5cGNiYzZXTTVIdjNmMjVyUGhyN2V5ekcvcVhQV3kwYkxkTG1WcTB2?=
 =?utf-8?B?SXlJc1JaRkxkTTVSV0d3ZUxhdkhwejVMK044NlRBTkFuSjdaNWw0b2I4ekc1?=
 =?utf-8?B?QXBEVTl5UkVmRkRKTkZCVG1vb0twd0pZZXk0VWxMMjA1OGR0Zm9DUnk4ZEE1?=
 =?utf-8?B?NlJsVy9SNXFwM293V29MSUl6azFvcDhIeUJEaGVuM2F6UTVZQmgxMG4vMEZR?=
 =?utf-8?B?anc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b088142-0779-46e3-d7f0-08dcb2551cb4
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 18:09:40.6619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5RMbG8RozRPuv/VpfZ+pT3r7kV8BpDTmZSAinr28qM4co0A/nfl5s5Q6ovzYWaM1hjlokquvcgSb6oDyqaDJ/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6411
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

Quoting Jani Nikula (2024-07-29 11:30:10-03:00)
>Use to_intel_display() instead of kdev_to_i915() in the HDCP component
>API hooks. Avoid further drive-by changes at this point, and just
>convert the display pointer to i915, and leave the struct intel_display
>conversion for later.
>
>The NULL error checking in the hooks make this a bit cumbersome. I'm not
>actually sure they're really required, but don't go down that rabbit
>hole just now.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> .../drm/i915/display/intel_hdcp_gsc_message.c | 67 +++++++++++++------
> 1 file changed, 45 insertions(+), 22 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c b/drive=
rs/gpu/drm/i915/display/intel_hdcp_gsc_message.c
>index 6548e71b4c49..35bdb532bbb3 100644
>--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
>+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
>@@ -7,6 +7,7 @@
> #include <drm/intel/i915_hdcp_interface.h>
>=20
> #include "i915_drv.h"
>+#include "intel_display_types.h"
> #include "intel_hdcp_gsc_message.h"
>=20
> int
>@@ -15,17 +16,19 @@ intel_hdcp_gsc_initiate_session(struct device *dev, st=
ruct hdcp_port_data *data,
> {
>         struct wired_cmd_initiate_hdcp2_session_in session_init_in =3D {}=
;
>         struct wired_cmd_initiate_hdcp2_session_out session_init_out =3D =
{};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>=20
>         if (!dev || !data || !ake_data)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {

Hm... I'm afraid that wouldn't really work if drvdata was NULL, would
it?

With a NULL drvdata, I believe we would probably get a non-zero offset
here.

--
Gustavo Sousa

>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         session_init_in.header.api_version =3D HDCP_API_VERSION;
>         session_init_in.header.command_id =3D WIRED_INITIATE_HDCP2_SESSIO=
N;
>@@ -72,17 +75,19 @@ intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct =
device *dev,
> {
>         struct wired_cmd_verify_receiver_cert_in verify_rxcert_in =3D {};
>         struct wired_cmd_verify_receiver_cert_out verify_rxcert_out =3D {=
};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>=20
>         if (!dev || !data || !rx_cert || !km_stored || !ek_pub_km || !msg=
_sz)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         verify_rxcert_in.header.api_version =3D HDCP_API_VERSION;
>         verify_rxcert_in.header.command_id =3D WIRED_VERIFY_RECEIVER_CERT=
;
>@@ -135,17 +140,19 @@ intel_hdcp_gsc_verify_hprime(struct device *dev, str=
uct hdcp_port_data *data,
> {
>         struct wired_cmd_ake_send_hprime_in send_hprime_in =3D {};
>         struct wired_cmd_ake_send_hprime_out send_hprime_out =3D {};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>=20
>         if (!dev || !data || !rx_hprime)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         send_hprime_in.header.api_version =3D HDCP_API_VERSION;
>         send_hprime_in.header.command_id =3D WIRED_AKE_SEND_HPRIME;
>@@ -183,17 +190,19 @@ intel_hdcp_gsc_store_pairing_info(struct device *dev=
, struct hdcp_port_data *dat
> {
>         struct wired_cmd_ake_send_pairing_info_in pairing_info_in =3D {};
>         struct wired_cmd_ake_send_pairing_info_out pairing_info_out =3D {=
};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>=20
>         if (!dev || !data || !pairing_info)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         pairing_info_in.header.api_version =3D HDCP_API_VERSION;
>         pairing_info_in.header.command_id =3D WIRED_AKE_SEND_PAIRING_INFO=
;
>@@ -234,17 +243,19 @@ intel_hdcp_gsc_initiate_locality_check(struct device=
 *dev,
> {
>         struct wired_cmd_init_locality_check_in lc_init_in =3D {};
>         struct wired_cmd_init_locality_check_out lc_init_out =3D {};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>=20
>         if (!dev || !data || !lc_init_data)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         lc_init_in.header.api_version =3D HDCP_API_VERSION;
>         lc_init_in.header.command_id =3D WIRED_INIT_LOCALITY_CHECK;
>@@ -280,17 +291,19 @@ intel_hdcp_gsc_verify_lprime(struct device *dev, str=
uct hdcp_port_data *data,
> {
>         struct wired_cmd_validate_locality_in verify_lprime_in =3D {};
>         struct wired_cmd_validate_locality_out verify_lprime_out =3D {};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>=20
>         if (!dev || !data || !rx_lprime)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         verify_lprime_in.header.api_version =3D HDCP_API_VERSION;
>         verify_lprime_in.header.command_id =3D WIRED_VALIDATE_LOCALITY;
>@@ -330,17 +343,19 @@ int intel_hdcp_gsc_get_session_key(struct device *de=
v,
> {
>         struct wired_cmd_get_session_key_in get_skey_in =3D {};
>         struct wired_cmd_get_session_key_out get_skey_out =3D {};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>=20
>         if (!dev || !data || !ske_data)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         get_skey_in.header.api_version =3D HDCP_API_VERSION;
>         get_skey_in.header.command_id =3D WIRED_GET_SESSION_KEY;
>@@ -382,17 +397,19 @@ intel_hdcp_gsc_repeater_check_flow_prepare_ack(struc=
t device *dev,
> {
>         struct wired_cmd_verify_repeater_in verify_repeater_in =3D {};
>         struct wired_cmd_verify_repeater_out verify_repeater_out =3D {};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>=20
>         if (!dev || !rep_topology || !rep_send_ack || !data)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         verify_repeater_in.header.api_version =3D HDCP_API_VERSION;
>         verify_repeater_in.header.command_id =3D WIRED_VERIFY_REPEATER;
>@@ -442,6 +459,7 @@ int intel_hdcp_gsc_verify_mprime(struct device *dev,
> {
>         struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in;
>         struct wired_cmd_repeater_auth_stream_req_out verify_mprime_out =
=3D {};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>         size_t cmd_size;
>@@ -449,11 +467,12 @@ int intel_hdcp_gsc_verify_mprime(struct device *dev,
>         if (!dev || !stream_ready || !data)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         cmd_size =3D struct_size(verify_mprime_in, streams, data->k);
>         if (cmd_size =3D=3D SIZE_MAX)
>@@ -504,17 +523,19 @@ int intel_hdcp_gsc_enable_authentication(struct devi=
ce *dev,
> {
>         struct wired_cmd_enable_auth_in enable_auth_in =3D {};
>         struct wired_cmd_enable_auth_out enable_auth_out =3D {};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>=20
>         if (!dev || !data)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         enable_auth_in.header.api_version =3D HDCP_API_VERSION;
>         enable_auth_in.header.command_id =3D WIRED_ENABLE_AUTH;
>@@ -549,17 +570,19 @@ intel_hdcp_gsc_close_session(struct device *dev, str=
uct hdcp_port_data *data)
> {
>         struct wired_cmd_close_session_in session_close_in =3D {};
>         struct wired_cmd_close_session_out session_close_out =3D {};
>+        struct intel_display *display;
>         struct drm_i915_private *i915;
>         ssize_t byte;
>=20
>         if (!dev || !data)
>                 return -EINVAL;
>=20
>-        i915 =3D kdev_to_i915(dev);
>-        if (!i915) {
>+        display =3D to_intel_display(dev);
>+        if (!display) {
>                 dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>                 return -ENODEV;
>         }
>+        i915 =3D to_i915(display->drm);
>=20
>         session_close_in.header.api_version =3D HDCP_API_VERSION;
>         session_close_in.header.command_id =3D WIRED_CLOSE_SESSION;
>--=20
>2.39.2
>
