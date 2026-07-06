Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OiNOLjJUS2rWPQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 09:07:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4703970D4C1
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 09:07:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=iogJbG3t;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C09C10E15B;
	Mon,  6 Jul 2026 07:07:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABE8910E15B;
 Mon,  6 Jul 2026 07:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783321646; x=1814857646;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=70bOytYXj+nj4D05/ok25hbUJZNb3ubxK/cGjlaB3qU=;
 b=iogJbG3t5RbCB6q481DW+oiJxKEdXkRMjb/hng60iG7sRkVEBCLOFmEX
 ETGbo2suOxQT5cPpniRg//Sioop+mjvHlmvjJ+V31FdaIqNglEOZjw+Xe
 PIZQ7LQCje3RZ3l+Q6Wn/43ej/I6NMYAzIykbJ/NRbHhWFzDTvV50+zxQ
 YRE85ILsnwEK5VZlwLsDBbVTYg6MAVi86/11Ori5yIo0nA38nwbsjr9pi
 eqVEZqBvIY5m/iYP1XypqKGuuK/5sp++pqDW0dkj/4HVNRsV21x8MHebV
 R1uvPeBxVlo/DWpByrNoQhndcCkBxAvxvsCDvni6s+u4si42yPruarU9e w==;
X-CSE-ConnectionGUID: cl3mxBZ9TZ2kl0iVO2W1xQ==
X-CSE-MsgGUID: PBcVSacQTZ+S+JUu5tvFYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="94306650"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="94306650"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 00:07:26 -0700
X-CSE-ConnectionGUID: KdwCvTneQL+77vnDdxaPUA==
X-CSE-MsgGUID: QgAXbIMmR0yrkGrWbLmDDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="257959203"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 00:07:24 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 00:07:24 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 00:07:24 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 00:07:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aLx8uPk16xKn2SHaC3ZTWuwt+GbUMeoWgCZAsiV4D7bpXZOVa6TFHO9Bvb0AXyJQmiXX+Y5TSJNrYmzlfpjuneoZv2AJp5oolspaSM6CXZ1Kq+zH6IG/iDe2KA+X4ntfL3TPzt8Zkzv39sWvdCOEGvFdJG4Lx/42j9Tw+JVUQsx7MJGS6l7YVxn4leWIbll4uUqJSF3l0fFnpksAT9rD8hvmiCUXiebOWvpwuOBjcUj4HxzZsTLJ3CSgg8uu5Btxl5U0uIE1HEi7od4oMMf1ocplbK2ikgd6a8DcwbXrpguonMkyJoW+Mi7ZVGPAER3AqlL8xjADA2HQXwiM+WZTtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sDiXJ6/CGqUz65PA18lZQHP1bSRb0GxkiUE9vSQw7yY=;
 b=V72PxuVTbqwsUPvHPUCd0/bSs1Kau22qgrmkKdLv6MAnepmKJO5kZwbFtVsE2Z/NNTeGH3bSDRaTTR50K1B05MYIoG6Q90YgBKAbTZzuU3SDY6YcXfHHdkTW2fr038U1YxuMhqC3hzKfZOakBC6hsRTdm2m6LqStiKPN+Wx2qYCZTMIsCUp+e0HFAroAMLzFsnl0Vc/74fjXW/LsbSrKpDj7x7zHQWyc3ueEWh7KYIcfDjxcBSxbbeBrq3y23i9TPoCFK08i7DpinOY5xb4VQz2TnRWxYzUSPYjyoZ/Mn350+Lu6VPjdvrlgE7BxXXc3pvtaOzw/FZdUMAaDogcAvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CY5PR11MB6281.namprd11.prod.outlook.com (2603:10b6:930:23::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 6 Jul 2026
 07:07:13 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 07:07:13 +0000
Date: Mon, 6 Jul 2026 10:07:07 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 26/34] drm/i915/kunit: Enable KUnit tests
Message-ID: <aktUG4dj8DvqZvLP@ideak-desk.lan>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-27-imre.deak@intel.com>
 <9dca3ec7-42ef-57a3-3a89-79d289aeb0cc@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9dca3ec7-42ef-57a3-3a89-79d289aeb0cc@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F69E.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::137) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CY5PR11MB6281:EE_
