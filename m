Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 869A5962443
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 12:02:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ABE210E4FA;
	Wed, 28 Aug 2024 10:02:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iOCoAPpq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D35E010E4F9;
 Wed, 28 Aug 2024 10:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724839373; x=1756375373;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=C3A0lnZ80hdUt/xYE2XRppwFaJ6z6xd5uy34M1UCMbA=;
 b=iOCoAPpq/GWHf8SRDpo6KG4jRaCiPRLKzLFcO98EFInwuXX+wbN0CLKa
 wnWROsuqd8QSY3zKRoaL5d0TDnHQkX/xSD99hMFtSB3KNbbzB44cHgHkF
 uQpe64sHVJzdOQfXLunD1/ygh7IoKw6gA8uGh/0MCoKzfESJoSPT7jli7
 P1/MeP4KK6E2g/nAz85DLgWOGwQUb8urfFH6NS6HK7eWsA6nNQiGYVfqE
 Kvk7QapPmvnGDkSHHguWMYic0oucGQC5YFGLdQYi4iE3ZOa5JVLqgUgUX
 eLhFow4dTYspUrpC8mEkNnSCP9jsXKAUtiFXvM1/tO8pjATnnO5ZohDZj A==;
X-CSE-ConnectionGUID: MSUx1YOWSY6aR3foD6ppDw==
X-CSE-MsgGUID: OVoOS0HFQHOwxOYaRQJesw==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="23540514"
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="23540514"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 03:02:52 -0700
X-CSE-ConnectionGUID: 8mvZdqaWQWqmxUiHGvxAew==
X-CSE-MsgGUID: 2UgJSpXJT6KNahUus9MkDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="93960204"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 03:02:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 03:02:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 03:02:51 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 03:02:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CACSCtEMz4JyA2SVwHb/lJPYOpOKBWttEtjvyG3i2z3wxZXkaEe/NywTEu2ZGlF8D97XiOwS+lQmvIUYRYF0Rwtbe2SfXpXLkciq34FNG1ZwLS1NUScUepolveYynfcTBuiUqUdleZwaTTpPgFNgdq4s3FsLCa3STPeh1jh4BfqTPS8pTriNoombirwwSpxE81YL5VUAUH+cV9q8A5NVXIZb3FzKSlfsbt+1DI8XW5oKQ3eG30elZPJs7enY2Cq1TJDn9zpLoGAkSgcea78OHXRYWcvy5d/SPvKcjqz8F6Wk693HTgQKOqjI876PQraITUOMdCwwjvnTWfK9tEEBzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C3A0lnZ80hdUt/xYE2XRppwFaJ6z6xd5uy34M1UCMbA=;
 b=ZaQhl9JDDBVq0H3VZrFdISbD/EsNjm0QG3Y+Hf2VWwzIbJ6nryGJfFO8t0LLhCJi0heT7kWJ12qWIhZ7BO3wrnm7Jh7gJV5a29k81UpsmTz3YVqonO2mTIWSOJJGm8FuDDz2hFbxFwBdSokiQCwxLYAGRf/wjOs5hvRBvuFht4AN0qgjFdKmFOTo/A/jdNZyfmLMgcvLi1nRJcATyL7sa3nWuN9t0trHVZk4kx1oYhzWq7grlcf4MLonz9kmULZd7ayYyJFllkVkmrK6CJzqjJsl0Vg2cUS+BdnpUlveMDVgJQ5M7ZD1SlK7rIaWwQizLEZDaBZ1+mTjIlUVU+Laug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SJ1PR11MB6082.namprd11.prod.outlook.com (2603:10b6:a03:48b::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Wed, 28 Aug
 2024 10:02:49 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.7897.027; Wed, 28 Aug 2024
 10:02:49 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCHv2] drm/i915/display: BMG supports UHBR13.5
