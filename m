Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F68A72B1B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 09:09:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F55D10E873;
	Thu, 27 Mar 2025 08:09:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L52o8U0D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 546A710E874;
 Thu, 27 Mar 2025 08:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743062965; x=1774598965;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Sih1QnlFJZ4iqkfKqRdPKCP/RsP9gH8LDXAU80dZ8Tc=;
 b=L52o8U0DtS5R507bGG+ZLgEkM9v2A0KLS5BkTrzBQ0iE2xQAt35RC9KO
 pFxmQ98nSoPYlVcimqs1Z8qW7QzC5iT/cdm7/KY8PFU16OGixk7x1Wdbs
 J4uB7JDBe/fUwQqdRHiKwvUR/QjfORbhY5OZrEvEw+4KMbRhddqsVlVFV
 nYPvU3FAQh0CvRzr+Qe9Q1zzenufLAuS9GyV2y2OYG2M9V+vCrbgirljR
 YwrNiKhYmgtXl1z5xnO94tucpqNnY7+JGIBPHJbjjrs6NG7z+s41XfNkY
 aLXnoVHo/csWJs2EXwcM5YX6at1BxJzg/dIBNFWPKMl6Dcr7T6T8khUlf Q==;
X-CSE-ConnectionGUID: gSl9bSePQnu+BOZhObo65A==
X-CSE-MsgGUID: NngvVQVbSVKADQ/u34YJLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="55753919"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="55753919"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 01:09:25 -0700
X-CSE-ConnectionGUID: bwUP787/SVabxLACeBU25w==
X-CSE-MsgGUID: Ev6dFI8kQBuVx/QvjxknyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="125035592"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 01:09:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Mar 2025 01:09:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Mar 2025 01:09:24 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Mar 2025 01:09:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R53Go2unmkZzb4tHglPNX4hh9moFyICZb5LFSA4EtPKAhYYYXetU9i5ZMvoIpRasXMQEDgXY29T1sRZVd/vy4BBF2MOXb2fIzb0S1LjguiDAxrwqJuOXd+iayJ5nqdmwKzXmGtJQvcn/bxvG1+xbIjNUK9IC8P4nENMTs5FLaYVijqW+hfpPdjIkgsYLGdMJPhIxTqP9UkoN2KdgHBmWGjc4/kIkJN9L5IZL/EgZ8qX0MP81T+XgbNB/0I6wWfYHfv2wQOuz+ZbbUda1X/zPfPTTgdHIa7jkBjwtw0lAKIeR3bsDk6cxUZJZRiF/VClQcJSE9RTN4RdeY1mXMiTj2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sih1QnlFJZ4iqkfKqRdPKCP/RsP9gH8LDXAU80dZ8Tc=;
 b=dc4KfJhU7/dbfVrCunljxNDfPAmxHHV7GPsAiQlJ5xiNPj/139WgLzfdc2S4KbcvYq4o5QWjiXe+tKhWG5gY86NWpsCBIvwMz3Vm6LNXJku7QDeRz/SZwUgmz4FikJvGu3vz1fO9aXeXBc2dGZCtDM3ajOi65JlSu+L0UooDLYu2pUuR+W53p9lQQfwVSTUtUvMtPMe4ASPkeYDzrEmwubxitwkU2sIRiCGcvEvmr5pcDxyDfolIekFmxpOf8z7TuDRrl4hLipbgZfhpRpVbJl5yVo9W57GrRZo0QRgk0N94KqUNeNvQtF+UXRjrgFbFS4ec/mCF1NeSCSA6UUJDaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA3PR11MB7977.namprd11.prod.outlook.com (2603:10b6:806:2f3::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Thu, 27 Mar
 2025 08:09:07 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8534.043; Thu, 27 Mar 2025
 08:09:07 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Josh Poimboeuf <jpoimboe@kernel.org>, Jason Gunthorpe <jgg@nvidia.com>
CC: Nicolin Chen <nicolinc@nvidia.com>, Peter Zijlstra <peterz@infradead.org>, 
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>
Subject: RE: Regression on linux-next (next-20250321)
Thread-Topic: Regression on linux-next (next-20250321)
Thread-Index: AdudRupO/hqyu5dwR3qhp+EvWE8LDwAEjwgAAAytn4AAU61QgAAFJ8DQ
Date: Thu, 27 Mar 2025 08:09:06 +0000
Message-ID: <SJ1PR11MB6129E7DB3DE3D9567D4E52FAB9A12@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB61295789E25C2F5197EFF2F6B9A72@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <Z+Jd4GDIzCP5cBQE@nvidia.com> <Z+Ky9XsxHo/cECgr@nvidia.com>
 <sgetbac5ljzij2v54nmjuucioe4p6bhhn7kwm3bhn7hgkxi3gv@drfutbov4q4o>
In-Reply-To: <sgetbac5ljzij2v54nmjuucioe4p6bhhn7kwm3bhn7hgkxi3gv@drfutbov4q4o>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA3PR11MB7977:EE_
x-ms-office365-filtering-correlation-id: bd4edf4c-d0f7-4c57-f415-08dd6d06a579
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?SkJaZGRtWEN3bTFvRG1BQThZN0tOdkFIcS9yK1hCZVBtQ0FoUVk1ZWRHV0h4?=
 =?utf-8?B?YUtETVJ1eXAyU0FVcUZtVkRvcjJWWXNMWnc1Umd6cmJQTFpVcXo3SjZPY3hY?=
 =?utf-8?B?RXhla1QrUW5NVUxzM1g4aE4vcllVSUV6OTFpeEhkcE5pRkV0S1ZnNUtXU1hJ?=
 =?utf-8?B?YkFTRjVhNzFXRnJCSzJFdTJKUEJKWlJQU3VQOHdOSkhrek4vSzBMSkNLYjJl?=
 =?utf-8?B?bUdNTitZeis1ZG11bFlNcjNlano3YjJjemNXcXVZQkZjWkUxVno1T1A5TTRW?=
 =?utf-8?B?QTN2NjBVV3FqbXJpalQxNnJYN0VDcUpKOHgxS3BIRnBoUUt6bWZCdGhnc0ti?=
 =?utf-8?B?Q1kxN0RBN093QXJ5Y1BXaG1ZRmZEcWFITWppUWRLS3dMcHRSZHJhUjBoSVQy?=
 =?utf-8?B?UmlWU3Nnaklldzc1ejh2d1NBbTZrK3NBaXFuMytIajA0RzlIWVpVcnBva0Y0?=
 =?utf-8?B?NWRJVmxSUzVBOEFWcUxtSVpaRWtQLzZ5UGR4NjFtUVl2Z0htYUdaNWp2aVRP?=
 =?utf-8?B?T3VQeUgvTWVrRmdtSWh6TDJZVEdWMGR0aHBidDNtQStMWnpTeUI4SndybWZq?=
 =?utf-8?B?QzlmZ3p1K01ERFV1VG9EdUxMVWlHUkpydmZRcFNTamNWV2VaUDIyWHQ3SG55?=
 =?utf-8?B?L1RDc1dwQTBlTDRXSzBPK0VJeG5sQ3pHYjRlSWQ4N2ZtckI5MFlxamFVT01u?=
 =?utf-8?B?NzY3RmxwUHF6bFJTV3RyQm1aT0FzWXIzU1ZlRWFEVGl4SG5mK0FqTGJHY0xh?=
 =?utf-8?B?TmN2SEprdHhoNVhVQUxLOEYreTJZTlVpMUR0Y1UwT2pBRUZBUmsxWktrajRT?=
 =?utf-8?B?M1VSWERhenBwSCt4bW1uQjNGSEgyQlI4bVY4WmtYMjMzV00wUFU5NkZXYVAv?=
 =?utf-8?B?RitiTVVZTFc5Ni9KcmxORHVkVmJHMm90a2gxTTc2cEw2MldwQ2VHTExnNjE4?=
 =?utf-8?B?TDdFVjc4RXAwd3lkNlkxL01sN0taNmVWMHdqVm1DY0VaVENjcm9NdHFMVDNR?=
 =?utf-8?B?bU1aUndGVFZpT1lkdnA1djN5ei8yWlIwMTVWVVV4ZVlDZU1tV1hZakJFRklq?=
 =?utf-8?B?aUhSV2dHbytaZWU2dXM0SW9qeHQ2dG8rOSt0bzdXd29oVGZGdC92M05tVllz?=
 =?utf-8?B?NVloQmJTSkpUQWNmMWNXUmY0QVBBQnJtN0ZxclpTenY4WGhsdG1EQ3Aya3NY?=
 =?utf-8?B?eWJUNHhxSi81UFRTOFNFbk1jWGZOayt0VDcvT0RYUDhBOHU3bTdnVFJad3NI?=
 =?utf-8?B?QmhIS1FNUzRheWEwUnNOelJSYlJTSmJkMFRjMlBnZi9aTnN4RnZzNCtaeGJG?=
 =?utf-8?B?SlB3ME1UaDBpYS9iY1NsbThoMXJkdi9zaENLeVhTMm1yVmdhM1ljMis2Zm5I?=
 =?utf-8?B?VGNOR1J4QkQvQkpkOU1xcitIVlhqR1p2YWNoNC9xdHM2bXhxekM0eWhGdm1Z?=
 =?utf-8?B?Tm8zYVFYVkNLZWhSMk5ZK3ZDS0d1RWhsTldOUHFxU0NXZkF3RDFNanV6MlJ0?=
 =?utf-8?B?TEpDd2pUZngrK1hXQmZyZVhqTkpVMUpYL1NSRjJ6NUNGUkFBcFA4QzN3eVB2?=
 =?utf-8?B?bE44SExuamJqSVlDbitMR0xZcDZaV3B5aXdwZFhNVGdmL01STzZKb0kzTEFZ?=
 =?utf-8?B?bzNnT0prV0MxR0xnVEEwSzZacXhoeGxYVkFoZmwzS1NuMXNGbDdNS2dpbWhx?=
 =?utf-8?B?SFJzeEVGa29neW12K2NHZXpkRGdpSTFCQ3lSZVRtYkc3M202cWFaTS9HUG85?=
 =?utf-8?B?dWhwVVVZNVlibVpoenY3b3VwK0NHajRLQVVJMEtyZTlGZlVEV3huNzJsOXov?=
 =?utf-8?B?MTFseGtsS1FYbkR3N3dwL2VVSXN2aFM2bHB3Skw3b25IUyt3dGFMSnEvKzdu?=
 =?utf-8?B?c0E0ZUhUMDFnU3hTK21qd0d0Zm1GeERxNkVSVHRrZEtMSGw3dXNiWWdONmMx?=
 =?utf-8?B?TkZZV1NKUG9XVXFrcGZwMWUwY09HQzFUelpsMXlIYVZFZlMvdFQvZEVNRURP?=
 =?utf-8?B?eVpTdFk0S0p3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aGN1MWpvczZhc3BuTjllS3RQRXp6RExmQmIrWnI4S3owL1laVTVYTlBvWEhR?=
 =?utf-8?B?NFJ2aEJPdU1QRjM0VXlPWk9ZRFlJcGQ1dG1YdldqVWdob1FMSjgzU2hVeW9F?=
 =?utf-8?B?SVRWckg2bjU2YUJPZjVqRGxmenV1VW1xWnU1dVhESVhpS0ZUZDVhOGl0NTh4?=
 =?utf-8?B?dkdjL210eUtRTVVmUkVVQ21SRFFHMmwrUldJbmErczdzNjdQQUJBTUVOSnRz?=
 =?utf-8?B?Rzh5ZnhXR1BUOWZjUWhRMVNqd2xhUW9Sb0w3aWI2K2R5YTd2NjdGMzRvV0Vu?=
 =?utf-8?B?U0xIOEp1ejVPVzkzUTZQOTF4b0Z4M1ZwaFhFN1pOaFlSMmlHVjVhOThGMnNn?=
 =?utf-8?B?eWt2alNUak9zcEtJY1ZycS84ZWc1YTVjZ0ovZXdIZkRFbWdkT0xzUExpWDNQ?=
 =?utf-8?B?R0MzMEVrcTFaUUJMU2xsQ0E5dGkzN1dPT2JkdWN5SWVyWkw5V1BqaWxKZkhx?=
 =?utf-8?B?Y0JOeWVmRzgyZmg0VFljS1pnZHRBajl3ZHVwaFJMcEM3eTNvK2pQKzlRTnNT?=
 =?utf-8?B?dTRjaDZNeVhIOU96MHV2bjQ3VExkNlBJNUh5ckpWZ2J1a1VJdWR0WGZ3R3Zq?=
 =?utf-8?B?M2FBNlJoUGpsMUdKMEFEdHMyMTYvMFlLdlN6MjNNYWZrWnZ3T2dYT1pVTjJt?=
 =?utf-8?B?Rmo0aFlPZkQwSUZ3UWpzVjAxTjBKanVYM3QraFFFcHlSTkplMDgwc2hpcHVR?=
 =?utf-8?B?L2ZySnprOXQ5enN4U0RNZUxZL2RWNkNCL2VQSkcwZVpDTzFxcExhN2gxRjlN?=
 =?utf-8?B?TFRYdHZNSkpNUVZlSUt6OTRoYXlBOWNteWo0eHNNK1Z5MHR5SVdGaW10WmhR?=
 =?utf-8?B?M3F3LzVvWWx3YW1Eby8rSWM1QVpnS0YrK25KY3dDdWltV0U1dmw4czA0S2Iw?=
 =?utf-8?B?OEZjcUw2REhLM0ZjaVJXVXcrUFVXdFBkY0JpVWR2bTdaT0pwNDgyekQ3UHZ0?=
 =?utf-8?B?cnBLdWF1c2ZlTkdZMlMvT3dZb2M1aTVqTTFRditRaFkrUm5FemZDTVJmYVlQ?=
 =?utf-8?B?WVVkYjNwaklONXlVVHR3N3RvYjkyZ1JXUlMzbEpsTXdVaXJ2RXFrOG44SjdP?=
 =?utf-8?B?c0tIbjBxazlrWEtFUFdYdWliYVJib1I1RHZuYTNpQXM3cm40VFc2L1pNdEd6?=
 =?utf-8?B?WVp2THp1eHNLQjN4MTN3NUJ6cEh5Wjc2MCtOWUhoQUE1UitxaVdyZnBtNThO?=
 =?utf-8?B?dWtNajhSVTgzOHg5SFZFeG1RSHY0OXNac0dlNmRlM1o3UjZDQWRYWEZtdW9w?=
 =?utf-8?B?N2ZvUmpMSDl6ODdZbzVXOVFTU28zVForZDl3anIzMllrZVdFR3h3OThJS3NS?=
 =?utf-8?B?QTFzQzhYOVY2TGJIOG5FZkhwTnBFbjhXSWhXYUJFZkMzUCtXWmtMQzdJenBT?=
 =?utf-8?B?d0ZHY1ZlZUpoYVUyWkh4cW5UcCtZSXFuQkVaSk02ZllkdG5VdGYyNWFBYlNv?=
 =?utf-8?B?ZDl5Q3RZTU1pOVpyM2Z1TmZFblhuSG5sSS9sS2NvL2ZvOUxFRjFTMEl2VERM?=
 =?utf-8?B?cHoyRzRpWmFmaUtUU1ZJTHlKZXY1eis4ZnEwcGxNT0FGeXUyQkwrZ1FpTzlj?=
 =?utf-8?B?bjMxZ0hLZEVBRXhOcnNOQUJCUC9qcVgzclBScVZkRk85ZjltZ1RSNWZ0Rldv?=
 =?utf-8?B?REZPNlIxeGw0RGJLN1A2S0tyOUQ0OFZXRE5nZUs2WnViNHVzZDJFZFNsU2R5?=
 =?utf-8?B?dW4ydnkvbnVhRWkwa0lnTjcwY2d2aHFiQkMwTkw5TDZoSDdDTWx1RUZVb2N2?=
 =?utf-8?B?NFFHWGxVbThRTlRQSThMS2cvNm5HQTYyaENqT2d5Z2ttb1pWU2hsNjR3QnBw?=
 =?utf-8?B?N3V6VFZLOTk2VGFNemlVeGpFM1dkMDduNCtxYTV1SEExSkh0YmlrbzQ5aldh?=
 =?utf-8?B?K1FrbFZRbldmY3d5ZXAyVGRtTUMyMmRnbHAvVmJ3M082QW10Z2NCeTBDSU1F?=
 =?utf-8?B?eUliRTV1dzFDdzFtUVRFaDREd1JCWEJ6dnZzUzBSRWRNdWdoRHVVcitIU1Jl?=
 =?utf-8?B?ZnFFZytVQS9KNmZBaitTZFV2K05DYlpKVjM5MW8zeUlya1Q3SEpQVDBhSmMz?=
 =?utf-8?B?WGk5WjNTZVExTCt3OGlzZE1OR2VoZDU3OEJ1MTN0VjVJa2g4d0VHTmpCa28w?=
 =?utf-8?B?TUY1R0VnakJQMFI0UVVMZGRzWWllQWZHWUVVMzhzc0ZibEExUkczNnFOWmRn?=
 =?utf-8?B?ZHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd4edf4c-d0f7-4c57-f415-08dd6d06a579
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2025 08:09:06.9659 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iVV/ftsY8rwMF8z5h2K9B9V0g4on1a2XvrpvuJoQgVnN+Cgbn+IlSf6XwcL2Tb52N5Iosq0s+gFG9rMp5wYq+OqsVljw2Fxa/ci4+HYqSs8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7977
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSm9zaCBQb2ltYm9ldWYg
PGpwb2ltYm9lQGtlcm5lbC5vcmc+DQo+IFNlbnQ6IFRodXJzZGF5LCBNYXJjaCAyNywgMjAyNSAx
MTowOSBBTQ0KPiBUbzogSmFzb24gR3VudGhvcnBlIDxqZ2dAbnZpZGlhLmNvbT4NCj4gQ2M6IE5p
Y29saW4gQ2hlbiA8bmljb2xpbmNAbnZpZGlhLmNvbT47IFBldGVyIFppamxzdHJhDQo+IDxwZXRl
cnpAaW5mcmFkZWFkLm9yZz47IEJvcmFoLCBDaGFpdGFueWEgS3VtYXINCj4gPGNoYWl0YW55YS5r
dW1hci5ib3JhaEBpbnRlbC5jb20+OyBpb21tdUBsaXN0cy5saW51eC5kZXY7IGludGVsLQ0KPiBn
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7
IEt1cm1pLCBTdXJlc2gNCj4gS3VtYXIgPHN1cmVzaC5rdW1hci5rdXJtaUBpbnRlbC5jb20+OyBT
YWFyaW5lbiwgSmFuaQ0KPiA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJl
OiBSZWdyZXNzaW9uIG9uIGxpbnV4LW5leHQgKG5leHQtMjAyNTAzMjEpDQo+IA0KPiBPbiBUdWUs
IE1hciAyNSwgMjAyNSBhdCAxMDo0MzoxN0FNIC0wMzAwLCBKYXNvbiBHdW50aG9ycGUgd3JvdGU6
DQo+ID4gT24gVHVlLCBNYXIgMjUsIDIwMjUgYXQgMTI6NDA6MTZBTSAtMDcwMCwgTmljb2xpbiBD
aGVuIHdyb3RlOg0KPiA+ID4NCj4gPiA+IE9uIFR1ZSwgTWFyIDI1LCAyMDI1IGF0IDA1OjM5OjM5
QU0gKzAwMDAsIEJvcmFoLCBDaGFpdGFueWEgS3VtYXINCj4gd3JvdGU6DQo+ID4gPiA+IEhlbGxv
IE5pY29saW4sDQo+ID4gPiA+DQo+ID4gPiA+IEhvcGUgeW91IGFyZSBkb2luZyB3ZWxsLiBJIGFt
IENoYWl0YW55YSBmcm9tIHRoZSBsaW51eCBncmFwaGljcyB0ZWFtIGluDQo+IEludGVsLg0KPiA+
ID4gPg0KPiA+ID4gPiBUaGlzIG1haWwgaXMgcmVnYXJkaW5nIGEgcmVncmVzc2lvbiB3ZSBhcmUg
c2VlaW5nIGluIG91ciBDSSBydW5zWzFdIG9uIGxpbnV4LQ0KPiBuZXh0IHJlcG9zaXRvcnkuDQo+
ID4gPiA+DQo+ID4gPiA+IFNpbmNlIHRoZSB2ZXJzaW9uIG5leHQtMjAyNTAzMjEgWzJdLCB3ZSBh
cmUgc2VlaW5nIHRoZSBmb2xsb3dpbmcNCj4gPiA+ID4gcmVncmVzc2lvbg0KPiA+ID4gPg0KPiA+
ID4gPiBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGANCj4gPiA+ID4gPDQ+WyAgICAwLjIyNjQ5NV0g
VW5wYXRjaGVkIHJldHVybiB0aHVuayBpbiB1c2UuIFRoaXMgc2hvdWxkIG5vdA0KPiBoYXBwZW4h
DQo+ID4gPiA+IDw0PlsgICAgMC4yMjY1MDJdIFdBUk5JTkc6IENQVTogMCBQSUQ6IDEgYXQNCj4g
YXJjaC94ODYva2VybmVsL2NwdS9idWdzLmM6MzEwNyBfX3dhcm5fdGh1bmsrMHg2Mi8weDcwDQo+
ID4gPg0KPiA+ID4gSG1tLi4uLkkgd29uZGVyIHdoeSB4ODYgY2FuIGJlIGFmZmVjdGVkLi4uDQo+
ID4NCj4gPiBJIHdvbmRlciBpZiB0aGlzIGlzIHJlYWx0ZWQgdG8gdGhlIG9ianRvb2wgd2Fybmlu
ZyBTdGV2ZW4gcmVwb3J0ZWQ6DQo+ID4NCj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51
eC0NCj4gbmV4dC8yMDI1MDMyMTE5MzYwMC4yYmZlMDNiYkBjYW5iLmF1dWcubw0KPiA+IHJnLmF1
Lw0KPiA+DQo+ID4gdm1saW51eC5vOiB3YXJuaW5nOiBvYmp0b29sOiBpb21tdV9kbWFfZ2V0X21z
aV9wYWdlKCkgZmFsbHMgdGhyb3VnaCB0bw0KPiA+IG5leHQgZnVuY3Rpb24gX19pb21tdV9kbWFf
dW5tYXAoKQ0KPiA+DQo+ID4gSSBoYXZlIG5vIGlkZWEgd2hhdCBlaXRoZXIgZXJyb3IgbWVhbnMg
b3IgaG93IHRvIGZpeCBpdC4gQUZBSUNUIHRoZXJlDQo+ID4gaXMgbm90aGluZyBzcGVjaWFsIGFi
b3V0IHRoaXMgcGF0Y2ggdG8gdHJpZ2dlciB0aGlzPw0KPiANCj4gWWVhaCwgSSdtIGZhaXJseSBz
dXJlIHRoZSBib290IHdhcm5pbmcgaXMgcmVsYXRlZCB0byB0aGF0IG9ianRvb2wgd2FybmluZy4g
IEkganVzdA0KPiBwb3N0ZWQgYSBwYXRjaCBmb3IgdGhhdDoNCj4gDQo+IA0KPiBodHRwczovL2xv
cmUua2VybmVsLm9yZy8wYzgwMWFlMDE3ZWMwNzhjYWNkMzlmOGYwODk4ZmM3NzgwNTM1Zjg1LjE3
NA0KPiAzMDUzMzI1LmdpdC5qcG9pbWJvZUBrZXJuZWwub3JnDQo+IA0KPiBCdXQgYWxzbywgd2Ug
bmVlZCB0byBmaXggb2JqdG9vbCB0byBoYW5kbGUgdGhhdCB3YXJuaW5nIG1vcmUgZ3JhY2VmdWxs
eSBzbyBpdA0KPiBkb2Vzbid0IHRyaWdnZXIgdGhlIGJvb3QgZmFpbHVyZS4NCg0KVGhhbmsgIHlv
dSBmb3IgdGhlIGNoYW5nZS4NCldlIGNhbiBjb25maXJtIHRoYXQgdGhpcyBnZXRzIHJpZCBvZiB0
aGUgYm9vdCBmYWlsdXJlcy4gRG9lcyBpdCBsYW5kIGluIGxpbnV4LW5leHQgc29vbj8NCg0KUmVn
YXJkcw0KDQpDaGFpdGFueWENCg0KDQo+IA0KPiAtLQ0KPiBKb3NoDQo=
