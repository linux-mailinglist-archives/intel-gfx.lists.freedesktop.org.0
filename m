Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JE5OCTsnWnnSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 19:21:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F88B18B415
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 19:21:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B237410E60D;
	Tue, 24 Feb 2026 18:21:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oB1+AW2N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B707A10E60D;
 Tue, 24 Feb 2026 18:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771957281; x=1803493281;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5SNuC9QD6Zlz0iVPuzMh99n8UesWmpstmiyT3Zvs9iA=;
 b=oB1+AW2NqUhYR1HGX741doqzm91gx5QJ51liFv+VB7NU9NArS/JBIOew
 CkzRdqOKssuIcViL/sEUIojXLBANoHBbbBbFEibN3fbhvncAqTAnZTwFS
 gVsh9nIujeUccMR1OX++Zeb4vD90mkwy7EFcOQUL8MkFukQ0nRbhkPCwC
 Y+l72ZmIuzoQPET8ks+00s7f61PN+dM2wMocgtJT2ECXZnsjg7or8mzgV
 fFR3V7Wv+O4LoYViRLr8uXMcZpeLg/FrQbK9aERdEevvFbqJAeSkpjiS1
 6V5zpGCkY4twE5DUO/x6povq7dX3wCMq9v84/d4VohX2F8Qwbf6dfMZqf A==;
