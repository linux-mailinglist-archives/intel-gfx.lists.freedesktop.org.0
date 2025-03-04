Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D1BA4E2EF
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 16:23:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A6E810E616;
	Tue,  4 Mar 2025 15:23:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yjbm8ws4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3167D10E617
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 15:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741101779; x=1772637779;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=TEiUplhqVmJuB7OS24BRhKdf+SVS2k9nLjCdy/oZXTs=;
 b=Yjbm8ws4b+JfyJzx0kc441S6Pj/gqarlfznPzxJt7xOaM2fVN6uJQzmI
 AMZEm8hHlgfoXP0C+g05iyQ0TTcIXpunksWKE3/x20wH12VrFOvitC6qm
 TD+HeFt0gep3RcmqHthuNCeDWAwvY2aoBmA0Y7GuTGo7U+t4AfLeMYzzB
 It3bLYXIWk5R/HDngvnWFVS9bo+M++3fsKmkYZUwraDiLRlkNwiwuIO2p
 owFApGEiQwe7h7MK3z4OMrz844TqRcwwyUPeZdexypy3uIRCpXDnQ2ktb
 Yxs4JNWjk0S+D8j57snEel2ggremY2m11hc5uzem6ZfZ6c/GdFeRUJsWC w==;
X-CSE-ConnectionGUID: 5kPrUXJWRtOfghDDjIbCkg==
X-CSE-MsgGUID: yyjw4CZ6TzqN4PiCdq5v1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="41934802"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="41934802"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:22:58 -0800
X-CSE-ConnectionGUID: odEC6fB1QSedrp+epoIEGA==
X-CSE-MsgGUID: b24Y2TVlQKejz2EnMAQhlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="149346072"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:22:57 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 4 Mar 2025 07:22:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 07:22:56 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 07:22:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tBM9sRVNr0KVR1IskG2MDJ3CqYyuC8bDfALJrI+c7yRt0fNsNxNB4R5NjtxpWccEtLQcKJLPfp8EDejusxEHt7mfpKzA2geYBxscisfTic8853mEDbLrvlDp1A6g6Soodc+b8R0B4YcDMUM/fUuAnLW8UqAVS8URyVbkAGsKLcL4UjqynI2lYiCmrMW3ScaITSDOiTQICurRpA66LLfiGXzkohmiTbeiz4WZwXopvWzqU0IomefgHiMdazvkxN/MegYWEAqSTyNy6+p10b+EDUFc3ThCLomMjMt78ubaxkHcMkcDS96M/loXoBinF6RwJy+Egbfjk9K+wX8xU5FAZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TEiUplhqVmJuB7OS24BRhKdf+SVS2k9nLjCdy/oZXTs=;
 b=d/H5D9Rk1NYJDd8NzPKZhu3Trbmw8JtZ9hD8GsLPdhXDQyp8OB7lPqfw3CLhzvXCC4cXL3qfuMeEDETCeMqJCHEuu9njFCg7MCG4+jfrfEq1ppWLSrVmY7MicKcKhwPXGDxnOO43QNbahgx2chlorldVMyUmg8oxNXmCphtxmqbgRDesD+WbcVjTJ4MJtzeZzQSNUX2ls+FirGnKFCyAvCF/2uQW7gshWn059XkVjQK8n3OXU5MTqT1a4MU9XsXSiqhZlHn53eLF3ZlWci4qp4gRTRlSgn4V9h0gqk8uJRtHyzT5NH4kzB2diKv7WKIoJaAvoPjb+Y+pr3EdU9P3Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM4PR11MB6286.namprd11.prod.outlook.com (2603:10b6:8:a7::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8489.29; Tue, 4 Mar 2025 15:22:52 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8511.015; Tue, 4 Mar 2025
 15:22:52 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 15/19] drm/i915: Simplify cdclk_disable_noatomic()
Thread-Topic: [PATCH 15/19] drm/i915: Simplify cdclk_disable_noatomic()
Thread-Index: AQHbgk2KbWVXT1Jt7kOorDE1s9lTeLNjKLyAgAAFPQA=
Date: Tue, 4 Mar 2025 15:22:52 +0000
Message-ID: <dd305cd56b1aebe68f7372a63a6b4d07c9ce3b3e.camel@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-16-ville.syrjala@linux.intel.com>
 <ea61c60a6b473c5e76a151fefa273cd50ddedcb4.camel@intel.com>
