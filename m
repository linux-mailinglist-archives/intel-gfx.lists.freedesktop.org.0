Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3E8A95D18
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Apr 2025 06:46:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A52010E4E2;
	Tue, 22 Apr 2025 04:46:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CFTfk+p1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85AF710E4E1;
 Tue, 22 Apr 2025 04:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745297196; x=1776833196;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=v9+Nc67cLGZDFNFrhdDHn7hUhq71R08MqQvSso3P6k8=;
 b=CFTfk+p1z7u+eKEUl08mL1sF1whg4UmYUnCIa6Zi4SrRMtFDtqVfF5ah
 ZXU5m1htg/1R+7zkkN1zYy8Bn475xpO5CCPnE+kHE18IJrJxC4tv3yYSZ
 W8gH3VJJlxF70bfNxa46m1d5ED5OeVLkLRPl4Ch4QrRY/mNJAcosc3gux
 nA5R/jpYsVGczXE8fQyrgJTSOJaJ95i2d5UjLIADamwOTeUaZq/5Xn8Vg
 o9iTQO+Ft02JkSqbj1yGdduR+UxXPQpKMAf7tshOlHeCB++UimQGj52th
 42i2MKWIEHdYWzs7xw0KwLvGDJr4JBy9WahlReGNFT0coybt2JlB7v9xH Q==;
X-CSE-ConnectionGUID: MJfcF3sORQuloQ+v9ixSjQ==
X-CSE-MsgGUID: oKmA26EmRU2vpu8jKLMCHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="34456193"
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="34456193"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 21:46:29 -0700
X-CSE-ConnectionGUID: tO2ZY/X7Tjm90uJQklExDg==
X-CSE-MsgGUID: gz3I5bm/TBemDP+HFc/vQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="135982303"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 21:46:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 21 Apr 2025 21:46:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 21 Apr 2025 21:46:29 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 21 Apr 2025 21:46:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gSd8D59co5twaJ23jRJj57EzNcP3M/yIjNcykQpLl1UZrGpIPCtRE2I05nOnBMuoDVLmLBGg4mwarzyZeVIvk1PMHeCyD+ixoxKM6HPXDmRbSL/DtjSvgEIPIKlfHekLQ/hfdbFE1eSu3mr9gDtH/4xjpIiL6GHfiOLBa8l86mvn6kAtO3LQoQbmTKfA6YkBi8xPJUR9VStU7u3qwc01uKD6A1V1Z1YInwW6jyDYPCOijR5KNvp/W4pHaKySZG4bvzOM0MmPfkMjxPXly3uuwekAdQTFcEd5kCFo6IO1YZscaiUAEiOlU1POJl5x3rHFHg5LzceprF4jxFPdl24SVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v9+Nc67cLGZDFNFrhdDHn7hUhq71R08MqQvSso3P6k8=;
 b=nWeWilXGkmBhlofPPqDhJyqCHCOgDu4DObSBvCkC91oDYQQBB+dY+4r9naGhXBTRVAaoWo02aq8Lid2IPt4J1v1LaWeErUazegdh7ZCXl7TSr+a+BQBjOwhrxRTzVjW82yQwiwI4Iv1RDqgt6IEm//LxtCQ6hZUQYsG9rhXaxAbQcUr+i3MRpUsMGLAH7574vDMYCpe42/anEgaYgh3yFYGKGgPNHGXVnvgJvUfSw18TtxicDAgnS+8NHdnvyzvqx5AhLonbVAUcG8kKKx6NR+e3USjYjGtizujMbGumodlZLY9ir1vnfHrYQYjidkSHAgdAJAQTauQ44WHMDidxow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB6970.namprd11.prod.outlook.com (2603:10b6:806:2aa::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Tue, 22 Apr
 2025 04:45:53 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%3]) with mapi id 15.20.8632.030; Tue, 22 Apr 2025
 04:45:52 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Ensure enough lines between delayed
 VBlank and VBlank
Thread-Topic: [PATCH] drm/i915/display: Ensure enough lines between delayed
 VBlank and VBlank
