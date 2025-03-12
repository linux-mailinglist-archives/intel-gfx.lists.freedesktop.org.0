Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE252A5D520
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 05:41:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE73410E6B6;
	Wed, 12 Mar 2025 04:41:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="daDm4Iqb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E63D310E08B;
 Wed, 12 Mar 2025 04:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741754512; x=1773290512;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hblIrGFkTiPeCVVRXuzv0SoiAIiaGQBTSkL/o64LkjA=;
 b=daDm4IqblGhtXp6nz9BgbuZupjOe7WQjtqhF0eMPwhelBeZWGG4NHIaj
 wMyKF/LZ1qboeJsrlaCnKRe03TPqHMSRCeghbJr2T3HHMNKbvQq1ssZD2
 OjQaqdFOzT6d23H2ld17LWMbzWTlWi8zxAmaA8nSE5eVnHHiQnKwOHYeB
 Rz0R5+2xaYwXq60yUlfKLtn1K39YUSt31u86rp5ssGyODzydKLRiXbjK4
 AzdXPFJ//R3VeYSNeiAxS1eQDCDYWi53ritIn1OydLdZNsAsz4C3YBJ9k
 sj4I3rI8YpMgje1K8UqZvUtxCudm/xr0GxqYQp0HL7hXU1vF3AgO8lquu w==;
