Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E99C12FECBE
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 15:18:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 601F76E8F4;
	Thu, 21 Jan 2021 14:18:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FFBD6E8F4
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 14:18:34 +0000 (UTC)
IronPort-SDR: hPdw75bz1ao5GBHZBHjeThph6gKtXLJw0fxyR4qt3BBDitljMTwsJegfQBVLFc0uXANhk8eLig
 vWyzNPHnW78Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="198011109"
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="198011109"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 06:18:31 -0800
IronPort-SDR: s/mIzSWWpWOVdr94xUSf+q3JSzjo42e+eSyxrvppRHeJibNew2FCiSxqJ60AILnXCZTBK+4nlW
 IcJZeS6KV9Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="400167064"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 21 Jan 2021 06:18:31 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 21 Jan 2021 06:18:31 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 21 Jan 2021 06:18:30 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 21 Jan 2021 06:18:30 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 21 Jan 2021 06:18:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=czXoqj0WPtbq5mnv8cEiguvZoWr4Nb5+HMhPGbi48q7JO1kMpr5QIEdJw9DUXTV1ABUSuaf5GH76EeXqZlwx4vaszSHgp8+Dv1GDXcMs2fPi6/p/CKgnuSNz81Nw1HkL/8IvxDS//FUvLFvSZ7kstnnPtZvWlOko935yyQ59M55yVG1NX8t1xzc+8IggqrGdjzMDNL5WVIn8pmwj5i7W5bwH+y5a+bKaZqdnVfwz43BQlgI3mNTrhhMBKlDVPy75S15XBDFZ/HzVECVZdS5ChklrKFs/jSXf2nahc+0FK0Gaz7crbKq10fk5Mec/k/HXKh4ScYE3afqEKdwCQABgWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iMfJeK4ByActg/rKYA8ZI9qBaskxJZlvPcCW1Apvaeo=;
 b=iDZ8xYb5ndniFohvUdyiwSWxKUO9Ysg+JQtFJCQtgHHaeihUvUNt8cC4usJ3TBWfS3R737/32AscjS2WV5eQMvRfndM8uKlyfTKbSg7TToABE5QzUW3n9suRzh+icJleS1ciKcUwzqknBaW/0JYIug1lVtdbORZ7SDBZx6C9jG3Q+vh0ph2nuFbZEC4Pg+8pO1oJ7/9eUfNLkC6p+imzV6AvYRDH6PxIMZoSqK08icIcRB9kG+oxd5Xfpm9MU2ZuCrfBlfl9lgYr0Gl/g4upM0/fGIf9CK5ML5r2cl0jV9c/xAG6CBAOdv3csUJ23Yr4Pz3hWBF2/Uft1lSJueiYag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iMfJeK4ByActg/rKYA8ZI9qBaskxJZlvPcCW1Apvaeo=;
 b=zrphDoBnz/YOeFXdquv9ajxx3ID0xgdYUNwWpMOUIWDSxU4+bVUwsoIeWMX1Gf00j2v3Qxdbn1Lz2qFGGm4g5HdnmNlLbeHOHQ+ZrpGAbH2ikJ/y3fqzpH2JOq8F//ndbIiScJwTzCJ1eY9OnGRJELsAzHvQhvNipjl3lt5pxbI=
Received: from SA2PR11MB4969.namprd11.prod.outlook.com (2603:10b6:806:111::12)
 by SN6PR11MB2766.namprd11.prod.outlook.com (2603:10b6:805:53::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.14; Thu, 21 Jan
 2021 14:18:26 +0000
Received: from SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::1964:960a:47a9:1001]) by SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::1964:960a:47a9:1001%3]) with mapi id 15.20.3784.011; Thu, 21 Jan 2021
 14:18:25 +0000
From: "Chiou, Cooper" <cooper.chiou@intel.com>
To: "Chen, Rong A" <rong.a.chen@intel.com>
Thread-Topic: [drm/i915] 04ff178484:
 phoronix-test-suite.supertuxkart.1024x768.Fullscreen.Ultimate.1.GranParadisoIsland.frames_per_second
 -30.4% regression
