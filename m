Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE253A34FE5
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 21:49:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBE0910EBA5;
	Thu, 13 Feb 2025 20:49:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GRX7L6pB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B2B010EBA1;
 Thu, 13 Feb 2025 20:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739479790; x=1771015790;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Ow09QzD89ptd6KOavQhnblp3m1IH153/pOqA/KhP9Ys=;
 b=GRX7L6pBULSQzgRruYUeROAUUnWefGC9EMewD9ipTC8ZuRahDZUTNq/Z
 G6fNnmkvsIhkZF+dHIdHY0HWxtC2sjamweGT+4zZkTB7cfi2Z+EWC0/hQ
 4uPCbptuiP4wSzkLQ24NujuHihqqsBYGe3VRKfaX/iFy28EFvCB0A22+j
 rj4mFEQagLCHlyFfplQUeM6/aMP7HmnP4njV3d8Q/xkqB7lrPNErhozoV
 B/Z0uAy2psDK3XLBN0fd390xYIrelSbJVNGR/wXgNgR3ekpxIvajLAPw+
 l/e0N+hjh99dIZATHdpa4NKpE5blrtm89CD+YDOkZ+M4mCSFFL4AahIQf w==;
X-CSE-ConnectionGUID: 6g5gtlD9QB642BfWOBiEPA==
X-CSE-MsgGUID: Ev/Pzko+S8She7tN/anSEw==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="40135068"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="40135068"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 12:49:49 -0800
X-CSE-ConnectionGUID: JAavXWVUS0SKsCSCBl/4BA==
X-CSE-MsgGUID: JtxsW68XQ/iQtObmoBSi+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113438447"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 12:49:49 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 13 Feb 2025 12:49:46 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Feb 2025 12:49:46 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 12:49:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OUp60AGLgZIHxb+eZ8YP1ZNc5K3Gzefc126gBi+Mf0U5SjHFpKoPqET+PJ95sv/3vuJQpynBq+iNMkr/Wt4cwvGDZ5ODUl2lQpopI4n+PEp7ASRql55DSmIaIqShrinf1WT6xIHf28d7G0I+sYlYVeC0EAOgQ51s7khiwr1vEVH3yolNKYrL5GMvSlZ2zrkjB+ar8byRsp7SLkp4/F01w28xB1PTYWdoorsoh+9BNVZHn0FQ5X0bb9+OsQrXhUmJ2r6JrJgfCPcDtPaQ8/HKgY6t9Ct3GgzPR/ruJr8XqKHHyxeXDQvdUy+KogLnOhqkqbTzJqzC11RF1ICLqwOwTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ow09QzD89ptd6KOavQhnblp3m1IH153/pOqA/KhP9Ys=;
 b=GSl2dXf3p9I3F3N/FRv5oaiJev7y6WRt438FBp7aotqN+X0PzF87wd9GupKmK+T0sJxjySHCJXXaYov0LFkFoII3o04mpEbgCGMhevc3cMGu8MgHBTCWE8cfbOmOBkO4otvfmoFkNTl0S2wR3F+YSChC39l8DKLg9IjpdS7UkiV9EYsu/ZF8xuxLxbjvHn266A85U7szkQwAroGArA0hL5WVrJRbOKTSFYpIZ8PKQAqm8L9gLNHbQdUNdL1JG84udO4wvI7H4VGO26vCs2MnraHkLa5GFyT+b6KHTdBwDou+XHvwrX6kjL2I1jORzwnUKVzqRcOdeww72ZfwnHKM2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CH3PR11MB7297.namprd11.prod.outlook.com (2603:10b6:610:140::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Thu, 13 Feb
 2025 20:49:15 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8445.013; Thu, 13 Feb 2025
 20:49:15 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 7/8] drm/i915: Un-invert {i9xx,i965}_error_mask()
