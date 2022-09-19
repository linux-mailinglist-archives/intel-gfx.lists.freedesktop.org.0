Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 891DB5BC2E3
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 08:36:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 360B310E3AA;
	Mon, 19 Sep 2022 06:36:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E67D910E3AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 06:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663569364; x=1695105364;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FFPb882hjQN3Lc0ymbtgtXkSgXnVFM2LXjrosVrHHIA=;
 b=gexxyx3jUdeMfBTZcbztuQr1fOFQ2go/Ef74qQ/6PdsLOBxkYhofsR1V
 /dsMiG0oIIhRWo47fb+xvXc8+Gf4xmCb83LioE8EtLYzn9NmHg7q0fsuz
 lHk5h9Hekzm9wx3tHPBtQ/BBrpzj+7sRRuYKFTcEJY6UWBFN8KXxfkgQ5
 ECLb9YLUZS29Mjjem48bL/KChqavUkHvuGTC24qJDeDtJxmgCAT71RoGi
 fbpgLK3gWmlI4+tS9KlPQh9Ng6HgmDk32GKIqGEisdQ2qtpTVOQ37Av1e
 pjW5asmDOZTetjEOwY1eZTRv1MJ5stbu3+gZKCB4jRx9xB+rbuLK3yuew Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10474"; a="279700421"
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="279700421"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2022 23:36:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="569522828"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 18 Sep 2022 23:36:03 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 18 Sep 2022 23:36:03 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 18 Sep 2022 23:36:02 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 18 Sep 2022 23:36:02 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 18 Sep 2022 23:36:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JIrxDo+EyXOVU5NtuJzo02rMLNIFF7mTqmPcpdALBsHBi6nnXyyuhkqp4K9EaaC8ESFff8Fyc4LAA5hkoKeKQXBj7C9pHkGAeCOE+PnCNfQbSlMNZP63YrwYLLrmGwP6rxgd/mcCF7Y5FNzs99SSBVnnjER1WSUzC66cKbjG8Wa1u3mq5hWCJiwmrBVK4V3LKT/MCoo13Y+HCQeqDex3f7Rpd0imvjDB0f8KeHAWpcWYLGh+HiU4UD1kwr/lTc/yi1VcboNWoIhcnrbT5Zuh78eBTJ61fk/YT+58TqjD+/pObjpI2e8rSXua9LAtucYfyyF5qEpud32XLNr36+93+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FFPb882hjQN3Lc0ymbtgtXkSgXnVFM2LXjrosVrHHIA=;
 b=VqyyZ6vlCS6+jweGtLR6tfedPmMQq+7w5ixSeAKJIPyZepJKxb+a66ULvcEK2LVisb6NPierEzTyiRW3xd05OXf4Y9j2/6f8lr7Cf9nYixLlFc4zFuN82JeviuLolvdmEPW2Rf0YkjesUKFtpU5nYkGJvZFzL4dfc/yfle8c44FDf479LhnQ/Jj++xjVoTQOPgb5EhoDSZGgSMw3ayV1wVOY1Z4K+s2JZ3B+X8lSl0gqHVOfzt/B0LlX8AeO+thpSiArtU2ZatTzaBb5bTj9qL25RTs8yOG/L9xyyReNVUaN/jOYRDpvhaghb4sWvYYGHOaB7x2VZINAoWNzLhDp3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6213.namprd11.prod.outlook.com (2603:10b6:8:ae::17) by
 PH0PR11MB5206.namprd11.prod.outlook.com (2603:10b6:510:3f::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5632.21; Mon, 19 Sep 2022 06:35:56 +0000
Received: from DM4PR11MB6213.namprd11.prod.outlook.com
 ([fe80::ffb5:172b:e135:66a3]) by DM4PR11MB6213.namprd11.prod.outlook.com
 ([fe80::ffb5:172b:e135:66a3%5]) with mapi id 15.20.5632.019; Mon, 19 Sep 2022
 06:35:56 +0000
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSW50cm9k?=
 =?utf-8?Q?uce_struct_cdclk=5Fstep?=
Thread-Index: AQHYyjpYUdTMyynBx0e8TaJFWZzkLa3mSrVA
Date: Mon, 19 Sep 2022 06:35:56 +0000
Message-ID: <DM4PR11MB62134B8DB956B6658332E70CEC4D9@DM4PR11MB6213.namprd11.prod.outlook.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
 <166337851306.24748.10954630894162317580@emeril.freedesktop.org>
 <87sfkqvjln.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87sfkqvjln.wl-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6213:EE_|PH0PR11MB5206:EE_
x-ms-office365-filtering-correlation-id: 2cf58b83-4c2c-4820-9bc9-08da9a093501
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Joim7aLb1rDkgBZSHd2HcT80HibcrMBV+96z2J3u0yaOe+YeKQTGJGwBWe6u9hL76VTbhgHZP8DtDSTbN84LhrJXqtYng34fVq0GRGvLIylLUub2JgBjO+Mz5BIcx8xeS2Jqcv8B49Hqz1LZeyCS6zApTR8rDKqWEKcCrApyab+ZJDCUbb5bvtmoS26/o6a0o4s5dO9JS7HbiZl5kMYZC1weI07GJQ0mzYL9c9LKf18ryq5UlbrsNDQ7DEsXsKmlvI4Sko0UsOZKAApZTP+6JPJmE9ELMQftz1FPUKv705Oq98nD5HNfvSbGJXgzHtCMQT/t1iZ+OjtGwKLB4KONvk3dUihKKHCY/D6Jf/yaapNec9xu8eqUceT89EQYPbU0OioXiXYTGn2LB/RrjTYbUd9/q+rczG3kjl1ojIDFFiSylzEW8I0xgEjL/uNtlsVN+n988T+uNVzRWi2eHzIK0j3XnwVnz/b3HsB0ZFLKeP9YmL7yYFgD6j+HnNzxu/nT8AWqskP0EPLxdC7GkRhRvxhj7EguWHHUAZi61G6EUlV6LnLrh50DZ9D2p8s1YVtDeuigABrblkoZAjpZ5NZow4cXeMCNSykGJDjrhH26C+Q5USiBfuOX7hF6zY//CgoWYxxofMvV5na8pr1jkqEu8xfnmQU3Ia9kQ6IecizE7lF+WLm4pgLDPk45W5L3angbGUYgLdKt89aSMMek4/NBmHjga6oKElp2UI9XqfWRisa38RsWTtNpcHPMjk0KOXrILRhiUrraKgQVhao6HCwFq3sKnGRk4T48Uanycmdpokk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6213.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(346002)(396003)(39860400002)(366004)(451199015)(38070700005)(55016003)(38100700002)(8936002)(186003)(41300700001)(9686003)(26005)(2906002)(478600001)(33656002)(316002)(110136005)(71200400001)(66446008)(64756008)(76116006)(107886003)(86362001)(7696005)(4326008)(53546011)(6506007)(66556008)(66476007)(966005)(66946007)(52536014)(83380400001)(122000001)(5660300002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Vm9GekVOa0VxL1JvYWNjU01BUTJHcnpjMCtmcG9VZGNPTG5yQ2lVbkdUMUpL?=
 =?utf-8?B?VXFRNGNqbEJnVmloSzZHU0N6M2s4aXVwdjZTNFFjZG14WVVQQ3grV2Z6OXdK?=
 =?utf-8?B?RmlBN0lwVWt2VmpySEdaVGV2Tm5iNTdyaWxkdHg1OVpMWVUyQW9wZW1EeHVy?=
 =?utf-8?B?ZTUxcyt1UG01SEYwMHpydVA4bk83SlVyR3EvWHJqbDVjQmdheDIwTk5EbTV2?=
 =?utf-8?B?WU56VzRVUVlSa2RnbFBBbHFFZlBLMUVyL3J3MWhXR2I3TUZlZEpYUHJTWjE3?=
 =?utf-8?B?aDEza2Q2T012dU1CMjU0SGVsby9YSmh1YUx3MmI3SHJ4V0duM3pKVmFMWDJG?=
 =?utf-8?B?bWYyTElyeEpUVlVmbDdRU0FDSUpPKzc3TVVtVEZIbTFRWTBqOERjZExLY0Jn?=
 =?utf-8?B?b2lmMlJEVmQxMUhBMVk4VzZWM0Jic0FTeGZvODBOZ1FvREtKaXhaWnppR3di?=
 =?utf-8?B?d1IvdlhmcTh1UU92Mm1KREhUcDlrQ2F3TTRidStkVEc4ZFVKTkZSQWtnVFc3?=
 =?utf-8?B?SnRmUXVmOGtpQkF4Z2FTbHQ0QUJHWFYrV3pxUFBwcDdQb01EV2xJREwrTFh4?=
 =?utf-8?B?UUlmMG9BNDZ4eExVR3IxUzYwbnRUVzFxNTlIbTZzSnhvNDRMMGJlT0JSb3pu?=
 =?utf-8?B?ZHBlTy9NL1p2NjFlakxRK0xEMnVyZlJQSWxPN3ZLekZYeTMxbXJDYk9OaHd1?=
 =?utf-8?B?bHJoNDlEMU44U2hTWmhmUWRqNE1vYW83RGZpZzF1TnhobHBZK2hOeWtoNmNX?=
 =?utf-8?B?cGxzVTVKV2I2VmVWMVhsMkpSRkduS3phaEp6UHBobkJLUVN5U0lISHk0VFha?=
 =?utf-8?B?MkdycTltY0JiR25tUytTdFJDNlY2c0hGd0kvb2JlUUcxMSt1TDNxbEV2VUpy?=
 =?utf-8?B?RGRiekh4UDE5YXFEbzdrbU16eUhWVHQrTCtOUkFjVVlyNjNyRExHNDA1cWlM?=
 =?utf-8?B?QTZSVFFNTmZPM1lOSWN2SU1rSkVqNlF6MG5JeEpWbTN2U0VqR1FOSkk2d3Nm?=
 =?utf-8?B?T2JhcXVqclRYdVJNQW5wUDIxMzJmTno3QWtPSFlhSGNVQTV3dUwxaE1aTTI1?=
 =?utf-8?B?OUFkRXRFU2Q0TFNiMHdseWU1Sy90MElTbysrUmlGTjFSSGlveHF5M1V6aGVo?=
 =?utf-8?B?VlVrdTVPNmtyL1JQQUdTeXdkYU53b3c1MUhlUy85L0d1WWk0Z1hlODJYVmpa?=
 =?utf-8?B?YWUwYXhvTWJzSlN2VVlIQVd1QUZ4MnFXZmpESEhIVGsycnIvd3JvL3cvcEF3?=
 =?utf-8?B?dVZTeTllUlVmQUJrSmpBVzg1c2NXeHgrQTdLVWYvT3BuV0N2LzVjS1JtQk05?=
 =?utf-8?B?TGlESnZIN1RzbWpYWE9PWDdVQzNqUzIvckowelJVRzE5cWdGRWJvZGNsMndP?=
 =?utf-8?B?WjFNQXpWc1Q2WGcwOENMd3FrVWV5T1NveFl1NDNTckg0N1JLU2sxQWtmQXNX?=
 =?utf-8?B?bEZybWtTY3hTVDdZZnhReTFjZUtpaGZzZUluZlJjZWluM3VybEcxZE1Zb3JE?=
 =?utf-8?B?RkVhbFRtL29zVGY3cGFLckVGelo4UTQvbnl1YUVMVy9qaUc4NUZsT0krQ0hi?=
 =?utf-8?B?U3k3U211OFJPMjJKZy9lTTlUSWdidnJ2eSswWDYvWUJ2c3JuQmdid0g2OVFQ?=
 =?utf-8?B?amUyVEZIcld2dGpVNEMrZGEzSXI4Q3gwMUJ1TEhOcThDY3VxdlVwTFFUMEh1?=
 =?utf-8?B?b01OWHRzbzlFaWs3VEc2TWdkRkRHSUhNOEFBTUhNcEZzb1ZKakhPbHhxWW5k?=
 =?utf-8?B?V3RKVWM4QWdlUVgrRExYaGlmTlVuSGdSdXBuajNsZXN2aFlzc2Q5dDhaajNx?=
 =?utf-8?B?ZzQ3dTUrMnNNdUh3enBVNmhKRHdKZVRzcko0c1duOTdYcmIybm1ZM2FHbjFG?=
 =?utf-8?B?aVRlU3Q0Q0o2eG1VNGJBVUd2M3pqY2JHb1c5dTB6MEhId1pXaHBicXBOMFFv?=
 =?utf-8?B?ckN2Qjg5enZybUFXRzdSVFNPajZOWXM3M0pCZGlqTWN2WExuSDhnejFTTFJk?=
 =?utf-8?B?ZVp5bHlaK2VqdkRObzlmRnVDYytSaGVBMklsd2xkWDB6K3E3QllaQm51N1dO?=
 =?utf-8?B?Mi8rQ2FYNlloWFRSVkJIQy9VTm9ZdEZmT1ZvR0dPd0tublNYMzBFY2RUcmp3?=
 =?utf-8?B?MTUrT0xYU1orSmdkZW9UNkNRa1M0SFliMDB6QnJkQ0c3Z3lSTy9jdmIwRFNt?=
 =?utf-8?B?T0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6213.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cf58b83-4c2c-4820-9bc9-08da9a093501
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2022 06:35:56.0715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3GAsq9n5WllOPwVM+5VT9Ngxu0z+4PACfqfnKfeWCy12CKUz+md8KyphZ64FoiedxEQ6sSpri3goN42aMJBWzwH202vBtIvI+16sSlsx8KU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5206
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSW50?=
 =?utf-8?q?roduce_struct_cdclk=5Fstep?=
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

RmlsZWQgYSBjb3VwbGUgb2YgaXNzdWVzIGFuZCByZS1yZXBvcnRlZC4gDQoNClRoaXMgb25lIExp
a2VseSBhIHJlZ3Jlc3Npb24/DQpodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2lu
dGVsLy0vaXNzdWVzLzY4NjQNCkZldyB0ZXN0cyAtIGRtZXNnLXdhcm4vZG1lc2ctZmFpbC9pbmNv
bXBsZXRlIC1CVUc6IHVuYWJsZSB0byBoYW5kbGUgcGFnZSBmYXVsdCBmb3IgYWRkcmVzcyAuKiwg
I1BGOiBzdXBlcnZpc29yIHJlYWQgYWNjZXNzIGluIGtlcm5lbCBtb2RlLCBSSVA6IDAwMTA6X19s
aXN0X2FkZF92YWxpZCwgQ2FsbCBUcmFjZTogZG1hX2ZlbmNlX2RlZmF1bHRfd2FpdCwgZG1hX2Zl
bmNlX2FkZF9jYWxsYmFjaw0KDQpodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2lu
dGVsLy0vaXNzdWVzLzY4NjMNCmlndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcyAtIGlu
Y29tcGxldGUgLSBCVUc6IHVuYWJsZSB0byBoYW5kbGUgcGFnZSBmYXVsdCBmb3IgYWRkcmVzczog
ZmZmZmM5MDAwMGJiODFhOCwgUklQOiAwMDEwOmdlbjJfcmVhZDMyDQoNCkxha3NobWkuDQoNCi0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBEaXhpdCwgQXNodXRvc2ggPGFzaHV0b3No
LmRpeGl0QGludGVsLmNvbT4gDQpTZW50OiBGcmlkYXksIFNlcHRlbWJlciAxNiwgMjAyMiA3OjA4
IFBNDQpUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgVnVkdW0sIExha3NobWlu
YXJheWFuYSA8bGFrc2htaW5hcmF5YW5hLnZ1ZHVtQGludGVsLmNvbT4NCkNjOiBTcml2YXRzYSwg
QW51c2hhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPg0KU3ViamVjdDogUmU6IFtJbnRlbC1n
ZnhdIOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIEludHJvZHVjZSBzdHJ1Y3QgY2RjbGtfc3Rl
cA0KDQpPbiBGcmksIDE2IFNlcCAyMDIyIDE4OjM1OjEzIC0wNzAwLCBQYXRjaHdvcmsgd3JvdGU6
DQo+DQoNCkhpIExha3NobWksDQoNCj4gU2VyaWVzOiAgSW50cm9kdWNlIHN0cnVjdCBjZGNsa19z
dGVwDQo+IFVSTDogICAgIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMv
MTA4Njg1Lw0KPiBTdGF0ZTogICBmYWlsdXJlDQo+IERldGFpbHM6IA0KPiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMDg2ODV2MS9pbmRleC5odG1s
DQo+DQo+IENJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzEyMTQ4IC0+IFBhdGNod29y
a18xMDg2ODV2MQ0KPg0KPiBTdW1tYXJ5DQo+DQo+IEZBSUxVUkUNCj4NCj4gU2VyaW91cyB1bmtu
b3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzEwODY4NXYxIGFic29sdXRlbHkgbmVl
ZCANCj4gdG8gYmUgdmVyaWZpZWQgbWFudWFsbHkuDQo+DQo+IElmIHlvdSB0aGluayB0aGUgcmVw
b3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcyANCj4gaW50
cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTA4Njg1djEsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVh
bSB0byBhbGxvdyANCj4gdGhlbSB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdo
aWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4NCj4NCj4gRXh0ZXJuYWwgVVJM
OiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTA4Njg1djEvaW5kZXguaHRtbA0KPg0KPiBQYXJ0aWNpcGF0aW5nIGhvc3RzICg0MyAtPiA0MSkN
Cj4NCj4gQWRkaXRpb25hbCAoMik6IGZpLWljbC11MiBmaS1wbnYtZDUxMA0KPiBNaXNzaW5nICg0
KTogZmktY3RnLXA4NjAwIGZpLWhzdy00MjAwdSBmaS1iZHctc2FtdXMgYmF0LWRnMS01DQo+DQo+
IFBvc3NpYmxlIG5ldyBpc3N1ZXMNCj4NCj4gSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0
aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTA4Njg1djE6DQo+DQo+
IElHVCBjaGFuZ2VzDQo+DQo+IFBvc3NpYmxlIHJlZ3Jlc3Npb25zDQo+DQo+ICAg4oCiIGlndEBk
ZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllczoNCj4gICAgICAg4pahIGZpLXBudi1kNTEwOiBO
T1RSVU4gLT4gSU5DT01QTEVURQ0KDQpUaGlzIGZhaWx1cmUgaXMgdW5yZWxhdGVkIGFuZCBuZWVk
cyBhIG5ldyBidWcuIFNlZW1zIHRvIGJlIGNhdXNlZCBieToNCg0KCWZlNTk3OTY2NWY2NDAgKCJk
cm0vaTkxNS9kZWJ1Z2ZzOiBBZGQgcGVyZl9saW1pdF9yZWFzb25zIGluIGRlYnVnZnMiKQ0KDQpU
aGFua3MuDQotLQ0KQXNodXRvc2gNCg==
