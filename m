Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C44607FC7
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 22:28:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7A228994A;
	Fri, 21 Oct 2022 20:28:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9100210E66C
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 20:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666384100; x=1697920100;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Js/QECbXpyyOOZrB1VqXX/cEsl0wNR3M7NxapspKQWU=;
 b=mpncrY7EQZ+qj3dLEU2n1S7XqlRqeVD8riJkX8e44qwb+HaMp+uzHxgM
 bARWUJYPk0OWXil1mztfwjCv5bI+fBeQXY2EqrbnLA0S0gB6xKOlvzbju
 j/02d0Kq3ryQt6sDuCsPxtVeVZJgaInP+bEMoTNlX9vjDdEV/V6DGGg/g
 N9g9eAivxLEuf6gGDhIogUH2j6/bGA6fAKfgGhqUyJ1vcmSyjGBVdA/Jc
 +mcmSF3vfYeiis1JybsQHFC01tFoPvnk2tH05lYh8Z+XFY3DF1lhN3tUj
 QGJ3iZpa7gfDlNalPkzmJDSaiPU7dLqSuLgbRgiKNuEnYa9Rz0z3yWOIq w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="305830771"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; d="scan'208";a="305830771"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 13:28:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="755946832"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; d="scan'208";a="755946832"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 21 Oct 2022 13:28:19 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 13:28:18 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 13:28:18 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 21 Oct 2022 13:28:18 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 21 Oct 2022 13:28:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BNImZgDGjfNdr8XWe2YjxfldunKbK2QUn0e2BoroM2mMsxEIRZwtl0f0cRmONk9o9wj0R6oNhyjV1m3TYgPWwWr6mkIs9Sd74VGmqtVfCrEsZ50JCzvnghtBqoG94gdkzGwMyAaBgAHbXmRhoMu+yJoLn0+8K5XFcwlC+W2E1OtQA5FxmfbgrirIUDagNOECxR8qVAPh2HpFE5pL0XoSyn0xzdFuEmElDZBPBGgCCyHQPXiaa15YG672y0e3oiq93gCBiNEWVxppkDFANtyQuSzk31T7jSpdy40oGwhlhcT8Y9Y5/nVDz3kSzISJSqnuvmYsG2aqmYq41D781K8QSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Js/QECbXpyyOOZrB1VqXX/cEsl0wNR3M7NxapspKQWU=;
 b=hWmMm033m7HXTOfnW6Z7d+IMuALh2iSWLB/TqJBK2jwsr1j1iCnCXSq7pG+bd1AouNT3YSFbkdfVSkGgLIcLtUfM7dITgkX8/lcOnipZC6kZxrmq37FeUVqeU04LWZ+c0ahUB2P3xZ1MB+aSWtaNxR6bi46yC5iNdp8o8hDMYvTCQotL9/nw1XCty11KHjgizLQkzvh9JnxNYh2gVvX+k4aXk/Iaxqo8xDvQqrB/CS26EKCx7SrFGzejgjpbY7r9lfnc+QY8cgW/WCm/JpRaXBLwIh8xWBbCBim7b5fKX23x5yf3xEdSAJs2UHUwou85oD+WeQnBUD3hL+7Vg4X33g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by DS0PR11MB7631.namprd11.prod.outlook.com
 (2603:10b6:8:14e::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Fri, 21 Oct
 2022 20:28:16 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%11]) with mapi id 15.20.5723.033; Fri, 21 Oct 2022
 20:28:16 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Vivekanandan, Balasubramani"
 <balasubramani.vivekanandan@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/4] drm/i915/display: Introduce
 HAS_CDCLK_SQUASH macro
Thread-Index: AQHY5OL1WQPEo8wOT06Ft/1eAPfuwq4YbuWAgAAaqICAAMMJQA==
Date: Fri, 21 Oct 2022 20:28:15 +0000
Message-ID: <CY4PR1101MB21662A4AB2337D4A29F7E7FAF82D9@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20221021002024.390052-1-anusha.srivatsa@intel.com>
 <20221021002024.390052-3-anusha.srivatsa@intel.com>
 <Y1JGHxF2PsEFeCNd@bala-ubuntu> <87mt9pfts4.fsf@intel.com>
