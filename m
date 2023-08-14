Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7AC77B569
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 11:27:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C3D010E17B;
	Mon, 14 Aug 2023 09:27:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6357210E17B
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 09:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692005230; x=1723541230;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KbMi78RJym8w38bDEQeJJO/AWMRTW1RlZT17bpwCBUs=;
 b=m/ZGCynPrGdsJXSphoXeifjHeV+akji6F6Zf37NirVBmFDhQApikZnyu
 EUfRuviEHABsDLlgKpzaty/DGadFpx1RlnL3cTqf0nUfV4FYUMvnnmym9
 q+n6mDhyfxa4618qnOkdjS+jDRSbPx2r3oN7oRoYp2/QnpQr95/BYFiX/
 H9A+KnZHR+g8DpQvNvV5cUd0emQBsxtyCNkbQSxi263WGBW6MxuGDOn4d
 A3N9y1kYQQSiNQTxjoRBD/LvAiuZBar2Gt4mBlYTzTc993ID+gU2vNeKs
 JTdchUr4AH8OP/ilGesS48Stb0wuhzzhHb3jABdbhvpW0G1XSrbipeP0d g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10801"; a="438333769"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="438333769"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 02:27:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10801"; a="907165798"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="907165798"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 14 Aug 2023 02:27:09 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 14 Aug 2023 02:27:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 14 Aug 2023 02:27:09 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 14 Aug 2023 02:27:09 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 14 Aug 2023 02:27:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SiG/43KOKS7KwTf9jL3qR5OxTVXR8I46x4HKBuA+oOhPmrdQ0gLP9clhnM4BFFSyFT15auTcTMWuz8pHx9pLGPvhFntsUPYMrN1ZEbGrHiIrPIy8Ev3yisAFasvyw7VKE1EFpbbv0sV52uZORw1yuaEBnM/yuMCr55sHLMK4Aj/O6KxVq/OuvkzyjDx5yDXj2OCJkGOjUzKq8molj3MnuyqR1TouIHsjg/mYu0sT1jAQ8EGvnTsEjeGV2fUgDD65q7cF7jcyTNqu/wV+f8rqTY9sJ97kNSO/SLpS6IuPhB4Z21o7EzsD2SR8K3fvzXO+bYfKl4AxVrAfU/jLc8cLjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KbMi78RJym8w38bDEQeJJO/AWMRTW1RlZT17bpwCBUs=;
 b=jWuypvj+jCiUlVkW6616W+jNzhc9pmSEaCRzqrYeODEMKmBcUVstA/M4H97QgyFkUhK1Ex9PBhl0Q2bn3YSSaR2w9ycEw5dtjsP4qWiFNto5eQ9XKXllFmbDlcyOx5SXoyOFL+DBmRApy1sz1+kjqL9uoxpDk9cW67QmS5bvSu7bfbhqt/vshWoxVrSKadHd18BB5cuYbOOA/OuJtvjlfG4o+UbQZUN5GsoXb4aoAoCE/WivP8eMoyEICRsFtfSPW0gWPO/h08V9vqDcjt6X0BCIk8jZHLx6sqPOnkb9KpI0QIEpso30ufi9jmVSllhB/M9TPFT+r6KEQ96VdQem+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by MW4PR11MB6788.namprd11.prod.outlook.com (2603:10b6:303:208::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Mon, 14 Aug
 2023 09:27:07 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::b1c3:d00a:b24a:65b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::b1c3:d00a:b24a:65b%7]) with mapi id 15.20.6678.025; Mon, 14 Aug 2023
 09:27:07 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 4/4] drm/i915/cx0: Program vswing only for owned lanes
Thread-Index: AQHZvz7a8w3p0M6LhEy+OXK50WRWJq/ppDPw
Date: Mon, 14 Aug 2023 09:27:07 +0000
Message-ID: <MW4PR11MB705485FA2D71AAACD2BC43ACEF17A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230725212716.3060259-1-gustavo.sousa@intel.com>
 <20230725212716.3060259-5-gustavo.sousa@intel.com>
