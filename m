Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 229E846DAF3
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 19:23:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DDA86E3B2;
	Wed,  8 Dec 2021 18:23:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 664746E3B2
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Dec 2021 18:23:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="218584588"
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="218584588"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 10:23:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="516328419"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga007.fm.intel.com with ESMTP; 08 Dec 2021 10:23:15 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 8 Dec 2021 10:23:14 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 8 Dec 2021 10:23:14 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 8 Dec 2021 10:23:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PJReaBbtd+xM0SeWkvbQL4SJdTijRzIM/svyXOsI6eE7fVD99epcT+qTOjYXHX+GBctnc26URzrnAcPgy4ZCAWOhNvv9N/k5x4gyo0igDHLq2SM7HEn4UFsl9xAkQy13n9ehWhZLuXOawsNoKwLsQuovHEipbilUj7q+TN6L0g/efRt9GGiz4q+vws3vEn+XSuIB+ZK1WZSlta+aBtC6geeKNsmzBiyfc9wXjdGE7B9qOKiAebQ8yNI3IyVqYpccohVIUX3W8aChegiGi8GEA2aIgZ55jDwmgVq3JzH43OgxHAnDX4B+klhS9RiI3m60BDNOXkHYRhhTyi9jjK0vJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BJNzo9G7db+WSc6r0QqUYX1MlvbmQW/bTFqPt4vy2gI=;
 b=OMLLFo+7Uc8XEDvJ0vUMrJ94RTG262B/oOMYTWfX4Eoay6H4v3ep76uqbeYO3gRYPd8PeIdDof5aTytO3ueDwkb9Py5D7UtygGQMU8nCRrTam6i+Lh5cpCP/wEP38pQRz1D4fiBA2Lwrs74w8n5KAKu9d+J0eQDzuzjGbl34nkZHdmhgnll+NKVww7sP1tl0MNpS+iEBG3wPSmqr2LHKNoWX16Vhc5RlsgXwPAZZTDTLzNku/sQBLtyGFpQo2oIbtp8/2k2udmAVbnkjjHEvuHd48j14Rc0MTqD2gtBHSTNlZWFSSgU43wOMaH+7RPqTuOKaeFf3Vu//a03ttp6J3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BJNzo9G7db+WSc6r0QqUYX1MlvbmQW/bTFqPt4vy2gI=;
 b=aO3js9vw1stvo3q7IOGWAWWNeh02zBRaGyQNEbI9bj80JRGH9OyZv6HztuXg2o5TvHd0yj97CFxRL/9HeHeSZpKFiOkN8hcZRavyh1XHADB9Vs2K9I09U6b9yGkIg7vkWHNC8+Il0ltSU2j+niy+2KYdJDzQjR+qHYQIlTTf0Kc=
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by SJ0PR11MB4941.namprd11.prod.outlook.com (2603:10b6:a03:2d2::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.11; Wed, 8 Dec
 2021 18:23:13 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::2d25:f356:ac1e:ff14]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::2d25:f356:ac1e:ff14%6]) with mapi id 15.20.4755.022; Wed, 8 Dec 2021
 18:23:13 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Wajdeczko, Michal" <Michal.Wajdeczko@intel.com>
Thread-Topic: [Intel-gfx] [RFC 1/7] drm/i915/guc: Add basic support for error
 capture lists
Thread-Index: AQHX3/Ucg8hFz/A3sE2VRZ8sgYaUEawRnd0AgBdj6oA=
Date: Wed, 8 Dec 2021 18:23:13 +0000
Message-ID: <c326d693e5d51ca8cc8a995028d9c644b86191d5.camel@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-2-alan.previn.teres.alexis@intel.com>
 <8e7dbd9e-1947-aee4-9a28-4b66ad62b05b@intel.com>
