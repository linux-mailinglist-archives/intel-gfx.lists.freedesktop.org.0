Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0oaICmhYjWlB1QAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 05:34:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7258D12A519
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 05:34:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F59810E6D4;
	Thu, 12 Feb 2026 04:34:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YUuw1y+P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B18B10E6D4;
 Thu, 12 Feb 2026 04:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770870884; x=1802406884;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VtkONrrA/ikpffYdwaGhhfkTk3S0cfhpCDtQViys6q8=;
 b=YUuw1y+P5L+oXTSVZxLtdET02sRaTVz1oX375zAOYEThuIRDNC13MU27
 cWoEKq+haW/G3VTQXMnVhGaQyeOKlcEIerikvriK1kdG2t2L3tiZ7Ypcu
 LytHQkgMSQcBW99N6q71069W/senYCF6D8Yl95e/PrtILuvRhdB740/zz
 iG6aJo4Gk1hs7WP5Jj+vZ1hshee1ESLHfytxfRcm9rDnxu8vIO6xGXzkP
 aqM6eXGRymyb69LFr/slOkEn14+noZd1B2vn9XH1j48WwdL5kwh883i6q
 O2UOhgi9Ivdx7uHz1GzA+htsExyjGqIaivCvjgyvdkWorSOJLra9WHRJp A==;
X-CSE-ConnectionGUID: 0C8ukz1LQtWM0aWP+qnRWw==
X-CSE-MsgGUID: k5G10LdhQVqsBRwWtaw8jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="72080208"
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="72080208"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 20:34:44 -0800
X-CSE-ConnectionGUID: EA4YghBlRf2wTePT6u11JQ==
X-CSE-MsgGUID: NvoPaKYBQCqLOuT6exk6qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="212307052"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 20:34:44 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 20:34:43 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 11 Feb 2026 20:34:43 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.43) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 20:34:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S+oNPUI+o0h+KaXn7XU9aBLEl8ni3ZULnfh3WUxids+RoNf67F/wIzkV3ctzFWAUE1iR4uJMG2C1WiZz4kwkEY9BRuQiIp35t+T4RDpHPVaB6lt/Qt8nloa4x1EpcmXaEJ8fCnsSmkLXXiAHxFygKcGm9zSsuy3lwK+PaLEv8wgm42DwBF9nk+pBKhNkaSlyLbimJ7jQuGUVLhWc/xNpDIXwR0x+bgwM7zXxAmtstBhfHCviHHQQMtk/ZN6/JI7VpXesXucUf1hbDXiLnaXdzlQ/YIvftNNK4ExKAjze6IdmtRTzNjorfJhltEvFzP64TJpxgFqfeBLNc0goVl/Vzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VtkONrrA/ikpffYdwaGhhfkTk3S0cfhpCDtQViys6q8=;
 b=x072jAj3LFFhNC2v8n9RYF0h9VE5G9Dqspa0UHrarmGlBC+OHYe+3+zFbn0XfdFHQHAM3jcWy5tkMMuD+kcciLNk7uC0LqsKNf8rtafMhZyItFfroO/5ojNXpYxpwgteiADSSz8gfcqDTn6Z4Tpmek27vjpotqQOT1vBQhxq5irxpMWVD52GJidmDcmqL6HAuWIL6zesdxm4YQxJUlN78guFVYumffqxneVtf9LRn5HFIIoNLhuZupRC3imrWmVL11zGCgygJGWFcs6Lc06n17G+05j/nqgzWquFFanzsZl+AYKd9Okz+NFQwMJctlVnLGyEHv/1DQviRkSXVA8jPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by SN7PR11MB6995.namprd11.prod.outlook.com (2603:10b6:806:2ae::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Thu, 12 Feb
 2026 04:34:40 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::fdb2:e2ba:9504:5adc]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::fdb2:e2ba:9504:5adc%7]) with mapi id 15.20.9587.013; Thu, 12 Feb 2026
 04:34:40 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kahola,
 Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/display/lt_phy_regs: Add SoC/OS turnaround
 time
Thread-Topic: [PATCH 2/2] drm/i915/display/lt_phy_regs: Add SoC/OS turnaround
 time
Thread-Index: AQHcm9ZKQLqjmCtydkOQTBDyIVrgELV+eZmQ
Date: Thu, 12 Feb 2026 04:34:40 +0000
Message-ID: <IA3PR11MB8937C682DE8483B37787FF44E360A@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20260212-timeout-v1-0-591fa766e8a1@intel.com>
 <20260212-timeout-v1-2-591fa766e8a1@intel.com>