Thread-Topic: [PATCHv2] drm/i915/display: BMG supports UHBR13.5
Thread-Index: AQHa+Foyg6UyYkCZOku0UEwDzqQVDrI8ciUA
Date: Wed, 28 Aug 2024 10:02:49 +0000
Message-ID: <88c9b678401c4151881fb747b3414d312254dfc4.camel@intel.com>
References: <20240827081205.136569-1-arun.r.murthy@intel.com>
In-Reply-To: <20240827081205.136569-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SJ1PR11MB6082:EE_
x-ms-office365-filtering-correlation-id: f0154e39-4b53-4b3f-4739-08dcc74892b9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VmV1eFJHWHlOYnV4ZytVZk9TTDhIekQ0RlhNN3RMNUxBc3duWTJzaUlXL0k4?=
 =?utf-8?B?cHZuYWpvLzI2WDVHMDM0T3hTdzJOMXRueGJ4N0hQN0dYd0NTZXExM3NNWk03?=
 =?utf-8?B?S1FISUN6KzBxOXRXVDI4K2lDRmRTMm5LUlNtZ1lMMEQ5UmdybG01TzJZaVp4?=
 =?utf-8?B?WUVoYUF4cmswQytDMS9ZZWpObEZTMEViMXBSWmJXL0YwYVdKZ2NVUHpkcEtO?=
 =?utf-8?B?UGk0YnpZTU1GNmxROFMzdERqK3FPdzhtZ05tcGxTcCtLdkNER3lEQVpqL25m?=
 =?utf-8?B?Q3c5bjRmWE1KMkpJdGo3d0wraXc1VlBXTGtVR2tVVjBaS2FlbHBYR0N1Rm50?=
 =?utf-8?B?OVRyVFJJcU9FdlZ6Vlk5Y005Qjl5OGhmeG16SXRJbm9FdE5zVXpwQ0RDeEFE?=
 =?utf-8?B?NkZhWnRBUGZZQU9HSkxmSTVCKytpSGNHUTI1K2k3Y0lWc0pDa3hIN0xoOTBS?=
 =?utf-8?B?Mld6UWFqNTd2cHVLc3o4YkVQSjRKNFo2Z21BNVlwdU9yU2diaWtaMUNuNlFi?=
 =?utf-8?B?UjRUR1RMVVZVU0ovcmUrMUtETTNXTVBXYXp6TmlyNlNMa2lZWE5MalBkTmdQ?=
 =?utf-8?B?YlNTMEdldkdNU05HWjlPcDdnQ2ZNMUN3RmY5Q3VOZjJPY0FYcTB1ZDN5MFUr?=
 =?utf-8?B?SVZKZ1ROVEZKelJLTExpTjRCeS9zRTAzQkRmcXlldUF0d0FsWnJxbERBa2F0?=
 =?utf-8?B?d251QTA0b015bEVGbnFPUW5VOVJJTHJyVExyN1pDZnlQcUJVQ0hDWTNtZXRt?=
 =?utf-8?B?WTc0RWZsZ25EbHZoSkRlWnlUMWR4Y2dTc1ZpbmNHcjB2eUcvWExsSzE1cHlk?=
 =?utf-8?B?SVBOb2pndDU1VjhjcVFkT21LaTBhVXlRS0Z6MzFOZkMrQStvNlJKMjkwL0tV?=
 =?utf-8?B?OXBoeDkxNy9NV1BLOVR0amVOck1QZlMzdFlwaDF6MTVuZU5XTFF3ZzZDUzl3?=
 =?utf-8?B?YUFpQlR3cmhjeDJETWhZcVUrdm5oS1d4RUV6MzNQempuQTgxSnJNZzJCZ0Rz?=
 =?utf-8?B?RnRQTnkyMzhHZGkzMis2emdxVW9IcW1Ea2NRNDdVWUI3TWtKVUdOb2szTmFl?=
 =?utf-8?B?a1hwWVB6QVNFZ0QveVZ5SzZJTmpla0UzN2R1eE9yTEYzOFJ2YW9ZbHM1MXZz?=
 =?utf-8?B?cytBUWdPalZ4MGg4OHV1Mkd1Yk9FQytPVmFCTm1KN0k2Yy9xRzhXdkxHQTJI?=
 =?utf-8?B?cDJkb1U2MFFUMVdsakJuZW96eHExOHdVYnhZQXJtNjFqQnlZQlA1ZGdhaXRX?=
 =?utf-8?B?K3lXQUg3T2MwcmxrUzU2ZUhmZXRxdzdOTnRsRFNCbWQyMVNIK1o5d3l3LzhE?=
 =?utf-8?B?N01kc2c0OXhqSllMbzJuN3VVR1ovYThuT05waDRRRSs5YzVUZmlyZ3dBRnpW?=
 =?utf-8?B?NWpGVkNPODBvYitvZFZaSTk4K093Tm1hbmZjQ0I5NkFWVU9pcWUxczFreTFk?=
 =?utf-8?B?bjQ5emg4MzRnN1huWXBMaFBMQW1KZTlEcXNTejlkTXBhOXc0a0JPZVBoODZX?=
 =?utf-8?B?elh6S21td05CU1RXc2E5Ri9oclBZVEQrTVFuR3BpTkRUai9CQnZ5S1A2S01C?=
 =?utf-8?B?SHcwOE1TdkJLci93VGJXN0hvYjJRVHVPTjlpRFNEVTFUREZpM0lYQSttTlQ2?=
 =?utf-8?B?eEVkcy94NHFVTVVjd2NmUStaWUFtQXhqMkdib0orRm1RZmVzaVBybHFLZ2V2?=
 =?utf-8?B?eWt4MTNRUnFlSE9GYktnOHZqNmlvMlJIWm1uVmIyNVFnOGY1Q2pUY21ralRB?=
 =?utf-8?B?c2hpSVhYRjdPbW5DQndDR3ZmVCtUNVIyU1RsMGRJM3lqUFVPNVJwRUJ0amFM?=
 =?utf-8?B?OHQ4SUFyWXQ2Y1F3UEhnUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OXBienRHMk95b1hhRjhTS01NMnFLSW5DdndMNlNSM2Iya1V0SHBGVFUwa2F0?=
 =?utf-8?B?Zi9vYzhUWVh3SDBteGp5YmROSjBnYkdRRFdhRkhHWXc1Mm96NGpNeVNkL1Jt?=
 =?utf-8?B?Z1VjYXRHMU93Y1Q0OU1TQjJOY1NiU21aK2lNOC9haDREU2JpL1NmN2FHUnpa?=
 =?utf-8?B?eEk1eHZpcnBqQkowdTgwSG9kbWE3Q3ZidXBYeW1ORHZ6Y0hvazZjRnVxRUQ2?=
 =?utf-8?B?M0tqYTZwZHBFUlBHa3ZXc1JxTlc4K1VDVHlGZkR1SzBnMG90TjBiVGtla21i?=
 =?utf-8?B?c2c2MVR5MWIzdTJBUG1rTFhNZHZKM0pnMWpDNDVJOWlkZ1crQkR5eUJJWTVC?=
 =?utf-8?B?ajhlQTBYS0FGS0JjZFNwM1dmY01KdmRnZzhqZ1pKa3RzemtrTEM4M0Z1Lytz?=
 =?utf-8?B?TTlHTTJ6WVNZbm1PWC9MSmducWtiMENSYTNXaVBpS3VBTWdjT2N1QkVaMkVW?=
 =?utf-8?B?Y1U1U1Z6OXV2NThGUDAzbzFpMGxOV0huODBQUG0vQWpWRUc5VlJoZ3UrT0JO?=
 =?utf-8?B?QkZCUGpjNkUzN1lYNm5nL0xtenpRZ2RiRXo1YmhBWmhkWmZwOEhhQ25sZUZs?=
 =?utf-8?B?VDRzb2pKWDNjRU5qYUcwKzR5VGkrWVB4QklEWC85enhKeHY4Q2lKWGlvNVNH?=
 =?utf-8?B?SXlIMmRhTHpHeUR3aElYUThPWFhKOGlGUTF3R1VlOHZKTWtwbmZJRlZvejlW?=
 =?utf-8?B?TjJBWmNGQjVYNkx4NEhMRVZoTW80MStFZmpFWDV4czJRL05nVGFFZXlIdFhx?=
 =?utf-8?B?TXdEVHpiQktuRGw5aWF5bWd2eFlJanlmSS8vYWVsM3BDS0xUVlphSS9jZGxy?=
 =?utf-8?B?eThNZGhZVnZXeGVOL05ubjJ4dnV4eDJRb2QzOHlWYWU1Y1AwMHVSTjUvZUtU?=
 =?utf-8?B?YjZXQ0VlQ09MVUhuL3NqakMxUW1VbUU0aVozVVdLSnZJU2pCZCt5THM5ZmNp?=
 =?utf-8?B?QmV0WXloZzBxVkhvMFlUL0w3WTByMGg4d0tVVk4yaWVIdG9iVndWTm1iVDRt?=
 =?utf-8?B?eEhMQXFxNXpyRytvNTJpaGhWbjFHZDZXRUsyeFlXR3NmTkVyY0pIaHorVkJv?=
 =?utf-8?B?VERPbjVHVi81ZUdURFFzc1h6SmdXSzJvN2Z1blRyU2h2TWJ4Y2t2TjIzN2FW?=
 =?utf-8?B?RVFJbUE4bnVnejhaV3lPYmpuYkxIREprSFJaOFdPbHFJMjNMSi85aTk2YzBE?=
 =?utf-8?B?dG9SSmpsZ3lvWU14aTQ4Vm1OUHZhNEowaDZUOXpJcFUrejhxOCtGK2p2dVRl?=
 =?utf-8?B?ZlpGTzJIYWtrZWt2MVM1RXZSb3daTXV4UENCK09QQnVjY1BBazRQSkwyVEZj?=
 =?utf-8?B?RDZaSmRwSmVSbWRBejVHaFV0RnRXN2FiVk5Bb3UrcDM3dVFjZzQzMU9nUjZh?=
 =?utf-8?B?QkNvd3hhOW1NOUpmM1UvSllkVkNsbFc4dXh1SEVoaWljbDFZNnRKS3J6NWd0?=
 =?utf-8?B?M2FpdHFPVWJyS3g0NjJ3UFZuYnBmSVFmVFJTbCt3YzhEcU5oVXBMTDdpWk5D?=
 =?utf-8?B?UmNiUE8wYlFIY3ZFWXhXV2R2RXIyby82T2NENFlubHAzNUppdEJISzI2cnpH?=
 =?utf-8?B?L2RQYWpiVWdiRWY2OUpWeERZdzNJSjJrRFNrUzRoMWFXNldyc0Q2UTBoVTQx?=
 =?utf-8?B?b2JoMEdGYnEwOVNtWklPaHlZb3BZN1RwY1kzVEcyVzdOQk5mZXZ1T2I5c2lh?=
 =?utf-8?B?eUd3Q0RHRmNhRkVPL3FDYXhhWjhOdE5LaUx2WHN0Z0tDYmZvWXp3UDVUUmNz?=
 =?utf-8?B?aExtTWc1ZUIwK05jTmVUcWdMNC94WDFSV2FtWDFOck5BeFVHQ2I3Y1JueXdo?=
 =?utf-8?B?M0JHUjhRaEpadm9Wd1hBSEFRZzBWeER6MWV4THJQRm54WXJUQTViTmlWUnNF?=
 =?utf-8?B?THM1Rjc2RDhZTUJ3QlplTlU3MjhaNXNCd1NuSy85cU82SnJQUG03S2QzNzQ0?=
 =?utf-8?B?a0tvM0RadldYUFRETnBqckUyTzhWZC94YVYvbTIycW1YamRRT0hvbUtiUXlQ?=
 =?utf-8?B?S1hyV2dGSXpVSWlOZnkyTFVRNzlCTVhPOEVXamxCM2hYR0hoRkZXNTNpb0xY?=
 =?utf-8?B?aFFSRUZIMUVEK3VzU0NMdkp2cUNvWUFGYy84SG9QbWdsbGE4M0JseFBrbmhF?=
 =?utf-8?B?NEFiRWxBd2F2N0U1Mnd1WnFVWXkvUHFnR05OT0dCN1AwUTNVSkdIOHhtUDFs?=
 =?utf-8?Q?isnAcYZQeXVb34PQLnKdsdQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3A83184D24C91942AA69B6B13B0DCA64@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0154e39-4b53-4b3f-4739-08dcc74892b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2024 10:02:49.2533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xBV5ujlyjyZBqeBgI9UdSCIYOvoW6w9NhdvmkFIEDPmzm9TH9D6Q/64MEGSVM/VoMIq3HyrM28r+jBHGEW4nkLnJuKbcGkVi4QdYutd4ckk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6082
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

