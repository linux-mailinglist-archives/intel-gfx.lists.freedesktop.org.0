Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E6D307F73
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 21:23:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013246EA15;
	Thu, 28 Jan 2021 20:23:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79E956EA15
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 20:23:12 +0000 (UTC)
IronPort-SDR: 0uzW/90TpEpbs0a3mIBvWxAV52uCOX7z6Q089PTVVM4dwwSwRjHy94xvgfg28w20zAwIGxP2/4
 vYuV8S2WB3nA==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="265139185"
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="265139185"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 12:23:12 -0800
IronPort-SDR: hwmriBuEZrYaQHvSm+B1anPDCgnFhdVuAQWN+DFqPrH1NVs7/yYfk67kW26sEiNSmsHG8mMm8d
 aVk2wkPkppAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="411127228"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Jan 2021 12:23:11 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 28 Jan 2021 12:23:10 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 28 Jan 2021 12:23:10 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 28 Jan 2021 12:23:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dQUzISraoC1BxCnE885XCDBB97IiShsV3yV9yXK3q6IOfXn4jhyvPkmzfHVdrzXk1n6iM4RwY/qLjZ/k+bUcMXN00ugTR0/bJR7jxPbDAxzYiFCeFxSSxIiGvNp+7QkKhchDKPDT0h2FsA07rBasE7SmlwbJqo9updMKsumpJKmHBeji+ZOs7IBl6kS+AD14CJozdrZTfZfQkMnfrQKFU0R/Y1tA4t3cBePumbPuRFIkES1/F54vJCk2EDPQQE36UrCNyreS+GMxBs+96gfzF5tXSacOH3dxh41sOVZTxqUQZbikclURUxKo1d2WVZI3Wl6dDnY2wwjjkBAIy65fPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KMQQiIBmbJxjNnsNG6K6KXYl/sku6UKskuX9JdxFUjU=;
 b=N7xmyBlm26R4+KQx1TZWfq4tkmxFEf43c+rBxS1U6qoR/4xjwUS6S6/ZGeXFYG+C6uhOxbdUY4mNJ8boG0OQq8/IU3bvv+/jLpVh441+1zju7EX/vuNGBG7p7NIH0s1zbt7mHsLn10Ue7hhvoIFVd8hODdx32nyEcoAwynIT6n5SsMyLoxGmn2tL0Or6/5pY9P7sulz8LBwbg5oZIGSsNpM1qhOQfAPt0UGudagz2B9WmDaNipa4QsbljJvS6TxA0cHpxhFdHJLbmBCWyyE1mqKRffHRfw30nDODVTJeO96Fe6ht8dBBFObpdUOebPONy88ZYFkanAq246W5BTxwbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KMQQiIBmbJxjNnsNG6K6KXYl/sku6UKskuX9JdxFUjU=;
 b=XQlKxbV2sSvrAptnTDGtfKiKavOjFw7Fx17whwDquNAWc0x6RBH03roZGisWapC705Ku4hY5iAAkotSzGwxV0ljpcG7+oPuJP/e8pBm4ZJTAv9Bz+Jbx1gEY77y9AUX116hdp8+FpMPxkKF1O7oeKTLc/Px3PjSw8HzeFEGz0ms=
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by MWHPR11MB1534.namprd11.prod.outlook.com (2603:10b6:301:c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.15; Thu, 28 Jan
 2021 20:22:43 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::94eb:c915:5a57:e7bc]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::94eb:c915:5a57:e7bc%6]) with mapi id 15.20.3805.019; Thu, 28 Jan 2021
 20:22:43 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dp: Prevent setting the LTTPR LT
 mode if no LTTPRs are detected
Thread-Index: AQHW7cg5wShWjI/ZqUOWJ3di4s1TQKouglIAgAORC4CAC3e8gA==
Date: Thu, 28 Jan 2021 20:22:43 +0000
Message-ID: <af192ec6ed6816a93f1964fd352080c96afd8ea8.camel@intel.com>
References: <20210118183143.1145707-1-imre.deak@intel.com>
 <238262b79c8e6367a1f66d5950bd334d9e31c188.camel@intel.com>
 <20210121131519.GB1443302@ideak-desk.fi.intel.com>
