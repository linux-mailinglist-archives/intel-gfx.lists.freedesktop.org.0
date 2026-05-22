Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EVCCCbiD2pERAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 06:57:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF355AED36
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 06:57:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7269E10E64E;
	Fri, 22 May 2026 04:57:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ejhYlAr6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AB7610E05F;
 Fri, 22 May 2026 04:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779425826; x=1810961826;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=zFGAPGJRG5yA85/F/NZ4omm2CD1DpKmA826BW7Cba+s=;
 b=ejhYlAr66U9DrDljFETTjJbETYkFk4Yxgb6N5GWZXlPAXwQwIT+Y48cx
 zrWZoSZV/AD/mQ7ezi/r88IJOTpD9yzcCyZrAv4jpFfXyAjr0FrtslhyO
 +amcHJyRz8iiviV/4AUD3iMCzv5nv85knTMHQHAafgGNAbnThH/jiYi01
 hDxNWb7t9N5nQhXMLOD3S24yIgR18OLxF1GoLL+2Ju3R7GVdpahFi+AdT
 TyUQzUF8StG1AiUM/feIEozoiT5XiLFeQzlQpDaVJa2wlhCO3O4mjLrXo
 b9icRlKiFO6D5ADX2AmcEjK87BeCAlS/NLG8QbTpGBcABoWoK4gDmN/zN w==;
