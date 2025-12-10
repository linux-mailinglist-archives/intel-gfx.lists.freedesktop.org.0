Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC3DCB2134
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 07:31:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A211710E66B;
	Wed, 10 Dec 2025 06:31:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b2Am3Hhr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62EE210E66B;
 Wed, 10 Dec 2025 06:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765348265; x=1796884265;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=rJxZ1W9nVozdYfR5ditrg6tGP4c4BXm3NYvRigyyvuw=;
 b=b2Am3HhrAoEWHna9IlrmEv7lU3MIWfvFWoqBeYMrNi++IRVrdBSUJwMk
 Eazzf1Ew95WsjHBh8XPShUE7om6UxtACJP77j5AF4HfNaru2Anm2VLLZw
 FYDQYrNkbFnnDs3KB25BKZEabFW5wRG6L63xiduypmEEiHxQUKPhGAOuW
 8hpwR5dJGqUjUFKwgzYswl3GOmK2kTq9V/BoeZIFpOYHSVw4Si0W5ZS1b
 YdjQrpZDwpFKodyZ5iqkCm99g4almatfAh43bKttLyhuYIkXOJ3UnEBfz
 uTKwnGuzXChzLWHQkRtHfet29o8aYygng8qXNrhizTJTtm/i0Jdwpm0cv g==;
X-CSE-ConnectionGUID: 1LtjejhUS1ONNWOfzahFzQ==
X-CSE-MsgGUID: Wb6XKJvTTWqOijjjLNwqow==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="67362419"
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="67362419"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 22:31:05 -0800
X-CSE-ConnectionGUID: T6xP/VBgTqqe51dIoKhL0A==
X-CSE-MsgGUID: AKGgbsZKQ6+14F7ddvapxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="195687490"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 22:31:05 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 22:31:04 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 22:31:04 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.34) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 22:31:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ddlQEUdlad0RHS1IKjRkBngaDpf/HbvnRbyZLhHvbCjcj7LZcN0euQdPMkO8GtbOsqAimPaWW/tsnIJmbH26O47phIee8jU3lsMc6Ce3vk4TBE39X8KxoEC+gjjPzDsUKz/aNFA1GE2qMh2dPTO0VNGWX1Gq+88vneBrc5FnJvXOR4bFjGZiV9GXBIvdS+6YTESu6gYc8E+sdjKWEMnaf5H8ul0o2cuZZGix2/OJc0LcHwXddfAtIxDxnV+habLoCteO1tO8hmXWbN6ITdgEXOPp7+9VEDfQsai8SP7zNVzaPYQ/RnZgn/bDH9wstHKlaT90ZTRQeXY7y/hptbvbVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rJxZ1W9nVozdYfR5ditrg6tGP4c4BXm3NYvRigyyvuw=;
 b=IOsOusQ0G0OETGFdh2TogkAEmbGAlSnuUOxBAEbTKsb6asfqlHofUZImyJ+w9VpcQPkd7wti7j1yhn3chk+Di6H8/dDOaT2ql6Nexylo+Cz2QRbV+UaZTcw9fkvMFjlOLC4FUirV682OpNvJaDbMqrLfD8UHn2Mbz4bslBIQF1thos5W3Ho2tEsZyc6lgGp1KvgmhPv0EXE1HnqzmuPOsx4SaBO3c9AXJKHQYoy3gJPJtX9PidZTmv/JVaPTntPKv8WJjjhduu9uELiaRBRtBq4948XvPixE1xfo+xSMmkGRlSOFM3eaYNWmzrvfxf9D51M03h4UXlWvVZYFR1s6wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB6333.namprd11.prod.outlook.com (2603:10b6:8:b4::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9412.6; Wed, 10 Dec 2025 06:31:02 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 06:31:02 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 0/3] Selective Fetch and async flip
