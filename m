Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0305A98692
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 11:55:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFF7B10E663;
	Wed, 23 Apr 2025 09:54:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z5pQFII5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ACDB10E447;
 Wed, 23 Apr 2025 09:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745402096; x=1776938096;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=pVXNPfYEZk/WsOnhpfOt7m+kF7aEtYrg3CP2pVh9Nyw=;
 b=Z5pQFII5V91IVgp02gId2C+zZHfrDLTfYBQsEiGVctSiwz66/FGuKuAP
 l1keH+n7N+R/xhdRsSwfztWWWfrYulrdU/M548fieMC4hqSVLK+No1KMg
 hflMGljGl2D24AhB1TRPv6bCVZR7AB09hlfrKFi+Q6ky+7bj33HVI8Tc+
 CxtEzXmRx0AakWkTn4fyGNGOmZxUKFXZvwUqZiohekV62rLM0EuU8dvzt
 muQDtU1ZcXaEqpxlYWo1gEAaBkYn1JvJAtIC3MlFshODJ45FufAcrZ9F0
 zJfAYNTVmmHjEKffdX7B3qJSVOsqgcv50tlLCeeUWKB2muO9+NQLRkGmG g==;
X-CSE-ConnectionGUID: bHBccgLyQguUleUM2NpzMg==
X-CSE-MsgGUID: CGztsYZ1RoS8Ko4ayU0LVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="46867836"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="46867836"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 02:54:55 -0700
X-CSE-ConnectionGUID: ducj05O5RSeG54HK9tpr/w==
X-CSE-MsgGUID: r6941CMRS7iy26vPWxCpaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="132192821"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 02:54:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 02:54:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 02:54:54 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 02:54:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mBFtfOBZ8JzWvKMWRMpxF29GsEgiTZ1An3CDuGUWAnflzvyTtP8qfyuRE7XTCzXXgt9fFuv01hIHKt4YsCfeJmqv7vsK5hW9fjqBcmPhITAnbdrg7ogNEt6cndPMqvwO7q9qfKrWn7k6mT0veyJfY1vNk4nO2pzvkj5Vo/AbPf2hNkCWJ1xhMmuMpYHCQ3Lt0Iqb5fshGx6GDhN3+UjwM1Tcf+S0HZfSrePJwSvd5/UDTpVXXjnNYsRJbdJzddfX5/kF0kQ7i7v/6onhOmpuu8UBl7Fm403SUHvjP7qCKGnf/+ty4jq/EXZ4/lEfiBKNBJYcEq5KZwDd4JEEte+K/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pVXNPfYEZk/WsOnhpfOt7m+kF7aEtYrg3CP2pVh9Nyw=;
 b=L9RBU5A2bTSpwkQ6SxOR/Sm2NuiLif4aD+ZwA1uumVsq2WtoGoJiVBtaNRYrE5Iq/20EoCSIqrG635FXiz7vLLpIqCAc1HUBEWEfLfhmXmxOEVfzFeVBFMxgRxMjbTFiGXMBV0Dk+gwuJFVSZs4rxhGvoncZtUP5f5nz5UUTn2NukEDGF25TfVxf+HsNx9Gw97OAX1Zpy85Mbrw9RpDcWU2g5ccqF0VmcG1upkzJUhgUyXhwCGvKlT77iYVhWoS4X6AfgWjWTm9Q707jzZuth6ATSIWMGpUBPIl5XZj5dFKjW642/9tg7VdENd3qnYj7++dOq6+JnqxqNfuf3/uHDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH8PR11MB7046.namprd11.prod.outlook.com (2603:10b6:510:216::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8678.23; Wed, 23 Apr 2025 09:54:51 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8632.030; Wed, 23 Apr 2025
 09:54:50 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 05/13] drm/i915/dmc: Add interface to block PKG C-state
