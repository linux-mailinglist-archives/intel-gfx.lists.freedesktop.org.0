Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF05259A7F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Sep 2020 18:50:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1234689FC5;
	Tue,  1 Sep 2020 16:50:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BF20891C1
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Sep 2020 16:50:50 +0000 (UTC)
IronPort-SDR: HvkZWHnce4b/JkMw1OTKgdCPx1hVIlK9oqQEimFI6r1IIUizRi+8ZIBaP+SSjk6FiDsLCjkn1G
 qz2Jq1zurB4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="158210078"
X-IronPort-AV: E=Sophos;i="5.76,379,1592895600"; 
 d="scan'208,217";a="158210078"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2020 09:50:49 -0700
IronPort-SDR: 5sL50W1zdMVjGJbKOXXFem/bFez2XbyV7oD+FMbn/WpJCbREIRZxvOKsXL6VJC8iiCuijwAks0
 PheASrMbSKFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,379,1592895600"; 
 d="scan'208,217";a="477270043"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga005.jf.intel.com with ESMTP; 01 Sep 2020 09:50:49 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Sep 2020 09:50:48 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 1 Sep 2020 09:50:47 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 1 Sep 2020 09:50:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PC8+QeIAB/JGsXCyG8OehRbu3KD5HMd6Gkeh9RmiZPBQjWOqj0Uk+Dr+2M4mgzXAnyMbt9s24kdL88OHt4nDSoOCMyidslHFzVTxQFxOXcQdZihVs7IcnMvZJivtX7l+3+MgTw8TyXtBoXI1VYiIs+4ugsxWd2G59zbyq3VGZwlgiZcsGpxxldg8V1n4NaT1op+aFA4G3+t2O571ZSp7Xr7rl4ZqX4N36p0Z5Kz2Db2WnEikfadOASM/d/DMsqE+rm0L06Yf+Q5KtFt3Z+KfjvhObWbfrJkpVgoKV5KOEnMwzphew6QPqGIBTO/DkATAuPNYVStPcc5ILk0nKluWCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0aJMAbcX8GnQ/7g9AXli4U/wO3X6FOCODsFr/Lze6lE=;
 b=nuDzzI6qiNTPmib5WYlghxZa2dNPMvZCVeE+h+16cMcjDrMMjxqTms5c7ct9Wbxo28ucZYhicCk3VB0WrY/TvBex411vWyxeio7arou7LcGpJBuT4ANcdsASha6PejsZof+7tLJxRoNfwaDpRS8yKmCkvjSIPtoWW2/sADfxgm59LzFA+fXDuZXsVvhi48RK+9OY/Z/0U1ubctVcxjMakJ4C/fMmlu+/gbnx4Q0wlDsUChZbiw1bklXY4kQr+N2a3wfoN94k5NyvJfhnsqZETL2w4amUhhVT93RJDkWX+b6fSsKIJqITyFJAUehSR5L1a3W4pyRfMmD+2vkL0czM9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0aJMAbcX8GnQ/7g9AXli4U/wO3X6FOCODsFr/Lze6lE=;
 b=I88fPDiQr65QJUyIDdKNFRVAiRzbN1Vq+uZb2uq8+cTiMXHC668whSDgJRpX49QRnG4sDjgA8YDOHOELO4VRGJn4rStspo6mloPOH0aRhwvzO4vpM73cwQ8PzFwopZj4pSVy+8TzX9/+trC4IKsZHlzBaRiODQi/eEq2Rd2qMbA=
Received: from CY4PR11MB1559.namprd11.prod.outlook.com (2603:10b6:910:11::12)
 by CY4PR1101MB2102.namprd11.prod.outlook.com (2603:10b6:910:1e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.23; Tue, 1 Sep
 2020 16:50:35 +0000
Received: from CY4PR11MB1559.namprd11.prod.outlook.com
 ([fe80::b012:fff1:ba85:18b2]) by CY4PR11MB1559.namprd11.prod.outlook.com
 ([fe80::b012:fff1:ba85:18b2%10]) with mapi id 15.20.3326.025; Tue, 1 Sep 2020
 16:50:35 +0000
From: "Xu, Terrence" <terrence.xu@intel.com>
To: Mario Marietto <marietto2008@gmail.com>, "igvt-g@lists.01.org"
 <igvt-g@lists.01.org>, "xen-devel@lists.xenproject.org"
 <xen-devel@lists.xenproject.org>, "xen-devel@lists.xen.org"
 <xen-devel@lists.xen.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "Li, Susie" <susie.li@intel.com>, "Tian,
 Kevin" <kevin.tian@intel.com>, "Lv, Zhiyuan" <zhiyuan.lv@intel.com>, "Li,
 Weinan Z" <weinan.z.li@intel.com>, "Downs, Mike" <mike.downs@intel.com>
Thread-Topic: Various problems for the Xen for XenGT code and guide.
Thread-Index: AQHWfHlvUqhkJ/WaCkaY2CnMtJ/An6lUAxtg
Date: Tue, 1 Sep 2020 16:50:35 +0000
Message-ID: <CY4PR11MB15594EC5255084B8AE509068F02E0@CY4PR11MB1559.namprd11.prod.outlook.com>
References: <CA+1FSihpq_i-poiihdF0srE3fGXnncGtCMYqAGmNZu7fjNcY=w@mail.gmail.com>
In-Reply-To: <CA+1FSihpq_i-poiihdF0srE3fGXnncGtCMYqAGmNZu7fjNcY=w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.198.147.211]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5fee4bc5-c0bf-4405-bbbc-08d84e9725df
x-ms-traffictypediagnostic: CY4PR1101MB2102:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1101MB2102E4F77D7A2DE6CBA77F3AF02E0@CY4PR1101MB2102.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HjdPH0zua01Vxprvy5l4ML3u6naf6jIJxgCFe0PSVCTEvD6gDArsT/dZG5lTaG+yDLXYKK/244YJnc924Icc+0zu5lgSMGOzx+gdXUrwSdEYr/JumqvHjTAEAC4bTbcxFSa0N28Lv8OKgr2q4Bf3t79u5j+znF+p9KvakILG8NC28HMWTrcAIwtnyD+rEOV2WscwttdwYgoaGQe6Nka3GpVx3iFnQaevSQ1s/Czwd7q6YEuHpOi5ds9u/PsA+450qrHG9KUoufwb1tbBmMdcZbeQ7Ome6qSyeHAEo6XxePiyqnnimSzCzObHv5d/W8vGxrrdtaTHSIOGZnLQ5f3d+O1gOQSTGgKshMlUWB5yEKZgn3O8GHntlhzf57IzZwSk3Z5Tt20YFFDJ4rgNb1s9NiIfo8TFQR2PeNLOGEpuXFqrHsgz4HVOQlr5Th/g+fn8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1559.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(136003)(376002)(396003)(366004)(26005)(53546011)(52536014)(110136005)(8936002)(6506007)(7696005)(5660300002)(33656002)(478600001)(83380400001)(9326002)(166002)(9686003)(55016002)(66476007)(64756008)(186003)(8676002)(66946007)(71200400001)(966005)(6636002)(76116006)(66556008)(316002)(66446008)(86362001)(2906002)(921003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: sDJJWioTKhk0HMM7OTthME1HCIdyB3eFX++tRrtYeDHKjNG10pwiD04bYtxK1hd0hRuMs5BXaXf4kE4RJ/6kbeQH0yiYxB+D+xZacOz9Ub3Ec2w1HqbPQ5bPZF5Mu9aA1bzxD67iZJUJfjjt7mV+PjeWLNesHrZiZaXqM1uuRIoYHHzZH0PCy9PUPkrZpvTkJVOdeH72qVM6bryni8eq9872RXAHxUKB3xtHOxep5spAnCLW9qlb1Lic/qGFiZhcj6sL/ridPbcdeasIMzRjF0PV9JiFwBrg30M9HyopOS7HS7csrU1NadcbSSDNDiy5XUMuT8sRD0453K+M7jsNXYAmGTrw+yr9zc6QvIytmgXVbZCmKIQx1x1iQW0gzw2KeOEsZHPr7xcZ9kiqwRBYY0UPniRI0ZyXVqB5S/7p1Ehc7kgNp4vdYbNcNpyzGP9Yqnk0/iou/AGZ+kzGJftS8nEl6N4KqKC1t0JgYmcy416hi1+WI3eFfY1kyxIQoczKui+8AnbVfPu48JvNUobwbMFrw1yKqp+SL+kuAIFfBCOrqyCVtrtFoF+jQmPCOJuswZmQLV4z6LpFEA59MIp6vS2XYQLnYeuG6U200NDI7asFO4uXehG06KC+6OeMqZXbna2DXOZziB9s9YEI99CSJw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1559.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fee4bc5-c0bf-4405-bbbc-08d84e9725df
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2020 16:50:35.3603 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2qohS9r75jS7vDk/5DuGB14c4YddSjPB1++BJvFsMXzYjWlz5L8JzQi0XEjPAKmt4aDHrjxfmhe3uFWcadsBDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2102
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] Various problems for the Xen for XenGT code and
 guide.
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
Content-Type: multipart/mixed; boundary="===============0368069288=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0368069288==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR11MB15594EC5255084B8AE509068F02E0CY4PR11MB1559namp_"

