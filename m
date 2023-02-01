Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 165A6686CBB
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 18:20:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEF6C10E434;
	Wed,  1 Feb 2023 17:20:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7289910E434
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 17:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675272052; x=1706808052;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=xStCfsquRKp9pMjBjNWpYPSrc8dgCIl6H/XzhEb/+dg=;
 b=R7p4sXD1N/ToZ+oXSM9ZyB6G4zTqG7t/rwQMRo942IzPAN/wedQMsj/x
 v2DTF/MmKtsG9NvMNs5u3lrws7Pi8aAvXbNEI7e4/3CjT1kSVSH85Jco3
 dgk8wKt6qfHkdqLR2J/208Sw1atHKP0M+qkaTwgg8J73nvX5eIv9J9Zr9
 VENO6vn/lgYux5L5w/F6ImrVJyhPLeBt4qfym1AA5Q9sgmHqkBUZkKEE3
 PRGN+7Mse8IGdGt3oZhYGPl57JfkX+OWi2VMFAGSJLkVwbUDOhUnNrHvq
 MILseIHg8RPUkGC+XB92cqKdhTGiT4QM06tkdchM47OOO2ATZTqWHLfXB g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="414415184"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="414415184"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 09:20:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="838857138"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="838857138"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 01 Feb 2023 09:20:50 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 1 Feb 2023 09:20:49 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 1 Feb 2023 09:20:49 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 1 Feb 2023 09:20:49 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 1 Feb 2023 09:20:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DBc1P43Pht23di/ojyZtCeffmmkiz4L2HbkJg0ekK1/aJnvI4/WKHnDRioFbNpp+ZR1Pw9ROtsjmO4xxQnbUHDwWEvpxc5Lk/TEI2yS6aqJejeML8Ufh88r0TbIknZdp10kZMxCltY1jT+vl9kMHqtityn42L1HuCZzapIOpT8NpaQWmR/0tmv2XJR/bXyzg4pUutswTuElFhVi3J4Mcw4GOUw7mifNi7niZeqwGxAb44MGUf9/W8hl0S8jSMXzj53QQzKxAmjDAKPdoKBi6tNaWf/I92cjFzFavHnK7fycOVgC9QUQ9SoglD/fabc1BTQLulnd022sH6IfwxkUScw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xStCfsquRKp9pMjBjNWpYPSrc8dgCIl6H/XzhEb/+dg=;
 b=gjXNxOwOAyXlbxywzMuzXlvBpU54gPa3vJSv4ViDv2b1k4sfSub9wBc9FWZ3HR88BWOM3wO8RjY4zL2yrnVHPs9lvdLOTHfF62tZhVCiB6FJ1ZNoarcNi8l8XCiZnLv7rYaMoTNhDp0ob7dmuwF2/CjTWFPhrWILXh2Ffs5krFwDaacnusVgzcgsQZ7Qp6Q0Wyd0iDA3JzhphTMhv5tTXctXRrhGYcodLymlB33FoDkiVEyt9xOFY7Njg/gxvuLzOiKoVganLPKtgc6y1p47LFqxapzFscP6vaL+kvqkN0ixyxwdNyCozIHAMWzkSVOBtkxSsiQCHZczwzxZ+VVOEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3207.namprd11.prod.outlook.com (2603:10b6:a03:7c::14)
 by CO1PR11MB5202.namprd11.prod.outlook.com (2603:10b6:303:97::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.25; Wed, 1 Feb
 2023 17:20:43 +0000
Received: from BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::7454:4526:af70:14bb]) by BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::7454:4526:af70:14bb%7]) with mapi id 15.20.6043.038; Wed, 1 Feb 2023
 17:20:43 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [RFC] drm/i915: make dev_priv usage explitic in some macros
Thread-Index: AQHZNl/tMA6GsPnLJk+6R91C/+4rda66VkKA
Date: Wed, 1 Feb 2023 17:20:42 +0000
Message-ID: <4ec970306dfec2c9b4aa6dd8ec642649293aa371.camel@intel.com>
References: <20230201135329.514677-1-luciano.coelho@intel.com>
 <87zg9x1fev.fsf@intel.com>