X-CSE-ConnectionGUID: 8c7QQzOqRee2NR5jagYXGQ==
X-CSE-MsgGUID: ovhpHR3SSkSi346tCTm0fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="75590282"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="75590282"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 10:21:20 -0800
X-CSE-ConnectionGUID: 7vGEJHsaQIiTRLoEj0eWlw==
X-CSE-MsgGUID: cqz5ckxSQ7qVbFkIZ2ukwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="220982286"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 10:21:20 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 10:21:19 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 10:21:19 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.6) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 10:21:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y1GP3y1HJ8+4ARuAAo6M9LCnlvcp1eVmizuPyyM9bxreWalrZ5JnBool4TFin2l48yvUUguUb2A5N5+GvUSnqpDOmQBRkwrrJXM2MX+BBPsRBHmwJo5BkEhNbiyskurLoCe7r4K8ZY+bH3oFrCEP+C1GxtcoGdf5sCJ/aBWW+t/BDeHo9oON1E6jiXBUgvZjR8YF7QwynpFH9e7Z+Fsrfxg+X17Rc+X7Efvu7zGoit0/Wy0nY8RX+tdIc4LTrYqKz/XkWZrKDYYwN4Q9liWL8h69118FCSnm70D3ULBqlhs8+SYgu7Nw3UcLrL9FT7yxK0SWwlb4QsQXVqW6V7QbzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5SNuC9QD6Zlz0iVPuzMh99n8UesWmpstmiyT3Zvs9iA=;
 b=vMhyod2NNFcwqQOATx4U8IYnNkhAQNKxhfl/hfa2RZOj0vOSgsViurRPMHgkPfe6n6QPmlEi4yb/4xMsBG39Z8eNfVpAjo08S8C4u8DPSPeiQ0iv+qM/6g/1SRdaY/KPj30IeDNtA/2ovnZq88OORyQjbPlL8ycKwIpVMyD1ljGu1aDV6tefw4JMaX2KLVLocdJkkwtabL6tNs5fM9DNWm1ukT0GuR0yDKNl0FCaxSGeS9+gNOD+H8hiSiqOVtd6P4tRlNVB1Xi/1P+s33UvQq21mt42kwPFgZLbOwEOB9ReMbkUXAbcaYBJxONpUNdLNMFNQMgG/6o675Lgp1y2MQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6347.namprd11.prod.outlook.com (2603:10b6:208:388::6)
 by DS4PPF2AD6B04BA.namprd11.prod.outlook.com (2603:10b6:f:fc02::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Tue, 24 Feb
 2026 18:21:17 +0000
Received: from IA1PR11MB6347.namprd11.prod.outlook.com
 ([fe80::7bc5:97ab:e0ec:1f87]) by IA1PR11MB6347.namprd11.prod.outlook.com
 ([fe80::7bc5:97ab:e0ec:1f87%5]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 18:21:17 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: RE: [PATCH v2 1/6] drm/xe/fbdev: Fix BIOS FB vs.s stolen size check
Thread-Topic: [PATCH v2 1/6] drm/xe/fbdev: Fix BIOS FB vs.s stolen size check
Thread-Index: AQHcoou0PlLzmCIK/0SvzEu7l1WeVbWSLylw
Date: Tue, 24 Feb 2026 18:21:17 +0000
Message-ID: <IA1PR11MB6347FAAA465455337FDF6F10F474A@IA1PR11MB6347.namprd11.prod.outlook.com>
References: <20260220170908.201422-1-vinod.govindapillai@intel.com>
 <20260220170908.201422-2-vinod.govindapillai@intel.com>
In-Reply-To: <20260220170908.201422-2-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6347:EE_|DS4PPF2AD6B04BA:EE_
x-ms-office365-filtering-correlation-id: 530d1bd7-e51d-4374-6249-08de73d1806c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?ODYrd2lHaElQTHFVM1k0UERjbFYrZDhiMUNWUktjNFR2a2N4czd0YWVEdWF2?=
 =?utf-8?B?TEo2R1Y3YlFHYTRrMERCTEJZN1FuSnVENW5vUEhHSEJMSWpxWENVSWJWNzdo?=
 =?utf-8?B?a0kyU0VGRkd5eHlVOVZtMEtRcStPUXU4QjgyZmJsVUI3aVpHWVIxd05IRzND?=
 =?utf-8?B?bHp5RWZYZjVhcGlWeTdib2xiS3U5QjFPUDJoSW5iVXZtbnhLSGcvU1BwVkNY?=
 =?utf-8?B?VkJja1dWRnBML01XWlVKUm9wZW5HQ2RvdlJDMkRPdG5oZzYrM0ZPekg5emNi?=
 =?utf-8?B?NVNEMThCS1ZWaEU0aEp1RzkrdElnZW9iYUtWTWhqSU9QQXBTMjh5RXJSN3dj?=
 =?utf-8?B?ZS95ci8vNzlZU1g3SnBZTkJaQ3Q5OG0yd1BhQ0FFN0JEUmJqQlIrYi9JMVgz?=
 =?utf-8?B?Q0FORFpKNUJadVJIVDJDL2htY090MjhReDljbU5lbVd5SHkxT0RJZy9RRk13?=
 =?utf-8?B?RzM1MlFrTjNESktkTHRrQUI4OTZrVS9TQ2h2Vko5SUVmN3E0aU9qbVBGbTY2?=
 =?utf-8?B?bEcrbUQvUTNSSjUwT1dvTHlZalZoNUVrVWlUbDZqRHA5TzBGL3hncndMcmxx?=
 =?utf-8?B?NFgzVy9KelRQb1JCSmRhYmUwZXBzdkVTVUEvU1FzeGMyTnJCU29BczM5MkZ4?=
 =?utf-8?B?Q24xTVMvb3p6MEhueWtqWDJxbHVKeERuSGZLdEt5ZnV2SHNyQy95VkYxbk5L?=
 =?utf-8?B?c3MzWG5KMEUvVms5dXBXWDBIVW9LcVJqZmVOSHRXaStHSUpha0FPWE5YMi9B?=
 =?utf-8?B?S3FwYWczUGVuMXJ5UVhJMnBpWEduVHcreTk3VTY2bFVMUzFXTDlMYzVZcEFS?=
 =?utf-8?B?WSt5T2tKMlVMTmZmNVVYcE9maXh4N05tVkRQWTNsczF6cjZhL2NvamhLbTY2?=
 =?utf-8?B?VGltZGpEd0Y0NlZRWkhQSFM3U2pLR1BadW9rVCtaVmpCYk1LSHJyZmFubS9l?=
 =?utf-8?B?WTQxaEVVSnhTRTRnbkNDRUI3QW5KTTNaRnNiM2VwSGY5SEpVOFM5aVA3QUh3?=
 =?utf-8?B?MnZqV09wR29GdXRSTEZJMHpac3BCeTRZMU1USzhERVhNaldrTU5DeENLWmJQ?=
 =?utf-8?B?cnFtN29wSXBZTEJWOGFTdUZJOTByamp5akUyajRHeGR2NzBVYWRiVmVSWFBL?=
 =?utf-8?B?MmFZZEJxZXlzM0ZuTGhZbkxpNmVvVVdjZnNBZHlhSDdKdkVlN0dJRWdPQjVm?=
 =?utf-8?B?Y2JvVDBWKzBIVkFybjdmZTZoU3Eyb1p6SE9yZ3A2MHU1bFd3M2JTWmRzN1Va?=
 =?utf-8?B?Q2p1TytiQ3VwK0o3TzBjUFhQa2tRbFp5REhlNmk1aFR6RTVXN2JRV3NJbmVB?=
 =?utf-8?B?NTgvNjAzZHgrU3VMQmdWMlhLQnFBQXIzTGNIekEwL0hEd2ZEYUo3Ky92d1Fs?=
 =?utf-8?B?cVpiejllL09WWHBwNDcxRi90Ym9uYW5aR3NNTFhRTXMyVjJZUnJXREh5dVBJ?=
 =?utf-8?B?MGt0cmZWMVlPNVVmYTcxZ0VidkNuS2tEdzByakxtbVhJVTBBMVlOQUlpYVhM?=
 =?utf-8?B?NWpEQTJhaWZBMSs4MVZrWi9GQ0pSUWYwUTZkblZZYXk4V3BJVHpZejAzeW5H?=
 =?utf-8?B?Q3RvUjZxY0FWcUVMbWVGYzN6c1NyWHdiSU8xWXpnQ1FjUE5pTGxSNURCdkxH?=
 =?utf-8?B?ajY4RktsTFoyK1ZCVWx6STlYSng2cG5POUs5WnVIb2lQQ0toRStQRmlnYTFu?=
 =?utf-8?B?b0x6azlVc3AvTFN4OEp6ZEUwRnN6YXBWbmFnbDBZTlppaXd5SGdaNUhZZ2Q4?=
 =?utf-8?B?OE5YMTI4RlZlZ2lxNXI2Vzd2RFFmSkEwL0txL1k2QVkwSFpTMTZ3UUZ3bVFx?=
 =?utf-8?B?a3l3ZG9kMjloY29tUDQzZ2w4bERzYVdZNEswbGxzL29SQStIakVFeTduMGpR?=
 =?utf-8?B?THd6MmN3NXdQKzZ2YzRjb29WcExRZUw0QkZUcE93UHlEMW1pWW42VTVNYnNV?=
 =?utf-8?B?QnBsRzJTRFN4QjEzK00wNlg3T01tZ1p1U3R4ZXNmZHRVSmhLTFlSNUJlN3RH?=
 =?utf-8?B?dHlSQ09LaHQ0ckVxZGlQd3dKa05lVG9DeExDS1ZjbkVhSjlhYlBYVHJXSzR0?=
 =?utf-8?B?RVR3d1ErSWtlUk8zc1MvL2R3NENBNWNXb0VFUXdOSVpxei9TR1U2T0w2NnRs?=
 =?utf-8?B?THA5R0F5d29rbGFEQWgwTTVrblFSNnNZWTllQTVUaTlnandoaVhyYlo5NzRw?=
 =?utf-8?Q?9q/koiXcW1ztOqfz7PwpPTo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6347.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VmhjQTQ1R0JTZy9URGpXMjlKWDdJMVpYRHpMb0FqK2tDQW4rUnRzcm5vUXo2?=
 =?utf-8?B?Q0JRTmpxVU10aXhjVFM2ZlZicnltZTI2VC9sOWxKako3UCtPbDhZWk1uRnJt?=
 =?utf-8?B?T2RJWTlXdyt2SGxqbENSWFhjMUFvOTVmcXp6aERkL2ZXZTVZRnFucTJkWUZ2?=
 =?utf-8?B?YmlCNUlKSTM4VUFzNFNJOEdqZ3cvWmtGaWhmZmJvOENCSEJOOVhYVVlYRXBn?=
 =?utf-8?B?SFpwQ0ViY0J1UWh2Y0YrVGVYUWk4SEpQRkxQbGQzQWhSN3ZGZDZlZFRLWUF5?=
 =?utf-8?B?ZHovczg4QVE2bHFhS3RkOVF1UnRqZzN6blVVNjhhRkNhckszZFo5Umw5RWdK?=
 =?utf-8?B?dUQrdE5ycmhjSVVVYTJDV3JvUG1KbWJIVjlpNmg3aVRmNEQ1SUw4Ry9ZK0dQ?=
 =?utf-8?B?Y2dqTnpvM3luMTBJTWJ1NVZ4QVBwbFVQNFQ3Qysvb2tsTXR1ZlozaVpWL1dP?=
 =?utf-8?B?dENmRk9NeWY0L1hGWGpvUWlSS3RBN1Y4dmdsd2lzODZiY2k2Y3h4VU5qL2Mx?=
 =?utf-8?B?REd4a0IvNXJoUUpYMWNIdjhrOUx0QkxHTm9rRzU4RG1jWGJXRkZ5alVZRTRY?=
 =?utf-8?B?eUlDNGVqYWovZ2tLUVA0WUVTamVjcjV6eGJ0clZyalFFU0VMZjN5V1FWa1dj?=
 =?utf-8?B?ZVhtMDlJTzFjRTV3eWRuTFpyUlRpaVp4VXhybUlwdHc0TmFzMmpxdFNJUTg2?=
 =?utf-8?B?V0JHRjRDbGUyQ05XNENFaUgycXFLUG1pZkxhV3FtWVRabmVjUHF0THhZbUJj?=
 =?utf-8?B?LzllbGtBd0w3RGVsOTIvVTFhTDM2dmU3Y1hsUk1iQnVabnZGYzNSc2ZVVHFk?=
 =?utf-8?B?Q2E3VEMvMkF1WVNLaXBYNFFuRkNFMFVUNDVVQXdEMlJyNkZpNTI1eEM4SUJD?=
 =?utf-8?B?NFFxSmk1MU1FUVdVTm1QcGZIcW1BSnBIaGpJMEc5SlB0KzRJL3RNbzhhU0VS?=
 =?utf-8?B?YjVPaHVONVRuR25NaE03bkhvNVpLL3A4Y2lBSlRRMVJES0g4d3RSTVdqU3ZT?=
 =?utf-8?B?NjN5R2xwU25wd0lDZkF5Q3VTZnlITUYzTllrazNJWDlZRWh5WmxGRzA1N1RB?=
 =?utf-8?B?aVRxZTlkQXEyRWVwRWxUQWc3OUxTNGYwaGdYa3laQTBvdEhaK3c1RkRTbmN0?=
 =?utf-8?B?OE1BamZLOTZUT2RqaERJZUV1SzUrcXFYeng4cjROYk91bVl1SzV3MjVGTHlS?=
 =?utf-8?B?eTVxYWFmejlrNDIxSEdRaFI2emFMelNwRy9nMFo0RklkZEdRbjIxZFRtRWFC?=
 =?utf-8?B?YlI3aXh3am0wUEVwYjRKNFRKQUdjSUZQMWtMc0hCdXpBQU9Pa1E4bjRKMGtp?=
 =?utf-8?B?QWh5VjdKYlVpcDNiSEdkeGdEN2F6OGRXM2tNR1ZnaTNpM254MHdxQXJkY1pQ?=
 =?utf-8?B?amlLYkQxOE95ZHZ6SkUwUTJRZ0laSFl3NFViNUt6d0o5bGhoa1g1bi9uUXFN?=
 =?utf-8?B?OFQ0ZXM5dU1pTUE2U2tSQTROL1NBT0Z5bEZjNUp0RVdVNGZYN3JOMWFrNHFm?=
 =?utf-8?B?YXYxUnNJdE9qYUczRDE3dlFOWVB4NDFvRW5DajQyam5VRUUrSHRQYWcxTlRl?=
 =?utf-8?B?ZzJzN0d4WVluTXd1WngwQXovVWxFRGh2WVVxcThlMkNQcDhwd3RYc2FvU29N?=
 =?utf-8?B?bUI0UG50OCt1dS9LMlhwVjJaREtMc1ovaEJDQzZJVjJvdDkwWkJZdkVkSE90?=
 =?utf-8?B?UE45TmV3SjNtWDNlbmZneURLU1ltK3hYMk1pWHRwWjlDWjJFVGdOd1IxVHVP?=
 =?utf-8?B?eDR5Tk5Ea2NWaTM1RnR5Y2J4amJtVEFUekpnb1E4Rm9TLzhocm9LaER6Vmlv?=
 =?utf-8?B?SkpMbW81WTR5VzF6VWxSYXhwcElmazU1UlR0aW4zVU0rU2RlUDkxRXJjYTdM?=
 =?utf-8?B?RFgzcVlJbFcwVVpwQzV1Ym1LY1pvMTY5YVJYM3ZCRy8vc0NXRldHMnh5VTBR?=
 =?utf-8?B?bFZFb0Y3WjNiQlIvRDBUQ0JkTStrRkQra1A2NjJ0L0RyRnViL0NIRXlncHY4?=
 =?utf-8?B?eU4wQlJDVjB6dXAwNHhzKzVFd2FPVVdiWkFndGYyeGxBVENlNmN2bnFjQWhU?=
 =?utf-8?B?bi9IZjZNT1FucEV5aHEyU2pNZHZTUVEzc0RLNGpQSVhuUnJ0eGVsRTBVNnd3?=
 =?utf-8?B?Vi9mYmFndXE2ZGh4Qm15cm5PbWR5OUowNTBjaUROYnBPaHBNKzg3YmJvczcx?=
 =?utf-8?B?cmdqYllUU0s0VUh5ZE50KzRRQXhjYlh5aFIzQ2xqaC9aSWJ6VG1pRTZ6NGV4?=
 =?utf-8?B?K1p5R0U1TWc3cjh0SDkwWDdMMENhc2NBOUdwT3Z6M0VKNnFpZDNHS0I1eDFy?=
 =?utf-8?B?SVhHS0F0TVo3TVJWUTBlQUpXVndORnVKNU01eWcrRTFKMmFQcFBiQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6347.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 530d1bd7-e51d-4374-6249-08de73d1806c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 18:21:17.3037 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O5L9c3kMElRqyPloI2X2bfd3zpZZ7EQVlCICRP0KLCVTKToxRnYrx1Gzl9TM1cE3Eii9Zolbr867DT1eg5si1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF2AD6B04BA
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,IA1PR11MB6347.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3F88B18B415
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR292aW5kYXBpbGxhaSwg
Vmlub2QgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIEZl
YnJ1YXJ5IDIwLCAyMDI2IDEwOjM5IFBNDQo+IFRvOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEdvdmluZGFwaWxs
YWksIFZpbm9kIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT47IFN5cmphbGEsIFZpbGxl
DQo+IDx2aWxsZS5zeXJqYWxhQGludGVsLmNvbT47IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIgMS82XSBkcm0veGUvZmJkZXY6IEZpeCBC
SU9TIEZCIHZzLnMgc3RvbGVuIHNpemUgY2hlY2sNCg0KTml0OiBDaGFuZ2UgInZzLnMiIHRvICJ2
cyIuDQoNCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCj4gDQo+IExvb2tzIGxpa2Ugc3RvbGVuLT5zaXplIGlzIGluIGJ5dGVzLCBub3QgcGFn
ZXMuIFJlbW92ZSB0aGUgYm9ndXMgUEFHRV9TSElGVA0KPiBzdHVmZi4NCj4gDQo+IEFsc28gZm9y
IHNvbWUgcm5hZG9tIHJlYXNvbiB4ZSByZWplY3RzIHRoZSBGQiBpZiBpdCB0YWtlcyB1cCBleGFj
dGx5IGhhbGYgb2Ygc3RvbGVuLA0KDQpUeXBvIGluIHJhbmRvbS4NCg0KPiB3aGVyZWFzIGk5MTUg
YWxsb3dzIGl0IHRvIGJlIHVzZWQgaW4gdGhhdCBjYXNlLiBBZGp1c3QgeGUgdG8gZm9sbG93IHRo
ZSBpOTE1IHJ1bGUgZm9yDQo+IGNvbnNpc3RlbmN5Lg0KPiANCj4gdjI6IHJlYmFzZSByZWxhdGVk
IHVwZGF0ZXMNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNo
YW5rYXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2
aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
eGUvZGlzcGxheS94ZV9pbml0aWFsX3BsYW5lLmMgfCAyICstDQo+ICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0veGUvZGlzcGxheS94ZV9pbml0aWFsX3BsYW5lLmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0veGUvZGlzcGxheS94ZV9pbml0aWFsX3BsYW5lLmMNCj4gaW5kZXggNGNmZWFmY2MxNThkLi4z
OGVjYzIwMWFjNGUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hl
X2luaXRpYWxfcGxhbmUuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9p
bml0aWFsX3BsYW5lLmMNCj4gQEAgLTk5LDcgKzk5LDcgQEAgaW5pdGlhbF9wbGFuZV9ibyhzdHJ1
Y3QgeGVfZGV2aWNlICp4ZSwNCj4gIAkJICogZmVhdHVyZXMuDQo+ICAJCSAqLw0KPiAgCQlpZiAo
SVNfRU5BQkxFRChDT05GSUdfRlJBTUVCVUZGRVJfQ09OU09MRSkgJiYNCj4gLQkJICAgIHBsYW5l
X2NvbmZpZy0+c2l6ZSAqIDIgPj4gUEFHRV9TSElGVCA+PSBzdG9sZW4tPnNpemUpDQo+ICsJCSAg
ICBwbGFuZV9jb25maWctPnNpemUgKiAyID4gc3RvbGVuLT5zaXplKQ0KPiAgCQkJcmV0dXJuIE5V
TEw7DQo+ICAJfQ0KPiANCj4gLS0NCj4gMi40My4wDQoNCg==