In-Reply-To: <8e7dbd9e-1947-aee4-9a28-4b66ad62b05b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3b6ab928-0a37-420a-f3e5-08d9ba77cc1c
x-ms-traffictypediagnostic: SJ0PR11MB4941:EE_
x-microsoft-antispam-prvs: <SJ0PR11MB494158960E9071DE82B19A218A6F9@SJ0PR11MB4941.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mHSV2apZw2iTZLOyWV4s7l8dxawaQZWmkhT/75gtBoBBt4TfkQNJ1+6XrOiu5trjyPhvuWg1iNpjkqNYYSLNfgCWnQ54mcBRRHcwZKQl3/KqWeW1KI2b0F29KXfGf9UPgcfsueemPAXJ2STvxe0RboSF8tv97bFy+Dg3gAdDiWA3aUj42+ntLlJvwef3mqV5TONMXHRqbXW5T/JkDTU+jc0VX7FbzQAqaiixxve6D8kTFHcNjNqrdaxdzjoDxKvy5ukLE6DTug7tMyIdcM0ZIYg33fHWWUR+IGmprJEcQ9V87UQkxL8wNe8MCpa6vDPNx0A98KHjmdrOwOVPQRk9MF7syNmMGO8FtubMEW6wP29R/AiPDCcZIlor8rvpoEMaUh1aSJjFNMo5+I1gzupB1Ae3Vmfj+BqBqbaFutgSTrwfnEw0ZoVeS8hjHFisgdRBQYGyB7gTdtRZZIqXZdVFvwXIGELF8zO8+z7YoV/15hqZCzdO0Li9d/AF00UGQWXNbgY3gW5yjFOpXkpfOzzx/o0zCJYhYcDDOtjO9Z/RGD+yIGYsm4KKYwpWM5uOE6Skj9EO2dFPZWSaF2WLX94g/CnUaHV1y3zLeU6CwvCMdL5Zc32q0Kwgu54xf9gjG/3UedQgkd0xTjeJmkCRMEwM926c/hkLS0BzVJwxorpPoQlZbsP6T+OqmtapTeWRvoQDstTUTpG/70r6RO6ugtlC0w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(122000001)(8676002)(64756008)(66556008)(316002)(6636002)(76116006)(66476007)(66946007)(71200400001)(38100700002)(82960400001)(83380400001)(26005)(110136005)(66446008)(4001150100001)(5660300002)(36756003)(6506007)(38070700005)(86362001)(2906002)(6486002)(508600001)(186003)(6512007)(2616005)(53546011)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L1FHRnUyMk1BalNBSHVZN1NYcXcvSlRNNUczQitJa2NRVVF0SFBxMXFpbUk4?=
 =?utf-8?B?ZWtMTVRlWUQ4WUtwTTJMaGIzMkJ0N1BCdEMraDdhMTgrOEJnZlVOZmgrclJW?=
 =?utf-8?B?bVVYb1Y1WjU2VmxWNUdRb3J5b3ZzSjBtQ0xlTGxubVlwSmZoUlFzYXhza2ts?=
 =?utf-8?B?U2FwYkFTeDNvRktGTmhYSzRhUDkyclR0ZzBzczRndU9jQVY5NjY0ZXBMemJy?=
 =?utf-8?B?V1RwTkJFVis0N2FHV3A4NmRnY1AxWUFMWXhSNkxrMDc1ZHl1OVhSTWl6Z2pS?=
 =?utf-8?B?ZXZTOHdkK0ViV3dxbWxwdGpWaFRtek1kNkpvU1ZSSE5Bd1p5eGluUXBScWlP?=
 =?utf-8?B?NER4T0FTeG9WSzl5MGNTNzlDTDQzNnVoa3ZvVXBLRFdKWWdndFlid2Y2bGdx?=
 =?utf-8?B?ZGlWam15QS9DemZOSVlPelVsSjY3Nm1RaE42ME5uZkR6TFBKMVUzM3hFRTFy?=
 =?utf-8?B?NnNmYzQ5L3c5cG56NXVXTlNBT2RLc1JwYzVLclYvQmZQZHZCNHJDTFhjalYr?=
 =?utf-8?B?bks4ejVwVEZQVEh5MGhvTlk5NG9OSmtUT1lOKzcrWldUdXd4K09UbTBIYXQw?=
 =?utf-8?B?czliS01ETGllcUcydWNQaVRoN1h2ZzdXWitSeHFQaEdHOGYwM21xeG1pWmx0?=
 =?utf-8?B?bkpnNGQ2aHFpSmh1bFNwbTVDb28rSnA5U0cxVFFRek9IQXFyb2JMN21hTFgx?=
 =?utf-8?B?aWx0VnRSTzVXeEIxQWpGUVFrd1grZE5lOE83SGlJUnFaUHArVElyeFZSUnc2?=
 =?utf-8?B?N0h4R3RsTGpPWWF6cktiTk8xcllGOGdWRTFsd3pHcDZVZVFQRWZZWE90SU01?=
 =?utf-8?B?MDNEaTBLdFgySUxycmJtYkdiUEo4cXUwRzRDOFZXV091ZU1LTWwwOUpleTZS?=
 =?utf-8?B?R1VKTGtHcHhpdEIrRUtkWlZDR29KeDAzdHhzUmtwYVYrWUZHMGV6b0ZJQjND?=
 =?utf-8?B?V3dGYnVMZWZMRDBweVd2SkdKakJXeXhDMGlhVnRrc21MZVdDZjk5UVkyR05y?=
 =?utf-8?B?OTVqQ01lM0FRV3hDcVRJQVZSTVl6ZzJBTmVEWUEvU2MralZEWDFOZDlycnpV?=
 =?utf-8?B?UkxpVmZ2RFkyeWJ5OWN2bDRxcWxnRUNTTHFSaXl3NXUyM05tZXNOOC9LMzls?=
 =?utf-8?B?eExrb2xCMmxDckJhOHkyQy83ZDNEYXdyUDRVT1k2S01scXpDSzg0dFJDZldv?=
 =?utf-8?B?czJieXppSjJON1JHeTEzemgzNG1XaUV2RlFOd1p6Rkk1N2EwQkx0bkNxT2Ny?=
 =?utf-8?B?WHh4Lzhrd1k3NDFhaVVObS9sem5sOVEwMmxKbVFEb0syYVhwcHNxdHVHZGpU?=
 =?utf-8?B?ZW5yeFA4Nm55Y3JURWpYR0Q1NjRqV0FhdDlnV1VjNFNuQzd2UDBOclFjUkkw?=
 =?utf-8?B?Z0piR0NWUmQyczRMZDBwUEZvREltcVFyblYrc3g2QnE5bEkzRWswbVJoN1VS?=
 =?utf-8?B?eGJVVWJNNk5va3ZNSWpRVHdTaHZtVitXVFhKN1NTTHB6eVJsWGhlL05wcklt?=
 =?utf-8?B?bVVwcmFtWllsVTlhUTZQaVp4SExSZzhYZ1VMYnAva2U2U2pkY2VaWHVBRjUz?=
 =?utf-8?B?M1c0ZGMzd1NiQVNWbXRCNTZrS0NML2swYnlLVERCUWp4cXMwaU5ranoxdVNB?=
 =?utf-8?B?REw3RTZIZHlMclpoblF6TFU1N2gxeFpFWXY0bmErSEFTQ2hhZU5yaVpVY1Bj?=
 =?utf-8?B?dE56a2NaM1p5RE8zNVhLdWxPTVhDTWxsZ2VRYmR4SDh2T1NZMHZJSnhOaW5p?=
 =?utf-8?B?Y3B2RHlyaXhDbXpIQWlRQU90azhmeE9CdlY4dVVhNkt6OTZLV1gweUZTVmxv?=
 =?utf-8?B?REpVaGkvY1VjK1NHNVhMMzd2QXJQYnBZOEN6VEN1WTBVRTJrcllDRlVpbHJt?=
 =?utf-8?B?WVF4WGJuMVBqVHZxN1dLSHd5OXBXUlNHRHhLaTBRVTcvdUFmS3FVNWJVM2FJ?=
 =?utf-8?B?elJxcm96Rm51UmYrWDZiaFpVQkhQZThlQkxST2hJK0plQUFmMVZEQkN1Z0ll?=
 =?utf-8?B?THE3MFh2QzFudkF4VitZWklhdjlFZVc3YWJiNWplUm51bXNzL2djWFlSOFRJ?=
 =?utf-8?B?S1FiSnBFV0w2T0xZNXdHZXdZYm40WnlZYTZYNXd6NWlEOHdvTWI3NUJ4emsx?=
 =?utf-8?B?cU1IbkxBaUh3WTRpeTd6TjBrd2szRkZTMjJScWs5azIyMWg4UEN6aE1VcjRI?=
 =?utf-8?B?cjczaHZzTXF2UG1hMEdXdStSY1UzRWNTMUFnZUNhTDB3b1I5NDhHUGtLZXov?=
 =?utf-8?B?QWszNi9wQlIrQ2RTbWNqcEQ0MDFyTEdXMXUwMGs0S0UwZTNKVHh3YkwyTlJq?=
 =?utf-8?B?cTRQcXYrUWlKVUVJUmp6VFJsYzZZZ1F6ZFlxOTluUDdUWEZpRHVsQT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4E9B29F444F69C4591C40C73F297AB90@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b6ab928-0a37-420a-f3e5-08d9ba77cc1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2021 18:23:13.6880 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1Er7iLtwhrPIjtvXdvuzZ5E5XMQRIvmOGY8ieHclH2pgNnR1MrawqYeO6rnui6A68zlnzfAZDTT4Fph+VniSPYi0rP+dMSqs1X3UHyFvYdbwk7/GG008VvaiytZc5dMe
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4941
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 1/7] drm/i915/guc: Add basic support for error
 capture lists
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

