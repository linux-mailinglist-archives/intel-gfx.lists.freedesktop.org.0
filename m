Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAC0B2D37A
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 07:26:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51EBB10E013;
	Wed, 20 Aug 2025 05:26:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bNQPEFcQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0DB810E013;
 Wed, 20 Aug 2025 05:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755667587; x=1787203587;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Jm3p4+4+25zmJn/cPOlVDZlmqs/rAG+0MCQ71LTbSFs=;
 b=bNQPEFcQQOu/I0DiBFzeEGqNYHfKrJpiylvfhUCcKTqAlcOSFBh4iSeC
 YqYryDbLUnEdTs7kk4rIkuEYnXrX4+H5U7ygJDqs3iZdJ4EfnI40N0/d0
 OEtSGlas6vEprDFWryi/BWJBIAuZhmBzL/bunSc092tfgqrAd/UZ3/ZTs
 yfCnVrA3vKD0yXATMG4GVzldnOPYHu9Bvny3kZKxpo98dsk1yWNjVf4hc
 IhMN1OAnU8Ftn3k+NvkBloBnzoWBakAIImDGuiNxXrYxQjKoIhBb2yRuD
 IUKj6ehIbLGIaDnINiXBTWOf3TxjXA8F1+jmFiEf7qEJTLNhtv9FRzV14 Q==;