In-Reply-To: <ea61c60a6b473c5e76a151fefa273cd50ddedcb4.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM4PR11MB6286:EE_
x-ms-office365-filtering-correlation-id: 8d1e781b-b55d-4b9e-175b-08dd5b306e66
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UDNmT3NVRDlacVAyczQ1REQvMjZTdjZ5bW4yK0xSOS82UnMzUndoV3VtQkp2?=
 =?utf-8?B?Y3ozbVdyV2R2dlNieFBFdzdsQVNOUENxZDZnZkxoUlBCcEJId0hQemVwUzFr?=
 =?utf-8?B?MWdnQUpjbmZuQmJKMFpBdXN6aHlvRlhRd1EwbGZSRjhlOS90NEZHUU94WGo4?=
 =?utf-8?B?RVYydC9HK0UzYkluQUpJZ3d4a2oxTzNUZ0tldzZKVTQwZVVadlYzdlhvTU53?=
 =?utf-8?B?Z0FBZ1llckRIMHNycDRaNWV3NGZBYTVYamUxdDZmcVZUeTRKU0kvdXpZcFNJ?=
 =?utf-8?B?TGw0cnRIT1RSTUppRVJ3dHRsVWpHcnpMMXhtbStKNW9PaXlaTE5BaUxiRDFx?=
 =?utf-8?B?a3FZMFZrenJzb1VYVUFhMDdxam1sMTcyWmxrc2xtQ0Z1NGlaOGFzYTdzTkFi?=
 =?utf-8?B?ME04THIrdDlWamxIMktaTG51clVhVU1ldjdZTUlWUVk0YVE5V0gvcThHWFpl?=
 =?utf-8?B?RXRXTjRwY2dVWG1aQnJZUDA1SWJGSmpBWTBQdTlUTkVZSTZGZjhPVUJGYmtS?=
 =?utf-8?B?OFNLTDBpWE5aUC9wbzNxNi9hMDZkS2RuTjVlMGpMWHRDemxXUUpUQ2JkWG9U?=
 =?utf-8?B?TndCd1pWa0R2S3Rta2NUZVlwUFU0Z1EybXQyaUFCbG14SnI3RmF4MnBlTDRG?=
 =?utf-8?B?blZucUJqeVA3L3ZjU2hueWxWMStPY21JY0xrVG16RjBKZUo2cFRoVm44NG5l?=
 =?utf-8?B?M04wbGVYVXBrbDU0M1Nxamw0UngzdVpKSy9aaU9BcmIvYUhjQjg2VjFJOU0z?=
 =?utf-8?B?S0VEdkY4REVycWV1alVnVi9VVHkwekt5RmFoWExzUmFuS1hHWklpZjZPbGQ2?=
 =?utf-8?B?UXN3L1Nxc3FQWTVpVUZtOG1oZnZ4NlVQbFpwS3huZHlmVjFRSFh3cGdSbS9N?=
 =?utf-8?B?bzZzbWt0aFpOd05URGNJL2hITnhic2dEVlg1eUwzb0hybVVqZnVZSTJlRUZM?=
 =?utf-8?B?VVFGVnlXZDh1UGNwK2k2R0VmSElsQVJjSW9mTHMxa1piWGpEZmNhR2JFdi9U?=
 =?utf-8?B?S21aeDhhSUsrRzNINlFna0JQY0plYm9vSDFTUXN1bE1tL3A0cmpGb0Iyb1BY?=
 =?utf-8?B?WklpdGxiSHBGV3RaQzJGSGJyZVVaRGx3Y0szOTk4cFZuOXN1aFpPTGNtc1Rq?=
 =?utf-8?B?cTRtY0JlRlZLOVVlQ3FxVmZId1YrN29sRWljVXpaekl5Mk93RzJ2ckovSEFl?=
 =?utf-8?B?OXBnY0Q0cVEvbjJhTEtOdU91L3RUQTIvOXNkdjg0cGIrbGp4MzhXdXQxUk91?=
 =?utf-8?B?bHhrNG5WZmNXTVZqdE95MlRTdHZ6YzlqOWxHazRKWW9RMFQxa2VMbCtrbktm?=
 =?utf-8?B?QUl4V2RsQVl6c1JmdG1SdXM3eDB4WC9KcVlSMDYzVDFNT0EzRldQd1hoSmRk?=
 =?utf-8?B?M2U5UFE5VitNUlRxU2EydWg4eHp4TlhiVlQ1UjVuVXlaY0J1RWxGaTRSLzJi?=
 =?utf-8?B?eGk0aWgxM3RUdVNibWlncUJUcEN2Z29iSnYraEprcmk0bWxrdDViUXdqQ3VO?=
 =?utf-8?B?Sjl0bEg3dy9UUFBObjdSTGJNMy83ZUlrQ3B0UHZYY2JmWHZacmpSWWNGSjBB?=
 =?utf-8?B?TExYWWhCMEhpMSs1RlMyL2d5WlcwRXVkaVVlYXRTR3U3RXZoM0liUzJyekQy?=
 =?utf-8?B?NlNNRTJDVm9MK1Z6dXhRZU5WU3R2ekhWam96WDhHRlp2RWowc28xTDg1UW9q?=
 =?utf-8?B?VUkrNTJLUXZScHFXUElaMGFZR0tOUGxDa0xVMDQ2Y3dHU2lETTFEREtsTEVL?=
 =?utf-8?B?MXhqbGVYdUQrdE1ubFNrTjV3L29lRWhvVU5XTUhWMVRKSHJUV1BQQ0s3ZVhE?=
 =?utf-8?B?eVI2QVEzMlVwOHRNbERwVDVNUzRrYWUxbm4wRWRLZndJN2JkaXMzd3RxODZr?=
 =?utf-8?B?dFppVmlWcThxUU5kd3dlc2NpdmI4Sm13YjVWVVBseDM2WTVxZHJBK0VTRzht?=
 =?utf-8?Q?1L8X5rDsjYTTPlYaby2PcH3eyNb7qUQU?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YXVUQVVYa3JsOVphOHp0VE9Da3VQOXBUYnIwS21Fd3pzcnI0M1d3YmszMEJW?=
 =?utf-8?B?ZWxsOStDRXVPKzNvdXJ6MTZJaTFpREpwV0FxSmtuV2ZMdkgxSjl5YWFYS0Rz?=
 =?utf-8?B?cG02M0E2L1NSQ2JuOXdjRFA4SFlwNnNVbktwbkJwQlJLQ1oxb0dKeDFsZURP?=
 =?utf-8?B?a1A5Z2p5N3l3V3BYNWZhOGlyYmNmN1FNVGJBV1M5SStRUzZML0pkdW1KKzdx?=
 =?utf-8?B?Y05QdnR5RlMvMk1RemVRVjR4N1pheGNUQ2gzc0puM1FDQTMwMWtMVkM3NC9H?=
 =?utf-8?B?MFBscGVhOHp0S3Iwa0hnVnFZVFBockJhdVVRMUtJbWxrVkdFSUhrdTJXYk5i?=
 =?utf-8?B?OTJ1a2JkcVZKT2Noam5iRnNlZGl2YTJzTCt5aHJIWkZDRXA5Y1VTS25EZ1Vk?=
 =?utf-8?B?d3JuZURadkJpVVJtQVRHbUl6VW95anFaUS9LaXRYdVlDdG5Ca3J3RTd3bVhv?=
 =?utf-8?B?ejc4YS9zbXJsTStpTzVBOWF2R29CdnFWc0pNKy9Jd0Q2QldQOXJqaEVyZ1lH?=
 =?utf-8?B?bDl6L0xWbjdDSk8vb3ZKQis2OUFscnN2QW9DTmtwbGIxUG1mYVFHSndJUW12?=
 =?utf-8?B?Wm4wRUNlcnRHeFptM28vN0x0eXY3L1Y1VWRJM1ArWlY1V2NHZ2p4Zmdob2NT?=
 =?utf-8?B?Qlh5b0FhbVJXUXVMaWNZUVp4K0dXSGZzSDRQN1pJbUJiSkNYY0RzOHQwTlpQ?=
 =?utf-8?B?VktCeGl5a0syeDFsTkVXcVZmSGRpZU1lREJ3VVV5MkZOSDJmaVFkbmxlSk9X?=
 =?utf-8?B?aDZhT0o5akhuOHFtTk9qdlNIazViSFBrL245NzNpNVcxQlBycE5NU01xK1JZ?=
 =?utf-8?B?aG9SRTYrOWNxQThKQWtwM282aklyWVMwMjd4bUdYVklwYzdFbXRyTWtQOXVp?=
 =?utf-8?B?SHdrUUYwT0wzTnpORW8zbFMrazQzWDQzallsbXZFVVQrWENvU2lVWmRILzdK?=
 =?utf-8?B?eENleTVSc2lxMGh4RHZ2ZE9ReVZNN2d1dStoU1ZTcXRqM1RJbWZkeisxd21C?=
 =?utf-8?B?TXI4M1NLcVhYZ3JiQ2Y3a1lZamdpNzBJWktJRk1yRHovNk5YZmZEbWdUdUo4?=
 =?utf-8?B?U1RNWXEzSDJBeXhIbkw3VVdjRXlyam5ieGw5d0I2K3BuQmdyOFlpZ0NtNm8x?=
 =?utf-8?B?SDlZR0luejhSUngxVTI5WGlEcHVseTVuek85bml5NGczMDZsZWhkQ2EyNWp4?=
 =?utf-8?B?MkdZbkJacGNtWTJseU9xSTBPampQYjhFMFFsSlNhRjBzOVBqSXZ3UmJuYmN2?=
 =?utf-8?B?S0s4Z0FaNU5ITzRrSCtGbDR2MlZlSFB0QWo2NURaSnFLdUdpa3gwOWlDZnUz?=
 =?utf-8?B?bXpsTFV1SUx4OHlzTVB4ZXYrcWxoYm5wU25BVVBDM2V2VDlubk1Eeit4ZEpm?=
 =?utf-8?B?aUVkZTFXb2swUGl6dmlrSEhZdlRYVDBrUm82WVV6blg3NUo2K08yRUZEcTdG?=
 =?utf-8?B?WXJSZE9yZURxTm5JTDJkNjU4RTI0NmN4L2RPYmlpZXR4K2syRHN5ZEhpSlU0?=
 =?utf-8?B?d2FOUTNTcTVSazhBcEFUT3F6c0FaOHBiQWluUFRKMXRIbWFyTDl2Vk80eHU2?=
 =?utf-8?B?VDJMeDRPTmVrOEI4bnVxcXcvaG94YVBXNGNIY2d0Ly9Ec0x5dXd1U1R6SHpy?=
 =?utf-8?B?bjl2Rm1qSFdlOXdBZk9HK0RYSUJPcUhNMjZLWldVS1hOZjZEeGNSejFqRjRE?=
 =?utf-8?B?VlRtVVhYVEkrRERYNGJTYW8zcHJuSUljZEM4c1ZES1REUWI5ajBUcjJrdjEz?=
 =?utf-8?B?MFIwYkJTck1GeXFJMCtTdnpaZmdmQ0ltdmc3QWF6NzlkZTcyNGF4RVkxNTVR?=
 =?utf-8?B?RXlnOXRaaUNseEpoV09TU0tkUnlWV1h0Q0dBWUp3RG1wUzhYZXhSUWx0OEx6?=
 =?utf-8?B?ZlpVL1huZmcrYmFQWFlIZUw1b1FKRnZkS2tabXNpTjRwdWdwTmpSdWtXRk50?=
 =?utf-8?B?c05TWm9sQjZrSXNibVdLWVF3bitOMlYyLzBFSEJjbzh2VzlHcVBwTEJEYmx3?=
 =?utf-8?B?YjBTK2dWZENwQ2JveEFvOXkvZDY5cFc5NWNYVGF3b0RMV082V0MvcjdZcUhi?=
 =?utf-8?B?Y25KVG1VcU5nRkRkYVBtV0RsSTlyd0xCNkRZTXdaYzBlQ3NCTGFIUGZ4VTFq?=
 =?utf-8?B?d0NhdWxlekdZd010UWVDUXBkeDFhSGZuQldZTllhTXpXRUFqYVAvQ1RnVVht?=
 =?utf-8?Q?5PGA5OHmhBTE2o12lCBqpq8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <80574C9538AFB14093D52ED08D773047@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d1e781b-b55d-4b9e-175b-08dd5b306e66
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 15:22:52.5106 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8HtwQkuGZcd8572r8ZDWQ00gGIPuGmJ+W8WDIAoXIPcmwNI/rY5WJHD9CUCqHAmGDK3DMR41WLvcFMOJA765n23BwCao+PwUp4OUg6+OyDg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6286
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