In-Reply-To: <20210121131519.GB1443302@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.207]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 52a57cae-ea29-44cb-3ac3-08d8c3ca77e4
x-ms-traffictypediagnostic: MWHPR11MB1534:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB15348C17D42B12E28ED64B4989BA9@MWHPR11MB1534.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ve55w680UOwEqYtKEncb3yNnq+9PWWJPpoXdnch+qkAAy/8M+e6JoshH9xNMzVvGU18dejx2/8av6g3Viu9Gg6optGA9/3jL2PwumIuiKc7IJ+MByVfjiE+HdV53GGC3ViZhu8XDiXn7hwySXY9AtmZtBjMzG8dgElNjae0pDAMl128izmv/Va9qIfrkN1WXpHdKX2qmsZUsLdpxOWztQ1sXRdbWSB7zYOUPOhrnNbRn0qp1GMEbu9XzCqKi7pJoi1zg/c8k4CxsIEyDlar1xNbnZEpgghOQvAPNrDsFsRKAudJ/lingjltkLApVnoFVN4085uHjLn2dGqBn7973KYymp0uy3f85MbRAB6597KIInimMWt8BsWFWZ4ElHURYEGZs1SHYOwDTjiNR1U1w9Do3TDEcdKhvaMxq13AXy3VaSSPyK3JdTSWg9703uzEfiSrNZ53Bik7U8QsaceFrXtvLkSOlCKg5z0qGFf8pRvHrvb0U1s8ESq/bsMZr6F+lcdzyjo+wnEf1gOp5gJguwNvwDZ656oJb/kSU+a23k8icmqFJ/k9NfggHURNyyB17
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(346002)(136003)(366004)(376002)(39860400002)(8676002)(76116006)(26005)(66946007)(2906002)(2616005)(6636002)(66476007)(966005)(5660300002)(316002)(83380400001)(66446008)(64756008)(8936002)(66556008)(37006003)(186003)(6512007)(86362001)(71200400001)(6486002)(4326008)(478600001)(6862004)(6506007)(36756003)(91956017);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?MnYxUmdUOWVhNE14aGoxUnJyNkNzbDJxNzJYd2JFenlBQVRGVkNvd1VnSTdz?=
 =?utf-8?B?OUIwT3A1cUpiZVZpcVVTeHFBb3NVNUl3MDZrNEQ2RlNyS2Y1Q1J2dzlIOTJM?=
 =?utf-8?B?Uk5icFovRWE1ZThvbjFYNStNYUlXWkRWc3hsQVAwemcreGV0UVEwYWlyY2Rq?=
 =?utf-8?B?L01JcUROTHA2UVJKM2pWTFNFaTJWMVJsZklDMXdrZlJkQ1lXOTliNnJvSmJk?=
 =?utf-8?B?Uy9qZTZCTkNwQWs5NVd5MW1QVjA0VlVvUU1IWGovTytiRzBBUmxtdHdndUxJ?=
 =?utf-8?B?VEsybFUwdEpQdmhaKzBiL0NVVUdUd0lyZU1UTUZUcG9HZ1I3MS90RHhpdUNp?=
 =?utf-8?B?Lzh1QmVDai96cHhQOFRzQUVCaDR6K0FnS0dOdTdMUUZ6c0t0NlBMK2NneVBv?=
 =?utf-8?B?dWtFWktSM1BjZjJIdEJtaVJUbm9kOUxqR2l1Q05kVC9nUk1KV0lpYlU2NWVJ?=
 =?utf-8?B?WDhGYmZKSzl5WnEvWEF0WklUZ2Z5NlVRUkR4bW03YnVJWEFkVmkydmlCZ2tR?=
 =?utf-8?B?M1IyVnMraEF0bzdyREplNldFT1ZQRFZTQ2svaHRTaEg2OTV4dFJOcThZNzN6?=
 =?utf-8?B?MUhzaWlFQmQ5R0FDdllwbGw1c3NZREdZM2Uxc1ppaEEwcnpDYW1TV1hVcDNr?=
 =?utf-8?B?djBWTktQU2IyWTEyRTNmaVArRWxyUDNubTlCWERFVjVoZ1RCVGN2ZHR4L1FG?=
 =?utf-8?B?YzdQNG5sKzRXdCtORElPdzM5MTltb0NzR3ZFM0YvOVFweG01cXlhazRnemFG?=
 =?utf-8?B?VEdHY252cisxR2trYzI4alJnandZcmpQMzl3NzJFOVMxNVlDZ0pSU2lzczIv?=
 =?utf-8?B?eUMrYnc0NStlcU1LSmxHVEdnbU1DQk1DMlZ4azQ1RUFualpLUVMvaHJMV2Fj?=
 =?utf-8?B?eHVtMTYvWlVzVk1RNFc2LzVha1NmV01UNUVrTllkR25SZkFwejR3UU50QjVY?=
 =?utf-8?B?K1JvQm9mTnlSYit1elZiQ0hIUDQyekpPcCtYdVYva08rTzc4MTRkdGlxYmR5?=
 =?utf-8?B?aXAyN2hjZkE1OWtiaUJnbk96QmgwaE1KTVM5c3JmYzhwUnVFczk2cWhRaHQ3?=
 =?utf-8?B?cWtWMjRIODN3SDlxYVl3dWJoaDZXdEhlaEVJVkJXYW90d05xS28vWXJlcXp2?=
 =?utf-8?B?bzFseGRUWjc1VCswWEFqL1A5UlM3QVRFNzlpdWJ1OUdPTXRkL08va1hhUit2?=
 =?utf-8?B?RkoyS2FMdnZuOWhzcWFMK05iTlVhY1QzQkVYWmNDeHVhdTJBWGNZc2xTZ2Zj?=
 =?utf-8?B?SGpwQzgxQ2Jjc3BwNVRSUFRTTlBaeW1NWWJvb09WcFY3TjJJWG9qK2hKNkVu?=
 =?utf-8?B?cmlaNFlUamV4OXFKSFlGWXFsdVRINWRPdHFZWEJCdW5weU0zYTJlK053SCtk?=
 =?utf-8?B?LzBqZngyT2xEOG9JYTNWOHUrT3dwaVRTcmROdHJPV0tuYUJJUzZ6THlFZTA0?=
 =?utf-8?B?TTZvWU5XcEc1Y1pzVkhrZEZ5ZC9hR1VUQjFDZDR3PT0=?=
