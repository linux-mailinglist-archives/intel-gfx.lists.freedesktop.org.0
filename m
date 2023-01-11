Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2406662AA
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 19:20:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3037410E7A4;
	Wed, 11 Jan 2023 18:20:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2A1B10E7A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 18:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673461234; x=1704997234;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=bZMnVkihUjbZwqKNsauGTZZXyzGjnhwFTNPkjM1ENmU=;
 b=dWEQx2vGq+PGJMxsXp1ikEUGidz9Xzxmy0JLllM58bmOf3ffSSupYtKc
 /hkmnbpgYuX5Aw98EOGSLfy5zCWvqL45RM3gYpcDNb3oWG3/As4twNe3I
 Uip32/MNB2hb2sHCavINFbLEB761HlHOjzsHKa0VLtj3JOxOI8GUuUfok
 NjtcF9qtz7b7H/9YdZ4Kx9OFxNL2vnjum7Uzz9XGV9Iv1l8K+Wn/tmW8w
 mNeMDgR7fwxhVpj4Rf2MaKVpeuRngjyzJcuS7yI3lkdxCOnZ3BYDr82Dw
 b0srzvV7wIwoSkl7noY+MALhxAkStM39VwvdCXrnlKTaMVSNIH9sXMlLM g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="409738437"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="409738437"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 10:20:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="650855239"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="650855239"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 11 Jan 2023 10:20:34 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 11 Jan 2023 10:20:31 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 11 Jan 2023 10:20:31 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 11 Jan 2023 10:20:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QtI1fwq9o7wBpDEd4NiT1viCJxNlGz2w+fwC/DXybzWwlDgDi5HCu4RWxauFGsdlO2sQSlteEl7aBdSDHKFBL1UC2gFvZAER0ziBQzNMUMIZSuFZz4DxDbwksEn3MTzV3Uhtzr6ENBXJpr/CpCtYHyCfUf2s383W3FbT2ZGJwLwcpmIuOXlGh1WD9hamoTxGmO6k8nbGiaOTtW7iuCGRrCGBzck6p6K1kg4YpH41mdwvfjZvEoVankUkQ3q1j+9eFLLjdYyXuirQx3M5yFQ/eH0X4epM2SFj/BtxsYAnn45cxE4A9rYnhSIVHUV3Ohoy18Hym+rVqlq4BxQE9I6kNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bZMnVkihUjbZwqKNsauGTZZXyzGjnhwFTNPkjM1ENmU=;
 b=PoduOFrhIxd1CyZ1srcgIi9L72wWEKFLBLAWw04bMXoy3OEMHcbTfzIywBwZYNh+w4XniwDV8llbB0cmSUdyJpeNUMXLmbw3+QANxCGhSWxMgaOBN2Lih1cWmLbttNaUaTJrw5IcqunkpJKTWdShpTN5BYImLptV94JnhlVw1zALYS2FxB/+d5MOuogXB+98jDJIrgupcP+1VzVcs5rsel4cdTCcNMbNBCF5rtY3dUp4+TQd0IDkIfmdaPxpqVZXSDTcCaxvL3I5fIqoM3T/doLTmGXYs7qZZSWfwxl9nd0JX0CkQ0v2Vk/wzB7mq+h3uVDllSnGvoMdNSC2qb/w7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH7PR11MB7515.namprd11.prod.outlook.com (2603:10b6:510:278::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18; Wed, 11 Jan 2023 18:20:26 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8901:2af2:6e02:c95c]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8901:2af2:6e02:c95c%4]) with mapi id 15.20.5986.018; Wed, 11 Jan 2023
 18:20:26 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9weHA6IEFk?=
 =?utf-8?Q?d_MTL_PXP_Support?=
Thread-Index: AQHZJVyRFr86dyCSsEKY8nwvzaLNK66ZiAUA
Date: Wed, 11 Jan 2023 18:20:26 +0000
Message-ID: <1f86d4d1e450ad651d81237c078a19f08b834c94.camel@intel.com>
References: <20230111005642.300761-1-alan.previn.teres.alexis@intel.com>
 <167340073995.20086.4611124861319935926@emeril.freedesktop.org>