T24gVHVlLCAyMDI1LTAzLTA0IGF0IDE3OjA0ICswMjAwLCBHb3ZpbmRhcGlsbGFpLCBWaW5vZCB3
cm90ZToNCj4gT24gVHVlLCAyMDI1LTAyLTE4IGF0IDIzOjE5ICswMjAwLCBWaWxsZSBTeXJqYWxh
IHdyb3RlOg0KPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+ID4gDQo+ID4gSW5zdGVhZCBvZiBoYW5kIHJvbGxpbmcgdGhlIGNkY2xrIHN0
YXRlIGRpc2FibGluZyBmb3IgYQ0KPiA+IHBpcGUgaW4gbm9hdG9taWMoKSBsZXQncyBqdXN0IHJl
Y29tcHV0ZSB0aGUgd2hvbGUgdGhpbmcNCj4gPiBmcm9tIHNjcmF0Y2guIExlc3MgY29kZSB3ZSBo
YXZlIHRvIHJlbWVtYmVyIHRvIGtlZXAgaW4gc3luYy4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+IC0t
LQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgNyAr
LS0tLS0tDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDYgZGVsZXRpb25z
KC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY2RjbGsuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
ZGNsay5jDQo+ID4gaW5kZXggNjJjYWVlNGE4YjY0Li4yYTg3NDlhMDIxM2UgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4gQEAgLTMz
NjQsMTMgKzMzNjQsOCBAQCB2b2lkIGludGVsX2NkY2xrX3VwZGF0ZV9od19zdGF0ZShzdHJ1Y3Qg
aW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gPiDCoHZvaWQgaW50ZWxfY2RjbGtfY3J0Y19kaXNh
YmxlX25vYXRvbWljKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiA+IMKgew0KPiA+IMKgCXN0
cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjKTsNCj4g
PiAtCXN0cnVjdCBpbnRlbF9jZGNsa19zdGF0ZSAqY2RjbGtfc3RhdGUgPQ0KPiA+IC0JCXRvX2lu
dGVsX2NkY2xrX3N0YXRlKGRpc3BsYXktPmNkY2xrLm9iai5zdGF0ZSk7DQo+ID4gLQllbnVtIHBp
cGUgcGlwZSA9IGNydGMtPnBpcGU7DQo+ID4gwqANCj4gPiAtCWNkY2xrX3N0YXRlLT5taW5fY2Rj
bGtbcGlwZV0gPSAwOw0KPiA+IC0JY2RjbGtfc3RhdGUtPm1pbl92b2x0YWdlX2xldmVsW3BpcGVd
ID0gMDsNCj4gPiAtCWNkY2xrX3N0YXRlLT5hY3RpdmVfcGlwZXMgJj0gfkJJVChwaXBlKTsNCj4g
PiArCWludGVsX2NkY2xrX3VwZGF0ZV9od19zdGF0ZShkaXNwbGF5KTsNCj4gPiDCoH0NCj4gPiDC
oA0KPiANCj4gT2theSEgTm93IEkgc2VlIHRoYXQgcGFzc2luZyBhY3RpdmVfcGlwZXMgdG8gaW50
ZWxfY2RjbGtfdXBkYXRlX2h3X3N0YXRlKCkgYXMgSSBjb21tZW50ZWQgaW4gb25lDQo+IG9mDQo+
IHRoZSBlYXJsaWVyIHBhdGNoIHdvbnQgd29yayENCj4gDQo+IEJ1dCBpc250IHRoaXMgYml0IGVm
ZmljaWVudCwgYXMgd2Ugd2lsbCBiZSBjYWxsaW5nLMKgIGludGVsX2NkY2xrX2NydGNfZGlzYWJs
ZV9ub2F0b21pYygpIChhbmQNCj4gaW50ZWxfY2RjbGtfdXBkYXRlX2h3X3N0YXRlKCkpIGZvcl9l
YWNoX2ludGVsX2NydGNfaW5fcGlwZV9tYXNrKCksIHdlIGVuZCB1cCBleGVjdXRpbmcNCj4gaW50
ZWxfY2RjbGtfdXBkYXRlX2h3X3N0YXRlKCkgcmVkdW5kYW50bHk/DQo+IA0KPiBJbnN0ZWFkIHNo
b3VsZCB3ZSBleHRyYWN0IGludGVsX2NkY2xrX3VwZGF0ZV9jcnRjX2h3X3N0YXRlKCkgZnJvbcKg
IGludGVsX2NkY2xrX3VwZGF0ZV9od19zdGF0ZSgpIA0KPiBhbmQgdXNlIHRoYXQgaGVyZT8NCj4g
DQo+IEJSDQo+IFZpbm9kDQoNCkZvcmdvdCB0byBSQiwgd2l0aCB0aGUgYWJvdmUgY29tbWVudHMn
IHJlbGV2YW5jeSBjaGVja2VkIG91dCwNClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFp
IDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KPiANCj4gDQo+ID4gwqBzdGF0aWMg
aW50IGludGVsX2NvbXB1dGVfbWF4X2RvdGNsayhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSkNCj4gDQoNCg==
