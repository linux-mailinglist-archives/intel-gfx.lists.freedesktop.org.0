Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DD1AD459F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 00:06:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28E0210E5BF;
	Tue, 10 Jun 2025 22:06:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DGzUQcg0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5908C10E5BF;
 Tue, 10 Jun 2025 22:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749593190; x=1781129190;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L5BAm4QnQR0ULtYFX48GCLSavmSVNeID4v/Yu7JTR+0=;
 b=DGzUQcg0rVuKYf2tN8ARNTI69JfKe13g0Zmsta6omNHsThQ5k3Aad5QX
 SKMRYQpQDwoiDNh6GXewL1eOiIxugsO3XM34Ur1IPJK+qoVZY+5a/UUiI
 YFlJirlWr2m2RBARWc2Ve5sYnGybOZDhkz1kajpIJnzM/m83WfyN4EPSl
 0NiQ+PBmNij9lkfoAtiu1idB7RA/+vpGZwK2N6RrL6u5n6Qd0yhzkqTwd
 oV/jlJhqZexYn5bQgR8E+pgCxBf/DeELc0AixRP2inXIRu4fGx7W/XKU3
 1kP34C3mtHb7T009+dRFbVsLCgy91OrfAeOnt6kkchTQBE32pKRSPcTFz g==;
X-CSE-ConnectionGUID: TJnxiui5T/SK2jbRaDEvrQ==
X-CSE-MsgGUID: UHD4LmTHQemCCNxj53cTrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="51822551"
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="51822551"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 15:06:26 -0700
X-CSE-ConnectionGUID: rZVvgXzXRi6XFeDYarIoYQ==
X-CSE-MsgGUID: sl2nmrOUTFy0D2LVQfLmsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="177878588"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 15:06:26 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 15:06:25 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 15:06:25 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.49) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 15:06:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dPnaWB/u7+5pKi7pOd20Q00samGyj92YDGdxx/Ht50g4od13RZFIGPsaktL0pTMMz3WokSwfd/ShAsEXGPwZq60oRmorAj6s686kXSo4Eqs3JsVpLWML5cyadrVWqMJ09uvdFIOo2JfiQDnZGiRLbi8YT4mGx/XuAqEGnTy5PrQPOOACNA4Kgx7dUlZj19AS1y/wq47G9aa4AMXEnRNEKbuCwhS4AIeuJ7zdVYy2xv9OGGi3418QzWmANF77Lp7fbanFICPRodgjVQVHNONCjkYD+YJPuRAPucCYlrtv7Xr4/M01P02pkgGcM0oVUaCUMou7Xd62S6kRX48Nav/89Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L5BAm4QnQR0ULtYFX48GCLSavmSVNeID4v/Yu7JTR+0=;
 b=EUCdsRA5OsbVYXZD2XK100Yv7884OG2hzKGo46YzyKR+SLJ5M5Z6SPy+fRnhrU3whvwqD7fRNUCivcY18YQtBOEa1w7fP1NxRUSXnIgOJMghiwN28IFgD9ohj4EnNOpe+a9PQuArWVyqVf7RnHONENgin7rEO/OLeqJRnu5RpqaOAc4sABWZAMctTI9o5gRGWlnpfaw9FweVNHYfywGnHUl8jJdEIj8xNoL9eeh20xBRdjjXOB6GJxp/5O7pPzQqT8ADsB2IxlsobsUMvFehWAXTekB/uyGN4cerM2XoNq7OAuyNhpqH7983Gh12t/F58os3qDRhTYX73M3I4cXjZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA2PR11MB5132.namprd11.prod.outlook.com (2603:10b6:806:11a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.19; Tue, 10 Jun
 2025 22:06:18 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.018; Tue, 10 Jun 2025
 22:06:18 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v4 07/21] drm/i915/dmc: Limit PIPEDMC clock gating w/a to
 just ADL/DG2/MTL
Thread-Topic: [PATCH v4 07/21] drm/i915/dmc: Limit PIPEDMC clock gating w/a to
 just ADL/DG2/MTL