In-Reply-To: <167340073995.20086.4611124861319935926@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH7PR11MB7515:EE_
x-ms-office365-filtering-correlation-id: 80015656-c901-44eb-f479-08daf400836a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P+I0Z6yRLrADx51WSqLZ8N9Uyj3CZDUG8QbYJ8BPRNhb6G0YHMkFx1u46JHkYSEHL1Xau521V0zAGc0tvvilCF6yyxYuWa1ES7PcunCz1yc/OB5S2rGfA+vDBH+lYxjTvIPG5MDDD2fCdEG25sATXWIcE97J0mXu/zHTCtuqm1IYZ75auB4RchYZMsWOuGHJiwsm4qYdnhXau0RBUrVm6DpMol0YuvSvAIhg1/dTVBkAXOLiSWgQygT2rHuazTIgo0e4X47KklgqFTZQqImKFI3kUNC6nCindPtLbPl5wFFAvWSRuxL2QryPWQJ1Ng5rO0VMOFdd0t1BKyIF1gF8u/bnoJ0bbFrLeow9ew+okgVv2eExSbpf4p5DeMKNbWXk5WkYerresV0r/HS7sPhFH4BdXeZSr6Vxnzklno+0bt0Z9YtrPmwCkCmoGbmIrHYbvb1cbh++Ok8mzDPW3nDlh0AhJ4x8qvcy+WVFpBad0JSDbkhZwDPzlvp9XOkO8fFB1fnDW7wzANR0gqAOFFfYEr2KgeSuMWwHCf9li1zKPh6SicT7KPtmtppqkqvgWj2VhUGL3nBJk5EKkowjkkzzoLDcg/EhFK8eVERUcA/Raf2A2KJ7oSOhFLRHq2Vg70uKfuXLrAAWWbjO9UpsJTTBsA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(376002)(39860400002)(346002)(136003)(451199015)(6512007)(82960400001)(5660300002)(26005)(186003)(38100700002)(6486002)(8936002)(478600001)(83380400001)(38070700005)(966005)(2906002)(2616005)(316002)(64756008)(66556008)(66476007)(66946007)(66446008)(6916009)(91956017)(71200400001)(76116006)(41300700001)(6506007)(36756003)(86362001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TjVSMUpQa25QRytZWlcrZ0szeFlmakFtNG9KUkdTd1lVWEgxM3F5ME03Nmlt?=
 =?utf-8?B?OVBHbzZZRm1iamwzcDZ6OVlVSDRmM0JwMkwwZzFYRmREMG1oOGZtMEQ1aGp6?=
 =?utf-8?B?bEdyeGlJYWcwQ1NoLzJ3clo4Ymoxb0hjVlhrTVE2T1dEamkvTUQyaEZoejIv?=
 =?utf-8?B?ZnJQMU9ZZ1hXdUNoZml0VWVhZGx1dTczbFRlS0FiNWRZYUhrV05XTWhsNmNU?=
 =?utf-8?B?ZU5hWG9ObnFtc05NSC81ZVFjempZdVIxRHdDV00rSkxYZ2tYNE9ySVpQejI5?=
 =?utf-8?B?R1lYMld5dnk4NFZHRGZTVXQvQ1lhdFRpeEQwVFdONGhKSXByTHp3YjVwNGFC?=
 =?utf-8?B?QWhCN2hJKzFHZFYxbW44cFVTUFNYSHlXWEZUY2Zlczl6a2ExSDQvVDYzKzVL?=
 =?utf-8?B?Z2ROSVBETDN4MndZQXpLTURiTytZVXk5QU1SZ0NEakhQY3o5Qjg5MHhGZWRB?=
 =?utf-8?B?VEF5M043NGN4SmJQRXpxTVQ3QXh5M1ZiellFckM5RGZIUWhkeGg5WVROUFpz?=
 =?utf-8?B?YXd1MnJUUTVYd0VGaE9hcDNXL1lRYlBoc3JpajZKMDVqZGd2Q0ZlMlVwTGwv?=
 =?utf-8?B?K3pDdlpCczUrSWdweHRjdmhXcEsyUXVvRVZoKzVGZVBoNHM1Ykt0djhhOFRS?=
 =?utf-8?B?ZDduYnJ0ZFlWcnUzYURSVDZOeHJERytZOXYxV2QzUm91UmxLNitkR012bnVZ?=
 =?utf-8?B?dTdzajlEdkNtU0h5VFk2a1RhY2w3c084dVg5TDR3dlE0VXhaUnlvYlBpdmdC?=
 =?utf-8?B?a3c3MUxQVjRUTzZOYzd5QXNBQmMxOHBXRmRBd1NpZnFlbUJOWWIzUStvbnAx?=
 =?utf-8?B?WnkyNmZrUStqS2dudmlpQkFBR1VtMmk2MGZGV21DL0lMZGcrNmx2YW1RdG44?=
 =?utf-8?B?eUx2cERHMEdPQ1d5M25yKzBhWG1LMHRjUjJ2aTR3ZGpFNmFnZFpkRGV1ZVp0?=
 =?utf-8?B?Zkw5TXRHc0NNTU1HalJjU0VOc1VNb2FUQ3lKTzhwRG9wYi83UmdQQmhsTUpD?=
 =?utf-8?B?MVNkQmRlanV3L1ppOWpMeXRwRGRYSWNQOTBhVnY4Z2pSVW9OQWxmaUdnd3gz?=
 =?utf-8?B?OHJocEJPdUtqWFcwbVY3OGR3RzQ1MmF4QldCcmE5OWpSWUZrZ1BWNENQRkVM?=
 =?utf-8?B?bjA5S2F0cEJYRXRKZVpZbFE3ckMxYUdiY1hDMFlwNVlwMWF2dDQwNlhKRmQ4?=
 =?utf-8?B?aitoNEZ6VFc0ejNNQ2s3R0FKYTcwVVFKMUtjaTRvTDJpMWswQXlReEcrZjdN?=
 =?utf-8?B?NTljVVo3MlNaL1Bvb0lFRzhvVVJMR3ZIY2tXRFBsSlNyeUk3a2dLWFdad0hE?=
 =?utf-8?B?SVNWZEFkempSV3hMMGRSd2dLZ2FoNHJBVEhVVGsramNva0praWNMb0lCa00z?=
 =?utf-8?B?M3N0MzdINElCR0N5ZWxHMGtCR1QxTlVzUHd1ZTRGU3prV0NWY0dLbHpQK3Av?=
 =?utf-8?B?clRxUi92SmxPaUovOHFITVpnQ1U3MWVhbEJNV0RXdW9rWUtVaXNnWlZZV1lF?=
 =?utf-8?B?NTU4TERpanNoWFRFTktjVjQrRFAybWpOcXovbUQxNVRsUjluSXVVYXNHZVpI?=
 =?utf-8?B?Nm9SaEs3V2xMcUVReGxFNkhPYW1Yb3lBNzYzUEZiZEpzYzVheGJZVHZndDh6?=
 =?utf-8?B?WGw1YjU4cnE5QnA4MmNQckpydUIrNWlzY2cxejhFLzFheHVlQmlYc3dGZ3Fi?=
 =?utf-8?B?cTY4a282QmMzQ0IvL05PaFNWeVJqMlBHNTBFWjhwMHAzYWhRSW0yakh1c0pC?=
 =?utf-8?B?TDQ5eEIxYmhDa0lGTkNSWG8rRk11OEthTE1lS1JPTE4xaXJEUkNrZTJJLy8y?=
 =?utf-8?B?WXE1cTFzZU8rTUtBbUduQXUra0xLS1pka1RsWVlDVVRPcTBUSThqaXBQVVZp?=
 =?utf-8?B?elByWmhLcVNUK0NDRThYaG00dUZFTk92bUdRNktuRHdxZk03VWR6SnN0enN6?=
 =?utf-8?B?RmpUaTZhRjhXbE9LYlZ6OW1kSU13QnpYa3YzS0UwYmI4SkprcmJIR3YwSHAx?=
 =?utf-8?B?ZFBvRzc4TlduVXB2RFQ4ZlRBcEdZTm9QYVhSbitPaHNwazFWNnFYS1lkbkUz?=
 =?utf-8?B?ZWlSbGp2VnVoQlpMQy9QZTVtbXQzUTBpa1l0VHVETlg2TEF2dDZsemFsYStM?=
 =?utf-8?B?WWs0UE9hOXJiU0V6ck02WmVtY05KS1IydWthUjRMc0c4d2wzT0g3S0lubDJh?=
 =?utf-8?Q?q5rfk01weVJQ1bNki2CJUVk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EF2ADD970F8E5F49A9B50671BA3A5471@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80015656-c901-44eb-f479-08daf400836a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2023 18:20:26.7880 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X5sG8Hp+rxQHHNMFUORWM5OhWCpZgErOskbyeHWgkDuAbZRGtlMM6x14fX5fKN84CqZgbNg4xJJoCHvOfscPoCxgPwUcV1ymW+0chX0+LFY/qzg0VhDlgM66f3opBfWP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7515
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/pxp=3A_Add_MTL_PXP_Support?=
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

Rm9yZ290IHRvIHRlc3Qgd2l0aCAuY29uZmlnIFBYUCBzZXQgdG8gb2ZmIC0gd2lsbCByZS1yZXYN
Cg0KT24gV2VkLCAyMDIzLTAxLTExIGF0IDAxOjMyICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+
ID09IFNlcmllcyBEZXRhaWxzID09DQo+IA0KPiBTZXJpZXM6IGRybS9pOTE1L3B4cDogQWRkIE1U
TCBQWFAgU3VwcG9ydA0KPiBVUkzCoMKgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy8xMTI2NDcvDQo+IFN0YXRlIDogZmFpbHVyZQ0KPiANCj4gPT0gU3VtbWFyeSA9
PQ0KPiANCj4gRXJyb3I6IG1ha2UgZmFpbGVkDQo+IMKgIENBTEzCoMKgwqAgc2NyaXB0cy9jaGVj
a3N5c2NhbGxzLnNoDQo+IMKgIERFU0NFTkQgb2JqdG9vbA0KPiDCoCBDQyBbTV3CoCBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9pcnEubw0KPiBJbiBmaWxlIGluY2x1ZGVkIGZyb20g
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfaXJxLmM6MTY6DQo+IC4vZHJpdmVycy9n
cHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF9pcnEuaDo0MjoyMTogZXJyb3I6IGV4cGVjdGVkDQo+
IOKAmD3igJksIOKAmCzigJksIOKAmDvigJksIOKAmGFzbeKAmSBvciDigJhfX2F0dHJpYnV0ZV9f
4oCZIGJlZm9yZSDigJhpbnRlbF9weHBfZ2V0X2lycV9ndOKAmQ0KPiDCoMKgIDQyIHwgc3RydWN0
IGludGVsX2d0ICpndCBpbnRlbF9weHBfZ2V0X2lycV9ndChzdHJ1Y3QgaW50ZWxfcHhwDQo+ICpw
eHApDQo+IMKgwqDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgXn5+fn5+fn5+fn5+fn5+fn5+fn4NCj4gbWFrZVs1XTogKioqIFtzY3JpcHRzL01ha2VmaWxl
LmJ1aWxkOjI1MjoNCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfaXJxLm9dIEVy
cm9yIDENCj4gbWFrZVs0XTogKioqIFtzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwNDogZHJpdmVy
cy9ncHUvZHJtL2k5MTVdIEVycm9yDQo+IDINCj4gbWFrZVszXTogKioqIFtzY3JpcHRzL01ha2Vm
aWxlLmJ1aWxkOjUwNDogZHJpdmVycy9ncHUvZHJtXSBFcnJvciAyDQo+IG1ha2VbMl06ICoqKiBb
c2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDQ6IGRyaXZlcnMvZ3B1XSBFcnJvciAyDQo+IG1ha2Vb
MV06ICoqKiBbc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDQ6IGRyaXZlcnNdIEVycm9yIDINCj4g
bWFrZTogKioqIFtNYWtlZmlsZToyMDA4OiAuXSBFcnJvciAyDQo+IA0KPiANCg0K