--_000_CY4PR11MB15594EC5255084B8AE509068F02E0CY4PR11MB1559namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWFyaW8sDQoNClNvcnJ5IHRvIG1ha2UgeW91IGZlZWwgdW5jb21mb3J0YWJsZS4NCg0KSSB0
aGluayBpdCBpcyBub3Qgc2V0dXAgZ3VpZGUgcHJvYmxlbSwgdGhlIG1haW4gcmVhc29uIGlzIHRo
ZSBYZW4gY29kZSBpcyB2ZXJ5IG9sZCAoV2UgYXJlIHVwZ3JhZGluZyBHVlQtZyBjb2RlIG9uIExp
bnV4IGtlcm5lbCBzaWRlIGFuZCB3ZSBoYXZlbuKAmXQgdXBncmFkZWQgdGhlIFhlbiBhbmQgUWVt
dSBzb3VyY2UgZm9yIFhlbkdUIGZvciBhdCBsZWFzdCAyIHllYXJzKSBidXQgeW91ciBHQ0MgaXMg
bmV3IChZb3UgYXJlIHVzaW5nIFVidW50dSAyMC40LCB0aGUgZ2NjIHZlcnNpb24gaXMgOSspLg0K
DQpJIGhhdmUgYSB3YXkgdG8gd29ya2Fyb3VuZCBpdCwgYXMgYmVsb3c6DQoNCjEuICBhcHQtZ2V0
IGluc3RhbGwgZ2NjLTcNCjIuICBsbiAtZnMgZ2NjLTcgL3Vzci9iaW4vZ2NjDQoNCkFueSBtb3Jl
IHByb2JsZW0ganVzdCBsZXQgdXMga25vdyENCg0KVGhhbmtzDQpUZXJyZW5jZQ0KDQpGcm9tOiBN
YXJpbyBNYXJpZXR0byA8bWFyaWV0dG8yMDA4QGdtYWlsLmNvbT4NClNlbnQ6IFRodXJzZGF5LCBB
dWd1c3QgMjcsIDIwMjAgOTo1MiBQTQ0KVG86IFh1LCBUZXJyZW5jZSA8dGVycmVuY2UueHVAaW50
ZWwuY29tPjsgaWd2dC1nQGxpc3RzLjAxLm9yZzsgeGVuLWRldmVsQGxpc3RzLnhlbnByb2plY3Qu
b3JnOyB4ZW4tZGV2ZWxAbGlzdHMueGVuLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgTGksIFN1c2llIDxzdXNpZS5saUBp
bnRlbC5jb20+OyBUaWFuLCBLZXZpbiA8a2V2aW4udGlhbkBpbnRlbC5jb20+OyBMdiwgWmhpeXVh
biA8emhpeXVhbi5sdkBpbnRlbC5jb20+OyBMaSwgV2VpbmFuIFogPHdlaW5hbi56LmxpQGludGVs
LmNvbT47IERvd25zLCBNaWtlIDxtaWtlLmRvd25zQGludGVsLmNvbT4NClN1YmplY3Q6IFZhcmlv
dXMgcHJvYmxlbXMgZm9yIHRoZSBYZW4gZm9yIFhlbkdUIGNvZGUgYW5kIGd1aWRlLg0KDQpIZWxs
by4NCg0KSSB3b3VsZCBsaWtlIHRvIHBhc3MgdGhlIGludGVncmF0ZWQgZ3B1IGZyb20gdGhlIGhv
c3Qgb3MgKHVidW50dSAyMC4wNCkgdG8gdGhlIHdpbmRvd3MgMTAgZ3Vlc3Qgb3Mgd2l0aCB4ZW4u
IFRoaXMgaXMgYmVjYXVzZSB4ZW4gd29ya3MgZ3JlYXQgZm9yIG1lLGJldHRlciB0aGFuIHFlbXUt
a3ZtIGZvciBteSBzcGVjaWZpYyBuZWVkcyBhbmQgYmVjYXVzZSBJIGhhdmUgb25seSB0d28gZ3Jh
cGhpYyBjYXJkcy4gVGhlIG52aWRpYSBydHggMjA4MCB0aSB0aGF0IEkgaGF2ZSBhbHJlYWR5IHBh
c3NlZCB0byB0aGUgZ3Vlc3QsYW5kIHRoZSBpbnRlbCBVSEQgNjMwLHRoYXQgY2FuIGJlIGR1cGxp
Y2F0ZWQgZnJvbSB0aGUgaG9zdCB0byB0aGUgZ3Vlc3Qgc28gdGhhdCBpdCBjYW4gYmUgdXNlZCBp
biBib3RoIHBsYWNlcyB3aXRob3V0IGludGVycnVwdGlvbnMuIFNvIEknbSB0cnlpbmcgdG8gYnVp
bGQgdGhpcyByZXBvc2l0b3J5IDoNCg0KaHR0cHM6Ly9naXRodWIuY29tL2ludGVsL2d2dC1saW51
eC93aWtpL0dWVGdfU2V0dXBfR3VpZGUjMzMyLWJ1aWxkLXFlbXUtLXhlbi1mb3IteGVuZ3QNCg0K
SSBoYXZlIHRvIHNheSB0aGF0IHRoaXMgZ3VpZGUgaXMgdG90YWxseSBub3QgdmVyeSB3ZWxsIHdy
aXR0ZW4uIEFuZCB0aGUgY29kZSBpcyBmdWxsIG9mIHVucGF0Y2hlZCBidWdzLiBJdCdzIGEgbW9u
dGggdGhhdCBJJ20gd29ya2luZyBvbiB0aGF0LHRyeWluZyB0byBmaXggdGhlIGJ1Z3MgdGhhdCBh
cmUgY2FtZSBvdXQgZnJvbSB0aGUgMjAxNSB1bnRpbCB0b2RheS4gVGhpcyBpcyBub3QgbXkgam9i
LiBUaGlzIGlzIG15IGhvYmJ5LiBCdXQsSSBuZWVkIHRvIGFjdGl2YXRlIHRoZSBwYXNzIHRocm91
Z2ggZm9yIG15IGludGVncmF0ZWQgR1BVIHNvIEkgZG9uJ3QgdG8gZ2l2ZSB1cC4gSSdtIGFsc28g
dmVyeSBhbmdyeSB3aXRoIHRob3NlIGNvZGVycyB3aG8gZG8gbm90IGRvIHRoZWlyIGpvYiB3ZWxs
IGFuZCB3aXRoIHRob3NlIGNvZGVycyB3aG8gZG8gbm90IHJlc3BvbmQgdG8gaGVscCBtZXNzYWdl
cy4gSXQgaXMgbm90IGVub3VnaCB0byB3cml0ZSBnb29kIGNvZGUgdG8gYmUgYSBnb29kIHByb2dy
YW1tZXIuIEl0IGlzIGFsc28gaW1wb3J0YW50IHRvIGtlZXAgdGhlIGRvY3VtZW50YXRpb24gdXBk
YXRlZCwgdG8gaGVscCB0aG9zZSB3aG8gY2Fubm90IGdldCB0aGUgY29kZSB0byB3b3JrLiBBbnl3
YXksSSd2ZSBkb2N1bWVudGVkIGV2ZXJ5IHN0ZXAgdGhhdCBJIGRpZCB0byBtYWtlIGl0IHdvcmsg
aGVyZSA6DQoNCmh0dHBzOi8vZ2l0aHViLmNvbS9pbnRlbC9ndnQtbGludXgvaXNzdWVzLzE2OA0K
DQpyaWdodCBub3cgSSdtIHRyeWluZyB0byBmaXggdGhlIGJ1ZyBuLiA0MzQ1NDQsdGhhdCB5b3Ug
Y2FuIHNlZSBiZWxvdy4NCg0KQ0MgdXRpbC9xZW11LWVycm9yLm8NCi9ldGMveGVuL2lndnRnLXhl
bi90b29scy9xZW11LXhlbi1kaXIvdXRpbC9xZW11LWVycm9yLmM6IEluIGZ1bmN0aW9uIOKAmHZy
ZXBvcnTigJk6DQovZXRjL3hlbi9pZ3Z0Zy14ZW4vdG9vbHMvcWVtdS14ZW4tZGlyL3V0aWwvcWVt
dS1lcnJvci5jOjIwMTo1OiBlcnJvcjog4oCYR1RpbWVWYWzigJkgaXMgZGVwcmVjYXRlZDogVXNl
ICdHRGF0ZVRpbWUnIGluc3RlYWQgWy1XZXJyb3I9ZGVwcmVjYXRlZC1kZWNsYXJhdGlvbnNdDQoy
MDEgfCBHVGltZVZhbCB0djsNCnwgXn5+fn5+fn4NCkluIGZpbGUgaW5jbHVkZWQgZnJvbSAvdXNy
L2luY2x1ZGUvZ2xpYi0yLjAvZ2xpYi9nYWxsb2NhLmg6MzIsDQpmcm9tIC91c3IvaW5jbHVkZS9n
bGliLTIuMC9nbGliLmg6MzAsDQpmcm9tIC9ldGMveGVuL2lndnRnLXhlbi90b29scy9xZW11LXhl
bi1kaXIvaW5jbHVkZS9nbGliLWNvbXBhdC5oOjE5LA0KZnJvbSAvZXRjL3hlbi9pZ3Z0Zy14ZW4v
dG9vbHMvcWVtdS14ZW4tZGlyL2luY2x1ZGUvcWVtdS9vc2RlcC5oOjEwNywNCmZyb20gL2V0Yy94
ZW4vaWd2dGcteGVuL3Rvb2xzL3FlbXUteGVuLWRpci91dGlsL3FlbXUtZXJyb3IuYzoxMzoNCi91
c3IvaW5jbHVkZS9nbGliLTIuMC9nbGliL2d0eXBlcy5oOjU0Nzo4OiBub3RlOiBkZWNsYXJlZCBo
ZXJlDQo1NDcgfCBzdHJ1Y3QgR1RpbWVWYWwNCnwgXn5+fn5+fn5+DQovZXRjL3hlbi9pZ3Z0Zy14
ZW4vdG9vbHMvcWVtdS14ZW4tZGlyL3V0aWwvcWVtdS1lcnJvci5jOjIwNTo5OiBlcnJvcjog4oCY
Z19nZXRfY3VycmVudF90aW1l4oCZIGlzIGRlcHJlY2F0ZWQ6IFVzZSAnZ19nZXRfcmVhbF90aW1l
JyBpbnN0ZWFkIFstV2Vycm9yPWRlcHJlY2F0ZWQtZGVjbGFyYXRpb25zXQ0KMjA1IHwgZ19nZXRf
Y3VycmVudF90aW1lKCZ0dik7DQp8IF5+fn5+fn5+fn5+fn5+fn5+fg0KSW4gZmlsZSBpbmNsdWRl
ZCBmcm9tIC91c3IvaW5jbHVkZS9nbGliLTIuMC9nbGliL2dpb2NoYW5uZWwuaDozMywNCmZyb20g
L3Vzci9pbmNsdWRlL2dsaWItMi4wL2dsaWIuaDo1NCwNCmZyb20gL2V0Yy94ZW4vaWd2dGcteGVu
L3Rvb2xzL3FlbXUteGVuLWRpci9pbmNsdWRlL2dsaWItY29tcGF0Lmg6MTksDQpmcm9tIC9ldGMv
eGVuL2lndnRnLXhlbi90b29scy9xZW11LXhlbi1kaXIvaW5jbHVkZS9xZW11L29zZGVwLmg6MTA3
LA0KZnJvbSAvZXRjL3hlbi9pZ3Z0Zy14ZW4vdG9vbHMvcWVtdS14ZW4tZGlyL3V0aWwvcWVtdS1l
cnJvci5jOjEzOg0KL3Vzci9pbmNsdWRlL2dsaWItMi4wL2dsaWIvZ21haW4uaDo2Nzk6ODogbm90
ZTogZGVjbGFyZWQgaGVyZQ0KNjc5IHwgdm9pZCBnX2dldF9jdXJyZW50X3RpbWUgKEdUaW1lVmFs
IHJlc3VsdCk7DQp8IF5+fn5+fn5+fn5+fn5+fn5+fg0KL2V0Yy94ZW4vaWd2dGcteGVuL3Rvb2xz
L3FlbXUteGVuLWRpci91dGlsL3FlbXUtZXJyb3IuYzoyMDY6OTogZXJyb3I6IOKAmGdfdGltZV92
YWxfdG9faXNvODYwMeKAmSBpcyBkZXByZWNhdGVkOiBVc2UgJ2dfZGF0ZV90aW1lX2Zvcm1hdCcg
aW5zdGVhZCBbLVdlcnJvcj1kZXByZWNhdGVkLWRlY2xhcmF0aW9uc10NCjIwNiB8IHRpbWVzdHIg
PSBnX3RpbWVfdmFsX3RvX2lzbzg2MDEoJnR2KTsNCnwgXn5+fn5+fg0KSW4gZmlsZSBpbmNsdWRl
ZCBmcm9tIC91c3IvaW5jbHVkZS9nbGliLTIuMC9nbGliLmg6ODgsDQpmcm9tIC9ldGMveGVuL2ln
dnRnLXhlbi90b29scy9xZW11LXhlbi1kaXIvaW5jbHVkZS9nbGliLWNvbXBhdC5oOjE5LA0KZnJv
bSAvZXRjL3hlbi9pZ3Z0Zy14ZW4vdG9vbHMvcWVtdS14ZW4tZGlyL2luY2x1ZGUvcWVtdS9vc2Rl
cC5oOjEwNywNCmZyb20gL2V0Yy94ZW4vaWd2dGcteGVuL3Rvb2xzL3FlbXUteGVuLWRpci91dGls
L3FlbXUtZXJyb3IuYzoxMzoNCi91c3IvaW5jbHVkZS9nbGliLTIuMC9nbGliL2d0aW1lci5oOjcz
OjEwOiBub3RlOiBkZWNsYXJlZCBoZXJlDQo3MyB8IGdjaGFyIGdfdGltZV92YWxfdG9faXNvODYw
MSAoR1RpbWVWYWwgKnRpbWUpIEdfR05VQ19NQUxMT0M7DQp8IF5+fn5+fn5+fn5+fn5+fn5+fn5+
fg0KY2MxOiBhbGwgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMNCmFueSBoZWxwIGlz
IGFwcHJlY2lhdGVkLiAgU29tZW9uZSBtdXN0IGhlbHAgbWUsIHRoYW5raW5nIG1lIGZvciBhbGwg
dGhlIGVmZm9ydHMgSSBhbSBtYWtpbmcgdG8gbWFrZSB3b3JrIGEgY29kZSBmdWxsIG9mIGVycm9y
cy4gSSB3b3VsZCBhbHNvIGtub3cgaWYgSSBjYW4gYWN0aXZhdGUgdGhlIHBhc3N0aHJvdWdoIG9m
IHRoZSBpbnRlbCBpbnRlZ3JhdGVkIGdwdSB1c2luZyB0aGUgcHJlY29tcGlsZWQgeGVuLWh5cGVy
dmlzb3IgcGFja2FnZSB0aGF0J3Mgb24gdWJ1bnR1LiBSaWdodCBub3cgSSB0cmllZCB0byBjb21w
aWxlIGl0IGZyb20gc2NyYXRjaCBiZWNhdXNlIEkndmUgdGhvdWdodCB0aGF0IGl0IHdhcyBhIG5l
Y2Vzc2FyeSBzdGVwLGFzIGRlc2NyaWJlZCBvbiB0aGUgZ3VpZGUuIEJ1dCBJbSBub3Qgc3VyZSBv
biB0aGlzIHBvaW50Lg0KDQotLQ0KTWFyaW8uDQo=

