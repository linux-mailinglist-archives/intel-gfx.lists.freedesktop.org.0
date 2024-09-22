Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC24C97E0F6
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Sep 2024 12:46:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA1D510E169;
	Sun, 22 Sep 2024 10:46:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GMoZyWCL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C252D10E169
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Sep 2024 10:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727001983; x=1758537983;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=su68/0QFtlxvY1j4LQswlhi8jNUCdkSuEQxzoc2cfLM=;
 b=GMoZyWCL2TuaNBkPONghIBDfc0kgaA4ze8AmEBM+ljwUiwrwwgrAOhwp
 +QjJttbjS2yG/RhBfgb62tRVLQOKJH1x7TYLvqQiizs7e7fwDY27HiMUW
 RzH3l1TgoeVU71NoX8IabyVMc1ZVyOo3FlF+Io0m21AVu3ImomvOxectT
 otMtC3Foq92zROhHXRn5HwykmifnmA2+iCC8VcOJ3UBHtzOcHLNAsCZco
 JSZN1f1zPCNg8UblRb9+UJ3TSg4zj6cnEreKM+NqCbrrO1d1iexWyOViS
 mwX9ifkCKT3Oez5astBg86u1wKePC49OXmZl+UktT2zyp8wTzvGqD5Gdw w==;
X-CSE-ConnectionGUID: qPMvM7ZGTd6vKY5eECQmZA==
X-CSE-MsgGUID: /rDxhbSAQIqqg0GIujwmFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="29853042"
X-IronPort-AV: E=Sophos;i="6.10,249,1719903600"; d="scan'208";a="29853042"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 03:46:22 -0700
X-CSE-ConnectionGUID: ZRWWQGnAQfiS8mDGFum+DA==
X-CSE-MsgGUID: DxLCPW9DQyagJtM8AE5UDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,249,1719903600"; d="scan'208";a="70659832"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2024 03:46:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 03:46:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 22 Sep 2024 03:46:20 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 22 Sep 2024 03:46:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U2DqlX26svGHclzEOTuB7z6gLbhNtdXcfPQdUYKVM5wDUniTPvfp/YVB+BKHo0xbqyP2d9tC5IpfFLvr/SaciOkiYkPgtMf/2M2qBZecP1jKNDGM+3zJUp3O5B3wJucAJ/fEzTHj/DvyLsBAfL7Q8j1BH4QazllWz+Um0GQhNe4jHhRwWHmwxm8WuwLnX87OWC+g89JnU2gXd4s9e5iRanxnEYolcqeY9VW5s04Y/esQPyUeSZBNcof1dmEMs+0wdcKzgOoouIiRnHi9JdLhmN2pxmrX3mS5QkL7+ij9U6k8JNyPJHvKDUwqgeafgVMltC1cyZy/R/Hb1/Mi/YXKiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=su68/0QFtlxvY1j4LQswlhi8jNUCdkSuEQxzoc2cfLM=;
 b=baOaoDc5CvXvfmpJHnGPAovt3KioukzA1VsAQCbV+Ikyz0jqXmjbyoWoXwgYwWM5+l1H6b3rbPept+NDsaQlCQhYfIjgZiYflXTgfh5u7f8Krn7nDudOzLeTlLOuoQC7neh1JhBHtdkvwgIwnWDi2s2iiOXIXTirMR089N43d8ALV3jgKf7NxCLqa3l/JcepRle8XdFxJNp9kogXDT7q+uo36Qm9lLQ1DoSSK+Yde2ByhfHh+TC05PCBdXwTTAlL/rTc6HsL/5GJE6QN/FR3cu3d32fkwpClk0LTCQKEHRHnO6ToIsQqP7GhXr5Apfo+RdD1tXTVZCWPtA1DLiqFaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA1PR11MB8447.namprd11.prod.outlook.com (2603:10b6:806:3ac::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.24; Sun, 22 Sep
 2024 10:46:12 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.7982.022; Sun, 22 Sep 2024
 10:46:12 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 6/7] drm/i915: s/disable_lp_wm/disable_cxsr/