Thread-Topic: [PATCH v3 05/13] drm/i915/dmc: Add interface to block PKG C-state
Thread-Index: AQHbrSTIMqAmo3PjOk+UP2lwHJAe67OvZsQAgAGqc4A=
Date: Wed, 23 Apr 2025 09:54:50 +0000
Message-ID: <19e57b581e181dea4c8bb6fc72721d222506327c.camel@intel.com>
References: <20250414100508.1208774-1-jouni.hogander@intel.com>
 <20250414100508.1208774-6-jouni.hogander@intel.com>
 <MW4PR11MB7054E6DDF840DE2D94A5F1FDEFBB2@MW4PR11MB7054.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB7054E6DDF840DE2D94A5F1FDEFBB2@MW4PR11MB7054.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH8PR11MB7046:EE_
x-ms-office365-filtering-correlation-id: 3d8ab910-76e9-4cb8-fb4c-08dd824ce3d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|10070799003|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ZXZGU1FpWFl2VS9WL3R2aVIxbjZGRHdoWGdzZ2JmMnNydHdwSE42N3hkb1Ny?=
 =?utf-8?B?cUxSSFdwUTA1c1hzd05mSHVmS1VZZFNDRldhOGhZWm5XTkVaaGZPVitBV3Fi?=
 =?utf-8?B?NWcwSlF4aFBjVElmNzRkZ3hBRmEwT2tiWVdCT0pXRUtjZHJ5c0pzQVpyMHZR?=
 =?utf-8?B?UUs1dllxUzN6dWNvREw5V0ZxdHRVblRXNWNaTi8rTEVXNW9uaWhqZ2Frd20y?=
 =?utf-8?B?SmEydTMyVkJLZVlvdVpkbUVHMnZYSWErSFdSMWNGM3hFdHJoejVlU2JGZmtl?=
 =?utf-8?B?UEJPNnB4RU1Xa0p5TzE0blNTbXg3SnYxMXJJVmtsUFRWaGNZQXYyb3NqZ1pt?=
 =?utf-8?B?eHc0S2lIMmFJMzR2U29Ra2krTTU1N05IeVFsa3RYUVl1eUpKL2tIcjRiUE54?=
 =?utf-8?B?c1NqL2k1V3ZoOE1USnM1VWpWU2NPc1VKZWE2bmFNYURuTUdRM2VXQlJUWStD?=
 =?utf-8?B?dXhOQUFIMGdXTDZWdGlibjRzSFpyQldxMjFNM1pKL2x4VnVKVzZFbVBPZDZj?=
 =?utf-8?B?U3N0M0YzWWV2LytlTXRZaFAxSXFmWDNMTW1XSUVWMmZtQ3NuZU4vTlpySHZK?=
 =?utf-8?B?bGpGR2xxWnMyUnllOVUvVndRT0hiY1daMUtLMVcwMWdUTzducWRXUlJ1NUhU?=
 =?utf-8?B?VUhiZTQrOGlPY3d5NmRWTEtITjJJRTRBbzFxaVFyNXlWaGJFeUZ4b1VucnhM?=
 =?utf-8?B?NkNOZG5RSTJ2MkIvbFB0YXpCUG9VQXVncVhNUTZ1OEk4OW9LdGhGRWFxZGFW?=
 =?utf-8?B?aE0zZXpDY0FuMmJZTXdyb2x6ZHA5QVUzV2hYaUd4cWN4TWEzeFpPRHJ6VEFm?=
 =?utf-8?B?bjJZajY1WUVsbU1hRDlvSVlWendTWEJjQ25mdXpqeFo0WC9RV2dKYmtNYXpC?=
 =?utf-8?B?TUZTallxeDc5dnZDckphTWVOUlhyQnpuTTdoZnZOTTB4bUtkaTFpSFJ0TURN?=
 =?utf-8?B?RDlFalQwSDZzSnhKOWFOWEkvU2lqdGtNSk5Gc0V2QXJZdStXRWRmVC9UaUla?=
 =?utf-8?B?MVQ0VmNPdThXaDVzSnliQk1Vc25tT3VWaXhxN1dFbGJMcFlyRzlSMnNOSE1Z?=
 =?utf-8?B?TmlyYlZqK3NCenV5MlpwZ0xuUE5MUUNIb2xEdVQvTWRFMi9rOEErVmkycE1C?=
 =?utf-8?B?dTZMR2oyYnA1dGpWTlNCeFBxYkt4WHhSOFd4NUFMUjI2a0hNdHRlaGRVMEF1?=
 =?utf-8?B?MjBoMUpJYno2dC9WNXA0WU1JQ0F0NXU1YjYrRmIvbTlTQnZqa0U1elRkUTdx?=
 =?utf-8?B?MHhObFg4d2hjVWVQOFAvK2dlQnpBaTl6Z2w5aU54a1g4WFYvSXd4TGtxL2V1?=
 =?utf-8?B?T3hlTTJnczhRK25vUythNzF2VmtKR0FlM2ZkV0RoWUc1ckRVSitkL0NBNzk0?=
 =?utf-8?B?eEs5NE9VYVE2OENQMFk2ckJ3WVV2TGhSd3N0SUlhY09OWWNsNzlOeUtBbUFJ?=
 =?utf-8?B?MG1VekFpRDFKVDQrYlZqR215NjBXa0ZEQS9FZVh4dWFkY1lkd2VDWmtrMnNa?=
 =?utf-8?B?djg0S2JTVHJKaHczajJtRmd6YUFCQmh4Sm9kREdlczdpRXQ5R0Z5RVhDMmMx?=
 =?utf-8?B?SzY3V09CSmlaWHpJdC9EVnhiUmZvMnVabGNPSUdmM3NmNmdubXhUKzBZMDJp?=
 =?utf-8?B?aGxGUG5uVjdsSExudko5S0JldTNPeXFoN2dnTGdNdm1vVVl4SU95RlVLNjBQ?=
 =?utf-8?B?SitRelNXWllFS0hTK085NnNNeXg0cWVQMkJiUk9kZXFMdGNUWFVERHd6Q1E3?=
 =?utf-8?B?M1FscjFWSmtiVWZhZVI0TC93aGlMSmVLbU1lUUxOV3Jtb0g5ZlBHNzVPQXFT?=
 =?utf-8?B?dkFFUnNYY0VnYk9CS0Y2RXI1SFVNdEZZWTV5U3lldmVVeTNNU0xGSTBXcXVo?=
 =?utf-8?B?T0FkbVBYNnFjbnI3UXpsWlBYWEp3MDNLSURka1hkTHZjcGVvTW00ZXYrNHE4?=
 =?utf-8?B?OTJYbzFSZUdoVzlHVTk1N3l5ajVpMHhFOFNMMFJnSlkwZzUrVzVKR0pBUWV3?=
 =?utf-8?Q?CkVGAnmTvUB31g63c+/5hBZnRfLvBI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q0Iwc0c2eDdvR2k5OUJ4SGpidnJmWHdrRGoyVW5GTFM1YkdHM3pLYUoybENs?=
 =?utf-8?B?ODlJdUUyaFBNTzI3VWpZL1VtcytpVVcrWG4xQjhyS2JRbjVMMldrNjVEcTN1?=
 =?utf-8?B?SkZjbnRtNTM2MElYQnJiWmZHTVVsalJtcDBWb0V2T21xanNGZzJkWWtYOUUx?=
 =?utf-8?B?YmpDWE9uNTI5QnBHZ1RybndVSnpFd0hBdGNvWHl5Y2JtRkh3eWpxT05mOWgx?=
 =?utf-8?B?ZGJscjlROUpzc2FlRS9xbi9Dc082ZWZFb01XWm1ERERaSnF3TFJKcEU2dXpG?=
 =?utf-8?B?QW5sT082UWRRcXpjZC85SW9VWUwyMEpLZ2hoNWpjeGo4WExDL0dzbmhnc25Z?=
 =?utf-8?B?N3hDTldPZTR0d2x5eFBheG1rNFh3d0ZsaWJsYi9GbFEwK25IUW1wWk5YWW1S?=
 =?utf-8?B?N2EwVU5rQ1M1QmoxZ0o1YUdSY0FCMW1rdUdqT1lMN0JtMi9zTGVYQ3lNd3Bt?=
 =?utf-8?B?ODE4a3BaR1dYNHpGYjRzMWp4NjFYRW9ZNVczYzFSamVldFljUEFUTStOZkRG?=
 =?utf-8?B?enlwVXB1blp4cVNMQ3RzZFVSdHJsVEtvOGh3NlV2Sm4xbFNLZWt4Z2JIdXVw?=
 =?utf-8?B?cTNMbkZmNmhHb3dkdlMzTk42Q0Y2c284OFAxZklvSWlrY1pXR2lHS3FPRFVz?=
 =?utf-8?B?eTIwa0IwY3Npc2o3dlRZeFRRK3E0cVAvUE9PbDNSV0loU3NCbjBmbHFBZjVt?=
 =?utf-8?B?aXpDZC9MOE5sM1h5b2k5dUJwOUtzSFg3ZGZsbkh3Si9nUmZnZy9ZM0hnb2lj?=
 =?utf-8?B?UkZpaVA5MjNFK2hGYnFCTGdCYzZTSVVVdVRTeHdWemRYckNBQ2JiRklUQVF3?=
 =?utf-8?B?aVpMSU5FYnhqSDJMMEhyYnd3ZDFqaVRQV0M3S1UwL1FWaXRsQlBtU3AxMXBq?=
 =?utf-8?B?NmRPUW4zOUY0YXFJTkJOVlFubHY3NWdadktwbUNzOTF6ZmxVc0pCOHpUT1Aw?=
 =?utf-8?B?SXZYYWZ2QjhkcHpETm5aeVBBR1EwK3J3cUVWMU9jNzUzcHgwdDVUbWNGUzBL?=
 =?utf-8?B?L2VCVXExMjVKZ0I1T296QWhyWHQvNi9Wb2o5cDREZ3UyUGZubzVYc1VaMTZ4?=
 =?utf-8?B?aTc1aHc3eUVnMmgzTnlkWDJvaFRtQXF4OG5IYVFiWVY3TkV6L3BuM01OVjNk?=
 =?utf-8?B?VEtyb1dzRHVrRE1vM280L1VoM01reUE2cUxVZ2x6ZkJzanhTcTlXcmYwSnA4?=
 =?utf-8?B?eXN6ZGhFWERabG82S2prb09VelEwSlhVcGJTd2FQbzlxNnRCcU9ySTYzWmU5?=
 =?utf-8?B?aklPTXFLU21KWHpoN3lIWVZFZmRXbWJ3RUJ6d1FqVnZ6Mnl2RVFDM01za0dB?=
 =?utf-8?B?RVREMy9xd2hYU3ZhODFXRjdhaEJGRFZhZWlMajdoSDExdnJHcWgzbFJ2SWJ2?=
 =?utf-8?B?SGhZQUhNTW9ncE51dWZ3VDJ6eGNwYXlkSmN1RC8zRk5OSGp6VVFmUHU3MnRC?=
 =?utf-8?B?alBMSEVvOTJkTHE5UUc3RDYyRTZuWExiRFNqeW1pcTdrTS81dGZTdkN5ai9l?=
 =?utf-8?B?Uk83UUcwYmovbmg1VDJGUUNBenpMa2xLdDRLaWs0UkR1MUlZTm54bUJ0Q3dz?=
 =?utf-8?B?WXB1Ly80SjE3RU9NWlhTMFZLZEZ2QUl4UEdLcjNCeXZLZmMyQ0RLVERkdk4w?=
 =?utf-8?B?NC9tbVRJRkJnV1ZRVGpkb3ovaEFId3V4MkEvOVdLSmMyejNKOUdnOHIweVds?=
 =?utf-8?B?cTlCNlhoVXFkeHlpUlJhM0VJa2lpSjdKTFZ2a3pORlNRVFZtMXh3MVlNa0Rv?=
 =?utf-8?B?ZTNYSkxjQk5scU81KzFFTy96TmZGbk1nM3FwcTloTVVmekZJb21va09QNXoz?=
 =?utf-8?B?MUJselM2UGJLTlFTN3JwOHdHV2dGU3IwUWpoNjJPNmUxRnp2MUIxZ1JKVmwx?=
 =?utf-8?B?OEpsNmtwL1VQRE1vc0xuc0x0eXVTamc3K3NVeHdTNXZkZ092VG1tVnRHWGtp?=
 =?utf-8?B?NkpPSXoxNmdJLzR1WmtQZWRzS0Q2TUpJVW1DazdOTXFzZjRhLzh0UjJNQWZk?=
 =?utf-8?B?RUFmdzg1RTBXcXlxN1pYaHF1a3JQc1pLbXpuS2ExVEVnTEtMMG9aZ09IbG1i?=
 =?utf-8?B?ekdUdkNDTXlUNzBlcUt4RnQ2ZFhPaHZDbmg2WEljN2lOOGh5dVpGMjl0NVJm?=
 =?utf-8?B?WGVndzVMMXZVS1pmekxzZW55eUx6SkFzczJ3cE5XWnZWNmp1TE1YK2xrc1dX?=
 =?utf-8?B?WkpWS09MdkhKM09RQWg2cUJFWXNrdlpoVGRyR2FlTG9YSXIxZzB5Z21YRmIr?=
 =?utf-8?B?K2JXb24rVnhKUGRwdHBkVlBYQUd3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <511B4B4916150246951D085B0E790386@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d8ab910-76e9-4cb8-fb4c-08dd824ce3d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2025 09:54:50.7480 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l24BHPUp61wgQFfHeZcKRramytEuxjzObIbBvMCQCJEAHRByfTd815+eXErxThN4QsuMDLuy9YwG3aP3wZ3vuzvk785HQqjGQvseGVXw5GE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7046
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

