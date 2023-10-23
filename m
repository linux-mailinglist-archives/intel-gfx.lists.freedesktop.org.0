Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 741627D2BDE
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 09:50:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 639E210E168;
	Mon, 23 Oct 2023 07:50:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C589F10E163
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 07:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698047414; x=1729583414;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=eI+bfKc8RWEArwLE/7m/HnJXLnZ/KKWup8EiuOwVhpQ=;
 b=k9Ezq+TBmObvyIhdeO4x0imcX9vGIjvKJyIWXj35wdFlagtqpGwN8NdT
 AgTTkA3u+n4eH4jeUeKsClJ1rSbCD5u4iyrxsiH1S49JtAtF0FnBFxMFl
 N7CdRGinafTpPhdhmmUUHxRgSggZJ6qWzf8wZl/dKCA2yKtUlRXwaOzSW
 fwK+azT1ycmGh1HuqICvZmJ7zhRtUJ2dHaQuOSEwJGpCHkZCEAVWViKqm
 VbkNduSW0gfTUvBCG7kQoLMINzYV8j0/HNt30B0mlO06IROjo3gSHUlG9
 zQ0eaZZ3iqhj/jVxoIcDTiUeSpaojziShLtlAsi7QLpvK7n1uP5X+f8Ei w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="366137587"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="366137587"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 00:50:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="1089390944"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="1089390944"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2023 00:50:14 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 23 Oct 2023 00:50:13 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 23 Oct 2023 00:50:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 23 Oct 2023 00:50:13 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 23 Oct 2023 00:50:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bj6S32BCvyIpimfnSij9zruTzwYvMYn+ekxfAs8lBSIP5FtnAl2h802+RFdKRo9B+eLeLEz+czjZ0+qmcvUolBJz+VGYewHkUL+VRKg8YeSA9UD7hX7ZoAogKrtZ71+Bhem4lI6v9QZqoxTn8DzJNjhg/6IOgr5Axtxenzd/lnjzz4DNnj+RY1EMtJh7D7TFAy+k+hhK5vcT4t/NkqWiWmXzy/5yAuf9glRGzXwbg2lMVpUADhufLALKrBnKWsmy03rXrGpcLJetqcWwzaUWY3xBA15kMjOm9KLin17k0AwONU4iX0C3jE6eKtM0zeec3NKtKALeJnmHqN5azNH9bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eI+bfKc8RWEArwLE/7m/HnJXLnZ/KKWup8EiuOwVhpQ=;
 b=PFL+ivh3AYt4DXcjBu9U4YU7AOnEee76CYp5OgFX8fiLoyfaWbhZzAc73igp1OLxkRXVpqELTBqANxn+1hMWHhmqWMCkzEoD76R2Md9IvEm4pAY0tnm75/56vELlOcXKNvJD6JRdBSyIHVUeU5N+xCeoWBftgJtlMSuilRW3gkW49n8ctNmL7pz2F7LMEuQ5JP5KRwegAR8Ae+vwGlSN7DUShb08gCswCHn77xAKoGKU+kvF9dOSNCE9g27Huid2PFVhx2SvYx5JE3fuYlrclk1xDfTShzvys6u06GEMT4NUBfASU4KL+MpCxb39+PHLQwnK+FupS1Ovsf4gbtDaZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH3PR11MB7180.namprd11.prod.outlook.com (2603:10b6:610:148::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.26; Mon, 23 Oct 2023 07:50:11 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.6907.028; Mon, 23 Oct 2023
 07:50:11 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "luca@coelho.fi" <luca@coelho.fi>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 01/24] drm/i915/display: Add framework to
 add parameters specific to display
Thread-Index: AQHaACJX2Ty8D8cS+kKnhwCDRzofh7BWHrGAgADsIYA=
Date: Mon, 23 Oct 2023 07:50:11 +0000
Message-ID: <d39fbafba3d85a3fbbee02916a6b693086eebced.camel@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
 <20231016111658.3432581-2-jouni.hogander@intel.com>
 <61677b04c028f3aa1773abce175a07106d8255fa.camel@coelho.fi>
