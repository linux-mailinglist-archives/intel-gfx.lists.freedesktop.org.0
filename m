Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GrcpGYe1KmpzvgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 15:17:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A180672485
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 15:17:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UYrC3pRX;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AB2510EF35;
	Thu, 11 Jun 2026 13:17:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD86010EF52;
 Thu, 11 Jun 2026 13:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781183873; x=1812719873;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=zBYrSQ6+a2kzJfbYeqWswslbPaOEa3qcx5GnTV1zWsU=;
 b=UYrC3pRX60/sGHoEZAul9cC4LUWarDlfzNXKB9B19RnhjjotZDwjCTd5
 ikR4gu1CuiH3lqEid48vuQiLFokXkzf4u9pLcaaUujYFYHGnXo6QkC5Fm
 JZ+hl5/SRj5zuxggooyAMib8+36pgd32ifjkQ6U432G4q8SK6T2l4SO3p
 rw2zszadStZgAe67DjxZGXn9GLohLoMjyQiZO/BALbZIUtUJqDIGtARx0
 fy84nuXYRF0VzYv/hyQwGNjcep7HnkJbDL0gu7A9sZLBu2c2LE2L3XICu
 lB3KQRGl0ZQ8Oj046qhtqbdsnSvdIFogtQCLOE6HmYuBX/mGHSOyRu3eN w==;
