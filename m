Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62835788161
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 09:59:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FA5F10E627;
	Fri, 25 Aug 2023 07:59:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5756710E627
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 07:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692950365; x=1724486365;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mU39m0muWGUHTNPgDUHFm/ZB01VlkhX3aCYB0c7vSCQ=;
 b=MvhxQFhEysRc1CHPwI1HPFHBLm/+WHjtEm4Kxw+2mPWZC+Is2HPW55sC
 XVjCjkTqjWk1gF+oKhzTKqP/4iD5M6vlA+daYm8Br6jzXBYlc1arXyQrg
 M11wb0TmdPqxdQENN174NmxySB67LjCbthOs8sc+wB7ePi6lMXppYpmeu
 kGYASePIfSscKgyOMmw8qTe9EarfZMzBDs6z0vpiVF89ANd1TYUXQG2Z8
 WqpcJdXNVS6v5gZQWOsL4Kp2wvXDYlWP4E7HyKB0GWhAAKx8P/TY4wacY
 V8FJ5b/yGo/qcSLni362GV4aseD9qVvTAKtzEnqkeb3HofQhog5jI3Hjw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="354187510"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="354187510"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 00:59:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="984018210"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="984018210"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 25 Aug 2023 00:59:23 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 00:59:23 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 00:59:23 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 00:59:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JvUzmjChSuH5NFxGqljasOubHG03zSYi2tnsE/rYmND945VzrMJhW6Yz0SmvcXHlrGv6hyuL2m+y4bRxhejfGu//B2BZR0LW5SczGNiCRLspuGbv5ZbUg0UTN48YD6qMsIgijbEKd5PJEGNcOK0CC3jLWdtad3LwEjMEaeniv+M38pENEFpjKF+wfdmu7y5bF+hP3w0Z8yjwT977KZ5hw9rT/ZQtdhUc4kySzx3zRCtcDoBWpvMbUNH2HLlQTmnBMZ2YTfzb84UHzLFwklY2/QR58ly9xmHLiRfhVi0+5pxBV6DMUV2/rEoHNKOKxDXSN5XUOllmdbPBdA8CHuZK1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mU39m0muWGUHTNPgDUHFm/ZB01VlkhX3aCYB0c7vSCQ=;
 b=ZbcSxtAmMH1bWbMwec8WWtxc/YKMJO62s8qCEqC9W2sHjjIhFc4FoVPTpXQb3ndzGl/jPiUmFbXXyTp5A0f5+HQt9rX1RAk9fs6JzCRLtVYK4fMOgzsEDj2xByKUoHjcRF1Eg1gdN7oNWnw+vP1DqfHr7+w0aWT2aRCcVjIUc4t0mzlOS6ZMGRRo63K7mqHP2GvwSYOf9hemBynQ5Hik8jZOKHTOhBdK91MTutrREVxB8MlymadnTx3BmhBBD35fJrlqETlXOuitIgL5WzZ4NOTxfGZJ00n+gZKoFdU6GIVfSfTVJcNq0G9sPRGSNd755rA8OazBbKJuxz0nZOPM+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by SJ0PR11MB5680.namprd11.prod.outlook.com (2603:10b6:a03:305::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.29; Fri, 25 Aug
 2023 07:59:19 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::8913:a3bc:8fec:bcca]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::8913:a3bc:8fec:bcca%7]) with mapi id 15.20.6699.028; Fri, 25 Aug 2023
 07:59:19 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 2/6] drm/i915/panelreplay: Added HAS_PANEL_REPLAY()
 macro
Thread-Index: AQHZ1kJbKeuOOR0zgEGIXiJF2xM87K/5TVcAgAFaGvA=
Date: Fri, 25 Aug 2023 07:59:19 +0000
Message-ID: <BL1PR11MB5979EF03950250276B51177BF9E3A@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20230824040952.186407-1-animesh.manna@intel.com>
 <20230824040952.186407-3-animesh.manna@intel.com>
 <0745a8e13d8a8c07debf89398895e2db3579757b.camel@intel.com>