In-Reply-To: <87mt9pfts4.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: balasubramani.vivekanandan@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|DS0PR11MB7631:EE_
x-ms-office365-filtering-correlation-id: 150cf69a-a436-41a9-d5bc-08dab3a2c8b9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tr5JXal+2kRnmAmWMYTnInrWXsEaIpTLYpQ1zd68ygg7pe61JLWGz2FBD/aPQVDxbtg1RnRrU3YUIV08vyTFJh7DwxiuhbSriMx/XVzET1T3Qelq/ltrS3Hk9IlMOAuEiTBFqLT/XRgNAdlFcDZlcSwKQe5UKHhD5g5ybAtgq8JPUb3ksR3FtuwmXSfWnS+oe3D8hmApoPo7N9UvDTrfSK3Ky3giftAQqhJjwCJTloeUOx+WrqXWG+TE4eLtGSIf/LD+Bic7hnLli6R8eAXf4hn2QmbcNtVNXUxf3XafbLX4KgYxG4jecdFcchNQO1nM3rnaQfkwF38BRLl0eImbYDQy9n9A1rtemj8tkK5vKqvptHTHLcRmDC9jqs/pWEUtTigUxXh6C6RmXHQ4YvEWm0CAgEqlmdTJ+k7D8h7tKkyYHvQWNJVW50C9wA2aXIL70R0NNnPc0PkaeuwP4oQwLsEtDM+Ph/imGDnXw7klKoDJ118UZOxMWHQSMBuUVZMqK4U5Mmxk8KtA2HVpeSXU0xfvmeM5f3Fm1F2iou09wZp/w10axBkWxl+KLL0BdCGY/Jds1zFFyLLHKB9wV4quYhau4pwQQCFYkK1gj9PC8XndnqNEfc0tNpeOUl5LFfm3I/kY5vyP4g2C2o52gbOItCdPtG4dn5sgBjtQHo+YSZAouUN610Qwv9+kW/psBbSpthCrKT9rz2t0DtwSpD+qQkAQRQCQeKaAOuE/ooJHlx7lVT2ec1yi9eYAs6gpw3S7wvuOTsyGd5mnQ+AXQ0pB/w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(376002)(366004)(136003)(346002)(451199015)(33656002)(7696005)(9686003)(2906002)(186003)(316002)(38100700002)(83380400001)(86362001)(122000001)(38070700005)(82960400001)(8676002)(55016003)(66556008)(66476007)(52536014)(110136005)(64756008)(66946007)(41300700001)(66446008)(8936002)(5660300002)(71200400001)(76116006)(66574015)(478600001)(26005)(53546011)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VmMwbFFQeXN3dHBTNlV1QytZNXBWcFExcXRpckY1T291d3JZbUMvY2ZNWVdT?=
 =?utf-8?B?RUx6NDFPaE9GeG9oV0IydWM5QisrenM0Qm1tUERiRGhuRnRNV0wrNkJmMUxB?=
 =?utf-8?B?ZDA1emowckJXczJOT1pwTXVscWFOQUFZT3hYdTllQjB2ZGJ4bVBzeGVMdjZu?=
 =?utf-8?B?Q3I0YkMvSjZWSDJIS0F3V1ZNZDdHK2dDZ21rWWIyN2Rtbkd6YnNTSnQ2NEJw?=
 =?utf-8?B?bDFZM0lsNnlDVEdPTVR0UTNYR3VpSUhYQTIxTkhKdTdCQlM5S1dDUTZxcFpr?=
 =?utf-8?B?eWFSMnNSbHdINmxKRHZXSzJoRVBTWDJQWjh2STJTUERsUzU3UmZvQ0xYbi9q?=
 =?utf-8?B?ZEdmV1RaYnZHVm5jKzdLV21hY2NhK2xCTDdLekdDdW9kcWlEcks4ZlB2U2lB?=
 =?utf-8?B?UDBrRndyUFpSZnhzdXVCY1NhMEdaNDNrUEJpR3lpOFhRemxQUHlBUG02SFR0?=
 =?utf-8?B?cWhJZFZWei9kWmg0WEFHdjdZUERuYW54NVdTOE1ZNXQzMVhPSGlsREZBK1dJ?=
 =?utf-8?B?MHM4SmwxcmNjZ3V5WjJTZFdzTVZLUFFlYi92YmlUejRDSHViSHNXSTN6Vld0?=
 =?utf-8?B?bzZIdGFvY1d0OTBPMlRaR0VZS0Q3NDFYOVluVnRSZWRZRmxyWTlRbVdQTEh5?=
 =?utf-8?B?SWNBRC9yYk1ZbXVPb3UvdUpyVEw0YUVnRWFLNE44eVdPaTd2QnR1cS9wTzdO?=
 =?utf-8?B?OTVTeVFQdEVoaUZHUkJSbEt3MUF2VmtDaVVuVnRpWWVNTzFrR1hqNktYM0dR?=
 =?utf-8?B?QjBuNXpiendra3ErbmU5ZWVBNXJ2RkN0TEJEUU8wOFdoTlNSbXNsalJEK3h2?=
 =?utf-8?B?d1NSQmtqdm9xNDd2YW9IMEFHSDRmMjZtZGVEMEJqZVlLT2F4dUhJbTg0dmtM?=
 =?utf-8?B?U2NDVjF2SHR2U1p1UWVqeTBtLzgxLzdGVGk3QnNoYzNXd1JQL0k1QTNreU1F?=
 =?utf-8?B?Nno3Q0J0Sit6NnVJN2NkeGgyaVZ6Y2xJZ1BOL0hJb1BicmErM3lZUmdlNjAw?=
 =?utf-8?B?a2haaDZUd3oxYzlGQ1cyeXR5eTR0TTlEc2s0SHlHaXVVYkxyZ2h2RzNMSCsw?=
 =?utf-8?B?VDJVTTQ3VElhbUVzbGs2blFjdVo4T1Q4SG4rQTRVWlFXeFU2Y1FXZVBTNzVS?=
 =?utf-8?B?bUphR0pZY0kwbWRVTCt0VUQrRHkvMUJXR2RGZ0NRNlRYUlZocVUyMlVTMncr?=
 =?utf-8?B?WUhxcVgvam80dC9rbkliZ2pFNnBFNFRCdy96TUxkZWo2d2QyYVo1aStyTzI0?=
 =?utf-8?B?b3ByWi9vR0dncjJVRnplOW9tWFJpRDJqU2ZtS1p0UFdHVmJweVRDTzFvbVlR?=
 =?utf-8?B?bGtmVFVtVHc4aWo4ZW0ybFdpRWpSb0ZrWnFzUEFFUlpsS1VEdEsraDVQQUJO?=
 =?utf-8?B?MDRKRllQUi90NXgrR0F4TkZBc0FTQjZxZG56Z3NBanZSQkdMbnRiUmUzNnJX?=
 =?utf-8?B?ajFvR3BwRkRJTjAvYWN1MjV0TnFpZVV0TCtTdHV4alBmazR5M2NaZFh2VndS?=
 =?utf-8?B?eFFaK1pVUjJHcFJaWGtBWXJyRmJXRUxzRGdOM0NSTzc0NlUreE16SzV1U09l?=
 =?utf-8?B?Mk9oaFBhclN6TVBaVUlLN3BNQWYvSjhEWlRwMmdnc0lKUTQxTjRGdGVBOVBo?=
 =?utf-8?B?RmRKbXFYSUNGeTdoQkh4OFprUzVvVEhPdkQ4K3lwQ3RRWHZFcysyL2FIZnRp?=
 =?utf-8?B?b2RwQ203MzVZNXlRUzBlYVh1UE1tQjd4ck9nZHh3VzRVOEg4aHRBZ0EvZUVM?=
 =?utf-8?B?cGNVVVk5L2xnT2JveS9tVnVLMTRHZVhsbU16d1YvNElRR3JNV1Q5VVErcHd0?=
 =?utf-8?B?WXJ6WlhWUy9qdnNRdTluYmdnYS9ZY0VscDVuOHdXSDF2NFFiNlQrZGlyQzJ0?=
 =?utf-8?B?YkFJYU5ld0M1dld3aVJlbGJZa0JVMWI3RjllYitxRWxUb0hNSWdmUDNVSTlG?=
 =?utf-8?B?L1BEK2l6cVk4U3hHZnBKbHRwbEVxaTlMYzVvQW5KUDR1NDE5VWU0RWdvSHdW?=
 =?utf-8?B?eVB5b3hFeE5HSDVYOEppaEJYTzFaNHVpS1R4UW1uZ0E2L3orRVpXWnB3Vnhz?=
 =?utf-8?B?UXdrUHNRRE5jSDlRUWVSUjdhTEFaOWY4V0o2ZHkrRFgwZ20vcXIrc2dYUWpS?=
 =?utf-8?B?OUtCMjQ0VzB2cExaVk91RC84Y0NGSEFZTWtPQjBmNGNlQ1hERmc2NTlhQ011?=
 =?utf-8?B?R2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 150cf69a-a436-41a9-d5bc-08dab3a2c8b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2022 20:28:15.9573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ih3fTAMNREDsPdSVXvWNLIYBT0hhiCRyd5HXRng5CfLQHTbbmd4ekANCSZcLCeisESanYNucEBY6X4Xqi1Poay29r/AQ0jj+M6LnQfhwzOQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7631
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/display: Introduce
 HAS_CDCLK_SQUASH macro
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBPY3RvYmVyIDIxLCAy
MDIyIDE6NDcgQU0NCj4gVG86IFZpdmVrYW5hbmRhbiwgQmFsYXN1YnJhbWFuaQ0KPiA8YmFsYXN1
YnJhbWFuaS52aXZla2FuYW5kYW5AaW50ZWwuY29tPjsgU3JpdmF0c2EsIEFudXNoYQ0KPiA8YW51
c2hhLnNyaXZhdHNhQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSCAyLzRdIGRybS9pOTE1L2Rpc3BsYXk6
IEludHJvZHVjZQ0KPiBIQVNfQ0RDTEtfU1FVQVNIIG1hY3JvDQo+IA0KPiBPbiBGcmksIDIxIE9j
dCAyMDIyLCBCYWxhc3VicmFtYW5pIFZpdmVrYW5hbmRhbg0KPiA8YmFsYXN1YnJhbWFuaS52aXZl
a2FuYW5kYW5AaW50ZWwuY29tPiB3cm90ZToNCj4gPiBPbiAyMC4xMC4yMDIyIDE3OjIwLCBBbnVz
aGEgU3JpdmF0c2Egd3JvdGU6DQo+ID4+IERyaXZlciBoYWQgZGlzY3JlcGFuY3kgaW4gaG93IGNk
Y2xrIHNxdWFzaCBhbmQgY3Jhd2wgc3VwcG9ydCB3ZXJlDQo+ID4+IGNoZWNrZWQuIExpa2UgY3Jh
d2wsIGFkZCBzcXVhc2ggYXMgYSAxIGJpdCBmZWF0dXJlIGZsYWcgdG8gdGhlDQo+ID4+IGRpc3Bs
YXkgc2VjdGlvbiBvZiBERzIuDQo+ID4+DQo+ID4+IENjOiBCYWxhc3VicmFtYW5pIFZpdmVrYW5h
bmRhbg0KPiA8YmFsYXN1YnJhbWFuaS52aXZla2FuYW5kYW5AaW50ZWwuY29tPg0KPiA+PiBDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPj4gU2ln
bmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPg0K
PiA+PiAtLS0NCj4gPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsu
YyB8IDE1ICsrKysrLS0tLS0tLS0tLQ0KPiA+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaCAgICAgICAgICAgIHwgIDEgKw0KPiA+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
Y2kuYyAgICAgICAgICAgIHwgIDEgKw0KPiA+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZGV2aWNlX2luZm8uaCAgIHwgIDEgKw0KPiA+PiAgNCBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKyksIDEwIGRlbGV0aW9ucygtKQ0KPiA+Pg0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4+IGluZGV4IDBmNWFkZDJmYzUxYi4uNDVi
YWJiYzYyOTBmIDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NkY2xrLmMNCj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jZGNsay5jDQo+ID4+IEBAIC0xMjIwLDExICsxMjIwLDYgQEAgc3RhdGljIHZvaWQgc2ts
X2NkY2xrX3VuaW5pdF9odyhzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+
ID4+ICAJc2tsX3NldF9jZGNsayhkZXZfcHJpdiwgJmNkY2xrX2NvbmZpZywgSU5WQUxJRF9QSVBF
KTsgIH0NCj4gPj4NCj4gPj4gLXN0YXRpYyBib29sIGhhc19jZGNsa19zcXVhc2goc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpIC17DQo+ID4+IC0JcmV0dXJuIElTX0RHMihpOTE1KTsNCj4g
Pj4gLX0NCj4gPj4gLQ0KPiA+PiAgc3RydWN0IGludGVsX2NkY2xrX3ZhbHMgew0KPiA+PiAgCXUz
MiBjZGNsazsNCj4gPj4gIAl1MTYgcmVmY2xrOw0KPiA+PiBAQCAtMTUyMCw3ICsxNTE1LDcgQEAg
c3RhdGljIHZvaWQgYnh0X2dldF9jZGNsayhzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsDQo+ID4+ICAJCXJldHVybjsNCj4gPj4gIAl9DQo+ID4+DQo+ID4+IC0JaWYgKGhhc19j
ZGNsa19zcXVhc2goZGV2X3ByaXYpKQ0KPiA+PiArCWlmIChIQVNfQ0RDTEtfU1FVQVNIKGRldl9w
cml2KSkNCj4gPj4gIAkJc3F1YXNoX2N0bCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIENEQ0xL
X1NRVUFTSF9DVEwpOw0KPiA+Pg0KPiA+PiAgCWlmIChzcXVhc2hfY3RsICYgQ0RDTEtfU1FVQVNI
X0VOQUJMRSkgeyBAQCAtMTc0Nyw3ICsxNzQyLDcgQEANCj4gPj4gc3RhdGljIHZvaWQgYnh0X3Nl
dF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4+ICAJZWxzZQ0K
PiA+PiAgCQljbG9jayA9IGNkY2xrOw0KPiA+Pg0KPiA+PiAtCWlmIChoYXNfY2RjbGtfc3F1YXNo
KGRldl9wcml2KSkgew0KPiA+PiArCWlmIChIQVNfQ0RDTEtfU1FVQVNIKGRldl9wcml2KSkgew0K
PiA+PiAgCQl1MzIgc3F1YXNoX2N0bCA9IDA7DQo+ID4+DQo+ID4+ICAJCWlmICh3YXZlZm9ybSkN
Cj4gPj4gQEAgLTE4NDUsNyArMTg0MCw3IEBAIHN0YXRpYyB2b2lkIGJ4dF9zYW5pdGl6ZV9jZGNs
ayhzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ID4+ICAJZXhwZWN0ZWQg
PSBza2xfY2RjbGtfZGVjaW1hbChjZGNsayk7DQo+ID4+DQo+ID4+ICAJLyogRmlndXJlIG91dCB3
aGF0IENEMlggZGl2aWRlciB3ZSBzaG91bGQgYmUgdXNpbmcgZm9yIHRoaXMgY2RjbGsgKi8NCj4g
Pj4gLQlpZiAoaGFzX2NkY2xrX3NxdWFzaChkZXZfcHJpdikpDQo+ID4+ICsJaWYgKEhBU19DRENM
S19TUVVBU0goZGV2X3ByaXYpKQ0KPiA+PiAgCQljbG9jayA9IGRldl9wcml2LT5kaXNwbGF5LmNk
Y2xrLmh3LnZjbyAvIDI7DQo+ID4+ICAJZWxzZQ0KPiA+PiAgCQljbG9jayA9IGRldl9wcml2LT5k
aXNwbGF5LmNkY2xrLmh3LmNkY2xrOyBAQCAtMTk3Niw3DQo+ICsxOTcxLDcgQEANCj4gPj4gc3Rh
dGljIGJvb2wgaW50ZWxfY2RjbGtfY2FuX3NxdWFzaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsDQo+ID4+ICAJICogdGhlIG1vbWVudCBhbGwgcGxhdGZvcm1zIHdpdGggc3F1YXNo
ZXIgdXNlIGEgZml4ZWQgY2QyeA0KPiA+PiAgCSAqIGRpdmlkZXIuDQo+ID4+ICAJICovDQo+ID4+
IC0JaWYgKCFoYXNfY2RjbGtfc3F1YXNoKGRldl9wcml2KSkNCj4gPj4gKwlpZiAoIUhBU19DRENM
S19TUVVBU0goZGV2X3ByaXYpKQ0KPiA+PiAgCQlyZXR1cm4gZmFsc2U7DQo+ID4+DQo+ID4+ICAJ
cmV0dXJuIGEtPmNkY2xrICE9IGItPmNkY2xrICYmDQo+ID4+IEBAIC0yMDI4LDcgKzIwMjMsNyBA
QCBzdGF0aWMgYm9vbCBpbnRlbF9jZGNsa19jYW5fY2QyeF91cGRhdGUoc3RydWN0DQo+IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+PiAgCSAqIHRoZSBtb21lbnQgYWxsIHBsYXRmb3Jt
cyB3aXRoIHNxdWFzaGVyIHVzZSBhIGZpeGVkIGNkMngNCj4gPj4gIAkgKiBkaXZpZGVyLg0KPiA+
PiAgCSAqLw0KPiA+PiAtCWlmIChoYXNfY2RjbGtfc3F1YXNoKGRldl9wcml2KSkNCj4gPj4gKwlp
ZiAoSEFTX0NEQ0xLX1NRVUFTSChkZXZfcHJpdikpDQo+ID4+ICAJCXJldHVybiBmYWxzZTsNCj4g
Pj4NCj4gPj4gIAlyZXR1cm4gYS0+Y2RjbGsgIT0gYi0+Y2RjbGsgJiYNCj4gPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oIGluZGV4IGQ3YjhlYjlkNDExNy4uZGI1MTA1MGUzYmEyDQo+ID4+
IDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ID4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPj4gQEAgLTg2OSw2ICs4
NjksNyBAQCBJU19TVUJQTEFURk9STShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAq
aTkxNSwNCj4gPj4gICNkZWZpbmUgSEFTX0RPVUJMRV9CVUZGRVJFRF9NX04oZGV2X3ByaXYpDQo+
IAkoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDkgfHwgSVNfQlJPQURXRUxMKGRldl9wcml2KSkN
Cj4gPj4NCj4gPj4gICNkZWZpbmUgSEFTX0NEQ0xLX0NSQVdMKGRldl9wcml2KQkgKElOVEVMX0lO
Rk8oZGV2X3ByaXYpLQ0KPiA+ZGlzcGxheS5oYXNfY2RjbGtfY3Jhd2wpDQo+ID4+ICsjZGVmaW5l
IEhBU19DRENMS19TUVVBU0goZGV2X3ByaXYpCSAoSU5URUxfSU5GTyhkZXZfcHJpdiktDQo+ID5k
aXNwbGF5Lmhhc19jZGNsa19zcXVhc2gpDQo+ID4+ICAjZGVmaW5lIEhBU19EREkoZGV2X3ByaXYp
CQkgKElOVEVMX0lORk8oZGV2X3ByaXYpLQ0KPiA+ZGlzcGxheS5oYXNfZGRpKQ0KPiA+PiAgI2Rl
ZmluZSBIQVNfRlBHQV9EQkdfVU5DTEFJTUVEKGRldl9wcml2KSAoSU5URUxfSU5GTyhkZXZfcHJp
diktDQo+ID5kaXNwbGF5Lmhhc19mcGdhX2RiZykNCj4gPj4gICNkZWZpbmUgSEFTX1BTUihkZXZf
cHJpdikJCSAoSU5URUxfSU5GTyhkZXZfcHJpdiktDQo+ID5kaXNwbGF5Lmhhc19wc3IpDQo+ID4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jDQo+ID4+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyBpbmRleCAxOWJmNWVmNmEyMGQuLmE4OGUxNDM5
YTQyNg0KPiA+PiAxMDA2NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
Y2kuYw0KPiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jDQo+ID4+IEBA
IC0xMDY0LDYgKzEwNjQsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZv
DQo+IHhlaHBzZHZfaW5mbyA9IHsNCj4gPj4gIAkuaGFzX2d1Y19kZXByaXZpbGVnZSA9IDEsIFwN
Cj4gPj4gIAkuaGFzX2hlY2lfcHhwID0gMSwgXA0KPiA+PiAgCS5oYXNfbWVkaWFfcmF0aW9fbW9k
ZSA9IDEsIFwNCj4gPj4gKwkuZGlzcGxheS5oYXNfY2RjbGtfc3F1YXNoID0gMSwgXA0KPiA+DQo+
ID4gU2hvdWxkbid0IHRoaXMgbGluZSBiZSB1bmRlciBkZzJfaW5mbyBkZWZpbml0aW9uIGFuZCBu
b3QgaGVyZT8NCj4gDQo+IEl0J3MgaW4gREcyX0ZFQVRVUkVTIG1hY3JvLCB3aGljaCBpcyB3aGVy
ZSBpdCBzaG91bGQgYmUuIFlvdSdyZSBwcm9iYWJseQ0KPiB0aHJvd24gb2ZmIGJ5IHRoZSBkaWZm
IGNvbnRleHQgc3ltYm9sIHhlaHBzZHZfaW5mby4NCg0KQFZpdmVrYW5hbmRhbiwgQmFsYXN1YnJh
bWFuaSBhcHBseSB0aGUgcGF0Y2ggc28gdGhlIGRpZmYgZG9lc27igJl0IGdldCBjb25mdXNpbmcu
DQoNCkFudXNoYQ0KPiANCj4gQlIsDQo+IEphbmkuDQo+IA0KPiANCj4gPg0KPiA+IFJlZ2FyZHMs
DQo+ID4gQmFsYQ0KPiA+DQo+ID4+ICAJLl9fcnVudGltZS5wbGF0Zm9ybV9lbmdpbmVfbWFzayA9
IFwNCj4gPj4gIAkJQklUKFJDUzApIHwgQklUKEJDUzApIHwgXA0KPiA+PiAgCQlCSVQoVkVDUzAp
IHwgQklUKFZFQ1MxKSB8IFwNCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RldmljZV9pbmZvLmgNCj4gPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
ZXZpY2VfaW5mby5oDQo+ID4+IGluZGV4IGNkZjc4NzI4ZGNhZC4uNjdkODc1OWM4MDJjIDEwMDY0
NA0KPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oDQo+
ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgNCj4gPj4g
QEAgLTE4MCw2ICsxODAsNyBAQCBlbnVtIGludGVsX3BwZ3R0X3R5cGUgew0KPiA+PiAgCS8qIEtl
ZXAgaW4gYWxwaGFiZXRpY2FsIG9yZGVyICovIFwNCj4gPj4gIAlmdW5jKGN1cnNvcl9uZWVkc19w
aHlzaWNhbCk7IFwNCj4gPj4gIAlmdW5jKGhhc19jZGNsa19jcmF3bCk7IFwNCj4gPj4gKwlmdW5j
KGhhc19jZGNsa19zcXVhc2gpOyBcDQo+ID4+ICAJZnVuYyhoYXNfZGRpKTsgXA0KPiA+PiAgCWZ1
bmMoaGFzX2RwX21zdCk7IFwNCj4gPj4gIAlmdW5jKGhhc19kc2IpOyBcDQo+ID4+IC0tDQo+ID4+
IDIuMjUuMQ0KPiA+Pg0KPiANCj4gLS0NCj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNl
IEdyYXBoaWNzIENlbnRlcg0K