X-CSE-ConnectionGUID: qiaS8kSuTeG62egzMygH2A==
X-CSE-MsgGUID: b6sYMMG7SJismqpIF2EEJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="92560227"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="92560227"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 06:17:52 -0700
X-CSE-ConnectionGUID: omLAV647RxiXOrkrXaNq2g==
X-CSE-MsgGUID: Bnye8p3pQDOCh/WdD0oaew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="276667307"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 06:17:52 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 06:17:51 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 06:17:51 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.62)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 06:17:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u2oHujnJIm1HzKqf4nsrVb8vpEibF7pTd9uX1vWNIi1bgi4SnPmo/4EFb4QLV5WPMTMWLTLRN2fnRaFQs/FycaUeMCr9tzEUsmv2f+MSUMgS+Q6dem7lGaSaI3Mqttp8uv46dHTB3cvtmGWj137YQmwd6Mi8Ne1ZCAvzN/2u+5tptCPNL4xc9OL9nkZ5lqQMJz4HGHG6NhFQAgK+Bi6vWeX1HI2xJdXZ+f0dowVYC/Zv5q07tJ8fr/GvdofKNo6rdhm86lC4CGI7O+foC+ZNP4dlhqz5FBCH8MDNMg+CsVwSdXvkCePUSqqnzhjfidJ0dpQu7+wg7gHngQuQ6U5Ffg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zBYrSQ6+a2kzJfbYeqWswslbPaOEa3qcx5GnTV1zWsU=;
 b=Yj/N+f95goD8G+ESOSjgX69L41vFxrWkuf8HrT6L6H/o6T9tojLeDopLhYrNIaZ8qzQoS6xDuJEpBjDgUQmn92Wka45uvKdMvHDmVKzmO6CvFcIZX12/AKvvEjC2bNeDWIy/oXPGo/gywadNcps76NfD+MJKXNanvYuI6XAfPAkyMxCKhoA2iB5FzT2iGlRbY3ipUJJqzptiSJ7LjvKRZlXWnBd+4IbrLssB7FXg80jLVgRSJk9rUmfijwOGazarvRpxFBYJbHPMAriBM8J53tPfv0D7nIoWGGyQqG8KNnNvZ2qEdOBbzre6NjaZr2oewR4DFpA7yJaQx4XtFxaCIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN0PR11MB6088.namprd11.prod.outlook.com (2603:10b6:208:3cc::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.13; Thu, 11 Jun 2026 13:17:46 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.21.0113.013; Thu, 11 Jun 2026
 13:17:45 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "fuhrysteve@gmail.com" <fuhrysteve@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: guard intel_alpm_get_error() against
 non-ALPM sinks
Thread-Topic: [PATCH] drm/i915/display: guard intel_alpm_get_error() against
 non-ALPM sinks
Thread-Index: AQHc+aFzMsB0yiBl5k6d9gDJ5NOUGbY5VhyA
Date: Thu, 11 Jun 2026 13:17:45 +0000
Message-ID: <1806377d0f51b9b26ade6d428cd124e2bcb053bd.camel@intel.com>
References: <20260611125408.676626-1-fuhrysteve@gmail.com>
In-Reply-To: <20260611125408.676626-1-fuhrysteve@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN0PR11MB6088:EE_
x-ms-office365-filtering-correlation-id: c3f48ad1-3987-4a65-4e44-08dec7bbd3cd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|10070799003|1800799024|3023799007|11063799006|56012099006|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: MuULfHyl178ePjT9ua03nmOuY9NwXOh3UXYGsYpb+0E95N1eePdpyKXEmbGfCzRQ6uDIsqIvTa/cT2dL5NpnIHM4M0sVnmPRijcGVXyo1JdDYpxeRkpx9GS8XKXDMM8r/BJWTOrUb9/Wy1veo9s1/93/di1pPHG6i7+vmDBQRugkHR6/x08nT1Dj+7uVZ5BP06/YuU1UkdTaPKc4gABK5NvXv+TPAO42fMBznvUQd0cMMkVvXP8pXc0xdXuHcT/9p+Sd7mdsIBtWyoIWJJeyCxafaAqRp5SlaHrZ3g2MfaFc8faH073RRpuMmQh2Adc3r4humwGra0nMd3ZWICLE62z2xNkA9ywxGbJwXFNWxXlDMn05zD9z4ml5caStTiIB50ulsC/0i8jOKvIU1rCBGvTK3d6wuIxsOsIrlnth5G5gvlIKDPhDlXRwpFjlp9TKJHlkIcaTUERH1Uz8eD0or/2REUR5SUk7jesMYty1YvsH/w2xEPv6boDxx/EoGQ6OckGsVPPv2EI3Ie9zu9UaweCwzVFP3SPp0NXT/nDWXx1V1lwKYX+s9FjKWYwXs/IO0mIpIwgq4p1aiuBj/1pU3diyZJjofcFzWMk55ndAjd4V/LBDm2LlkcGhPiA0WbKFuJehiQNTd4mKi/g7Qm7B5iJBd1onSx4jjN7qqnO5abp29d3vA989vEVaiq+9qLLD0URzocJ0B1f/CTgAyZxdDIah1JiDV6Ouy/v8HofzyRKEmz0MvN9AaLFeSkBfgagU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(10070799003)(1800799024)(3023799007)(11063799006)(56012099006)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eit4NzBlYkZ5TVpPSldYSXZjK0xXSWo3aDlnS2wwWWtReTNVcGJPM1lRUVhX?=
 =?utf-8?B?NHRHMlgzdHlTOFVkTyt3YVlvM29CbHZWbHNxdkczRTZjMFNuNnVrcFlQSWJp?=
 =?utf-8?B?UktJeFZYd3JXNlJ0Z3BtdFlvVnJqc0h6Q0tjM0VkUTlNZ1o4YTYwUWV1Qnd6?=
 =?utf-8?B?YTlXbURDVE4wb1laa2NCZWJDR1FzcEZQckdxaW91T1RuWlRwS0sycG5NUGUx?=
 =?utf-8?B?cU13c3NpNTdYUk1qSmIwaXg5NHBiSnlPcjRYZERZTkdWSUxjR0p6UnNsS2tC?=
 =?utf-8?B?VUJ0YkVzM205ZXBRK0FvaGQvdUhmNDJ3MkZaclZGT0s0UGFyMVgwVk5qZEo1?=
 =?utf-8?B?TVBUdkFtSS95MlNBMStDaVg1VHhFTzhtQ3FNanFhMzVkaWRCcHAycUJHL2Vl?=
 =?utf-8?B?K3h2RkZqcHZlT3lpRkQ1RkEreWhUY282L1V1VWRGZGszTHhyVFZuVUh0NFNQ?=
 =?utf-8?B?UWhuSmkzYWN2VHM2d2NzcVoxc0dMUDdPSmtxczR6OG9DK1ZpUVlPdzhBdld0?=
 =?utf-8?B?MnBVTHVjK2EzeEhuNHgvZnc5Vm90ZnlvQVVXUDVYUkJuVWpVQnVkMjl5TnFh?=
 =?utf-8?B?NlU3Z0E1TjlPQnFITDE0eW1tMnM0LzB0SlRzZGNyZ0c2bVZHdTQ3OStaTE5C?=
 =?utf-8?B?ME4vZTJwZXplNHFuN3Q2RUd5Y3IzMDB6SEdlZkZBMGx6bGJzNFdITGFNYmk3?=
 =?utf-8?B?Yys2dHlMbzN5Q3VoRFBRMldlWkRib25uVWVlYmZFaFpOQXlvNGQ0cFFpdEZk?=
 =?utf-8?B?Z09MdHNXOGVaV2NUM0ZBN09pNjJvRnU0UmZ5NGpPZENTRTFtenp6OGp2UnpH?=
 =?utf-8?B?cjJMWjByeHozaVdQVkZFQkFQUFNwTy85RUswTldPd2YxaUdzRzRyMHIwYU1N?=
 =?utf-8?B?VFYzaGdkWVU1TkoxanhSQjExZmJRdFRoKzB3WjRLVERKUG9VZjBPWkVyTTBV?=
 =?utf-8?B?YlJxSnNyRnhjaHczUWk4dGxjNCt1MUNDOGZyLzdiaXdqWWh4NWRnanFuL2N5?=
 =?utf-8?B?Q2M3MGpvelNzTGFZUk9URWh1YXltVlZLRkJQZ0VIS1FDM096Z29uR3Y4TWNp?=
 =?utf-8?B?UEVPRzVIYUJYdDN3MHNBRTNVKzZMLzA2Sm1wRTVPS3pRejhuN2JzYW80UEtD?=
 =?utf-8?B?bTR5RWU0NXM5Tk1wOC9nN3pkTlJPVUJyaWttbUQ2RjRKTE9XMitDZlk0TWcr?=
 =?utf-8?B?eUY4L2g0NGRwbHFTK1gzR3lENTdNbTJsVjFJNER4NDFZMmp6MUFtazdISDM3?=
 =?utf-8?B?MXZBWFROUGMxMWZzeDZuZjM2bmFUajZlS1ZjRExwUlR5aCtLZkhwcDFMZXJG?=
 =?utf-8?B?ZXlmUndlVnhUUVk0QXBJNHhBbE1zNmgrc05KNXVnSW5oRlNZbUZkYU1XZXRE?=
 =?utf-8?B?b1VMbjB4aHlNdzhkcjdJYXdDMmZIZUh6YmV4K0EyRHhOL0E5SWhQVGlnT2t0?=
 =?utf-8?B?MVN2OUh2ekpySmZXTmFTaGQ2cUxDQ2V4SHZGbG5Ja3ZQdTN2V1JhbjlnUUFt?=
 =?utf-8?B?UjgrbzZOMDRrR3VrMGlYL0FnSFlBQitJc1NraWpvYjJnRmU4aVZwWExzN3hN?=
 =?utf-8?B?ZHJrNERrbUFEdEQyRWF3b09sZXlyenNJcmFwUnV2SnkyQjZrREx0Skx1RXVy?=
 =?utf-8?B?RmhGTDVrbzljTk5qbUhySTlSOXQvQkNwOFB4bCtsbUZjVUdoei95SDMvNDYy?=
 =?utf-8?B?SmZkelVsYS9oOWpXRlNLTFplS2laSURlaTNXbmRWMGh4OVpjQlFzVk9UWkdr?=
 =?utf-8?B?b0E3U3lqczJzYmZ1ZFNqU2lwU1pzcnVOSXVWYjNTK2hnN0ZYYm9COVVoMVVk?=
 =?utf-8?B?d2ZJYThKWnhjTmczTFFRSjdzVHRzaHZrbnE3bzNzcjVUcjdhTlg1K2VhZnIy?=
 =?utf-8?B?Qm50TnZmNG43OStlTWw5MUVzYW1sMEl4b05xNFNJaldBVGtod3ZFK1hhYzRx?=
 =?utf-8?B?T2p4ckl0UFNhTytzMENBMjJjdENtZk80blc3Wk9vMnJWVTdxMEtkeE4yS0U5?=
 =?utf-8?B?Qnk0TEFZdTRRQlg2Zm90dFFxQjFRRGVNNW5KRnRkeG5qTmNZQ0Q2RmtrQXVG?=
 =?utf-8?B?TDNucHdIbis1L0pTWC9CRlZCUnp1S3NKTHpxaW1IYTVxbWU2SXA0VFhQNHFo?=
 =?utf-8?B?VmJqYlNoVDBjcWV6anlEVTE3d1BBRkZhbUJDZHQ2eVhkRDE2Q0pDOFM3SE51?=
 =?utf-8?B?R3R1UW1XT0xISWR5YmhMdHg4Q2YxNzhxQXhhK3YzVVVJcm9qRjJlUnZ1VlVq?=
 =?utf-8?B?T25zdm5IblhWaldQTmxwZWNHNysvdmQxUzlVY3g2cVlnMFBoc2RzYmttcEJB?=
 =?utf-8?B?Wi9EeVU4a3krZS8vVW9OamdydDhOaFFnci9pUXZuOWxJVzRiYWJUcWx5SS9L?=
 =?utf-8?Q?oe4b6JyMZsNVHjdl6MxPkthsBAzgZtdBi3NOFA+O4YRIw?=
x-ms-exchange-antispam-messagedata-1: J3PJYbBT3VhsuSeJ/ulFatkryPttuJAmduc=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3CDCD1A994AD054BB1CE8C5D6BF93DA9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: TFXX7+0N7IplT9DapCoEqzIT5WZOjiBkUOLQ2UmBi6tZEkrQGFvzbhFOOeAbxRfvnwVMHGd7AcV68GsAUP9MCGf4yYDKEMbjkCXNXcEXpZD3QbN8honLG4yFHmKRMZWkzEgobfcyS+cY9MYY5pLBksBba32wxiG4YxiTaUvaB1NoMtI2ShkgdaUA7ZqacoK6uMAi8WiY2zLq+3/myz/htszwpm/aO/s/AJoMEfl/KK4aOjW5WL1b/zEoU0oIenYPJDhEKxeCko5rPkjMhLoO1BY/QIqkGxtmiU6TBpgOf6F/fD4YZjJFGZcdXMrMyTPjiQGLgSv816lqZ4sdmKV6pA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3f48ad1-3987-4a65-4e44-08dec7bbd3cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 13:17:45.8904 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kddxh+k9cHxjIbx78b1bB7rchRoRnReTRMrtZ/sJh4yVkHnjtlKZLGYeEra4gDdvP9PBbj6TO8RkDkSQoi6CzH/DpNQ09suRVNgjJ9jzMxM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6088
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0A180672485

T24gVGh1LCAyMDI2LTA2LTExIGF0IDA4OjU0IC0wNDAwLCBTdGVwaGVuIEouIEZ1aHJ5IHdyb3Rl
Og0KPiBpbnRlbF9hbHBtX2dldF9lcnJvcigpIHVuY29uZGl0aW9uYWxseSByZWFkcyBEUF9SRUNF
SVZFUl9BTFBNX1NUQVRVUw0KPiB2aWENCj4gQVVYIGZyb20gYW55IERQIGNvbm5lY3Rpb24gdGhh
dCByZWNlaXZlcyBhIHNob3J0LXB1bHNlIGludGVycnVwdC7CoA0KPiBIb3dldmVyLA0KPiBhbHBt
X2RwY2QgaXMgb25seSBwb3B1bGF0ZWQgYnkgaW50ZWxfZWRwX2luaXRfZHBjZCgpLCBzbyBpdCBp
cyB6ZXJvDQo+IGZvcg0KPiBhbGwgZXh0ZXJuYWwgKG5vbi1lRFApIERQIGFuZCBEUC1NU1QgY29u
bmVjdGlvbnMuwqAgT24gc3VjaA0KPiBjb25uZWN0aW9ucyB0aGUNCj4gQVVYIHJlYWQgZmFpbHMs
IHByb2R1Y2luZyBhIHNwdXJpb3VzDQo+IA0KPiDCoCBbZHJtXSAqRVJST1IqIEVycm9yIHJlYWRp
bmcgQUxQTSBzdGF0dXMNCj4gDQo+IGFuZCBzZXR0aW5nIHNpbmtfYWxwbV9lcnJvciA9IHRydWUs
IHdoaWNoIGlzIHRoZW4gdmlzaWJsZSBpbiB0aGUgQUxQTQ0KPiBkZWJ1ZyBvdXRwdXQgZXZlbiBv
biBoYXJkd2FyZSB0aGF0IG5ldmVyIGVuYWJsZWQgQUxQTS4NCj4gDQo+IGludGVsX2FscG1fZGlz
YWJsZSgpIGFscmVhZHkgaGFzIHRoZSBzYW1lIGd1YXJkIChESVNQTEFZX1ZFUiBjaGVjaw0KPiBw
bHVzDQo+ICFpbnRlbF9kcC0+YWxwbV9kcGNkKTsgZXh0ZW5kIHRoZSBzYW1lIGxvZ2ljIHRvDQo+
IGludGVsX2FscG1fZ2V0X2Vycm9yKCkgc28NCj4gaXQgcmV0dXJucyBlYXJseSB3aXRob3V0IGF0
dGVtcHRpbmcgdGhlIEFVWCB0cmFuc2FjdGlvbiB3aGVuIEFMUE0gaXMNCj4gbm90DQo+IHN1cHBv
cnRlZCBieSB0aGUgc2luay4NCj4gDQo+IFJlcHJvZHVjZXI6IFRoaW5rUGFkIFQxNCBHZW4xIChB
bGRlciBMYWtlLVAgLyBpOTE1IERJU1BMQVlfVkVSIDEyKQ0KPiBkb2NrZWQNCj4gdmlhIExlbm92
byBUaGlua1BhZCBVU0ItQyBEb2NrIEdlbjIgd2l0aCBleHRlcm5hbCBEUC1NU1QgbW9uaXRvcnMu
wqANCj4gT24NCj4gZXZlcnkgRFBNUyB3YWtlIHRoZSBlcnJvciBmaXJlcyBvbmNlIG9uIHRoZSBk
b2NrJ3MgdXBzdHJlYW0gRFAgcG9ydC4NCj4gDQo+IEZpeGVzOiAyMDYzMTc0YzIyZGEgKCJkcm0v
aTkxNS9sb2JmOiBDaGVjayBmb3Igc2luayBlcnJvciBhbmQgZGlzYWJsZQ0KPiBMT0JGIikNCj4g
U2lnbmVkLW9mZi1ieTogU3RlcGhlbiBKLiBGdWhyeSA8ZnVocnlzdGV2ZUBnbWFpbC5jb20+DQoN
CkFzIGludGVsX2FscG0uYyBpcyBub3Qgc3VwcG9ydGluZyBub24tZURQIEFUTSBmb3Igbm93IEkg
dGhpbmsgeW91ciBmaXgNCnByb3Bvc2FsIGlzIG9rOg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2
Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gLS0tDQo+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMgfCAzICsrKw0KPiDCoDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5jDQo+IGluZGV4IGE3MzUwY2U4ZTcxNi4uNGJiMGMwMDc0MWM0IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBAQCAtNjEx
LDYgKzYxMSw5IEBAIGJvb2wgaW50ZWxfYWxwbV9nZXRfZXJyb3Ioc3RydWN0IGludGVsX2RwDQo+
ICppbnRlbF9kcCkNCj4gwqAJdTggdmFsOw0KPiDCoAlpbnQgcjsNCj4gDQo+ICsJaWYgKCFpbnRl
bF9kcC0+YWxwbV9kcGNkKQ0KPiArCQlyZXR1cm4gZmFsc2U7DQo+ICsNCj4gwqAJciA9IGRybV9k
cF9kcGNkX3JlYWRiKGF1eCwgRFBfUkVDRUlWRVJfQUxQTV9TVEFUVVMsICZ2YWwpOw0KPiDCoAlp
ZiAociAhPSAxKSB7DQo+IMKgCQlkcm1fZXJyKGRpc3BsYXktPmRybSwgIkVycm9yIHJlYWRpbmcg
QUxQTQ0KPiBzdGF0dXNcbiIpOw0KPiAtLQ0KPiAyLjM5LjUNCg0K