X-MS-Office365-Filtering-Correlation-Id: c03e6687-2c5d-4fb9-e2c9-08dedb2d3462
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|6133799003|11063799006|4143699003|18002099003|22082099003|56012099006;
X-Microsoft-Antispam-Message-Info: xZf1LV38j68K7Ec4NqP9uI3pcRmW1SeXlHZdOt9E0PPWwk7h21MLIJllg0ZU3MN3mYFTdVUkJXpZBmHxqGxD+PUIxDpeGevBEFLlbr2kYkyQTX+fNIUO17axro6+o8D+vCSQ1zVNBitS1gv/rqsgNS8MteBfa2hf2ca7ZmGVIIUXz6w2jE71fhqC4i042VnV/cmr42g5Ztt65W9ff+NW8nwGBU01yLXV8u9uV+xpdXRUqGA8tYYXUlvndsmZQ+AWqfDmkc/2MUgs9OkuR6aGkBC47gTuPmywunVMXaSCy8ycut5QmR0XQ/l+Dp+54TRqCTK9aFNF9LUwk6amdnyNUJN+FdrKskKEe5sbna1UljVud+pAeJhjvJQS3MG7D2LlcMZhD+9EfggaaS/dMfJCIjC6Efg2mWVC0Ts3a3ig7BwUmRJB3b6SBSoaIMjZ1XVNhDCbJgsaGQS1ar+Bi1QidCmgn4pLsI6jn+2VMYEscr7Spn4/mTQPNJIkv+jToK2vYxo1H1MHm3CqfPEW3Sxl/xPoXyiiH5DLVr2KVIWiGOZTnnBuJJkFO7L0R0UUPgXLycAMDBkjyRlH+EkqUuzqolQLWpM8qeYtH/yaHqkh107vFhEWAlMLsQPHTlu0hiJYotpxp58RfCJ4Ggfx5nVCDa4r025c43nAhWyteeqpAy8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(6133799003)(11063799006)(4143699003)(18002099003)(22082099003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RFVocE5CZDY3TkhVUVExQStPZ1NkYytOcVM0RWRDM1pTVkVhaEl2Vi9QcjdO?=
 =?utf-8?B?aDlaOUNDakVxd0dhYW5sbnc5Y2lPdTVNSGRoRjhCd25XM1JvTkt1TEE5NEVF?=
 =?utf-8?B?K0o3Vmd3UDhST2lPQ0JSV2pMR0dhZmhOVk9NdzdlWGo4WFZxb2g4WnZBb29h?=
 =?utf-8?B?ZHU4ZzhXUU10Vy9LTmtyd1NFeVFXVzBjS29veUtFZEFJWmdQTlByS2xUVEc2?=
 =?utf-8?B?djNXdEwyRm9wbXlEWEFPVHdJWU8ra3BjUWxidzdxS3QrK2g2S21ma3dSOEpH?=
 =?utf-8?B?M0dEQnBJRUVPQ0dLY1MrcWM2UitucWJ3Y3hMRmpkTDJvQml6K3ZoOUNVZjY5?=
 =?utf-8?B?RS9oaStjUmRRUDlBUk5EdHZJUlMyNUVvOW9PZy9rc0M5RlRZK203OFRKRDVl?=
 =?utf-8?B?K1hTVEhKTTBjbVNiUGdobG9sV2Fia091ODJWRnQydU9DNmlyd1hPeURMTlJs?=
 =?utf-8?B?VUllb2V3NEJXYnl5cVVLUW5SeVZGaGcvTy9NSnhCTXFIa1R5VnJ3NGlsVmxv?=
 =?utf-8?B?RmVvVUJCWjFLOHBGcnJDQTNiYW5mQVRxeCtLWW5HTFdMWURDdzRxbWVsdXBh?=
 =?utf-8?B?cEdkRUN4WE1PajYveFIwbDJxVmU2aU1xaytHU01FSklLVHBLeHlJTDRSSDdH?=
 =?utf-8?B?ZlEzbXBKb0ZHeHc5c3NXNXM2UTlrdUsvSklyZEk3dTN0ZkFGSFJZZTFFTEhV?=
 =?utf-8?B?bGtxWjFmYjVPeElLTERsKzZuZDArNFlhSzEyTEcxcy95dlZncGZYbVkrTFkz?=
 =?utf-8?B?SHhPRFl6WUx4V1pJRnhNY29VdE1DUFRrZ0VCZFUxbU1RaXNYdUVFMDN3MWhL?=
 =?utf-8?B?NzdQSUsvd3FvYVo4T3NjZDdRNUViRWlSQjgxaE5KT1JzOXhVQ25YNisrTUx6?=
 =?utf-8?B?NVhnWWdRM1JpV0VXSUVEc3JkTWJHQUVmZnIyS0ozekRTVzkxVVhlZGRvL1hQ?=
 =?utf-8?B?T1RXR1J2MEI5d0R1a3JZY0R6THBvdnU3aTM2VzJkY1p2M1Btc3UvUWVvYVRR?=
 =?utf-8?B?dDAwUlFOejBsUnoxbHo5cGhaOUNYUjRxNWx0UVdSVVBhVUtiZUx0TDhFZGph?=
 =?utf-8?B?ck5FYWFneWNrQ3FUZjV2clFoVjJtZGNnM3BrRERZOVFyaUN0MGNkVHRRZldo?=
 =?utf-8?B?YUdpbHZWQnhpdmNOeG1WQ056NDUzTk9DRWgvRm9wQ216MmFwYmord3IyRGlW?=
 =?utf-8?B?YytXQ2FTeGk3WUhzMzNFM0VpdjZ4ZHh5SmJYVXRkY3RiUFY5ZUM5RHV4QVZp?=
 =?utf-8?B?d05FYnBLQVBiOWFNTERmSHZpTVllMVVnNUlycmN3b1JDMVFkUFZEWEtwaTll?=
 =?utf-8?B?STJkUGpuV3c3SldCK1BZTGxWa1BnaDBONDYyU1c4VWFjLzFaZ1pEc1JFcWg4?=
 =?utf-8?B?ZGk0aXlBeEI5MlpOeC9wVlhzOGdTVEpPa0lYMUFRaDdOZEhia1FrYnIwRUNr?=
 =?utf-8?B?SzRuZ1ducmtEQklTVlRJVG1lTUh6NmVnKzY4TGsvZ0V0L1RXNjFQSXlGUVVX?=
 =?utf-8?B?cmNLNi9tMGJaV3JOTCs3RHE3ci9lWU0yVHR3N3Y5M3YyTzBZZXIxd01qcm1j?=
 =?utf-8?B?UCt5WmNUY2YzelVCSTNObGozVTNPMG9uY054TkVBQnRJUmZtYW0vb0F4R1FX?=
 =?utf-8?B?OU81M1lSUTNmdDUzdGNTME43MWtnUmVYcmc0YlRnMEFjZVhJNmRRR004RTFV?=
 =?utf-8?B?ODJQRzBNcVpqNGhwQ0lKQkgvWDR4WUREMWl1dWs1TlhKbzBuVHU1RUlIbzRv?=
 =?utf-8?B?cTlOODRRUzJHcUsweXVEZGRSSHZtYm15Y0pHcUozck93alBTcytOdGJxZWwy?=
 =?utf-8?B?YUJHYmF2L0ViUEhmUnFNNEYxMXBtZmx1bW1yOTZCcWhDdXI3akhuMzVVdlps?=
 =?utf-8?B?bUVIUjUzeWp4cjQyQWwwWXFvaGgyK09iUGk0TVd2Z3FIY0lnS0RaVlc1T0lk?=
 =?utf-8?B?ekZob0VnYXpnTVZoMG93NWtUZVhkeXVDcHExMnRiVC9SanA3aGlPcXRFdkN5?=
 =?utf-8?B?NW5yYUl3S21yZjRsM2ppdXpSZkJCVnFUNGZpZE1OdTRrNjcxSWpiVTg4bmJM?=
 =?utf-8?B?Nmp6bVVidnRJYklCVEZGZjRKWVRTQTMyNkVNK1FLYWZ3allrVFh2UFk0TzZK?=
 =?utf-8?B?TGVNSzVYRVpyMW9RaGlVYnVlOHFvNTYzMkFsaitWemEzU29BdDBsV2dVRGlK?=
 =?utf-8?B?Rko1WmxQVlVmbm5aNkQvL0t2bi84VUFDa2ljdWUxMHdnbnFmQllpL3hxNWR2?=
 =?utf-8?B?N0dyVTFSeDFzMHdpS1lKMThMcnIyZncrQ2xpQ0tYVmEvSlR5TVpjbEM4UW1v?=
 =?utf-8?B?OTVmMjRUUDlwaDVzSnB3eThGNVJacFRTeHFsYXBWSXdMQVNYa0ZFdz09?=
X-Exchange-RoutingPolicyChecked: W8iC/bbXhy9J1QPhfef5u5XaVNSlxpAPK4XcUcHxq6XQv7PbOLG/Ep16HjIaWiUPbvZzM6iLZxLJp1Edk5+3MnHwnnSPR5tZb3sxQkwxBPeOXsWqYFOVLN5FY7nwP37O7rdpkbVmig/DqSvlsFj8yPqLXH4R+LcQUCFaXGpyQmfd51LxlGJe/P+0faimzNYvWrLfOg7F9td2cmzD9PBQSrv4M3SmuyQCIJkMLU53cdqqtPfq3jjyBHNZtyb+XNWTCvuI5zapcK7ZyjT4J40SDlkTPAq022xiNVC9/QiyGKw9okiezZBGjtm661+Rm/rQC+Dl1OsXuyIrtDLZ4+4aIQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: c03e6687-2c5d-4fb9-e2c9-08dedb2d3462
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 07:07:13.5024 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sWJW/OK7fpe6PAspqwWXRxTxbWvVdldvbgSwb8pVMZGSLpolMNwmLEjB3gyrbGNySxNLiU/jNjjP7fi0CskiSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6281
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:replyto,intel.com:email];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4703970D4C1

