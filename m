Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9D863453F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 21:11:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F19AC10E462;
	Tue, 22 Nov 2022 20:11:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C82010E1D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 20:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669147867; x=1700683867;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=17YbauKLdt0hKjZN41/6wXJQSJ5/ty074VyyWQhjUF0=;
 b=Mk3B8iDHUk62gq1LX9dfBeNQF3Xrq5KiTkFqz6FfXYXe+lL03UOi4tIT
 kVumToLUxFa2I+XClE60/PHlhOOmJUSijZasS8GJdUQZaBG9CrEWj/Mh7
 pTChXiI6I7ztaubi7x0B44bu8i0FbvS+mxvruwi7HTeUt2PmZkFNUMYQu
 84i/4EjTucH3cMI1ekUhupUj2evgQ32+E9M21vk/X7xLMhk8zzqbudODM
 bflX8fVabbjLpVON5Ge9jxptRXV1MQT1IjVBKF+B10hPNse27aZcDeEVE
 9pf05ihGFuEkVHezT2bvfd0Riuci3OR1o1qpcz7oZf74hkSfFry1/tq1b g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="313938047"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="313938047"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 12:11:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="641538522"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="641538522"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 22 Nov 2022 12:11:06 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 12:11:06 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 12:11:05 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 12:11:05 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 12:11:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FozpuJAtGoTEIQkkb/Jz4gjxdsGN8GSMwP1Zj58yC5zn+YU5ri7zWPbj04X7zcDLaOdtW2GfnLyiQyA/ggiP0b9ypiZ1ohLf5dGe5SfyWyFB1hh//N7ckdVNGD/YC8JNK50xayvjwkHsl1dJBqZ7njuYZQL5w5N5M3ulC9PI916JOVKYamzdhuCKakz+Sl7qbnQdspwPbbkJDbwJi47Jl9QWV88m+pj+KHL6H8NRHTyCMJ8WzIVrTinjnvspNsw6wvdH9fXwiLvqqHBdf0ncl38kDfcundvU9e0rjGzRZN+kfOJubJgzJqLh+FGykwyoWK0j1urFaEzL3Ub2u3GRZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=17YbauKLdt0hKjZN41/6wXJQSJ5/ty074VyyWQhjUF0=;
 b=SWAmLhINnMTFDxRORq8BHsvxZyEaZwgb5Dga06nC5049QUs+r2KCKmoOuFLICzki/jpbqfN4aTfAafL0wYUveP/meNSjsklhsAjwskqGLZzYJEOfOia9e3evSqfO49IaEKxlAFLt8a2eY+9w6P+i0w9G1sHnlPvk9Eb9z7mzNX1p3nCjxk6Hix+kixEvS7cotRqoO+0f6YW0ZX7Dwa8ZBNTuC47h6ayqqr8bc/Z6Auc63DYq1BQ1XG+QNLAOpqmb4RPBfKGviOC6MaMVLjFjQbZBNt8DcSsXvhxSf2TwvSXZB4TzWk14Q1xI6C5CWf5qD+QHMtXQm2URUQmuEwfyiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 IA0PR11MB7305.namprd11.prod.outlook.com (2603:10b6:208:439::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 20:11:00 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf%8]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 20:11:00 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 1/6] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
Thread-Index: AQHY+huC07hRuiUUpkeQbbJYwqcxJq5DR+AAgABuNACABZGagIAAKSCAgAA/eYCAAZM/AIAAD3YAgAAWkIA=
Date: Tue, 22 Nov 2022 20:11:00 +0000
Message-ID: <b8fa83788f7df781d534b6710c429999491d6772.camel@intel.com>
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
 <20221117003018.1433115-2-alan.previn.teres.alexis@intel.com>
 <Y3ZbLA2nenwp29u/@intel.com>
 <0067b884a5787ea4fbf5d6dffc5e7d4219a23585.camel@intel.com>
 <6e6219c3-8d9d-6033-5f23-6008c66ac9fa@linux.intel.com>
 <6d2a56e248730f4489ba8615843ce5b9fc36279b.camel@intel.com>
 <d40a8d45a3486208b52e55384d2f5220213523d7.camel@intel.com>
 <Y30NguDBLK1eoroO@intel.com>
 <9cd96cddf9904ec14cdf42ed17352a1a712abbd1.camel@intel.com>
