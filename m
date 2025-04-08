Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A7EA8067B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 14:28:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62B0C10E687;
	Tue,  8 Apr 2025 12:28:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eozAhT4t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09CD610E686;
 Tue,  8 Apr 2025 12:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744115292; x=1775651292;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=I5gc2kwEcZvhT2R9qsvRCL6/FL+djT4KbDb/+kC61tg=;
 b=eozAhT4tttCrYQlEvXFsQ4Xc6DXNWA2kYJC0Grzq1y25NVZv8Z0CYPII
 9ag48EBrg48hUiBpHEvvFim1n2Z0IXlYHcZQqpjsy9BnlQB4YY9u/m7h9
 MBu5csy0qu5ARQen2JOSCuubPZrLHweGEygbnjD6050h9Gszc87nWXkcT
 3S/h+8r/y6SmM7Wb1fJmyeCBSjTrZ7ucBImRMCZmvBO1f6b+LWLgxFDuV
 qC/KPhXLAlszg9s3OnrSg91CCQ7AyaP+9zl0u4pgaDX6CAP5pszubC+2n
 NYSL7m2vZI74BtKWpdEGXU2DZDUuYYkdtb+DbrQuP+vWtE+j8f+UWjEzw Q==;
X-CSE-ConnectionGUID: vgoBIfoNR825hxsnOkqPDA==
X-CSE-MsgGUID: zvqz+7KGTu6xoGzULgj3VQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56913895"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="56913895"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 05:28:12 -0700
X-CSE-ConnectionGUID: 3GXdX+cdRniyQ+mrjcEmpw==
X-CSE-MsgGUID: fC8CKAvOTHq+VL3QTYNdog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="128590006"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 05:28:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 8 Apr 2025 05:28:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 05:28:10 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 05:28:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FtcN+OK3sa/iW1qgXnDjDOhyFx59ddNOx4M+Jl5BvBK/5dXvq+dSVMWGLFbCYebdMcxzyKuKiSnaaPfeM09KERK9eHOCQPpR6GGeqFzOHdkuT9MihDdKxtASobV6Ef6L492QV3Kesl/vSKYPhSSJRyQJ+d7qAJJLzXNmYUvJtp6tjJRw22bjkj3T5FRKBb1d/vrmsta/B9X6q4zjuLi/DL89WTKG6wRTlL0HtZ/AIVGsZsxHe7rOoQO9tZ3E9wWQ+AkuCNpZmJrxUaByr1JnvehGCY/9bMGf2hAmqJv7+Zi/2HduKKn1GnMEJyHFsNvvoilj1ZKX+0dEtfW+kbqdYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I5gc2kwEcZvhT2R9qsvRCL6/FL+djT4KbDb/+kC61tg=;
 b=d6KJ8B9iXwJ/guTcDKRHN1iuedMQDJu7K0k9xn0I2dc/p8oQz0Ny4zkFPk6grNFqmF5dMI80njsZvkZj+Aap4njzKv5b3Wy2tY8XtBHRJtTZyCueD7npdChDbp7UIBZG+XAu/W8lTKr9mSRllEe3e5p6xwZhOzNbm52yN/RmEPpwOYtPwsACn0gHLbbGGgCg3+Vyb0CtE8qHkPGXbE7I8cViop37tRK9sI03G5KgJHXhYDuztEwPo31bjOYnKu1cTBvWLDK86i8HKCFJVxEkGmHD3wfDrMwBs0nQJSF6gU1/qtdw7mapemmXCSJgli/aXlyXL0bHOvvkcRbkq4sgPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SJ2PR11MB8537.namprd11.prod.outlook.com (2603:10b6:a03:56f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Tue, 8 Apr
 2025 12:28:08 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8583.045; Tue, 8 Apr 2025
 12:28:08 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v2 10/11] drm/i915/display: Rename
 intel_psr_needs_block_dc_vblank
Thread-Topic: [PATCH v2 10/11] drm/i915/display: Rename
 intel_psr_needs_block_dc_vblank
