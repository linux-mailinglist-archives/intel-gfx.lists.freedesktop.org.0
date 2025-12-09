Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 366CCCB03A2
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 15:16:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5C2E10E5FE;
	Tue,  9 Dec 2025 14:16:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XKEESthe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BD1210E1DE;
 Tue,  9 Dec 2025 14:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765289812; x=1796825812;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=g4zo3LiVRUhIg+EKh5us+JONv+qckqyxioAf6XNfnLM=;
 b=XKEEStheZXTGMVyX+GXo91Wos+Gxp/TPZ0XDUgyGxrlvOOXaC3qSBTdD
 bA9QYEc21NXtIRe5QQGo555rGI6n81Xwrct1Bi2NdxhW4iXp0pkzcgSB+
 DgVNavSKDNtW9xNKvoq1YnsGtq0TlV305yjdKjhg2t4x7/hKWTCaucYFQ
 KNfOtMlGmlPafCDQghi1xmVVzdpnrgHS6h6JEfsXDD4vLq+IPoOsbUpct
 hHl3mg1fFBQadYr9Yr+9TwbyqUyMPxruGP/0bK95tCY9PX+Pa39AGJt71
 440vXPDxuujWx/OaHwcCP8xdRSPdTtCZcN4FnzGz0UpxUSD1inRAJHuk/ A==;
X-CSE-ConnectionGUID: 2rHxiSAATWujYTT+BviaWA==
X-CSE-MsgGUID: NlbN8RbyTEeUJn7N4Kv7JA==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="66250579"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="66250579"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 06:16:52 -0800
X-CSE-ConnectionGUID: wt7iRGEkQniGydslkxxRcw==
X-CSE-MsgGUID: o98pGyzUSI+nwhcH6M5jXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="196145782"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 06:16:52 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 06:16:51 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 06:16:51 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.52) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 06:16:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qihOVWv1KiQNGcEArUkl/EYVYakAqMcrbjS5MzMywJBM5X8Xov2xVqrd017/HnXvnOhkJdz2MzLhI3pPGU9e2jxiAC4tzSIoJvMTu3Qukh2jiKXepWp3JRCddXbzel183/1fUmUtXBYwtai8p5mzKb60OiMMFUxFbtVsiFMQ1Z+tGlwAi2+NBy7bC9kdf+dUwVcv4iGpxQCr9x7mamU+aYWc8TXmp6OgJAMMqlTYotuBDT2Ns8BsIBaDG9pBirrnwFsVI/GHYWMNGSB0kAEAJkEBN85nvVJfw15z9eS3j0vTcntbvcho8BeEqJLVLhdzo21/hM+3KFYyU7uBCPZfzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g4zo3LiVRUhIg+EKh5us+JONv+qckqyxioAf6XNfnLM=;
 b=kKDy6vx2CS5QE1p5IKVjBs8A70zU5ZfRjVLpfKJxGu4yih45O+XHu6rZ0sfQYfbDy3DOpvxC+UktZZWqBhStVvl41WkROjQ3Ah66KqdCmTa9uBp6z3RPOwMy407imlIoBYlJC82K/x6YyYfZcV9YNMOR+cb/FXmTvv/t6K950nu1+O156/IfD4c7MrR33g2OkX28sCtv5txR8dGOVKk+jYZZNXJfNO71FlFd7oZ6Ow7TUZQ7RREvqLMwE91d63sadeTeBejW9NdQlO2Gm/PRJ+KPZKDbQ2kuukq0KTPMKgaBYojs8TYBFlI6IHDXiE8l9+CAf2eKet9jezYqB25Lgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH0PR11MB4919.namprd11.prod.outlook.com (2603:10b6:510:34::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.6; Tue, 9 Dec
 2025 14:16:48 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Tue, 9 Dec 2025
 14:16:48 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 4/4] drm/{i915, xe}/stolen: make insert_node,
 area_address, area_size optional
Thread-Topic: [PATCH v2 4/4] drm/{i915, xe}/stolen: make insert_node,
 area_address, area_size optional