Thread-Index: AQHb2UhnfVkFKlUFsEaEiRJXkGBzfLP881zA
Date: Tue, 10 Jun 2025 22:06:18 +0000
Message-ID: <DM4PR11MB63603D5DE7B6FB5F13AA2143F46AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
 <20250609141046.6244-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20250609141046.6244-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA2PR11MB5132:EE_
x-ms-office365-filtering-correlation-id: 81258a9a-8818-44c6-4d33-08dda86b06ee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?b0xNWHpwRGI4cjlSY20rQ3NnOVc5angrZFMwYVdDZ215VjZWdjd0dVgxZlJD?=
 =?utf-8?B?Yk9pSVZadjI0czJhY25VWVZVRjFHQkZ5LzhRRmI0TkdzemJNMU9RRWU0Q2xn?=
 =?utf-8?B?SHR0Rm5KUW42ZGZVanFhNTdJSExNR2J1TlVlSkpBN1U3cWl6cEIrRnMyNVho?=
 =?utf-8?B?NVVuTGJXbGNYcUtjcjVsY0dDeTlzSkhaVysySFFjSUVjWlM4OXlNY1RCMTRX?=
 =?utf-8?B?R3MwcGFYMWtlTlZwR2xuazdhQ3ZBZStPbjd1bVFvQmVKVGNMTERiODBsaUxq?=
 =?utf-8?B?WnpOZFhpUzlJMUYySnlwYWtoUnlZTEExUjJTZEJQY0pzOHc5ckUzNExIUm82?=
 =?utf-8?B?bGRLOFVnQmFUenZsbks2MmZLSWdHVG9xSEh4ekxaZzhmcXV0M0JjU2tGOGJR?=
 =?utf-8?B?YXNQaE41b0hPS1dFMStLMHJuMTBtUlJGamRHTmZPUVBVN2x6UWlTZHB4YlNK?=
 =?utf-8?B?UFZ0QjVhZnpnVWZOYWpuU0FoQUFyck9oWWJjalhZMUxHN25CWHZONVFGZ29D?=
 =?utf-8?B?ZldYNnk3Y2VrYmd4SGl5TXM3YW0wUWtjSzlpbzkzeFdNVFJ0dU8ySVl5TW0w?=
 =?utf-8?B?MHdpQzRlbkZ2bytkTk1vNXorbjFNU3lTM0NZM2FvZFE1bW1TZkU3VDhRNkh4?=
 =?utf-8?B?T0x5QXFPMEQ5UjJkNmFPWjlLYzc2V3ViOVJ5YWhZSzZaV0NnZ1FUSGRVTEZq?=
 =?utf-8?B?NmVUR0phcjNxMnl3TmJWekJVcVhCUUxGZ2UreHMxN1dPbjNPaDhGZHFKb1Qy?=
 =?utf-8?B?ZkJ1TGxqMXlsNStxN3ZFTEJiaUtmWVhUSEFTT2ZtUmFTOWZFUjJacE52NGxV?=
 =?utf-8?B?MVY2N3k0MVV3UTQ4dmhWUzBYMlFmTjlkb1dybGtDUE52bGdNY05UZ1NBRlM5?=
 =?utf-8?B?ZnNUU3UySERPUUdtZEpUcGwrekI3QVRiZGI3eTRWZWxNMy9aV3lQUjhuTkVR?=
 =?utf-8?B?VERCUkR1RllXU2Q2Q3FqZFZFTDZQY2t3Zkw0L1VhaU9hMldCNENZZmF4dDh3?=
 =?utf-8?B?eTBXNk1nSmsvRmNuaFBQVTdtRTZTOXJZS1FKVzBQYjhHQVFJSTlMeW5EamNZ?=
 =?utf-8?B?OXNBTjN4elJQbHlPN25iNUpuYWNXbENNcDNab3JhT0FOalIwU2JQVEsrYlVD?=
 =?utf-8?B?d3R3NEM4aWJkbTExOCs4eGNMaEJvZVZXYUtJcFU3RG5oWHJKbmtxV3BwYkh2?=
 =?utf-8?B?S1IzbDhoV3NMT05aQU11dzljaC9VTXRlMHYwdzlEV1RmajFZM29ZVktiTUxt?=
 =?utf-8?B?dXJzeUdwcWdlT2ZBQ1BsK2pQbUlhZGtzYTlBRGJGbXVwZ0NHeHg5cjVuclli?=
 =?utf-8?B?MGtSbjQ0Ly9jV1JUU0dQUVlqWnc0WHlMUjlOcW1CTGFyR1F6SUdaMEl0d0d2?=
 =?utf-8?B?L3ZQcmxnbDl2U2lkcGlDZUljcElZZi9pUVhjYkJBckh4cjVCWU5LaU5ZSWxm?=
 =?utf-8?B?OXNZSTYxcm1KVWx1VnJTeWNTSXJBM3Vvckw4UFhSWjQ5aTUwamdvY1BHdytY?=
 =?utf-8?B?WHNQWERZYW5EY2tLK0Y1eHNmSFoyRUNhSmgvc2h4UHhGSlI0QTVnNXRZWHpm?=
 =?utf-8?B?NGMrVEx6RmNNYVVRT3dDRWRUbWdOUEFwYnRnSzFNT2xmbTcxL0pYT0NCR1dO?=
 =?utf-8?B?a0JGbzFNOHlVNGVhUjV4OU5GZW1YN05DbDBlbjZoZnFtS0J1dW5pNDczamRT?=
 =?utf-8?B?UGxlcUwra2F1V2VteFZML1dGYmVPM1ZTYlpOZ0xIOVU4dnNxTHNDOStNb1ZG?=
 =?utf-8?B?QU9hQmx0WitZMkhCcXhMOWxxQmFrM2FsSkE4TXg0c3UvNzZGQWNhZGlVSC8z?=
 =?utf-8?B?NXIvOWZ5V2hMUVpsdkU4a0k4NldzY3JVWDMrKy85RUFjRjcwNWw2VVMybnpH?=
 =?utf-8?B?eC9LRXhvYlBBTTJRWGFxVmRpNCtRVUpzSEJSVUZLdnIwYVQzQXlFY3hrNzk1?=
 =?utf-8?B?bDV3VFRCcEZnTHJGNGJEUldzNzloMzVnR25zNmY0RlVMQkZJak9TTitnUko5?=
 =?utf-8?Q?E2y0ueVyWLW8HC6AXxlUSFz3Mlvanw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d2xZWlJOajNvQ3lBd0trbjdCVHRqelJiV1QwcWJ5UzVtTXd1a25uc0ErdU5p?=
 =?utf-8?B?YVJiUmRENUdKd01QancwMFpMSitycUJDT01aYStKVCtieEhrMFZWQkp2YkZ6?=
 =?utf-8?B?cDlteUNzcUhrOFBMTVBNRHlId3loUTc3VkJhV041TjVMMkJwTS9jZVpRU3VL?=
 =?utf-8?B?SEErRThDL3dKd1ppcmhwMlg3WFcwZXlHbmtnTlpvSnhkSk4vcUExdVpsRDlz?=
 =?utf-8?B?cjZwdUdUeXJLNUFrcUdLL05CQjlIcGc4eDRvNE1vQVpBMHdTd0lWdFkxbWo1?=
 =?utf-8?B?MjhZUkFJaXhKcy9BOHFHU01OM1VjcVhSUng4YmpLZkc5TTJqWlpHSVpyVXhZ?=
 =?utf-8?B?UTBrN0llU0hyQUpsTTVBNUczOGlZMEZIT0FuSzN1MFNUN0loNlMyWU4rRC9W?=
 =?utf-8?B?V0dNT1gxb1ozNVlGWUFVQmxteW9QOVdSSFJZc0p6Y1VLa21adnhLYTdtM0xK?=
 =?utf-8?B?T1gvRVJSamFKNk55Ky93QnZCV3JGSEc3Rk5oa3BGR0pPNE1XVllxV1kyQVZ1?=
 =?utf-8?B?NHNIY1pwUnNoVXlCcU0rUno4Q3VSL3ZuWG9KcDVaN0NocVNwaGpZSnI5Y1du?=
 =?utf-8?B?cFJpZSs2ZGlPQjlQUlBaVFFRQlRJL0VPZXcrSTlTaDg2bm5GRFNRbEE4VFB1?=
 =?utf-8?B?bzZwclhZd09NRHg0c1FnRXBhQWNWV0tzUmVuSjA2aExIYVJ6SWM5UlJhay91?=
 =?utf-8?B?SWRvWVdsa2VHcVM4TnY1VGV3VENsVFJnOXNUNGhhM1p5WGZERHc3V3QvZVBs?=
 =?utf-8?B?WFo1cGlhRGs0OVllaS9LdHhrVnAzbzJTQ2tqemJjSmVSUzJvUkR5MTlzMlRX?=
 =?utf-8?B?MThjTFdBVFRUTXBqdTloVGNqYlJkWGowY3EvK08xUFl3T0xsRHM0OURKYTl6?=
 =?utf-8?B?d20vMVg0cCt1NElTUGE0V3NWdmV1cjZ2WTdRVFRtMnNKdlBwekRFaWluN0Ru?=
 =?utf-8?B?TXl3em9TdlJ2eG5Oc0xpSEY1ckZLVkdsKzhLQXU5eXlDR1pWSW9hWndxaTdr?=
 =?utf-8?B?cCtQMDJQWWZTa2xURU9BSXQ3Tmxub3lIaFQrWXd3dStiTFNmK2k4ZCtwUFRr?=
 =?utf-8?B?Y21JSVVFdnRSR3NwejN6R2dLOWp0TXM4UTVJYlFKTnRqQml1MVJ6UG9GYyty?=
 =?utf-8?B?NVJldklaZTZUcmZ5TFYwT1F0MHdBSnVkSE1WZitOSVRyT1ZBUzdrTXN4TVA1?=
 =?utf-8?B?RGFvWUgvYnJFY08wdnNFVEZpSnBENXhMMms2WDBaRWFvbHFvZUlva3BidENo?=
 =?utf-8?B?cDBqeXp0Y2FUVk50RGZCZmprMDF3RU9lNlJiblVObHYvVXpnTFRYRlJvWFc2?=
 =?utf-8?B?U1Bxbm94UkhnWEY0RDlMUUxTZ0M1VnluVmpFMXJwWlRnaFFZT2ZOQ3ZvRU9R?=
 =?utf-8?B?S3U4SVQzVEpWOFUxTFUvaSt2NnQ4c1E2ZnBJclY5R09PbUNmZSs3OTdydFRx?=
 =?utf-8?B?MzA3SlFjSjQybmVNK0cvMFNyUjVjbWY1TEMwQ2hVelpsYnU4V2djS1BCK0c4?=
 =?utf-8?B?Ui9aQ0IxcFYxM3RXRTNJcHRZYW1QQm45QXVOc3hBOCtyeWtmNjZEd1h2clBx?=
 =?utf-8?B?NnN2QzFSaHNmS3plWElEdnpEaXArVUpQTHVTWkdUalFhZmFUUHd6dDJJYnEr?=
 =?utf-8?B?SzVJRmtNTlN6b2xKYWtPbTY0TFlnRlpuWjJwcE92eVIwMDNEZDF6TzB2c3FF?=
 =?utf-8?B?M3J2NVE4OTNOQlQ5V1RrMzBFMEp1OE5XQlhOcG16eE43TFBEN256SGVzbGF0?=
 =?utf-8?B?Y2thaW5FSFhRMlVCd1c0RWFJY040SDRpd1JET2FlNTNjK0NPV3pjWFJTSS8w?=
 =?utf-8?B?Q0xTcGRlaDkvTmFXT29BS1FzRHhicjRpNFZPaDVWOVFhcGdqY0lubU9aWktj?=
 =?utf-8?B?bi9JS2llL2VRc3hPVGxIYklPaG1BMHpKTGptWjZucXBvb0lNWDVNYys2WUYy?=
 =?utf-8?B?Rm1SVXVQcmhwRDVlTENwdVYrMmZuRnZpN2pEYUhKMFIwS2VkSmRMWVpkbnB3?=
 =?utf-8?B?WnlIWXNOMk10a0ZLSlJLSU95cTBTOC96ck9sa3lJdzJVdGI2ek82d1BHdURh?=
 =?utf-8?B?MDdPV3RpRWtsbmphb294a1FLYlZieUJFSlNLSEJ6U2JpdXdZcDZKSDIraFMv?=
 =?utf-8?Q?f1WInSOdXFliOoJD+og28cznz?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81258a9a-8818-44c6-4d33-08dda86b06ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2025 22:06:18.7106 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qNpy8CxWOEeztCUiqNsSY4NDE62t6at+Eakl9cDvhJO+xc2163XomTF6RXAjV3fGhlEUTLNn0gzYHZGZX2R4Nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5132
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgSnVuZSA5LCAyMDI1IDc6NDEgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggdjQgMDcvMjFdIGRybS9pOTE1L2RtYzogTGlt
aXQgUElQRURNQyBjbG9jayBnYXRpbmcgdy9hIHRvIGp1c3QNCj4gQURML0RHMi9NVEwNCj4gDQo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+
IA0KPiBTdXBwb3NlZGx5IG5vdGhpbmcgcG9zdC1NVEwgKGV2ZW4gQk1HKSBuZWVkcyB0aGUgUElQ
RURNQyBjbG9jayBnYXRpbmcgdy9hDQo+IChXYV8xNjAxNTIwMTcyMCksIHNvIGRvbid0IGFwcGx5
IGl0Lg0KPiAJDQo+IFRPRE86IGNoZWNrIGlmIHRoZSBBREwvREcyICJjbG9jayBnYXRpbmcgbmVl
ZGVkIGR1cmluZyBETUMgbG9hZGluZyIgcGFydA0KPiAgICAgICBpcyBhY3R1YWxsIG5lZWRlZCwg
bm90IHNlZWluZyBhbnl0aGluZyBpbiB0aGUgZG9jcyBhYm91dCBpdC4uLg0KDQpZZXMgQURMIGRv
ZXMgbmVlZCB0aGUgV0EsIHlvdSBjYW4gZHJvcCB0aGUgVE9ETy4NCkRpc3BsYXkgMTMuMSBBREw6
IDE2MDE1MjAxNzIwCTogQ2xvY2tnYXRpbmcgZm9yIHBpcGUgQSBETUMgYW5kIHBpcGUgQiBETUMg
bmVlZHMgdG8gYmUgZGlzYWJsZWQuDQpCaXQgMTIgb2YgcmVnaXN0ZXIgQ0xLR0FURV9ESVNfUFNM
X0VYVF9BICg0NjU0Q2gpIGFuZCBDTEtHQVRFX0RJU19QU0xfRVhUX0IgKDQ2NTUwaCkgbmVlZHMg
dG8gYmUgc2V0Lg0KDQpMb29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2Fy
IDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jIHwgMiArLQ0KPiAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMNCj4gaW5kZXggYTEwZTU2ZTdjZjMxLi5iNmFjNDgwZjM5
MWMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1j
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiBA
QCAtNDg3LDcgKzQ4Nyw3IEBAIHN0YXRpYyB2b2lkIG10bF9waXBlZG1jX2Nsb2NrX2dhdGluZ193
YShzdHJ1Y3QNCj4gaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gDQo+ICBzdGF0aWMgdm9pZCBw
aXBlZG1jX2Nsb2NrX2dhdGluZ193YShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgYm9v
bCBlbmFibGUpICB7DQo+IC0JaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDE0ICYmIGVuYWJs
ZSkNCj4gKwlpZiAoZGlzcGxheS0+cGxhdGZvcm0ubWV0ZW9ybGFrZSAmJiBlbmFibGUpDQo+ICAJ
CW10bF9waXBlZG1jX2Nsb2NrX2dhdGluZ193YShkaXNwbGF5KTsNCj4gIAllbHNlIGlmIChESVNQ
TEFZX1ZFUihkaXNwbGF5KSA9PSAxMykNCj4gIAkJYWRscF9waXBlZG1jX2Nsb2NrX2dhdGluZ193
YShkaXNwbGF5LCBlbmFibGUpOw0KPiAtLQ0KPiAyLjQ5LjANCg0K
