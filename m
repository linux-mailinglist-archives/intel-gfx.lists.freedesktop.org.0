Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 345ED4ED5F2
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 10:41:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71EDC10F791;
	Thu, 31 Mar 2022 08:41:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A4D910F78D
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 08:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648716084; x=1680252084;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qELN571Q/NovXKB3PCqgmXCJYDunhpfC2ZzK36YQHMg=;
 b=VPDWcKhQs3WYAMPnoh2j8QizLxmmw3ALeqW2fYwYMQrFYLzNp3rHL03a
 WVJM34j1e8PFtEFc7Y/jBEm7sV4pnLVdIOqY+TU5a/8NAz2E+3CZD18Fo
 W0tEuhlu0whMwldj8R1r3DTG6hygh5ScvYEbjBxk8xRXEJoMlQmkXRZKc
 XyUiy0dgTCE724Y3WdzK00HfaYaeNC2oxCmdLovQSIn/TvfO2wh9CBqnp
 rYttEB4omWjFl7oxYdhLthdPO7sJ5hNu8NlXyEmWJT8eMMf5l6cgXQsei
 EUHqo9kbDCBl01x7VkKOwvRU1jOQUxLtswWxOG3K+XOmnVCHs5o0eLlre g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259942723"
X-IronPort-AV: E=Sophos;i="5.90,224,1643702400"; d="scan'208";a="259942723"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 01:41:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,224,1643702400"; d="scan'208";a="566282280"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 31 Mar 2022 01:41:12 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 31 Mar 2022 01:41:11 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 31 Mar 2022 01:41:11 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 31 Mar 2022 01:41:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jdesjg9u6USgMSFf48tN5Zkqq2I9y6x9dKbbvMlDGDeltOIJqRXy3mXl1vyusl6gLp+GJGf4dvR8WgXBwcTPD7NirFN7ttbuaajYc93TVZEHgudHCZZjrtmZAOCgDMR4ITeB5rnnR0HKaUlXPg6VnDbdN2HrqS3tFxC3T1rbPicz8Tgqmzd9AOXQmIxOudEzbGHVzvYFit7hW+OUpunrRC2mH/MOaFH57HIZv6EWDDvdJxcYxBo7tKFEolnnHaJDo3cYmJ9LgOVxB5MTIaaqK2wKhc44XUPP0ajxypAZwAqx/vIyseu/BXz16kKjxvv3NnSVFYYu/M6k6LRuar51Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qELN571Q/NovXKB3PCqgmXCJYDunhpfC2ZzK36YQHMg=;
 b=ZzScR5yUhFASCqefKDw8GaxZLm+BlMtfAnnHd6ihv+btM+9v1VGF40SJ6mJBdjwlrjUUwy0SFx14GpoW6R+UND/9mUYd9Cc/12+/bnaJB5A413JXrAowCF519tsw5ax8MTISVduClTPXZdFylsE1Xu+zrbYiyt19dVHepYZuZEdTAyQ2aBhhbo+40zEwyFsnlaJHMQkYh275N3Ar3NYKmglpYAwMsdbCH8jjXU5Jdf9L3FPlQuDz/Yyqd74jJ9jC2vfxRWwz9uIuoZ4t6cg/qbyPDIsFfTIJizt0yOXOJvrZg7SlFRHLCyTpMudq4i4651gHrgZKTbgaw9y1eTfE5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by BYAPR11MB2902.namprd11.prod.outlook.com (2603:10b6:a03:83::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.22; Thu, 31 Mar
 2022 08:41:09 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::a96e:2092:a300:ef2]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::a96e:2092:a300:ef2%7]) with mapi id 15.20.5123.021; Thu, 31 Mar 2022
 08:41:09 +0000
From: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBzZXJp?=
 =?utf-8?B?ZXMgc3RhcnRpbmcgd2l0aCBbUkVTRU5ELDEvM10gZHJtL2k5MTUvZG1jOiBh?=
 =?utf-8?Q?bstract_GPU_error_state_dump?=
Thread-Index: AQHYREn4Wx38+mBOtEirrF10sOa4/azZKMfQgAADRACAAAFh8A==
Date: Thu, 31 Mar 2022 08:41:09 +0000
Message-ID: <CO6PR11MB5636D3FCB3CA642792DF64F4DEE19@CO6PR11MB5636.namprd11.prod.outlook.com>
References: <20220330124119.224966-1-jani.nikula@intel.com>
 <164864512219.8653.2654209743690297581@emeril.freedesktop.org>
 <87o81nbh3p.fsf@intel.com>
 <CO6PR11MB563617D3D6FA4472A9FB66A4DEE19@CO6PR11MB5636.namprd11.prod.outlook.com>
 <20220331083544.ygz24w235rxrjnyi@ldmartin-desk2>
