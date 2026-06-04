Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lUlnCIaSIWquJAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 16:58:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F25A8641294
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 16:58:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HBSmd37X;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FB31112859;
	Thu,  4 Jun 2026 14:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76471112859;
 Thu,  4 Jun 2026 14:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780585091; x=1812121091;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=4NJfBNxzsd2PdqJTJnSBCvNehE60SViIk/lN5LTKFmM=;
 b=HBSmd37X6nsmxzfdPFiod6+ILwtoi/u6KrsNOB+MiN9YrsENN0lhouRY
 EPyRCCEVsPVmLeCPl2ruyfb3a0gV3YLGvZ6np1NkT/WxJz44ZSUztjycn
 m1twnT+ESMSsNlcdixoffRlrax+vv5blt338c4vycp4ZHFo7+TVsHeuZ4
 eZ0OhJAL0AxN2deG7813nESNjwrpGnY8modRwSYe/0naevmKa+wdKiCGG
 mxQhRD9mikF/6J04eAozrTaiA/DbgjnpL6VHmdNASDFTGmc/hoRijcN2r
 D2YugWSZ1yXMyWe97BzZjVoP+aP/7+Gdw8TEE04N2GNTWe/Rr2Iic8m+C w==;
X-CSE-ConnectionGUID: o4fOank5QCO0v8R+ETEGUQ==
X-CSE-MsgGUID: 5lvn4SXZQEuqWrn3ZbeYoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="85301968"
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="85301968"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 07:58:11 -0700
X-CSE-ConnectionGUID: RE6t6s5rRAy3BTofqT4/tQ==
X-CSE-MsgGUID: O7ZazijrSBaZARxXcBDDfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="244637007"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 07:58:10 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 07:58:09 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 4 Jun 2026 07:58:09 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 07:58:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n9nxhKxHG5NTEneYW7PhXmHQf2cnT+9lI2eCZ2o4DbZqsfZSJRMt7nYl8AW7gLnTTNm+OZ0fTwrItulmKps3gbiZN/0IsbbgRRx57S39NJBXNGNp9vzUXSbkbFxSAN+cGO7uhvmoReN3uf7A1QthYOnv2tQkIny6nAL9/UkexveJcfPERBnB2eP2w1vZJAQs35lG38l5z1hakQFs9y+y4sC+G4MPXukKSev9+Pch7Z1oOX17l6CJk7XFcCE9yL5WtBlyId2cKj37u7xtKqPcBSX9gQV/u0okUYcWrHuqSXFrsgQZm1bDgBCMWv5kVowEgsNLKNAdGuPNg5UfGrJYQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4NJfBNxzsd2PdqJTJnSBCvNehE60SViIk/lN5LTKFmM=;
 b=hqT01tG+sW9AyNvsD8emjPDv/poNjG1W809qhdHhZhrbU9ciZvGX2s6+gqJmduonYauKlw5qQFldUHjX/5R7BijwObB72zYrG0kHndmhBytqnALx1DkQmeK4waH7MelVlJ/M8S8mCFj21Sej6/pas4fqnjtvSxO8QkfcP3j0YCHdUhLQSEnjAUbrBHywrKitSq1BF7NDQomPAnO2pIJsuN8jd/sZIU9qbP1qHVKP6Wuh+VnaOT1Vn1rjY/DO8N63jtQGchOEXukbrnb358NnTyPVumSyomGR5QaEQUl1BmUbfriX61yYdYkjPqWU6dpMXr+VKjDbzW5sML6fpmi5/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 DM3PPF74831EF4B.namprd11.prod.outlook.com (2603:10b6:f:fc00::f2e)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.8; Thu, 4 Jun 2026
 14:58:03 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a%4]) with mapi id 15.21.0092.006; Thu, 4 Jun 2026
 14:58:03 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 09/11] drm/i915/bw: Print derated bandwidth numbers for DG2
Thread-Topic: [PATCH 09/11] drm/i915/bw: Print derated bandwidth numbers for
 DG2
Thread-Index: AQHc7o8CydcCZWTCjkuNJkaUouzKnbYuh/YA
Date: Thu, 4 Jun 2026 14:58:03 +0000
Message-ID: <876deaaeef9a5b2559f1cdfc131f4ba6bb925882.camel@intel.com>
References: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
 <20260528103458.18069-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20260528103458.18069-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|DM3PPF74831EF4B:EE_