In-Reply-To: <9cd96cddf9904ec14cdf42ed17352a1a712abbd1.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|IA0PR11MB7305:EE_
x-ms-office365-filtering-correlation-id: fae40210-0916-4152-24ed-08daccc5acb5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c/5Ip49gEXwN00B92sVh782leesEVAJQwEp1tjkSNOS17G7SlDNhnPx78+jME/OIM/V9ZvZojeCRX3TU1DGIAqOhSanvf3S40uPoMB15GK6mwSlsq4tEOkt5BwYSx2S2DORSyJ3KlePjyMhe+6+HSkjdNGKVVdQCxvG94RxmJIZmYjfToPho1g88rMRjUDW51lN2gyxpyQLuUbIAl8Ex0QMjI6zoyyHN+Box1UmvkXDX2acVJlThZTumG/ry/poxZYTjetN7JyVInZGDFu4Ag/OUDsp3GQrIELXRDPqGPVoBRlcUaY+XKhLedXdeQPQscvvo+Qo0Ebuk4rxKq0/0vdvb/81Z3i7gqI7NxEgH1FQcIlAjP/RIT918Jgs4OMBmFgtA9EEI5tKNhEox9JjwECJskQXm2Z0TtTnBWflah0XZOeM0TfGIHbdElhrWoiUhvPkvSPj5YzNmyPCZaIRur29tIWuUHlBYFeTwQDUH9cW3s0LzDFBavThXn4GvhB/kdYgwhI07umYcZ9dsnTNdPMYBZka5atwffPhVTXlErPqvCJmdcHFfcnxONXrd7c/ZnrlXdgG+uqs0BbSCBPvdvvCbm4g0Ytnzdw9an0JjpfDziWmGuL5CuV5x6BfdaJIaB8mt0KsK7fd06tKHhDkiuFL8v1s4wCdD3OeFVERX4/J9K6c/f9P2NVXFxLqtPL+IQautUttHQUJnlG5uyieOCQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(376002)(136003)(396003)(39860400002)(451199015)(54906003)(6636002)(6512007)(26005)(6506007)(2906002)(66899015)(316002)(2616005)(110136005)(83380400001)(86362001)(186003)(4326008)(66446008)(38100700002)(36756003)(8676002)(71200400001)(66476007)(122000001)(66946007)(64756008)(4001150100001)(8936002)(82960400001)(66556008)(91956017)(76116006)(478600001)(5660300002)(41300700001)(38070700005)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QmRLYk45dVlqNWhGTTF4K1hZaDg0UFk5eFhESmp0eEQ4dEg4RGt0aXFSMys1?=
 =?utf-8?B?cnc2M1luYnliTUUvSEtTWEovaGpmZTRvVDdzeUhTeDdTNmFQWTh6TWlveUxD?=
 =?utf-8?B?eDBOc2VCT25pSHNCdms2MEtTakNQMDQ4aHJwczFyZEUwaUJsTUVNVjBscmFL?=
 =?utf-8?B?RU5BbHd0SkZVSlJtc2F2eUhwQ3JQcUUvRkV4TkNmN2w5U0Urb2JmYWw3ck1F?=
 =?utf-8?B?TVdMYnQ5eDRIVUNQY0s1YmVPTUZRWGhqYWRpSFFubkJBOHU0bitqaDhJcGxy?=
 =?utf-8?B?VW9jbGZvaFM2TUVmZjNuaHpYOHNIcWJ3U2NNNGN4OUU4SlB5M0pZSlZPUndv?=
 =?utf-8?B?QnJMalNwaC9ReWsxN3F0SkJFemJHeTFsSHNJbmJRZFhheU81ZkEyNnFjVi9B?=
 =?utf-8?B?QjB2aFVpcE5nMEdVVktrVk16ZmlmWjYwQWhRQkZDWlpCdlhkNGZjQVJ4RFBt?=
 =?utf-8?B?R3cyWVZ3NHdHd0p6aEJZeUFpQlRET2FXanh0SUk5cC9DU3NDdE5ySTRvT0tl?=
 =?utf-8?B?NHNHblduV3JKb0NTRVpJRGl0ZGs0NWRJaTNKQjlDT0VmUHpKTUZwUGtMMU96?=
 =?utf-8?B?dDQvcjh2T3UrMjI3MG1aaHoxdmgraXpmODM2SE9hNlFrVHUxN0xzb05UUWhn?=
 =?utf-8?B?dUdhVVJoTGJQVitTbEpPeVMzNGVmK0FKRUNaSEpJSENRakNLU28wRzhxSWMw?=
 =?utf-8?B?OCszS2NvVVljSmR1MW5KdHg3cmFkTGU0NkNjYVNKVjloSTF1QWpmOGd2MGxk?=
 =?utf-8?B?OTJIRWMvcjRCdDhmZXJnZkdON0tSK1NDUGorTTFDYkU4U1ZjVHRBb2dYTFNy?=
 =?utf-8?B?YmFGREM2YjV0UGxFYXNlT09zMHV4Vkk0RC9BYXFQL3BhRjJrbVpkN0NPM1ZU?=
 =?utf-8?B?dkFDWjFCMU9TLzhrME5oQWgwa2cydXgreW5NNzZGUjRlQUQ4VlhwY3Zad1JS?=
 =?utf-8?B?OEo4NStpMHdqNjI4VEpjeTRmMzVsNStCVStkOVhuYXZjWnhNeW5jdUVucWN5?=
 =?utf-8?B?bXFleGVaTFppQVlDckxJS1JTYzkwRGMzQnByT1g1UzlSM21JQVE0RndmUGFN?=
 =?utf-8?B?NnkySUw2ODZtSXVVSWorTTIxL1lldUN1ZUR0V3dWQllZdnJqZlRkSE1CYkV6?=
 =?utf-8?B?YlozdE1FaFFzZ3lJdDRpZDd1dmt3N3hFbFVxZmQxTXpFMWx5TjY2MWgrSDNx?=
 =?utf-8?B?ak1OVGVxUy9Pckllekoyd0Y2VHFoSHRYZXRvbVluSllQbE1UcjdFbHhFOTlV?=
 =?utf-8?B?c3lkTW9LbUVBUnpFYXczMFo4RXhoV2FESWlGNXpxMGN2KzkwOTd6aWhmTmVE?=
 =?utf-8?B?OG0vQzFCUlllbTdtQ3ZNcWpvTzZRMlNnWXRpODJ3L1V0VnhlenY2Um9WcUhv?=
 =?utf-8?B?Rms2UHFoOWQ2Q2UxNnlCdEpaeVB1RlYrNFdtNVNhV1E0cVBSYlRSY0lrUWhZ?=
 =?utf-8?B?ZmJGVVltaHRuNzJOV3h1eDdINElzTFNKMFkwQjd4N2tZeEZ0NkU1Rm5vd2JO?=
 =?utf-8?B?eVlESUVKdm1IUWxVVzNKSEtucE5vUGtMeE0yZTFjS2o5andSS0hrNEFIN2FG?=
 =?utf-8?B?T0VHT3pZN25iQ0cza2FWdFo1VGw5bWFkV3NlejRUYld4bS9mMWl1bTdxMDd4?=
 =?utf-8?B?cG9sMUJ4Q1hyc0JwOEpqWHdZekNMUC9JRUJmRVJkNGhhT3I4V2swZDF6T2NG?=
 =?utf-8?B?THRXZEVEOGNuSmMyUmN0SmlyT3ZEaEFjdUJSTFJZbmZvZDVWdDI5L1NWbDY1?=
 =?utf-8?B?bDk3bTFiMlhOSS9SeDBFTXlaSkxwOWJQQWovYTAzM0Y3eGVpT2NWZEJUVE5L?=
 =?utf-8?B?SmxhbGs0RmVrZ3JwNmpSVWZ2T2JCZmpESldIYVl2N1dNUTc3N1JrUGNxeUo3?=
 =?utf-8?B?RTlKTU9pVEdVdWhrYjBBMTBRciswVldRdkdpckRSMkt0NFR5VVI1Skp2aTFY?=
 =?utf-8?B?bHBKMmFwOHdrVFladUZmTE5BL0FGaWNWUWUvZll0ZndlVkNVbjhSN05rdDly?=
 =?utf-8?B?WFZ6SHl0Q3hmQ1NZeDg0cjVZNE54eFpDL2dudnZZUHY3KzFqM1V3aHJvVmRZ?=
 =?utf-8?B?YzRSNGEvY3JQbkFZK1d0NGcxRVNxUXZrSTB0bzV3d1hOR01KVnBYTy93Y2hu?=
 =?utf-8?B?bVlwNEM1N005RlgrWnFkbzNTaDJBRVlEU012N1VkMkQzR2FLSjZKaFpDS3BW?=
 =?utf-8?Q?SliAqrtyxw1FDpXYtqNS3iM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CBFF0122322C6840AD56EA673A23723C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fae40210-0916-4152-24ed-08daccc5acb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2022 20:11:00.4211 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vQvz3chWXOt2/m6MnSnVmJpw2KXS6UIIj4oCSa+7unBJyAL85Rx1QGlcvVNuILwm/zKFt0zPIJzzr6FHJmH/eSRGGMC+evLCCP2E2S0cnOP/ZATCEzuQQG20Reff7+sn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7305
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/6] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWZ0ZXIgYSBtb3JlIGNvbXByZWhlbnNpdmUgb2ZmbGluZSBkaXNjdXNzaW9uIHdpdGggRGFuaWVs
ZSBhbmQgUm9kcmlnbywgZGVzaWduIGRpcmVjdGlvbiB3YXMgbWFkZSB0byBnbyB3aXRoIE9wdGlv
bjINCndoZXJlIHdlIGVsZXZhdGUgcHhwIHRvIGEgZ2xvYmFsIHN1YnN5c3RlbSBhbmQgd2l0aGlu
IGl0IGl0IGVzdGFibGlzaCBhIHBvaW50ZXIgdG8gdGhlIGNvcnJlY3QgZ3QgZm9yIHB4cC1jb250
cm9scy4gVGhpcw0KYWxzbyByZWZsZWN0cyB0aGUgY3VycmVudCBIVyBhcmNoaXRlY3R1cmVzIHdo
ZXJlIHRoZSBQWFAgZmVhdHVyZSAod2hlbiB2aWV3ZWQgYXMgYSBzZXJ2aWNlIGZvciBjb250ZXh0
cyBhbmQgYnVmZmVycykgaXMNCmdsb2JhbCB0byBhbGwgc3Vic3lzdGVtcyBpbmNsdWRpbmcgYW55
IHdvcmtsb2FkIG9uIGFueSB0aWxlLCBkZXNwaXRlIGl0cyBzaW5nbGUgY29udHJvbC1rbm9icyBi
ZWluZyBvbmx5IGluIHRoZSBtZWRpYQ0KdGlsZSAoYmVjYXVzZSBQWFAgY29udHJvbHMgbmVlZHMg
dG8gYmUgZ2xvYmFsIHRvIHRoZSBHUFUgdG8gYXZvaWQgYW55IHJhY2VzKS4NCg0KVGhpcyB3b3Vs
ZCBtZWFuIHdlIG1vdmUgJ3N0cnVjdCBpbnRlbF9weHAnIHRvIGJlIHVuZGVyIGk5MTUgc28gdGhh
dCBhbGwgc3Vic3lzdGVtcyB0aGF0IG5lZWQgdG8gY2FsbCBpbnRvIFBYUCB3b3VsZCBub3cNCnBh
c3MgaW4gaTkxNSBhcyBpdHMgcGFyYW1ldGVyLiBQWFAgaW50ZXJuYWxseSB3b3VsZCBoYXZlIGEg
cG9pbnRlciB0byB0aGUgY29ycmVjdCBHVCAobWVkaWEtdGlsZSBmb3IgTVRMIGFuZCBndDAgZm9y
DQpwcmlvcikuDQoNCkl0IHdvdWxkIGFsc28gbWVhbiB0aGF0IGNlcnRhaW4gY29kZSB3aWxsIHN0
aWxsIGxvb2vCoGEgbGl0dGxlIGtsdWRneSBvciBuZWVkcyBhdHRlbnRpb246DQogLSBwb3dlci1y
ZWxhdGVkIG9wZXJhdGlvbnMgbGlrZSBpbml0L2ZpbmkgYW5kIHN1c3BlbmQvcmVzdW1lIHdvdWxk
IG5vdyBuZWVkIHRvIGNhbGxlZCBlaXRoZXIgYmVmb3JlIG9yIGFmdGVyIGFsbC1ndA0KZXF1aXZh
bGVudHMgdG8gZW5zdXJlIHByb3BlciBmbG93Lg0KIC0gS0NSIElSUSB3aWxsIGFsdGhvdWdoIGJl
aW5nIGEgZ3QgbGV2ZWwgSVJRIHdpbGwgbm93IHJlcXVpcmUgcGFzc2luZyBpOTE1IGludG8gdGhl
IHB4cCBzdWJzeXN0ZW0uDQoNCipOT1RFOiBhYm92ZSBsaXN0LCBldmVuIGlmIGkgbWlzc2VkIGFu
eSwgd291bGQgc3RpbGwgYmUgbm93aGVyZSBuZWFyIHRoZSBhbW91bnQgb2Ygb3RoZXIgZXh0ZXJu
YWwgZmFjaW5nIGludGVyZmFjZXMgdGhhdA0Kd291bGQgYmUgY2FsbGVkIGJ5IGdsb2JhbCBzdWJz
eXN0ZW1zIHRoYXQgd291bGQgbm93IGxvb2sgY2xlYW4gd2l0aCBpOTE1LT5weHAgYXMgaXRzIHBh
cmFtLg0KDQouLi5hbGFuDQoNCg0KT24gVHVlLCAyMDIyLTExLTIyIGF0IDEwOjUyIC0wODAwLCBB
bGFuIFByZXZpbiBUZXJlcyBBbGV4aXMgd3JvdGU6DQo+IA0KPiBPbiBUdWUsIDIwMjItMTEtMjIg
YXQgMTI6NTcgLTA1MDAsIFZpdmksIFJvZHJpZ28gd3JvdGU6DQo+ID4gDQo+ID4gDQo+IFtBbGFu
OnNuaXBdDQo+IA0KPiA+IEFzIEkgaGFkIHRvbGQgSSBkb24ndCBoYXZlIGEgc3Ryb25nIHByZWZl
cmVuY2UsIGFzIGxvbmcgYXMgaXQga2VlcCBjbGVhbg0KPiA+IGFuZCB3aXRob3V0IHRoZXNlIG1h
bnkgaGVscGVycyBvZiBzb21ldGhpbmcgIm9uX2d0Ii4uLg0KPiA+IA0KPiA+IElmIHRoaXMgc3Rh
eXMgaW5zaWRlIHRoZSBndCwganVzdCBtYWtlIHN1cmUgdGhhdCB5b3UgY2FsbCBmb3IgYWxsIHRo
ZSBndHMsDQo+ID4gYnV0IHRoZW4geW91IGluc2lkZSB0aGUgZnVuY3Rpb25zIHlvdSBjYW4gc2tp
cCBpZiBweHAgbm90IGVuYWJsZWQuLi4gd2l0aG91dA0KPiA+IGFza2luZyBpZiBlbmFibGVkIG9u
X2d0Li4uIA0KPiA+IA0KPiBJIHRoaW5rIHdlIGhhdmUgaGVyZSBjb25mbGljdGluZyByZXF1ZXN0
cy4gVGhlICJjb25zdW1lcnMiIG9mIHB4cCBmZWF0dXJlIGFyZSBnZW0tZXhlY2J1ZiwgZ2VtLWNv
bnRleHQsIGdlbS1jcmVhdGUgKGFuZA0KPiBldmVuIGRpc3BsYXksIGZvciBjaGVja2luZykuIEFy
ZSB3ZSBva2F5IHdpdGggbWFraW5nIHRoZXNlIGNhbGxlcnMgYmUgYXdhcmUgb2YgImlmIG10bCwg
ZW5zdXJlIGkgY2FsbCBpbnRlbF9weHBfZm9vIHdpdGgNCj4gdGhlIG1lZGlhLXRpbGUncyBweHAs
IGFnbm9zdGljIHRvIHRoZSByZXF1ZXN0LCBjb250ZXh0IG9yIGJ1ZmZlciBpIGFtIGRlYWxpbmcg
d2l0aCBub3ciLiBJZiB5b3UgYXJlIG9rYXkgd2l0aCB0aGlzLCB0aGVuDQo+IHdlIGNhbiBtYWtl
IHRoaXMgc3RheSBpbnNpZGUgZ3Qgd2l0aG91dCAiZW5hYmxlZCBvbl9ndCIgZnVuY3Rpb25zLiBC
dXQgaWYgZG9udCB3YW50IHRvIHBvbHV0ZSBzdWNoIGxvdyBsZXZlbCBiYWNrZW5kDQo+IGF3YXJl
bmVzcyBpbnRvIHRob3NlIHVwcGVyIGxheWVycywgd2UgbmVlZCB0aGVtIHRvIGNhbGwgc29tZXRo
aW5nIG1vcmUgZ2xvYmFsIGxpa2UgImludGVsX2dwdV9oYXNfcHhwX2VuYWJsZWQiIG9yDQo+ICJp
bnRlbF9ncHVfaGFzX3B4cF9zdGFydGVkIiBhdCB0aGUgbGVhc3Qgd2l0aCBhbiBpOTE1IHBhcmFt
LiBTbyB0aGF0IHRoZXNlIGNhbGxlcnMgZG9udCBuZWVkIHRvIHdvcnJ5IGFib3V0IGl0LiBPcg0K
PiBpbnRlbF9weHBfZW5hYmxlZCBoYXMgdG8gaW50ZXJuYWxseSBjaGVjayB3aXRoIGd0IHdlIGFy
ZSBiZWluZyBwYXNzZWQgd2l0aCBhbmQgdmVyaWZ5IHdlIGFyZSBvbiB0aGUgY29ycmVjdCBndCB0
byAtIGJ1dA0KPiB5b3Ugc2FpZCB5b3UgZG9udCB3YW50IHRvIGhhdmUgYW4gImVuYWJsZWQgb25f
Z3QiIGluc2lkZSB0aGUgcHhwIGZvbGRlciBzaW5jZSBweHAgaXMgYSBzdWJzZXQgb2YgZ3QuIFRo
ZSBvbmx5IHRoaW5nIGkNCj4gY2FuIHRoaW5rIG9mIGlzIGp1c3QgYSByZW5hbWUgIC0gaS5lLiBp
bnN0ZWFkIG9mICJpbnRlbF9weHBfZW5hYmxlZF9vbl9ndCIsIGhhdmUgYSAiaW50ZWxfZ3B1X2hh
c19weHBfZW5hYmxlZChpOTE1KSIgLQ0KPiBidXQgaXQgd291bGQgcmVzaWRlIGluIHRoZSBweHAg
Zm9sZGVyLiBXb3VsZCB0aGlzIHdvcms/DQo+IA0KPiA+ID4gDQo+ID4gPiAuLi5hbGFuDQo+IA0K
DQo=
