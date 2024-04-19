Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD2F8AA878
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 08:34:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F99D10E88F;
	Fri, 19 Apr 2024 06:34:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VDdd6YYo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E47910E88F
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 06:34:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713508457; x=1745044457;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IyEaHxYOcUjl4qUlGY6ZmQVqhF/EoYHtcjjzFn9PMWY=;
 b=VDdd6YYoKv8fAVWJu122P6X/nd1uQf1/jSkv1lGgxZLCqczGbvnBl/r9
 S0py3clkj5WSWvRcc+BBjTTdgzA696bLProaL0CJMCOX35eqnSinGkxJR
 zjFcSLxtrSNpC/XcJ717b9srMmPx4nAVqvVcIegsieTfSqa5I61BEkreq
 fSEf0WivftQ+iWZatLiUzplG0GreFXu2IOIQAW382eL4H8KaU13lmhVG1
 agR4XE/MBOGRCgx7vQh5pLsmLGneO1Z8jRyJyaSIaqv6JtzK0MqGanH96
 rOeI4aFKUESpsPGKKbIV1R4R9AkmE3eW7G/m/vV4uUdrRYvDvSlWgdHmT A==;
X-CSE-ConnectionGUID: VYP1rOQJSd2f2oEWRm6ppA==
X-CSE-MsgGUID: iCcwoNy0ReuNnCJiTQiMUw==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="9638347"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="9638347"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 23:34:14 -0700
X-CSE-ConnectionGUID: 4vz0Jk2sRg6NrNAt/RLUVg==
X-CSE-MsgGUID: ZMA+P7I3Qw6LVjWHAWkDIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="28016919"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 23:34:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 23:33:11 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 23:33:11 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 23:31:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B242fFBCZ/J4Ypo6st2cQ6BBzunv1odn0aRCrJ0hbcZqfFGS+VV5NfpqVfoKHzOAyZcv43tqmf13QXIXYqkYCgbrhQnxAYJE6zQQW/UBm5t2sggyPd7kkU4TYT52/xOmMzZNqsIZz9ezd1szzfPNMBCuTeH6FH2lxIUeohNYYPtmFWhHStJ0fO3en+5+AAqtEszokk3bPGpnWarJXoMLUnyrI6K9rjbydqSS2d6Bjxsqsix22WmmB6rIr1BdNvN2aA/EijFZHhgybiYCoPENmxtcmjqX17QeLHRonMrdHNf9+gHFGY+HO8pOdwooVlv+SfOEyvr1bX3FF9tXMVI7Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IyEaHxYOcUjl4qUlGY6ZmQVqhF/EoYHtcjjzFn9PMWY=;
 b=e2gmtiFWMAI9CUCAdS4iAfN9ARdiA+03sUdLqJjBCgF4vKIzQEpFk/4rZPDgwotQGXXvImhdQeSf/ChG8pbcUOM5CaMXo2ajmckTshcLYfMDqYihF85tEuIr0wBY3iDlRxZiD4jo6WwHsLKw23SUJ5dS3vjZdHpu4YpmU10637EXWas7yEXi5CLQ1RYu+cVrixLWHvkI3tEwoE5HX4yEcOe7w5iOuin3p0W7JZBdn5dMKYuIlnNulqZ0Qi3KygqXnp62/ETbvytJCFI79Srln08ISUvoCJCUiZB/3hBRdPPOELnfUiSdqyXvnCx0P69FWsu9CMq5VHFGhFQ5dAJzMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by MW4PR11MB6740.namprd11.prod.outlook.com (2603:10b6:303:209::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.29; Fri, 19 Apr
 2024 06:31:23 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016%6]) with mapi id 15.20.7472.042; Fri, 19 Apr 2024
 06:31:23 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/6] drm/i915: Reject async flips if we need to change
 DDB/watermarks
Thread-Topic: [PATCH 2/6] drm/i915: Reject async flips if we need to change
 DDB/watermarks
Thread-Index: AQHaeuBpcSD6PUlAU0K9dGjhsMROLbFvPcKw
Date: Fri, 19 Apr 2024 06:31:23 +0000
Message-ID: <SJ0PR11MB67890D82EEA64522AE3C332D8D0D2@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240320160424.700-1-ville.syrjala@linux.intel.com>
 <20240320160424.700-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20240320160424.700-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|MW4PR11MB6740:EE_
