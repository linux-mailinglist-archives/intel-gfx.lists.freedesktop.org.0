Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD39874757C
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 17:42:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3071010E12D;
	Tue,  4 Jul 2023 15:42:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7472A10E12D
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 15:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688485319; x=1720021319;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZFxOMQawx0/UZTgCfyRHckkzBbyQ7sQJKfyeNa7syKE=;
 b=KnoZ9etn2LyqyRUjsvCEyFh2vQWAoqf2N6k9MsJizxQp7HFYGRbXAjIg
 iBXxxVVQECMRwg66u8Mw2faMpLF1FeMtxDEWuJ3AebrNg0ODHv73fMEkO
 im/peLlhXZwW2kBlNKsBE1F0XwGBYRs72b5uyYA5u28OPdgx+SBtY19T7
 dkugkRSGQ0wBfsMk3941BkQX8fGBLSsbYo54moNP2g6RAgtavvtSJiEKi
 X4+whReCbdJ1pNkurxfuIlrTTx07PtJziczqmEv22622vgG7utB+gL5Dr
 o0vBrX0nyd7fOFUZUJtRD0956N9xWGaWbiDhrxTSHd9aKyEaaLANFjdpq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="429186870"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="429186870"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 08:41:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="1049432618"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="1049432618"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 04 Jul 2023 08:41:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 4 Jul 2023 08:41:57 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 4 Jul 2023 08:41:57 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 4 Jul 2023 08:41:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UZ+vy/3/ue1m9ZmHBbHEo8nAAcGWlEruKF2vIdlJKLROtpIV/qebM5hoOdup9IYM2Fbx9bIlM42nsB2G3P6KMPzpZ4kxe/MMD1UK507uspq8A09kaMkN9usCXuNNcWu8MmE5b7gNUUnUNeGpoGGj74qM6iHaS40IcEBRIGMiDuMHBGpEVfHQksg9Gs28RkH/xRB6oYZj+PUrVNT7tlUBjxyy4Cdi3VEeFAfPwDYq/H+pQOnvloyFBh0ggtdRiHsnOoXwAz/lXzWorICwBTrEGZGaR1zhHKODU775mQk5FdM+EFQJKSYbx5MPQABCOvMk/XUGirj/5Mco+Ua0UTLFpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZFxOMQawx0/UZTgCfyRHckkzBbyQ7sQJKfyeNa7syKE=;
 b=SHWqNPXwYV0SK8r++xU8snl+SvVIOi+9C6Iy9BWib8ukJ3Fa+YS5SCn2JPjBdSGjNKXS//2fx4sQDVX/Qap0RBjHEPp/GP0aYGTAHWbaF/9AVlprEsVKfRfbjVPvyk/t68olWseFoDxqW936Hobe4jRa7yz13VWZYoJpVDRCC+M4rxMfxlYxT+AcsdTRto2zqAIvtaV4DvavZSFHWj36U9DAWBXMmKZI4ENilx1o8sHhHGx7t7mTsj1IxmbrSQYgkvqfnacIweMcLpWMm8y+KggufXyTuro8xqSWWJZ5VE2T9fVsaOuG+Htx+Z2kBd0SH+USlLsh5h+c7QC9pKrb2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB6991.namprd11.prod.outlook.com (2603:10b6:806:2b8::21)
 by CY5PR11MB6258.namprd11.prod.outlook.com (2603:10b6:930:25::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.17; Tue, 4 Jul
 2023 15:41:54 +0000
Received: from SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::4ddb:c601:faf:fb9f]) by SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::4ddb:c601:faf:fb9f%6]) with mapi id 15.20.6544.024; Tue, 4 Jul 2023
 15:41:54 +0000
From: "Zeng, Oak" <oak.zeng@intel.com>
To: Nirmoy Das <nirmoy.das@linux.intel.com>, "Das, Nirmoy"
 <nirmoy.das@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Do not use stolen on MTL
Thread-Index: AQHZq3SVNrGpD1/5lUaBHYHIJAGm9K+ptriggAALdwCAAAJeAA==
Date: Tue, 4 Jul 2023 15:41:54 +0000
Message-ID: <SA1PR11MB69915F1075183EB839B14264922EA@SA1PR11MB6991.namprd11.prod.outlook.com>
References: <20230630170140.17319-1-nirmoy.das@intel.com>
 <SA1PR11MB699124CCEFAA2F67C424EA27922EA@SA1PR11MB6991.namprd11.prod.outlook.com>
 <c87c16c3-ef15-e2b0-452b-d14c099f3770@linux.intel.com>
