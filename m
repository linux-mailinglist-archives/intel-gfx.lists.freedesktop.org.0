Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FA7998214
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 11:25:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2A1710E092;
	Thu, 10 Oct 2024 09:25:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qcwhx1Sy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D420A10E092;
 Thu, 10 Oct 2024 09:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728552309; x=1760088309;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=0ziZUanZWvKMuVst0An5UDwGHIGw31A8x2HyDbRDiPo=;
 b=Qcwhx1Sy/LKLaEKNG7or90rWmE0C1qF+AytIUZQjlHLp0+SClm9DcEBU
 QxICVY0ek5TIppI+sV2JLUbh/CsnwTuYMp+/Q4iYq4bnAHaUdTKhj+bsq
 IzynhuJXwsG3ZYGtNpbCXr3CTJlYQDVs9aJBNDaGf33LJeuzeonZWWDOh
 WLpiq81aTxfDm5JJM7sPNp/emUKcBMaqOYI8/hzQOU76d1yMSWbZV27km
 vizoiC/67CJDNElkDF4+ur6pTstY/6l+w4li1PMDsp+4SfRT8mP1F1wfd
 8Ikm1spBXGEXdmZiq/Jev5cjcyVsZulNJiERia62pTxKAAXuWCaqr9Qm+ Q==;
X-CSE-ConnectionGUID: niGy/atgQXmV1QOLa3r3PA==
X-CSE-MsgGUID: I6hkopL1SveWQ/IfR/OkFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="28014749"
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="28014749"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 02:25:08 -0700
X-CSE-ConnectionGUID: y7YC+0EjQES/Av8fgxBcRA==
X-CSE-MsgGUID: bNWVG+qzQSaJa2x6WkcpZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="77009955"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2024 02:25:09 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 10 Oct 2024 02:25:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 10 Oct 2024 02:25:08 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 10 Oct 2024 02:25:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rvmyInqgUIz5KFauu1yyxc54is4Bn3ALuo9Rfls+MoENbS7xOo5H8mx7xomb5hiiobSdx4CPdZNOMCCjH3E1kHaxdldTr84kZRhfa6DO1JyQXjlq6AvVryNWCs3OCw6E4K6+XEG8t1mFtUhQ9ZC9Ekz00+VbgqgEsSaBrQE2DPHsSkWTouRKW6ONYqQ+zy+a0VdNvzV4qgZ6nQKy12qp3lmF7L08mqtDHbbWJbL6CkyuIEE/n78IW/4yBLv4cXWGv56ax50KPrIkHvrwfoiAXhM8xQbA5+FdEilQ9JarmYi7nVdUzkyMKD9SLYBPRCcpUJS/haNAwJOpZePN5jOYHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ziZUanZWvKMuVst0An5UDwGHIGw31A8x2HyDbRDiPo=;
 b=fGCROElQSOrvr/iPo0iNc0clZvGwQ3uONDPV2aHXaxyl/0O8GBCZmfdyafJQSbCYthD1wmpBdngItRJ9ulhwQ1Yc9CgNts4oWkY8ARN2JVcNUoeQQQ5DrA133HpPsdJxOM9adE6/wLjLd4dMhF0f2fa0+qKWY4Tf8IGyWrHn9X/7r/sm6BulXGBeW7lXiLa0Ot2QapMj1hX5Hi8n8fxB6u7H6e6ipQcGmD9JNhk/9OiG4Vwt8rpB2rT8XQd9+kVqJJ6F8KhuQOWscPZm1fh+qo+C/Z0aXHmI63IoRLhZUPcdk/3PzwPd5fKlp6cCtwL6hrJ5RLwaOsbfx7rg1bQqUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB6194.namprd11.prod.outlook.com (2603:10b6:208:3ea::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Thu, 10 Oct
 2024 09:25:05 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8048.017; Thu, 10 Oct 2024
 09:25:05 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 6/7] drm/i915/psr: Add VRR send push interface for PSR
 usage
Thread-Topic: [PATCH 6/7] drm/i915/psr: Add VRR send push interface for PSR
 usage
Thread-Index: AQHbGtYas92YPHoOqEWIhai5zgh2v7J/oDUAgAAWsgA=
Date: Thu, 10 Oct 2024 09:25:05 +0000
Message-ID: <96da83312410aac2d9994778a503909e9267ec28.camel@intel.com>
References: <20241010053316.1580527-1-jouni.hogander@intel.com>
 <20241010053316.1580527-7-jouni.hogander@intel.com>
 <877cag8jvd.fsf@intel.com>