X-CSE-ConnectionGUID: 30vb9D/tRuy3xiLt5CE3GQ==
X-CSE-MsgGUID: AlAMQ3BlQs6OLsnANfEK9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="68195334"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="68195334"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 22:26:27 -0700
X-CSE-ConnectionGUID: dSQK9gC8R5OgzkwHYsgnVg==
X-CSE-MsgGUID: qEStT+osRqW+bb3qVaWltw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="167218788"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 22:26:27 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 22:26:26 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 19 Aug 2025 22:26:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.87)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 22:26:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oYwWshM6d4isABmyD/DUNJp/p4ju4lF81O6D8iF8Q5aFg1Bc0xpydnaGUqHe+wazRVr4hh702fYPq4Gjx1mF1BluO84IW42g9Ex4/LIiIA2sBb5UVHzfeBgDZpAjq0+rJi/9fPczKU/aIFbxXHmYzgKCjCTfu780RdYEVeP2iiUUrTvaMa6ALVwwJWZm76BAo4oRSwtJnq+CnCgqsGBQchPQ7vMegdGidpiWIwA3KYvYDKi83UaIy3MLuagBjtjSE/rl4iI3VjZL+T4C++yaPltGY/+tdStEo7JxQeG/ckESPYCrJC88v3T0gjnz+xSrJM01sv1eFurc8NDHv+JpvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jm3p4+4+25zmJn/cPOlVDZlmqs/rAG+0MCQ71LTbSFs=;
 b=cgDnE2ZFmuFlfcbh/SGwnjbmlRW7wjQfmYeNpRDsYfa4iPghYYhL19ah/7EK2lFwF8w2iI2FJFKAFSEArE8MExpl/3pEZCS8gWl6iZAWFbXjmNDKuo0GQG7kK6KA54cRt0u1ZCypK22ovA3K3HMJdOH4tRxLXn3zYQ4Zz2hvIAnJSglKGnztpvMzzs0FtT+ONscnEffgMRJ5LshgsVvPic95BiNbbrSaBiJKbIwmLGnOnKHl2pXCC+E/nm1Fio+wdG9flCy74KjVrdlwEFLA+zcp5Z2w0mso6w5+iBCI1wKY57kLFZxWNAkDFOErjqOY/7JSr9lAhUV0tBk/ORk21g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CO1PR11MB5060.namprd11.prod.outlook.com (2603:10b6:303:93::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.25; Wed, 20 Aug
 2025 05:26:24 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.9052.012; Wed, 20 Aug 2025
 05:26:24 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/display: Remove FBC modulo 4 restriction for ADL+
Thread-Topic: [PATCH] drm/i915/display: Remove FBC modulo 4 restriction for
 ADL+
Thread-Index: AQHcEYts3DlmZTNhPkWBeDGf0sZT17RrAtcA
Date: Wed, 20 Aug 2025 05:26:24 +0000
Message-ID: <a257b361be99609f3f936f3a369b502a8e740b1f.camel@intel.com>
References: <20250820044416.4048117-1-uma.shankar@intel.com>
In-Reply-To: <20250820044416.4048117-1-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CO1PR11MB5060:EE_
x-ms-office365-filtering-correlation-id: bb98d91f-981a-4019-6d92-08dddfaa1aca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZmlrdVpUYzJSYWJxb0JucE5NR2FhVmFRenVpWnAySXlkZVRnSkxySGtLUUcr?=
 =?utf-8?B?b3J3eXY3S3Q4WFlLdkhWbDlEckR0UWtzaU9ZVld3cjJDMWV1dmg0aUE1SEpU?=
 =?utf-8?B?eVhtN3Y4RFBZUmVYc3RKNHFxenVJZEgydHJiVHY0cnllRVNwaTRFcDVmdkVq?=
 =?utf-8?B?Q2RHQTlWK2gzQm5kSHdWNEhGemV6LzJSNW9Bb04wR28xclpHbnJFc3psWktU?=
 =?utf-8?B?Rm5tRXVBV2ZleVc2R3VGc25zTVNaeWVUTW9qZ093UUJoOVJqSnVpaHJzV1dz?=
 =?utf-8?B?UllCUXBkdUlsVy9zSEtOa0dpN05EZjhlblB6UERPM0ZvemQ3TGFQaFpmZmh1?=
 =?utf-8?B?bmVlV2dFSElvSENRdkxBMS9jbEUwMW1wWm9JLzNaaHg2M0UxZ202UFREZ29U?=
 =?utf-8?B?SEI2SmlIaHZ1Q1d0eThUTFZQYnVIUFM4UXFBblFCWFV4a0oza0ZtRkpFbzhW?=
 =?utf-8?B?c3FNOUpPUVF3RDhGZFNYTCs1WVBQQi9BYkNvbzRJb0htSEVtNXJKcXZFTFd3?=
 =?utf-8?B?cDMzNlRROUc3TjhOTVFkS3FIcUNVQUVLVkZzU0t4Y2pCRERWWUtlUU1WUUlv?=
 =?utf-8?B?dFZjV0lKWFNkZU4wMXVrR0VLMEROUlU0U0MxN2pWalNqTmtMRUlWMlB4amNi?=
 =?utf-8?B?K1VZZ0txZ25wRGRKSEk4citVS1VaUVY0UmxJTTVUZHdaRGMweWRsa2IzRTB2?=
 =?utf-8?B?YWxlZDNUS0tickFxdTRGaWZBeFpKaXVhT3V1b3hmcWJ5VFB4NG5QZG10ZXcv?=
 =?utf-8?B?ZkJ3VEFHQkpLTkNRT1VDUlpEM1dIVy9yUHpmSXBsNWE2UEJiZGMrRy8ydVZU?=
 =?utf-8?B?ajE1Zmgxck1wTjJlZnRMUkRneXJBVHg0bHU1ZXY2eUxLZjJHZ0lYb28rNHdN?=
 =?utf-8?B?b1I0QlRVakpZN2x5bm1XNDA4aDlnVlo2LzNWS3FXNWNJZ3UxM1VTK2hnY1Vl?=
 =?utf-8?B?YTYvTDJGTnRFZDdyMWh3Rmxpa2Y5aDhRTkdJWHdlaEttNVAwaHkxOVJETHB1?=
 =?utf-8?B?cEk0eit6blNoTEFlY1FqU2l2RzVmUm9hRzRtcEFtb0hkM3lLWTl2T1FYMXV5?=
 =?utf-8?B?WDZJUEFRY245eWxUOGhGSHNSZjZlMk9mVHZFaEhOaVI2dG0rSDNoMnVVbVhu?=
 =?utf-8?B?VXNhVGkrRlYvYnhrcThsNUUweDc4VU5oYURxNDkxOE1kTDhUdUFBUzU5UmZV?=
 =?utf-8?B?ZitnVW9CMzZvdnVLVld2RjNaSmt5RTNteDNkZ1h6eGNVYlVXQVFhOUNJRTQr?=
 =?utf-8?B?OEZPZkdVYUNGSnRVejZxcm5jOE9jMTNlOTdvMVVXdTQ2MGN0ZGhDQW44Tlpv?=
 =?utf-8?B?YVZEcHhuWm1pWU85Z0V4Q1hqWWlYT2Y0Tk8wLy9XL0wxbmZuVWdDQWh1R282?=
 =?utf-8?B?cUd6dkhoSU5LS1BzZTRMSFNaWk9wYVBHSnkzVUlTd3NRZnhZMGwzZDJjNmFj?=
 =?utf-8?B?TVJoaUZkcVF2L2ozeUJsNGpyMGtvVWRDNHc1Y01CVTkrOFc2YnNab0hnQlRs?=
 =?utf-8?B?SHZmSXNGNkhva2NxdUFvUllBeFp2MW9lWkNHeCsrQ1lBQ1NRMHMzcndnQTRN?=
 =?utf-8?B?OHBSdUxmVjZTQUJQdW1iTGF2WTJxOGhNeUZxOXhpL29wcTBLalNVc081OXQ0?=
 =?utf-8?B?Yi9ZMjhoQS93S2ppRHlBcnRVN3F0cE1DZlZjNSsrUi91ajUrempyZXFJY0J4?=
 =?utf-8?B?U2lCWFB3UzJHaXduK0pNMHlWYTY3S3dOWmpmK2FydTVDUmJEL3M2d2dSeGVJ?=
 =?utf-8?B?dlFuUlBjU3NuOXVkZTA0WjNPODBQcVlLaFIwUXFaYVN5S3N6L3U0L1BhZnA0?=
 =?utf-8?B?WGhWcHExeVpScXFGRFEvb3RHZTRzNVB3UnBIU2tIdXFsa0VON3pZR1QrVmUx?=
 =?utf-8?B?dVFTSnUwZGRxT0VhdmFDTUdYSGZlRWZkUkFBWXduNDBSWTZLL29rRzlaSmIv?=
 =?utf-8?B?Mkh2dnNudTVoZE5JZ3JjL2RTd1NkZmY3ZkRHd2JkTHZKMFBsaW9EOU53a05q?=
 =?utf-8?Q?gv7nDlbs1ZNpsAPpy1wFZSdPDWAt0Y=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aW9GR1g3MWE5M2o2cVJVU2lCTW9YVUo4VmYvczVNUXJQNE54TXNiK3h2S1VV?=
 =?utf-8?B?VDdZbmJEb00yRVg5Z0NpTmVYaUJaV2Q1SS9LZ0xTM2xQUHpCNndnSnhGd0Nj?=
 =?utf-8?B?QkVEanJTcjdWRU94VTZSZVFwcUpJME52ME5ob1NHU3lnSkoxUFdTL0pnOGlR?=
 =?utf-8?B?cEZTZFdZT2ZIU1NucndwL2pVdGNLSUJwbWFSR3JXZTNEdkIxYXE2bXpqejAv?=
 =?utf-8?B?T09XWngzcDlRTFFpaU1OQmpSWThSRGEzNS9BS1pRZHl1N2M3NXdRdlIyQ0JI?=
 =?utf-8?B?ZCtDVHFTYmUzTThYWFpPK09WWHVJVEluaHFkMjRUOFk4VkN6Qnh5eGRsQnhH?=
 =?utf-8?B?WEV0aTNNSy95K3hWWnhSSGx5UWxTV0JDMTh1cytCMEx6OTdma0F5SWgrejR1?=
 =?utf-8?B?RldEVVlMdW85NmdONHBBTU9iRlg2VXI2RzV3RzFmRXVFQUFPRjNSb3N0Mnp6?=
 =?utf-8?B?QzJmb01IWk9ibkhqT2dSUjNYWEhOWS9MczZleFdsNGlpZW9vdWVFNmUxSUdz?=
 =?utf-8?B?V09WeENkcTlldGw1K0tRbzdzdlY3M3g2cEEya05sV1NldU5pSzF1b3ZnWFha?=
 =?utf-8?B?dzNaQ0VPTUJXYU5xME4yUW90clBia01TNlRvM1F2eGwxNmpQZjFZcUFheStw?=
 =?utf-8?B?Y0VFeUhETUJSV2NmWnRYVjNtbjlnV3FzY2xuTGNQL1FkZGlqeDFzTWxSVmd1?=
 =?utf-8?B?cVZ2OUdIWUJTVEpZcG1tZDlSY0V2bjBVczkrVFU1VGM1bXZVak9aMU1PTmNq?=
 =?utf-8?B?c29mb3dCRmR3TVF5SW5mbGg3U1JCUXkyUHIyVncyOUFoOU9uMkppdzRnMk52?=
 =?utf-8?B?YmxlbEhZajhHOVlSdGdxUzJ3b3hQalk0bjlVNEFOWmNaVjlBSTJnRDR5OCtk?=
 =?utf-8?B?UmROUXBxTTRMVjhWVEY3a2doK01LcjlIS0Q5bjlwUWZIMnZCcVliNllzZVN3?=
 =?utf-8?B?bzBIeW9HUng4V2pVTi84Y3FDTXAzR3BLT3ZVNW5yRWFhYmZBVzFSVUdKcWNa?=
 =?utf-8?B?ejRodnlyZG9kS0haSEl0QjJINDh2QXZvbTIrVENyZXRKRDVHQUNnRE1od0tt?=
 =?utf-8?B?U0J0SDh5aTkrNG5ob2hkYlNTWnNYYnBkQnlUQ25TRUFKWGRKQXpsK3hFQ24w?=
 =?utf-8?B?dXliemhMM2Z3R2VoUlZXRkg5U3c3L2k5SFY1MC9QWGlQUndEQkhDd3BQcmxX?=
 =?utf-8?B?cU90THNiZzZrQXhaMnVaWERJd0JlUXRKdnJZRGhiUlFyQkxtMTBUZzNSSEZh?=
 =?utf-8?B?WXhLNS92ZFNFVGo0R2gxZ2JYa1RobEZlYk1HTUozcGgyRm5hS2ZDUXFwL2dX?=
 =?utf-8?B?Mm9DbGpOb2tEWHNoOW91cWd4eFBKSVp0MWZ0VnhkWWVNYngwNDN0aWFZYmZ3?=
 =?utf-8?B?VDR6ZG1VdzVabTNlNkprcnIwTFpFcDlNNmM2amtZeGZlTnJkWWlvcFlCbzdU?=
 =?utf-8?B?SFpFTTA5YjVuN05PcDNVbzlJUnlkQXgwUkNOam44Q2IzOGtYUC82bDZRUUQ0?=
 =?utf-8?B?YWd4OVpuYi9mdVRuNVk2WHczL1NUTWYxNVpUY1NLNXBramVkVnRsQmVQbHM5?=
 =?utf-8?B?MlJvRTkxYTFlT3J5enBwOE1BUHhCQkhCSVVGNG8yNlUrYkxXRzZWSEhSWk9G?=
 =?utf-8?B?ZFVmb2V2dE1lYi9mY1ZDd0FNSXVJZ0oxSmNQdUczaXNKb3VLNmZKbjd0dGho?=
 =?utf-8?B?Q0VMa0FLUEU2cU5KT2QzNXFYYWxhekpkRzRVdTBodVNQdkUzVlFvbUUreHlP?=
 =?utf-8?B?TGZEVnh3cTlkbmUwbSs2SDhxNjJsSXFSUXVBMnBSeWhuYlgwZUJZRWs5OGRR?=
 =?utf-8?B?K29XeXNoMFpneVhmTlJndURZOXY5a0NGTWdQekVTU0lLQUZSWStVejJtS0pi?=
 =?utf-8?B?RkVtMlhaRnlaWnpnUXBxMTN2djlBTjJmSDZIOTVXeENNTm83M0hmRTB3NDM5?=
 =?utf-8?B?MEFlNUVRUlB1Z1pWVThGZ1NvRFFxN2FJbEs2Ny92WmdhRFVjLzk2T01zUStG?=
 =?utf-8?B?UnJFT1VSaHFMMDZkeDRqcG45Ly9rTTlwUWZhaEhQQ21FUEU0Y3NqaTdHMktn?=
 =?utf-8?B?WjA5VXZ6d1VpaHJpZFVUUStiWGhtWERiUTBkSG1LYlJSbE1vUTZQTy9vTzgx?=
 =?utf-8?B?WWEvbElHUlBwVmdVM2F1MGpkMU5wZThQYzhLWWpFbDN2bDRST2RWYlJNZ0l1?=
 =?utf-8?Q?/UQJwWSAK3M5COSCGFW34+s=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D98AF9D1D07C9C42B2A760D1A9E72D94@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb98d91f-981a-4019-6d92-08dddfaa1aca
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2025 05:26:24.3305 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lo0nFWkwwZP+uuPur7H/7bvIenQursTX6ceBncvWNhqya/u9EyTsIrjI0Ra+IWF3kyXkTDc4fjgyXaFaVNfSe2mqv48UWg1Rwu4D8EWQIpI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5060
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

T24gV2VkLCAyMDI1LTA4LTIwIGF0IDEwOjE0ICswNTMwLCBVbWEgU2hhbmthciB3cm90ZToNCj4g
RkJDIHJlc3RyaWN0aW9uIHdoZXJlIEZCQyBpcyBkaXNhYmxlZCBmb3Igbm9uLW1vZHVsbyA0IHBs
YW5lIHNpemUNCj4gKGluY2x1ZGluZyBwbGFuZSBzaXplICsgeW9mZnNldCkgaXMgZml4ZWQgZnJv
bSBBREwgb253YXJkcyBpbiBoL3cuDQo+IFdBOjIyMDEwNzUxMTY2DQo+IA0KPiBSZWxheCB0aGUg
cmVzdHJpY3Rpb24gZm9yIHRoZSBzYW1lLg0KPiANCj4gQ3JlZGl0cy10bzogVmlkeWEgU3Jpbml2
YXMgPHZpZHlhLnNyaW5pdmFzQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5r
YXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDQgKystLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZmJjLmMNCj4gaW5kZXggZDRjNWRlZmY5Y2JlLi5iZjI1NzQ2N2E2MzUgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBAQCAtMTU1
MCwxNCArMTU1MCwxNCBAQCBzdGF0aWMgaW50IGludGVsX2ZiY19jaGVja19wbGFuZShzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gwqAJICogaGF2aW5nIGEgWSBvZmZzZXQgdGhh
dCBpc24ndCBkaXZpc2libGUgYnkgNCBjYXVzZXMgRklGTyB1bmRlcnJ1bg0KPiDCoAkgKiBhbmQg
c2NyZWVuIGZsaWNrZXIuDQo+IMKgCSAqLw0KPiAtCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+
PSA5ICYmDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDkgJiYgRElTUExBWV9WRVIo
ZGlzcGxheSkgPD0gMTIgJiYNCg0KTWF5IGJlIHVzZSBJU19ESVNQTEFZX1ZFUihkaXNwbGF5LCA5
LCAxMikgaGVyZSBhbmQgYmVsb3cgYXMgd2VsbD8NCg0KQW55d2F5LA0KDQpSZXZpZXdlZC1ieTog
Vmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCg0K
PiDCoAnCoMKgwqAgcGxhbmVfc3RhdGUtPnZpZXcuY29sb3JfcGxhbmVbMF0ueSAmIDMpIHsNCj4g
wqAJCXBsYW5lX3N0YXRlLT5ub19mYmNfcmVhc29uID0gInBsYW5lIHN0YXJ0IFkgb2Zmc2V0IG1p
c2FsaWduZWQiOw0KPiDCoAkJcmV0dXJuIDA7DQo+IMKgCX0NCj4gwqANCj4gwqAJLyogV2FfMjIw
MTA3NTExNjY6IGljbCwgZWhsLCB0Z2wsIGRnMSwgcmtsICovDQo+IC0JaWYgKERJU1BMQVlfVkVS
KGRpc3BsYXkpID49IDExICYmDQo+ICsJaWYgKChESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAxMSB8
fCBESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAxMikgJiYNCj4gwqAJwqDCoMKgIChwbGFuZV9zdGF0
ZS0+dmlldy5jb2xvcl9wbGFuZVswXS55ICsNCj4gwqAJwqDCoMKgwqAgKGRybV9yZWN0X2hlaWdo
dCgmcGxhbmVfc3RhdGUtPnVhcGkuc3JjKSA+PiAxNikpICYgMykgew0KPiDCoAkJcGxhbmVfc3Rh
dGUtPm5vX2ZiY19yZWFzb24gPSAicGxhbmUgZW5kIFkgb2Zmc2V0IG1pc2FsaWduZWQiOw0KDQo=
