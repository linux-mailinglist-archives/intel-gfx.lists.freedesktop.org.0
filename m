Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9125751F551
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 09:30:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1C7B10F5D3;
	Mon,  9 May 2022 07:30:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C48C410F59D
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 07:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652081443; x=1683617443;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=u7H8LBRsVpfP/ttuFXbcdNwK2ulDb568ljn0vGod+bQ=;
 b=N3Foc8Q26HajlpsGYjnZmOCR8fdI99OaEv1hMcY3c3CMSrT+0D5GfvY5
 j45e4d/7ss9zD/vCc5RF39JSuOi8oQG/kKBkoJNUPQwPp2KDGn/Os5SDr
 hYwiT/I7RLLoYQ4AHgVtn1NOBPoXntarWBeacAZxd1qGd2iLVUOPk4MOM
 KMF3xhykJOawFewZRZLsyNBDmoZxxeWukx4YLk2QS+iUsiDERK58to5a1
 z5SWC0Kon+gbtwkLdWfNzso7yLPaJL65DOUyXQDHwyNTbVBeXuoMgEJBQ
 ko2ZJnH/1jBHMFUu9aSJtkIYO0XSltEQ0k9/pZgmvv77tMh31oqquzABX g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="269106622"
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="269106622"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 00:30:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="591237679"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 09 May 2022 00:30:34 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 9 May 2022 00:30:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 9 May 2022 00:30:32 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 9 May 2022 00:30:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ji76oFCqdkDgHpPqALv9UO8w+Pe2brSd+1RhTwT9c2PNre6cVY9fFuTxqT8vK6d7IhMQXTcwA3PpjxLI241gcfJQoLHLk+RN6uN0UadprH2Mola3FKUPAO7HOFtMCG28OhShABfEgz1LjJwdiMGWz+QN4q9u+DmIC0shssq7sLv8zb4x6sGFSGazvyh2okrojwh6x+UIggFGLmtSIQCisFjAPeHTzHBAWx/hW/nJAY9EFNVCg1qbTnFKUFU00agipWSzkwNEvE2DmQEqGONYeK1rzjbSHj0Xv37pkT5tabsF+3/rJKhfuHwzrnJPupIJfUKXGGbGB7ADL3YasOLmXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u7H8LBRsVpfP/ttuFXbcdNwK2ulDb568ljn0vGod+bQ=;
 b=arZZF7wY/2c0MR7NRzrH59dlSbOF+LtxvB1ASu7LLoW/tZc8ttxz0fIzT4du4UsaY5b0pxAJhbY6io4yTWEWci8Wci7jHMRqoVEzWnhLLYLBvjbi4d4h6H2e4V1Bt67Sto0arQ4JBnrd8DGtjNKqG3usiCoMZ0Bt2cs0GC3DOO39KOLuBPsPf15huymoUlFFpCM43eHhgz+JnL0fYKc6ZCCddL6sRgHPy9o3mrMAvW0MvgLuTMJJmcisvTnv1CMMyHN52Wdo1Zix76ZkSjmLIFhaq3qRwFLJewpbbCxaSVTsf/sZC5kpCzCC35iXsqb2NMYUxkoISav7Z+A1E0aiHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM6PR11MB3385.namprd11.prod.outlook.com (2603:10b6:5:c::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5227.23; Mon, 9 May 2022 07:30:30 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9c98:da7:1e8a:ef82]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9c98:da7:1e8a:ef82%5]) with mapi id 15.20.5227.021; Mon, 9 May 2022
 07:30:30 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 1/2] drm/i915/psr: Use full update In case of area
 calculation fails
Thread-Index: AQHYYQ1TkzAkp7skk0CmzCVlQcVqM60R+ewAgAAyEoCAAAOOAIAD+6qA
Date: Mon, 9 May 2022 07:30:30 +0000
Message-ID: <ca1baba8ab36a88a044aa6afca948970431725a3.camel@intel.com>
References: <20220506054834.2822650-1-jouni.hogander@intel.com>
 <20220506054834.2822650-2-jouni.hogander@intel.com>
 <274b1d451fa18abd11e918acb44fecb108b9ba55.camel@intel.com>
 <60ff6aea75030f144e7676eb85d775a3612ad1c9.camel@intel.com>
 <c4876757329baa66a7846bb9832743aac9149286.camel@intel.com>