In-Reply-To: <20260212-timeout-v1-2-591fa766e8a1@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|SN7PR11MB6995:EE_
x-ms-office365-filtering-correlation-id: 681c11a8-b7f6-42b1-cfdc-08de69f00934
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?dUd6dnJuREtUdy9ZcC8rRkJORVlwS3p6Mjg2M1dlSFFERlVTWGJZNW5ST1Nq?=
 =?utf-8?B?cDFmZTQyN1kvT3Q2bjE1ejl6U3NCWWhsUzB2M1FrMjFxY2tZNUJwRGxLTTZE?=
 =?utf-8?B?ZjNuc0UxK2wveGtFdWV2STFEMkZLUk9ES3ZiN1NxOGwxNm9iMFpMS0pOUk0w?=
 =?utf-8?B?dmIrU3E4TnFBcExwWklHeFpVanBGSjlxak1BcUZ2UEkrM2RXc2VWRmpvTE5S?=
 =?utf-8?B?SStXd0JORW9xZHc5Tm40QUl5ZkxXeTRlYWhMR29wdXVXY0puU005SFFBUEhX?=
 =?utf-8?B?SFRjTkl4eWhJYyt4ZU4yL21XenFoZ1FvL0ZBTGhUaGszKzRYYmIvek4vOU9z?=
 =?utf-8?B?UkhmTWJLVzhYOUd0NGgzZTUzekVpSWt1Tjd1Z096K2xpMVhtYTFHd3JXVUVD?=
 =?utf-8?B?Q1NIdHJCK1ZnVWhiTkF3VWxDUTZKKzNyMXovNGZMWS9UODc1Nm1rZTZvVlFB?=
 =?utf-8?B?UEh6RWF6R3JmZVljVVg5WS9jWkFZRDRnZTJBeXB5RERKN01rSXByTnlUZkpl?=
 =?utf-8?B?TjVUamZ3alhRQ1dlWWJHd1RrY3MrRENNc052MTdNdXV5VkRLcjFwK2RlNGlR?=
 =?utf-8?B?L1lWbDkvQy8yekNmdGxzUldnNkVZM1BWVE12WmM5NWl2U2hxSi9CRVRYZXI1?=
 =?utf-8?B?STRtL05tSFQ3N1JkNG1xUHhzaVh6NENJNjBNeVNBZ1llUnZGV29xNkdsKyt4?=
 =?utf-8?B?dUxCRlBBVHZ1ekVWN0c4NCtRQzhSbkdrdGlHR25sRE5hT3lOQTlGYnZ6L1hP?=
 =?utf-8?B?azR6K2lHY2x3UXl6bTdYNitMdTdabWUzbmZNREU5U0dSQlArbWd3NGlyQkRh?=
 =?utf-8?B?bU1tdTM1WkY4eEVYZUgvT2NVb24vOFg5QVBBcTRGZ3hPR0RkMFZzMmxyUlVI?=
 =?utf-8?B?c2dBdEMwNWdFN2pQdW5xM29DcmZHeHlZQzljaitRcGFxOUw3dGJKM0VBRmJP?=
 =?utf-8?B?ZzVxTWg3cXprSlZ2c1VZYkhzakN0WThjSXJFMmQ5Z1AyR01hcncvN1I5YWl0?=
 =?utf-8?B?eWRXVEpwNkhHYlozOTdWektNdmcrZ1pSWm8ydUJ0UjRYbkF5L1RRUFRUeklD?=
 =?utf-8?B?QTRkam5wdnlHS2dsUko5VGI2d0cwK1oxQmVSZmRRWGREWjdhT3hSTjR0eEtZ?=
 =?utf-8?B?cG1xeHZNSmNaVHlYR0Z6Q2tKWFhlQUFZbzlFemhyOVZ1Ky85OUtnakJaTjla?=
 =?utf-8?B?bzhOb0M3TVU2c1hka015QUd1Z1hNZkQrbGxRclVsYnp0aEtFcEs3N3M1NHNk?=
 =?utf-8?B?TDlQbVcvWEVsVGdOeTlvaFlaQ0hwVDlGTDZtVDJJQWoreDZQSEYyYVFZRTlH?=
 =?utf-8?B?dEhLdkdUTDZyV1UzY1JvV3NGdERVQnRNbzZhMUhPcmowdTd0VnFnYkNDMTZS?=
 =?utf-8?B?bzRMVHc4cFRoc1QrZ0h5N012ZjJGM3hROXVwSjhTMzgxQWY4NkJDbklLZU41?=
 =?utf-8?B?Z3VYc2pGM0hYVlB1QUE2ZDMvMUd1OXl0bVU0alNzK05YeE5rU0hFRVAzN2xv?=
 =?utf-8?B?c3lXVHB4UGRYcjBtTG9paDZLR1JpUE1OY1NpMU1XckpxbFM0YWtaMU5ScFNu?=
 =?utf-8?B?SzEyc1ZsV2NENFZQdXpmMjN0VEcydFlLL05ldFMzZGloekVKb3J3TWJaZFlL?=
 =?utf-8?B?alVTUE5iMS9FK096MnBnQ1lvWDZoKzNZMHVYTlhJcEZCVVk2U3ZWZUhnS3cz?=
 =?utf-8?B?ZzFja0k4QzJGS3NYY05haUk3T0lxQjhaTDJ6R0ZSV1ZvejhHRFBnZXh5eG1I?=
 =?utf-8?B?TitWMExWQU02dVowSXVlN0dSQS9yRkdsR0pWVjdCNHNCQ3ZJOWp5allXWFAx?=
 =?utf-8?B?aVJ5SDVHb1J6Z29aSG5NblJENlRwNCtZY2RxSkNQUHJwS2RJNmRMdEJvL2Q0?=
 =?utf-8?B?bkQ5YlhOb2xBQzNaek1HbUhqdEJVaHY2VlNUcFFrbmY5SzIvU1FFZnRqa1Rr?=
 =?utf-8?B?cE15enlDUVBIZk0rYW1SMFpJNmhOWGhwNzd0WmZIeWpBY3B0TjlXQnNtTUpB?=
 =?utf-8?B?ZVBzSk5ObnNWS3Q3dEYxWHBWMXFYWGZXWUs1ZkhzNFAvMHFhU282Q2FLUUIy?=
 =?utf-8?B?Tmg1NGZjNWtGZDBiQnN0dEhYZmxHVVhRR3RtTzY1c1F2U3pKSE9WQWl3MjhW?=
 =?utf-8?B?UWlxT2x5eEtNMDUxcHlBRjBGQ2NXZW5vcFFlUVg0UlozZkIzSnhIODNCeDBO?=
 =?utf-8?Q?K7vlnARkmhlInTFgQOsjgiw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TUJaRjVScThPYmZRSHN6d1NHMzk4cFhGZ21lSVpBVGR6eDdIdEhUTjhqREVN?=
 =?utf-8?B?QUZJTWtwZ2ZkVmxaWjNLemhWMC9sTDVidU83QUNBWkswTzM4Y1NTb2RzNlBC?=
 =?utf-8?B?dko3clVpUWhsVmZxejU0MW13Qi9NS0xFUUpvZkRHLzJpZHYzVStHY0syRGhG?=
 =?utf-8?B?cGM4a3B0aU5zT2JkVVlrUmVJZC9wK1Q1Nnp2bTg3QUJVYXMvc1BFWGxjNXNO?=
 =?utf-8?B?NGtnNUF0azhrbGVERCthZHJmWEx4NElkWmdtd3I0SUpBWHZPL1RtZktQbnBZ?=
 =?utf-8?B?cXgvV1VKUzdFQXgzL05mMjRwOUFuQWxmQnIyS1VCY1BKRFcxbEd4RW1tWU95?=
 =?utf-8?B?bXZBcjZJUWRJTkw4b25ob3p5UDhlb0cxUVBnOVk3a1h6U1lsUkVyQWlpLzBF?=
 =?utf-8?B?UHQ3K1VVMmxQelRkWUE3SXlWYW9XcUMxUTdyM29jcHM2aDlJUVY1QWo0dG1v?=
 =?utf-8?B?T1NxbnNyY3JGSG54aERQSkV4RythUTYzU2Z5QUJWNDBkdXpkYzAzY0Y3ajRT?=
 =?utf-8?B?dUEwbWV5Nk1PbjRDNHM3QnNVdkNKZndBUXc3SjVVSWtHMlRtY2xSUEcyRzdJ?=
 =?utf-8?B?NlFuVnVMbzg1QWhuNHB1T0s3Rk1JOVVsRFRIQnlSeVZRWDYwSlRDZFRkQk5j?=
 =?utf-8?B?NDVhR0c0dVVLTG5hSk56UEFOaUJPa1dsSUhuWGJkcHFYN1V0M3JoRTcrdTBk?=
 =?utf-8?B?d3VSVno4aS94cGRXK2M2YUpiOFVoVnZjVGlsMW4xS1JtdVJpZDhvRTIycEJh?=
 =?utf-8?B?ZU1YYnA1ZHVhcENNQSt3ZjBCbE9VQjNxbG52R0hDRERlY2gzNFNwS1RCMGNX?=
 =?utf-8?B?dlZTeWN4d3lJdnNPaDMzUFVqclJudldkQnZRWmlQbWZENjJza1hkSndUWHlV?=
 =?utf-8?B?aUg0eldFcWdGQS8zSU9obnZjN2wwaHBFQ3NSc3BxT0dGL21xSHp0NkpYSEV3?=
 =?utf-8?B?M2t6KzhWV2NDUDJRc2VLb0RtWXBWTzY3cElsL2E0djRYa3Q3bU1iSUZiSEVX?=
 =?utf-8?B?eXhiWkxaNFhXNjJsSC83N3BGcmticUhYc3VQN25aNGdkV2J4VXo0MXFCTERz?=
 =?utf-8?B?ZTZ6RG5uZ2J6RVREeEk2ZEJwWnhaYUZ6Y0FSYlhlOFRsa0tSYmVYY1lIbVhF?=
 =?utf-8?B?cE5WN2pKSWUwZU95U2FnSlNVMlFTY0FqM0JTb2wrNFp3NHdLTnlySHVZUnNw?=
 =?utf-8?B?Z0VZZVNtaGxHSnNmSURMNm5NbUh6YitsQzZ2a3VPbFA5T3BldmswYi9RVkJM?=
 =?utf-8?B?aCtha0wrWVdRSllDYzMzL1crYkVOTGNLOUs5UDlSMEcxN1R3R2NiclBlSDg3?=
 =?utf-8?B?cXBNSkdqNTd3WEI4ZXFtN3ZDT3E1UVlkUVVjVWR6V1AwK1g5Tm1kTmJjdXFX?=
 =?utf-8?B?NVZFcS9aWjdTeGZ2V0Noc2E5LzFGM2xSR1BzVVdsZkxoTmM1MWZuVGZ0cDJr?=
 =?utf-8?B?Q3VoYkE5WnpNUm1JT1I5YWJiNHJ3QmV2SHhrUXBIZEF6ZFJYd2RSZXVDb1FB?=
 =?utf-8?B?ekVGTjR6YTlJTU9lQkFIYnRLWFlqUGs3RU83M3gyVHpRckxMNU5MWHhPK1BY?=
 =?utf-8?B?Z1hIOHQ2STA1OEhiVWZYWHlnR243d2x3MnJ1aEp4VHRuWGl6SU5weVFoZktp?=
 =?utf-8?B?Z0dQSGRselFaMVdMdElWeEhFb3F3OUdoSXdRVkNtRFVjY3VObi9PeGJFeHY3?=
 =?utf-8?B?ZFFCRHdUVDJSNUFNcURmcUpINXBCSHNEUEJUK2YvbXFBZnBxU1lnZjNMMjNM?=
 =?utf-8?B?a2cvczRZU1ZmbGFuN1ZJS3VqTE5aRm1ucGZDRDBRNk1KRUlwUkpka3ZIek4r?=
 =?utf-8?B?MW5JdGFOUmRMMVh0ajB3SW9iQzBDdWFvM0tFcFpUQUY3Y1NLQWpaMEcrQnJn?=
 =?utf-8?B?TVVQenNCMlRuayswTm92dER2OTdTcjRiYjBzSFd5aGZIbFVpL1BJNGVMa1Vx?=
 =?utf-8?B?YzNxdm1GWjIzQ1Y2R1lyVjJIQ0hJRFRrSFNCeGc0ek55THJjb1hQR0h3WEpW?=
 =?utf-8?B?UHpVaHBqck5LaktWNEYyZSs1YlRDQ3JmSERYNGYrSWd1RnhkU1NhV3ZJb2U1?=
 =?utf-8?B?dkg5a0ZCemVXS3M0eTBxdmtINzdrYVd5ZU9EZzVwVU5Zcnp2NkpWcDJ1c2Mv?=
 =?utf-8?B?UG45YnJCMjg5N3ZqK2VSTy95a21BR0ZPdGEzOGVnYndhQW5PcFBPbnROQUt1?=
 =?utf-8?B?c2JHSDNUM1pxRG54eHlxZmU4eFNJcWR6TWJwa1VIL00zYkJOMTZTcUtEY0w0?=
 =?utf-8?B?UUxNaUFFWm14YmtGVm13d3k5ZmM1MnhQdkJIYktTdnp3WGtxdnV0OHVSRXk4?=
 =?utf-8?B?UzIvRkVvZlRjSXZoeUJVMzN6aXJXZGhOZ1hlWG9MZmJFMyt3enhxUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 681c11a8-b7f6-42b1-cfdc-08de69f00934
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2026 04:34:40.0630 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gcz/w/EA7GAnRX7WFKLIsvNfYv1uFkDdsUq1BoN8M8wbKMbtLU7dZ1kU2sbZbSm6bi/uz87P/nNsDBJc1EVwuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6995
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,IA3PR11MB8937.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7258D12A519
X-Rspamd-Action: no action