x-ms-office365-filtering-correlation-id: d88615c0-148c-48d1-c9a4-08dec249ad90
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|10070799003|38070700021|22082099003|18002099003|11063799006|56012099006|4143699003;
x-microsoft-antispam-message-info: dSRu+qJfmByF5WMoKFACeksZkzrog99YT7cfc5P9/5Z3HpZHk2i6Xks+4sIPPLd+Ii59+8ydsx7rKD2PktAR5X3l/QI+RvFBDpkxi67280MMFFSQcgVSM+2SL/h+vxS0L8F9FGJfw6A1k3HukWgNxhnTAn4zpvQHQ0H8mszflQu8ZxcGuEN5svdD31ZqBOvMuD/KII5DA5E4Ps0cHp5kqBhLxkqPTG/V53yeKBl3MxRnbyx1z6aax8sugWReGPJEYS6bJxjG2MI894JE1gVfZWKz7dZM9vz+340OLx5Ov0NkWhfOvqTunYmSXVLDgmyihm/1vj+7NJOXWR4T9/Q75UTYKPQzxHo3Eji6d47pRzw9jm9EFSxl2S0xfbjHPHkL9H4vcpHWFS+kojYZc/YBbmC5Agftn0zpGnFgaUJmVHlghgWA28box0qqV94qY9GMjwn/pRCCMGJB7iprE8UzYI50a0CdvHLaZ0oAPttTUMNy+dZbmSPORqQZVAN88Ipr1uoHE0CcEGRpyxDRvHCjmpiOD5kipCJor39wAGAr3cZs8wvAJebKgOPzXicaUq0XCamRBACLR3WX589OhmyOoUtzRTjqZvonDwRQCCc3MjHgexTh383Vy+in1OoqDAGNimlTMpBXiYw5TbYECw2G8W78Ofwk4hOO9i8psAImAfaaVDRNXpStj+KckXmhOtUOoZ/3aK758XN32EBeJ+L6pkCvw84oAwkYGvbvO+hpqOfKiK5c8EBYcaV+GUys3qpb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003)(38070700021)(22082099003)(18002099003)(11063799006)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OS9TbVJHRXRSa083Qmw4cFRUMW5OYmxGUVJuYWJVZm9lcEcrVGdUVVZCYzZj?=
 =?utf-8?B?MTRJR2FmMVRMRFVlMFA5OGVqV0RWR2t6dzlLa01CVXRhMlVjZ29LYzFLcmRK?=
 =?utf-8?B?Myt3ZW5vWGp3VGRxVWN4NzFJaHdEVnJWaVJmZlViZGFXL0E5RjkxWEhxbExZ?=
 =?utf-8?B?a0IyTjlrREpFMWV3dGl6cWlZOCs4azJJU082K0lQb2VJTkZnenBHWHhPSWhL?=
 =?utf-8?B?WWxQcmdzTHhXQk9WREhZdjJpMHFTcFJrQS9oR3gwR0JtNUZnT1IyV3F4cXlL?=
 =?utf-8?B?c3dOdFNuY09Ddjh4M0d0TjcxcEVHMEc0cGdYdDBpZ01yQWZBSENnRit6OUVF?=
 =?utf-8?B?d3R6WSt2eVFYSU9ldzhTWnU2aW15MDMyZEVKQ0hvMjNDd1oxaTVHZTB4Tnlw?=
 =?utf-8?B?MGtqd0xQYWhhcjJKSEVNZnNLNWU4N09KUXVXM1pLOHJaTk8vWFc3TklNeElC?=
 =?utf-8?B?c0M0emtwTGZueTE3ZTErTWpOeXhkMEtnaDM5b2NXUVA5a0syRGFCcm5HK0ZD?=
 =?utf-8?B?UGUxNTJQdFUyS3pqVWl1NHV6YWZDdWxGbjNNL3N3OVhVUUEvTVVjamg5MnlK?=
 =?utf-8?B?YjBQZ0xKTzU5aXdrcUQ3TXpaVDNkN1FzREVrYlExMnVYYTFPN0ZkWFlEOUdN?=
 =?utf-8?B?Szc0d3RjNFlQWUc0aTF0Q2lRa3NnQzc0OEFPTmFFN0w2L1NYVjlMckNFeHdr?=
 =?utf-8?B?N2E1QncrVmxxUlZ4c05NQlRvY0ZuRk1zUUNXc2xvU05XKzVyN0RQTkJDOVF6?=
 =?utf-8?B?MlZhMzd2d0FiYjFrOG1sWFd6aFFXT2JZTXFNZDcyQkQ1bGoxeTk2M0FBUDg0?=
 =?utf-8?B?TFdvRkkwWXVrcThTamlneEZESlFJVStZeWNlZ1l5OGxsRmR3V0dOenBFcVJM?=
 =?utf-8?B?Wi9qVnIzQWpqRWh6czZPb0ZwbXVtLzIweGhyWTdNODhxSm1DdDY4MEFmV0Y1?=
 =?utf-8?B?Y3ZoYXpHZHMvaVQrYno2RVgzc3kvYndqU1RldEZzSFF4dnlodWZ3YUp4SGlX?=
 =?utf-8?B?d1E5VHZQcWRhUVgxMUZheGhYRnNyWVJDV2ZBS3dIbmU4cTY1eVZXT0xkbTJq?=
 =?utf-8?B?VGZpMk95ZWhlYmJMaHJyeXVWcElGakt4MEptOVBKaHp4LzdHVHpBYUl5L3JM?=
 =?utf-8?B?akFDWWE4VnlYeUtQUSsxam5oTnNDTjlvbThwcHlDakNKVTFyUlJHa3l1RjEr?=
 =?utf-8?B?SlR3Uld6ZDN4VnFFenp0cXZSVlFrZlIrTTVOSjN2aW9MZTUrbVFMclRydFZt?=
 =?utf-8?B?QU01Z2dWLy95Qld1dUcvUUNHS0l5TEY2dHBzMFBvN2NTSUtONGhnZzNjUVpW?=
 =?utf-8?B?MFZtSENYU1ZyMHduSUg1ek9iVUV0eFluSUg0VTA0ZzkwMzBmUllHYW8yT2E3?=
 =?utf-8?B?US9wMUxTZFB0Z1hQZFZ5SGhCc3kwWklQWW53dmlicHUxRHNGSFdXLzRkQWVJ?=
 =?utf-8?B?dHVYdVVkNEh3T2NqaGkxYTlYUTd3K1FWNzRKNlZtTGdaM1ozVGR6YWZUTC8x?=
 =?utf-8?B?QnJjckRDK0NVdU9ML1ljOEZ2OGJRRW54cHd0K3VOcUpmUGNLYUJFZ25oazIv?=
 =?utf-8?B?enZiNXIzSG1iTmlGRWhha3VFUmtEdnM0aStqUTBGMjZoTTF2MHA4VStXSmh5?=
 =?utf-8?B?SWVkMU1hZDh1R3VObXR2a3ZkdlRHNkpxMEpXRmQ1bUkySlBOUENvSHhFN1lU?=
 =?utf-8?B?RDRTREZGbmxCczllclRSNzlCMmZDVmdFY3hjUjRqQWJ0ZWlFK25iRk5ZS1Mr?=
 =?utf-8?B?YjZubkU3R21QRHl0bnErMkFGcjBkckdXMFJ2VnpQQXFPWWNMMWNMYmdFL1d2?=
 =?utf-8?B?NlJTWVVKQ1F0TDhrRWl0SHg3Z3pTZDE0VE1NL0pqWktuVVA4ckxhK2hMTnVY?=
 =?utf-8?B?eWc2YnhHR2h0MmRaR20wejQrdHRnRXBTUldRNWxUWXMyc3RwR0NUWk9DVUJu?=
 =?utf-8?B?a0s3Y0d1Zy9pRDhPUEVwUU5VZDdQMmhxL2VrRDd1Rk11bWVRc28yRUkzM2dK?=
 =?utf-8?B?SENCL2FOK21qNEptc2oyWHhtWkx4am5RU1lNZFVRRUFqSXJqUUo4QVdwOGhv?=
 =?utf-8?B?U25MWjhGYUdqdnFyTFlhVHJ2cmxwMzZYVWtSbnA5a0M4VEc1Wnd5cFFNY293?=
 =?utf-8?B?allzb0phU0U0UGFQUjVmbUVuVzFsZmFDRjRIRlRobnY2dWQ2UVQzVVl6TVhE?=
 =?utf-8?B?WHdXWHZuNkx1KzRTSU1QU3N0MjJtMVh1MHI4ekNEREtmb1dPSktXS3Baakd6?=
 =?utf-8?B?RGE2azQ0YUdLWWtmYmpiM0JzN21PMWlWRUtQMWZSNlNvMEdtWkJVd1NZS1Ey?=
 =?utf-8?B?VkN3UHRTT0RPSk1kMGZod1hUQ01NZ2RDQnB6ZWVZRW1IL0krdHhlZGRUd0dI?=
 =?utf-8?Q?dI8pn/JQN4PqfBQ+XUiAawWS30V/NY+M+SdnDKQNej2be?=
