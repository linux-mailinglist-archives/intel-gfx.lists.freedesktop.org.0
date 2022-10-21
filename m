Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21014608082
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 23:06:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC01E10E16F;
	Fri, 21 Oct 2022 21:06:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C0EB10E16F
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 21:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666386390; x=1697922390;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=P1aHETOqCCpwz1igQPRJ+k+Oz63fSlfzc94BVqccSwE=;
 b=baCi2epIpyqhDVpKHr2nEKGLuS7/3V1qqKuEUkyk/DTO46EQ1a2/Em2F
 TNa7X0Be0Pwx1D2Hbva89u4iPBOCyq/UStEWEZY+KRsa3JzU9kkF6/VFt
 hWiUgK0gctVpLWyI5WDwPHJO+rnnNJhT35CxYuzx99Kdj+EGbf3vyca4M
 w2OG/5ujx3aK0dT1/OMQxb5oU/RCnUy7HoS1ZCpKa+fiI4AU3uoZsgQ7b
 xwLdFTaXT+Pr15TQZpp9m477qtLudWC8WmSolCd9PGXVSy6igNokHebu1
 KOZab2PnOG4+hxowtut/JwtTCagl52KtQqAjsDNEUDRl48YfnfaF3caXR Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="287503425"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; d="scan'208";a="287503425"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 14:06:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="805706951"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; d="scan'208";a="805706951"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 21 Oct 2022 14:06:28 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 14:06:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 14:06:27 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 21 Oct 2022 14:06:27 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 21 Oct 2022 14:06:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k5XxbDK2w9TmatgUpGfBOM9J4CRR5Xn+MRjjJ15isNSeBcuxti+5pzWVvnbHqvPMVHQFtTVYhztLyt9RKWsUkKTXNWZD2A3I2OR3gEqQdMjmsqypja6ih6DdfuAysJFFWW55wuUO/fMM1BbyU6ag5LDAMjlF/bcQonO6TJvNTrHVBKMb3xhHoX/qsz0fDnghnf+xM3OZalw40VyMylK1u3CH+VSS3k/fHEwdStrXHOISpMedn2vk7ahgLXzu0Yy4WvZIooN+nxFZSwO5F2yJ1RhtfwwQvYSOjQw4/4MEagxosTRjFvB9j2aGgRm6BGoBby0Cq1RFbmTd2djLFF9hpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P1aHETOqCCpwz1igQPRJ+k+Oz63fSlfzc94BVqccSwE=;
 b=bKtjdiUpgLoJxx22JspnTmbblv3cwGTErdC2f3IKwNxkPDHSuDyUj/KDilskGl7GserRCczg7WxNtPNIaBtL1kaMzQalXGT0xN/wr6mgi64QC8cUYEfsG1uUXQd1/w3GvDjeoIIFEw05rP9EPDaNTFELaXnistwFPKepO3wYQgRmGbQ4gcwER7uqIDppAyPox76ekxXPyOefaAi79LjZ+2cm3ptcydk0RG8okaI4OrWk4F3GY0igr/jjbLCqPDijL0z5Fjse0myCIVK9p/kkHmv4Pcf3GNf1fbf3BeZKMoEnsPvOmjLcU/1X3FvhLjHH483qT6HtUEPn7RbOthiy/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Fri, 21 Oct
 2022 21:06:25 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%11]) with mapi id 15.20.5723.033; Fri, 21 Oct 2022
 21:06:25 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 4/4] drm/i915/display: Move squash_ctl register
 programming to its own function
Thread-Index: AQHY5OL0QSv67T9RqEOeWVCxi7jIcK4YbeoAgADj1hA=
Date: Fri, 21 Oct 2022 21:06:25 +0000
Message-ID: <CY4PR1101MB2166D79E8A721682BF540884F82D9@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20221021002024.390052-1-anusha.srivatsa@intel.com>
 <20221021002024.390052-5-anusha.srivatsa@intel.com>
 <Y1JFTJsfRLKA6usV@bala-ubuntu>