In-Reply-To: <20220331083544.ygz24w235rxrjnyi@ldmartin-desk2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1d610dc0-bc31-4112-828a-08da12f2345a
x-ms-traffictypediagnostic: BYAPR11MB2902:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB290275174D06524D79734487DEE19@BYAPR11MB2902.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GM+UBLG6ykHGd7pyHva7uv9szRvbW7NDzNIRmfIggW7XyCG0D4G6MkU0KStecDmBLgOkW2ZorbcVPiZ6F1TDvCh6IBWP5zbDY+OIvUktbDjvLeKLM2Klqyi16LU0OKe4oA2WHrvE3SFMBRi49LLTbzM3yd1nK7XOrhEYogyai0ayaFrqQZ66wZp9jimO73iJfY6k7b/Yhi3AT7jXdjRZ8KSPPpGHiYBjwLiJg3zjZEc+CaH48796j15CiBTlNbyS1HrkyrdM0jgCK75WPPvarGGKCCLYtB45anJVqIrdcfgpU1wSwu29fSSX8Qwjfut2TnwpaYJAXSe53KUJygLo+y+eXMuFcqV7wOM0s5ax73LyCw22C/8Wxu4RsaU7jtlGRCc6xOoUimXAU5mN+6fjPIipedmj42vZJDm6nCGyst43gE2akThUiOHhZeavE7zkIUNcv4kM3C6RrURrxc4jDB3tUc1Sim3lYUS0xjWXcF1rNO/Q2sPc/FHUHNWWn1wm6RARNS5nuaB1xPXDAUpleP/4ZOfnA6ulypf9ZQcTU1L41tgA3tUYd2mAOr1CU/hYRYtJAOiYjpJC5CVQtd2zpR7LZA5ZVCUnQyPSuGxFmzDDGN7XdQzUfNW+QLrZ3bWkba/0Ws1NGnSfrbt4+Cq8A3WL+d4DUK/knlQj+CskVgki6u0k18GLi3feQdn8vI4y6NfCR91sIb1MxfFHGHTWhw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(71200400001)(186003)(2906002)(6506007)(6636002)(55016003)(54906003)(316002)(26005)(508600001)(7696005)(966005)(9686003)(33656002)(83380400001)(76116006)(66946007)(66446008)(4326008)(8936002)(82960400001)(86362001)(38100700002)(122000001)(52536014)(38070700005)(66556008)(66476007)(64756008)(5660300002)(6862004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NGZNNFFiNWszNWZERksxVkZkR2k0WEp5TEpRdnp2WTVsMEp1Z0FUcFd4UEY2?=
 =?utf-8?B?MC9MS0F2dzVnaTg2U0hxV2tpSzRpYXRheUlCYldRSGtkVFFIbmlNUFpYRS9l?=
 =?utf-8?B?ZTlCUW43VTdueWt3VDZpTVpIL2Z3dWpQVEY2c2lLaVk1czhQQm9GYnRDdEZh?=
 =?utf-8?B?NHdkV0xpaDZSZHgyMGN0bk94Mk9VVVQ3ejhDQVJqQndoTWZzRGJaMEI2N0Ry?=
 =?utf-8?B?NGFVaVBGMUdBcS9mTXl5NGZ4SlgyTnYvL2ZGQmZtZ2NzN0NLSTB6MWpmVFJE?=
 =?utf-8?B?VVBadFdGUmJnclFtZDFHclZoajQyZ0Q2dUtIVFZZYkcvb3A3NGhoOUs3SEdP?=
 =?utf-8?B?cjlSdXpqUjJEeGFzWnhycWw3QzFObkd4R1FRVVRUdys4S0RqSzE0dHdFRG5u?=
 =?utf-8?B?c1ZvZXFsM2VBQmtNTUJNT3JlWUtQNjh6RkdwcDArL256aUt6ZlNzWXorZDkz?=
 =?utf-8?B?ckhyMkl0V3orRmlEUWtDUnpNUFRCRXZjTzFkMUN6LzBFempZSXlxU2NtNUpH?=
 =?utf-8?B?WUhwMWp0eVRXYTlOY04rZUI0eU1vSnRUZ2wvOFVzakxyVENMMWN2cUltaTd6?=
 =?utf-8?B?cnBEVHhmZ1FYdDEydHlrTk5jd0tsNldQRCtCMlUvSGRQSzNHSS81ZUJsNDRI?=
 =?utf-8?B?bnI2ZEZPK2czaS8zNk5RZVBJUHhnRDlYOUU1blN2N0RzMjNzQ0I5YVZKVFpH?=
 =?utf-8?B?d2kwVkFxaWpxajB0ZFl5NHgxVDlqRXQrdXhHdEpadHF4M3BYUnRwNVRFd1Jm?=
 =?utf-8?B?UUFNNkZJUkpoei8yNC9TZHRLVG0wRTJiM2ZnY01XRE14SXhOcEF1ZWNnQlRF?=
 =?utf-8?B?OXhCUFBBZTN0MU1yQThPcTQzMFQzdDViN1oxWEN3eXJWRjJTb0F5OTRiUW9F?=
 =?utf-8?B?ekVXSnp5NldudGNOVk5FSmJQMHM1d2JoM0FHZUFzcnY1M25kU2VzZ29vTHds?=
 =?utf-8?B?dytYV2hQREZqYnZ5OWQ3UEhKc3FHOGRwS3F0V05xK3NSeHMvNThhLzJUOEVH?=
 =?utf-8?B?SGdILy83M3ZQWDdOR2lmb2I2bnRVK2VRRTdJYVYrdnc5S3BSU01qL2dLQ1Rx?=
 =?utf-8?B?L1hha3VjcEsxa2h2S1YvUHVNZEorb2ZxRjFQVS9pdGdaNkZDeFdWckNEOCty?=
 =?utf-8?B?SERwU2tKUUw3N09HVG9JczBybWNNQlQyUzlMTTJidEtJZ003WmR2UWo0UXBM?=
 =?utf-8?B?YkpjMTk2b2ZnMmJWaFJGYW84U2NTYTlpQk5LNzhzUTBpL0Y1U1Exbmo4UGVr?=
 =?utf-8?B?WEFsdkdRVTc5dG81cDRleGZ2TFBpQjl4YXdaRk04UFZ1YkFRUzh4aUNUVVpE?=
 =?utf-8?B?VThkeDhJMTFNUGJZZ2FJWU9hSHVldFF0SWY0c2pOMmpIei8rZ1o2cWszYysz?=
 =?utf-8?B?T0hZNHFhZHFLdTBTbWdhWjl1VTJJZFlmakcyUFp4M1NNMUduamluZWFzcVlC?=
 =?utf-8?B?SDZpTThGRDYwa0xWKzc0SFB4Y3VLNVlaZHNIMWFkV2U4SEUrd0tHSkJUaUxu?=
 =?utf-8?B?R0Ixd2dkRGJ3QmdpWDJzTW0vZGs5VksyZXFFTHZvTGY1c0I3QVVYUW1nK3JQ?=
 =?utf-8?B?bjNPeTVrdXNOano0VTRhZ3dNRlhXb3NwMHdQdjYvT2R2TXVoMkV1MXRWMy90?=
 =?utf-8?B?S0hENWw0SE1HMFRKdFFSekF6aE9CSTJwanNSTXE1S3dkUzZaMkV6NU5OZitz?=
 =?utf-8?B?aTdQMTFWZG9UNDdqRmc2Q2pFT1BZeUQya01RSndVUEd1L2ZXQTcxS1hxZzR5?=
 =?utf-8?B?WllWNXkwRVlKb0ViSDNXRTgxdlhHc29WTldKazF1WTRqNDFRaFhaZytiOXg0?=
 =?utf-8?B?RzV2R3kwSURMUDNxYm5vS2o5d0d0QlhWME5YYVErWjllRkh5czBuUXMvUm5h?=
 =?utf-8?B?Q3N0WEZWWTA3dXNtQi92MDFjLzJyOWRkQjE1Y2VlZm9RSEJXWlZlNU5yVjRD?=
 =?utf-8?B?NWMvSFFSNDJ1VkNlNkMvVi96SVRkT0ZOYWpldGlyS1U3KzE0MnBJdEhaWTNh?=
 =?utf-8?B?d21jRGNoeVFxZXdxdEtjSldqb24vSVVIR1Q2QW53SlN6eURJcm5wam9NRXVa?=
 =?utf-8?B?TFNrbVh4Z3VqSk11eC9PN2lPQ3JyaXJ3d3Q2bzFCZWN6WEhkWUk1NFlxRHhG?=
 =?utf-8?B?QlM0ejNudFFBd3hWN0pmYW5NUTd6Z3Vrajk3OG1ScEVUNzExOXl1d1BzZ21L?=
 =?utf-8?B?UTZwZzhuZHRneDRvdk9zWHltbFJMQldtaFRQUTJtaExXZ0EvVmZUY1J6c1FG?=
 =?utf-8?B?MjVBWkREZ3p4b3ZhVERnd1RrYjVadk80LytybGJDM3dBK05zT3hCQU9jalRW?=
 =?utf-8?B?YmQzdngra0ZCN2pZd09lbGNUMWRSMU5maVZJNnBYSVUweGlmMHhRV3k4aUZ6?=
 =?utf-8?Q?PqUH5mCyWnJc/XVQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d610dc0-bc31-4112-828a-08da12f2345a
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2022 08:41:09.4985 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CxJvc8BBq9WE2HGhQAP/CHQNcOFWSdvZBjNvxsjoJx5FAMkuOBlgqBD+aOYvo/0b6RSIzTm5augXXVQTw9dRRosv55MQ+8iwvvVoIN/r4NU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2902
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5BRESEND=2C1/3=5D_drm/i915/dmc=3A_abstract?=
 =?utf-8?q?_GPU_error_state_dump?=
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWZ0ZXIgdGhlIGxhdGVzdCBDSV9EUk0gaGFzIGJlZW4gYnVpbGQsIHJlLXRlc3Qgc2hvdWxkIGJl
IGVub3VnaC4NCg0KVG9taQ0KDQo+IEZyb206IERlIE1hcmNoaSwgTHVjYXMgPGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbT4NCj4gT24gVGh1LCBNYXIgMzEsIDIwMjIgYXQgMDg6Mjg6MDlBTSArMDAw
MCwgVG9taSBTYXJ2ZWxhIHdyb3RlOg0KPiA+VGhlIGxhdGVzdCBDSV9EUk0gYnVpbHQgaXMgMTE0
MTY7IGFmdGVyIHRoYXQsIHRoZXJlIGlzIGJ1aWxkIGVycm9yOg0KPiA+ZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2d0dF9tZ3IuYzogSW4gZnVuY3Rpb24NCj4gJ2FtZGdwdV9ndHRf
bWdyX3JlY292ZXInOg0KPiA+ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2d0dF9t
Z3IuYzoyMDA6MzE6IGVycm9yOiAnc3RydWN0DQo+IHR0bV9yYW5nZV9tZ3Jfbm9kZScgaGFzIG5v
IG1lbWJlciBuYW1lZCAndGJvJw0KPiA+ICAgYW1kZ3B1X3R0bV9yZWNvdmVyX2dhcnQobm9kZS0+
dGJvKTsNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefg0KPiA+ICBDQyBbTV0g
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9lMTAwMF9tYngubw0KPiA+c2NyaXB0cy9N
YWtlZmlsZS5idWlsZDoyODg6IHJlY2lwZSBmb3IgdGFyZ2V0DQo+ICdkcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfZ3R0X21nci5vJyBmYWlsZWQNCj4gDQo+IGp1c3QgZml4ZWQgdGhh
dA0KPiANCj4gPg0KPiA+VGhlIHBhdGNoIGlzIGFwcGxpZWQgYWdhaW5zdCBsYXRlc3Qgd29ya2lu
ZyBidWlsZCBjb21taXQuIENhbiB5b3UgdHJ5IHlvdXINCj4gcGF0Y2ggYWdhaW5zdA0KPiA+IENJ
X0RSTV8xMTQxNiAxZGMyYzY5NTNlMjY4OWEwZTViN2NjYTg0NTBkYTE0MDU5ZDM1ZjAzDQo+ID5h
bmQgc2VlIGlmIHlvdSBnZXQgdGhlIHNhbWUgZXJyb3I/DQo+IA0KPiBzbyBtYXliZSBqdXN0IGEg
cmUtdHJpZ2dlciBzaG91bGQgd29yaz8NCj4gDQo+IEx1Y2FzIERlIE1hcmNoaQ0KPiANCj4gPg0K
PiA+VG9taQ0KPiA+DQo+ID4+IEZyb206IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwu
Y29tPg0KPiA+Pg0KPiA+PiBPbiBXZWQsIDMwIE1hciAyMDIyLCBQYXRjaHdvcmsgPHBhdGNod29y
a0BlbWVyaWwuZnJlZWRlc2t0b3Aub3JnPg0KPiA+PiB3cm90ZToNCj4gPj4gPiA9PSBTZXJpZXMg
RGV0YWlscyA9PQ0KPiA+PiA+DQo+ID4+ID4gU2VyaWVzOiBzZXJpZXMgc3RhcnRpbmcgd2l0aCBb
UkVTRU5ELDEvM10gZHJtL2k5MTUvZG1jOiBhYnN0cmFjdCBHUFUNCj4gZXJyb3INCj4gPj4gc3Rh
dGUgZHVtcA0KPiA+PiA+IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy8xMDE5NTcvDQo+ID4+ID4gU3RhdGUgOiBmYWlsdXJlDQo+ID4+DQo+ID4+IEkgZG9u
J3QgZ2V0IHdoeSB0aGlzIGRvZXNuJ3QgYXBwbHkuDQo+ID4+DQo+ID4+IEl0IGFwcGxpZXMgZm9y
IG1lLg0KPiA+Pg0KPiA+Pg0KPiA+PiBCUiwNCj4gPj4gSmFuaS4NCj4gPj4NCj4gPj4NCj4gPj4g
Pg0KPiA+PiA+ID09IFN1bW1hcnkgPT0NCj4gPj4gPg0KPiA+PiA+IEFwcGx5aW5nOiBkcm0vaTkx
NS9kbWM6IGFic3RyYWN0IEdQVSBlcnJvciBzdGF0ZSBkdW1wDQo+ID4+ID4gVXNpbmcgaW5kZXgg
aW5mbyB0byByZWNvbnN0cnVjdCBhIGJhc2UgdHJlZS4uLg0KPiA+PiA+IE0JZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiA+PiA+IE0JZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kbWMuaA0KPiA+PiA+IE0JZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9ncHVfZXJyb3IuYw0KPiA+PiA+IEZhbGxpbmcgYmFjayB0byBwYXRjaGluZyBiYXNlIGFuZCAz
LXdheSBtZXJnZS4uLg0KPiA+PiA+IEF1dG8tbWVyZ2luZyBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dwdV9lcnJvci5jDQo+ID4+ID4gQXV0by1tZXJnaW5nIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZG1jLmgNCj4gPj4gPiBDT05GTElDVCAoY29udGVudCk6IE1lcmdlIGNv
bmZsaWN0IGluDQo+ID4+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmgN
Cj4gPj4gPiBBdXRvLW1lcmdpbmcgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
bWMuYw0KPiA+PiA+IENPTkZMSUNUIChjb250ZW50KTogTWVyZ2UgY29uZmxpY3QgaW4NCj4gPj4g
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiA+PiA+IGVycm9yOiBG
YWlsZWQgdG8gbWVyZ2UgaW4gdGhlIGNoYW5nZXMuDQo+ID4+ID4gaGludDogVXNlICdnaXQgYW0g
LS1zaG93LWN1cnJlbnQtcGF0Y2g9ZGlmZicgdG8gc2VlIHRoZSBmYWlsZWQgcGF0Y2gNCj4gPj4g
PiBQYXRjaCBmYWlsZWQgYXQgMDAwMSBkcm0vaTkxNS9kbWM6IGFic3RyYWN0IEdQVSBlcnJvciBz
dGF0ZSBkdW1wDQo+ID4+ID4gV2hlbiB5b3UgaGF2ZSByZXNvbHZlZCB0aGlzIHByb2JsZW0sIHJ1
biAiZ2l0IGFtIC0tY29udGludWUiLg0KPiA+PiA+IElmIHlvdSBwcmVmZXIgdG8gc2tpcCB0aGlz
IHBhdGNoLCBydW4gImdpdCBhbSAtLXNraXAiIGluc3RlYWQuDQo+ID4+ID4gVG8gcmVzdG9yZSB0
aGUgb3JpZ2luYWwgYnJhbmNoIGFuZCBzdG9wIHBhdGNoaW5nLCBydW4gImdpdCBhbSAtLWFib3J0
Ii4NCj4gPj4gPg0KPiA+PiA+DQo+ID4+DQo+ID4+IC0tDQo+ID4+IEphbmkgTmlrdWxhLCBJbnRl
bCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXINCg==
