Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E66CB3198
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 15:06:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9F6610E261;
	Wed, 10 Dec 2025 14:06:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A7khJ15X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 786A810E261;
 Wed, 10 Dec 2025 14:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765375605; x=1796911605;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=sswCKSXwk/77rlxtR4HVkxPMTUnLDrxJm6AE4E18wws=;
 b=A7khJ15XlDGDMrh5HL4VN/OMoEkcLYkveyH6a5CK/fkxQUP+6DaElQ97
 +cheDgJE7GGKzfKAtZx8UshhsvaCDjzGkus1STrtO5hRHAy8OGRk/yBNX
 2stiXZ79oc1NU7V2ljwOWOs9L30mPuk4X8xK/PN5+4aWRgq7zWC+Iidwf
 +hy4zD/dy+x0gW3DZSqNBZMT827hxsoP/OBX60ChRGF52+FFKzmMXgnZM
 vkEfZfbLTCQW17T1UnBdthp1hdBqs2JQdpjkiJwnIVfz+JOaXs+pkfqJZ
 TH2gozDejSHGZXoxyjLBPZW5bbTsjmISw07Z2MOBIhY2ZX3pws3AslHA9 w==;
X-CSE-ConnectionGUID: 57FpZXioR0yxp+2M7riakw==
X-CSE-MsgGUID: +YC9JL0ZRRKhHppXLfr+mQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="54891535"
X-IronPort-AV: E=Sophos;i="6.20,264,1758610800"; d="scan'208";a="54891535"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 06:06:44 -0800
X-CSE-ConnectionGUID: 6soq2TsgTU6h+gE228d5/w==
X-CSE-MsgGUID: Ah4UgnI3THendYXNVx4zLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,264,1758610800"; d="scan'208";a="219859989"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 06:06:44 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 06:06:43 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 06:06:43 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.56) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 06:06:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=obweN8qBNeERsEPEq6ROdmp6EHreFGdPVfbDRPRLKmyvq/0JyMFBYlm9P0Xsw+dJCjAH+JhCa0efswFLUy3w8b8lvi+KFNUKEtydnuloKf773qWhf6cuyQq7jFtjkgCorWDoHmFwY3SKhOV7Lb+mx9KzvNZ/KSbjOVZL3HXtVjlb9nFtuRFwOcCdw6+MeWg2KUlMidFZ4JnBr1m9cK43zoD+btv3ucbXJckZTeEqAga9TwUjlHnx64CGb6JqNENkZ6A2o3vtmn43S4Q3JRHB3BQ/MlRHQpShK3TVt2KKcu/pvD25Ab+4o9B9GF3+d1lrpo+disBgYMvnP1tx3tQGiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sswCKSXwk/77rlxtR4HVkxPMTUnLDrxJm6AE4E18wws=;
 b=CgVJsIwF5goxFx+Beb7J37CeQ4ZjpbjwleVDvBxiUUOxmR8Oz2BrEraoD9iipEWbTxBG6dg2+aEXXPhyPekzp74W8Huc7zW5Gd2GzRnqU8owZ5T+Y/FXNU8YAFEWeVtfNZXlCltaURPmV+fMiO5WaPq+5AsGLo9p2mwn/DGBlDOBn4S9h/mNZY570GohAa0dH5JQV/XFBinybpHYslFWEfuIzgBYCqGd+QtV3bda9RbPLSi8IysAlb1qGsXGswmKJGbv34vU3XCsUC3EupfN6cK8cXkrvb/AgtfY1xoBQK6szU7tStGZWkxuyMIYAWTpgJ1oMPJzyrRolF4Xalh3xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 LV3PR11MB8744.namprd11.prod.outlook.com (2603:10b6:408:215::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9412.7; Wed, 10 Dec 2025 14:06:38 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 14:06:38 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 46/50] drm/i915/dsc: Add intel_dsc_get_slice_config()
