Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF86B4316C
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 06:53:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F81010E96C;
	Thu,  4 Sep 2025 04:53:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S/Nkatwh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 543AE10E056;
 Thu,  4 Sep 2025 04:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756961621; x=1788497621;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=pvrGGbqP5kqKKL7FQp9M4GUwBtOK937j1IMohGIpLNs=;
 b=S/NkatwhYw623cNNooc4xXvLngPikm8hf5EUZMDVtUAp+3WPq4OZAgWe
 Jufzz0jz7t0W0RV4oOkIch9rZBP9W0fwmQLKeYze0P3zghcNqlEMrWWsv
 FK9l0+QGyiKY1yXfEhVtMbn6HWsfDT7eTYn0W2fepaDkqiGeXryi3+EMZ
 1wDk1DhUFiL0Jd43VtdRGdSyIGy5lxK7qHaGAWkStct7Uyb+w5RYwxQbp
 dkixGHWvK5xW23SFAGwL+5FLHVR0fMJART9pVoUB6i7FbHhKmv9MI/bmv
 BTLtflW8hVl3QmIyxM4nPgZzgxTMl+tNp85VLPVO6mtX1Cw3Mp88gTsxl w==;
X-CSE-ConnectionGUID: O7rZePwxSEyU8MktAcQBsw==
X-CSE-MsgGUID: bqIxkhV5TimN4ejuig9u8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="58988585"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="58988585"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 21:53:40 -0700
X-CSE-ConnectionGUID: C2KHmQlIRPu21tmw3nWdKA==
X-CSE-MsgGUID: 29IKifDfTiuKC2EqNtEXJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="171350637"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 21:53:40 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 21:53:40 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 21:53:40 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.79) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 21:53:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mSosC5aQQyA90uu2zhv+UORlMBMqmdLwPZYvZjxG1euBh3un3fATUVd64PNyyG2a2DeohUC/q/W4Nrf87mCIqjO1X6nluLFxZzpGPQFeSzL3Ko6QFHgfaw251wMNu50d0fWRONKx0maggF+772n9YrTwjKFMQqPXCKcfOqwcHdr+r22IV+XysqBufPLbIBLPmzZh5kEjk1BOFJOMI30Cm9djULLB/XLS9tIus9aOdGe8vtnE+BwKVMTGe4QF1Ce6txH2ceDvWOqUJ+8kwasa7/xdHd8Ngg5J7ZlZhx/hUvwGGYrkyLZt40voFgW16XUZRVrFZzm8dM3hfyIV1BHPaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pvrGGbqP5kqKKL7FQp9M4GUwBtOK937j1IMohGIpLNs=;
 b=O2crkPcxyu8oPOLLtiOpsLBXJNVhpaCs5/LAxGOKDRGrFpDnjv5NH6w3MDyTG8k+UNwr5IMdcj8hbzcsVRq/LwBt51EbGCOaaXBT+LqkOpEgD89qd82+3ckJxTSIOecoTgPp2wSafU/SgXNoTD82lROLyMEL80YViKcINX9AA5/0Eegk9sSxfjpwTNa0xAYwu+8YFglmfWSmV5qnLktqM6Gcprgix2cCY+E++NjtySEI9tWdwXjrcZZVFL2m+E4S6tA+REPL++dGT2wfc1ZDX7GCR/uaxsNqDu1UmLVwW4qGWwJ6mOdnYUqSGVwJYRB0GiYEGcl5Ir5KHmq42dEJOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB8284.namprd11.prod.outlook.com (2603:10b6:806:268::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Thu, 4 Sep
 2025 04:53:37 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Thu, 4 Sep 2025
 04:53:37 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 06/20] drm/i915/gmbus: use generic poll_timeout*() instead
 of wait_for*()
Thread-Topic: [PATCH 06/20] drm/i915/gmbus: use generic poll_timeout*()
 instead of wait_for*()
Thread-Index: AQHcGBZZSZXVGCGS1UqUiwG/W5ignbSCf5EA
Date: Thu, 4 Sep 2025 04:53:37 +0000
Message-ID: <93f5a406c42e3641df35b6f85505a1b31709426f.camel@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
 <564b397352c53a1116519fb2d53050c0426bc0dc.1756383233.git.jani.nikula@intel.com>
