Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B1CA5ED8F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 09:07:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06DE110E2DA;
	Thu, 13 Mar 2025 08:07:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="POLLsRU6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E7CB10E208;
 Thu, 13 Mar 2025 08:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741853218; x=1773389218;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nq1XmIM6sXnN0ukTlcg7xL3GSBvneP5Vdc1l8dGMa68=;
 b=POLLsRU6+C2RUgk5Ip3w+9iaGsWe8Ccj9SQDHd9kYTZYnU/CtZ3t3u9d
 ejmqeO2+vH0sC0GM25mSQrLmATnfIRHThaU+LkptYqDnspC15ukWDkYFH
 ff77Y6i4zvQQh8lj8EAWGf8cwTLzRIt/iO4VR7K+5J4Vg1CNMxJSLZDHg
 YGUKM109Z0kFRGwB6/pFaDV3JjNCFTRlrjnJAGr74i1X3LrvFGz4ZPplL
 /ubaNysii58Amw8YkWRJEfUD+VPasoBaEfiuwWLIeJJkD5qwY/s+CoPQ9
 YouWMu8MA0ZkNcSp3Vfk7kdwY6iCTGdDlO/F7GhvbObjRnE76dPczzr+1 g==;
X-CSE-ConnectionGUID: Yc597aJyQsu4kziDk5HZgA==
X-CSE-MsgGUID: vVOxWA+6TTCx7pv0l/TZ1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="65415906"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="65415906"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 01:06:47 -0700
X-CSE-ConnectionGUID: vv5vMXbRSCq3Iv9a4BqMxw==
X-CSE-MsgGUID: 3FV8FPCCRcaUlofF24ogFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="120939243"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 00:56:46 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 13 Mar 2025 00:56:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Mar 2025 00:56:45 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Mar 2025 00:56:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZeqIbpfwm4XPFciOrvDqMhFGsaqgRVEFKu2qq4vo+Agay4mvEnlY+crWO7gG7zaYIShvwfSi10J6/xJmVT2pdj7J7ScRerwzTcwGBkh6iE9v/eHvmNLlpFlgPHXt1Ic9glFlFoAqD62MepWq39GxMxC4IUtfS2X+u64OyLwUBGKYXb4rG5tVoXjy+8mbe9h2IILLn7W6wOelKkgCtoTL0/72PuAy0V0SNHqVrW20WlW69+Pi0U+f01ymrEDBaTW361QKHHPw45ghHiVsHfOvQ2104q3D7drbJTcDgs9KTCEu4DQE4zJnPsJrF5RS60nkWrJmFE3K2bZy0rVmApTGqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nq1XmIM6sXnN0ukTlcg7xL3GSBvneP5Vdc1l8dGMa68=;
 b=m5yIwwRKROmV3hN8lYK22hVWZ/Inq5sk+alqwngPuP7CWCD6/NJjgiHHKd+0lyrN9cHUtPuwzuaRakMs1+STA7QJ4vhSS3f0uMButTs5Nmmw1xdYuahF/ZoIBVe7ann5hlgcgAlarqKDeWnMA04USgPwuxDG0AyqefZkJiT6E7g2AxYJy2kXmXUzZyYF+o2xJNpvKpGS5W8MIyujO0NZ+aHgKASiXNSa4lqJZADSRu7Mjr5S/cVzk+fKe99eIiq4Ro3/4A07ToUEc4gVUaJssPeZH4FDIDZN3VK47HoqlDyHYWPgnpQEY+WdK8f+DDHWtvbkNKp/B+sh2432FwPDqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by SA3PR11MB8118.namprd11.prod.outlook.com (2603:10b6:806:2f1::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Thu, 13 Mar
 2025 07:56:38 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%6]) with mapi id 15.20.8511.026; Thu, 13 Mar 2025
 07:56:37 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org"
 <i915-ci-infra@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUveGUz?=
 =?utf-8?Q?lpd:_Update_bandwidth_parameters_(rev5)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS94ZTNscGQ6?=
 =?utf-8?Q?_Update_bandwidth_parameters_(rev5)?=
Thread-Index: AQHbk1yZ5FeIa4Up70aK1f6t8Cu6F7NwsgjA
Date: Thu, 13 Mar 2025 07:56:37 +0000
Message-ID: <CH0PR11MB5491C2BC6150B58FE0C0ABEAEFD32@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20250311-xe3lpd-bandwidth-update-v5-0-a95a9d90ad71@intel.com>
 <174171875506.21135.9191847260585353600@18a75f3d1eae>
 <174179035039.12216.8847758045405082047@intel.com>