Thread-Topic: [PATCH 7/8] drm/i915: Un-invert {i9xx,i965}_error_mask()
Thread-Index: AQHbaD7qkhLT9+eWF0aVoPe6tJ+B+bNF4P0A
Date: Thu, 13 Feb 2025 20:49:15 +0000
Message-ID: <5d2c6174c7f7a7b8e3160ea624451f0c7b48ebfd.camel@intel.com>
References: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
 <20250116174758.18298-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20250116174758.18298-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CH3PR11MB7297:EE_
x-ms-office365-filtering-correlation-id: b0be4eb5-7b76-4166-7cf8-08dd4c6fe110
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?SGVKK1hsNVJEaFBKR3hPQ2xQWW8ycFBreUd2WVhsMk5MT2I2NUsyZ3lnajVR?=
 =?utf-8?B?Rmh4cXRyMURwb3VmVWl0aHZ1WW83U3lHelJQMmVtL1BUQkVKQlRyU3pwSDVt?=
 =?utf-8?B?OGNVNGtoQ2RKUU5nTU9UeE93TzFjTXJ2OG92Q3YxVGVDTEErb2MvZng3cmNt?=
 =?utf-8?B?ancwaVZZRDNOMDR4ZHN2MU5yU1RiV2xUMGVqRGkxV2pZMGkyVDVqVGRNeEJD?=
 =?utf-8?B?WkNHOTJHU054dVdtcmFyeUkvMGVrb1J4QTgzMDI2eE1xcndtOXh2aWM1S3Br?=
 =?utf-8?B?a1BVWk5ocVQ0VmVBRFFNb2ZEdFMzR2ExdWhPWUViU2pRdHBnZmVNYmRPMjJC?=
 =?utf-8?B?eS9udHJkVEZQQUhWeVZXdWlpRUUrbGdwSDJpUlczSndSeXZ1c0w3aTc1cUcz?=
 =?utf-8?B?VzF4Ri84ZXVhOFdmdkZXY3REWUV4T0UyUkNYMGRWRFRaV2d4Yjl4VUZ5cHFx?=
 =?utf-8?B?dkh2RnRYVjVkNFU5RE9nVXc4eTkxMHIvZlNlWDdUL3MzM3RJb2hURDVTc1pE?=
 =?utf-8?B?VmRKNGl3ZElxOFdtamNoZGRxeWtLS05XRDZFbVFpTGJKK2gwMVl0OFFPdEpq?=
 =?utf-8?B?S0NlSmVHL0htUU54TW00dHNiaDM5SkxIcmh5UTJvTzU4VE9OR1JFVWZMSHdC?=
 =?utf-8?B?STExMGdqTGdIRGQ5UUZmaUZ2dXVmZS90QjBLd0ZybnBUeDRwNEs2QnFGclV1?=
 =?utf-8?B?OG9JN3g0NzhjVnZ2MnVmd0lMV0h1emJFbjNac25Gd0FrdldwbktnRjBGYzJ2?=
 =?utf-8?B?eEt1RnFPL1VGR2l1Ri8yMW5yb0lXQVpnaHlYUWxDckJTeHlkSmhFLzJsQzFN?=
 =?utf-8?B?UUZ2bngybHQ5VkhoMWltYU42MXZDWWZLdnRYTWhrb3Jid0RSOUNBNFRlT1Ri?=
 =?utf-8?B?L0dxRkRNR29kQXFKUW80V0NEMUNMZmZhbU1jdENNdC8zQWl0RGgvc2ppSFZu?=
 =?utf-8?B?Uyt6bFlENEpmMDdZVlZpV05XVWlIdTVWZ2gxMnM1QnB1enJrUzFsWWUxRWtH?=
 =?utf-8?B?RElDRGQvd25JQ1dCTmFRRW1CNzVuWWltTmY0VEF0SUJ5ck56Vnd6YjRLTXRY?=
 =?utf-8?B?TUdPVGFvSm5IMEcyTlVMUXdDZzJoNnpiN0FvaUg0ckhYV3ZQczJKK3NtaXlJ?=
 =?utf-8?B?V0FqQnd1Wkg1QlBJb3pPaWc1cEtJVWZob29lbWgxVEdWVzB3aW91Z3ZieWpm?=
 =?utf-8?B?VDNwanJvZytsT292R2tCYlNSMDJId0F0Wkd1V3U4a1lMVWlyVW4zUkpJNnBX?=
 =?utf-8?B?bDFlc1U4M1QrNWl4aG9Eb3RXS25DcUJJdGcxYmd1V25GRmJydE5UZGdXem5J?=
 =?utf-8?B?QTlyaXNocmIrSHg3Qi9ZVlYxK2VPSVNwZmdnRTEySnRNK2FFN0tCekk4QkZl?=
 =?utf-8?B?c0xERjh3cmdLYWlXWU50L21sNWxVdkY4T3JSOUIrZ2VId1BDU0hlUE01VUFW?=
 =?utf-8?B?dWt5YnRuRjdZQk9GTHNBNUdDNjdaZjExbjZ6TGlpWkxOajIvdDNJOGVUM09h?=
 =?utf-8?B?Z1hJbW1mdnMxNzZrektyaFRRWUppbHVROFU4S2ZMUU9kWXBtTGtlYmhnQ0ZT?=
 =?utf-8?B?ZVZuZjBjd2lFUjQ3bXNrM24xSTJ6Y08vcU1lNDF1T2ltcHMrZEx0QlFoek9v?=
 =?utf-8?B?Q2wxZW02Z3RMMzM5YU5yc0xONnRzNTZ0WHl2Z2t0blE3SHMwckdiWXJ1bER4?=
 =?utf-8?B?TlZKUk1hVEJEd29iZjBNbVpLTjNWZXJnU1A5YkE5bGhBSjNFelJUTWI5OUxi?=
 =?utf-8?B?eHVwSlV2NEc0Um4rWnBJWFBheUt4KzFJVkp5RnpYL1BmdFRSU0g4WmsxYkxJ?=
 =?utf-8?B?MThtdDJ3QW15Qm02aHRISnZZN3pPcEJGVFFQV1B0WjdqU0tUdXZNTjJBSVVx?=
 =?utf-8?B?cjZlMGxCU01aRCtUS3pNNzVUM2JsMlJxZE1JVVFHZTN0aEZrYXBnY2ZFNVBR?=
 =?utf-8?Q?huBkB5FBlXkKM5etzVbwZQUKJ58cudXd?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bEt2RDJYSDNsNUFwYVpyK1hjano3Ri92Y2NwRUNSc1hMbGhCTFh2M2xncnpY?=
 =?utf-8?B?YTVKVTJjWmhWQ2hTMDFIaWdLcjVqZ2NhV3lXbSt4QmRMQWxQVUU4THNsaGR2?=
 =?utf-8?B?QjMydUMwRnF5QjJiNERmWnNLMWhMc3kxWVlESmh5MXhJRTlSVUFLMng1ZC9E?=
 =?utf-8?B?VDh6enZ1RWhGZnJ6T3AwS1J1VmtIeFI2Z1pVWmMxbUpjUDZKMnArMkJ3ZVc4?=
 =?utf-8?B?QzZFenJ3MURkclQ1NEZqcFNkaVdYWkhnU0xWc3A1OHp1RlpMSWM5bWthZjJR?=
 =?utf-8?B?bkJRUlFvcVk0MWc1SlJaYTV4L081cW1WYUo5RFBuMWtMeVZQek1wcktVZ3p5?=
 =?utf-8?B?V3hUdUo2cCtrKzhVT01qQUZ4ZmVWckJWU0Q0TVhQLzNUZHNaOGVHN0o4NzBM?=
 =?utf-8?B?ZDFQTFhwNjZYNzdxc2I2R0JpUHNpTVJldXlUMi9QeE1xc0Q4dll3ZkpGSmRT?=
 =?utf-8?B?bEMyc21wZThiMlZFaTFRZ1J2NHRHSlkzeDFjWHcwVlhha1hRTXpZUXFhREs4?=
 =?utf-8?B?RXVvcmNzQlpIcE50QTVMSVRHUEhrZTFIUnJBNGlKU2plU0lWWDl4TkJIcEhz?=
 =?utf-8?B?VWdIM0lyRDNaZmVtTFpHUlhJWjRzdHMvTkd1eXZDemlzTjc3ZWxWOHcwdGJ1?=
 =?utf-8?B?Smk5NFNEVlJ4OURjL3YyNFI3UTBmQjBNNU90eThwZHpmck40VkRXYkp2ZEJE?=
 =?utf-8?B?RFp6MEV5ZlpscjNuaEJsWnZSUTlPMDJvajMyN1k0WDBMQTVCV1FWT2Z5emhn?=
 =?utf-8?B?dUI4UnV4Q0xSSHhXK09CaW83bnBHSWdOdTMyY2psUzhkNGJIbTdMVEVMeHRr?=
 =?utf-8?B?eko4MUtsMUo2NlZMcWJsYXl3OU9kYW83MWx3d2Nqd2xXT0R1YjkyL3p2ZW14?=
 =?utf-8?B?c1hyY1hXeTNXdk9MbjBpSG9WZ3Q3YjcwbWFPaXBnQlhnbDAzYWtyVnNsZjI1?=
 =?utf-8?B?NVdBUGpaYUJSaGdkM21yTjhidUN0Y0lQaFdpLzhrZWRTNU9ibi9HMCtZSFBL?=
 =?utf-8?B?VkdPRnRvYUJUZFp2dlNWa2FUK05WYzFMeUV2c0dDYmNOUGpZNWpXdFhMOTVN?=
 =?utf-8?B?LzhvWlY1cHdsMmFVU2g2MGZhUDZCMVM4MnZBTjBmdDE0K3FIUHZSaHdTeVBh?=
 =?utf-8?B?Ri96bG9mMFVady9UTTIyRWdKdjZoS3kydE9wZElxSjRlNXphVXJ3ZzdENzNi?=
 =?utf-8?B?TUV3d1RUSkdRWUYxNlBqRUN3WUllWTdXQlYrWXFEdnRQWmI4OS8zQUhDZkd0?=
 =?utf-8?B?aUVXY3ZIbHJLZlBVRDJUOVlPcHZRaytNS0dtTHlKS2pXOGRKWVpITkJOVVhl?=
 =?utf-8?B?bFZJU2hnaXpsTWNlelc4NFo3SDdSOWJwcXZhWVY4aTAzZzlYVVZpTkV6SVN0?=
 =?utf-8?B?V1BkT3lLRWNrSzlRNFVJcVVBbVFLRjdrY3pQVkNDbEFzNFNxM01BcXFGcGs4?=
 =?utf-8?B?Z1Zhb2VBM1dtaTBnMkJsMkdhUjh3WU05N084Ynk5VU13ZVVWVGZ0bUgrRXN0?=
 =?utf-8?B?Z2xBZXpvcHNtYUJNa0NPMy8ySFBBU2srQkNwV3lyVEJrWXB2VXVZRG50Y3pP?=
 =?utf-8?B?TDdGcnNXRXFqWVVNZ25LL01yeTluZElWdjNVQXRZMWJHRkhYZlloLzVmTEZB?=
 =?utf-8?B?Z3ZqQVJzWWo5WUN4YW5PUndvOTlSWFZQUW9KOFRYRXoxb2IzczZrT3hPcWJj?=
 =?utf-8?B?V0lwZEVVMnlDdzRqYmhaMnRzZHhSN3N0ZEkvYS93UGJGak11RVdYdW8wTWVD?=
 =?utf-8?B?enA3RU84bGF0NFdMWENsUjNqMEtpNHl1RGlTb0tqV0V5Q2VFTUpGRkc1V3pY?=
 =?utf-8?B?UUhPeDRzczd3QVEzU2VIN1MzNFpmTUMxNzhNZk5JSThTZldhZkFneFdkWlBQ?=
 =?utf-8?B?UjQ2UG9COUUvUlFQdDRPT1ZWZkM0RXRMdWtzblc5UStJc2lYM0JmeUpJQS9i?=
 =?utf-8?B?aUlBc2xHRXVNQlN0OXdjNVBWbkd4VmNBSDBUbENkaFNxdFlEdFl5akJ6U0pl?=
 =?utf-8?B?bHZTMzhXWlBnVy9nNHdvdGNIL2phTVJ6NWd5S3UvSklKRHRHSlhUMHdLb3lI?=
 =?utf-8?B?anZmZ3VaUXZ5UUJOcnJhSWY1aTJrb3BXTGtLUGNqQmpJcktsdU1SL3JGaVkr?=
 =?utf-8?B?UVIrMUY1MTVzMnB4ZjYxRms3VmRLM241QXRGUERIdmR5NWZxQ3JnV3RsNWU4?=
 =?utf-8?Q?KzvQ/O1SdB8T9+xSPot3/8g=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1E8B2E6644030D428BCA8BBA52F6BF20@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0be4eb5-7b76-4166-7cf8-08dd4c6fe110
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2025 20:49:15.7100 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: syfz4VN1gwxVYpAwb4q26/uDI1I77ZYfeiMEG8fUNSNRrdM8zOZcaSxfmXVvdI4L3PVwa1WyTyQJYYFXUxXer/cz729MCYmXWBzXFq1G2xk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7297
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

