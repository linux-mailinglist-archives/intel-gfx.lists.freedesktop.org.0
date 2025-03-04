Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0C2A4E28E
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 16:12:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93F1810E623;
	Tue,  4 Mar 2025 15:12:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ik8brRHU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B0AC10E616
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 15:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741101168; x=1772637168;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=9rezE4E/5XOxeDrmBfESGYMUrCpymZHr9NQAfx0X1u4=;
 b=ik8brRHUusTFFFrtn9DDcRYN3z6lxF5Mk5UJCgG6wbjjB0Elibb0GD+A
 z4BJ9xDwqmUNGNYTFLtsTaEYHoYZ5iapoW0ljAr0m1b8LwwkVB9RnxXaB
 7hrbRGpYBYsMlFBrUH8yHwpXbEiTvn0cqPd87J0BZF3uRut7oz2aRyNO4
 n8+l+/hpLJkjRirgNAtVlBlOB4t/fGgzAm/heWjidssaw8IZRYbcSHyQo
 wv4vLYD+RGCR4c7JKcI49/tMJwhShH+2nNIyb5nO7XLA4KFHng0Izh7GK
 rRUrrNEXAHhQPBqU/ySJVSLxKG9KiYPhq4yVJUAIdUthlZ+L30Q2uGt1V A==;
X-CSE-ConnectionGUID: iNxZ+iZBTVGFZ6KGQxbEuA==
X-CSE-MsgGUID: 91bClV8zREiGlQg2664DKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="53425906"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="53425906"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:12:48 -0800
X-CSE-ConnectionGUID: iu5pj9mFSJWGZdLQivrKcg==
X-CSE-MsgGUID: uAaxGcoLTRquPut5FtJBrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="119079341"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2025 07:12:47 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Mar 2025 07:12:46 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Mar 2025 07:12:46 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 07:12:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i7PF+TszesP5V4TZcGhVSVPUUR/0JEoOg59O87zyG2qNs1UX0u8KyB1o+w170qxvKzGpeU9vmAzNE+C+ecUooKsgr5rMmmACbfY7FO4lpVGbrnaobPSCC4tw8KKvOQzg34KYozycDc8vDHePoDy+UD88M81w6p/XFUr2cxtBYqnazADy0w131j+2zFkep+GviXm4hu1YfWUNp8ANZ1n05NbL3zVG2OVXnG3YBOsQFghmNUGTiIYLpB66XpGzg8VzFBWp0uWktdsAtRBCACU8G8aYByw9UJd3YmLt8vWoh2JL5VuXrDuBxuAjr+y7oAJm5mGtS891yjjsZyPngg20vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9rezE4E/5XOxeDrmBfESGYMUrCpymZHr9NQAfx0X1u4=;
 b=V4RGMSIP6puWKaEXnxseWobSZMqxTJs1sbGXYs23sM6mWLk4NekrTtuRo4K2WzphNbTN3tA/DHiAkhoE+BQz8Z/jd9om175YTTmUxjXthMiKsQrVzpMRs3kN7i9119SBVtnZA1zQy4dwynlZ36a/mIVNKAXqjWZyf8T8o1f1idjivzDrMafittRadqk4drkon9MBk6xbQQkFkYKoiC6QwNtcQ2IDfNVLiFw4n7x+lMObE9kyBwKVzMVU7a83Gy0Z9SmuyBaMFTU0A5eOUJSTZJcZPqCgxhBIBqP1KRXVd6RwtnYpIs9rhayrZiG/2h8atJRJngsEmQN6U7HiUqXVow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA1PR11MB7039.namprd11.prod.outlook.com (2603:10b6:806:2b5::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Tue, 4 Mar
 2025 15:12:37 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8511.015; Tue, 4 Mar 2025
 15:12:37 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 19/19] drm/i915: Relocate intel_bw_crtc_update()