Content-ID: <5E0C8131EB7EE14099C924FF445A9EC1@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52a57cae-ea29-44cb-3ac3-08d8c3ca77e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2021 20:22:43.4135 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: do22UMbwVWzSu9A59xu+voS/y3xqS0hE3ahnqLDvxHbDhiKd/1ESJh3JyViZQyrEWiqaTYmgkvtolIjJ8zHN1LNDpKvVefiL9ZMr0Um+FwU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1534
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Prevent setting the LTTPR LT
 mode if no LTTPRs are detected
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIxLTAxLTIxIGF0IDE1OjE1ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFR1ZSwgSmFuIDE5LCAyMDIxIGF0IDA4OjQ3OjI1QU0gKzAyMDAsIEFsbWFoYWxsYXd5LCBLaGFs
ZWQgd3JvdGU6DQo+ID4gT24gTW9uLCAyMDIxLTAxLTE4IGF0IDIwOjMxICswMjAwLCBJbXJlIERl
YWsgd3JvdGU6DQo+ID4gPiBBdG0sIHRoZSBkcml2ZXIgcHJvZ3JhbXMgZXhwbGljaXRseSB0aGUg
ZGVmYXVsdCB0cmFuc3BhcmVudCBsaW5rDQo+ID4gPiB0cmFpbmluZyBtb2RlICgweDU1KSB0byBE
UF9QSFlfUkVQRUFURVJfTU9ERSBldmVuIGlmIG5vIExUVFBScw0KPiA+ID4gYXJlDQo+ID4gPiBk
ZXRlY3RlZC4NCj4gPiA+IA0KPiA+ID4gVGhpcyBjb25mb3JtcyB0byB0aGUgc3BlYyAoMy42LjYu
MSk6DQo+ID4gPiAiRFAgdXBzdHJlYW0gZGV2aWNlcyB0aGF0IGRvIG5vdCBlbmFibGUgdGhlIE5v
bi10cmFuc3BhcmVudCBtb2RlDQo+ID4gPiBvZg0KPiA+ID4gIExUVFBScyBzaGFsbCBwcm9ncmFt
IHRoZSBQSFlfUkVQRUFURVJfTU9ERSByZWdpc3RlciAoRFBDRA0KPiA+ID4gQWRkcmVzcw0KPiA+
ID4gIEYwMDAzaCkgdG8gNTVoIChkZWZhdWx0KSBwcmlvciB0byBsaW5rIHRyYWluaW5nIg0KPiA+
ID4gDQo+ID4gPiBob3dldmVyIHdyaXRpbmcgdGhlIGRlZmF1bHQgdmFsdWUgdG8gdGhpcyBEUENE
IHJlZ2lzdGVyIHNlZW1zIHRvDQo+ID4gPiBjYXVzZQ0KPiA+ID4gb2NjYXNpb25hbCBsaW5rIHRy
YWluaW5nIGVycm9ycyBhdCBsZWFzdCBmb3IgYSBERUxMIFdEMTlUQiBUQlQNCj4gPiA+IGRvY2ss
DQo+ID4gPiB3aGVuDQo+ID4gPiBubyBMVFRQUnMgYXJlIGRldGVjdGVkLg0KPiA+IA0KPiA+IEkg
dGhpbmsgdGhpcyBwYXRjaCBpcyBtb3JlIGFsaWduZWQgd2l0aDogRFAgdjIuMCBTQ1Igb24gOGIv
MTBiIERQVFgNCj4gPiBhbmQNCj4gPiBMVFRQUiBSZXF1aXJlbWVudHMgVXBkYXRlIHRvIFNlY3Rp
b24gMy42DQo+ID4gDQo+ID4gVGhlIFNDUiBtYWRlIGl0IGNsZWFyIHRoYXQgd2Ugb25seSBuZWVk
IHRvIHByb2dyYW0NCj4gPiBQSFlfUkVQRUFURVJfTU9ERSB0bw0KPiA+IHRyYW5zcGFyZW50IG1v
ZGUgaWYgd2UgZGV0ZWN0IExUVFBSLg0KPiANCj4gWWVzLCB0aGUgdXBkYXRlZCB2ZXJzaW9uIGlz
IGNsZWFyZXIgaW4gdGhpcy4gSW4gYW55IGNhc2UgSSBkb24ndCBzZWUNCj4gYW55DQo+IHJlYXNv
biBub3cgdG8gc2V0IHRoZSBkZWZhdWx0IG1vZGUgaWYgdGhlcmUncyBubyBMVFRQUiBvbiB0aGUg
bGluay4NCj4gDQo+ID4gUXVvdGluZyBmcm9tIFNDUjoNCj4gPiDigJxBIERQVFggc3VwcG9ydGlu
ZyAzLjItbXMgQVVYIFJlcGx5IFRpbWVvdXQgc2hhbGwgaXNzdWUgQVVYIHJlYWQNCj4gPiB0cmFu
c2FjdGlvbiB0byBMVFRQUiBEUENEIENhcGFiaWxpdHkgYW5kIElEIEZpZWxkIGF0IERQQ0QgRjAw
MDBoIH4NCj4gPiBGMDAwNyAocmVmZXIgdG8gU2VjdGlvbiAzLjYuNC4xKSBhcyB0aGUgZmlyc3Qg
QVVYIHRyYW5zYWN0aW9uIHVwb24NCj4gPiBIUEQNCj4gPiBzaWduYWwgYXNzZXJ0aW9uIGRldGVj
dGlvbiAoMSkgdG8gZGV0ZXJtaW5lIHdoZXRoZXIgTFRUUFLigJlzIGFyZQ0KPiA+IHByZXNlbnQN
Cj4gPiBpbiB0aGUgbGluayBiZXR3ZWVuIGl0c2VsZiBhbmQgdGhlIGRvd25zdHJlYW0gRFBSWCBh
bmQgKDIpIHRvIHB1dA0KPiA+IHRoZQ0KPiA+IExUVFBS4oCZcywgaWYgcHJlc2VudCwgaW4gTFRU
UFIgVHJhbnNwYXJlbnQgTW9kZS7igJ0NCj4gPiANCj4gPiBBbHNvIHNlY3Rpb24gMy42LjYgdGl0
bGUgaXMgdXBkYXRlZCBhcyB0aGUgZm9sbG93aW5nIOKAnFNlY3Rpb24gMy42LjYNCj4gPiBMaW5r
IFRyYWluaW5nIGluIExUVFBSIE5vbi10cmFuc3BhcmVudCBNb2Rl4oCdLiBUaGlzIHJlZmxlY3Rz
IGl0IG9ubHkNCj4gPiByZWxldmFudCBhZnRlciB3ZSBkZXRlY3QgTFRUUFIuDQo+ID4gDQo+ID4g
SG93ZXZlciBpdCBpcyBzdGlsbCBpbnRlcmVzdGluZyB0aGF0IERlbGwgRG9jayBmYWlsZWQgYWZ0
ZXIgc2V0dGluZw0KPiA+IExUVFBSIHRvIHRyYW5zcGFyZW50IG1vZGUuDQo+IA0KPiBZZXMsIHNp
bmtzIHNob3VsZCBoYW5kbGUgd3JpdGluZyB0byB0aGlzIERQQ0QgcmVnaXN0ZXIgcmVnYXJkbGVz
cyBpZg0KPiB0aGVyZSdzIGFueSBMVFRQUiBvbiB0aGUgbGluayBvciBub3QuDQo+IA0KPiA+IFRo
YW5rIFlvdSBmb3IgeW91ciBlZmZvcnQgdG8gZW5hYmxlIExUVFBSLg0KPiA+IEtoYWxlZA0KPiA+
ID4gV3JpdGluZyB0byBEUF9QSFlfUkVQRUFURVJfTU9ERSB3aWxsIGFsc28gY2F1c2UgYW4gdW5u
ZWNlc3NhcnkNCj4gPiA+IHRpbWVvdXQNCj4gPiA+IG9uIHN5c3RlbXMgd2l0aG91dCBhbnkgTFRU
UFIuDQo+ID4gPiANCj4gPiA+IFRvIGZpeCB0aGUgYWJvdmUgdHdvIGlzc3VlcyBsZXQncyBhc3N1
bWUgdGhhdCBzZXR0aW5nIHRoZSBkZWZhdWx0DQo+ID4gPiBtb2RlDQo+ID4gPiBpcyByZWR1bmRh
bnQgd2hlbiBubyBMVFRQUnMgYXJlIGRldGVjdGVkLiBLZWVwIHRoZSBleGlzdGluZw0KPiA+ID4g
YmVoYXZpb3INCj4gPiA+IGFuZA0KPiA+ID4gcHJvZ3JhbSB0aGUgZGVmYXVsdCBtb2RlIGlmIG1v
cmUgdGhhbiA4IExUVFBScyBhcmUgZGV0ZWN0ZWQgb3IgaW4NCj4gPiA+IGNhc2UNCj4gPiA+IHRo
ZSByZWFkIGZyb20gRFBfUEhZX1JFUEVBVEVSX0NOVCByZXR1cm5zIGFuIGludmFsaWQgdmFsdWUu
DQo+ID4gPiANCj4gPiA+IFJlZmVyZW5jZXM6IA0KPiA+ID4gaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8yODAxDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBJ
bXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+ICAuLi4vZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgfCAzNiArKysrKysrKy0tLS0t
DQo+ID4gPiAtLS0tDQo+ID4gPiAtLQ0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRp
b25zKCspLCAyMSBkZWxldGlvbnMoLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdA0KPiA+ID4g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0K
PiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5p
bmcuYw0KPiA+ID4gaW5kZXggZDhjNmQ3MDU0ZDExLi5mYWQ5ZTk4NzRjN2IgMTAwNjQ0DQo+ID4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5p
bmcuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9s
aW5rX3RyYWluaW5nLmMNCj4gPiA+IEBAIC0zNCwxOCArMzQsNiBAQCBpbnRlbF9kcF9kdW1wX2xp
bmtfc3RhdHVzKGNvbnN0IHU4DQo+ID4gPiBsaW5rX3N0YXR1c1tEUF9MSU5LX1NUQVRVU19TSVpF
XSkNCj4gPiA+ICAgICAgICBsaW5rX3N0YXR1c1szXSwgbGlua19zdGF0dXNbNF0sIGxpbmtfc3Rh
dHVzWzVdKTsNCj4gPiA+ICB9DQo+ID4gPiANCj4gPiA+IC1zdGF0aWMgaW50IGludGVsX2RwX2x0
dHByX2NvdW50KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gPiAtew0KPiA+ID4gLWlu
dCBjb3VudCA9IGRybV9kcF9sdHRwcl9jb3VudChpbnRlbF9kcC0+bHR0cHJfY29tbW9uX2NhcHMp
Ow0KPiA+ID4gLQ0KPiA+ID4gLS8qDQo+ID4gPiAtICogUHJldGVuZCBubyBMVFRQUnMgaW4gY2Fz
ZSBvZiBMVFRQUiBkZXRlY3Rpb24gZXJyb3IsIG9yDQo+ID4gPiAtICogaWYgdG9vIG1hbnkgKD44
KSBMVFRQUnMgYXJlIGRldGVjdGVkLiBUaGlzIHRyYW5zbGF0ZXMgdG8NCj4gPiA+IGxpbmsNCj4g
PiA+IC0gKiB0cmFpbmluZyBpbiB0cmFuc3BhcmVudCBtb2RlLg0KPiA+ID4gLSAqLw0KPiA+ID4g
LXJldHVybiBjb3VudCA8PSAwID8gMCA6IGNvdW50Ow0KPiA+ID4gLX0NCj4gPiA+IC0NCj4gPiA+
ICBzdGF0aWMgdm9pZCBpbnRlbF9kcF9yZXNldF9sdHRwcl9jb3VudChzdHJ1Y3QgaW50ZWxfZHAN
Cj4gPiA+ICppbnRlbF9kcCkNCj4gPiA+ICB7DQo+ID4gPiAgaW50ZWxfZHAtPmx0dHByX2NvbW1v
bl9jYXBzW0RQX1BIWV9SRVBFQVRFUl9DTlQgLQ0KPiA+ID4gQEAgLTE0Miw2ICsxMzAsMTcgQEAg
aW50IGludGVsX2RwX2x0dHByX2luaXQoc3RydWN0IGludGVsX2RwDQo+ID4gPiAqaW50ZWxfZHAp
DQo+ID4gPiAgcmV0dXJuIDA7DQo+ID4gPiANCj4gPiA+ICByZXQgPSBpbnRlbF9kcF9yZWFkX2x0
dHByX2NvbW1vbl9jYXBzKGludGVsX2RwKTsNCj4gPiA+ICtpZiAoIXJldCkNCj4gPiA+ICtyZXR1
cm4gMDsNCj4gPiA+ICsNCj4gPiA+ICtsdHRwcl9jb3VudCA9IGRybV9kcF9sdHRwcl9jb3VudChp
bnRlbF9kcC0+bHR0cHJfY29tbW9uX2NhcHMpOw0KPiA+ID4gKy8qDQo+ID4gPiArICogUHJldmVu
dCBzZXR0aW5nIExUVFBSIHRyYW5zcGFyZW50IG1vZGUgZXhwbGljaXRseSBpZiBubw0KPiA+ID4g
TFRUUFJzIGFyZQ0KPiA+ID4gKyAqIGRldGVjdGVkIGFzIHRoaXMgYnJlYWtzIGxpbmsgdHJhaW5p
bmcgYXQgbGVhc3Qgb24gdGhlIERlbGwNCj4gPiA+IFdEMTlUQg0KPiA+ID4gKyAqIGRvY2suDQo+
ID4gPiArICovDQo+ID4gPiAraWYgKGx0dHByX2NvdW50ID09IDApDQo+ID4gPiArcmV0dXJuIDA7
DQo+ID4gPiANCj4gPiA+ICAvKg0KPiA+ID4gICAqIFNlZSBEUCBTdGFuZGFyZCB2Mi4wIDMuNi42
LjEuIGFib3V0IHRoZSBleHBsaWNpdCBkaXNhYmxpbmcNCj4gPiA+IG9mDQo+ID4gPiBAQCAtMTUw
LDE3ICsxNDksMTIgQEAgaW50IGludGVsX2RwX2x0dHByX2luaXQoc3RydWN0IGludGVsX2RwDQo+
ID4gPiAqaW50ZWxfZHApDQo+ID4gPiAgICovDQo+ID4gPiAgaW50ZWxfZHBfc2V0X2x0dHByX3Ry
YW5zcGFyZW50X21vZGUoaW50ZWxfZHAsIHRydWUpOw0KPiA+ID4gDQo+ID4gPiAtaWYgKCFyZXQp
DQo+ID4gPiAtcmV0dXJuIDA7DQo+ID4gPiAtDQo+ID4gPiAtbHR0cHJfY291bnQgPSBpbnRlbF9k
cF9sdHRwcl9jb3VudChpbnRlbF9kcCk7DQo+ID4gPiAtDQo+ID4gPiAgLyoNCj4gPiA+ICAgKiBJ
biBjYXNlIG9mIHVuc3VwcG9ydGVkIG51bWJlciBvZiBMVFRQUnMgb3IgZmFpbGluZyB0byBzd2l0
Y2gNCj4gPiA+IHRvDQo+ID4gPiAgICogbm9uLXRyYW5zcGFyZW50IG1vZGUgZmFsbC1iYWNrIHRv
IHRyYW5zcGFyZW50IGxpbmsgdHJhaW5pbmcNCj4gPiA+IG1vZGUsDQo+ID4gPiAgICogc3RpbGwg
dGFraW5nIGludG8gYWNjb3VudCBhbnkgTFRUUFIgY29tbW9uIGxhbmUtIHJhdGUvY291bnQNCj4g
PiA+IGxpbWl0cy4NCj4gPiA+ICAgKi8NCj4gPiA+IC1pZiAobHR0cHJfY291bnQgPT0gMCkNCj4g
PiA+ICtpZiAobHR0cHJfY291bnQgPCAwKQ0KPiA+ID4gIHJldHVybiAwOw0KPiA+ID4gDQo+ID4g
PiAgaWYgKCFpbnRlbF9kcF9zZXRfbHR0cHJfdHJhbnNwYXJlbnRfbW9kZShpbnRlbF9kcCwgZmFs
c2UpKSB7DQo+ID4gPiBAQCAtMjIyLDExICsyMTYsMTEgQEAgaW50ZWxfZHBfcGh5X2lzX2Rvd25z
dHJlYW1fb2Zfc291cmNlKHN0cnVjdA0KPiA+ID4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ID4g
ICAgICAgZW51bSBkcm1fZHBfcGh5IGRwX3BoeSkNCj4gPiA+ICB7DQo+ID4gPiAgc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gPiA+IC1pbnQg
bHR0cHJfY291bnQgPSBpbnRlbF9kcF9sdHRwcl9jb3VudChpbnRlbF9kcCk7DQo+ID4gPiAraW50
IGx0dHByX2NvdW50ID0gZHJtX2RwX2x0dHByX2NvdW50KGludGVsX2RwLQ0KPiA+ID4gPiBsdHRw
cl9jb21tb25fY2Fwcyk7DQo+ID4gPiANCj4gPiA+IC1kcm1fV0FSTl9PTl9PTkNFKCZpOTE1LT5k
cm0sIGx0dHByX2NvdW50ID09IDAgJiYgZHBfcGh5ICE9DQo+ID4gPiBEUF9QSFlfRFBSWCk7DQo+
ID4gPiArZHJtX1dBUk5fT05fT05DRSgmaTkxNS0+ZHJtLCBsdHRwcl9jb3VudCA8PSAwICYmIGRw
X3BoeSAhPQ0KPiA+ID4gRFBfUEhZX0RQUlgpOw0KPiA+ID4gDQo+ID4gPiAtcmV0dXJuIGx0dHBy
X2NvdW50ID09IDAgfHwgZHBfcGh5ID09IERQX1BIWV9MVFRQUihsdHRwcl9jb3VudCAtDQo+ID4g
PiAxKTsNCj4gPiA+ICtyZXR1cm4gbHR0cHJfY291bnQgPD0gMCB8fCBkcF9waHkgPT0gRFBfUEhZ
X0xUVFBSKGx0dHByX2NvdW50IC0NCj4gPiA+IDEpOw0KPiA+ID4gIH0NCj4gPiA+IA0KPiA+ID4g
IHN0YXRpYyB1OCBpbnRlbF9kcF9waHlfdm9sdGFnZV9tYXgoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCwNCg0KVGhhbmsgWW91IGZvciB0aGUgcGF0Y2guDQoNClJldmlld2VkLWJ5OiBLaGFsZWQg
QWxtYWhhbGxhd3kgPGtoYWxlZC5hbG1haGFsbGF3eUBpbnRlbC5jb20+DQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