In-Reply-To: <20230725212716.3060259-5-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|MW4PR11MB6788:EE_
x-ms-office365-filtering-correlation-id: f87f993d-0da3-4402-0e6e-08db9ca8a0fd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RikCR8Oe2epWwJ3jCLHOpr8OJ5X3joM6aCbyGCrxrQUlvtbB9hlhipKs2a+0gqgnPaF0RsVuCqnZCnMxWiaBJXJllhHfUXDzv1Q2BSSrjbe6lyTN70pOYlzAp9fPntdPTcbeoWagGfecSqWyTjUJLbdQBFtDWM1zYttblCOoVPjvQpjfre9vC1WffAGcrVPMRorkMp2HaO9UJFsHDpGzd+jl0gjO5r9RYTZ5fLWT4XMVgpe8Uc7kOIjLcbGixtCnqwJyQC/47Cb5F4cObt90HNsizMaGne6UusU550F/eOlVhspGg0nmv9dsHabrryoO3yemRw5Cq7U2m4Qr/420gGdnioXdSkJdABYeQy95fRT00bkpz1+zcX4gle+nv7ckz/afKLKVZBvA1YTVbDGWGRTyqKmoCjqIDRq6VJv0trf6WJP2K3dnSSO15DYuYz6cenS2xrwcXmFaxFccq3enkP91slGihTSQIlur9zoAGb/fl9h72l466QwlAfxTwyvVzzhEOCrszL1z+m6XBw96X6bQ0YvHJVbdYqesA4KjkKrYqrkmz9mMG/bw2qyp1NPaL06KfAxN5wU40J1fbsmbt1H/s1zugTPFGW1PNT3dw+CHRfCdHfZZUpQA+7bWdsUJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(39860400002)(396003)(376002)(346002)(451199021)(186006)(1800799006)(55016003)(71200400001)(2906002)(7696005)(6506007)(53546011)(86362001)(26005)(107886003)(9686003)(316002)(122000001)(64756008)(76116006)(66556008)(66476007)(66446008)(54906003)(66946007)(41300700001)(478600001)(38070700005)(38100700002)(110136005)(82960400001)(5660300002)(52536014)(4326008)(8676002)(8936002)(33656002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NnRKd3pTREFabWFxRTkxRWtMQUxJQVBKNkM2SzNGdE1PeGVCTThKdU10T3BU?=
 =?utf-8?B?dmFFLy9jKzBRYmpub0cvUE9VOVErVnB1ajVqSDErTHU1bUltb3dQc0RIdDR5?=
 =?utf-8?B?RktaOVpaSVNWYXAra1N1RWJWcStvOWhxVlhja21qaE5TSVJBelFhaGlvY3F2?=
 =?utf-8?B?ZTJld3lhTWp5dWVYeUU1R01hLzMzWkZrWTErUEZsSUpHOWhDOTRMVHpyMjYw?=
 =?utf-8?B?R0JYRFIvcjRhaTQ2NzMrK0t3K0FVNTJGdnFmSnFrY2hjRlJLQ2lCZUwyQndw?=
 =?utf-8?B?YVprZnJqM1EwUWtseVF4U3BDbTZPT1BzUUtUYWRrd2VXWENQdTFYZ2x3ek5W?=
 =?utf-8?B?aXRPZFdpd1IzbDVaTVhnVjhReVhESHY5L3A4UFF2S2tPY3JqTFV5VDJZS0J3?=
 =?utf-8?B?TGlBcFoxNUpLS1dEMzZsWUpwT291aFlCMWdmRDdiYjM5bzBlWnNXWldFTHRm?=
 =?utf-8?B?eGtScVVxTlJoK0Z4Zkora0xhMjMwdUhLTVlHbkVpYithZExRVGNPVUQzeDdH?=
 =?utf-8?B?NUU3K3QxbFNJMjBVWEY2MzFKdlBNRmc3Ym80QzV3YlNWVHRUbU9iZmExcHBy?=
 =?utf-8?B?bHEyOEhqSEdDV0pTOVNqSE1UOGFjK1N0RitScGlIank1YmxYZko2dWhhYm5M?=
 =?utf-8?B?cG0reG9sQlQrbEdXRlIwcXFuRTRFZHBKSW9ZbHVZU0x0L25BRHJuOGFNbDlT?=
 =?utf-8?B?bGpPS09nN2NIZGJCOGI4WC9wUE1EL3AvREdnWEFxb09NTW82ZTZYSlRXVXA1?=
 =?utf-8?B?VitKczdranJWaGQvdDBoSVdjVzFxUmtTa2ppcFdOUjZISUNCdWFZb1RLMkdu?=
 =?utf-8?B?bTBRb0tKTXNLNE9LSVdGSnF6cjlkbXRoMnlJV0FKamhxL2htZWVWVEhsRDh3?=
 =?utf-8?B?K2JmSjIyUTRHdWRWVEd0VDNNQjdhT3pqV09Md3pGSy9QbE1RcjNNZnBBbTdS?=
 =?utf-8?B?amZIVTdQUnBqYk14SHlGUDlxdWJrNklBWThETnNacU1kSlpxZHdoclpZUWhm?=
 =?utf-8?B?Y1ZhaHNUczQ4TGxhTUJ3YXhFNUhRYjFQL2t0K0wrN25rSUhvcmR6eUNGSVo1?=
 =?utf-8?B?SWhIcWlKcjRFUDUwd1Nsdjk0OFNFenNOejd1bWg0UDVaanZpMmlrMFBDTVg2?=
 =?utf-8?B?eTg1QXlmb01YeDFVYWpPOG5mNFdpeUxrOHNTU1VsVHh0Qnl2QnlyUklTN1pr?=
 =?utf-8?B?cUJXaGkvSDd3emQrcEduQUx3Tm5wQ3lOR0ZhUWdjNDd2S3Nham9MTVpiaytu?=
 =?utf-8?B?Si8reFVqRFVMWk14MWd4aDZjdDRKWlpvTG5Ea0lqdzMvZktJeU9nbWN1MnVD?=
 =?utf-8?B?SW1rVzhuMkN3UlRKdnY0cnVIbkdWVWZJVnVhQmpZK1JER0dKdEhZSjN4MGVF?=
 =?utf-8?B?eCtYWG1GR000cVJhbkk1NndGUVZ3alY4NnZKQ2R5YStxR0JDY0JMVTJpSEIx?=
 =?utf-8?B?cE16R1JIL3NyNVltb2NjQzZtLzBwUDRRYjBqdlpxZjRnWXVXMFNwZ2ZnL1I5?=
 =?utf-8?B?VUlMckV4SUg3OUs2eXYrQjNpUnptNFhRRWJCT1o1VkFnUVIxU2lSU2hvdXJo?=
 =?utf-8?B?alRFUHIvS1JSS2tqSmRQRTNCRC9zZ1VhTmIrNURHbmx2MFJkQmVzVVpFWHI5?=
 =?utf-8?B?dVJqdndoQmRKY2xDcEFwY3NpQ2RSa2cwYVc2Vkx3czlSME9FOFR3RExzOVpQ?=
 =?utf-8?B?QWZ1aVJuOGFoUXVuNnVhTGhkbVNtWUZPRUlGMzNqUEFBcFFrbWVhc0hGTXZk?=
 =?utf-8?B?dndZcnNtS2kxTENzRE1JSFVnWUlJU1lIUjh6VGdyOFhNNE04NDR3WlRybDJu?=
 =?utf-8?B?aE1EaWpra2Q2SE1QMkRUclN1NmJoYTUvU0FOd1NRT2J3ckFVeTdZWXc0MFds?=
 =?utf-8?B?TXFwV29uS0xPNVg2NlFzaDNITDVKUTVVT3pMMVJ2cDZrbkxDMnNtS1VEY291?=
 =?utf-8?B?TWRWMHdWNDlRcmZMY0hWbFRReitldktmM1lnYkhWWS9GbEJuU3Q2S0kyNko4?=
 =?utf-8?B?ZUhJZXpmNGxCNVA1U0FHczNDaWNRQ0FPcE5LTlBuTVgzSEh4cGRkUEVXTWtI?=
 =?utf-8?B?d05wak0wbGJ3YUIycHB5RVlFM1RXSzUyUTJ5RXVSc2NIR28rNXgyTFdBNFBo?=
 =?utf-8?Q?5gYD1tx8YIKFjkgkesiQPt+pp?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f87f993d-0da3-4402-0e6e-08db9ca8a0fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2023 09:27:07.1995 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nQ8fwww7RU3A2WIyUroGWCN90d983aoImMX4+agqY1ONnIquF4tzIxfM64oicVrfo/yl1Fmwn0Km+6N4iy5Ewg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6788
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/cx0: Program vswing only for
 owned lanes
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTb3VzYSwgR3VzdGF2byA8Z3Vz
dGF2by5zb3VzYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVseSAyNiwgMjAyMyAx
MjoyNyBBTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogS2Fo
b2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBTcmlwYWRhLCBSYWRoYWtyaXNobmEg
PHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT47IFRheWxvciwgQ2xpbnRvbiBBDQo+IDxj
bGludG9uLmEudGF5bG9yQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIDQvNF0gZHJtL2k5
MTUvY3gwOiBQcm9ncmFtIHZzd2luZyBvbmx5IGZvciBvd25lZCBsYW5lcw0KPiANCj4gQWNjb3Jk
aW5nIHRvIHRoZSBCU3BlYywgdm9sdGFnZSBzd2luZyBwcm9ncmFtbWluZyBzaG91bGQgYmUgZG9u
ZSBmb3Igb3duZWQgUEhZIGxhbmVzLiBEbyBub3QgcHJvZ3JhbSBhIG5vdC1vd25lZCBQSFkNCj4g
bGFuZS4NCj4gDQo+IEJTcGVjOiA3NDEwMywgNzQxMDQNCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fo
b2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogR3VzdGF2byBT
b3VzYSA8Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgfCAyNSArKysrKysrKysrKy0tLS0tLS0tLQ0K
PiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3Bo
eS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gaW5k
ZXggMjM2MTI0Nzg2NjMxLi5jZmIyMDkzZmViM2IgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+IEBAIC0zNzUsNiArMzc1LDcgQEAgdm9p
ZCBpbnRlbF9jeDBfcGh5X3NldF9zaWduYWxfbGV2ZWxzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLA0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShlbmNv
ZGVyLT5iYXNlLmRldik7DQo+ICAJY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKnRy
YW5zOw0KPiAgCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGk5MTUsIGVuY29kZXIt
PnBvcnQpOw0KPiArCXU4IG93bmVkX2xhbmVfbWFzayA9IGludGVsX2N4MF9nZXRfb3duZWRfbGFu
ZV9tYXNrKGk5MTUsIGVuY29kZXIpOw0KPiAgCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOw0KPiAg
CWludCBuX2VudHJpZXMsIGxuOw0KPiANCj4gQEAgLTM4NywxMyArMzg4LDEzIEBAIHZvaWQgaW50
ZWxfY3gwX3BoeV9zZXRfc2lnbmFsX2xldmVscyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwNCj4gIAl9DQo+IA0KPiAgCWlmIChpbnRlbF9pc19jMTBwaHkoaTkxNSwgcGh5KSkgew0KPiAt
CQlpbnRlbF9jeDBfcm13KGk5MTUsIGVuY29kZXItPnBvcnQsIElOVEVMX0NYMF9CT1RIX0xBTkVT
LCBQSFlfQzEwX1ZEUl9DT05UUk9MKDEpLA0KPiArCQlpbnRlbF9jeDBfcm13KGk5MTUsIGVuY29k
ZXItPnBvcnQsIG93bmVkX2xhbmVfbWFzaywNCj4gK1BIWV9DMTBfVkRSX0NPTlRST0woMSksDQo+
ICAJCQkgICAgICAwLCBDMTBfVkRSX0NUUkxfTVNHQlVTX0FDQ0VTUywgTUJfV1JJVEVfQ09NTUlU
VEVEKTsNCj4gLQkJaW50ZWxfY3gwX3JtdyhpOTE1LCBlbmNvZGVyLT5wb3J0LCBJTlRFTF9DWDBf
Qk9USF9MQU5FUywgUEhZX0MxMF9WRFJfQ01OKDMpLA0KPiArCQlpbnRlbF9jeDBfcm13KGk5MTUs
IGVuY29kZXItPnBvcnQsIG93bmVkX2xhbmVfbWFzaywNCj4gK1BIWV9DMTBfVkRSX0NNTigzKSwN
Cj4gIAkJCSAgICAgIEMxMF9DTU4zX1RYVkJPT1NUX01BU0ssDQo+ICAJCQkgICAgICBDMTBfQ01O
M19UWFZCT09TVChpbnRlbF9jMTBfZ2V0X3R4X3Zib29zdF9sdmwoY3J0Y19zdGF0ZSkpLA0KPiAg
CQkJICAgICAgTUJfV1JJVEVfVU5DT01NSVRURUQpOw0KPiAtCQlpbnRlbF9jeDBfcm13KGk5MTUs
IGVuY29kZXItPnBvcnQsIElOVEVMX0NYMF9CT1RIX0xBTkVTLCBQSFlfQzEwX1ZEUl9UWCgxKSwN
Cj4gKwkJaW50ZWxfY3gwX3JtdyhpOTE1LCBlbmNvZGVyLT5wb3J0LCBvd25lZF9sYW5lX21hc2ss
DQo+ICtQSFlfQzEwX1ZEUl9UWCgxKSwNCj4gIAkJCSAgICAgIEMxMF9UWDFfVEVSTUNUTF9NQVNL
LA0KPiAgCQkJICAgICAgQzEwX1RYMV9URVJNQ1RMKGludGVsX2MxMF9nZXRfdHhfdGVybV9jdGwo
Y3J0Y19zdGF0ZSkpLA0KPiAgCQkJICAgICAgTUJfV1JJVEVfQ09NTUlUVEVEKTsNCj4gQEAgLTQw
MSwzMiArNDAyLDM0IEBAIHZvaWQgaW50ZWxfY3gwX3BoeV9zZXRfc2lnbmFsX2xldmVscyhzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gDQo+ICAJZm9yIChsbiA9IDA7IGxuIDwgY3J0
Y19zdGF0ZS0+bGFuZV9jb3VudDsgbG4rKykgew0KPiAgCQlpbnQgbGV2ZWwgPSBpbnRlbF9kZGlf
bGV2ZWwoZW5jb2RlciwgY3J0Y19zdGF0ZSwgbG4pOw0KPiAtCQlpbnQgbGFuZSwgdHg7DQo+ICsJ
CWludCBsYW5lID0gbG4gLyAyOw0KPiArCQlpbnQgdHggPSBsbiAlIDI7DQo+ICsJCXU4IGxhbmVf
bWFzayA9IGxhbmUgPT0gMCA/IElOVEVMX0NYMF9MQU5FMCA6IElOVEVMX0NYMF9MQU5FMTsNCj4g
DQo+IC0JCWxhbmUgPSBsbiAvIDI7DQo+IC0JCXR4ID0gbG4gJSAyOw0KPiArCQlpZiAoIShsYW5l
X21hc2sgJiBvd25lZF9sYW5lX21hc2spKQ0KPiArCQkJY29udGludWU7DQo+IA0KPiAtCQlpbnRl
bF9jeDBfcm13KGk5MTUsIGVuY29kZXItPnBvcnQsIEJJVChsYW5lKSwgUEhZX0NYMF9WRFJPVlJE
X0NUTChsYW5lLCB0eCwgMCksDQo+ICsJCWludGVsX2N4MF9ybXcoaTkxNSwgZW5jb2Rlci0+cG9y
dCwgbGFuZV9tYXNrLA0KPiArUEhZX0NYMF9WRFJPVlJEX0NUTChsYW5lLCB0eCwgMCksDQo+ICAJ
CQkgICAgICBDMTBfUEhZX09WUkRfTEVWRUxfTUFTSywNCj4gIAkJCSAgICAgIEMxMF9QSFlfT1ZS
RF9MRVZFTCh0cmFucy0+ZW50cmllc1tsZXZlbF0uc25wcy5wcmVfY3Vyc29yKSwNCj4gIAkJCSAg
ICAgIE1CX1dSSVRFX0NPTU1JVFRFRCk7DQo+IC0JCWludGVsX2N4MF9ybXcoaTkxNSwgZW5jb2Rl
ci0+cG9ydCwgQklUKGxhbmUpLCBQSFlfQ1gwX1ZEUk9WUkRfQ1RMKGxhbmUsIHR4LCAxKSwNCj4g
KwkJaW50ZWxfY3gwX3JtdyhpOTE1LCBlbmNvZGVyLT5wb3J0LCBsYW5lX21hc2ssDQo+ICtQSFlf
Q1gwX1ZEUk9WUkRfQ1RMKGxhbmUsIHR4LCAxKSwNCj4gIAkJCSAgICAgIEMxMF9QSFlfT1ZSRF9M
RVZFTF9NQVNLLA0KPiAgCQkJICAgICAgQzEwX1BIWV9PVlJEX0xFVkVMKHRyYW5zLT5lbnRyaWVz
W2xldmVsXS5zbnBzLnZzd2luZyksDQo+ICAJCQkgICAgICBNQl9XUklURV9DT01NSVRURUQpOw0K
PiAtCQlpbnRlbF9jeDBfcm13KGk5MTUsIGVuY29kZXItPnBvcnQsIEJJVChsYW5lKSwgUEhZX0NY
MF9WRFJPVlJEX0NUTChsYW5lLCB0eCwgMiksDQo+ICsJCWludGVsX2N4MF9ybXcoaTkxNSwgZW5j
b2Rlci0+cG9ydCwgbGFuZV9tYXNrLA0KPiArUEhZX0NYMF9WRFJPVlJEX0NUTChsYW5lLCB0eCwg
MiksDQo+ICAJCQkgICAgICBDMTBfUEhZX09WUkRfTEVWRUxfTUFTSywNCj4gIAkJCSAgICAgIEMx
MF9QSFlfT1ZSRF9MRVZFTCh0cmFucy0+ZW50cmllc1tsZXZlbF0uc25wcy5wb3N0X2N1cnNvciks
DQo+ICAJCQkgICAgICBNQl9XUklURV9DT01NSVRURUQpOw0KPiAgCX0NCj4gDQo+ICAJLyogV3Jp
dGUgT3ZlcnJpZGUgZW5hYmxlcyBpbiAweEQ3MSAqLw0KPiAtCWludGVsX2N4MF9ybXcoaTkxNSwg
ZW5jb2Rlci0+cG9ydCwgSU5URUxfQ1gwX0JPVEhfTEFORVMsIFBIWV9DMTBfVkRSX09WUkQsDQo+
ICsJaW50ZWxfY3gwX3JtdyhpOTE1LCBlbmNvZGVyLT5wb3J0LCBvd25lZF9sYW5lX21hc2ssIFBI
WV9DMTBfVkRSX09WUkQsDQo+ICAJCSAgICAgIDAsIFBIWV9DMTBfVkRSX09WUkRfVFgxIHwgUEhZ
X0MxMF9WRFJfT1ZSRF9UWDIsDQo+ICAJCSAgICAgIE1CX1dSSVRFX0NPTU1JVFRFRCk7DQo+IA0K
PiAgCWlmIChpbnRlbF9pc19jMTBwaHkoaTkxNSwgcGh5KSkNCj4gLQkJaW50ZWxfY3gwX3Jtdyhp
OTE1LCBlbmNvZGVyLT5wb3J0LCBJTlRFTF9DWDBfQk9USF9MQU5FUywgUEhZX0MxMF9WRFJfQ09O
VFJPTCgxKSwNCj4gKwkJaW50ZWxfY3gwX3JtdyhpOTE1LCBlbmNvZGVyLT5wb3J0LCBvd25lZF9s
YW5lX21hc2ssDQo+ICtQSFlfQzEwX1ZEUl9DT05UUk9MKDEpLA0KPiAgCQkJICAgICAgMCwgQzEw
X1ZEUl9DVFJMX1VQREFURV9DRkcsIE1CX1dSSVRFX0NPTU1JVFRFRCk7DQo+IA0KPiAgCWludGVs
X2N4MF9waHlfdHJhbnNhY3Rpb25fZW5kKGVuY29kZXIsIHdha2VyZWYpOw0KPiAtLQ0KPiAyLjQx
LjANCg0K