T24gVHVlLCAyMDI1LTA0LTIyIGF0IDA4OjI4ICswMDAwLCBLYWhvbGEsIE1pa2Egd3JvdGU6DQo+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRlbC1nZnggPGludGVs
LWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmDQo+ID4gT2YgSm91
bmkNCj4gPiBIw7ZnYW5kZXINCj4gPiBTZW50OiBNb25kYXksIDE0IEFwcmlsIDIwMjUgMTMuMDUN
Cj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFtQQVRDSCB2MyAwNS8xM10gZHJtL2k5MTUvZG1jOiBB
ZGQgaW50ZXJmYWNlIHRvIGJsb2NrIFBLRw0KPiA+IEMtc3RhdGUNCj4gPiANCj4gPiBBZGQgaW50
ZXJmYWNlIHRvIGJsb2NrIFBLRyBDLXN0YXRlLiBUaGlzIGlzIG5lZWRlZCB0byBpbXBsZW1lbnQN
Cj4gPiB3b3JrYXJvdW5kIGZvcg0KPiA+IHVuZGVycnVuIG9uIGlkbGUgUFNSIEhXIGlzc3VlIChX
YV8xNjAyNTU5NjY0NykuDQo+ID4gDQo+ID4gQnNwZWM6IDc0MTUxDQo+IA0KPiBSZXZpZXdlZC1i
eTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KVGhhbmsgeW91IE1pa2Eg
Zm9yIHJldmlld2luZyB0aGlzIHBhdGNoIHNldC4gSXQgaXMgbm93IHB1c2hlZCBhcyBhDQp3aG9s
ZSB0byBkcm0taW50ZWwtbmV4dC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiA+
IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29t
Pg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMu
YyB8IDE3ICsrKysrKysrKysrKysrKysrDQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kbWMuaCB8wqAgMiArKw0KPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRp
b25zKCspDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZG1jLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZG1jLmMNCj4gPiBpbmRleCA5OGY4MGE2YzYzZTguLmM2NTU0NGU0OGM0MiAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiA+IEBAIC01MTcsNiAr
NTE3LDIzIEBAIHZvaWQgaW50ZWxfZG1jX2Rpc2FibGVfcGlwZShzdHJ1Y3QNCj4gPiBpbnRlbF9k
aXNwbGF5DQo+ID4gKmRpc3BsYXksIGVudW0gcGlwZSBwaXBlKQ0KPiA+IMKgCQlpbnRlbF9kZV9y
bXcoZGlzcGxheSwgUElQRURNQ19DT05UUk9MKHBpcGUpLA0KPiA+IFBJUEVETUNfRU5BQkxFLCAw
KTvCoCB9DQo+ID4gDQo+ID4gKy8qKg0KPiA+ICsgKiBpbnRlbF9kbWNfYmxvY2tfcGtnYygpIC0g
YmxvY2sgUEtHIEMtc3RhdGUNCj4gPiArICogQGRpc3BsYXk6IGRpc3BsYXkgaW5zdGFuY2UNCj4g
PiArICogQHBpcGU6IHBpcGUgd2hpY2ggcmVnaXN0ZXIgdXNlIHRvIGJsb2NrDQo+ID4gKyAqIEBi
bG9jazogYmxvY2svdW5ibG9jaw0KPiA+ICsgKg0KPiA+ICsgKiBUaGlzIGludGVyZmFjZSBpcyB0
YXJnZXQgZm9yIFdhXzE2MDI1NTk2NjQ3IHVzYWdlLiBJLmUuIHRvDQo+ID4gc2V0L2NsZWFyDQo+
ID4gKyAqIFBJUEVETUNfQkxPQ0tfUEtHQ19TV19CTE9DS19QS0dDX0FMV0FZUyBiaXQgaW4NCj4g
PiBQSVBFRE1DX0JMT0NLX1BLR0NfU1cgcmVnaXN0ZXIuDQo+ID4gKyAqLw0KPiA+ICt2b2lkIGlu
dGVsX2RtY19ibG9ja19wa2djKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBlbnVtIHBp
cGUNCj4gPiBwaXBlLA0KPiA+ICsJCQnCoCBib29sIGJsb2NrKQ0KPiA+ICt7DQo+ID4gKwlpbnRl
bF9kZV9ybXcoZGlzcGxheSwgUElQRURNQ19CTE9DS19QS0dDX1NXKHBpcGUpLA0KPiA+ICsJCcKg
wqDCoMKgIFBJUEVETUNfQkxPQ0tfUEtHQ19TV19CTE9DS19QS0dDX0FMV0FZUywNCj4gPiBibG9j
ayA/DQo+ID4gKwkJwqDCoMKgwqAgUElQRURNQ19CTE9DS19QS0dDX1NXX0JMT0NLX1BLR0NfQUxX
QVlTIDogMCk7DQo+ID4gfQ0KPiA+ICsNCj4gPiDCoHN0YXRpYyBib29sIGlzX2RtY19ldnRfY3Rs
X3JlZyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gPiDCoAkJCcKgwqDCoMKgwqDC
oCBlbnVtIGludGVsX2RtY19pZCBkbWNfaWQsDQo+ID4gaTkxNV9yZWdfdCByZWcpwqAgeyBkaWZm
IC0tDQo+ID4gZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuaA0K
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuaA0KPiA+IGluZGV4
IGM3ODQyNmViNGNkNS4uMjM2MzEyZmI3OTFjIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RtYy5oDQo+ID4gQEAgLTE4LDYgKzE4LDggQEAgdm9pZCBpbnRl
bF9kbWNfbG9hZF9wcm9ncmFtKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ID4gKmRpc3BsYXkpOw0K
PiA+IHZvaWQgaW50ZWxfZG1jX2Rpc2FibGVfcHJvZ3JhbShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAq
ZGlzcGxheSk7wqANCj4gPiB2b2lkDQo+ID4gaW50ZWxfZG1jX2VuYWJsZV9waXBlKHN0cnVjdCBp
bnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBlbnVtIHBpcGUNCj4gPiBwaXBlKTvCoCB2b2lkDQo+ID4g
aW50ZWxfZG1jX2Rpc2FibGVfcGlwZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgZW51
bSBwaXBlDQo+ID4gcGlwZSk7DQo+ID4gK3ZvaWQgaW50ZWxfZG1jX2Jsb2NrX3BrZ2Moc3RydWN0
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGVudW0gcGlwZQ0KPiA+IHBpcGUsDQo+ID4gKwkJCcKg
IGJvb2wgYmxvY2spOw0KPiA+IMKgdm9pZCBpbnRlbF9kbWNfZmluaShzdHJ1Y3QgaW50ZWxfZGlz
cGxheSAqZGlzcGxheSk7wqAgdm9pZA0KPiA+IGludGVsX2RtY19zdXNwZW5kKHN0cnVjdA0KPiA+
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpO8KgIHZvaWQgaW50ZWxfZG1jX3Jlc3VtZShzdHJ1Y3QN
Cj4gPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KTsNCj4gPiAtLQ0KPiA+IDIuNDMuMA0KPiANCg0K