X-CSE-ConnectionGUID: RMlwbOGiRSOJA4bvpoY4UQ==
X-CSE-MsgGUID: fZ+jm9zLTLOo+rlEr1kI9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42731126"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="42731126"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 21:41:50 -0700
X-CSE-ConnectionGUID: cCU3RzbfSGWhA4kQzi1ycA==
X-CSE-MsgGUID: uc1HpN8pR22mOqWVT3AMXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="120742377"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2025 21:41:49 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Mar 2025 21:41:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 21:41:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 21:41:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gt2mqvQpijAih1Rt7EC7pbF5tlf/g6fizsf4cacWj+HX5E9UECv6GNeOUjHH4rNB6dx3OVXVwOxWBNcOrGbYiD25Oa+gC4gJYMnESG3r90EQ/YyKcJSq+aAXbHXOtQMj6DZ/pEb4teO85KWAtVB0W8eiMDqIgpn9okxtM6XGlFXK25bU7CeJzZD9f7kszU9RiHY1QOQH82lxNuu+sRO99XSs2lYZBqbHwsNjcwLcWPMb5DGJV+UfkkcsuG5RLSavPmz1oyaG/EoznFIZQyp7CNeAscBpOpys7hY+J+0L7/tA0XCcC/ygGBQynzZFnIUZs2Y/8Qkh7dOzgQizuWi3Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hblIrGFkTiPeCVVRXuzv0SoiAIiaGQBTSkL/o64LkjA=;
 b=ju9A8RY5SFtZAsakwqXOhgkDSvMJHXt6Lzb5dDhb1KaIMc1kBpfDaIUlp46IbGHA0T6ci0S7zl+prvrspIAta4QxP8hftKrjiYxORpk/+wJJqC8fm3HZZoVZyRdkrUfCDdphx8V/Vv2Qeaa1zSvNKNtZ+mHVd4YNnVMTPI9agwy+lxHNYlZ+k4GcZJ85NeE/L+3jaeaAW8kKA9hlKYnFMtixe57AvHSyWS1vsJMj3OPs8mHvRdFyjgu32stxuRijRugZV18znFYmHB0OmBRcmncDFBfHj7Pl7y7FyNpoHKcU3kdKuOHQgJkIQLr81Ms2tKm75XtTcZQmR+AbgZkCYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by BL3PR11MB6412.namprd11.prod.outlook.com (2603:10b6:208:3bb::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 04:41:02 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 04:41:01 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Li, Rongqing" <lirongqing@baidu.com>
CC: "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "Hunter, Adrian" <adrian.hunter@intel.com>,
 "kan.liang@linux.intel.com" <kan.liang@linux.intel.com>
Subject: RE: [????] Regression on linux-next (next-20250304)
Thread-Topic: [????] Regression on linux-next (next-20250304)
Thread-Index: AduSrWlShT/u9jWuQGqLTs10S+pbfAAQDApwAAbMTAA=
Date: Wed, 12 Mar 2025 04:41:01 +0000
Message-ID: <SJ1PR11MB61295C9FC0FBC6274D262AB3B9D02@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB612942635D5D653CE475A5ABB9D12@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <079a4ed4cd724cf28d99f01e1ebd0605@baidu.com>
In-Reply-To: <079a4ed4cd724cf28d99f01e1ebd0605@baidu.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|BL3PR11MB6412:EE_
x-ms-office365-filtering-correlation-id: 9dda00a9-8734-4d11-b8bb-08dd6120178d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?big5?B?TTA2dUZLSHFuMms5VnJleXdhREwzVGZXam5yNUdOa3ArREJEMStaUU1nTEZzVGQ2?=
 =?big5?B?TEpNYUdpOUdCZFd2SS9hMTZPU3ZGOVNaekFET0xUSjlhSnB4RjZyVlZqZVM5K0lS?=
 =?big5?B?RWRNd1VNV2JIRlBlRDhrMzRVNGxwNmswOEJoaG1SUmRTbWtIZDU0bWdORmoyVkI4?=
 =?big5?B?cFdnRm9ONnJjOUFaSldsbjdDNWRuN2laT0dHRW1HZGk4RFZMV1hIRDhNUW5HSWlJ?=
 =?big5?B?bW5EQy8yYjE4OGJCOXNaNUVZb3RhUkl0NW0vYWhPeDRmOXlnSWJTMHIzMkxKNkJJ?=
 =?big5?B?Uk9yWlEzakVrd3c4TUhnYit4V2tjcTZ3STI0REZkV0s3OU5UNllZS1poUTZNODQ5?=
 =?big5?B?N1JmNytDeU16K3hrbzZpMEFwalE1WEVmQ3MvUlhSbzJuL1huZkhzQ2RqQWMvQkYz?=
 =?big5?B?M1M5TDcrc0Y5SElOOG1EZGNabEFQN3lVeXZ0dy9PYlA3czhUejFRQWczSWRsNlBr?=
 =?big5?B?MzZYSEdrVEpvRDROSU90clVnOGdXbjF4eHFnNmpUZXRQVjNJME5mMmRqUzRCOHFF?=
 =?big5?B?a2tkMFdNSU9NemFtOUxsaFZocTM4STVGK3BBNTA5YlJiM0prNnZGUHdualJaVG9x?=
 =?big5?B?Y3oyRlFhWlNrQ2t3VUJqTzVETXUveEkzZ2VZRHM3MDUzb2RkMUhRUlRQSi8vMVhS?=
 =?big5?B?NDJDUDR2azY2a3FONFFwSjBWSjRMVDh0a25lcGhsN0s2dUE4eXZPaUJIR2RkbUE1?=
 =?big5?B?TnJzZlpGdFVRL1J4ZUJVRXBBMWdEYTFOOXpOK0xlU1paUVI2SSthazk3SDR2ejdj?=
 =?big5?B?QVJZL0pZc3NhY3dma1RuL2ZaMmpQbUxibU1rTW5vTC95SkpjUkd1ZnRpSUNBWTJT?=
 =?big5?B?TVcxZk1SYno4TWprYytZbFJ4UDd0T0dOdHdFdUlQTjNTRFFjSGswTDdodXdQVXRS?=
 =?big5?B?YXhISEJJakw3QWM3d3FycVJ6QmczVXpYK2UwOGExdThyVE1PbEZtYThZQ0JuR0xU?=
 =?big5?B?Z0tGdlVYSnRWRWliUWd2dEJXUE52azd1K0JpVnZONTVqRFZYd016WENZV1J3L2JU?=
 =?big5?B?YkZNRGVWZFRHbjl0VDczb3I5UEVJVnhROFBIZlk0eWFNTmZFb3FGWTZmVjhNcW5N?=
 =?big5?B?SkZvZ2pGNzAvYnIySlhtTVRpRzg2dW1yK0dodzdvRFRTNktoTGlVYVZKcnNwUm1X?=
 =?big5?B?SkwyeEhXYXNpSWNFOTZTMlovVS9sb09sV1dDUDJzQ1JtaTZzVm4xRHJGdDdPZ1lV?=
 =?big5?B?bzBVYjY5cGpoZVFOVUI1NlpIbVhlSVBHZmlGZTR2L0p2cVdkU2pHRUJVeVIvWHlz?=
 =?big5?B?d3Yrd1NwTEYrczlORDFHazZxZ1lYei94TjlBdnJqTE0wNFNEaUN4ZFhSbmNBNndL?=
 =?big5?B?VGd2Umhxay9uTUV1Mm1paVR5S1U2bFQ5aTdXWXdaem8xVGVuRWN4b2xHZko1d3Nn?=
 =?big5?B?YlJnYUpQOEdGQmVSQi8xMlYwSXhLRnNkZGV1eFgySnBVWG5Tb1pXZk5STWJlUVFT?=
 =?big5?B?L2I3RFM0djAvbnhwN21Lc0JqN1VRTFprMlg3RWZHNDJNTWhGVEtiK3pXd0RLZmFF?=
 =?big5?B?UXdPam9ONzdJUlp4d0NTME1MOXNBR0xrVVNDRjFNaUluLy9SZU1ZNjMzdmNrL3pX?=
 =?big5?B?OXIwOTllUThta1JFUWFYYkpEVlBlVlNTVktmTkUxV0JzUUZxbEVjVmZ4dzd2UXg0?=
 =?big5?B?YTQ3YTU5OGJ2dmlWaDYvRGl5N1IrKzY2ODJvMU12SjZRMEtsOVBhUWNMSVBRZE9F?=
 =?big5?B?RGNGclh5M3FiUUdLblNVM1djNGFNWWNyZ21HbE03MDJpVGk0ZTNGUEdEV284ZlJF?=
 =?big5?B?Z01HRjByeWNUajYxcy94eStPa1c0Um1WektxdFo4RW1rNmkwY1E9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:zh-tw; SCL:1;
 SRV:; IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:;
 CAT:NONE; SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?big5?B?dWxnaGJvMHBpQ0xDaHUrN0V3NlJ4RDhTYmpyMU5kbURUQ2gwYkU0U1NnaStXUkZO?=
 =?big5?B?RHZDaGNoY1Rld0JvY3YyV1ZYTzRJZVZITUh6d0QzanFCRzY1S2xTY1Q0TmI2Q05h?=
 =?big5?B?YU5iQnNwZHdyVFY1SmJkS01JWGZrNXpnOEpDenkzVHkxTTJ1Q2JGN2VxUVlNeXRv?=
 =?big5?B?RWd0WmZST0trUDNDdm14UEc5Qy84NVphVExtbWV2R083Zk43ZDgyOG0yOG1XYXpK?=
 =?big5?B?QjBiUlJvbk45RStROHRRakNsWXNucEdLUFZkUDBnd1JhYlFNZCtrWUN2b1N3ZVdn?=
 =?big5?B?WXBuTWtvNkFpUnQrbHFlYzBQLzZlN3gwVGhLVFo1SzdEQWhGSFlrc3BrUlBxWFI4?=
 =?big5?B?WGNrR3RaSzhKdHcxblViZVRjK0dqQkRMZzhFOXdhYVlSdXhGam9OTUx3WGlHemlz?=
 =?big5?B?T2c5TkNrczNBcUZlZGlibGRkU0dKWDF1ZUpwSDQwdUNIVmMwcUFtLzJwaHhyM2ZS?=
 =?big5?B?T0VZd1kvNVl4bGR4Rm9vMkRscmM3SmtpTVRuZThReTVzT3V3Y3BIODVMeFFOZ21I?=
 =?big5?B?ZWhxb3lsSTZxN0JjeEVYVWpzMTlVNENMNHhmUkQzdlhPM3U0VStlcWxQRms2eFBV?=
 =?big5?B?S3Q4aVR4WWVqSWkvZTNFNGRza2hQb0l6UThPekozY2JuUUFGazFnZm9nenRhUTZu?=
 =?big5?B?b1lZM3ZrdWZWZVhZUFh1N1lLRWhtRkUrS0xHeDVVRDFGOWJpZFdENXh4R2dBOUMy?=
 =?big5?B?clZIYy9uOWU2ZVJVRTJyNXlZb2pJM2xuUFZOcGFqVURmU0FMN1ppeW1CWnhQaUVv?=
 =?big5?B?c284TkRPYXBiZHVBTlJ3NTZvMVhkSnZ6RmZZY3pGSlFWRUxaazE4UjdOck5BMmhD?=
 =?big5?B?YmZNdnFIRXpIVUpNMlVuOVNTL1djSGc2MkVDdER0V0JUWjJBUUVPWGZzT0tzKy9v?=
 =?big5?B?QU1Yd0ZPc1ZoMlkxbWQzeU1LWnRmMjJxNjdla1o5ajRyVFVxaWJTQkw1T0pmdlF4?=
 =?big5?B?U2lRNlBQRG4xRDdEUm8rRlM3cndzQTRhOXUySmpHWWo4aUhkTFltV0YrUUtmRSth?=
 =?big5?B?VXZCN1Bva0VxdWRXcHc0WDJBclVHd3kzRDlpMXhEVWtpQWxXUThpdkJjblZsQ281?=
 =?big5?B?RnNLdkhzbllVZE1EU3pDVldybEkxTWVqVjJoSDBXejdodit2Znh3azcrQjFLeldQ?=
 =?big5?B?cjZ4WE8vM3J3T2x4eisvUUZTSFJaWnBPRVRTUUFGLzVtQ3NqN1ZhZjFWRUxhWnFn?=
 =?big5?B?TXg0azBRRVR0cFRHN2FqbUYwSDIwU1ArZTJZRVZnUCtKQmZnQU1IcXRZS0t5TS91?=
 =?big5?B?NE0xSm9Ib3ErZU1vTzRnQkI5NE5ENGdDNWo3WTdqM01iU3RxcVpJNWd4UExWYUNn?=
 =?big5?B?Rys4OEQwRWFRMTJmaVFJN1pEbmwreG5zS0NHaDVONnJ2MGRtRjNhUG1tbDU4eS85?=
 =?big5?B?NTBwcXp6TVdkM0dJY3JGcDJkdWlhRUlLYkllSnRhZi9WUVlGa3lCUkxuc0hzTllZ?=
 =?big5?B?cXJnY0pjOWVQR0lSMHg1UFBGOXphK1lQcTgyUy9BYjVVZWt0TmZIZWl0WjNFSmk3?=
 =?big5?B?cmhobGg5eldBY1hENmw2UGRSa21DYnVITnIway93L1NVTU9IeGV4cndWL1JoL1Qx?=
 =?big5?B?bHpKdm9qRGlHdjVaYWxudlBJbUs0OGpYUHh2dndCQjk4TFB0OTNObDFMTGtGUlVX?=
 =?big5?B?Q0lCZ3BQbTJBU1RRNmIrL0dNejNYZkhVRDlzWnV4QlFOK040eSt5MFdKVzVuNEVS?=
 =?big5?B?a2hyKzNTUGphbzNGMTFSZDJ5NnlMYWdxWjBLZWpUNzk4bGFPbEE1cFVPUnl5K3Zn?=
 =?big5?B?VHprczBoOVVxV3BsWFQvcCtjMGtXbEVKNmMxcEtYN2twbTdieVVYOFd6bG8wMk11?=
 =?big5?B?VjMzQlhrWkdBMVVtNFdQSkpsZjBlTjFWQjdTU21TK3Y5eGJ3b1pvVHN3RUxVZVdv?=
 =?big5?B?ZVFrYzk5TXJBRUY1VXd6MGhaVnM5NUhqeGFPaFJlWW02d01lNzBVRXU0b1FRZDE1?=
 =?big5?B?ZHphSmR0ZysvL3VEa3RMQmtDWHpJMzNQWVI1TWRrb2lES3psU1pNSlJSWXNaTmcx?=
 =?big5?B?TStwTFUzblZTUmUzY0NuamZabnZ0bTJkQytXaGR0SFJxd2hBQkE9PQ==?=
Content-Type: text/plain; charset="big5"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dda00a9-8734-4d11-b8bb-08dd6120178d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2025 04:41:01.8281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a/FHQoQFIcd+KG/UDABmfHhMKxfLDhUH3eKalUBc8mp6LZYsGIVgbP683TKugejoEG3lbj6zFPNAwhUeHSKLq6cPECzdZ2pT5LvM+j/5GSc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6412
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTGksUm9uZ3FpbmcgPGxp
cm9uZ3FpbmdAYmFpZHUuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE1hcmNoIDEyLCAyMDI1IDY6
NTggQU0NCj4gVG86IEJvcmFoLCBDaGFpdGFueWEgS3VtYXIgPGNoYWl0YW55YS5rdW1hci5ib3Jh
aEBpbnRlbC5jb20+DQo+IENjOiBsaW51eC1wZXJmLXVzZXJzQHZnZXIua2VybmVsLm9yZzsgaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtDQo+IHhlQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZzsgS3VybWksIFN1cmVzaCBLdW1hcg0KPiA8c3VyZXNoLmt1bWFyLmt1cm1pQGludGVs
LmNvbT47IFNhYXJpbmVuLCBKYW5pIDxqYW5pLnNhYXJpbmVuQGludGVsLmNvbT47DQo+IEh1bnRl
ciwgQWRyaWFuIDxhZHJpYW4uaHVudGVyQGludGVsLmNvbT47IGthbi5saWFuZ0BsaW51eC5pbnRl
bC5jb20NCj4gU3ViamVjdDogtarOYDogWz8/Pz9dIFJlZ3Jlc3Npb24gb24gbGludXgtbmV4dCAo
bmV4dC0yMDI1MDMwNCkNCj4gDQo+ID4gSGVsbG8gTGksDQo+ID4NCj4gPiBIb3BlIHlvdSBhcmUg
ZG9pbmcgd2VsbC4gSSBhbSBDaGFpdGFueWEgZnJvbSB0aGUgbGludXggZ3JhcGhpY3MgdGVhbSBp
bg0KPiBJbnRlbC4NCj4gPg0KPiA+DQo+IA0KPiBUaGlzIGhhcyBiZWVuIGZpeGVkIGJ5DQo+IA0K
PiBodHRwczovL3dlYi5naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdGlw
L3RpcC5naXQvY29tbWl0Lz9pZD03YQ0KPiAzMTBjNjQ0Y2Y1NzFmYmRiMWQ0NDdhMWRjMzljZjA0
ODYzNDU4OQ0KDQpUaGFuayB5b3UgZm9yIHRoZSByZXBseS4gV2lsbCBpdCBtYWtlIGl0cyB3YXkg
dG8gbGludXgtbmV4dD8NCg0KUmVnYXJkcw0KDQpDaGFpdGFueWENCg0KPiANCj4gVGhhbmtzDQo+
IA0KPiAtTGkNCg0K