SGksCgpEbyB3ZSBuZWVkIHRoaXM/IFRoZXJlIGlzIHRoaXMgcGF0Y2ggYWxyZWFkeSBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvNTkyMTYxLwoKTG9va3MgbGlrZSB3ZSBh
cmUgc3VwcG9zZWQgdG8gaXRlcmF0ZSBzb3VyY2VfcmF0ZXMgdXNpbmcgImludGVsX2RwLT5udW1f
c291cmNlX3JhdGVzIgoKSWYgeW91IGFyZSBrZWVwaW5nIHRoaXMsIHRoZW4gbWF5IGJlIHdlIG5l
ZWQgYSBzZXBhcmF0ZSBtYXhfcmF0ZSBjYWxsIGZvciBibWcgZm9yIGJldHRlciBjbGFyaXR5PwpO
b3cgdGhlcmUgaXMgYSBzZXBhcmF0ZSBzb3VyY2VfcmF0ZXMgZm9yIGJtZyBidXQgYSBtYXhfcmF0
ZSB1c2luZyBtdGxfbWF4X3JhdGUoKSEKCkJSClZpbm9kCgoKT24gVHVlLCAyMDI0LTA4LTI3IGF0
IDEzOjQyICswNTMwLCBBcnVuIFIgTXVydGh5IHdyb3RlOgo+IFVIQlIyMCBpcyBub3Qgc3VwcG9y
dGVkIGJ5IGJhdHRsZW1hZ2UgYW5kIHRoZSBtYXhpbXVtIGxpbmsgcmF0ZQo+IHN1cHBvcnRlZCBp
cyBVSEJSMTMuNQo+IAo+IHYyOiBSZXBsYWNlIElTX0RHRlggd2l0aCBJU19CQVRUTEVNQUdFIChK
YW5pKQo+IAo+IEhTRDogMTYwMjMyNjM2NzcKPiBTaWduZWQtb2ZmLWJ5OiBBcnVuIFIgTXVydGh5
IDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDEzICsrKysrKysrKysrLS0KPiDCoDEgZmlsZSBjaGFuZ2Vk
LCAxMSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMKPiBpbmRleCA3ODljMmY3ODgyNmQuLjk5YTM2NWE5NDVhZSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiBAQCAtNTI4LDYg
KzUyOCwxMCBAQCBzdGF0aWMgdm9pZAo+IMKgaW50ZWxfZHBfc2V0X3NvdXJjZV9yYXRlcyhzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+IMKgewo+IMKgwqDCoMKgwqDCoMKgwqAvKiBUaGUgdmFs
dWVzIG11c3QgYmUgaW4gaW5jcmVhc2luZyBvcmRlciAqLwo+ICvCoMKgwqDCoMKgwqDCoHN0YXRp
YyBjb25zdCBpbnQgYm1nX3JhdGVzW10gPSB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoDE2MjAwMCwgMjE2MDAwLCAyNDMwMDAsIDI3MDAwMCwgMzI0MDAwLCA0MzIwMDAsIDU0MDAw
MCwgNjc1MDAwLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqA4MTAwMDAswqAxMDAw
MDAwLCAxMzUwMDAwLAo+ICvCoMKgwqDCoMKgwqDCoH07Cj4gwqDCoMKgwqDCoMKgwqDCoHN0YXRp
YyBjb25zdCBpbnQgbXRsX3JhdGVzW10gPSB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAxNjIwMDAsIDIxNjAwMCwgMjQzMDAwLCAyNzAwMDAsIDMyNDAwMCwgNDMyMDAwLCA1NDAw
MDAsIDY3NTAwMCwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoDgxMDAwMCzCoDEw
MDAwMDAsIDIwMDAwMDAsCj4gQEAgLTU1OCw4ICs1NjIsMTMgQEAgaW50ZWxfZHBfc2V0X3NvdXJj
ZV9yYXRlcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGludGVsX2RwLT5zb3VyY2VfcmF0ZXMgfHwgaW50ZWxfZHAtPm51
bV9zb3VyY2VfcmF0ZXMpOwo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihk
ZXZfcHJpdikgPj0gMTQpIHsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc291cmNl
X3JhdGVzID0gbXRsX3JhdGVzOwo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzaXpl
ID0gQVJSQVlfU0laRShtdGxfcmF0ZXMpOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBpZiAoSVNfQkFUVExFTUFHRShkZXZfcHJpdikpIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNvdXJjZV9yYXRlcyA9IGJtZ19yYXRlczsKPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNpemUgPSBBUlJBWV9T
SVpFKGJtZ19yYXRlcyk7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0gZWxzZSB7
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzb3VyY2Vf
cmF0ZXMgPSBtdGxfcmF0ZXM7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBzaXplID0gQVJSQVlfU0laRShtdGxfcmF0ZXMpOwo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtYXhf
cmF0ZSA9IG10bF9tYXhfc291cmNlX3JhdGUoaW50ZWxfZHApOwo+IMKgwqDCoMKgwqDCoMKgwqB9
IGVsc2UgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMSkgewo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgc291cmNlX3JhdGVzID0gaWNsX3JhdGVzOwoK