In-Reply-To: <61677b04c028f3aa1773abce175a07106d8255fa.camel@coelho.fi>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH3PR11MB7180:EE_
x-ms-office365-filtering-correlation-id: a9301bc5-b9e7-4a26-9637-08dbd39caf4e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: liz4DOB3Lven9ZmjcAJDbc9svO7LIbHUDwMrEwTv3qxyHg7v+siCMk+ybdTugabmMy+lurxDSYNF7Gd0N4k8x+182pHTVJqLop3hTpNoSi/pgW7wAiL57r433TW1gv7Ph64gPNN4LBFXtmn5lZ/jQUfkuGBg7V1yN1wJeDW2Be+svHT9fejn1b5u8dDd7gBUJ1EKijEBWSf4Js0IaR4vaROtZpwpLFVf15ok20d2nnEM85t+xj4/lsSvUX71MZY5pFFj3D/8I7Wws4eh7n7tlMrEL5dM3BKUsfAR8kcmi0S33UexNSIvK7OD8HpX54ZpHHn7XW6x1BtlicY1YAbvv1RRigwek2zLuVBwZFjUBbNig1M3fZvHbhwfUS61f9yrBiJtEKLrQ8zsozppDOUTu3EepTS/v4YsXoDLdDDcpJZIvnAJnA1jT3vRBC73KXflj0pwEjPupSVbN32RYHJUHYG55y497KFw0nk/9/rl3RtSnksyiy4LpiP5A6PXOgIhMYaNIxc9Fg7Vn0+XUpYJNOfy/tXS9adT0lxzZ1B2xrwKr4nPrzRShrBuTYkiFJFGPhdA55bIWP0kpfNTYTLUbqA/z3N3nUPIhRAV2jlt9BOTzpcA92gh/cyAu7on2Po6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(39860400002)(366004)(396003)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(26005)(8936002)(8676002)(38100700002)(5660300002)(41300700001)(38070700009)(82960400001)(36756003)(86362001)(122000001)(66574015)(83380400001)(6506007)(6486002)(110136005)(6512007)(66556008)(66446008)(64756008)(66476007)(478600001)(91956017)(76116006)(316002)(66946007)(4001150100001)(2906002)(2616005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V3BURzVCMzRFd3U4L1JDRm1OejQrdGh6Ty9kUFJwcVJUUFI1ZVB5Ykw3NXdE?=
 =?utf-8?B?dit3dTZwN25nS0hHV0U1VEdyVkJzYTJkR1VMSEJkWWwydXJjaW1wK2N3cDBz?=
 =?utf-8?B?MTlIT2UxdVkzZ0xCOU9jSzBLM25JMmFZSllCeDZrVGgrQXIxMXB4Nm9Yemxl?=
 =?utf-8?B?NDlGWEVyRyt5cWthLzI3L2Z6cUZteFpXVGdxM0RIMERkeWVVUnl5SEUvMzlW?=
 =?utf-8?B?aHoveVRjT3FndXY4aldyaFdqSnBWYnJ2aVYwbG1HczRNanIxcnFWTXdVai9I?=
 =?utf-8?B?anM1ZzdxSjVUeXp2ZE5wTThUdE1JbzJLNThhT2krYjMxZlhzMkIyeml4Y2RT?=
 =?utf-8?B?akF2bElyUmo3TVkwQ2k5cC8raThIcDNNdWV2YVloUk93SjczeFQ4Vi9VRncy?=
 =?utf-8?B?blJKeG5nZ0ZYS2N3cHBmNkZQUDQ5M0NyZHJzMSttKytpOWlxajUzQmNkWTNF?=
 =?utf-8?B?N1NjMU9wektZcTczaGg1YlR2OVl5blhPOTNXRC9tREtvRDhlZ2xNNzdwbVJJ?=
 =?utf-8?B?OU04T0ZKZDJMMlZqS1ZTaGRYc0NNTWgzWk5hLzViSkkybWt1VE5TQ01HSnl3?=
 =?utf-8?B?YnRFNXJVamlqSUZpTmVScGlRTU91Mmo0d2plVEZDRkVPU1Fxb0JmZ0VBVWJL?=
 =?utf-8?B?MStYZGJQUWNLMmhQWFZNcEg5eHEzNzRldGRDRjYzZ3VMWnZSa2ZDcENsbWxL?=
 =?utf-8?B?eWRTelN3dXQxZXZON0ZlcGhqVnl3NW1mRS8yUi96cFRRdWNBd2QwdDNSdlJz?=
 =?utf-8?B?bStUSndDdDJEbmVpQVh3c0JjU0RldHlYbno5K1lTeC9VVEZucFdUQUFPVUla?=
 =?utf-8?B?NFMyV1prcHVJWWluV1ZQU1NDTCs2bjRBS2dHT0k0d0tXVCtjZ3JUM1Vld1di?=
 =?utf-8?B?VlpXQkYvLzNLaDVrY20zTEU2em1zYVJlb0xqeEtDVG1rc1dCMG0rSlQ2MXBK?=
 =?utf-8?B?SnNJQWlrZVBiOUlCa296MmFLVDlob2FZbzFHaSswaGx3NHdaQVVJSEt5a3l0?=
 =?utf-8?B?Y0psTHdOdHFsY0krQUVlTlQrY09SemVFK3grSitHdTZrVmlLalVCc09mMWZR?=
 =?utf-8?B?dzJ4c05sVW5lMVFMM2FCWURNbGYvVHFXL3BRdmNiS2RqVVF5TGhlTU5ZdWty?=
 =?utf-8?B?UlFFZ3pCemNmdlVVS0FPd2twZVlsMzk4bmpCRXdibmFwQlEyY3h2R2pEQzdq?=
 =?utf-8?B?Rk5LOEZ6MC9WcVl4QmR5a283bVd6a3hIcjRSQUI4eWJVY1JBRDN2aldiUEN1?=
 =?utf-8?B?U2trV2RrVTlJV1NveXpSKzdBb093UTZkdTlOL29tVGMzVXh0ZzRJSEZpM1dR?=
 =?utf-8?B?ejI5V2tmbDZNdmVlVGFHbURyd0lOclo4VVBuRUxqcGY4OUFVU3g1MnZ1dkNR?=
 =?utf-8?B?S0lyUWh6N0FRcUpwdzZDVkR5d3JRL2hzTkwrRGVHMFNvMmVJdFl6N1V4Rk8r?=
 =?utf-8?B?YlFjUVhsSGtPbG5kb1N0RVowVGV2RFVMbG0yT0sra3JHbHRHTDVLU1pSaEJz?=
 =?utf-8?B?emEzNDB4UzZ2dUZGRkllaGQzcnp4dEFVWmN1ZjBub3dpWC9lL0xuNmsxWTJv?=
 =?utf-8?B?UG10cklDamFmUXBsSUZaNjRFUmxoNDZaZFNFYnQvc2ZhSVZYNmlwejVVU3A0?=
 =?utf-8?B?aEMwVG9CRVh5OWxXNWpSKy9JMDVKR3JEbUhMdmkvSkJhS3pFeUVjdFRoa011?=
 =?utf-8?B?NWZrS2FxNTFGSmNZMlo3MXlEeHBNSXhsUXNFU1ZmZnpsQVh3M2xYWUFwM0Z4?=
 =?utf-8?B?bFhJOWx3N09RajhTZ0dhZVkvMDNJOUhaaFNEQjNuUm5LTWIzREI4bm8xbWE4?=
 =?utf-8?B?dnk0OFFmR0FWU2VraE5HUmpQYXV0UE4wbHowMWlJbzN3WWVEcElVcjU0VndG?=
 =?utf-8?B?Q25TbWd0MHIzbzJUWjJRQ0FBS3RLOE9RcUttOU9ycVlnRWZGczZkeXA4MW9i?=
 =?utf-8?B?OG1ZRlpSanBKUUFFUWEvYXcrWjcwRFNGZmFwNGNBNEVkRktCNHZhSUNBZDFS?=
 =?utf-8?B?YkMxNFdMUGdDMUZldktuSjVtVmIweTFOMlVybTNmZ3B0azFGQnlBYW8rQTZK?=
 =?utf-8?B?cHVOTWRqdUVHcTZ1dk9wNHcyMkdWa1dialpBczVIOTlBeEVadzBiWmY4UkxM?=
 =?utf-8?B?dnRlN3RjMnpjZm1lZUZyMnNIVktzamQ4eG9uV3JJMnpMNUNHSm1WK1JwVEJR?=
 =?utf-8?B?b3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <14385EDA33BBB241A1869ABBC0C14B65@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9301bc5-b9e7-4a26-9637-08dbd39caf4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2023 07:50:11.2064 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JvYY9vY97ee9RHthgEwyKLse2jilRP/aX6N1P26ETHLBc6VpPEzbqh+luc7PK26gpJRPEfgftxBkCilMFMpbgKrbXrN2GMab4jF0dgJUCvw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7180
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 01/24] drm/i915/display: Add framework to
 add parameters specific to display
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