In-Reply-To: <174179035039.12216.8847758045405082047@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|SA3PR11MB8118:EE_
x-ms-office365-filtering-correlation-id: a523ce19-0f0f-4cd3-9306-08dd62049530
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|7053199007|38070700018|13003099007;
x-microsoft-antispam-message-info: =?utf-8?B?Sm8vN2Rqa245dm9HNGdVaVR3VzYxV2huNS92Vkd3Z0ZNdkhSRlJSUHdmRnNE?=
 =?utf-8?B?UTF1dXgzcnF2V0NLZXBJeG12cDJMaFJlMFRydFl5ZS9DajRtZzBNLzVXcy8v?=
 =?utf-8?B?TmJrUjB3cTdLbmhXVVFhMFpJZUlaV3JLMlpYQXlXZERLNGlsVnRpdGxFMjFw?=
 =?utf-8?B?dFdVRUs5YVB4MEJ1UkRxYWpyMHZUM1NIaHNta2xKVnd1L0JnN3Nod0RlWlVq?=
 =?utf-8?B?eHZ0MlRmeUVoa1VUb3pFN3RQaGtxS1U0S3NsejM3Z1hUWXB1elVIWFRwTDRE?=
 =?utf-8?B?ZmdTRWdlUVh0bExBTW1MMHJjeE9uZXk1Y0pZZGgyZW5PVjdKVXliZXFsVk85?=
 =?utf-8?B?N21NZmZtbDU1a1JyMlJpbzNNQjFYcytTRDI3VU1jOEJvVk9sa0ZOTDd5dDJ1?=
 =?utf-8?B?bWpKZlEreC9JdkJmeVBXQWZ0RVRndEJkM1VpR1Fzc1hWdHIzcmRDU01aRkR6?=
 =?utf-8?B?Rnd0TlFzWE5FdGpUYVg4MUlORk9aeFA5T3hHM2kxdC9DVjR5UkF0czVQbm5h?=
 =?utf-8?B?L0FQekxrdkttRHRERDBRcWFvVVFLRjJaTDJReHluTGpZbkVPM1JHdGhLdDdY?=
 =?utf-8?B?aDRoMEN6c1BnWW10SE9jQkRxU2p0TGNjUmZQMjJoRGxNYWR4QXRWMXNRVTF6?=
 =?utf-8?B?KzkrMlY2aitRSno2T3JQN0NkbWU1aWQ3RFJTQnM2UzR2aFpydkNhUVo3MFZB?=
 =?utf-8?B?QlJhWkM2ZWlTd29ORTZlZjEzaGNVbWJtUDhTNEFjVVlNWCt4bktoQW1ESjBX?=
 =?utf-8?B?ZkQ5NXlLcnoyRjI2Zk14WnQ2V0pSOGMxY3VrdXk5ZldLR2x3SmtDSUF1dFBQ?=
 =?utf-8?B?cWwrNDFldzRvTFN1c3RNQWFBeENxSDlHU1Q1Z0ZKSUMvTTZ2WGtJc1JxODl4?=
 =?utf-8?B?Z3YzbjJqeTZLZlEybGQ3Znc0YVVJL1E5UFM0NWFtTGpXVEw0V0NCZHNwYS9a?=
 =?utf-8?B?YTYwV1ZYeklhMmllbTZTZ09MOGlCL1A5WlFtUll5TWk5U0d1dlZBRXROdTNi?=
 =?utf-8?B?V2gvZm94NEExdUxEYXY3MUNLVGFNaXVOU1liSVBUdGhRK21xdWxjTDBEU05o?=
 =?utf-8?B?cEVGcEUwWlNpVWROczc3S3FPUU50a3FDUm9rSW9LRVk4dWhtQWFBNlpQYlM0?=
 =?utf-8?B?V2RiSnI5TEh5N2grcDR3dWdrem41RzdGZ05FcjN2K0RKNTBlamFhMXhrRzZ6?=
 =?utf-8?B?c2d6RTBhS0pqMU9QUVA0aWhFd3djU2ZOYTJOUlNGOHcwL0R1WEVYQkR3N2pj?=
 =?utf-8?B?U3lVdW85UXZRSHRpMXU1cUNOMjc3MFpNNEN1KzY2cmg1c0dyZVVUQmhjMUxJ?=
 =?utf-8?B?ak83WWUrS01haTRCOWlVSEFHbXdPM0VWNEpDUFBiUldkVmNqSFp5NThXbzFU?=
 =?utf-8?B?T0J6aUJRbHZ0TnNodGNWeUlZN0VVN1REQmxqNmVJQjNhMCsrbkxTWmVhcEZH?=
 =?utf-8?B?S3cyL21jYjI3Y2s3K1ZjVWNCTnB0WHVzcXR5KytOSDJ6Q0pPeW5TY0pCK0RL?=
 =?utf-8?B?dmVhZkR4cFZobHBHdDBPWk1NWi9vN3htckFtT1RYa0kyTzVPN3ZGb1IrcGlv?=
 =?utf-8?B?czloV25lc1Y3bE5LWmpEN2NVZTlVUXVxalY2cGkyWmY4VVdoSWx3V3R6UW90?=
 =?utf-8?B?M2t6bXphN1IvVUN0d0hiWE15clk3RVl1dUh1NkR6NE95UGpaWGtHMTA0LzU5?=
 =?utf-8?B?ZEp3a3ZiMzdlQURQT3RBWW1hOHdMVEdDS0ovRTQ4ditaSmlVTVlJYUFJOXRH?=
 =?utf-8?B?czJpcjh5SFQxNWFpSER2RFpMeW9SQWc5a1p2cWFsSkV4aG5xVjZlQzJqRGdX?=
 =?utf-8?B?cGVIVFhPY0t0cUJMc09sUldpWWJpWXFLZXpqd3JxWFhIaGYzYmpWU1EvY2ND?=
 =?utf-8?Q?9f1OkSGG51pLl?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(7053199007)(38070700018)(13003099007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M1BFZ3YvRzAycHUrSDVKMUxnS29xWmJSWm1zRlluVkprUmtRTlpCWkpRQ3Fo?=
 =?utf-8?B?bzl1NU8wb25tTmhBSzdwaEYzcmgrem05WHJlMWdyYnJwL2tUcXYwNTl1U1p1?=
 =?utf-8?B?Qk9WNnBGV3JLTmtybVhlYm1sQnJCWUNUL3JWN0dYV0xySHc3NG5EV1JLTTNT?=
 =?utf-8?B?U0pvNmNFN3VITTB6eWE0dm54YURLdXdTVjBodHBOeHEvY2owcVFVZVpsVzNy?=
 =?utf-8?B?ZU83SzdKU3NYYjRUVXBudDZLZThSSjAyKzQ2emROdVNhckpzelVDSHJQUWtN?=
 =?utf-8?B?N1NFZk9ha0xzcmdtTUhqZG1wTWNrUDJ5T2tpMVJuYUdYbnlIZU9OcmYwM2hI?=
 =?utf-8?B?VjZCWjJDRDJmQlRBeVpIRE9BbWdBYW1pKzhReWZSMjBlemNlVVpOZmhiNCtZ?=
 =?utf-8?B?bFI3Sk5HT3g3V3dlN1JudnNTM3Rxbk4yZnhieVREZHlHMVdCa1FNdExhQWdV?=
 =?utf-8?B?KzM4VmNsWUlJZG1EUUk5TDAzRFk4YjNURU9OZ2dHYUJkOXVMY0VwV3NtbFN4?=
 =?utf-8?B?SXdXZ3lwL2lOanpHeXJtR1hnM3VaSTF5OVZncXE1RngvNkVNWTBMem9UZ2Jh?=
 =?utf-8?B?THRUUTZ2bS9Eck9KdklqR05mcFhDL09KTTlGQTUyeEJTWEp6YlE3QThUcWFC?=
 =?utf-8?B?NjUwaDNXYjU2QWVpWjJtY2E0a0Q2SzltTDEwcjl5K01XeG4rYmRsRHY0UVo2?=
 =?utf-8?B?cmxZSUk5cEZEc3ZHWUZXNUgwWTdWamJjQlI0dHZac0tTdW9nN1VBOWROR3Ja?=
 =?utf-8?B?bkN4NWRUUWt2dTJFVUVVTFZRaWQrMzRhd0FxaS80WlFCdFJJZmtKSnpVcndu?=
 =?utf-8?B?RG9RMkF6bDk4Z1pyMFlZZnlnWlFjQ2dYRXltVjI0aW9IQVNjMkFxUWpodGtI?=
 =?utf-8?B?c1JQZ0FhM21QVWFmTk0xbjd6VW9iWEJXQjhPOEQwWTRmMzEzZXFMRmlWczRM?=
 =?utf-8?B?UktVUDZPZHJSNjd2b3laNXZ0Qk9hU0V0OHN1OEp5KzBKNjc1aUEvRE5hb0E2?=
 =?utf-8?B?OG5GdER0M2FwVzhsTjRTY1huTE1DdVlmb2w3OUlZQXN4aEdySDJ0cEJ3d2da?=
 =?utf-8?B?RWgxU2ZaR0N3eFA3VGFRV2J1QnpKQVFCRnR6akdRU0FEc01Icy9oNW5tVVpU?=
 =?utf-8?B?Qy9WK0VxclNtOFo4OVo0TVdkdDlYMmZwVWJON2xIVWlnRzZ2RmwwQUFHRVhN?=
 =?utf-8?B?MTQ3ZWlBclRNcFNuQzMydnVYamg1ZHZUd2lyVVJoSVF6Nlc2NUh0V0dlNWw1?=
 =?utf-8?B?ZHRpWmZjL2JVSityR3lHQmpZL29Ma0N2UGI4ZFA2aUJXZUhxSlorUlVGMVZ2?=
 =?utf-8?B?ZUtIUHBiNGdCNEZFQkltbisxMU90MkpKZzIxQU9tVGxtZjR1dXRJU1h4ZTh5?=
 =?utf-8?B?S0hpczc5eTVSUDUvaDQ5T2ZBOVoweFpod0plNjZ1aXlvN0JidkVOWUdPakN2?=
 =?utf-8?B?c0JBenBzd3JwMWtydEhOT2NjQko4Ny9QUnBZdEVEcXN5dmxSWE1RYndXTytC?=
 =?utf-8?B?T0lDVWNERnp5dXIxeno1eXVIQjFrcmFiUGhVOGkwUllZeC82V1JnRTVrb3lW?=
 =?utf-8?B?Nlk0L3IwK0wzbGxsdmhsOHRuOEVHWWZiZ2hJNVBSQ1ZVaHYzeFZuaU5FUEhp?=
 =?utf-8?B?Q3hnNFlrY29FZldFNnVCVGNWNmdJbHRtSGNDc2pkeVBPR3U2VGxWTVB6RUJV?=
 =?utf-8?B?ejNQd2tyM1BYWnJhY09qemU1WlkwK2h2Ni8yalBkTlArOWFqUDdOcHVuLzc1?=
 =?utf-8?B?eVpnOS9zalpXOWplNnl1WTloaWR4WS9ncDVhVXpOeFliRHVpS0ExR0VaOXFh?=
 =?utf-8?B?Rmp4TjRuLzZRNklJa0hvYTB3V09DUlBDM2hJRXJKMkdhcVJRMldaZTU1SFN6?=
 =?utf-8?B?T3hTelkxWjFRMFFsM1lIOVJ1bVBHM2dOZmdDYXFGeWxmYzVoNDVrRVo0ZlFB?=
 =?utf-8?B?QXhSWXVTVjFlZDNMRThHZW1QT0VUdnBvM3ViQUVCMWc1WXpYSFprYnRhRk5v?=
 =?utf-8?B?U2FzeERYZDFxMWtKOHhwWkhjU0RUb3NaeU9lYTF2NW5VTWZ1Ukt3NEtUd0h0?=
 =?utf-8?B?cE05QkdWbHhoZkQ0OHVHK05KR1RyR1cwNG5QWWFDT3dDUWphZTRRdU5KWStj?=
 =?utf-8?B?ZXNUcytZZlNLcFlMbUdxREVPcWlYdWt6MXpsTnVoMWR4czkwTlF0NXhpTzJl?=
 =?utf-8?B?djRxV0R5OVU3SENnb0MweW4vK1JFdXRBVGM2TkVDNHM2UWFaVEtwYTNNTFRy?=
 =?utf-8?B?N0xlNWFJV1Z1MTI3T2labFJMUnpBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a523ce19-0f0f-4cd3-9306-08dd62049530
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2025 07:56:37.8790 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9Z6Mf9DwTlDVXhyIIXdfidm6mnkcE7EgPuYquUBVbu3PnErgKrEipqHhXwfa3VLt+11F7uJfw8y8m9FQBMT9uKA3IDtSgzLL4fv6GUKNrG8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8118
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQ0NDQxLyAt
IFJlLXJlcG9ydGVkLg0KaTkxNS5DSS5CQVQgLSBSZS1yZXBvcnRlZC4NCg0KVGhhbmtzLA0KUmF2
YWxpLg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZyYSA8
aTkxNS1jaS1pbmZyYS1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9m
IEd1c3Rhdm8gU291c2ENClNlbnQ6IDEyIE1hcmNoIDIwMjUgMjA6MDkNClRvOiBJOTE1LWNpLWlu
ZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNClN1YmplY3Q6IFJlOiDinJcg
aTkxNS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1L3hlM2xwZDogVXBkYXRlIGJhbmR3aWR0
aCBwYXJhbWV0ZXJzIChyZXY1KQ0KDQpRdW90aW5nIFBhdGNod29yayAoMjAyNS0wMy0xMSAxNTo0
NTo1NS0wMzowMCkNCj49PSBTZXJpZXMgRGV0YWlscyA9PQ0KPg0KPlNlcmllczogZHJtL2k5MTUv
eGUzbHBkOiBVcGRhdGUgYmFuZHdpZHRoIHBhcmFtZXRlcnMgKHJldjUpDQo+VVJMICAgOiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzE0NDQ0MS8NCj5TdGF0ZSA6IGZh
aWx1cmUNCj4NCj49PSBTdW1tYXJ5ID09DQo+DQo+Q0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBD
SV9EUk1fMTYyNjMgLT4gUGF0Y2h3b3JrXzE0NDQ0MXY1IA0KPj09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4NCj5TdW1tYXJ5DQo+LS0tLS0tLQ0K
Pg0KPiAgKipGQUlMVVJFKioNCj4NCj4gIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3
aXRoIFBhdGNod29ya18xNDQ0NDF2NSBhYnNvbHV0ZWx5IA0KPiBuZWVkIHRvIGJlICB2ZXJpZmll
ZCBtYW51YWxseS4NCj4gIA0KPiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhh
dmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzICANCj4gaW50cm9kdWNlZCBpbiBQYXRj
aHdvcmtfMTQ0NDQxdjUsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSANCj4gKEk5MTUtY2kt
aW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnKSB0byBhbGxvdyB0aGVtICB0byBkb2N1bWVudCB0
aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBp
biBDSS4NCj4NCj4gIEV4dGVybmFsIFVSTDogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDQ0MXY1L2luZGV4Lmh0bWwNCj4NCj5QYXJ0aWNp
cGF0aW5nIGhvc3RzICg0MyAtPiA0MykNCj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0N
Cj4NCj4gIEFkZGl0aW9uYWwgKDEpOiBiYXQtYXJsaC0yIA0KPiAgTWlzc2luZyAgICAoMSk6IGZp
LXNuYi0yNTIwbSANCj4NCj5Qb3NzaWJsZSBuZXcgaXNzdWVzDQo+LS0tLS0tLS0tLS0tLS0tLS0t
LQ0KPg0KPiAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4g
aW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQ0NDQxdjU6DQo+DQo+IyMjIElHVCBjaGFuZ2VzICMj
Iw0KPg0KPiMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIw0KDQpIaSwgQ0kgVGVhbS4NCg0K
VGhlIGVycm9ycyBiZWxvdyBhcmUgbm90IHJlbGF0ZWQgdG8gbXkgc2VyaWVzLiBDb3VsZCB5b3Ug
cGxlYXNlIHJlLXJlcG9ydD8NCg0KQWxzbywgcGxlYXNlIHNlZSBteSBjb21tZW50cyBiZWxvdy4N
Cg0KPg0KPiAgKiBpZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZDoNCj4gICAgLSBiYXQtYWRs
cy02OiAgICAgICAgIFtQQVNTXVsxXSAtPiBbRkFJTF1bMl0NCj4gICBbMV06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE2MjYzL2JhdC1hZGxzLTYvaWd0
QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQuaHRtbA0KPiAgIFsyXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0NDQxdjUvYmF0LWFkbHMtNi9p
Z3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sDQo+ICAgIC0gYmF0LXJwbHMtNDogICAg
ICAgICBbUEFTU11bM10gLT4gW0ZBSUxdWzRdDQo+ICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNjI2My9iYXQtcnBscy00L2lndEBpOTE1X3Bt
X3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwNCj4gICBbNF06IA0KPiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQ0NDF2NS9iYXQtcnBscy00DQo+IC9p
Z3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sDQoNClRoaXMgbWFwcyB0bw0KaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMzkwMS4N
Cg0KPg0KPiAgKiBpZ3RAa21zX2FkZGZiX2Jhc2ljQHRvby1oaWdoOg0KPiAgICAtIGZpLWtibC04
ODA5ZzogICAgICAgTk9UUlVOIC0+IFtGQUlMXVs1XSArMyBvdGhlciB0ZXN0cyBmYWlsDQo+ICAg
WzVdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQ0NDQxdjUvZmkta2JsLTg4MA0KPiA5Zy9pZ3RAa21zX2FkZGZiX2Jhc2ljQHRvby1oaWdo
Lmh0bWwNCg0KSSBzZWUgYW1kZ3B1IGluIHRoZSBkbWVzZyBvdXQuIEhvdyBjb21lPw0KDQo+DQo+
ICAqIGlndEBrbXNfZmxpcEBiYXNpYy1mbGlwLXZzLXdmX3ZibGFuazoNCj4gICAgLSBiYXQtYXBs
LTE6ICAgICAgICAgIFtQQVNTXVs2XSAtPiBbRE1FU0ctV0FSTl1bN10gKzEgb3RoZXIgdGVzdCBk
bWVzZy13YXJuDQo+ICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV8xNjI2My9iYXQtYXBsLTEvaWd0QGttc19mbGlwQGJhc2ljLWZsaXAtdnMtd2Zf
dmJsYW5rLmh0bWwNCj4gICBbN106IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDQ0NDF2NS9iYXQtYXBsLTEvDQo+IGlndEBrbXNfZmxpcEBi
YXNpYy1mbGlwLXZzLXdmX3ZibGFuay5odG1sDQoNCkknbSBub3QgZmFtaWxpYXIgd2l0aCBMU1BD
T04sIGJ1dCwgYXQgYSBxdWljayBnbGFuY2Ugb24gd2hlcmUgbHNwY29uIGZ1bmN0aW9ucyBhcmUg
Y2FsbGVkLCB0aGUgZXJyb3Igc2VlbXMgdW5yZWxhdGVkIHRvIGludGVsX2J3LmMsIHRodXMgdW5y
ZWxhdGVkIHRvIHRoaXMgc2VyaWVzLg0KDQo+DQo+ICAqIGlndEBrbXNfZm9yY2VfY29ubmVjdG9y
X2Jhc2ljQGZvcmNlLWNvbm5lY3Rvci1zdGF0ZToNCj4gICAgLSBmaS1rYmwtODgwOWc6ICAgICAg
IE5PVFJVTiAtPiBbRE1FU0ctV0FSTl1bOF0NCj4gICBbOF06IA0KPiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQ0NDF2NS9maS1rYmwtODgwDQo+
IDlnL2lndEBrbXNfZm9yY2VfY29ubmVjdG9yX2Jhc2ljQGZvcmNlLWNvbm5lY3Rvci1zdGF0ZS5o
dG1sDQoNCkFnYWluLCBhbWRncHUgaW4gdGhlIGxvZ3MgaGVyZS4NCg0KPg0KPiAgKiBpZ3RAa21z
X2ZvcmNlX2Nvbm5lY3Rvcl9iYXNpY0Bmb3JjZS1lZGlkOg0KPiAgICAtIGZpLWtibC04ODA5Zzog
ICAgICAgTk9UUlVOIC0+IFtETUVTRy1GQUlMXVs5XQ0KPiAgIFs5XTogDQo+IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDQ0MXY1L2ZpLWtibC04
ODANCj4gOWcvaWd0QGttc19mb3JjZV9jb25uZWN0b3JfYmFzaWNAZm9yY2UtZWRpZC5odG1sDQo+
DQoNCkFuZCBhbWRncHUgaW4gdGhlIGxvZ3MgaGVyZSBhcyB3ZWxsLg0KDQotLQ0KR3VzdGF2byBT
b3VzYQ0K
