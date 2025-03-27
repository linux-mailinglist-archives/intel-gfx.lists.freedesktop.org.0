Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AE9A72E3C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 11:54:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCB9010E05F;
	Thu, 27 Mar 2025 10:54:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="npjFIMvi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A224210E05F;
 Thu, 27 Mar 2025 10:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743072864; x=1774608864;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YRw4knsnCB/uyLQ5GOPprDLLJhG54t4s0LfKyK7VLTE=;
 b=npjFIMviHH/v8ToG5A+XeeIbjGb5VFEpesEzsb0nlqgs3B30PtPUXHWb
 G7rEkE6C9QlPHaPPCYlAnZ4L47ncVgWaHZqGDeobTFuUmneW5AoYxvpUR
 6NpCuyZs0ESlAvxpA2PXAefmocYhsEK1MJlWMh8tLFL7Paq3gb++e5UrW
 nnI//I0oY2YHtrATS0HbOpknFerxKENxgdFj4J2P20CegB0VXyZTViaKa
 83Xq9dctsb6lhqxTsiNBjxTQMwHC146i7y4OZVhq5nUbRmqiBOeZvU6RY
 Md+MgEYZPdJXxoyWesNi9NC8t03BTh1U/6II5zaLhrIWQkuNdgXwSE7Yh A==;
