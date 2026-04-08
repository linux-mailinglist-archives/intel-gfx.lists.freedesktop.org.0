Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMDCMlZC1mkFCwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 13:56:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E283BB854
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 13:56:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E278A10E61D;
	Wed,  8 Apr 2026 11:56:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YP4xsaPH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A03FD10E341;
 Wed,  8 Apr 2026 11:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775649363; x=1807185363;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=lj45JFe2qEOTyDT0Ax68R5YG1aM+owhX0cNDDehZ8CQ=;
 b=YP4xsaPHRwRci0qfPBE08yiIHPmvT0Dc1ZxY40w80bkeOLCF1TWJacm2
 b7oBHM1wrYaQHnZkgaSWLWNAbB8538YWWilXAyCXBAgl//D3ZqfbVUdMh
 s9DyOKFU1PZn/4LaX4NICq5llBGQ0KAxolMvJ7cHG96Qh9U0cjiIDteqO
 R3nmtANiix1LLTEbZPrEL7Oo3YhgkYBIhF/wo+Qq852RZHZVxEhZAaE67
 s4dyan7k7n8/GhwZLgY34pj0oH8n9kZc1xWJHPmD9IDsp9UXdhJ/6Ke0e
 ecCoNeMbIzIzp3mXrl6K/HXCpckSycdSjFDLbwHmrbvp3zKvGlXceUfbN g==;
X-CSE-ConnectionGUID: P/Ba7O8LS62KqlwDWLqeAQ==
X-CSE-MsgGUID: vXQVn4uEQn2dhXKm/hIC9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="99255600"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="99255600"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 04:56:03 -0700
X-CSE-ConnectionGUID: O3qZtmnGRPKQ7XPQgkwP3w==
X-CSE-MsgGUID: 3FDE1KGJRL+T9itfxELKsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="233324316"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 04:56:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 04:56:01 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 04:56:01 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.3) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 04:56:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ruy685u9tZe+bRWnkh5g77QUpB+SsO7eIMggyPL4hpZqB2yY1wquahqtlJmMQCoZQ7m/wkVX8yrJde5qz452hZXeR2knpzBEisXJ0jsqoUpANeXDBvMi3ghGFdDSMEt6VQcQITM/alH5J1O6jsvh9TWFog72aeLNgR6zL7WEmFHb1NapOsBi/AVpUQCr84gFmsPkXT2wq3pmhtPjSjysH6L8dvh7LbM7LGZ0TOlDHDyuWb9Ehcr4kPcL6QQ3rdYLy/QYaCuIGzzzYVt4Ir60AHyxPSXn+HvRsgZqa6MuFw0sTfLva/eIHupJ6AejGP26mjT8KPcmZyUfmE1WhxxNgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lj45JFe2qEOTyDT0Ax68R5YG1aM+owhX0cNDDehZ8CQ=;
 b=hcJBT3qS9SWdRNq4G8JrTlFEixd4FylkVepBZ28pCRy6M4Rfjfqg7At4X0DYlTb2/yYCJYMqMDsCqWe5h877MToyW+IAWrAanIDKa8riB0OznU9sb7Rq3/NOLcMJXJBmeEXohqz5ZJxsS8bGsvwSGQONs7H31NtFE7uHtMuACBCu6wfSn88RtBcEdWN+2SfJ7GoA+jX38MDpTWWWvGiP/+99jHWD3s8Nk+G5ze1hqYyVpRuD5vvdMcaC1wOVLLlASwLXXtZX3w0IzrIwLF9A3M8ZxhbYtj25dpM0TFtY3DYhzO5OZJLfO6mDuvvAiR5iM9dPj3S5/XmkKWDQ2QxNXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM4PR11MB5230.namprd11.prod.outlook.com (2603:10b6:5:39a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.19; Wed, 8 Apr
 2026 11:55:59 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%5]) with mapi id 15.20.9769.018; Wed, 8 Apr 2026
 11:55:59 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 5/9] drm/i915/wm: Extract skl_wm_level_verify()
Thread-Topic: [PATCH 5/9] drm/i915/wm: Extract skl_wm_level_verify()
Thread-Index: AQHcu5USDWxdI+o7y0+nNwLmOEykJ7XVJieA
Date: Wed, 8 Apr 2026 11:55:58 +0000
Message-ID: <a7e3e59eb3b30097970b3f00f399379dca6a3049.camel@intel.com>
References: <20260324134843.2364-1-ville.syrjala@linux.intel.com>
 <20260324134843.2364-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20260324134843.2364-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM4PR11MB5230:EE_
