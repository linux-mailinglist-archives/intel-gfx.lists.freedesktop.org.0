Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 596DC6071EF
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 10:18:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7483610E491;
	Fri, 21 Oct 2022 08:18:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26AB310E491
 for <Intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 08:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666340267; x=1697876267;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k3dlaJBBjPoThRTAsQvvp6iDNi/eA6pyAsinuHpfzvI=;
 b=nwrI7fqwg73aPKQ6dZJIFIyrv8dmHSQ+BCOw6Fd+S+mYcdJ1s4pK75xH
 RZTZuU0EjThq1yLn9iGq66Lx86EPbNCcUzDczrtFQks0qsm+s0wfemFU7
 HMGWt0qcREr8XvNq0EGlgo4gKB5Cmingst2H+UKtWat2tDgw/tDz6h8Ys
 jI/Yy8uT1IHqON0OXaIRbGEL7BFHZD+717qSLy9BMVBw3WQ72AmIFgqc0
 LsYAjyiKb8T2Podev2h/Tz0KkAkHiJtsFeVUvcyOJYUo8TQ1PWHpvEP2L
 8bgfDn+YPKKXQf8AyzpxPpOjkJi74p8JI7fjseFhCxzDqatzenpcwS4Ww A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="393247390"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="393247390"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 01:17:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="632794032"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="632794032"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 21 Oct 2022 01:17:45 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 01:17:45 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 01:17:45 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 21 Oct 2022 01:17:45 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 21 Oct 2022 01:17:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m/bc/lLd7dA+JyE3mKFaqJNg0QMSKPvqmn/NuY8q3Y0bTeUqa5V2LjbGSZBT89vRNqbcUq8yUaNeWj0WqCnT0UZyzydGRASpJDcObTqKyco2JpVBsfvjnpTRDEcDk8z1WgeydR4SCD5ZZnQD7IvqlXOI7pf+ll8+EbUYniAvUWZobbM5X1/Nb25NaeaRAD9OqZXATfyI7RATzIbysaNIaZk0eQ+cqkOhFV+4tn45PakI7LLp0J5YP1+TbG338/g1pd4GWnUEPCwa2aiufz7AhwWFyTOmWYfAgL01Gqpn+XmqO5YkfOjgppbQx30ySYr60ml8NuKCdjZia7+5kvr/hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k3dlaJBBjPoThRTAsQvvp6iDNi/eA6pyAsinuHpfzvI=;
 b=MP6v5uudaeTtlnSPUkz0sBQ50OJy0nKDTDdpqoGquph+/9tlH6FlbYoHITvDnoZXNlK2Y8Y4Us5ShuKAXUhx+FTI7C2pBVOhWWHD4TOusBSbjMiqOkBjXlTm8hEIHqzRzHC9JamMyvXoOesynj2kQmDbWULbyRyi8f+2aA4HLjHmTVa8PFVQ+AxpYnUvVcnjTvJ7rRO3CbVDH1c7+IMuq1dwbcBJbgsUpOIkQamcwtiUuJvPwznaTez76tyhzTX9JQ8wKqX2xybldqtaFoG0OxwH//qEjYjSwAFYYF+2jzQfkkFdcqg+OWo4Qil8lbpFdzivSoGwPE6ewkz8JX+Hjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 (2603:10b6:301:51::10) by PH7PR11MB7641.namprd11.prod.outlook.com
 (2603:10b6:510:27b::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Fri, 21 Oct
 2022 08:17:38 +0000
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::252d:1a18:47e6:d80]) by MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::252d:1a18:47e6:d80%6]) with mapi id 15.20.5723.035; Fri, 21 Oct 2022
 08:17:37 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/psr: Remove inappropriate DSC slice alignment
 warning
