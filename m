Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E048B5703
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 13:45:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF21C10E901;
	Mon, 29 Apr 2024 11:45:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S3HeUPZm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B260710E901
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 11:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714391119; x=1745927119;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=PjgzVoiYkmqzQS0EHhOoSghYxUCA6SUcbc5owGOLNIQ=;
 b=S3HeUPZmUZN8bQxUE0yCTI38MRYbj7JK5qHeTUCmZTN+/Q9uQCqPG+LF
 i7pwkMA7+M6QRG5h9OnCMuAA7XXCWauT9xUHZSgkLS/lWox/Uz5o20X2e
 O8+tyaePmFHUHB9jJ36M420QPmxlsOPFvgrGFBfsNHsxhRZMZ7hmbBSuq
 k0gKUCPQ/CqIj52ZnNh8SKo7aHgk9wxo57udI8J5AY09Xo2pY0tBkb4gy
 A0FCq+oV960DYrLDaLzP4VjGvY5WLJ4pp1qp4Bdyo25/paCbg3bnOn2xc
 xg1cyLbAs9MC6hrl/raCAgb3GhYeSWeBiKHtsLXT7Qvu525TBDWcjNbax Q==;
X-CSE-ConnectionGUID: JKuXK4SzSSesGgj7cIhHUw==
X-CSE-MsgGUID: D+WUffXCQ3yWRd8c6DGlRA==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="9875356"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; 
   d="scan'208";a="9875356"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 04:45:18 -0700
X-CSE-ConnectionGUID: /AGMM/pPQFG20cH0En8UPw==
X-CSE-MsgGUID: PjZpVQAHRX6WupR869qLqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="63562585"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Apr 2024 04:45:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 04:45:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Apr 2024 04:45:17 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Apr 2024 04:45:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MOQnDW4lxMDIgDZajG/ZCss1wB24pDa4IpSzUn+V27oNHMNO3Eom/PBU1rIl2RYZfgdKL2OZyz/k3qS8wNKdDzQevdwgNxAKQWwcFYKs5HQ/SanEARkSSdyPlRVSUqCsEhmcmlNXPPpZtUNynUKVpPPWp00Isq4IAjuDv/7HIQgKqlGQPwtq9XjE7EWqF11X6h0L0OLMlYoGSgn2LD7Wpz18oeljzEMgMVEX+lLqZhRRgZiaBDdrsVdxKY6BcvAWXgzuRni1dOIrtcG4oFCe5N44Uml/9EYHaO9G638MAnF1vjyiLCmJYPg8Pef7MsHpsBJU3GvsMJ5PAu1LNNRFbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PjgzVoiYkmqzQS0EHhOoSghYxUCA6SUcbc5owGOLNIQ=;
 b=EBfmEu0FM2Q21ngQuj+TjaRCx+dC3Gr7y98QBsZHeDe61kFQQdi/hJjKv1UlgerGhANGVA00KVWJv9eHnvh9UmfNSo8RXc5hTt2jANNdBqHOuiOV/qbFn174TemC4xLheH46QCZpLIahUhfsT7oftFaYdsq+7sxk+npZcRtrnV89tSNSdTR8zROCtv+7j8DLT/C5yMtE65LbRSj9/Q8o/mr3zT0zNCRrfjK99TCtEJ2CQ6EZ7QpRuKBvY7EUdUgq/n0Hy7SAPB4TXOOWIsO5QMGJQ8TdbCXq1UWoObMyyib6Z/JAOMh0PULp/voNxTNtFwSNiOyoLgh9VftWYD9a6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS0PR11MB8181.namprd11.prod.outlook.com (2603:10b6:8:159::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Mon, 29 Apr
 2024 11:45:15 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7519.031; Mon, 29 Apr 2024
 11:45:15 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v7 06/11] drm/i915/psr: Modify intel_dp_get_su_granularity
 to support panel replay
Thread-Topic: [PATCH v7 06/11] drm/i915/psr: Modify
 intel_dp_get_su_granularity to support panel replay
Thread-Index: AQHaklLS6AOHT6NrOEeP6fOj2o8397F/IpaggAAGHICAAAMFsIAABFzg
Date: Mon, 29 Apr 2024 11:45:15 +0000
Message-ID: <PH7PR11MB59810DA6F96CA4FA0127A3B7F91B2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240419121141.2665945-1-jouni.hogander@intel.com>
 <20240419121141.2665945-7-jouni.hogander@intel.com>
 <PH7PR11MB59810085CCECB6DB47C1E2C9F91B2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <7a26db3d48f6410e5b554c4417e397e18635f295.camel@intel.com>
 <PH7PR11MB598134A474544762E5A725FBF91B2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB598134A474544762E5A725FBF91B2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS0PR11MB8181:EE_