x-ms-office365-filtering-correlation-id: 82d7b9a3-96cc-4c91-6d47-08de9565cc9e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: n/vojmMcJcaCQ9QtzfYgsb+2OEv40PNXEUBXLZ6Ys9g5mxeFjo1bkWxqaAkN5nfhikhZ3J2M6CdQv9B1aWagf3fjmMmG5SL8xP/YkVX6B0w7PCOVhBiwpuejIqUMoHPPWc1sVVu6ccimeaj1qzRkrLRvjSAP03dbzp+DvlBS6LUPvUGxeVdcPrbnko/YOssbLkTKvXxKzHVMbdtVJVvdjaTOOc6hyE4KigZ9+P/+jXSoh0s9XWUUvrCuq0tTkJBc4vGeqx4n6uqGth7bb149ZxLGwKXWiMO3XPfcAIPi4sdwFULmzJgNlYYYFOFzI5E6sslGIxVDlpEy7Psqe8BD9tx9n+V4OrC5BHqJmuZh920rVmtdM6aqxYR1d02u82xKfa2n/ow+/+dGxRIT0DCnRleZTJLdPY9oTOkCu9qzHJokh4L8UcSXfiZ60PiK6hJM+3e9oCRk5KfM8UEYGjJXQNKRLBGSQ1AVXSH/QHjzzvnEMLsSFitspupuZNFZtjco8n0TcqOC/bbLf5gIkT4wEpyZPjIwgKkuyrI4HcY9tAcAvP94GW5Uoa4TdkRbf68zjLOr+CgkZfvzKsr8HdQd3o3bc6/5ZXo0z3XICbJVbtMbPmFz+TVhx2cZ+92cRbQrBWx87JlavaPgvVJHryxTEMo8kSc/EvwsiGoUyG088TJcSQIKknDWGjMAZQ0ewCvBlHbqbiC3On8Nh1JCiz1Qs9JZwpUaHXKG+46GQxJmRlikC2N1Jz+ldElK1SYa5PTNi9WpH9wbXvGNZxCLw5hvarEo7g4SLkwD/D2XsbuIe0U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RURTMGVPNG9HbHVnZXhSNGgvcFVMWFdLQlNJYjZhcm1TSmNqdXlmZ1hFNG1t?=
 =?utf-8?B?ZU8wR3c2enpnTnlZVUFLYkY1ZUZrZ0hxK1hWaEpqaEg2Rm9vWkNMNlZRd1NH?=
 =?utf-8?B?WXA0NHYzWC9SN1BhbU9ERm1aN01nc0tWbzdTSGljSXZUY0FlOE9TRUloQWVw?=
 =?utf-8?B?NWZBTFdiU1IwQ0ZqSUVRbnQ4UmZMUmFqZ052MTlvVGFyMXFRejJJSWlOcGdS?=
 =?utf-8?B?OXl4aUZ2VDEyYkdkUGJJOGNkckd1NzV1WGIvWjhySVVlK3lqSis2ZFpMOFVB?=
 =?utf-8?B?OXZjUS9ZTkF6QVJPVGc2ZmtVQTBpZ3VqY1VJaEJBUUZEMDJ5dDk2ODlIdm9T?=
 =?utf-8?B?YkNDMEZScFlqZWpZMTdYZFV1OG45QzlxbTFSeVdhZUxRdFA0cFRIT1lPajEv?=
 =?utf-8?B?Z0pMbkhvSEhSRjV1dCswZ0gvV0VuUVpsczBubVNteTFIL1l3T1JWSXB4bHhG?=
 =?utf-8?B?bHdQM05iRVRPUFN6K1cxNFZUdUpMd0R2TjdtQUJsUHpSaWR6aytPMFJTYkhi?=
 =?utf-8?B?R2RabmpNTFk3QnBJMm5reXJGcElmR1RwWmk2amdVZ2M4dUc1d1dSeVhIbjR6?=
 =?utf-8?B?UkxNUFFINnlQcG8wYVNVSGhzK3pRNDhDWVRIdENCUEthdHZjZGx2V2tSQitV?=
 =?utf-8?B?Mi9ub2d5V1UwWmVJa0EvSXRTZHd0QkVjRDV4QVFPajVPT2c2YU9Qa1BWYTJj?=
 =?utf-8?B?b0hGejhUR0tVdDVKS3ExY0pxVjF0aHpvN1BUdmswWGljbDluTmtaN0JrUkZ1?=
 =?utf-8?B?K3F0U09abHM3Y0tZbWlMdSsyZHVZaTY4RFJualFIMDhmcnJKZDQxeW1lRlFi?=
 =?utf-8?B?RG9GTEFxUUc3QzlheS9selk2TUp5RkpFS2xtVlo2cWNMRTg0RHVlR2V5OGNF?=
 =?utf-8?B?bEVhd2ZqUFpKbnAyUC9TSVV1dDdUZnRqcmJIL0tnaUp5Qy9ybE1KaDhrMmJO?=
 =?utf-8?B?MXhWU1p4ais4NGljWDQ1ZXRjbmR3dTVHTlJSSjQyWlZVamdtMGd5b290bWtw?=
 =?utf-8?B?MWQxNDUxNEk1ME1VbTlxcEZ6c0xrZDJCN1h5T0pxYmlVWFlsOEgraGNsMUhG?=
 =?utf-8?B?cGJQRjFBRFgxMklOVDhhOEpSZEVMYlJNbFpjSHphTGNjSHVLaCsvTHJBenNo?=
 =?utf-8?B?Sm5pZVFQb2U2WElIR0NSSVFmM2g4VUdjZHlyZlo1SS9nMGVod245TlhFempT?=
 =?utf-8?B?QmNBT3BJaFpKYVZjdTNKTkJGWktwc2JIc3ZEbko3TDV2UzAwRmx5WEZ2ZEZJ?=
 =?utf-8?B?NU1VTVFtS2thclBVZVJRUFNkTmF1RTZtcmtKWkRxaWV0anMzc3RSRE5jcUdH?=
 =?utf-8?B?Qzh5aWJQa3V1UFhmd1BDemozSjRzUXI1aVgzdHYxYnBiR2d5Z3FZaVN5T3U0?=
 =?utf-8?B?MTBWSFF4ZnlqWWRoSTBMRUhuaXFidld0Y05VMUhvNkQyTG1qa0lWbDY5Rnd2?=
 =?utf-8?B?NU9USXFzTHpwTU5kdU9uSUc1TldxblFzanJ2QklRblE4dU1mbkxlRGltSkZV?=
 =?utf-8?B?K1pDM0pEVExwcnBHeEJYSFdjV0VkQm5xQm5MdDBxS1h4ZnlmaTNxQzE5TzBK?=
 =?utf-8?B?RVpjMW5sVFRjaVVmbS80TERidjFpMHFqNWFWbUdHY2hCc2xIbzFreGJOOU9v?=
 =?utf-8?B?eEVQS3BjaHl5OFM2ZU9hamxpZ1YyMjdhNnlwNXNQcVdwQ0lIM3VxcHNCTVlZ?=
 =?utf-8?B?cmxJckEzSFA5Y0pOMkJLTTQwTG56MFRCWXlNckx2Ri81VU55TVMzamVQYVVv?=
 =?utf-8?B?aWs0NGR6Mzg0M01LWXZsMm5QOEdzMTI1dGdQYmkvOTZ3UW45azJhcm9RZlBL?=
 =?utf-8?B?Sm1RWXpZQ1NvODJzZmI5UDRZbnd0WXdZNDd2YVhWUDVaK1dOeGtJN0w2UHho?=
 =?utf-8?B?bXlmc1ZzeEwyRDJKb1lpS0owOGFaVVlmUWRKendHdW5UWjJSaXB4YURiSGox?=
 =?utf-8?B?VTEvUFRKN00raVEyaHRpcTVpOEo4cVdocHYwSy9WMnVsdXhoZ2xzNjBUVFNj?=
 =?utf-8?B?ZDBPR2pHT1NmSDdWRXZTWHNQVHc0cUhReno0VTZ6WGdJclBDVC8wL0lRU0lK?=
 =?utf-8?B?OHl1cVc1c0tlRmZyNnRUY2NtLytQdWpRVEJjbk4vZXBxWWgzRGcwWlJheG5W?=
 =?utf-8?B?bk9DSWE3VG42WVVvYklmM1J1bGNxVmZMZS9Pd2JyVVp6TnBjM1hPNVBUM2ZZ?=
 =?utf-8?B?U0hBWGU4eS9BRkpYMFlvbWoyb0cxL2Zva3dDVCtCaTlXTTVlYjVVem41YmIr?=
 =?utf-8?B?U2RzTTdJRkkrd1Uzc3VBdnFXbWF4TjZqeXRSUkMvcXBxL3grMm1tY29MNERp?=
 =?utf-8?B?ZFhSVzdwQXVNWGxHVkc0V1BtVmdYQndBWThGZzFHNXJqc1F2SUFaMlpLQVF4?=
 =?utf-8?Q?N/ULPxJKSThsKNDK1jRnOyO80//vB3+ENWQuilWVIeEsH?=
