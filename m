Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IiKCGL1vt2nnRAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 03:49:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAD22943CC
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 03:49:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C23C310E2AC;
	Mon, 16 Mar 2026 02:49:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kO36CaB1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0142810E2AA;
 Mon, 16 Mar 2026 02:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773629368; x=1805165368;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hPEZTtvAQza6Bo44ReolGLfXEonQhw2C12h0dRwHOck=;
 b=kO36CaB1/QjbflAwuMF+8vwEwTKo4zXaJIgRL98aqrBiKx5AhGLBoi05
 +rsqlKBc8F1ktb6hTUE6O3FMQNAshKMekFo9aQitKxfE5tSJs0+nDQKGC
 /67XREydE30NoAipGUp4+2PhGBq74aZW/v91Q//3WzH0TERcsnVOjfof2
 nCZDRiN/FLKl0h38R8/nZxwygDFMlcogo41y2QWSklRymxZJpVFZSobUS
 VOBni4ESbSuZhKI+ZUKlkxtQ/d39yK+lsAMmB7Yj2N1IknjwLziaPMQjL
 jX7qs1qfSBLOuReg8mcYEKwKPRuzAJruXhzKFZIah1mDQb9jLxttWHl/w A==;
X-CSE-ConnectionGUID: wj0YrSGPTvy1QuJoa5M3ZQ==
X-CSE-MsgGUID: eQLIV1M1RYGC92UyMNBVbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="73826545"
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="73826545"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2026 19:49:24 -0700
X-CSE-ConnectionGUID: 9JTIlm2cQyiSVuV8W+6aFg==
X-CSE-MsgGUID: KTqGmJ6GRlGeIm7oJOz+kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="226237445"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2026 19:49:24 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 15 Mar 2026 19:49:23 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 15 Mar 2026 19:49:23 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.21)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 15 Mar 2026 19:49:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cjDthT+Q5/c6g/V0rj9aZw8EbmXKbF7P6Forn9Ug1Veq7KChBngHJW8cu27xVjD1zdNQeekkQqaMQ9O8UaUSYkVYbR6ZdOcmI6j34ENsDhSifoVkRBWstchPlsQb9vKrV0OETrUfpTXjoMp30uUk5jHlSnfwdjrkhkUy+9wy4aZlooHVto7vKkMfZfQvLV+MVPtyQK0mGVksN0qmut23qSBuBf2qAKct7hP+KLQBdTI7Kmd8/CU+dPZpBGNLIqyIjrrxdih9+UQcnSrvj27kleoSwQ5r7eOUg+EowXU5SKKaTodBleYj+bk/IqXyvW58tpiT0J2CdQNGxqJPY5iRkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hPEZTtvAQza6Bo44ReolGLfXEonQhw2C12h0dRwHOck=;
 b=VuvVBRpJVnVrGJdfRj3bD8Z5WNwIgYrL9tITc1LyFMeav00nwYhgC9SqY3sFDKKfYjd9I1cXUAq9UKU1oagpysIbzjbF+jCJPrL4+ngMq43idY5KXQ6V45Lcit2zkzFhR9gSR4Btg38TfTYkdCNqtC1YIHJULywPUsxcCPBZhLuwLBIVaBSxEU/NXIOs/9e5WIlxw/s24nY67yrMLZTqxMc8IwHV6u4FF/OyN0WHxv6ZavQmZp6nAcD0lFxeydChYyoXNMZcqft1iNo8c4ZK0bL3oPcJVEzlFSsSlvU2zzHPhtcdms1Tdc9d1PJ3tVoufCcdPcbrTl+/9iy/y37Tpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH7PR11MB7100.namprd11.prod.outlook.com
 (2603:10b6:510:20f::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.13; Mon, 16 Mar
 2026 02:49:21 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9723.008; Mon, 16 Mar 2026
 02:49:21 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Shankar,
 Uma" <uma.shankar@intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
Thread-Topic: [PATCH 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
Thread-Index: AQHcsSHWLW1MaEEmHE6nBRY4po2yObWqOcBggACbloCAAPkh0IAAEhaAgAAA0SCAAF2LAIAAARHwgAAWBwCABCXPgA==
Date: Mon, 16 Mar 2026 02:49:20 +0000
Message-ID: <DM3PPF208195D8D26279862C7A66740E855E340A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260311063259.2608206-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260311063259.2608206-3-dibin.moolakadan.subrahmanian@intel.com>
 <DM3PPF208195D8D8D1894ECDE4A41681332E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <dcba6eaf-1f57-4094-be69-0c8d116f92a7@intel.com>
 <DM3PPF208195D8D96EA050D075A0AF09F07E345A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <7b072000-0b8d-4910-ae05-0eaac6d9e94a@intel.com>
 <DM3PPF208195D8D6302B536CF802D111F55E345A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <abPg2j1wS_QLPIdJ@intel.com>
 <DM3PPF208195D8D00F123DBDB50B578B8F0E345A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <abP0OsNCqxhoaBCV@intel.com>
In-Reply-To: <abP0OsNCqxhoaBCV@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH7PR11MB7100:EE_
x-ms-office365-filtering-correlation-id: a89216a2-a507-4a58-634f-08de8306a002
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: lZsGbkSeeYZZDja8GX5+jClMsgIYThvrJ9qj+QN0KNWHDFpuB4meSaE4OzIxwI2oDoxIkMSOLD/puBFern09NfEBXAw4JpC6x0AQaylv/0R72egEAViZ2t3ZVjubmbjgVpzK38s24SO/rlJQa91J8I8TT8GfGXfdsJX+vCJBCDvyhSGfWpBf0mN0ibCIlZwoDeAllSL7spjos+zSR1Y3inOOfWQWdID5w8qdIUYNWqj1MVtoMm1Q88q6L+/Q6zAlfy03Dp8Lglvz2tZ4wHDBCfeycHxGhvpUdGUaWteqxTKneP4vwTAfI3LuhpczCpoKcd9nF7UvAr0TXEF0vJ8YU4WKWLfPNRv/uyD5YofzZA3dT6cf/s1f/4zkTn0S5l1JdH0FDWC1/2Wj1Hoct8umLSuDXOhUUO/E2Y9byOqIBJb74MeOj8jqhl1y09s03+9eUkzvjHn8+Bsv4alIp27kT+Lu8ra2D540XWeQZ2i2UeQGv9Fl9RIP1YLlW5eHHZNxNk1PX7ukBX9GwVkAridK/5J49meOivBecvOp3WK/hy7tSJ/sndvzaJM0f/tEvjwvyz2yNxeIYv+kZaB1JxewAvxqGK0xS5Th+yZmP2VsGreXtNxWrG3uN3TkmpQ/a64kVgIs+JbaPgMPAzztzwecspr99HgtOjU8ABv4moeyl5E85AzPFOSg3OqsXfmMdShogB50g4kVwaw73PWI8DEKaAig1TufPeLjOuVi0V3MzU57HHvQNsGlac0AWm3PBaYy37ziG7IClkf9GUm4gK7IvZW12q9Qvyf1uQmS7mP0KoM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ampkRGpTZ3BEZnhybi9FNzJGVDFtZEkrVC9rejF5c2V6YTg4dURxT2FZZkk0?=
 =?utf-8?B?YXlSMk1lcnpuYnNtVTczVXRuSnVhU0xJM0RoY2ZuWUJmeFRGbmN3WVcvamF6?=
 =?utf-8?B?L3lTbzdDaXg5c0FvbC92dTFWbDdvbzUwRGhWQlYzZmQvZzVCZDB0VUM1Vkpm?=
 =?utf-8?B?dG43cDk0c1d5VVoyZWM0NUhnTG1IenBLQmxGQ1VUUS9STC8zK0EvVEhBeTZ5?=
 =?utf-8?B?QnR4REQ1VDZoZDNtRFRiNGJRMUtjeWpuOVpLTnVNWldWdnk4d2RiRDVaM2xn?=
 =?utf-8?B?Qk9Qd3V6dHFFWG5UdjYzNjdUdGM3T1prMGJ6NENMdm1xWnRmUW56UFB4RnpI?=
 =?utf-8?B?Mk4wSlhkUU5nM2puQ2lHREZvYTV0WVIvVFRESThpNTZmTFI3WDcxTkJUM0p4?=
 =?utf-8?B?S1hBVUhINDRNSHp5TmpsdVpKTWhZSlNvcm56TDQxdmFDU0F0aFJ1WjVObkJH?=
 =?utf-8?B?bUhDQ1R6WnlzalluaC9VT3Q1akxmZkVvZEhxNFNwT05CMDhJdUhEZ0JxU0Fk?=
 =?utf-8?B?YW9nYk5KeTNPZ2UwZ3ZLTUJZTllqanlFVVZQNGc1L3RmYU5EWitMY1UwU1lN?=
 =?utf-8?B?MUtxSXl5YTRBck5XTExqS3pPS2g1T1N1VEpOSnlESmpHVUg2bWF2ckd1ZzIw?=
 =?utf-8?B?TzlVYkFsU1dvL3J6Z2xyUHdtWUJCN01SN2JNczRFRjg4UHBlMzV5U3FMMEFU?=
 =?utf-8?B?UVVLb0lPZ0VGM1lCckhoV1ZRQkd1WVhoZUxYUmNKaDdDRGxLZ2dMZkpuU2tx?=
 =?utf-8?B?bTA5SjdRc3hMQlUyZ2ZlSHFUallMNHlsclhNdFNBaGtKZGI0R0dNRXlyQkNQ?=
 =?utf-8?B?enRtRnFkb0dxYWdVWlJOYjJ1aTJYWDR2Kzg3cUx5R3h2NzdtYnFXUE5DS0JP?=
 =?utf-8?B?K0tCYVJKUlBqVGhMTDJpcFUxMVk0bHY2Z21lYW9rWW9KRXdZV2h6MXkyeHAy?=
 =?utf-8?B?TXV2QksrUDd3WkREVUd3UWxENWwvaWkwVW5PQXZtQ0hsRXo3Q1BTcWZtV3NT?=
 =?utf-8?B?dm96VithZHBZWXlMQ0xhQXJ5UGZSdkFPRUVqaVJCaWdMVlkzb3ZaT0oxNWhx?=
 =?utf-8?B?dDJXVml6VWJ3L3dOU1hMR2QvQXFTcVpvZ2R4Um9hRDlQL2g3SUd1VDhPNnp5?=
 =?utf-8?B?S2ZnUGJBaThpd2J2MTFtNkNLNnc0UW9UYVplY1pUeGUzVGhwVjVIMXBBVEN2?=
 =?utf-8?B?WmVyQktyY2hsWmFuUktubktGNWlzWVZTNGFzNXRQK0ZZWEErb1VMZUU2UVc1?=
 =?utf-8?B?QTNlTmZEZW9nSE14Q3RlbEVGaFdFS1d1OVRsMzZtcmQyNTQwSEs1RDJ5R1l0?=
 =?utf-8?B?TkRlL0NPblp1REVGOUUreE9IZ3ZwM0svN0M2N2xUYWpsRXhnQVpxVlR6bVdU?=
 =?utf-8?B?N2hYRnVJYndiZ1kxYU1JTkY0bVplUldWN3J1WEpPVGt4NnlFY3hCbS9WZ1pz?=
 =?utf-8?B?RWNDOW9DYi9acmUxTk9XU01jZ0pmMnNWVVhkVUg4MVlrc2FoK1pUOEc2N3pH?=
 =?utf-8?B?VWhxaHF1ekhYSE1OK09GeEhJY2p4SlVDWkJ4UDBuNVBYUTNxeFNlbEZMZGt1?=
 =?utf-8?B?NWJwcFJ6bGFZSTVVTk54dTJrTEloUFdVQld6Q2xTYnQ5ZGhoNXl6MUdwdWNh?=
 =?utf-8?B?NTFQYXVxek9tYTZBOU5BN01DeDFwK0F4dzVLeEprck9neHhycEdObHYzelZj?=
 =?utf-8?B?OFYycFJlOEtTSWlqWS9iTmh0aEhVNWY4eVJWMjBYc3BaK2xYV2crdExvSVE4?=
 =?utf-8?B?cTduNXBqTjdqdVBGMEtyelU4ZjZvUDZiMDFOR2ZBaThBZHRmK3ZmNkI4T3B3?=
 =?utf-8?B?U3M0Y3oxYTNxSE9hRkgwdkg3NVF4MkwxS2VXUW11Z2tEZXh0NjhnQ1NQczJt?=
 =?utf-8?B?Wk1GQVQ1ZzRhY2JGSm5YY3hSRGRVZHUzTG1rWm5peGV3M0t4K3FtVDBVVG1Q?=
 =?utf-8?B?amNZa3pIUXJNYTdBM0NTQ3E1RmxoY3ZLYjZ3OElNMldQLzhOZ29qZnVVcWxI?=
 =?utf-8?B?TmdpQlNzdFRzbDA5WTcvZnQ2bHFPL0ZrSzBXNjQ3ak9ndFNoMGZNRXF5U0NP?=
 =?utf-8?B?RlJ5WVBoQmJNSU5BS0REM3JNSkFvZFRPMXBpazlFNDMzY0hnTVNIdnhHTzlX?=
 =?utf-8?B?Y0gvWFJ5SnNPYzh6T3JhS1o5bHBWa1Z6WGpGZXB3NFZNVU9UTnIrcmdSaEY3?=
 =?utf-8?B?d2NuV2lsS1BkUVhKenI4dVdraHFwSnpaSzEyU0dvemtKcjhjdFd2SHUrYWRm?=
 =?utf-8?B?S3NUUGVQUXNhODhDeWFIK05WVUZLaS9xQlFNVGRyRkhiV2lFcFJ0SXRob2Jn?=
 =?utf-8?B?ekJWN1ZoYUorVGxyRUdocFRlNnB2QXZmajVYclJ1a1MxQ1JnUllzdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: gPa/7F9VW3Cm5bNT42GL40NzoU3omQLVTNuRwKHF39LpjJzvy47oeJMndZ35co3CGCEsz8AQRoKS2LJdbsyMNavPpTUS+1C+a+gN7ZfxYzqOYYHx1WMbSd+BRRwYDDE3RrC27bfqKznrs9j/VzzmNOTAWRWuMdWDlugfwaihrvj42KmpBI9UWOrcdORkDrT11GR+FsyQQXU3KrnhSNNmTKcvWdalpABVKOAphSuI8Scht8xXnHX+iJiU6OnhkjPg4yBTz5E7nq+jt0U16Bq6rePBo0ZYItpNpo4/4oYmcLNEptokNkBBLav7Lq8IZu1Y/hxynMDX8OWxawesvR2j5g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a89216a2-a507-4a58-634f-08de8306a002
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2026 02:49:21.0594 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ql/ClFawA1n8pMJDGBcRWRYZ6SlB9cVqaLSF5YUTZpU/wITAcnuKFdBhxlaQtjZbtED1Fl7lmNBimcEmIK7OIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7100
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: ABAD22943CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiA+ID4gPiA+ID4+Pg0KPiA+ID4gPiA+ID4+PiBpZiBkaXNwbGF5IHZlciA8IDM1DQo+ID4gPiA+
ID4gPj4+IG1hc2sgfD0gUElQRURNQ19HVFRfRkFVTFQgfA0KPiA+ID4gPiA+ID4+PiAgICAgICAg
ICAgICAgICAgICBQSVBFRE1DX0FUU19GQVVMVDsNCj4gPiA+ID4gPiA+Pj4NCj4gPiA+ID4gPiA+
Pj4gUmV0dXJuIG1hc2s7DQo+ID4gPiA+ID4gPj4+DQo+ID4gPiA+ID4gPj4+IE9idmlvdXNseSB0
aGF0IGlzIGlmIFBJUEVETUNfRVJST1Igd29ya3Mgb24gUFRMIHByb3Blcmx5Lg0KPiA+ID4gPiA+
ID4+IFRoYW5rIHlvdSBmb3Igc3BvdHRpbmcgdGhpcywgSSB0aGluayBpdHMgYmV0dGVyIHRvIGFk
ZCBhYm92ZQ0KPiA+ID4gPiA+ID4+IGxvZ2ljIGluIG5ldyBzZXJpZXMgcmF0aGVyIHRoYW4gY29t
YmluZyB3aXRoIDM1KyBiaXQgbWFzayB1cGRhdGUuDQo+ID4gPiA+ID4gPj4NCj4gPiA+ID4gPiA+
PiBSZWdhcmRzLA0KPiA+ID4gPiA+ID4+IERpYmluDQo+ID4gPiA+ID4gPiBJZiB0aGF0IGlzIHRo
ZSBjYXNlIHRoZW4gSSB0aGluayBpdHMgYmV0dGVyIHRvIGRyb3AgdGhpcyBwYXRjaCBhbHRvZ2V0
aGVyLg0KPiA+ID4gPiA+ID4gV2UgaGF2ZSBhIGp1c3RpZmljYXRpb24gb2Ygd2h5IHdlIHJlbW92
ZSBiaXRzIGluIGZpcnN0IHBhdGNoLA0KPiA+ID4gPiA+ID4gdGhhdCB3YXMgYSBjaGFuZ2UNCj4g
PiA+ID4gPiBpbiBOVkwgSC93Lg0KPiA+ID4gPiA+ID4gQnV0IHRoaXMgY2hhbmdlIHdhcyBpbnRy
b2R1Y2VkIGluIExOTC4NCj4gPiA+ID4gPiA+IFdpdGhvdXQgYSBzdHJvbmcgcmVhc29uaW5nIG9m
IHdoeSB5b3UgYXJlIGVuYWJsaW5nIHRoaXMgaXMgaW4NCj4gPiA+ID4gPiA+IE5WTCBhbmQgbm90
IGluIFBUTCAod2hpY2ggSSBkb27igJl0IHNlZSBpbiB0aGlzIHBhdGNoIHNlcmllcykgSQ0KPiA+
ID4gPiA+ID4gc3VnZ2VzdCB5b3UgYWRkIHRoaXMgcGF0Y2ggd2l0aCBhcyBhIHBhcnQgb2YgdGhl
IHNlcmllcyB3aGVyZQ0KPiA+ID4gPiA+ID4geW91IGhhdmUgYSB1c2UgY2FzZSBmb3IgaXQuIEFu
ZCBpZg0KPiA+ID4gPiA+IHRoZXJlIHRvbyB5b3Ugb25seSBhZGQgaXQgZm9yIE5WTCBZb3Ugd2ls
bCBuZWVkIHRvIGFkZCBhDQo+ID4gPiA+ID4gY29tbWVudHMgYXMgdG8gd2h5IHRoaXMgaXMgbm90
IGVuYWJsZWQgZm9yIFBUTC4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+IFRoaXMgcGF0Y2ggaW50ZW50
IHRvIGZpeCB0aGUgaW50ZXJydXB0IG1hc2sgZm9yIDM1Ky4NCj4gPiA+ID4gPiBJIGRvbnQgc2Vl
IGFueSByZWFzb24gdG8gZGlzYWJsZSB0aGlzIGJpdCBhcw0KPiA+ID4gPiA+IDEpIGVycm9yIGJp
dCB3YXJuaW5nIGlzIGFscmVhZHkgcHJlc2VudCBpbiBpbnRlcnJ1cHQgaGFuZGxlci4NCj4gPiA+
ID4gPiAyKSBiaXQgaXMgZGVmaW5lZCBpbiBic2VwYy4NCj4gPiA+ID4gPiAzKSBMTkwgaXQgd2Fz
IG1lbnRpb25lZCBkaXNhYmxlZCBiZWNhdXNlIHBpcGVCIHRyaWdnZXJpbmcgaXQNCj4gPiA+ID4g
PiBkdXJpbmcgZmlyc3QgREMgc3RhdGUgdHJhbnNpdGlvbiB3aGljaCBkaWQgbm90IHNlZSBpbiB0
aGlzIGNhc2UuDQo+ID4gPiA+DQo+ID4gPiA+IEluIHRoYXQgY2FzZSB0aGUgaW50ZXJydXB0IGhh
bmRsZXIgaXMgbWFkZSB0byByZXBvcnQgZXJyb3JzIGlmDQo+ID4gPiA+IHRoaXMgYml0IGlzDQo+
ID4gPiB1bm1hc2tlZCBmb3IgID49IExOTC4NCj4gPiA+ID4gTm93IHRoaXMgYml0IGlzIGludHJv
ZHVjZWQgaW4gTE5MIHRpbWVmcmFtZSBmb3Igd2hpY2ggdGhlIHJlYXNvbg0KPiA+ID4gPiB0byBu
b3QgYWRkIGl0DQo+ID4gPiBpcyBtZW50aW9uZWQgaW4gY29tbWVudCBhbmQgZG9jdW1lbnRlZC4N
Cj4gPiA+ID4gU2ltaWxhcmx5IGlmIHlvdSB3YW50IHRvIHNraXAgUFRMIHlvdSB3aWxsIG5lZWQg
dGhpcyB0byBiZQ0KPiA+ID4gPiBkb2N1bWVudGVkIHdpdGggdGhlIHJlYXNvbi4gV2hpY2ggbWVh
bnMgdGhlIEZJWE1FIGNvbW1lbnQgbmVlZHMgdG8NCj4gPiA+ID4gYmUgbW9kaWZpZWQgSW4NCj4g
PiA+IHRoZSBsZWFzdC4gSWYgdGhpcyBwYXRjaCBpcyB0byBnbyB0aHJvdWdoLg0KPiA+ID4gPiBB
bHNvIFZpbGxlIGNhbiB5b3Ugc2hlZCBzb21lIGxpZ2h0LCBvbiB3aGF0IHRoZSBIL3cgZm9sa3Mg
aGFkIHRvDQo+ID4gPiA+IHNheSByZWdhcmRpbmcgdGhpcyBhbmQgaWYgdGhleSBoYWQgbWVudGlv
bmVkIGFueSBXQSBmb3IgTE5MLCBhbmQNCj4gPiA+ID4gaWYgdGhpcyBpcyBmaXhlZCBJbg0KPiA+
ID4gTE5MKy4NCj4gPiA+DQo+ID4gPiBJIHN1c3BlY3QgaXQgbWlnaHQgYmUgc29tZSBraW5kIG9m
IGlzc3VlIGluIHRoZSBETUMgZmlybXdhcmUgd2hlcmUNCj4gPiA+IGl0J3MgYWNjZXNzaW5nIHVu
cG93ZXJlZCByZWdpc3RlcnMuIEJ1dCBpdCB3YXMgbmV2ZXIgaW52ZXN0aWdhdGVkIHByb3Blcmx5
Lg0KPiA+ID4NCj4gPiA+IEl0IHdvdWxkIGJlIGdvb2QgaWYgc29tZW9uZSBjb3VsZCB0YWtlIHRo
YXQgdXAgYW5kIGFjdHVhbGx5IGZpZ3VyZQ0KPiA+ID4gb3V0IHdoYXQncyBnb2luZyBvbi4gVGhl
IHByb2JsZW0gaXMgZmlndXJpbmcgb3V0IHdoYXQgZXhhY3RseSBpcyB0aGUNCj4gPiA+IHJlZ2lz
dGVyIHRoYXQgY2F1c2VzIHRoaXMuIEkgZG9uJ3QgdGhpbmsgTE5MIGhhcyBhbnkga2luZCBvZg0K
PiA+ID4gUk1fQ0FQVFVSRSByZWdpc3Rlci9ldGMgYXZhaWxhYmxlIGZvciB0aGUgRE1DIHRoYXQg
d291bGQgZGlyZWN0bHkNCj4gPiA+IHRlbGwgdXMgdGhhdCA6KA0KPiA+ID4NCj4gPiA+IElJUkMg
dGhlIFdpbmRvd3MgZHJpdmVyIGRpZCBzZWVtIHRvIGVuYWJsZSB0aGUgZXJyb3IgaW50ZXJydXB0
IG9uDQo+ID4gPiBMTkwsIGJ1dCBlaXRoZXIgdGhleSBqdXN0IGlnbm9yZSBhbGwgdGhlIHJlcG9y
dGVkIGVycm9ycywgb3Igc29tZWhvdw0KPiA+ID4gdGhlIHdheSB0aGV5IHVzZSB0aGUgaGFyZHdh
cmUvZmlybXdhcmUgZG9lc24ndCB0cmlnZ2VyIHRoZW0uDQo+ID4NCj4gPiBIbW0gd291bGQgaXQg
YmUgb2theSBpZiB3ZSBjYW4gbW92ZSB3aXRoIGVuYWJsaW5nIHRoZSBiaXQgZm9yIE5WTCsNCj4g
PiBzaW5jZSBEaWJpbiBzYXlzIHdlIGRvbuKAmXQgc2VlIHRoaXMgaXNzdWUgQW55bW9yZSwgd2hp
bGUgd2UgYWRkIG9yIFRPRE8NCj4gPiBvciBGSVhNRSBpbiB0aGUgY29tbWVudCB0byBpbnZlc3Rp
Z2F0ZSB0aGlzIGZ1cnRoZXIgZm9yIFBUTCBhbmQgTE5MDQo+IA0KPiBZZWFoLCBJIHRoaW5rIHRo
ZSBzb29uZXIgd2UgZW5hYmxlIHRoaXMgb24gTlZMIHRoZSBiZXR0ZXIuIFdlIHdhbnQgdG8gY2F0
Y2ggdGhlDQo+IGlzc3VlcyBlYXJseS4gRm9yIFBUTCBzb21lb25lIHNob3VsZCBqdXN0IHNlbmQg
YSBwYXRjaCB0byBlbmFibGUgaXQgKHNlcGFyYXRlbHkNCj4gZnJvbSB0aGUgTlZMIGNoYW5nZXMp
IGFuZCBob3BlZnVsbHkgQ0kgd2lsbCB0ZWxsIHVzIHdoZXRoZXIgaXQncyBzdGlsbCBhIHByb2Js
ZW0NCj4gdGhlcmUgb3Igbm90Lg0KPiANCg0KRGliaW4geW91IGNhbiBhZGQgYSBjb21tZW50ICJU
T0RPOiBDaGVjayBmb3IgUFRMIGlmIHNldHRpbmcgZXJyb3IgYml0IHN0aWxsIHRocm93cyBhbiBp
c3N1ZSBhbmQgZW5hYmxlIHRoaXMgYml0IGZvciB0aGF0IGdlbiB0b28gaWYgaXQgZG9lcyBub3Qu
Ig0KV2hlcmUgeW91IGFkZCB0aGUgZXJyb3IgYml0Lg0KSWxsIHRha2UgdGhlIEFSIGFuZCBzZW5k
IHNlcGFyYXRlIHBhdGNoIHNlcmllcyBmaXJzdCBmb3IgUFRMIHRoZW4gTE5MLiBUaGVyZSBoYXZl
IGJlZW4gc29tZSBETUMgZmlybXdhcmUgdXBkYXRlcyBzaW5jZSB0aGVuIGhpZ2ggY2hhbmNlIHRo
aXMgaXNzdWUgaXMgbm90IHNlZW4gYW55bW9yZS4NCg0KUmVnYXJkcywNClN1cmFqIEthbmRwYWwN
Cj4gLS0NCj4gVmlsbGUgU3lyasOkbMOkDQo+IEludGVsDQo=
