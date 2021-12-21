Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3586347C999
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 00:15:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 689B510E300;
	Tue, 21 Dec 2021 23:15:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4692310E300
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Dec 2021 23:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640128536; x=1671664536;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=pSPi3UrQTyZ7jv1RPPzbJn8Jrx3qOgMcAvylrffHe4A=;
 b=gJAswsQRlx/3GfoVq2fULYgX31WnvibhdDBZdvbZGfxq9WhqoB9hKAiU
 QEjTDCFP+aOgu3bbNju23Hu1b0zofRekjlI/j/CBCp+noiNag7UbM1R2r
 ae1fiMDwDU2vAnF6xtCAYJnls3Ybb2wxw2OoH9WPzENT56R8EYCyKRscW
 ubT95PPzG4OYvZsTWQz4X608nHhbPyp1nTDMzS+inScXWnQBQvdYp4yVT
 PTJyMoOgQ0qjxO+tyMUmiDwBev/kGy2sjOaF9tmzOv2k6VkyN0ND1cO9B
 qCuIoquBDcOrvmNt8ZZOeQdjvTvP7nAkPWzoq5C9K27QWdKd5ANilhzu/ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="240733369"
X-IronPort-AV: E=Sophos;i="5.88,224,1635231600"; d="scan'208";a="240733369"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 15:15:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,224,1635231600"; d="scan'208";a="521448094"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 21 Dec 2021 15:15:35 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 21 Dec 2021 15:15:35 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 21 Dec 2021 15:15:34 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 21 Dec 2021 15:15:34 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 21 Dec 2021 15:15:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oHdU14BvM4Q/vKzG8g0PbuhUaKidlYsLDjiylLhu2UZm/vfe4tEeQZkPdgvXCaRYwfDOS/4HZLSPv45BoXUlHh5D0LQqNwYOl86O2g6JhR4SVJxTvOLZrMIWPTzALoZ1LcYs7cLedYmCL/gLEGV+uxaHlaoYXebSHCosgzcfG2tt481CUAp3im9BUzFdZr/Gf2wbFjpf/LKR6NTgIwvpevhknTYGex+JkEfsSR4eVGdOEvSRvqyRxUGT7rvYOlW9A2RrgsEVrnaQmW3yDxI4TRGupi7WhnSV/7gHBwD7kAJIMn5kluv7awQf/vgcwvjIN+lpvLKdPffHrhBZ4OV32w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pSPi3UrQTyZ7jv1RPPzbJn8Jrx3qOgMcAvylrffHe4A=;
 b=gMQY0Drxwp8iNakRei2Yk4xDgjByH5SA5oDwDM2ToXo2eC6TVRyagWuhem0RvMv9qoZCxjuleacqfOT1uaRCDk92AGYqLeKUr8XnSRcWvDn5yrRpiVkL41evcDUKj/xCGHM+EtcJyCozqO/mVxnO4TgocwwMJvygAuxZpyGE6v0FKPBErM/qIoJGMU8CRND6lfw+Bz0fdnZEydn5egpC1ENXIIJS0330N8XwrBxedC1ak5nT/VoPyPaPPDyQlOXcatPgoXjYX0JNj3grY4ZHuam8uGL3a7S8xsNyQlZcjHBtV7LuC5F6G8eiPR8oZCcwfLGFTUtYoUbcSUy00Zr7EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by SJ0PR11MB4783.namprd11.prod.outlook.com (2603:10b6:a03:2af::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.17; Tue, 21 Dec
 2021 23:15:33 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::7894:920e:c7dd:6abd]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::7894:920e:c7dd:6abd%7]) with mapi id 15.20.4801.020; Tue, 21 Dec 2021
 23:15:32 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Wajdeczko, Michal" <Michal.Wajdeczko@intel.com>
Thread-Topic: [Intel-gfx] [RFC 2/7] drm/i915/guc: Update GuC ADS size for
 error capture lists
