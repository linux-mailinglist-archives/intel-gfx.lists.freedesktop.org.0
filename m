Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD969B5034
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 18:18:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0A3010E6B3;
	Tue, 29 Oct 2024 17:18:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U1Xp4o+p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32FF710E6B1
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 17:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730222294; x=1761758294;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=8mQEmbxUvUEZO2ZV4MSDLAgFClUNV7m7t8347HkwIW4=;
 b=U1Xp4o+pGHFw9fqKzV4E4Cun/FUXVZj3G8rwPr6hA9/T8HQ2JY+U8iaI
 UZqGIQ6kIg4oCcATuuYfzb0WaNEtn3V1yShCCoaT96WWlpIsTq1668k05
 G3fR+Y4YIiNHmMfNXKkE3fKE0DY5ta5cWdhF7B1OALWIraUhetSJQiqrK
 w0zYPEhQ20fxbdYBNmRclDZxQCHybYtw5cgAZkT3tEYcbw8bgwsSPg+lZ
 Iwa5F1JwG+GNNsxOgPtaWNU+bULGS3/Ni6RVxh4ylDHcIhoTHU99H0Bg4
 OHj8pmHd+bE8xGMhMCb0yDCiJKUuULX20/2iy0XGlG93AeST9PF0UhftA A==;