In-Reply-To: <c4876757329baa66a7846bb9832743aac9149286.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 63a88510-74f9-4791-b229-08da318dcbca
x-ms-traffictypediagnostic: DM6PR11MB3385:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB3385DED92DA589484272FE528AC69@DM6PR11MB3385.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B83nWM1Ygv3t9624wtqgnkEl4V9CK5mWQiJdcjIjusPLmegZO18TMpiV7ppwCQ5SI7ybj2gWMna0Ubr3DIfvwWUqLsNDvMhLn6TKuJ2JgmjPRPg5Y4HueZlRvmEs8fL6wa9PTk+izNHEmobglpnYVzDdjkrmFmyJOXY6mm0kCR1Wk7Pa+5sugJ5yC+JObnLgnuzjSch6jpzJHWKtgisVmkPdwhQvq8opCdPPIYbW8bormFReL8RQol2wDS86ykMiiWCfJET4K0cqHE+aUbhS3j+A5fz1Xk+cQiudM0eLxy6B0vH0Co9pVgEfBI9UiMgGQvxdVxvPJnAWq51C9aqAP8YJL1z0Zlt7Au+fhNnMfwoHSY+/nA9yMyYTHAGlgKpO3hGTAuyKtXmswA1AG2txNVhyK5DmeGmHxjf71p9SQPCsKKcCQ5CAJAmO05r8ddSARcZ3oFlJuhoIOtx7JBWdwJPkEaAIHyYsWNkAarBWmQLk1pSlUbJJQx62LacYibjr7bd/nVzv4KnWRDLwKVtxaFG34EeH8a3pS1W+CvpnipNCCbtFc4qJ5RiZ9vcudRjdBBHUGZD1GaBt2vM7p3hzzBsr1joBvxDBTsLWEhs6O6OqpYWsYfHpG1qMsRdbn8xU2TwwVUXD7rZbzUCFx/ZAJUT5m1tksWtl6KRZ4Urj93H0XsIunZ+d8P/T9Bu6ztUmplfDiT9X+C/TjRHlAxMe9w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(71200400001)(316002)(91956017)(8676002)(66946007)(4326008)(76116006)(66476007)(186003)(508600001)(64756008)(66556008)(66446008)(6486002)(5660300002)(86362001)(8936002)(6506007)(2616005)(36756003)(38100700002)(66574015)(26005)(82960400001)(122000001)(6512007)(2906002)(54906003)(110136005)(15650500001)(6636002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U2ZFem5VcmR3OGIzMWdaa0lvbzZMV3AxTjFmdFA5Tld0Z21obXhURUxBUmpZ?=
 =?utf-8?B?NXJkdW5sRDdwdks1S2lZV3pzL1ZSS3MramhURWF2Z1kvMlJqb2c1RzdUOWMx?=
 =?utf-8?B?STR4QVgvUmY4MzZ2bTlFRzI5QmNrYzNnZVlSSDJkRmZ2TGtQZ3A0aEpvOXBN?=
 =?utf-8?B?bUM4NkRxT1E2dk5TK3dxcWtJR2xGOVNaUS9ySU1tS01Vczg1anh6OWxWR1Q5?=
 =?utf-8?B?bUxJa3FKQnpyV3pDTDNHWTJRblVBd3p0bTlQWEMyU3NhWWJDV0RONVVuRy9W?=
 =?utf-8?B?TlQ1TWdNV3NXYkc2Z1FTTE84OTV5bnBJZldCLzJ2WU4yUU5NZ2w2SVRCM3dy?=
 =?utf-8?B?alp1Uk1tOGYraHIvQkdEckNQQ0V2THdqVHpaV0srcEZtY0ZnL0VTajJ0Q1F0?=
 =?utf-8?B?YWpZWnA4bmpWYno4SnZ2STdLQlFUMFZ3VW5ReHppNUY0VEFPSEZ1ZGNqK1Ax?=
 =?utf-8?B?MFY1RGlOeS9TSkExN1hGZEowZi9HNm5WUGhOcE5ZVjluRHkxcjR5aEFYU3Jr?=
 =?utf-8?B?cTlndFpxRUprVXgyY3pIMGphdUpwZC9yelJDMnZUWCtwMHUrek1hNmVEdXJ4?=
 =?utf-8?B?MWV5RHZPMHhHNXB3WGZoa213Ty9jMG5tcC9lUzZkSktzOWg2UXQrRHpXeGor?=
 =?utf-8?B?cEtQd0lJM2tPaFp6VDFCOWlFRk9XdFZ0UGdJb25MMFFXMjg1S3BIQVlnTkw0?=
 =?utf-8?B?ZjY2VmlyLzRISWtmUk4wcFFmKzcvYlBPRGZUdzdxZk04RDNCMFphSmtWZUI0?=
 =?utf-8?B?VmJrOHY5L1JJdkVURXZUNlhxS0hoT2tVbUVkbzBTZDhZZUw5TkFNejVkOCtP?=
 =?utf-8?B?dEx5M0YyRVh0V013NDVBY3FQM25DdStHV0lxWDBmOFY2TjNrQzlxNS8xSWtz?=
 =?utf-8?B?UE5HMTgwZ3gwSUFsTVV0R2d4cjQ5ZmlZRmZwcmNWM3lzNTIvN3BoSFY1R3Vm?=
 =?utf-8?B?T1ZuK0doeHlWeEdIN1FqSWZkK0xLVFUvb0xCM1J5QUQvTkZNWVNwK3FTWGh4?=
 =?utf-8?B?MXFDOTU4L0FxeENWYlRaaVVaZnd5QUhJZlJ3bXYvQ3QvY2NBSkEzWHJwQzZq?=
 =?utf-8?B?Si9iZ0IyM2VEZUpOVlJEVStNMzYra0FDWGFqSGNubUFJNEY5ZXEyS3BYRUZv?=
 =?utf-8?B?MUpLSUpLUXgwdlo4MVBDVmRjVklZeXVPV2RBU3QyTFhRREQ1U2xlR1hvMUQ1?=
 =?utf-8?B?cGdhYzFhOGJlRVh4b29LZy9RM3ZEczBEMWI3M2NPbDNORzh2RXp5bkJyOW1S?=
 =?utf-8?B?bWhFUlJFZnI3SktKZWF1TFBGd0VtbGk3TkRGMWo3V1hObTJDcXBMeHJMUVJE?=
 =?utf-8?B?V0QzK0xtTTFDbTF4b1NSYnhnc01sZE1LdUtQUUJmZVQ2clF0LzVYRFIwcG5Y?=
 =?utf-8?B?MU93WEZycEsrTG4ySWxFbm95UEFtMDcwU2FtdGZDYWNoNmtMenVxMlNHMXFi?=
 =?utf-8?B?UnlONWcxSFNJazVEOHY3eS90aE5xbVhORHZNTVBmWERhdzA1YjFVbThlbzR0?=
 =?utf-8?B?Rjd6WUlabjlSTWxVbkQyc2p4MnFWa0VjZzRXU0hraFR4ODJGM1RFajN5cHcr?=
 =?utf-8?B?VG1zQWZyTmlRUHgvSlhraDRIR2daRjRrRG9MM2RYUitEMlFLVGcwYUZtZUt4?=
 =?utf-8?B?aW9BWGtjMzEzeEUvdnZqQWdUSy9QaXFTMldsWUpSWU50bEp2eDJYZkovb096?=
 =?utf-8?B?Mm1FNjczVHZOV3dGdWZ3dkZ6N3ZJWk5wVUlpa0JaMEhuZldWcHQzOFhBVjdk?=
 =?utf-8?B?dVNHT1VqZjN3TDFoVnNOWmdLbDdTT1hLZzRXd2xldEV3Z2dReEYvb3BCemJu?=
 =?utf-8?B?YmJ3em9pY25zUVJlRnhoL3FIb0RnZGFzSmZKcXJBMzRGNW5ZYnB1b1B3RVBC?=
 =?utf-8?B?T2h5RGpRaUZsZzhKajJHSFlSWnM2RkVvVnJockVkSkNjbjNkT2pBOUVWNVEy?=
 =?utf-8?B?WHNuU0VtM0c0NUtHT1VwSjdqS3FWTEwrTWpCKzQ0bHZUV3dPYzJkcjNOTnI0?=
 =?utf-8?B?Z0Q0NmYveXQ5cVNFSjF0Z1hFUHh1QnNYcjZUcU1EN1FtVEROaGxHVFdzeTdm?=
 =?utf-8?B?YWx0U2VNQVl0TTcyUlRzcnRYRkI2T0RzKzR2YUZuV0lxS3M1RUhsc0U0MWFr?=
 =?utf-8?B?RngvQnVEam5EZmxyNjBFb2tid25qRTBvbFFkOGpsMzFwd2FJVmlseVFYS3d3?=
 =?utf-8?B?TTRaM1FiUXc1VzVKUVMwTGlmemlKcnpmODJ5Tkx2ZDN5WDlYWHBYQThkWmcx?=
 =?utf-8?B?VVhBK01IaWF3ZHZTRUFYNzRITWZEdDFmZEg5TXcxSkZIWkhHaUpPVERQKzFY?=
 =?utf-8?B?ZDZvWXhNNVBWbFZwSk1SNk9IdGRUSnppK0d5bW5PNGFldXRveVhMQzFZaDUv?=
 =?utf-8?Q?PAIiVadhmvK4lPNk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0AE7D9A9CC97A349AAAD6E29150B32B3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63a88510-74f9-4791-b229-08da318dcbca
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2022 07:30:30.5086 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uQwYnMRHnFvG4YjzpuDtWR3HbFZ5VwlW5txdhxYjb2BlFZuooyh4GGjkJj01LE/58fxn9MuizkC8t9DHxDs+EDB7jkX24wowiKDUxmtGsbs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3385
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Use full update In case
 of area calculation fails
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
Cc: "markpearson@lenovo.com" <markpearson@lenovo.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIyLTA1LTA2IGF0IDE4OjQwICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gRnJpLCAyMDIyLTA1LTA2IGF0IDE4OjI4ICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+ID4gT24gRnJpLCAyMDIyLTA1LTA2IGF0IDE1OjI5ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90
ZToNCj4gPiA+IE9uIEZyaSwgMjAyMi0wNS0wNiBhdCAwODo0OCArMDMwMCwgSm91bmkgSMO2Z2Fu
ZGVyIHdyb3RlOg0KPiA+ID4gPiBDdXJyZW50bHkgd2UgaGF2ZSBzb21lIGNvcm5lciBjYXNlcyB3
aGVyZSBhcmVhIGNhbGN1bGF0aW9uDQo+ID4gPiA+IGZhaWxzLiAgRm9yDQo+ID4gPiA+IHRoZXNl
IHNlbCBmZXRjaCBhcmUgY2FsY3VsYXRpb24gZW5kcyB1cCBoYXZpbmcgdXBkYXRlIGFyZWEgYXMN
Cj4gPiA+ID4geTEgPQ0KPiA+ID4gPiAwLA0KPiA+ID4gPiB5MiA9IDQuIEluc3RlYWQgb2YgdGhl
c2UgdmFsdWVzIHNhZmVyIG9wdGlvbiBpcyBmdWxsIHVwZGF0ZS4NCj4gPiA+IA0KPiA+ID4gQXJl
bid0IHlvdSBhYmxlIHRvIHJlcHJvZHVjZSB0aGlzIHNjZW5hcmlvcyB3aXRoIElHVD8gU28gd2h5
IG5vdA0KPiA+ID4gcHJvYmFibHkgZml4IHRoZSBjYWxjdWxhdGlvbnM/DQo+ID4gDQo+ID4gVGhl
cmUgd2VyZSBzb21lIGRpc2N1c3Npb24gd2l0aCBWaWxsZSBTeXJqw6Rsw6QgdGhhdCB0aGUgcHJv
cGVyIGZpeA0KPiA+IGZvcg0KPiA+IHRoaXMgd291bGQgYmUgdG8gbW92ZSBwc3IgdXBkYXRlIGFy
ZWEgY2FsY3VsYXRpb24gaW50byB3aGVyZSBvdGhlcg0KPiA+IGNhbGN1bGF0aW9ucyBmb3IgcGxh
bmVzIGFyZSBkb25lLiBDdXJyZW50bHkgd2UgZG9uJ3QgaGF2ZSBlLmcuDQo+ID4gcHJvcGVyDQo+
ID4gb2Zmc2V0IGluZm9ybWF0aW9uIGF2YWlsYWJsZSBoZXJlLiBJIGhhdmUgdGhpcyBpbiBteSB0
YXNrbGlzdCwgYnV0DQo+ID4gYmVlbg0KPiA+IGJ1c3kgd2l0aCBvdGhlciB0cmFja3MuDQo+IA0K
PiBPa2F5IHNvIHBsZWFzZSBhZGQgc29tZSBvZiB0aGF0IHRvIHRoZSBjb21taXQgZGVzY3JpcHRp
b24uDQoNCkFkZGVkIHNvbWUgb2YgdGhpcyBpbnRvIGNvbW1pdCBtZXNzYWdlIGluIG5ldyB2ZXJz
aW9uLCBwbGVhc2UgY2hlY2suDQoNCj4gDQo+ID4gSSdtIGFsc28gY29uY2VybmVkIGdlbmVyYWxs
eSBvbiB0aGUgZmlyc3QgbG9vcCBwb3NzaWJseSBlbmRpbmcgdXANCj4gPiB3aXRoDQo+ID4geTE9
LTEseTI9LTEgdmFsdWVzIGR1ZSB0byBvdGhlciByZWFzb25zIGFzIHdlbGwuIFNvIHVzaW5nIHRo
YXQNCj4gPiBmdWxsX3VwZGF0ZSBwcmV2ZW50cyB0aGlzIHBvc2liaWxpdHkgY29tcGxldGVseS4N
Cj4gPiANCj4gPiBJZiBJIGZvcmdldCBob3cgSSBvcmlnaW5hbGx5IGZvdW5kIHRoaXMgcHJvYmxl
bSB3aXRoIGJpZ2ZiIEkgdGhpbmsNCj4gPiB0aGlzDQo+ID4gYmFja3VwIHVzaW5nIGZ1bGwgdXBk
YXRlIGlmIHNvbWV0aGluZyBnb2VzIHdyb25nIGlzIGdlbmVyYWxseSBhDQo+ID4gZ29vZA0KPiA+
IGlkZWEuIEN1cnJlbnRseSBpdCdzIGp1c3QgdXNpbmcgeTE9MCx5Mj00Lg0KPiA+IA0KPiA+ID4g
PiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4g
PiA+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+ID4gPiBUZXN0
ZWQtYnk6IE1hcmsgUGVhcnNvbiA8bWFya3BlYXJzb25AbGVub3ZvLmNvbT4NCj4gPiA+ID4gU2ln
bmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+
ID4gPiA+IC0tLQ0KPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyB8IDMgKysrDQo+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+
ID4gPiA+IA0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gPiA+ID4gaW5kZXggMDZkYjQwN2UyNzQ5Li44YzA5OWQyNGRlODYgMTAwNjQ0
DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiA+ID4gPiBAQCAtMTc3MCw2ICsxNzcwLDkgQEAgaW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3Vw
ZGF0ZShzdHJ1Y3QNCj4gPiA+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiA+ID4g
IGNsaXBfYXJlYV91cGRhdGUoJnBpcGVfY2xpcCwgJmRhbWFnZWRfYXJlYSk7DQo+ID4gPiA+ICB9
DQo+ID4gPiA+IA0KPiANCj4gQWRkIGEgVE9ETyBhbmQgYSAiZHJtX0RFQlVHX09OQ0UoKSIoY2hl
Y2sgZHJtX1dBUk5fT05DRSkgaGVyZSBzbyB3ZQ0KPiBnZXQgYSB3YXJuaW5nIGFib3V0IHRoaXMg
YXQgbGVhc3Qgb25jZSBhbmQgdGhpcyBpcyBub3QgZm9yZ290Lg0KDQpJIGxlZnQgdGhlIHdhcm4g
b3V0LiBUaGVyZSBpcyBzb21lIGNhc2UgZHVyaW5nIGJvb3QtdXAgYXQgbGVhc3QgaW4NCkZlZG9y
YTM1LiBJLmUuIFRoaXMgd2FybmluZyB3b3VsZCBiZSB0aGVyZSBhbHdheXMuDQoNCkhvdyBhYm91
dCBpZiBJIGp1c3QgZmlsZSBvd24gYnVnIGZvciB0aGlzIGluIGdpdGxhYiBhbmQgYXNzaWduIGl0
IHRvDQpteXNlbGY/DQoNCj4gDQo+ID4gPiA+ICtpZiAocGlwZV9jbGlwLnkxID09IC0xKQ0KPiA+
ID4gPiArZnVsbF91cGRhdGUgPSB0cnVlOw0KPiA+ID4gPiArDQo+ID4gPiA+ICBpZiAoZnVsbF91
cGRhdGUpDQo+ID4gPiA+ICBnb3RvIHNraXBfc2VsX2ZldGNoX3NldF9sb29wOw0KPiA+ID4gPiAN
Cg0K