On Sat, Jul 04, 2026 at 12:48:29PM +0200, Michał Grzelak wrote:
> On Wed, 1 Jul 2026, Imre Deak wrote:
> > Add KUnit configuration for i915 and a local .kunitconfig to run the
> > tests.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> > drivers/gpu/drm/i915/.kunitconfig  | 12 ++++++++++++
> 
> Shouldn't .gitignore be updated with .kunitconfig, similar to PATCH
> 28/34 ("drm/xe/kunit: Add display test config")?

No, it's already in the .gitignore of a parent dir.

> Otherwise:
> Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
> 
> BR,
> Michał
> 
> > drivers/gpu/drm/i915/Kconfig.debug | 12 ++++++++++++
> > 2 files changed, 24 insertions(+)
> > create mode 100644 drivers/gpu/drm/i915/.kunitconfig
> > 
> > diff --git a/drivers/gpu/drm/i915/.kunitconfig b/drivers/gpu/drm/i915/.kunitconfig
> > new file mode 100644
> > index 0000000000000..70e55432bad64
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/.kunitconfig
> > @@ -0,0 +1,12 @@
> > +CONFIG_EXPERT=y
> > +CONFIG_MODULES=y
> > +CONFIG_KUNIT=y
> > +CONFIG_PCI=y
> > +CONFIG_DEBUG_FS=y
> > +CONFIG_MAGIC_SYSRQ=y
> > +CONFIG_DEBUG_KERNEL=y
> > +CONFIG_DEBUG_INFO=y
> > +CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT=y
> > +CONFIG_DRM=y
> > +CONFIG_DRM_I915=y
> > +CONFIG_DRM_I915_KUNIT_TEST=y
> > diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
> > index 52a3a59b4ba2c..dc43dcfbadb6e 100644
> > --- a/drivers/gpu/drm/i915/Kconfig.debug
> > +++ b/drivers/gpu/drm/i915/Kconfig.debug
> > @@ -220,6 +220,18 @@ config DRM_I915_SELFTEST_BROKEN
> > 
> > 	  If in doubt, say "N".
> > 
> > +config DRM_I915_KUNIT_TEST
> > +	tristate "KUnit tests for the drm i915 driver" if !KUNIT_ALL_TESTS
> > +	depends on DRM_I915 && KUNIT && DEBUG_FS
> > +	default KUNIT_ALL_TESTS
> > +	help
> > +	  Choose this option to allow the driver to perform selftests under
> > +	  the kunit framework
> > +
> > +	  Recommended for driver developers only.
> > +
> > +	  If in doubt, say "N".
> > +
> > config DRM_I915_LOW_LEVEL_TRACEPOINTS
> > 	bool "Enable low level request tracing events"
> > 	depends on DRM_I915
> > -- 
> > 2.49.1
> > 
> > 