In-Reply-To: <564b397352c53a1116519fb2d53050c0426bc0dc.1756383233.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB8284:EE_
x-ms-office365-filtering-correlation-id: 3fc1ed68-d3e7-44ae-edf8-08ddeb6f0292
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?SVdER0xTNHliMTRlZGFYSnVhNFkrSjFkbDdsaFprUFVOdTRJSGZYUVN6K3pj?=
 =?utf-8?B?NWkvNkhucHNsRm1zOUFGMXJlM0hHaGFOQkM0Ni81VTMzbkwreHpkbGR2bHhN?=
 =?utf-8?B?L3gzc1B3SDRWTEJOMDlVZnh2WDA4OGY1a3ViMUlzeXNzTWZPV3NNSUtNNnNn?=
 =?utf-8?B?RW44WnJERk9LVTlCK2V6WG1MSHJML1h3OVlOd1NPQWhmdDFXc21TZGpvWjVn?=
 =?utf-8?B?d0lwODZTMG54cXZ5OGErbUFrODBUUFlRT2lDT0JQTFVsRm83VEo4bDJHN1Jj?=
 =?utf-8?B?SHhlR0ZnaHNZRXBITFp2ajJjaVlqUkxUYWdlZ0ltRURsaS9iYkEyeEo5THc5?=
 =?utf-8?B?eFkvU3FyNTBPMUV4aEZuZk1aWE5ibmNTeXU2cDdmWVVSUG9sd09wVnV6OWZo?=
 =?utf-8?B?bkMxcnBGU0ZqbzlyKzBOSlo1TlB2VThBUHk2ZFh6MUxVRUMrNldmT0hjWkkx?=
 =?utf-8?B?TE9KMzNnbHBKWEQ2NVdMcWxSKzRMeUtrVXVoREVHR3c5dzFaNXRDUWREMG9Z?=
 =?utf-8?B?cEU0Y2tpSFdmOFJRWm4xOVYwaUo4aktlekRHbE54QkFHcGNFaERZRUdDblN1?=
 =?utf-8?B?d2VlMFFWZ3BYTDVSa3hYd2dYMWdJeEZYbitLaVVkRHBHNnRQSTZkZS9icHZR?=
 =?utf-8?B?ZXNIMEt1TWJMa3F0aDFUVDBpQzNxM1I2c1FXUnNEYjR6Yy9nUG54c1lXcGFj?=
 =?utf-8?B?YkV3Z21lYTRKRnk3UWR4UElOZFpmTUJNYy9YVzVtMW1HMXl6UTZLRGVzMWky?=
 =?utf-8?B?dVpyVktIM3Zia3VLdHBRWkcwYnFoM1JucUtKRVRPSjlYbzF3RFVzdEVJWWVK?=
 =?utf-8?B?M2J4REtmYmZyQlZqb3QveWsrKzRSVU44bG9iTXo3aXZkRDl1eVNuUnJkMVhP?=
 =?utf-8?B?NGs2RGZ5K2NkMFpQejVBZGJmaitoNWdRY2Frbnp4RDdlTThacmVKZnBuVHVD?=
 =?utf-8?B?ZllmVW9oZzlpanQvSVF0MDE4Z2w2M280bWFwTHdiWVRaSk1qUE4zTjRBZDh3?=
 =?utf-8?B?STZPbWU3cVpSN0Zyd0ozNU90OHVZOHFGKzhiN0loRm85OTdHWUpIYzZTSytK?=
 =?utf-8?B?a2VGdWpNVHVqOEJWTmtFN0tqYTVleDRDd2VkOGlLV2d0UE5XYmppNmJKQm9x?=
 =?utf-8?B?Y0pqZ0FqRXFkSVRvSTVTTzduRVQ4QXhTMjB1eE1FOVF3YVhjamNYakVFVU9H?=
 =?utf-8?B?M1NDNGsyMWpWMmprdVFNTUxzVkJvZVFGdXJVZGl0dnRyRzZYcngwUVdVc3ha?=
 =?utf-8?B?OUZzOVVsS2lmZk5GUlRpbnFvVEQwTFFUUTZiS2lRQTBiSUNZMFl5RForTkxD?=
 =?utf-8?B?SFNCSnh5RUx3RkZpazlJQU1VNitsU0lCUDdCcE9Lb1BqT2xvdVhmYW9Ec3FZ?=
 =?utf-8?B?bWdvQmZQaC9QMy9VWW5xZGlvWXVLSExYQ216R0RJVVdQUGh4L0dCbjh4NnVK?=
 =?utf-8?B?NHNZQURUeWxjQVRBMXR0T3daanNUd3VGZjkvZFdtVXRwMlYvSGpnNjluTC9k?=
 =?utf-8?B?UGt3Y3dWQ3c3NkFYWXg1RnVNbTBLYVBwcVBCZHRVZWpoOXluWXRmaWNDOCtq?=
 =?utf-8?B?Sm4xbkZ1WkF5OWlPTVJyUVpNR3FEUWpuU21QWVpZVWlOcFhqR1o2dkN3T3la?=
 =?utf-8?B?V2JaN3RzRlpsSGh0Z3VvNjUyamZ2dHNKMWc2d1k1U25CeUhPRXdxYjIxRVlX?=
 =?utf-8?B?RGduL1FLK1Zxd1RrKzNocWV2T3Q4ZnZjN3BnRytHVmVsU0xZdnZZTE81eHRR?=
 =?utf-8?B?QmczTWdsTlkyS3BLcjBJSW1xN29LVWlvd3FmMmFoNHk0cmp3MUJEdVdhRDBj?=
 =?utf-8?B?ZVpRMlR3TXh2WUIwMDdVSVhNVCtTNm8xOU0zTGVDYUFCOUU1OHFqR2xSdHdL?=
 =?utf-8?B?TmFIN0Y5aXh1S05PeE02V1o1L1E3dlNWWDR6Z1RybTJsVnFwVXNPa1BKQzhU?=
 =?utf-8?B?TUFwcnh3NzJIMnVwMHE0eHQ4Ky9adVQ0YzJVTFRuM00rTEFUUnJnZ0VBVEIz?=
 =?utf-8?B?Ny83RVc0UVdBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZnFBK3JwUlJhWkVoU2lCVE10U2JHUVB3eGRtU0M2dXl4djMzL2U0S2JtcThM?=
 =?utf-8?B?MDlMUml2aVFwaUkwbGI3d0YrM0U4amVxcHB1WVZ3SmpZWTN0ZU5ySjQxeGVM?=
 =?utf-8?B?Y1MvZFN3blVVb2h4Y0Rlb04ydjllTERQcWNTRU9OYWQwL3VnOTlGc0s0d3hX?=
 =?utf-8?B?VWlnS2xFUGk1enRydFd4dXZycm1lUzI4RUlvN3ErQnlDcTc5M0Z4dFUrMHNS?=
 =?utf-8?B?ektLWHp0dTlTc0RZUjJIUzNEa253ZU5lMkE4UDFRNnlMVnF6Z1NFN2lmdWJ0?=
 =?utf-8?B?cnVSVml4c2I1WDFDcnZVeTdUSXV6ejBxeno1dEdqbnUvRWtlRFFuMkExRzNZ?=
 =?utf-8?B?WFJKbTljd1c5MnV1TnVEWko5bHozNUk3RUxabzlQNzhvbE9PV2F2ZGVlVTR1?=
 =?utf-8?B?Sjc4bjFCNDJSeHJnVjRZM2MxQldlNTBVVzhOY0hUK2loaDJpT1BwZXhHc1NY?=
 =?utf-8?B?SWhDbG4vbmtJaHhFN0RpK3VBYm1mMk1MM3VobTBqTDJtck9jNWNLYmpXN0xK?=
 =?utf-8?B?Nmh4RGNtY1BqUnN3L2xaZXBBdSt6QUFJMkErZGZPWlJDYzN4OHJ2YzFGeGFl?=
 =?utf-8?B?ZS9QUC8ySnhQVVhrazFSQ2NIQzIxbDVTaGUyZ3F0S0V2V2N3ZGhJOGlnaUpo?=
 =?utf-8?B?R3lHd0pPdGZTRnY5cHZ2SHpJbmVXV082N2ttODh1Y0xYd1htMkF6Q09FYkJC?=
 =?utf-8?B?Y00reFB5Unc4NmR3ZGgrS0tNQUVJTFdubnlxWCs3eUwrUkNkOFJDbW9McFZ1?=
 =?utf-8?B?ZGlKZkdzazRjYkpvSzRZVEI5dkFqTWtLZU8yMDdEc1I0SXQ4dDZKUXVXTy9m?=
 =?utf-8?B?cnRVS1hMSHJPaStFeThMdkxJVGtHS1lkeFNJaFpCUmpoZm9rM1NiWU4wTXU5?=
 =?utf-8?B?THp6dFdTMktUMU1zZXFiM1ZLUVV0cVF1SzJLdy9EL1JHclYzbDZtMkR6Z3R2?=
 =?utf-8?B?QmxUVk41c0YzaWE4eHJpellPelU1bjJyWkJMQU5ka093Y3BleTVtbE5jbU1j?=
 =?utf-8?B?ZHRYalBGWnozS21xWkJzb0hKZURJZ3IycHo5U1B2dW9udE9Mam11UDFaNisw?=
 =?utf-8?B?QlIzWFp0MkpuMXhxZEFvZFJVWXBoemRnRjNnWGR2RDFya2FJcFovTFlBSHd3?=
 =?utf-8?B?OElLNnhaTG9pcnNWMDJBWndkL0dEUHh6cmRSUUJwTzhYOGN1Z2l3RSswVkZV?=
 =?utf-8?B?SUUzUVc3eStUZXc4RVNkUE5RTjRaUzRoTWtLUmlIOEk0bUk4dDVzZ1YwQXdB?=
 =?utf-8?B?azVpOVNFMDBzT3ZQWTFrdXp4dGJwWFBrT2NlZjd1VDdidGJIR3VZbGQ2N3E1?=
 =?utf-8?B?VittTkFuLzNjMDY5UnV1dWZXRlU4bldiUmN1UWJCRjRyUTQ2TDR0Q2NvZVFZ?=
 =?utf-8?B?aDZ5eWdidXQrMFNubU11T2p2VDRrOGVVbHpka2h0czU5QkZWbVFLZUp3Z1pK?=
 =?utf-8?B?QkJaUjV6MXFRN3k3R3NxdittSW5EL1NUOHh6eTMraTFjcHhTTVVCTmtuL0JD?=
 =?utf-8?B?WVZKSXl5azAwaHNyTEZTRnV5SDdPMG05eXV5Y1ErZXBiWnJzTTRFUzRKd1Zi?=
 =?utf-8?B?bkF3SU1wMkg5V000dThmS0t2WlZWQVZDRm4zWkl2MFVsbWdJVnY0bDFzR01E?=
 =?utf-8?B?dHVXQmFvOWI5MmE5TXF1TnM0b0d0ZkZpNXRYTkY1YnhZTVhXRVlEeDVWTkhK?=
 =?utf-8?B?N1p2UEtTV3MyejArcHRJeXcxbkpBRDNJR1lKNmZEK2NzclBFNGRxc3VFd29r?=
 =?utf-8?B?M3FIUkIvcWJicURueXdoWEJMaGpYeUJYMlhaalk0SkMxMVRZUENRWGwzZUxW?=
 =?utf-8?B?aWYrcEkvRVpVWFh6RDQ5NHdZNkpZalV6aGY5WDRYOXlQYVNSaFBvWlRQV2h6?=
 =?utf-8?B?aENrNklOVnNHdDQ4Q08rcXlFT2l3WDhvVnRuSytpbWJQcTNnRWJkR0J6bTFp?=
 =?utf-8?B?ZDEvbGsvM1dkblhid3g0anFnWDcxeDNoYmVZMm5IVjZNSFJOU0c0bERxaElP?=
 =?utf-8?B?Y0tLQXYyZFRnWkpSRkZ0RExRdEpFSWtRQWptRUxtMTJqZmlscnpJcnNINFR0?=
 =?utf-8?B?SmVmTHB0RDdabnE2RkQ4Z2pGbDBhSkhOQnVyajloeGFuT21Fei9URWlSS3My?=
 =?utf-8?B?M0RIWUpJNld3TUdnbnBrNzduQmxEaFBSTW15ZloxUUpOUTVaYzc3ekpKTzJr?=
 =?utf-8?B?Z0FzbUN3enVrK2l2OXlFaUsvNmRteUZWdHBsTjFkZ3VUNXR4cjlsaEtacCth?=
 =?utf-8?B?MDRObk5IZzRTeStDaVpHbGlpdW53PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <AEC3F083BD86FB48B7BFF9218B1635BA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fc1ed68-d3e7-44ae-edf8-08ddeb6f0292
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 04:53:37.3482 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BX/THmShk2m2GxLE9QhLdIyRx+71bVh9o1R8R1BdI0pF4exbT8DFCA2BopfQrxkpMrPgRFyuMHfwfwf+q2+/nM7lrwcbvNgEB+aBmxAmwvw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8284
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

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDE1OjIwICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
UHJlZmVyIGdlbmVyaWMgcG9sbCBoZWxwZXJzIG92ZXIgaTkxNSBjdXN0b20gaGVscGVycy4NCj4g
DQo+IFRoZSAidHdvIHRpZXIiIHdhaXRfZm9yX3VzKCkgKyB3YWl0X2ZvcigpIGNvbWJpbmF0aW9u
IGFwcGVhcmVkDQo+IHdpdGhvdXQNCj4gbXVjaCBleHBsYW5hdGlvbiBpbiBjb21taXQgNGU2YzJk
NThiYTg2ICgiZHJtL2k5MTU6IFRha2UgZm9yY2V3YWtlDQo+IG9uY2UNCj4gZm9yIHRoZSBlbnRp
cmUgR01CVVMgdHJhbnNhY3Rpb24iKS4gVHJ5IHRvIG1pbWljIHJvdWdobHkgdGhlIHNhbWUNCj4g
d2l0aA0KPiB0aGUgZ2VuZXJpYyBoZWxwZXJzLg0KPiANCj4gd2FpdF9mb3JfdXMoKSB3aXRoIDEw
IHVzIG9yIHNob3J0ZXIgdGltZW91dHMgZW5kcyB1cCBpbg0KPiBfd2FpdF9mb3JfYXRvbWljKCku
IFRodXMgdXNlIHBvbGxfdGltZW91dF91c19hdG9taWMoKSBmb3IgdGhlIGZpcnN0DQo+IHRyeSwN
Cj4gd2l0aCB0aGUgc2FtZSAyIHVzIHRpbWVvdXQgYW5kIG5vIHNsZWVwLg0KPiANCj4gRm9yIHRo
ZSBmYWxsYmFjaywgdGhlIGZ1bmN0aW9uYWwgY2hhbmdlIGlzIGxvc2luZyB0aGUgZXhwb25lbnRp
YWxseQ0KPiBncm93aW5nIHNsZWVwIG9mIHdhaXRfZm9yKCksIHdoaWNoIHVzZWQgdG8gYmUgMTAs
IDIwLCA0MCwgLi4uLCA2NDAsDQo+IGFuZA0KPiAxMjgwIHVzLiBVc2UgYW4gYXJiaXRyYXJ5IGNv
bnN0YW50IDUwMCB1cyBzbGVlcCBpbnN0ZWFkLiBUaGUgdGltZW91dA0KPiByZW1haW5zIGF0IDUw
IG1zLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVs
LmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPg0KDQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Z21idXMuYyB8IDEzICsrKysrKysrLS0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZ21idXMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZ21idXMuYw0KPiBpbmRleCAwNjMzMzUwNTNkMTMuLjM1ODIxMGFkYjhmOCAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9nbWJ1cy5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZ21idXMuYw0KPiBA
QCAtMzAsMTMgKzMwLDEzIEBADQo+IMKgI2luY2x1ZGUgPGxpbnV4L2V4cG9ydC5oPg0KPiDCoCNp
bmNsdWRlIDxsaW51eC9pMmMtYWxnby1iaXQuaD4NCj4gwqAjaW5jbHVkZSA8bGludXgvaTJjLmg+
DQo+ICsjaW5jbHVkZSA8bGludXgvaW9wb2xsLmg+DQo+IMKgDQo+IMKgI2luY2x1ZGUgPGRybS9k
aXNwbGF5L2RybV9oZGNwX2hlbHBlci5oPg0KPiDCoA0KPiDCoCNpbmNsdWRlICJpOTE1X2Rydi5o
Ig0KPiDCoCNpbmNsdWRlICJpOTE1X2lycS5oIg0KPiDCoCNpbmNsdWRlICJpOTE1X3JlZy5oIg0K
PiAtI2luY2x1ZGUgImk5MTVfdXRpbHMuaCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfZGUuaCINCj4g
wqAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9yZWdzLmgiDQo+IMKgI2luY2x1ZGUgImludGVsX2Rp
c3BsYXlfdHlwZXMuaCINCj4gQEAgLTQxNSwxMSArNDE1LDE0IEBAIHN0YXRpYyBpbnQgZ21idXNf
d2FpdChzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSwgdTMyIHN0YXR1cywgdTMyIGly
cV9lbikNCj4gwqAJaW50ZWxfZGVfd3JpdGVfZncoZGlzcGxheSwgR01CVVM0KGRpc3BsYXkpLCBp
cnFfZW4pOw0KPiDCoA0KPiDCoAlzdGF0dXMgfD0gR01CVVNfU0FUT0VSOw0KPiAtCXJldCA9IHdh
aXRfZm9yX3VzKChnbWJ1czIgPSBpbnRlbF9kZV9yZWFkX2Z3KGRpc3BsYXksDQo+IEdNQlVTMihk
aXNwbGF5KSkpICYgc3RhdHVzLA0KPiAtCQkJwqAgMik7DQo+ICsNCj4gKwlyZXQgPSBwb2xsX3Rp
bWVvdXRfdXNfYXRvbWljKGdtYnVzMiA9DQo+IGludGVsX2RlX3JlYWRfZncoZGlzcGxheSwgR01C
VVMyKGRpc3BsYXkpKSwNCj4gKwkJCQnCoMKgwqDCoCBnbWJ1czIgJiBzdGF0dXMsDQo+ICsJCQkJ
wqDCoMKgwqAgMCwgMiwgZmFsc2UpOw0KPiDCoAlpZiAocmV0KQ0KPiAtCQlyZXQgPSB3YWl0X2Zv
cigoZ21idXMyID0gaW50ZWxfZGVfcmVhZF9mdyhkaXNwbGF5LA0KPiBHTUJVUzIoZGlzcGxheSkp
KSAmIHN0YXR1cywNCj4gLQkJCcKgwqDCoMKgwqDCoCA1MCk7DQo+ICsJCXJldCA9IHBvbGxfdGlt
ZW91dF91cyhnbWJ1czIgPQ0KPiBpbnRlbF9kZV9yZWFkX2Z3KGRpc3BsYXksIEdNQlVTMihkaXNw
bGF5KSksDQo+ICsJCQkJwqDCoMKgwqDCoCBnbWJ1czIgJiBzdGF0dXMsDQo+ICsJCQkJwqDCoMKg
wqDCoCA1MDAsIDUwICogMTAwMCwgZmFsc2UpOw0KPiDCoA0KPiDCoAlpbnRlbF9kZV93cml0ZV9m
dyhkaXNwbGF5LCBHTUJVUzQoZGlzcGxheSksIDApOw0KPiDCoAlyZW1vdmVfd2FpdF9xdWV1ZSgm
ZGlzcGxheS0+Z21idXMud2FpdF9xdWV1ZSwgJndhaXQpOw0KDQo=