In-Reply-To: <877cag8jvd.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB6194:EE_
x-ms-office365-filtering-correlation-id: 3878aa2c-c225-46d2-262b-08dce90d6d34
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?SEd0Sk80TWM0QmRCWk9UV3NWbzMxWVhKWHMza2F2aHJyc3VMemlUcVZYZnp4?=
 =?utf-8?B?WXdwNWdKZFdKNHhJMkM2bS9nTXhKa2JndTkvVWMrdEhSUzBIOWNrVlF5VWpH?=
 =?utf-8?B?d0VBN3pjdVpoSHZySnAxTENvcTA0UjJ2NURNQlVGSzlMUk5DejVWQkdtUWFn?=
 =?utf-8?B?SjVqMzhLYWs2a3g3Z0JzUEwweVFPSksyL1dpWkU0d3RoVlNPcllSU3NRdFM0?=
 =?utf-8?B?c3MvTnE5eGlkQ0JaMlB1ZktqVTUvUTBVYmRBVU1MSlo1cml1SWtqRUdNcFpH?=
 =?utf-8?B?VmJ0czFKSkgzOUJXQlAvb0EwdWNHeCtZZWxaMTlnUTlMdUZKeUZxUUduNDlW?=
 =?utf-8?B?T3hwOXhyclFTUFowRlRValBLL0NIdlNGQUhmQlVrejZ6Z2oyR1p4QnA0Lzhx?=
 =?utf-8?B?dzlwS1AzdDFnZVNqVU5FNklxVDY4S1VkNGY2QlhuYUdiRWdrMGpuWEt3UzdS?=
 =?utf-8?B?cHhkMkZNOC81VGlveVhyTnBOMGYwZnlyTzRia1lTSFovcStVOHA4SlJoVVNG?=
 =?utf-8?B?L3Y2clNoQ2diOWR2djM1eFk4UXdzTUsvNGg2U2NTc2QxMC9OMVY2b1gzM29y?=
 =?utf-8?B?ZnR0cEE3emJ5YkxmelZsSjZKVHFuNCtpRURXSTFIL3g1dEpXV0ZsbFViMG1D?=
 =?utf-8?B?dHdFY0hyYTd4RGNlaWgvb2RjZlJzaCt1dXlZbnJEOWNlV0Fid1UveVhnSXlo?=
 =?utf-8?B?dWVsMC8yTFNxUEZDZEt4MXVpeHU1bHRUUjNPYWNFVWFBRFFMUHFpWVpUWlhK?=
 =?utf-8?B?dzg3VzZ1WS9CR09WRjlEZ1ljV0pXQTcrVE5VYWFUSThmWTVRaTR2T1I4cTZw?=
 =?utf-8?B?V2NLZTI1Q2RrdzlYN1c1dWRVYVFCMStwR3p3cXUzS1VYVlJwODdEMWwwT3Vy?=
 =?utf-8?B?cGx1MWZVSFp5WUJFU3BzejdkYjJvc3drQm1kVEpoVjF5V0ZwazhIaU90TVNR?=
 =?utf-8?B?S00zY05jczRyZFQ2QWtFQTA5OG0rR0VSdkJVRW5nNU9WZlMxK3MyZDk3eG1P?=
 =?utf-8?B?NVZLemowL05OQkpXTVpQSWhJR1ByTXBIMkxPazVvdWZESlN5ekFtY1JYYXZK?=
 =?utf-8?B?LzVlNkNTMzZVcU9PSDZFNDFOcUZhNTkxMWVxOUpuSGJTaXF4ME5JZm9uWlFy?=
 =?utf-8?B?aHUzczM3ZENwZUllZzUrdnpmR3BIeFlhc1ZFYm1FN0wzUkc2ZVd5TS9nNW1N?=
 =?utf-8?B?MDloZzA4NVkzSHhyS3FiOFh0ck96bzAvSUlyb21BWTVpdDdmRUVhbTFZNmov?=
 =?utf-8?B?MnRKOFVIU09LV1VIOVoxNEdNRzBROGNuK2Y2VWc1NjVGU0hMeWhWTFFHL3A3?=
 =?utf-8?B?R3ZTM2Z3K1NGVVJRWVNqQ1VLZUhqelZ6SWlXZ3VReXJYVHpQQjFjNERXUldo?=
 =?utf-8?B?aEdlZzEvYlNUWlJrUU9IUlNBdEUyQmU4dFcyZ0VxL3VteVZNSlNxQUJSbkI2?=
 =?utf-8?B?MXF1dEpLR2ZiejAyQ2pWYlVPYmFiN3BwbmNaeGJYOUNJTVV2T3V4L1JqRE84?=
 =?utf-8?B?bGxRWWplbHNhRGhOL1pmbStoaDJoZ24wZk5DMkFURUtGdlJYVGdZZlFCckxE?=
 =?utf-8?B?aERHbmczK1ZaQVRMOGZGb2dpWDVvV2o2bFp3aHRNVk1vSW5XRXRtVGZmb21S?=
 =?utf-8?B?Z2dMMjBjNGh4TWJoNStBQXcrcnRMSUFvZ3hPRTlPZTR1R1c0ZzRGRUlPc3li?=
 =?utf-8?B?K2x1cWFZTE1lNHFCbGpzR3RYK2dOekFreHd6aHYzOEcvOEM2SUJvc29BWmdo?=
 =?utf-8?B?YVV1SmtxUW5ncjJCUnhhZ1J4WDFoZFRtblNXMW5LSy9qSk50ZEVBSGQ3ejMv?=
 =?utf-8?B?ajZQRVNWYU1LM2p1YlVvUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YXJqNUhRU2MzU0FNN3JuRkpqS3NmamQ2WGZOZExPaC84bTZkTFdFZ3lGVGFF?=
 =?utf-8?B?UHZlWFNXODc4SWpRQXFRbzFXaEpPaDg0UzNQbEdBaDEyVDdmMFUzM3lZcDF2?=
 =?utf-8?B?Ty9ISTRDRzVLWnppOUtaMldNNnBiVWdTUGg0UGVXQlJ4S3B5M2ozdzRzWGR4?=
 =?utf-8?B?aTA3dFNialNNbFdCSlVjczhyNU1weDRCTENMeWNjdHJZelYvRGRGYXRjbktp?=
 =?utf-8?B?T1ROSENjRC9xRTZkY0EvTUdGT29xWHVYYXlxelhkdlh4cW02b2loTHZiTFlY?=
 =?utf-8?B?M2xtUDY3eXI3MVNuOFZnbmFnTzhuOGMyZkJvbHpjeUcwVzNnQ1VaVGVtdVl3?=
 =?utf-8?B?OTRseDVXUkFmR3ZXQ3RKNlJPemx4cHU3S2wxUFlNOGR1RlRDcG05L05VTDlZ?=
 =?utf-8?B?RWZ4YXpOMnNtMDlKSDFOcmJzYjJDMk16MmEybEdXR0dzMklNcHBHTmNqTERD?=
 =?utf-8?B?NnZEcEVqYnVINUlYYlhjOGNvU2g2VkxlN3hTN3NYc0VqUzBXMDFrYWk5Wjc5?=
 =?utf-8?B?eXEyMmYwVDMxWXRacGFXcVZXVElRaVdiMk1zUHU0K1MyRnJiL21hNE4xNlVF?=
 =?utf-8?B?NXpXUGhBQW41THA2MWxhVTlnUzBoUWtvWCs5Vmd3UDl6M1cvcjdMeGdmVmFn?=
 =?utf-8?B?ZjNCT3VQVElGSHJQN1QwOWVTWGF5LzlFQUxKUEJ1RXc5N3ZUeXU5WVZVZkJy?=
 =?utf-8?B?MEh3WUp3NGlzQXEvTXI5ZmZpUFRCbXllTHhOd0YwMngrVzIxT2JuVjlKamFa?=
 =?utf-8?B?eFhyTlh6TEVRRU13MXRrZmJGZFBibXpxTHF5VzVzamZpYXlQdlJBSCtiV01R?=
 =?utf-8?B?bEwyMW5NeDZYM2tIRmEvVzF6U1ByYUZFSVlJTjhRVkZMTmdxWDFMdEJLU2s5?=
 =?utf-8?B?dEMyWkFGYkZNT1VNc2hSWFVLczBROU1DQ1NaNmR1S2hOVC9wL3EvWlBkQUpW?=
 =?utf-8?B?VFBUUkFOdW1FMDNkV0V5UndpWCs5N0dudGhycVlBZzNFUG9URGZmMC9RT3VX?=
 =?utf-8?B?YXJLMnFJdkxiQVF1OGRwdEt2c21kcE9DQk9lbUVmVklic3VQQ255UVZtRndU?=
 =?utf-8?B?ekFLYVBucjRTS252aGRsdFZjOFpkSEdpZ0RwOU9FRDlnOGZlMHI3bEpteC9K?=
 =?utf-8?B?SmdKNDhqdXplRGl4d3BZU3I3Qld5a2lRK1BVRDJCNVVZckhJVWdnOU5GakZi?=
 =?utf-8?B?M2VtV2xrZTVWNXY4bHRYcldDUkZEczR5MXFiRlZ6bHU1L1h5clZQRUw5aWRz?=
 =?utf-8?B?dWZoeDg2NytjNkpwbE1TeXVYT3pWZGRDK1VUYXFLQ2tZYmhVaG1Wczc1SzY2?=
 =?utf-8?B?TXU2NXJma21LL1lHTjZ5MHlWV2d5L2QrcEVkZFlUL3p2OEtLQjIyUXpNU29I?=
 =?utf-8?B?d1hmcjY3VStqVzltQ0J0dHczcFh6Mmt3N2ZUcUJRRlFyM2pwUUhCV21JRFBI?=
 =?utf-8?B?ZTFKaE1FT0ZWUXhDTktWVUkvVVVYQkJ6VDIydWsyRlUrM1NoT244MXc5SnBw?=
 =?utf-8?B?OUs1NjhOZHF1aU1ZQ0tFbU5ZK3ovSThXMHZpaUR0WVVOOHYwY2ZsSkoxTldW?=
 =?utf-8?B?ZU9NNFhIM2lpbUJlQTI3S3pIMkVIbUIvb25LT3lySllibkpacG5YL1B6ajdW?=
 =?utf-8?B?eHNUalZUckF6eHNQWHk2Um1XaFNVOE1Ja3VqazhHWnIyRjBVejQwbXluVWVp?=
 =?utf-8?B?RmFXNTgvVmZRazRSU2lkRGxGREdkYm1MWkNrNTh0dTNTb203UXRHVzQyYU9q?=
 =?utf-8?B?SUlvang5eHJXZnJaTlUzcWt0TWZkc2RPcHBuVHZJSnFZTFlkdVN0MXBpalZ1?=
 =?utf-8?B?YWFWQkJCTU1wU25XZlZTOStRYTQvd0ZWckVGRXRJbHF4U2hiZTQvby9ONkpz?=
 =?utf-8?B?bm1BWFhhOVU1REQ2ajNUaXdVbWpvQWJXLytZN2hVN0x1YkFQSi9LWmJkd3ds?=
 =?utf-8?B?V0dTbGZyOWhWdll2M2c2UnMzaWVES3I3TVViaTAvTFRYZHpDZy9jQUV4NGtZ?=
 =?utf-8?B?SkU4VFRTYjBnZXdKZy9SVlEyOTVhYmtsakNNTUZDc2xhNGEvSlZHMWdhSmQ5?=
 =?utf-8?B?YVdzZlJ0V0djMnhjbm0zUG52SkJtOHlFYU5BaFVVeGJZVFVJN2hwZytCcU1F?=
 =?utf-8?B?VTFnQnQxN0tZM1pzZ003SlRkdzBSN2xVYXhTNTJNait3bmszMEJLb2t4eTdI?=
 =?utf-8?B?anc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <15464918C61B9941BEC14B4F710798FA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3878aa2c-c225-46d2-262b-08dce90d6d34
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2024 09:25:05.5122 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8BWKGmYc1IVLcPZaNShoNotRwhlL3omQGOigt+mZNKvd/LuLO5CFB225aVxQUSBuZXgKFH+T0ojCNSq3SKSAvi2EAwhxAJrXsyR2ZMPu8hM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6194
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