In-Reply-To: <Y1JFTJsfRLKA6usV@bala-ubuntu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|CY5PR11MB6307:EE_
x-ms-office365-filtering-correlation-id: b5a0345d-fd66-4d25-04c3-08dab3a81d3a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AbCP4Cj5X+0Wu26CD+3W38V44AZ4hPU0U5p1euqSUJDTygLSVUJvi9oIbiIr2cghUMN+8r8k4vTwwhMyec4qtxQtpEX6ixDBZgvbcakKUNdoHbVN/wuc6QwRWMaN4XE2xJaT57yyaawJNhSaLIWipsH19+Dq8eN4mbsfoq8BG348xTqVKl5fGoNbn5LitSK2CbBZIT8rN8pqPE10x+B/AG9dqzJHuvLbNGo2FjfvMQjcXvn/p2rTmwXAXMhhzoedgjM/suvZNiR6IOlKUoihegeGNWvDUVd6cPC1yBgqHbHz+oM55F+hpo+N+TEV+zJY7hHMpxfRFlv2Cpp3BLg0JxcPW8M7lIbnXfxWxbkO5fP92yA0sScESyD3IEFlHDESIqg3X8uvT1IoDeAebnDyuZQJXWSwwWdqOGIGAHjp3htW0YkWxcAHGIZbhEAuy0ebZoU8QVfau5ltfPYwtM+1JxxSMf/cmIJoE7tPBmkdUDeUQiowN4O8/RdJPJ6GOB17N0mOL6K5BZbmULjWXdFm900+E2uS+aI6T51cGrk0bjlj2oOsjYNyzxR6Q0AiZ+8bG0NDC4/BixhozABTXwV3c4+/jlg5aJVhjuEYZwYQmcp3IHR/0Z23A6IaiqYA8GosDjFIETKgtkh6hBiexwAbsZPyyACOg/QuRzqjvMSvDQLgGUYMzVHQC5lGVL42iaWB9E2rdvWt7sN6O4Tkqt23JSsZEcE06hZlYKgUZQaMCxIu8ekZ8sOiPETAMn2SgFE77JtAUmmmUMoy1jlvvAUIlg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(376002)(366004)(39860400002)(346002)(451199015)(2906002)(186003)(33656002)(71200400001)(38070700005)(82960400001)(478600001)(122000001)(66446008)(66476007)(66556008)(66946007)(4326008)(64756008)(8936002)(8676002)(110136005)(26005)(52536014)(7696005)(76116006)(38100700002)(55016003)(86362001)(6506007)(41300700001)(83380400001)(53546011)(316002)(9686003)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S3kyeFEzRXNsa0cxUkplbS9YYzhndDMxY1hjVVZpeFpxVENYSjh2V0djUjBw?=
 =?utf-8?B?dlB5d3ZweG42VlM1MnFZbHpYcXZtY1V6ZnJHU3NYaHZ5alNzRjVWRXRPK0ZU?=
 =?utf-8?B?R3RLUTZMc0FRNFVKdDlhTzJyRTcyODFMR3g5d0xyajNHSzRMMHNjVHEvUWNo?=
 =?utf-8?B?a1gzVHBUTitaemxWNStkNnVHbGpDMXpkRFlvRE4vYjJoOUphSVhFaGN5QnFS?=
 =?utf-8?B?dUlhWFhvNFVBT3VvVEdiR09YV0NBVVIvL2R3Uy9VUkV4TW9xRXZKOGsveGxs?=
 =?utf-8?B?QXdlWHBDTno2bWUzeFlieml1WXYzL1I3WFRRUUtVdVFkdll5dFgvTzQ5dlho?=
 =?utf-8?B?K1UyVVJkYk5KYW8xQ1RqT0JFMzNyUFVBamFuejVwU2tIaCtkZU9UQlFvOGNm?=
 =?utf-8?B?U0VNVEd3T254MlpRUENVZHNYNHNCYlVZMm1WVFB5OWN5eTE5clh1R3Y0bmhS?=
 =?utf-8?B?eml3S2pzWXllSkgyM004WW82UEEySXJSTHcySlVnb2l0dHpGTU9IY2tLTjMz?=
 =?utf-8?B?VnVlMUwxRmRwM05JS3lwTXgxQ1VmVS9WT1ZjYUlZMHpvbng1WFBraUQrVDR4?=
 =?utf-8?B?Mm5xbVVWSm56aUd5VG95b1QzK1MxTDE0b0hyVTVIVlljVTBVMS9CdzlmQ1RZ?=
 =?utf-8?B?bW9RVXc0aE8yQ0hOK3NHMHd3czRPalNGYUNRVHBleFpyQmd0R0N1Z2RYMXo3?=
 =?utf-8?B?cWZXcWgzY2NzbXgrMGs1UDJON3MwOC93Q1p5YVp3WFQ3QlRvSTNjQ1l0akMw?=
 =?utf-8?B?SFpvYVF3ZXVqUVpSYjI2MFZ1QzVIa2pJdDFlZnhQV1ArbHJ2N2xpNHI5bnNy?=
 =?utf-8?B?OHNzQzVmSWNQSDdsMmZkTFFYeGptWDgycFY4Zks0S0xTakNTSU9PdnptTU5z?=
 =?utf-8?B?YVlleTdxQjBvTVE1TEl0SVh6YWtuZzJDNmdjRHhjRTROTmwwTUMxQWJic2hp?=
 =?utf-8?B?SjQybG84TW1jUE9JeEsrOThKS2pXend5QVdJZTgxM3VRSStrWGpVbUx4cSsz?=
 =?utf-8?B?TTU1TGViZzRXS0pvdE5IN2JjMVVRendWQ0VpcDdlY0NrRnNIK0M1N2JyaHpB?=
 =?utf-8?B?L3Y2ZWtuS1RqZ2dUMXRxaWl2MHZMekxLZWE3TGwwMXcxNlkzZ1k4N1NpdXlt?=
 =?utf-8?B?VUF1V0E3ZUtDcUFncVNTdFBDMWJWU1B3cXhjOUIxdG9EYm8xbWRNNXdDRmcx?=
 =?utf-8?B?Vkl6UE1JQk1tUnd0TGUyMHFTUGEvd1NudnA4TnR2YUNITThRMzNTVTJCTERB?=
 =?utf-8?B?Rms4eVIvYmFzQ0dGcWFDUTJ6S3pFbTVXa0x0RE9qeUJ3dEpPWWY1d2YrclNU?=
 =?utf-8?B?dE5KTnZoTkR5MTBaYkRXdEtnemVaOGFmWXZNSHA4Q3F2MEk2Q2VBQTd5bmdZ?=
 =?utf-8?B?TlRaSm1ZbkY5aDg5aS9uYnUxTEY1MVRaM3JQNHFHRFJyWTV4cmkwS1BLaVVt?=
 =?utf-8?B?RUljYXVZYzNVL2Vud1VTSWZ0cmtORm9pVnQ3T1RqaVk4NW94ZEFEM1FxT2JO?=
 =?utf-8?B?Rll2SHA3U2k4aklHWEgzVmRua2M0OE1HNEp5MnFQM3pyZVVLMGdlMzdFODZ3?=
 =?utf-8?B?YmJyLzRZUnJnT003SUZPQUEyV1A4aTMydUFVZUFmQXQzQ2ZrRldHK1d2RU1N?=
 =?utf-8?B?c25ETXJFMGhLb09BR0R5aGlNc0lTdzJxNEJOVnljRENjZmFTbnhJVWQ0dTl1?=
 =?utf-8?B?RTVJUEZpNEtqbnJHMHB6b1M4WHMzRlFXa2g2OWhRV2ZiMkRRdm5WTE5qTllN?=
 =?utf-8?B?bDV2T0doa0VJcXNmdGw2dGIvYldBNEtvVjl0eXR2SFB5SWlzQ3VzZEY1ZTRP?=
 =?utf-8?B?VHZncXBPamExSVFkeGRlc0VGV1RnN1phRkYvK1VEWFlyRkZmMHY5ZVVtUGZo?=
 =?utf-8?B?VjRZR1Z1Vm01ZWl2NkNNdjlDWTJ4OHkxZW9VcGhGcnNON0JuT1lvbSt0TXo5?=
 =?utf-8?B?Yk1iZytSOVpIVFF1akFyaUxaZExYN3prSk8rdmNZN1VTT1dtVHRKUGgxdFFF?=
 =?utf-8?B?UXljOHV0ZmxYRWo0M2xXRmd4anRpSGRzM0RqUENBY2tFb2hHWnZta0RzVVNK?=
 =?utf-8?B?WGg4SWQ1TUZvY0xOcGt6MzcwRmdDZm5GeXhwWE4xUUpyMEt6V3NVQmxLV29h?=
 =?utf-8?B?SEZPVC9HR0hhUlh1NndqNnNvNXl6MENkREt4QzdpMFJ3MkZTNUw3dXhPZWFm?=
 =?utf-8?B?Q2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5a0345d-fd66-4d25-04c3-08dab3a81d3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2022 21:06:25.2409 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +DmVbyloxJM35aaQ3qmSPF2Frm9nr4+eYaXyOcMzrtT3+rzqs5IjgeuApYzo3rQR3/tLbLWvqwm4wWMlHXnY7kLMIUTeQG4yscdr0bhQb1s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6307
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/display: Move squash_ctl
 register programming to its own function
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVml2ZWthbmFuZGFuLCBC
YWxhc3VicmFtYW5pDQo+IDxiYWxhc3VicmFtYW5pLnZpdmVrYW5hbmRhbkBpbnRlbC5jb20+DQo+
IFNlbnQ6IEZyaWRheSwgT2N0b2JlciAyMSwgMjAyMiAxMjowOCBBTQ0KPiBUbzogU3JpdmF0c2Es
IEFudXNoYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT47IGludGVsLQ0KPiBnZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDQvNF0gZHJtL2k5MTUvZGlzcGxh
eTogTW92ZSBzcXVhc2hfY3RsIHJlZ2lzdGVyDQo+IHByb2dyYW1taW5nIHRvIGl0cyBvd24gZnVu
Y3Rpb24NCj4gDQo+IE9uIDIwLjEwLjIwMjIgMTc6MjAsIEFudXNoYSBTcml2YXRzYSB3cm90ZToN
Cj4gPiBObyBmdW5jdGlvbmFsIGNoYW5nZS4gSW50cm9kdWNlIGRnMl9jZGNsa19zcXVhc2hfcHJv
Z3JhbW1pbmcgYW5kDQo+IG1vdmUNCj4gPiBzcXVhc2hfY3RsIHJlZ2lzdGVyIHByb2dyYW1taW5n
IGJpdHMgdG8gdGhpcy4NCj4gPg0KPiA+IENjOiBCYWxhc3VicmFtYW5pIFZpdmVrYW5hbmRhbg0K
PiA8YmFsYXN1YnJhbWFuaS52aXZla2FuYW5kYW5AaW50ZWwuY29tPg0KPiA+IENjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYt
Ynk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCj4gPiAtLS0N
Cj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgMjMNCj4g
PiArKysrKysrKysrKysrLS0tLS0tLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRp
b25zKCspLCA5IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4gaW5kZXggODcwMTc5Njc4OGUzLi5iNjkyMTg2
YzhmMDIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jZGNsay5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
ZGNsay5jDQo+ID4gQEAgLTE3MDUsNiArMTcwNSwxOCBAQCBzdGF0aWMgdm9pZCBieHRfY2RjbGtf
cGxsKHN0cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGludCB2Y28pDQo+ID4NCj4g
PiAgfQ0KPiA+DQo+ID4gK3N0YXRpYyB2b2lkIGRnMl9jZGNsa19zcXVhc2hfcHJvZ3JhbW1pbmco
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gKmk5MTUsDQo+ID4gKwkJCQkJIHUxNiB3YXZlZm9y
bSkNCj4gPiArew0KPiA+ICsJdTMyIHNxdWFzaF9jdGwgPSAwOw0KPiA+ICsNCj4gPiArCWlmICh3
YXZlZm9ybSkNCj4gPiArCQlzcXVhc2hfY3RsID0gQ0RDTEtfU1FVQVNIX0VOQUJMRSB8DQo+ID4g
KwkJCSAgICAgQ0RDTEtfU1FVQVNIX1dJTkRPV19TSVpFKDB4ZikgfCB3YXZlZm9ybTsNCj4gPiAr
DQo+ID4gKwlpbnRlbF9kZV93cml0ZShpOTE1LCBDRENMS19TUVVBU0hfQ1RMLCBzcXVhc2hfY3Rs
KTsgfQ0KPiA+ICsNCj4gPiAgc3RhdGljIHZvaWQgYnh0X3NldF9jZGNsayhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gIAkJCSAgY29uc3Qgc3RydWN0IGludGVsX2NkY2xr
X2NvbmZpZyAqY2RjbGtfY29uZmlnLA0KPiA+ICAJCQkgIGVudW0gcGlwZSBwaXBlKQ0KPiA+IEBA
IC0xNzUyLDE1ICsxNzY0LDggQEAgc3RhdGljIHZvaWQgYnh0X3NldF9jZGNsayhzdHJ1Y3QNCj4g
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gIAllbHNlDQo+ID4gIAkJY2xvY2sgPSBj
ZGNsazsNCj4gPg0KPiA+IC0JaWYgKEhBU19DRENMS19TUVVBU0goZGV2X3ByaXYpKSB7DQo+ID4g
LQkJdTMyIHNxdWFzaF9jdGwgPSAwOw0KPiA+IC0NCj4gPiAtCQlpZiAod2F2ZWZvcm0pDQo+ID4g
LQkJCXNxdWFzaF9jdGwgPSBDRENMS19TUVVBU0hfRU5BQkxFIHwNCj4gPiAtCQkJCUNEQ0xLX1NR
VUFTSF9XSU5ET1dfU0laRSgweGYpIHwNCj4gd2F2ZWZvcm07DQo+ID4gLQ0KPiA+IC0JCWludGVs
X2RlX3dyaXRlKGRldl9wcml2LCBDRENMS19TUVVBU0hfQ1RMLCBzcXVhc2hfY3RsKTsNCj4gPiAt
CX0NCj4gPiArCWlmIChIQVNfQ0RDTEtfU1FVQVNIKGRldl9wcml2KSkNCj4gPiArCQlkZzJfY2Rj
bGtfc3F1YXNoX3Byb2dyYW1taW5nKGRldl9wcml2LCB3YXZlZm9ybSk7DQo+IA0KPiBJcyBpdCBw
b3NzaWJsZSB0byBtb3ZlIGFsc28gdGhlIGZ1bmN0aW9uIGNkY2xrX3NxdWFzaF93YXZlZm9ybSgp
IGluc2lkZQ0KPiBkZzJfY2RjbGtfc3F1YXNoX3Byb2dyYW1taW5nKCk/DQoNCkhtbW0uIEFyZSB5
b3UgdGhpbmtpbmcgaXQgaXMgYmV0dGVyIHRvIGhhdmUgYm90aCBncmFiYmluZyB0aGUgc3F1YXNo
IHdhdmVmb3JtIGFuZCBwcm9ncmFtbWluZyB0aGUgc3F1YXNoX2N0bCByZWdpc3RlcnMgaW4gb25l
IHBsYWNlIGJldHRlcj8gSU1PIHRoZSBmYWN0IHRoYXQgdGhleSBhcmUgc2VwYXJhdGUgbWFrZXMg
aXQgbW9yZSByZWFkYWJsZS4gV2Ugd2lsbCBoYXZlIHRvIHJldHVybiB3YXZlZm9ybSBhbmQgY2Fs
Y3VsYXRlIHRoZSBjbG9jayBhbnl3YXkuLi4uIA0KDQpBbnVzaGENCj4gUmVnYXJkcywNCj4gQmFs
YQ0KPiANCj4gPg0KPiA+ICAJdmFsID0gYnh0X2NkY2xrX2NkMnhfZGl2X3NlbChkZXZfcHJpdiwg
Y2xvY2ssIHZjbykgfA0KPiA+ICAJCWJ4dF9jZGNsa19jZDJ4X3BpcGUoZGV2X3ByaXYsIHBpcGUp
IHwNCj4gPiAtLQ0KPiA+IDIuMjUuMQ0KPiA+DQo=