Thread-Index: AQHblxVadCGyEzJ52E+7dK9WI17XOrOZ1Rjg
Date: Tue, 8 Apr 2025 12:28:08 +0000
Message-ID: <MW4PR11MB7054561F145253A6FBB415CDEFB52@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250317081905.3683654-1-jouni.hogander@intel.com>
 <20250317081905.3683654-11-jouni.hogander@intel.com>
In-Reply-To: <20250317081905.3683654-11-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SJ2PR11MB8537:EE_
x-ms-office365-filtering-correlation-id: e274b327-1ebb-4b27-2a8b-08dd7698d1c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?d21DaGErY3RiM3luU21mdWdDU3RUc3ZPZGo0SWZEZExEOXR5TUZ5OXJRaUZI?=
 =?utf-8?B?OTR6eFE1V3JDclN1ODFaTzcwejZiUitpNGlENUErSDBaTGp3WHQ4UjhpV2Qr?=
 =?utf-8?B?WXMxNmhHT0svWTA0MDVXSzAzbXZQTGl3YlhlTDJNSEFtcGluVExhUEhNZHZQ?=
 =?utf-8?B?a1BDRHhQaHZpQjN0QWgvSUZhNmxFM2svMWFyTWpYWTEyUFNsT0Jxai9qUVFJ?=
 =?utf-8?B?UVJzR09kOU9tNVZEVTlWeGVNZlFZZEx0ZzFaU2VwN3hsQWZ0MUkySFl2enFt?=
 =?utf-8?B?SExlWkkwOWs1eTZ4bURWcW9sM1RRbDZldmJnNE4zejZ2QlJxTnl2Rk40dStS?=
 =?utf-8?B?eDArbm15c0tYWWVZSmM0bHRPVUtxMkZ3TkZHaTNDV3BrQitOVTQzMXN2Wkt4?=
 =?utf-8?B?Z2EwNkl2a3UvM2V0MzRaUnBkYWFzQ20ybk8ycUZXQzl4ZlllTVF5c3lLb2Fl?=
 =?utf-8?B?enA5dEdJU3h5UEY3R0ZqU2ZlZlh3dlFEYnJncTlBbFdVdFZpUXd6ODlBYUNJ?=
 =?utf-8?B?S3VzOG84dVV5OUdGOTB1bnNZVmdvU2dlbDZFdUpKV2lzY3l1MnFEcGdmdFZO?=
 =?utf-8?B?bCsrcUZHc1VEZjZvMWxWRXNXRGt2bjhSZWZDNWg2TGUwU0xJaUlPWm1UOWgw?=
 =?utf-8?B?SWtVOHE0ZUJqMUZCRnROL3NCdFM0YndFRWkzZ0xscC9pSXM3SnBoY1dnOVNU?=
 =?utf-8?B?aTdNSm04bmZhbmVoUTdZcDE4anJFTGJBR0VleDQxenU0K280WTRqZ1FXNk8v?=
 =?utf-8?B?dGdkS1ZVN0VRUlVacFZDZ3REQ1pQL3Fpc3g2ZUxUdnpxY0lvV0trUWQxUzBH?=
 =?utf-8?B?L3BFQVdtWFNtS0lVZDd5UVE0TVc3SkJ2L2dpY1QwL0NNTk1IaGRZRERtc2ZD?=
 =?utf-8?B?Z3dQZ20zc1k3WnlsVTJVU0pUOHA2dERaTE05Vk96aUFGcWM1cGhNdFdmT1pw?=
 =?utf-8?B?dm81cGFYK3JzNktzYldKK3MrdURKLzIvN1A4WFlUSXJYc3FEeHBwa0pDSkxX?=
 =?utf-8?B?U1JjdjdhQzk5bGtjdHcxMThxanhuWTVIWEloMEdBaU16ZkpVMTFZbXowUi9M?=
 =?utf-8?B?QkpiUmZDNEI5RnBvSmF0eFJENm02eGpESnVFSk5yR1B3WjREWDkxeFQ2NSt5?=
 =?utf-8?B?VnI1ZGZuR2l0TnRBcTQ1ZkxyaXpEYzVIdVpjbzFFK3Vxd1ZPekVmdFhsbkh3?=
 =?utf-8?B?azkrRGpadWJxTTYrbTZQTEZoZ2FmZnVYSCtSUE1TL0J4UHd3anlNT2p6V1lG?=
 =?utf-8?B?akpyWUp6RnlPbDBXMnEyMFozcXhXYVJvWnJFNTRlVG9tWlRic1pYeW9XSWxw?=
 =?utf-8?B?QUVSRHF6ZExFaksrUjBiNkUrQU4veTZpVWZrdmxGS1g2MWd5SWlqdjhoUUMx?=
 =?utf-8?B?NXBWalV4TmFreGF4ZzM0T2d2cWtCQWVjRHBVSGlPSjE1WWFtQW9nK0FwZkQ4?=
 =?utf-8?B?c1lpdHVhV21YekpsN2dicXlvZ0NnOG5vRXJuOTVOdVhYc0pGd3FoQzdjZExE?=
 =?utf-8?B?eDcvdFRETmlSZ3BFbmV0MStBMGJ4MXp6RzFwc3ljQzVtVlIxV0R4TFY4b0Vk?=
 =?utf-8?B?WlZjQ2lmV0kvUmJVRGpReU5OazBLNTFKYWNpT1ZJY2VRV1k1S2JreG9BbkJM?=
 =?utf-8?B?OEkydWNuYmUxa0VLM3pDbElTem9nV1hUN2dqT1BKSnlkR1RwY2s1eUpDK3F2?=
 =?utf-8?B?a2pVUGk1RnBRWFpNWUF2aDZYNjMyaG0ybkpYRkZuNkVTODltbk04QkFBd1NP?=
 =?utf-8?B?ODVsSU5Wc3ljdTVDRlRhNjU3cVR5R2U4Q1d4di92QVY0TlhmeWtaaHg1OXpM?=
 =?utf-8?B?YzFYdVNXOHlieFBBNjZCUEpwSFhEcWY2SGxWR1Y2ZW5YMHhTdGpXMUhZYjdk?=
 =?utf-8?B?VDBKdHliN3MyMURUdERCd0RVclRnelNsVGZRWHRSOFk0TzlUZi9jaVRBS2hC?=
 =?utf-8?Q?F5aoCC0ScJBvqV4KZ33qyGnzmcZglfrG?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TFlxcGlSNGhiTEJ3MC9KS0RzUDh1RFZiTFFFUElFZm1Hd1VmeEVEbE1yZktM?=
 =?utf-8?B?b3pSWk9XQXAwb0ZZZnNNRTFVdk1MMDVnYVkvVGVQeWR1SFE2OGFOaUdvK2t0?=
 =?utf-8?B?RW9mOTNvMGhKKzdjMmNZSGthTnUzNWV2OVM3c1dHZWI3bm4rN0V1bWc0MnU5?=
 =?utf-8?B?V0pNTlJCMGtYOHA5RnBXbGFySTZrNGxoMEkvN2tkY3BCbEk5d3FMVk0vbURN?=
 =?utf-8?B?ZzhnNTRaNnZSMUZ2ZVRPN3lONGFDbnN3R2JTRzcrNURvekFicjU0V1JEVjdW?=
 =?utf-8?B?RnBCWVBtbGIzdTNsVTNWQkEvSGpkdXNUYUF6SlVPMnBRY3Y4dW5OOS9xMkpW?=
 =?utf-8?B?dTM5dG1QQUtBK3Z4MExVOFQ1aFovdGtqRXN1MWRxbjJVY3FYcTdqYTJjT0o1?=
 =?utf-8?B?UE1KcGg5MmpuVXV0aHNwc2lDR2p3a0VZT2RZSXVka2h4Z2cxTEIrSkd4WG9r?=
 =?utf-8?B?WFlRWVYzVnNqVmxLTDFyRVQ3aE1rNU5hOW9ibHo3bFhJSDY4ZjZSazBzQzMr?=
 =?utf-8?B?aFcvajd3bnhTbVdGdXhLTmpGQjVrTGhLL1owbWJQTm5EK2xCWjBTM0lSV0ZG?=
 =?utf-8?B?UnJ6MG9Rem1UeHNmVkswalVXUlM0RTdYRmhYNitJUjFqTm9CNThabkxCZlk1?=
 =?utf-8?B?SFNPODZsY0tHSjJIVWVMeGNHck4yZTVOcXRJcHh2VkxQWHpFaS84bCtQR2Q0?=
 =?utf-8?B?b2txYXpjNHRsQ0NHd1BuSDBnd2FhZWxNa0ZxeFR3ZnFYajdETXlKWFNBNzJi?=
 =?utf-8?B?VDNuMmlBTERsandNeW1OOVJwL0s0TlpoZWE1NU1EeXVBakFoclZtU3hMVk5P?=
 =?utf-8?B?TzRoZmJobWNHK3lrTm5DTXZtVjJrbTNLcVZDMjYzcmxiMGJrSjlSU3Z3cGM3?=
 =?utf-8?B?SUdHcEYxa05kb1lhbjlMZTZoNEh6NUp4L21UcGp4ZVluVVUwQWlYNUVsN0to?=
 =?utf-8?B?L2wrZ3JEb2I4WTd6T1RXUlZOUVNCTkJqSzZxNzJpYmhKNk1vSWRqK3E2dEpr?=
 =?utf-8?B?dkJNVy9VQUs4UlkwT2tVYkVBaG4zcnRaSllTUzdkdFprZW40RlZRazhKZzl0?=
 =?utf-8?B?UzFOZ2JDa3N0b3UrTGhjVytiaFh4blg1N2hTckluSkZ6Z3ZTUWx1NG8reDRN?=
 =?utf-8?B?T3lnYVIvQ25hUVBaV1plMlR4MmhaQmxOd0VNUER1UXRUNEJPSmNtZm8wY1BP?=
 =?utf-8?B?dkZuODdGSXRzdkNVblhjZTBJTU8xbC9LOVRtb2NmWVNmVDY1VFNXWTJvN2U0?=
 =?utf-8?B?KzBCYzlMaURxejdXN3plV3hxWm1jK2xub3RsdVk1WXNxUklSWVFLOU9VS0gw?=
 =?utf-8?B?MHc4OVZKd09SRXhuMzgrbk54N3grVDIrY29CT0tqbitaSERHWG5ETmFRUHJY?=
 =?utf-8?B?SFQ4Yk5NbUxrVmZMOWt2ZitmY2VrUW1jelgvTXpkT3BmUE9MdElkVHQ5VXR1?=
 =?utf-8?B?UVBiNVpMQXhpWmt2eE5Xb3RuQXp3TDF2QjVOMVBOMUpac3pRUFVDNktPbEJB?=
 =?utf-8?B?SWM0WCtkRjVuUlROcm1HOTA5d3ZRS1NSTW5pUlgzTkU1TEpIbzdneURHUFl0?=
 =?utf-8?B?L29lV2lrZEFjQTZVcjJUbXdXTEg1ZUIyK3o0N0loQ0lPOWZadnkrZU5QL0NH?=
 =?utf-8?B?aDRUZlBFUDV2clVTL3NXOTA3V0Y0WVhDUEliaGNFWXg3VVRnQWlRczBkc1lU?=
 =?utf-8?B?Q2RzVDhPaytVNHpLRUJpcWdLM2pCQjdCQ2ZYNElDVWNBbHdWREduSGViNXha?=
 =?utf-8?B?L0xQRHMrQndHVDQ5MFFlRzl2Zk5BT2wraTNvOHoxOWc3dzZEL0huendYZTZB?=
 =?utf-8?B?MVNNVFUyNjhRcHBScldYdVQxSndXeDVrdXNCY2djSFkvUTJJbTJaYmEvMnh6?=
 =?utf-8?B?S2dzeHZyNDVQUjZudEtxcXhIR3NBQUplbXlWY01KbnBLMkZDam5SbUNtTnJF?=
 =?utf-8?B?YU5uMy9yaTUxdVEwRkhBQmtEcHBUNTFUNUx0YUd5SlBOUHlWMnBwalpTc1NF?=
 =?utf-8?B?alY5a3k3SktiUnh4dlpZaEJENFhGNmo2R0czWUVTNVpuWVl6VVdVRWNnSWUz?=
 =?utf-8?B?RUo3eE5YVmFzbmkxTHkwT291LzZKNGk1MmRiYjJveC9waU91d0J0RWhHekY5?=
 =?utf-8?Q?JksF8EgRIRZ+LDj8lJ13RpOK8?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e274b327-1ebb-4b27-2a8b-08dd7698d1c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2025 12:28:08.2333 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QxAiIjrSMAwVUwFeiKz8jRz/uEIWRm5SayRk9Lcd6Eg3wWBlU7yXw9jvVMUMJk22/KttP+Kexx9+89tYje9Epw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8537
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0KPiBIw7Zn
YW5kZXINCj4gU2VudDogTW9uZGF5LCAxNyBNYXJjaCAyMDI1IDEwLjE5DQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJq
ZWN0OiBbUEFUQ0ggdjIgMTAvMTFdIGRybS9pOTE1L2Rpc3BsYXk6IFJlbmFtZQ0KPiBpbnRlbF9w
c3JfbmVlZHNfYmxvY2tfZGNfdmJsYW5rDQo+IA0KPiBTY29wZSBvZiBpbnRlbF9wc3JfbmVlZHNf
YmxvY2tfZGNfdmJsYW5rIGhhcyBjaGFuZ2VkIG5vdy4gUmVuYW1lIGl0IGFzDQo+IGludGVsX3Bz
cl9uZWVkc192Ymxhbmtfbm90aWZpY2F0aW9uLiBBbHNvIHJlbmFtZQ0KPiBpbnRlbF9jcnRjOjpi
bG9ja19kY19mb3JfdmJsYW5rIGFzIGludGVsX2NydGM6dmJsYW5rX3Bzcl9ub3RpZnkNCj4gDQoN
ClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNp
Z25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jICAgICAg
ICAgIHwgNCArKy0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfaXJxLmMgICB8IDQgKystLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmggfCAyICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jICAgICAgICAgICB8IDggKysrKystLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmggICAgICAgICAgIHwgMiArLQ0KPiAgNSBmaWxlcyBjaGFu
Z2VkLCAxMSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMNCj4gaW5kZXggNWIyNjAzZWYyZmY3NS4u
YmRmMzBhYjk2Mzk2NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jcnRjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jcnRjLmMNCj4gQEAgLTEyNCw3ICsxMjQsNyBAQCB2b2lkIGludGVsX2NydGNfdmJsYW5rX29u
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKSAgew0KPiAgCXN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNy
dGMpOw0KPiANCj4gLQljcnRjLT5ibG9ja19kY19mb3JfdmJsYW5rID0NCj4gaW50ZWxfcHNyX25l
ZWRzX2Jsb2NrX2RjX3ZibGFuayhjcnRjX3N0YXRlKTsNCj4gKwljcnRjLT52YmxhbmtfcHNyX25v
dGlmeSA9DQo+ICtpbnRlbF9wc3JfbmVlZHNfdmJsYW5rX25vdGlmaWNhdGlvbihjcnRjX3N0YXRl
KTsNCj4gDQo+ICAJYXNzZXJ0X3ZibGFua19kaXNhYmxlZCgmY3J0Yy0+YmFzZSk7DQo+ICAJZHJt
X2NydGNfc2V0X21heF92YmxhbmtfY291bnQoJmNydGMtPmJhc2UsDQo+IEBAIC0xNTQsNyArMTU0
LDcgQEAgdm9pZCBpbnRlbF9jcnRjX3ZibGFua19vZmYoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUNCj4gKmNydGNfc3RhdGUpDQo+ICAJZHJtX2NydGNfdmJsYW5rX29mZigmY3J0Yy0+YmFz
ZSk7DQo+ICAJYXNzZXJ0X3ZibGFua19kaXNhYmxlZCgmY3J0Yy0+YmFzZSk7DQo+IA0KPiAtCWNy
dGMtPmJsb2NrX2RjX2Zvcl92YmxhbmsgPSBmYWxzZTsNCj4gKwljcnRjLT52YmxhbmtfcHNyX25v
dGlmeSA9IGZhbHNlOw0KPiANCj4gIAlmbHVzaF93b3JrKCZkaXNwbGF5LT5pcnEudmJsYW5rX2Rj
X3dvcmspOw0KPiAgfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X2lycS5jDQo+IGluZGV4IDYyZmJkY2JiNGExMjMuLjgzM2Y4MjI3ZGE4MDMg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9pcnEuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfaXJxLmMNCj4gQEAgLTE3NDIsNyArMTc0Miw3IEBAIGludCBiZHdfZW5hYmxlX3ZibGFuayhz
dHJ1Y3QgZHJtX2NydGMgKl9jcnRjKQ0KPiAgCWlmIChnZW4xMV9kc2lfY29uZmlndXJlX3RlKGNy
dGMsIHRydWUpKQ0KPiAgCQlyZXR1cm4gMDsNCj4gDQo+IC0JaWYgKGNydGMtPmJsb2NrX2RjX2Zv
cl92YmxhbmsgJiYgZGlzcGxheS0+aXJxLnZibGFua193YV9udW1fcGlwZXMrKw0KPiA9PSAwKQ0K
PiArCWlmIChjcnRjLT52YmxhbmtfcHNyX25vdGlmeSAmJiBkaXNwbGF5LT5pcnEudmJsYW5rX3dh
X251bV9waXBlcysrID09DQo+ICswKQ0KPiAgCQlzY2hlZHVsZV93b3JrKCZkaXNwbGF5LT5pcnEu
dmJsYW5rX2RjX3dvcmspOw0KPiANCj4gIAlzcGluX2xvY2tfaXJxc2F2ZSgmZGV2X3ByaXYtPmly
cV9sb2NrLCBpcnFmbGFncyk7IEBAIC0xNzczLDcgKzE3NzMsNw0KPiBAQCB2b2lkIGJkd19kaXNh
YmxlX3ZibGFuayhzdHJ1Y3QgZHJtX2NydGMgKl9jcnRjKQ0KPiAgCWJkd19kaXNhYmxlX3BpcGVf
aXJxKGRldl9wcml2LCBwaXBlLCBHRU44X1BJUEVfVkJMQU5LKTsNCj4gIAlzcGluX3VubG9ja19p
cnFyZXN0b3JlKCZkZXZfcHJpdi0+aXJxX2xvY2ssIGlycWZsYWdzKTsNCj4gDQo+IC0JaWYgKGNy
dGMtPmJsb2NrX2RjX2Zvcl92YmxhbmsgJiYgLS1kaXNwbGF5LT5pcnEudmJsYW5rX3dhX251bV9w
aXBlcw0KPiA9PSAwKQ0KPiArCWlmIChjcnRjLT52YmxhbmtfcHNyX25vdGlmeSAmJiAtLWRpc3Bs
YXktPmlycS52Ymxhbmtfd2FfbnVtX3BpcGVzID09DQo+ICswKQ0KPiAgCQlzY2hlZHVsZV93b3Jr
KCZkaXNwbGF5LT5pcnEudmJsYW5rX2RjX3dvcmspOw0KPiAgfQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5k
ZXggM2QyMDNhMjAwM2YxMC4uNGYzZmRmYWNiYzFiMSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAgLTE0NDAs
NyArMTQ0MCw3IEBAIHN0cnVjdCBpbnRlbF9jcnRjIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfcGlwZV9j
cmMgcGlwZV9jcmM7DQo+ICAjZW5kaWYNCj4gDQo+IC0JYm9vbCBibG9ja19kY19mb3JfdmJsYW5r
Ow0KPiArCWJvb2wgdmJsYW5rX3Bzcl9ub3RpZnk7DQo+ICB9Ow0KPiANCj4gIHN0cnVjdCBpbnRl
bF9wbGFuZV9lcnJvciB7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiBpbmRleCBkMmEyOGE4M2U0ZjIwLi4yMjg5OTZmMWYyNmQyIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTIzNTQsMTUgKzIzNTQs
MTcgQEAgdm9pZCBpbnRlbF9wc3JfcmVzdW1lKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApICB9
DQo+IA0KPiAgLyoqDQo+IC0gKiBpbnRlbF9wc3JfbmVlZHNfYmxvY2tfZGNfdmJsYW5rIC0gQ2hl
Y2sgaWYgYmxvY2sgZGMgZW50cnkgaXMgbmVlZGVkDQo+ICsgKiBpbnRlbF9wc3JfbmVlZHNfdmJs
YW5rX25vdGlmaWNhdGlvbiAtIENoZWNrIGlmIFBTUiBuZWVkIHZibGFuaw0KPiArIGVuYWJsZS9k
aXNhYmxlDQo+ICsgKiBub3RpZmljYXRpb24uDQo+ICAgKiBAY3J0Y19zdGF0ZTogQ1JUQyBzdGF0
dXMNCj4gICAqDQo+ICAgKiBXZSBuZWVkIHRvIGJsb2NrIERDNiBlbnRyeSBpbiBjYXNlIG9mIFBh
bmVsIFJlcGxheSBhcyBlbmFibGluZyBWQkkgZG9lc24ndA0KPiAgICogcHJldmVudCBpdCBpbiBj
YXNlIG9mIFBhbmVsIFJlcGxheS4gUGFuZWwgUmVwbGF5IHN3aXRjaGVzIG1haW4gbGluayBvZmYg
b24NCj4gICAqIERDIGVudHJ5LiBUaGlzIG1lYW5zIHZibGFuayBpbnRlcnJ1cHRzIGFyZSBub3Qg
ZmlyZWQgYW5kIGlzIGEgcHJvYmxlbSBpZg0KPiAtICogdXNlci1zcGFjZSBpcyBwb2xsaW5nIGZv
ciB2YmxhbmsgZXZlbnRzLg0KPiArICogdXNlci1zcGFjZSBpcyBwb2xsaW5nIGZvciB2Ymxhbmsg
ZXZlbnRzLiBBbHNvIFdhXzE2MDI1NTk2NjQ3IG5lZWRzDQo+ICsgKiBpbmZvcm1hdGlvbiB3aGVu
IHZibGFuayBpcyBlbmFibGVkL2Rpc2FibGVkLg0KPiAgICovDQo+IC1ib29sIGludGVsX3Bzcl9u
ZWVkc19ibG9ja19kY192YmxhbmsoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpDQo+ICtib29sIGludGVsX3Bzcl9uZWVkc192Ymxhbmtfbm90aWZpY2F0aW9uKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICsqY3J0Y19zdGF0ZSkNCj4gIHsNCj4gIAlzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRj
KTsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXko
Y3J0Y19zdGF0ZSk7IGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
aA0KPiBpbmRleCBhOTE0YjdlZTM3NTZhLi5jNjEzODRiYjczODJhIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gQEAgLTU5LDcgKzU5LDcgQEAgdm9p
ZCBpbnRlbF9wc3IyX3Byb2dyYW1fdHJhbnNfbWFuX3Rya19jdGwoc3RydWN0DQo+IGludGVsX2Rz
YiAqZHNiLA0KPiAgCQkJCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRj
X3N0YXRlKTsgIHZvaWQgaW50ZWxfcHNyX3BhdXNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
OyAgdm9pZA0KPiBpbnRlbF9wc3JfcmVzdW1lKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOyAt
Ym9vbA0KPiBpbnRlbF9wc3JfbmVlZHNfYmxvY2tfZGNfdmJsYW5rKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gK2Jvb2wgaW50ZWxfcHNyX25lZWRzX3ZibGFu
a19ub3RpZmljYXRpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKypjcnRjX3N0
YXRlKTsNCj4gIHZvaWQgaW50ZWxfcHNyX25vdGlmeV9waXBlX2NoYW5nZShzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJCQkgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLCBi
b29sIGVuYWJsZSk7ICB2b2lkDQo+IGludGVsX3Bzcl9ub3RpZnlfZGM1X2RjNihzdHJ1Y3QgaW50
ZWxfZGlzcGxheSAqZGlzcGxheSk7DQo+IC0tDQo+IDIuNDMuMA0KDQo=