x-ms-office365-filtering-correlation-id: 559c431f-4e6e-4574-d528-08dc603a5581
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5SjLkToN1kMY1qL0V0EOKvvocIfGo/OG6p/BCtsb6zf7Y7cZoOUxUVgV7y1wjy2ZYkUGeIYV8bd6vCUvdTCICnhRNjl0ncZyb6PIMdq5gx1u2sBRXUnpXw+1FBiuTGbZS2vf42gbMAu7xTtyW5Ol/DC/Yn46XMEhXu+fF74LLL9MSpO7REDGeBLkoYBx454OEFXdcmcFQWtNFD0RVEQr0bELvi5D0JCOE1hp614jvOM/nmK6528caZk1pXEOZ5WZml4wVEOt0uaPd72JxvD/+lW2KCsAeO39r2xcYUOkSMdRsh1vQ5YiWpqpza73tXAwYmaV1HqBf2ZvE3qkW45rPgSJpPYEC8VNmG71z+KKdSCql8DxWos3QBBnS7gE/k+Cbe8XOEXuy9Y8lVnucdPFpy2oGorUcjjbzQFy4ofm6Lr/9OzqceTw4ETRJSLmWYJRpfDEz+92tf5wBQCz+8kiO1wX1XJQqWd83KKtUO7IujuorWKghUPn/fUKqkmpZdgEFDXZIUnJzrJ8UoHAu2S9MaJlM8BaZPxeVznTSWGxQMMbQwfb94UMV+cCi8B/P/Qj7gunLr2kL3dD/EzJvbKmJW0Dv8iCtKdPEBHamsE4xehgqDqqHPneJOg2z7sDYyx2fEYSu2vxTmHtUCeoGWVYp2hSEr0yi2IfOudvu2yXv6dMZHQXSFWPALjfu2G03zMmr3+v6CVeUH6On6M7uRC+4g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bExrN3YvSkQ0Ly82QkZJaytsUDJiN0Y3RzYzbURsL3p3a2NPUWdsS2RwMHFa?=
 =?utf-8?B?MlhPS2NqSThzNUxsU0RBUEYwYmpoZHZTRmxKOGNGc3JBeFhpRmx5TE8wcTU5?=
 =?utf-8?B?Y1dpZklHTURNN3B2ZmZ0N3RxdlhDeFhlRGQ4N0M0TjhBQTFoNVUzV0FRdTFC?=
 =?utf-8?B?a05HUW14WGVXaEJxRFh1bndlRUluTmNPR1krNnVGcjI3ajdQa3pLWFU5RW9W?=
 =?utf-8?B?SjdoRnNIV29pQk45MlY4WVhyM1JTMTdKMmNDTm85UHpFQlRjMm56L2poNm9J?=
 =?utf-8?B?aWRpV3UvNUNYR2NZRzdETVl3N1dQVTZwcDIyMWNnUURVREc5YmgwUjNLa1Nk?=
 =?utf-8?B?YVlaYzNaSnIwMFoxM0k2NExjUXFmTEUvV2s2eEpIR0huN29mTytWSTlEeXRz?=
 =?utf-8?B?L1J3bGQvMm1qdExOQi9INzVwVWNDZzZocG1CTDNHZnBOUjJFc2tKNjErSWpP?=
 =?utf-8?B?aDRySmNBNU84QUxtbndla09jYjk4VDc2RVNiSW9PYTRMMUVYRFExVTlaaFBD?=
 =?utf-8?B?WldPMzlCSHE1cDJBY2Vuc1N4NG8raUozUjgzeVl3THdUZmtjdjVidVlGNnRv?=
 =?utf-8?B?NWlST2xrYjI0TnY0UmZiN3l0Zm8vNGg0K28wUkl5d2FEZzVmd2Zqb3Y5dnVu?=
 =?utf-8?B?MjJGclA4OXhpWHRSZWI2TmQwYkNIcTcvQkxCRVZ6QVFGVC9hbGFpTThWQ3dh?=
 =?utf-8?B?VHByZDhSRmV6QlNJTkJYRzV1cUpUNnJCbExVaDN5SEw3K3pXWmprUWNPZUw0?=
 =?utf-8?B?MUNNYms1aEkrRUFZODV1bFkvcnc5N2hyL0xNcnFHaW9ES01qc212dVdiWC9l?=
 =?utf-8?B?OVQvRFQ1T3orRUhIYVpJdUwwb0h4ZnF6ZjBpZU1za1ltSm5HWXZqVy9vV0Nn?=
 =?utf-8?B?MWlqZzNleXR2K0xNbmlGN0E3SHdmanlsbVFsdFJjOE5LTmRHSGxsM3Q5Nmo4?=
 =?utf-8?B?RFVydkZPR0FzNjNINllyWmpXdWx4ckY1cUpqWGtiL2xFQUx4c3A3TjZuakJR?=
 =?utf-8?B?OHJJUlBVWVhuak5lYTkzNEhkTDVrcVRHbHBZL1diRHBGN0FHMWpPTStaMERO?=
 =?utf-8?B?bTF2T3FQS2x0UDdGdnFWNTJBWFhiMm1oekNxWkpETXVES2hnVzJrdXc2RnVV?=
 =?utf-8?B?NmRROTY1LzZFMWExSGdwczFvcGNyNDFBQkw0YmlVbjlYZU40dmJYL25tWStQ?=
 =?utf-8?B?N0huQTh0ZnROcUVtdjFOM3lvT3RQZWwwR0U5bE0wY2NsTUlERG9MTkl1NEhs?=
 =?utf-8?B?VHIzbXNYeXVHMEI3eWUzdTQ4eFV6Y0VxYkhQQkF2WG9zaEFieVhqMkFhelRh?=
 =?utf-8?B?RHBjbVpXSndGS0p5d1kyNHBBSXZoWjR4ck11UVpPVWc1a0ExUHR2SXJnMFZD?=
 =?utf-8?B?eC9yTTYwT3g2dnQvL1BpaHROUUFHSVVEbno5d0JEUTE4bjdFdkduVUhwWEQ0?=
 =?utf-8?B?MXQwYkNZSHIzUnFFUDNpUk9Jc0xTeWF1VkxaQzQ0QUMxTll0VUZMd1lOTEQz?=
 =?utf-8?B?dGRVVk0rVHU5eHo5UlovenRtZjFISTU0Z3FIZ2YwOEpxUWwxY3B3cXB5YUhy?=
 =?utf-8?B?SnhyZ0NoRldvbnJKd2JXMnRTUTUxc0R0UFNBZ1o5eTVZV0pnK292Uy8va3Jm?=
 =?utf-8?B?WHdaMDdVN3NQRHJXY1AvOSt2TktuQmQrNStiaXNpaW1HN096TFI3NWJiRS9U?=
 =?utf-8?B?YUJMMXMrdFhFSEZPSDJyWDNqSzFLQjZEK0QrT0dDNlZPSjUvUkQvSW1XVjg4?=
 =?utf-8?B?dWFpUmJQS3hNSVdHZlhoakk5Q09ZVndudXAzcDhRRlFKejcvWUl6N2R6NXpX?=
 =?utf-8?B?a0VTaHdZSHErRmt1d1RqQkd1bE01SUI2RTNJQ01lRXV1d2g4eVBrcGcvM01N?=
 =?utf-8?B?UmFCMktHK2dlTk9oK3F1ZWFPNlE1QUgwa29OL1o2UkMyUEdveWpJeWZOMVhT?=
 =?utf-8?B?T1lXL0tXekxSaHFjbXJVU05IdnpIWVRyKzJ2eXRLcXBzNlVFZU9CdmtzSjI3?=
 =?utf-8?B?cEJvV21ZTUR4NldaRmgzMUo4Wlo4ZUs0RTZYdG01WEdOb2Zzck10TU1ENmpJ?=
 =?utf-8?B?UmhKbXdROWJmb2I1blBLWUVxMlVZVnF6aG9lL2JaNkJiS0t2cmRQdzZjTnRm?=
 =?utf-8?B?ekpQWi9sL3pLdzhOUHZuR3pjM29kUXUwc2ZOSms3dE5yS2IzbDR4cW9EREpU?=
 =?utf-8?B?RlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 559c431f-4e6e-4574-d528-08dc603a5581
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2024 06:31:23.8220 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1oYsoOQFgpfez2bzP+MwvaZZNFe45T/haepPpu8+Di0Sf0/ioatbED39uBXypA352RhM2HS45q2XJxtSeX1eX5tqrzzi2fUz6ugTaRagWTw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6740
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogV2VkbmVzZGF5LCBNYXJjaCAyMCwgMjAyNCA5OjM0IFBNDQo+IFRvOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCAyLzZdIGRy
bS9pOTE1OiBSZWplY3QgYXN5bmMgZmxpcHMgaWYgd2UgbmVlZCB0byBjaGFuZ2UNCj4gRERCL3dh
dGVybWFya3MNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+IA0KPiBEREIvd2F0ZXJtYXJrcyBhcmUgYWx3YXlzIGRvdWJsZSBidWZm
ZXJlZCBvbiB0aGUgdmJsYW5rLCBzbyB3ZSBjYW4ndA0KPiBzYWZlbHkgY2hhbmdlIHRoZW0gZHVy
aW5nIGFzeW5jIGZsaXBzLiBDdXJyZW50bHkgdGhpcyBuZXZlciBoYXBwZW5zLCBidXQgd2UnbGwN
Cj4gYmUgbWFraW5nIGNoYW5naW5nIGJldHdlZW4gc3luYyBhbmQgYXN5bmMgZmxpcHMgYSBiaXQg
bW9yZSBmbGV4aWJsZSwgaW4gd2hpY2gNCj4gY2FzZSB3ZSBjYW4gYWN0dWFsbHkgZW5kIHVwIGhl
cmUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiAtLS0NCkxvb2tzIGdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTog
VmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+DQoNCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jIHwgMTIgKysrKysrKysrKysr
DQo+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gaW5kZXggYmMzNDFhYmNh
YjJmLi4xZmE0MTZhNzBkNTEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvc2tsX3dhdGVybWFyay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvc2tsX3dhdGVybWFyay5jDQo+IEBAIC0yNTQwLDYgKzI1NDAsMTIgQEAgc2tsX2RkYl9hZGRf
YWZmZWN0ZWRfcGxhbmVzKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0
Y19zdGF0ZSwNCj4gIAkJCQkJJm5ld19jcnRjX3N0YXRlLQ0KPiA+d20uc2tsLnBsYW5lX2RkYl95
W3BsYW5lX2lkXSkpDQo+ICAJCQljb250aW51ZTsNCj4gDQo+ICsJCWlmIChuZXdfY3J0Y19zdGF0
ZS0+ZG9fYXN5bmNfZmxpcCkgew0KPiArCQkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIltQTEFO
RTolZDolc10gQ2FuJ3QNCj4gY2hhbmdlIEREQiBkdXJpbmcgYXN5bmMgZmxpcFxuIiwNCj4gKwkJ
CQkgICAgcGxhbmUtPmJhc2UuYmFzZS5pZCwgcGxhbmUtPmJhc2UubmFtZSk7DQo+ICsJCQlyZXR1
cm4gLUVJTlZBTDsNCj4gKwkJfQ0KPiArDQo+ICAJCXBsYW5lX3N0YXRlID0gaW50ZWxfYXRvbWlj
X2dldF9wbGFuZV9zdGF0ZShzdGF0ZSwgcGxhbmUpOw0KPiAgCQlpZiAoSVNfRVJSKHBsYW5lX3N0
YXRlKSkNCj4gIAkJCXJldHVybiBQVFJfRVJSKHBsYW5lX3N0YXRlKTsNCj4gQEAgLTI5MDYsNiAr
MjkxMiwxMiBAQCBzdGF0aWMgaW50IHNrbF93bV9hZGRfYWZmZWN0ZWRfcGxhbmVzKHN0cnVjdA0K
PiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJCQkJICZuZXdfY3J0Y19zdGF0ZS0N
Cj4gPndtLnNrbC5vcHRpbWFsKSkNCj4gIAkJCWNvbnRpbnVlOw0KPiANCj4gKwkJaWYgKG5ld19j
cnRjX3N0YXRlLT5kb19hc3luY19mbGlwKSB7DQo+ICsJCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJt
LCAiW1BMQU5FOiVkOiVzXSBDYW4ndA0KPiBjaGFuZ2Ugd2F0ZXJtYXJrcyBkdXJpbmcgYXN5bmMg
ZmxpcFxuIiwNCj4gKwkJCQkgICAgcGxhbmUtPmJhc2UuYmFzZS5pZCwgcGxhbmUtPmJhc2UubmFt
ZSk7DQo+ICsJCQlyZXR1cm4gLUVJTlZBTDsNCj4gKwkJfQ0KPiArDQo+ICAJCXBsYW5lX3N0YXRl
ID0gaW50ZWxfYXRvbWljX2dldF9wbGFuZV9zdGF0ZShzdGF0ZSwgcGxhbmUpOw0KPiAgCQlpZiAo
SVNfRVJSKHBsYW5lX3N0YXRlKSkNCj4gIAkJCXJldHVybiBQVFJfRVJSKHBsYW5lX3N0YXRlKTsN
Cj4gLS0NCj4gMi40My4yDQoNCg==