--_000_CY4PR11MB15594EC5255084B8AE509068F02E0CY4PR11MB1559namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkRlbmdYaWFuOw0KCXBhbm9zZS0xOjIgMSA2IDAgMyAxIDEgMSAx
IDE7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseTpDYWxpYnJpOw0KCXBhbm9zZS0xOjIgMTUg
NSAyIDIgMiA0IDMgMiA0O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6IlxARGVuZ1hpYW4i
Ow0KCXBhbm9zZS0xOjIgMSA2IDAgMyAxIDEgMSAxIDE7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZh
bWlseToiU2Vnb2UgVUkiOw0KCXBhbm9zZS0xOjIgMTEgNSAyIDQgMiA0IDIgMiAzO30NCi8qIFN0
eWxlIERlZmluaXRpb25zICovDQpwLk1zb05vcm1hbCwgbGkuTXNvTm9ybWFsLCBkaXYuTXNvTm9y
bWFsDQoJe21hcmdpbjowaW47DQoJbWFyZ2luLWJvdHRvbTouMDAwMXB0Ow0KCWZvbnQtc2l6ZTox
MS4wcHQ7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0KYTpsaW5rLCBzcGFu
Lk1zb0h5cGVybGluaw0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6Ymx1ZTsNCgl0
ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCnNwYW4uRW1haWxTdHlsZTIwDQoJe21zby1zdHls
ZS10eXBlOnBlcnNvbmFsLXJlcGx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlm
Ow0KCWNvbG9yOndpbmRvd3RleHQ7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0eWxlLXR5cGU6
ZXhwb3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0KQHBhZ2Ug
V29yZFNlY3Rpb24xDQoJe3NpemU6OC41aW4gMTEuMGluOw0KCW1hcmdpbjoxLjBpbiAxLjBpbiAx
LjBpbiAxLjBpbjt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30NCi0t
Pjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWRlZmF1bHRzIHY6ZXh0
PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5kaWZdLS0+PCEtLVtpZiBndGUg
bXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+DQo8bzppZG1hcCB2OmV4
dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91dD48L3htbD48IVtlbmRpZl0tLT4N
CjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLVVTIiBsaW5rPSJibHVlIiB2bGluaz0icHVycGxlIj4N
CjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5IaSBNYXJp
byw8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250
LXNpemU6MTAuNXB0O2ZvbnQtZmFtaWx5OiZxdW90O1NlZ29lIFVJJnF1b3Q7LHNhbnMtc2VyaWY7
Y29sb3I6IzI0MjkyRTtiYWNrZ3JvdW5kOndoaXRlIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEwLjVwdDtm
b250LWZhbWlseTomcXVvdDtTZWdvZSBVSSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiMyNDI5MkU7
YmFja2dyb3VuZDp3aGl0ZSI+U29ycnkgdG8gbWFrZSB5b3UgZmVlbCB1bmNvbWZvcnRhYmxlLjxv
OnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJm
b250LXNpemU6MTAuNXB0O2ZvbnQtZmFtaWx5OiZxdW90O1NlZ29lIFVJJnF1b3Q7LHNhbnMtc2Vy
aWY7Y29sb3I6IzI0MjkyRTtiYWNrZ3JvdW5kOndoaXRlIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bh
bj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEwLjVw
dDtmb250LWZhbWlseTomcXVvdDtTZWdvZSBVSSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiMyNDI5
MkU7YmFja2dyb3VuZDp3aGl0ZSI+SSB0aGluayBpdCBpcyBub3Qgc2V0dTwvc3Bhbj5wIGd1aWRl
IHByb2JsZW0sIHRoZSBtYWluPHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMC41cHQ7Zm9udC1mYW1p
bHk6JnF1b3Q7U2Vnb2UgVUkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMjQyOTJFO2JhY2tncm91
bmQ6d2hpdGUiPg0KIHJlYXNvbiBpcyB0aGUgWGVuIGNvZGUgaXMgdmVyeSBvbGQgKFdlIGFyZSB1
cGdyYWRpbmcgR1ZULWcgY29kZSBvbiBMaW51eCBrZXJuZWwgc2lkZSBhbmQgd2UgaGF2ZW7igJl0
IHVwZ3JhZGVkIHRoZSBYZW4gYW5kIFFlbXUgc291cmNlIGZvciBYZW5HVCBmb3IgYXQgbGVhc3Qg
MiB5ZWFycykgYnV0IHlvdXIgR0NDIGlzIG5ldyAoWW91IGFyZSB1c2luZyBVYnVudHUgMjAuNCwg
dGhlIGdjYyB2ZXJzaW9uIGlzIDkrKS48L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMC41
cHQ7Zm9udC1mYW1pbHk6JnF1b3Q7U2Vnb2UgVUkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMjQy
OTJFIj48YnI+DQo8YnI+DQo8c3BhbiBzdHlsZT0iYmFja2dyb3VuZDp3aGl0ZSI+PG86cD48L286
cD48L3NwYW4+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJm
b250LXNpemU6MTAuNXB0O2ZvbnQtZmFtaWx5OiZxdW90O1NlZ29lIFVJJnF1b3Q7LHNhbnMtc2Vy
aWY7Y29sb3I6IzI0MjkyRTtiYWNrZ3JvdW5kOndoaXRlIj5JIGhhdmUgYSB3YXkgdG8gd29ya2Fy
b3VuZCBpdCwgYXMgYmVsb3c6PC9zcGFuPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuNXB0O2Zv
bnQtZmFtaWx5OiZxdW90O1NlZ29lIFVJJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzI0MjkyRSI+
PGJyIHN0eWxlPSJib3gtc2l6aW5nOiBib3JkZXItYm94O2ZvbnQtdmFyaWFudC1saWdhdHVyZXM6
IG5vcm1hbDtmb250LXZhcmlhbnQtY2Fwczogbm9ybWFsO29ycGhhbnM6IDI7dGV4dC1hbGlnbjpz
dGFydDt3aWRvd3M6IDI7LXdlYmtpdC10ZXh0LXN0cm9rZS13aWR0aDogMHB4O3RleHQtZGVjb3Jh
dGlvbi1zdHlsZTogaW5pdGlhbDt0ZXh0LWRlY29yYXRpb24tY29sb3I6IGluaXRpYWw7d29yZC1z
cGFjaW5nOjBweCI+DQo8YnI+DQo8c3BhbiBzdHlsZT0iYmFja2dyb3VuZDp3aGl0ZSI+PG86cD48
L286cD48L3NwYW4+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxl
PSJmb250LXNpemU6MTAuNXB0O2ZvbnQtZmFtaWx5OiZxdW90O1NlZ29lIFVJJnF1b3Q7LHNhbnMt
c2VyaWY7Y29sb3I6IzI0MjkyRTtiYWNrZ3JvdW5kOndoaXRlIj4xLiAmbmJzcDthcHQtZ2V0IGlu
c3RhbGwgZ2NjLTc8L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMC41cHQ7Zm9udC1mYW1p
bHk6JnF1b3Q7U2Vnb2UgVUkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMjQyOTJFIj48YnI+DQo8
c3BhbiBzdHlsZT0iYmFja2dyb3VuZDp3aGl0ZSI+Mi4mbmJzcDsgbG4gLWZzIGdjYy03IC91c3Iv
YmluL2djYzxvOnA+PC9vOnA+PC9zcGFuPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEwLjVwdDtmb250LWZhbWlseTomcXVvdDtTZWdvZSBV
SSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiMyNDI5MkU7YmFja2dyb3VuZDp3aGl0ZSI+PG86cD4m
bmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9
ImZvbnQtc2l6ZToxMC41cHQ7Zm9udC1mYW1pbHk6JnF1b3Q7U2Vnb2UgVUkmcXVvdDssc2Fucy1z
ZXJpZjtjb2xvcjojMjQyOTJFO2JhY2tncm91bmQ6d2hpdGUiPkFueSBtb3JlIHByb2JsZW0ganVz
dCBsZXQgdXMga25vdyE8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEwLjVwdDtmb250LWZhbWlseTomcXVvdDtTZWdvZSBV
SSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiMyNDI5MkU7YmFja2dyb3VuZDp3aGl0ZSI+PG86cD4m
bmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9
ImZvbnQtc2l6ZToxMC41cHQ7Zm9udC1mYW1pbHk6JnF1b3Q7U2Vnb2UgVUkmcXVvdDssc2Fucy1z
ZXJpZjtjb2xvcjojMjQyOTJFO2JhY2tncm91bmQ6d2hpdGUiPlRoYW5rczxvOnA+PC9vOnA+PC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAu
NXB0O2ZvbnQtZmFtaWx5OiZxdW90O1NlZ29lIFVJJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzI0
MjkyRTtiYWNrZ3JvdW5kOndoaXRlIj5UZXJyZW5jZTxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdj4NCjxkaXYgc3R5
bGU9ImJvcmRlcjpub25lO2JvcmRlci10b3A6c29saWQgI0UxRTFFMSAxLjBwdDtwYWRkaW5nOjMu
MHB0IDBpbiAwaW4gMGluIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPkZyb206PC9iPiBNYXJp
byBNYXJpZXR0byAmbHQ7bWFyaWV0dG8yMDA4QGdtYWlsLmNvbSZndDsgPGJyPg0KPGI+U2VudDo8
L2I+IFRodXJzZGF5LCBBdWd1c3QgMjcsIDIwMjAgOTo1MiBQTTxicj4NCjxiPlRvOjwvYj4gWHUs
IFRlcnJlbmNlICZsdDt0ZXJyZW5jZS54dUBpbnRlbC5jb20mZ3Q7OyBpZ3Z0LWdAbGlzdHMuMDEu
b3JnOyB4ZW4tZGV2ZWxAbGlzdHMueGVucHJvamVjdC5vcmc7IHhlbi1kZXZlbEBsaXN0cy54ZW4u
b3JnOyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBsaW51eC1rZXJuZWxAdmdlci5r
ZXJuZWwub3JnOyBMaSwgU3VzaWUgJmx0O3N1c2llLmxpQGludGVsLmNvbSZndDs7IFRpYW4sIEtl
dmluICZsdDtrZXZpbi50aWFuQGludGVsLmNvbSZndDs7DQogTHYsIFpoaXl1YW4gJmx0O3poaXl1
YW4ubHZAaW50ZWwuY29tJmd0OzsgTGksIFdlaW5hbiBaICZsdDt3ZWluYW4uei5saUBpbnRlbC5j
b20mZ3Q7OyBEb3ducywgTWlrZSAmbHQ7bWlrZS5kb3duc0BpbnRlbC5jb20mZ3Q7PGJyPg0KPGI+
U3ViamVjdDo8L2I+IFZhcmlvdXMgcHJvYmxlbXMgZm9yIHRoZSBYZW4gZm9yIFhlbkdUIGNvZGUg
YW5kIGd1aWRlLjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdj4NCjx0YWJsZSBjbGFzcz0iTXNvTm9y
bWFsVGFibGUiIGJvcmRlcj0iMCIgY2VsbHNwYWNpbmc9IjMiIGNlbGxwYWRkaW5nPSIwIj4NCjx0
Ym9keT4NCjx0cj4NCjx0ZCB2YWxpZ249InRvcCIgc3R5bGU9InBhZGRpbmc6Ljc1cHQgLjc1cHQg
Ljc1cHQgLjc1cHQiPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SGVsbG8uPG86cD48L286cD48L3A+
DQo8L3RkPg0KPHRkIHN0eWxlPSJwYWRkaW5nOi43NXB0IC43NXB0IC43NXB0IC43NXB0Ij48L3Rk
Pg0KPHRkIHZhbGlnbj0idG9wIiBzdHlsZT0icGFkZGluZzouNzVwdCAuNzVwdCAuNzVwdCAuNzVw
dCI+PC90ZD4NCjwvdHI+DQo8dHI+DQo8dGQgc3R5bGU9InBhZGRpbmc6Ljc1cHQgLjc1cHQgLjc1
cHQgLjc1cHQiPjwvdGQ+DQo8dGQgc3R5bGU9InBhZGRpbmc6Ljc1cHQgLjc1cHQgLjc1cHQgLjc1
cHQiPjwvdGQ+DQo8dGQgc3R5bGU9InBhZGRpbmc6Ljc1cHQgLjc1cHQgLjc1cHQgLjc1cHQiPjwv
dGQ+DQo8L3RyPg0KPHRyPg0KPHRkIHN0eWxlPSJwYWRkaW5nOi43NXB0IC43NXB0IC43NXB0IC43
NXB0Ij48L3RkPg0KPHRkIHN0eWxlPSJwYWRkaW5nOi43NXB0IC43NXB0IC43NXB0IC43NXB0Ij48
L3RkPg0KPHRkIHN0eWxlPSJwYWRkaW5nOi43NXB0IC43NXB0IC43NXB0IC43NXB0Ij48L3RkPg0K
PC90cj4NCjx0cj4NCjx0ZCBzdHlsZT0icGFkZGluZzouNzVwdCAuNzVwdCAuNzVwdCAuNzVwdCI+
PC90ZD4NCjx0ZCBzdHlsZT0icGFkZGluZzouNzVwdCAuNzVwdCAuNzVwdCAuNzVwdCI+PC90ZD4N
Cjx0ZCBzdHlsZT0icGFkZGluZzouNzVwdCAuNzVwdCAuNzVwdCAuNzVwdCI+PC90ZD4NCjwvdHI+
DQo8dHI+DQo8dGQgc3R5bGU9InBhZGRpbmc6Ljc1cHQgLjc1cHQgLjc1cHQgLjc1cHQiPjwvdGQ+
DQo8dGQgc3R5bGU9InBhZGRpbmc6Ljc1cHQgLjc1cHQgLjc1cHQgLjc1cHQiPjwvdGQ+DQo8dGQg
c3R5bGU9InBhZGRpbmc6Ljc1cHQgLjc1cHQgLjc1cHQgLjc1cHQiPjwvdGQ+DQo8L3RyPg0KPHRy
Pg0KPHRkIHN0eWxlPSJwYWRkaW5nOi43NXB0IC43NXB0IC43NXB0IC43NXB0Ij48L3RkPg0KPHRk
IHN0eWxlPSJwYWRkaW5nOi43NXB0IC43NXB0IC43NXB0IC43NXB0Ij48L3RkPg0KPHRkIHN0eWxl
PSJwYWRkaW5nOi43NXB0IC43NXB0IC43NXB0IC43NXB0Ij48L3RkPg0KPC90cj4NCjwvdGJvZHk+
DQo8L3RhYmxlPg0KPC9kaXY+DQo8ZGl2Pg0KPGRpdj4NCjxwPkkgd291bGQgbGlrZSB0byBwYXNz
IHRoZSBpbnRlZ3JhdGVkIGdwdSBmcm9tIHRoZSBob3N0IG9zICh1YnVudHUgMjAuMDQpIHRvIHRo
ZSB3aW5kb3dzIDEwIGd1ZXN0IG9zIHdpdGggeGVuLiBUaGlzIGlzIGJlY2F1c2UgeGVuIHdvcmtz
IGdyZWF0IGZvciBtZSxiZXR0ZXIgdGhhbiBxZW11LWt2bSBmb3IgbXkgc3BlY2lmaWMgbmVlZHMg
YW5kIGJlY2F1c2UgSSBoYXZlIG9ubHkgdHdvIGdyYXBoaWMgY2FyZHMuIFRoZSBudmlkaWEgcnR4
IDIwODANCiB0aSB0aGF0IEkgaGF2ZSBhbHJlYWR5IHBhc3NlZCB0byB0aGUgZ3Vlc3QsYW5kIHRo
ZSBpbnRlbCBVSEQgNjMwLHRoYXQgY2FuIGJlIGR1cGxpY2F0ZWQgZnJvbSB0aGUgaG9zdCB0byB0
aGUgZ3Vlc3Qgc28gdGhhdCBpdCBjYW4gYmUgdXNlZCBpbiBib3RoIHBsYWNlcyB3aXRob3V0IGlu
dGVycnVwdGlvbnMuIFNvIEknbSB0cnlpbmcgdG8gYnVpbGQgdGhpcyByZXBvc2l0b3J5IDo8bzpw
PjwvbzpwPjwvcD4NCjxwPjxhIGhyZWY9Imh0dHBzOi8vZ2l0aHViLmNvbS9pbnRlbC9ndnQtbGlu
dXgvd2lraS9HVlRnX1NldHVwX0d1aWRlIzMzMi1idWlsZC1xZW11LS14ZW4tZm9yLXhlbmd0Ij5o
dHRwczovL2dpdGh1Yi5jb20vaW50ZWwvZ3Z0LWxpbnV4L3dpa2kvR1ZUZ19TZXR1cF9HdWlkZSMz
MzItYnVpbGQtcWVtdS0teGVuLWZvci14ZW5ndDwvYT48bzpwPjwvbzpwPjwvcD4NCjxwPkkgaGF2
ZSB0byBzYXkgdGhhdCB0aGlzIGd1aWRlIGlzIHRvdGFsbHkgbm90IHZlcnkgd2VsbCB3cml0dGVu
LiBBbmQgdGhlIGNvZGUgaXMgZnVsbCBvZiB1bnBhdGNoZWQgYnVncy4gSXQncyBhIG1vbnRoIHRo
YXQgSSdtIHdvcmtpbmcgb24gdGhhdCx0cnlpbmcgdG8gZml4IHRoZSBidWdzIHRoYXQgYXJlIGNh
bWUgb3V0IGZyb20gdGhlIDIwMTUgdW50aWwgdG9kYXkuIFRoaXMgaXMgbm90IG15IGpvYi4gVGhp
cyBpcyBteSBob2JieS4gQnV0LEkNCiBuZWVkIHRvIGFjdGl2YXRlIHRoZSBwYXNzIHRocm91Z2gg
Zm9yIG15IGludGVncmF0ZWQgR1BVIHNvIEkgZG9uJ3QgdG8gZ2l2ZSB1cC4gSSdtIGFsc28gdmVy
eSBhbmdyeQ0KPHNwYW4gbGFuZz0iRU4iPndpdGggdGhvc2UgY29kZXJzIHdobyBkbyBub3QgZG8g
dGhlaXIgam9iIHdlbGwgYW5kIHdpdGggdGhvc2UgY29kZXJzIHdobyBkbyBub3QgcmVzcG9uZCB0
byBoZWxwIG1lc3NhZ2VzLiBJdCBpcyBub3QgZW5vdWdoIHRvIHdyaXRlIGdvb2QgY29kZSB0byBi
ZSBhIGdvb2QgcHJvZ3JhbW1lci4gSXQgaXMgYWxzbyBpbXBvcnRhbnQgdG8ga2VlcCB0aGUgZG9j
dW1lbnRhdGlvbiB1cGRhdGVkLCB0byBoZWxwIHRob3NlIHdobw0KIGNhbm5vdCBnZXQgdGhlIGNv
ZGUgdG8gd29yay4gQW55d2F5LEkndmUgZG9jdW1lbnRlZCBldmVyeSBzdGVwIHRoYXQgSSBkaWQg
dG8gbWFrZSBpdCB3b3JrIGhlcmUgOjwvc3Bhbj48bzpwPjwvbzpwPjwvcD4NCjxwPjxzcGFuIGxh
bmc9IkVOIj48YSBocmVmPSJodHRwczovL2dpdGh1Yi5jb20vaW50ZWwvZ3Z0LWxpbnV4L2lzc3Vl
cy8xNjgiPmh0dHBzOi8vZ2l0aHViLmNvbS9pbnRlbC9ndnQtbGludXgvaXNzdWVzLzE2ODwvYT48
L3NwYW4+PG86cD48L286cD48L3A+DQo8cD48c3BhbiBsYW5nPSJFTiI+cmlnaHQgbm93IEknbSB0
cnlpbmcgdG8gZml4IHRoZSBidWcgbi4gNDM0NTQ0LHRoYXQgeW91IGNhbiBzZWUgYmVsb3cuPC9z
cGFuPjxvOnA+PC9vOnA+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRU4iPkNDIHV0aWwvcWVtdS1lcnJv
ci5vPGJyPg0KL2V0Yy94ZW4vaWd2dGcteGVuL3Rvb2xzL3FlbXUteGVuLWRpci91dGlsL3FlbXUt
ZXJyb3IuYzogSW4gZnVuY3Rpb24g4oCYdnJlcG9ydOKAmTo8YnI+DQovZXRjL3hlbi9pZ3Z0Zy14
ZW4vdG9vbHMvcWVtdS14ZW4tZGlyL3V0aWwvcWVtdS1lcnJvci5jOjIwMTo1OiBlcnJvcjog4oCY
R1RpbWVWYWzigJkgaXMgZGVwcmVjYXRlZDogVXNlICdHRGF0ZVRpbWUnIGluc3RlYWQgWy1XZXJy
b3I9ZGVwcmVjYXRlZC1kZWNsYXJhdGlvbnNdPGJyPg0KMjAxIHwgR1RpbWVWYWwgdHY7PGJyPg0K
fCBefn5+fn5+fjxicj4NCkluIGZpbGUgaW5jbHVkZWQgZnJvbSAvdXNyL2luY2x1ZGUvZ2xpYi0y
LjAvZ2xpYi9nYWxsb2NhLmg6MzIsPGJyPg0KZnJvbSAvdXNyL2luY2x1ZGUvZ2xpYi0yLjAvZ2xp
Yi5oOjMwLDxicj4NCmZyb20gL2V0Yy94ZW4vaWd2dGcteGVuL3Rvb2xzL3FlbXUteGVuLWRpci9p
bmNsdWRlL2dsaWItY29tcGF0Lmg6MTksPGJyPg0KZnJvbSAvZXRjL3hlbi9pZ3Z0Zy14ZW4vdG9v
bHMvcWVtdS14ZW4tZGlyL2luY2x1ZGUvcWVtdS9vc2RlcC5oOjEwNyw8YnI+DQpmcm9tIC9ldGMv
eGVuL2lndnRnLXhlbi90b29scy9xZW11LXhlbi1kaXIvdXRpbC9xZW11LWVycm9yLmM6MTM6PGJy
Pg0KL3Vzci9pbmNsdWRlL2dsaWItMi4wL2dsaWIvZ3R5cGVzLmg6NTQ3Ojg6IG5vdGU6IGRlY2xh
cmVkIGhlcmU8YnI+DQo1NDcgfCBzdHJ1Y3QgPGVtPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTom
cXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWYiPkdUaW1lVmFsPC9zcGFuPjwvZW0+PGk+PGJy
Pg0KPGVtPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMt
c2VyaWYiPnwgXn5+fn5+fn5+PC9zcGFuPjwvZW0+PGJyPg0KPGVtPjxzcGFuIHN0eWxlPSJmb250
LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWYiPi9ldGMveGVuL2lndnRnLXhl
bi90b29scy9xZW11LXhlbi1kaXIvdXRpbC9xZW11LWVycm9yLmM6MjA1Ojk6IGVycm9yOiDigJhn
X2dldF9jdXJyZW50X3RpbWXigJkgaXMgZGVwcmVjYXRlZDogVXNlICdnX2dldF9yZWFsX3RpbWUn
IGluc3RlYWQgWy1XZXJyb3I9ZGVwcmVjYXRlZC1kZWNsYXJhdGlvbnNdPC9zcGFuPjwvZW0+PGJy
Pg0KPGVtPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMt
c2VyaWYiPjIwNSB8IGdfZ2V0X2N1cnJlbnRfdGltZSgmYW1wO3R2KTs8L3NwYW4+PC9lbT48YnI+
DQo8ZW0+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1z
ZXJpZiI+fCBefn5+fn5+fn5+fn5+fn5+fn48L3NwYW4+PC9lbT48YnI+DQo8ZW0+PHNwYW4gc3R5
bGU9ImZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+SW4gZmlsZSBp
bmNsdWRlZCBmcm9tIC91c3IvaW5jbHVkZS9nbGliLTIuMC9nbGliL2dpb2NoYW5uZWwuaDozMyw8
L3NwYW4+PC9lbT48YnI+DQo8ZW0+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O0NhbGli
cmkmcXVvdDssc2Fucy1zZXJpZiI+ZnJvbSAvdXNyL2luY2x1ZGUvZ2xpYi0yLjAvZ2xpYi5oOjU0
LDwvc3Bhbj48L2VtPjxicj4NCjxlbT48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6JnF1b3Q7Q2Fs
aWJyaSZxdW90OyxzYW5zLXNlcmlmIj5mcm9tIC9ldGMveGVuL2lndnRnLXhlbi90b29scy9xZW11
LXhlbi1kaXIvaW5jbHVkZS9nbGliLWNvbXBhdC5oOjE5LDwvc3Bhbj48L2VtPjxicj4NCjxlbT48
c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmIj5m
cm9tIC9ldGMveGVuL2lndnRnLXhlbi90b29scy9xZW11LXhlbi1kaXIvaW5jbHVkZS9xZW11L29z
ZGVwLmg6MTA3LDwvc3Bhbj48L2VtPjxicj4NCjxlbT48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6
JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmIj5mcm9tIC9ldGMveGVuL2lndnRnLXhlbi90
b29scy9xZW11LXhlbi1kaXIvdXRpbC9xZW11LWVycm9yLmM6MTM6PC9zcGFuPjwvZW0+PGJyPg0K
PGVtPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2Vy
aWYiPi91c3IvaW5jbHVkZS9nbGliLTIuMC9nbGliL2dtYWluLmg6Njc5Ojg6IG5vdGU6IGRlY2xh
cmVkIGhlcmU8L3NwYW4+PC9lbT48YnI+DQo8ZW0+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZx
dW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+Njc5IHwgdm9pZCBnX2dldF9jdXJyZW50X3Rp
bWUgKEdUaW1lVmFsIHJlc3VsdCk7PC9zcGFuPjwvZW0+PGJyPg0KPGVtPjxzcGFuIHN0eWxlPSJm
b250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWYiPnwgXn5+fn5+fn5+fn5+
fn5+fn5+PC9zcGFuPjwvZW0+PGJyPg0KPGVtPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVv
dDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWYiPi9ldGMveGVuL2lndnRnLXhlbi90b29scy9xZW11
LXhlbi1kaXIvdXRpbC9xZW11LWVycm9yLmM6MjA2Ojk6IGVycm9yOiDigJhnX3RpbWVfdmFsX3Rv
X2lzbzg2MDHigJkgaXMgZGVwcmVjYXRlZDogVXNlICdnX2RhdGVfdGltZV9mb3JtYXQnIGluc3Rl
YWQgWy1XZXJyb3I9ZGVwcmVjYXRlZC1kZWNsYXJhdGlvbnNdPC9zcGFuPjwvZW0+PGJyPg0KPGVt
PjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWYi
PjIwNiB8IHRpbWVzdHIgPSBnX3RpbWVfdmFsX3RvX2lzbzg2MDEoJmFtcDt0dik7PC9zcGFuPjwv
ZW0+PGJyPg0KPGVtPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7
LHNhbnMtc2VyaWYiPnwgXn5+fn5+fjwvc3Bhbj48L2VtPjxicj4NCjxlbT48c3BhbiBzdHlsZT0i
Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmIj5JbiBmaWxlIGluY2x1
ZGVkIGZyb20gL3Vzci9pbmNsdWRlL2dsaWItMi4wL2dsaWIuaDo4OCw8L3NwYW4+PC9lbT48YnI+
DQo8ZW0+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1z
ZXJpZiI+ZnJvbSAvZXRjL3hlbi9pZ3Z0Zy14ZW4vdG9vbHMvcWVtdS14ZW4tZGlyL2luY2x1ZGUv
Z2xpYi1jb21wYXQuaDoxOSw8L3NwYW4+PC9lbT48YnI+DQo8ZW0+PHNwYW4gc3R5bGU9ImZvbnQt
ZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+ZnJvbSAvZXRjL3hlbi9pZ3Z0
Zy14ZW4vdG9vbHMvcWVtdS14ZW4tZGlyL2luY2x1ZGUvcWVtdS9vc2RlcC5oOjEwNyw8L3NwYW4+
PC9lbT48YnI+DQo8ZW0+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVv
dDssc2Fucy1zZXJpZiI+ZnJvbSAvZXRjL3hlbi9pZ3Z0Zy14ZW4vdG9vbHMvcWVtdS14ZW4tZGly
L3V0aWwvcWVtdS1lcnJvci5jOjEzOjwvc3Bhbj48L2VtPjxicj4NCjxlbT48c3BhbiBzdHlsZT0i
Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmIj4vdXNyL2luY2x1ZGUv
Z2xpYi0yLjAvZ2xpYi9ndGltZXIuaDo3MzoxMDogbm90ZTogZGVjbGFyZWQgaGVyZTwvc3Bhbj48
L2VtPjxicj4NCjxlbT48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90
OyxzYW5zLXNlcmlmIj43MyB8IGdjaGFyIGdfdGltZV92YWxfdG9faXNvODYwMSAoR1RpbWVWYWwg
KnRpbWU8L3NwYW4+PC9lbT48L2k+KSBHX0dOVUNfTUFMTE9DOzxicj4NCnwgXn5+fn5+fn5+fn5+
fn5+fn5+fn5+PGJyPg0KY2MxOiBhbGwgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnM8
L3NwYW4+PG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPmFueSBoZWxwIGlzIGFwcHJlY2lhdGVkLiZuYnNwOyA8c3BhbiBsYW5nPSJFTiI+
U29tZW9uZSBtdXN0IGhlbHAgbWUsIHRoYW5raW5nIG1lIGZvciBhbGwgdGhlIGVmZm9ydHMgSSBh
bSBtYWtpbmcgdG8gbWFrZSB3b3JrIGEgY29kZSBmdWxsIG9mIGVycm9ycy4gSSB3b3VsZCBhbHNv
IGtub3c8L3NwYW4+IGlmIEkgY2FuIGFjdGl2YXRlIHRoZSBwYXNzdGhyb3VnaCBvZiB0aGUgaW50
ZWwgaW50ZWdyYXRlZCBncHUgdXNpbmcNCiB0aGUgcHJlY29tcGlsZWQgeGVuLWh5cGVydmlzb3Ig
cGFja2FnZSB0aGF0J3Mgb24gdWJ1bnR1LiBSaWdodCBub3cgSSB0cmllZCB0byBjb21waWxlIGl0
IGZyb20gc2NyYXRjaCBiZWNhdXNlIEkndmUgdGhvdWdodCB0aGF0IGl0IHdhcyBhIG5lY2Vzc2Fy
eSBzdGVwLGFzIGRlc2NyaWJlZCBvbiB0aGUgZ3VpZGUuIEJ1dCBJbSBub3Qgc3VyZSBvbiB0aGlz
IHBvaW50LjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj4tLSA8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+TWFy
aW8uPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_CY4PR11MB15594EC5255084B8AE509068F02E0CY4PR11MB1559namp_--

--===============0368069288==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0368069288==--
