Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3C799029C
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 14:03:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94C2C10E9EC;
	Fri,  4 Oct 2024 12:03:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nrhwylv1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 094EF10E9EA;
 Fri,  4 Oct 2024 12:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728043416; x=1759579416;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kbFSRToZ122KhzS9MB5QrFG2sum7IdbcjCh2Dze5kd4=;
 b=Nrhwylv1qFwAe3Q0dOpF48/cUzPMjjE52C0igan808kyeOvCLv8RpzHc
 JlhgooK8DVUA3nN9EQXYLsraJwXrl3JDbZd3hYp7c6izv0Ohc2FlQTTTK
 FjX5BJXRge4fiLsb3eG2VpRW04omGyRZshxnJtoVOkY/Hub5BVPaG3q25
 TiqVKhmmx70miBMFY3hPhBS+x8e5OrXb4S0oLxH42gtHWUo1GYZBoRBSP
 FlNJZ+GA6uBMfTo2hpPfxyabVZpdW5SSEPt1A8pFLB9zJItfNg5sK4OGz
 oQylH8M6IYxSNjhJEuL/URcb13XjUTsbMESnoK5rFM8k3KKVyThSRcuwt w==;
X-CSE-ConnectionGUID: DCkLBETCTACwWKDa1jhQMQ==
X-CSE-MsgGUID: 8F/arSVMQfe6frUSInC9mQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="37919889"
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="37919889"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 05:03:26 -0700
X-CSE-ConnectionGUID: PPB2SWL7SKSFmbmsfx8RbA==
X-CSE-MsgGUID: 40rX3uH7SgiDx4Awyhyu7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="75111794"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2024 05:03:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 4 Oct 2024 05:03:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 4 Oct 2024 05:03:25 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 4 Oct 2024 05:03:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XIG4xKEsJFFlLceCQf/OPJ8QAxHrijVwbuGR3f0HsGZBmWdXuCHY4Ye5ZeEEp8KuIpjFUNp8G8GHLykwIL94Db5UwdT97fSsH1jSxUpJCIOapeCe+LZ5lfUKKcUIgM0MdOZGlZrLGAEuhcYFWoJJbpLpymWr7bDMFbvARCW09FMRjj66cIeTvg3GJEoWBN5CJFHMN+Vdz7RoAaLGS0IoIPBTbQyfj88NOSjH++EmjuWjbU3phctep5Z0b76eoWhOxGY6cNiKz8zwyeQEp8w0yfA2KzqC2E92Ze8PJe/U6OmZLdk0Mt4StXmO2Uuo7R5ff47UEkNJ9Lz5UJBOAa3iUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kbFSRToZ122KhzS9MB5QrFG2sum7IdbcjCh2Dze5kd4=;
 b=M+ooFs3xraQ9t/vT5rwp9LZlJZSW19zeEYip2LHBS/E4e1RPhraTdbc07cl8OAsJ7HrCeh/LQguB0YHhgXfQkew2WkdTh/4xFTfSVmpuAvvr43cbgZHp+Eq2DNbEZ+oxBYX0FMCq5stlqcyT+u4rJbakjPVRr6uWQ8R9G9XyU3wnZ6Y6ZbQZNwCQk4OBIe4sQTzVYIXhKN48OHwlvfD0DzP/6wA0UNYsaEzbDsPeBxm2Z5mGwANJcQOJWAWVWmKFuO9q0T55mOTCxSqNouyau15O0o1Y5UuauKgao93hYa6XW4L7cUiNl0qPdK+fPusK8so5Le4hgGBo4csYKucF7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8026.18; Fri, 4 Oct 2024 12:03:20 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9%6]) with mapi id 15.20.8026.017; Fri, 4 Oct 2024
 12:03:19 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@gmail.com>,
 "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIE1pc2NlbGFuZW91cyBm?=
 =?utf-8?Q?ixes_for_display_tracepoints_(rev2)?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgTWlzY2VsYW5lb3VzIGZpeGVz?=
 =?utf-8?Q?_for_display_tracepoints_(rev2)?=
