Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA439D335A
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 06:57:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B79310E159;
	Wed, 20 Nov 2024 05:57:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aOGOCBTF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D21810E159
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 05:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732082259; x=1763618259;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d/AOEBbAQwyNqVDMG7aQ3exMIC8gWO/ParKVNJSBU9g=;
 b=aOGOCBTFkPskehS8U8dSMQd7Kom/3yKTxau74xK0Tptf/+YOTaDFCb/b
 VFlg37LMp92lA1CBgIzIwR9Q9TGUSYA/ntBXwoRisLcLnJ5a7q9HreaZE
 r6Bv5EoJNs/sDLvAU8PKHWHBOzzYVvfOi6QcBL5UrmULQmRjZExSy/VX1
 WjMG4DBOHIF8aVUVxSI2DZEBvuSCR7sCeHvAoJvGDN+h0k4dIxTmJoz7p
 CoFqFp6rAJNCHxW94Vk0ZAtoP0N34ntqmFxPv7IeINlrhF5wCK0gYkk7C
 R9S4ILcYUdcTsfAGA9cG7TJJF/iV+F7G6fY3jo8z4YGcImCeMmeof6nwZ A==;
X-CSE-ConnectionGUID: d4bgn1UnT4yLiNE+Fm/rKA==
X-CSE-MsgGUID: vqElNxBXTl6mFVKHiBu2pQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="35796185"
X-IronPort-AV: E=Sophos;i="6.12,168,1728975600"; d="scan'208";a="35796185"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 21:57:38 -0800
X-CSE-ConnectionGUID: Jche+M6GRFWTOwM87aJYqA==
X-CSE-MsgGUID: 1VaDMQVFShCm6Yf+4xwpAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,168,1728975600"; d="scan'208";a="89745754"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Nov 2024 21:57:38 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 19 Nov 2024 21:57:38 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 19 Nov 2024 21:57:38 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 19 Nov 2024 21:57:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XNLYE7pZIfcZbeXcR7CF9BdiR3plb/7z6rYwaLtMRB8lTIGj5eUcoGLzPODvWtmxJefJGaH4RQgdqe9Ff+5jKF6xCR7/bf/8tZTzkjKebXbIS5eAh6JPXouOp9KAxdXrDquD7VN9Oyof1dIY7nLib3zmAkwnOwtiypvc/va6g+HhWJl5msvUg5WVJ4/2hSpZLH9isMglIEGCrJBKHWtnKw38tZBj2mjBgW6skXkt57woqlV+ArK6a5TxnKgijYxK1BzzrzGAOVWovNu75f4c2QIktwxzSI+ZxeFWkv0ipOSdXSzx4Jm13Opr2GTLDyvCYA+SftdbSA5AGB8WF7uY6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d/AOEBbAQwyNqVDMG7aQ3exMIC8gWO/ParKVNJSBU9g=;
 b=kHaB4XDaTG5ZlAfbaE8YTZFuY8OtlXjBzHQyw1dLRxVrtPh7renmzYRizo13D53TWsEP6ln1Fx5rlSqOGR5uZCWFfixVxeT2gF95c250f0LGqb5ZxGqDlWHGZCbj+/OAo0+FJWCQrhP2sOQaCCUMT64SL4VVPqIbtdruAmRAsT+WOOB9g3a0tchqDkhuBRdQB+bhXssfTpML3mE0D4U61E+s9TxcXgMFAHjzHdoo7+xObdsHSG2m+TXGa3opHT3nOwSYHhB3+cOuIZLHCCA4vI7HjpkIPL0yKD7Erk/uywNt7PUWNvsYSE3S9XfX8xdYhuwlHxSfvPbnZjPTiNxy4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by PH7PR11MB6524.namprd11.prod.outlook.com (2603:10b6:510:210::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.23; Wed, 20 Nov
 2024 05:57:33 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%5]) with mapi id 15.20.8158.021; Wed, 20 Nov 2024
 05:57:33 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v3 1/3] drm/i915/vrr: Update vrr.vsync_{start,end}
 computation
Thread-Topic: [PATCH v3 1/3] drm/i915/vrr: Update vrr.vsync_{start,end}
 computation