Thread-Index: AQHbr8XzMVI1uTc4LkaP2h0fsXKVe7OsuFyAgAJq8IA=
Date: Tue, 22 Apr 2025 04:45:52 +0000
Message-ID: <c33fae44e17f35638cc5129d19d8e8124d1ec1dd.camel@intel.com>
References: <20250417182356.169593-1-jouni.hogander@intel.com>
 <IA0PR11MB7307ECC591508B0B1B8AB50BBAB92@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7307ECC591508B0B1B8AB50BBAB92@IA0PR11MB7307.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB6970:EE_
x-ms-office365-filtering-correlation-id: 442765f8-83d1-4701-999a-08dd81588fa6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?NlQ1UTFnNk5JMWplbDlvcmRXWXF5cmZ6TEM4OVNpdzFGeHJzMHVlZG51ZEc4?=
 =?utf-8?B?SUxtdGVhOFUyRnNTZlRuckpIMi92VVVXakhuNERjd1hIK2toaUtpSjZGVXd6?=
 =?utf-8?B?RmJhNzVpbld5Z2EzTmFxVUk2UkU0bmw4WGQzOUZXYUxEemRGVkJRYlpiTnZw?=
 =?utf-8?B?RDJ3dU81dlhvN0RWUTlzNFIrRUZMOExUVEI5by9rZllYVlNIMWJ6eXozZnFw?=
 =?utf-8?B?cXEycmZnRUxrQ3VRbldFOHQ5aWdWL0lQdnVaV1ljR2N5MkY2eFRnRUV1YkJk?=
 =?utf-8?B?WEx2eHhVbU1lSGVkNEVVM0hGMVpBUTBZZmpVdVVuMm0yNGRpc0plZWpjaysr?=
 =?utf-8?B?WDRTOHJrSFJpZHJtZDdHWFowU0NCSzVGQkxRQnVXZUc5RWk1eE80ZDMxUlVo?=
 =?utf-8?B?RFQvQnFVOHJOM3hrTkFvUDZaTWxTWnpCdmFRNDEzUDFwdVBiTXNFRWlFUmRk?=
 =?utf-8?B?YmF5ZVFtUzVQWThDSXhOc0lqME8wTE9VdThhSTJrWnNoMlQ4ZmxBVWpVYkJY?=
 =?utf-8?B?OWF0MDlza0FXcFZGZTVabytUbk4wU1RMQWoyZ2J2VElYd0ozZ2MreGdUSUVR?=
 =?utf-8?B?WTN5SFJCV1ZMMy9CNW9tcVJJZ0tpUERManBKdk1xVG9pZFd5eUVEMTJRY2kz?=
 =?utf-8?B?QkxlR3RVcUh1MG9Jc0tYNmRCbkpMUHgybmltTElCNGdmeHJ3anhGUE9MS3Jv?=
 =?utf-8?B?bWNDdmN1YlE1LzhjdXdIUzArRzZORWF4b01UbUF1eStJTEFsQktnbGs4eFhC?=
 =?utf-8?B?YTFvL3BzQ28zL3B6cVJtRHcycEEzdHVmVlZzdjJNOGtQM01kdDFkc3JoUlFW?=
 =?utf-8?B?dXlDaEt0SGw2ZU9pMTUwRnZhTWNwWllBSUxwMUEyL0FEZ0VSQjFBWlpjVnp1?=
 =?utf-8?B?Snc2amdNWHJ3RG56RXpoWTVHZTgrazlINHNNU0FlZFdHS0tIcjBxZk5zaFJJ?=
 =?utf-8?B?OXl3MmN2aXBkK2h5VUF5SklpVkp3YW8xUSs1U3Y3MnZMVlhhbytiTk9tZTRa?=
 =?utf-8?B?V2tnd3hEelk3K2lOQlh2Rzc4WlBsenVPQm9iMHlCTDJ3N0lzbTRNVEpsMVNq?=
 =?utf-8?B?a1VRdGpzOHBQc1NTbFBpVTJOakxoTG5ndGtabGt1NFEyYjJMNnJrbERMNDRO?=
 =?utf-8?B?bGVqRWFvU3N1OFMxV09sUGdVWnZMMCsra2dqS0o4S1N4akY5bmlNdk9hTS9U?=
 =?utf-8?B?bmduT0t6bGUybGdMNG50dlFxcThFT3RwelJmclJXTFBtb2V3WEE2YTdHQnJa?=
 =?utf-8?B?Q29GUGJVNEFKT2ZmYU90SHFpZ3lpYXV5R1JzQWRzT2Z2Ry9PYm0rVXQ1YTRV?=
 =?utf-8?B?K1FsU25TZWh2b3kxdmlGK1BvbE9tN2c0WUNYSGpzVGUrUGhjczlyQTREUEhE?=
 =?utf-8?B?UVpoYms5K2pkekEvN2xmeisrRGtTbnhDbitvNTRjM2UvTkFlWFdLcEJuVUJz?=
 =?utf-8?B?QUg4cFU4UTlJSlhFY3AvcStnTG1LQ1pzbWluVFJMSUhkSU5TZHR2NFVhK1lw?=
 =?utf-8?B?eTMxYVlxQ0VkdVJESTY4VG92K0JVbGYweFBUdzdwb0ZGWGZ2a3dVcnZLU0Q3?=
 =?utf-8?B?WFlCRGVsZHNHWklpczJUK0dDelFlaUlnNC9RNjROMGxXSXkxYWpFR09zMTB1?=
 =?utf-8?B?M2Y3ZmZvZ2tSLzE0d3R1UWI1a3NMUDczZThyKzIyaU92NGxvemxYYnJidjd0?=
 =?utf-8?B?NDF3ODJnVVpRUnVCdWU5Um1PQ05QZHJMdlZjUDVZcmxaZWREc3dKWFBVRGFs?=
 =?utf-8?B?dnlkQlFyV1FUMlV3bHIrMjlXcndVb0RoWkVwZU1aNlBtVklzSklNcU80SXU5?=
 =?utf-8?B?dGorU3RveXowZ09Lam1pbVdzcHBQYkc3TzdWVnMraERUN0RjMkZQYlFCV3Rp?=
 =?utf-8?B?aUltR2l6eGFUL2RRM1FaWGZOdkFmb01TUFhPVjJoampYeGhIeUxYYVlGbVRQ?=
 =?utf-8?B?eVlCWHpZdjJzNmFmaExUUVkzR2pPbzZwaWw2bUFnWWh4d0hnamNaRGVzY1Mz?=
 =?utf-8?Q?TmJrFqNMdJjxZOQehrjeCcNs0o/SU4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?azJEY1B2d1dlZjhoUWVzL1pQSkFFNnJ6bFVvTVJ3N014NjRLR1Y3TWM5NWVN?=
 =?utf-8?B?MjBvMUhMY2VKY2xkNWdqUDh1Y1h3eGNEQlAvVytsTWUrL3h5S2ZYSXhIeHNV?=
 =?utf-8?B?MERLdHRnbzdkSHlXb3IvTkhVcjY5UGk5RWljVGNEbEMvOEpPVTE3QldxL0U3?=
 =?utf-8?B?cHNjMnhuVnpmcU52RGVKL2tLMUl4SzczWlZFY3dHSkwyL2w0Wnh0eEc3OEVu?=
 =?utf-8?B?RFFUc3hna2k2ZUhGUTZFUHRSVW0yVGR1ODlJbW1LQktRd1RKRkZQWEYvVm9Z?=
 =?utf-8?B?SUdnM21ZUzQ1UkJzR2hpRUsxYlFjYmFReTlibkE3Vk5DczZFRTAveEpmWU9m?=
 =?utf-8?B?RzJSbDg3Ylh0UDFiY1JpRUtSdU9zMG51OWNRN1d1Yk8zU1pOckMwV0RmR3ZI?=
 =?utf-8?B?QlZnemNxeFZMbVJKUWlzVXN5ZUl0K3E4Yy8yMzQ1WjE2cHJUdkZYVExVM2kv?=
 =?utf-8?B?Tm50OTJ4bVFnVFlDUlU4aEtUdG1vazJFU0FSMzZBZVBSSExRaStDTEZvRzdk?=
 =?utf-8?B?UzhpUkRtYlFtRGZvc2FVYjV6QkUxcEpDUm9RRmhNRU5oaFVRVC9ucml0NlVq?=
 =?utf-8?B?ckpOK1RrWFBTeGUzZml2cS8vTjVINmFaN05pY3ByemQ0cklCeG1Nak5pSkI0?=
 =?utf-8?B?aTdTY0ZDd1JJNW9CRXNLMnpSWEpFYVNQeEFtTXRpRnpoU3VjSjFkWmJSK043?=
 =?utf-8?B?Znl1N3RKWHpibk56TjZXQmNXUFBJaEZuWXF6RXFzZGw1dGo0Y213ZmFEQW9u?=
 =?utf-8?B?MmtHQjBJYlEvU2lBejAvWk4xeXZVYVBmRzJxNW9TOXFFQU9KOU16OGlaOGx5?=
 =?utf-8?B?NWR4L2NNdS9LRUdWT3BxK2NYMlNYZkx0Q1plS0J2YWJ2ai9ycGt5aS9VWFJ1?=
 =?utf-8?B?YmQ3SGFpMHFJc1pKNVlCenJqLzJabm5CMXpHT3R2Rk5pVzRYQWFCd1N4VnZh?=
 =?utf-8?B?QXA0bnFDS3NoU0ZnZHNvZTdDSjlUWEozTzIzQzNwQU92NTFMWDJVaEkyMmNa?=
 =?utf-8?B?U2ZqKzlHS1RKWjVEbFh6VThscnJQR2xEUEN4Wm8xcmlsZ2grbEhKWjBHdkFC?=
 =?utf-8?B?a2RDaHNWRUkzQXBCMGM0WGYzcm11cTBzd0tRbkJUNTdTNjYyOEhiLzNLY3RP?=
 =?utf-8?B?UkFJYjlMYVh6Q1VJV2k0MWszRVAxYnJKM0hMZFNuZllsTUZ1bUhVL3BxdTlr?=
 =?utf-8?B?L2dZckZ1SE91TWhsSXMycjBZdS9Sd0JKTlIrRmpBR05GTC9jeFh2WWRmVHda?=
 =?utf-8?B?b2tMUWh6NG9oeG5FL3p6bksxVmlQb21MbkJuY3hudFVwdDRNQm1tUEM3MnBH?=
 =?utf-8?B?aUVYT0N3Mks0NW5TUTZlcnRudFZ1UExoUHRXQ1RlYnpzbFczNjMxamVKYTNq?=
 =?utf-8?B?V2JGTjlva0FoUDQxWWo0Q1VDVHpEcEtJYmV3ZG9iVHZtSTRJL0xkMzJYYVVG?=
 =?utf-8?B?K2JqYXR5SzZSaURuK0pnS0RWeVIzb1JERzVESFN6Y2tqOTBsRDg5c1picjhZ?=
 =?utf-8?B?L2lmSExkd0RRU253ZVZIeHdhUnlud0czNW9Qb2QzUXF2dmVTUFZqYmd1ZVJs?=
 =?utf-8?B?aXM2T2VteU42bVg3YlV4L2ZQemoyUlM2WHM1bjMzMGR2UDF4MC8yWVBDUjJF?=
 =?utf-8?B?WlEyejBOUkVnY3VIWS9QRmEzd3NVOUcyK2pHN1BqSVJjVTJJSnlVdDBVMVMz?=
 =?utf-8?B?UzJnWFRHZTNXOXJNaVdBNVVReVlOOW9TMUswRzZucWRpTDl3NkJxZVpZeERC?=
 =?utf-8?B?RFUrWjFWd2tLQXh4RzdhL2ZWUkF0bDM3d3lxQUZWaDduZXJlbGEzY0pEQ1Bh?=
 =?utf-8?B?b0lzWk1DZ1QreExndy9EaFNvbGRuS2hrTEw3bzE3VjBWNW1xcEFtNU14WHNL?=
 =?utf-8?B?SGhBbkVTanhmUUgyVy9EUmdoNHlpdWkwcXJtUklDVnNLdS9rY0JnaEpUYkR0?=
 =?utf-8?B?c09GdXRYbDJqU1JLQm9LeEVkVlhEQWYwVmw2M0lRMkZTTWNYVkhObEg5bHI4?=
 =?utf-8?B?bk9xN3BneXN2Z3A5dU8vRG1OU2tVNVdBT2VLSDdJY0lOa1JYUE9KWm1LV2FO?=
 =?utf-8?B?NExlZ0MvUEx1U0lrQlIyZ3ZQSW0vQ2hnWkVuT01jZExaWmJOWXV4V1dIYnpI?=
 =?utf-8?B?NENkNGU4WFVDU2pyaVFkUENuQis0MnZBWFAxVjNRbnJ3K3VlRTlpY3FIKzh4?=
 =?utf-8?B?d0M4Rm9VT05BL3JzZUZrRWJwWEdnamFncm1EamwvVnNwZE4rRTNWODBOZm1P?=
 =?utf-8?B?YUprZzMwc3ZocmtHVVI1Sy9MUTFBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <129BD104F5BCB048AEFB363CE9AC56AF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 442765f8-83d1-4701-999a-08dd81588fa6
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2025 04:45:52.3374 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /2kxhfH1+WLxDi4I7dS1EC04nJ8BkXWMEA2V4dI/T8hEqG6JktjAJ0p2uH7yTiuxg2qFvTMxvVqGjCR/rtzbWfn1wyj8N7NBMWuPfFohu9I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6970
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