Thread-Topic: [PATCH 46/50] drm/i915/dsc: Add intel_dsc_get_slice_config()
Thread-Index: AQHcX8kJfKUI00pD7kmNdb8qVxM/gbUa/NIA
Date: Wed, 10 Dec 2025 14:06:38 +0000
Message-ID: <b4d8ed0f1c6d2010ecbd1fd04010655254e5bc7a.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-47-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-47-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|LV3PR11MB8744:EE_
x-ms-office365-filtering-correlation-id: 534d9f44-da4c-4f83-06ae-08de37f555ee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?d2Y3V3R4OUpSWHBtVEZGbXl1OUtXWGdFSitXR1ZtSE5TNUhhWHdETXFYVUoy?=
 =?utf-8?B?UVR0eDhiR3pubHlKc0FXYTdzZ2x4VnB6aUxCM3dsNmhyektNaVJsaUEwQ0Uw?=
 =?utf-8?B?c1U5NXZYVlYxMmNFRmE2eFRrY3lOK1hFV0JYbHhldENCVFpqUTd6OGMyV0Rh?=
 =?utf-8?B?VWtOOEtXdnVnOU1idnl0WnlPRzJMT0hqcWNsbHhkZjU1bFlJNDdwUTJ3cUZE?=
 =?utf-8?B?VW0rMXRtT2pZNHhkdEF6Ykl2bTdpSEMwWFZSUXdWK0F4SlIwS2YwU09XSThj?=
 =?utf-8?B?WVhmM3kyakViTXROdHJUYmRaa0pROForeTYyeFUwTGQwb05UdEdMSU56NnFp?=
 =?utf-8?B?YndaNGhpbllSQWQ1ZVU1cmxOZjJJVjJ5emNjWmZ4V1V1VExJdEVDazhWdEpF?=
 =?utf-8?B?dHI3ekZ4dHRsQWY0dnlpRVJpRTg1RFNPazJxaWF6NDNzaEpmNXJkVGUzd0Zk?=
 =?utf-8?B?OWRNWVVsSEI4QmRQc09wZXd0SCt4a2w1TGJFeHlRb0Z6Q0JrMUNHM1ZBT1ZG?=
 =?utf-8?B?cWdjaFQzUFlwVE9Bc3dPNktackJCOXJmLyt5ZzlqNkM2M0p6KzRWQ0pVYnF3?=
 =?utf-8?B?SkhsbzVhYzU5aEZxeDBOOFF0L3R2UGQ0RGtmbkFHb0trTGJCaE10TGc5elJR?=
 =?utf-8?B?QVVXYVUvSDBHSUlkWDN0QzBxZzA3MXZLdEt6ZTMvekF1Z1B3VEtiSzg3SE04?=
 =?utf-8?B?cFJMOFUvZTVvYlJzYUdGYTV0N0w1WEd4TlRoWmtVTzNCMzZlWDl3UUxnelRM?=
 =?utf-8?B?SnVuU0tycDFXalVwSTQ0R3FYR2RXZ09XR3REbUdkeGc3YTdaQ0x3cWh1QUZQ?=
 =?utf-8?B?cWwzNU5RdGZjYkJjTjVSWjlLNVpGUElGMWk2MFRJRVFwWlp2VGs5dEpJZ09x?=
 =?utf-8?B?OUN0TTR3KzdCUUJwNm50blV3Mmx3ZTdOTHJpckZKVGFWdVBKVVFrY0wrWkF0?=
 =?utf-8?B?WTMxaXd6cjcwMWVHWjByNVFkZFYvVGo0bno2V05ncHRtVEh0eGZrbUxSY09i?=
 =?utf-8?B?aURxYTBSV090OHhzZkkydFBPa2NHS2J6SE1KK1BYTDEyZVduZFp2cWUzaTFB?=
 =?utf-8?B?NkYyTUxRWWpMenY5YXArY1J4ZFJWUlQyZ05jVDJDeXJxeWFOem1YV2VHWCti?=
 =?utf-8?B?cTBBTVlDSjdXSnI0MEw0c01pU0kzOVVmdVZ5SmlERkovb1QwaUwyMTQwYURZ?=
 =?utf-8?B?ckp5alpJMXVIcUpEOVBjQjFzUDNYZTU5NWlibTJtWkhwSDFERWZrbGg3NWMw?=
 =?utf-8?B?ZmVDbXlQcmtvNnlzWE1hYjZBUlI0ZzZEa1dRL3ovb2t0YXk1N0x5WlJCQjV3?=
 =?utf-8?B?WVByS2UxYWRqYWp4MHNFZ1ZqbnV1ekxZZTVUbkpCc3Jibm1KdGpRUlRYdktp?=
 =?utf-8?B?N09YejlmM1JyK1NBWTdQOXk2ZUdxTVhsZWtBcUY1OS8xcGoxUTJnZmF2ZE5B?=
 =?utf-8?B?ZVlBNHYrSnl0TXpCcG9oRGo4K09lbTlLcm9nSUtRcUdtVUJLMkRMMDJhM2wr?=
 =?utf-8?B?MlgyV3NnTVBkNXpraFR1RW9ibnVBc09TbVZpRFpQaWNRSHl6ZmFHYk9rbTNl?=
 =?utf-8?B?THBTbFB2Zzl4NGtJaEt6cXJmZTZEZ2xtU0tBTmlQSW0rT0ZrQVArWStjYllU?=
 =?utf-8?B?NVA3V2dLOGE0akxSOTNWN3BETE9PVGUzclBlbU9KNjRETW9hQkFqbXlja1lR?=
 =?utf-8?B?UWw3eEMvbXREb1FtWEZiMFA1SE1UZ25MeFplOXBOS1ViWnV2VktRcGdSaWRi?=
 =?utf-8?B?RnZITkVtNVRyL3p1TjcxY0Z2MFJpOWR0OFBhcXdCWGxtZHF4b3BDbGh3U1Mw?=
 =?utf-8?B?UE1rbGpTOVFsbWEydjZjTDE0dllLSHpwcDlsdHBJRjMyN0ZIQXA4SC9IUFVh?=
 =?utf-8?B?V2pRTUtpMytiNFFkdVFlYWZRTE01MkVoOTZiSjdCNHdDcTh2cmlXaE1qY0pn?=
 =?utf-8?B?eGFEL2V6UDd5ZzJBRis3NEZGaWhOdXdoUWRDKzJZb25mMzRmWjRMK0ovM0NG?=
 =?utf-8?B?WDNXNm1KQTR0M1dyWkpvelpaTVFzVVc0aCsvN1hxYmF2bUhXcCtleDFROW90?=
 =?utf-8?Q?IQqcw7?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b3VadDQvK3ZaaSs2Zis1Vjd2VkdtUzhPWmdqU0tpdTBGNERUL2NaVmIzSURZ?=
 =?utf-8?B?MnlMRFlqUGl5bUlCYjYyYndUNlhRWnJ1bjJ5OHZhY2h5Q2lKUFlEYWlDcmZS?=
 =?utf-8?B?VVlJZzNPN1N1aTdpQ0VPUUpxdmNSSUxXYmRMZkxIdUx3MHpVL2JxdzBQcHRD?=
 =?utf-8?B?KzhESnVvcTE1KzhZWG9nNmo2T051cml1b2JVWGUxQWdObjk3VTdwcXUxbGFw?=
 =?utf-8?B?UkFUNzFSd201eGM0djFxbmk2ZEUwczNXWWZKbG5yNENuWWlzZyt3RjJGNFk2?=
 =?utf-8?B?dmZyUUF5NnFobWRpZE9WSzdscjRKNktLWXJhSURjWm1vVkRpVWpGaEdUeHh2?=
 =?utf-8?B?aXB2TjhNc0FvQ0F3UmVYbUJzTXJXb2JFUHF6M2Y2ME5TTmtNaTFjVERDMFZq?=
 =?utf-8?B?T2lEQVk0MTAzZitzQjQ2cUJydjVVZzJnOXBXMWE3b1cvbUR1MENnU3FYWDQw?=
 =?utf-8?B?RUVzbk45UzFhUlZEcVNUaHloUS93azFPb0N0d2hQVFZoL3NDdGJxUW5DRzZR?=
 =?utf-8?B?Q0ZacnFDQ3VIcnVhR3ZRY3pkcXpKWjdqaTdPR1Z5Zk4zTGNKKytXZ2swZkRo?=
 =?utf-8?B?UTNlcjJ0VGUyMzlnTEIzZ3NlMVFWcjZPbG5SQjJZMjBqR085MnFnbmlsVTQ2?=
 =?utf-8?B?Q0M1Vk9CbnhHL09MNGYrSFkvTnltT1RoTjZ4azU4L1NEbGd2cm1qU1pHMGgy?=
 =?utf-8?B?T2FMM3VjZHRibHdLREFoSTR5dndjNkVUVUY3allTc1dXSDBtUE5xN00zeHhY?=
 =?utf-8?B?RDcrQmY1UFNMQm0xVmJETk14Mmd5MU4wL3BMK0VUVUxSdHM3TFdxb2ticDFX?=
 =?utf-8?B?VmxnMkp4eGtLc3dubEVQMk5GQWRYSDVKdy9EYjU4SU41K0RiZ2ttT2U0NmRH?=
 =?utf-8?B?WVNLWjJzZHNDYWxINUZZd291NTBycHh6NldYK04wN0NwanBoQzkyV3lucFc5?=
 =?utf-8?B?TEkycldzODF0WWs1aTJ0MVFIWno1b2ZWT2YrdS8xTFRhZzNWUHVkdVNibFVr?=
 =?utf-8?B?OUY3NUMyNlEvVGVldTJHaGozVnA3MXVlUDJMS2RMeVloMzlwaEFETDFQZ3pz?=
 =?utf-8?B?WU0yUWR2SzZwUVlXVnNzQ3JwUGNXdXVuU2RKenJsSzNkaDJ5TW0xbzlJc1J2?=
 =?utf-8?B?RDRkc3k1WUJIMVJ4Z0tUUHFYUmtLU2FPb3lMd1REb251VEs0a09mTlJwVGpU?=
 =?utf-8?B?TFIyM2ZnUTVub1BYc0lZM2RYMFd3SlhieVFhTEw2RFFJaE5DVzQ3OVFLWGZJ?=
 =?utf-8?B?NlVsbDVsVEh1dFJJQ2hYVHlaRUhTQnowcjBRdzJrS1B4UytjVTFEVXVTMVh3?=
 =?utf-8?B?MXZ6Unl6L3JZME5RUTVaQzI0b2FhK2FzOG8xRTdYai9HSmtaalJnTW1Za3ly?=
 =?utf-8?B?S2tZU3h3Y09yb25oMHhhUDZnc0YrZ21HbjJjRnhWS0RUMTc3ajhHdGdvVTdX?=
 =?utf-8?B?akh1TnRPL0ZjVzc0L3NXRXMwMVpQYkpFYVMzRVBheWJiT1dxRGlLR29KWEt4?=
 =?utf-8?B?N1pHTU0vclZ2bC9KS05pYlAreFVEbGVqR1FKeVdZQzlTdWFoQ3VrUW43UExG?=
 =?utf-8?B?RWZhUkpOUVF1c281MEtXdHl0cnoxZ3lpZmc0OEtwYi9xTW1pRUFOY3FOSVNk?=
 =?utf-8?B?OVh1OGFXSjM0Uzh2bkI4VndzWWszbW4rSUU0WjJpNGhBM2szWHl1NmZjNTRY?=
 =?utf-8?B?cGlYaEwxNm91MWIwOFJVNWxOTFdibStWMkZzK0VnaUFFUGFnM05WZ3VHOWhC?=
 =?utf-8?B?U1FNcU9VbDZJVkpGSFlubW9ZTXU0VkZicGhZaldXZU90R2g0Zm9Hc0RZZDZX?=
 =?utf-8?B?dit4UWpFUllWS3d4dkxtNTUzZzVKb2xRQ2VXb3A0L2xudlVVOXVKQTNudUNy?=
 =?utf-8?B?TXRDN0psaUNZMSs3UUZqUlFWcTJZTGQ5RXYyQ29DWWI2Z2RyWEtRR096Z1Ns?=
 =?utf-8?B?aU1mNFBnbGV2UXJKSEZVeFlLQUkweHBQS1FKK09SWW9RMEZRN2lSR1R0WmM5?=
 =?utf-8?B?ZnM4MStBWGhsYTg4QlM3bWlwYitNNEgrZS9iaVZZVldvWStBR0RneEJUbEsy?=
 =?utf-8?B?RG45bE8vSmd4RGRCdjZKZmhBWFZZQ0pVc3FFak1qZ2JqWHlKZ0RrVXRkallI?=
 =?utf-8?B?SXpZT1pJTmcxeTU4UkpPUlZrNlZZdjZpc04wOFJkMzNQRnNNUzNRTjYxZjZw?=
 =?utf-8?B?Rms5L0ROS0pUc2RnTVZLaFBnRE80aGhTVWJUQXVyUVFJV284SWVwM3NXU2VI?=
 =?utf-8?B?TlpWbm1HNTlveWdnanR1REk2NE5nPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D35C3D7EAA725D4091B790771331E8F8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 534d9f44-da4c-4f83-06ae-08de37f555ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 14:06:38.0865 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6AcpUzyPpwEQSr2EZARwaF3+f+71Tx4FswDoq4daWumb6KYetZxq3nVjdPzRDakl7iDwvx1p8KKnDJc0NXKGz0MIREi2slKQZo7S60Fwd5A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8744
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEFk
ZCBpbnRlbF9kc2NfZ2V0X3NsaWNlX2NvbmZpZygpIGFuZCBtb3ZlIHRoZSBsb2dpYyB0byBzZWxl
Y3QgYSBnaXZlbg0KPiBzbGljZSBjb25maWd1cmF0aW9uIHRvIHRoYXQgZnVuY3Rpb24gZnJvbSB0
aGUgY29uZmlndXJhdGlvbiBsb29wIGluDQo+IGludGVsX2RwX2RzY19nZXRfc2xpY2VfY291bnQo
KS4gVGhlIHNhbWUgZnVuY3Rpb25hbGl0eSBjYW4gYmUgdXNlZCBieQ0KPiBvdGhlciBvdXRwdXRz
IGxpa2UgRFNJIGFzIHdlbGwsIGRvbmUgYXMgYSBmb2xsb3ctdXAuDQo+IA0KPiBTaWduZWQtb2Zm
LWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBKb3Vu
aSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmPCoMKgIHwgMjIgKysrKy0tLS0tLS0N
Cj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYyB8IDQ4DQo+ICsr
KysrKysrKysrKysrKysrKysrKysrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92ZHNjLmggfMKgIDQgKysNCj4gwqAzIGZpbGVzIGNoYW5nZWQsIDU5IGluc2VydGlvbnMo
KyksIDE1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYw0KPiBpbmRleCBhNGZmMWZmYzhmN2Q0Li40NjFmODBiZDU0Y2JmIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC0xMDI5LDI4ICsx
MDI5LDIwIEBAIHU4IGludGVsX2RwX2RzY19nZXRfc2xpY2VfY291bnQoY29uc3Qgc3RydWN0DQo+
IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiDCoAkgKiBUR0wrOiAyeDQgKFRPRE86IEFk
ZCBzdXBwb3J0IGZvciB0aGlzKQ0KPiDCoAkgKi8NCj4gwqAJZm9yIChzbGljZXNfcGVyX3BpcGUg
PSAxOyBzbGljZXNfcGVyX3BpcGUgPD0gNDsNCj4gc2xpY2VzX3Blcl9waXBlKyspIHsNCj4gLQkJ
aW50IHNsaWNlc19wZXJfbGluZSA9IHNsaWNlc19wZXJfcGlwZSAqDQo+IG51bV9qb2luZWRfcGlw
ZXM7DQo+ICsJCXN0cnVjdCBpbnRlbF9kc2Nfc2xpY2VfY29uZmlnIGNvbmZpZzsNCj4gKwkJaW50
IHNsaWNlc19wZXJfbGluZTsNCj4gwqANCj4gLQkJLyoNCj4gLQkJICogMyBEU0MgU2xpY2VzIHBl
ciBwaXBlIG5lZWQgMyBEU0MgZW5naW5lcywgd2hpY2gNCj4gaXMgc3VwcG9ydGVkIG9ubHkNCj4g
LQkJICogd2l0aCBVbHRyYWpvaW5lciBvbmx5IGZvciBzb21lIHBsYXRmb3Jtcy4NCj4gLQkJICov
DQo+IC0JCWlmIChzbGljZXNfcGVyX3BpcGUgPT0gMyAmJg0KPiAtCQnCoMKgwqAgKCFIQVNfRFND
XzNFTkdJTkVTKGRpc3BsYXkpIHx8IG51bV9qb2luZWRfcGlwZXMNCj4gIT0gNCkpDQo+ICsJCWlm
ICghaW50ZWxfZHNjX2dldF9zbGljZV9jb25maWcoZGlzcGxheSwNCj4gKwkJCQkJCW51bV9qb2lu
ZWRfcGlwZXMsDQo+IHNsaWNlc19wZXJfcGlwZSwNCj4gKwkJCQkJCSZjb25maWcpKQ0KPiDCoAkJ
CWNvbnRpbnVlOw0KPiDCoA0KPiArCQlzbGljZXNfcGVyX2xpbmUgPQ0KPiBpbnRlbF9kc2NfbGlu
ZV9zbGljZV9jb3VudCgmY29uZmlnKTsNCj4gKw0KPiDCoAkJaWYNCj4gKCEoZHJtX2RwX2RzY19z
bGljZV9jb3VudF90b19tYXNrKHNsaWNlc19wZXJfbGluZSkgJg0KPiDCoAkJwqDCoMKgwqDCoCBz
aW5rX3NsaWNlX2NvdW50X21hc2spKQ0KPiDCoAkJCWNvbnRpbnVlOw0KPiDCoA0KPiAtCQkgLyoN
Cj4gLQkJwqAgKiBCaWdqb2luZXIgbmVlZHMgc21hbGwgam9pbmVyIHRvIGJlIGVuYWJsZWQuDQo+
IC0JCcKgICogU28gdGhlcmUgc2hvdWxkIGJlIGF0IGxlYXN0IDIgZHNjIHNsaWNlcyBwZXINCj4g
cGlwZSwNCj4gLQkJwqAgKiB3aGVuZXZlciBiaWdqb2luZXIgaXMgZW5hYmxlZC4NCj4gLQkJwqAg
Ki8NCj4gLQkJaWYgKG51bV9qb2luZWRfcGlwZXMgPiAxICYmIHNsaWNlc19wZXJfcGlwZSA8IDIp
DQo+IC0JCQljb250aW51ZTsNCj4gLQ0KPiDCoAkJaWYgKG1vZGVfaGRpc3BsYXkgJSBzbGljZXNf
cGVyX2xpbmUpDQo+IMKgCQkJY29udGludWU7DQo+IMKgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jDQo+IGluZGV4IDE5MGNlNTY3YmM3ZmEuLjk5MTAxMzRk
NTI2NTMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dmRzYy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5j
DQo+IEBAIC00MCw2ICs0MCw1NCBAQCBpbnQgaW50ZWxfZHNjX2xpbmVfc2xpY2VfY291bnQoY29u
c3Qgc3RydWN0DQo+IGludGVsX2RzY19zbGljZV9jb25maWcgKmNvbmZpZykNCj4gwqAJcmV0dXJu
IGNvbmZpZy0+cGlwZXNfcGVyX2xpbmUgKiBjb25maWctPnN0cmVhbXNfcGVyX3BpcGUgKg0KPiBj
b25maWctPnNsaWNlc19wZXJfc3RyZWFtOw0KPiDCoH0NCj4gwqANCj4gK2Jvb2wgaW50ZWxfZHNj
X2dldF9zbGljZV9jb25maWcoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ICsJCQkJ
aW50IHBpcGVzX3Blcl9saW5lLCBpbnQNCj4gc2xpY2VzX3Blcl9waXBlLA0KPiArCQkJCXN0cnVj
dCBpbnRlbF9kc2Nfc2xpY2VfY29uZmlnDQo+ICpjb25maWcpDQo+ICt7DQo+ICsJaW50IHN0cmVh
bXNfcGVyX3BpcGU7DQo+ICsNCj4gKwkvKiBUT0RPOiBBZGQgc3VwcG9ydCBmb3IgOCBzbGljZXMg
cGVyIHBpcGUgb24gVEdMKy4gKi8NCj4gKwlzd2l0Y2ggKHNsaWNlc19wZXJfcGlwZSkgew0KPiAr
CWNhc2UgMzoNCj4gKwkJLyoNCj4gKwkJICogMyBEU0MgU2xpY2VzIHBlciBwaXBlIG5lZWQgMyBE
U0MgZW5naW5lcywgd2hpY2gNCj4gaXMgc3VwcG9ydGVkIG9ubHkNCj4gKwkJICogd2l0aCBVbHRy
YWpvaW5lciBvbmx5IGZvciBzb21lIHBsYXRmb3Jtcy4NCj4gKwkJICovDQo+ICsJCWlmICghSEFT
X0RTQ18zRU5HSU5FUyhkaXNwbGF5KSB8fCBwaXBlc19wZXJfbGluZSAhPQ0KPiA0KQ0KPiArCQkJ
cmV0dXJuIGZhbHNlOw0KPiArDQo+ICsJCXN0cmVhbXNfcGVyX3BpcGUgPSAzOw0KPiArCQlicmVh
azsNCj4gKwljYXNlIDQ6DQo+ICsJCS8qIFRPRE86IENvbnNpZGVyIHVzaW5nIDEgRFNDIGVuZ2lu
ZSBzdHJlYW0geCA0DQo+IHNsaWNlcyBpbnN0ZWFkLiAqLw0KPiArCWNhc2UgMjoNCj4gKwkJLyog
VE9ETzogQ29uc2lkZXIgdXNpbmcgMSBEU0MgZW5naW5lIHN0cmVhbSB4IDINCj4gc2xpY2VzIGlu
c3RlYWQuICovDQo+ICsJCXN0cmVhbXNfcGVyX3BpcGUgPSAyOw0KPiArCQlicmVhazsNCj4gKwlj
YXNlIDE6DQo+ICsJCSAvKg0KPiArCQnCoCAqIEJpZ2pvaW5lciBuZWVkcyBzbWFsbCBqb2luZXIg
dG8gYmUgZW5hYmxlZC4NCj4gKwkJwqAgKiBTbyB0aGVyZSBzaG91bGQgYmUgYXQgbGVhc3QgMiBk
c2Mgc2xpY2VzIHBlcg0KPiBwaXBlLA0KPiArCQnCoCAqIHdoZW5ldmVyIGJpZ2pvaW5lciBpcyBl
bmFibGVkLg0KPiArCQnCoCAqLw0KPiArCQlpZiAocGlwZXNfcGVyX2xpbmUgPiAxKQ0KPiArCQkJ
cmV0dXJuIGZhbHNlOw0KPiArDQo+ICsJCXN0cmVhbXNfcGVyX3BpcGUgPSAxOw0KPiArCQlicmVh
azsNCj4gKwlkZWZhdWx0Og0KPiArCQlNSVNTSU5HX0NBU0Uoc2xpY2VzX3Blcl9waXBlKTsNCj4g
KwkJcmV0dXJuIGZhbHNlOw0KPiArCX0NCj4gKw0KPiArCWNvbmZpZy0+cGlwZXNfcGVyX2xpbmUg
PSBwaXBlc19wZXJfbGluZTsNCj4gKwljb25maWctPnN0cmVhbXNfcGVyX3BpcGUgPSBzdHJlYW1z
X3Blcl9waXBlOw0KPiArCWNvbmZpZy0+c2xpY2VzX3Blcl9zdHJlYW0gPSBzbGljZXNfcGVyX3Bp
cGUgLw0KPiBzdHJlYW1zX3Blcl9waXBlOw0KPiArDQo+ICsJcmV0dXJuIHRydWU7DQo+ICt9DQo+
ICsNCj4gKw0KPiDCoHN0YXRpYyBib29sIGlzX3BpcGVfZHNjKHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjLCBlbnVtIHRyYW5zY29kZXINCj4gY3B1X3RyYW5zY29kZXIpDQo+IMKgew0KPiDCoAlzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY3J0Yyk7DQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuaA0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5oDQo+IGluZGV4IGU2MTEx
NmQ1Mjk3YzguLmFlYjE3NjcwMzA3YjEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdmRzYy5oDQo+IEBAIC0xMywxMSArMTMsMTUgQEAgc3RydWN0IGRybV9wcmlu
dGVyOw0KPiDCoGVudW0gdHJhbnNjb2RlcjsNCj4gwqBzdHJ1Y3QgaW50ZWxfY3J0YzsNCj4gwqBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsNCj4gK3N0cnVjdCBpbnRlbF9kaXNwbGF5Ow0KPiDCoHN0
cnVjdCBpbnRlbF9kc2Nfc2xpY2VfY29uZmlnOw0KPiDCoHN0cnVjdCBpbnRlbF9lbmNvZGVyOw0K
PiDCoA0KPiDCoGJvb2wgaW50ZWxfZHNjX3NvdXJjZV9zdXBwb3J0KGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKTsNCj4gwqBpbnQgaW50ZWxfZHNjX2xpbmVfc2xp
Y2VfY291bnQoY29uc3Qgc3RydWN0IGludGVsX2RzY19zbGljZV9jb25maWcNCj4gKmNvbmZpZyk7
DQo+ICtib29sIGludGVsX2RzY19nZXRfc2xpY2VfY29uZmlnKHN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5LA0KPiArCQkJCWludCBudW1fam9pbmVkX3BpcGVzLCBpbnQNCj4gc2xpY2VfcGVy
X3BpcGUsDQo+ICsJCQkJc3RydWN0IGludGVsX2RzY19zbGljZV9jb25maWcNCj4gKmNvbmZpZyk7
DQo+IMKgdm9pZCBpbnRlbF91bmNvbXByZXNzZWRfam9pbmVyX2VuYWJsZShjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSk7DQo+IMKgdm9pZCBpbnRlbF9kc2NfZW5h
YmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gwqB2b2lk
IGludGVsX2RzY19kaXNhYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKTsNCg0K