x-ms-office365-filtering-correlation-id: 4b76034c-9561-4103-a4e8-08dc6841d5f0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?b1VCSXJjYVVzLzN6RTB2QUd0dXlKWTFrc0pWMjkxazcxUllTT2R6MHl5MEtl?=
 =?utf-8?B?WENPaHRJeXM2ZVVxS0w3em1XNWZJZVpUV2tXRzl5Y2dnMHVoQ1VoVkFKaEZi?=
 =?utf-8?B?K3FEY25pKzZUaHovcFpnd3FtZFhDcEM1UzZadm0xSVhlaHcyNSsrYks5TnFL?=
 =?utf-8?B?TTRqUTlJZTVId0l6cFNmbVJkb0RQMlYzTlQyTGJkcmdpbGNZZWJOVGVSOVVa?=
 =?utf-8?B?a3V2WlM0b3NaQ2JaSWV0eHZpNTAxcVorbXREam5mRnBJZXM1SVBrT1FQSUYw?=
 =?utf-8?B?bzY1SmpwSzRhMmlSaU04czI3dk1ocUxKTW01MHI2cldMenNqbVJIR09qU1VZ?=
 =?utf-8?B?MVlEeEhxanEwUkYyMG5mK3FNYS90bkoxeDBBSEQ0ZDhhdzd1UjhVbFpUSTk2?=
 =?utf-8?B?Y2YyaWVHOGV2SzEvYzMveE9LRWM2MmJOZ0FkaCs2eWRNeS96dHJlNkx1S2g3?=
 =?utf-8?B?RmJ4a1dSMFRsQzFFc3B1RnNQemdsSmhEdEExL3JENkpVeXdCUmJacFlzNW1O?=
 =?utf-8?B?cVljclkyeVZCRDR5Z3lmZVRFSzI1dk9IU0h3S0F0TEsrWGhHRWZzYWZMUmdQ?=
 =?utf-8?B?ZnB6RjBSekx5OVFZVHdZWmNBeWZNWFVjS04wRkhjaVFXWUhOMW9iWGR0aXdk?=
 =?utf-8?B?REozQjA5QlVUd3p1Y2hIUDdzeWI4c1R0MHlvS05mMUFBaVV6NlRSV3FmWXZL?=
 =?utf-8?B?QWpWMGpsT1JnK1g4T0NiWW83L3VrUXBWdnA1YjlneEU5S3Vrcm5yZ1M3cmZq?=
 =?utf-8?B?WXZmUWxJb0duTmcwUmhsb0FTN01iZy8xcW5PUG1RbXRyVnZyeElhcTJmYTV5?=
 =?utf-8?B?RVVPY3krMjE1dXBVNkxieGo0U05Mb2gwNFltNXpJL25HNm8rZ1k1aXZXNHJo?=
 =?utf-8?B?VzFxRWtUdWpnUGdQQ093R1VscUxWUEdCV3NOVGtMK25NOVBNdWFNVSt2Q1dz?=
 =?utf-8?B?UlRnaXp4bUtJNkx5MFAyTXVSdWd4eDJHRzZUZGdzR0JrWXdhbVE2SUZ6ejc0?=
 =?utf-8?B?bjRwckxWSDVjR3ZlNVRHNGVRYWZkTjl3VU1ZNWFQdTBIMVRqeVNDcTNXOWxL?=
 =?utf-8?B?d0Z2Y2xPaTVGYXlVQ2FFTFJ0bHhsWjlubmRJaEJXSUtpT1ZESkZpaGRXYy9P?=
 =?utf-8?B?T1h0b0d6VG5OSlAvLzFDNUljZmdITndGS1JZNlcwWmQxUm5QMitFN3RBY0Zx?=
 =?utf-8?B?dmV1N3hJZXozL0tReHVuVC9pRXRjR1A0WHpvWVlLRkdlT0JyekQveXE4QVl6?=
 =?utf-8?B?d3N3OExnQXlRelpwSHQ5a2RleHkvazlSajh3dGZVNUJRWndHMFBaWXY0bGJR?=
 =?utf-8?B?bm1ZVnBCaDZ5SXFIZm4vOUNoaTJMN2RzdHlxSWlqQm1uV1hrV0IxRXMySHRv?=
 =?utf-8?B?ZEJrL1ZJZXRjajhiLzBNUWh2LzA2U3c0dkZXcVJBeVJkdkt3SzhWa3NoWUYr?=
 =?utf-8?B?MFNUbDIwNW1pdllFa3RGaWROMk5vck05Vnlzd3RYNGxEZVZUemJtQ1U1VjFC?=
 =?utf-8?B?WDZGRmRaY3FTQTRsQmdLZm43bExsanQ4ZmVsMDJKa0dpb21ZdE5TZzExbmJ1?=
 =?utf-8?B?Y0ZrYlFzZVBMTTdBSzNGWDQ3SVBCRkN6bkorUVFKbG1jRDNhOFNWQk56bXh0?=
 =?utf-8?B?R3pPdXJpVDA3cGZ2cE1nVHN4OEJMc2NidnhSU041SThvTTJlQm12N1puWUZo?=
 =?utf-8?B?eE1jZTJNRDJiZGhGZGd5dXd0Z2RPdXJGYWE3eEpBN0hYS0IxT09UVjRBWU11?=
 =?utf-8?B?ZE9yUHJDNXhNRFJFRlM3SDJBZ1FVK04zblA4aSsvREF3b1Bad0JrNHphYVRv?=
 =?utf-8?B?N2U5azZ5RzRtY2tYRUpRZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d3IxcVBpZFJYODVpVjE2NmZ0YS8zSElsT1BRcnpxRGVldFN5cVB2dHVKZGo3?=
 =?utf-8?B?Q29tMHJxVVJpcGJRZ012eG1JQ0hkNHY0ZVVuSjBSZzNIa3pWK0dVeEVJV3g1?=
 =?utf-8?B?a28waEx4ck5XWG9teXV1a2RySHJWU0tiYkRjVHdIVDE5TXA4RklGYUgvcDIr?=
 =?utf-8?B?Z2k3dG1YZFZCNFpFRk1FOTNxdWpXSVkyalBCOHQ4WEZlSTlIUnBWcktGbEVw?=
 =?utf-8?B?TjllQWVnZHA3ZUk1ZzR1MFI4K25KeWNLcG5RdzNvUUVZWVpVVXhHb3ZHUlcw?=
 =?utf-8?B?ZWM1SWc4dW1oWDd5R0tvbWRJZ2hkRlIrRDRpbVVlQXBHcFRvQ0IrQks3UkF0?=
 =?utf-8?B?ZGNZT0Y0bnEyZk02Z2JHdFRrR0NCaDNndDBYY24zS2tzNUMzUEZZTmZKT055?=
 =?utf-8?B?RWFpVGpOQld3eWYzeUFaZnNFeDBHVnVVY2tEVFVmZWVPWGRJMkFZeFl3SVNm?=
 =?utf-8?B?SDBCbDVteDdiakZKb050dkJaMk1LNlFQeUttc3JwR1JZckVNS1ZPVkE3ZFdX?=
 =?utf-8?B?WjNMeDNLVU56Z0JwRHdsK2l4V08yc3h3MjJYOEVISkxZRVNwQjVQS3cyd1gw?=
 =?utf-8?B?WEh1d0U0RUJCK2JOT1ZCM0lmbjQzOVRYeWVIZTJRbUpoTVMvT0U0ajFNeHlm?=
 =?utf-8?B?S3VmK3ZxTERQcTRxL3V3cVArY2pSWVN3SlVxUFQvS1ZHQmg2VkdsT2xoVWls?=
 =?utf-8?B?Skx6N1NrS2hDTFBBR3MwM0JQM0ZGNzJHVUtodjU4VVlDQWFRSkoyd09Bdmh4?=
 =?utf-8?B?eFVIN052ZUNjeHlzZDNKZzduWldBL0Z2SjEyNmJhaUx3QVRjcWc1dDB6Q0Rr?=
 =?utf-8?B?dG44T3FqbE94amRNL3lwRVE1SVdPenliVlNyc0J6c09JRUV6MzBJclluVmdz?=
 =?utf-8?B?RDQrWnp5VldqUnlSNWt3Qm5QOERLWm1LeGtlcUtVZTdVUXlzT1RqK3R0cHor?=
 =?utf-8?B?Ynl1dEg2cHVFWXNUMlNveE5ZeTEwdVRWVDJ3WGozclBLTGpYM05EeTlGUDY0?=
 =?utf-8?B?MG52dkc3MWV1djFQV25mbXVTVlRMVlA1Q3RVWGxYU09QNGd4YlVYcGpwb3RW?=
 =?utf-8?B?NTcrdVMyQ0xxZm5PTjV2UDBDdUZvMkl5UjJ5UVcrYmlxVENsZ0l4SXdHNEtz?=
 =?utf-8?B?SytEeVk3eHVSTFBKdTEwcmsxTHJFMHRuenVWTmFGb2RtUEI4MlBBTFp5bGpG?=
 =?utf-8?B?dENTdDI5MWZrajM3cVRyUnU2RjYzVUx0RjI2dEpRaXFubkhURG8xY0piZjNZ?=
 =?utf-8?B?cWgwWVRHb0JOeFJiN0VEeE9VazgwcVJBQk5EWGpFTFl3RkZxNlBDdTNXK205?=
 =?utf-8?B?QVdQaXphclpOeDVDeWM2R3FmVmM3WUdjdHdpOURpQVBEemM3OFUwckVCOGd1?=
 =?utf-8?B?TWRJd0crNk1EUjhDNW9lN1BiUjhtaVVlZ2sxQWw2VWN2OHVFWGdMTU11bng3?=
 =?utf-8?B?ckt4MHozQ2pwdUpSYmhrWDAxeUxzNnVyWE1vOW9acUVoWVdBb3BXa2dsNHlQ?=
 =?utf-8?B?bkJYYkdGeTB1NGFITXFMSllaZkRKaEdCcWdqRlR0LzN0bHlYdnVUZUU0SXVO?=
 =?utf-8?B?TTd1LzBrRmZORXdkUFVnanNSbkp1WHJoZzRIdjlRWG9lWW01QVZic05la2Jo?=
 =?utf-8?B?VWZTNDZjWStvejk4M0FyRnJBcWZVaUVQa2JNTUErek9COHRVaU1ONy82MUJ5?=
 =?utf-8?B?ZWRXaU1kVEdYWitrczZHUzN3bFZpQmdWTmhRbFJVSTR1bVY5UldoWHA2UVps?=
 =?utf-8?B?aXdJd0lROVAwWXEwYUpnNFFTYnlmbDZWNjBVTEhQWURucFhMYVRjajFzMnR0?=
 =?utf-8?B?MEphblRXUjRTM2M0WXdmMkxaa2xLZUVwbHpCSEpKNVRNSzRBSWVKTjFXWU5O?=
 =?utf-8?B?SHJ2LzZPaTRXTG9HK2p0RjBCeTRyenptNnY1OTBPUTZDdXI0KzN4citybE15?=
 =?utf-8?B?VGcvTkZFTHMyemt6UFRySng4WXhhazZJQkprNGliZi9OSnFQYTJXaDJxRnlS?=
 =?utf-8?B?RUluMGROLzdiN1AyNGdzcjhwSTNtV09jQkkrVStVM2NlY3FVc3dWdE9PRGFm?=
 =?utf-8?B?YmJZZzVvbmFGV1U4bHJxY3NoZ1pieGdtTnhxY2FsVDIvVFFpSktUVVphL29q?=
 =?utf-8?Q?HDy2Dn/omQ1nxwDOvAYt8X36H?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b76034c-9561-4103-a4e8-08dc6841d5f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2024 11:45:15.0692 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yqSIJyTa1HVXQwmM+aNZ5l5y/2ERn6P6a2Cg+zTUI1a4wG13pCbVDHx/YpeUKxVCbO5rCaDPgENFJibt/fK66g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8181
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFubmEsIEFuaW1lc2gN
Cj4gU2VudDogTW9uZGF5LCBBcHJpbCAyOSwgMjAyNCA1OjA0IFBNDQo+IFRvOiBIb2dhbmRlciwg
Sm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT47IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJFOiBbUEFUQ0ggdjcgMDYvMTFdIGRybS9pOTE1L3Bz
cjogTW9kaWZ5DQo+IGludGVsX2RwX2dldF9zdV9ncmFudWxhcml0eSB0byBzdXBwb3J0IHBhbmVs
IHJlcGxheQ0KPiANCj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4g
RnJvbTogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2Vu
dDogTW9uZGF5LCBBcHJpbCAyOSwgMjAyNCA0OjQ2IFBNDQo+ID4gVG86IE1hbm5hLCBBbmltZXNo
IDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IGludGVsLQ0KPiA+IGdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gPiBTdWJqZWN0OiBSZTogW1BBVENIIHY3IDA2LzExXSBkcm0vaTkxNS9wc3I6
IE1vZGlmeQ0KPiA+IGludGVsX2RwX2dldF9zdV9ncmFudWxhcml0eSB0byBzdXBwb3J0IHBhbmVs
IHJlcGxheQ0KPiA+DQo+ID4gT24gTW9uLCAyMDI0LTA0LTI5IGF0IDExOjAyICswMDAwLCBNYW5u
YSwgQW5pbWVzaCB3cm90ZToNCj4gPiA+DQo+ID4gPg0KPiA+ID4gPiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQ0KPiA+ID4gPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVy
QGludGVsLmNvbT4NCj4gPiA+ID4gU2VudDogRnJpZGF5LCBBcHJpbCAxOSwgMjAyNCA1OjQyIFBN
DQo+ID4gPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiA+IENj
OiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkNCj4gPiA+ID4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiA+ID4gU3ViamVjdDog
W1BBVENIIHY3IDA2LzExXSBkcm0vaTkxNS9wc3I6IE1vZGlmeQ0KPiA+ID4gPiBpbnRlbF9kcF9n
ZXRfc3VfZ3JhbnVsYXJpdHkgdG8gc3VwcG9ydCBwYW5lbCByZXBsYXkNCj4gPiA+ID4NCj4gPiA+
ID4gQ3VycmVudGx5IGludGVsX2RwX2dldF9zdV9ncmFudWxhcml0eSBkb2Vzbid0IHN1cHBvcnQg
cGFuZWwgcmVwbGF5Lg0KPiA+ID4gPiBUaGlzIGZpeCBtb2RpZmllcyBpdCB0byBzdXBwb3J0IHBh
bmVsIHJlcGxheSBhcyB3ZWxsLg0KPiA+ID4gPg0KPiA+ID4gPiB2MjogcmVseSBvbiBQU1IgZGVm
aW5pdGlvbnMgb24gY29tbW9uIGJpdHMNCj4gPiA+ID4NCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTog
Sm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+IFJldmll
d2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gPiA+ID4g
LS0tDQo+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8
IDYyDQo+ID4gPiA+ICsrKysrKysrKysrKysrKysrKysrKy0tLQ0KPiA+ID4gPiDCoDEgZmlsZSBj
aGFuZ2VkLCA1NSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQ0KPiA+ID4gPg0KPiA+ID4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+
ID4gaW5kZXggYjk0ZjhlMzNlZDFmLi4yOTQwMGZhYzEzYzIgMTAwNjQ0DQo+ID4gPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiBAQCAtNDY2
LDYgKzQ2Niw0MCBAQCBzdGF0aWMgdTgNCj4gPiA+ID4gaW50ZWxfZHBfZ2V0X3Npbmtfc3luY19s
YXRlbmN5KHN0cnVjdA0KPiA+ID4gPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gPiA+IMKgwqDC
oMKgwqDCoMKgwqByZXR1cm4gdmFsOw0KPiA+ID4gPiDCoH0NCj4gPiA+ID4NCj4gPiA+ID4gK3N0
YXRpYyB1OCBpbnRlbF9kcF9nZXRfc3VfY2FwYWJpbGl0eShzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKSB7DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoHU4IHN1X2NhcGFiaWxpdHk7DQo+ID4gPiA+
ICsNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKGludGVsX2RwLT5wc3Iuc2lua19wYW5lbF9y
ZXBsYXlfc3Vfc3VwcG9ydCkNCj4gPiA+DQo+ID4gPiBXaGlsZSByZWxvb2tpbmcgZm91bmQgdGhh
dCBnb29kIHRvIGFkZCBhIGNoZWNrIGZvcg0KPiA+ID4gRFBfUEFORUxfUEFORUxfUkVQTEFZX1NV
X0dSQU5VTEFSSVRZX1JFUVVJUkVEICg2dGggYml0IG9mIGRwY2QNCj4gPiAweGIxKS4NCj4gPiA+
IFdoYXQgaWYgaXQgaXMgemVybyBtZWFucyBncmFudWxhcml0eSBub3QgbmVlZGVkIGJ1dCB3aWxs
IGNvbnRpbnVlIHRvDQo+ID4gPiB1c2UgeC1ncmFudWxhcml0eSBhbmQgeS1ncmFudWxhcml0eS4N
Cj4gPg0KPiA+IFBsZWFzZSBub3RlIGl0IGlzIDV0aCBiaXQgaW4gMHhiMS4gU2VlIG15IGZ1cnRo
ZXIgY29tbWVudCBiZWxvdy4uLg0KPiANCj4gU2FtZSBJIHdhcyByZWZlcnJpbmcsICA2dGggYml0
IGluZGV4IDUgYXMgaXQgc3RhcnRzIGZyb20gMC4NCj4gDQo+ID4NCj4gPiA+IFJlZ2FyZHMsDQo+
ID4gPiBBbmltZXNoDQo+ID4gPg0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgZHJtX2RwX2RwY2RfcmVhZCgmaW50ZWxfZHAtPmF1eCwNCj4gPiA+ID4gKw0KPiA+ID4gPiBE
UF9QQU5FTF9QQU5FTF9SRVBMQVlfWF9HUkFOVUxBUklUWSwNCj4gPiA+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZzdV9j
YXBhYmlsaXR5LCAxKTsNCg0KSSB0aGluayBpbnN0ZWFkIG9mIERQX1BBTkVMX1BBTkVMX1JFUExB
WV9YX0dSQU5VTEFSSVRZIGl0IHNob3VsZCBiZSBEUF9QQU5FTF9QQU5FTF9SRVBMQVlfQ0FQQUJJ
TElUWSwgZXZlcnl0aGluZyBlbHNlIHdpbGwgYmUgZmluZS4NCg0KUmVnYXJkcywNCkFuaW1lc2gN
Cj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgZWxzZQ0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgc3VfY2FwYWJpbGl0eSA9IGludGVsX2RwLT5wc3JfZHBjZFsxXTsNCj4gPiA+
ID4gKw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqByZXR1cm4gc3VfY2FwYWJpbGl0eTsNCj4gPiA+
ID4gK30NCj4gPiA+ID4gKw0KPiA+ID4gPiArc3RhdGljIHVuc2lnbmVkIGludA0KPiA+ID4gPiAr
aW50ZWxfZHBfZ2V0X3N1X3hfZ3JhbnVsYXJpdHlfb2Zmc2V0KHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHApIHsNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIGludGVsX2RwLT5wc3Iuc2lu
a19wYW5lbF9yZXBsYXlfc3Vfc3VwcG9ydCA/DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBEUF9QQU5FTF9QQU5FTF9SRVBMQVlfWF9HUkFOVUxBUklUWSA6DQo+ID4gPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBEUF9QU1IyX1NVX1hfR1JBTlVMQVJJVFk7
IH0NCj4gPiA+ID4gKw0KPiA+ID4gPiArc3RhdGljIHVuc2lnbmVkIGludA0KPiA+ID4gPiAraW50
ZWxfZHBfZ2V0X3N1X3lfZ3JhbnVsYXJpdHlfb2Zmc2V0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHApIHsNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIGludGVsX2RwLT5wc3Iuc2lua19w
YW5lbF9yZXBsYXlfc3Vfc3VwcG9ydCA/DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBEUF9QQU5FTF9QQU5FTF9SRVBMQVlfWV9HUkFOVUxBUklUWSA6DQo+ID4gPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBEUF9QU1IyX1NVX1lfR1JBTlVMQVJJVFk7IH0N
Cj4gPiA+ID4gKw0KPiA+ID4gPiArLyoNCj4gPiA+ID4gKyAqIE5vdGU6IEJpdHMgcmVsYXRlZCB0
byBncmFudWxhcml0eSBhcmUgc2FtZSBpbiBwYW5lbCByZXBsYXkgYW5kDQo+ID4gPiA+IHBzcg0K
PiA+ID4gPiArICogcmVnaXN0ZXJzLiBSZWx5IG9uIFBTUiBkZWZpbml0aW9ucyBvbiB0aGVzZSAi
Y29tbW9uIiBiaXRzLg0KPiA+ID4gPiArICovDQo+ID4NCj4gPiBDaGVjayB0aGlzIGNvbW1lbnQu
IFNlZSBteSBmdXJ0aGVyIGNvbW1lbnQgYmVsb3cuLi4NCj4gDQo+IEFncmVlIGJpdCBwb3NpdGlv
biBpcyBzYW1lLg0KPiANCj4gPg0KPiA+ID4gPiDCoHN0YXRpYyB2b2lkIGludGVsX2RwX2dldF9z
dV9ncmFudWxhcml0eShzdHJ1Y3QgaW50ZWxfZHANCj4gPiA+ID4gKmludGVsX2RwKcKgIHsNCj4g
PiA+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBf
dG9faTkxNShpbnRlbF9kcCk7IEBAIC0NCj4gPiA+ID4gNDczLDE4DQo+ID4gPiA+ICs1MDcsMjkg
QEAgc3RhdGljIHZvaWQgaW50ZWxfZHBfZ2V0X3N1X2dyYW51bGFyaXR5KHN0cnVjdCBpbnRlbF9k
cA0KPiA+ID4gPiAqaW50ZWxfZHApDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqB1MTYgdzsNCj4g
PiA+ID4gwqDCoMKgwqDCoMKgwqDCoHU4IHk7DQo+ID4gPiA+DQo+ID4gPiA+IC3CoMKgwqDCoMKg
wqDCoC8qIElmIHNpbmsgZG9uJ3QgaGF2ZSBzcGVjaWZpYyBncmFudWxhcml0eSByZXF1aXJlbWVu
dHMNCj4gPiA+ID4gc2V0IGxlZ2FjeSBvbmVzICovDQo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoGlm
ICghKGludGVsX2RwLT5wc3JfZHBjZFsxXSAmDQo+ID4gPiA+IERQX1BTUjJfU1VfR1JBTlVMQVJJ
VFlfUkVRVUlSRUQpKSB7DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoC8qDQo+ID4gPiA+ICvCoMKg
wqDCoMKgwqDCoCAqIFRPRE86IERvIHdlIG5lZWQgdG8gdGFrZSBpbnRvIGFjY291bnQgcGFuZWwg
c3VwcG9ydGluZw0KPiA+ID4gPiBib3RoIFBTUg0KPiA+ID4gPiBhbmQNCj4gPiA+ID4gK8KgwqDC
oMKgwqDCoMKgICogUGFuZWwgcmVwbGF5Pw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqAgKi8NCj4g
PiA+ID4gKw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqAvKg0KPiA+ID4gPiArwqDCoMKgwqDCoMKg
wqAgKiBJZiBzaW5rIGRvbid0IGhhdmUgc3BlY2lmaWMgZ3JhbnVsYXJpdHkgcmVxdWlyZW1lbnRz
DQo+ID4gPiA+ICtzZXQNCj4gPiA+ID4gbGVnYWN5DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoCAq
IG9uZXMuDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoCAqLw0KPiA+ID4gPiArwqDCoMKgwqDCoMKg
wqBpZiAoIShpbnRlbF9kcF9nZXRfc3VfY2FwYWJpbGl0eShpbnRlbF9kcCkgJg0KPiA+ID4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERQX1BTUjJfU1VfR1JBTlVMQVJJVFlfUkVRVUlSRUQp
KSB7DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyogQXMgUFNSMiBI
VyBzZW5kcyBmdWxsIGxpbmVzLCB3ZSBkbyBub3QgY2FyZQ0KPiA+ID4gPiBhYm91dCB4IGdyYW51
bGFyaXR5ICovDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdyA9IDQ7
DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgeSA9IDQ7DQo+ID4gPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZ290byBleGl0Ow0KPiA+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgfQ0KPiA+DQo+ID4gVGhpcyBibG9jayBpcyB0YWtpbmcgY2FyZSBvZiBjaGVj
a2luZyBiaXQgNSBpbiAweGIxIGFuZCB1c2luZyBsZWdhY3kNCj4gPiBvbmVzIGlmIG5vIHJlcXVp
cmVtZW50cy4NCj4gDQo+IGludGVsX2RwX2dldF9zdV9jYXBhYmlsaXR5IGlzIHJlYWRpbmcgZnJv
bQ0KPiBEUF9QQU5FTF9QQU5FTF9SRVBMQVlfWF9HUkFOVUxBUklUWSB3aGljaCBJcyBkcGNkIDB4
YjIuIEFtIEkNCj4gbWlzc2luZyBzb21ldGhpbmc/DQo+IA0KPiBSZWdhcmRzLA0KPiBBbmltZXNo
DQo+IA0KPiA+DQo+ID4gQlIsDQo+ID4NCj4gPiBKb3VuaSBIw7ZnYW5kZXINCj4gPg0KPiA+ID4g
Pg0KPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqByID0gZHJtX2RwX2RwY2RfcmVhZCgmaW50ZWxfZHAt
PmF1eCwNCj4gPiA+ID4gRFBfUFNSMl9TVV9YX0dSQU5VTEFSSVRZLCAmdywgMik7DQo+ID4gPiA+
ICvCoMKgwqDCoMKgwqDCoHIgPSBkcm1fZHBfZHBjZF9yZWFkKCZpbnRlbF9kcC0+YXV4LA0KPiA+
ID4gPiArDQo+ID4gPiA+IGludGVsX2RwX2dldF9zdV94X2dyYW51bGFyaXR5X29mZnNldChpbnRl
bF9kcCksDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgJncsIDIpOw0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKHIgIT0g
MikNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygm
aTkxNS0+ZHJtLA0KPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAiVW5hYmxlIHRvIHJlYWQNCj4gPiA+ID4gRFBfUFNSMl9TVV9YX0dS
QU5VTEFSSVRZXG4iKTsNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgIlVuYWJsZSB0byByZWFkIHNlbGVjdGl2ZSB1cGRhdGUgeA0K
PiA+ID4gPiBncmFudWxhcml0eVxuIik7DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqAvKg0KPiA+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgICogU3BlYyBzYXlzIHRoYXQgaWYgdGhlIHZhbHVlIHJlYWQg
aXMgMCB0aGUgZGVmYXVsdA0KPiA+ID4gPiBncmFudWxhcml0eSBzaG91bGQNCj4gPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoCAqIGJlIHVzZWQgaW5zdGVhZC4NCj4gPiA+ID4gQEAgLTQ5MiwxMCArNTM3
LDEyIEBAIHN0YXRpYyB2b2lkDQo+ID4gPiA+IGludGVsX2RwX2dldF9zdV9ncmFudWxhcml0eShz
dHJ1Y3QNCj4gPiA+ID4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgaWYgKHIgIT0gMiB8fCB3ID09IDApDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgdyA9IDQ7DQo+ID4gPiA+DQo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoHIgPSBkcm1f
ZHBfZHBjZF9yZWFkKCZpbnRlbF9kcC0+YXV4LA0KPiA+ID4gPiBEUF9QU1IyX1NVX1lfR1JBTlVM
QVJJVFksICZ5LCAxKTsNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgciA9IGRybV9kcF9kcGNkX3Jl
YWQoJmludGVsX2RwLT5hdXgsDQo+ID4gPiA+ICsNCj4gPiA+ID4gaW50ZWxfZHBfZ2V0X3N1X3lf
Z3JhbnVsYXJpdHlfb2Zmc2V0KGludGVsX2RwKSwNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmeSwgMSk7DQo+ID4gPiA+IMKg
wqDCoMKgwqDCoMKgwqBpZiAociAhPSAxKSB7DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwNCj4gPiA+ID4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIlVuYWJsZSB0byByZWFk
DQo+ID4gPiA+IERQX1BTUjJfU1VfWV9HUkFOVUxBUklUWVxuIik7DQo+ID4gPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJVbmFibGUgdG8g
cmVhZCBzZWxlY3RpdmUgdXBkYXRlIHkNCj4gPiA+ID4gZ3JhbnVsYXJpdHlcbiIpOw0KPiA+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHkgPSA0Ow0KPiA+ID4gPiDCoMKgwqDC
oMKgwqDCoMKgfQ0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKHkgPT0gMCkNCj4gPiA+ID4g
QEAgLTU4OCw3ICs2MzUsOCBAQCB2b2lkIGludGVsX3Bzcl9pbml0X2RwY2Qoc3RydWN0IGludGVs
X2RwDQo+ID4gPiA+ICppbnRlbF9kcCkNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChpbnRl
bF9kcC0+cHNyX2RwY2RbMF0pDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgX3Bzcl9pbml0X2RwY2QoaW50ZWxfZHApOw0KPiA+ID4gPg0KPiA+ID4gPiAtwqDCoMKgwqDC
oMKgwqBpZiAoaW50ZWxfZHAtPnBzci5zaW5rX3BzcjJfc3VwcG9ydCkNCj4gPiA+ID4gK8KgwqDC
oMKgwqDCoMKgaWYgKGludGVsX2RwLT5wc3Iuc2lua19wc3IyX3N1cHBvcnQgfHwNCj4gPiA+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVsX2RwLT5wc3Iuc2lua19wYW5lbF9yZXBsYXlfc3Vf
c3VwcG9ydCkNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9k
cF9nZXRfc3VfZ3JhbnVsYXJpdHkoaW50ZWxfZHApOw0KPiA+ID4gPiDCoH0NCj4gPiA+ID4NCj4g
PiA+ID4gLS0NCj4gPiA+ID4gMi4zNC4xDQo+ID4gPg0KDQo=