In-Reply-To: <87zg9x1fev.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.3-1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3207:EE_|CO1PR11MB5202:EE_
x-ms-office365-filtering-correlation-id: 924945d1-631b-4e97-0e1a-08db0478a5ca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zpFGckUaWUcO52Okt8J5jDYqg6dH8cu36U5FDDTvwOa1LcRnT8NGj0fOqoEPxZbC9tI39Na8ZK3dJziA1VsRdNzjePcluYx/atx0IxC+7GCjQm5/pc1FTD0AzdY4KVDQE4/m0cM5Inas8WIZTXc702oKAaixmB2mif7orOJ6J+ynAAkt3eFQSV8yo+R+zcME3P/4rJjCC36y6CULKGnmSQpSzSo/7or8bd6p6nMYpWYiu4sbyr49vlqVcAV4Yj7YSrpsPJhWl3d706MqJD845Ra3WwdwrvpDWY2pj/gLxeStbgFUrq0xDwGC3czuH7/bY/05wufFPZgZxhg8uANw6uaaTACLAvxDRonDdQsqVNtEbXrgr9VCIebTG5+QqF74c5ON0AVmEuqNxy4mRi4emTOvRS2oCoex40Wj8TxJSo9hitoT9wsPR84wsoxK3dvmoF+B8WVu7UdMosRLluwFIS66k295hsEb26teH5pDwR7fIQV6H3TNT4SCEMUGNEw7Wzxs+BcA4NOLUy3TrgDBvO6r1lZPgwlkxkP5xYc7qVXkNz8xa6ZSG0WbPYOhwI0bkzORmAb4rkaNRCF3Q3PV2UZlUx0Z6bkxbR/GlRShdSI8bS6yxlSFLXLTEnTBs3DLb1j3mGfanaIghUTE2svPxVnu/fGmbvSwBeofN+ZxOjusFIj5fFt8w79Nui81oTIQyDCtbvX2B7xhKSZ6xzmnhw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3207.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39860400002)(136003)(376002)(346002)(366004)(451199018)(6512007)(26005)(71200400001)(86362001)(478600001)(6486002)(2616005)(186003)(76116006)(66946007)(66476007)(66556008)(64756008)(91956017)(41300700001)(4326008)(82960400001)(8936002)(6506007)(66446008)(36756003)(8676002)(38100700002)(122000001)(316002)(54906003)(2906002)(38070700005)(110136005)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aEF6T1RXTm1jQjdjbmtCQjZBMFZMT3hpMndNcHFsRUh5VjNac29KNXBVeWtm?=
 =?utf-8?B?YTFaMjg3OXd3bUtaRmpINldIUmIvMTNYSENULzQvbFhmRzAyNzFXa0kzYjFX?=
 =?utf-8?B?WTdROG9Ed3ArcGhEaGRPZlROVmJyMTZvSkNnaDhRUjJ4YWpZV1gyV3REWXVK?=
 =?utf-8?B?aDgwaEtLY3d5TDhpR1pnTjdYVmZJTUZNZGNKTzh2MGcxNTlhS3RObm5IdlI4?=
 =?utf-8?B?NzZzSEc0OXVITE9IeS9SRnVNOFAxNWk5TWl0c012WXBtaFRrM255aS9aNy9o?=
 =?utf-8?B?eWM0cGE1WEhzREx0VmhuamswV0UraTM4SCsvU3JxWmJPZFJPd1pjRFFXWkkr?=
 =?utf-8?B?UmQvNzdJdXhPalVOYUVQZGFoS1lhMVVYSmtQTlhFSnFLdHpZUUZNQmt2NTc0?=
 =?utf-8?B?SHNXN04rTDVCTVFJOHp3WksxM0pwMEtEN0FiZmp3TTdKN2VQSDdhUVAzWit2?=
 =?utf-8?B?UDhQZzc5bk14NHR3aVhHOG9jR2xrcTg4NzFBODF0T3VOaTVVRUJXa3A5M2ZI?=
 =?utf-8?B?dGhiaHFlMWxHOEE2TTh5NjY5WlBGNlcxUG1ENGZLclpSUUNVQS83dFhLNlVY?=
 =?utf-8?B?eDF5NG1hQlVablZnQlFnSGdxN2FEd3pyQi9QcEtobDJSNjlvYUpyc1h4bUtk?=
 =?utf-8?B?K2RFTWYvTytYNWpabWNMcVp2Tll2V1dYY201SlZqb2tWREUrMHZ2Tml4aEhw?=
 =?utf-8?B?bVF5YVAweC9qa1ZEeGhOdnc4MGM3MmJJVEpaTnExNHQ2ejA0a3l5L20razdu?=
 =?utf-8?B?RWZMdHRJZCsrTXp3YlhtZTk3RzlRRVEzUGt4bnh3TEVnVjduSWdjSGw0TmZ1?=
 =?utf-8?B?UEkzcmpwVEtKUzI1emR3TlV5OEFubnBHMEtkWGRJM0R5dTRHSnpGSVRRbDMw?=
 =?utf-8?B?TEJreHA1cFNHSHpJYVlrZzltY2I5cVlzZ0pDTlpzVmxHdUJ3NmlGTTcyRDd3?=
 =?utf-8?B?Z24rc1lybGcrbWNiWk85eDNML3FwcVVvVE5zMzNkNC81OTA4TVU1WlhyQVlS?=
 =?utf-8?B?dkhoT0RlN2h5a0NtcDdSdHY4OGUvU1grZ1BVbVFyQjMyN093aXBHT1JCRHNl?=
 =?utf-8?B?ajdFbFcrc2F3eVl3YnQ5VGYvc0FIWUFjZlpXOG5wK2FKYXVMRkYyMzd6WlBS?=
 =?utf-8?B?S2I3R0llR25tcCtoeHNXZlZDNHZKRElnaW1rcC8vOXk1YXo0S2xJZlltdExC?=
 =?utf-8?B?c3FmYXBoOUpsb29qZjZLU3Rha3ZtdWtsc1B2N1VKMjJ1WXhhZGlCeFprM2xD?=
 =?utf-8?B?YmxjNHpsV3RZVXZGcTZuZHVERUllWlloZVVZdmtNamk5WHdNK3JoR3VwbGY5?=
 =?utf-8?B?aXpIS1EwT1VNLzYvSVJiWWs2Y2VpM0IrVThidjhWbXYya2VTTG84anlNZXZC?=
 =?utf-8?B?N2hRQ0RVYXRXVTEzaUJDenNweGJTcGg1QTdrQUNWTDhKaVdYRFZUWEVqTCt5?=
 =?utf-8?B?WTgwd0dGRS80NVArcU5TYTFyM0x4RUNvWElFSW9EM1lxUUN0emZpQnlONmN4?=
 =?utf-8?B?RG1yUWdoK0JUc2pPWGwrN0VlM0dhaFlvOEJ6U2hFcGZId1NnU2FnVVVpMGtz?=
 =?utf-8?B?ODBWeDJkZE5Wci91OUNyeVJ0c1NtbFVBMGlTdHF4TlBZUG9Rb0tOQWFINHVm?=
 =?utf-8?B?ZENkSW02L01sL3dldjh2OUpMR0p0R01mV0Q2NHU0eW1hMHM3VnRlV3hTd25h?=
 =?utf-8?B?eExzUnBKU1RVY3hramdJL1hack56d2NWNnczcjV1YVNZeEJaSC9xZEd2ZlE1?=
 =?utf-8?B?QVdmR0ZKeFVSUStaRm1UajdpaEV5QndJNDRiVXVNTkNtbWRwMWZYQldtVmdy?=
 =?utf-8?B?cU92dnhUR20ycEZNTDVnQVVoeGRHbkhNa2hLMm5pVHpwU3pCMlplYWxGZmRM?=
 =?utf-8?B?TnlqUlFyWmx5QnVMdjFxaGRnSVRNU0NrQ3pQMHdhcld3STZ3ekg3ejJPNDZx?=
 =?utf-8?B?MVdMYnpRSzFvN0VrN1V5djlrQjdTbGJLcXZVcVYzdWcxWThZdkNLOG01dnZN?=
 =?utf-8?B?M3lhbk5COXlBU1lqRSt3UjZDVnRPVGpQY2htZVFWWTE0OWdnOTdOQUtRTTI0?=
 =?utf-8?B?bkN3c29GQkNyaGxJUjBLa0VFOTlDL283SlpKRGp2bWYvRldTcnFyQVlWSVN5?=
 =?utf-8?B?TEJVUDdFMm1hdVlhbVc4Ym1HVFAxVWpnaSswVzcweEs5UEo1Y09NcEFwK1E2?=
 =?utf-8?B?VWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EB38DB59EC21884485FF24BE954AD009@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3207.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 924945d1-631b-4e97-0e1a-08db0478a5ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Feb 2023 17:20:42.6813 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nBbwkqkTV7fW2lkWD/K2CLhi7wzj/HuFjhNtwgKEH9Slx1CYOjJrstNnW2+jnbyG/JPFFsGmT3aqKvDgCiBEuPbZ8tELCca+GLciSldDeUc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5202
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC] drm/i915: make dev_priv usage explitic in
 some macros
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIzLTAyLTAxIGF0IDE5OjA5ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gV2VkLCAwMSBGZWIgMjAyMywgTHVjYSBDb2VsaG8gPGx1Y2lhbm8uY29lbGhvQGludGVsLmNv
bT4gd3JvdGU6DQo+ID4gVGhlcmUgYXJlIGEgZmV3IG1hY3JvcyAoZS5nLiBEUExMKCkpIHRoYXQg
aW1wbGljaXRseSB1c2UgZGV2X3ByaXYsIGJ5DQo+ID4gdXNpbmcgb3RoZXIgbWFjcm9zIHRoYXQg
aW1wbGNpdGlseSB1c2UgZGV2X3ByaXYuDQo+ID4gDQo+ID4gSW4gYW4gZWZmb3J0IHRvIGFsaWdu
IGFsbCBkZWZpbml0aW9ucyBvZiBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSB0byBiZQ0KPiA+IGRl
Y2xhcmVkIGFzIGk5MTUgaW5zdGVhZCBvZiBhcmJpdHJhcmlseSB1c2luZyBlaXRoZXIgaTkxNSBv
ciBkZXZfcHJpdiwNCj4gPiB3ZSBuZWVkIHRvIG1ha2UgdGhlc2UgbWFjcm9zIGV4cGxpY2l0bHkg
dXNlIGRldl9wcml2LCBzbyB0aGF0IHdlIGNhbg0KPiA+IGNoYW5nZSB0aGVtIGxhdGVyIHRvIGJl
IGRlZmluZWQgYXMgaTkxNS4NCj4gDQo+IEx1Y2FzIHBvc3RlZCBhIHNsaWdodGx5IHJlbGF0ZWQg
cGF0Y2ggWzFdLCBhbmQgSSB0aGluayBiYXNlZCBvbiB0aGUNCj4gZGlzY3Vzc2lvbiB3ZSBzaG91
bGQgcHJvYmFibHkgYWRkIEFVWCBhbmQgRFBMTCByZWdpc3RlcnMgdGhhdCBhcmUNCj4gVkxWL0NI
ViBzcGVjaWZpYywgYW5kIGluY2x1ZGUgdGhlIE1NSU8gb2Zmc2V0IGRpcmVjdGx5IHdpdGhvdXQg
ZGV2X3ByaXYsDQo+IGFuZCBub24tVkxWL0NIViBtYWNyb3MgdGhhdCB3aWxsIGhhdmUgTU1JTyBv
ZmZzZXQgMC4gVGhpcyB3b3VsZCByZWR1Y2UNCj4gdGhlIGltcGxpY2l0IGRldl9wcml2IGNvbnNp
ZGVyYWJseSwgYW5kIGF2b2lkIHRoZSBuZWVkIHRvIHBhc3MgaTkxNQ0KPiBwb2ludGVyIHRvIHRo
b3NlIHJlZ2lzdGVyIG1hY3JvcyBhbHRvZ2V0aGVyLg0KDQpZZXMsIEkgc2F3IHRoYXQuDQoNCg0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2lfcmVn
cy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpX3JlZ3MuaA0KPiA+IGlu
ZGV4IGFiYmU0MjdlNDYyZS4uZDAwZTkzMjEwNjRhIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2RzaV9yZWdzLmgNCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2lfcmVncy5oDQo+ID4gQEAgLTEwMCw3ICsxMDAsNyBA
QA0KPiA+ICANCj4gPiAgI2RlZmluZSBfTUlQSUFfREVWSUNFX1JFQURZCQkoX01JUElfTU1JT19C
QVNFKGRldl9wcml2KSArIDB4YjAwMCkNCj4gPiAgI2RlZmluZSBfTUlQSUNfREVWSUNFX1JFQURZ
CQkoX01JUElfTU1JT19CQVNFKGRldl9wcml2KSArIDB4YjgwMCkNCj4gPiAtI2RlZmluZSBNSVBJ
X0RFVklDRV9SRUFEWShwb3J0KQkJX01NSU9fTUlQSShwb3J0LCBfTUlQSUFfREVWSUNFX1JFQURZ
LCBfTUlQSUNfREVWSUNFX1JFQURZKQ0KPiA+ICsjZGVmaW5lIE1JUElfREVWSUNFX1JFQURZKGRl
dl9wcml2LCBwb3J0KSBfTU1JT19NSVBJKHBvcnQsIF9NSVBJQV9ERVZJQ0VfUkVBRFksIF9NSVBJ
Q19ERVZJQ0VfUkVBRFkpDQo+IA0KPiBXaGlsZSB0aGlzIGtpbmQgb2YgcGFzc2VzIGRldl9wcml2
IGFzIHBhcmFtZXRlciwgdGhlIGRldl9wcml2IGluDQo+IF9NSVBJQV9ERVZJQ0VfUkVBRFkgYW5k
IF9NSVBJQ19ERVZJQ0VfUkVBRFkgaXMgc3RpbGwgaW1wbGljaXQuDQoNClllcywgdGhpcyB3YXMg
b24gcHVycG9zZSBhbmQgbXkgc2Vjb25kIGNoYW5nZSBpcyB0byBtb2RpZnkgdGhlIHRoZQ0KY2Fs
bHMgdG8gdGhlIGlubmVyIG1hY3JvcyB0byBwYXNzIHRoZSBwYXJhbWV0ZXIgYXMgd2VsbC4NCg0K
SW4gYW55IGNhc2UsIHRoaXMgYWxyZWFkeSB3b3JrcyBhcyBpcywgZXZlbiBpZiB3ZSBwYXNzIGk5
MTUgdG8NCk1JUElfREVWSUNFX1JFQURZKCkgaGVyZSwgYmVjYXVzZSB0aGUgZGV2X3ByaXYgdGhh
dCBNSVBJKl9ERVZJQ0VfUkVBRFkNCnVzZSB3aWxsIGJlIGV4cGFuZGVkICB0byB3aGF0ZXZlciB3
ZSBwYXNzZWQgYXMgZGV2X3ByaXYgdG8gdGhlIG91dGVyDQptYWNyby4NCg0KDQo+IEkgdGhpbmsg
dGhlc2UgY291bGQgdXNlIGEgc2ltaWxhciB0cmVhdG1lbnQgYXMgaW4gWzFdLCBtb3ZpbmcgdGhl
DQo+IF9NSVBJX01NSU9fQkFTRSgpIHBhcnQgb25lIGxldmVsIHVwLg0KDQpZZXMsIGFuZCB0aGlz
IGNhbiBhbHNvIGJlIGRvbmUgd2l0aCBtb3JlIHJ1bGVzIGFmdGVyIG15IG90aGVyIHBhdGNoZXMu
DQpUaGUgcHJvYmxlbSBpcyBpZiB3ZSBhbGwgc3RhcnQgbWFraW5nIGNoYW5nZXMgaW4gdGhpcyBh
cmVhIGF0IHRoZSBzYW1lDQp0aW1lLCB0aGVuIHRoZXJlIHdpbGwgYmUgY29uZmxpY3QgYWZ0ZXIg
Y29uZmxpY3QuDQoNCi0tDQpDaGVlcnMsDQpMdWNhLg0K