Thread-Topic: [PATCH 6/7] drm/i915: s/disable_lp_wm/disable_cxsr/
Thread-Index: AQHbCFT45oaNAi/nZk2pEPBu5qHdK7JjqJyA
Date: Sun, 22 Sep 2024 10:46:12 +0000
Message-ID: <c04806da054cfb048ae5639bc1c4894cd894aa7c.camel@intel.com>
References: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
 <20240916162413.8555-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20240916162413.8555-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA1PR11MB8447:EE_
x-ms-office365-filtering-correlation-id: 5b8abd5a-0906-40d5-9ffc-08dcdaf3c6da
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?SWI4REZXSHNNL1BWRXJmLzR2QW5NamJ3N0Rha2ZySzRFQS9ZRFY0amM1Z3h1?=
 =?utf-8?B?RTc0RldlWUszU1RMNHprdXlGZ3NvTHIvVkNQNzhKb1dKNVI2TWt5QXJKQXA0?=
 =?utf-8?B?VDcwdTh5bWhxVkM3Nk9jWlpWbkZCc28weWZTc3drVGdIT1ZNTXFpNytmWHdr?=
 =?utf-8?B?T1NsbEFObDdzOTRjOU9tdmpGR1FzYS9xcG4rSUxQU1NVckVCUzN0Uk54TEdW?=
 =?utf-8?B?RkFpNmwyVG1PbmdibzdCa3BvWENQajgwS1ZVVHdKOHBLcUJLRTc0UXNoYmZu?=
 =?utf-8?B?YzRsRkRDMnlJUmFYZFU3bncvNmFCSzlseFZjc29icTZQMTZWaCtkcVgySG0w?=
 =?utf-8?B?VUJFMDNJalYxaUlIc2pYcXhxZ3d1M1RBRm9jOXpRNHNoSDVVcjk5bENJOHVa?=
 =?utf-8?B?cGRiSXVGWVQ0dFQ1VVNrZjZxV3VsVTR6ZlZ6SmpXQUNYNlhWNVFpNExQbC9H?=
 =?utf-8?B?cVd2aFZtaHR6SnBibkFQVVVMV2l0a1pyYXpyd3pVSitRSXlHVVpkQkg3VGls?=
 =?utf-8?B?YURqSm5YMUY2ZEtLa3Z2VUFhSGgvN2N0RXBuY1FrdDFIcUlLSmw0cDNFVmcy?=
 =?utf-8?B?OVdxRUV5ZWpYTFQySXBsU1BDQXpmOHdmdGkrekV6bWFkbVRuc0p4WHZZKzZI?=
 =?utf-8?B?bHhHcnpDSDJzQXhxbWVOaFJkMjVvT3pqRHoxcm41MTJQeGo0Qkx5aG1ZZlVV?=
 =?utf-8?B?cmxhd0JZNkdvOU5CUk56SlErcytTdjRFdGI4U3UrYXdxN0s4YkkwOXpOUjRU?=
 =?utf-8?B?eStBMGVqbTluNFlKQVdxOTYwVEo4anVRQUhyZzlJbmM2ZitXZDF3WFhxWDNL?=
 =?utf-8?B?VGdyMzdneWdSc2I5dlVvYTh5ZGs0Q2lMRnVoeXE0ajlVNHEvb3NHVkJTK0E5?=
 =?utf-8?B?VXlNRVBNSHhmYklRSTM3NGxmSmRTSURRM3ZpNEhkdXRQVVR6RTVZZUdnL1RN?=
 =?utf-8?B?amdDSk1wREYreEJYcEdQUW9uK3FqMWVzUXNOc2ttb29CeWR1TnJhc0dZQ1Nm?=
 =?utf-8?B?Z2pSOHNSV25jay9KOTJXTExhQ3Jnc2kwN0VkaHVId2NRZXBlVVhidSs1dW4v?=
 =?utf-8?B?eXg5MXhZTEgvRi9xZjhDdm9Cd2NHbWNuS0o4eVhhVEVjY212U2NJMktwQWhW?=
 =?utf-8?B?eUhJRHZmY05QNGNlQjVkV0llRTgwQk1XZDlKUUJPcnYzU0lLcnpJeUdvWTRk?=
 =?utf-8?B?aXBnaTg1SUtzdGVkTzhMNzI2SnhsMVZQeC9ZYTlUSURvc3NQWnFpTk1jYlFT?=
 =?utf-8?B?WkltMlU0R3BuMmtoWUFXRlVkd29SaWtRTFk0ZzFtaEluR0FnbmdjdnFPQkx4?=
 =?utf-8?B?anhHNWJsSGt6cmdLVlhqY0VUR3BLUkVJd1MyYjA5SXhGSWNOS2hualRJSHdv?=
 =?utf-8?B?VmZjcWNUK3hUaldoMnJSVzdZaUgxYlFTQ0ZhdnIzdWVXTVJyRFpNWXU1WGMv?=
 =?utf-8?B?anNOc0gyblVWbGQySjUweURzb0xacFdHWUhucVB3Z2FFWUJObHRQaXNSYzRP?=
 =?utf-8?B?bS8ydWRuNDNMUVc4Vm10UnRTOGRMbTROZEhQWjBOaytRUGRrRUFRL0kvWTdT?=
 =?utf-8?B?Z3NLN09lTEZKMDVTNXYzRXg1OEtuRzJjUUp5WGRoSDBOTDN1VnJDVzIyck5C?=
 =?utf-8?B?NGFTVEl0NjRndmU4RHlvODJ5cnVsVWtyZ05UeXhQb0pFeUM3Q1Z2dTIzc0ZS?=
 =?utf-8?B?YzM3TlZuQ0NRQ2I5ejIyVjE1dnh4cHRKMFJSYXkxUFd0Z3oyZGV0c1Brb3Jq?=
 =?utf-8?B?bVY1ZzNxODl1c1VwOE5WZmdJbW9JU0NRVzBIam9oRFhFbEd6bXAzNlVPZnZZ?=
 =?utf-8?B?ZHNoSi9zRG9TNnZXWEZxdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NXdWUUt6eXl2NDBNOVRDZWYweExhanhvNDZtbUFNdTJsTVAzRVhIamVUVTVL?=
 =?utf-8?B?bXFsVUNESjFCdjdDb2VXUmp0YkFVbHNlTWlIQ3dxRmNVdTRaY1M4K082aTMw?=
 =?utf-8?B?UUEyVzA3aGUvVytUcUFiK3VTQytxWFpuczFaUnVia0J3Z2ppbURwb3JnRHJr?=
 =?utf-8?B?WFhhS1prWUFYRVdSUVo2d2F1VGJZU1NVZWlIOGZ0TXRvbGZENmUyYmRYRVVY?=
 =?utf-8?B?YVJ4a2FPR1owVFBISkhLMU05ajVjeDBHa3VuVUk4WVozRVdzMEp6T1VTZ01s?=
 =?utf-8?B?V0VSampOWDVoS1hMU3VxUnRYOGllRTFBaU9PVWQyWTFPeVBGWUhYdm1uRGJY?=
 =?utf-8?B?RUF1SXNSTHdBT0dEaWY4V05QWnhLMzIvTUJQTnhxTFhmZStQS0o3ckx6clQw?=
 =?utf-8?B?Um9wZDFLdHcvNlpkc2QrRmt3a1E1cDJ6YlgyYmRaUkhmQ1VGTGlJcU50d3RV?=
 =?utf-8?B?bk5HeGkyT2d2V3E0Mk13RkNHZnROeTJyTzI5cThHc1NkNm4rQmgvcjY2aUdO?=
 =?utf-8?B?eFlKaWp5Zk1UUjB2UmwrWnpQUlZsRDM5Rm0xeEUrZ2NneHY1ajVZelNNUlZ6?=
 =?utf-8?B?RmlTbExXOG9YZGxiZjdqNit6VmRCZW0vV1dGcDVRU2lmODR6RGNwOTlxMllz?=
 =?utf-8?B?WE5FTUpLUGVaeGxuOFlTWmpNL3dhUXgyejNsdkVCcUVjS1F5WjlDOTJnTnJQ?=
 =?utf-8?B?MGNNM0hodzhBVlI2YUFMc0kzOVNIVXNMU2c0bmVTcTlSOURwbHh5ckxwcFpZ?=
 =?utf-8?B?SXo4RDBRZWY2Q0t1cjNMZ2hPQzJGeEo1dFRxOVQ5djVEcHRlcDZtOHNEUEEx?=
 =?utf-8?B?M1UxemFWQkpTeHZ0SUZNUWNrWTRJaGFUVUpPOS9hZnRLeXcyczl0aFJ1ZlpB?=
 =?utf-8?B?YjBIdTZDbG1CRVFBZHRlRGs2azROVjhUVmZRSkhFdUVDRnhnamN2UkFKd0ZP?=
 =?utf-8?B?NDlpOFVwb3h2K2RkalJoWnZHRzMzQXhacWlaOTVvWHZVVFZ2QWw2QUZkNzQ3?=
 =?utf-8?B?SmZLdURuYjAvZk9nSUh0TkxMVGFLbVNKaDYyRTRvNFpzTEJmeU9UZnJzNWZI?=
 =?utf-8?B?YzNaeUpCdGFtWTQ2NE1ZVWpycGJBQXhGbG5ML2tHb2VDQ3MvRUJYaThkSVhW?=
 =?utf-8?B?bjdObjlWNnl4NmVVc3pTb3A3VERNblhySktaYlFhU1pIeUM3OURnV2lTUnBa?=
 =?utf-8?B?anpHbnFxdHBkOFRMYzZhLzUrY3RXTGtFaW05NTVQUFUvUkk2VVpBRTdVYjcy?=
 =?utf-8?B?L3hSbGJEUlk5bG53NjBENVhENVpzTG0yT3VuNXVvTDVQK0d5cXhBN0gzd0pI?=
 =?utf-8?B?NnlndkF6a08xYjEvTk5IVUlsS2VhdWNGU0grM0dJckMwV1JCOWVLb0dYQW9J?=
 =?utf-8?B?RGFNT1M3eGYzVjVRdWtZNHJYTzd5SnhhNklOOGpSUTJCTldDUmxLaVpHeWc4?=
 =?utf-8?B?UkhyVGcwdVZKcWVqOWwwa1dLVE5wSWZWaU1oNlRmcE0zNTNIbzJXM3ZpUUN3?=
 =?utf-8?B?ajFNNEVMN3k2UlJGWEdIZTYyUDloK1pxUXhYVkpCT1RXZGdOb0VYWHdDVmtZ?=
 =?utf-8?B?Skd0cUdaYW9YMDlGdU5FUi9QUTlySFozT2FpTGFlL1BwUGY1ZWJTMjNRUWND?=
 =?utf-8?B?RFp2bzNTMDRZWU5GTHdGTWZwSVV0RXIxYXJlREdxL3BDd3Z1RzFBS0F2Nk1P?=
 =?utf-8?B?c3N4a2l4M2tvbFY3Z1JoT1YrT2pUVWZCYzRmYnNneGZVUmE5emJ1MWFHTUVr?=
 =?utf-8?B?ZVphSUp2aXphamt6bld0UVY3eVh1MlBBOThWVjIwY2QxcGpZR2t6RUF2dUVi?=
 =?utf-8?B?TjhHb3NiWFpXM3Z3cDBJZkpLL0NPSXBzUDRJV1VIdEtQYTRpdHlnT2czQkN3?=
 =?utf-8?B?d2s2bDdhMTFUMjY1c0xkZVJxK2IrNmdGVlpiM0xqc0JpVllra3hSMjZ0alZS?=
 =?utf-8?B?VkpxY0FGZW9BNEVkc1h6K0NSUFg0MElpTldEZC9lNit0djZvOTJoMmRJRTlu?=
 =?utf-8?B?OWp4M0w5SER0RTd2a0lFdDMwcjVKc0tzWENFRnZUZXZ3WWdicVdHOHlxK01E?=
 =?utf-8?B?azZaREtQSDVDMkJFYUNFSGxNYWt5T05MSUx1cXRhaWc5MFV2dVRWeXc0ZG1x?=
 =?utf-8?B?VnlvL1NqQUd2LzR4SlRCUmoxbjBZYkhDRmh1U1QrZUFKc3dTWkpRRnlxNVNK?=
 =?utf-8?Q?pzSEp1oDSzVa4S4ojvM8aF4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <389C2AAA3DEB1E45940F77FE8601977C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b8abd5a-0906-40d5-9ffc-08dcdaf3c6da
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2024 10:46:12.7805 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U7DZ4ekEqtkGS4BfqjYbOi4UqKnSPTIkqQB/Lqg8hkEO+6TcHWj1ZDx76Qal3do+jKHgK5s4YVFm2c5Co7tqz+qcJ4ucVf+SgWLUp578B9M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8447
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