In-Reply-To: <0745a8e13d8a8c07debf89398895e2db3579757b.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|SJ0PR11MB5680:EE_
x-ms-office365-filtering-correlation-id: 728c2c69-fc62-4f49-bcbe-08dba5412fdb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VCcDuRZtxd3iADQZ/cmNlKdZqLYFezV7emO87WwMsDsdsMYzgPeYYJM6chX8UQROYYbJ9rK4T2G00AGrDI4drZ8CEZm8CZhF/L7Oh7DOQtzNGhOrBUMCMEpJt05FYg1mWwj19HyC3U0Osawt4nC6Kc+pXRPc6VRLmGbrFkxBpA2wnqG8n3iTqExFgUk2Qbo/H8r8Y4vFvIExObsCmg3mHUC4i1TojaFTzUKJjuMVOOqCPK25TN4H6hrlho0p/Gu+kQJfrMA6bOQuFXVrBiXvGRakk2pbceEdEelilIKKqor680CF7Fn7bgby4S06HtVlIAFwTMRBd/NQZgPCOaIrAqd8m9QoWErEKpDS2BMEo77Il7KTf2UZbXe9KWjVTvWt7zlwS9ypHUoDDqAGKWvqyESZzUGXQNtiiwgbevFaYJAOfCuq23cAEcY/lHikZJVq+hJFe/mXy/hJWLBHVYIu9Dp5hjoxQwtNYa+onnWdmY5CTWvcKpujfDSow/m+BNAXrmv2RQfXhD6gR8HXLN9t2+1DH72oyle2dSPjFKUGePnbp4IIz6KD/Q2PL+CMbB8CBZN5wPWGyoGe0i4JC9cNBwCJbfQe4qjF7WkAaD/ecxZS9980Dm4BrB4roVdjcwE+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(376002)(366004)(346002)(396003)(451199024)(1800799009)(186009)(82960400001)(122000001)(38070700005)(38100700002)(8676002)(4326008)(8936002)(64756008)(41300700001)(53546011)(6506007)(33656002)(316002)(66446008)(7696005)(66476007)(66556008)(110136005)(66946007)(76116006)(86362001)(71200400001)(9686003)(55016003)(26005)(478600001)(83380400001)(2906002)(52536014)(107886003)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MWxja1RKV3lieStIRUZSeHFmMWhNQjM5cENKRkJsQXNUbVFjR0hpbzA1SDZm?=
 =?utf-8?B?bEFBcDY4T1BZUG5Oai91ajYwSzZVTTBuR21oZVBsSmlhM1JueEZkTmdIRWxr?=
 =?utf-8?B?UUFQblk4S1JYVEtacTExM1E5cXlzVlBOb0pxcS9LWERIYjdYbTZoamo0V0VL?=
 =?utf-8?B?dnRoc01jS2paQTg0Q0FjZnNNbVZFTGx0WXZpNi9xVW9abXl2ZjRTNGRJKzA2?=
 =?utf-8?B?Q29DY2dxR1NBZ2R3Z3ZPV1VvbUxIU01KOXZTVDdidHpJVDNUd2RPZ2F3Q0c1?=
 =?utf-8?B?Q25qYWJ1UXdqSlJrOFB0UU1FdmNlUTZGZUdoZS9MYnVYMG1OY1l2UndxcFRG?=
 =?utf-8?B?QTJrSERka1NaZ20zU3g4cHU5OXFFc3pjaTNKSFVXcU1VQU5NeWMxR3FJQmFO?=
 =?utf-8?B?MnVhbEZXcGxFZS90M05rVEI0aCtFS1BYMThCdjBWVWRqWi81djNTQzI3eFBD?=
 =?utf-8?B?MUZDZ1FSbUdxTHpUWkwyTUxmcGlkUHhDZW9xVzBmYlJnUVl2eGZ1cHFML2Fk?=
 =?utf-8?B?eXROM0VMb2NlS3dGWmJHdmR1c3lZVnhDUGwrYW5JVWVEbGFjUkRvallVdlE5?=
 =?utf-8?B?SW1jcE9qZW9kc3BYS0Y4UWwrSFNueVpRTUFKbnIrK2Z3MUJOamxxTXc1QUk5?=
 =?utf-8?B?a3JtQ2pFNEdzQ3hjOVVhSjBjQnhTNHhpMHdZRndROCttNUNBR2VJSE1uakl1?=
 =?utf-8?B?VjdVTDlMNTN5dUQwbFJ0SWYwODBvcmwvVDlvYmFmdXIzTlR5UG5UNmNsVUdm?=
 =?utf-8?B?TE9Xc0VRT1hMbStnM2dKSmcyaWtLMW8zNlNxS3R1Umd6ZVdsSGpQVlc5dnhX?=
 =?utf-8?B?YkRGSEZjM2h6bXVIeEtEZUNjTHRtbHo1VlNVODdaWjNsU0VMZm04bjllbHRX?=
 =?utf-8?B?NWVIVmd2RFlybmM3aWRmK2lkUnFGdUhNKzFJUzJrMVNIcXlBOENxY204Ui9S?=
 =?utf-8?B?VllXVUN5SSt1ZjUzSVRGdzd1Ly9UejQvbCt5dXN2NDBETTArdG0yRWlURVp1?=
 =?utf-8?B?SS9SYVFhcFFIM3dKeWc3Si9lcFhzdEE1WmZheUZlYjZTeW45YWVQQWpYQXA0?=
 =?utf-8?B?UnY1ZU0xNVErSllPWmw3OFA3T1J2dFZkOVdCVkViMWcxaXh0Z0JqMFBVMHl1?=
 =?utf-8?B?NHBoTG9aWThVbHhEUHFGNmllWWk0Mml1bXNyZU5ZYlUyaGNqanVZL1ZkcTln?=
 =?utf-8?B?RmhkckMyeHBBaUxITitZeG1sYmFzdEpwdmVCbVFEc01ETjl6ODVuRHpzMkVX?=
 =?utf-8?B?VC9WWS9WZm0xa1RZNHZLeE1rZ21IMEhndGdkN1hDcURtSytLbTFkNHZVSVFz?=
 =?utf-8?B?dUQ3bldtR2E0UWwrYUt5ZGh6bGdCcHVDb0pMR0l0ejB5Y1FqQWVuYVRxVXpu?=
 =?utf-8?B?UFJzVzZ5ZHBLb0FUbmhLTUhPaDRSUElpOUxvakZlQmltS05iSjU0b0hwaUZx?=
 =?utf-8?B?VjNUSEhwUlJYTlRoMGVoNXBHdU4wSlJuVWVVVzRWS2E0ZXJGMVY2TDY1R01w?=
 =?utf-8?B?a09Xb1dZYWpTZ3VKMGwzTnhMY1JNN0pBd1hLc0Rvb2tUak54UlRnbjZ5VnVF?=
 =?utf-8?B?MDY4ZG1Yd1FmbGFkMm5hNFVrcWNqSzJTeVg5MG00b3hvYXR2ZURwRSt0Y2NY?=
 =?utf-8?B?R1E4UGFvZGNmZHdXK2o1YWZiZVZ5U2JrNnJzU3BHdEViVDRjelQzUkVwK2J1?=
 =?utf-8?B?aWtYYW16V0Nmc2NkVjR3ZjhUWldXV21NNlBnZFM5TWJDcHdhNSttU2t5WXBm?=
 =?utf-8?B?S0JvTldVaGQzOEZ1WXloR0NkV1NPS1lZT051dlZFUUF5eVJDT3pkbS9xOWpH?=
 =?utf-8?B?Y3FtUzFRNmlmdjVPNnowSDZ0VzJ5K1pYQ2RjMXhPT3VpUmhzWS9KK1lTYkky?=
 =?utf-8?B?eUNRYWdTUDFzZ3hiSEJFdDJoUWJteS9KR0JaZGpncUVnc2srMEpVcyt5T0ww?=
 =?utf-8?B?QVZabi9TbGZOQjA4a3VNcjdZb1BwNFNpRUJIMERyei9KaFNXOG51WjU1cHdC?=
 =?utf-8?B?VExJSkdwak1vUWxuSHF1ZXhYWUxaL0tEL0wrZUYwdHd3anBycjE3Q2JlSk95?=
 =?utf-8?B?VUtMVlRyRlozWVgyQlRTNmZvZTFvT0dyQjNIa2EvVXRWaWREbzN6NG5rZnFr?=
 =?utf-8?Q?nt39Q8j+ZoaAQ+ZqzSgYYwD8W?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 728c2c69-fc62-4f49-bcbe-08dba5412fdb
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2023 07:59:19.7180 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XeKQI+pGKKb+cpzJPImD/GgscedgMNMX8m64/U+a+tub8zQ0xsVG9kzs4tEnMFWCf8jzUcBQpqwyXiJKIUgzFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5680
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 2/6] drm/i915/panelreplay: Added
 HAS_PANEL_REPLAY() macro
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBBdWd1c3QgMjQs
IDIwMjMgNDo1MCBQTQ0KPiBUbzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwu
Y29tPjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE11cnRoeSwg
QXJ1biBSIDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2
NCAyLzZdIGRybS9pOTE1L3BhbmVscmVwbGF5OiBBZGRlZA0KPiBIQVNfUEFORUxfUkVQTEFZKCkg
bWFjcm8NCj4gDQo+IE9uIFRodSwgMjAyMy0wOC0yNCBhdCAwOTozOSArMDUzMCwgQW5pbWVzaCBN
YW5uYSB3cm90ZToNCj4gPiBQbGF0Zm9ybXMgaGF2aW5nIERpc3BsYXkgMTMgYW5kIGFib3ZlIHdp
bGwgc3VwcG9ydCBwYW5lbCByZXBsYXkNCj4gPiBmZWF0dXJlIG9mIERQIDIuMCBtb25pdG9yLiBB
ZGRlZCBhIEhBU19QQU5FTF9SRVBMQVkoKSBtYWNybyB0byBjaGVjaw0KPiA+IGZvciBwYW5lbCBy
ZXBsYXkgY2FwYWJpbGl0eS4NCj4gPg0KPiA+IHYxOiBJbml0aWFsIHZlcnNpb24uDQo+ID4gdjI6
IERJU1BMQVlfVkVSKCkgcmVtb3ZlZCBhcyBIQVNfRFAyMCgpIGlzIGhhdmluZyBwbGF0Zm9ybSBj
aGVjay4NCj4gPiBbSm91bmldDQo+ID4NCj4gPiBDYzogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5o
b2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5p
bWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmggfCAxICsNCj4gPiDCoDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaA0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+ID4gaW5kZXggODE5ODQw
MWFhNWJlLi5hYjYxNWEzMTk5ZGEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+ID4gQEAgLTYxLDYgKzYx
LDcgQEAgc3RydWN0IGRybV9wcmludGVyOw0KPiA+IMKgI2RlZmluZSBIQVNfTVNPKGk5MTUpwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKERJU1BMQVlfVkVSKGk5MTUpID49IDEy
KQ0KPiA+IMKgI2RlZmluZSBIQVNfT1ZFUkxBWShpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAoRElTUExBWV9JTkZPKGk5MTUpLQ0KPiA+ID5oYXNfb3ZlcmxheSkNCj4gPiDCoCNkZWZp
bmUgSEFTX1BTUihpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChESVNQ
TEFZX0lORk8oaTkxNSktPmhhc19wc3IpDQo+ID4gKyNkZWZpbmUgSEFTX1BBTkVMX1JFUExBWShk
ZXZfcHJpdinCoMKgwqDCoMKgKEhBU19EUDIwKGRldl9wcml2KSkNCj4gDQo+IEkgdGhpbmsgeW91
IGNhbiBkcm9wIHRoaXMgbWFjcm8gYW5kIHVzZSBIQURfRFAyMCBkaXJlY3RseS4NCg0KT2suDQoN
ClJlZ2FyZHMsDQpBbmltZXNoDQoNCj4gDQo+IEJSLA0KPiANCj4gSm91bmkgSMO2Z2FuZGVyDQo+
IA0KPiA+IMKgI2RlZmluZSBIQVNfUFNSX0hXX1RSQUNLSU5HKGk5MTUpwqDCoMKgwqDCoMKgKERJ
U1BMQVlfSU5GTyhpOTE1KS0NCj4gPiA+aGFzX3Bzcl9od190cmFja2luZykNCj4gPiDCoCNkZWZp
bmUgSEFTX1BTUjJfU0VMX0ZFVENIKGk5MTUpwqDCoMKgwqDCoMKgwqAoRElTUExBWV9WRVIoaTkx
NSkgPj0gMTIpDQo+ID4gwqAjZGVmaW5lIEhBU19TQUdWKGk5MTUpwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoChESVNQTEFZX1ZFUihpOTE1KSA+PSA5ICYmDQo+ID4gIUlTX0xQKGk5
MTUpKQ0KDQo=