Thread-Index: AQHbEEpE5y0A6sZXPU+kWFHEfH3B2bJ2fB4AgAAFugCAAAK1gIAABYaA
Date: Fri, 4 Oct 2024 12:03:19 +0000
Message-ID: <DM8PR11MB565565A6F76562CF402EFC82E0722@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20240923190324.83013-1-gustavo.sousa@intel.com>
 <172737888746.1108589.2342053256867257061@2413ebb6fbb6>
 <172804037058.2413.13969013073462156051@gjsousa-mobl2>
 <878qv4rtkv.fsf@intel.com>
 <172804218117.2413.12993827581789365696@gjsousa-mobl2>
In-Reply-To: <172804218117.2413.12993827581789365696@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|DS0PR11MB7579:EE_
x-ms-office365-filtering-correlation-id: 824c4456-06e1-4f80-f8b2-08dce46c895f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?N3NWcmlOdHUzcGRON3JRUHVjMXBub0xEZmhrUFZXMDBnNlZRa1ZrS1lOV21K?=
 =?utf-8?B?bkJ6ZDkydWlJZ2dMaUM0cWlvL3dLbUo1USsyVko3WVI1L1lTRFZBZE1reTU2?=
 =?utf-8?B?TlZCaFhsNnBaa0NLSjd2b0pYSFhiU0VYaFFrOERVS1FOaHl0czFtdXE0RUx0?=
 =?utf-8?B?OEJ0N2o5cUptempmbkp3R09DYXh4TWpkNTR5aXJzdHR5U2pBWDFFbGt6YjJZ?=
 =?utf-8?B?QkJyNWtJaWdSUkNzZmhJenVXRVg4bzZxUi9HL3Ryc2R0ZlJaMTMzVnVCNkhB?=
 =?utf-8?B?dHN4RExFMUhEMHlWd0VDempaVGhLS1BMYklyZHBJZVJsa24xQWxpT1M5V2Vk?=
 =?utf-8?B?dW1PQ0FVZ3FJbHYvd1JKSjVxd3J2QWh4WGJkQU8xeTRvVkpVcmNiRVV2WDh5?=
 =?utf-8?B?MTd0RTBPYTFyOXkvUC9TZzlFUDdzNmR2VWpMbVBlZW13YnZaeFZ1RmEwUEFl?=
 =?utf-8?B?bldhaDdDL0FVSCt2cEluL3NxLy9BYlRDV2J4UWorb2dkV1FCS3JKa0Q5V09C?=
 =?utf-8?B?dkdhdDlGd0s5SWZxV1lpQWVyR2VjaEIrM0g4MFJzT2JyL1dQcTBDUFY5aFpl?=
 =?utf-8?B?NlUzdzdjUjlHaHQ2eWVNaU5McjhCcUR2N1Ywb1RGUjdOZlpnYk5YRkZOMnpI?=
 =?utf-8?B?Z2JLOTU4cmg1MWZCb1cyZkVCNzJSY3ZFcG9XclVLSFptYWM4RzlkbGZqQUhY?=
 =?utf-8?B?YmhjUXVCVHc0c3k5S3lGcS9FM2FCZEt1aVRZTUc5TXppN1ZNVVExOEVNUDh6?=
 =?utf-8?B?bTNpOUdqOE1tNWZic3NveFJNemFFWWV1NlhKd2dEaGFYSS9BL1g3YTNybmJV?=
 =?utf-8?B?b1RzdmZpOWJPbXJ2LzBRMnQwUzNZQmVKNi9IeW1mTzI0OE1hU08zSERTV29h?=
 =?utf-8?B?UVkxME5SUEVyMVBNblc2QURLVXF6U3YrK1dYdFlXWGg1dHdOeFQrY242aUkx?=
 =?utf-8?B?WTJXR2tFTWNRRE9uQmpJQk1JbVZZZFQwQ2VJRGpvSTRGaG9wZm01aDJwVitN?=
 =?utf-8?B?bmZJS1NxZ3BsZTdqQmsvNisxVEMva3JHMHMzUWRxWXhhSEFXQ0JYaEpVbExs?=
 =?utf-8?B?blZZL0RaRWVFTmN5bWRxRDB1c1RnQ3Z5Zk9oOE5nQlFSYkZaYm5DeFhVRitl?=
 =?utf-8?B?WXlGTVJTVzZQTThiZEZkemJDa1g1azh0TmVQZC8yY2s4RFJIRTA3WTNWbHBE?=
 =?utf-8?B?dEUxdlRhajgrRzdIU1prKzdPa2s3VDRVSHVWTHRRc0JDdkgrdlFPZ241NWxS?=
 =?utf-8?B?a2xZWG9kcGlBd0xMSjhxVi92dXFqM21XNmtKaVBIeldJRnJmRkVSVm1NY1Bl?=
 =?utf-8?B?WXd0cXR6dzlueWVrS08wbHpWWVZHZ0liYjVGait3ZjRCS2I2ZVR5L0RhZzNC?=
 =?utf-8?B?VXVkM21ubnpBVGF2Z1Z6MnliZy9MSGdwNS85M1BNd25XNlRTdndjT2pUS3dq?=
 =?utf-8?B?UVJhNGppdTFxR1JvK0NJbXlvdGs0aXlqQlpyOUk5RVNkQm9hYnVsUXhzbThk?=
 =?utf-8?B?RzhNODFXcS83MFFGMklRaGhZMzcvdzdzcFUrZzV1Znphb3FtTmxoVCtna2pw?=
 =?utf-8?B?WHhCVVRMdlpIYUp4cVNiWDd3dkpXdDZONFJNdzZmanpOUC90MjRZMVI3eFRT?=
 =?utf-8?B?OVBIcXEzUE90UjFQRmpoQUlGeE9FaXpKbzI5TFMxanl5d1ZRS1NRN3FianZx?=
 =?utf-8?B?bFlUNHQyancvY0N2OHVsRlExM2R1aGorcFlVR3BmYjMrRnlWczI3RERyUThz?=
 =?utf-8?B?MVpNZkhsYzI4ZkU4elRycnU5Tm92dEhobjVPZEJ4bzE0TDEwY3ZqbGNUdkdS?=
 =?utf-8?B?cHUwS2FXZ3BQR0JkODhHZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cWUxRkxoREU1dWhRRVA1N2E5TFFuSEFLNnZNdTRrenR3R0R6eC9PVS9mdTRk?=
 =?utf-8?B?SkI2c0U0dkJpMWRoWEh6ZGY1dzNYYjR1QWRieEh1dFBTR0pkaWNkb04wRU51?=
 =?utf-8?B?YmNtd0Z1d0NvUG9Hc3FEQ2JTVk0vUmgvb1JWRXU4QTVoblZ4bHpvSkljdHpL?=
 =?utf-8?B?dFlKbmp5cDM5QnMrZ29EZjZkUmp4NnZHVVZxSWhOU1hJZVE1Z2NlcnE3Y2lw?=
 =?utf-8?B?MGN2ZXlLdUxZZ1lqM0tRanF1YS9nakNlVWNLL0RzQ1NHZmF6R2hrTHlWMEl3?=
 =?utf-8?B?L0JINWwrZTJTYjVhWlNWUXVKZU9hVGdPdjdISE4wTVJodFUxT2JZdk42bWNK?=
 =?utf-8?B?dGI0bXFlZXZLRG9VWWtJOFF5YS8vK3lUcC9sdE9aeWdtYmR1U3RScnhET2E2?=
 =?utf-8?B?eVp3ZGZWcHBkZFg0YW84cHlaTEo5N0RBcExFNFVlNG9Uc0pIK3RGY2xDUjRV?=
 =?utf-8?B?U2l5aWVZTDNxNTMzeFYvREp2alhORnBYa1BXUTlWZENBVXBkOSs2RDJnNndu?=
 =?utf-8?B?MjFkSXRmc0NlamxBZzkyWklhSGJTM1AwVzVEMC9xWEtXNWU2cmduZ0lFNW1J?=
 =?utf-8?B?dE1zd0toaHhDUENuSk9RMGdVMm5QTHJoajQ3MkJUaW1oSUY2a1BnOGRxUkFi?=
 =?utf-8?B?STRZWU9BTjFDdEs4YVJXYUJHRkdLQldDa1hYeU55akNTTFlZOXBtMlYxVE1k?=
 =?utf-8?B?MklLVjBsTE54T0FXSnptQy9tbEFSeFRrWWdFcU10T1BUUytHRzVhNlpBd256?=
 =?utf-8?B?VVF6ajFRYnBmdW5Ja3ZDemJYOUMzUHZXYzY4VjFJWkxGOHFjeDRYeFU1bS9Z?=
 =?utf-8?B?T0tTNWNQZGxZeFlSallCRGRxTmdJWUhyWUc4M1lGV2Y5VitNNVhSbHEzb0NJ?=
 =?utf-8?B?cWxaaDJxek1uODd3NDVxek5JeFpTaEYyV0FiZGUwRUJvNVhYTEZsNUFweFo3?=
 =?utf-8?B?dVlaeDAybDBJOGlvWWdNaWdHRGRXU29qSGJUTUh6WEJYbXp1eFdHWWJSUHdP?=
 =?utf-8?B?RWpOQXNHK1hhRDYwcVFMektzTkc2OFJNRkFTUGtJUXZEenpjMGt4U1h4VXZK?=
 =?utf-8?B?bFI2TmcyYjlhWWhHdk1yU2FUZmZlVGQzYm03Tk5yRTdGbEdSbDh0RWY2UHg2?=
 =?utf-8?B?MFhNRERCbHgzQVVJYnEyMTJtNm5YWkhleVcvRHNoYXBIYnlCd2NoL2xEUTVm?=
 =?utf-8?B?RzR2T2lHSTlETzU1YTJkVWlteS9LR0haY3E4NENSanN4MVR5RTd0a1R5UkJ0?=
 =?utf-8?B?Q3JzZjN4SDVTMmRJV0hUVEJQRStRRmd0cVluenZlaSt3d3p3d3o5TXRjWndy?=
 =?utf-8?B?M3BUTm5QY0gvbUZuQWIyRTV5R1BUY1RxSTE3cjlLcEFxV0NjbjJ2eVp2OTRl?=
 =?utf-8?B?anZ4Umt6Tk9iZVNzL1M2V0UxN2VWRHora053V1ZONElnc1dSbzA1bUp2ZGdp?=
 =?utf-8?B?MmovTUVjaHl4U3hITkhyajRUY2JWRGlYeGxHdDk1S3NKcHplZ1h1NUh2YVN4?=
 =?utf-8?B?L1crQWFXc1FXWEo2dDFaYzBKVzNGQ0lEeGRvaUFXdmhTNHh2bG52SmE0R1Z3?=
 =?utf-8?B?TFM1YTUwRTJGSHQ0bnFSQUhIMHdrTWRRbC9JZ0MyUTFvS1BpVE9uZDhYMWxC?=
 =?utf-8?B?KzhGSlBTemlEdjlGYllhUmdJSGh0NUVreEJrbjVpR0tZOHpJTTgxaTFuYW5V?=
 =?utf-8?B?MkdGVGd3bGNja0NGeDIyYVNaUkpCbnU4anRLM1hJMCtGNjlWOTFwbWVONnFQ?=
 =?utf-8?B?Z3lSeWgrZnc0UDZPYk5US1J6aFhMK0dEUTZOc3loSVJ4eUE2UzFLcTBpcTRE?=
 =?utf-8?B?MVl0K2JHbVBuZFdMUmowQ2Y4MzRUKzh0N25nS1JqOXMzR2xZUHJVMkZ0cnIv?=
 =?utf-8?B?eWMrbnRzTnZFdS9DK2EranAxcDVwY25admp4bjVlTVVYU2QxWm1vR1N5dGVM?=
 =?utf-8?B?VzJuZzJLeEgvcFhzYzJhM0hOUkpmQThnZ1oyMm44Y1Jma003WC9rZWw2ZmJR?=
 =?utf-8?B?NmJJRDFROGllaW95MmdLdi91S1l6ZHRLOWFBSWN5SlVpMXdRbGxRcUtIcFda?=
 =?utf-8?B?TzNZUGI1MGlSNlpaYTJVUjhmN3ZkSEYyY3ROQVFSUi9vMWNFUFh1NGVRR1lE?=
 =?utf-8?Q?a/Z+WBAVDWd6SXgaatLzDTUiP?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 824c4456-06e1-4f80-f8b2-08dce46c895f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2024 12:03:19.1991 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rE526ypsL+tvc7x57t3Y8MTFPHPu4aIO8g+/Q360aVg65vipWRMHqJc+TOpWKBVWMRyKlBmE+wYaXVAyXXsicg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7579
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

