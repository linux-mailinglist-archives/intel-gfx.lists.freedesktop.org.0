Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A855AA776
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 08:00:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 825B010E746;
	Fri,  2 Sep 2022 06:00:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AC7810E746
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 06:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662098431; x=1693634431;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=r5/JWDHiNrdQsMWZ3kFIwEGxZksqCEWLBWlhWqDmloo=;
 b=YxA7h2DkrUe0do/jL174fVUTKEiECTai6aYKq7ttI1Tvp4WTXEmjAOi9
 TvApfw7tHevOuHBaXjNxhD9xQAejUV7oLDWqk7jct0OBZ2HGlo8OD1H34
 wQmwW8d3b4E/VNxTC4e8P8O+KaLp6xkR0gcu/+sCe1DzVBmWa4cbzghig
 WVNoVKQWwNcCdODZgk0iGOtsoUkfBn8AW7UTi4Srvlae/WHabKQPxCRpg
 WAFIZN9MFwlukngEhpeis4U5r1nWaX1ciyA+YE7CW0Fw6iyd/kg435qhT
 nplZI76AuaV7HN14SJ05sULtvhWZlhijZj+v/iAkvR0lmpRLZAcYgdCNu w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="297184876"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="297184876"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 23:00:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="645995627"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 01 Sep 2022 23:00:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 1 Sep 2022 23:00:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 1 Sep 2022 23:00:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 1 Sep 2022 23:00:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S/fbl85h9o6HvpuwvLTNpnZpVKRssLOfFV2Yi1dZoezr1SOtatctfbbLKAb7xRTpqY7nO9BS0b5cK9MClzAwnHQuRRVii0yg3RtagoBsEwAsqqoz3h8d78ze0/w76Cb4afNp3WNPbVLnsW0epcsaSksvouCEiXpjsJ5xMpAg38yDJA97cc++uKgfhjYmdTmESNyegY40GZ679jFVTzsp8KFOBfHWqXQ8ISzQYjIfxQpWeAtsXl/r3hfAl3j0x2Dfdz4S6UgOwBQWMhvk3VDqQFJVOyPT4/5sF9fMq0XKBUJJK6hmmfuGRT5OapqutnefES0X0lpCDo9n7TDfjvSv6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r5/JWDHiNrdQsMWZ3kFIwEGxZksqCEWLBWlhWqDmloo=;
 b=oYf9niPgRCy9I3FBktJpCNmO86IoPml3r8rUyiLbf825TozFmETcYZAws+tAySqmbP94MBxhtwOlE3EjTOPuZHJTCGCt98piUuX2JuDIxBezXRhvORDslJ0OEOLmYc8PgS53GHTlcS0+K293Ji/U8IxHHBpOBOpx+dq7/O1hhh1YUqkkTDT82en61aWX04RTjB85B4SDHnsBRzx01wMj04b96iPk6FUdzFFH3+f4BDAnKeutkwwENRCsLvoD07JwM/xXiI58wM5PK35+fvpn2VK2LM4IANkJJUupl4hiNMDYb7enkNkNo4dh/D/Updeb9/t1cTPzqR0AmK3VmDatGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 (2603:10b6:301:51::10) by SN6PR11MB2557.namprd11.prod.outlook.com
 (2603:10b6:805:56::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.14; Fri, 2 Sep
 2022 06:00:27 +0000
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::549e:abb2:40dc:6591]) by MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::549e:abb2:40dc:6591%9]) with mapi id 15.20.5588.014; Fri, 2 Sep 2022
 06:00:27 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 04/17] drm/i915/dsi: Extract {vlv,
 bxt}_get_pclk()
Thread-Index: AQHYhM64xcWvHqKK20OpGsRVC/ta/K3MGN3w
Date: Fri, 2 Sep 2022 06:00:27 +0000
Message-ID: <MWHPR1101MB21571F79EF04DDE7AAB71782EF7A9@MWHPR1101MB2157.namprd11.prod.outlook.com>
References: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
 <20220620175210.28788-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20220620175210.28788-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3d291cd7-80f8-4db7-5f97-08da8ca86f75