SSBtaXNzZWQgcmVzcG9uZGluZyB0byB0aGlzLg0KVGhhbmtzIGZvciB0aGUgcmV2aWV3IE1pY2hh
bCAtIHdpbGwgZml4IHRoZW0gb24gbmV4dCByZXYuDQouLi5hbGFuDQoNCk9uIFR1ZSwgMjAyMS0x
MS0yMyBhdCAyMjoxMiArMDEwMCwgTWljaGFsIFdhamRlY3prbyB3cm90ZToNCj4gDQo+IE9uIDIz
LjExLjIwMjEgMDA6MDMsIEFsYW4gUHJldmluIHdyb3RlOg0KPiA+IEZyb206IEpvaG4gSGFycmlz
b24gPEpvaG4uQy5IYXJyaXNvbkBJbnRlbC5jb20+DQo+IC4uLg0KPiANCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMNCj4gPiBpbmRl
eCA3N2ZiY2Q4NzMwZWUuLjBiZmM5MmIxYjk4MiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYw0KPiA+IEBAIC00MDAz
LDYgKzQwMDMsMjQgQEAgaW50IGludGVsX2d1Y19jb250ZXh0X3Jlc2V0X3Byb2Nlc3NfbXNnKHN0
cnVjdCBpbnRlbF9ndWMgKmd1YywNCj4gPiAgCXJldHVybiAwOw0KPiA+ICB9DQo+ID4gIA0KPiA+
ICtpbnQgaW50ZWxfZ3VjX2Vycm9yX2NhcHR1cmVfcHJvY2Vzc19tc2coc3RydWN0IGludGVsX2d1
YyAqZ3VjLA0KPiA+ICsJCQkJCSBjb25zdCB1MzIgKm1zZywgdTMyIGxlbikNCj4gPiArew0KPiA+
ICsJaW50IHN0YXR1czsNCj4gDQo+IGxpa2VseSBpdCBzaG91bGQgYmUgInUzMiIgYXMgZmV3IGxp
bmVzIGJlbG93IHlvdSdyZSB1c2luZyBtc2dbMF07DQo+IA0KPiA+ICsNCj4gPiArCWlmICh1bmxp
a2VseShsZW4gIT0gMSkpIHsNCj4gPiArCQlkcm1fZGJnKCZndWNfdG9fZ3QoZ3VjKS0+aTkxNS0+
ZHJtLCAiSW52YWxpZCBsZW5ndGggJXUiLCBsZW4pOw0KPiANCj4gYW55IGVycm9yIHJldHVybmVk
IGJ5IHRoZSBDVEIgbWVzc2FnZSBoYW5kbGVyIHdpbGwgdHJpZ2dlciBmdWxsIGR1bXAgb2YNCj4g
dW5leHBlY3RlZCBtZXNzYWdlIC0gZG8gd2UgcmVhbGx5IG5lZWQgdGhpcyB1bmxpa2VseSBkYmcg
bWVzc2FnZSBoZXJlID8NCj4gDQo+ID4gKwkJcmV0dXJuIC1FUFJPVE87DQo+ID4gKwl9DQo+ID4g
Kw0KPiA+ICsJc3RhdHVzID0gbXNnWzBdOw0KPiA+ICsJZHJtX2luZm8oJmd1Y190b19ndChndWMp
LT5pOTE1LT5kcm0sICJHb3QgZXJyb3IgY2FwdHVyZTogc3RhdHVzID0gJWQiLCBzdGF0dXMpOw0K
PiANCj4gSUlSQyBhbGwgbm90aWZpY2F0aW9uIHN0YXR1cyBhcmUgZGVmaW5lZCBpbiBHdUMgc3Bl
YyBpbiBoZXgsIHNvIG1heWJlIHdlDQo+IHNob3VsZCBhbHNvIHByaW50IGl0IGFzICUjeCA/DQo+
IA0KPiAtTWljaGFsDQo+IA0KPiA+ICsNCj4gPiArCS8qIEFkZCBleHRyYWN0aW9uIG9mIGVycm9y
IGNhcHR1cmUgZHVtcCAqLw0KPiA+ICsNCj4gPiArCXJldHVybiAwOw0KPiA+ICt9DQo+ID4gKw0K
PiA+ICBzdGF0aWMgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqDQo+ID4gIGd1Y19sb29rdXBfZW5n
aW5lKHN0cnVjdCBpbnRlbF9ndWMgKmd1YywgdTggZ3VjX2NsYXNzLCB1OCBpbnN0YW5jZSkNCj4g
PiAgew0KPiA+IA0KDQo=