T24gU3VuLCAyMDI1LTA0LTIwIGF0IDE1OjUwICswMDAwLCBNdXJ0aHksIEFydW4gUiB3cm90ZToN
Cj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEludGVsLWdmeCA8aW50
ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYNCj4gPiBPZiBK
b3VuaQ0KPiA+IEjDtmdhbmRlcg0KPiA+IFNlbnQ6IFRodXJzZGF5LCBBcHJpbCAxNywgMjAyNSAx
MTo1NCBQTQ0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14
ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5o
b2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5
OiBFbnN1cmUgZW5vdWdoIGxpbmVzIGJldHdlZW4NCj4gPiBkZWxheWVkDQo+ID4gVkJsYW5rIGFu
ZCBWQmxhbmsNCj4gPiANCj4gPiBUbyBkZXRlcm1pbmlzdGljYWxseSBjYXB0dXJlIHRoZSB0cmFu
c2l0aW9uIG9mIHRoZSBzdGF0ZSBtYWNoaW5lDQo+ID4gZ29pbmcgZnJvbQ0KPiA+IFNSRE9GRkFD
SyB0byBJRExFLCB0aGUgZGVsYXllZCBWLiBCbGFuayBzaG91bGQgYmUgYXQgbGVhc3Qgb25lIGxp
bmUNCj4gPiBhZnRlciB0aGUNCj4gPiBub24tZGVsYXllZCBWLiBCbGFuay4NCj4gPiANCj4gPiBF
bnN1cmUgdGhpcyBieSBmb2xsb3dpbmcgaW5zdHJ1Y3Rpb25zIGZyb20gQnNwZWMuDQo+ID4gDQo+
ID4gQnNwZWM6IDY5ODk3DQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDExICsrKysrKysrKystDQo+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jwqDCoMKgwqAgfCAxOA0KPiA+ICsrKysr
KysrKysrKysrKystLQ0KPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBpbmRleCBkYjUyNGQwMWU1NzRkLi45NDE1NmVmYTVh
YTkzIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMNCj4gPiBAQCAtMjc0Nyw5ICsyNzQ3LDE4IEBAIHN0YXRpYyB2b2lkDQo+ID4gaW50
ZWxfc2V0X3RyYW5zY29kZXJfdGltaW5nc19scnIoY29uc3QNCj4gPiBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Yw0KPiA+IMKgCX0NCj4gPiANCj4gPiDCoAlpZiAoRElTUExBWV9WRVIoZGlz
cGxheSkgPj0gMTMpIHsNCj4gQ2hhbmdlcyBsb29rcyBnb29kLiBCdXQgcGVyIEJzcGVjIDY5OTg1
IGxvb2tzIGxpa2UgdGhpcyBjaGFuZ2UgaXMgbm90DQo+IGFwcGxpY2FibGUgZm9yIFhlMysNCg0K
SG93IGFib3V0IGlmIEkgY2hhbmdlIGl0IGxpa2UgdGhpczoNCg0KaW50IG1pbl9sYXQgPSAgaW50
ZWxfdnJyX2Fsd2F5c191c2VfdnJyX3RnKGRpc3BsYXkpIHx8IGNydGNfc3RhdGUtDQo+dnJyLmVu
YWJsZSA/IDEgOiAwOw0KDQphbHNvIGd1YXJkYmFuZCBjb3VsZCBiZToNCg0KaWYgKGludGVsX3Zy
cl9hbHdheXNfdXNlX3Zycl90ZyhkaXNwbGF5KSB8fCBjcnRjX3N0YXRlLT52cnIuZW5hYmxlKQ0K
ICAgIGd1YXJkYmFuZCA9IG1heChjcnRjX3N0YXRlLT52cnIudm1pbiAtIGFkanVzdGVkX21vZGUt
DQo+Y3J0Y192Ymxhbmtfc3RhcnQsIGNydGNfc3RhdGUtPnZyci52bWF4IC0gYWRqdXN0ZWRfbW9k
ZS0+Y3J0Y192ZGlzcGxheQ0KLSAxKTsNCmVsc2UNCiAgICBndWFyZGJhbmQgPSBjcnRjX3N0YXRl
LT52cnIudm1pbiAtIGFkanVzdGVkX21vZGUtDQo+Y3J0Y192Ymxhbmtfc3RhcnQ7DQoNCldoYXQg
ZG8geW91IHRoaW5rPw0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+IFRoYW5rcyBh
bmQgUmVnYXJkcywNCj4gQXJ1biBSIE11cnRoeQ0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4g
KwkJLyoNCj4gPiArCQkgKiBDb21tZW50IG9uIFNSRF9TVEFUVVMgcmVnaXN0ZXIgaW4gQnNwZWM6
DQo+ID4gKwkJICoNCj4gPiArCQkgKiBUbyBkZXRlcm1pbmlzdGljYWxseSBjYXB0dXJlIHRoZSB0
cmFuc2l0aW9uIG9mDQo+ID4gdGhlIHN0YXRlDQo+ID4gKwkJICogbWFjaGluZSBnb2luZyBmcm9t
IFNSRE9GRkFDSyB0byBJRExFLCB0aGUNCj4gPiBkZWxheWVkIFYuIEJsYW5rDQo+ID4gKwkJICog
c2hvdWxkIGJlIGF0IGxlYXN0IG9uZSBsaW5lIGFmdGVyIHRoZSBub24tDQo+ID4gZGVsYXllZCBW
LiBCbGFuay4NCj4gPiArCQkgKg0KPiA+ICsJCSAqIExlZ2FjeSBURzogVFJBTlNfU0VUX0NPTlRF
WFRfTEFURU5DWSA+IDANCj4gPiArCQkgKi8NCj4gPiDCoAkJaW50ZWxfZGVfd3JpdGUoZGlzcGxh
eSwNCj4gPiDCoAkJCcKgwqDCoMKgwqDCoCBUUkFOU19TRVRfQ09OVEVYVF9MQVRFTkNZKGRpc3Bs
YXksDQo+ID4gY3B1X3RyYW5zY29kZXIpLA0KPiA+IC0JCQnCoMKgwqDCoMKgwqAgY3J0Y192Ymxh
bmtfc3RhcnQgLSBjcnRjX3ZkaXNwbGF5KTsNCj4gPiArCQkJwqDCoMKgwqDCoMKgIG1heChjcnRj
X3ZibGFua19zdGFydCAtDQo+ID4gY3J0Y192ZGlzcGxheSwgMSkpOw0KPiA+IA0KPiA+IMKgCQkv
Kg0KPiA+IMKgCQkgKiBWQkxBTktfU1RBUlQgbm90IHVzZWQgYnkgaHcsIGp1c3QgY2xlYXIgaXQg
ZGlmZg0KPiA+IC0tZ2l0DQo+ID4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Zyci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+
ID4gaW5kZXggYzY1NjViYWY4MTVhMS4uM2EyN2RlZDQ1ZWUwNCAxMDA2NDQNCj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiA+IEBAIC00MjIsOCArNDIyLDIy
IEBAIHZvaWQgaW50ZWxfdnJyX2NvbXB1dGVfY29uZmlnX2xhdGUoc3RydWN0DQo+ID4gaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPiDCoAkJcmV0dXJuOw0KPiA+IA0KPiA+IMKgCWlm
IChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxMykgew0KPiA+IC0JCWNydGNfc3RhdGUtPnZyci5n
dWFyZGJhbmQgPQ0KPiA+IC0JCQljcnRjX3N0YXRlLT52cnIudm1pbiAtIGFkanVzdGVkX21vZGUt
DQo+ID4gPiBjcnRjX3ZibGFua19zdGFydDsNCj4gPiArCQkvKg0KPiA+ICsJCSAqIENvbW1lbnQg
b24gU1JEX1NUQVRVUyByZWdpc3RlciBpbiBCc3BlYzoNCj4gPiArCQkgKg0KPiA+ICsJCSAqIFRv
IGRldGVybWluaXN0aWNhbGx5IGNhcHR1cmUgdGhlIHRyYW5zaXRpb24gb2YNCj4gPiB0aGUgc3Rh
dGUNCj4gPiArCQkgKiBtYWNoaW5lIGdvaW5nIGZyb20gU1JET0ZGQUNLIHRvIElETEUsIHRoZQ0K
PiA+IGRlbGF5ZWQgVi4gQmxhbmsNCj4gPiArCQkgKiBzaG91bGQgYmUgYXQgbGVhc3Qgb25lIGxp
bmUgYWZ0ZXIgdGhlIG5vbi0NCj4gPiBkZWxheWVkIFYuIEJsYW5rLg0KPiA+ICsJCSAqIFRoaXMg
Y2FuIGJlIGRvbmUgYnkgZW5zdXJpbmcgdGhlIFZSUiBHdWFyZGJhbmQNCj4gPiBwcm9ncmFtbWlu
ZyBpcw0KPiA+ICsJCSAqIGxlc3MgdGhhbiB0aGUgbm9uLWRlbGF5ZWQgVi4gQmxhbmsuDQo+ID4g
KwkJICoNCj4gPiArCQkgKiBUUkFOU19WUlJfQ1RMWyBWUlIgR3VhcmRiYW5kIF0gPA0KPiA+IChU
UkFOU19WUlJfVk1BWFsNCj4gPiBWUlIgVm1heCBdDQo+ID4gKwkJICogLSBUUkFOU19WVE9UQUxb
IFZlcnRpY2FsIEFjdGl2ZSBdKQ0KPiA+ICsJCSAqLw0KPiA+ICsJCWNydGNfc3RhdGUtPnZyci5n
dWFyZGJhbmQgPSBtaW4oY3J0Y19zdGF0ZS0NCj4gPiA+dnJyLnZtaW4gLQ0KPiA+ICsJCQkJCQlh
ZGp1c3RlZF9tb2RlLQ0KPiA+ID4gY3J0Y192Ymxhbmtfc3RhcnQsDQo+ID4gKwkJCQkJCWNydGNf
c3RhdGUtDQo+ID4gPnZyci52bWF4IC0NCj4gPiArCQkJCQkJYWRqdXN0ZWRfbW9kZS0NCj4gPiA+
Y3J0Y192ZGlzcGxheQ0KPiA+IC0gMSk7DQo+ID4gwqAJfSBlbHNlIHsNCj4gPiDCoAkJLyogaGFy
ZHdhcmUgaW1wb3NlcyBvbmUgZXh0cmEgc2NhbmxpbmUgc29tZXdoZXJlDQo+ID4gKi8NCj4gPiDC
oAkJY3J0Y19zdGF0ZS0+dnJyLnBpcGVsaW5lX2Z1bGwgPQ0KPiA+IC0tDQo+ID4gMi40My4wDQo+
IA0KDQo=