Thread-Topic: [PATCH 19/19] drm/i915: Relocate intel_bw_crtc_update()
Thread-Index: AQHbgkwiRgPl/qriUUqy9BaRSdZMz7NjKx4A
Date: Tue, 4 Mar 2025 15:12:37 +0000
Message-ID: <dbb16dbd46afc1b24544da59401c99b38b240207.camel@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-20-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218211913.27867-20-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA1PR11MB7039:EE_
x-ms-office365-filtering-correlation-id: 975b95b3-1b2a-44ba-d117-08dd5b2f0003
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aHhlVnVYdFliaWFqVnJScVlMWFpJcHpmS3loRE1DQk1GODFKVDlQaVNHZEVB?=
 =?utf-8?B?NVdZM1FYWXV4RGtCOC9WOWtWa0RTb3grMHJoOXNOTWV4OGRJekhpV3liY3BW?=
 =?utf-8?B?WktUV3FnVGZmR3hTdUcySHlXd3JpWnhxcEZwSEF0QnRlQkNoMjk5b0ZmbVBE?=
 =?utf-8?B?eHVwcXFRMGozd3hib3pSZUJpQkc0NThuV2hlei9wbE1DbURDZEwzYTVxMDRC?=
 =?utf-8?B?WEc3Q0xTc0VPb05tRHB1ZE5NZExldmYrRTZsZkFkK3ZPRnJEdnlBREVBbDM4?=
 =?utf-8?B?MnNLMFlCZVkyMy9EaksybFE0MnlHaTBnK04xTjk4TGpiT3FPRTZqaHNlTGh1?=
 =?utf-8?B?aXRsdFQveHdZSEhoSmIxUFRldDcwZVZUc2g1VWJZL3JFZDdNN0dxVHdvZ21o?=
 =?utf-8?B?SzV2YlUyZ1BQQ1pLUHZvZzN0VjBFcXdmT21RaVFLUzRPSVpCL2VXMGpFQnN2?=
 =?utf-8?B?SmlpTWVwWHVMWDFNcTAvdUJ6Sjg1eExzcTFqQjFwOFIyNUF4NnpYemJudzhn?=
 =?utf-8?B?YSt3b1ptS0N1U2pLVE1GcHlhd2tyekt2ejJnTXl1bHAwcFBzd1MwdGtHZXJ1?=
 =?utf-8?B?Z3JaZFhSZ3FaZlZ6cFc0UnFUMTJhMEFZNVpiazl5ZlZIQ0tnTW5MR2JQMmJ1?=
 =?utf-8?B?NDgzakdtTVM5UGE5TFlRWm1SVUF5SkNWb1I2bC9iMERWUll0N1ZQMmVNRkds?=
 =?utf-8?B?VlFILytQcjZHNW9NcjdaRlVXV0Y3L3Azck9sdkxqZjFEdEYzOXgydTRXR3FW?=
 =?utf-8?B?NkN2cGlKUyswR2U5cW5YK3lORnk2b3JFT0VkL0o5cmlkclhPYW1ydnRJSU1F?=
 =?utf-8?B?dEM2RUt6dkJyL1VydkYycVdWdDVPQ3BnTjlmalVDclRneTVZSGV6OUJpdEx2?=
 =?utf-8?B?NmhjZ2V4R1RVT1I0SU52WUhLWWdSeG5yenVrejhtSTBOYTNHeG93YVJ6bVM2?=
 =?utf-8?B?RTl2TXVXZm5wMTc5ZUtMNUxaMkd4YWJlVEpkYkRHbzBhQStBKzNLV0JJWksy?=
 =?utf-8?B?N1U5SmxGMTd6UFF2RUpRT1VNamt2VDhkeVBBeVlQTmRTNmpSWXpsdCttMjUy?=
 =?utf-8?B?MjA4SE1OVm5DTVVZd0M5cmpZN2NKc1V1cVlURFQvSktPK0JLLzFLU2l0SHZ2?=
 =?utf-8?B?MGdXbkRMdnM5WmhQZnZXTjZlMSsydzVzVmQrNDhvUTR6OGxTMVR3NTNITmdh?=
 =?utf-8?B?UkdVdkNiVDhDcm9wUUxEYmJaTTdzd05BWW5mdXNzZjJieEFJY3hRRFF3QmU2?=
 =?utf-8?B?NXdrVzJJcDhkRjlXUzV4c2ZyT3JjOXgvR1dEQVZJUVJwcDhud3RBYWxpK0Iy?=
 =?utf-8?B?TmQwemNsZzJuQk52MTM5cGNSREZVWEprVjZYQUM2bCsxOE94b24ySUtGTlc5?=
 =?utf-8?B?TGpaVXhVd2xkeldqai9MTFhqRC9nQTVDNzJDMkhLVUJnVnlmNVE2YW8zNjJ0?=
 =?utf-8?B?Yi84ODhSNHdyRmIyMHBObmh4TDBJY0tuTHhtVFZGS0VkbXRjcHUzQjlnWkdT?=
 =?utf-8?B?Z3BYZVNBSGloZENhb2RjMVBuUnYxR2E4SUd5b1lHeHVJUUszOXE1dEhWZ0h5?=
 =?utf-8?B?MmQwTEVNMkpEdW1TL0pNVGhXRjV3WEhuNi9wV2d6NUFsbUIwaGp6Y2VhNmV1?=
 =?utf-8?B?UkxiQ2pBODBOWlNEM05oaXB2VzdnNGdTK3RUU0JvYzVKMndzVlZxN1pPcURN?=
 =?utf-8?B?UjRHWndLaWR3NEJWK3NEK1BKVGxiOVFzNC9rYzZxOE5YZ1Y3OG9URHZQMnVS?=
 =?utf-8?B?bngvVVlRYzZuVzJLWERMZUk0em1CTmhCU3FzcGJUMjRBd1Ivb3NHNW5CdFVE?=
 =?utf-8?B?Sk5iMGRYQ0UxNS9tMllBTjlQZnkxZWlyU0FQVnlpanRBVFVvTlR1VGxyQXF2?=
 =?utf-8?B?VzBraXROakdjcnpSeVlnZnVqQWlKWElEcGxkRE9lZmthN21UTFYwcDN3eG1R?=
 =?utf-8?Q?2xuu+xZpLG4dl4kQqwAWzFIAqk8tj7+W?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y0JmTkNYT0syWVJaQklQaWh1UnVWQ1FqKzFxOXVkYmtxNzZHZG5zRGF3bXls?=
 =?utf-8?B?d1F2ZEFvK3kyUHpMZDgyU3d3dWkza0FWTDA3N0FUSmRKK1FmcUxKTHJJVGZB?=
 =?utf-8?B?d3VHd2oyc2ZFRXJpWDZFekhTWVNIY1hucUljeVo0UEtHVnBkSktuT1lZVHNK?=
 =?utf-8?B?SFlJbHNtV044VC9ROGZWbGtRbEw3TThlOE1zai9oTE93Ky9VakdGanZ1TWJR?=
 =?utf-8?B?ME1DVUZkQ0VQM1pqTEVyOVNBSEZRQ0wrTWlIaUR0NnRDRmpTbkVQUXdwallz?=
 =?utf-8?B?MkgzZXRNWmJOWkR5S3pCRG02WVVkTlg2UWkvSlp2T3I0K2dOTFdVQllGTXRL?=
 =?utf-8?B?Rm5qZDJhSDFMMkZvTVlESktxTXJOYmRwTEZQcStFMFJueC9rZmZ4VzBWL1pQ?=
 =?utf-8?B?T2l0elRuMnRkb0VCdzdmb3hsNWhxRSs3amxmOFJLRUNDbkpIUTRuOVNuWXI5?=
 =?utf-8?B?NHlQYXdzcmZ4aWhORno2RkpHeXRnMkpWWWoyMDdGWFlGSTRvNVRyd2tlelZi?=
 =?utf-8?B?VjduM2FDZkdMTU15YnlFbjJaK3dDOEtCb3J5SjkrU2V0TjRWSCtJZkRFUG5y?=
 =?utf-8?B?QXNXdE5xb3NmSThBblo3NnNzOXc4WkZta0huVS9CSmFhdU80czVuT0JmdnlI?=
 =?utf-8?B?dTRjZlRMeDk0VzlmQ1JnV0h2QkVRYkxMbG5ubno0OTROeGdoMzducU9uMVNT?=
 =?utf-8?B?OENlcVhnc1RKcDJvZVkxeEJ0dlJhSVkvRGJ4WjhkcmJYZ24raUp3MEd1Y2hW?=
 =?utf-8?B?cVI4V0tXOE41WVA4ai9sOUhGTVJjbk1FK2JDMmZoa1JjYmJZZStCUU5DbWtJ?=
 =?utf-8?B?cjFSMkwzZGJWRllBOENDZ1dpL2MwTE5OQjV4em1QOW12OG9PaUN1RlNvVDVP?=
 =?utf-8?B?S1ZmK25Rd0ttem5sY0lKZWpPZTdjK0lqQktkb05TZHFCU0RUclgvVTFyaE5y?=
 =?utf-8?B?MFhjWTRmcTBXamNwM2YwdGJIdW9VMGcyamdUMXVWLzBzYnJaU1dqaTUyVU9j?=
 =?utf-8?B?aU9lVXdIVlpKd0d0RTR4cEh4d2lVdGNJdlFCMTFaZmw5RjQvejNscWk1Zng3?=
 =?utf-8?B?dHlVWW5JY0UrS0JhMWtkZmtFMzExSUJVQjRrWHVudmZjcWk5cmxhbWIveG8w?=
 =?utf-8?B?Ym9qRUxJdFJ3SG1CUVhWb3lYeTNab0VEcEZKSlFiU0liYXcvV3o5SXJRQm41?=
 =?utf-8?B?WEdQZ2pkY3Raa2dXeUZCdHgrcFBhUWxMSnFITWpXZ0dWbVRCVFliS2U3aHlV?=
 =?utf-8?B?M1g3Y3VTb01Ga1F2MEVDZU1EVU11bUk5TnZCeGl1bTVkYTlNc0RLUzRaTTVT?=
 =?utf-8?B?endCUmIwS1RKK2FPTWlGWC84eGtkYTBESlRUenpDeCtsYU1IL1hZQ1Y0QkFu?=
 =?utf-8?B?Tzh6WkIxbmhGcDRMN1V0Yi9rSXhncG9lcWlmNjBmWjg3S1h0NkdsVG9oNFh3?=
 =?utf-8?B?UWNBYkt2c1BvbkFydWpWQjdvSFU3MWxRem9EczcrUm5uWWROU1ZVbTU4cmNJ?=
 =?utf-8?B?cFBxbUppV2xlUy9idnAxYmJtV0EyL0c4R3VVVnh6RytWUXB1VnJhOTRHWGZs?=
 =?utf-8?B?RDQ2NGJVdE9RdURkMkFxeEE0YlVaREJ4VHNybEhqcTVYb2VJSzMvMnVzbkxC?=
 =?utf-8?B?Y21mdjZSdlpER1lRU1lQd0VsUVpIRFVqOWJhUTBkSFN2V2U3bTdldmdJMWNq?=
 =?utf-8?B?UU1OazNXS2lJZENTdldWUGRYS0prQ1B5YkNPQlByN3dFMzZFSG1mUXhPUldV?=
 =?utf-8?B?eGxVRzJuSmhCOXpxRmVZNDdiTnBzWk9BaFZMVHFQaDBnZDNmZzR4M1YvV25G?=
 =?utf-8?B?MUxBek13aUwrdjY0a1NHOGk2TUxqekp2YkJTT1RBaWs2M09qSDVXV0JxT1p4?=
 =?utf-8?B?Z2RHVS9jVmQ4MVVyRjVqNXAvRWVlMmZUYzNXTUh4RDJhN1E3M1drMTJKRHpQ?=
 =?utf-8?B?S2ZITWdFN0ROTHUrWlhVVG1HekJ3Sm82cHgzV1FBN0tUWGZSOXpjQmNwMXk0?=
 =?utf-8?B?cE4vMkt2VjRHNnNTaCtYMndyNkEvR2gxZ21wRzlaMUhCRkVidlMxNHR1a2tt?=
 =?utf-8?B?ODdRZUZmSHlOOGEzbWUxMmRFa2kxUGthbkM0dTA4eWxBa3pMelBVNnZLZUNu?=
 =?utf-8?B?ckRnc1FFcHRmTHJReG9PWVJwdHBialBjTkZaUEVDMFRTN3NaeE5UV1NVb2wz?=
 =?utf-8?Q?CHAYaSazTldPSAzhhdrVb4k=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <741A7E5FB9FECD4FA837907851C623BD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 975b95b3-1b2a-44ba-d117-08dd5b2f0003
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 15:12:37.7726 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zBTvi4L0RG6t0LmxYMd+Yh8/CG7DCgqdMZUZowuzdlGQalYgbK6qu6SJ01tGOfUks5ep0eszSbJn4bZxdoL7u0rEtDJ1V2TYpSLL8H49gvA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7039
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