X-CSE-ConnectionGUID: 8K5Zb35+TfmvfF6Vht8iCA==
X-CSE-MsgGUID: F0z9Cw7bSkO7qgMHhprp6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="79503686"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="79503686"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 21:57:06 -0700
X-CSE-ConnectionGUID: PimrV12wTPyXt8EbXEdRSA==
X-CSE-MsgGUID: X9vHZN5yS4uxLuf6w1DD5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="236379209"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 21:57:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 21:57:05 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 21:57:05 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.33) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 21:57:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JxrUUgGkl0RQ5P929NxTtF2VgEvdvXkC55iMy4yIdmtZZNklyLIv3qTHKzXuvrQW0QLzrxbJI6QUxT38FLs88Xrk0nqFNN7UvBcf5lDfaCVoCrmYesEbOA1s2m9xRTiLPb8hcbjNwzNRa0/f/FP3Choh+pQYIOfWcsybxUxp6qpNOFpX6uAq6KUkitqyi5T1i9rPOapbWmAbtkek0hr+v5nSulrPT8duAkXA6gQFtL78Jz6MTdJTGOLmae1S98BIb4m+RmxXlKYq2+7yF5JVHXC8SmtNfCduBLIMeJAJFWzMhaau/07FX+WJSXKIL3t47b8wmG1IDzzep8VLQjKoow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zFGAPGJRG5yA85/F/NZ4omm2CD1DpKmA826BW7Cba+s=;
 b=azpUhYm5zAXy9kb+MLzi5ZYRRFr9KFvu+F1GzeaRTVFNFBEfSfE5mEaGtv9nhC8ff6WdHWKY4RzciUEo60UmUBtdFmJJcLletX9vPiYaF5hDi9if5xp2O83SELbPTQf+XJGMXsuXRVAMgrZEqfziFV1pWonx47KS/r2y95PV7p3qDFr60Zys0rKs/m/5RJ7jJ/wCdpjswim04rdug+lKk9UJ4HqFT5tTh4LLd2U7eMBiC/hhx5I+2KcBUbWr+ckfDmG097/4AwWOF9ftsi5CNGo1PuG625sYyQa0YPDxym4Gq2hyIMM3OZRIqLbEZ7zLTSeqUqgsAe+ysShqfrC1Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA4PR11MB8890.namprd11.prod.outlook.com (2603:10b6:208:55d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Fri, 22 May
 2026 04:56:56 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.21.0048.013; Fri, 22 May 2026
 04:56:56 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915/psr: Allow SCL=0 on platforms with always-on
 VRR TG
Thread-Topic: [PATCH 2/2] drm/i915/psr: Allow SCL=0 on platforms with
 always-on VRR TG
Thread-Index: AQHc5gtmqwnDCMHQbkiBMgvnvGHxRrYZgruA
Date: Fri, 22 May 2026 04:56:56 +0000
Message-ID: <bc608194c78246026cc5c9e7eaf306b6413fc213.camel@intel.com>
References: <20260517142753.2813959-1-ankit.k.nautiyal@intel.com>
 <20260517142753.2813959-3-ankit.k.nautiyal@intel.com>
In-Reply-To: <20260517142753.2813959-3-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA4PR11MB8890:EE_
x-ms-office365-filtering-correlation-id: 900eb433-5616-4587-f153-08deb7be8cd4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|376014|366016|3023799007|38070700021|11063799006|22082099003|56012099003|4143699003|18002099003;
x-microsoft-antispam-message-info: gXUTfv9CrEzcP7ljwij6igwChaxbV3juBCHk6iryTBKrVTFunAQONOEzHt9M8XfzDt4Exm6fhPmgpVtr8kzGBNR9VBNXXFkpLBk5eRbMuSPy7J8yTPWnpdMTR6yWAQkng0lOnsFduFhiXR8+E5vg7twvG2mk6FLJ4gOkJPzStcuq9m7vh0a386OfGor0y6EaQ+kjb3ZXNYd2Ya5yHcR9S340R/9uJT5KdoQGnSi/BnPr8eW/8IS9aRtXAGkqs2wjCI/q3UAQlNp8A0jCuMg4QkiAjP336YwAdhGDXzsVzTkOZ81eEEX2wEHYIopt4m/zFJP6aWpvqJmGHIrGo6BwOodvnREzOQBig2ehzlbRSdXMflpLMM09GjywwhUP0MmXns4F/JjvqtwX0rzQaTad9GKm8r1a2P/mFYLnH2NsC2JNcQa0M0AFCd3rgtuxFhLQxyPT6ITgDABPE39euepADbvwqc0qYEk2AKtF89SV15GXe3F7xR904GDjdiJ4XuEYU6xJSXRVdP+dSAD4VMvLA8CMR0d49WR2Rn2zGl0WACoMsj0+tsQha+1CyteAIDdQ+Nry6X3u9WVA3lAoxVIbQeH+/ETa+Fk5MLtyEWvdz3ocLxid9gM5n8Sm72ahqem0gNfmsgqXea8arT8laMLAw6pYi2QbqsRhKedoRl32Wj77LR8JWS7if3PYCHVMVOdjV4DaiwSnIR05+xs6Q2IUX/GW09LmMfbBNPC6h+ANf2I+X1tHMvcDH89t3BZE6Sdw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(3023799007)(38070700021)(11063799006)(22082099003)(56012099003)(4143699003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N2lCMks5QnpuVFNHR1EzU2lUZWZZenFFY3B3Q0ZUMm51LzZ5WlJVVFRZdjF1?=
 =?utf-8?B?YWZYcFY5NDFYNmg3clpzVk9mRGZNclNrK2RqWllmWkc1WXBGbklFVmNqdWJH?=
 =?utf-8?B?ZG5BQnhHS3VsZ2NwMUZNMVp4TGJCWWpPcnptS2huNHhzem9IajBVanhpVzha?=
 =?utf-8?B?SHRWVXpCaHNwZlVVVUJ4U1ZmRUN4dnBnWnB1aEN6VXpKNjIxWTZVWVR2bHJR?=
 =?utf-8?B?b0taRTFrMjQ0RjJjL3lodFNUMVFVTVdnWmlHQ1VGMTJBQmQxaHpvRnBKb0Rh?=
 =?utf-8?B?K09BNUR5U3JRSGJ5U1NLQ0dsdW0ybldzT3pxVEZ1cVcwSkljWUtXcldCbWhZ?=
 =?utf-8?B?M25zaVcrbWVuckFEQUdtTkJISTJsNmh4c1dGQzVxcEVPNHozRml0VjAzODh3?=
 =?utf-8?B?cVhORWxzVHlLZlFVY0V0aSt6NnduNkFzdytyMUZKVk1MaXBxaW5DQ2NLMXVF?=
 =?utf-8?B?MjdLcDc0VzdNUkx2b1BkYm96d0xaVzMxcTFYVmZWSThLeWhRVnpFS1VYSDFD?=
 =?utf-8?B?bjJGMklwYkFtZloyM2xaUG1sRXJUUkdZZUp4QVVqUHVwZEtwVTdMRUdYcmUx?=
 =?utf-8?B?ZCtXb3Y2ak5nMHFQaHZ3ZW4vV2xTb2V0NmxVWEFPRGFUY0hsN25UektmNFNT?=
 =?utf-8?B?bk1ndDJLOGRkdy9Cd2JndzlWU0xpV0hsZWY1dHIwcnpzUjFRekFhcE8rVDZk?=
 =?utf-8?B?RDQxOFFjWm1saG5SODZCQ0JsNVRFYi9HZmFWaUZTcEtmSGRGa3F5YkEzRXJz?=
 =?utf-8?B?TXNMblY1UUt2T0xJY1FobVVIMmNGRjQ5S0tmSFBwK3JPYkRVY3VKWVZBU2NJ?=
 =?utf-8?B?ZlI1UW1iMTVzZy80VnlUNU1oV1pvWmVHS2p5V3BFaWNEUVUxOUxGWm5wMlph?=
 =?utf-8?B?enpTbDdQYkFLU0tLTmtDNXdhaTlKaGQ2S09LWGx2S3N6eExHT0JvbEdVRVdJ?=
 =?utf-8?B?NytRMVlzd3RPblNVVmQ4STIxSmdFRmRYLzNVaVdFR2NXMUVRUjB1M21QM3V4?=
 =?utf-8?B?RFFCcUdWcGpxNjFYcFFWcDZLdVdzSldWMmcxZCt1cjl4a1FaV0JHL0dCemJ0?=
 =?utf-8?B?ZklEaW9MeFpXaDNpRXQ4S09BSTVrYzNXRGpBR0lYN0JCQWNDVnRBTVpIL1RK?=
 =?utf-8?B?cE8wSE9rSGt0Z0tJeVBhRjJ0NnJrbkFMdjZhWXcrTkV2azFQK1BwcUp6UlRJ?=
 =?utf-8?B?TDRBT0RUNU9uRWdGekhEUkx1WFNjWUM0WklNODM4MndGbGdxS3NJclhvaWlE?=
 =?utf-8?B?YTBVUis1T2g3TlZvM2YvaFErOWhpTnlydmxFbmdVckoyTXRUMjlhRUQ3S2ZE?=
 =?utf-8?B?MnlLZldMSkxZTkJxQTM4anlRcFQ0OG5BL3laRDNnaGZ4TG9RdXNOTHJFUThZ?=
 =?utf-8?B?aURHVm1yaHFscFdXUkNJT2tpYU1XOUNzaVdxNVRaYUluN1NpcGZVVHpjV25E?=
 =?utf-8?B?eUhBOFphZVBmRDgzR0RCQkp6WDRZRy90QzZIbnd4RGp5dnNGa0k5QXRHcWZa?=
 =?utf-8?B?Wmd3ckE3N3NDZXl5bG1KcURINFlqMEJKWDRlb0JmdUxZdS9tUEhyQXlVUW1k?=
 =?utf-8?B?eG1ubVVKU1BUUXE0czY3R1VpYzhxREp2ZllVL0UzY0wrcXB6TUFtU0FHVzV5?=
 =?utf-8?B?bmUrWkM4RG5BU0RkbmpOWk9veHFQdnhhRTFZOFcweXV2cDNIMENHaERmM29k?=
 =?utf-8?B?aU5ob2hISzBhZ1B5MmJsU3pJMlI5eFlxclFkYVU5TDlhdGE3UzZLcnpENEFG?=
 =?utf-8?B?YjJ2dnorclBlNmxCRmdzeUgzQUZhZUQ5NGRrNDdBbWpLT0RNVVRlbzErbXdz?=
 =?utf-8?B?bTRuUWpDVHI5bWpUcDl0TC9YcFVmL1RMTXM5eXFHWDJOUFNDS1NCbDZwYlVy?=
 =?utf-8?B?U0JMVW1waEhySzNOMGJ2bkFxUnh1eDhlR3NZNTVVS1dJUUNFazYyWkxZOS85?=
 =?utf-8?B?MUt4RHdpbE5tQ0M5MjZ1Q1llaWtoN3Fnd1BvbGNXNzIxSzVoZjJTYTN5VEF4?=
 =?utf-8?B?NGhyeVNhVzlkNmFhemR6dFBEUE9SQXY3MmVKRGpBRkREdzZ3cERSNUkrS0ht?=
 =?utf-8?B?dGNnaWlzSmtUTG9SK25sOVFlY0JxSFFVcC8zdXZwNWRqZHdlRVdIS3R1L3Nn?=
 =?utf-8?B?cGh3NzgyaXNicjVtN0VGVnIxeGsvcm82bmdDTUdPSEVQMytaVDFFU05ZbXJn?=
 =?utf-8?B?R3R0MTZYQ0pPemJlSzJWWW8zYVNWSlN6SkhGUDJ3VWhsOWFrRTRHRS9ObGJi?=
 =?utf-8?B?Mm9VWS9sMXhGVTVuLzlhRmJueEQwM2pXRzN0SlF4WFVkYnN3QmYwK0tmN2Nu?=
 =?utf-8?B?WldlYzdkMWZsczVqamlDdE1GYUFSVkJxYXdEWGluZzJ5dTZpR3J5ZjNxUVRs?=
 =?utf-8?Q?6lzqx4JaMRJF7hR2e6nI2reH6fRoyDjhnVgK63nGsq+EA?=
x-ms-exchange-antispam-messagedata-1: lszvyIsUrDRrpUSRxXTQDRU5CwylL399Q80=
Content-Type: text/plain; charset="utf-8"
Content-ID: <40D9F953D835E4408353051AB8ECA5CE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: AwB5apSROe2ZlK05nnD5rLc61bOMxta47TIxU4FR4rdi+zsPp5cXFpFoMkzEX3f5CjxZHTqb5BgjeUTFpabqYsapxAhwso/QJ/GvWY5Y5wuCkg+Y5Mb2YJd1zsskBbSIsnvn8tfbB/1T1i9H78FR8F9RlEe1nT05JQr11MZzhA3AGe8MbhwzrHvUygu7Xb9ewF1sg9IR6zp0EPUzmrezkDJkPIYVBWotC2TmjBwhULka85/NsUGrcdVneeiyZTUW4TFJUeVKgxpjCQYBCoisCSJjDu6DTay9cZbZedWxG480SROxvCxBwRbC1NGXzuE4noFNw3g0Lb5A7lNpujvudQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 900eb433-5616-4587-f153-08deb7be8cd4
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2026 04:56:56.7540 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XijLkL44O6Syv0oXIdz6A5roX/qrV9HubyGOYBjeu5Li+xE39F42aCguBGIQXhDnHIqie4z/nWpuwQS906Zjjac5p9svwpQoHOyJILsDMaw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB8890
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8EF355AED36
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gU3VuLCAyMDI2LTA1LTE3IGF0IDE5OjU3ICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gRm9yIExlZ2FjeSB0aW1pbmcgZ2VuZXJhdG9yLCBpZiB0aGVyZSBhcmUgbm8gcGFuZWwgcmVw
bGF5L3NlbF91cGRhdGUNCj4gb3INCj4gb3RoZXIgU1JEIGNvbnN0cmFpbnRzLCB0aGUgU2V0IGNv
bnRleHQgbGF0ZW5jeSAoU0NMKSB3aW5kb3cgc2hvdWxkIGJlDQo+IGF0IGxlYXN0IDEuDQo+IA0K
PiBIb3dldmVyLCBmb3IgVlJSIHRpbWluZyBnZW5lcmF0b3IgdGhlIFNDTCB3aW5kb3cgY2FuIGJl
IDAuIEl0IGhhcw0KPiBvdGhlcg0KPiBndWFyZGJhbmQgY29uc3RyYWludHMsIGJ1dCB0aGF0IGFy
ZSBjaGVja2VkIGR1cmluZyBndWFyZGJhbmQNCj4gY29tcHV0YXRpb24uDQo+IA0KPiBBbGxvdyBT
Q0wgdG8gYmUgMCBmb3IgcGxhdGZvcm1zIHRoYXQgaGF2ZSBWUlIgVEcgYWx3YXlzIG9uLg0KPiAN
Cj4gU2lnbmVkLW9mZi1ieTogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwu
Y29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMgfCAzICsrKw0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCBmNmNkODg5
MDJiZTkuLmYwMzUwZTdmNzZhOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+IEBAIC0xNDg4LDYgKzE0ODgsOSBAQCBpbnQgX2ludGVsX3Bzcl9taW5f
c2V0X2NvbnRleHRfbGF0ZW5jeShjb25zdA0KPiBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZQ0KPiDCoAnCoMKgwqAgbmVlZHNfcGFuZWxfcmVwbGF5KQ0KPiDCoAkJcmV0dXJuIDA7
DQo+IMKgDQo+ICsJaWYgKGludGVsX3Zycl9hbHdheXNfdXNlX3Zycl90ZyhkaXNwbGF5KSkNCj4g
KwkJcmV0dXJuIDA7DQo+ICsNCj4gwqAJcmV0dXJuIDE7DQo+IMKgfQ0KPiDCoA0KDQo=