Thread-Index: AQHY5REUrhz2rK9ZjEWBEe6ZTJTPbK4YgNRw
Date: Fri, 21 Oct 2022 08:17:37 +0000
Message-ID: <MWHPR1101MB21573725679E64D4FA0A62B2EF2D9@MWHPR1101MB2157.namprd11.prod.outlook.com>
References: <20221021054922.2753034-1-jouni.hogander@intel.com>
In-Reply-To: <20221021054922.2753034-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR1101MB2157:EE_|PH7PR11MB7641:EE_
x-ms-office365-filtering-correlation-id: a6e15a4f-dbe9-4d7a-b183-08dab33cb6bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pefJLxo6KlXT5q0GE/UqQh+rGDtTb8bQ3F1JQ98SRGqpBuTZB32D/hpYThywSSgJMIAu2eynkomhWXIiX/PZDMHB11Z1LyQiAXbtUCExXxM1FrKuDrpsuctbKnlb1ZDAzrW/t70Uxu5kiYvSpVSQ918hf8E6FNgc5ASbXtuYdd5V0oDt2RFCPhDT1j3Vds54DOLVvWznpKyw4Fi8mLh44NUX4z6OX44iA2HPAjf+KGoqKjYTe/mCPMxbQkRCTGQHtThbuZ+nZ18sCYeyXZOQ+jYmw1U9r7bvOyMbNCe7SjR+R3Wv6J5uNISUYLrdUMj02Pz/NQorQwJq7onkLSWVDd9T8icukk+LdQGOyvwQ9U2ghEvTF3tPxWyvrc2/FJ5gxOcoGccYutnvq4gh+lv928UzktJnuIy2kFaiOXtimlnJnG9OR6oQEsmYO/qee99pOOb5vIkI8Ki5AL8YVtvNx7Q9IlqF3usnq8eDdM3i+BBATZJv8qCIPG+mDXZZnc+0O7MCPNAV033AdsJqcUDFJJgie0cuTCnMlDUZ0n9lvAKVSTuqPGsSWj0uIwBGFuSD0niBDu/v4V1r9sB+MsvS6mJD+54MMmtSj7yxyYQzyGSIn4teUn6OPQMuxlQxHQWvGcEGFnaEeobYVS99kIxpVmTBlymDVR9l7g261uhlInO1CGRmGsLE7mSFQm1FUjF7ZMCUdTvyl9120gon5uxQQg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1101MB2157.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(39860400002)(366004)(136003)(396003)(451199015)(66446008)(8676002)(41300700001)(66556008)(478600001)(107886003)(64756008)(4326008)(76116006)(5660300002)(316002)(66476007)(66946007)(71200400001)(966005)(2906002)(26005)(9686003)(53546011)(7696005)(6506007)(82960400001)(122000001)(55016003)(38100700002)(83380400001)(33656002)(66574015)(86362001)(186003)(8936002)(52536014)(110136005)(54906003)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NDhZbHNtejdMaU4yV3BoMkJPMFNldUN2Z05STXhaaXhwMEN4M29XOTRPcVdp?=
 =?utf-8?B?Q1dqdmF4VlRBZ2NsQzNQeEIrVG8vYmk3V3ZXWVE4ZW96Rk11eW81Mk9QNU4x?=
 =?utf-8?B?ZzAvSSsrdnRONURmalZrelBjejJYTlZSQ3dIeEtTSDZueUlUZUJrcHI0U2ZK?=
 =?utf-8?B?N2dPUkU0bVZKekt0d1RHbkNRWWFINFpPOVlydGYxN3FYNlQxL2xuOGY0Umxh?=
 =?utf-8?B?eWd4QUVQakhxdDMwRnE1WjBJaUUxQVVqd3JkVnc1S1NNaGQyODZqQ2VDQXEz?=
 =?utf-8?B?WlhLRUYwZmh4TjJLZlE4WDBGbXVQemlTMHFLWWRBdFVTMEd1bllFZFVmbEpj?=
 =?utf-8?B?MG44WSt6QVlwUHppMFNYaHJpWmhtejdKUWRkb0E2d25KWHFHTmpDeTlZVHRp?=
 =?utf-8?B?T2RvakIvbGVrWThsS2xmSG81NzJyUWI3cVpaQWFiaUhzMXRzdzluYndYY1k2?=
 =?utf-8?B?TnRBVW9RUkFKYkc5cVV5eHRIeVIyRzJvL2JWdi9SVnIrcGdIem5kNFJ2WnRv?=
 =?utf-8?B?M3RyV2I3Njl4QUkzNkczdjFDcDgwWDl1OVMySlk1aEl0VElmZ1p3T3AySDdL?=
 =?utf-8?B?OGFwOVJtanloaVFyWnJYZFpXelRLUldOSktzTXBsRDBEckE5ZFZrMXRoVCtZ?=
 =?utf-8?B?cy9RanZSdG4yZW5wL0NHZWhrQ1RwS2s4NnZFalNxVDN1bVNjTVRHTFpHdm4v?=
 =?utf-8?B?U2pIVXN2Z1g2eFNZNU9ia2RrdS96R1ZmSTcyYXBUSVN5TkdweTJZNVVqTHNz?=
 =?utf-8?B?SWxKRkFmLzQwN0dXaUZTdUVjS1ZsUnQ0dXYySkc5S1pMY0tXZ3ZzUzZnd0o4?=
 =?utf-8?B?cjhXSG81eHVLWkU5SkYwWElXMDBTOVg0b1RpQXViRDk0L2VJbG84SE92eG11?=
 =?utf-8?B?YkYyTjRGN0p6Z0VLbGxJR0xibHN4YmYwVE1PV1Fvc3NpZ0NDYUhVR2R4eVNB?=
 =?utf-8?B?dE4zZUxqcUxWRnhaSjVKNjMxQWo4ZHNiSmVOZHM0eHYyQkhoQnNMV1AwcU9B?=
 =?utf-8?B?aVdzaDV6cllSTjZyS3FhVEs4Rk5FVDdRd2V2bXhkcGRZM0pIN25QeW9sME4w?=
 =?utf-8?B?OWx5TnBmKy9nVTh6NFVUWWRhSWlFWDlPMC9CSks0V0RBVmt0c1RXNFBrVTdQ?=
 =?utf-8?B?K3J6L2NRWjlhZlZ4MTZKNWprd1Y3elVnTVdJK3U1T3NZMUxuRUhrOVpVdTB3?=
 =?utf-8?B?L0dhQ0dPNTZSV3RQL0VDcGovaFlmM2xzVmxsQ2IvTndhOHpxWHpsMjRON2w0?=
 =?utf-8?B?ZTg4MVhyQ3ZwelJMU1RoTWszb3U4VHc3THVNZkYvT3VBVXMreHkvSXJ0RWN3?=
 =?utf-8?B?WXgydU9DRzJBRXJaVmJlQ3NvKzZST1ZrbjlJNC9oOENSSVlyNSt1RGEwcXhW?=
 =?utf-8?B?MnVuZkFhcEhtN1liTUlSSFRPbURXUjc2VEVsWEVQZVpUMTMrbWsxSnY4TUpW?=
 =?utf-8?B?SG1UZENwY0V1VDh6dWt0cDNiaDlzRmU5Ly80dm9PUVcydi9zQytBY1RncEpx?=
 =?utf-8?B?SSswK1JlT3JQOC9CcWRaQ2xWN1NJN1phVCtMWGRYcEIrNVB6ejFhU2xLS3Y3?=
 =?utf-8?B?QzFsMGFUSHhyVE4xRmZGd2pCT283M3ZrY1c3ckwzUWZNWVVQa25Kc2l6a0lB?=
 =?utf-8?B?RzRXMU01cWFHNkJiZGRXcmRFWURiNnorWHhSbU5aS3JoUmtPaGpQY09QQWMy?=
 =?utf-8?B?aDdMdnVBcUEzWXpacUs5NjRmQ3QvVjgxQnducTdjVitib3FmQXZ3eEVZMFJG?=
 =?utf-8?B?M2JneVV5VGl2bUtqVnN5ejcyUk1jK3BId2JZMzhUc2YyZUdkRXlFMW8wR2t3?=
 =?utf-8?B?SU9GUG5TNW9Bd2xTVTFYSk5STVZ6RitzczdjazduajI5aUhSdGF0bXA2ZVZw?=
 =?utf-8?B?NkF2Ni9ON2g0MWM0L25rTGRXdnJxaVdqTVNKV1RKNVMzQVlQN2tOeG40Znlz?=
 =?utf-8?B?VHBJQysrYVZvbjhNRDhkMjYvWk5FM2c1UFl5Q2tvekJEbVR1MWowbVdnbUd0?=
 =?utf-8?B?bHB2aVdHcmhoSG5KbVhycjkvcUQ3SG42cDJUSU1ta2hpR2hGWldtbk9ucUJN?=
 =?utf-8?B?VXJLMFljM2VGeUxSQ0YwMnNBTzE4clRxM0c2V29HQWwremJ5c2RlZjJVSTdr?=
 =?utf-8?Q?MI4evbi2tMUsIPnoLZdTKpsYT?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1101MB2157.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6e15a4f-dbe9-4d7a-b183-08dab33cb6bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2022 08:17:37.1172 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VxpBJkj7JY8jfur/4cMAASTkMEkFXUYhNdQm0Jd3rYVrSYNJTZe3f/DgVGsQt+dzP2uQ09m/Lv1fHXnDU+DaQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7641
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Remove inappropriate DSC
 slice alignment warning
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBPY3RvYmVyIDIxLCAyMDIy
IDg6NDkgQU0NCj4gVG86IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEhv
Z2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPjsgU291emEsIEpvc2UNCj4g
PGpvc2Uuc291emFAaW50ZWwuY29tPjsgS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5j
b20+OyBHdXB0YSwNCj4gQW5zaHVtYW4gPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4NCj4gU3Vi
amVjdDogW1BBVENIXSBkcm0vaTkxNS9wc3I6IFJlbW92ZSBpbmFwcHJvcHJpYXRlIERTQyBzbGlj
ZSBhbGlnbm1lbnQNCj4gd2FybmluZw0KPiANCj4gU2VsZWN0aXZlIHVwZGF0ZSBhcmVhIGlzIG5v
dyBhbGlnbmVkIHdpdGggRFNDIHNsaWNlIGhlaWdodCB3aGVuIERTQyBpcyBlbmFibGVkLg0KPiBS
ZW1vdmUgaW5hcHByb3ByaWF0ZSB3YXJuaW5nIGFib3V0IG1pc3NpbmcgRFNDIGFsaWdubWVudC4N
Cj4gDQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4N
Cj4gQ2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IA0KPiBGaXhlczog
NDdkNGFlMjE5MmNiICgiZHJtL2k5MTUvbXRsOiBFeHRlbmQgUFNSIHN1cHBvcnQiKQ0KPiBDbG9z
ZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvNzIx
Mg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGlu
dGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5j
b20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
IHwgMyAtLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDkwNGExMDQ5ZWZm
My4uNjRlOWUxMzRmZGNhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gQEAgLTE2NzgsOSArMTY3OCw2IEBAIHN0YXRpYyB2b2lkDQo+IGludGVsX3Bz
cjJfc2VsX2ZldGNoX3BpcGVfYWxpZ25tZW50KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjDQo+ICAJcGlwZV9jbGlwLT55MSAtPSBwaXBlX2NsaXAtPnkxICUgeV9hbGlnbm1lbnQ7DQo+
ICAJaWYgKHBpcGVfY2xpcC0+eTIgJSB5X2FsaWdubWVudCkNCj4gIAkJcGlwZV9jbGlwLT55MiA9
ICgocGlwZV9jbGlwLT55MiAvIHlfYWxpZ25tZW50KSArIDEpICoNCj4geV9hbGlnbm1lbnQ7DQo+
IC0NCj4gLQlpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpICYmIGNydGNfc3RhdGUtPmRzYy5j
b21wcmVzc2lvbl9lbmFibGUpDQo+IC0JCWRybV93YXJuKCZkZXZfcHJpdi0+ZHJtLCAiTWlzc2lu
ZyBQU1IyIHNlbCBmZXRjaCBhbGlnbm1lbnQNCj4gd2l0aCBEU0NcbiIpOw0KPiAgfQ0KPiANCj4g
IC8qDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