T24gVHVlLCAyMDI1LTAyLTE4IGF0IDIzOjE5ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gaW50ZWxfYndfY3J0Y191cGRhdGUoKSBpcyBvbmx5IHVzZWQgYnkgdGhlIHJlYWRvdXQg
cGF0aCwgc28gcmVsb2NhdGUNCj4gdGhlIGZ1bmN0aW9uIG5leHQgaXRzIG9ubHkgY2FsbGVyLiBF
YXNpZXIgdG8gcmVhZCB0aGUgY29kZSB3aGVuIHJlbGF0ZWQNCj4gdGhpbmdzIGFyZSBuZWFyYnku
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2J3LmMgfCA0MiArKysrKysrKysrKystLS0tLS0tLS0tLS0tDQo+IMKgMSBmaWxlIGNoYW5n
ZWQsIDIxIGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQ0KPiANCg0KUmV2aWV3ZWQtYnk6
IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gaW5kZXggMmE2NjliODUz
NWUwLi5mYmE1ZmM2MDdjMzAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYncuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2J3LmMNCj4gQEAgLTgwNiwyNyArODA2LDYgQEAgc3RhdGljIGludCBpbnRlbF9id19jcnRj
X21pbl9jZGNsayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4g
wqAJcmV0dXJuIERJVl9ST1VORF9VUF9VTEwobXVsX3UzMl91MzIoaW50ZWxfYndfY3J0Y19kYXRh
X3JhdGUoY3J0Y19zdGF0ZSksIDEwKSwgNTEyKTsNCj4gwqB9DQo+IMKgDQo+IC1zdGF0aWMgdm9p
ZCBpbnRlbF9id19jcnRjX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYndfc3RhdGUgKmJ3X3N0YXRlLA0K
PiAtCQkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gLXsN
Cj4gLQlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY3J0
Y19zdGF0ZSk7DQo+IC0Jc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNy
dGNfc3RhdGUtPnVhcGkuY3J0Yyk7DQo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gLQ0KPiAtCWlmIChESVNQTEFZX1ZFUihkaXNw
bGF5KSA+PSAxMSkgew0KPiAtCQlid19zdGF0ZS0+ZGF0YV9yYXRlW2NydGMtPnBpcGVdID0NCj4g
LQkJCWludGVsX2J3X2NydGNfZGF0YV9yYXRlKGNydGNfc3RhdGUpOw0KPiAtCQlid19zdGF0ZS0+
bnVtX2FjdGl2ZV9wbGFuZXNbY3J0Yy0+cGlwZV0gPQ0KPiAtCQkJaW50ZWxfYndfY3J0Y19udW1f
YWN0aXZlX3BsYW5lcyhjcnRjX3N0YXRlKTsNCj4gLQl9DQo+IC0JYndfc3RhdGUtPmZvcmNlX2No
ZWNrX3FndiA9IHRydWU7DQo+IC0NCj4gLQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAicGlwZSAl
YyBkYXRhIHJhdGUgJXUgbnVtIGFjdGl2ZSBwbGFuZXMgJXVcbiIsDQo+IC0JCcKgwqDCoCBwaXBl
X25hbWUoY3J0Yy0+cGlwZSksDQo+IC0JCcKgwqDCoCBid19zdGF0ZS0+ZGF0YV9yYXRlW2NydGMt
PnBpcGVdLA0KPiAtCQnCoMKgwqAgYndfc3RhdGUtPm51bV9hY3RpdmVfcGxhbmVzW2NydGMtPnBp
cGVdKTsNCj4gLX0NCj4gLQ0KPiDCoHN0YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfYndfbnVtX2Fj
dGl2ZV9wbGFuZXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiDCoAkJCQkJ
wqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9id19zdGF0ZSAqYndfc3RhdGUpDQo+IMKg
ew0KPiBAQCAtMTQyNSw2ICsxNDA0LDI3IEBAIGludCBpbnRlbF9id19hdG9taWNfY2hlY2soc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+IMKgCXJldHVybiAwOw0KPiDCoH0NCj4g
wqANCj4gK3N0YXRpYyB2b2lkIGludGVsX2J3X2NydGNfdXBkYXRlKHN0cnVjdCBpbnRlbF9id19z
dGF0ZSAqYndfc3RhdGUsDQo+ICsJCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9f
aW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9
IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsNCj4gKwlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOw0KPiArDQo+ICsJaWYg
KERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDExKSB7DQo+ICsJCWJ3X3N0YXRlLT5kYXRhX3JhdGVb
Y3J0Yy0+cGlwZV0gPQ0KPiArCQkJaW50ZWxfYndfY3J0Y19kYXRhX3JhdGUoY3J0Y19zdGF0ZSk7
DQo+ICsJCWJ3X3N0YXRlLT5udW1fYWN0aXZlX3BsYW5lc1tjcnRjLT5waXBlXSA9DQo+ICsJCQlp
bnRlbF9id19jcnRjX251bV9hY3RpdmVfcGxhbmVzKGNydGNfc3RhdGUpOw0KPiArCX0NCj4gKwli
d19zdGF0ZS0+Zm9yY2VfY2hlY2tfcWd2ID0gdHJ1ZTsNCj4gKw0KPiArCWRybV9kYmdfa21zKCZp
OTE1LT5kcm0sICJwaXBlICVjIGRhdGEgcmF0ZSAldSBudW0gYWN0aXZlIHBsYW5lcyAldVxuIiwN
Cj4gKwkJwqDCoMKgIHBpcGVfbmFtZShjcnRjLT5waXBlKSwNCj4gKwkJwqDCoMKgIGJ3X3N0YXRl
LT5kYXRhX3JhdGVbY3J0Yy0+cGlwZV0sDQo+ICsJCcKgwqDCoCBid19zdGF0ZS0+bnVtX2FjdGl2
ZV9wbGFuZXNbY3J0Yy0+cGlwZV0pOw0KPiArfQ0KPiArDQo+IMKgdm9pZCBpbnRlbF9id191cGRh
dGVfaHdfc3RhdGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+IMKgew0KPiDCoAlz
dHJ1Y3QgaW50ZWxfYndfc3RhdGUgKmJ3X3N0YXRlID0NCg0K