X-CSE-ConnectionGUID: XBSEuuNKTACbU7x+R8qJgg==
X-CSE-MsgGUID: P2F/kKx4RoimBUeF16q7kw==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44270187"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="44270187"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 03:54:24 -0700
X-CSE-ConnectionGUID: X6we57dUQKWXE5c2QV2ivQ==
X-CSE-MsgGUID: /T+TahCFTI6DyeofLK0Itw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="125557483"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 03:54:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Mar 2025 03:54:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Mar 2025 03:54:22 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Mar 2025 03:54:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mnzMxgma+7w6QQOI32jlXrvysU4h8h2TBH4H+pgcUmAuo3Cy773MtgawtPj1I3hAK+OyR1abPC4PV1f4TNIlYSLuhA+gKvppKc4Ow5sHz4o3C9OirMs4skV8wMIxU7POEdHQbG52kaLKWpQf3TrBKlmvZaxt+xEE8BI71uXkmC11XSaeIco8eO7wTIihv/P4eQmWJJqM+5TGl+42w1N7QIBLp13he20DWuclTRk0TW87Y46Iqjzzb00lC2zlq9pTpyy2uocXqdgfNUFJgHobp3yTunQdUBXkSeeSWAo2UCecd0PWoah4qi8L7K0LEbfjNsOS/aZqfsv/s0q5fYRbsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YRw4knsnCB/uyLQ5GOPprDLLJhG54t4s0LfKyK7VLTE=;
 b=RFsFvbCr9JvW5Q59ojajdUy9snFQQF3EW6ZLmhjaXBQn6oK9sACOnep6cCqMMLxKw6wNVjk0mZ/z/4jx8FA6xsFCLikdzUiPYtOP8SrhJSqj30tP0xBdDkUZ2B+kClOrOhDxxPJRAaPoFXRzSvLApZt/VCmpgbOiYglWDRFwPr+Rvq4asxXz9u+7VdbUh7KqYoXv8HeTDCSUicepwgruVb5a2XK1GYbSSWmNV1A3BiJIQbIRLnlV7VzFV7SPga8p6Fcqh0VJ7kAIQ+xoFUSp6qizKIHNgAQeT/4HMNmJK99SoBnNGsWF8nbadRR8i32N+GQWwIFaLfzzo3ATvx/oDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4SPRMB0056.namprd11.prod.outlook.com (2603:10b6:303:1e1::21)
 by SJ2PR11MB7647.namprd11.prod.outlook.com (2603:10b6:a03:4c3::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Thu, 27 Mar
 2025 10:54:20 +0000
Received: from MW4SPRMB0056.namprd11.prod.outlook.com
 ([fe80::ef7d:dc3b:4791:fd7a]) by MW4SPRMB0056.namprd11.prod.outlook.com
 ([fe80::ef7d:dc3b:4791:fd7a%4]) with mapi id 15.20.8534.043; Thu, 27 Mar 2025
 10:54:20 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: RE: [PATCH v6 6/8] drm/i915/lobf: Check for sink error and disable
 LOBF
Thread-Topic: [PATCH v6 6/8] drm/i915/lobf: Check for sink error and disable
 LOBF
Thread-Index: AQHbmQZqF9zeAZG14UiE5f8Kyy/7jrOB8YSAgATnKGA=
Date: Thu, 27 Mar 2025 10:54:20 +0000
Message-ID: <MW4SPRMB00561FFA1DCD8E95E66F75C4F9A12@MW4SPRMB0056.namprd11.prod.outlook.com>
References: <20250319191508.2751216-1-animesh.manna@intel.com>
 <20250319191508.2751216-7-animesh.manna@intel.com>
 <c4b90eadc54b9ccbd99cb86ccc3fe92cdc1a20cd.camel@intel.com>
In-Reply-To: <c4b90eadc54b9ccbd99cb86ccc3fe92cdc1a20cd.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4SPRMB0056:EE_|SJ2PR11MB7647:EE_
x-ms-office365-filtering-correlation-id: 9667ba7c-a368-4e36-f234-08dd6d1dba23
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?RmJUK2pKTXlzZHNNWTBweDVwWUxQRXI3aVJoVzdEVFVFbER4WjNZWExMV2Qw?=
 =?utf-8?B?Z2RHV1NxK3BhWWxaai93WUtKYWxDb3FROXMxQXpnUGZsTkFmMUtkV2xpUFR0?=
 =?utf-8?B?NDZMNnQ1bE1SZGZWRmp1dHIycDJjS0s1Um9CVThYQXhER3dKZ0lTNnY2UXVi?=
 =?utf-8?B?UFRRU0JPaWZYaVk1VW9rN3ZKbFptN3JDQjR0eU1jTi9xWUwrN3NzRFB4bStF?=
 =?utf-8?B?NFYwRGlvdmc4cG5nOFBmRTFPQTNSbzlZNE5ud2xsVlQ1dUdNS1BJRVJ5Q2xD?=
 =?utf-8?B?RE8wTEVtZnpnN21LTE9QK25Bckh6VFVib2tHVmJwNGdycm5UcGoxNnJEMkFz?=
 =?utf-8?B?bkJwRnVaWUlyNlZEQU1ySk5FUWoybWtVbFR1Q2wyQUVTQ0t1MHR3c1JRMmhm?=
 =?utf-8?B?N2hvRGhMaTRITmpBVXZoZVpIcVo0Q0NlUHNodVpTUkNFdHVaUGloMGFjVlpy?=
 =?utf-8?B?cWp4ZzBnNHNSeVB0RzJsZUhQN0dNWWN6Q3FVb0thZXhOdFlKei9qZ0tRbm52?=
 =?utf-8?B?TVNtNjhpanlDYmZ4ajcxeWxHNGZZOXdaWm9SRi9pcVF1QTFHcXJRSUIwUTRQ?=
 =?utf-8?B?Szl3OG9jVExJeGNmR1hIOWExR3dZRXZ6eHd0dE1HVUx0ekt6QlYwamlxN1BS?=
 =?utf-8?B?TWZ5TTRsTUtJU1dtclpwc29LaUswQkYvWEs2SXJkT1VKdVg4bFB3M1FWOHNq?=
 =?utf-8?B?VDZaSlpyai9aa1VRRnVxcXBFdUk4VGRaVCtGWm5naUdwL3E3MGxMVm9FcTN4?=
 =?utf-8?B?bm55ajJid3ZXUVlQMzcybE1rcC9JTDlSSHpyM1JRcHZVRFlmcGxhTlpDVHpk?=
 =?utf-8?B?L2ZLQ0g2UC9QUzVmTldzKzFBZnpqcTQrZUtweDJFMHJiQ2tzVzBhT1NVa1kr?=
 =?utf-8?B?LzV1b0lVakQ4NHduTkIxZzdlUTlEbG8zVldncHdvL2Z4WG1Rd1ZvNG5pUjI0?=
 =?utf-8?B?cTl2dkJKVUtVYTFveXF2RjZNZDdhaVRXU3hhUEwxUWVJQjBTN1hBdThyM1Uv?=
 =?utf-8?B?UEswTHlqaW1Gd2Y1citwTW5OZXAyRUJES09vSFhaTHVXRFFyYVJJdGs2TXo0?=
 =?utf-8?B?dGlDTGFGcmtibFFPcE9YTElra3pHbUtEc25MQmcvVUNqM0xOMWR3U2oxVFQ5?=
 =?utf-8?B?VjhMV0dSV2c4Nng1d0wycStVUGIrZERKOFltSDdRMDNIbWhUb1BzeE9NZE1p?=
 =?utf-8?B?K1NRNVVISGtjblRuTEVQVmRzbXJjNWRVY0kvbEpiWGk4c3FoZ01TanIwVmta?=
 =?utf-8?B?T0lFNy9odVRoMWdDaDJ4VEsxYncyTUtjdGNWc3pGWG9XYy9MZERLSWVCUGk4?=
 =?utf-8?B?dXVXL1JpY2VHaU0xR2VPT2Q2QkE4QUZYNkZnaW5Gczh3dFEwR1FWb1QybFN2?=
 =?utf-8?B?cHpDMmhsYkxCbXg4RUU0cFNDVmkwTWRqWk0rb0VML1duNzI3SEtObnJsU3JN?=
 =?utf-8?B?Zy9HNG9EN0U0aGVJUXJTU1d1NWJOVkgwcExzTUpaaTk2UVFhZ3dkQWxrNEhn?=
 =?utf-8?B?eU5LbmpFajZ6ck5MckhtZkx2VnFDdms2NlFlSDdsM09iLzZURmxNdEt0cVM5?=
 =?utf-8?B?UHpSUFlNcHoxSjJRR013OWRTMzJDV2RDQUR4MDVJTFZoYlBwby9GeUdjdUxs?=
 =?utf-8?B?Q1ZHdHhSTVZlVXFkN0JXemR5cEZBVGpVOGVSYTJHQWxoNmtLK0h3d3hQNDY3?=
 =?utf-8?B?M1dwZnJLVHQyK0RlVWhIY08vUkd6VHpTdXMwbWkvdFl3MEhWYlBPQXNZY3RV?=
 =?utf-8?B?VThySkwrWm1hRkpWN09MU3ErWlRDZnFTeU5vcHNhdTJhYzF4VnZRY2RVYWUr?=
 =?utf-8?B?cGhPSDV3ZGY1RXl2NU9IUFd6cWxQYkJnVXRHUlQ0dytnU1VhaGQzdUxMckV0?=
 =?utf-8?B?QkI0bi9KMXpGQnl1VndJQUlGS3M0MmdiNU9PT2hERnJ5QVhLWmFsdFJ5RTlE?=
 =?utf-8?Q?WA52T8+eCnNkAW8EViYTg1cnfs80eYs/?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4SPRMB0056.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VTVkTG96MW9ESmtabjFNdkh2RW1pcCttSnhHS2dhZEU0UktQVkRHZEx2RmpX?=
 =?utf-8?B?ZFlyaEJNanJjQmY5Y0ZtRVVieFI0VzRFWEZaL1FiL0JUdWpZbWJNRGhSN3lk?=
 =?utf-8?B?NVNHL3pHbFBxS0Y0V3U5M1VPUVdVSEs5SDE0ZEd1SkZpQU5SODdwYlE5Y3lK?=
 =?utf-8?B?SGZWSjV1dGl3QU9VSVphb2ZVRVZTai9pengvQ3JBVk1XQWlUdmpZL0lwM2p6?=
 =?utf-8?B?dk5ZUVFtRUIvdm1PS3YzS01CNWpqZUZaM1oyUVpscUFtdnBmTEpxaTFRbDRV?=
 =?utf-8?B?TkpweGNPbVFyNzRFS2NvTktHMkhKOUJsa3VVKzkwSGZDSEV4dWJoZThaSUx1?=
 =?utf-8?B?VTlXSzMzY29obFNrYUVBQ2J5SlAwemt4Y2M1aVZnRzBqRDFWU1FobWQ0ZVdW?=
 =?utf-8?B?bjFNdUQ3eGJyeTh2WE1WRUs5L3czSGhLQ0daY0dQQ09ieWlBTVFudUMzY1hG?=
 =?utf-8?B?RVZDRXR0NmczTk1PRWxwUW50MFEvTHFZTjNkN0w5THZWYll6ZUZSTlpaYnZF?=
 =?utf-8?B?eFl1a044RkErNzlzQUo5ejhMRlpSQWxlSHg0UW8xeE9STzA4VnZvZmJDTDdC?=
 =?utf-8?B?cVo4SzlqeWZjQm9Sa1Jic3dIUjZtZVRMbjdsekNIc2tROXpBcDRUMTAvL092?=
 =?utf-8?B?NmlLOFlZVW9IdXB3STg4YjdYOTVmTHArYjlWaUh5YjBJbEVPcDVhRHpQU2x1?=
 =?utf-8?B?d1pBM0xhNjVYVno5WE1QOTBIOWkzYUQrS1hqck5CWjdTcWZHZERkMEhjRllF?=
 =?utf-8?B?emFPNURSOVVtcVZGSC9yTDl4RDFnMjR3aFNTejZwYnlPRGJ1QVVFdHV0UDVB?=
 =?utf-8?B?dUo4RW1rZXFCS2Q3OTM4eEx1S3hGcFZFVWkyaktVenZyaTNmWU4vbDE5T09j?=
 =?utf-8?B?KzRML2dWNC8vanc3YmxyNS90M1lldlhUQUJRS1NKSFFRbi9aUG1oV2JDcjhE?=
 =?utf-8?B?VjJiZlFYTE95RjkxT2RVQ2R5aEJwTmVOWEE4UElheTVLYkp5SERNa3U5dktT?=
 =?utf-8?B?UWU0d25DeVg2TlhMVE1nMVdJZHdUR0xwTmpiK1VocHdxR3AvblMxNTFNQ3V2?=
 =?utf-8?B?bDAyZ3hPYlhGK2haVGFSNXVVeHh1UHpqREtaODBiYnFtTnVSY2J5OWFTOUl2?=
 =?utf-8?B?U3BLVzFhcVd4UkZXRGdyblR6Q0U2dEQxMHJFSnJ6UzZsdWZ6V3dRalNpQWpa?=
 =?utf-8?B?ZHBadCtvV3RQNzRVdThYd2FJbUZZOXRpdVBCN0Z0L0pFWU0raWh2TFZNSGUz?=
 =?utf-8?B?cUFhS1FEM3lMTlBCR21STE1OeWhLMjkrNmU3NzZiTjd1TlhtcTl4VzZoZm1m?=
 =?utf-8?B?WlJGdU4zSEFnc2ozMnRhcXBtNjh6ckFuc0s2RGpub2h3aFZHcDhTNEM1WGZX?=
 =?utf-8?B?Tkd6RE45ZC9tWDRvV2tCdWF6ZC9wUyt2bmgxc3grWm1GcHZlSWtqUTU2WUFH?=
 =?utf-8?B?ZkNpN1oyT2pkQ0dDK3ZQQnlJQ0xKdjMxbUtTd3RsSW9teTNHS0luRjNTaCtG?=
 =?utf-8?B?VlZOeXRPVnpTazU5d1ZmOExVejBaSWFSbENKY0tLL2M2cGJrQXpiS0FaMmpP?=
 =?utf-8?B?dkRmYUl6OXF4cVpIYUdFSjI4ekdWU2F4NHJ4cmZZQ2h6dHZFUFVRZWwzRVo3?=
 =?utf-8?B?UEdTaDQ1cnNxU1BFdncrV243ZWE3bzIxNy9NRnE3cDFnYml3dGpBSldNYks5?=
 =?utf-8?B?R1oycmZ2MTFuNmk1eE9USEFDZ2VWcDJhMlJWampwWFU4QjJpMzR2RFhMVE5B?=
 =?utf-8?B?S2F5NDlEVzZQOTllanFNMk9BV2xkWjF6cWx6MHZobXF6eVlXaTlyUmRnNmhS?=
 =?utf-8?B?NWFwYVljTVBSbWlZbXZubVJncEU2NFBLS1paNkpOK1F2ajNGZWZYU2IvZ3VR?=
 =?utf-8?B?S0t3eTRxMWZtRVhxL2pVUjRWTkNvMkl3QnpDSlRUQ29qVjJHTkVzQ0diOXB2?=
 =?utf-8?B?a1VHUDc0WEo2NzRYV2Uwc1d3TEtMZEh6OHp4ZmpSWWdQcW45dS9rNXNaQk1w?=
 =?utf-8?B?VEFURkUyU3VQNkFQZk5KNzFhRVd2K054MnkxVGpabjFHVzBOeVJzNmNIdlBh?=
 =?utf-8?B?TzUzbHlpYmpiQWxFdCtqclZYQXphVE0rbTJ0U1l2Zjl2MXRvNHlYcDJ2eDRo?=
 =?utf-8?Q?quei75z51Fe5NFG2aG4DL1Vto?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4SPRMB0056.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9667ba7c-a368-4e36-f234-08dd6d1dba23
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2025 10:54:20.0373 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4Du5vHtyx9ZNMJKwnY3OWDK0iRymlQDvwKIIBeU24AOIln8uV4G/Y8OOwc2iJoXpntnzDXkBPlgLziAuY26qUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7647
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgTWFyY2ggMjQsIDIw
MjUgMToyMyBQTQ0KPiBUbzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBNYW5uYSwg
QW5pbWVzaA0KPiA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47
IEIsIEplZXZhbiA8amVldmFuLmJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY2
IDYvOF0gZHJtL2k5MTUvbG9iZjogQ2hlY2sgZm9yIHNpbmsgZXJyb3IgYW5kIGRpc2FibGUNCj4g
TE9CRg0KPiANCj4gT24gVGh1LCAyMDI1LTAzLTIwIGF0IDAwOjQ1ICswNTMwLCBBbmltZXNoIE1h
bm5hIHdyb3RlOg0KPiA+IERpc2FibGUgTE9CRi9BTFBNIGZvciBhbnkgZXJyb25lb3VzIGNvbmRp
dGlvbiBmcm9tIHNpbmsgc2lkZS4NCj4gPg0KPiA+IHYxOiBJbml0aWFsIHZlcnNpb24uDQo+ID4g
djI6IEFkZCBjZW50cmFsaXplZCBhbHBtIGVycm9yIGhhbmRsaW5nLiBbSm91bmldDQo+ID4gdjM6
IEltcHJvdmUgZGVidWcgcHJpbnQuIFtKb3VuaV0NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFu
aW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMgfCAyNw0KPiA+ICsrKysrKysr
KysrKysrKysrKysrKysrDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2FscG0uaCB8wqAgMSArDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmPCoMKgIHzCoCAzICsrKw0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuY8KgIHwgMTggKystLS0tLS0tLS0tLS0tDQo+ID4gwqA0IGZpbGVzIGNoYW5nZWQs
IDMzIGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+IGluZGV4IGRjMjQ3NzI3NDNi
OC4uNTYyZjcyNjlhNTgzIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hbHBtLmMNCj4gPiBAQCAtNDk2LDQgKzQ5NiwzMSBAQCB2b2lkIGludGVsX2FscG1f
ZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHApDQo+ID4gwqAJaW50ZWxfZGVf
cm13KGRpc3BsYXksDQo+ID4gwqAJCcKgwqDCoMKgIFBPUlRfQUxQTV9DVEwoY3B1X3RyYW5zY29k
ZXIpLA0KPiA+IMKgCQnCoMKgwqDCoCBQT1JUX0FMUE1fQ1RMX0FMUE1fQVVYX0xFU1NfRU5BQkxF
LCAwKTsNCj4gPiArDQo+ID4gKwlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJEaXNhYmxpbmcg
QUxQTVxuIik7IH0NCj4gPiArDQo+ID4gK2Jvb2wgaW50ZWxfYWxwbV9nZXRfZXJyb3Ioc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCkgew0KPiA+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3Bs
YXkgPSB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gPiArCXN0cnVjdCBkcm1fZHBfYXV4
ICphdXggPSAmaW50ZWxfZHAtPmF1eDsNCj4gPiArCXU4IHZhbDsNCj4gPiArCWludCByOw0KPiA+
ICsNCj4gPiArCXIgPSBkcm1fZHBfZHBjZF9yZWFkYihhdXgsIERQX1JFQ0VJVkVSX0FMUE1fU1RB
VFVTLCAmdmFsKTsNCj4gPiArCWlmIChyICE9IDEpIHsNCj4gPiArCQlkcm1fZXJyKGRpc3BsYXkt
PmRybSwgIkVycm9yIHJlYWRpbmcgQUxQTQ0KPiA+IHN0YXR1c1xuIik7DQo+ID4gKwkJcmV0dXJu
IHRydWU7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJaWYgKHZhbCAmIERQX0FMUE1fTE9DS19USU1F
T1VUX0VSUk9SKSB7DQo+ID4gKwkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiA+ICsJCQnC
oMKgwqAgIkFMUE0gbG9jayB0aW1lb3V0IGVycm9yXG4iKTsNCj4gPiArDQo+ID4gKwkJLyogQ2xl
YXJpbmcgZXJyb3IgKi8NCj4gPiArCQlkcm1fZHBfZHBjZF93cml0ZWIoYXV4LCBEUF9SRUNFSVZF
Ul9BTFBNX1NUQVRVUywNCj4gPiB2YWwpOw0KPiA+ICsJCXJldHVybiB0cnVlOw0KPiA+ICsJfQ0K
PiA+ICsNCj4gPiArCXJldHVybiBmYWxzZTsNCj4gPiDCoH0NCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+ID4gaW5kZXggOTFmNTFmYjI0Zjk4Li4y
ZjFmYjgyYzBhYWMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hbHBtLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2FscG0uaA0KPiA+IEBAIC0yOSw0ICsyOSw1IEBAIHZvaWQgaW50ZWxfYWxwbV9sb2JmX2Rl
YnVnZnNfYWRkKHN0cnVjdA0KPiA+IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKTsNCj4gPiDC
oGJvb2wgaW50ZWxfYWxwbV9hdXhfd2FrZV9zdXBwb3J0ZWQoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCk7DQo+ID4gwqBib29sIGludGVsX2FscG1fYXV4X2xlc3Nfd2FrZV9zdXBwb3J0ZWQoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+ID4gwqB2b2lkIGludGVsX2FscG1fZGlzYWJsZShz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gPiArYm9vbCBpbnRlbF9hbHBtX2dldF9lcnJv
cihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gPiDCoCNlbmRpZg0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IGluZGV4IGEyMzZiNWZjN2Ez
ZC4uM2YwZmEyMjM4YWZhIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYw0KPiA+IEBAIC01MzU4LDYgKzUzNTgsOSBAQCBpbnRlbF9kcF9zaG9ydF9wdWxz
ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiANCj4gPiDCoAlpbnRlbF9wc3Jfc2hvcnRf
cHVsc2UoaW50ZWxfZHApOw0KPiA+DQo+ID4gKwlpZiAoaW50ZWxfYWxwbV9nZXRfZXJyb3IoaW50
ZWxfZHApKQ0KPiA+ICsJCWludGVsX2FscG1fZGlzYWJsZShpbnRlbF9kcCk7DQo+ID4gKw0KPiAN
Cj4gTWF5YmUgeW91IHdhbnQgdGhhdCBlcnJvciB0byBoYXZlIG1vcmUgcGVybWFuZW50IGltcGFj
dD8gVGhpcyB3YXkgTE9CRg0KPiBnZXRzIHJlLWVuYWJsZWQ/DQoNCkkgZmVsdCBzaW5rIGNhbiBy
ZWNvdmVyLCBjYW4gYmUgc29tZXRpbWUgY2FibGUgaXNzdWUgYW5kIHBlcm1hbmVudGx5IGRpc2Fi
bGluZyBtYXkgYmUgbm90IHJpZ2h0Li4gDQpCdXQgSSBkb27igJl0IGhhdmUgYW55IHN0cm9uZyBv
cGluaW9uIGVpdGhlciB3YXkuLiBXZSBjYW4gaGF2ZSBlcnJvci1jb3VudGVyIGFuZCBtdWx0aXBs
ZSBlcnJvciBjYW4gbGVhZCB0byBkaXNhYmxpbmcgcGVybWFuZW50bHkgYnkgc2V0dGluZyB0aGUg
ZmxhZyBsb2JmX2Rpc2FibGVfZGVidWcuIFN0aWxsIG5vdCB2ZXJ5IGNsZWFyIHRvIG1lLg0KQW55
IHN1Z2dlc3Rpb24gd2lsbCBiZSBoZWxwZnVsLg0KDQpSZWdhcmRzLA0KQW5pbWVzaA0KPiANCj4g
QlIsDQo+IEpvdW5pIEjDtmdhbmRlcg0KPiANCj4gPiDCoAlpZiAoaW50ZWxfZHBfdGVzdF9zaG9y
dF9wdWxzZShpbnRlbF9kcCkpDQo+ID4gwqAJCXJlcHJvYmVfbmVlZGVkID0gdHJ1ZTsNCj4gPg0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5k
ZXggMWQyMDJmMmViMzU2Li4wOWQ0NDAwODQ2NzEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtMzQwNSwyOSArMzQwNSwxNSBAQCBz
dGF0aWMgaW50DQo+ID4gcHNyX2dldF9zdGF0dXNfYW5kX2Vycm9yX3N0YXR1cyhzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwLA0KPiA+DQo+ID4gwqBzdGF0aWMgdm9pZCBwc3JfYWxwbV9jaGVjayhz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+IMKgew0KPiA+IC0Jc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gPiAtCXN0cnVj
dCBkcm1fZHBfYXV4ICphdXggPSAmaW50ZWxfZHAtPmF1eDsNCj4gPiDCoAlzdHJ1Y3QgaW50ZWxf
cHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4gPiAtCXU4IHZhbDsNCj4gPiAtCWludCByOw0K
PiA+DQo+ID4gwqAJaWYgKCFwc3ItPnNlbF91cGRhdGVfZW5hYmxlZCkNCj4gPiDCoAkJcmV0dXJu
Ow0KPiA+DQo+ID4gLQlyID0gZHJtX2RwX2RwY2RfcmVhZGIoYXV4LCBEUF9SRUNFSVZFUl9BTFBN
X1NUQVRVUywgJnZhbCk7DQo+ID4gLQlpZiAociAhPSAxKSB7DQo+ID4gLQkJZHJtX2VycihkaXNw
bGF5LT5kcm0sICJFcnJvciByZWFkaW5nIEFMUE0NCj4gPiBzdGF0dXNcbiIpOw0KPiA+IC0JCXJl
dHVybjsNCj4gPiAtCX0NCj4gPiAtDQo+ID4gLQlpZiAodmFsICYgRFBfQUxQTV9MT0NLX1RJTUVP
VVRfRVJST1IpIHsNCj4gPiArCWlmIChpbnRlbF9hbHBtX2dldF9lcnJvcihpbnRlbF9kcCkpIHsN
Cj4gPiDCoAkJaW50ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKGludGVsX2RwKTsNCj4gPiDCoAkJcHNy
LT5zaW5rX25vdF9yZWxpYWJsZSA9IHRydWU7DQo+ID4gLQkJZHJtX2RiZ19rbXMoZGlzcGxheS0+
ZHJtLA0KPiA+IC0JCQnCoMKgwqAgIkFMUE0gbG9jayB0aW1lb3V0IGVycm9yLCBkaXNhYmxpbmcN
Cj4gPiBQU1JcbiIpOw0KPiA+IC0NCj4gPiAtCQkvKiBDbGVhcmluZyBlcnJvciAqLw0KPiA+IC0J
CWRybV9kcF9kcGNkX3dyaXRlYihhdXgsIERQX1JFQ0VJVkVSX0FMUE1fU1RBVFVTLA0KPiA+IHZh
bCk7DQo+ID4gKwkJaW50ZWxfYWxwbV9kaXNhYmxlKGludGVsX2RwKTsNCj4gPiDCoAl9DQo+ID4g
wqB9DQo+ID4NCg0K