X-CSE-ConnectionGUID: QGw06EBPRdyJ3PpHUQi72g==
X-CSE-MsgGUID: U42z0wcrQquvTs+TS1OMmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="47362664"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="47362664"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 10:18:14 -0700
X-CSE-ConnectionGUID: g9oVShsBTSyo89fwqmQrCQ==
X-CSE-MsgGUID: oV3xT3ScRlWIuhfag0BRvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="86583780"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 10:18:14 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 10:18:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 10:18:13 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 10:18:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L+EMC5mMaoFdDquDUSQfiFkKPQKZkJmEzk2OSMIPg2cYEW5V1YYJcNnp+uuyksO9kUYlq5EMrUBitUAbxArkz6SCjyklFbt/ZW+tLp4DpDefWMm9tr8/tdHr4H/TNQzJ9C5Jtrq9FBWIbr2pVaSb5D38Z1MMHUocxykUdTIO5OQbUmEbyRTbtHOWvsoC1HRTDRCGnonz/D++pI+dwjTgMZuD6Au/o9S7UeGgTtW72WBZNOKYPYRq+u4zgom4RdJoZrCCJ12/lyS1XTYEz40hwobBd7NyN2s2GO6r2JIMxoG0UqujggiJXwvMlBNXLa2eB+AM82/Hp+HWq3FOmHlefg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h0SddqIjE7Pu20Gu+ufi8TrmLRt4NrpLyd3HpECVoh4=;
 b=TX5wbFd/hfeFQPqQhJXWI2NO+8KdGk0/c6lIZx6YLW6QvBoie7z2mcqybBGYTvKLcbSkLjnQiuYVvNtUIbuKAgLup8r0G4YiycP+Jx6issVl58Gym/hSM+0mZFOyU1ipZy6rw1Sthmg5a7CzWS/V1RNf6mAqpndHhKxYxzt7hO6nOclkzW7fif+KfKSdiVbPYs0+AKP4+w+qtg7Ohn8PzUnQz7tCWDgaIKrPTdtM9+XXkHwNL6actCloUSOic4EbV6e/aXeKD8/nN1sZcn73ZBKC+5v46MEPYzfLFjFxtN7hIb+hPiAaL8G2ffSb9Ybg9Hk3He+I2qy6aQB18GxmcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB6401.namprd11.prod.outlook.com (2603:10b6:510:1fb::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Tue, 29 Oct
 2024 17:18:11 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8093.027; Tue, 29 Oct 2024
 17:18:11 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ZyETwUjD2XZoFFXs@black.fi.intel.com>
References: <20241029140037.164687-1-mika.kahola@intel.com>
 <ZyETwUjD2XZoFFXs@black.fi.intel.com>
Subject: Re: [PATCH v3] drm/i915/xe3lpd: Power request asserting/deasserting
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: Mika Kahola <mika.kahola@intel.com>, Raag Jadav <raag.jadav@intel.com>
Date: Tue, 29 Oct 2024 14:18:05 -0300
Message-ID: <173022228547.1957.2038779134403986759@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0388.namprd04.prod.outlook.com
 (2603:10b6:303:81::33) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB6401:EE_
X-MS-Office365-Filtering-Correlation-Id: e975a2e9-aa4d-41b4-07f9-08dcf83daa15
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VDUwUmNOcXVWOUVjaXFpRk9uZzdXTStTZjAwU3pzZE5mZVIxOEllSTIyVjVE?=
 =?utf-8?B?SFR5V2hQd3FqenF6VnFNWktZaVVkQ2g1dUhzbnlWZDVMRGxlcFZ3ZnVvSlJn?=
 =?utf-8?B?ckJzQUJjWkd0cGMwNVIxMmlrUkJrMm1jWXA2TVJNUTRmTFlYM0hrVzVVSnFn?=
 =?utf-8?B?OTREWnc3RHZuQ2dqL2h2V3JVdXN2aFNEcHZsa3czY29ubng2eUJCQUtaNUtK?=
 =?utf-8?B?Mkdhb0NDZTZ5RDVnTEFaQ1ZaWjAwekN5REN2WGFJbXhRek9WS2w1MUxUWWtY?=
 =?utf-8?B?cU9Fc3dRVDhlbW5RU2hwbVNZSEt4bmRBSUpmUG9aNzQzajl6bk9TTlh6MWo5?=
 =?utf-8?B?SnBpV1ZRM3VFNGNvTWd5eXd6YThWU3dFbVdHVWtBZTVIRHUwTW5tM3pucUZT?=
 =?utf-8?B?czg4ZWtUajZ0RStJUTBzNUV5OXVLTHBKOFpWdVIwaWZRUnB2Q1NCQ0tiWmlW?=
 =?utf-8?B?Q1FUV2JwSG4wTEE0ZC9LNGxVUmZZQWRsdkhzVG0zd0ZzWndKUDBld0ZPQXk5?=
 =?utf-8?B?SnhlakFYN3pBRGdwMFExYUJqTGdpSTk4RTBmQUpDanBaWDVhcFBnc3k2eis1?=
 =?utf-8?B?TnJOWlhBY0FUak9kMHpxR1c1R2p6S0JiaGM3UEFqWDRkMXpiMGVvZXVIanlJ?=
 =?utf-8?B?cHkvODBveGJYck5HV1NuZTNidHdLTGRRUHhDak9xYjhFS3VETzhDVWVxelB6?=
 =?utf-8?B?Z1V2QUI1MlN4UDdRZ0dyZnNtNjZHRW93ait1ZTZrVVpIRUlUTzhueWMxdXNF?=
 =?utf-8?B?eVhySkplMVRvNlA1S3VjcjJMdzBvWGpoaDFMZW9lb083YS82U2hsNEFkQzh5?=
 =?utf-8?B?U2FQeGpTUlBWbjFqdWhYUVJLSktWY1Z6aFZzOHBhV2psSUlzRkhYQ3dka3Y1?=
 =?utf-8?B?QkRQNi8xajBrbE5HekdZbVVGaXNEWmVZU3hIWkk1czBpVk1vWmtnNERiL1l1?=
 =?utf-8?B?dktHenBsYzFkWXVmOUV3UTJvZTVDV002RG50VEZiNTV5aDV6Z3kvYjJxSXJO?=
 =?utf-8?B?c0UwODBENTBzMXlKb01GN1Z4Skd5UDVNOGhVSXF1d01JY1RZZHNxbmtCS2Z0?=
 =?utf-8?B?bVFYOGF4OHFHcUxjdkdVTFA4VzNSelhnVGdMQUJyVkZvL01TekpjMVFIUjNW?=
 =?utf-8?B?N0dFUTArT0l1NkVKTkRoUmZWdzhOV2s3TGtPWG5ZdFRrWkZTWFFIZ2RRZTVn?=
 =?utf-8?B?MmxQdXBOZ1dwYnFzbHNiVW1MT01KQ1BnNC8zL2J0NEtaNVloajFPVUY3L29D?=
 =?utf-8?B?K2hBSTdZUERwRnkxdjVDanU3Rmp4a0xWUktiRUJ2QVUveXYwMmpuaEdwUzdw?=
 =?utf-8?B?b0JWd0I0WmFmY0VWRURGaGkrUFFhWXdRVDlpUjE1aURsaW9SVzViM3p6ZkVG?=
 =?utf-8?B?clZ5TVVUSE9QRE1zQ1Y3ME0vR1ZHL1UwODNqMWh3QVVLMWdDK3dWTXk4NFJB?=
 =?utf-8?B?NTI4Mi9LbktqeUwzb1RpS3MrMjJITDVEbWhFTXU3eVhpT3JNZTgrNkcyUmti?=
 =?utf-8?B?MnRiOU1sbGhuNmI2QW5BVjlGZ2FadTNJYVVJYmlPVGViclJRQjlWOHZIZ1Vo?=
 =?utf-8?B?YXhXUHFDdGFMZzlOc0xueSt5NzVYbWEzaWNuWmNHVmQxbzMrdFBIbDV0cHZJ?=
 =?utf-8?B?R3o5VTZ0cWFKSkNuZFhyVUNGaitmRHJDWCtINGpXejVFL3Z4U0JBSWRJdlAr?=
 =?utf-8?B?Mno5U0wxRklER21FUTdLNGxJWkF5Q3d1RzFkOVprZmNOWUQ4ZDZPTzlnVlRj?=
 =?utf-8?Q?Y6E2YjCukK90bFkCD+91c2bED9mU+lND5YZzXVe?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amZTYTk3UURsYlc0M0MxMXhtdkFSZzdvWWdBQ25YdWlyTmNQTk9Rb3I2Y2lm?=
 =?utf-8?B?R2dYcWpxREZUNjBDdWlmelZ6dlRDZk55LzA3cEVtRldMZ3pGRDlzT1ZWMDIv?=
 =?utf-8?B?OGpJUG1PM0UxbXZwQ0M3ODlKd080Q0wxa295Y0w5WGFqV1N4cFZtRTRkUUgr?=
 =?utf-8?B?ei8xZDRadWV2WDZXUkJVRjZiN05ET1NpaTRXQ1l3aGJ6S0hGSVdzWkhYYW10?=
 =?utf-8?B?LytKNUhZSTYxTDQyUC9EcTErN05nSmxxQ1MwWkg3dnY3OFRmTTdscFdyaFN4?=
 =?utf-8?B?NzkxM09KZU44TUNMY2NZVWNTVWJYWnU4QXhzM1JJR2pucTFQSkJzTmVXeHVu?=
 =?utf-8?B?ZzFpY3V5K0VSSGdOVENHYmRHaDlKdHVKTzZwUDdmYzlCalhqOHhaNlFOR2ov?=
 =?utf-8?B?NGw5MGZpYXM2SENsUzduZXRrRmNPSEFpb2MwcDVZQzd3V3M4eG5IZlJMRkNn?=
 =?utf-8?B?QVRoRHN0QXFVajVoVExNZ3VSMU54Uk9sMUVkWldLbHNTRnlRdFBjbGlKbFBC?=
 =?utf-8?B?THhreVR2OExsU0huVDZ6cmhkZWxHRXN2ZmlHekVuS2szZzVEbXg0bmdhbG9s?=
 =?utf-8?B?WlY1Q0g5WG42RkRZSExDT2JMbURMOFFPQllSYndRUU82WXBKUVVxSnlHSzBu?=
 =?utf-8?B?a2xuRlAzRGNpcjVmNGhLVVhhcWRJK1ZOcUtLdDgyWEJ6by9vRjE2cEJJUnBp?=
 =?utf-8?B?SmFNa0s4VnNCNm5IOXQ4R2FZdGI1VXdhbmkrTS9OSGVOcDZFVUJibW0yK05W?=
 =?utf-8?B?dytoSkZHSG9sNWtubi9KbHVpU0NTSzdtSHYxUE9KVVlqc0c2UnhxL1c4QVBx?=
 =?utf-8?B?WVQyYVpnSWswVERiZVIzOGxzRUZTbmJjdFo3QUhTaCtWdDFzQXFtbDFOWlFI?=
 =?utf-8?B?WCtWWm5pRUU3V0xkaXJYUE94Y3ArcjFlemFnZXlyOFNSWnd0ZHpkaVZGUUZS?=
 =?utf-8?B?SGpLZjdrUFFaclZ6SEtOZFk3eVlQMGJieDkwaWdrTUtURk1JRHk3Zk1IWFZv?=
 =?utf-8?B?S2xYYzNFYkMyVTdOd1R5MGhVa2tSeThGb3Bwdy9TVGs4b1dhYlc0cjI3bTkw?=
 =?utf-8?B?eXpLWXFYbTRUTXdlY01XWUdDbUR1RnpoS2tDUmo5WUhrdGFRalh5U0NZTHdP?=
 =?utf-8?B?RlQ2NVNwMzFUQ2d3M2RaMjVWSmJFMHZ5ZGwrYnZHRVNVcEVPd2dRKzBkblkr?=
 =?utf-8?B?aGoxTnM1NmhDSW4vQTB4Q05rVUxKb2F2amErUTI1WGlNUnBJWUdIWHBKak1R?=
 =?utf-8?B?WHJjcThMejVHdEQ2cW1HVk0wMmRBTFBqMC9kN2Y1MDB3Ky9OTWVnZ2FNd1cy?=
 =?utf-8?B?d2JRZm1NdUF2SFJzQTkxQ2s5NkRZaEh3aEZEbUVHNUNaVU1IQVBJQVpwWU80?=
 =?utf-8?B?T2JaQVB2dk55R1RGNkM5ODZOUngxcXFzNGdBKzlxdzhkVEw3cXhNZUorajAv?=
 =?utf-8?B?bzN6cDNZZnY4TCtOaHcybnF0MHJsbFZhT2hScW5JVm44WjllVytOaCtWYkdJ?=
 =?utf-8?B?blF6WTlrQUhTVzgyaUZQUC84VXQycXZOVDlhZzBDV2k1ZDdlVEI0aCtneGFV?=
 =?utf-8?B?MGpxb1UwVnpvSC9RendTUEdobERLakZqaFFabElUQmJ2aUJLZDlIUDAwaGJH?=
 =?utf-8?B?aTJGOXZsNEU4YmlqUSsya0FrbXRiZDhsRHhiMTQ3SHMxTXhzSUhzUlRac3FE?=
 =?utf-8?B?cG44Q0llOVIwVytFWHFjOG9NaVJiQWMzTWVqMXQ1MEx6RWFqUGR1M1hVQysw?=
 =?utf-8?B?TlZHMHNxY3VpVjVaTldQTWNFYjBWZjkwUFhXVWVSWTVHb3ZvZUtwdER4UWwy?=
 =?utf-8?B?VUlzQnhnM0RnVCthOExnNjljMllLdjRLblNaRzFaKzdFYjJNdGdnUXBlczJm?=
 =?utf-8?B?QzAzUUZydGd4T3FHWWxWL0txRklxVGVJc1h0amFMcWxzTUZOWjhWV1NNUUhk?=
 =?utf-8?B?QjJlUXMzWWx5M0VNVy9PRHBycGNQNmw4RUd3UWY1N3ZzU25EOERxNkFHR0s0?=
 =?utf-8?B?YWhESVc4YWhWZ0hxL2kxS3Qrd3pFSDBnWmkvYTMxMHU4V1p0Rlg0eGVuV1Ez?=
 =?utf-8?B?VjBYcW1WWGl2Nnh4WGtiOGUzQVBZVHExbGsxL0dybXBScnUrVmgxSmRKR2Zu?=
 =?utf-8?B?YnU3bmRXOC9EUHZuSFpWQ3NWSUpwdTEvUEVSMVZIeGFuNml2N3dqcUZ2aVM3?=
 =?utf-8?B?RFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e975a2e9-aa4d-41b4-07f9-08dcf83daa15
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 17:18:11.1522 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A9xn3UCBHiLlfTKUfnPKrAwE3Gj5SaSiMsj3SU+zmX7VkS5yzUxX+DwB5D6ASz3ujNmVzijr7f+jDQnNTyyQbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6401
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

Quoting Raag Jadav (2024-10-29 13:56:33-03:00)
>On Tue, Oct 29, 2024 at 04:00:37PM +0200, Mika Kahola wrote:
>
>...
>
>>     Use boolean enable instead of if-else structure (Gustavo)
>
>Hmm... Not sure if I'm reading it correctly, maybe need to revisit v2.

Yeah, this was Raag's suggestion.

--
Gustavo Sousa

>
>Raag
