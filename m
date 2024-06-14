Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD5D90938A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 22:51:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD23010E27F;
	Fri, 14 Jun 2024 20:51:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IcloDVU8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 999EE10EE64
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 20:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718398314; x=1749934314;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=hrdMz/QH/ltiqtfvBvWeOHFAweM/CgklLHVtS7sByx8=;
 b=IcloDVU8wxJS9vNHZQiBfdVofl9wrfQCk6fLljyqwHcIKGBDINAiGuWq
 isSrNsY5Jb8go6/j+6Yg6rWDCCIBta29a8Zejubtm2qUSkglgjN/rqZlX
 961MtR8nmqRNnQn+Ps/JPxDGxdEfaYyw1QyzDh4eFcq3PKs4a8aeR7wc2
 2wpX1iMnbkQQpiILshyNKH4QkrKtAzMzDZQrMCsOXcCmUFmsCCpGlVpFx
 Lc1aWaxdKyhC1QLIP6rEP8b+N6JvN0fKbbOHK7XPCsZQyGCRIHMCq2vGD
 XvXmOT0YlYcBhq6dOT1nnwvb7VwRP8vm934S1A+Cwk8yq1SV/AcPX3bUr g==;
X-CSE-ConnectionGUID: CXrmcH5dQHOsvtwD4/b2hg==
X-CSE-MsgGUID: B6V1ybxsQfmgiJlAwZgtEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="18227019"
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="18227019"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 13:51:53 -0700
X-CSE-ConnectionGUID: hs9kFP36QpiOpUYjRLEY3Q==
X-CSE-MsgGUID: /+LRW+FeTiCglAjamehcQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="44987537"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jun 2024 13:51:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 13:51:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 13:51:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 14 Jun 2024 13:51:52 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 14 Jun 2024 13:51:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TXANbYqAmcgI8IyL7oczR3xbLtAbaegYtTyKdnJHyDmwgrpT0SyY62J3q7E14BjfWKJ4Cgfm7H2TxNFSYZoiqffx5ZcBGWUMeorrjj+z4m1v7R+jP/6m9ATpYtzecYri6OeRDCWoBvd8a0rY1/XPRaEmi/sXSuPuCpD8O26ext5AB9WyvQKScMeQb9bXCtg6VDSct5fmwFAzMdk1mC4hPO5JOOPDuExaNUXkrvueNysFRKD0g3SrAyn+pQsbtOCa+/GaU3WagtTzcxf1AKGIqzr0oYu5ZopUk7pI+VeVVlqh2/CotqYmO8/p7Nsh+44btioBCrtnXV354GymhIqcvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hrdMz/QH/ltiqtfvBvWeOHFAweM/CgklLHVtS7sByx8=;
 b=D0M2PMAwugpfStVAdJYnciXJuJJGibwWWwk8GvXpjkUcKB8Y/0uUCTvly2xNj1bLy1HeLZzoq/AGK9hZJrG9ZEMR5UgUYhI5SK3T6n0vy+SOjNR6dJMrQ7/YLTiJWO4pB43lSJkCwevkDwiOE1ntQ2NgL6Ff0ncIUo0Ws6Eowj34PDet+MqRRgi0bWJW0rMDrgWdfFjHTWzGu2ChDGUMlfTA8/nmek/0QrytgVpfZk9EkG8xGVM2mdWjTp1ODg1++nlb85BP/J0Li6ranAyYc+t1YCuEe6s115parRA64DmMo12Vn1PPMIQIJotbz2bQOS3+jvAQCvPPEUdlMpOQOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB5005.namprd11.prod.outlook.com (2603:10b6:a03:2d3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.26; Fri, 14 Jun
 2024 20:51:50 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7633.036; Fri, 14 Jun 2024
 20:51:50 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: Re: [PATCH v8 02/20] drm/i915/display: Wa 16021440873 is writing
 wrong register
Thread-Topic: [PATCH v8 02/20] drm/i915/display: Wa 16021440873 is writing
 wrong register
Thread-Index: AQHavXSyKhhj1iSwgECHfIhP+22CibHHcAcAgABOaYA=
Date: Fri, 14 Jun 2024 20:51:50 +0000
Message-ID: <91ca831475f7f6302d11c6427995a51218ac2ff1.camel@intel.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
 <20240613093239.1293629-3-jouni.hogander@intel.com>
 <PH7PR11MB5981BFB6E1967C55A680BDCBF9C22@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5981BFB6E1967C55A680BDCBF9C22@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB5005:EE_
x-ms-office365-filtering-correlation-id: 1e1ca051-9b6b-4e31-2081-08dc8cb3d06f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|1800799021|366013|376011|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?alRaK3lIQWtPVHRFVTFvY0xwejgzN3NyL2srNWg5N3ZTbmpoZ1VwQkRaWFBD?=
 =?utf-8?B?UnpLampNb3BpSmJQWlBzWGg5dVo4WmhvNlN2YWZOK0l5RURHSkxXazNkd05q?=
 =?utf-8?B?VEhCdjJ3Qk02NEFYaXRTbnlXNGNDREhUcHhxaHh2UEpybkRzUk9tL0RTRHA4?=
 =?utf-8?B?MzZzbjhoQUg2UHpWKy9zNFB3SVlTWWhkL1gwLzlRZk1halRXQWJUZkRLUS95?=
 =?utf-8?B?N1lNc295TFE1TFpuR3V5OGNhUGQxN0w4M3oxbnFBVGFJWHgrdGpLcVNFcEhZ?=
 =?utf-8?B?elJGUU1qcmtBd21sWTNac1ZCS1ZnV2lvajU4UHdXbDNSMFhQdGhKNERWYm9y?=
 =?utf-8?B?R1NpcUF4ZmJWTWNrSWk4OXFwU24xcWxZMjQ4N2ZjL2tac1V3R1lZc25QRVND?=
 =?utf-8?B?Nms5YmhrSllXdXE2QlNlUm1yenFBY3J3OGs4SEt6OWNzUnAvL0wrZUpKdGIv?=
 =?utf-8?B?amJrTEdGUFI2NEE3Tzlmd2p0ZEZ2b1d5VGdOMThDRUVIUzVpWmIydjZXd2ow?=
 =?utf-8?B?eTZ6c3o1Y0h6Z2N4aTluaytaR3lRZ2tvM2pUOW5SdEF0OVNONTE3YUsreWdL?=
 =?utf-8?B?VlZ1ZW1KbUVVRWtKODRqL2JBZVRDenF3Y2REMUtEQ0d6UEU5bXNFRzVCTDZy?=
 =?utf-8?B?UTRyU2ZHTVBtbFE4LzVGRFdVaHdpZ0c3eXNnN0RKZVpaR3VuYndoOFk0eW8z?=
 =?utf-8?B?VUJYQ0dHd2wwK2diNU1GK09lOWxOUE5PZUpkQ3BhcUlleGFjNVAyOW9mNm1s?=
 =?utf-8?B?S290R3NVbkdyUXRLNXM1TWVuTXdmbklMM2x2WW9ORnJsTE9PWE9EUkVJZDUy?=
 =?utf-8?B?TzRVRTk1OUY3U1gvZzNoR05lZnZNZmdqMU1jZEpUSkl4UGVpMFZGSm5JbGdV?=
 =?utf-8?B?c01OTGEzbTJwWTE3VDB0ekVtcERENktLa1BDQVhUby9iQzNQYlVXMWNXdWMx?=
 =?utf-8?B?WFhzU2hNODVvc1VpSW5ndWFrNnpudlVyeG5XWmc3VHBkeW8zWHhRekF5Y1kr?=
 =?utf-8?B?RGxxbHhzcnRtS2pZSTdnbEJjY0N0ZWU1bWVrRDMwU0x3Z1luZ2tXaWNFNWdI?=
 =?utf-8?B?Nk0wY0o1TDJyR0NZOS9jMHlyelIxbmdMZW9jcTJVMkZvbWNKK1FYL1NBZSsr?=
 =?utf-8?B?cE5rcmRpcExFc0FJV1NGdjczREJkK2EvRGIrbmNlejZ0VEN0NTRPdkFnbEs3?=
 =?utf-8?B?UFZwRk5XQTdnUkZxeWRTaEk2c0cyLzFSVmRXWFFPWkY2djg5YkE1MzBhdkxP?=
 =?utf-8?B?WDlvUDkrS2U2Vkh2NVdXaVRMdlJhV1VhMTM5M0FZVW9jLzNjQWMyUDMxUEJm?=
 =?utf-8?B?YmtqZWIxdDJ5UmtZdXIwMlczcW92aWpKeTVuMHpTNmV6bkVPYkt1eHAwWFdo?=
 =?utf-8?B?V0pkNHhWQi9BQXU2SjM2Z0NJVE9jeXl1d2ZRQUtJdmVmRXJXd0FFV3VlYnFp?=
 =?utf-8?B?d3FsS0xHK291a2VNV1pRNUlkVnRsaTZxcnpuR20rT2FFeDRxb1o1dytiK01E?=
 =?utf-8?B?aTBUR0Mydm11ZnhlZ2hCajhubnRkamJNL1hrVGhpN0dCeDNsQWZjRFhXbEJi?=
 =?utf-8?B?MjNGT2xGb0ZlVVJLekk1Kys5NGRmT2ZtQ0M3QXNtRXRvQTZCRmd4VThUYWE0?=
 =?utf-8?B?OHNwbFQ4c2FUeWQwTzRwYXJzcU5xb1FmSDhKNmJRYWFwVDE0LzR5Z29CdWlh?=
 =?utf-8?B?c3EyTTU4WDlYVzVZdlNBd3hqNEJRdVhiVE9lektiT0N4NEtDTnVsMUw3cGhs?=
 =?utf-8?B?R1l2UDk5VGk2Ri94MGg3T2NQK1F3U2gwVlVReDBtblRKSXJ4M3hmdmg0Q0JM?=
 =?utf-8?Q?CLkpydgYPsHn6zhzSStzgEWM/QB8eZZB9WBsc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(366013)(376011)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NTBJL3NZN0dpaDFvbXYvaW95Z3ZySHBJUDRrMzQwSERuYVh2V1BwVys0T0Iy?=
 =?utf-8?B?TGNPblE5d2d6dWRQNlNna3cxMFFqRGowTGVmdFU4OHlTN284dDR6NDFiN3J6?=
 =?utf-8?B?d1FPZmw2Rzl2aTJZNUlVNzJhNTJScGNLdjdKZTV6NmhtaU5uYkMvSk1xcm1O?=
 =?utf-8?B?cWw0RGlBbHlrQTJESmJCZFc1TDFFdFZDcFJXY0hsNHJnQll1Mms1WXVHeHdi?=
 =?utf-8?B?N3JMSjhMYnNhSzB4V0dtWkMrWm9pQVpiRWoyWEdPYit3MUl4cEdBTGpac05i?=
 =?utf-8?B?YVo3dDhyQmd3NVo4K2wxaXpDUEZhUWNVTFpDczhPaHRrVElzQWRFWVlyTzZs?=
 =?utf-8?B?aWpBY3BJTURWTE5yM1ZSQjdya24wTHhFYlcrVTVqM2F4WUQ5TXU2d01rVzBB?=
 =?utf-8?B?MDRQRUNZSmYyZFllSkJaM1BYMFl4OExDcjJzV3UrMmUvMC8wOXRHY2RqSnRU?=
 =?utf-8?B?OGxzc0hPZWNDVEErOVU1eDRNLytpOE5hQyttYk0ydk9ZNTlpUXNsZHVRSFpI?=
 =?utf-8?B?RnRNd0xCV0dZeU1QRlljaXJsYUhPMmlsSlNDTFJwc0hDNGhKMG5RdGhDUUtl?=
 =?utf-8?B?SzEzdGszT3RxYXhwSXJ0T20xSUM5RU9JSjNhcEg2WkxONkswOW5DODRiNzgz?=
 =?utf-8?B?clY5VDJvclBsUUJyY0gyL3NyMGM5MG54U3JXbFlEMXpyWW1oUkdqY1Y5OFFl?=
 =?utf-8?B?K3lubHZPZU9jRElQSFR3SG5PVnpFb3F2VllNUExhRmp3dlhMSTZ1UUFtb2xS?=
 =?utf-8?B?RlR5dUhVaWlVM21BN0dQUE4rUHZQWFRxRUYrZVFVQzJkRGFIS0pwc1JiZ1FI?=
 =?utf-8?B?RXJVOGYwVUVjWlRHV1N0bURVc2dPUW1QdDBzVDhnaGwvckpNMU5jMXZEbk1w?=
 =?utf-8?B?NXZvWmhSbjVCRzBhUGRNWkpSOXlraHlwVFlXMCthZ2xoSEdONW83YnZvUFFY?=
 =?utf-8?B?VWUvVGN1VXZjU3NmUHBsaDlBVXFSTDhSbXNHRm9oNlY2N0pTYnhQdHk1Q1Zo?=
 =?utf-8?B?VGQvWitHNFZZMkhGN21QUUIwMXJ3MDBRK055VlNEUVptTlNkVzZiRFRDMzE4?=
 =?utf-8?B?NHdQSzUvL0J3NG40ZERqOVJQR2RoYVBxWFMyYXRJZXYycExQcGdNS2I0OEJz?=
 =?utf-8?B?QVM1Q3pCcG1nYlQ5bjJDcW43cWVuT2phMDRSMW85TDlqZnhmNS9XbnNnQ2pr?=
 =?utf-8?B?aVdadGZwWmRYRmJ3cDg0VitSdjYvdTJWM2pTTFRnVkQzSXhYZjlqb1ltWTVI?=
 =?utf-8?B?L3plNVRrdVNFMU0rcUQ5by9pR0tMQXZlSkJ3SEhNMC9mTy81L3RsTitwQW5M?=
 =?utf-8?B?RmZ3d0RJNHFHaFJPbmNZQ2lobDFFekFwSGdsU3k0WllkcjZoYmhqTFdmWlJh?=
 =?utf-8?B?d3BYRUVEYUE2VEcxSnZkTVlxYXdaVW9KL0ZZL3Z3QWNhT29RcmxUdUNwM2Yz?=
 =?utf-8?B?NnlrVldpYzNZRHZJQzNIb2l6TjQ5ZW1SeDF2RG9iK3UyNXRtSG12bUc3bFdy?=
 =?utf-8?B?K1piOGJGZjBFbngrSFdDcTlnaXZYUzkvZnJrN0xXeXgyVGh6ZnJpVVlFS0Zx?=
 =?utf-8?B?Y0tFcXRaYW9wRVlQa1FsTVhXcjdFV0NOQU5mN2hxenRWT0xPOXV3TURNUFpJ?=
 =?utf-8?B?YitQTUgxS2pTekxTK3d1ZDZ6d1ZYbXhkWWR5SWNLV2prOHpoa1dkVlZVY3p4?=
 =?utf-8?B?UHdCdlQ2c1pSVFgraDEwV0JMWlV5Q2s0MWxpVnpXMG9PRUR2Um13Sm9zQ1hR?=
 =?utf-8?B?cVROSzVQVnNWSUFHYTJ1QTdUcGJqUUY2WTduMVJTdWRjdk1XUjUvNDM1WnUw?=
 =?utf-8?B?YU5LTFJRWi9NRjlpR05SZlNNMWY3V3U5dnc1d1cxSWN5UjZFUjZyT1RuZ3VB?=
 =?utf-8?B?ZHpDNWsxWm1TdkdXYTNwWWlydVFtVHhaUEJudUQwVkhHRkdBNHBFMmRKRzg1?=
 =?utf-8?B?bnc4T3dwZUNweGh0V1J5NElUYTNhVVVRU0szOS9iVHM3RXdPWEhvNlNnS0R2?=
 =?utf-8?B?TWNJOHVIWXlpZTdyd05FOFFXVU9NWmJxVU1oYWc5eDV0cHdsUXhMN3dOVWVT?=
 =?utf-8?B?WGRacjBYcFNjazJ4cDFVZXdUMmswL2VBVFpuNWp2RzQvTEdDM2FsWHh3bFcy?=
 =?utf-8?B?MVFPNVdkVmlnVkU0QzdVcWxzMy9WNmNTaU42K1BsbGhrNU05RWI0bU9RdTNx?=
 =?utf-8?B?NWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <51866AADB728684F8E2213AE5A7C4786@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e1ca051-9b6b-4e31-2081-08dc8cb3d06f
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2024 20:51:50.3598 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /UWd9FtCIKX6IufDkXMEeGYgF49NDfJTEi0FGJBp7QXYMI5B5NdJPp+Tdh269BctlLAlLlNhljgpvZca+z38dlOnqvivwxrnqZfhtM3W+2A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5005
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

T24gRnJpLCAyMDI0LTA2LTE0IGF0IDE2OjExICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogVGh1cnNkYXks
IEp1bmUgMTMsIDIwMjQgMzowMiBQTQ0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+ID4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47
IEthaG9sYSwgTWlrYQ0KPiA+IDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBbUEFUQ0ggdjggMDIv
MjBdIGRybS9pOTE1L2Rpc3BsYXk6IFdhIDE2MDIxNDQwODczIGlzDQo+ID4gd3JpdGluZw0KPiA+
IHdyb25nIHJlZ2lzdGVyDQo+ID4gDQo+ID4gV2EgMTYwMjE0NDA4NzMgaXMgd3JpdGluZyB3cm9u
ZyByZWdpc3Rlci4gSW5zdGVhZCBvZg0KPiA+IFBJUEVfU1JDU1pfRVJMWV9UUFQNCj4gPiB3cml0
ZSBDVVJQT1NfRVJMWV9UUFQuDQo+ID4gDQo+ID4gdjI6IHVzZSByaWdodCBvZmZzZXQgYXMgd2Vs
bA0KPiA+IA0KPiA+IEZpeGVzOiAyOWNkZWY4NTM5YzMgKCJkcm0vaTkxNS9kaXNwbGF5OiBJbXBs
ZW1lbnQgV2FfMTYwMjE0NDA4NzMiKQ0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRl
ciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYyB8wqAgNCArKy0tDQo+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgIHwgMTIgKysrLS0tLS0tLS0t
DQo+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0p
DQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY3Vyc29yLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vy
c29yLmMNCj4gPiBpbmRleCBjZWEwY2ZlZDU2OWQuLjZlYTc2Njg3ZGQxNCAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYw0KPiA+IEBAIC01
MjQsOCArNTI0LDggQEAgc3RhdGljIHZvaWQgd2FfMTYwMjE0NDA4NzMoc3RydWN0IGludGVsX3Bs
YW5lDQo+ID4gKnBsYW5lLA0KPiA+IA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV93cml0
ZV9mdyhkZXZfcHJpdiwgU0VMX0ZFVENIX0NVUl9DVEwocGlwZSksIGN0bCk7DQo+ID4gDQo+ID4g
LcKgwqDCoMKgwqDCoMKgaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFBJUEVfU1JDU1pfRVJMWV9U
UFQocGlwZSksDQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBQSVBFU1JDX0hFSUdIVChldF95X3Bvc2l0aW9uKSk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50
ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIENVUlBPU19FUkxZX1RQVChkZXZfcHJpdiwgcGlwZSksDQo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBDVVJTT1JfUE9T
X1koZXRfeV9wb3NpdGlvbikpOw0KPiA+IMKgfQ0KPiA+IA0KPiA+IMKgc3RhdGljIHZvaWQgaTl4
eF9jdXJzb3JfdXBkYXRlX3NlbF9mZXRjaF9hcm0oc3RydWN0IGludGVsX3BsYW5lDQo+ID4gKnBs
YW5lLCBkaWZmDQo+ID4gLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
ID4gaW5kZXggNjZhYjhhYmQwYTA0Li40NDE0NGRjZmIxYTMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtMjE2NCwxOSArMjE2NCwx
NCBAQCBzdGF0aWMgdm9pZCBwc3IyX21hbl90cmtfY3RsX2NhbGMoc3RydWN0DQo+ID4gaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgY3J0Y19zdGF0ZS0+
cHNyMl9tYW5fdHJhY2tfY3RsID0gdmFsOw0KPiA+IMKgfQ0KPiA+IA0KPiA+IC1zdGF0aWMgdTMy
DQo+ID4gLXBzcjJfcGlwZV9zcmNzel9lYXJseV90cHRfY2FsYyhzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZQ0KPiA+ICpjcnRjX3N0YXRlLA0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJvb2wgZnVsbF91cGRhdGUsIGJvb2wNCj4g
PiBjdXJzb3JfaW5fc3VfYXJlYSkNCj4gPiArc3RhdGljIHUzMiBwc3IyX3BpcGVfc3Jjc3pfZWFy
bHlfdHB0X2NhbGMoc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSwNCj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYm9vbCBmdWxsX3VwZGF0ZSkNCj4gPiDCoHsNCj4g
PiDCoMKgwqDCoMKgwqDCoMKgaW50IHdpZHRoLCBoZWlnaHQ7DQo+ID4gDQo+ID4gwqDCoMKgwqDC
oMKgwqDCoGlmICghY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc3VfcmVnaW9uX2V0IHx8IGZ1bGxf
dXBkYXRlKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIDA7DQo+
ID4gDQo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKCFjdXJzb3JfaW5fc3VfYXJlYSkNCj4gPiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIFBJUEVTUkNfV0lEVEgoMCkgfA0KPiA+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgUElQRVNSQ19I
RUlHSFQoZHJtX3JlY3RfaGVpZ2h0KCZjcnRjX3N0YXRlLQ0KPiA+ID4gcGlwZV9zcmMpKTsNCj4g
PiAtDQo+IA0KPiBTaG91bGQgdGhlIFBJUEVTUkNfV0lEVEgoKSByZWxhdGVkIGNoYW5nZXMgZ28g
d2l0aCBwYXRjaDE/DQo+IE5vdCBzdXJlIHdoeSBpdCBpcyBhZGRlZCB3aXRoIHRoaXMgcGF0Y2gg
d2hpY2ggY29ycmVjdCB0aGUgcmVnaXN0ZXINCj4gb2Zmc2V0IHZhbHVlLg0KDQpJIHdhcyBvcmln
aW5hbGx5IHRoaW5raW5nIEkgbmVlZCB0byB0YWtlIHdhXzE2MDIxNDQwODczIGludG8gYWNjb3Vu
dA0KaGVyZSBhcyB3ZWxsIGJlY2F1c2UgdGhpcyBpcyBjYWxjdWxhdGluZyB2YWx1ZSBmb3IgUElQ
RV9TUkNTWl9FUkxZX1RQVC4NCkFzIFBJUEVfU1JDU1pfRVJMWV9UUFQgd2FzIHdyb25nIG9mZnNl
dCAtPiBubyBuZWVkIHRvIGNhcmUgYWJvdXQgdGhlDQp3YS4NCg0KQlIsDQoNCkpvdW5pIEjDtmdh
bmRlcg0KDQo+IA0KPiBSZWdhcmRzLA0KPiBBbmltZXNoIA0KPiANCj4gPiDCoMKgwqDCoMKgwqDC
oMKgd2lkdGggPSBkcm1fcmVjdF93aWR0aCgmY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhKTsNCj4g
PiDCoMKgwqDCoMKgwqDCoMKgaGVpZ2h0ID0gZHJtX3JlY3RfaGVpZ2h0KCZjcnRjX3N0YXRlLT5w
c3IyX3N1X2FyZWEpOw0KPiA+IA0KPiA+IEBAIC0yNDg1LDggKzI0ODAsNyBAQCBpbnQgaW50ZWxf
cHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsDQo+ID4gwqBza2lwX3NlbF9mZXRjaF9zZXRfbG9vcDoNCj4gPiDCoMKgwqDCoMKgwqDCoMKg
cHNyMl9tYW5fdHJrX2N0bF9jYWxjKGNydGNfc3RhdGUsIGZ1bGxfdXBkYXRlKTsNCj4gPiDCoMKg
wqDCoMKgwqDCoMKgY3J0Y19zdGF0ZS0+cGlwZV9zcmNzel9lYXJseV90cHQgPQ0KPiA+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwc3IyX3BpcGVfc3Jjc3pfZWFybHlfdHB0X2NhbGMo
Y3J0Y19zdGF0ZSwNCj4gPiBmdWxsX3VwZGF0ZSwNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGN1cnNvcl9pbl9zdV9hcmVhKTsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgcHNyMl9waXBlX3NyY3N6X2Vhcmx5X3RwdF9jYWxjKGNydGNfc3RhdGUsDQo+
ID4gZnVsbF91cGRhdGUpOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsNCj4gPiDCoH0N
Cj4gPiANCj4gPiAtLQ0KPiA+IDIuMzQuMQ0KPiANCg0K