SGkuIA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGlu
dGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+IEd1
c3Rhdm8gU291c2ENCj4gU2VudDogRnJpZGF5LCA0IE9jdG9iZXIgMjAyNCAxNC40Mw0KPiBUbzog
TmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBnbWFpbC5jb20+
OyBpOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTog4pyX
IEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgTWlzY2VsYW5lb3VzIGZpeGVzIGZvciBkaXNwbGF5IHRy
YWNlcG9pbnRzDQo+IChyZXYyKQ0KPiANCj4gUXVvdGluZyBKYW5pIE5pa3VsYSAoMjAyNC0xMC0w
NCAwODozMzoyMC0wMzowMCkNCj4gPk9uIEZyaSwgMDQgT2N0IDIwMjQsIEd1c3Rhdm8gU291c2Eg
PGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPiB3cm90ZToNCj4gPj4gUXVvdGluZyBQYXRjaHdvcmsg
KDIwMjQtMDktMjYgMTY6Mjg6MDctMDM6MDApDQo+ID4+PiMjIyMgUG9zc2libGUgcmVncmVzc2lv
bnMgIyMjIw0KPiA+Pj4NCj4gPj4+ICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmU6DQo+ID4+PiAg
ICAtIGJhdC1tdGxwLTY6ICAgICAgICAgW1BBU1NdWzFdIC0+IFtBQk9SVF1bMl0gKzEgb3RoZXIg
dGVzdCBhYm9ydA0KPiA+Pj4gICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzE1NDQ5L2JhdC1tdGxwLQ0KPiA2L2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmUuaHRtbA0KPiA+Pj4gICBbMl06DQo+ID4+PiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzc5Nzh2Mi9iYXQtbXRscA0KPiA+Pj4gLTYvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZS5odG1sDQo+ID4+DQo+ID4+IFRoaXMgZG9lcyBub3Qgc2VlbSByZWxh
dGVkIHRvIHRoaXMgc2VyaWVzLCB3aGljaCBpcyBvbmx5IGFib3V0DQo+ID4+IHRyYWNlcG9pbnRz
Lg0KPiA+Pg0KPiA+PiBKYW5pIG9yIFJvZHJpZ28sIGFjayB0byBtZXJnZSB0aGlzIHNlcmllcyB3
aXRob3V0IHRyaWdnZXJpbmcgYSBuZXcgQ0kNCj4gPj4gY3ljbGU/IEkgZG9uJ3QgYmVsaWV2ZSBD
SSBleGVyY2lzZXMgdGVzdHMgdGhhdCBlbmFibGUgdHJhY2Vwb2ludHMuIE9yDQo+ID4+IGRvZXMg
aXQ/DQo+ID4NCj4gPkJBVCAqbXVzdCogcGFzcyBiZWZvcmUgbWVyZ2luZywgbm8gZXhjZXB0aW9u
cy4NCj4gDQo+IE9rYXkuIFRoYW5rcy4NClNlZSBvcmlnaW5hbCBCQVQgcmVzdWx0cyBtYWlsIGl0
IHNheXMgIiBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRv
IGRvIHdpdGggdGhlIGNoYW5nZXMgIA0KPiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMzc5Nzh2
MiwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtID4gKEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnKSANCnRvIGFsbG93IHRoZW0gIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1
cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLiIgDQo+IA0K
PiAtLQ0KPiBHdXN0YXZvIFNvdXNhDQo+IA0KPiA+DQo+ID5GdWxsIHNoYXJkIHJ1biBmYWlsdXJl
cyBjYW4gYmUgbG9va2VkIG92ZXIgd2hlbiBpdCdzIGNsZWFyIHRoZSBzZXJpZXMNCj4gPmRpZG4n
dCBjYXVzZSB0aGUgZmFpbHVyZXMuDQo+ID4NCj4gPg0KPiA+QlIsDQo+ID5KYW5pLg0KPiA+DQo+
ID4NCj4gPi0tDQo+ID5KYW5pIE5pa3VsYSwgSW50ZWwNCg==