T24gTW9uLCAyMDI0LTA5LTE2IGF0IDE5OjI0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIGlsaysgZGlzYWJsZV9scF93bSBib29sZWFuIGhhcyB0aGUgZXhhY3Qgc2FtZSBy
b2xlIGFzDQo+IGRpc2FibGVfY3hzciBmb3IgZ21jaCBwbGF0Zm9ybXMuIFRoZSBkb2N1bWVudGF0
aW9uIGFsc28NCj4gc3RpbGwgdGFsa3MgYWJvdXQgQ3hTUiBvbiBpbGsrIGV2ZW4gdGhlb3VnaCB0
aGUgd2F5IHlvdQ0KPiBjb250cm9sIGl0IGhhcyBub3cgY2hhbmdlIHRvIGludm9sdmUgdG9nZ2xp
bmcgdGhlIExQIHdhdGVybWFya3MuDQo+IEdldCByaWQgb2YgZGlzYWJsZV9scF93bSBhbmQganVz
dCB1c2UgZGlzYWJsZV9jeHNyIGZvciBpbGsrDQo+IGFzIHdlbGwuDQo+IA0KPiBUT0RPOiBVbmlm
eSBldmVuIG1vcmUgdG8gbm90IGhhdmUgYW55IGdtY2ggdnMuIGlsaysNCj4gwqDCoMKgwqDCoCBk
ZXRhaWxzIGluIGhpZ2ggbGV2ZWwgbW9kZXNldCBjb2RlLi4uDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0N
Cj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfd20uY8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB8wqAgMiArLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4
eF93bS5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA0ICsrLS0NCj4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jwqDCoMKgwqDCoMKgwqAgfMKgIDEgLQ0K
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmPCoCB8
IDEwICsrKysrLS0tLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuY8KgwqDCoMKgwqDCoCB8wqAgNCArKy0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfMKgIDMgLS0tDQo+IMKgNiBmaWxlcyBjaGFu
Z2VkLCAxMCBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkNCj4gDQoNClJldmlld2VkLWJ5
OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4X3dtLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfd20uYw0KPiBpbmRleCAxNWVkM2I4MTA5
NDcuLmNmYzQ4NzU2M2MyNSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pOXh4X3dtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4
X3dtLmMNCj4gQEAgLTMzOTYsNyArMzM5Niw3IEBAIHN0YXRpYyB2b2lkIGlsa193cml0ZV93bV92
YWx1ZXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiDCoMKgwqDCoMKgwqDC
oMKgZGV2X3ByaXYtPmRpc3BsYXkud20uaHcgPSAqcmVzdWx0czsNCj4gwqB9DQo+IMKgDQo+IC1i
b29sIGlsa19kaXNhYmxlX2xwX3dtKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikN
Cj4gK2Jvb2wgaWxrX2Rpc2FibGVfY3hzcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpDQo+IMKgew0KPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIF9pbGtfZGlzYWJsZV9scF93bShk
ZXZfcHJpdiwgV01fRElSVFlfTFBfQUxMKTsNCj4gwqB9DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfd20uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaTl4eF93bS5oDQo+IGluZGV4IGRlMDkyMDczMGFiMi4uMDZhYzM3YzZjOTRiIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfd20uaA0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfd20uaA0KPiBAQCAtMTMsMTIgKzEz
LDEyIEBAIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlOw0KPiDCoHN0cnVjdCBpbnRlbF9wbGFuZV9z
dGF0ZTsNCj4gwqANCj4gwqAjaWZkZWYgSTkxNQ0KPiAtYm9vbCBpbGtfZGlzYWJsZV9scF93bShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7DQo+ICtib29sIGlsa19kaXNhYmxlX2N4c3Io
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOw0KPiDCoHZvaWQgaWxrX3dtX3Nhbml0aXpl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsNCj4gwqBib29sIGludGVsX3NldF9tZW1v
cnlfY3hzcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgYm9vbCBlbmFibGUpOw0KPiDC
oHZvaWQgaTl4eF93bV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsNCj4gwqAj
ZWxzZQ0KPiAtc3RhdGljIGlubGluZSBib29sIGlsa19kaXNhYmxlX2xwX3dtKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQ0KPiArc3RhdGljIGlubGluZSBib29sIGlsa19kaXNhYmxlX2N4
c3Ioc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+IMKgew0KPiDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuIGZhbHNlOw0KPiDCoH0NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2F0b21pYy5jDQo+IGluZGV4IDEyZDZlZDk0MDc1MS4uNmNhYzI2YWYxMjhjIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMNCj4g
QEAgLTI2Niw3ICsyNjYsNiBAQCBpbnRlbF9jcnRjX2R1cGxpY2F0ZV9zdGF0ZShzdHJ1Y3QgZHJt
X2NydGMgKmNydGMpDQo+IMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlLT51cGRhdGVfcGlwZSA9
IGZhbHNlOw0KPiDCoMKgwqDCoMKgwqDCoMKgY3J0Y19zdGF0ZS0+dXBkYXRlX21fbiA9IGZhbHNl
Ow0KPiDCoMKgwqDCoMKgwqDCoMKgY3J0Y19zdGF0ZS0+dXBkYXRlX2xyciA9IGZhbHNlOw0KPiAt
wqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlLT5kaXNhYmxlX2xwX3dtID0gZmFsc2U7DQo+IMKgwqDC
oMKgwqDCoMKgwqBjcnRjX3N0YXRlLT5kaXNhYmxlX2N4c3IgPSBmYWxzZTsNCj4gwqDCoMKgwqDC
oMKgwqDCoGNydGNfc3RhdGUtPnVwZGF0ZV93bV9wcmUgPSBmYWxzZTsNCj4gwqDCoMKgwqDCoMKg
wqDCoGNydGNfc3RhdGUtPnVwZGF0ZV93bV9wb3N0ID0gZmFsc2U7DQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYw0KPiBpbmRleCAz
M2ZlYzM2ZWMwYmQuLmVmNmNmZmQ1MDI3NSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jDQo+IEBAIC00NzEsOSArNDcxLDkg
QEAgc3RhdGljIGJvb2wgaTl4eF9tdXN0X2Rpc2FibGVfY3hzcihjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZQ0KPiAqbmV3X2NydGNfc3RhdGUNCj4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiBv
bGRfY3RsICE9IG5ld19jdGw7DQo+IMKgfQ0KPiDCoA0KPiAtc3RhdGljIGJvb2wgaWxrX211c3Rf
ZGlzYWJsZV9scF93bShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3Rh
dGUsDQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpvbGRfcGxh
bmVfc3RhdGUsDQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpu
ZXdfcGxhbmVfc3RhdGUpDQo+ICtzdGF0aWMgYm9vbCBpbGtfbXVzdF9kaXNhYmxlX2N4c3IoY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlLA0KPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBj
b25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm9sZF9wbGFuZV9zdGF0ZSwNCj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpuZXdfcGxhbmVfc3RhdGUpDQo+IMKg
ew0KPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSA9IHRvX2ludGVs
X3BsYW5lKG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5wbGFuZSk7DQo+IMKgwqDCoMKgwqDCoMKgwqBi
b29sIG9sZF92aXNpYmxlID0gb2xkX3BsYW5lX3N0YXRlLT51YXBpLnZpc2libGU7DQo+IEBAIC01
ODgsOCArNTg4LDggQEAgc3RhdGljIGludCBpbnRlbF9wbGFuZV9hdG9taWNfY2FsY19jaGFuZ2Vz
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpvbGRfY3INCj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBuZXdfY3J0Y19zdGF0ZS0+ZGlzYWJsZV9jeHNyID0gdHJ1ZTsN
Cj4gwqANCj4gwqDCoMKgwqDCoMKgwqDCoGlmICgoSVNfSVJPTkxBS0UoZGV2X3ByaXYpIHx8IElT
X1NBTkRZQlJJREdFKGRldl9wcml2KSB8fCBJU19JVllCUklER0UoZGV2X3ByaXYpKSAmJg0KPiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaWxrX211c3RfZGlzYWJsZV9scF93bShuZXdfY3J0Y19zdGF0
ZSwgb2xkX3BsYW5lX3N0YXRlLCBuZXdfcGxhbmVfc3RhdGUpKQ0KPiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgbmV3X2NydGNfc3RhdGUtPmRpc2FibGVfbHBfd20gPSB0cnVlOw0KPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaWxrX211c3RfZGlzYWJsZV9jeHNyKG5ld19jcnRjX3N0YXRl
LCBvbGRfcGxhbmVfc3RhdGUsIG5ld19wbGFuZV9zdGF0ZSkpDQo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBuZXdfY3J0Y19zdGF0ZS0+ZGlzYWJsZV9jeHNyID0gdHJ1ZTsNCj4gwqAN
Cj4gwqDCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9wbGFuZV9kb19hc3luY19mbGlwKHBsYW5lLCBv
bGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUpKSB7DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgbmV3X2NydGNfc3RhdGUtPmRvX2FzeW5jX2ZsaXAgPSB0cnVlOw0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCA2
MDg2NjMxNmZjNjguLmEyMjU3MDk2YmQyOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTEyNTAsOCArMTI1MCw4IEBAIHN0YXRp
YyB2b2lkIGludGVsX3ByZV9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUsDQo+IMKgwqDCoMKgwqDCoMKgwqAgKg0KPiDCoMKgwqDCoMKgwqDCoMKgICogV2FDeFNS
RGlzYWJsZWRGb3JTcHJpdGVTY2FsaW5nOml2Yg0KPiDCoMKgwqDCoMKgwqDCoMKgICovDQo+IC3C
oMKgwqDCoMKgwqDCoGlmIChvbGRfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlICYmDQo+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoCBuZXdfY3J0Y19zdGF0ZS0+ZGlzYWJsZV9scF93bSAmJiBpbGtfZGlzYWJs
ZV9scF93bShkZXZfcHJpdikpDQo+ICvCoMKgwqDCoMKgwqDCoGlmICghSEFTX0dNQ0goZGV2X3By
aXYpICYmIG9sZF9jcnRjX3N0YXRlLT5ody5hY3RpdmUgJiYNCj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgIG5ld19jcnRjX3N0YXRlLT5kaXNhYmxlX2N4c3IgJiYgaWxrX2Rpc2FibGVfY3hzcihkZXZf
cHJpdikpDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfY3J0Y193YWl0
X2Zvcl9uZXh0X3ZibGFuayhjcnRjKTsNCj4gwqANCj4gwqDCoMKgwqDCoMKgwqDCoC8qDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oDQo+IGluZGV4IDAwMGFiMzczYzg4Ny4uZTRjOGZiNTVhOTJmIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBA
QCAtMTE0Myw5ICsxMTQzLDYgQEAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgew0KPiDCoMKgwqDC
oMKgwqDCoMKgLyogdy9hIGZvciB3YWl0aW5nIDIgdmJsYW5rcyBkdXJpbmcgY3J0YyBlbmFibGUg
Ki8NCj4gwqDCoMKgwqDCoMKgwqDCoGVudW0gcGlwZSBoc3dfd29ya2Fyb3VuZF9waXBlOw0KPiDC
oA0KPiAtwqDCoMKgwqDCoMKgwqAvKiBJVkIgc3ByaXRlIHNjYWxpbmcgdy9hIChXYUN4U1JEaXNh
YmxlZEZvclNwcml0ZVNjYWxpbmc6aXZiKSAqLw0KPiAtwqDCoMKgwqDCoMKgwqBib29sIGRpc2Fi
bGVfbHBfd207DQo+IC0NCj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jcnRjX3dtX3N0
YXRlIHdtOw0KPiDCoA0KPiDCoMKgwqDCoMKgwqDCoMKgaW50IG1pbl9jZGNsa1tJOTE1X01BWF9Q
TEFORVNdOw0KDQo=