T24gVGh1LCAyMDI0LTEwLTEwIGF0IDExOjAzICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVGh1LCAxMCBPY3QgMjAyNCwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IEFkZCBvd24gaW50ZXJmYWNlIGZvciBQU1IgdXNhZ2UgdG8gcGVy
Zm9ybSBwdXNoIG9uIGZyb250YnVmZmVyDQo+ID4gdHJhY2tpbmcNCj4gPiBpbnZhbGlkYXRlIGFu
ZCBmbHVzaCBjYWxsIGJhY2tzLiBVc2UgdGhpcyBuZXcgaW50ZXJmYWNlIGZyb20gUFNSDQo+ID4g
Y29kZS4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhv
Z2FuZGVyQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMgfMKgIDcgKysrKysrLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF92cnIuYyB8IDE4ICsrKysrKysrKysrKysrKysrKw0KPiA+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuaCB8wqAgNCArKysrDQo+ID4gwqAz
IGZpbGVzIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPiANCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4
IDViZTgwNzY0NzVmMGIuLjc5NTlhMzM3NzFiMTMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtMjMyNiw4ICsyMzI2LDEzIEBAIHN0
YXRpYyB2b2lkIHBzcl9mb3JjZV9leGl0KHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCkN
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgICogVGhpcyB3b3JrYXJvdW5kIGRvIG5vdCBleGlzdCBmb3Ig
cGxhdGZvcm1zIHdpdGggZGlzcGxheQ0KPiA+IDEwIG9yIG5ld2VyDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoCAqIGJ1dCB0ZXN0aW5nIHByb3ZlZCB0aGF0IGl0IHdvcmtzIGZvciB1cCBkaXNwbGF5IDEz
LCBmb3INCj4gPiBuZXdlcg0KPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiB0aGFuIHRoYXQgdGVzdGlu
ZyB3aWxsIGJlIG5lZWRlZC4NCj4gPiArwqDCoMKgwqDCoMKgwqAgKg0KPiA+ICvCoMKgwqDCoMKg
wqDCoCAqIEluIEx1bmFybGFrZSB3ZSBjYW4gdXNlIFRSQU5TX1BVU0ggbWVjaGFuaXNtIHRvIGZv
cmNlDQo+ID4gc2VuZGluZyB1cGRhdGUNCj4gPiArwqDCoMKgwqDCoMKgwqAgKiB0byBzaW5rLg0K
PiA+IMKgwqDCoMKgwqDCoMKgwqAgKi8NCj4gPiAtwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV93cml0
ZShkaXNwbGF5LCBDVVJTVVJGTElWRShkaXNwbGF5LCBpbnRlbF9kcC0NCj4gPiA+cHNyLnBpcGUp
LCAwKTsNCj4gPiArwqDCoMKgwqDCoMKgwqBESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAyMCA/DQo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX3Zycl9wc3Jfc2VuZF9wdXNo
KGRpc3BsYXksIGNwdV90cmFuc2NvZGVyKSA6DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGludGVsX2RlX3dyaXRlKGRpc3BsYXksIENVUlNVUkZMSVZFKGRpc3BsYXksDQo+ID4g
aW50ZWxfZHAtPnBzci5waXBlKSwgMCk7DQo+ID4gwqB9DQo+ID4gwqANCj4gPiDCoHZvaWQgaW50
ZWxfcHNyMl9wcm9ncmFtX3RyYW5zX21hbl90cmtfY3RsKGNvbnN0IHN0cnVjdA0KPiA+IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdnJyLmMNCj4gPiBpbmRleCA1OTI1YWRlNDU5MWQ0Li5kNTE4MzBkMTczYjYx
IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJy
LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+
ID4gQEAgLTMyOCw2ICszMjgsMjQgQEAgdm9pZCBpbnRlbF92cnJfc2VuZF9wdXNoKGNvbnN0IHN0
cnVjdA0KPiA+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdHJhbnNfcHVzaF92YWwpOw0KPiA+IMKg
fQ0KPiA+IMKgDQo+ID4gKy8qKg0KPiA+ICsgKiBpbnRlbF92cnJfcHNyX3NlbmRfcHVzaCAtIFNl
bmQgcHVzaCBpbnRlcmZhY2UgZm9yIFBTUiBjb2RlDQo+ID4gKyAqIEBkaXNwbGF5OiBJbnRlbCBk
aXNwbGF5DQo+ID4gKyAqIEBjcHVfdHJhbnNjb2RlcjogY3B1X3RyYW5zY29kZQ0KPiA+ICsgKg0K
PiA+ICsgKiBUaGlzIGlzIGZvciBQU1IgdXNhZ2UgdG8gcGVyZm9ybSBwdXNoIG9uIGZyb250YnVm
ZmVyIHRyYWNraW5nDQo+ID4gaW52YWxpZGF0ZSBhbmQNCj4gPiArICogZmx1c2ggY2FsbCBiYWNr
LiBQU1IgbXV0ZXggc2hvdWxkIGJlIHRha2VuIGJ5IGNhbGxlci4NCj4gPiArICovDQo+ID4gK3Zv
aWQgaW50ZWxfdnJyX3Bzcl9zZW5kX3B1c2goc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXks
DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBlbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIpDQo+ID4gK3sNCj4gPiArwqDCoMKg
wqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAyMCkNCj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqBpbnRl
bF9kZV9ybXcoZGlzcGxheSwgVFJBTlNfUFVTSChkaXNwbGF5LCBjcHVfdHJhbnNjb2RlciksDQo+
ID4gMCwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgVFJBTlNf
UFVTSF9TRU5EIHwgTE5MX1RSQU5TX1BVU0hfUFNSX1BSX0VOKTsNCj4gPiArfQ0KPiA+ICsNCj4g
PiDCoGJvb2wgaW50ZWxfdnJyX2lzX3B1c2hfc2VudChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZQ0KPiA+ICpjcnRjX3N0YXRlKQ0KPiA+IMKgew0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+ID4gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0
YXRlKTsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92cnIuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuaA0K
PiA+IGluZGV4IGE3NWYxNTkxNjhjMTEuLjNkYTdiYTEyNjk3ZmYgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuaA0KPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmgNCj4gPiBAQCAtMTIsNiArMTIsOCBA
QCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZTsNCj4gPiDCoHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGU7DQo+ID4gwqBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yOw0KPiA+IMKgc3RydWN0IGludGVs
X2NydGNfc3RhdGU7DQo+ID4gK3N0cnVjdCBpbnRlbF9kaXNwbGF5Ow0KPiA+ICtlbnVtIHRyYW5z
Y29kZXI7DQo+ID4gwqANCj4gPiDCoGJvb2wgaW50ZWxfdnJyX2lzX2NhcGFibGUoc3RydWN0IGlu
dGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKTsNCj4gPiDCoGJvb2wgaW50ZWxfdnJyX2lzX2luX3Jh
bmdlKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwgaW50DQo+ID4gdnJlZnJlc2gp
Ow0KPiA+IEBAIC0yNSw2ICsyNyw4IEBAIGJvb2wgaW50ZWxfdnJyX2lzX3B1c2hfc2VudChjb25z
dCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gPiDCoHZvaWQg
aW50ZWxfdnJyX2Rpc2FibGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqb2xk
X2NydGNfc3RhdGUpOw0KPiA+IMKgdm9pZCBpbnRlbF92cnJfcHNyX2ZyYW1lX2NoYW5nZV9lbmFi
bGUoY29uc3Qgc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ID4g
wqB2b2lkIGludGVsX3Zycl9wc3JfZnJhbWVfY2hhbmdlX2Rpc2FibGUoY29uc3Qgc3RydWN0DQo+
ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ID4gK3ZvaWQgaW50ZWxfdnJyX3Bz
cl9zZW5kX3B1c2goc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtIHRyYW5z
Y29kZXIgY3B1X3RyYW5zY29kZXIpOw0KPiANCj4gTml0cGljaywgd2h5IG5vdCBqdXN0IG1ha2Ug
dGhhdCBwYXJhbWV0ZXIgY3J0Y19zdGF0ZSBsaWtlIGZvciBhbGwgdGhlDQo+IG90aGVyIGZ1bmN0
aW9ucz8NCg0KVGhpcyBpcyBhYm91dCB0byBiZSB1c2VkIGZyb20gZnJvbnRidWZmZXIgZmx1c2gv
aW52YWxpZGF0ZSBwYXRoIGFzDQp3ZWxsLiBUaGVyZSB3ZSBkbyBub3QgaGF2ZSBjcnRjX3N0YXRl
IGRpcmVjdGx5LiBJJ2xsIGd1ZXNzIHdlIGNvdWxkIHVzZQ0KY3VycmVudCBzdGF0ZSBvZiBjcnRj
LiBEbyB5b3UgdGhpbmsgdGhhdCB3b3VsZCBiZSBiZXR0ZXI/IA0KDQpCUiwNCg0KSm91bmkgSMO2
Z2FuZGVyDQoNCj4gDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gPiDCoHZvaWQgaW50ZWxfdnJyX2dl
dF9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiA+IMKgaW50
IGludGVsX3Zycl92bWF4X3ZibGFua19zdGFydChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZQ0KPiA+ICpjcnRjX3N0YXRlKTsNCj4gPiDCoGludCBpbnRlbF92cnJfdm1pbl92Ymxhbmtfc3Rh
cnQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSk7DQo+IA0K
DQo=