x-ms-exchange-antispam-messagedata-1: CI2ZxBARAV21LyjtnnHBrCQmeh70m0Jhsqo=
Content-Type: text/plain; charset="utf-8"
Content-ID: <149776BFE0CC964DA58371EC22B939D7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: FdQOEFI0n0vJsA+lIPHtKsF9dTUhquYim5fb+1rbFTrg0dGLs0WFaDDXrWkILUHd7j5LpUjyrFKUqUey9jfJL4FSUH6t+pCRlVvzp4bzGX1ra+x1ejK2DD1BOY64slKQe38VqZi/vVITostVP5JJKO/aBQQDk/iDZ14EGIKKuwjXgMb9Qt1Fxi9QEMlA/0wz+pg8ytGpDD5RRdfxfQtZ0k94Y5m34dtKLtFhS5dVrzlD2JkRL1nlrEX1KMU311W6gXFczldAgfbV8d5CUZ6QmYcAAVKRBv72vYzNt39mznyX3nWVSKNUhyBZqPdFp6p1ikmhp+8T5aXjxuHfua5gUg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d88615c0-148c-48d1-c9a4-08dec249ad90
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2026 14:58:03.2833 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Iwyine+MxLnxPL/guzMK/9v04dtPuyKA7oE7OBDyBzAv5hGPpYYL+92Osg/AbSf/alCzutTnrbnNwEvvs3IsOfmgS2JlJcDyarLf9jb+7EI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF74831EF4B
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F25A8641294