DQo+IFN1YmplY3Q6IFtQQVRDSCAyLzJdIGRybS9pOTE1L2Rpc3BsYXkvbHRfcGh5X3JlZ3M6IEFk
ZCBTb0MvT1MgdHVybmFyb3VuZA0KPiB0aW1lDQoNClNhbWUgY29tbWVudCBhcyB0aGUgZmlyc3Qg
cGF0Y2ggZHJvcCBkaXNwbGF5LCBtYWtlIGl0IGx0cGh5IG9yIGtlZXAgaXQgbHRfcGh5X3JlZ3Mg
dGhhdA0KSXMgb2theSBlaXRoZXIgd2F5DQoNCj4gDQo+IE9uIHRvcCB0aGUgdGltZW91dHMgbWVu
dGlvbmVkIGluIHRoZSBzcGVjIHdoaWNoIGluY2x1ZGVzIG9ubHkgdGhlIFBIWQ0KPiB0aW1lb3V0
cyBpbmNsdWRlIHRoZSBTb0MgYW5kIHRoZSBPUyB0dXJuYXJvdW5kIHRpbWUuDQoNClNhbWUgaGVy
ZSB5b3UgY2FuIG1lbnRpb24gYmFzZWQgb24gd2hhdCB3ZSBpbmNyZWFzZWQgdGhlIHRpbWUuDQoN
CldpdGggdGhlc2UgZml4ZWQgTEdUTSwNClJldmlld2VkLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJh
ai5rYW5kcGFsQGludGVsLmNvbT4NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQXJ1biBSIE11cnRo
eSA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9sdF9waHlfcmVncy5oIHwgOCArKysrLS0tLQ0KPiAgMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeV9yZWdzLmgNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeV9yZWdzLmgNCj4gaW5kZXgN
Cj4gMzdlNDZmYjlhYmRlNDE1NmViZDdhZDFlYjZjYmJjMTJlNzAyNmIyMy4uZmY2ZDc4MjlkYmI5
YzUwYjIwMDFkMDcNCj4gOWI0MzViODk0ZmFmOTY1OWUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5X3JlZ3MuaA0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeV9yZWdzLmgNCj4gQEAgLTYsMTIgKzYs
MTIgQEANCj4gICNpZm5kZWYgX19JTlRFTF9MVF9QSFlfUkVHU19IX18NCj4gICNkZWZpbmUgX19J
TlRFTF9MVF9QSFlfUkVHU19IX18NCj4gDQo+IC0jZGVmaW5lIFhFM1BMUERfTVNHQlVTX1RJTUVP
VVRfRkFTVF9VUwk1MDANCj4gKyNkZWZpbmUgWEUzUExQRF9NU0dCVVNfVElNRU9VVF9GQVNUX1VT
CQk1MDANCj4gICNkZWZpbmUgWEUzUExQRF9NQUNDTEtfVFVSTk9OX0xBVEVOQ1lfTVMJMg0KPiAt
I2RlZmluZSBYRTNQTFBEX01BQ0NMS19UVVJOT0ZGX0xBVEVOQ1lfVVMJMQ0KPiArI2RlZmluZSBY
RTNQTFBEX01BQ0NMS19UVVJOT0ZGX0xBVEVOQ1lfVVMJMTANCj4gICNkZWZpbmUgWEUzUExQRF9S
QVRFX0NBTElCX0RPTkVfTEFURU5DWV9NUwkxDQo+IC0jZGVmaW5lIFhFM1BMUERfUkVTRVRfU1RB
UlRfTEFURU5DWV9VUwkxMA0KPiAtI2RlZmluZSBYRTNQTFBEX1BXUkROX1RPX1JEWV9MQVRFTkNZ
X1VTCTQNCj4gKyNkZWZpbmUgWEUzUExQRF9SRVNFVF9TVEFSVF9MQVRFTkNZX1VTCQkxMA0KPiAr
I2RlZmluZSBYRTNQTFBEX1BXUkROX1RPX1JEWV9MQVRFTkNZX1VTCQkxMA0KPiAgI2RlZmluZSBY
RTNQTFBEX1JFU0VUX0VORF9MQVRFTkNZX01TCQkyDQo+IA0KPiAgLyogTFQgUGh5IE1BQyBSZWdp
c3RlciAqLw0KPiANCj4gLS0NCj4gMi4yNS4xDQoNCg==