T24gVGh1LCAyMDI1LTAxLTE2IGF0IDE5OjQ3ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTWFrZSBsaWZlIGEgYml0IG1vcmUgc3RyYWlnaHRmb3J3YXJkIGJ5IHJlbW92aW5nIHRo
ZSBiaXR3aXNlDQo+IG5vdCBmcm9tIHtpOXh4LGk5NjV9X2Vycm9yX21hc2soKSBhbmQgaW5zdGVh
ZCBkbyBpdCB3aGVuIGZlZWRpbmcNCj4gdGhlIHZhbHVlIHRvIGdlbjJfZXJyb3JfaW5pdCgpLiBN
YWtlIGxpZmUgYSBiaXQgZWFzaWVyIEkgdGhpbmsuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgMjIgKysrKysrKysrKystLS0tLS0tLS0t
LQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkN
Cg0KUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlA
aW50ZWwuY29tPg0KDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMNCj4gaW5kZXggMzA0MGMw
MDBmODM3Li5iZDU5NTYyNjJjNmQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaXJxLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiBA
QCAtODM4LDEwICs4MzgsMTAgQEAgc3RhdGljIHUzMiBpOXh4X2Vycm9yX21hc2soc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+IMKgCSAqIHNvIHdlIGp1c3QgaGF2ZSB0byBtYXNrIG9m
ZiBhbGwgcGFnZSB0YWJsZSBlcnJvcnMgdmlhIEVNUi4NCj4gwqAJICovDQo+IMKgCWlmIChIQVNf
RkJDKGk5MTUpKQ0KPiAtCQlyZXR1cm4gfkk5MTVfRVJST1JfTUVNT1JZX1JFRlJFU0g7DQo+ICsJ
CXJldHVybiBJOTE1X0VSUk9SX01FTU9SWV9SRUZSRVNIOw0KPiDCoAllbHNlDQo+IC0JCXJldHVy
biB+KEk5MTVfRVJST1JfUEFHRV9UQUJMRSB8DQo+IC0JCQkgSTkxNV9FUlJPUl9NRU1PUllfUkVG
UkVTSCk7DQo+ICsJCXJldHVybiBJOTE1X0VSUk9SX1BBR0VfVEFCTEUgfA0KPiArCQkJSTkxNV9F
UlJPUl9NRU1PUllfUkVGUkVTSDsNCj4gwqB9DQo+IMKgDQo+IMKgc3RhdGljIHZvaWQgaTl4eF9l
cnJvcl9pcnFfYWNrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gQEAgLTkw
MCw3ICs5MDAsNyBAQCBzdGF0aWMgdm9pZCBpOTE1X2lycV9wb3N0aW5zdGFsbChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+IMKgCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29y
ZSA9ICZkZXZfcHJpdi0+dW5jb3JlOw0KPiDCoAl1MzIgZW5hYmxlX21hc2s7DQo+IMKgDQo+IC0J
Z2VuMl9lcnJvcl9pbml0KHVuY29yZSwgR0VOMl9FUlJPUl9SRUdTLCBpOXh4X2Vycm9yX21hc2so
ZGV2X3ByaXYpKTsNCj4gKwlnZW4yX2Vycm9yX2luaXQodW5jb3JlLCBHRU4yX0VSUk9SX1JFR1Ms
IH5pOXh4X2Vycm9yX21hc2soZGV2X3ByaXYpKTsNCj4gwqANCj4gwqAJZGV2X3ByaXYtPmlycV9t
YXNrID0NCj4gwqAJCX4oSTkxNV9ESVNQTEFZX1BJUEVfQV9FVkVOVF9JTlRFUlJVUFQgfA0KPiBA
QCAtMTAxMSwxMyArMTAxMSwxMyBAQCBzdGF0aWMgdTMyIGk5NjVfZXJyb3JfbWFzayhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gwqAJICogc28gd2UgY2FuIGFsd2F5cyBlbmFibGUg
dGhlIHBhZ2UgdGFibGUgZXJyb3JzLg0KPiDCoAkgKi8NCj4gwqAJaWYgKElTX0c0WChpOTE1KSkN
Cj4gLQkJcmV0dXJuIH4oR000NV9FUlJPUl9QQUdFX1RBQkxFIHwNCj4gLQkJCSBHTTQ1X0VSUk9S
X01FTV9QUklWIHwNCj4gLQkJCSBHTTQ1X0VSUk9SX0NQX1BSSVYgfA0KPiAtCQkJIEk5MTVfRVJS
T1JfTUVNT1JZX1JFRlJFU0gpOw0KPiArCQlyZXR1cm4gR000NV9FUlJPUl9QQUdFX1RBQkxFIHwN
Cj4gKwkJCUdNNDVfRVJST1JfTUVNX1BSSVYgfA0KPiArCQkJR000NV9FUlJPUl9DUF9QUklWIHwN
Cj4gKwkJCUk5MTVfRVJST1JfTUVNT1JZX1JFRlJFU0g7DQo+IMKgCWVsc2UNCj4gLQkJcmV0dXJu
IH4oSTkxNV9FUlJPUl9QQUdFX1RBQkxFIHwNCj4gLQkJCSBJOTE1X0VSUk9SX01FTU9SWV9SRUZS
RVNIKTsNCj4gKwkJcmV0dXJuIEk5MTVfRVJST1JfUEFHRV9UQUJMRSB8DQo+ICsJCQlJOTE1X0VS
Uk9SX01FTU9SWV9SRUZSRVNIOw0KPiDCoH0NCj4gwqANCj4gwqBzdGF0aWMgdm9pZCBpOTY1X2ly
cV9wb3N0aW5zdGFsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+IEBAIC0x
MDI1LDcgKzEwMjUsNyBAQCBzdGF0aWMgdm9pZCBpOTY1X2lycV9wb3N0aW5zdGFsbChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+IMKgCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVu
Y29yZSA9ICZkZXZfcHJpdi0+dW5jb3JlOw0KPiDCoAl1MzIgZW5hYmxlX21hc2s7DQo+IMKgDQo+
IC0JZ2VuMl9lcnJvcl9pbml0KHVuY29yZSwgR0VOMl9FUlJPUl9SRUdTLCBpOTY1X2Vycm9yX21h
c2soZGV2X3ByaXYpKTsNCj4gKwlnZW4yX2Vycm9yX2luaXQodW5jb3JlLCBHRU4yX0VSUk9SX1JF
R1MsIH5pOTY1X2Vycm9yX21hc2soZGV2X3ByaXYpKTsNCj4gwqANCj4gwqAJZGV2X3ByaXYtPmly
cV9tYXNrID0NCj4gwqAJCX4oSTkxNV9BU0xFX0lOVEVSUlVQVCB8DQoNCg==