Thread-Index: AQHWj/jXft7wr1ZnPUCeqC0CqhjEiKoy4HrQ
Date: Thu, 21 Jan 2021 14:18:25 +0000
Message-ID: <SA2PR11MB49694B1464470425AF44AAAB9DA19@SA2PR11MB4969.namprd11.prod.outlook.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>
 <20200921092220.GH13157@shao2-debian>
In-Reply-To: <20200921092220.GH13157@shao2-debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [123.193.93.97]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 10d3c778-5f21-4e6a-833f-08d8be176ad9
x-ms-traffictypediagnostic: SN6PR11MB2766:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2766C5BB313EAB8AF643D5949DA10@SN6PR11MB2766.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +atbGM8pRzOyZem3N9uqhZpF7Qbo7AZmKSi/44DrWTh9uN8BS8TR4FG4bduuGuJemL3ov9IRixFHYt7Rmn3HSSnW7xeRE7uYu/nkRvQZBDSWvcUIzR1MUZLwgpjjT2aM8pfyvStlBpHgnY1G9dDc3JtjGsq2zTyZoOB2fVA2qyipmCImA+stMDT/4yNGCzI88BN+1OItM8ULrCg3DL1a0lWUcH5WKNUrnyapbO0uPdEgSeYsxRORysS1+DU4ldF99cTB3V0wM4vNz2DPn5sY5OlA34FC4e50VmFkSxGUsaZgNeit4idg5Egc3MXaMkTml0La5yJThrX9EKz6hI3RyOhEFX2b4t+Vs/VQb5UXHPLfK/ReQtup9eTqrxrLCaWuIQIaUG3Bpmj6Icx2cwHlGugHP85x5/CTSrSWPqArfPYTrrKRA/yuuLpml8RfyzrSGdaTYx7UGb+qbEfyyNdaGzi9ZeHgFnMB/rUzFaoTLwHDBRAkiHl3oW/I0YNt3QZ/hxpXNiXViVAGhspu14GX/78gyWu22XCgOygmEHCciO45ur5Z8ZKFIHe33eFX8ss+5NFPqNauO8dPJsHWHFbqHbAD2hMuWgkMfVqh4HBz7/w=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB4969.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(136003)(366004)(396003)(39860400002)(55016002)(71200400001)(186003)(66446008)(6862004)(52536014)(5660300002)(6506007)(76116006)(54906003)(7696005)(83380400001)(66946007)(66556008)(4326008)(8676002)(966005)(316002)(8936002)(86362001)(53546011)(33656002)(64756008)(478600001)(2906002)(26005)(9686003)(6636002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?WEN1LzU4Y3JVL0M5WU83Skg0d0lJaTJDR214R3dQL2psZGFQRklwM0QrZGla?=
 =?utf-8?B?aXpDR2R3aWZXNjlJSHozKzU4K1Y3L2tmYnBpK2RXV2M4bDJKTGcrS05Sb2ZW?=
 =?utf-8?B?blNwSWVDNk9ZUisrVzE2Mnc4dFpleDdFOGxnVDFaYzJTbGliTWIxUklac0NP?=
 =?utf-8?B?S0lyd203UkFzdHNRUUJLZGZFWTR5MEZkRXpyTGJLckFnanVNekoxYWdjcWFx?=
 =?utf-8?B?eHZERlY2RHRIZk5rZG9IWEp5VnRnUXYwYnM3eVd6QllBcWdCZ2t4a0JOWXY3?=
 =?utf-8?B?MVFCT1RnOUE3TytzNm4yRVpGbG9PSkJoaVBaQTkydWZKN2Nld3RCTXlQNE9q?=
 =?utf-8?B?dzBCaEloL3ZTYmdJVmVTZWw4TzRtWkpYVEJpTVRKckQ1Z1VWZnVXbXNPTktU?=
 =?utf-8?B?RHBmRDZJS1BWcXZqa24xR25xZlFRTVFCbWYvZDFzemRmdllDWnJ2aThmeUJ1?=
 =?utf-8?B?Qk5KcytDQkJMZkJkWU5LQkJFcHZ1ZTRYZnZPT2c0WWZ6b3dCeTRiemRtZFhn?=
 =?utf-8?B?VkMvV08rTUY0U1hNdCtnSE9kMmxEOFEwWUpNb2NvdXVNbHlnbU00a2RWOGpp?=
 =?utf-8?B?ZjdHWk1PcmFNTEN3R2NyR2Z3ZUNla1RRUk5PMVdtWkdtZW5IZXhoUVY1RmZ1?=
 =?utf-8?B?SVJyVWt6b09NUlk0aVZTNERlalRhb0ltWitKNzFYUXlSSUo1SzNwdStocyty?=
 =?utf-8?B?SS95Sjl6eVZaNkFaS1ViN0hmVWZoU1RITCtZTkpzbjRlZmducHN6MUZ1ZHFJ?=
 =?utf-8?B?dDJqRVJML1g5WlJTN25DYlltd0hRVGZlWDl1VW96cjR6Ynh6Q1JPbE44Rkxi?=
 =?utf-8?B?RE9GYTdWTlFBT01tRTZKRFNxM1ZPZ0w0bmllZE5wWExGc09aKzl6eEhaMjNW?=
 =?utf-8?B?NXIzWFRNNUlVdHR1OTlDS3crcjRqZ2dsbzlQQTVDODFuTUNVTmc0M2I0eE91?=
 =?utf-8?B?OG5yVXFQVkhidFBTSTMrRWxWVG9WM2o5NmJ1TWx0Tkk4WCtBcnlFTFVYS3Yy?=
 =?utf-8?B?cHN0YXE1VGpVc0JUYWtDTmd6dlNQV1YveVN1NHlOQzFNUHkyTmN4Vk1XWC9i?=
 =?utf-8?B?NGVrbGFEMHNLaFhRdmxubkVGbEFnY1RmSndVSEk3cmZ2dW05WGZPWFErQzN5?=
 =?utf-8?B?dUMvQlpKbFhSS2twbjV6ZHFua0dUaG5oekF6a2VPSGdVOXdSRE14VWN6eTBY?=
 =?utf-8?B?ZkV5OGkwRzk5Vk5kZDhaZ1JDakl2NFhjTjFBaWJTRGVNMitUaGRIdTU0NUlQ?=
 =?utf-8?B?NUNVR2ZBSFpGWHBVMjJXTzdXT3JHUVBob28vK1ZLdnI1NyszSXdUMUVyOU9Q?=
 =?utf-8?B?bFVJaGhaNmpZdWFXRGxiV2FscVJ4VmVYTkFIeFNCVitWK2ZPMkhjbWtxejd4?=
 =?utf-8?B?Y1h6eGovNTZSU21oanJmRXhkNXdXNTRzSWpZbFpHMFVDT1hIMnNMV2FTNlRy?=
 =?utf-8?Q?2Sy9jbLx?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4969.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10d3c778-5f21-4e6a-833f-08d8be176ad9
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2021 14:18:25.6919 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CxejMxoBBgo95ul0HFhohW05zMmov9oQDf1Hj+KvmsyjXWO0+BRf0VpaSaJYUTgOIMUIzPny05wVqoWQwzNr6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2766
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [drm/i915] 04ff178484:
 phoronix-test-suite.supertuxkart.1024x768.Fullscreen.Ultimate.1.GranParadisoIsland.frames_per_second
 -30.4% regression
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
Cc: "Tang, Feng" <feng.tang@intel.com>, "Li, Tiejun" <tiejun.li@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, "Du, Frank" <frank.du@intel.com>,
 "Chen, Guobing" <guobing.chen@intel.com>, "Tseng,
 William" <william.tseng@intel.com>, "Xie, Gengxin" <gengxin.xie@intel.com>,
 "Fan, 
 Shuhua" <shuhua.fan@intel.com>, "Zhao, Fan" <fan.zhao@intel.com>, "Huang,
 Ying" <ying.huang@intel.com>, "Kang, Shan" <shan.kang@intel.com>, "Xing,
 Zhengjun" <zhengjun.xing@intel.com>, "Huang,
 Wenhuan" <wenhuan.huang@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "lkp@lists.01.org" <lkp@lists.01.org>, "Chen, 
 Ming A" <ming.a.chen@intel.com>, "Ma, Yu" <yu.ma@intel.com>, "Ji,
 Jessica" <jessica.ji@intel.com>, "Li, Guangli" <guangli.li@intel.com>, "Guo,
 Wangyang" <wangyang.guo@intel.com>, "Mi, Dapeng1" <dapeng1.mi@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, "Sun, Jiebin" <jiebin.sun@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSBydW4g4oCccGhvcm9uaXgtdGVzdC1zdWl0ZSBydW4gc3VwZXJ0dXhrYXJ0LTEuNS4y4oCdIG9u
IG15IENNTCBVYnVudHUgMTguMDQuNSBMVFMgZGV2aWNlLCBhbmQgY29tcGFyZWQgdGhlIGZwcyBi
ZXR3ZWVuIHBhdGNoIGFuZCBvcmlnaW5hbCB1cHN0cmVhbSwgdGhlcmUgaXMgbm8gYW55IGZwcyBw
ZXJmb3JtYW5jZSBkcm9wIGlzc3VlLiANCg0KICAgICAgICA1LjEwLjAtcmMzIHVwc3RyZWFtIC8g
IDUuMTAuMC1yYzMrcGF0Y2gNCmZwcyAgICAgMTIuNTg2MzI2ICAgICAgICAgICAvICAxMi42ODc3
MTENCg0KQmVzdCBSZWdhcmRzLA0KQ29vcGVyDQorODg2LTItNjYyMi0xMTY2DQoNCi0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBrZXJuZWwgdGVzdCByb2JvdCA8cm9uZy5hLmNoZW5A
aW50ZWwuY29tPiANClNlbnQ6IE1vbmRheSwgU2VwdGVtYmVyIDIxLCAyMDIwIDU6MjIgUE0NClRv
OiBDaGlvdSwgQ29vcGVyIDxjb29wZXIuY2hpb3VAaW50ZWwuY29tPg0KQ2M6IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IENoaW91LCBDb29wZXIgPGNvb3Blci5jaGlvdUBpbnRlbC5j
b20+OyBUc2VuZywgV2lsbGlhbSA8d2lsbGlhbS50c2VuZ0BpbnRlbC5jb20+OyBOaWt1bGEsIEph
bmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPjsgbGtwIDxsa3BAaW50ZWwuY29tPjsgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT47IFZpdmksIFJvZHJpZ28gPHJvZHJpZ28udml2aUBpbnRl
bC5jb20+OyBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPjsg
TGVlLCBTaGF3biBDIDxzaGF3bi5jLmxlZUBpbnRlbC5jb20+OyBMS01MIDxsaW51eC1rZXJuZWxA
dmdlci5rZXJuZWwub3JnPjsgbGtwQGxpc3RzLjAxLm9yZzsgSHVhbmcsIFlpbmcgPHlpbmcuaHVh
bmdAaW50ZWwuY29tPjsgVGFuZywgRmVuZyA8ZmVuZy50YW5nQGludGVsLmNvbT47IFhpbmcsIFpo
ZW5nanVuIDx6aGVuZ2p1bi54aW5nQGludGVsLmNvbT47IENoZW4sIEd1b2JpbmcgPGd1b2Jpbmcu
Y2hlbkBpbnRlbC5jb20+OyBDaGVuLCBNaW5nIEEgPG1pbmcuYS5jaGVuQGludGVsLmNvbT47IER1
LCBGcmFuayA8ZnJhbmsuZHVAaW50ZWwuY29tPjsgRmFuLCBTaHVodWEgPHNodWh1YS5mYW5AaW50
ZWwuY29tPjsgR3VvLCBXYW5neWFuZyA8d2FuZ3lhbmcuZ3VvQGludGVsLmNvbT47IEh1YW5nLCBX
ZW5odWFuIDx3ZW5odWFuLmh1YW5nQGludGVsLmNvbT47IEppLCBKZXNzaWNhIDxqZXNzaWNhLmpp
QGludGVsLmNvbT47IEthbmcsIFNoYW4gPHNoYW4ua2FuZ0BpbnRlbC5jb20+OyBMaSwgR3Vhbmds
aSA8Z3VhbmdsaS5saUBpbnRlbC5jb20+OyBMaSwgVGllanVuIDx0aWVqdW4ubGlAaW50ZWwuY29t
PjsgTWEsIFl1IDx5dS5tYUBpbnRlbC5jb20+OyBNaSwgRGFwZW5nMSA8ZGFwZW5nMS5taUBpbnRl
bC5jb20+OyBTdW4sIEppZWJpbiA8amllYmluLnN1bkBpbnRlbC5jb20+OyBYaWUsIEdlbmd4aW4g
PGdlbmd4aW4ueGllQGludGVsLmNvbT47IFpoYW8sIEZhbiA8ZmFuLnpoYW9AaW50ZWwuY29tPg0K
U3ViamVjdDogW2RybS9pOTE1XSAwNGZmMTc4NDg0OiBwaG9yb25peC10ZXN0LXN1aXRlLnN1cGVy
dHV4a2FydC4xMDI0eDc2OC5GdWxsc2NyZWVuLlVsdGltYXRlLjEuR3JhblBhcmFkaXNvSXNsYW5k
LmZyYW1lc19wZXJfc2Vjb25kIC0zMC40JSByZWdyZXNzaW9uDQoNCkdyZWV0aW5nLA0KDQpGWUks
IHdlIG5vdGljZWQgYSAtMzAuNCUgcmVncmVzc2lvbiBvZiBwaG9yb25peC10ZXN0LXN1aXRlLnN1
cGVydHV4a2FydC4xMDI0eDc2OC5GdWxsc2NyZWVuLlVsdGltYXRlLjEuR3JhblBhcmFkaXNvSXNs
YW5kLmZyYW1lc19wZXJfc2Vjb25kIGR1ZSB0byBjb21taXQ6DQoNCg0KY29tbWl0OiAwNGZmMTc4
NDg0MGY1Zjk1NGE2NTZjN2U4Nzk1Yzc2NDY3ZTI5MTI4ICgiW0ludGVsLWdmeF0gW1BBVENIXSBk
cm0vaTkxNTogRW5hYmxlIFdhUHJvZ3JhbU1nc3JGb3JDb3JyZWN0U2xpY2VTcGVjaWZpY01taW9S
ZWFkcyBmb3IgR2VuOSIpDQp1cmw6IGh0dHBzOi8vZ2l0aHViLmNvbS8wZGF5LWNpL2xpbnV4L2Nv
bW1pdHMvQ29vcGVyLUNoaW91L2RybS1pOTE1LUVuYWJsZS1XYVByb2dyYW1NZ3NyRm9yQ29ycmVj
dFNsaWNlU3BlY2lmaWNNbWlvUmVhZHMtZm9yLUdlbjkvMjAyMDA5MTctMDIxNTQwDQpiYXNlOiBn
aXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0taW50ZWwgZm9yLWxpbnV4LW5leHQNCg0K
aW4gdGVzdGNhc2U6IHBob3Jvbml4LXRlc3Qtc3VpdGUNCm9uIHRlc3QgbWFjaGluZTogNCB0aHJl
YWRzIEludGVsKFIpIENvcmUoVE0pIGk3LTc1NjdVIENQVSBAIDMuNTBHSHogd2l0aCAzMkcgbWVt
b3J5IHdpdGggZm9sbG93aW5nIHBhcmFtZXRlcnM6DQoNCgluZWVkX3g6IHRydWUNCgl0ZXN0OiBz
dXBlcnR1eGthcnQtMS41LjINCglvcHRpb25fYTogRnVsbHNjcmVlbg0KCW9wdGlvbl9iOiBVbHRp
bWF0ZQ0KCW9wdGlvbl9jOiAxDQoJb3B0aW9uX2Q6IEdyYW4gUGFyYWRpc28gSXNsYW5kIFtBcHBy
b3hpbWF0ZWx5IDI3NWsgdHJpYW5nbGVzOyBhZHZhbmNlZCBncmFwaGljc10NCgljcHVmcmVxX2dv
dmVybm9yOiBwZXJmb3JtYW5jZQ0KCXVjb2RlOiAweGQ2DQoNCnRlc3QtZGVzY3JpcHRpb246IFRo
ZSBQaG9yb25peCBUZXN0IFN1aXRlIGlzIHRoZSBtb3N0IGNvbXByZWhlbnNpdmUgdGVzdGluZyBh
bmQgYmVuY2htYXJraW5nIHBsYXRmb3JtIGF2YWlsYWJsZSB0aGF0IHByb3ZpZGVzIGFuIGV4dGVu
c2libGUgZnJhbWV3b3JrIGZvciB3aGljaCBuZXcgdGVzdHMgY2FuIGJlIGVhc2lseSBhZGRlZC4N
CnRlc3QtdXJsOiBodHRwOi8vd3d3LnBob3Jvbml4LXRlc3Qtc3VpdGUuY29tLw0KDQoNCg0KSWYg
eW91IGZpeCB0aGUgaXNzdWUsIGtpbmRseSBhZGQgZm9sbG93aW5nIHRhZw0KUmVwb3J0ZWQtYnk6
IGtlcm5lbCB0ZXN0IHJvYm90IDxyb25nLmEuY2hlbkBpbnRlbC5jb20+DQoNCg0KRGV0YWlscyBh
cmUgYXMgYmVsb3c6DQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLT4N
Cg0KDQpUbyByZXByb2R1Y2U6DQoNCiAgICAgICAgZ2l0IGNsb25lIGh0dHBzOi8vZ2l0aHViLmNv
bS9pbnRlbC9sa3AtdGVzdHMuZ2l0DQogICAgICAgIGNkIGxrcC10ZXN0cw0KICAgICAgICBiaW4v
bGtwIGluc3RhbGwgam9iLnlhbWwgICMgam9iIGZpbGUgaXMgYXR0YWNoZWQgaW4gdGhpcyBlbWFp
bA0KICAgICAgICBiaW4vbGtwIHJ1biAgICAgam9iLnlhbWwNCg0KPT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT0NCmNvbXBpbGVyL2NwdWZyZXFfZ292ZXJub3Iva2NvbmZpZy9uZWVkX3gv
b3B0aW9uX2Evb3B0aW9uX2Ivb3B0aW9uX2Mvb3B0aW9uX2Qvcm9vdGZzL3Rib3hfZ3JvdXAvdGVz
dC90ZXN0Y2FzZS91Y29kZToNCiAgZ2NjLTkvcGVyZm9ybWFuY2UveDg2XzY0LXJoZWwtOC4zL3Ry
dWUvRnVsbHNjcmVlbi9VbHRpbWF0ZS8xL0dyYW4gUGFyYWRpc28gSXNsYW5kIFtBcHByb3hpbWF0
ZWx5IDI3NWsgdHJpYW5nbGVzOyBhZHZhbmNlZCBncmFwaGljc10vZGViaWFuLXg4Nl82NC1waG9y
b25peC9sa3Ata2JsLW51YzEvc3VwZXJ0dXhrYXJ0LTEuNS4yL3Bob3Jvbml4LXRlc3Qtc3VpdGUv
MHhkNg0KDQpjb21taXQ6IA0KICA0MDBkNDk1M2YxICgiZHJtL2k5MTUvcGxsOiBDZW50cmFsaXpl
IFBMTF9FTkFCTEUgcmVnaXN0ZXIgbG9va3VwIikNCiAgMDRmZjE3ODQ4NCAoImRybS9pOTE1OiBF
bmFibGUgV2FQcm9ncmFtTWdzckZvckNvcnJlY3RTbGljZVNwZWNpZmljTW1pb1JlYWRzIGZvciBH
ZW45IikNCg0KNDAwZDQ5NTNmMWY0MzRkNSAwNGZmMTc4NDg0MGY1Zjk1NGE2NTZjN2U4NzkNCi0t
LS0tLS0tLS0tLS0tLS0gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tIA0KICAgICAgICAgJXN0
ZGRldiAgICAgJWNoYW5nZSAgICAgICAgICVzdGRkZXYNCiAgICAgICAgICAgICBcICAgICAgICAg
IHwgICAgICAgICAgICAgICAgXCAgDQogICAgIDM1LjMyICAgICAgICAgICAtMzAuNCUgICAgICAy
NC41OSAgICAgICAgcGhvcm9uaXgtdGVzdC1zdWl0ZS5zdXBlcnR1eGthcnQuMTAyNHg3NjguRnVs
bHNjcmVlbi5VbHRpbWF0ZS4xLkdyYW5QYXJhZGlzb0lzbGFuZC5mcmFtZXNfcGVyX3NlY29uZA0K
ICAgICAgMzYzOCDCsSAxNSUgICAgIC0zOS4yJSAgICAgICAyMjExIMKxICA0JSAgcGhvcm9uaXgt
dGVzdC1zdWl0ZS50aW1lLmludm9sdW50YXJ5X2NvbnRleHRfc3dpdGNoZXMNCiAgICAgMzIuMDAg
ICAgICAgICAgIC0zMC41JSAgICAgIDIyLjI1ICAgICAgICBwaG9yb25peC10ZXN0LXN1aXRlLnRp
bWUucGVyY2VudF9vZl9jcHVfdGhpc19qb2JfZ290DQoNCg0KICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICANCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgDQogICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIA0KICAz
NiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLSsgICANCiAgICAgfC4rLisuLisuKy4rLisuLisuKy4rLisuKy4uKy4r
LisuKy4uKy4rLisuKy4rLi4rLisuKy4rLisuLisgICArLisuLisuKy58ICAgDQogIDM0IHwtKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgIA0KICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICANCiAgICAgfCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8ICAgDQogIDMyIHwtKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIA0KICAgICB8ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAN
CiAgMzAgfC0rICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8ICAgDQogICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIA0KICAyOCB8
LSsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgICANCiAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgDQogICAgIHwgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgIA0KICAyNiB8LSsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICANCiAgICAgfCBPIE8gIE8gTyBPIE8g
IE8gTyBPIE8gTyAgTyBPIE8gTyAgTyBPIE8gTyBPICBPIE8gICAgICAgICAgICAgICAgICAgICB8
ICAgDQogIDI0ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKyAgIA0KICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICANCiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICANCiAgICAgICAgICAg
ICAgcGhvcm9uaXgtdGVzdC1zdWl0ZS50aW1lLnBlcmNlbnRfb2ZfY3B1X3RoaXNfam9iX2dvdCAg
ICAgICAgICAgICAgDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIA0KICAzMiArLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LSsgICANCiAgICAgfCAgICAgICAgICAgICAgICsgICAgICAgKy4gICAgICAgICAgICAgICsgICAg
ICArICAgKy4rLisuICAgICAgICAgICAgICB8ICAgDQogIDMwIHwtKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIA0K
ICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgICANCiAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgDQogIDI4IHwt
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAgIA0KICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICANCiAgMjYgfC0rICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAgDQogICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIA0KICAyNCB8LSsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
ICANCiAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTyAgICAgICBPICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ICAgDQogICAgIHwgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIA0KICAy
MiB8LU8gTyAgTyBPICAgTyAgTyBPIE8gTyBPICBPIE8gTyBPICAgIE8gTyBPICAgIE8gTyAgICAg
ICAgICAgICAgICAgICAgIHwgICANCiAgICAgfCAgICAgICAgICBPICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgDQogIDIwICstLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tKyAgIA0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICANCiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgDQpbKl0gYmlzZWN0LWdvb2Qgc2FtcGxlDQpbT10gYmlzZWN0LWJhZCAgc2FtcGxlDQoN
Cg0KDQpEaXNjbGFpbWVyOg0KUmVzdWx0cyBoYXZlIGJlZW4gZXN0aW1hdGVkIGJhc2VkIG9uIGlu
dGVybmFsIEludGVsIGFuYWx5c2lzIGFuZCBhcmUgcHJvdmlkZWQNCmZvciBpbmZvcm1hdGlvbmFs
IHB1cnBvc2VzIG9ubHkuIEFueSBkaWZmZXJlbmNlIGluIHN5c3RlbSBoYXJkd2FyZSBvciBzb2Z0
d2FyZQ0KZGVzaWduIG9yIGNvbmZpZ3VyYXRpb24gbWF5IGFmZmVjdCBhY3R1YWwgcGVyZm9ybWFu
Y2UuDQoNCg0KVGhhbmtzLA0KUm9uZyBDaGVuDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