Thread-Index: AQHcZdJMrQl4HN4eik6A4yUxohdpfbUZYUIA
Date: Tue, 9 Dec 2025 14:16:48 +0000
Message-ID: <63f4c81d2db15a9c202ad97ccf4dfd0d1304ca0c.camel@intel.com>
References: <cover.1764930576.git.jani.nikula@intel.com>
 <0dbb460e8bd1df29df98862d08fcdfda03912673.1764930576.git.jani.nikula@intel.com>
In-Reply-To: <0dbb460e8bd1df29df98862d08fcdfda03912673.1764930576.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH0PR11MB4919:EE_
x-ms-office365-filtering-correlation-id: a82b5f27-248f-4941-085c-08de372d9726
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?QUlTUndkcmNyLzd4Umg4WDF3TFE0MTFYM3krUEtSQWtXeTBQWVVZd2tIckRS?=
 =?utf-8?B?RUFqNllROWtta0dOeUl1ZStXbVZ6VXpSdFErNlVQVlVsN21xcDNwVkVLYUw4?=
 =?utf-8?B?WUJTR3c2OHZDRnhDMkhJdFVzOTFGOE52Q3A4R29JMXBYY0ZqUkhWUnZHck9L?=
 =?utf-8?B?aGFPZWZaNUFnYlh5RVUvMU5uRUZKbGdJZVU0TFdvcG5zYnZITDVPbHJXMzlR?=
 =?utf-8?B?NHBTbmJ6SVF1TzdnOGhSV2NJTWRhZms0MDJvU09CbHVqdHVFREpXczJTcDBI?=
 =?utf-8?B?UWtKUDZiK3FnNFkxUjZnSkpmb0E2WEliQUNvemM3cFNkb2VSTk9LSWRqNEZz?=
 =?utf-8?B?R3pnN29tTzF6MUNNY1ZsWEUrMGVML3FITG1ieU0vU3RBRWFRcE5zSG9OWVBI?=
 =?utf-8?B?eU9CMFpzczdqS2NrMWFxZi9DbDEvRUdvWkM4TVZGWWx2SEdyeXZWRFlXV0RH?=
 =?utf-8?B?V0dQdlFyWmk1dzh5VncrSktoR3Q3TVZXVEV3ci82OW5JcHRqdlNMOEJzZzZt?=
 =?utf-8?B?SlpoTjVrLzQ2eTVWT3ZEMTFuOWh5SldYUHNMUkZTTEgwNEp1SG1BMzEvNnlE?=
 =?utf-8?B?b3BXamlaR3VaeXd5UEVNVFFaY1h5Z0Y3NGY2OE5OSGZ1VWtnT3dYbEM5SXVV?=
 =?utf-8?B?OWJRMldnSUhoQzk4dHdYU21WSkxSUm10Q2EzcXR5dWVNQjJnY2N5dlBtVnlq?=
 =?utf-8?B?UHB3OFJGOUJtN3RkS1dBbHRVcmd3cStIeDROSGtJbDE5dTFTYXR5V2dLeWwx?=
 =?utf-8?B?cUs5K2Z4cmxaeThlQ2x6OU1JQU4wWnBPOWx0Q0NCM0V6QWNPYk9MTXpVeGcz?=
 =?utf-8?B?ajBXZWRZT2FtRFdZeEV5YkRPem5HQ2V2MklLTWJrUDR0YWgzeDVRQ3lFL2VQ?=
 =?utf-8?B?ZXprak1Dc1BXOU41Tm1BL2U4Tm90eGpaaFMvNXFXNDRMcU53b2dyME1yL29N?=
 =?utf-8?B?NStrRW4rYk9nNEthL1E3d3M4YjhuZng5OTVoLzlacXhjbkFyQzlyYndZVUVE?=
 =?utf-8?B?VEpveVo1UXhFbEhlVUFkcGZsMXFyN3NwQzIxUkNMWTBEOVBpM3o2VnlOSE1v?=
 =?utf-8?B?bDU0VlVPa1c1WVlCZkc5TGN4dGFrRnRDNFRya2FULy9pbTZoNGNDejJyaEcw?=
 =?utf-8?B?V0xHVGxXYlBacUZzUGZVNkhuUk14UHdTNjNxWkJMaWhOOTIvcUZHUEtnTzBM?=
 =?utf-8?B?eUJDTGN6RFVaUTZXL254Wnc0ZTViNU1Qb1QxWSszam1COVlTUFd2MVdUdFYw?=
 =?utf-8?B?dVMvZ3AzdFErRS8zakM4Y2ZvWVI4SXVZeTdzY0xkUTJ1d0ttTkdDQ2FHcWFO?=
 =?utf-8?B?UHF5cEJKbDk1cXhmcG5wU2dPL0t1WXo5WWNTY0VPVFV0NmllWHB3bisxYk1K?=
 =?utf-8?B?T0F0OGRiTnIzYU1jOGVUNGQvbzFrNnViWmY1SEdCSytWM0pEeCtNRjlnN0N1?=
 =?utf-8?B?bXRuM0daU0l1cU9hT3h1T1ZNR2ZLd2MweWczS3ZhVWdDdUtja3pzK3hibG9Y?=
 =?utf-8?B?WUUzeVlsVmtMeFRLVkJxLzBaWm1XQldXd3lMN0V4R3ZQL3B5RE10S0pQdVJU?=
 =?utf-8?B?WnBlaWR1dDBNc0pRNUkvUllLR0ZRQk1WbHQ0Z205OU15Y1JtblR6OHA0YzJr?=
 =?utf-8?B?dDB5T1Z4UFdLNS9BZk1aV2EvRWtrdkFEMkh4S21lejZtYUl4NzBjL2haS0NT?=
 =?utf-8?B?Z2VuMjlWMHFJUG1ZeStlS085TUNMNWRKWkdxOFYvZTg0Q1ZkS2pwNlc2b1Bu?=
 =?utf-8?B?aW1SNG1RdnBSWVlYVGRMR0Rpd1I1RUNvZjhuSWlRejRaRU5pdDk3VkQrOUxN?=
 =?utf-8?B?ZUQwMGJNWEV3aGkrU2lwNHZqb1E4a0pTcDNqR2RyVEpJaE9DT0Zsb0JSaEp0?=
 =?utf-8?B?cDJWT3hnUXpPRlJRWTNLcVRVUE9Tc3RLY0duR3UrWXZWc0tmdi9EZEZOK2Ja?=
 =?utf-8?B?cDNWL3Q4b1ppRkhjYWY3Q2Y0WlJnRWp5VDZlWTVOOE1OVzRBWnlzZFFWZkgw?=
 =?utf-8?B?S25YNVdpTHpsdkpiRSs1bk5rWWdFbTJGTm1aS1hVSElFdTZjdHhhZjlpZWxw?=
 =?utf-8?Q?YJybYH?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Nm9ZTFFOaGRXRnN1ZXRoYmZDNmRUMy9NcE1Nd2tOMGFlbFVlSzlucGdCYytU?=
 =?utf-8?B?TnA2cUNIYzR3OHFQWUsrWk1ITVR2S0J4eTdjekZWbXoza0lWSjNzV0ZpemtQ?=
 =?utf-8?B?QjdjNWJDcmlDMGJ0emxWSUZSRFlIdVdLWGhmMEswNldtWEprQmZlZG9vd2sz?=
 =?utf-8?B?UzQrVmJaTmhYcURjajFsWm1uaFFVcEZaT2s1ejh0SjJ5WmtWTDl0ZFdRZDY1?=
 =?utf-8?B?OGs1R0x0UGhDaVRjdTFiSlQxMUtIak14OS9WM3VxVXZ4SWVMN3hDRUhaR0dh?=
 =?utf-8?B?LytvNWd2RGwxbXUyL1dZR1dwcXlGME92bGFobSsvc2Q2aHhGangxcjZKQlF5?=
 =?utf-8?B?alRTWEdQdWkwTmI5L1ZoRzlYNlNENGhDdmFsUDV2M2taV2xEdVNzWElGdEll?=
 =?utf-8?B?QU4rNjdHeXY3VkJhNzJyUUN1MHBQOFpTdmtwQjBzQlFDRlUvaVJraU14SGpT?=
 =?utf-8?B?U3FOajN6Wm5wNEl2RUlRVXZvODNSK2x1Q2dHNEg2OWhiSDl6b1I4blpKY0FB?=
 =?utf-8?B?YjBrSFkyT0JDbE5GN0tCTnBnbGM3RnZlRkZYVm1ObDlvZC9rT01GTzRCQ2N3?=
 =?utf-8?B?RGlBbkNvSVhZaGNUMDBaOHRMVThhYm5hNGtHdCtnYjZ0YWhrbnFwVnlTaENK?=
 =?utf-8?B?MVdPUWxlcmlzK0JHY2gvZnl1Ym1yR3E1ZHQxSlozZUkwU3ZSLzRZNmp1V1Yy?=
 =?utf-8?B?NmJJR2sraEZIaGN3QlRtakswYVBNMGovVHJXTHI0OXh2VDhqcnFqekNWT0tF?=
 =?utf-8?B?WEhLT000MTVEekVEbml3N3A1dkFLUVRWeVRxNTJmcjRacWtEL2tjZ2p2VW9x?=
 =?utf-8?B?YmdKQzRqZldDMUFTRUtJRy9NS2VMS3BEV25CNVdhdnNNSmhnMC90cVJKVEdS?=
 =?utf-8?B?bXI1OUNZb2lQZFVyN1JiLy8yOENBY0xYazVUYURObFN3UTF2TG1IM0tQdXFL?=
 =?utf-8?B?VitnRWhoUHRzbE1Dam1Uc2NwUGlKczFxVGI0S29EOXNNdmxPc3F5aXE4dWl6?=
 =?utf-8?B?aXNtck5jN2tNQVR3OWVsdExiZFE5S3QrSHRMOW5ZczVsREErbzhmaTVweWpz?=
 =?utf-8?B?S29IaGxqWGk4WE8zZExqeTU4bHVSdEVXaFVVOXNaZlJqZWlLYmVNa3dWS0cr?=
 =?utf-8?B?QUNrNVN0UGdBeHd2bHU2QnhtMFFDRk1jVGxrNWtKTzFqNHBacVBJZU9JcEFa?=
 =?utf-8?B?MFd3WXVlcTJ2ai9FVHRTVkpienlGbmdUL2NhcndIa3hmSkJUQk5raWl4T3J2?=
 =?utf-8?B?MlNSRVpBcVIwOGk5cFozTjZSck81WklUZzBFZU1qMUczNEVicXBpSENpRkE0?=
 =?utf-8?B?dDNLczVJVWpmdDR4UGdBb281Q3hTdlRDdVVIZ05XaVV2aGM5bTE4c0ltTGNk?=
 =?utf-8?B?L21FZEo2TjJBeGllNUdhaktwMjJ1ekpaUzBNM2psMFQxdEJzaHVldFVPREtE?=
 =?utf-8?B?eXlDczBjd3d6K3I3RUVYd2hzOTVobDUwaHVrYWpyUHFxVjl6NWdZdGJKUjB1?=
 =?utf-8?B?TmRhZnJ5RjkrUkhUNmtIOGRsbkZNMCtXdDF0Q3gzdElYVnh3YnhWd3E3NHRR?=
 =?utf-8?B?QWgzSDBwRVRCZGdkUTRHemtjK0pvby9jY3BNWTJxOGhGbFlvU20yMk4zKzdl?=
 =?utf-8?B?QUNvaHFmZzl4SHNmcXhLUWhGZFZwNnlxUkJlbVVnaTNxMnJSRWcyaUx3Y044?=
 =?utf-8?B?b2NSQXdzekxheVh3YXRrbTF3NVZMa2t5YVdxTWhJQzlRYVcyaUl6ZHl2T3dU?=
 =?utf-8?B?eTJCU0tiTTlGVUt6dW1vb2pNVXlmbkZKTUMwN0dsOTNISUdzeGh0MjdQQUdQ?=
 =?utf-8?B?blZxUXVmWmR6NWRvZEs0bjB2T2EvZ1Q5RWxnK1RvZjlnNXdPRVVyZVk1VHEz?=
 =?utf-8?B?OHlNcVRRaGMrWDkxTEdiVFYyWlJlcFBXWGVXeVZrU1lrMm04cVhwNXNhNStM?=
 =?utf-8?B?bGM4NDZBSGNoWXNBVDBJcHFFR2hEeSs1WkhHT3hZY2E1KzhFWGlOaGR6WUdW?=
 =?utf-8?B?YW1ldHMrbURwRGd5VE1KcERzY0xaaWI5OHQvbDJnY3pYUEcxUkdiSjVpa0hH?=
 =?utf-8?B?TEtjZDFtMVFQU0NIcEVzYU90ODNYVnV5UUhGM3MzdkVCTDhiYVY5dXY4YlJn?=
 =?utf-8?B?cmxCdEh2QmVaVk03ZXdzL3RiaERoYnFVeHZPUFFMNlhxQTlZRi9ranB0UFQz?=
 =?utf-8?B?VTY3SkN0SmJSVEYrRnc2NjA0bmU2QzNGWm5lRlZMM1BqdGJrQWV5QnpyQVBG?=
 =?utf-8?Q?cs+wor7KXNBHj7uGi76URqYJfsIDdmGV/mehPehexU=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B2ABB454CF0DAD41A1F5EEBBDC907B76@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a82b5f27-248f-4941-085c-08de372d9726
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2025 14:16:48.1771 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7A10N0ISVIfL9opti6zH+981mYUU4flu4nL5bH51lW6H2ZU4lFU9d/fqTuf8jGJqNXEA1GbqmVWJp5tEy8/gszX9WHWUiTUr2DKon1RDq2w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4919
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

