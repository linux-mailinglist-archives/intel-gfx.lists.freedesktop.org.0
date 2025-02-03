Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EAFA2645D
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 21:24:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F2DD10E563;
	Mon,  3 Feb 2025 20:23:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MyeIMZU3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEB2910E563
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 20:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738614238; x=1770150238;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=1vJqQ+uYoakvtA9lO/EvrSc/qwoTg/LO66bYY80QEY8=;
 b=MyeIMZU3XIOlChuce1add6Bu0ZtEWT0S9dBWp8kbPanyCJ4lpkqdPSoj
 2HiombQ+yc5N0MB8dQiWo8A8db5OBr48vS3lrc5yg6dXyXsYLP1k1ogEZ
 Ql537GE3AtdQz+JYhobkTJEKrFLKY1FadfnemjeoyYjOL18cFMlfeF37o
 4Rar081gJoCm46fpbcXn4TIP/cXaJ7IF65kze59yjw2I6++Kb/4PVh0Qq
 UoAaKshsenhukILZlUHT30lyryKbhXB/6SCBrlxH4I3qqQzcaOdGqgI4k
 NqmeJ2paNKSbBG+GWgfSHHEkVs4AlYTrUSaubWSTD/W5g+uN4f6UYOUTc Q==;
X-CSE-ConnectionGUID: +YyblRQrQ+GC5i6U9W5igw==
X-CSE-MsgGUID: 55ESme7WQUiPu1vcBDnYHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="49732106"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="49732106"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 12:23:57 -0800
X-CSE-ConnectionGUID: G5+Ig1/+Sc2LwGBNjcYKrQ==
X-CSE-MsgGUID: /pVSX6MwRmqgj5GlA2It7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="115004346"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Feb 2025 12:23:57 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Feb 2025 12:23:56 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Feb 2025 12:23:56 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Feb 2025 12:23:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sILW0aBFD6JPAtHsotkJAI/HS9Oxnd8DOLGu3DxTw2Eo8FeR0MNWRbF48h5mUS9ZvzpJjlnpkHZi7AxvX+C7p+20DvDb4qpofNwOQoa3BcVK4WAejUGP1OARSBQ0yVZ9pF/PZWs+LVBnD+/H47K64MD2VIlvG+wkl7hQnaROJTREk/fFymts9NF5vpPUJLB4Zqf6RqmRj+eKrG8kI2J10db1dR7afWntyFGRLCgkSAoVyoYjZZt+15YmSviW2zW+4+V2Dx8RFq5czWudf9f2Sqxkd18ydYjCD4mDAZJxMzgv4tezPwp2bK+pumX7uQUb6iC8Rz2zH4wf7TuYxcM7wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1vJqQ+uYoakvtA9lO/EvrSc/qwoTg/LO66bYY80QEY8=;
 b=XYGpzsZxBz4SVHwQAhov8BeCC9YjZnQZrZe0zRqwqK+wShIazaitHCpeHBHVFfVyOVKsH+HOTZUFX5jaHIpO0YiX2K5ftvQ8T9wjgZ3hLRxpMK/yVMbXoEw1u2fKFspApB3fXSD7/OySXP+YdMIIuLcptpcCU1hdvj0isqmiEwPFuas86VztS2q6S/a1ADxPEXSxhbspW2H+ZRjrBennHxdJj55mATdlf9wncwqOopthMOBflRwEDk/lylLrdZk7YVSyvBWil8qZ9kd09f/caPcbEaA3ruNbwjjhEmi95m5lfBDFcpPFqr4+l/QX4FPODUo9KwqVy/ocotlhZ0gkRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by CY5PR11MB6317.namprd11.prod.outlook.com (2603:10b6:930:3f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.25; Mon, 3 Feb
 2025 20:23:54 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8398.025; Mon, 3 Feb 2025
 20:23:54 +0000
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
CC: "Thasleem, Mohammed" <mohammed.thasleem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
Thread-Topic: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
Thread-Index: AQHbdlK5I10e2jiQLkSTRQBgFQ8ZnrM1vRuAgAADHQCAAAQdgIAABCqAgAACioCAAAbAAIAAI5EAgAAPwgCAAAFQAA==
Date: Mon, 3 Feb 2025 20:23:53 +0000
Message-ID: <8102bd56478db361607ddd2848fabf3c4768f3c9.camel@intel.com>
References: <Z6DSC6Z1q0nsd7MF@ideak-desk.fi.intel.com>
 <Z6DdQuYe1Q0Pu4Fg@ideak-desk.fi.intel.com> <Z6DktvZQ-NzLnab9@intel.com>
 <Z6DoVSEBaVp1QcC3@ideak-desk.fi.intel.com> <Z6Dq8iF96I-nBkPh@intel.com>
 <Z6DuZS_9hVqzZuwA@ideak-desk.fi.intel.com> <Z6Dx4ypYV3NJVuf1@intel.com>
 <Z6D0BdYxiq8rLYnx@ideak-desk.fi.intel.com> <Z6D5rl5bcI1v675e@intel.com>
 <Z6EXhDOE3Mx9ueCF@ideak-desk.fi.intel.com>
 <173861394843.77773.14213626182925674257@intel.com>
In-Reply-To: <173861394843.77773.14213626182925674257@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.54.3 (3.54.3-1.fc41) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7SPRMB0046:EE_|CY5PR11MB6317:EE_
x-ms-office365-filtering-correlation-id: ffa967e5-a940-465d-73da-08dd4490ade7
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UjhkYldGdjg2K1lmMHZOdFhCUjN1UklFWklnamM1eFFYNDJWN3IzUUdHN1JH?=
 =?utf-8?B?eW5PanU2OVBGZjlFWmswejl4UVNmeVhxMnNxL3VSSkxLLy9HVWhjbWIxa3VD?=
 =?utf-8?B?ZGlNa1BYbHpTTmJUOU1seXVoSG5jZFpvcEd5eVVlT3NBWDBvWTB2Y3hGZUs1?=
 =?utf-8?B?czEwRVcxQ3dFNGxnMXcrcEExdklkOEt2dW1wc0prdFdHbDYva2ZEWGFiS3gw?=
 =?utf-8?B?V2tLeVU0Z3hERFFRUUxmTXBiSjNnR3JiWVVjVTJ1MTZNczFpZ2ovWXV4OEkw?=
 =?utf-8?B?aDNnL1VXYVlpRklhVU5mUFBKNk5BblhEMmZIUjBqdEhSdmhjV3lEOGFNQTJ3?=
 =?utf-8?B?VksrOG5QZlF4RXY1ZzdWeVVvTUJGbU5ITEpzOWRDamE2ajdnekg4MXQvamFD?=
 =?utf-8?B?UGo4ckJoT29yNE56ZDR1alVBZ29xQXVzb1JtNEJpNVd5QkF4L1FaYVFaWDZr?=
 =?utf-8?B?bjhBRWdiYVZUVVQ3SkJvRDEzNnA2SE1oL2tvLzdpejM5WDVTaVNIc0Z0Njh1?=
 =?utf-8?B?dkpBQU1GaHRmVUNaTjVyeG54a2hweDN6YU1kWlFyQVRQTXdOd1B0Q2w5TitS?=
 =?utf-8?B?akxxUm8vMDBENGRIWGpJZ1pNZE5PRkEzd1RoQW1jamxoVmxUcTdDNURIMTBG?=
 =?utf-8?B?czdpa2lrSnlidEFIWDkvRG44eDhRdWlUa0Y5Mi9sU21QRTBWeXZvcnpZN3dr?=
 =?utf-8?B?YnlpN1c2MGxSM0NYNksrVjl3TzVTUnBxTGF1ZnJ0QmZzeXFEY05JR0pJMkY3?=
 =?utf-8?B?NUw5YS9VeTN0VlpISkQ2WSsxN01kZ2kxOGhxUFZWRmJSN1BrbGgvZi9BSUpQ?=
 =?utf-8?B?cEtrVVdVckppOFZpdkt5UHF1dEl4Y0dEcGtMVUhiZ3hNL3pOd1lKWjBFNjQx?=
 =?utf-8?B?ZnF2aGg1V281dlpDbCt1VGd6dWhCb3FEMmFzellHZXlOSkYxdzFvVW52M1Bq?=
 =?utf-8?B?aE9JN0o4Yy9vRnFMWnpWRk9od0hJSkhVUnZZWU9QWkVkVWUxUXdwcWhCZkFr?=
 =?utf-8?B?UE1MVmRtV2JYN3pEL3lXLzZKUkk5cXpJV01XZDc1emZXVGVFR1ZVNXhBMVNC?=
 =?utf-8?B?ZDgzb3hhcGx3dnRXbTBIWk0zcnd4TXVOVTFCRHJ5S3VOdHh3bEsxUHYrL2tw?=
 =?utf-8?B?VGhsY29WYlJ0UTBTMnU3TyszUS9YaVlxZUdBSDZJbUFmNTF4ZGRCS3FOVDRy?=
 =?utf-8?B?UmcxTk5NN3JRRWo5QzF0WkpWVEZSb2NWRTBGUkdrWm84SDB4b08zNFI5MUM4?=
 =?utf-8?B?MzNKOVcrUndGT0hybWkzUGtRR05SVFQrcWxNcmV3eEhmOTJNRHNMUmRNUEND?=
 =?utf-8?B?dXpuTEFXYTRkcWtYNnE0V3U4KzZwRVYyQ3J2U25PRURaSy81c0tNVjZLZ20z?=
 =?utf-8?B?ekNtZ3dlQ2dmbEE1SlpIcFdGRWxXZUZjVFFRenF5cVA2OFQ5RjF5K3hMK2R1?=
 =?utf-8?B?ZmMyK1JHenh4YzAxWVg0R1hVcStBd25YRTVZck1Ibm1hSzJmR3phVmN0UnYy?=
 =?utf-8?B?V05zd1UrYXdJQUxjdEJJYUNnUURiWE5MK2RiTXdsUG4wNm55c1FsbnNtV1ZI?=
 =?utf-8?B?N3pDWXIrRkhQUkkwQ2JhZE90NnhmdFRZQXpyMk1yYVVsWjZKWTZ2eS8xbXVH?=
 =?utf-8?B?ekR2dVp0NEp3L1VyM2hxQmdmOXg3UUpqb0VwZVZ6anQxYUw1aTJUT1htRVJs?=
 =?utf-8?B?d3FTeXdoR3hSNVNNZXBxNmU4NkNTQmlBWFB1b0pwUDR5YkN3aE9BOWE4WUNj?=
 =?utf-8?B?WkhVakQwMG1JRGVpV2hKUlZGaTRDQ3NJWXoyQk1NQ1hxOE5jZGtTS0xXZm9W?=
 =?utf-8?B?azBFaDVRcFMwQUN6NFBaazlObjFNNE1sRnA0dSs5TTEwSlBZNS9udnNBWUtL?=
 =?utf-8?B?cW1SaERiaGxObTJ0YzVtb01KLzZYeVJZY05sRitNS0MwWEJkclY1c05YZTBL?=
 =?utf-8?Q?bhXMh6HZNRb++7UH3FKrUUjAJn/m/imL?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SlZjZGdrQ1QvSStlQ1N5TVJPS2cxdG9iVnErdHl2dS8vZXlqRmRrSlZGTENk?=
 =?utf-8?B?UnVkS3ZIUFVhMkdWNmRxaFpncVFXWU00aVZpRWJreVpiMUlyMlIxQ3lhSGY3?=
 =?utf-8?B?eVFBd1R0eVMvWWFwUHlqblVDc3hSRlJZMDI5OG9rdHFhcW8yRzYwL0RZR3h2?=
 =?utf-8?B?ZFBLUXFjRWU0LzN0emdkUTgzM3hjWWM5NGZXemdyQS9RRllVSCtPcjR2Y0Rp?=
 =?utf-8?B?LzZXR2Z4WUIrRldiOU9WU1U0UkpGVE9TOUhpMDlxcWtwMDRKSU1BUGl1eWFL?=
 =?utf-8?B?OTFKaXJIWmhHTGtwKzlaeWRaNnlYZENmQjVYWkpNbTdzNWdBdmtMVVFtVzJ1?=
 =?utf-8?B?U1JqWnVJYXpWdXVkakJUajd3c01keUdNbmlGVzVKTkxsVmFrYk5laEpjM3A4?=
 =?utf-8?B?cEJHMnB4SUh4akxhMjM2SXl5NnlsZnpEcEVTcVU4SjZUZkczM2k5OFYybzlh?=
 =?utf-8?B?WUQ0b0VvNlozbWt5UUtzZUlNd25hZVV2ZnVXRisvdXlTZHFrRHFQVVdZSXpY?=
 =?utf-8?B?aWtuMXdYSVVLWTZROUhGNkxEQ1g2OElNcHBvdWhMdW5kNEZiNHB3aTAzUk04?=
 =?utf-8?B?N29nTWs0eGF5eFozWElaR1FmUzNTdm5aWDVlYktiVU4xa1gyVE5jRU0wajFS?=
 =?utf-8?B?RE9iaG42WFdIc2pCd2JBRnozMDBVNDlKT0hHd3o3N1pNYU51RDlNYUNna2lS?=
 =?utf-8?B?T3ZqL0wyN2kzKzM1V2pBWTZsd0YzT3F2ZVplTUczTGZQVHJEMThHd3h1bHRp?=
 =?utf-8?B?L3FRZ1N6UkcvZGsxTS9RNWJKQ2lJTFY3N3V1aHBHVUtCMkhzaStPRjQ3Q09Y?=
 =?utf-8?B?ekl0OEVBbmp6RFFjbmFCVW1WaG9nWWhCeVpicjFtYVF4Q2VyWTlrVWoxNDNv?=
 =?utf-8?B?emoyTVRtcDN2NUVpM0xoN2VlcXIxVU9mbU53cTZ3bEM0alVhNlFxaEpEeGZ5?=
 =?utf-8?B?eVlDbENFSTZpNVRZYkdtUVlsVWhxT0tNOXZaZVgzT3RSblBvOSswcUxFaUJL?=
 =?utf-8?B?emVWV1pxbWRQYVVCaHhVaWRMY2ora0pxRFFDUXRjaVNMd01uaHZvRDkwa2Ry?=
 =?utf-8?B?ejV6bWZzNldtaXRKeE1uS0RucGRlc1lRMVRsbDJXazBhNlRFYm1kWm1uSkFS?=
 =?utf-8?B?T1FkYmlDYXA1YUlQaE5aN0FuZWZzbkozdlVQZ3JZZTlwZjFVemZzMitEdEdE?=
 =?utf-8?B?UUx1ZWNxOGJ6SmE2dnZ3Uk9aZzlhdUtWY1hCWjgySTIyTmwvdG9nNkZ5ME9Y?=
 =?utf-8?B?WHlJR1lHcS9LQzM5SC9wVTNaRFRMVjF4SG0xRHpZNmJPNFZVK01UdGtHS0cr?=
 =?utf-8?B?bFIxWkRrN3lNRTF6YmlISlNaMWlrcUVzS2hwZDU5UWZOd1k5Ym9sOXh0U1pD?=
 =?utf-8?B?dG95bjZrRTRSdWRoY0s1UmFQUlg5amN1YlBpQXgydGRYWkdERzVRZ0RRc3cv?=
 =?utf-8?B?Nm5hSmZsZGlhMGxKWVIrUWtmMm9CS3c1Q0RqZFpRSWovWTdwb3hieFgyZnlG?=
 =?utf-8?B?bWRrYm1LcTd5Y0FjWmFQdVVHVThDR0FyUDZqSWRJd3lVK1cxT1VtZG9HOEhJ?=
 =?utf-8?B?Kzk4eC9TdzVCM2wyZmt3aEd4cTZmeWZUNzlHSmVab2FEazVvQ1VnRGRPZjJC?=
 =?utf-8?B?Uk1BbVhUQU12R0ZYZDZFS04zb3JjZUh4TUpwVHE2SnRRS1hjQjlPUVZZU25P?=
 =?utf-8?B?dDRrMzk2bURxSGJXMkFqV1BzRVN5ODJDOXB5MU5KTi9nNkpuZFFNYllIZFFp?=
 =?utf-8?B?S2FPTDBWMEt1Vkp1SUxpSWJyWlRib3NjSlRZODQvWHd3czFCbjdSNnVkMjE0?=
 =?utf-8?B?b2FYcUxVQis0ZHdzME12TjJvUFdzbjlJRWcxM1pRWmJMRU5hc1NVUGREK3BR?=
 =?utf-8?B?NWE4b3JJdmFuc1FuZU0rVzRJN045SDBFcU5jcnhXNTFGSHFkcW9WYnFDRGlt?=
 =?utf-8?B?RGRTTm5lVFIxQmZjWHlwMFJ2aUwrL3lvanduUG1UbXJ5MTVDeFFLUWNzREwv?=
 =?utf-8?B?TTV5ZTZwdFpZNzVHVzlEQUgyd1FKRXk2TEF6VmkwMlRKUHJRUE1HUGxEQ3dH?=
 =?utf-8?B?aHlNYTZwMXVlWkgwK0NjWjJsVTNnY0Vvak9zV0tzWDVyZmFOa3plM1pvY3BK?=
 =?utf-8?B?U05GYmtYcG9SZEhEVTRvQWZPcUJwOTZORHZZaG9sZEliL2hhRHREQUNTcHBi?=
 =?utf-8?B?Wmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9199DF019C92C14D902292F4E90A75DD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffa967e5-a940-465d-73da-08dd4490ade7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2025 20:23:53.9640 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NiNqRhEsxtgwAE6Gk6Q/PkeIoeOb8PtRG6Afr4GnZRe4JCy/nEgVxQAzw+DyvI2pHhuAgcs4FazUjIoPoOvvEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6317
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

T24gTW9uLCAyMDI1LTAyLTAzIGF0IDE3OjE5IC0wMzAwLCBHdXN0YXZvIFNvdXNhIHdyb3RlOg0K
PiBRdW90aW5nIEltcmUgRGVhayAoMjAyNS0wMi0wMyAxNjoyMjo0NC0wMzowMCkNCj4gPiBPbiBN
b24sIEZlYiAwMywgMjAyNSBhdCAxMjoxNToyNlBNIC0wNTAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6
DQo+ID4gPiA+ID4gPiBbLi4uXQ0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBUaGUgZHJpdmVy
IGVuYWJsaW5nIERDNiBpcyBub3QgYW4gZW5vdWdoIGNvbmRpdGlvbiBmb3IgREM2DQo+ID4gPiA+
ID4gPiBiZWluZyBhbGxvd2VkDQo+ID4gPiA+ID4gPiBmcm9tIHRoZSBkaXNwbGF5IHNpZGUuIFNv
bWUgZGlzcGxheSBjbG9jayBnYXRpbmcgZXRjLg0KPiA+ID4gPiA+ID4gY29uZmlndXJhdGlvbiBi
eQ0KPiA+ID4gPiA+ID4gdGhlIGRyaXZlciBjb3VsZCBiZSBibG9ja2luZyBpdC4gQWNjb3JkaW5n
IHRvIHRoZSBIVyB0ZWFtLA0KPiA+ID4gPiA+ID4gREM1IGJlaW5nDQo+ID4gPiA+ID4gPiBlbnRl
cmVkIHdoaWxlIERDNiBpcyBlbmFibGVkIGlzIGEgZ3VhcmFudGVlIHRoYXQgREM2IGlzDQo+ID4g
PiA+ID4gPiBhbGxvd2VkIGZyb20gdGhlDQo+ID4gPiA+ID4gPiBkaXNwbGF5IHNpZGUgLSBpLmUu
IHRoZSBkcml2ZXIgaGFzIGNvbmZpZ3VyZWQgZXZlcnl0aGluZw0KPiA+ID4gPiA+ID4gY29ycmVj
dGx5IGZvcg0KPiA+ID4gPiA+ID4gdGhhdC4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBGYWlyIGVu
b3VnaC4gU28gSUdUIHRlc3QgY2FzZSB3b3VsZCBjaGVjayBkaXJlY3RseSBpZiBEQzUNCj4gPiA+
ID4gPiBjb3VudGVyIGlzDQo+ID4gPiA+ID4gaW5jcmVhc2luZyBhbmQgREM2IGlzIGFsbG93ZWQu
DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gU29tZXRoaW5nIGFzIHNpbXBsZSBhcyB0aGlzIGluIHRo
ZSBrZXJuZWwgY29kZSB3b3VsZCB0ZWxsDQo+ID4gPiA+ID4gdGhhdA0KPiA+ID4gPiA+IERDNiBp
cyBlbmFibGVkOg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMNCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+ID4gPiA+ID4gQEAgLTEyOTQsNiArMTI5NCwxMCBA
QCBzdGF0aWMgaW50DQo+ID4gPiA+ID4gaW50ZWxfZG1jX2RlYnVnZnNfc3RhdHVzX3Nob3coc3Ry
dWN0IHNlcV9maWxlICptLCB2b2lkDQo+ID4gPiA+ID4gKnVudXNlZCkNCj4gPiA+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2VxX3ByaW50ZihtLCAiREM1IC0+IERDNiBjb3Vu
dDogJWRcbiIsDQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBpbnRlbF9kZV9yZWFkKGRpc3BsYXksIGRjNl9yZWcpKTsNCj4gPiA+
ID4gPiDCoA0KPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqAgc2VxX3ByaW50ZihtLCAiREM2IGFsbG93
ZWQ6ICVzXG4iLA0KPiA+ID4gPiA+IHN0cl95ZXNfbm8oKGludGVsX2RlX3JlYWQoZGlzcGxheSwN
Cj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgDQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgIERDX1NUQVRFX0VOKQ0K
PiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAmIDB4MykNCj4gPiA+ID4gPiA9PSAyKSk7DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+IA0KPiA+
ID4gPiA+IGFuZA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+ICQgY2F0IGk5MTVfZG1jX2luZm8NCj4g
PiA+ID4gPiBbc25pcF0NCj4gPiA+ID4gPiBEQzMgLT4gREM1IGNvdW50OiAyODYNCj4gPiA+ID4g
PiBEQzUgLT4gREM2IGNvdW50OiAwDQo+ID4gPiA+ID4gREM2IGFsbG93ZWQ6IHllcw0KPiA+ID4g
PiA+IFtzbmlwXQ0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+ICQgY2F0IGk5MTVfZG1jX2luZm8NCj4g
PiA+ID4gPiBbc25pcF0NCj4gPiA+ID4gPiBEQzMgLT4gREM1IGNvdW50OiAyOTINCj4gPiA+ID4g
PiBEQzUgLT4gREM2IGNvdW50OiAwDQo+ID4gPiA+ID4gREM2IGFsbG93ZWQ6IHllcw0KPiA+ID4g
PiA+IFtzbmlwXQ0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFRob3VnaHRzPw0KPiA+ID4gPiANCj4g
PiA+ID4gVGhlIERDNSBpbmNyZW1lbnQgY291bGQndmUgaGFwcGVuZWQgd2hpbGUgREM2IHdhcyBk
aXNhYmxlZCBieQ0KPiA+ID4gPiB0aGUgZHJpdmVyLg0KPiA+ID4gDQo+ID4gPiBZZXMsIGl0IGNv
dWxkLi4uIGluIGdlbmVyYWwgdGhlIGRjNiBiaXQgd291bGQgYmUgemVybywgYnV0IHJpZ2h0LA0K
PiA+ID4gdGhlcmUncw0KPiA+ID4gYSBwb3NzaWJsZSByYWNlLg0KPiA+ID4gDQo+ID4gPiBCdXQg
c2hvdWxkIHdlIGNvbXBsaWNhdGUgdGhpbmdzIHdoZW4gd2Uga25vdyB0aGF0IG9uIHRoZSB0ZXN0
DQo+ID4gPiBjYXNlIGl0c2VsZg0KPiA+ID4gd2UgYXJlIGluIGZ1bGwgY29udHJvbCBvZiB0aGUg
bW9kZXNldD8hIEZyb20gdGhlIHRlc3QgcGVyc3BlY3RpdmUNCj4gPiA+IEkgYmVsaWV2ZQ0KPiA+
ID4gdGhpcyB3b3VsZCBiZSBtb3JlIHRoYW4gZW5vdWdoIHdpdGhvdXQgY29tcGxpY2F0aW5nIHRo
aW5ncy4NCj4gPiANCj4gPiBJbW8gaGF2aW5nIGEgY291bnRlciB3aGljaCB3b3JrcyBiYXNlZCBv
biB0aGUgY29uZGl0aW9uIHRoYXQNCj4gPiBndWFyYW50ZWVzIHRoZQ0KPiA+IGRpc3BsYXkgdG8g
YWxsb3cgREM2LCB3b3VsZCBoZWxwIGxhdGVyIGluIGRlYnVnZ2luZy4NCg0KeWVhcCwgaXQgbWFr
ZXMgc2Vuc2UNCg0KPiA+IA0KPiA+ID4gQnV0IHdlbGwsIGlmIHlvdSByZWFsbHkgYmVsaWV2ZSB0
aGF0IHdlIG5lZWQgdG8gZ28gZnVydGhlciBpbiB0aGUNCj4gPiA+IGRyaXZlcg0KPiA+ID4gdG8g
Y292ZXIgdGhhdCBpdCBpcyBmaW5lIGJ5IG1lLg0KPiA+ID4gDQo+ID4gPiBCdXQganVzdCB0byBl
bnN1cmUgdGhhdCB3ZSBhcmUgaW4gdGhlIHNhbWUgcGFnZSwgY291bGQgeW91IHBsZWFzZQ0KPiA+
ID4gb3Blbg0KPiA+ID4gdXAgYSBiaXQgbW9yZSBvZiB5b3VyIGlkZWEgb24gd2hlbiB0byBpbmNy
ZWFzZSB0aGUgZGM1IHN3DQo+ID4gPiBjb3VudGVycw0KPiA+ID4gaW4gYSB3YXkgdGhhdCB3ZSB3
b3VsZCBlbnN1cmUgdGhhdCB3ZSBkb24ndCBoYXZlIHJhY2UgYW5kIHRoYXQgd2UNCj4gPiA+IGdl
dCB0aGUgZGM2IGFsbG93ZWQgY291bnRlciBjb3JyZWN0bHk/DQo+ID4gDQo+ID4gU29tZXRoaW5n
IGxpa2UgdGhlIGZvbGxvd2luZzoNCj4gPiANCj4gPiAxLiBSaWdodCBhZnRlciB0aGUgZHJpdmVy
IHNldHMgREM2X0VOLCBpdCBzdG9yZXMgdGhlIERDNSBIVw0KPiA+IGNvdW50ZXIncw0KPiA+IMKg
IGN1cnJlbnQgdmFsdWU6DQo+ID4gwqAgZGM1X3N0YXJ0ID0gZGM1X2N1cnJlbnQNCj4gPiAyLiBS
aWdodCBiZWZvcmUgdGhlIGRyaXZlciBjbGVhcnMgREM2X0VOLCBpdCB1cGRhdGVzIHRoZSBEQzYN
Cj4gPiBhbGxvd2VkDQo+ID4gwqAgY291bnRlcjoNCj4gPiDCoCBkYzZfYWxsb3dlZCArPSBkYzVf
Y3VycmVudCAtIGRjNV9zdGFydA0KPiA+IMKgIGRjNV9zdGFydCA9IGRjNV9jdXJyZW50DQo+ID4g
My4gV2hlbiB1c2Vyc3BhY2UgcmVhZHMgdGhlIGNvdW50ZXJzIHZpYSBkZWJ1Z2ZzIHRoZSBkcml2
ZXIgZmlyc3QNCj4gPiDCoCB1cGRhdGVzIGRjNl9hbGxvd2VkIHRoZSBzYW1lIHdheSBhcyAyLiBk
aWQgaWYgREM2X0VOIGlzIHNldC4NCj4gDQo+IFRoaXMgc291bmRzIGdvb2QgdG8gbWUuDQoNCkkg
bGlrZSB0aGF0IGFzIHdlbGwuDQoNCj4gDQo+IEknZCBsaWtlIHRvIGFkZCB0aGF0IHdlIHNob3Vs
ZCBlbnN1cmUgdGhhdCBEQzYgaXMgcmVhbGx5IGJlaW5nDQo+IGFsbG93ZWQsDQo+IHNvIHRoYXQg
bWlnaHQgbmVlZCB0byBiZSBoYW5kbGVkIGluc2lkZSBnZW45X3NldF9kY19zdGF0ZSgpLCB3aGVy
ZQ0KPiBhbGxvd2VkX2RjX21hc2sgaXMgYXBwbGllZC4NCg0Kd2VsbCwgZm9yIHRoYXQgd2UgY2Fu
IGFsc28gaGF2ZSB0aGUgDQoNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZG1jLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMN
CkBAIC0xMjk0LDYgKzEyOTQsMTAgQEAgc3RhdGljIGludCBpbnRlbF9kbWNfZGVidWdmc19zdGF0
dXNfc2hvdyhzdHJ1Y3QNCnNlcV9maWxlICptLCB2b2lkICp1bnVzZWQpDQogICAgICAgICAgICAg
ICAgc2VxX3ByaW50ZihtLCAiREM1IC0+IERDNiBjb3VudDogJWRcbiIsDQogICAgICAgICAgICAg
ICAgICAgICAgICAgICBpbnRlbF9kZV9yZWFkKGRpc3BsYXksIGRjNl9yZWcpKTsNCg0KKyAgICAg
ICBzZXFfcHJpbnRmKG0sICJEQzYgYWxsb3dlZDogJXNcbiIsDQpzdHJfeWVzX25vKChpbnRlbF9k
ZV9yZWFkKGRpc3BsYXksDQorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgDQpEQ19TVEFURV9FTikNCisgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICYgMHgzKSA9PSAyKSk7DQoN
Cm9uIHRvcCBvZiB3aGF0IEltcmUgc3VnZ2VzdGVkIHJpZ2h0Pw0Kc28gdGhlIGRjNiBjb3VudCBp
cyB1cGRhdGVkIGFuZCBhbHNvIHdlIGhhdmUgdGhlIGxpdmUgdmlldyBvZiB0aGUNCnJlZ2lzdGVy
IHNldA0KDQpubz8NCg0Kbm90IHN1cmUgd2h5IHdlIG5lZWQgdG8gZ28gdG8gdGhlIGRjOSBmdW5j
Li4uDQoNCj4gDQo+IC0tDQo+IEd1c3Rhdm8gU291c2ENCj4gDQo+ID4gDQo+ID4gPiBCdHcsIHdo
aWxlIGRvaW5nIHRoaXMgZXhwZXJpbWVudCBJIG5vdGljZWQgdGhhdCB0aGUgZGVidWdmcyBhbmQN
Cj4gPiA+IHRlc3QNCj4gPiA+IGFsc28gZG9lc24ndCBjYWxsIHRoYXQgcmVzaWRlbmN5IGFueXdh
eSBhbmQgaXQgaXMganVzdCBjb3VudC4gU28NCj4gPiA+IHBlcmhhcHMgd2l0aCB5b3VyIGlkZWEg
d2UgZG9uJ3QgbmVlZCB0byBjaGFuZ2UgdGhlIGRlYnVnZnMNCj4gPiA+IGludGVyZmFjZS4NCg0K