Thread-Topic: [PATCH v4 0/3] Selective Fetch and async flip
Thread-Index: AQHcZOyz59K73UXkKEW1bp/w1WYWh7UZqM2AgADIXoCAAAIWgA==
Date: Wed, 10 Dec 2025 06:31:02 +0000
Message-ID: <a7970dbeb7785e0f63cd50caae7c18e05384d9db.camel@intel.com>
References: <20251204070718.1090778-1-jouni.hogander@intel.com>
 <aThp0YZOjgWyA9DW@intel.com>
 <66f94d37118e7de638e3d0f5a016b7e496497ee3.camel@intel.com>
In-Reply-To: <66f94d37118e7de638e3d0f5a016b7e496497ee3.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB6333:EE_
x-ms-office365-filtering-correlation-id: e0e2378f-be3d-4227-24b6-08de37b5b0b1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?czdNNVZDU0JPWjdLV3ZuOXVvdDRoZUpoeWQwUy9EVU9IUFIyb3lLNEw2MVVj?=
 =?utf-8?B?NG0vUlphNzJ3UVYwNDRadXhINnhJQ2xNa001OG02clZRZUFXUjJCazBtck9m?=
 =?utf-8?B?Q0RSZjV4TnM3NzV6bDN6bnIydFd2NWdpVmlMSmdiUVo4SmJxa2pRMm1SQU84?=
 =?utf-8?B?bjFJQVRWWk8ycXhzTWlrUldXZWdpQjRtbG5HSnhIUVJRbzIyQm9hN2o1L3Ft?=
 =?utf-8?B?TVY0L0tabVJGRmozVzE0YVI4K3hkcTBzTVVBQytYK0IrOWVwTXBVWG5UYUhG?=
 =?utf-8?B?Vkpvb1JjVlVxY2RidFQwZEpMcStmdXhDMWpqU29YVlEyWmphSjVrQkdIY1dW?=
 =?utf-8?B?eVpGakFpajY1QkxoY2pLMy9mb21YTGdUYTBHaERkV1ZMOE00SDV0cGhaak5r?=
 =?utf-8?B?a2RPRUNNVHd3ZmpRVHFTUHYydmo2R0g1VXFyQnN4SDBWK28wWitBcXI2TTU5?=
 =?utf-8?B?TDhhbWlqdnA3UFp0Mks2cVpLN1NlRGplZW5aWFFiTC9mWHhmZzA2MGg0b3lY?=
 =?utf-8?B?dU1TaFlCNFYrUEp2NnpaT3NoME9uSGtRTU5KZ2VpYkNVK0M5V3lIWE9uWDFK?=
 =?utf-8?B?SEl4U2VOeCtkK1ZpR0JYbjBxQ0FGejR6VkQ2T0VvVFNmLytaU1pzNC9KSFQw?=
 =?utf-8?B?Z2JiVXNYL0dkdDBLTi9WQ1dXc3Q0eGNlT1RCcldTWHF1ZDZaaWhOSTI0Y20y?=
 =?utf-8?B?TjNGMGpHdWwveEEzWmo4bm54Skt4ME4raFJXbmNzMVp6MldJb2RBT0dNc1pZ?=
 =?utf-8?B?MXN2dUU3SmNiVHJoUmRlenBPL1kyNEYyRmVoVzFpTW5LbllpRUlabXNKVDRF?=
 =?utf-8?B?eStlYTZ5blFoOVltbFhrd3BMNTVJcVc3OEMzM3FpQ1dzRm1ocTE0ZnBaWk8v?=
 =?utf-8?B?cGJaRWUrS3N2UmJOWWN3ZkViQTdpNzlFYTFaa01KRHNzRVRtTWZ4OW5lTC9q?=
 =?utf-8?B?WWJ5SXFsNHBSSU14SkhNRDNvTlpjU0daT0tpQzdFMS9HV3BacjVKeGVXR0ha?=
 =?utf-8?B?WVJkb1ROdmxzWGR4cDJNREhsdko5ZzhKNGRjMm5aeDh3WEtuRG5LcDdXN2pQ?=
 =?utf-8?B?VU1MZVpWLy9SVEROVk9RQ1NrN1ZjQXFGSFp6ZUxCZGpYaFNhaU9WazJuWVIy?=
 =?utf-8?B?LzZsczZ3ZHdTUmczd1ZEcXg2WnRQU3ZSR3MwZjVlQkkycWxUb05Bakg5TThZ?=
 =?utf-8?B?TUkrQ1U1Y3BwRkpSZnRLMHBsY04vdXJQcFcrNGg4Z1RDU3ZiYmQ5VXBmckpk?=
 =?utf-8?B?cEdqMzc5MW90aUtPSTZuWWRPNVpCblA2Z0lLdnk5b2lSSCtrUEIrZG1Iemlj?=
 =?utf-8?B?TU51eEhqcEh1OFRSaFJIeCsrbVZxVG5nN3B5MmFQNFY3OFZ2MndxLzNDa1BV?=
 =?utf-8?B?VGc5Qzc1Y1NxeFdJbDhMU1diVm8zbEdpVDhpdTNzZ0F5c0VBZVVIRUVCZllF?=
 =?utf-8?B?NUxDWEhHcEpzcnJWRHVMMzM4OVlLeWx3NGhCbkIwRlkwSy9Ocys1UEVheFFa?=
 =?utf-8?B?dkpqYnB6ZEoyVnY0WTN3Yis2dGlRNkk3Nkt6T3pvMkRyR3ZnU1VreXVCWHc2?=
 =?utf-8?B?encrMU5aUEpuSGsydGtJdThWdC9oSlJuWUhVNDV5RGNPdzE5a2tDQWFyOUU1?=
 =?utf-8?B?Y2JPanIzd0pDUVlxY0dQY3BKQnJrbGdDUmhCR3ZQYU1ZMjNNVTdBc0lTdlFR?=
 =?utf-8?B?cUU0dE9xNmp3MHFzaW1rRVQ3N2ppZTZBMEVmaStENCtFM0dIbzZsUnJiWVFs?=
 =?utf-8?B?eXEyOGZKNlZhZU5LcVREczluODVUSS9PRU1tUG9NU0lsVC9pd0dzdEZqTk1K?=
 =?utf-8?B?eW1NVU9FS1dHa0FuQ3ZsQnRsUVJzUXdTa2tpR1NtVWpNbG5QTFAzY3ZoVjRw?=
 =?utf-8?B?bGhCSS9uSE5qb216SlR1Q2ROSm84NnN5SE5rL3JXVW5adkJ1MlAvQU5CejB4?=
 =?utf-8?B?MHE0YVY3QmI0UkdyMHZ3aGh4dU9lSVRTNWRZZXk2Qm1ZeUVTOUJES3UzaUpZ?=
 =?utf-8?B?b2t6Z0tlVDhNWWR4cWl2cXRsckUzNTFYUHY1QTR5SVFUSktPZnQwamdIS3Iz?=
 =?utf-8?Q?/Y6K6y?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MWp2eFlNbVdSa1JmZTcxZ2dqZ0hGTWoyMTBpaklMTDlTZG44ekFob2VsSy9k?=
 =?utf-8?B?eGg5VnlaR1lPaDhiTXl5US9Rc3kycFlrWjhFVGNrZlduVEV2elpKaW5nS1Np?=
 =?utf-8?B?VUJydVE4S0xZM0JmZDNXbDJrRGw0NVlsTmwrNWcvanRSd1V5b1FZOGxRcVpP?=
 =?utf-8?B?MmFEQ1gzVXhlNXRPR3Q0UjA1eTZQQVp4VzdVU3oxblFscjhjK1p5QmdRSGlF?=
 =?utf-8?B?NitHc28xUmtpQ1REakJFRnoxWUM4ZlZlK3RoNEpENHlhN2tLQXVQd2JNSUxo?=
 =?utf-8?B?NDAwWjc1QklVblY3RXUxRXFyOVpPc2xlUGJCcHNlUW82QXRqME5SMlhaMndW?=
 =?utf-8?B?c0V5U2JYV2Mrd0svTGFOSVNyVk05UUNUTDMwbFkxVks2TWgyQnhGVVZ2VkhB?=
 =?utf-8?B?T2Izeit3Vmt3MXNmd1czTnRUWHM4L3dCOWxIOTZCQUxYZ09UdnNYTWtyLzEx?=
 =?utf-8?B?bnRibFN5cVd6dm90OEhHcjV1ams0Qk93ZzJYMVhjNUNEWHcxZGUyVlF2VlZz?=
 =?utf-8?B?UGxTSTNZVG96dElVQ1p4WEVyeVBmMEh4RU1JQndLd3lOa3MzT01zdnFvNHNh?=
 =?utf-8?B?VWFJbUx0ejhFSE1jbDZBN0FaaURoeWZaR0tyOCt6WkhySUtibXBETkFtbEVo?=
 =?utf-8?B?NC9NUUJGZ2drbC8ydGVPbVZvKytWd05lcTlFaHl6WmhXdUh3TFRyVldvQm9n?=
 =?utf-8?B?ZDdBVVF2S3NNWk12eS9EMmVrcTN2ZDBHZER3TGduNEVxNWJZN3MzdVZUL0I5?=
 =?utf-8?B?eUl2bGpBTTBHZiswYlExaEhOUjBWZ1RLbmhFZ1p6NHV6MVBRQ3lvbUxBOFds?=
 =?utf-8?B?ZnFZcXdYK3dIUUxqQU9mQ2NrbUt2bk5BZGU5ZG5EQS9sakpON3ltdW40UmQr?=
 =?utf-8?B?VG56OW5OTkdZbTkwb2dPbE5ZbktaZlluMGROUnhQeE5xakhMUFIxUDBXaFpl?=
 =?utf-8?B?em1Yd0hNbGs3UnlJd2VwMUxZWGdBMUtTU0pkTWJ1R2c1OU8vSG9WTnc0aWtY?=
 =?utf-8?B?REc4SDNkVXR5ZFVsc0pteGxpbSt1U0Zzajh3REpGZE1EOFRoVUdBM1dzQlZn?=
 =?utf-8?B?WFFscEJzOTNXL1lkdG1lSUlSRnliYk9SbTRIS3VOdWFyMzR1NFExcXdGajA1?=
 =?utf-8?B?OVVvQUFSYkt2MmNRR0thNXlKUGlhYTcrbWNOTWdFQUlZUXlWTXVXQ3l2V3or?=
 =?utf-8?B?TklMRW01L3BQdDI2UU1XT3B4ZkkyejY0OGs0eXVVbXI1UlE2SjBHUWdsY0dh?=
 =?utf-8?B?a2gwa04wbVV6Tm5jcjBZdlZmMjgwRzd6aVZ5cUlqeUFkYjcrMk9hQVU2U3ky?=
 =?utf-8?B?TU1jbnpHNytDTnIvaG1qUHRyUG9RMFFJbFV1eENFNjZJVWFFN3JWa3d6T1hH?=
 =?utf-8?B?RTJpZGZQVFpqZkZsT0QzbVVkRkd3OUYwZ3ZKb2xVdkdtanlTeEpsc1BTY1Vv?=
 =?utf-8?B?WStZTkZOU09ETEEvbm9sSlBRazNmOEFZYTYrRXJTdnFKNzkwMk5ldkVZQ2Na?=
 =?utf-8?B?dkMvdzIvejZnd3RyK2dNM2NXSHg5MFh6b2htNUpmSnhKVlllR0YxcWh4YXRL?=
 =?utf-8?B?NzhYUlFVcUNoZzVYZ2JObE1XSEZNRlRlRzBsei9lMk94RWM0d1IyZmxtTjRR?=
 =?utf-8?B?ZGZrZS9ia1F6NDhjL28veExBYndjbGEzcnRWYTRTdkxtV1RqVkRnZ2g4YThs?=
 =?utf-8?B?WWw2bng5dURjMWxXb1MyU3ZJM2Q1TTVFWXF0djhSTEhBL0svR28wMTlWc09k?=
 =?utf-8?B?L1h1WTRSUnpqbGg5UmtaQTkwWWRYN0JLN3ZIaG9WaTFyalZTTTg2cERLTEls?=
 =?utf-8?B?cUFRUE9iVlZvRDVxZ3phQ01MOFIyckwwcFJOSUJXN1htaXdwS0lRSG03cG0r?=
 =?utf-8?B?Tjk4cEJpK0tBTjVzNXVNMjU3QnkzT0c0ZCtnMitheW0wZWZ5VDhNUURhTjYw?=
 =?utf-8?B?eWRpS0xhZjJFVDlMdEh1RUNVTUNtTnBkL1ZJRmRJQWlvQVFISjNMSWJUUFBu?=
 =?utf-8?B?dlpJM0lIbHp0THMxNDdJSW5uQkxSdWdZMjYyTXNRVG5JWEF1Z2d3dXB2Q3lG?=
 =?utf-8?B?Y0xCcnFoS0xoelpLMDNYQXNIUUd4eTdkRG91RHR5djV3L0IvNGdPYlo4K0hC?=
 =?utf-8?B?OThiWVVOZUJkaS9zY0RFMFZ5WFZGNWw3RTFtY1d3QktOb1hMMlBQaGR2d1Zx?=
 =?utf-8?B?Q0l4Rm5iRG9uZFpTZWRtYTMySkRva0NNM01QbjBPT3ArcTRnUjdkc1BRM0tG?=
 =?utf-8?B?VEhzR2VmYkM3ZENDN01oRHZnek5nPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <74FCF671052E3143B296F3549A6C90C6@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0e2378f-be3d-4227-24b6-08de37b5b0b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 06:31:02.5846 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 38BUJPwfc8NatJUVCAywG90rK9nFm/OawQ/CeNBAQce3K5Ncd+YyEdy6PRrQmpP0wZjenuEf87Gr+jE2dsBD6MaQ6iL4wPxQdMLEdClLEqA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6333
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