x-ms-traffictypediagnostic: SN6PR11MB2557:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Jf3MGu81jkoecL45ZB/9mhgDWf1WVRE9MotuVblcVqB6D3iL2UJmMIHetQtmkPtFRUiSOdhch5D6ClQ5hK85+jsynUKTNrSVQ3625GHfykf3jPTudRA2LI/6DddLag51/DsF4g5bA9zI6UH03UtNCnjX7fld3hV/pfzSmfXpEtgV3YaghW9P/GE2aFHdlwTtjxkjVyKLKFQLDIZbyj5BZU1uRYd2DJ+jZ5PQb3r1gYYxRUhow0gSKLBe3m2CooDY0smw7C9yKTARb+lfOkNYH1uRzQ6Ij+/L2pBFnOapLxrghwx8o2K4B1N79qygFFUo99yKDQ+Ce+z0Y8EIMPAVIAApfZpJPytaiBw5QQCQafhEpjwxV1+wv4qDt0nFeIGEYflomInbI6eDfbsznm4NtL2mxup3hgWKXvul/v5OTn0rcaCzLJZK/62oUGz9x6zNBbzcp/ARZ7Fe7MBMOEP2V5RQs4acmc76/Evc9HscMmuHpoEHJQ5MRlIZ/hiIdn7WPZswl55c2Tgvh7BtFXPjH9uhKq1FZVIdQ/FhKdMpovBly4WNzYTlWmZcPWIi9CbdLvVb7MU8q5mj+tJRnSH1dq0t+xJNk3X3YVtB8mT3/XnPqZMS1opWEvyVDnI6ibWROlc+p+PhNjy+5RzFySNi0TWEzh6ta9ol7f3jpyXX6W88nr0+QB8C2+9zladJ1n2ND03FmGUFAK63hiFuACDR2DWmll2KRWGE1hk4fOxLpUK66RizPfuuChtuj2rzxitIA5QhoHs+4Wnb7ztOEbI5vROp5nVWucOu6FpOwnr8I1I=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1101MB2157.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(376002)(396003)(366004)(39860400002)(86362001)(66574015)(8936002)(186003)(2906002)(52536014)(38070700005)(33656002)(122000001)(38100700002)(83380400001)(55016003)(71200400001)(110136005)(316002)(82960400001)(66556008)(66446008)(64756008)(66476007)(8676002)(66946007)(76116006)(7696005)(6506007)(26005)(53546011)(5660300002)(478600001)(9686003)(41300700001)(21314003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?czVOaTVRYzFJMCtYdnlxYTVNRjI1Wkg0SkZFaFJ6c2Nld1pmWENrb0RQRGd5?=
 =?utf-8?B?T1crU003aWc0dkxLckp4cnRqNms3R2ZHT1kveHdJRnRiNmJIWjlkWHl6ZzFQ?=
 =?utf-8?B?eDh3UWI4K0FFcCtnVVpEcFVySHl2b21KRVBlNVNNTHo5TzM3LysyREhiQU9k?=
 =?utf-8?B?bGh5cElkeUgraHppOEU3UENRUSttWXlSczZ4Z24xR1FnVkQvdW1iSlJvREtZ?=
 =?utf-8?B?VVMrREpCUVhrRmxxTFlHSm9LaTJ0a2FjR210VEFnSEJEWXpXcjRHUlE2SVlW?=
 =?utf-8?B?a0VrZWhIeDBNSEN4bUhVZUt3M1Y3cWVEdCtOQzJ4VjVrem9QSHhDMlB4RDF5?=
 =?utf-8?B?NjBtU2ltMUp1N3Y0a0VhRkhRSk95eCtkVUEwUmpGVHVNVllEd1IyRllDNUhD?=
 =?utf-8?B?U2RyZnM0WDBDL1lLRi81U0hFUHZIR3JLdHhtNCtqVDR5OVBwclNHczduOC8w?=
 =?utf-8?B?Q1ppNVkyTkFKMmJvSDAxd2dxMVJmMk9DaFkyM2o4Y21aRXJzdnRBYnpIckhy?=
 =?utf-8?B?VmdJZnFIWHlzbGN2OTcweURuOCt5L1c4RHhrNm5hNzNpa1lIc2NNU2k5Qlp5?=
 =?utf-8?B?YWVOUmJVRzl3YS85TmRFRWdaTG5iMTdpUmp2endrcnBRbGxhT1pZLzNERjV1?=
 =?utf-8?B?eXR2RmZVa0k1M05KMlZrU1lCcGlPMTJhUHc3eXN6bUlCY0RoeENESk5aZ2dk?=
 =?utf-8?B?eldIVlZsZzBiYXhla2pGdFY2QWxtSHJhS2JlYXhsZ2duOTJuZU9oTXJwOEMx?=
 =?utf-8?B?dWQ0VkxpcUw0M2R0UTAyS0lBVEh5ZFVLYW9ycitoUHBwVHJNalRmbUpXOS9Q?=
 =?utf-8?B?bTRJSkZtaEh1ZXVObTh4d0VMNUcyZ1F1VCtGQ2FuYVFZWG9rZWF2OHVkOWNy?=
 =?utf-8?B?U2xrbzNpTjdEWVNVaU1meC9RaCtrRVZrVnJkQmdxRWFPQVo3VVNLY1FNamZV?=
 =?utf-8?B?WlVCWlEwQ09VT3IrWFFSUEQ3TXFySi84L2RFMTVMUncxU3dmZUtPVTVGenlX?=
 =?utf-8?B?TndkUEFLemVkUksxYVhEc0t4V3ViZ0d6R2tsUmtPWFd2c0xLY1dBSUhZaEow?=
 =?utf-8?B?WndFNzNDMzVWNHUxUHlVU3E0b1VMVTFJQ2hhYTJFMlVkSnBXcG9xcndLc1Qv?=
 =?utf-8?B?cWVnR3dndjVMRXA0SU9walFvYmJ2RXovZ2VQRjU4bmtiM3VhUFNKMGhYaCtX?=
 =?utf-8?B?Z1RKWFI5U0VDc2dkM3lUa0cyaGlsZ2FZZUR5VEFQaTNiT2ZRKzQvOVRRNEJZ?=
 =?utf-8?B?VG0vTVdzMjBnVGxxald6eDZMTmZVdWlNU0dpQkp3eUpFYzBRVjU4WmxOMFFo?=
 =?utf-8?B?U0JiR1FUOGk0b2dYdXltYTV1bE8yY0orZGdvdFBkcUViVlNKQ1FxSnhhVmN1?=
 =?utf-8?B?SDdwKzdBc0NnTkVMMFRGVU50MjR5eWpEaThLVU56MmJRZlp5OTRlOC9GQ2dV?=
 =?utf-8?B?WTlmUk52Nk1sd3BMT2ExYVJuMDR4bGJyQXlSRTlMQVNKNFovUlkzTVprRzN2?=
 =?utf-8?B?Ri81NkdZd2cwWld4L09DSjg0TmxBK1BoNVQwUGt5a3BTdTV0Q3BMUGxLVXZw?=
 =?utf-8?B?Nk9oc1BaRWhVa29DN1ROWFZta3ZlN3luUmFTeGVBeDhFZ1E0bkxSZlJYZG1v?=
 =?utf-8?B?TTVIeUxXZDBaSDZYa0laUkFxcTlSR2dEbzF3OVdKU0NrTmxDT1ZnVExta2lw?=
 =?utf-8?B?ZWdidWR2d3RhWGk4STdZdmJWV1dKZldjejJzb1BvMzJzdVpWNlc4QWcyTk1I?=
 =?utf-8?B?TnlQWE5mTldML2tVYWZMNXY3QlY0RlAxMWhSNUJ1bHF6U0s5czhLejVTVTBE?=
 =?utf-8?B?aVlnd3dyWUZUUVRrczFoOEVFR0J0NUQ5UHZXQkN2Q0J0ekQ1OCtPZkIzdUcv?=
 =?utf-8?B?eWNPMHA1eFVSTDl3M2RrOE41MmM4NTVRWlRuSGlWOW8vY29sTW9FUGdOT2hF?=
 =?utf-8?B?cUJ4ZUtxNjhHVkdITVF5S2VqRVBaWVEwUjJzNzJ4Y2Y0c21tQ0NHRlJBSVBK?=
 =?utf-8?B?WmM1L2swUzVpUHowUWxaaFFFK1F5bFBhcW9ydC9EaVprRHdqWEUyUFhVYXNK?=
 =?utf-8?B?dFM1WDJDT1J4RlFFVHZyS24vYjc2OVZHSXp2ektyOXRlb0toa1VUVGRYSERm?=
 =?utf-8?Q?WvruOzHIt3di7rQwy9FPzS4gp?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1101MB2157.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d291cd7-80f8-4db7-5f97-08da8ca86f75
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2022 06:00:27.8391 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6OskANm1TYJlRIheoVJItm+yQLu4YvcZyxVxj3gkxH82fa6BObuCx25BRF4fwAAfMvfMD/zylI4AV2Pxe8hRtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2557
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 04/17] drm/i915/dsi: Extract {vlv,
 bxt}_get_pclk()
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
cmphbGENCj4gU2VudDogTW9uZGF5LCBKdW5lIDIwLCAyMDIyIDg6NTIgUE0NCj4gVG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENI
IHYzIDA0LzE3XSBkcm0vaTkxNS9kc2k6IEV4dHJhY3Qge3ZsdiwgYnh0fV9nZXRfcGNsaygpDQo+
IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiANCj4gRXh0cmFjdCB0aGUgc3RhdGUtPmZyZXEgY29tcHV0YXRpb24gZm9yIFZMVi9CWFQg
RFNJIFBMTCBpbnRvIHNtYWxsIGhlbHBlcnMuIFdlDQo+IHdhbnQgdG8gdXNlIHRoZXNlIGR1cmlu
ZyB0aGUgc3RhdGUgY29tcHV0YXRpb24gYXMgd2VsbC4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWth
IEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpX3BsbC5jIHwgMTIxICsrKysrKysrKysr
Ky0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDY4IGluc2VydGlvbnMoKyksIDUzIGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
dmx2X2RzaV9wbGwuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2RzaV9w
bGwuYw0KPiBpbmRleCA1ODk0YjAxMzgzNDMuLjI2MDZkYmYwOWNjYyAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpX3BsbC5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2RzaV9wbGwuYw0KPiBAQCAtMTEzLDYgKzExMyw2
MSBAQCBzdGF0aWMgaW50IGRzaV9jYWxjX21ucChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAq
ZGV2X3ByaXYsDQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+IA0KPiArc3RhdGljIGludCB2bHZfZHNp
X3BjbGsoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICsJCQlzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY29uZmlnKQ0KPiArew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOw0KPiArCXN0cnVjdCBpbnRlbF9k
c2kgKmludGVsX2RzaSA9IGVuY190b19pbnRlbF9kc2koZW5jb2Rlcik7DQo+ICsJaW50IGJwcCA9
IG1pcGlfZHNpX3BpeGVsX2Zvcm1hdF90b19icHAoaW50ZWxfZHNpLT5waXhlbF9mb3JtYXQpOw0K
PiArCXUzMiBkc2lfY2xvY2s7DQo+ICsJdTMyIHBsbF9jdGwsIHBsbF9kaXY7DQo+ICsJdTMyIG0g
PSAwLCBwID0gMCwgbjsNCj4gKwlpbnQgcmVmY2xrID0gSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikg
PyAxMDAwMDAgOiAyNTAwMDsNCj4gKwlpbnQgaTsNCj4gKw0KPiArCXBsbF9jdGwgPSBjb25maWct
PmRzaV9wbGwuY3RybDsNCj4gKwlwbGxfZGl2ID0gY29uZmlnLT5kc2lfcGxsLmRpdjsNCj4gKw0K
PiArCS8qIG1hc2sgb3V0IG90aGVyIGJpdHMgYW5kIGV4dHJhY3QgdGhlIFAxIGRpdmlzb3IgKi8N
Cj4gKwlwbGxfY3RsICY9IERTSV9QTExfUDFfUE9TVF9ESVZfTUFTSzsNCj4gKwlwbGxfY3RsID0g
cGxsX2N0bCA+PiAoRFNJX1BMTF9QMV9QT1NUX0RJVl9TSElGVCAtIDIpOw0KPiArDQo+ICsJLyog
TjEgZGl2aXNvciAqLw0KPiArCW4gPSAocGxsX2RpdiAmIERTSV9QTExfTjFfRElWX01BU0spID4+
IERTSV9QTExfTjFfRElWX1NISUZUOw0KPiArCW4gPSAxIDw8IG47IC8qIHJlZ2lzdGVyIGhhcyBs
b2cyKE4xKSAqLw0KPiArDQo+ICsJLyogbWFzayBvdXQgdGhlIG90aGVyIGJpdHMgYW5kIGV4dHJh
Y3QgdGhlIE0xIGRpdmlzb3IgKi8NCj4gKwlwbGxfZGl2ICY9IERTSV9QTExfTTFfRElWX01BU0s7
DQo+ICsJcGxsX2RpdiA9IHBsbF9kaXYgPj4gRFNJX1BMTF9NMV9ESVZfU0hJRlQ7DQo+ICsNCj4g
Kwl3aGlsZSAocGxsX2N0bCkgew0KPiArCQlwbGxfY3RsID0gcGxsX2N0bCA+PiAxOw0KPiArCQlw
Kys7DQo+ICsJfQ0KPiArCXAtLTsNCj4gKw0KPiArCWlmICghcCkgew0KPiArCQlkcm1fZXJyKCZk
ZXZfcHJpdi0+ZHJtLCAid3JvbmcgUDEgZGl2aXNvclxuIik7DQo+ICsJCXJldHVybiAwOw0KPiAr
CX0NCj4gKw0KPiArCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGxmc3JfY29udmVydHMpOyBp
KyspIHsNCj4gKwkJaWYgKGxmc3JfY29udmVydHNbaV0gPT0gcGxsX2RpdikNCj4gKwkJCWJyZWFr
Ow0KPiArCX0NCj4gKw0KPiArCWlmIChpID09IEFSUkFZX1NJWkUobGZzcl9jb252ZXJ0cykpIHsN
Cj4gKwkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwgIndyb25nIG1fc2VlZCBwcm9ncmFtbWVkXG4i
KTsNCj4gKwkJcmV0dXJuIDA7DQo+ICsJfQ0KPiArDQo+ICsJbSA9IGkgKyA2MjsNCj4gKw0KPiAr
CWRzaV9jbG9jayA9IChtICogcmVmY2xrKSAvIChwICogbik7DQo+ICsNCj4gKwlyZXR1cm4gRElW
X1JPVU5EX0NMT1NFU1QoZHNpX2Nsb2NrICogaW50ZWxfZHNpLT5sYW5lX2NvdW50LCBicHApOyB9
DQo+ICsNCj4gIC8qDQo+ICAgKiBYWFg6IFRoZSBtdXhpbmcgYW5kIGdhdGluZyBpcyBoYXJkIGNv
ZGVkIGZvciBub3cuIE5lZWQgdG8gYWRkIHN1cHBvcnQgZm9yDQo+ICAgKiBzaGFyaW5nIFBMTHMg
d2l0aCB0d28gRFNJIG91dHB1dHMuDQo+IEBAIC0yNjIsMTMgKzMxNyw3IEBAIHUzMiB2bHZfZHNp
X2dldF9wY2xrKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiAgCQkgICAgIHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjb25maWcpICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7DQo+IC0Jc3RydWN0IGlu
dGVsX2RzaSAqaW50ZWxfZHNpID0gZW5jX3RvX2ludGVsX2RzaShlbmNvZGVyKTsNCj4gLQlpbnQg
YnBwID0gbWlwaV9kc2lfcGl4ZWxfZm9ybWF0X3RvX2JwcChpbnRlbF9kc2ktPnBpeGVsX2Zvcm1h
dCk7DQo+IC0JdTMyIGRzaV9jbG9jaywgcGNsazsNCj4gIAl1MzIgcGxsX2N0bCwgcGxsX2RpdjsN
Cj4gLQl1MzIgbSA9IDAsIHAgPSAwLCBuOw0KPiAtCWludCByZWZjbGsgPSBJU19DSEVSUllWSUVX
KGRldl9wcml2KSA/IDEwMDAwMCA6IDI1MDAwOw0KPiAtCWludCBpOw0KPiANCj4gIAlkcm1fZGJn
X2ttcygmZGV2X3ByaXYtPmRybSwgIlxuIik7DQo+IA0KPiBAQCAtMjgwLDY1ICszMjksMzEgQEAg
dTMyIHZsdl9kc2lfZ2V0X3BjbGsoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJ
Y29uZmlnLT5kc2lfcGxsLmN0cmwgPSBwbGxfY3RsICYgfkRTSV9QTExfTE9DSzsNCj4gIAljb25m
aWctPmRzaV9wbGwuZGl2ID0gcGxsX2RpdjsNCj4gDQo+IC0JLyogbWFzayBvdXQgb3RoZXIgYml0
cyBhbmQgZXh0cmFjdCB0aGUgUDEgZGl2aXNvciAqLw0KPiAtCXBsbF9jdGwgJj0gRFNJX1BMTF9Q
MV9QT1NUX0RJVl9NQVNLOw0KPiAtCXBsbF9jdGwgPSBwbGxfY3RsID4+IChEU0lfUExMX1AxX1BP
U1RfRElWX1NISUZUIC0gMik7DQo+ICsJcmV0dXJuIHZsdl9kc2lfcGNsayhlbmNvZGVyLCBjb25m
aWcpOw0KPiArfQ0KPiANCj4gLQkvKiBOMSBkaXZpc29yICovDQo+IC0JbiA9IChwbGxfZGl2ICYg
RFNJX1BMTF9OMV9ESVZfTUFTSykgPj4gRFNJX1BMTF9OMV9ESVZfU0hJRlQ7DQo+IC0JbiA9IDEg
PDwgbjsgLyogcmVnaXN0ZXIgaGFzIGxvZzIoTjEpICovDQo+ICtzdGF0aWMgaW50IGJ4dF9kc2lf
cGNsayhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gKwkJCWNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjb25maWcpIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfZHNpICppbnRlbF9k
c2kgPSBlbmNfdG9faW50ZWxfZHNpKGVuY29kZXIpOw0KPiArCWludCBicHAgPSBtaXBpX2RzaV9w
aXhlbF9mb3JtYXRfdG9fYnBwKGludGVsX2RzaS0+cGl4ZWxfZm9ybWF0KTsNCj4gKwl1MzIgZHNp
X3JhdGlvLCBkc2lfY2xrOw0KPiANCj4gLQkvKiBtYXNrIG91dCB0aGUgb3RoZXIgYml0cyBhbmQg
ZXh0cmFjdCB0aGUgTTEgZGl2aXNvciAqLw0KPiAtCXBsbF9kaXYgJj0gRFNJX1BMTF9NMV9ESVZf
TUFTSzsNCj4gLQlwbGxfZGl2ID0gcGxsX2RpdiA+PiBEU0lfUExMX00xX0RJVl9TSElGVDsNCj4g
Kwlkc2lfcmF0aW8gPSBjb25maWctPmRzaV9wbGwuY3RybCAmIEJYVF9EU0lfUExMX1JBVElPX01B
U0s7DQo+ICsJZHNpX2NsayA9IChkc2lfcmF0aW8gKiBCWFRfUkVGX0NMT0NLX0tIWikgLyAyOw0K
PiANCj4gLQl3aGlsZSAocGxsX2N0bCkgew0KPiAtCQlwbGxfY3RsID0gcGxsX2N0bCA+PiAxOw0K
PiAtCQlwKys7DQo+IC0JfQ0KPiAtCXAtLTsNCj4gLQ0KPiAtCWlmICghcCkgew0KPiAtCQlkcm1f
ZXJyKCZkZXZfcHJpdi0+ZHJtLCAid3JvbmcgUDEgZGl2aXNvclxuIik7DQo+IC0JCXJldHVybiAw
Ow0KPiAtCX0NCj4gLQ0KPiAtCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGxmc3JfY29udmVy
dHMpOyBpKyspIHsNCj4gLQkJaWYgKGxmc3JfY29udmVydHNbaV0gPT0gcGxsX2RpdikNCj4gLQkJ
CWJyZWFrOw0KPiAtCX0NCj4gLQ0KPiAtCWlmIChpID09IEFSUkFZX1NJWkUobGZzcl9jb252ZXJ0
cykpIHsNCj4gLQkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwgIndyb25nIG1fc2VlZCBwcm9ncmFt
bWVkXG4iKTsNCj4gLQkJcmV0dXJuIDA7DQo+IC0JfQ0KPiAtDQo+IC0JbSA9IGkgKyA2MjsNCj4g
LQ0KPiAtCWRzaV9jbG9jayA9IChtICogcmVmY2xrKSAvIChwICogbik7DQo+IC0NCj4gLQlwY2xr
ID0gRElWX1JPVU5EX0NMT1NFU1QoZHNpX2Nsb2NrICogaW50ZWxfZHNpLT5sYW5lX2NvdW50LCBi
cHApOw0KPiAtDQo+IC0JcmV0dXJuIHBjbGs7DQo+ICsJcmV0dXJuIERJVl9ST1VORF9DTE9TRVNU
KGRzaV9jbGsgKiBpbnRlbF9kc2ktPmxhbmVfY291bnQsIGJwcCk7DQo+ICB9DQo+IA0KPiAgdTMy
IGJ4dF9kc2lfZ2V0X3BjbGsoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJCSAg
ICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNvbmZpZykgIHsNCj4gKwlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsNCj4gIAl1
MzIgcGNsazsNCj4gLQl1MzIgZHNpX2NsazsNCj4gLQl1MzIgZHNpX3JhdGlvOw0KPiAtCXN0cnVj
dCBpbnRlbF9kc2kgKmludGVsX2RzaSA9IGVuY190b19pbnRlbF9kc2koZW5jb2Rlcik7DQo+IC0J
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNl
LmRldik7DQo+IC0JaW50IGJwcCA9IG1pcGlfZHNpX3BpeGVsX2Zvcm1hdF90b19icHAoaW50ZWxf
ZHNpLT5waXhlbF9mb3JtYXQpOw0KPiANCj4gIAljb25maWctPmRzaV9wbGwuY3RybCA9IGludGVs
X2RlX3JlYWQoZGV2X3ByaXYsIEJYVF9EU0lfUExMX0NUTCk7DQo+IA0KPiAtCWRzaV9yYXRpbyA9
IGNvbmZpZy0+ZHNpX3BsbC5jdHJsICYgQlhUX0RTSV9QTExfUkFUSU9fTUFTSzsNCj4gLQ0KPiAt
CWRzaV9jbGsgPSAoZHNpX3JhdGlvICogQlhUX1JFRl9DTE9DS19LSFopIC8gMjsNCj4gLQ0KPiAt
CXBjbGsgPSBESVZfUk9VTkRfQ0xPU0VTVChkc2lfY2xrICogaW50ZWxfZHNpLT5sYW5lX2NvdW50
LCBicHApOw0KPiArCXBjbGsgPSBieHRfZHNpX3BjbGsoZW5jb2RlciwgY29uZmlnKTsNCj4gDQo+
ICAJZHJtX2RiZygmZGV2X3ByaXYtPmRybSwgIkNhbGN1bGF0ZWQgcGNsaz0ldVxuIiwgcGNsayk7
DQo+ICAJcmV0dXJuIHBjbGs7DQo+IC0tDQo+IDIuMzUuMQ0KDQo=