T24gU3VuLCAyMDIzLTEwLTIyIGF0IDIwOjQ1ICswMzAwLCBMdWNhIENvZWxobyB3cm90ZToNCj4g
T24gTW9uLCAyMDIzLTEwLTE2IGF0IDE0OjE2ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+ID4gQ3VycmVudGx5IGFsbCBtb2R1bGUgcGFyYW1ldGVycyBhcmUgaGFuZGxlZCBieSBpOTE1
X3BhcmFtLmMvaC4gVGhpcw0KPiA+IGlzIGEgcHJvYmxlbSBmb3IgZGlzcGxheSBwYXJhbWV0ZXJz
IHdoZW4gWGUgZHJpdmVyIGlzIHVzZWQuIEFkZA0KPiA+IGEgbWVjaGFuaXNtIHRvIGFkZCBwYXJh
bWV0ZXJzIHNwZWNpZmljIHRvIHRoZSBkaXNwbGF5LiBUaGlzIGlzDQo+ID4gbWFpbmx5DQo+ID4g
Y29waWVkIGZyb20gaTkxNV9bZGVidWdmc11fcGFyYW1zLltjaF0uIFBhcmFtZXRlcnMgYXJlIG5v
dCB5ZXQNCj4gPiBtb3ZlZC4gVGhpcw0KPiA+IGlzIGRvbmUgYnkgc3Vic2VxdWVudCBwYXRjaGVz
Lg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5k
ZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiANCj4gTG9va3MgZ2VuZXJhbGx5IGdvb2QsIGJ1dCBJ
IGhhdmUgYSBjb3VwbGUgb2YgY29tbWVudHM6DQoNClRoYW5rIHlvdSBMdWNhIGZvciB5b3VyIGNv
bW1lbnRzLiBQbGVhc2UgY2hlY2sgbXkgcmVzcG9uc2VzIGJlbG93Lg0KDQo+IA0KPiBbLi4uXQ0K
PiA+IGRpZmYgLS1naXQNCj4gPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9kZWJ1Z2ZzX3BhcmFtcy5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmc19wYXJhbXMuaA0KPiA+IG5ldyBmaWxlIG1vZGUgMTAw
NjQ0DQo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi4wZTMzZjRlOTBkZGMNCj4gPiAtLS0gL2Rldi9u
dWxsDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X2RlYnVnZnNfcGFyYW1zLmgNCj4gPiBAQCAtMCwwICsxLDE0IEBADQo+ID4gKy8qIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8NCj4gPiArLyoNCj4gPiArICogQ29weXJpZ2h0IMKpIDIw
MjMgSW50ZWwgQ29ycG9yYXRpb24NCj4gPiArICovDQo+ID4gKw0KPiA+ICsjaWZuZGVmIF9fSU5U
RUxfRElTUExBWV9ERUJVR0ZTX1BBUkFNU19fDQo+ID4gKyNkZWZpbmUgX19JTlRFTF9ESVNQTEFZ
X0RFQlVHRlNfUEFSQU1TX18NCj4gPiArDQo+ID4gK3N0cnVjdCBkZW50cnk7DQo+IA0KPiBJdCBk
b2Vzbid0IHNlZW0gbGlrZSB5b3UgbmVlZCBkZW50cnkgaGVyZS4uLg0KDQpZZWFoLCBpdCBzZWVt
cy4gSSB3aWxsIGRyb3AgaXQuDQoNCj4gDQo+IA0KPiA+ICtzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZTsNCj4gPiArDQo+ID4gK3ZvaWQgaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzX3BhcmFtcyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7DQo+ID4gKw0KPiA+ICsjZW5kaWYgLyogX19JTlRFTF9E
SVNQTEFZX0RFQlVHRlNfUEFSQU1TX18gKi8NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jDQo+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMNCj4gPiBpbmRleCAyYjFl
YzIzYmE5YzMuLmU4MDg0MmQxZTdjNyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMNCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMNCj4gPiBAQCAtMTIsNiAr
MTIsNyBAQA0KPiA+IMKgI2luY2x1ZGUgImludGVsX2RlLmgiDQo+ID4gwqAjaW5jbHVkZSAiaW50
ZWxfZGlzcGxheS5oIg0KPiA+IMKgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfZGV2aWNlLmgiDQo+
ID4gKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3BhcmFtcy5oIg0KPiA+IMKgI2luY2x1ZGUgImlu
dGVsX2Rpc3BsYXlfcG93ZXIuaCINCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3JlZ19k
ZWZzLmgiDQo+ID4gwqAjaW5jbHVkZSAiaW50ZWxfZmJjLmgiDQo+ID4gQEAgLTkzNyw2ICs5Mzgs
MTMgQEAgdm9pZCBpbnRlbF9kaXNwbGF5X2RldmljZV9wcm9iZShzdHJ1Y3QNCj4gPiBkcm1faTkx
NV9wcml2YXRlICppOTE1KQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgRElT
UExBWV9SVU5USU1FX0lORk8oaTkxNSktPmlwLnJlbCA9IHJlbDsNCj4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoERJU1BMQVlfUlVOVElNRV9JTkZPKGk5MTUpLT5pcC5zdGVwID0g
c3RlcDsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgfQ0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqBp
bnRlbF9kaXNwbGF5X3BhcmFtc19jb3B5KCZpOTE1LT5kaXNwbGF5LnBhcmFtcyk7DQo+ID4gK30N
Cj4gPiArDQo+ID4gK3ZvaWQgaW50ZWxfZGlzcGxheV9kZXZpY2VfcmVtb3ZlKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQ0KPiA+ICt7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZGlz
cGxheV9wYXJhbXNfZnJlZSgmaTkxNS0+ZGlzcGxheS5wYXJhbXMpOw0KPiA+IMKgfQ0KPiA+IA0K
PiANCj4gV2h5IGNhbid0IHlvdSBqdXN0IHN0b3JlIHRoZSBwYXJhbWV0ZXJzIGFzIG1vZHVsZSBn
bG9iYWxzPyBUaGV5IGFyZQ0KPiBhbHdheXMgYXNzb2NpYXRlZCB3aXRoIHRoZSBtb2R1bGUgYW55
d2F5LsKgIFRoZW4geW91IGRvbid0IG5lZWQgdG8NCj4gd29ycnkNCj4gYWJvdXQgdGhlIGxpZmV0
aW1lLg0KDQpUaGVzZSBhcmUgZGV2aWNlIHBhcmFtZXRlcnMuIFZhbHVlcyBmcm9tIGVxdWl2YWxl
bnQgbW9kdWxlIHBhcmFtZXRlcnMNCmFyZSBjb3BpZWQgd2hlbiBwcm9iZWQuIENhbiBiZSBsYXRl
ciBtb2RpZmllZCB2aWEgZGVidWdmcyB3aXRob3V0DQp0b3VjaGluZyBvdGhlciBkZXZpY2VzIHBh
cmFtZXRlcnMuDQoNCj4gDQo+IA0KPiBbLi4uXQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmgNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wYXJhbXMuaA0KPiA+IG5ldyBmaWxl
IG1vZGUgMTAwNjQ0DQo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi4xYjM0NzM2NTk4OGMNCj4gPiAt
LS0gL2Rldi9udWxsDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3BhcmFtcy5oDQo+ID4gQEAgLTAsMCArMSwzNCBAQA0KPiA+ICsvLyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogTUlUDQo+ID4gKy8qDQo+ID4gKyAqIENvcHlyaWdodCDCqSAyMDIz
IEludGVsIENvcnBvcmF0aW9uDQo+ID4gKyAqLw0KPiA+ICsNCj4gPiArI2lmbmRlZiBfSU5URUxf
RElTUExBWV9QQVJBTVNfSF8NCj4gPiArI2RlZmluZSBfSU5URUxfRElTUExBWV9QQVJBTVNfSF8N
Cj4gPiArDQo+ID4gK3N0cnVjdCBkcm1fcHJpbnRlcjsNCj4gPiArDQo+ID4gKy8qDQo+ID4gKyAq
IEludm9rZSBwYXJhbSwgYSBmdW5jdGlvbi1saWtlIG1hY3JvLCBmb3IgZWFjaCBpbnRlbCBkaXNw
bGF5DQo+ID4gcGFyYW0sIHdpdGgNCj4gPiArICogYXJndW1lbnRzOg0KPiA+ICsgKg0KPiA+ICsg
KiBwYXJhbSh0eXBlLCBuYW1lLCB2YWx1ZSwgbW9kZSkNCj4gPiArICoNCj4gPiArICogdHlwZTog
cGFyYW1ldGVyIHR5cGUsIG9uZSBvZiB7Ym9vbCwgaW50LCB1bnNpZ25lZCBpbnQsIHVuc2lnbmVk
DQo+ID4gbG9uZywgY2hhciAqfQ0KPiA+ICsgKiBuYW1lOiBuYW1lIG9mIHRoZSBwYXJhbWV0ZXIN
Cj4gPiArICogdmFsdWU6IGluaXRpYWwvZGVmYXVsdCB2YWx1ZSBvZiB0aGUgcGFyYW1ldGVyDQo+
ID4gKyAqIG1vZGU6IGRlYnVnZnMgZmlsZSBwZXJtaXNzaW9ucywgb25lIG9mIHswNDAwLCAwNjAw
LCAwfSwgdXNlIDANCj4gPiB0byBub3QgY3JlYXRlDQo+ID4gKyAqwqDCoMKgwqDCoMKgIGRlYnVn
ZnMgZmlsZQ0KPiA+ICsgKi8NCj4gPiArI2RlZmluZSBJTlRFTF9ESVNQTEFZX1BBUkFNU19GT1Jf
RUFDSChwYXJhbSkNCj4gDQo+IEkgZG9uJ3QgZ2V0IHRoaXMuwqAgSGVyZSB5b3UgY3JlYXRlIGEg
bWFjcm8gdGhhdCBleHBhbmRzIHRvIG5vdGhpbmcuLi4NCg0KSSB3YW50ZWQgdG8gc3BsaXQgdGhl
IHBhdGNoIHNldCBpbiBhIHdheSB0aGF0IGZpcnN0IHRoaXMgZnJhbWV3b3JrIGlzDQppbnRyb2R1
Y2VkIGFuZCBvbmx5IGFmdGVyIHRoYXQgcGFyYW1ldGVycyBhcmUgYWRkZWQvbW92ZWQgb25lIGJ5
IG9uZS4gSQ0Kc3RpbGwgbmVlZCB0byBoYXZlIElOVEVMX0RJU1BMQVlfUEFSQU1TX0ZPUl9FQUNI
IGRlZmluZWQgdG8gYXZvaWQgYnVpbGQNCmZhaWx1cmUuIElmIHlvdSBsb29rIGF0IHBhdGNoIDAz
LzI0IHlvdSBzZWUgd2hlbiBmaXJzdCBwYXJhbWV0ZXIgaXMNCmFkZGVkIHRoaXMgZ2V0cyBhczoN
Cg0KI2RlZmluZSBJTlRFTF9ESVNQTEFZX1BBUkFNU19GT1JfRUFDSChwYXJhbSkgXA0KCXBhcmFt
KGludCwgZW5hYmxlX2ZiYywgLTEsIDA2MDApDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCj4g
DQoNCj4gPiArDQo+ID4gKyNkZWZpbmUgTUVNQkVSKFQsIG1lbWJlciwgLi4uKSBUIG1lbWJlcjsN
Cj4gPiArc3RydWN0IGludGVsX2Rpc3BsYXlfcGFyYW1zIHsNCj4gPiArwqDCoMKgwqDCoMKgwqBJ
TlRFTF9ESVNQTEFZX1BBUkFNU19GT1JfRUFDSChNRU1CRVIpOw0KPiANCj4gLi4uc28gZG9lc24n
dCB0aGlzIGJlY29tZSBlbXB0eSBpbiB0aGUgZW5kPw0KPiANCj4gWy4uLl0NCj4gDQo+IC0tDQo+
IENoZWVycywNCj4gTHVjYS4NCg0K