x-ms-exchange-antispam-messagedata-1: wc0b9Sxg7XptVFKfG7kVUpe7j/8e5QxJipo=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CD6AE73EB507FB42A0B2721707A9F938@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Ta3e6wzkpD042cWtl5aqVh6EuGUKTGwXoht14GwWog3oeCfqtMouNrqmuf3FjJWqKSDrfQ+9VDRbeYh5RGoG7B27I/6JRssuOdjm8vf1qeCIQe68rRg2y9VeJPFUWMZvO/oWTEgdWXRH2Jmzn/4CK7fyc7DYCyE778tB3NCPXq4Ut7dt62vL/yb2eS2kTFA4+w1AeUKIqjlUrSNIQ8q0N11OX/GIbhuPGJcvFebcibrv5Jg1Esr94RKid1s0S+CSUE193cHc8fjse6ObRPAGFFrPPsqZl40FbXQx2Q/LBuZW8XcGBQE3v5aHmQU+inqkVePW7I2DPO8jPQEbLbwrfg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82d7b9a3-96cc-4c91-6d47-08de9565cc9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2026 11:55:58.9872 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aTTBMe5h5+qbgILO/dTV60RMTODPdyaNYv7TJ74tmHtYnEiGuFqtMTO5TcDht972a1zjaQxc5T1AJjgrYtxBkb1CmfKcXkeVMzFSZE3FcOs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5230
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 27E283BB854
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAyMDI2LTAzLTI0IGF0IDE1OjQ4ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gUmVkdWNlIGR1cGxpY2F0ZWQgY29kZSBieSBleHRyYWN0aW5nIHRoZSBjb2RlIHRvDQo+
IHZlcmlmeSBhIHNpbmdsZSBXTSBsZXZlbCB0byBhIGNvbW1vbiBmdW5jdGlvbi4NCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFy
ay5jIHwgOTQgKysrKysrKystLS0tLS0tLS0tDQo+IC0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDM2
IGluc2VydGlvbnMoKyksIDU4IGRlbGV0aW9ucygtKQ0KPiANCg0KUmV2aWV3ZWQtYnk6IFZpbm9k
IEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+IGluZGV4IGNi
YzAzOTM4NDQyZC4uM2UzMjNlNDM0YmZiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBAQCAtMzkxNyw2ICszOTE3LDIzIEBAIHZvaWQg
c2tsX3dtX3BsYW5lX2Rpc2FibGVfbm9hdG9taWMoc3RydWN0DQo+IGludGVsX2NydGMgKmNydGMs
DQo+IMKgCcKgwqDCoMKgwqDCoCBzaXplb2YoY3J0Y19zdGF0ZS0+d20uc2tsLm9wdGltYWwucGxh
bmVzW3BsYW5lLQ0KPiA+aWRdKSk7DQo+IMKgfQ0KPiDCoA0KPiArc3RhdGljIHZvaWQgc2tsX3dt
X2xldmVsX3ZlcmlmeShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiArCQkJCWNvbnN0IGNo
YXIgKndtX25hbWUsDQo+ICsJCQkJY29uc3Qgc3RydWN0IHNrbF93bV9sZXZlbA0KPiAqaHdfd21f
bGV2ZWwsDQo+ICsJCQkJY29uc3Qgc3RydWN0IHNrbF93bV9sZXZlbA0KPiAqc3dfd21fbGV2ZWwp
DQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNw
bGF5KHBsYW5lKTsNCj4gKw0KPiArCWlmIChza2xfd21fbGV2ZWxfZXF1YWxzKGh3X3dtX2xldmVs
LCBzd193bV9sZXZlbCkpDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCWRybV9lcnIoZGlzcGxheS0+
ZHJtLA0KPiArCQkiW1BMQU5FOiVkOiVzXSBtaXNtYXRjaCBpbiAlcyAoZXhwZWN0ZWQgZT0lZCBi
PSV1DQo+IGw9JXUsIGdvdCBlPSVkIGI9JXUgbD0ldSlcbiIsDQo+ICsJCXBsYW5lLT5iYXNlLmJh
c2UuaWQsIHBsYW5lLT5iYXNlLm5hbWUsIHdtX25hbWUsDQo+ICsJCXN3X3dtX2xldmVsLT5lbmFi
bGUsIHN3X3dtX2xldmVsLT5ibG9ja3MsDQo+IHN3X3dtX2xldmVsLT5saW5lcywNCj4gKwkJaHdf
d21fbGV2ZWwtPmVuYWJsZSwgaHdfd21fbGV2ZWwtPmJsb2NrcywNCj4gaHdfd21fbGV2ZWwtPmxp
bmVzKTsNCj4gK30NCj4gKw0KPiDCoHZvaWQgaW50ZWxfd21fc3RhdGVfdmVyaWZ5KHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiDCoAkJCcKgwqAgc3RydWN0IGludGVsX2NydGMg
KmNydGMpDQo+IMKgew0KPiBAQCAtMzk1Niw3MyArMzk3MywzNCBAQCB2b2lkIGludGVsX3dtX3N0
YXRlX3ZlcmlmeShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gwqAJCQlo
d19lbmFibGVkX3NsaWNlcyk7DQo+IMKgDQo+IMKgCWZvcl9lYWNoX2ludGVsX3BsYW5lX29uX2Ny
dGMoZGlzcGxheS0+ZHJtLCBjcnRjLCBwbGFuZSkgew0KPiArCQljb25zdCBzdHJ1Y3Qgc2tsX3Bs
YW5lX3dtICpod19wbGFuZV93bSA9DQo+ICsJCQkmaHctPndtLnBsYW5lc1twbGFuZS0+aWRdOw0K
PiArCQljb25zdCBzdHJ1Y3Qgc2tsX3BsYW5lX3dtICpzd19wbGFuZV93bSA9DQo+ICsJCQkmc3df
d20tPnBsYW5lc1twbGFuZS0+aWRdOw0KPiDCoAkJY29uc3Qgc3RydWN0IHNrbF9kZGJfZW50cnkg
Kmh3X2RkYl9lbnRyeSwNCj4gKnN3X2RkYl9lbnRyeTsNCj4gLQkJY29uc3Qgc3RydWN0IHNrbF93
bV9sZXZlbCAqaHdfd21fbGV2ZWwsDQo+ICpzd193bV9sZXZlbDsNCj4gwqANCj4gLQkJLyogV2F0
ZXJtYXJrcyAqLw0KPiDCoAkJZm9yIChsZXZlbCA9IDA7IGxldmVsIDwgZGlzcGxheS0+d20ubnVt
X2xldmVsczsNCj4gbGV2ZWwrKykgew0KPiAtCQkJaHdfd21fbGV2ZWwgPSAmaHctPndtLnBsYW5l
c1twbGFuZS0NCj4gPmlkXS53bVtsZXZlbF07DQo+IC0JCQlzd193bV9sZXZlbCA9IHNrbF9wbGFu
ZV93bV9sZXZlbChzd193bSwNCj4gcGxhbmUtPmlkLCBsZXZlbCk7DQo+ICsJCQljaGFyIHdtX25h
bWVbMTZdOw0KPiDCoA0KPiAtCQkJaWYgKHNrbF93bV9sZXZlbF9lcXVhbHMoaHdfd21fbGV2ZWws
DQo+IHN3X3dtX2xldmVsKSkNCj4gLQkJCQljb250aW51ZTsNCj4gKwkJCXNucHJpbnRmKHdtX25h
bWUsIHNpemVvZih3bV9uYW1lKSwgIldNJWQiLA0KPiBsZXZlbCk7DQo+IMKgDQo+IC0JCQlkcm1f
ZXJyKGRpc3BsYXktPmRybSwNCj4gLQkJCQkiW1BMQU5FOiVkOiVzXSBtaXNtYXRjaCBpbiBXTSVk
DQo+IChleHBlY3RlZCBlPSVkIGI9JXUgbD0ldSwgZ290IGU9JWQgYj0ldSBsPSV1KVxuIiwNCj4g
LQkJCQlwbGFuZS0+YmFzZS5iYXNlLmlkLCBwbGFuZS0NCj4gPmJhc2UubmFtZSwgbGV2ZWwsDQo+
IC0JCQkJc3dfd21fbGV2ZWwtPmVuYWJsZSwNCj4gLQkJCQlzd193bV9sZXZlbC0+YmxvY2tzLA0K
PiAtCQkJCXN3X3dtX2xldmVsLT5saW5lcywNCj4gLQkJCQlod193bV9sZXZlbC0+ZW5hYmxlLA0K
PiAtCQkJCWh3X3dtX2xldmVsLT5ibG9ja3MsDQo+IC0JCQkJaHdfd21fbGV2ZWwtPmxpbmVzKTsN
Cj4gKwkJCXNrbF93bV9sZXZlbF92ZXJpZnkocGxhbmUsIHdtX25hbWUsDQo+ICsJCQkJCcKgwqDC
oCAmaHdfcGxhbmVfd20tPndtW2xldmVsXSwNCj4gKwkJCQkJwqDCoMKgDQo+IHNrbF9wbGFuZV93
bV9sZXZlbChzd193bSwgcGxhbmUtPmlkLCBsZXZlbCkpOw0KPiDCoAkJfQ0KPiDCoA0KPiAtCQlo
d193bV9sZXZlbCA9ICZody0+d20ucGxhbmVzW3BsYW5lLT5pZF0udHJhbnNfd207DQo+IC0JCXN3
X3dtX2xldmVsID0gc2tsX3BsYW5lX3RyYW5zX3dtKHN3X3dtLCBwbGFuZS0+aWQpOw0KPiArCQlz
a2xfd21fbGV2ZWxfdmVyaWZ5KHBsYW5lLCAidHJhbnMgV00iLA0KPiArCQkJCcKgwqDCoCAmaHdf
cGxhbmVfd20tPnRyYW5zX3dtLA0KPiArCQkJCcKgwqDCoCBza2xfcGxhbmVfdHJhbnNfd20oc3df
d20sIHBsYW5lLQ0KPiA+aWQpKTsNCj4gwqANCj4gLQkJaWYgKCFza2xfd21fbGV2ZWxfZXF1YWxz
KGh3X3dtX2xldmVsLCBzd193bV9sZXZlbCkpDQo+IHsNCj4gLQkJCWRybV9lcnIoZGlzcGxheS0+
ZHJtLA0KPiAtCQkJCSJbUExBTkU6JWQ6JXNdIG1pc21hdGNoIGluIHRyYW5zIFdNDQo+IChleHBl
Y3RlZCBlPSVkIGI9JXUgbD0ldSwgZ290IGU9JWQgYj0ldSBsPSV1KVxuIiwNCj4gLQkJCQlwbGFu
ZS0+YmFzZS5iYXNlLmlkLCBwbGFuZS0NCj4gPmJhc2UubmFtZSwNCj4gLQkJCQlzd193bV9sZXZl
bC0+ZW5hYmxlLA0KPiAtCQkJCXN3X3dtX2xldmVsLT5ibG9ja3MsDQo+IC0JCQkJc3dfd21fbGV2
ZWwtPmxpbmVzLA0KPiAtCQkJCWh3X3dtX2xldmVsLT5lbmFibGUsDQo+IC0JCQkJaHdfd21fbGV2
ZWwtPmJsb2NrcywNCj4gLQkJCQlod193bV9sZXZlbC0+bGluZXMpOw0KPiAtCQl9DQo+IC0NCj4g
LQkJaHdfd21fbGV2ZWwgPSAmaHctPndtLnBsYW5lc1twbGFuZS0+aWRdLnNhZ3Yud20wOw0KPiAt
CQlzd193bV9sZXZlbCA9ICZzd193bS0+cGxhbmVzW3BsYW5lLT5pZF0uc2Fndi53bTA7DQo+IC0N
Cj4gLQkJaWYgKEhBU19IV19TQUdWX1dNKGRpc3BsYXkpICYmDQo+IC0JCcKgwqDCoCAhc2tsX3dt
X2xldmVsX2VxdWFscyhod193bV9sZXZlbCwgc3dfd21fbGV2ZWwpKQ0KPiB7DQo+IC0JCQlkcm1f
ZXJyKGRpc3BsYXktPmRybSwNCj4gLQkJCQkiW1BMQU5FOiVkOiVzXSBtaXNtYXRjaCBpbiBTQUdW
IFdNDQo+IChleHBlY3RlZCBlPSVkIGI9JXUgbD0ldSwgZ290IGU9JWQgYj0ldSBsPSV1KVxuIiwN
Cj4gLQkJCQlwbGFuZS0+YmFzZS5iYXNlLmlkLCBwbGFuZS0NCj4gPmJhc2UubmFtZSwNCj4gLQkJ
CQlzd193bV9sZXZlbC0+ZW5hYmxlLA0KPiAtCQkJCXN3X3dtX2xldmVsLT5ibG9ja3MsDQo+IC0J
CQkJc3dfd21fbGV2ZWwtPmxpbmVzLA0KPiAtCQkJCWh3X3dtX2xldmVsLT5lbmFibGUsDQo+IC0J
CQkJaHdfd21fbGV2ZWwtPmJsb2NrcywNCj4gLQkJCQlod193bV9sZXZlbC0+bGluZXMpOw0KPiAt
CQl9DQo+IC0NCj4gLQkJaHdfd21fbGV2ZWwgPSAmaHctPndtLnBsYW5lc1twbGFuZS0NCj4gPmlk
XS5zYWd2LnRyYW5zX3dtOw0KPiAtCQlzd193bV9sZXZlbCA9ICZzd193bS0+cGxhbmVzW3BsYW5l
LQ0KPiA+aWRdLnNhZ3YudHJhbnNfd207DQo+ICsJCWlmIChIQVNfSFdfU0FHVl9XTShkaXNwbGF5
KSkgew0KPiArCQkJc2tsX3dtX2xldmVsX3ZlcmlmeShwbGFuZSwgIlNBR1YgV00iLA0KPiArCQkJ
CQnCoMKgwqAgJmh3X3BsYW5lX3dtLT5zYWd2LndtMCwNCj4gKwkJCQkJwqDCoMKgICZzd19wbGFu
ZV93bS0+c2Fndi53bTApOw0KPiDCoA0KPiAtCQlpZiAoSEFTX0hXX1NBR1ZfV00oZGlzcGxheSkg
JiYNCj4gLQkJwqDCoMKgICFza2xfd21fbGV2ZWxfZXF1YWxzKGh3X3dtX2xldmVsLCBzd193bV9s
ZXZlbCkpDQo+IHsNCj4gLQkJCWRybV9lcnIoZGlzcGxheS0+ZHJtLA0KPiAtCQkJCSJbUExBTkU6
JWQ6JXNdIG1pc21hdGNoIGluIFNBR1YNCj4gdHJhbnMgV00gKGV4cGVjdGVkIGU9JWQgYj0ldSBs
PSV1LCBnb3QgZT0lZCBiPSV1IGw9JXUpXG4iLA0KPiAtCQkJCXBsYW5lLT5iYXNlLmJhc2UuaWQs
IHBsYW5lLQ0KPiA+YmFzZS5uYW1lLA0KPiAtCQkJCXN3X3dtX2xldmVsLT5lbmFibGUsDQo+IC0J
CQkJc3dfd21fbGV2ZWwtPmJsb2NrcywNCj4gLQkJCQlzd193bV9sZXZlbC0+bGluZXMsDQo+IC0J
CQkJaHdfd21fbGV2ZWwtPmVuYWJsZSwNCj4gLQkJCQlod193bV9sZXZlbC0+YmxvY2tzLA0KPiAt
CQkJCWh3X3dtX2xldmVsLT5saW5lcyk7DQo+ICsJCQlza2xfd21fbGV2ZWxfdmVyaWZ5KHBsYW5l
LCAiU0FHViB0cmFucyBXTSIsDQo+ICsJCQkJCcKgwqDCoCAmaHdfcGxhbmVfd20tDQo+ID5zYWd2
LnRyYW5zX3dtLA0KPiArCQkJCQnCoMKgwqAgJnN3X3BsYW5lX3dtLQ0KPiA+c2Fndi50cmFuc193
bSk7DQo+IMKgCQl9DQo+IMKgDQo+IMKgCQkvKiBEREIgKi8NCg0K