In-Reply-To: <c87c16c3-ef15-e2b0-452b-d14c099f3770@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR11MB6991:EE_|CY5PR11MB6258:EE_
x-ms-office365-filtering-correlation-id: 5478b699-1896-4563-a4fb-08db7ca53173
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BKwXjGLz9/RIcDKkDmrMHGIqTB4rBdA4XxjsVrlt4LRuGf0yECtGAAFHNrjl+rlDNTxdVASml4/fE0qlnIax4MltdiKlZKwb7mHJU1W7wGIIxCz2ijXOaLLvwz/RjzYliNosxey0188txHUQRIAYwCc009077cs1sBiTHLjFw+qJNC0jfhYc1G99PcE0CtKJ3ln44Ubq3kF1oSSxtJ4jQSZh/q2EkT6ooXH4uqzmwbbbdTUopbxYdQyUS4X8pXQTQsvaSD8XVLo0S/9gTMa9G53W4KBQ9z7NlwY9L0DmXEV5Bpz/pXcpbywAv2nIyV92CbmCkBmnmquybxrp/ImYOu0zWpSGRasz5cUzh/cGchkVQyitzlNq0RyuqqiI0bvLKdge+fllCAN/3EPjL6H057PaKNl2VVNeAWo58WTJ/x6AMhAmDNohNsrcNPGn/eJe1jAkVuOdKStCbutZSNalb4/c5lUb47KliCabT9Xg/w7yLlTKZ597TjM+4eXyjVllxw+dgcn6GYhzUJXuQEgJncfkq2dyGLL4VtkY/uD5zV/KX8oB2mrpu9Pj2LQDW811tfjhKV3+rm5K3/i9I00fPIOHEZ6JqWnbvqrPmUml3+SN480hxo96d8ZNcaYgneif
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB6991.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(39860400002)(376002)(366004)(346002)(451199021)(8936002)(8676002)(110136005)(41300700001)(55016003)(71200400001)(7696005)(2906002)(316002)(52536014)(5660300002)(4326008)(64756008)(66446008)(66476007)(66556008)(76116006)(33656002)(478600001)(38100700002)(38070700005)(186003)(86362001)(66946007)(122000001)(83380400001)(6506007)(9686003)(53546011)(82960400001)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OHg5cHkwY1lBVUNaNmNjcEZTV2pVbVRQMWdQTEVuQ3lMcG0xN0RkcVhXZFFy?=
 =?utf-8?B?VEVkaHJYdEhMWGpCV2JFZmxFd2VkbUhpWmh2S3MxWnJjSUlQYk51KzV3TlFO?=
 =?utf-8?B?aTZsd1hnbHBNVllBRnNhNzNzb1Z5cVdia2RFMlIrVjRiTHdFUzJJV29FdWtY?=
 =?utf-8?B?bk4yUDBWNm9xbld3U3UyL09jMWNiTFozWlhCM2dYU0FmT0hGUkpDRGdIUnE5?=
 =?utf-8?B?Qi9nQWxjbkZiY05rSmNlcTkyUmVtUERhbHhmUUNxQ3Z4dHZRRTlOYVBabmVH?=
 =?utf-8?B?KzBib2lKYUNqMW9GanV0bFRWOE84d1orbWkyVlJiWHZHak1qMFlsYkJXRnd5?=
 =?utf-8?B?cjJqYUE2TWJsZzl5UnQxYzIrSWR0N1k3MVpUVUJHUHJqNDVOaDNKN1h4OU5O?=
 =?utf-8?B?dHlKRjc1N0lTSUtYeUJIRGFTR3l6ME5YR0RYalM2M29FVlVuN3hHYklKUVF2?=
 =?utf-8?B?Y0R4TkJRWWZDS3NSclN0MW9vTHJTU1Zxa0JTTkI1bjlrRXZHSGZNaDNxRVE4?=
 =?utf-8?B?ZkhkdTZiZFd5aDZ6NUVTSDFRbmJDUm5pZVdTUjFiQkNYOStWM29oaDlSSjFR?=
 =?utf-8?B?Uk1BSlRGb0wrZml6c0Q2LzJnYlVkUCtyYi82N0RPWXhLUlFRbXk3cm1NRi84?=
 =?utf-8?B?QUY2VGFPb2hybWlaWmJraHV1NlgvN3dnRXk0QzVFQXFCdnNQK0tTN0w5M0RT?=
 =?utf-8?B?VnBGdnU0SXhsNXFqODlFZW1zRld4TWREVVczN2UzckR2d2NuL3NJVkI1UWFB?=
 =?utf-8?B?MDNYS1VYZUlrOUZvZW5xWkRzN0Q0SklmZ29RY3pZSlQ3VDJEeFZHMXdNQWlZ?=
 =?utf-8?B?M2Z3ZkpWM0FLOGFtVUZOU1FhdU83TEhFUEdvZjY2Z2gwNnpMRVcxSUxKd01L?=
 =?utf-8?B?RmloRTZDSTRRbnEzd2krbmMxZWZDNDh4UE12RCt3VUxTcG52b3QySDRDcTJz?=
 =?utf-8?B?UDNKa0s0aWN6a1dmNXFCUXZ1NUNJS0YzeUxJNkM0NzV4WitRdk9PWCt5ZExM?=
 =?utf-8?B?eVlPTGdUOHNYUVlad0wrODl6SU9uQ3B2OXZiNVM3VDc5VGwveUVPK0l5SnNS?=
 =?utf-8?B?Y2RHMTg0amhqZjJwUW81NlVhMUtrTW0vaDRVSDNvRTdWeHljQzVYeGNXS1E4?=
 =?utf-8?B?V2V3c0UzMGw4V0Z5TWpRSy9WdU5SMDdRSVh6ZVJFS29PaWZlLzhxZU5tNmU5?=
 =?utf-8?B?VUN1N29BZUVreGkxRnE3VEJCRGRCdVZabi8vSkN0dk1FbGs3b2VRVTZpTDN1?=
 =?utf-8?B?L2NlN2FtSmlZRXk3M05aV3RqZERCdUxhZVVZZEFKTHVSRWVieFpUWnRyeGJt?=
 =?utf-8?B?L0NGNkJ0TTA0V25RTFRMeW11dGZzYVAxTVlialIySnFTUDcxdE1lRSthTS9y?=
 =?utf-8?B?QWRKUUdOSVF6bnVtaUpudWV3R3VQTUczWnVGL3Y1OGRrWm1CVU5XRzk5b0Z0?=
 =?utf-8?B?ZUE1TkpsYnZoaC9VeE15V3RrOUh0dmZKOEZnZFNVTDV4Q1hpNTNtcUJhbkpn?=
 =?utf-8?B?empoa2JZTlpwSEozSWIxOXZta3dRamZwSzZjVEt2aE1BY1pjMlkzRnl3YWVh?=
 =?utf-8?B?TUxjVENVRko0eGNvS1FtdW5JUHo1dnBEdmtOUEFiRzRsdXNKV09ZRzVDZ1lD?=
 =?utf-8?B?WEhsSGJsUllnVUkzaWNpZGdXMHFuekZWNTJISHNST1pLK1pDY2pvV01BUHJ1?=
 =?utf-8?B?eTFjYXhldGtyUGU4SmFkZW1rUHYrSFk5Q0NNSmlJcWNRYVpza3BjQXdnR3ZP?=
 =?utf-8?B?bkQwdys0bmhMc0FSVXVHTFkyc01TMStHY05ZQi92eWhGTlIzWWNUMUJLYTJ4?=
 =?utf-8?B?cUl5M0lRRWhEaEV6alR3emtLS1FDN2Z5WGhOYytva3MzU0FmVXA3bjdiOGJI?=
 =?utf-8?B?RVNGV0g3SnEvV1IyN0hPWFBDYnpiNG5lRk94TGlYbGFPS3VnVVFBdnk2NW15?=
 =?utf-8?B?UkI5aDNjV0tCK21ESkdUb2ZNNy9xcGdkUWE2bEdnakFZU2RYRXAyRUZKZ0w1?=
 =?utf-8?B?bG55a1VBVWJlOVc1Y2Q3T3NLaHZsRnpxbytMVUxSWkVrMVBROFQ0c1prNjFU?=
 =?utf-8?B?L0FKZmxlQVZ4K3FYQ001dUZuZXhiTnBqd3ZBeUg5MFBRMENmaDR1RXd3cTdz?=
 =?utf-8?Q?KpR4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6991.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5478b699-1896-4563-a4fb-08db7ca53173
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2023 15:41:54.4077 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9zBkC+fgZIbkK663eHh3jqRSjdq+UlgJJCzdVCGqtmnJ7pTss4z3p3zMffQhxL6DUa/JkASoOCaWcNHnOpRrfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6258
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Do not use stolen on MTL
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
Cc: "Hajda, Andrzej" <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNClRoYW5rcywNCk9haw0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206
IE5pcm1veSBEYXMgPG5pcm1veS5kYXNAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBKdWx5IDQs
IDIwMjMgMTE6MzEgQU0NCj4gVG86IFplbmcsIE9hayA8b2FrLnplbmdAaW50ZWwuY29tPjsgRGFz
LCBOaXJtb3kgPG5pcm1veS5kYXNAaW50ZWwuY29tPjsNCj4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBDYzogSGFqZGEsIEFuZHJ6ZWogPGFuZHJ6ZWouaGFqZGFAaW50ZWwuY29t
Pg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIIDEvMl0gZHJtL2k5MTUvZ3Q6IERv
IG5vdCB1c2Ugc3RvbGVuIG9uIE1UTA0KPiANCj4gSGkgT2FrLA0KPiANCj4gT24gNy80LzIwMjMg
NTowMSBQTSwgWmVuZywgT2FrIHdyb3RlOg0KPiA+IEhpIE5pcm1veSwNCj4gPg0KPiA+IFRoZSBj
aGFuZ2VzIGluIHRoaXMgc2VyaWVzIG1ha2Ugc2Vuc2UgdG8gbWUuIEkgc2VhcmNoZWQgbXkgY29k
ZSBiYXNlLCB0aGVyZQ0KPiBhcmUgYSBmZXcgb3RoZXIgcGxhY2VzIHdoZXJlIHN0b2xlbiBtZW1v
cnkgaXMgYWxsb2NhdGVkOg0KPiBUaGFua3MgZm9yIGNoZWNraW5nIGFsbCB0aGUgcGxhY2VzLg0K
PiA+DQo+ID4gMSkgaW50ZWxfZHB0X2NyZWF0ZTogSSBkb24ndCBrbm93IHdoYXQgaXMgZHB0LiBT
aG91bGQgd2UgYWxzbyBjb25zaWRlciB0aGlzIG9uZT8NCj4gTWF5YmUgd2UgbmV2ZXIgcmVhZCBm
cm9tIGNwdT8NCj4gVGhpcyBleHBlY3RzIGk5MTVfZ2d0dF9oYXNfYXBlcnR1cmUoKSB3aGljaCBN
VEwgZG9lc24ndCBoYXZlLg0KPiA+IDIpIGNyZWF0ZV9yaW5nX3ZtYTogSSB0aGluayBjcHUgb25s
eSB3cml0ZSByaW5nIGJ1ZmZlciBidXQgbmV2ZXIgcmVhZCBpdC4gU28NCj4gc2hvdWxkIGJlIG9r
YXkuDQo+IFNhbWUgYXMgYWJvdmUuDQo+ID4gMykgdmx2X3JjNl9pbml0DQo+IFRoaXPCoCBzZWVt
cyB0byBiZSBvbmx5IGZvciBJU19WQUxMRVlWSUVXKCkuDQo+ID4gNCkgdGhlcmUgYXJlIGEgZmV3
IHBsYWNlcyBjYWxsaW5nDQo+IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc3RvbGVuX2Zvcl9wcmVh
bGxvY2F0ZWQuIEkgdGhpbmsgdGhpcyBpcyBhbHNvIHN0b2xlbg0KPiBtZW1vcnk/DQo+IA0KPiBX
aGVyZSBpcyB0aGlzIGZyb20sIGRvIHlvdSBtZWFuIEk5MTVfQk9fUFJFQUxMT0MgPw0KDQpJIGxv
b2tlZCBzb21lIGludGVybmFsIGNvZGUsIGFuZCBqdXN0IHJlYWxpemVkIHVwc3RyZWFtIGNvZGUg
aXMgZGlmZmVyZW50IPCfmIoNCg0KPiANCj4gDQo+ID4NCj4gPiBGb3IgaW50ZWdyYXRlZCBncHUg
bGlrZSBNVEwsIGRvIHdlIHVzZSBzdG9sZW4gbWVtb3J5IGZvciBnZ3R0PyBJZiB5ZXMsIGRvZXMN
Cj4gQ1BVIG9ubHkgd3JpdGUgZ2d0dC9uZXZlciByZWFkPw0KPiANCj4gR1RUIHBhZ2VzIG9ubHkg
c2VlbXMgdG8gYmUgd3JpdHRlbi4NCg0KDQpUaGFua3MgZm9yIGV4cGxhaW5pbmcuIFNlcmllcyBp
cyBSZXZpZXdlZC1ieTogT2FrIFplbmcgPG9hay56ZW5nQGludGVsLmNvbT4NCj4gDQo+IA0KPiBU
aGFua3MsDQo+IA0KPiBOaXJtb3kNCj4gDQo+ID4NCj4gPiBUaGFua3MsDQo+ID4gT2FrDQo+ID4N
Cj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogRGFzLCBOaXJtb3kg
PG5pcm1veS5kYXNAaW50ZWwuY29tPg0KPiA+PiBTZW50OiBKdW5lIDMwLCAyMDIzIDE6MDIgUE0N
Cj4gPj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPj4gQ2M6IERhcywg
TmlybW95IDxuaXJtb3kuZGFzQGludGVsLmNvbT47IFplbmcsIE9hayA8b2FrLnplbmdAaW50ZWwu
Y29tPjsNCj4gSmFuaQ0KPiA+PiBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT47
IEpvb25hcyBMYWh0aW5lbg0KPiA+PiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT47
IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAbGludXguaW50ZWwuY29tPjsNCj4gPj4gSGFqZGEsIEFu
ZHJ6ZWogPGFuZHJ6ZWouaGFqZGFAaW50ZWwuY29tPg0KPiA+PiBTdWJqZWN0OiBbUEFUQ0ggMS8y
XSBkcm0vaTkxNS9ndDogRG8gbm90IHVzZSBzdG9sZW4gb24gTVRMDQo+ID4+DQo+ID4+IFVzZSBz
bWVtIG9uIE1UTCBkdWUgdG8gYSBIVyBidWcgaW4gTVRMIHRoYXQgcHJldmVudHMNCj4gPj4gcmVh
ZGluZyBmcm9tIHN0b2xlbiBtZW1vcnkgdXNpbmcgTE1FTSBCQVIuDQo+ID4+DQo+ID4+IENjOiBP
YWsgWmVuZyA8b2FrLnplbmdAaW50ZWwuY29tPg0KPiA+PiBDYzogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFz
LmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4NCj4gPj4gQ2M6IEFuZGkgU2h5dGkgPGFuZGkuc2h5
dGlAbGludXguaW50ZWwuY29tPg0KPiA+PiBDYzogQW5kcnplaiBIYWpkYSA8YW5kcnplai5oYWpk
YUBpbnRlbC5jb20+DQo+ID4+IFNpZ25lZC1vZmYtYnk6IE5pcm1veSBEYXMgPG5pcm1veS5kYXNA
aW50ZWwuY29tPg0KPiA+PiAtLS0NCj4gPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndC5jIHwgMiArLQ0KPiA+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQ0KPiA+Pg0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZ3QuYw0KPiA+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMN
Cj4gPj4gaW5kZXggMzNhNjEwNDZiYTU4Li45ZjY0ZDYxZGQ1ZmMgMTAwNjQ0DQo+ID4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMNCj4gPj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYw0KPiA+PiBAQCAtNDY2LDcgKzQ2Niw3IEBAIHN0YXRp
YyBpbnQgaW50ZWxfZ3RfaW5pdF9zY3JhdGNoKHN0cnVjdCBpbnRlbF9ndCAqZ3QsDQo+IHVuc2ln
bmVkDQo+ID4+IGludCBzaXplKQ0KPiA+PiAgIAlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRl
X2xtZW0oaTkxNSwgc2l6ZSwNCj4gPj4gICAJCQkJCSAgSTkxNV9CT19BTExPQ19WT0xBVElMRSB8
DQo+ID4+ICAgCQkJCQkgIEk5MTVfQk9fQUxMT0NfR1BVX09OTFkpOw0KPiA+PiAtCWlmIChJU19F
UlIob2JqKSkNCj4gPj4gKwlpZiAoSVNfRVJSKG9iaikgJiYgIUlTX01FVEVPUkxBS0UoaTkxNSkp
IC8qIFdhXzIyMDE4NDQ0MDc0ICovDQo+ID4+ICAgCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3Jl
YXRlX3N0b2xlbihpOTE1LCBzaXplKTsNCj4gPj4gICAJaWYgKElTX0VSUihvYmopKQ0KPiA+PiAg
IAkJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChpOTE1LCBzaXplKTsNCj4g
Pj4gLS0NCj4gPj4gMi4zOS4wDQo=