Thread-Index: AQHbOY9J/Ekp5rX5lkG6ANjkAY3SFLK/rJMw
Date: Wed, 20 Nov 2024 05:57:32 +0000
Message-ID: <IA1PR11MB634871BC4FF27887C6EFAF51B2212@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241021105100.2861830-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241021105100.2861830-2-mitulkumar.ajitkumar.golani@intel.com>
 <f14be355-75e3-483d-9867-5761a0075f57@intel.com>
In-Reply-To: <f14be355-75e3-483d-9867-5761a0075f57@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|PH7PR11MB6524:EE_
x-ms-office365-filtering-correlation-id: 0216f8b3-5237-4e04-5ac6-08dd092839df
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?eGQwc0E4bEYxQ3ZtOVVZWjFjQ1loVmJRZlVtM3FGckNUUGlzVytWMWpuOVB5?=
 =?utf-8?B?SlhPQXVKRWpDZlVSeEpnMXdrT2hreWVZTmxqSXkyeXBFMHJiZi9CWm9QZU1U?=
 =?utf-8?B?QnFscGtKbGQwb2dleFFaUGMzSmNYVlN4S0c0bjBzYzhrMEt2OXJPR1gzNjJI?=
 =?utf-8?B?Ryt0bU94M3Ivb0QreTUrMlIyWEw2WjhRZ0RaWU5lM2dFbW8wdlVvZVlSbjEw?=
 =?utf-8?B?MXZjWFNmalQvaTZyMXdxT2tNN0dQalZMZE91NnZNRmlYQXl1UFFZN0lnS29m?=
 =?utf-8?B?ekVTREw0Rko0V3BlQ2ZlS2dSNUJTVm9HSVVxb1A3ODJXZHF2YTlzR3JiMUlJ?=
 =?utf-8?B?aEZyRnZmblRjdXlENk5MR0NFSUNUVERBL1g5Szk2MjNvUm5aMDIxWHRMTnJv?=
 =?utf-8?B?bTlHWlF4RXgwN2dhSnd2UU9kSmZUUGJFdndGaldtY2ZxUWdkdUhuRVNxNUU4?=
 =?utf-8?B?SFdscFVndllJQnB5c1haby82b0xsc1RrMUNBZG8vSHd2V01yUVFFZDRoSkJJ?=
 =?utf-8?B?K1RzUzRYRnBid1orRFZoS1pDeEJKQ3Vpd2hyNU1RMUFBZ1pmb0Fmd3A4Tnh1?=
 =?utf-8?B?Z0VEb3N3cjlmci9RNGtXbTc0UWorcHpjV0h0WEIyU1FuREt1TExYYTNnYy8z?=
 =?utf-8?B?SHZCeHlZT3VxYnN4Z1RtYnpHbVpIMlkvbTIxRXVCQWo2WGI1QkJob1I0ZG1Z?=
 =?utf-8?B?d0hOM29tbEtWVWMxc0lHWXF5MFd6MFFINXhJRnJUalM1WUFwQjJnaExXNUpU?=
 =?utf-8?B?MncxL3RKdmV3NmdqUGxrSkpkU3RNbTBveEZPRGFQbVV5YjNabWJLcFh1TEVW?=
 =?utf-8?B?WU1yajBDNDlMU3E5RXh3empaT0FGa0ZRUUtnQmg3VWRWM1FpYTExTithaFNh?=
 =?utf-8?B?REpRRWxzMjJ4aTlFbnZwbUxCNTRiT0p1N3dJeDlqMVNqRDhUMUtJVTFReGk3?=
 =?utf-8?B?QXk3L3podU5mUDJyRVNFVEhhMlR6VzNlKzlwV2RiVGlRQXJzRmNkaXlDQmhT?=
 =?utf-8?B?UERMdkhXNzVqRHBJcmptaTUvbzk1cTNuVjh1WTFkdTVTbC9lSGxQUklxTnBO?=
 =?utf-8?B?MExDczdjNjA2WFUzek5aUkpnY3FJbVF1Tmx6THdQVU0wRXBEODBjOEIyMjNM?=
 =?utf-8?B?OFVOZVN0bHZ0NG9JRWY1eGJ4eXBmRmE5ZElzZ01qZEJTb244UlVBRERJTXRm?=
 =?utf-8?B?cFV2eU9jUmJUejZQRDJLS3lwQm5kUUNQQ3NWcmhoOGlJdDlGQi93UWNXUVFi?=
 =?utf-8?B?UmRZVVNmell0bTBtdThOTUQvcTRxUGMrRnBKbE1Jd05UdHZnNGxkUFRMMDZQ?=
 =?utf-8?B?Tk9xbUVnTTNoYlB3Mk5TRTZ0eW5Jdk1GNnI3QjJOK3ppc0MzZlUxY09TMzhx?=
 =?utf-8?B?TU1vbEJKU01ENDhBcC9hKytBREYzU1djYUxNbmU5OHBKRFd0YzUvamVYV0Rz?=
 =?utf-8?B?R1RiVGc0TzhtMERhNUpZaHJUSXYrT2JuL1pEMVR0NWJPNWxsbXFtdDRtSWFv?=
 =?utf-8?B?SG1BQ0tWblZrMFljeGFzam1tcGVtVjkxVmlpbUd4QkV6a3FQNkRFdnNkUGoz?=
 =?utf-8?B?YVg0Zm83UlYyQldTeThTN1phQ1hkQmxQQlpHa1d0QUZDWjdHNmJmOWVGTm5z?=
 =?utf-8?B?NXNjM3BvY3NKemt4ME82aGtFYVV4QitmdXA5dTFGZlR6Ly9ENDFaaVF5UG8z?=
 =?utf-8?B?NmlOMEY5clRzU0lXeWk0ZWNFY2pJbmJMQk5BZml1SDBuUWdjRFFFMmliY0hL?=
 =?utf-8?B?WkVRdEhNOXdLay92c2pjbFlLeUtKUmJqSHp6V2dYcWhYdkV2ZjhaRlg1dlg1?=
 =?utf-8?Q?bN59N900D9GYHpv5doFz7CKhCqhAVsb1SBANk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y084VTNtL3FIRHJ1WS9YaVdUTzdwelFhQ2JGR2tWYS9HYUNtT0tFczBQby9C?=
 =?utf-8?B?b3FHQVpDNHlUSXppazVMRElEMVNJSjJoVGRHdGhubDIvNXpUYVY3NUYrMjNQ?=
 =?utf-8?B?TlZhNTNMQlh2bnMzd1NIVVdjNHQ1TG9hY2Z0c1lnUHRFL2J0SFY1N2swanhP?=
 =?utf-8?B?clBMNTBUVUQ0R2I5QlBxa1hxaDZaNEJlNndTZTBQUUx2M0h6L2NvWXdORGhL?=
 =?utf-8?B?OTZFOGxqYmdLR2lYdHNuaC85NFFJN0tnTGRaZkdpR09wcUQ0VTZKWUl5UFdp?=
 =?utf-8?B?T3BaVWVXWjlHMHRHbzhaaThocnBnbW5pdmhGa2NETFNtVjN0OHlLaTkwcG9Y?=
 =?utf-8?B?NDBiaTVtaDBEdXlNUDFtajN2UmNVWjZLVDhXdGdLdG9Hd2dIRklpa0pHTVFp?=
 =?utf-8?B?QU5PaFA4WjZRb0c5YjhvVkMra2x0QTVpQjNqQW0xZkMxRFZqR1lVYVZ3T0VU?=
 =?utf-8?B?WWlVT3BTdkFCQTNmRlhzR1djWkFVbE1rVGpTb1R1cG5LTGVoRDRxR3llVEdS?=
 =?utf-8?B?YlhsTkN1SHJRUnBBbERwSGs0cXNZK1E4RWhQa2JYTG1TWm1sL1hiS2VjT1h2?=
 =?utf-8?B?NUNXTktodkZ3NWJUa1FtRlhYRStQY2xldCtmVVYxR1l5UUNMMi9IbW1LaC83?=
 =?utf-8?B?bElmUG0wbVdmaW9SQTlsLytDNStoMDBjajBQRjVhU0RIK0JSOTVieEdSRENL?=
 =?utf-8?B?elBJSHUrNVEwR0xPdFZ3djk2eDZHOHp3R1dGbGEvb3c2VnNQMkV0cUFaS3p0?=
 =?utf-8?B?dy8xZ1k2S3BSTmE3R2ZlTlhEazdpTlBnSHJGMURzdDBjTGxtZmVxdjkzS3hz?=
 =?utf-8?B?RE5BdHdIQnZHNmxvZGNBVkVmWXlyOHlnaGs0VW9QTkFmN2pRcldsQm01Mk9h?=
 =?utf-8?B?YTF1amZld0FGRFc0M0ZGaGIvYy9jRG5FYlRwWEFnSGpYSzJRc3Y4aVYxTmNP?=
 =?utf-8?B?OFhZWXEzNWxEeFNDekNoUkJjeDlnRk5XY2c4VXB3QXlZYTRGUHdVaTlUVWNW?=
 =?utf-8?B?TDgvQzh5RUpwTHpZczc5MHo4ZzFOQ1VoOXNUVFdnbytteGxVcXdScnNld0ZB?=
 =?utf-8?B?c1RCZTFCelpjZ3RIKzdSRUc4S1EzajQ5emV6MmxsU3IydG5nVnZWdUZWWDRQ?=
 =?utf-8?B?RlRRSnN1R2crNlFQcW5TK2xUTUdZNTlYOFg3Z1JlZkIvUlI5MWR1b21UU3hO?=
 =?utf-8?B?Njl0SUdSS05pZTRoTmYycWNRbitLMklFcXNaNjM0VUxhRkxLdGM4U2luSElk?=
 =?utf-8?B?eUViTXVSeStXVnBxTHR4UzNmQjVsbGJjeWRuWWlvbk03NDZCbG1FN3NMQmg5?=
 =?utf-8?B?RzlOd1l3VXFzTUFZbDVBdmZQeXlUWGh4QTRNQzViMSt2LzQrbGdQcVVhVks2?=
 =?utf-8?B?N0xyK2ljM29sc2hCOWZ0NWNVSUdEa2s3aDJOYmxwTWJqTHptbUFFQ1VrcDF1?=
 =?utf-8?B?TjFkRFN1d2d0bzBTOFdEYzNqWkpkL2svaXBxZHdhd1dDYzJwcWQ2L1dIdTZF?=
 =?utf-8?B?amhneHEvbk93bUVKcEZ6YVNHUlhJRTcyRTNFb1dNQ2tXc2FJckFkQVlGRFdO?=
 =?utf-8?B?NVhJdmJpc0pZbGgzVXVMZllPcTIxK3ViaE02SytCSkc1OERqQ0VWSHBITWxP?=
 =?utf-8?B?cmpvY21kSkJmWm9DSE5SMXdWWmMxRlNrbkdwZ0VGS2YrbWd4NWpLcy9aVGgx?=
 =?utf-8?B?V1d5OGVweEI0L0xocEg2eUVOQ3kySkpWTmJTS3ROa05JYklhUWZVczMvbk1Q?=
 =?utf-8?B?MGVTU2NleFNmSEg0UVpDdStiUElKVzk0UFpwZ252KzAzcXZxQlYvbVYwZEdX?=
 =?utf-8?B?Q0pDZEg0b3VpQ1g4ejhmWVhKTzlsTnV0c0NiOVFEZXZZOWtTVkNUMHZjM0Zt?=
 =?utf-8?B?NndSZEdYV005REJ2RFlPZGxOempxTVJuNDNMSnF2b0hrWENieDNselc4ZFc4?=
 =?utf-8?B?dkZVOTFDclhqWWV3aFVLRHdnODhJY2czZVVKUWpWc0NqNFY5c2dxcVYyb3Y4?=
 =?utf-8?B?M1RyZ1lEenMzeS9GYWxUTFdsc05lamJOaDE5K04rOTBhakVEOXZGVkR0d1dQ?=
 =?utf-8?B?aWEzZ3I3KzFNWjVpckRCcnBxSSthckovMW1lK2NMVEl1WDVpc29Sd29iMzEr?=
 =?utf-8?B?RmowVEZtTjk5bk91b2tENFBjZXNmSFRnQUY3ZW54YWphdnZDNGNqeStBdUlT?=
 =?utf-8?Q?/sBPRnzVoj+L4X3GBOoCmew=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0216f8b3-5237-4e04-5ac6-08dd092839df
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2024 05:57:33.0160 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0iDXa6wdkPiDpUp+alIG1TYUnFjkIoi+Fj/ODOZ7TP3fUELs4RVNXlSkijsZkmTeTJybnuMFCw6uZpbompwxkUlWK0OVNBmvFvSI24iBmy9fvK8tFw3PKLEyI+sTIuoE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6524
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