T24gVGh1LCAyMDI2LTA1LTI4IGF0IDEzOjM0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gV2hpbGUgREcyIGlzIHVzaW5nIGhhcmRjb2RlZCBudW1iZXJzIGZvciB0aGUgbWVtb3J5
IGJhbmR3aWR0aA0KPiBzdHVmZiwgbGV0J3Mgc3RpbGwgcHJpbnQgdGhlbSB0byBhaWQgaW4gZGVi
dWdnaW5nIGFzIHRoZXJlIGFyZQ0KPiB0d28gZGlmZmVyZW50IFNLVXMgdG8gY29uc2lkZXIgd2l0
aCBkaWZmZXJlbnQgYmFuZHdpZHRoIG51bWJlcnMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgfCA0ICsrKysNCj4gwqAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9idy5jDQo+IGluZGV4IDU5ZGYwMWI4YWQ3Yy4uZjQxMjEyMjNhNThiIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IEBAIC03MTEs
NiArNzExLDEwIEBAIHN0YXRpYyB2b2lkIGRnMl9nZXRfYndfaW5mbyhzdHJ1Y3QgaW50ZWxfZGlz
cGxheQ0KPiAqZGlzcGxheSkNCj4gwqAJZGlzcGxheS0+YncubWF4WzBdLm51bV9wbGFuZXMgPSBV
OF9NQVg7DQo+IMKgCWRpc3BsYXktPmJ3Lm1heFswXS5kZXJhdGVkYndbMF0gPSBkaXNwbGF5LT5w
bGF0Zm9ybS5kZzJfZzExDQo+ID8gMzgwMDAgOiA1MDAwMDsNCj4gwqANCj4gKwlkcm1fZGJnX2tt
cyhkaXNwbGF5LT5kcm0sDQo+ICsJCcKgwqDCoCAiUUdWIDA6IGRlcmF0ZWRidz0ldVxuIiwNCj4g
KwkJwqDCoMKgIGRpc3BsYXktPmJ3Lm1heFswXS5kZXJhdGVkYndbMF0pOw0KPiArDQo+IMKgCS8q
IEJhbmR3aWR0aCBkb2VzIG5vdCBkZXBlbmQgb24gIyBvZiBwbGFuZXM7IHNldCBhbGwgZ3JvdXBz
DQo+IHRoZSBzYW1lICovDQo+IMKgCWZvciAoaSA9IDE7IGkgPCBBUlJBWV9TSVpFKGRpc3BsYXkt
PmJ3Lm1heCk7IGkrKykNCj4gwqAJCWRpc3BsYXktPmJ3Lm1heFtpXSA9IGRpc3BsYXktPmJ3Lm1h
eFswXTsNCg0KUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFw
aWxsYWlAaW50ZWwuY29tPg0K
