Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDatMD7HcWknMAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 07:44:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 129AE62523
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 07:44:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97B8B10E206;
	Thu, 22 Jan 2026 06:44:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L/Pyu5YT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E029510E206
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jan 2026 06:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769064251; x=1800600251;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6m2K8/jxTZAb0VtC5Hlox2ky/VhHaVLVMKFLjk1wHW4=;
 b=L/Pyu5YTYgNiBwXDmIWSLTWtn5PNa6EuB+PYidrgVRM31j/30F7C1LGY
 dWFXvAMjOEb25ONvvvNnv7aaL+Zyj4gx/dTXruoNyLfUkm0dD+53JwibU
 2HXblgh9ptrlC3bipmXdy9fzo0SX3yeOUxcN8m+0e8BZoKFzw7OmOFEJr
 TbzptGAGaFTk7XehbVsJmuitiyGvj7M9o8UJNiUG561UKIyibWBULeO9q
 eQMqcDHooUrWJps9OasP4pNGKQKBhRpaJi6ZIUOF6e/ZgZze75SxlEqSL
 uPGA39RRbYuPY20T80oEkoLkKT9BjbY6hJ4H7vSM38nwXj7rgWpcSC5Xb g==;
X-CSE-ConnectionGUID: +JUBXJIXQ0OhOQOP85gR4g==
X-CSE-MsgGUID: Tr0zl4AQR7OI2QPSRk88ig==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="81672525"
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="81672525"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 22:44:10 -0800
X-CSE-ConnectionGUID: Y1fBxKL1Qx6EH1rQhWJXlQ==
X-CSE-MsgGUID: HUkdVmf4RWyUpHpKI6bTrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="211179884"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 22:44:10 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 22:44:09 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 21 Jan 2026 22:44:09 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.52) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 22:44:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z6357JvHArwu1cCWOI5G1mcwBg2mIy7Hnyd26xy5NsM3K1E1YezPOlzX/w5/A2FBIT5YLZ0/Ag3bc0Zf/fMRBqCVNWPgQY2c5OyhWUwcrDg/TebXBtxJB9XJ8CrnxqHKbohEx46++5LkyK+Zz/DZVfq1ePXTS3ghryjci1aZwG4fk2qbe+IoGJVzezUexiZ5tqTjUuwfL/zOVyxykNW5Gl0EznnAbyMhESI8r6S872+q1L08/QFdLSXXAJVyq1LaS8bhDbm0hXxpEd5DqMckYQxJfO9XwsM3DBXzPqFMtMm76hRwtk6IMk0EWjXBNajtw9TQfvPynF/U82coj5x+OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6m2K8/jxTZAb0VtC5Hlox2ky/VhHaVLVMKFLjk1wHW4=;
 b=bFOcV5PcIkeJIwuytm46KQkTY4L5Mgfm5kYp3FojXKILUCDb4onoHipaSuwVNBRwJa/CmOc26Dyft+JDuZ6b8lX3f30jDWI0ZEdK4b2Bh4RCDETeGc4in30LRAzrOv4KfcFMGWfHwxl7FE4nzPqCsdoyWInDcopiyM3uHOl0ceAh6MJJXPC9taAupPCr/hjrYvj6ClSa4sxBWPiVT2ddUzfFLVVrwJ0ohVDzL/nwcA/JcmNdGweAgKP2faofghchTzcuMJ3xEtPqJH4TBIc/NV9Ar2WzP6rAm1SEw2iQaJWZ94oOI5z+6y/Yu+GGj8pJdRY+aXbgsSRZAsmhgpAIug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8040.namprd11.prod.outlook.com (2603:10b6:510:238::11)
 by IA1PR11MB6075.namprd11.prod.outlook.com (2603:10b6:208:3d5::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Thu, 22 Jan
 2026 06:43:47 +0000
Received: from PH8PR11MB8040.namprd11.prod.outlook.com
 ([fe80::89bf:2274:1371:50c5]) by PH8PR11MB8040.namprd11.prod.outlook.com
 ([fe80::89bf:2274:1371:50c5%7]) with mapi id 15.20.9542.009; Thu, 22 Jan 2026
 06:43:47 +0000
From: "Yao, Jia" <jia.yao@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Zuo, 
 Alex" <alex.zuo@intel.com>, "Lin, Shuicheng" <shuicheng.lin@intel.com>,
 Askar
 Safin <safinaskar@gmail.com>, Pingfan Liu <piliu@redhat.com>, "Chris Wilson"
 <chris.p.wilson@linux.intel.com>
Subject: RE: [PATCH v3] drm/i915: Clearing the Memory Space Enable bit when
 disabling i915
Thread-Topic: [PATCH v3] drm/i915: Clearing the Memory Space Enable bit when
 disabling i915
Thread-Index: AQHciccr+0z7mMoL/06HUZZPCD+/ibVbO08AgAD2+SCAAIgNAIABBOWA
Date: Thu, 22 Jan 2026 06:43:47 +0000
Message-ID: <PH8PR11MB804052FAD1B3C92D37F69972F497A@PH8PR11MB8040.namprd11.prod.outlook.com>
References: <20251007180634.912006-1-jia.yao@intel.com>
 <20260120044203.2436044-1-jia.yao@intel.com> <aW-pMDuVDR_uIAQx@intel.com>
 <PH8PR11MB8040B7F61FD55DB8D16EBBCBF496A@PH8PR11MB8040.namprd11.prod.outlook.com>
 <aXDqfuhzPCdicmG5@intel.com>
In-Reply-To: <aXDqfuhzPCdicmG5@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB8040:EE_|IA1PR11MB6075:EE_
x-ms-office365-filtering-correlation-id: c0715eb8-72f9-446a-c74d-08de5981986a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|42112799006|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?NWdCMkJkL0RqL1JLSGdNWmQrdGptVE8yOTJYNkpNYWtPWm5zcm51dUx0MEUr?=
 =?utf-8?B?S1RJSkY1VGdrOXB4c1hKWTg0SDUyS0ZVL2pXaDUzeE8xdUM0K2ZmR3Jmai9s?=
 =?utf-8?B?UVI5cUgrN2hUUHJkRXU1cm80d3lrLy9nL2tpclA4Q1RvK0ZKU3p0SnZ6eEQr?=
 =?utf-8?B?NVhwMGpsTVBMa3lvSGRIbjFxc3dNQ242V0RMZ0xSREZ2eUpqbU8yMEdoSjNE?=
 =?utf-8?B?QXdLVk1PS1dPbzc5K3ptcHNkQXVjdzFteElRVmprYU11dng5bXRVek1VeHF2?=
 =?utf-8?B?Z1JYN1FsdGhvV0VSSEczV1NkTzVLZ0NITWlLWU1xNnQ1QzcrOTFRbHM5UDlr?=
 =?utf-8?B?NVZsRGc4WnlNVzhDWVhjcFkvZmpRbVRnTTJ1TE5RczZPbW85Y0I2bnpOZHpG?=
 =?utf-8?B?ZzhEaS9UOXpjczVPRW4vem9QcTg5dDNrMGkzNk5ja3VUUHVzME8wUDdiM0RR?=
 =?utf-8?B?bk1WWEMydm9jQkxxTjJ3WWdWQnF3emU0MDFRa3ZXL25TdEVyTnZTYWpoNGpt?=
 =?utf-8?B?dHA5bGNObU1qOUdxc3NHTnVxY05uTFFFcjBWdGIwcEtONW5iRmdidmNGMFZH?=
 =?utf-8?B?aTF2OW5RN096Y1B3QTZWUHRwMFN4b1RQUE01VUYvUlNxMEprMnFhR0ZXR3Ax?=
 =?utf-8?B?MHBscXZsc2VDUWRNYjVHZUhZeGRvOTE0YVRiL1crK2djdjBkd0RnNTdTaThJ?=
 =?utf-8?B?ZXNVTFpDRlR1OTdsOTVLL2lQc3JGUlczc0ZULzd1RUZnbWNvazg4bUdMMGIw?=
 =?utf-8?B?TWVabGk4c3BhUlMrTU1WZWNHWE5oQm9MTDdPN1c0bVVzUGk5dlVnWlpMQ3d3?=
 =?utf-8?B?YndhNjJVNjBwWmRrQnA2SG5zUExhd2JRVHFxbWsxVnlNVzdqNlFEZFk1bm00?=
 =?utf-8?B?cVZldWJpM01qajZSM2VCZkNlb3FBYWNSWmlleXlHbVRyWVRRUVM2Y1JRMG5R?=
 =?utf-8?B?cElpSm5xd3ZSWng3WWhPWE5yUGUvRGlCWFZOaUlydkFkdmxzK1RyaEFyS29U?=
 =?utf-8?B?dE93bTNteks0NjJDKzgrWDVmVzB2ZEF3TkZlalhoUG0rYXRoY2dIN3hVNllB?=
 =?utf-8?B?bmY5Z1NwdFpmbzE0dHVFSVN3clB3eldaZE8zbXQwUFUzK3gzVUN6MFV1YXVT?=
 =?utf-8?B?SVpqckZUT3BYZFVLRlZZb1ExWHR5RFgwTVhsNjM3eFoycjlnY2Yrb3lFcy85?=
 =?utf-8?B?SFZWZGpteE5UdWZzd0xBOEd1SVhKUGM1UXRDaFdVL3NXWUpoUEhDT0IxcEd6?=
 =?utf-8?B?YXlxK1dWbGlTV3luUUxyM1NsUXg5MFc1RWUyRXptc0xEam42R01BSWw4MEZO?=
 =?utf-8?B?WUoycG5SSlNET2ppSEIvMTdvUkRPQUdWbjhlWENMdzJTZHNsQUNWdTNtNHZw?=
 =?utf-8?B?YjY2N0hHSXJ2SVdTSURVT0dvR1pLTVM5TERqWkVuSDBMdU5mWkhhWjgxZVZE?=
 =?utf-8?B?bnYvcFdPeGFLSVJ1OXRCa1YxSUlpZzFRU3NVVXhnVS9TTENRV3lyZWNVNXpV?=
 =?utf-8?B?L0RRQzFpR3BQRjFXQzE2bHBRd1ZhOHFIS0N1WmZWdzZiQjYrTDBRWUpwMXht?=
 =?utf-8?B?NytQOFpyeVlIRENwWGZXclQ1bFJibllPOFd6dncvRDFkRWxsS0VlN0gwRUJ6?=
 =?utf-8?B?VS9KdDN2Zk44ZFF5cnl2UG9VQ0xabjRQYlNGR2k3Ni9oWkRWVjlqcnBCUHZn?=
 =?utf-8?B?Mk9Mbno4OE8zSExFNFJUenl5M2tGZVpqdFZtVE96Y2RDb0JiK0dNQzFBeDc5?=
 =?utf-8?B?ZlY5eFYwTnBqK25PS2UrMUZCQmg4RUlzMDJPYnovYXdtcTltQldPU2R6cHhP?=
 =?utf-8?B?bndNMy8vSlhKMnNRQzRGZUxpY3dJblFObDEza2RVaTBYMVFhZkZsU0RKTnVk?=
 =?utf-8?B?c3ZxWFNoWDJ2VThBTnZwU2N0MzE1MmRQbjN6YWErc2dHTUp2SVdWNnBhdGc5?=
 =?utf-8?B?bWxpSkt5OEw5TjdiTW41QkpGQUNIVitKSWs0S2phdE5jVlFXYW0zRzVOTTUw?=
 =?utf-8?B?SmpoWVNCaU9rQ2R3TnNBdk9sMGNKWHJQODh6WUp0OGN4RHJaUnlRdFRnOUZZ?=
 =?utf-8?B?UWduNnFaOGZVbzVQZTlpaDZla25OcEx3TVJXN241NUVib05rektYWW5yeDM3?=
 =?utf-8?B?RU5yc2xxUk5rS0pSWElFNXhkM00xYXZ1RjNBZEZZMmlKREl0VlVHaTYwOVp2?=
 =?utf-8?Q?X4UdHv62Z41eJIbqy7II8dU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8040.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(42112799006)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dTlzTG0xeE5pdldtTGVTNEwyd3JsZTBaY3dwNkdKTEZHVlZNUXdlSThWeFFN?=
 =?utf-8?B?YVNqeFk1Q3JMbjJGVll1K1p4L1ZLdFk4ZGZmNHVoZTAvallGNlR4MWJSWURE?=
 =?utf-8?B?eVhvOVNLVlN3ekdHRmZqcGxtQUV4ZUNEWncreWpab0NTUzFScDN2cDI3cmJl?=
 =?utf-8?B?VHpHcDVYbHVwR3l4MG1obExnR2JDc3FuMjNBcFZQaGdlSzlkWlhGWXFGWGFY?=
 =?utf-8?B?K3NnRUN6bXBDS1ZHajU5VThES1VSenZEa1BKdFdKYmFGY29ISjM4T2ZVdHFn?=
 =?utf-8?B?VnBpK2NjelFoWHlzNmdsSVZyTnZJT2V6TlB0UGlNVGtGMmpTNmZsWEZHaXVl?=
 =?utf-8?B?SEVBMUFCSEt3VXFkMHpGcWErMDk3N1BRcnFGL3Q0STRPNHZVUTBPOFhqTWs4?=
 =?utf-8?B?RjNJL1FLWmhqL3N6cEFlbXZCL0NzNGZkaEVBMnU5OHYveHA0SHpKUkFLenBC?=
 =?utf-8?B?eHkzaHB3TXhFdDhaKzh3VWoxMlhWSktwbmVsTDBPM2JTRDVCMnA2bnlMcnJw?=
 =?utf-8?B?MU5NVXVlUEIwdW9FaFVRR1I5eFpTVEJBVVZVM1ZzZUY3M1FqVTFOZU5EWDdM?=
 =?utf-8?B?R2RzK0FIaTloaVYrNGx0VTYzaVo5M1ZmbUtRUmswQ1haa2tzbGNNTkxYd2Fs?=
 =?utf-8?B?aWM5VEsvemI5RjNXbEVPVkpCa0RKeTI1eFkwV2o0ZktwSE5MdW5kWmNzUWkr?=
 =?utf-8?B?a1BzcnBUSWtpSm1iY1h1NjhrRk1ZZUovNW4rR3pwUkdZejhVSmVDbDFSaUlr?=
 =?utf-8?B?RHFzVTlnb1VPdWNBYXFmSENSNTl3YWVEbkVxNm1oY3ZvL2JEakNOSU51NEtQ?=
 =?utf-8?B?M0YxQ2tYcTNpYlBPK0pNZXp2ay9iV2ZJamM4RWcxMVZjNFNjWVBFMFk3SFI4?=
 =?utf-8?B?cW1yNWswcGdtS2o2QnVpWE1VdmJ0R0lGOEVwV2V2VUxsRUNORDczejlmWmRs?=
 =?utf-8?B?dlo1eVRIYnRGS3NZRE5HM3VucU1YVm5RRGROZHpobHhzOWZKV0pTbTJrR3Jk?=
 =?utf-8?B?b0FzU1ZKZFdXZE1zVXpwTmZGU1NFWUF0MGRpNHhBR3IwQU52QXZsbGJoQzZX?=
 =?utf-8?B?bnhETnAxNjVMdkZjVTBJZVB5NFh5YmVKUU8yS0hHRFZpTzFQZ21iTFF3bkVl?=
 =?utf-8?B?L1FMczdFMERiaUNFaVRvS0JxemU2UVhxakxucTJzN056U3hXcFpEZmtYRUNY?=
 =?utf-8?B?RXpiVzRnazVMb2pPY3MrMlI5UU5YbU5qUHJncEkxKy80Z0ZneTlZN1hJWUUr?=
 =?utf-8?B?bFhZVkFkMXM1UEU0aGhtQ3c1TnVWYU1wMXdubUI1VEdUYkxYM3F2V20wclFt?=
 =?utf-8?B?RnBhbitieng5UnU2RU8xcnRHMWpvR2xpL3pkdVBhdWpsV1NmMHlhVUI4aU13?=
 =?utf-8?B?em94RkNUYy84TnFmSDY2MmhMUCthV3JBREV6TmFnM0dpRmw0YnJLNTdaZmYx?=
 =?utf-8?B?SnVPWmVGUmdpQkoweUJLeU91Z2wrUU1uUjl5WnFudE03UW5nK05xQUltaU5X?=
 =?utf-8?B?clZuN3NpUVcxV0wwODVaUWlVOVpLbHlXcFlmMmh2bkNiTk9TN08wM1JrU1Ns?=
 =?utf-8?B?UVZ0SDRZZHNaK1BvQjA2RXRIb1ExSmIvTTRmdnl4QnZ6U3JCOXNuMjNHYi9x?=
 =?utf-8?B?My9XSFdNeDlOV3I5a2V2SFR5RFJ6TnJIWUc3d1pRc3dscEc1YnJRUStlS29l?=
 =?utf-8?B?dnR1QzcrMlpqQzF3TEZnU283anNiV0JDdS9TSHl2LzJRWHk5Ym4zekZ1T3pq?=
 =?utf-8?B?RXFoc0lrYUYwSW1sZTI4RDV4OU91U3dTTTB4cjdUU0owT2hYQlFJWmpXeHZV?=
 =?utf-8?B?dGRiN0dJbnFkOTIxTmR6OTFHeGJidFpQVmFsSmsxUFBWVlk4aTV3NFU5TE94?=
 =?utf-8?B?UGFZaEo3L0lYM2VxSGpoVG9VR0xQOTZyOCtIbG9jQzZBV3U5bVk4Z3E0MEY1?=
 =?utf-8?B?MmUrUmZSS1g5a01QY2xPcS9zT3phWjJjZ1BtVi8zZzYxYW9LSG5vbXRId05D?=
 =?utf-8?B?SElmdmxiNmJnUFJXQlY0akJzTmxaa0dsTUNBcFdNZjAvVnVJQlRqY2JaMFpo?=
 =?utf-8?B?d0I2bU41OFhwSUJYZ3RnRkE3R3J6cGtPT2dpSExUZFI1NHcyOHZRczdiVWdY?=
 =?utf-8?B?eGk0YW1GbkV5ZVpVek5lRzJZTWZnM3J3cWNvQnVWOVZYODJyV2YwbDVZVHhy?=
 =?utf-8?B?emhtVjJEMXZ1V2UydzcvSm5VWUI2aVdZa0NhbWh4N1ZKQ2YwWWE2YzYwQXpZ?=
 =?utf-8?B?VnI3NU9zVTFuejdyWmlZNm9xMndwQkd1OTd0TFVTVW4xeDc5K3FjaTZZcWVz?=
 =?utf-8?Q?tXEDSCEEZsO28m543Q?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8040.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0715eb8-72f9-446a-c74d-08de5981986a
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2026 06:43:47.5899 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RQ2pTtlaZoFfcSPXV8nlnNvs7UYYFtg4tvrR7MCKO+Fmv9zneitobNo8UxqGZzcHKXBz2K4JQvtX03NDP9AOEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6075
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,m:alex.zuo@intel.com,m:shuicheng.lin@intel.com,m:safinaskar@gmail.com,m:piliu@redhat.com,m:chris.p.wilson@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jia.yao@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,intel.com,gmail.com,redhat.com,linux.intel.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jia.yao@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 129AE62523
X-Rspamd-Action: no action

PiBXaGF0ZXZlciBpbmZvcm1hdGlvbiBpcyBwYXNzZWQgdG8gdGhlIGtleGVjJ2Qga2VybmVsIHRv
IGluZm9ybSBpdCBhYm91dCB0aGUgZmlybXdhcmUgZnJhbWVidWZmZXIgc2hvdWxkIGJlIHphcHBl
ZCBzbyB0aGF0IGl0IGtub3dzIG5vdCB0byBkbyBhbnl0aGluZyBhbnl0aGluZyB3aXRoIGl0Lg0K
DQpUaGFua3MgVmlsbGUgU3lyasOkbMOkLA0KWW91ciBpZGVhIGVubGlnaHRlbmVkIG1lOyAgSSBk
byBmaW5kIGEgbW9yZSBncmFjZWZ1bCB3YXkgdG8gZml4IHRoaXMgaXNzdWUuICBEbyBub3Qgd3Jp
dGUgRUZJIGZyYW1lYnVmZmVyIGluZm8gaW50byBzY3JlZW5faW5mbyANCkluaXRpYWwgdGVzdGlu
ZyBpbmRpY2F0ZXMgdGhhdCBpdCB3b3Jrcy4gSSdsbCBjbGVhbiBpdCB1cCBhbmQgc2VuZCBhIG5l
dyBwYXRjaCBvdXQuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiANClNlbnQ6IFdlZG5lc2Rh
eSwgSmFudWFyeSAyMSwgMjAyNiA3OjAyIEFNDQpUbzogWWFvLCBKaWEgPGppYS55YW9AaW50ZWwu
Y29tPg0KQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFp1bywgQWxleCA8YWxl
eC56dW9AaW50ZWwuY29tPjsgTGluLCBTaHVpY2hlbmcgPHNodWljaGVuZy5saW5AaW50ZWwuY29t
PjsgQXNrYXIgU2FmaW4gPHNhZmluYXNrYXJAZ21haWwuY29tPjsgUGluZ2ZhbiBMaXUgPHBpbGl1
QHJlZGhhdC5jb20+OyBDaHJpcyBXaWxzb24gPGNocmlzLnAud2lsc29uQGxpbnV4LmludGVsLmNv
bT4NClN1YmplY3Q6IFJlOiBbUEFUQ0ggdjNdIGRybS9pOTE1OiBDbGVhcmluZyB0aGUgTWVtb3J5
IFNwYWNlIEVuYWJsZSBiaXQgd2hlbiBkaXNhYmxpbmcgaTkxNQ0KDQpPbiBXZWQsIEphbiAyMSwg
MjAyNiBhdCAwNzoxOTowM0FNICswMDAwLCBZYW8sIEppYSB3cm90ZToNCj4gVGhlIHByb2JsZW0g
aXMgdGhhdCB0aGUgZmIgZHJpdmVyIGlzc3VlcyBpcyBkb2luZyB2YWxpZCBhY2Nlc3MsIGJ1dCAN
Cj4gYmVjYXVzZSBvZiBhbiBpbmNvcnJlY3QgR0dUVCB0cmFuc2xhdGlvbiAgKE9uY2UgR0dUVCBo
YXMgYmVlbiANCj4gaW5pdGlhbGl6ZWQgYnkgaTkxNSwgIGl0IGNhbid0IGJlIHJlc3RvcmVkIHRv
IGhhcmR3YXJlIGluaXRpYWwgc3RhdHVzIA0KPiB3aXRob3V0IHJlYm9vdCksDQoNCkl0IHdpbGwg
bmV2ZXIgYmUgcmVzdG9yZWQgdG8gdGhhdCBzdGF0ZS4NCg0KPiB0aGVzZSBhY2Nlc3NlcyBhcmUg
bWFwcGVkIHRvIGluY29ycmVjdCBhZGRyZXNzZXMuDQo+IEFzIGZvciBibG9ja2luZyBmYiBkcml2
ZXIsICBTb21lIExpbnV4IGRpc3RyaWJ1dGlvbnMgY29tcGlsZSBDT05GSUdfRFJNX1NJTVBMRURS
TT15IGludG8gdGhlIGtlcm5lbCBhcyBhIGJ1aWx04oCRaW4gb3B0aW9uIHJhdGhlciB0aGFuIGEg
bG9hZGFibGUgbW9kdWxlLg0KPiBDb25zaWRlcmluZyB0aGVzZSBmYWN0b3JzLCB0aGlzIHJlbWFp
bnMgdGhlIG9ubHkgZmVhc2libGUgYXBwcm9hY2guDQoNCldoYXRldmVyIGluZm9ybWF0aW9uIGlz
IHBhc3NlZCB0byB0aGUga2V4ZWMnZCBrZXJuZWwgdG8gaW5mb3JtIGl0IGFib3V0IHRoZSBmaXJt
d2FyZSBmcmFtZWJ1ZmZlciBzaG91bGQgYmUgemFwcGVkIHNvIHRoYXQgaXQga25vd3Mgbm90IHRv
IGRvIGFueXRoaW5nIGFueXRoaW5nIHdpdGggaXQuDQoNCj4gDQo+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIEphbnVhcnkgMjAsIDIwMjYgODoxMSBBTQ0KPiBU
bzogWWFvLCBKaWEgPGppYS55YW9AaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgWnVvLCBBbGV4IDxhbGV4Lnp1b0BpbnRlbC5jb20+OyANCj4gTGluLCBT
aHVpY2hlbmcgPHNodWljaGVuZy5saW5AaW50ZWwuY29tPjsgQXNrYXIgU2FmaW4gDQo+IDxzYWZp
bmFza2FyQGdtYWlsLmNvbT47IFBpbmdmYW4gTGl1IDxwaWxpdUByZWRoYXQuY29tPjsgQ2hyaXMg
V2lsc29uIA0KPiA8Y2hyaXMucC53aWxzb25AbGludXguaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBS
ZTogW1BBVENIIHYzXSBkcm0vaTkxNTogQ2xlYXJpbmcgdGhlIE1lbW9yeSBTcGFjZSBFbmFibGUg
Yml0IA0KPiB3aGVuIGRpc2FibGluZyBpOTE1DQo+IA0KPiBPbiBUdWUsIEphbiAyMCwgMjAyNiBh
dCAwNDo0MjowM0FNICswMDAwLCBKaWEgWWFvIHdyb3RlOg0KPiA+IEluIGEga2V4ZWMgcmVib290
IHNjZW5hcmlvLCB0aGUgR1BVJ3MgR2xvYmFsIEdyYXBoaWNzIFRyYW5zbGF0aW9uIA0KPiA+IFRh
YmxlDQo+ID4gKEdHVFQpIHJldGFpbnMgaXRzIHByZXZpb3VzIHN0YXRlIGFmdGVyIHRoZSBrZXJu
ZWwgaXMgcmVsb2FkZWQsIA0KPiA+IHVudGlsDQo+ID4gaTkxNSByZWluaXRpYWxpemVzIHRoZSBH
R1RULg0KPiA+IA0KPiA+IFRoZSBzaW1wbGUtZnJhbWVidWZmZXIgZHJpdmVyIGlzIGluaXRpYWxp
emVkIGJlZm9yZSBpOTE1IGFuZCANCj4gPiBhY2Nlc3NlcyB0aGUgUENJZSBtZW1vcnkgc3BhY2Ug
KEdQVSBhcGVydHVyZSkgdGhyb3VnaCBvdXRkYXRlZCBHR1RUIGVudHJpZXMuDQo+ID4gVGhpcyBs
ZWFkcyB0byBpbnZhbGlkIHBoeXNpY2FsIG1lbW9yeSBhY2Nlc3NlcywgY2F1c2luZyBHUEYgb3Ig
ZGF0YSBjb3JydXB0aW9uLg0KPiA+IA0KPiA+IFRvIHByZXZlbnQgc3VjaCBpc3N1ZXMsIHRoZSBN
ZW1vcnkgU3BhY2UgRW5hYmxlIChNU0UpIGJpdCBpbiB0aGUgUENJIA0KPiA+IENvbW1hbmQgUmVn
aXN0ZXIgaXMgY2xlYXJlZCBkdXJpbmcgaTkxNV9kcml2ZXJfc2h1dGRvd24uIFRoaXMgDQo+ID4g
ZGlzYWJsZXMgYWxsIFBDSWUgbWVtb3J5IHNwYWNlIGFjY2VzcyAoaW5jbHVkaW5nIE1NSU8gYW5k
IGFwZXJ0dXJlKSBhdCB0aGUgaGFyZHdhcmUgbGV2ZWwuDQo+ID4gQWZ0ZXIgdGhlIGtlcm5lbCBp
cyByZWxvYWRlZCwgYWNjZXNzIHRvIHRoZSBQQ0llIG1lbW9yeSBzcGFjZSB3aWxsIA0KPiA+IGJl
IGZvcmJpZGRlbiB1bnRpbCBpOTE1IGlzIHJlLWluaXRpYWxpemVkLg0KPiANCj4gU3RpbGwgbG9v
a3MgbGlrZSBhIGhhY2suIEkgdGhpbmsgdGhlIGNvcnJlY3QgZml4IHdvdWxkIGludm9sdmUgcHJl
dmVudGluZyB0aGUga2V4ZWMnZCBrZXJuZWwgZnJvbSBpbml0aWFsaXppbmcgdGhlIGZiIGRyaXZl
ciB0aGF0IGlzIGRvaW5nIHRoZSBpbnZhbGlkIG1lbW9yeSBhY2Nlc3Nlcy4NCj4gDQo+ID4gDQo+
ID4gU2luY2UgZGlzYWJsaW5nIFBDSWUgbWVtb3J5IHNwYWNlIGFmZmVjdHMgYWxsIE1NSU8gb3Bl
cmF0aW9ucywgUFhQIA0KPiA+IHNodXRkb3duIG5lZWRzIHRvIGJlIGNvbXBsZXRlZCBiZWZvcmUg
dGhpcyBwb2ludC4gQ2FsbHMNCj4gPiBpbnRlbF9weHBfZmluaSgpIGJlZm9yZSBkaXNhYmxpbmcg
bWVtb3J5IHNwYWNlIHRvIGVuc3VyZSBQWFAgY2xlYW51cCBjYW4gc3RpbGwgYWNjZXNzIE1NSU8g
cmVnaXN0ZXJzLg0KPiA+IA0KPiA+IHYyOg0KPiA+ICAgLSBmb2xsb3cgYnJhY2Ugc3R5bGUNCj4g
PiANCj4gPiB2MzoNCj4gPiAgIC0gcmV2aXNlIGRlc2NyaXB0aW9uDQo+ID4gDQo+ID4gTGluazog
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8x
NDU5OA0KPiA+IENjOiBBbGV4IFp1byA8YWxleC56dW9AaW50ZWwuY29tPg0KPiA+IENjOiBTaHVp
Y2hlbmcgTGluIDxzaHVpY2hlbmcubGluQGludGVsLmNvbT4NCj4gPiBDYzogQXNrYXIgU2FmaW4g
PHNhZmluYXNrYXJAZ21haWwuY29tPg0KPiA+IENjOiBQaW5nZmFuIExpdSA8cGlsaXVAcmVkaGF0
LmNvbT4NCj4gPiBTdWdnZXN0ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXMucC53aWxzb25AbGlu
dXguaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEppYSBZYW8gPGppYS55YW9AaW50ZWwu
Y29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jIHwg
MzUNCj4gPiArKysrKysrKysrKysrKysrKysrKysrKysrKystLS0NCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDMyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gPiBpbmRleCBiNDZjYjU0ZWY1ZGMuLjc2NmY4NTcy
NmI2NyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5j
DQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYw0KPiA+IEBAIC0x
MTgsNiArMTE4LDMzIEBADQo+ID4gIA0KPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9kcml2
ZXIgaTkxNV9kcm1fZHJpdmVyOw0KPiA+ICANCj4gPiArc3RhdGljIGludCBpOTE1X2VuYWJsZV9k
ZXZpY2Uoc3RydWN0IHBjaV9kZXYgKnBkZXYpIHsNCj4gPiArCXUzMiBjbWQ7DQo+ID4gKwlpbnQg
cmV0Ow0KPiA+ICsNCj4gPiArCXJldCA9IHBjaV9lbmFibGVfZGV2aWNlKHBkZXYpOw0KPiA+ICsJ
aWYgKHJldCkNCj4gPiArCQlyZXR1cm4gcmV0Ow0KPiA+ICsNCj4gPiArCXBjaV9yZWFkX2NvbmZp
Z19kd29yZChwZGV2LCBQQ0lfQ09NTUFORCwgJmNtZCk7DQo+ID4gKwlpZiAoIShjbWQgJiBQQ0lf
Q09NTUFORF9NRU1PUlkpKQ0KPiA+ICsJCXBjaV93cml0ZV9jb25maWdfZHdvcmQocGRldiwgUENJ
X0NPTU1BTkQsIGNtZCB8IA0KPiA+ICtQQ0lfQ09NTUFORF9NRU1PUlkpOw0KPiA+ICsNCj4gPiAr
CXJldHVybiAwOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0aWMgdm9pZCBpOTE1X2Rpc2FibGVf
ZGV2aWNlKHN0cnVjdCBwY2lfZGV2ICpwZGV2KSB7DQo+ID4gKwl1MzIgY21kOw0KPiA+ICsNCj4g
PiArCXBjaV9yZWFkX2NvbmZpZ19kd29yZChwZGV2LCBQQ0lfQ09NTUFORCwgJmNtZCk7DQo+ID4g
KwlpZiAoY21kICYgUENJX0NPTU1BTkRfTUVNT1JZKQ0KPiA+ICsJCXBjaV93cml0ZV9jb25maWdf
ZHdvcmQocGRldiwgUENJX0NPTU1BTkQsIGNtZCAmIA0KPiA+ICt+UENJX0NPTU1BTkRfTUVNT1JZ
KTsNCj4gPiArDQo+ID4gKwlwY2lfZGlzYWJsZV9kZXZpY2UocGRldik7DQo+ID4gK30NCj4gPiAr
DQo+ID4gIHN0YXRpYyBpbnQgaTkxNV93b3JrcXVldWVzX2luaXQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KSAgew0KPiA+ICAJLyoNCj4gPiBAQCAtNzg4LDcgKzgxNSw3IEBAIGlu
dCBpOTE1X2RyaXZlcl9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgY29uc3Qgc3RydWN0IHBj
aV9kZXZpY2VfaWQgKmVudCkNCj4gPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5Ow0K
PiA+ICAJaW50IHJldDsNCj4gPiAgDQo+ID4gLQlyZXQgPSBwY2lfZW5hYmxlX2RldmljZShwZGV2
KTsNCj4gPiArCXJldCA9IGk5MTVfZW5hYmxlX2RldmljZShwZGV2KTsNCj4gPiAgCWlmIChyZXQp
IHsNCj4gPiAgCQlwcl9lcnIoIkZhaWxlZCB0byBlbmFibGUgZ3JhcGhpY3MgZGV2aWNlOiAlcGVc
biIsIEVSUl9QVFIocmV0KSk7DQo+ID4gIAkJcmV0dXJuIHJldDsNCj4gPiBAQCAtNzk2LDcgKzgy
Myw3IEBAIGludCBpOTE1X2RyaXZlcl9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgDQo+ID4g
Y29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCkNCj4gPiAgDQo+ID4gIAlpOTE1ID0gaTkx
NV9kcml2ZXJfY3JlYXRlKHBkZXYsIGVudCk7DQo+ID4gIAlpZiAoSVNfRVJSKGk5MTUpKSB7DQo+
ID4gLQkJcGNpX2Rpc2FibGVfZGV2aWNlKHBkZXYpOw0KPiA+ICsJCWk5MTVfZGlzYWJsZV9kZXZp
Y2UocGRldik7DQo+ID4gIAkJcmV0dXJuIFBUUl9FUlIoaTkxNSk7DQo+ID4gIAl9DQo+ID4gIA0K
PiA+IEBAIC04ODUsNyArOTEyLDcgQEAgaW50IGk5MTVfZHJpdmVyX3Byb2JlKHN0cnVjdCBwY2lf
ZGV2ICpwZGV2LCBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqZW50KQ0KPiA+ICAJZW5hYmxl
X3JwbV93YWtlcmVmX2Fzc2VydHMoJmk5MTUtPnJ1bnRpbWVfcG0pOw0KPiA+ICAJaTkxNV9kcml2
ZXJfbGF0ZV9yZWxlYXNlKGk5MTUpOw0KPiA+ICBvdXRfcGNpX2Rpc2FibGU6DQo+ID4gLQlwY2lf
ZGlzYWJsZV9kZXZpY2UocGRldik7DQo+ID4gKwlpOTE1X2Rpc2FibGVfZGV2aWNlKHBkZXYpOw0K
PiA+ICAJaTkxNV9wcm9iZV9lcnJvcihpOTE1LCAiRGV2aWNlIGluaXRpYWxpemF0aW9uIGZhaWxl
ZCAoJWQpXG4iLCByZXQpOw0KPiA+ICAJcmV0dXJuIHJldDsNCj4gPiAgfQ0KPiA+IEBAIC0xMDAz
LDYgKzEwMzAsNyBAQCB2b2lkIGk5MTVfZHJpdmVyX3NodXRkb3duKHN0cnVjdCANCj4gPiBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQ0KPiA+ICANCj4gPiAgCWludGVsX2RtY19zdXNwZW5kKGRpc3Bs
YXkpOw0KPiA+ICANCj4gPiArCWludGVsX3B4cF9maW5pKGk5MTUpOw0KPiA+ICAJaTkxNV9nZW1f
c3VzcGVuZChpOTE1KTsNCj4gPiAgDQo+ID4gIAkvKg0KPiA+IEBAIC0xMDIwLDYgKzEwNDgsNyBA
QCB2b2lkIGk5MTVfZHJpdmVyX3NodXRkb3duKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQ0KPiA+ICAJZW5hYmxlX3JwbV93YWtlcmVmX2Fzc2VydHMoJmk5MTUtPnJ1bnRpbWVfcG0pOw0K
PiA+ICANCj4gPiAgCWludGVsX3J1bnRpbWVfcG1fZHJpdmVyX2xhc3RfcmVsZWFzZSgmaTkxNS0+
cnVudGltZV9wbSk7DQo+ID4gKwlpOTE1X2Rpc2FibGVfZGV2aWNlKHRvX3BjaV9kZXYoaTkxNS0+
ZHJtLmRldikpOw0KPiA+ICB9DQo+ID4gIA0KPiA+ICBzdGF0aWMgYm9vbCBzdXNwZW5kX3RvX2lk
bGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+IC0tDQo+ID4gMi4zNC4x
DQo+IA0KPiAtLQ0KPiBWaWxsZSBTeXJqw6Rsw6QNCj4gSW50ZWwNCg0KLS0NClZpbGxlIFN5cmrD
pGzDpA0KSW50ZWwNCg==