VGhhbmtzIEFua2l0IGZvciB0aGUgcmV2aWV3LA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQo+IEZyb206IE5hdXRpeWFsLCBBbmtpdCBLIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNv
bT4NCj4gU2VudDogMTggTm92ZW1iZXIgMjAyNCAxMzoyNg0KPiBUbzogR29sYW5pLCBNaXR1bGt1
bWFyIEFqaXRrdW1hciA8bWl0dWxrdW1hci5haml0a3VtYXIuZ29sYW5pQGludGVsLmNvbT47DQo+
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjMgMS8zXSBkcm0vaTkxNS92cnI6
IFVwZGF0ZSB2cnIudnN5bmNfe3N0YXJ0LGVuZH0NCj4gY29tcHV0YXRpb24NCj4gDQo+IA0KPiBP
biAxMC8yMS8yMDI0IDQ6MjAgUE0sIE1pdHVsIEdvbGFuaSB3cm90ZToNCj4gPiB2cnIudnN5bmNf
e3N0YXJ0LGVuZH0gY29tcHV0YXRpb24gc2hvdWxkIG5vdCBkZXBlbmQgb24NCj4gPiBjcnRjX3N0
YXRlLT52cnIuZW5hYmxlLiBBbHNvIGFkZCB0aGVtIHRvIHN0YXRlIGR1bXAuDQo+ID4NCj4gPiAt
LXYxOg0KPiA+ICAgLSBFeHBsYWluIGNvbW1pdCBtZXNzYWdlIG1vcmUgY2xlYXJseSBbSmFuaV0N
Cj4gPiAgIC0gSW5zdGVhZCBvZiB0d2Vha2luZyB0byBmYXN0c2V0IHVzZSB2cnIuZmxpcGxpbmUg
d2hpbGUgY29tcHV0aW5nIEFTX1NEUC4NCj4gPiAtLXYyOg0KPiA+ICAgLSBDb3JyZWN0IGNvbXB1
dGF0aW9uIG9mIHZyci52c3luY19zdGFydC9lbmQgc2hvdWxkIG5vdCBkZXBlbmQgb24NCj4gPiAg
ICAgdnJyLmVuYWJsZS5bdmlsbGVdDQo+ID4gICAtIHZyciBlbmFibGUgZGlzYWJsZSByZXF1aXJl
bWVudCBzaG91bGQgbm90IG9ic3RydWN0IGJ5IFNEUCBlbmFibGUNCj4gPiAgICAgZGlzYWJsZSBy
ZXF1aXJlbWVudHMuIFtWaWxsZV0NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IE1pdHVsIEdvbGFu
aSA8bWl0dWxrdW1hci5haml0a3VtYXIuZ29sYW5pQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAg
IC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGNfc3RhdGVfZHVtcC5jICB8ICA0ICsrKy0N
Cj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMgICAgICB8IDI0
ICsrKysrKystLS0tLS0tLS0tLS0NCj4gPiAgIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9u
cygrKSwgMTYgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjX3N0YXRlX2R1bXAuYw0KPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjX3N0YXRlX2R1bXAuYw0KPiA+IGluZGV4IDcw
NWVjNWFkMzg1Yy4uMjk2YTZjOWRlMWY3IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Y19zdGF0ZV9kdW1wLmMNCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGNfc3RhdGVfZHVtcC5jDQo+ID4gQEAgLTMw
Myw3ICszMDMsOSBAQCB2b2lkIGludGVsX2NydGNfc3RhdGVfZHVtcChjb25zdCBzdHJ1Y3QNCj4g
aW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcsDQo+ID4gICAJCSAgIHBpcGVfY29uZmlnLT52
cnIuZmxpcGxpbmUsDQo+ID4gICAJCSAgIGludGVsX3Zycl92bWluX3ZibGFua19zdGFydChwaXBl
X2NvbmZpZyksDQo+ID4gICAJCSAgIGludGVsX3Zycl92bWF4X3ZibGFua19zdGFydChwaXBlX2Nv
bmZpZykpOw0KPiA+IC0NCj4gPiArCWRybV9wcmludGYoJnAsICJ2cnJfdnN5bmNfc3RhcnQ6ICVk
LCB2cnJfdnN5bmNfZW5kOiAlZFxuIiwNCj4gPiArCQkgICBwaXBlX2NvbmZpZy0+dnJyLnZzeW5j
X3N0YXJ0LA0KPiA+ICsJCSAgIHBpcGVfY29uZmlnLT52cnIudnN5bmNfZW5kKTsNCj4gDQo+IEkg
dGhpbmsgaXQgd291bGQgYmUgZ29vZCB0byBoYXZlIHRoaXMgaW4gc2FtZSBsaW5lIGFzIG90aGVy
IHZyciBwYXJhbWV0ZXJzLg0KPiANCj4gQWxzbyBsZXRzIGhhdmUgdGhpcyBpbiBhIHNlcGFyYXRl
IHBhdGNoLg0KDQpBZ3JlZWQsIEkgd2lsbCBhZGQgdG8gc2VwYXJhdGUgcGF0Y2ggaW4gc2luZ2xl
IGxpbmUuIA0KDQo+IA0KPiA+ICAgCWRybV9wcmludGYoJnAsICJyZXF1ZXN0ZWQgbW9kZTogIiBE
Uk1fTU9ERV9GTVQgIlxuIiwNCj4gPiAgIAkJICAgRFJNX01PREVfQVJHKCZwaXBlX2NvbmZpZy0+
aHcubW9kZSkpOw0KPiA+ICAgCWRybV9wcmludGYoJnAsICJhZGp1c3RlZCBtb2RlOiAiIERSTV9N
T0RFX0ZNVCAiXG4iLCBkaWZmIC0tZ2l0DQo+ID4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Zyci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Zyci5jDQo+ID4gaW5kZXggMTlhNWQwMDc2YmI4Li44OTY5NjI0M2YzMjAgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gPiBAQCAtMjM2LDcg
KzIzNiw3IEBAIGludGVsX3Zycl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZQ0KPiAqY3J0Y19zdGF0ZSwNCj4gPiAgIAkJY3J0Y19zdGF0ZS0+bW9kZV9mbGFncyB8PSBJOTE1
X01PREVfRkxBR19WUlI7DQo+ID4gICAJfQ0KPiA+DQo+ID4gLQlpZiAoaW50ZWxfZHAtPmFzX3Nk
cF9zdXBwb3J0ZWQgJiYgY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSkgew0KPiA+ICsJaWYgKEhBU19B
U19TRFAoZGlzcGxheSkpIHsNCj4gPiAgIAkJY3J0Y19zdGF0ZS0+dnJyLnZzeW5jX3N0YXJ0ID0N
Cj4gPiAgIAkJCShjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfdnRvdGFsIC0NCj4g
PiAgIAkJCSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLnZzeW5jX3N0YXJ0KTsNCj4gDQo+
IFRoaXMgYWdhaW4gc2hvdWxkIGJlIHNlcGFyYXRlIHBhdGNoIHdoZXJlIHdlIGFyZSBqdXN0IHVz
aW5nIEhBU19BU19TRFAoKQ0KPiBpbiBjb21wdXRlX2NvbmZpZyBhbmQgZ2V0X2NvbmZpZy4NCj4g
DQo+IA0KPiA+IEBAIC0zMTYsNiArMzE2LDExIEBAIHZvaWQgaW50ZWxfdnJyX3NldF90cmFuc2Nv
ZGVyX3RpbWluZ3MoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
DQo+ID4gICAJCSAgICAgICB0cmFuc192cnJfY3RsKGNydGNfc3RhdGUpKTsNCj4gPiAgIAlpbnRl
bF9kZV93cml0ZShkaXNwbGF5LCBUUkFOU19WUlJfRkxJUExJTkUoZGlzcGxheSwNCj4gY3B1X3Ry
YW5zY29kZXIpLA0KPiA+ICAgCQkgICAgICAgY3J0Y19zdGF0ZS0+dnJyLmZsaXBsaW5lIC0gMSk7
DQo+ID4gKwlpZiAoSEFTX0FTX1NEUChkaXNwbGF5KSkNCj4gPiArCQlpbnRlbF9kZV93cml0ZShk
aXNwbGF5LA0KPiA+ICsJCQkgICAgICAgVFJBTlNfVlJSX1ZTWU5DKGRpc3BsYXksIGNwdV90cmFu
c2NvZGVyKSwNCj4gPiArCQkJICAgICAgIFZSUl9WU1lOQ19FTkQoY3J0Y19zdGF0ZS0+dnJyLnZz
eW5jX2VuZCkgfA0KPiA+ICsJCQkgICAgICAgVlJSX1ZTWU5DX1NUQVJUKGNydGNfc3RhdGUtPnZy
ci52c3luY19zdGFydCkpOw0KPiANCj4gVGhpcyBzaG91bGQgYmUgeWV0IGFub3RoZXIgcGF0Y2gg
d2hlcmUgd2UgYXJlIHNldHRpbmcgVlJSX1ZTWU5DIGFsb25nDQo+IHdpdGggb3RoZXIgdnJyIHRy
YW5zY29kZXIgdGltaW5ncy4NCj4gDQo+IEFsb25nIHdpdGggcmVtb3ZhbCBmcm9tIGV4aXN0aW5n
IHBsYWNlcyBpbiB2cnJfZW5hYmxlL2Rpc2FibGUuDQo+IA0KPiBBcGFydCBmcm9tIHNwbGl0dGlu
ZyBpbnRvIHNlcGFyYXRlIHBhdGNoZXMsIGNoYW5nZXMgbG9vayBnb29kIHRvIG1lLg0KPiANCg0K
U3BsaXR0aW5nIHRoaXMgZnJvbSB0cmFuc2NvZGVyIHRpbWluZyB1cGRhdGUsIGluIGVpdGhlciB3
YXkgaXQgY2FuIGNyZWF0ZSBzdGF0ZSBtaXNtYXRjaCB3aGVuIHNvdXJjZS9zaW5rIHN1cHBvcnRz
IEFTIFNEUCBidXQgdnJyIGlzIG5vdCBlbmFibGVkIGZyb20gdWFwaS4gDQoNCklzIGl0IG9rIHRv
IGtlZXAgdGhpcyBhcyBhIHNpbmdsZSBwYXRjaCA/DQoNCj4gDQo+IFJlZ2FyZHMsDQo+IA0KPiBB
bmtpdA0KPiANCj4gDQo+ID4gICB9DQo+ID4NCj4gPiAgIHZvaWQgaW50ZWxfdnJyX3NlbmRfcHVz
aChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPiBAQCAtMzUy
LDEyICszNTcsNiBAQCB2b2lkIGludGVsX3Zycl9lbmFibGUoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpDQo+ID4gICAJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwg
VFJBTlNfUFVTSChkaXNwbGF5LCBjcHVfdHJhbnNjb2RlciksDQo+ID4gICAJCSAgICAgICBUUkFO
U19QVVNIX0VOKTsNCj4gPg0KPiA+IC0JaWYgKEhBU19BU19TRFAoZGlzcGxheSkpDQo+ID4gLQkJ
aW50ZWxfZGVfd3JpdGUoZGlzcGxheSwNCj4gPiAtCQkJICAgICAgIFRSQU5TX1ZSUl9WU1lOQyhk
aXNwbGF5LCBjcHVfdHJhbnNjb2RlciksDQo+ID4gLQkJCSAgICAgICBWUlJfVlNZTkNfRU5EKGNy
dGNfc3RhdGUtPnZyci52c3luY19lbmQpIHwNCj4gPiAtCQkJICAgICAgIFZSUl9WU1lOQ19TVEFS
VChjcnRjX3N0YXRlLT52cnIudnN5bmNfc3RhcnQpKTsNCj4gPiAtDQo+ID4gICAJaWYgKGNydGNf
c3RhdGUtPmNtcnIuZW5hYmxlKSB7DQo+ID4gICAJCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFRS
QU5TX1ZSUl9DVEwoZGlzcGxheSwNCj4gY3B1X3RyYW5zY29kZXIpLA0KPiA+ICAgCQkJICAgICAg
IFZSUl9DVExfVlJSX0VOQUJMRSB8DQo+IFZSUl9DVExfQ01SUl9FTkFCTEUgfA0KPiA+IEBAIC0z
ODIsMTAgKzM4MSw2IEBAIHZvaWQgaW50ZWxfdnJyX2Rpc2FibGUoY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUNCj4gKm9sZF9jcnRjX3N0YXRlKQ0KPiA+ICAgCQkJCVRSQU5TX1ZSUl9TVEFU
VVMoZGlzcGxheSwNCj4gY3B1X3RyYW5zY29kZXIpLA0KPiA+ICAgCQkJCVZSUl9TVEFUVVNfVlJS
X0VOX0xJVkUsIDEwMDApOw0KPiA+ICAgCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFRSQU5TX1BV
U0goZGlzcGxheSwgY3B1X3RyYW5zY29kZXIpLCAwKTsNCj4gPiAtDQo+ID4gLQlpZiAoSEFTX0FT
X1NEUChkaXNwbGF5KSkNCj4gPiAtCQlpbnRlbF9kZV93cml0ZShkaXNwbGF5LA0KPiA+IC0JCQkg
ICAgICAgVFJBTlNfVlJSX1ZTWU5DKGRpc3BsYXksIGNwdV90cmFuc2NvZGVyKSwgMCk7DQo+ID4g
ICB9DQo+ID4NCj4gPiAgIHZvaWQgaW50ZWxfdnJyX2dldF9jb25maWcoc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gQEAgLTQyNSwxMCArNDIwLDYgQEAgdm9pZCBpbnRl
bF92cnJfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSkN
Cj4gPg0KPiBUUkFOU19WUlJfVk1BWChkaXNwbGF5LCBjcHVfdHJhbnNjb2RlcikpICsgMTsNCj4g
PiAgIAkJY3J0Y19zdGF0ZS0+dnJyLnZtaW4gPSBpbnRlbF9kZV9yZWFkKGRpc3BsYXksDQo+ID4g
ICAJCQkJCQkgICAgIFRSQU5TX1ZSUl9WTUlOKGRpc3BsYXksDQo+IGNwdV90cmFuc2NvZGVyKSkg
KyAxOw0KPiA+IC0JfQ0KPiA+IC0NCj4gPiAtCWlmIChjcnRjX3N0YXRlLT52cnIuZW5hYmxlKSB7
DQo+ID4gLQkJY3J0Y19zdGF0ZS0+bW9kZV9mbGFncyB8PSBJOTE1X01PREVfRkxBR19WUlI7DQo+
ID4NCj4gPiAgIAkJaWYgKEhBU19BU19TRFAoZGlzcGxheSkpIHsNCj4gPiAgIAkJCXRyYW5zX3Zy
cl92c3luYyA9DQo+ID4gQEAgLTQ0MCw0ICs0MzEsNyBAQCB2b2lkIGludGVsX3Zycl9nZXRfY29u
ZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiA+ICAgCQkJCVJF
R19GSUVMRF9HRVQoVlJSX1ZTWU5DX0VORF9NQVNLLA0KPiB0cmFuc192cnJfdnN5bmMpOw0KPiA+
ICAgCQl9DQo+ID4gICAJfQ0KPiA+ICsNCj4gPiArCWlmIChjcnRjX3N0YXRlLT52cnIuZW5hYmxl
KQ0KPiA+ICsJCWNydGNfc3RhdGUtPm1vZGVfZmxhZ3MgfD0gSTkxNV9NT0RFX0ZMQUdfVlJSOw0K
PiA+ICAgfQ0K
