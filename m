Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE9B88D004
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 22:29:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CA1610F363;
	Tue, 26 Mar 2024 21:29:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f9XxiMwG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEB5010F362
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 21:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711488539; x=1743024539;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:mime-version: content-transfer-encoding;
 bh=qOAEGloX2jGbeM7m9fjw4o6yIFqtg223nNzfb8aS520=;
 b=f9XxiMwGCp6RSLzmUNa2KuDe6qp20QrbUXmqhp2dEtGcwpFa9eDx4WDW
 g/8/X7rl1UxAWmNdYjMUFA3VFjzF5rOLS5e04lZzagnZUZ9PAFu0Vlk2O
 LcZUnWeIgcON8C7vQAJHF0EKjaO29HmJJw0oikYzOaPkyhr34wxRHU94u
 EEl82BL544nJJVW4e0MP5PSeB5qPpLwrCAUpUzy1epsXW1pvovQhJDiaX
 gWLDdY6KqvBsFip/IqIueA6iPCTE8Cozb15Wfsi3fW9fAiJ0XGdEvMTkZ
 4xhzhg2uXWUx3Np+Y8su+I/PKug05klO9CvJSWXXC8zSkIH1CJ1wx0Ua/ Q==;
X-CSE-ConnectionGUID: H7slzN7xQMuEQWNsPE65pQ==
X-CSE-MsgGUID: 2rYDrTQsSuKD+F/9RJyzMA==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="32006249"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="32006249"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 14:28:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="20731571"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 14:28:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 14:28:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 14:28:57 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 14:28:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XSmgab2mqZNWY4EUid9QlwIx1Y3ROmFrYMqmgzH9PRsRX5h/v7u9xoW3lW4BCXjGOcImwFU//hV/w3xPyzYS1BSC1ZUCA5kvlxx/d1b0cf7eWZM+HuNkCWbTvhAlMOSWcMckdcUnHFRLw3WzpPXlV/16ZtCchSGs0bK59lbJC1kVlocwcnvoWEYFPsh08hEPGUz0cZh9kqR/UfUZHUOOlpX6QJW/GdNazsQmkIJXh8eggu4VJjYxm6cuZD02gONQtS8QJj9/CQhXONe82j6QbmPAhyleUleY0Yu44N5xbV9A4zZk6JQOGa/bkT5CqC+MwuM2zrEGCsMTruUVQYNpQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HRN/A5PpCgh0mlEjPhNB0/mb5Xlajd+6sri5O0opF00=;
 b=lcBnDnCIIl5NzkCfgJuJieTnzkWbWjXgFU8jyj4kTPDIluIBkH82cCqxFZHdXF9iaevW0tO9FAtYY1LXxfSZBx3Aizeewlm2+fK7/fp9c15Ln3ldF8WkoLo1ZLJnI5GQCKiIUEFyjUwHT/T0bkLj89r3IX6ghBZvXgDD79ch0GDoYoSv2/gqkOaa8hQUb+xUx7z/wgBM4VMzSuwqsU0e/8B3T98UlPGF3/pzTe5PLOhyiuV/O2yBU8P0A0fDB+seJYauT62aFT8kkcXOv/E2wX/r/MdFaiDJeKh/8hANvpGyCPTNORXaMBGeKiCdsLwsAgM7RvGvbQm/sVY4er6FuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB6445.namprd11.prod.outlook.com (2603:10b6:8:c6::11) by
 PH8PR11MB6611.namprd11.prod.outlook.com (2603:10b6:510:1ce::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.33; Tue, 26 Mar 2024 21:28:55 +0000
Received: from DS0PR11MB6445.namprd11.prod.outlook.com
 ([fe80::d967:14ba:eb4a:34a1]) by DS0PR11MB6445.namprd11.prod.outlook.com
 ([fe80::d967:14ba:eb4a:34a1%7]) with mapi id 15.20.7409.031; Tue, 26 Mar 2024
 21:28:54 +0000
From: "Krzysztofik, Janusz" <janusz.krzysztofik@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nilawar, Badal" <badal.nilawar@intel.com>
CC: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>, "Gupta, Anshuman"
 <anshuman.gupta@intel.com>
Subject: Re: [PATCH] drm/i915/hwmon: Remove i915_hwmon_unregister() during
 driver unbind
Thread-Topic: [PATCH] drm/i915/hwmon: Remove i915_hwmon_unregister() during
 driver unbind
Thread-Index: AQHaf3n7Ydsbg1mKpU+uCEWYKc/NUrFKij+A
Date: Tue, 26 Mar 2024 21:28:54 +0000
Message-ID: <3291198.aeNJFYEL58@jkrzyszt-mobl2.ger.corp.intel.com>
References: <20240326124838.3049215-1-badal.nilawar@intel.com>
In-Reply-To: <20240326124838.3049215-1-badal.nilawar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB6445:EE_|PH8PR11MB6611:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8qJFyHQv/zlSGYxuR6oYTJYxTm96CEaZLTPXcT13A2v1NrV1rF/VTqMyZTRBiuEJYkQ86hamVyETeDdZdwEsh2jid3KflJO0uvsqAylgJRtc7Ox+o76PrTd/pAqBpSu1f3za7PWb1lMiIqt6F+uec0aA+TLHvY25KXbiGoQdPUW17HTef2Yj3iOyZ32K213+6oFG7u55FvOjoMDh/53RiFJhStpNClsycLCQuy/64J8FJUnqCyORoZzLdG4ewcuDB7pp8r1lrhSdowjmcM3mnyHEnqaS1h3wkmajiLHsGuUaxNc5FKQAQTTeQ6cKui8t+GsSEhij8+ZjJRelZ1AHt+gjUHaXDuPOKhFKjlcJTUWhStGB4SIFnI7yJ+XdmOl5nM5H3ZGWYzDoD+brohS2o82tEcUz7P3AKFdeXfq8jpkKnPh+peRSslN+JsbrhASn4Z5IWc/3iNY7n5zwNh7IWTt11xjeTWWDt6/jp3xpqh6/qQqlXKxsbncpfxhUuUbQBlY+PCgSjnKo6LtEPeBARZYHRW9YSCrXPDfFZQGgCE66GTE7PiLkGLw/iWHbMXYm4dpNbv4KJBM5S449qRGQjjkKtCv8aS7ZQ0RPE5MFvZ8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB6445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dGU2VnpLVjlyYStjdytidVFkWXhNR25zTlZXdE8ybXRQQ1VZOUx1K3RCdzlh?=
 =?utf-8?B?RVkzWVdjYUZSb3hKWTRGeWZzRTZSRGpFSXRFMjhMMzRxazdMb1pOc2RWek9I?=
 =?utf-8?B?ODA0aXRaWjBjYThCeDdzalNsTktiVTFNc2ZCZlpQRjV4cytqOEFvaVdad3lv?=
 =?utf-8?B?ZU4xdFlkeURqZGU2ODQ1VGp6TDdCTE5QdEhMZ2NhUEo3M0Nic0hvTTRORVJz?=
 =?utf-8?B?VVA5WDBKc01Ic256UWFqVFRZbVJwd05BSXZQa3RjVXJMdThGNHpNdEhjNWRF?=
 =?utf-8?B?MTF6ei80UGhMT0M4d2pyak5NSk1wRlZRK0FuTEI5ZVE4T09tUmkzVjl5dTdF?=
 =?utf-8?B?bmswbExSaDAxaTFKYUJ0NHczVldpem1hNzNSaHJvUExOTzA3OUQzSnozUWNa?=
 =?utf-8?B?NlFSMHlMV2hwREhVZEgyb1RUVmZIMVFBSXBUUTBWdWdRckhESHpWTit6OSs4?=
 =?utf-8?B?R2xaanRxZnZjdDNTVFJVYXoyUzQzTnVXc0l0VWJXaHJ2R2RTUkF4YnVFRHpx?=
 =?utf-8?B?SWNBOVU1T053WmJoUFVYK29UekZjK1pTZ0g3czdyc2l1TXVJQ1Nnb0Jaemhn?=
 =?utf-8?B?dXBRZVlydlc1MVlQdklVRmxIeUJCNWkzaU02YUluU2MrbXkvaGtOZk9mY0t3?=
 =?utf-8?B?MmovbTBueStMMDZ6ajFhK0ZDRDR1YnVyTDV1WENWSTJDVDVPRkZVWFQxYzdx?=
 =?utf-8?B?bGkrSWcwKzQyclg0VnNrR0VVWlg4R2F6U1BXSTVEV3JFZE93aTExdmRxTHlM?=
 =?utf-8?B?TEV1QkJIQW1kaWVGMXk3c29oTWNoT3hXbkNPVXVucWswbFRnQkplc3JxaEtV?=
 =?utf-8?B?a2FvdklIY1drVGkwSjBRQndaVkJtQi9xaU9RZFVJaEdkb3VFNHQrUjJlNFhE?=
 =?utf-8?B?YktYMzR6bE5TaDZrb0xiRmcydDd1ZE1IVnVKZWRydVp1ZnVOaFZvY3BDQzlZ?=
 =?utf-8?B?eHBjbmFraEEra0gvS3JLdysxWXMrZ0cwendlbkxvSzVXSHk2RXN0ampSY1Ey?=
 =?utf-8?B?NDN5S1hCOXdFdWxQS1JoWkhqdjZIOHpqaXFkRFA0OGJYUUlmd24rNHJ0NGhu?=
 =?utf-8?B?WWFjMEc4NTBKaWp6OEVnOGdjNzhtVXVJZFo3cVB5OVVFc0VKbHRMQndHbzk0?=
 =?utf-8?B?SkMyaDMxNGFCVUhaaWVuMFMybmpqYlg1alB6RGthcWZwcDBUaDgyUWJQNG1h?=
 =?utf-8?B?TmhEcGhxVFV0WW1HS013bHFvczQ4SXFja0NJem1XbnIyeUp0WHc1UlBUUzJz?=
 =?utf-8?B?K3RxNlpKbW5ucnZZd2kyT3ljRnBEUys0OGlLK0RHZ1J2OGdHRWF0VGhnN0RE?=
 =?utf-8?B?MytXVTJnc3c1emt6RVVIcTNFbWlmRU1zYWpEeU9QZDdoR2VDU2V4ZjJsaU05?=
 =?utf-8?B?OWlxYk9aUS9mcXpiS2gvK1c2aXNCSmxZQmZ2Zko0NUwyczhMZm9jL1Y5eXdU?=
 =?utf-8?B?VXlOOXVtYnhJc1ZMeUhJZjdUd01HM2lMMXVJQmRYMVlHd0c1czF2VHpzNHJL?=
 =?utf-8?B?QWMvVGFRWXJrb1RKcFJOdThxLzZ6M2FROHhQTEQrRG9WenR1dVprS1loYnhK?=
 =?utf-8?B?aXFoVFpKL05waUxjVmdxeHZUSEl0OTZBNzFKcDBBbndCRzlVSW1XTzFCaHBD?=
 =?utf-8?B?UTdodlNXejRNd01BaHF4N2RjZEs5OG9DTk1ONlFYN01jdDAvcmF6NzFVL1BT?=
 =?utf-8?B?aEVOdWdXanFKR0tzLzFLR1ViSjhEU0srV2llNGlsWi93VEM5QXBlOWxiT1dN?=
 =?utf-8?B?U3NoeDhXZnowb2Y5TWZpekZNZWFidDZBQkRLMGV4U1UxN1dhSkNKM1hIUDZT?=
 =?utf-8?B?SmFXTDNkV29LclM3MGFGNHJtN1lVUklKSXdJZVVmMmpTTUFZelZCZXZWUEUr?=
 =?utf-8?B?d1VjL3BmbVVMQmdONDBENi9VQVRpWGQrcWt1TWJwVTNuL0VxVDROY1hOUlg2?=
 =?utf-8?B?L1RFQzAybXZObkp4L1NmaEVheW9KTnl4bUtiUCtzZjFmRFhWeWM4NGxhcG8w?=
 =?utf-8?B?SnZhQ1JPbi9vVjhqUng1MEMrczJuNURpVko3U1llN2hYN05abXVNV3dmNER4?=
 =?utf-8?B?NjRvUitxN0kvZkNxNHYwMHdQTjhsUDZtdXN5RVBLcC8rYjVCTmIxU3J5RTh2?=
 =?utf-8?B?cDV6ZVREbTRUb3lWbUdXK0dSeStsb0RxOVJSRVhJL01pQUpxUDd1RU5zVDFt?=
 =?utf-8?Q?MTpX/JQu9X1SsrLwXZMNANw=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F377A6B964843C47BD38A95ADDC6DF0C@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB6445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9a3dea1-50d0-4469-5848-08dc4ddbbd06
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2024 21:28:54.4067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zq4NHXCn/LvU0/lO35fcHzmgpq5hJTlUxKObU3fb/mwwu4Kb5Yhn0xXORF1fi7jPdoQEi1N8uK0i/J5fEk1H44WdKvKueDKSshe+Wv1dbCw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6611
X-OriginatorOrg: intel.com
Content-Transfer-Encoding: base64
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

T24gVHVlc2RheSwgMjYgTWFyY2ggMjAyNCAxMzo0ODozOCBDRVQgQmFkYWwgTmlsYXdhciB3cm90
ZToKPiBpOTE1X2h3bW9uIGFuZCBpdHMgcmVzb3VyY2VzIGFyZSBtYW5hZ2VkIHJlc291cmNlcyBv
ZiBpOTE1IGRldi4KPiBEdXJpbmcgaTkxNSBkcml2ZXIgdW5yZWdpc3RlciBmbG93IHRoZSBmdW5j
dGlvbiBpOTE1X2h3bW9uX3VucmVnaXN0ZXIoKQo+IGV4cGxpY2l0bHkgbWFrZXMgaTkxNV9od21v
biByZXNvdXJjZSBOVUxMLiBUaGlzIGhhcHBlbiBiZWZvcmUKPiBod21vbiBpcyBhY3R1YWxseSB1
bnJlZ2lzdGVyZWQuIERvaW5nIHNvIG1heSBjYXVzZSBVQUYgaWYgaHdtb24KPiBzeXNmcyBpcyBi
ZWluZyBhY2Nlc3NlZDoKPiAKPiA8Nz4gWzUxOC4zODY1OTFdIGk5MTUgMDAwMDowMzowMC4wOiBb
ZHJtXSBpbnRlbF9ndF9zZXRfd2VkZ2VkIGNhbGxlZCBmcm9tIGludGVsX2d0X3NldF93ZWRnZWRf
b25fZmluaSsweGQvMHgzMCBbaTkxNV0KPiA8Nz4gWzUxOC40NzExMjhdIGk5MTUgMDAwMDowMzow
MC4wOiBbZHJtOmRybV9jbGllbnRfcmVsZWFzZV0gZHJtX2ZiX2hlbHBlcgo+IDw0PiBbNTE4LjUw
MTQ3Nl0gZ2VuZXJhbCBwcm90ZWN0aW9uIGZhdWx0LCBwcm9iYWJseSBmb3Igbm9uLWNhbm9uaWNh
bCBhZGRyZXNzIDB4NmI2YjZiNmI2YjZiNmRiZjogMDAwMCBbIzFdIFBSRUVNUFQgU01QIE5PUFRJ
Cj4gPDQ+IFs1MTguNTEyMjY0XSBDUFU6IDYgUElEOiA2NzkgQ29tbTogcHJvbWV0aGV1cy1ub2Rl
IFRhaW50ZWQ6IEcgICAgIFUgICAgICAgICAgICAgNi45LjAtcmMxLUNJX0RSTV8xNDQ4Mi1nNGE4
ZmFiY2YyZjFhKyAjMQo+IDw0PiBbNTE4LjUyMjk1MV0gSGFyZHdhcmUgbmFtZTogSW50ZWwgQ29y
cG9yYXRpb24gUmFwdG9yIExha2UgQ2xpZW50IFBsYXRmb3JtL1JQTC1TIEFEUC1TIEREUjUgVURJ
TU0gQ1JCLCBCSU9TIFJQTFNGV0kxLlIwMC40MjIxLkEwMC4yMzA1MjcxMzUxIDA1LzI3LzIwMjMK
PiA8ND4gWzUxOC41MzYyMTddIFJJUDogMDAxMDpod21fZW5lcmd5KzB4MmIvMHgxMDAgW2k5MTVd
Cj4gPDQ+IFs1MTguNTQxMTU5XSBDb2RlOiA0OCA4OSBlNSA0MSA1NyA0MSA1NiA0MSA1NSA0MSA1
NCA1MyA0OCA4OSBmYiA0OCA4MyBlNCBmMCA0OCA4MyBlYyAxMCA0YyA4YiA3NyAwOCA0YyA4YiAy
ZiA4YiA3ZiAzNCA0OCA4OSA3NCAyNCAwOCA4NSBmZiA3OCAyYiA8NDU+IDhiIGJkIDU0IDAyIDAw
IDAwIDQ5IDhiIDdlIDE4IGU4IDM1IGU0IGVhIGZmIDQ5IDg5IGM0IDQ4IDg1IGMwCj4gPDQ+IFs1
MTguNTU5NzQ2XSBSU1A6IDAwMTg6ZmZmZmM5MDAwNzdlZmQwMCBFRkxBR1M6IDAwMDEwMjAyCj4g
PDQ+IFs1MTguNTY0OTQzXSBSQVg6IDAwMDAwMDAwMDAwMDAwMDAgUkJYOiBmZmZmODg4MWUzMDc4
NDI4IFJDWDogMDAwMDAwMDAwMDAwMDAwMAo+IDw0PiBbNTE4LjU3MjAyNV0gUkRYOiAwMDAwMDAw
MDAwMDAwMDAxIFJTSTogZmZmZmM5MDAwNzdlZmRhMCBSREk6IDAwMDAwMDAwNmI2YjZiNmIKPiA8
ND4gWzUxOC41NzkxMDddIFJCUDogZmZmZmM5MDAwNzdlZmQ0MCBSMDg6IGZmZmZjOTAwMDc3ZWZk
YTAgUjA5OiAwMDAwMDAwMDAwMDAwMDAxCj4gPDQ+IFs1MTguNTg2MTg2XSBSMTA6IDAwMDAwMDAw
MDAwMDAwMDEgUjExOiBmZmZmODg4MTBjMTlhYTAwIFIxMjogZmZmZjg4ODI0M2UxYTAxMAo+IDw0
PiBbNTE4LjU5MzI2NF0gUjEzOiA2YjZiNmI2YjZiNmI2YjZiIFIxNDogNmI2YjZiNmI2YjZiNmI2
YiBSMTU6IGZmZmY4ODgxZTMwNzg0MjgKPiA8ND4gWzUxOC42MDAzNDNdIEZTOiAgMDAwMDdmOWRl
ZjQwMDcwMCgwMDAwKSBHUzpmZmZmODg4ODhkMTAwMDAwKDAwMDApIGtubEdTOjAwMDAwMDAwMDAw
MDAwMDAKPiA8ND4gWzUxOC42MDgzNzNdIENTOiAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6
IDAwMDAwMDAwODAwNTAwMzMKPiA8ND4gWzUxOC42MTQwNzddIENSMjogMDAwMDU2NGYxOWJmZjI4
OCBDUjM6IDAwMDAwMDAxMTlmOTQwMDAgQ1I0OiAwMDAwMDAwMDAwZjUwZWYwCj4gPDQ+IFs1MTgu
NjIxMTU4XSBQS1JVOiA1NTU1NTU1NAo+IDw0PiBbNTE4LjYyMzg1OF0gQ2FsbCBUcmFjZToKPiA8
ND4gWzUxOC42MjYzMDNdICA8VEFTSz4KPiA8ND4gWzUxOC42Mjg0MDBdICA/IF9fZGllX2JvZHkr
MHgxYS8weDYwCj4gPDQ+IFs1MTguNjMxODgxXSAgPyBkaWVfYWRkcisweDM4LzB4NjAKPiA8ND4g
WzUxOC42MzUxODJdICA/IGV4Y19nZW5lcmFsX3Byb3RlY3Rpb24rMHgxYTEvMHg0MDAKPiA8ND4g
WzUxOC42Mzk4NjJdICA/IGFzbV9leGNfZ2VuZXJhbF9wcm90ZWN0aW9uKzB4MjYvMHgzMAo+IDw0
PiBbNTE4LjY0NDcxMF0gID8gaHdtX2VuZXJneSsweDJiLzB4MTAwIFtpOTE1XQo+IDw0PiBbNTE4
LjY0OTAwN10gIGh3bV9yZWFkKzB4OWEvMHgzMTAgW2k5MTVdCj4gPDQ+IFs1MTguNjUyOTUzXSAg
aHdtb25fYXR0cl9zaG93KzB4MzYvMHgxNDAKPiA8ND4gWzUxOC42NTY3NzVdICBkZXZfYXR0cl9z
aG93KzB4MTUvMHg2MAoKSSBkb24ndCB0aGluayB0aGF0J3MgYSBnb29kIGV4YW1wbGUgb2Ygd2hh
dCB5b3UgYXJlIHRhbGtpbmcgYWJvdXQgaW4geW91ciAKY29tbWl0IGRlc2NyaXB0aW9uLiAgSSBo
YXZlbid0IGxvb2tlZCB0aHJvdWdob3V0IHRoZSBpOTE1IGNvZGUgdG8gZmluZCBvdXQgd2hvIAph
Y3R1YWxseSB1c2VzIHRoYXQgaTkxNS0+aHdtb24gcG9pbnRlciBhbmQgd2hlbiwgYnV0IHdoaWxl
IGxvb2tpbmcgYXQgdGhlIApod21vbiBjb2RlIHRoYXQgbm93IGZhaWxzIG9uIHN5c2ZzIGFjY2Vz
cywgSSBoYXZlbid0IG5vdGljZWQgYW55IHVzZSBvZiAKaTkxNS0+aHdtb24uCgpJIHRoaW5rIHRo
YXQgaW5zdGVhZCBvZiBkcm9wcGluZyBpOTE1X2h3bW9uX3VucmVnaXN0ZXIoKSB3ZSBoYXZlIHRv
IGFjdHVhbGx5IAp1bnJlZ2lzdGVyIGh3bW9uIGluIHRoZSBib2R5IG9mIHRoYXQgZnVuY3Rpb24s
IHdoaWNoIGlzIGNhbGxlZCBmcm9tIAppOTE1X2RyaXZlcl91bnJlZ2lzdGVyKCkgaW50ZW5kZWQg
Zm9yIGNsb3NpbmcgdXNlciBpbnRlcmZhY2VzLCB0aGVuIGNhbGxlZCAKcmVsYXRpdmVseSBlYXJs
eSBkdXJpbmcgZHJpdmVyIHVuYmluZCwgc28gaHdtb24gc3lzZnMgZW50cmllcyBkaXNhcHBlYXIg
YmVmb3JlIAppOTE1IHN0cnVjdHVyZXMsIGVzcGVjaWFsbHkgdW5jb3JlIHVzZWQgYnkgaHdtb24g
Y29kZSwgYXJlIGZyZWVkLgoKVGhhbmtzLApKYW51c3oKCj4gCj4gRml4ZXM6IGIzYjA4OGUyODE4
MyAoImRybS9pOTE1L2h3bW9uOiBBZGQgSFdNT04gaW5mcmFzdHJ1Y3R1cmUiKQo+IENsb3Nlczog
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMTAzNjYKPiBD
YzogQXNodXRvc2ggRGl4aXQgPGFzaHV0b3NoLmRpeGl0QGludGVsLmNvbT4KPiBDYzogSmFudXN6
IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXguaW50ZWwuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IEJhZGFsIE5pbGF3YXIgPGJhZGFsLm5pbGF3YXJAaW50ZWwuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jIHwgMiAtLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2h3bW9uLmMgIHwgNSAtLS0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDcg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJpdmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jCj4gaW5kZXggNGI5
MjMzYzA3YTIyLi5hOTViNDU1OTY0YjcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcml2ZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVy
LmMKPiBAQCAtNjYwLDggKzY2MCw2IEBAIHN0YXRpYyB2b2lkIGk5MTVfZHJpdmVyX3VucmVnaXN0
ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAJZm9yX2VhY2hfZ3QoZ3Qs
IGRldl9wcml2LCBpKQo+ICAJCWludGVsX2d0X2RyaXZlcl91bnJlZ2lzdGVyKGd0KTsKPiAgCj4g
LQlpOTE1X2h3bW9uX3VucmVnaXN0ZXIoZGV2X3ByaXYpOwo+IC0KPiAgCWk5MTVfcGVyZl91bnJl
Z2lzdGVyKGRldl9wcml2KTsKPiAgCWk5MTVfcG11X3VucmVnaXN0ZXIoZGV2X3ByaXYpOwo+ICAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9od21vbi5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9od21vbi5jCj4gaW5kZXggYzkxNjllNTZiOWExLi45MWYxNzE3
NTJkMzQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9od21vbi5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9od21vbi5jCj4gQEAgLTg0MSw4ICs4NDEs
MyBAQCB2b2lkIGk5MTVfaHdtb25fcmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpCj4gIAkJCWRkYXRfZ3QtPmh3bW9uX2RldiA9IGh3bW9uX2RldjsKPiAgCX0KPiAgfQo+IC0K
PiAtdm9pZCBpOTE1X2h3bW9uX3VucmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpCj4gLXsKPiAtCWZldGNoX2FuZF96ZXJvKCZpOTE1LT5od21vbik7Cj4gLX0KPiAKCi0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQpJbnRlbCBUZWNobm9sb2d5IFBvbGFuZCBzcC4geiBvLm8uCnVsLiBTbG93YWNraWVn
byAxNzMgfCA4MC0yOTggR2RhbnNrIHwgU2FkIFJlam9ub3d5IEdkYW5zayBQb2xub2MgfCBWSUkg
V3lkemlhbCBHb3Nwb2RhcmN6eSBLcmFqb3dlZ28gUmVqZXN0cnUgU2Fkb3dlZ28gLSBLUlMgMTAx
ODgyIHwgTklQIDk1Ny0wNy01Mi0zMTYgfCBLYXBpdGFsIHpha2xhZG93eSAyMDAuMDAwIFBMTi4K
U3BvbGthIG9zd2lhZGN6YSwgemUgcG9zaWFkYSBzdGF0dXMgZHV6ZWdvIHByemVkc2llYmlvcmN5
IHcgcm96dW1pZW5pdSB1c3Rhd3kgeiBkbmlhIDggbWFyY2EgMjAxMyByLiBvIHByemVjaXdkemlh
bGFuaXUgbmFkbWllcm55bSBvcG96bmllbmlvbSB3IHRyYW5zYWtjamFjaCBoYW5kbG93eWNoLgoK
VGEgd2lhZG9tb3NjIHdyYXogeiB6YWxhY3puaWthbWkgamVzdCBwcnplem5hY3pvbmEgZGxhIG9r
cmVzbG9uZWdvIGFkcmVzYXRhIGkgbW96ZSB6YXdpZXJhYyBpbmZvcm1hY2plIHBvdWZuZS4gVyBy
YXppZSBwcnp5cGFka293ZWdvIG90cnp5bWFuaWEgdGVqIHdpYWRvbW9zY2ksIHByb3NpbXkgbyBw
b3dpYWRvbWllbmllIG5hZGF3Y3kgb3JheiB0cndhbGUgamVqIHVzdW5pZWNpZTsgamFraWVrb2x3
aWVrIHByemVnbGFkYW5pZSBsdWIgcm96cG93c3plY2huaWFuaWUgamVzdCB6YWJyb25pb25lLgpU
aGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIG1heSBjb250YWluIGNvbmZpZGVudGlhbCBt
YXRlcmlhbCBmb3IgdGhlIHNvbGUgdXNlIG9mIHRoZSBpbnRlbmRlZCByZWNpcGllbnQocykuIElm
IHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIHBsZWFzZSBjb250YWN0IHRoZSBz
ZW5kZXIgYW5kIGRlbGV0ZSBhbGwgY29waWVzOyBhbnkgcmV2aWV3IG9yIGRpc3RyaWJ1dGlvbiBi
eSBvdGhlcnMgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4K