Thread-Index: AQHX3/UdnUUo4tOgtUe/AX5UZn/RNqwRp0iAgAFMOACAKs5NgA==
Date: Tue, 21 Dec 2021 23:15:32 +0000
Message-ID: <62904afcd1fdebe6005f76be8218e065fcf9b4e1.camel@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-3-alan.previn.teres.alexis@intel.com>
 <3d153da0-8bef-1a6b-d292-34b1f54ac938@intel.com>
 <c8ad742588d71ed23e6cdc045e49a7d45dc2647c.camel@intel.com>
In-Reply-To: <c8ad742588d71ed23e6cdc045e49a7d45dc2647c.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 13192a16-5ab2-402d-26eb-08d9c4d7c999
x-ms-traffictypediagnostic: SJ0PR11MB4783:EE_
x-microsoft-antispam-prvs: <SJ0PR11MB4783FCCE8AE69A5B0F7DF95F8A7C9@SJ0PR11MB4783.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4ajmIeAB2IFr2ipjWxcu6xLUlgK2Q9/XLHzGvg9p7fvxASNIXQGCwuY7S8EqtiA3fhccAVIGS+aTOlGzp/7MKgXx1l5igmHOj8RLskj+ZOu5YXXrWPu7qkZRSNXjA0n4JI+KGjBmyX67B998m5ySW8dtB/b1YHYHgweHFSkGLds5VWzMIsUjl/wWi/4L3JfNI302ki6vZvrB6EE+rdkbgk1EX27Zgi0NzpvUwxuZnKmRN65/B0a+cn/MH2PFXsQ5ovdxS3ACLhYKKN4MOqAYT0q6Mrje1cBpWq5B2i/rs4ILX/iSokR3jDcDh5B7eCvgHCc1RY4lhNC52ePQlxoIEN5TysnOU0rYDxut1zUzSOVyhh0AhGIQmGmNK0Bfg8LRMJHydoggcyMWLWdg9Ek20jzA4Df0ZgQj7tUyO5kX7kiQYXZgvKoC5Tu5NP97bVVyIFVcBvGc/iTKp8nCcU5qJ3M6CEyPq7oUgaqyhvtXMuqmC8yC+AA5p5v+wTVFzadoV5MZ3l05e5/JE/pUkMkjhTs+c9Wrl9uRQxe9mtjQLFiudtghu1B+9yCkLzzSL0JKyr4xJEwEY9EUVBlWB9iq2yRcX6kfziF12alLO2sWyMCiIIc+64A+Rypx49v4Zi8ug5OnnEqYy3cTMrAl9HZpwVxvdq5Au+ptLKvDoYon1/I273CpL4y7oXUv0gvZLJxpFgyHIR1Qv0YXBuf3PPVmsA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66946007)(66446008)(53546011)(186003)(66476007)(6506007)(66556008)(26005)(64756008)(2616005)(76116006)(5660300002)(8936002)(71200400001)(8676002)(83380400001)(2906002)(36756003)(38100700002)(38070700005)(82960400001)(122000001)(110136005)(4001150100001)(316002)(6486002)(6636002)(508600001)(6512007)(86362001)(15650500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cWdXazZZV0dIcm84RWJ0WmJBRTBJdnV4NUhlQWhGQVpMTHh0aVcvVG1sVjN4?=
 =?utf-8?B?NG5yYzgzaElqdUVKdmNKUXRhT2RnYkRWZERUeG0ra1AxRUJwZUlQbElaNFBP?=
 =?utf-8?B?Q3NzVWFSa2svSWtwVE85SlRsdnRNcW50b0cvWFdqbnpML1BaeVlndFhnQ2pj?=
 =?utf-8?B?cVRsRXhrekdsVmlPZE5vdTJLME5pUEIxakQxMFJwSnlxNmMyUDVSY29HV1VB?=
 =?utf-8?B?YUJHektCenJPOU9xc2JUSGhlblNNbW84ZERKM1NRT2dLWTJHalA5elNncGVw?=
 =?utf-8?B?eFNTcjc3NlcxS2wzanlvaVZCcG43S2RHQmhFbVlKeGRYaTFpbVhHdk1kdlFK?=
 =?utf-8?B?bXp4ckJBTENwZ2NTK0tkcUJhbHhFUjcwNXUvQU1hbHJ1WjFqS1BObzVFaGtO?=
 =?utf-8?B?NlhMZXRtaDJmVG1LaTBVSklCYVQ4WlpSWWtCa0VpZVZmdURtbTlzV0Mxb2t0?=
 =?utf-8?B?eUY5TmJpbEpVTURmUmxzMEt3Qy8vWGIvSGRnU213emx2UHdnWWpmRGZaOVZY?=
 =?utf-8?B?Lzd3YjN2d1hOVCt1d09BeUlNeEtFUnluNjRTR3k2cWdzNURvOUlTTUhXS2Ry?=
 =?utf-8?B?bGh1YXltbVI3TE4rem9QcjRTMWZMQ2h5c2YzbmlzOTVmSzlna0Z6OHU4SjVW?=
 =?utf-8?B?bDUvbUExUnhsclMyL2FGbG96WlhMMGFGdCtKQitqZkZDZFZWL1N3ektlYkJG?=
 =?utf-8?B?bys5WitZM0pic05NMGY2c1AyUWhkTVZuZGdvanJPZkFpUTIybnAzTkJUY2M1?=
 =?utf-8?B?WkRKUW5XaC9ISDdHVXFXY0JtcVVITTNEclZUU29qdlU4UTRROGNadm84anFy?=
 =?utf-8?B?cDQrenlMeXJlOXNObU9NVjlvR0tWclpsQS9JV1h2c3hWbkMzeDNaMkJNc2g0?=
 =?utf-8?B?SW1xY1lEWEtLKzc4NVlVRHBMcDUyK0Y2V0QxWkhYOE9ZZGNTTm5kclZEeStX?=
 =?utf-8?B?VE1NTjBoNTBZRldteFFUci8zZmMwK1JpQ05MVFlzdmxXdlVhTmtzMk1FUXgx?=
 =?utf-8?B?V2czTDZGeldIRHdyNENHUlBCUStyS1NMWm0vOTBkZFhFbVkvcGxRbFVwcWlq?=
 =?utf-8?B?em1jS2VaWFZTSWRPeUVxRGZBR0FOTjZrbnliTkxqcERtTU1MSnBmZ0dQWWt5?=
 =?utf-8?B?UXFrNEZQN1ZEaWxqQTlpZW5vQ3JUVWpra1ZlL3ZUekNiUjlXcDdxdUQ3SWNQ?=
 =?utf-8?B?S1diaWxhWEkyOENyMW5TM0pLRnBIaGkxYnJSUjNaMks3T0pMem5Gc3dtSnhD?=
 =?utf-8?B?RHRBOFB4T2NLRDBOZDRUaGxEblFyVmcyaWgvTEczVzNrcmxYVko2Z01udjFw?=
 =?utf-8?B?MnlRUHlWNXVDdGNvamJVUjd4OHNsTjkrVFVPaitvT2ZTdUdkWkNpMndDWWlZ?=
 =?utf-8?B?OEVwQnFIczhERm1DQmVSU1BwQXpCVXRaVitYUDcwb2tBVDV0VjkrSlJkenJv?=
 =?utf-8?B?cllXOVY2VVI4Vm5TMEJEbktjaFZUYUcwSUZlQ1pwSWFTYzR5UXNDNGx0ZnhD?=
 =?utf-8?B?NVZLY0VLcXA3c25vcExlaHh1cjcvT0s2cE9xSzJ0TXQ4Tm1NWXkyOUI0OGRX?=
 =?utf-8?B?ZFdCL3p1UW4xSWtVUE16dmc4K2NDMS9oTlMydjM3eDU5dXZzcDRkSDczSDA4?=
 =?utf-8?B?THc3WTNCU0pNRkFwbURQVWtHWWlBV2NBMmlUNVdWR3ZxLzYzWm5sLzV6OW51?=
 =?utf-8?B?eFVpUlk5cUQyRFVUaFA1R2EwZEE2YlZORlNPMm9QYkJDNUZEeEU3MnlwRnd6?=
 =?utf-8?B?WU90cDVzbjkrSVc3R0ZJVEN6RldQdDRmQ3RrajY1R0lwNjgrQ3YxOU9UV2o2?=
 =?utf-8?B?cEkrclhtM01UZHR2QUhvcFJiM3BMRWtPNWl0QXlyZHREaU1zUkllUEJsRVhV?=
 =?utf-8?B?Yno1MGVsVW5ncGxBbm5KcEN3Mm5CWGxiU1hQcmc5N2VqcGNsZGNQZzVsdlZI?=
 =?utf-8?B?N1BLTlErSW5sN2ZtQit6TmJCenlPZEpYQ1I3eGplZVZpZzEwakVUSlo5RllZ?=
 =?utf-8?B?bUpwVEJYVDlnWnZGQkg0OXhMUXYvN1U2L2M5V0xuZGtCcnRZS3FGRWwvMWFK?=
 =?utf-8?B?UGZrc1R2WUVNZWN5aU9EWUJubnROZUNobWdKTytqVC9TQzhwS2hYb3M5MVdC?=
 =?utf-8?B?TmZmUVFBWVM2bnNROEN5Nmw4dzJrcXZmMkFidTF2T3ZxZGFwQk05cmFHWXpy?=
 =?utf-8?B?ZVRUZDBGRzQzZ3FyVUxrZ2RFSlc3WXVMRDc0NHQvYm93U29rWFBDQXI4cjlI?=
 =?utf-8?B?K2IyaVFjbXA2Y1VIaEl1NC9zd1pMZzNHZjRhWHNSQVN1R0JGcHRZUWNNL3o1?=
 =?utf-8?B?UW8raG5PVmlaVVpNeU5HYjJ5TGJWK3J3Qmo2LzZJSEtMWmhDdkVIQT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7CDFB9FE9F86254C8A7BCDDF6770D1B4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13192a16-5ab2-402d-26eb-08d9c4d7c999
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2021 23:15:32.7343 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JjrkUkIj7zwvaW+PYojpc26mweyQji8Gr1ML9Vyo4tSBHlhCqhrQRIu/9vm/BSpiOgc0v1zRXeflVtcnHFxeodvr2GvTu/ACymrZ4wl6HVcE+r3wRkbIesd6YrOMI4Fu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4783
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 2/7] drm/i915/guc: Update GuC ADS size for
 error capture lists
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