T24gV2VkLCAyMDI1LTEyLTEwIGF0IDA4OjIzICswMjAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIFR1ZSwgMjAyNS0xMi0wOSBhdCAyMDoyNiArMDIwMCwgVmlsbGUgU3lyasOkbMOkIHdy
b3RlOg0KPiA+IE9uIFRodSwgRGVjIDA0LCAyMDI1IGF0IDA5OjA3OjE1QU0gKzAyMDAsIEpvdW5p
IEjDtmdhbmRlciB3cm90ZToNCj4gPiA+IFRoaXMgcGF0Y2ggc2V0IGNvbnRhaW5zIGZpeGVzIGZv
ciBTZWxlY3RpdmUgRmV0Y2ggYXN5bmMgZmxpcA0KPiA+ID4gc2VxdWVuY2VzLiBPbiBhc3luYyBm
bGlwIHNlbGVjdGl2ZSBmZXRjaCBpcyBjaG9vc2luZyBmdWxsIGZyYW1lDQo+ID4gPiB1cGRhdGUu
IEFsc28gc3Vic2VxdWVudCBmbGlwL3VwZGF0ZSBpcyBzdGlsbCB1c2luZyBmdWxsIGZyYW1lDQo+
ID4gPiB1cGRhdGUNCj4gPiA+IHRvIGVuc3VyZSBwbGFuZSB3aXRoIHBlbmRpbmcgYXN5bmMgZmxp
cCBpcyBub3QgdGFrZW4gaW4gdG8NCj4gPiA+IHNlbGVjdGl2ZQ0KPiA+ID4gZmV0Y2gvdXBkYXRl
Lg0KPiA+ID4gDQo+ID4gPiB2NDoNCj4gPiA+IMKgIC0gcmV3b3JrIGlmLWVsc2UgaWYgdG8gaWYt
aWYNCj4gPiA+IMKgIC0gYWRkZWQgY29tbWVudCB1cGRhdGVkDQo+ID4gPiDCoCAtIGNoZWNrIGNy
dGNfc3RhdGUtPmFzeW5jX2ZsaXBfcGxhbmVzIGluDQo+ID4gPiDCoMKgwqAgcHNyMl9zZWxfZmV0
Y2hfcGlwZV9zdGF0ZV9zdXBwb3J0ZWQNCj4gPiA+IHYzOg0KPiA+ID4gwqAgLSByZWJhc2UNCj4g
PiA+IMKgIC0gZml4IG9sZF9jcnRjX3N0YXRlLT5waXBlX3NyY3N6X2Vhcmx5X3RwdA0KPiA+ID4g
wqAgLSBmaXggdXNpbmcgaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZQ0KPiA+ID4gdjI6
DQo+ID4gPiDCoCAtIGNoZWNrIGFsc28gY3J0Y19zdGF0ZS0+YXN5bmNfZmxpcF9wbGFuZXMgaW4N
Cj4gPiA+IMKgwqDCoCBwc3IyX3NlbF9mZXRjaF9wbGFuZV9zdGF0ZV9zdXBwb3J0ZWQNCj4gPiA+
IA0KPiA+ID4gSm91bmkgSMO2Z2FuZGVyICgzKToNCj4gPiA+IMKgIGRybS9pOTE1L3BzcjogU2V0
IHBsYW5lIGlkIGJpdCBpbiBjcnRjX3N0YXRlLT5hc3luY19mbGlwX3BsYW5lcw0KPiA+ID4gZm9y
DQo+ID4gPiDCoMKgwqAgUFNSDQo+ID4gPiDCoCBkcm0vaTkxNS9wc3I6IFBlcmZvcm0gZnVsbCBm
cmFtZSB1cGRhdGUgb24gYXN5bmMgZmxpcA0KPiA+ID4gwqAgZHJtL2k5MTUvcHNyOiBBbGxvdyBh
c3luYyBmbGlwIHdoZW4gU2VsZWN0aXZlIEZldGNoIGVuYWJsZWQNCj4gPiANCj4gPiBTZXJpZXMg
aXMNCj4gPiBSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gPiANCj4gPiBXaGVuIHRlc3RpbmcgdGhpcyBJIHNhdyB0aGF0IHdlIGdl
dCBzdHVjayBpbnRvIGZ1bGwgZnJhbWUgbW9kZQ0KPiA+IGFsbCB0aGUgdGltZS4gQnV0IHRoYXQg
c2VlbXMgdG8gYmUgYSBwcmUtZXhpc3RpbmcgaXNzdWVzIGNhdXNlZA0KPiA+IGJ5IHRoZSBicm9r
ZW4gc2VsZWN0aXZlIGZldGNoIGFyZWEgY2FsY3VsYXRpb24gY29kZS4gSSBzdXBwb3NlDQo+ID4g
bm93IHRoYXQgSSBoYXZlIGEgbGFwdG9wIHdpdGggYSBQU1IyIHBhbmVsIEkgbWlnaHQgaGF2ZSB0
byBkaWcgb3V0DQo+ID4gdGhhdCBicmFuY2ggb2YgbWluZSB3aGVyZSBJIGF0dGVtcHRlZCB0byBy
ZXdyaXRlIHRoZSB3aG9pbGUgdGhpbmcNCj4gPiBhbmQgZmlndXJlIG91dCB3aGF0IHdhcyB3cm9u
ZyB3aXRoIGl0Li4uDQo+ID4gDQo+IA0KPiBXaGF0IGlzIHRoZSBTVyBzZXR1cCB5b3UgYXJlIHVz
aW5nIGFuZCB3aGF0IGtpbmQgb2YgdGVzdGluZyB5b3UgYXJlDQo+IGRvaW5nPyBDb3VsZCBpdCBi
ZSByZWxhdGVkIHRvIGZyb250YnVmZmVyIHRyYWNraW5nPw0KDQpBbHNvIHdoYXQgaXMgdGhlIEhX
L3BsYXRmb3JtIHlvdSBhcmUgdXNpbmc/DQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiBC
UiwNCj4gDQo+IEpvdW5pIEjDtmdhbmRlcg0KPiANCj4gDQo+ID4gPiANCj4gPiA+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfMKgIDggLS0tLS0tLS0NCj4g
PiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZS5jwqDCoCB8IDEw
ICsrKysrKy0tLS0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuY8KgwqDCoMKgIHzCoCAzICsrLQ0KPiA+ID4gwqAzIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0
aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pDQo+ID4gPiANCj4gPiA+IC0tIA0KPiA+ID4gMi40My4w
DQo+ID4gDQo+IA0KDQo=