T24gRnJpLCAyMDI1LTEyLTA1IGF0IDEyOjMwICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
U2luY2UgdGhlIHN0b2xlbiBtZW1vcnkgaG9va3MgYXJlIGZ1bmN0aW9uIHBvaW50ZXJzLCBtYWtl
IHNvbWUgb2YNCj4gdGhlbQ0KPiBvcHRpb25hbCBpbnN0ZWFkIG9mIGhhdmluZyB0byBkZWZpbmUg
dGhlbSBmb3IgeGUuDQo+IA0KPiBpbnNlcnRfbm9kZSwgYXJlYV9hZGRyZXNzLCBhbmQgYXJlYV9z
aXplIGFyZSBvbmx5IG5lZWRlZCBvbiBwbGF0Zm9ybXMNCj4gbm90IHN1cHBvcnRlZCBieSB4ZS4N
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFyZW50LmPC
oCB8IDEwICsrKysrKysrDQo+IMKgZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfc3RvbGVu
LmPCoMKgwqDCoMKgwqAgfCAyNyAtLS0tLS0tLS0tLS0tLS0tLS0NCj4gLS0NCj4gwqBpbmNsdWRl
L2RybS9pbnRlbC9kaXNwbGF5X3BhcmVudF9pbnRlcmZhY2UuaCB8wqAgNiArKy0tLQ0KPiDCoDMg
ZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMzAgZGVsZXRpb25zKC0pDQo+IA0KDQpS
ZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRl
bC5jb20+DQoNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcGFyZW50LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BhcmVu
dC5jDQo+IGluZGV4IDQ5Y2I2NGNhOGM0Yy4uZDE2MTYzMDA3NTQ1IDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BhcmVudC5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFyZW50LmMNCj4gQEAgLTE3LDYgKzE3LDcg
QEANCj4gwqAgKiBmdW5jdGlvbiBwb2ludGVyIGludGVyZmFjZS4NCj4gwqAgKi8NCj4gwqANCj4g
KyNpbmNsdWRlIDxkcm0vZHJtX3ByaW50Lmg+DQo+IMKgI2luY2x1ZGUgPGRybS9pbnRlbC9kaXNw
bGF5X3BhcmVudF9pbnRlcmZhY2UuaD4NCj4gwqANCj4gwqAjaW5jbHVkZSAiaW50ZWxfZGlzcGxh
eV9jb3JlLmgiDQo+IEBAIC04OSw2ICs5MCw5IEBAIGludCBpbnRlbF9wYXJlbnRfc3RvbGVuX2lu
c2VydF9ub2RlX2luX3JhbmdlKHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiDC
oGludCBpbnRlbF9wYXJlbnRfc3RvbGVuX2luc2VydF9ub2RlKHN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5LA0KPiBzdHJ1Y3QgaW50ZWxfc3RvbGVuX25vZGUgKm5vZGUsIHU2NCBzaXplLA0K
PiDCoAkJCQnCoMKgwqAgdW5zaWduZWQgaW50IGFsaWduKQ0KPiDCoHsNCj4gKwlpZiAoZHJtX1dB
Uk5fT05fT05DRShkaXNwbGF5LT5kcm0sICFkaXNwbGF5LT5wYXJlbnQtPnN0b2xlbi0NCj4gPmlu
c2VydF9ub2RlKSkNCj4gKwkJcmV0dXJuIC1FTk9ERVY7DQo+ICsNCj4gwqAJcmV0dXJuIGRpc3Bs
YXktPnBhcmVudC0+c3RvbGVuLT5pbnNlcnRfbm9kZShub2RlLCBzaXplLA0KPiBhbGlnbik7DQo+
IMKgfQ0KPiDCoA0KPiBAQCAtMTE2LDExICsxMjAsMTcgQEAgdTMyIGludGVsX3BhcmVudF9zdG9s
ZW5fbm9kZV9vZmZzZXQoc3RydWN0DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIHN0cnVjdCBp
bnRlbF8NCj4gwqANCj4gwqB1NjQgaW50ZWxfcGFyZW50X3N0b2xlbl9hcmVhX2FkZHJlc3Moc3Ry
dWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+IMKgew0KPiArCWlmIChkcm1fV0FSTl9PTl9P
TkNFKGRpc3BsYXktPmRybSwgIWRpc3BsYXktPnBhcmVudC0+c3RvbGVuLQ0KPiA+YXJlYV9hZGRy
ZXNzKSkNCj4gKwkJcmV0dXJuIDA7DQo+ICsNCj4gwqAJcmV0dXJuIGRpc3BsYXktPnBhcmVudC0+
c3RvbGVuLT5hcmVhX2FkZHJlc3MoZGlzcGxheS0+ZHJtKTsNCj4gwqB9DQo+IMKgDQo+IMKgdTY0
IGludGVsX3BhcmVudF9zdG9sZW5fYXJlYV9zaXplKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5KQ0KPiDCoHsNCj4gKwlpZiAoZHJtX1dBUk5fT05fT05DRShkaXNwbGF5LT5kcm0sICFkaXNw
bGF5LT5wYXJlbnQtPnN0b2xlbi0NCj4gPmFyZWFfc2l6ZSkpDQo+ICsJCXJldHVybiAwOw0KPiAr
DQo+IMKgCXJldHVybiBkaXNwbGF5LT5wYXJlbnQtPnN0b2xlbi0+YXJlYV9zaXplKGRpc3BsYXkt
PmRybSk7DQo+IMKgfQ0KPiDCoA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hlL2Rp
c3BsYXkveGVfc3RvbGVuLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9zdG9s
ZW4uYw0KPiBpbmRleCBjYzdhZWM3ZGI3NmMuLjEyNzcxNzA5MTgzYSAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfc3RvbGVuLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL3hlL2Rpc3BsYXkveGVfc3RvbGVuLmMNCj4gQEAgLTQzLDE0ICs0Myw2IEBAIHN0YXRp
YyBpbnQgeGVfc3RvbGVuX2luc2VydF9ub2RlX2luX3JhbmdlKHN0cnVjdA0KPiBpbnRlbF9zdG9s
ZW5fbm9kZSAqbm9kZSwgdTY0IHNpDQo+IMKgCXJldHVybiBlcnI7DQo+IMKgfQ0KPiDCoA0KPiAt
c3RhdGljIGludCB4ZV9zdG9sZW5faW5zZXJ0X25vZGUoc3RydWN0IGludGVsX3N0b2xlbl9ub2Rl
ICpub2RlLCB1NjQNCj4gc2l6ZSwgdW5zaWduZWQgaW50IGFsaWduKQ0KPiAtew0KPiAtCS8qIE5v
dCB1c2VkIG9uIHhlICovDQo+IC0JV0FSTl9PTigxKTsNCj4gLQ0KPiAtCXJldHVybiAtRU5PREVW
Ow0KPiAtfQ0KPiAtDQo+IMKgc3RhdGljIHZvaWQgeGVfc3RvbGVuX3JlbW92ZV9ub2RlKHN0cnVj
dCBpbnRlbF9zdG9sZW5fbm9kZSAqbm9kZSkNCj4gwqB7DQo+IMKgCXhlX2JvX3VucGluX21hcF9u
b192bShub2RlLT5ibyk7DQo+IEBAIC03NywyMiArNjksNiBAQCBzdGF0aWMgdTY0IHhlX3N0b2xl
bl9ub2RlX29mZnNldChjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfc3RvbGVuX25vZGUgKm5vZGUpDQo+
IMKgCXJldHVybiByZXMuc3RhcnQ7DQo+IMKgfQ0KPiDCoA0KPiAtLyogVXNlZCBmb3IgPCBnZW40
LiBUaGVzZSBhcmUgbm90IHN1cHBvcnRlZCBieSBYZSAqLw0KPiAtc3RhdGljIHU2NCB4ZV9zdG9s
ZW5fYXJlYV9hZGRyZXNzKHN0cnVjdCBkcm1fZGV2aWNlICpkcm0pDQo+IC17DQo+IC0JV0FSTl9P
TigxKTsNCj4gLQ0KPiAtCXJldHVybiAwOw0KPiAtfQ0KPiAtDQo+IC0vKiBVc2VkIGZvciBnZW45
IHNwZWNpZmljIFdBLiBHZW45IGlzIG5vdCBzdXBwb3J0ZWQgYnkgWGUgKi8NCj4gLXN0YXRpYyB1
NjQgeGVfc3RvbGVuX2FyZWFfc2l6ZShzdHJ1Y3QgZHJtX2RldmljZSAqZHJtKQ0KPiAtew0KPiAt
CVdBUk5fT04oMSk7DQo+IC0NCj4gLQlyZXR1cm4gMDsNCj4gLX0NCj4gLQ0KPiDCoHN0YXRpYyB1
NjQgeGVfc3RvbGVuX25vZGVfYWRkcmVzcyhjb25zdCBzdHJ1Y3QgaW50ZWxfc3RvbGVuX25vZGUN
Cj4gKm5vZGUpDQo+IMKgew0KPiDCoAlzdHJ1Y3QgeGVfZGV2aWNlICp4ZSA9IG5vZGUtPnhlOw0K
PiBAQCAtMTI2LDEzICsxMDIsMTAgQEAgc3RhdGljIHZvaWQgeGVfc3RvbGVuX25vZGVfZnJlZShj
b25zdCBzdHJ1Y3QNCj4gaW50ZWxfc3RvbGVuX25vZGUgKm5vZGUpDQo+IMKgDQo+IMKgY29uc3Qg
c3RydWN0IGludGVsX2Rpc3BsYXlfc3RvbGVuX2ludGVyZmFjZQ0KPiB4ZV9kaXNwbGF5X3N0b2xl
bl9pbnRlcmZhY2UgPSB7DQo+IMKgCS5pbnNlcnRfbm9kZV9pbl9yYW5nZSA9IHhlX3N0b2xlbl9p
bnNlcnRfbm9kZV9pbl9yYW5nZSwNCj4gLQkuaW5zZXJ0X25vZGUgPSB4ZV9zdG9sZW5faW5zZXJ0
X25vZGUsDQo+IMKgCS5yZW1vdmVfbm9kZSA9IHhlX3N0b2xlbl9yZW1vdmVfbm9kZSwNCj4gwqAJ
LmluaXRpYWxpemVkID0geGVfc3RvbGVuX2luaXRpYWxpemVkLA0KPiDCoAkubm9kZV9hbGxvY2F0
ZWQgPSB4ZV9zdG9sZW5fbm9kZV9hbGxvY2F0ZWQsDQo+IMKgCS5ub2RlX29mZnNldCA9IHhlX3N0
b2xlbl9ub2RlX29mZnNldCwNCj4gLQkuYXJlYV9hZGRyZXNzID0geGVfc3RvbGVuX2FyZWFfYWRk
cmVzcywNCj4gLQkuYXJlYV9zaXplID0geGVfc3RvbGVuX2FyZWFfc2l6ZSwNCj4gwqAJLm5vZGVf
YWRkcmVzcyA9IHhlX3N0b2xlbl9ub2RlX2FkZHJlc3MsDQo+IMKgCS5ub2RlX3NpemUgPSB4ZV9z
dG9sZW5fbm9kZV9zaXplLA0KPiDCoAkubm9kZV9hbGxvYyA9IHhlX3N0b2xlbl9ub2RlX2FsbG9j
LA0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vaW50ZWwvZGlzcGxheV9wYXJlbnRfaW50ZXJm
YWNlLmgNCj4gYi9pbmNsdWRlL2RybS9pbnRlbC9kaXNwbGF5X3BhcmVudF9pbnRlcmZhY2UuaA0K
PiBpbmRleCBmNTkwZTg0NjQ2NGQuLmNjMTNiMmNlMTMyNCAxMDA2NDQNCj4gLS0tIGEvaW5jbHVk
ZS9kcm0vaW50ZWwvZGlzcGxheV9wYXJlbnRfaW50ZXJmYWNlLmgNCj4gKysrIGIvaW5jbHVkZS9k
cm0vaW50ZWwvZGlzcGxheV9wYXJlbnRfaW50ZXJmYWNlLmgNCj4gQEAgLTUxLDEzICs1MSwxMyBA
QCBzdHJ1Y3QgaW50ZWxfZGlzcGxheV9ycHNfaW50ZXJmYWNlIHsNCj4gwqBzdHJ1Y3QgaW50ZWxf
ZGlzcGxheV9zdG9sZW5faW50ZXJmYWNlIHsNCj4gwqAJaW50ICgqaW5zZXJ0X25vZGVfaW5fcmFu
Z2UpKHN0cnVjdCBpbnRlbF9zdG9sZW5fbm9kZSAqbm9kZSwNCj4gdTY0IHNpemUsDQo+IMKgCQkJ
CcKgwqDCoCB1bnNpZ25lZCBpbnQgYWxpZ24sIHU2NCBzdGFydCwNCj4gdTY0IGVuZCk7DQo+IC0J
aW50ICgqaW5zZXJ0X25vZGUpKHN0cnVjdCBpbnRlbF9zdG9sZW5fbm9kZSAqbm9kZSwgdTY0IHNp
emUsDQo+IHVuc2lnbmVkIGludCBhbGlnbik7DQo+ICsJaW50ICgqaW5zZXJ0X25vZGUpKHN0cnVj
dCBpbnRlbF9zdG9sZW5fbm9kZSAqbm9kZSwgdTY0IHNpemUsDQo+IHVuc2lnbmVkIGludCBhbGln
bik7IC8qIE9wdGlvbmFsICovDQo+IMKgCXZvaWQgKCpyZW1vdmVfbm9kZSkoc3RydWN0IGludGVs
X3N0b2xlbl9ub2RlICpub2RlKTsNCj4gwqAJYm9vbCAoKmluaXRpYWxpemVkKShzdHJ1Y3QgZHJt
X2RldmljZSAqZHJtKTsNCj4gwqAJYm9vbCAoKm5vZGVfYWxsb2NhdGVkKShjb25zdCBzdHJ1Y3Qg
aW50ZWxfc3RvbGVuX25vZGUNCj4gKm5vZGUpOw0KPiDCoAl1NjQgKCpub2RlX29mZnNldCkoY29u
c3Qgc3RydWN0IGludGVsX3N0b2xlbl9ub2RlICpub2RlKTsNCj4gLQl1NjQgKCphcmVhX2FkZHJl
c3MpKHN0cnVjdCBkcm1fZGV2aWNlICpkcm0pOw0KPiAtCXU2NCAoKmFyZWFfc2l6ZSkoc3RydWN0
IGRybV9kZXZpY2UgKmRybSk7DQo+ICsJdTY0ICgqYXJlYV9hZGRyZXNzKShzdHJ1Y3QgZHJtX2Rl
dmljZSAqZHJtKTsgLyogT3B0aW9uYWwgKi8NCj4gKwl1NjQgKCphcmVhX3NpemUpKHN0cnVjdCBk
cm1fZGV2aWNlICpkcm0pOyAvKiBPcHRpb25hbCAqLw0KPiDCoAl1NjQgKCpub2RlX2FkZHJlc3Mp
KGNvbnN0IHN0cnVjdCBpbnRlbF9zdG9sZW5fbm9kZSAqbm9kZSk7DQo+IMKgCXU2NCAoKm5vZGVf
c2l6ZSkoY29uc3Qgc3RydWN0IGludGVsX3N0b2xlbl9ub2RlICpub2RlKTsNCj4gwqAJc3RydWN0
IGludGVsX3N0b2xlbl9ub2RlICooKm5vZGVfYWxsb2MpKHN0cnVjdCBkcm1fZGV2aWNlDQo+ICpk
cm0pOw0KDQo=