TWljaGFsLCB3cnQgdGhpcyBvbmU6DQoNCisvKioqKioqKioqKioqIEZJWE1FOiBQb3B1bGF0ZSB0
YWJsZXMgZm9yIG90aGVyIGRldmljZXMgaW4gc3Vic2VxdWVudCBwYXRjaCAqKioqKioqKioqKiov
DQo+ID4gPiArDQo+ID4gPiArc3RhdGljIHN0cnVjdCBfX2d1Y19tbWlvX3JlZ19kZXNjcl9ncm91
cCAqDQo+ID4gPiArZ3VjX2NhcHR1cmVfZ2V0X2RldmljZV9yZWdsaXN0KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikNCj4gPiANCj4gPiBpbiBuZXcgY29kZSB3ZSBhcmUgdXNpbmcg
Imk5MTUiIGluc3RlYWQgb2YgImRldl9wcml2IiBhbmQgc2luY2UgdGhpcw0KPiA+IGZ1bmN0aW9u
IGhhcyAiZ3VjIiBwcmVmaXggaXQgc2hhbGwgcmF0aGVyIHRha2UgImd1YyIgYXMgcGFyYW06DQo+
ID4gDQo+ID4gZ3VjX2NhcHR1cmVfZ2V0X2RldmljZV9yZWdsaXN0KHN0cnVjdCBpbnRlbF9ndWMg
Kmd1YykNCj4gPiB7DQo+ID4gCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3VjX3Rv
X2d0KGd1YyktPmk5MTU7DQo+ID4gCS4uLg0KPiA+IA0KDQppZiBpdHMgYSBzdGF0aWMgZnVuY3Rp
b24gdGhhdCBpcyBvbmx5IHVzZWQgaW50ZXJuYWxseSwgZG9lcyB0aGUgcnVsZSBzdGlsbCBhcHBs
eT8NCkkgdGhvdWdodCBydWxlcyBvbiBwcmltYXJ5IGhhbmRsZSBpbnB1dHMgYXJlIGZvciBjcm9z
cy1pOTE1LWNvbXBvbmVudCBpbnRlcmZhY2VzIHRoYXQgc2hvdWxkIHN0YXJ0IHdpdGggYW4gImlu
dGVsXyIgaW4NCmZyb250IG5vPyBJIHdpbGwgZml4IHRoZSBvdGhlcnMsIGJ1dCB3aWxsIGtlZXAg
c3RhdGljIGludGVybmFsIG9ubHkgZnVuY3Rpb25zIHRoZSB3YXkgdGhleSBhcmUgKHRvIGF2b2lk
IHVubmVjZXNzYXJ5IGRlLQ0KcmVmZW5jaW5nKS4NCg0KDQouLi5hbGFuDQoNCg0KDQpPbiBXZWQs
IDIwMjEtMTEtMjQgYXQgMDk6MzUgLTA4MDAsIEFsYW4gUHJldmluIFRlcmVzIEFsZXhpcyB3cm90
ZToNCj4gVGhhbmtzIE1pY2hhbCBmb3IgdGhlIHRob3JvdWdoIHJldmlldyBvZiB0aGUgY29kZSAo
YW5kIHRoZSBvdGhlciBwYXRjaGVzKS4gSSB3aWxsIGZpeCB0aGVtIGFsbC4NCj4gDQo+IE9uIHRo
ZSByZWdpc3Rlci10by1zdHJpbmcgaGVscGVyIGZ1bmN0aW9uLA0KPiBpJ2xsIGhhdmUgdG8gdGhp
bmsgaXQgdGhyb3VnaCBiZWNhdXNlIGkgZG8gd2FudCB0byBrZWVwIGZ1dHVyZSBkZXZlbG9wbWVu
dA0KPiBtYWludGVuYW5jZSB3b3JrIHdoZW4gYWRkaW5nIG5ldyByZWdpc3RlcnMgc2ltcGxlIChp
biB0aGUgc2Vuc2UgdGhhdA0KPiBhZGRpbmcgYSBzaW5nbGUgbGluZSBpbnRvIHRoZSB0YWJsZSB3
aWxsIGJlIGFsbCB0aGF0cyBuZWVkZWQpLg0KPiANCj4gVW5sZXNzIHlvdSBhcmUgc3VnZ2VzdGlu
ZyBrZWVwaW5nIGEgZ2xvYmFsIGk5MTUtd2lkZSBsaXN0IHNvbWV3aGVyZT8NCj4gd2hpY2ggbWln
aHQgYmUgYSBiaXQgb2YgYW4gb3ZlcmhlYWQgd2hlbiBzZWFyY2hpbmcgdGhyb3VnaCBhbiBvZmZz
ZXQgbGlzdA0KPiB0byBmaW5kIHRoZSBtbWlvIGJlaW5nIHJlcXVlc3RlZCBmb3Igc3RyaW5nIHJl
dHVybiAtIHVubGVzcyBpIGtlZXAgYSBzb3J0ZWQgdHJlZQ0KPiBpbml0aWFsaXplZCB3aXRoIHJl
Z2lzdGVycyBvcmRlcmVkIGJ5IGFkZHJlc3MsIGJ1dCB3b3VsZCBub3Qgd29yayB3ZWxsIGZvcg0K
PiBkaWZmZXJlbnQgcmVnaXN0ZXJzIHRoYXQgc2hhcmUgYWRkcmVzc2VzIG9uIGRpZmYgZ2VuJ3Mp
Lg0KPiANCj4gDQo+IC4uLmFsYW4NCj4gDQo+IA0KPiBPbiBUdWUsIDIwMjEtMTEtMjMgYXQgMjI6
NDYgKzAxMDAsIE1pY2hhbCBXYWpkZWN6a28gd3JvdGU6DQo+ID4gSGksDQo+ID4gDQo+ID4ganVz
dCBmZXcgcmFuZG9tIG5pdHMgYmVsb3cNCj4gPiANCj4gPiAtTWljaGFsDQo+ID4gDQo+ID4gDQo+
ID4gT24gMjMuMTEuMjAyMSAwMDowMywgQWxhbiBQcmV2aW4gd3JvdGU6DQo+ID4gPiBVcGRhdGUg
R3VDIEFEUyBzaXplIGFsbG9jYXRpb24gdG8gaW5jbHVkZSBzcGFjZSBmb3INCj4gPiA+IHRoZSBs
aXN0cyBvZiBlcnJvciBzdGF0ZSBjYXB0dXJlIHJlZ2lzdGVyIGRlc2NyaXB0b3JzLg0KPiA+ID4g
DQo+ID4gPiBBbHNvLCBwb3B1bGF0ZSB0aGUgbGlzdHMgb2YgcmVnaXN0ZXJzIHdlIHdhbnQgR3VD
IHRvIHJlcG9ydCBiYWNrIHRvDQo+ID4gPiBIb3N0IG9uIGVuZ2luZSByZXNldCBldmVudHMuIFRo
aXMgbGlzdCBzaG91bGQgaW5jbHVkZSBnbG9iYWwsDQo+ID4gPiBlbmdpbmUtY2xhc3MgYW5kIGVu
Z2luZS1pbnN0YW5jZSByZWdpc3RlcnMgZm9yIGV2ZXJ5IGVuZ2luZS1jbGFzcw0KPiA+ID4gdHlw
ZSBvbiB0aGUgY3VycmVudCBoYXJkd2FyZS4NCj4gPiA+IA0KPiA+ID4gTk9URTogU3RhcnQgd2l0
aCBhIGZha2UgdGFibGUgb2YgcmVnaXN0ZXIgbGlzdHMgdG8gbGF5b3V0IHRoZQ0KPiA+ID4gZnJh
bWV3b3JrIGJlZm9yZSBhZGRpbmcgcmVhbCByZWdpc3RlcnMgaW4gc3Vic2VxdWVudCBwYXRjaC4N
Cj4gPiA+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTogQWxhbiBQcmV2aW4gPGFsYW4ucHJldmluLnRl
cmVzLmFsZXhpc0BpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgfCAgIDEgKw0KPiA+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jICAgICAgICB8ICAxMCArLQ0KPiA+ID4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5oICAgICAgICB8ICAgNSArDQo+ID4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Fkcy5jICAgIHwgMTc2ICsrKysr
KysrKysrKy0NCj4gPiA+ICAuLi4vZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jYXB0dXJl
LmMgICAgfCAyMzIgKysrKysrKysrKysrKysrKysrDQo+ID4gPiAgLi4uL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9ndWNfY2FwdHVyZS5oICAgIHwgIDQ3ICsrKysNCj4gPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZndpZi5oICAgfCAgMTkgKy0NCj4gPiA+ICA3IGZp
bGVzIGNoYW5nZWQsIDQ3NiBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkNCj4gPiA+ICBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Nh
cHR1cmUuYw0KPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9ndWNfY2FwdHVyZS5oDQo+ID4gPiANCg==
