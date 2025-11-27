Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 877EBC8F69B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 17:02:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A627610E783;
	Thu, 27 Nov 2025 16:02:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bR/avTse";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F17C110E109;
 Thu, 27 Nov 2025 16:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764259321; x=1795795321;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=em/VU+5vQvnVya+u6F+yJya9Yfkdw9o6atpsFXQIwNI=;
 b=bR/avTseMYfiD6zR6aVXdS5MHJWPqX0KV8lJeLtC/GTJBL7C3+5Zl+iU
 adPmnJfW8ieGSxH7BEYrAXxCiCtcVCwGH7Ku7Ep+yTRaapNDdptzmZlP6
 7+O9YoS2HEUejiDF3weO4ugUhaODGHISo5H7DE4PAFgx+k11kDSjTVuzN
 sM+5VB+0gAnxDU7vFp94CmBOKJr6rKPOOr1hKuSd5W0gNmIbXg2FM26OH
 wbisfIDwtiUUnl7H0/+cK6JcYGVeAbi3ddFDd9SQrh/a42ykQ+z6b1tyX
 JukqNKUh9zk/XUCB5YQeDAOpLpG9p6PsAMPVmrXo9q1lsmQPaKiNv9XlW A==;
X-CSE-ConnectionGUID: 3PiMS4TdS92n+BeuOaue/A==
X-CSE-MsgGUID: lKAM21eERPapAq8/BOnEJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="66200752"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="66200752"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 08:02:00 -0800
X-CSE-ConnectionGUID: buWLZntUSwGLfT0/bYU3Jg==
X-CSE-MsgGUID: 8fTYulHERteeN9V02Kh/Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="193485956"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 08:02:00 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 08:01:59 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 08:01:59 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.25) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 08:01:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vIbcfVJqR3/XEISZs47c+oRA0Eg9RUrIB5Ntj2KB8B+BBw3ONG8UXywPpc6vTvp1o9GdMZhQHGnCEzVcllzhZBiiU3MIOX2VatdSrsGOELX5BZIFwXIGDHU+feIU74RQTClpDc3sUjOtTIItvB+U4JBdgwi98uTsBKu5Tev+ME/pD+6pHhEoR48P6gXDdkZTc7B5GbcUP8RycvzKNOFaARFG21sggtobTRNnW94mCI63A8MW+09Ht5wvNqH5lohmFoZaRIRenYxrXYT2OcxO65c/lns/EWHXUk37+gBGgt2dc8puX3zJHLhM0WBJdEOmxypCeNYA+GC6MOoJ09B6xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=em/VU+5vQvnVya+u6F+yJya9Yfkdw9o6atpsFXQIwNI=;
 b=hC94p0ma9vVnJsJjh5yUm6jqgyfylLSgid4n5Aqx3eWxA4P5cVa7yHh4Z+5I2wmgcLdX3OiN4RvwWm4LApDGEaZ1qRBmcVa4z8XwWDZcSW9MbBvhMbUpaT8lVwh3GYcGT1qO/OJAo0zg7Pg8FZbtJfw09Tfn4z/YfJkuZk9aOE3PZyyvJZrMwRTTO/3xcKTN/5NO/cBsVD73UIeY2lmQJWFiS7cer+Z/p/6emH5ucXouXeDyAM5qpjUv0X2lWOggBo1wJ9KpGGgk+DLZoyoRo6vn9D2bOQr540em3HZOM6PGiPsdvZYoETs+17cBmeDYYQ9W8G+i+288I8eJQIciQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 CY8PR11MB6913.namprd11.prod.outlook.com (2603:10b6:930:5b::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.12; Thu, 27 Nov 2025 16:01:55 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 16:01:55 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "brauner@kernel.org" <brauner@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Subject: RE: REGRESSION on drm-tip
Thread-Topic: REGRESSION on drm-tip
Thread-Index: AQHcX2a0wIOe8SxGHUax1eGbt/7hIrUGrvmw
Date: Thu, 27 Nov 2025 16:01:55 +0000
Message-ID: <DM8PR11MB5655161DB52256F90B1C096CE0DFA@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <03c013c0-be12-42ab-91d1-f87395c890e3@intel.com>
In-Reply-To: <03c013c0-be12-42ab-91d1-f87395c890e3@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|CY8PR11MB6913:EE_
x-ms-office365-filtering-correlation-id: 39f5bf2c-e735-4b23-66b6-08de2dce49bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?bm1NMlFlUUgwSkVKVHpxeWU4ZkVndUYwTDFzNUxZUmdqL3ltVEgra0hyNWJT?=
 =?utf-8?B?TlBNbkh6QS9WSk9HOXVpL2E5UnRnYlljWkUwQjdrbVJaR2IwTjNpelc5dlZH?=
 =?utf-8?B?R3NMMWFGME9veFpCR1dNbjZuUmVaNUZkK0ZmS2o2aFpmSHFQMWUrR1lTUEV2?=
 =?utf-8?B?M2tpaTBWOG9YbS9EbFFVdXJwbGhFUk1QUG9xOHBrY0E2Yi9DRm5IeUtQemNy?=
 =?utf-8?B?Q0JKM1FaQ3ZjSmFZVU1JU3hEOVJBUHR4QUFuRHlGUjYrdU92d243Zm9IQVVL?=
 =?utf-8?B?L25yZWhtb2ltTVg0ZTZmYitMMFd2clVUbkZ0TEJKVHlYdHgzMU9QYXNCc2g0?=
 =?utf-8?B?Tjh4cG9xa3FBa296Sk9qUWN5V20zYVhPUkRrdXRpTld2eFgrUWtLZXhBTXBC?=
 =?utf-8?B?WDVrN29rSUYrTEJxK1p6eXhiWW5WZHNJdGtjV0Q0N3RXVzlTRmpFalRxWVJH?=
 =?utf-8?B?RnNsUVBtYTBYZHlFMGt1TWxXRTNhelBZUElpNnU2M2l5U3J2SDRLSnNTSnZy?=
 =?utf-8?B?ZHU1V0p0cm5lODBsaDJ2ZGtXSDY4UVNPN3RJUzI0S3NOdkRZQXVRNlIrekxm?=
 =?utf-8?B?bHVTS1JHaXdIcnlKRU5Lc1c5SWI3ZHR3cStHenNIMDlyREVCR0dYWjJVbEZ1?=
 =?utf-8?B?VXpHVTlRd2g4SU80U1ZJU0NHbWVZNEpZdG4xUHNIeUZ2d3ZtcHBZdXp3L04r?=
 =?utf-8?B?dXZSUlQ3aHI5OHBKTEpRVE5iV0ZpbFYxOEwxU3VvL2xHdWdsRzBNdFpTTEhv?=
 =?utf-8?B?Vzl3V21oTUp4UGdESDdlRHVybGEwTTFvdWRiczZ6OVBTeXo0Y0dVRDAyRmhS?=
 =?utf-8?B?cThPcjNSS0JCRDg4bE9GdzcxTHNxWGc4WWh5bG5ldGJJQU5lcS9DaDJXZWpG?=
 =?utf-8?B?NGV4eGpFUkJqeVdUbU9iaTQ3M2xGNllJR0hoS2FVMmRqYURoa0V2SE15YjhK?=
 =?utf-8?B?WTUzdWV3WTVPOUhtTjVCZ1Z0MEpYY1dDZFhuMDlpUzBPTG1pckpYQmpOejda?=
 =?utf-8?B?Q0RuMmE3SXRUVFloeWFzVnR4d1pKSkE3UmtmQ2t3dVBrcUlnTy93a2FhQ1ZG?=
 =?utf-8?B?aGlGbWlTS0NNSFBNSjJaMzNqa3JVdzBrelM5S3lrVllVOEFMVVBWdWc5LzFB?=
 =?utf-8?B?czY3VVMrMjllUXEzNzZNV1JTWUNGamhDeFVJN29wTXc0bTJCdFVQQ1JocHY2?=
 =?utf-8?B?MEZrUFk3V1c1Q2Ryd2JJZHdkUi8wNS9NSS9jLzlobG5WYmdZWXJCeFhjcU1C?=
 =?utf-8?B?WHlPbEhhU01oeDdjMkM1dGRnWkx2YTVVV3FUMGtONzZBUjdwOUFkK1F2MTAz?=
 =?utf-8?B?SUlEMStlUnhpdDVvVG1lT2RONzZHME9RcFdDczlBSzV1blJETWZmUk5xODV1?=
 =?utf-8?B?WGtRdklWSjFIbjlmc1h4VFpTRFNaYjFUTXUxc3hYZFFBSEE4MXJLRXgzRFhj?=
 =?utf-8?B?VzBLRTNpUVlnb1VwYW8wSldzWDM4c0pPVUVSZVRqdUVXWFlMbTBnSjRkemRt?=
 =?utf-8?B?eVIwVDBhcjZZMzRwaHR5UXl5QkY4SGJRN3BrZldicStGc2RQSVZWRlduRXBt?=
 =?utf-8?B?dnpldk5vZnZHbU1RaEcweE5pZWk1Tk5VQnFiY0VGUktDQ2tWUkpiMHJ1d0JW?=
 =?utf-8?B?SGZDejVvYzdjeXdRdjFGeEtxRUhBbllYYmlOVjJRUko5Syt4V2hxS2xMenNh?=
 =?utf-8?B?dE4xakIzdGd6OWFEOTFvTWozWVVNVFRWUFE4cTNIcldDNUdNMXhQSXJQc3pp?=
 =?utf-8?B?LzdML0l6cFNiZi9JdmNUOUJ4QkF5d00yQTFBYUVpdU5hRjhtYXVBQ2gyRVpP?=
 =?utf-8?B?eTFwbFUzZ2sxanNsazV2R0J3Si90Yms3L0I5SVluTmRPYmUwQlJBanJHNnlZ?=
 =?utf-8?B?d3hlakYxQmE1bXFJSW9VdWJxNVU3L21BaE5ESVluVEhvZVhJVnk1UWYzdVZm?=
 =?utf-8?B?eGRQN1I3Y3kraXNFaGYvcjNua2J0bHc4Wm56MDRRdTJzbDZpVFZqSllzYlNt?=
 =?utf-8?B?NDVzMUZYL1ZreWljdEhnVkVJT0NDeW80Y0NJYkRXL3ZlaGZ2VE90UTlXVHAw?=
 =?utf-8?B?bk9YOWdoMEs2VG1neHlycW1QekphT0MvZUwxQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S0NIMVduQzJvbS9ZdGpoK3hUV3ZiWmNPZ1NvOEUvbUloYUZIQTB5a3lVM2ZW?=
 =?utf-8?B?S3QzMDF0ci91NER0cnRyN1c2bTVZWnQxT3ZUSHZCVlVKY2Z2YnVZTWpjQXBW?=
 =?utf-8?B?bzlSei9kZUsrblRFT0hmUTZGUURxQXdHaklKNllzb2pxY1JhWlV0R1lzaEFo?=
 =?utf-8?B?UjFaTzk4dzlHejF2MDRmMTRLV1V1cmJhTVkxSnVORCtuRnZDSjdvWWkzOUtn?=
 =?utf-8?B?V1RFV3FhMnRsRGJQUXBWb0w2NTZicjU3REg4MXlhL29NbGdJQ1VnekJOVEYw?=
 =?utf-8?B?ekVsN1A4a3lGWmJxR3dRK3crZ3UxMWNmc1JTOERHMHlRUHZuSm9HOElDaXI3?=
 =?utf-8?B?SHgwVkV3NkpIS3g5WDFNdHF5amFlRDJRSU1GL2FTSWlwMjFaV3BvUitvc0dC?=
 =?utf-8?B?ZjB6Zzd5R0F1SzU4eHdHU01aMVVWVmJYWmtYcDBvQjJmSkRJVWRaQ010V3Zz?=
 =?utf-8?B?ODlGZWlMbm4vNGZDQ2QvSGkvWGhpVFBISXlCbkRSRFkzQXd4Q3ZhQ2NsVEU5?=
 =?utf-8?B?WklhNEgyc2s1OFMzbWxRNkYxQzNEWS94SW1Ta2prUnROWTYxQlpwa01PNFNW?=
 =?utf-8?B?Uko3b045ckoyM0VBRTZ4TXlqOTl4NnIwVWhqd1BUbVJYaEYzTHVCbWNiSmZj?=
 =?utf-8?B?RzBtM1ZkMmQvdWNQWmM1ekd2bHJQRkhwcUZRbVl0YVp0OWY1QlFVVkphbW1J?=
 =?utf-8?B?SjI1QjVaSmRUSStOaDQvZG11NzczTmFmazJzbEtwMDcrbXlWRUMzdld2emVm?=
 =?utf-8?B?MXRQY2RWaUIxZmwzM1M0ZzNjcW11OTBuUzhaZVY5cUhWLzJIamNOZllUNnZP?=
 =?utf-8?B?WCtERjZtSFltdVREZTAvckJUb3lrbFY2TWpXN0d5UStCQk5jNmlLd3lRZ2xs?=
 =?utf-8?B?T3Exd3ErYVFpcnVTVTR6bE0wOGJKcGp6R1Ric21XS3Y4b1Q2eVhhMDhIOHRU?=
 =?utf-8?B?NktZN0Z5UGEwaHJxU2ZSK20xNlhrQmVFNkFzNEpqaGNkNXdTWFZBdTRHMFJ4?=
 =?utf-8?B?VnNJeVhXTEtUclcwckJDemh1L0pvUWlnWFd3NG1EN2VVYmxVUnBqaUF0dm01?=
 =?utf-8?B?QlY0elZ2amhvc0dtbi82RHY1OWV2dWVHZHZxdW8ycldjVEJSU2ZkY29mUFRm?=
 =?utf-8?B?bUd6UjFqRk91Q0tHMUhOL01ldjVhV1M3UTRzWGpEQ0laVjB3Q3hrMjBhNjdo?=
 =?utf-8?B?VGNHMzA4U0hBVWJMc1VDbXRGZW1PRFg0emh1WEo2aklkakhjRVVyMlc1Tzh6?=
 =?utf-8?B?UmZTTzNGT3ZCeEFzK2JxeHY5MEpIb05jVDRQMUs1b2xNeWdmbnRERVY3TThK?=
 =?utf-8?B?RkU0L1I3bXJRSWFtN2JGbE1VWE1oSVVIb3NRZUdDQzNBRTJMdU44UTRXanlk?=
 =?utf-8?B?dm1CNzh0RjBaSDFscGQ0OG8zMmp1Z2xWSXR5WHZVZE9wRGhWV3hrbXhSK0Iw?=
 =?utf-8?B?K3phZXNLcXpLQnlMQ1Yrd1BnSFFpaTVvMzFXbjlZeWJDdS96WmhHYUdiSTFX?=
 =?utf-8?B?a05GRGxlWlBBczQyUXBmTWk5dFFGZnNxSDdNa05KdTRzZGtndFhIbVJtQXk4?=
 =?utf-8?B?QUFNOUFTNElqM0lsQmFnUTMxQXBwTHh5WHFhaFhqM2hjRmM4WjdjbzMzVzFM?=
 =?utf-8?B?eUx3VFc3YkhlWURDaXo5YXdPZnlzdlhDWVI0SFBSbWllcGp3MFI0QjUrTmdE?=
 =?utf-8?B?cGc1VGFCTjczV3J2Q1NmWEFoandLWHlvTG12M0lCT2hYUC9wdFBHSG96QzNm?=
 =?utf-8?B?MHJQOWxLOEMrdVNhaHZRVm1YaW80MURBb3BYUWs5OUN3S2NDUFc0b1lVSnFG?=
 =?utf-8?B?YzN3bG5vMnN1T2tLWEQ4SklsMFh3d1V2WGhRclJYWTY0TGptV0t5N1duY0JW?=
 =?utf-8?B?WHFDMUQvUHA3dkZ1VDhZMlRTSy9uNlR0VW9pNFVDY3BLb1hWTWx0dnpKYU5a?=
 =?utf-8?B?bE5ITDBQTHZvek0zVHhmSVhHYUdlYmVvM0xMRjFpRFpnc3ZEcHdvMER6cklY?=
 =?utf-8?B?dURUeElQRjIrUmZMR0FXVUlzU0pCeXpaKzlIUDlwTmNpWWVoUG5KclNPUmNT?=
 =?utf-8?B?NDE0YytHcit3UmJBZENGQmM4dmxjUHhJQlZodWFPQWRudVBMVG5mVDhSTmEr?=
 =?utf-8?Q?c2a8wVUXwoRY0QtqJ5yBMMWPG?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39f5bf2c-e735-4b23-66b6-08de2dce49bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2025 16:01:55.6670 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lb5INOwLHD4IAhhuDHdc2YcbpsQ8wnR76F41dx5RbxDTONSC9OdCLEX8zvWFhdx3xudabsBxUUFVAHn+AJKqpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6913
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

SGksIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEJvcmFoLCBDaGFp
dGFueWEgS3VtYXIgPGNoYWl0YW55YS5rdW1hci5ib3JhaEBpbnRlbC5jb20+DQo+IFNlbnQ6IFRo
dXJzZGF5LCAyNyBOb3ZlbWJlciAyMDI1IDguMjYNCj4gVG86IGJyYXVuZXJAa2VybmVsLm9yZw0K
PiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnOyBTYWFyaW5lbiwgSmFuaQ0KPiA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+
OyBLdXJtaSwgU3VyZXNoIEt1bWFyDQo+IDxzdXJlc2gua3VtYXIua3VybWlAaW50ZWwuY29tPjsg
RGUgTWFyY2hpLCBMdWNhcw0KPiA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiBTdWJqZWN0
OiBSRUdSRVNTSU9OIG9uIGRybS10aXANCj4gDQo+IEhlbGxvIENocmlzdGlhbiwNCj4gDQo+IFRo
aXMgaXMgQ2hhaXRhbnlhIChhZ2FpbiEpLg0KPiANCj4gVGhpcyBtYWlsIGlzIHJlZ2FyZGluZyBh
bm90aGVyIHJlZ3Jlc3Npb24gd2UgYXJlIHNlZWluZyBpbiBvdXIgQ0kgcnVuc1sxXSBvbiBkcm0t
DQo+IHRpcCAod2l0aCBib3RoIHhlIGFuZCBpOTE1KS4NCj4gDQo+IGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYA0KPiA8ND4gWzE1Ny42ODc2NDRdIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0t
LS0tLS0tLSA8ND4gWzE1Ny42ODc3NjhdIFdBUk5JTkc6DQo+IENQVTogNSBQSUQ6IDIyNzcgYXQg
a2VybmVsL2ZyZWV6ZXIuYzoxMzkNCj4gX19zZXRfdGFza19mcm96ZW4rMHg3Zi8weGIwDQo+IC4u
Lg0KPiA8ND4gWzE1Ny42ODc5MjNdIFBLUlU6IDU1NTU1NTU0DQo+IDw0PiBbMTU3LjY4NzkyNF0g
Q2FsbCBUcmFjZToNCj4gPDQ+IFsxNTcuNjg3OTI1XSAgPFRBU0s+DQo+IDw0PiBbMTU3LjY4Nzky
Nl0gID8gX19wZnhfX19zZXRfdGFza19mcm96ZW4rMHgxMC8weDEwIDw0PiBbMTU3LjY4NzkyOV0N
Cj4gdGFza19jYWxsX2Z1bmMrMHg2ZC8weDEyMCA8ND4gWzE1Ny42ODc5MzJdICA/IGNncm91cF9m
cmVlemluZysweDg5LzB4MjAwDQo+IDw0PiBbMTU3LjY4NzkzN10gIGZyZWV6ZV90YXNrKzB4OTgv
MHgxMDAgPDQ+IFsxNTcuNjg3OTQwXQ0KPiB0cnlfdG9fZnJlZXplX3Rhc2tzKzB4ZDIvMHg0NDAg
PDQ+IFsxNTcuNjg3OTQ2XQ0KPiBmcmVlemVfcHJvY2Vzc2VzKzB4NTYvMHhkMCA8ND4gWzE1Ny42
ODc5NDhdICBoaWJlcm5hdGUrMHgxMjkvMHg0YTAgPDQ+DQo+IFsxNTcuNjg3OTUxXSAgc3RhdGVf
c3RvcmUrMHhkMy8weGUwIDw0PiBbMTU3LjY4Nzk1NF0NCj4ga29ial9hdHRyX3N0b3JlKzB4MTIv
MHg0MCA8ND4gWzE1Ny42ODc5NTldICBzeXNmc19rZl93cml0ZSsweDRkLzB4ODAgPDQ+DQo+IFsx
NTcuNjg3OTYzXSAga2VybmZzX2ZvcF93cml0ZV9pdGVyKzB4MTg4LzB4MjQwIDw0PiBbMTU3LjY4
Nzk2N10NCj4gdmZzX3dyaXRlKzB4MjgzLzB4NTQwIDw0PiBbMTU3LjY4Nzk2OV0gID8gZnJlZV90
b19wYXJ0aWFsX2xpc3QrMHg0NmQvMHg2NDANCj4gPDQ+IFsxNTcuNjg3OTc2XSAga3N5c193cml0
ZSsweDZmLzB4ZjAgPDQ+IFsxNTcuNjg3OTgwXQ0KPiBfX3g2NF9zeXNfd3JpdGUrMHgxOS8weDMw
IDw0PiBbMTU3LjY4Nzk4Ml0gIHg2NF9zeXNfY2FsbCsweDc5LzB4MjZhMCA8ND4NCj4gWzE1Ny42
ODc5ODRdICBkb19zeXNjYWxsXzY0KzB4OTMvMHhkNjAgPDQ+IFsxNTcuNjg3OTg3XSAgPw0KPiBw
dXRuYW1lKzB4NjUvMHg5MCA8ND4gWzE1Ny42ODc5OTBdICA/IGttZW1fY2FjaGVfZnJlZSsweDU1
My8weDY4MCA8ND4NCj4gWzE1Ny42ODc5OTVdICA/IHB1dG5hbWUrMHg2NS8weDkwIDw0PiBbMTU3
LjY4Nzk5N10gID8gcHV0bmFtZSsweDY1LzB4OTANCj4gPDQ+IFsxNTcuNjg3OTk5XSAgPyBkb19z
eXNfb3BlbmF0MisweDhiLzB4ZDAgPDQ+IFsxNTcuNjg4MDAzXSAgPw0KPiBfX3g2NF9zeXNfb3Bl
bmF0KzB4NTQvMHhhMCA8ND4gWzE1Ny42ODgwMDddICA/IGRvX3N5c2NhbGxfNjQrMHgxYjcvMHhk
NjANCj4gPDQ+IFsxNTcuNjg4MDA5XSAgPyBfX2ZwdXQrMHgxYmYvMHgyZjAgPDQ+IFsxNTcuNjg4
MDEyXSAgPw0KPiBmcHV0X2Nsb3NlX3N5bmMrMHgzZC8weGEwIDw0PiBbMTU3LjY4ODAxNV0gID8g
X194NjRfc3lzX2Nsb3NlKzB4M2UvMHg5MA0KPiA8ND4gWzE1Ny42ODgwMTddICA/IGRvX3N5c2Nh
bGxfNjQrMHgxYjcvMHhkNjAgPDQ+IFsxNTcuNjg4MDE5XSAgPw0KPiBwdXRuYW1lKzB4NjUvMHg5
MCA8ND4gWzE1Ny42ODgwMjFdICA/IHB1dG5hbWUrMHg2NS8weDkwIDw0PiBbMTU3LjY4ODAyM10N
Cj4gPyBkb19zeXNfb3BlbmF0MisweDhiLzB4ZDAgPDQ+IFsxNTcuNjg4MDI0XSAgPyBfX2ZwdXQr
MHgxYmYvMHgyZjAgPDQ+DQo+IFsxNTcuNjg4MDI4XSAgPyBfX3g2NF9zeXNfb3BlbmF0KzB4NTQv
MHhhMCA8ND4gWzE1Ny42ODgwMzJdICA/DQo+IGRvX3N5c2NhbGxfNjQrMHgxYjcvMHhkNjAgPDQ+
IFsxNTcuNjg4MDM0XSAgPyBkb19zeXNjYWxsXzY0KzB4MWI3LzB4ZDYwDQo+IDw0PiBbMTU3LjY4
ODAzNl0gID8gaXJxZW50cnlfZXhpdCsweDc3LzB4YjAgPDQ+IFsxNTcuNjg4MDM4XSAgPw0KPiBl
eGNfcGFnZV9mYXVsdCsweGJkLzB4MmMwIDw0PiBbMTU3LjY4ODA0Ml0NCj4gZW50cnlfU1lTQ0FM
TF82NF9hZnRlcl9od2ZyYW1lKzB4NzYvMHg3ZQ0KPiA8ND4gWzE1Ny42ODgwNDRdIFJJUDogMDAz
MzoweDcyNTIzYzkxYzU3NA0KPiBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGANCj4gRGV0YWlscyBs
b2cgY2FuIGJlIGZvdW5kIGluIFsyXS4NCj4gDQo+IEFmdGVyIGJpc2VjdGluZyB0aGUgdHJlZSwg
dGhlIGZvbGxvd2luZyBwYXRjaCBbM10gc2VlbXMgdG8gYmUgdGhlIGZpcnN0ICJiYWQiIGNvbW1p
dA0KPiANCj4gYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
DQo+IGNvbW1pdCBhM2Y4Zjg2NjI3NzEyODU1MTFhZTI2YzRjOGQzYmExY2QyMjE1OWI5DQo+IEF1
dGhvcjogQ2hyaXN0aWFuIEJyYXVuZXIgPGJyYXVuZXJAa2VybmVsLm9yZz4NCj4gRGF0ZTogICBX
ZWQgTm92IDUgMTQ6Mzk6NDUgMjAyNSArMDEwMA0KPiANCj4gICAgICBwb3dlcjogYWx3YXlzIGZy
ZWV6ZSBlZml2YXJmcw0KPiBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGANCj4gDQo+IFdlIGFsc28gdmVyaWZpZWQgdGhhdCBpZiB3ZSByZXZlcnQgdGhlIHBh
dGNoIHRoZSBpc3N1ZSBpcyBub3Qgc2Vlbi4NCg0KWWVzLCByZXZlcnQgd29ya3MgYXMgeW91IHNl
ZSBmcm9tIGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE1ODE2M3YyL2luZGV4Lmh0bWw/dGVzdGZpbHRlcj1zdXNwZW5kIA0KRm9yIGFueSBmaXgsIHBv
c3QgaXQgdG8gaW50ZWwtZ2Z4IGFuZCB4ZSBhbmQgeW91IHNob3VsZCBnZXQgcmVzdWx0cyAoaWYg
QkFUIHBhc3NlcykgDQo+IA0KPiBDb3VsZCB5b3UgcGxlYXNlIGNoZWNrIHdoeSB0aGUgcGF0Y2gg
Y2F1c2VzIHRoaXMgcmVncmVzc2lvbiBhbmQgcHJvdmlkZSBhIGZpeCBpZiBuZWNlc3Nhcnk/DQo+
IA0KPiBUaGFuayB5b3UuDQo+IA0KPiBSZWdhcmRzDQo+IA0KPiBDaGFpdGFueWENCj4gDQo+IFsx
XSBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL2luZGV4Lmh0bWw/dGVz
dGZpbHRlcj1zdXNwZW5kDQo+IFsyXSBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV8xNzU5NS9zaGFyZC1tdGxwLTYvaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFz
aWMtczQtZGV2aWNlcy5odG1sDQo+IFszXSBodHRwczovL2dpdGxhYi5jb20vZnJlZWRlc2t0b3At
bWlycm9yL2RybS10aXAvLT4gL2NvbW1pdC9hM2Y4Zjg2NjI3NzEyODU1MTFhZTI2YzRjOGQzYmEx
Y2QyMjE1OWI5DQo=
