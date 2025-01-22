Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 647F3A19318
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 14:55:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E00410E6DC;
	Wed, 22 Jan 2025 13:55:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gx3t7lUU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37F7110E1E6;
 Wed, 22 Jan 2025 13:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737554142; x=1769090142;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=O7qXZi/2c8kwJ2ZzKQK7kSRSWrN4MVjjVYT+9FRjqhU=;
 b=gx3t7lUUFXtclJU0mbNSk1eileaXy7spFLPVuAJQBzeosfnRXuraY928
 //zYYrpLEOrtZs7bjOQYaql7oDm3hDAJAGfT2shZ0rDliUyeGZ6wPrKjt
 i4uGwKqDSP++YN3sXjmI2SJw91TTBNsr6CHS/JePNtq4D1v1MS6hUR6Q/
 riF3dtKf3hjsV5hmmau/4CHGlFGmnNwZHvjJl3FLicOZAAabPGeNv0ZkN
 lat/oC+nX8YFqOsq5vxpgy1Kq7wNdDocmUleivZR4Tlp2OeP7UfxJwFBl
 15o9Tq0Vof6dAOXii9i2FUcmly5XYeCZeWEfF60vQMGJgbtn8REgq0R9S Q==;
X-CSE-ConnectionGUID: M7mvAMWmQ06pNE5womHzSQ==
X-CSE-MsgGUID: XysRJcX4R6++rvUlS55QGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="37894775"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="37894775"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 05:55:41 -0800
X-CSE-ConnectionGUID: tVyXq1MITMmuBQ3XK97buw==
X-CSE-MsgGUID: POgMB4EXQnSGnp1eNhI3mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="107673046"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2025 05:55:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 22 Jan 2025 05:55:40 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 22 Jan 2025 05:55:40 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 22 Jan 2025 05:55:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JF7rn59JeDGn30yheksHmtW0NOLZMiSs9x3kv0du463tIjWgu3a37r/acYyLGo4k+iL1mhWrQ5U6k3kzND0gVuaomic0S3zErLiHZIqFimqj5+uGFU4UAZQq+EKf57XwT5ZDS8hCjZ10M1T9ZnxCIykQYuMIP3QbYoIJBtF+iuFgSAsVzgNacJyEo6nl91xtRiEGez/f7+GsL5N8ndQXbnSxpj7Tw3z37IAf6Ut7jKRcxlhjCPhrt+Cb9r6LXtvqqBLB2ToNCNZHN7+GIGIibNreHmDkQll2oAHKKfmeXZEyMDxBxbWuP0s6B5GJSJy39YoSXQ6WUcl2uY3EiKw+ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O7qXZi/2c8kwJ2ZzKQK7kSRSWrN4MVjjVYT+9FRjqhU=;
 b=DiF8cpfJTwhDNcjw1BYMVKUqrv5BC/bYGrdWPBW3QU83YTBLEqtKZRa2UC01hL93uYoB2yABOABJVgt+GvJ8a3gkwuAx7+6ujBEqNMeyThx4+jSUQ5ZnkjsDKiXkqrlimHe4MWqGZEGrAj5ZdrNxoo42KZpoJLujpCWmNA3P1p1oqyG8BtMi4auGyGTq9F17vEAP6L9wB3aZlGpTApaggV3vc2927f4LhUjFhP6yjmZtcxw8MM411ehyjo90kj/ZDcUAj9BvLnH7TXSKmrpS6t1oxSbnR7acKOTf+DrirTgJ2+rVObU7LLlijllS9j0TvK2CNGM8du+eaqVho8HE3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM6PR11MB4673.namprd11.prod.outlook.com (2603:10b6:5:2a4::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.17; Wed, 22 Jan
 2025 13:55:08 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.8377.009; Wed, 22 Jan 2025
 13:55:08 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>, "Reddy Guddati, Santhosh"
 <santhosh.reddy.guddati@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>
Subject: Re: [PATCH v4 5/6] drm/i915/xe3: handle dirty rect update within the
 scope of DSB
Thread-Topic: [PATCH v4 5/6] drm/i915/xe3: handle dirty rect update within the
 scope of DSB
Thread-Index: AQHbbLBUxUUQ1Gr7jEyTZNDTQSIwlrMinMWAgAA0VIA=
Date: Wed, 22 Jan 2025 13:55:08 +0000
Message-ID: <f13004f739a71883e033bf1fd89af6999202cf67.camel@intel.com>
References: <20250122093006.405711-1-vinod.govindapillai@intel.com>
 <20250122093006.405711-6-vinod.govindapillai@intel.com>
 <871pwvp1kc.fsf@intel.com>
In-Reply-To: <871pwvp1kc.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM6PR11MB4673:EE_
x-ms-office365-filtering-correlation-id: e10ed56a-f929-4bf9-cb1e-08dd3aec61ca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RFRlaVNTbXo5c3lzWk9zQlhiYXVrMUlFbU1KWXRLdXJxSGI2U0VNVnZweWJC?=
 =?utf-8?B?cDh2K0tHVjVBYUxpUzdSUmVDb1hON21iTWYxK2FML2RYQmtEMk92MHZXTnU2?=
 =?utf-8?B?NURYM2FIWWovWG5QRDdzV2xRSnlXenIvUTlYUlBkR1dmWEV4VnRzVFlLVWNX?=
 =?utf-8?B?YTNNaDFCN1gyTUxFU3AxVThMeEFCS0dlZ00xbWlPY1l4Ti83ZXpTT05nbndQ?=
 =?utf-8?B?ZFFKRFpBTWFEdTU3c05tOElJQWNZU1hQZ1dMeEJKdGZmTDdDb2N2TW9scmxI?=
 =?utf-8?B?bU10Y3FzTVFKcnM5WnBxMEdTbTRxSXVpTm5ZMHFtWEpoWk1DcStoa2tsbHF1?=
 =?utf-8?B?NEhYM1hTZHhCL2ZQKzRCTzRMRk44NUNvNWZHOXIrT2RaYTJIREZjUFVqVllX?=
 =?utf-8?B?QVRFa2tqMFJYcXFKRUkrOXpzRHpqWHBFMFBMZWZLbGFMSTAzM3p6WWFySVdZ?=
 =?utf-8?B?U01ZSjRnV0Y2Z080aWI1N3ZsUzkzZGxvZWRsVFU5RWVKeGFJWkVrUm1za0xB?=
 =?utf-8?B?RTVJcVMxZUlwNGF2NDZacjFYQlVqaGxRZlhJVi9tYUtEejN5cDBINmdkc2Fa?=
 =?utf-8?B?NHUxUTVHUThWdnRwS01nNTN2d2RRMnJ0UDZzWGxOUzdRVDVjRUlHVllPTEQ1?=
 =?utf-8?B?S1o2blZyVkwzNGpBN21SQ2dSNXJOR1U4VHgzQ2tuY1RJblk4RVhKOEExenBC?=
 =?utf-8?B?Q2NwTFBpTVNodDYwdXJiYS94VCttK2s5MGNMY3dDRXkrbEhPL3pTeHBrd0dQ?=
 =?utf-8?B?ZVE5aGJtSS94MDRPUXFRSFhZZVhaMU5WVWhNbnRFTmJoQTQ0OU1ieExsYkZZ?=
 =?utf-8?B?ajZYMGVYM0hHZEhVNjg3Z1ZCclZaRTJQUUtrOFRKbURrakY0UTVPTXBJM0J6?=
 =?utf-8?B?VGVjQlFJTXNIbFNxanlmcGExSWR1dWNSbDYvTE9Tdk1DUjlEaWtnWGZWcDAv?=
 =?utf-8?B?ZXlGbmM4VVE0RjdJSUhkT1ExdWxaM0dpdW1BZkZ4Qlhoa2Y4MlY1MTVVMTJS?=
 =?utf-8?B?dzRpeS9GVVRCbVlKK09telBacnZmYUFTNHNESVJvVVJmWFVMNVhJNi9vWWxO?=
 =?utf-8?B?eFJwZk5TTkxDblhna1I0b1RsbzFBMjExL0FkNzJrOWVsSkFPazJ1c003MEtv?=
 =?utf-8?B?OWMrSlpZTkc4RHV6UmNhNXdtTG9jS1Z5WXdJV2w0U0NvZ21kUFVxSXJSVDZ1?=
 =?utf-8?B?SnJBdWkzYmU0akxRYmVSeDlTc3BXTUNCbDJ5ckJLWkVpNXpUakQxOE9EbzJv?=
 =?utf-8?B?cjZGUlpaUTR4UnZqbnBJUHVhWTE3VzN2S0JtK3dEZ01VeEdoN1FVK082c25v?=
 =?utf-8?B?b01UemgwOXh3aU1YZWFvS0FNOHM2RU5leHJzV1dwbHRLdkpOdXowYWlQRUlE?=
 =?utf-8?B?VXhBYVpnckgzckJYcXRNTVp0T0lZbjZxSXM4YzUrekF1aHQxM1RlY0Y1bjdS?=
 =?utf-8?B?S1dlTmZCd2xzQ0w2RDJGSmRBQXlKQ3MrSjJYTlpBTVZENWY2Ulk0bEQ1U21p?=
 =?utf-8?B?TFptRExqeEZRWHFxajkrbTZxdjBzNFo1S051RzNBNzVHanpXbHdQOGxZNFJl?=
 =?utf-8?B?ME91ekVYQTZEVmZFUUU1cXlxU0ZlT3N3OVpLZVlhZDFUZ2RTSU0reVVtOUdq?=
 =?utf-8?B?NWhVdnVySkRxdEdFZm9CUldRbktwOEFyTGtGM3o2K1l0dWl3bTRsQ3JaVWtt?=
 =?utf-8?B?ZTlyMW9RRENVQTlEaldNOW5QU0ZKRnBRem05czNaZ3kyRG5mQkRTaTNXNGhn?=
 =?utf-8?B?OTA1KzQ0Yi9wRXpYOVgwTmZ5MURtZVljampvRkhraTY0RXpXQ2dMYkVxU0dk?=
 =?utf-8?B?dVFycWFydnNYeThpZXpITmZzRnBlQ2RqVlZ2R25TeWZhZzh0U1lkdDFNWWU5?=
 =?utf-8?B?YXoxQ0d0cmdkZzM1NmZlNG45eW1PQXQ4VmRCemY5ZzRpcW12NFpTVnY2OGlB?=
 =?utf-8?Q?E6uAZ5M6Q39FZ3MM1/PvFDzghjlzEN3x?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Ry9IOVdUb1ZxaE05QTEyVmtEb1ZSYm5sQ054S1NqRTJZR3RaZ0ZvSVpReTg2?=
 =?utf-8?B?WENhSlEraEc2SDRpK0FBbkgzZDlWTERYQzNpYWMyV2ZuVktQUldmVFJtM1c0?=
 =?utf-8?B?Sm95bEdoeitDbnhHWDQ4bWk3MUNTTzE0akZoN2t4dmU2SG9JM1dlb2ErZmVn?=
 =?utf-8?B?dGhzSUJWbkVEc1R5Wmp4M3dUUk9NdGxLaDF3TGtnaitSSkNITnBERTArQldM?=
 =?utf-8?B?M1RsTFNERHZJU2M4S0hIdm9mZmdKbnJpNnViYXVoc2FwMWU4d28ySUhrdWhn?=
 =?utf-8?B?VUk4VFZyUzdNWkVTWGp0amhyNUV2NjVkVXN0VEhrZWpSMFYzRzF6ZXIyN1RW?=
 =?utf-8?B?bXByV2Y2S1B6VStLbTM1UDQ3SmYzdm4zMnlocE9sd0phdnY4a0lTVysyRFU4?=
 =?utf-8?B?Ti9NcjlBM1lwbS9TM1NQWVlSeFlOdFl1WkRDcjBOLzFJZWpBNzdGTjJvNjdk?=
 =?utf-8?B?ZDlQMXlYeHM0M0tjR0pwZzdCcmZsRkJudytVQjVSL1BnYW45azZmNXVaVHNL?=
 =?utf-8?B?UjNXenBqL3BSWmtUbFE3elduSTQ4cG0yd2FvRmdCZlZSakxjUkJ3R0dUczl5?=
 =?utf-8?B?Vk8zd1hrNU1TN1ZiWnYyZm1JSEZXd3NrUGdGTHhoQmhPRDhyZGlFQ2djYVhv?=
 =?utf-8?B?S1JyMnRsODBpTStWcDBEYTVDS1UyTG51Vjd6Vkpudjg1UmRUVVhRb1ZuSDRj?=
 =?utf-8?B?cDFJT3ROMDRkZk9jbHM5VUJTR1hnVFY0SmJmVkZvV2w2T2diZHhKcGwxOVBy?=
 =?utf-8?B?US96UWtweG1sOTBtcGFYb2NEMTkrOFV0UHlZMGVnVGZjVDQyTjZmSDNPSnVU?=
 =?utf-8?B?NE9MMjdmN1Z5UjVDRUUzK0FQelh1Sk1uMHdjQlpyajB2NXBUQmZMR0IrYjh5?=
 =?utf-8?B?Tng1c2xxUHJzb1VyVFBJQUtuTjdnOXJ6VUNBbVRRUUt3Z2h5V29UR2NndGgx?=
 =?utf-8?B?R0FJWDdRWUVJdnJMZ0QrbTF4VWZtQ29LTjNQMGdudTBObXEwRitQTFYrWG9M?=
 =?utf-8?B?dkF0YUl6aUpRb1h0R3FwbXVGUTZTM2JkM0RTQ2h0RjAxL1Jqd25QbGYrK3Bx?=
 =?utf-8?B?TXpPZnlUVVZPd2tua09BNVlkS3hpRUd1MjlaWDNtbmpsNmV0amxGRGY5V0Qr?=
 =?utf-8?B?dXRPcFFjTU14VnZrVWFvY2tQQU5PVFV0cUpBMCt6bldXRytQa1VtZisrN3NW?=
 =?utf-8?B?ZnU0MGVLMDVFMUlWZ0JTNWl5cjRZS2dOcmJUdkgwOTViTE4zbXlQWkZtK3hk?=
 =?utf-8?B?ZHozUkNsZnJUdmtMd1UxYnhkeUE4Wkw2NzhoMTZYK0wzZDlCcFZ4K2lRdWxr?=
 =?utf-8?B?bFBHWEt4Y0FlQmoyUHVLb0kwdUFZekw0dWN3eFYxc1RBdE50bUd4UDFCWkhi?=
 =?utf-8?B?VmJpNUpDUXpDSmI2eWxaY2tQZzhXKzRESGY5NHNYakZIcWdBdi9NTGJlK1BS?=
 =?utf-8?B?dTluQmk2bE1HZkU5ZFQraXoycjdyYTYreXFZOVFrdGtTY3dPcE5YdVpyMnVv?=
 =?utf-8?B?aUFXWlM3NjdmMU4rVURhb0JOWXpucVEyeWE1N0l1VlpHRmN6b0FBdFpsM0R2?=
 =?utf-8?B?K21lak5jajhOblNVckxabmlwOEpoN2dLZkx3a09GVUpQLzcvKzEyWDBwNlNo?=
 =?utf-8?B?Rmg0OU5IUXI3TXNQQUw4N3daU1hjWlVQSGovSEFZY1RBUzFyaWNJWWlnZzgv?=
 =?utf-8?B?Zm5ydmNRaFlCTXRDaUZ0NStRVFRYSGd6U21EbHM4VXJUczZsVmVIck1xSXRL?=
 =?utf-8?B?dTFTRmhMTHp3bXRocmdoMVI4Z3VwMysrT285VHBRWDZOeGFETW5wN1VwMkRr?=
 =?utf-8?B?YU9jRVFZL0s0TktHUDJiQWxkRDNLZTBud011UkxLN2JTYU5QOWpxNUFJb1A3?=
 =?utf-8?B?WUNFdnF1dUZ1SktSUWF5RFdDakhSTHdLS2JUR1dRemJKQVoxU0xoTnE3NDdF?=
 =?utf-8?B?ZjJzZ2M3ZUxFdHdMM2gwZEJYNjFNZzg2dHkvMHF2WnNkd3NHWS9QOFo3c2xr?=
 =?utf-8?B?OHFZRkFnbXNJNElkVW5ySTRoSHhjTHZpT3NCd0ZTMUdqblUzeVlvNVVSQWNP?=
 =?utf-8?B?aTM4UThCZlhDR2xHbCt4MWdDNlVlRlVvYWpkY2NwVlRzVEc4eWREL0x6ckkx?=
 =?utf-8?B?ay9hUktKRW45eWtrVUpyeVV6ZDZMckZZZGMrdUdPSnlrbTVRK29RSC9tTjJY?=
 =?utf-8?Q?212RrpyXNRG8XhaHI9YH7h8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CC5019DDB7B8334BAE6C95399E2B5633@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e10ed56a-f929-4bf9-cb1e-08dd3aec61ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2025 13:55:08.3425 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X0hqpKDFcrk3O4BbtYurV+KnuTK3vo6KP/8FizpfENF93yhrNNVMU/+DJNc4ernb8yNsVco7Id4s+Gb1ctoUH/PqsVB8iEJO3a4Ao4sutpY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4673
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

T24gV2VkLCAyMDI1LTAxLTIyIGF0IDEyOjQ3ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gV2VkLCAyMiBKYW4gMjAyNSwgVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBp
bGxhaUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IFByb2dyYW1taW5nIG9mIHRoZSBkaXJ0eSByZWN0
YW5nbGUgY29vcmRpbmF0ZXMgc2hvdWxkIGhhcHBlbg0KPiA+IHdpdGhpbiB0aGUgc2NvcGUgb2Yg
RFNCIHByZXBhcmUgYW5kIGZpbmlzaCBjYWxscy4gU28gY2FsbCB0aGUNCj4gPiBjb21wdXRlIGFu
ZCBwcm9ncmFtbWluZyBvZiBkaXJ0eSByZWN0YW5nbGUgcmVsYXRlZCByb3V0aW5lcw0KPiA+IGVh
cmx5IHdpdGhpbiB0aGUgRFNCIHByb2dyYW1taW5nIHdpbmRvdy4gU29tZSBvZiB0aGUgRkJDIHN0
YXRlDQo+ID4gaGFuZGxpbmcgaXMgZG9uZSBsYXRlciBhcyBwYXJ0IG9mIHByZS1wbGFuZSBvciBw
b3N0LXBsYW5lDQo+ID4gdXBkYXRlcy4gU28gZW5hYmxpbmcgLyBkaXNhYmxpbmcgLyBodyBhY3Rp
dmF0ZSB3aWxsIGhhcHBlbg0KPiA+IGxhdGVyIGJ1dCBpdCBzaG91bGQgaGFuZGxlIHRoZSBzZXF1
ZW5jZSB3aXRob3V0IGFueSBpc3N1ZS4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBWaW5vZCBH
b3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCj4gPiAtLS0NCj4g
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHzCoCAzICsr
DQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jwqDCoMKgwqAg
fCA0NyArKysrKysrKysrKysrKysrLS0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9mYmMuaMKgwqDCoMKgIHzCoCAzICsrDQo+ID4gwqAzIGZpbGVzIGNoYW5nZWQs
IDQ0IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IGluZGV4IGQxNTRm
Y2QwZTc3YS4uZTZlMDE3ZTY1ZGE2IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBAQCAtNzc3Myw2ICs3NzczLDkgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfYXRvbWljX2NvbW1pdF90YWlsKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlKQ0KPiA+IMKgDQo+ID4gwqAJaW50ZWxfYXRvbWljX3ByZXBhcmVfcGxhbmVfY2xl
YXJfY29sb3JzKHN0YXRlKTsNCj4gPiDCoA0KPiA+ICsJZm9yX2VhY2hfbmV3X2ludGVsX2NydGNf
aW5fc3RhdGUoc3RhdGUsIGNydGMsIG5ld19jcnRjX3N0YXRlLCBpKQ0KPiA+ICsJCWludGVsX2Zi
Y19jb21wdXRlX2RpcnR5X3JlY3Qoc3RhdGUsIGNydGMpOw0KPiANCj4gImNvbXB1dGUiIGlzIGEg
ZmFpcmx5IGxvYWRlZCB3b3JkIGluIG91ciBkcml2ZXIuIFRoZSBpbW1lZGlhdGUNCj4gYXNzb2Np
YXRpb24gaXMgIml0J3MgY29tcHV0ZSBjb25maWcsIGJ1dCBtaXNzaW5nIHRoZSBjb25maWcgcGFy
dCIuIEFuZA0KPiBkb2luZyBhbnl0aGluZyAiY29tcHV0ZSIgc2VlbXMgY29tcGxldGVseSBvdXQg
b2YgcGxhY2UgaW4NCj4gaW50ZWxfYXRvbWljX2NvbW1pdF90YWlsKCksIHdoZXJlIHdlJ3ZlIGxv
bmcgc2luY2UgcGFzc2VkIHRoZSBjb21wdXRlDQo+IGNvbmZpZyBzdGFnZS4NCg0KV2VsbC4uIGFj
dHVhbGx5IEkgZG9udCBuZWVkIHRoaXMgY2FsbCBhdCBhbGwuIEkgZG9uJ3QgbmVlZCB0byBzcGxp
dCB0aGlzIGJldHdlZW4gY29tcHV0ZV9kaXJ0X3JlY3QNCmFuZCBwcm9ncmFtX2RpcnR5X3JlY3Qu
IEluc3RlYWQgSSBjYW4gZGlyZWN0bHkgY2FsbCBwcm9ncmFtX2RpcnR5IHJlY3Qgd2hpY2ggaW50
ZXJuYWxseSBnZXRzIHRoZQ0KZGlydHkgcmVjdHMuIEkgd2lsbCB1cGRhdGUgdGhhdA0KDQo+IA0K
PiA+ICsNCj4gPiDCoAlmb3JfZWFjaF9uZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0
YywgbmV3X2NydGNfc3RhdGUsIGkpDQo+ID4gwqAJCWludGVsX2F0b21pY19kc2JfZmluaXNoKHN0
YXRlLCBjcnRjKTsNCj4gPiDCoA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mYmMuYw0KPiA+IGluZGV4IDk2M2ZiZTJjNzM2MS4uMDMzZWI0YTNlYWIwIDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gQEAgLTEyMTMs
NiArMTIxMywxMCBAQCBzdGF0aWMgYm9vbCB0aWxpbmdfaXNfdmFsaWQoY29uc3Qgc3RydWN0IGlu
dGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkNCj4gPiDCoAkJcmV0dXJuIGk4eHhfZmJjX3Rp
bGluZ192YWxpZChwbGFuZV9zdGF0ZSk7DQo+ID4gwqB9DQo+ID4gwqANCj4gPiArc3RhdGljIGJv
b2wgaW50ZWxfZmJjX2Nhbl9mbGlwX251a2Uoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsDQo+ID4gKwkJCQnCoMKgwqAgc3RydWN0IGludGVsX2NydGMgKmNydGMsDQo+ID4gKwkJCQnC
oMKgwqAgc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSk7DQo+ID4gKw0KPiA+IMKgc3RhdGljIHZv
aWQNCj4gPiDCoF9faW50ZWxfZmJjX3Byb2dyYW1fZGlydHlfcmVjdChzdHJ1Y3QgaW50ZWxfZHNi
ICpkc2IsIHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUpDQo+ID4gwqB7DQo+ID4gQEAgLTEyNTEs
NyArMTI1NSw2IEBAIGludGVsX2ZiY19wcm9ncmFtX2RpcnR5X3JlY3Qoc3RydWN0IGludGVsX2Rz
YiAqZHNiLA0KPiA+IMKgCX0NCj4gPiDCoH0NCj4gPiDCoA0KPiA+IC0NCj4gDQo+IFRoZSBwcmV2
aW91cyBwYXRjaCBhZGRlZCBhIHN1cGVyZmx1b3VzIG5ld2xpbmUgaGVyZSwgYW5kIHRoaXMgb25l
DQo+IHJlbW92ZXMgaXQuIFBsZWFzZSBqdXN0IGRvbid0IGFkZCBpdCBpbiB0aGUgZmlyc3QgcGxh
Y2UuDQoNClllYWguLiBub3QgcmVhbGx5IGludGVudGlvbmFsLiBJIHdpbGwgdXBkYXRlIQ0KTXkg
bG9jYWwgY2hlY2twYXRjaCBkaWRuJ3QgY2F0Y2ggdGhhdCB0aG91Z2ghIEJ1dCB0aGUgQ0kgY2hl
Y2twYXRjaCBkaWQuDQoNCkJSDQpWaW5vZA0KDQo+IA0KPiA+IMKgc3RhdGljIHZvaWQNCj4gPiDC
oHVwZGF0ZV9kaXJ0eV9yZWN0X3RvX2Z1bGxfcmVnaW9uKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0
ZSAqcGxhbmVfc3RhdGUsDQo+ID4gwqAJCQkJIHN0cnVjdCBkcm1fcmVjdCAqZGlydHlfcmVjdCkN
Cj4gPiBAQCAtMTI3Niw5ICsxMjc5LDkgQEAgdmFsaWRhdGVfYW5kX2NsaXBfZGlydHlfcmVjdChz
dHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlLA0KPiA+IMKgfQ0KPiA+IMKgDQo+
ID4gwqBzdGF0aWMgdm9pZA0KPiA+IC1pbnRlbF9mYmNfY29tcHV0ZV9kaXJ0eV9yZWN0KHN0cnVj
dCBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+ID4gLQkJCcKgwqDCoMKgIHN0cnVjdCBpbnRlbF9wbGFu
ZV9zdGF0ZSAqb2xkX3BsYW5lX3N0YXRlLA0KPiA+IC0JCQnCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxf
cGxhbmVfc3RhdGUgKm5ld19wbGFuZV9zdGF0ZSkNCj4gPiArX19pbnRlbF9mYmNfY29tcHV0ZV9k
aXJ0eV9yZWN0KHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+ID4gKwkJCcKgwqDCoMKgwqDC
oCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm9sZF9wbGFuZV9zdGF0ZSwNCj4gPiArCQkJwqDC
oMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqbmV3X3BsYW5lX3N0YXRlKQ0KPiA+
IMKgew0KPiA+IMKgCXN0cnVjdCBpbnRlbF9mYmMgKmZiYyA9IHBsYW5lLT5mYmM7DQo+ID4gwqAJ
c3RydWN0IGludGVsX2ZiY19zdGF0ZSAqZmJjX3N0YXRlID0gJmZiYy0+c3RhdGU7DQo+ID4gQEAg
LTEyOTIsNiArMTI5NSwzNyBAQCBpbnRlbF9mYmNfY29tcHV0ZV9kaXJ0eV9yZWN0KHN0cnVjdCBp
bnRlbF9wbGFuZSAqcGxhbmUsDQo+ID4gwqAJCXVwZGF0ZV9kaXJ0eV9yZWN0X3RvX2Z1bGxfcmVn
aW9uKG5ld19wbGFuZV9zdGF0ZSwgZmJjX2RpcnR5X3JlY3QpOw0KPiA+IMKgfQ0KPiA+IMKgDQo+
ID4gK3ZvaWQNCj4gPiAraW50ZWxfZmJjX2NvbXB1dGVfZGlydHlfcmVjdChzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiArCQkJwqDCoMKgwqAgc3RydWN0IGludGVsX2NydGMg
KmNydGMpDQo+ID4gK3sNCj4gPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9f
aW50ZWxfZGlzcGxheShzdGF0ZSk7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm5l
d19wbGFuZV9zdGF0ZTsNCj4gPiArCXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqb2xkX3BsYW5l
X3N0YXRlOw0KPiA+ICsJc3RydWN0IGludGVsX3BsYW5lICpwbGFuZTsNCj4gPiArCWludCBpOw0K
PiA+ICsNCj4gPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDMwKQ0KPiA+ICsJCXJldHVy
bjsNCj4gPiArDQo+ID4gKwlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfcGxhbmVfaW5fc3RhdGUoc3Rh
dGUsIHBsYW5lLCBvbGRfcGxhbmVfc3RhdGUsIG5ld19wbGFuZV9zdGF0ZSwgaSkNCj4gPiB7DQo+
ID4gKwkJc3RydWN0IGludGVsX2ZiYyAqZmJjID0gcGxhbmUtPmZiYzsNCj4gPiArDQo+ID4gKwkJ
aWYgKCFmYmMgfHwgcGxhbmUtPnBpcGUgIT0gY3J0Yy0+cGlwZSkNCj4gPiArCQkJY29udGludWU7
DQo+ID4gKw0KPiA+ICsJCS8qIElmIHBsYW5lIG5vdCB2aXNpYmxlLCBkaXJ0eSByZWN0IG1pZ2h0
IGhhdmUgaW52YWxpZCBjb29yZGluYXRlcyAqLw0KPiA+ICsJCWlmICghbmV3X3BsYW5lX3N0YXRl
LT51YXBpLnZpc2libGUpDQo+ID4gKwkJCWNvbnRpbnVlOw0KPiA+ICsNCj4gPiArCQkvKiBJZiBG
QkMgdG8gYmUgZGlzYWJsZWQsIHRoZW4gbm8gbmVlZCB0byB1cGRhdGUgZGlydHkgcmVjdCAqLw0K
PiA+ICsJCWlmICghaW50ZWxfZmJjX2Nhbl9mbGlwX251a2Uoc3RhdGUsIGNydGMsIHBsYW5lKSkN
Cj4gPiArCQkJY29udGludWU7DQo+ID4gKw0KPiA+ICsJCV9faW50ZWxfZmJjX2NvbXB1dGVfZGly
dHlfcmVjdChwbGFuZSwgb2xkX3BsYW5lX3N0YXRlLCBuZXdfcGxhbmVfc3RhdGUpOw0KPiA+ICsJ
fQ0KPiA+ICt9DQo+ID4gKw0KPiA+IMKgc3RhdGljIHZvaWQgaW50ZWxfZmJjX3VwZGF0ZV9zdGF0
ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiDCoAkJCQnCoMKgIHN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjLA0KPiA+IMKgCQkJCcKgwqAgc3RydWN0IGludGVsX3BsYW5lICpw
bGFuZSkNCj4gPiBAQCAtMTMwMSw4ICsxMzM1LDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfZmJjX3Vw
ZGF0ZV9zdGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiDCoAkJaW50
ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gwqAJc3RydWN0
IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSA9DQo+ID4gwqAJCWludGVsX2F0b21pY19n
ZXRfbmV3X3BsYW5lX3N0YXRlKHN0YXRlLCBwbGFuZSk7DQo+ID4gLQlzdHJ1Y3QgaW50ZWxfcGxh
bmVfc3RhdGUgKm9sZF9wbGFuZV9zdGF0ZSA9DQo+ID4gLQkJaW50ZWxfYXRvbWljX2dldF9vbGRf
cGxhbmVfc3RhdGUoc3RhdGUsIHBsYW5lKTsNCj4gPiDCoAlzdHJ1Y3QgaW50ZWxfZmJjICpmYmMg
PSBwbGFuZS0+ZmJjOw0KPiA+IMKgCXN0cnVjdCBpbnRlbF9mYmNfc3RhdGUgKmZiY19zdGF0ZSA9
ICZmYmMtPnN0YXRlOw0KPiA+IMKgDQo+ID4gQEAgLTEzMjcsOSArMTM1OSw2IEBAIHN0YXRpYyB2
b2lkIGludGVsX2ZiY191cGRhdGVfc3RhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsDQo+ID4gwqAJZmJjX3N0YXRlLT5jZmJfc3RyaWRlID0gaW50ZWxfZmJjX2NmYl9zdHJpZGUo
cGxhbmVfc3RhdGUpOw0KPiA+IMKgCWZiY19zdGF0ZS0+Y2ZiX3NpemUgPSBpbnRlbF9mYmNfY2Zi
X3NpemUocGxhbmVfc3RhdGUpOw0KPiA+IMKgCWZiY19zdGF0ZS0+b3ZlcnJpZGVfY2ZiX3N0cmlk
ZSA9IGludGVsX2ZiY19vdmVycmlkZV9jZmJfc3RyaWRlKHBsYW5lX3N0YXRlKTsNCj4gPiAtDQo+
ID4gLQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMzApDQo+ID4gLQkJaW50ZWxfZmJjX2Nv
bXB1dGVfZGlydHlfcmVjdChwbGFuZSwgb2xkX3BsYW5lX3N0YXRlLCBwbGFuZV9zdGF0ZSk7DQo+
ID4gwqB9DQo+ID4gwqANCj4gPiDCoHN0YXRpYyBib29sIGludGVsX2ZiY19pc19mZW5jZV9vayhj
b25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQ0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuaA0KPiA+IGluZGV4IGFjYWViZTE1ZjMxMi4u
ODdiZTU2NTNkYjBmIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJjLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2ZiYy5oDQo+ID4gQEAgLTQ5LDggKzQ5LDExIEBAIHZvaWQgaW50ZWxfZmJjX2hhbmRsZV9m
aWZvX3VuZGVycnVuX2lycShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7DQo+ID4gwqB2
b2lkIGludGVsX2ZiY19yZXNldF91bmRlcnJ1bihzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSk7DQo+ID4gwqB2b2lkIGludGVsX2ZiY19jcnRjX2RlYnVnZnNfYWRkKHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjKTsNCj4gPiDCoHZvaWQgaW50ZWxfZmJjX2RlYnVnZnNfcmVnaXN0ZXIoc3RydWN0
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0KPiA+ICt2b2lkIGludGVsX2ZiY19jb21wdXRlX2Rp
cnR5X3JlY3Qoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gKwkJCQnCoCBz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+ID4gwqB2b2lkIGludGVsX2ZiY19wcm9ncmFtX2Rp
cnR5X3JlY3Qoc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiA+IMKgCQkJCcKgIHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+IMKgCQkJCcKgIHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjKTsNCj4gPiDCoA0KPiA+ICsNCj4gDQo+IFN1cGVyZmx1b3VzIG5ld2xpbmUuDQo+IA0KPiA+
IMKgI2VuZGlmIC8qIF9fSU5URUxfRkJDX0hfXyAqLw0KPiANCg0K
