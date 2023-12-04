Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB071803A5A
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 17:34:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB3BD10E20D;
	Mon,  4 Dec 2023 16:34:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22F6D10E20D
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 16:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701707679; x=1733243679;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5apeJSQBLVh9rCeqDIoFrYZRvfJbJH9mAZjpOf81iJk=;
 b=gMpzOWOitjSffg+imHJpdAkJq/AZ5AcPzfAAJj3UpTVt8p4JLPb5yVI6
 f9JTpv5uw63VvHCtGRPvRq97zu4FNZvZzRwU7pqRpcj5xsx7DqZBKIJ9H
 ez4R3nWsO1miglKzC39j+XXnW9+cI1Qi1UC4Wz1hHBHXZOyKeQo1DinGm
 a2UiP1XRoWd+pxy6vSqTPXM3waQjuI7+b+cUKYsDkfOvvjuXFoAd7frFh
 ouWMxFqm9eh+4IzTPZO9ZhoDB/FO1pjn2cqq8No+9v9/lDExsSOminHPg
 fZPe3VDq9kDH5mIuftdEZg4FMvBHTs8yS1/mfZcsYFB79seRzu5VZ/LwF A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="378789905"
X-IronPort-AV: E=Sophos;i="6.04,250,1695711600"; d="scan'208";a="378789905"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 08:34:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="1102151509"
X-IronPort-AV: E=Sophos;i="6.04,250,1695711600"; d="scan'208";a="1102151509"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2023 08:34:37 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 08:34:36 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 4 Dec 2023 08:34:36 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 4 Dec 2023 08:34:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZGyGyaJoc4zizYGWvjSbPR/EaBDGZkrK/yUCHi9X+BksHuKgDHTveNOQ0UR8tYVvveKaa3X1Mz+DJND5ATAZw4rpP6YavgXwDaAxLuPcXrTb2063yxycXFYBDRcl1tq9sSLfRJ3zfLllImTsw9N1IqwWcrVyBk0dxQI30i8yu3OPJxCYSTskrQ2R0bwB3Soow48Rs96q1wLD/zVPKKwb+yiBR+MLZOSG4sSNKvcF5UqS6FEleVr58Rz492r8U1GZ67TXmChCr81X4NeVZHF9RkxdxgdRttLHxE74ilp2WHww4f0kqjIxODk9y8jaqXPqefbyVst1iM1NnJ+LXp5zGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5apeJSQBLVh9rCeqDIoFrYZRvfJbJH9mAZjpOf81iJk=;
 b=X2+iUx7JDN4L1GJeIGp+5E0BBO1ThSaCx9dgSaGrqK6LG4RNGfhG6uLUswbGbckhM9urpIAxCDtCbj5Bi+E+MvakDfWOKSpT3Ez7XjEAW64sBzBZg4C+UfawxWSClkruen8i4DVYVzJZGj/jb9kosLIgoz6v17h+yDU+VEFAGs36nnTTdfp53TMuwQJ28tPofXOYotCKsOLnb2C1S/DFfM54UbH635gKXTlUdahvkYPIL835DkjGlJelFOhKc+PDL/vj7axbueBvBj0sNoXYKdYkvcc6WVfCukK3RDpC312ytnxjUWlfdrVBItmNqToKbYZBZgAalDXYYfZd7PFPjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by MN0PR11MB6033.namprd11.prod.outlook.com (2603:10b6:208:374::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Mon, 4 Dec
 2023 16:34:33 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8%4]) with mapi id 15.20.7046.033; Mon, 4 Dec 2023
 16:34:33 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, =?utf-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/edp: don't write to DP_LINK_BW_SET
 when using rate select
Thread-Index: AQHaJFw3CASKptwwHkqm5Gz7lSFm2LCUgEGAgARnpACAAGx6cA==
Date: Mon, 4 Dec 2023 16:34:33 +0000
Message-ID: <CY5PR11MB634479123D55A69917190B40F486A@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20231201134141.1569265-1-jani.nikula@intel.com>
 <ZWnwofolLechg_Dg@intel.com> <87wmtu2str.fsf@intel.com>
In-Reply-To: <87wmtu2str.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|MN0PR11MB6033:EE_
x-ms-office365-filtering-correlation-id: 0013f577-5510-4c83-31d5-08dbf4e6e57f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JOC6EpH5dpsXJQtEUyRQJSnxaPueUMVzXFiNiekka7V0wumENaride9sTov2JbvR63O4krnIMW0Mb184P7D48zKaEUY/Nr+bWh8XA5AH/tMzE8H3L40RIaI4Dhi+5jXZ+LEK7gdly9gsue1cSnsKAod+RhXxf7jB7iv47mhEBSpBXoVF4va7Updt36MNOcP9PMcMnBg64q5ftfnMGe0q6d44FjKsJe0uZYCPNOhcRG/95hugZCJNxSIpWkMLmlWGVOftg//aLa5fjZHHz20zOdQaD/TzYPkYOFJG1Kv5o/138gEpzUC9XI1D21wNZKtdl1GNSWnQKMRo6FCmToI/oupcPprareLyVlkwBlMd9f1Gv/Z5QnmGTYJf3WnMTe8WyBIjDUXINVaUKiUGT9xvrPrtvUneaVTgch2Z3PFPr3bttvbpS53ac9fu/zg7snm/56CiVJTigahEKvWAgFEzPoj4R8amRs/pGrWGOjiOOBGxJMgE6NqBKXTxEXlSgZ7PkBkew4JqGafCZggq/VmZqHfO7mHvuAFskYyUrD/zEN/Hve5+G+pw0V9szhltcRn26Idqu1jiAdmVxFndmhI6c7C+pdRxFMsObxNtZ+poLZ4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(376002)(39860400002)(136003)(366004)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(82960400001)(83380400001)(66574015)(26005)(6506007)(53546011)(9686003)(7696005)(122000001)(38100700002)(55016003)(71200400001)(966005)(478600001)(66946007)(76116006)(66556008)(64756008)(66446008)(66476007)(110136005)(316002)(8936002)(8676002)(4326008)(33656002)(2906002)(41300700001)(38070700009)(52536014)(86362001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R2JQUHhEcGdKK2ZlYS9WTWk1Y2N4azlWeWxjTURFTldwSzFFOG1hcXBVRWQw?=
 =?utf-8?B?aGJsU2RmeU1EZjk3TUdyQVcwSnlZYzM0Vk5KY00yME1rb3dCeFgvajF6L2NM?=
 =?utf-8?B?dnRHaGw2Ti9LVUd3WGt2SUw1SDllU0t1dTNtU05uZyt6d2o3bGx1eE9ycENs?=
 =?utf-8?B?alBKbE1DcUVKdnZJYUhXbUF4bTE5NDFwdVRiYnp5M3FicDNCSEZCbWRIZGha?=
 =?utf-8?B?RkJnc0l6bUpmUW1FTm5GSG9UQnlhejVlbGV0cXZJRDFYSkVpOVBSWjlRa0J4?=
 =?utf-8?B?S3ltNVJkL05ZMjAvMTBiTGw0RGFmQVhJZlhDUmE3ZEFzd3MzL3V0RFFSWHVB?=
 =?utf-8?B?cDV1Vmp5UFNHL2ZwdmFNNU1jaXFUWGpMWHA4ZmZLMGV5ZlpSUU5iVVowcWtP?=
 =?utf-8?B?SENjczl0L0loOUVYTlZPckpKVE5hVzN2V1dVN0wxU2tCVWJpVXRZWlBlNGlG?=
 =?utf-8?B?MmNVMHo3bHpXQStIc2o4Y2R3cHJOV2RnRld3NzVJNFhncHA4M1llclJUVnpC?=
 =?utf-8?B?WnBvaFAyVThjZnVnWDZQZ3U0WnVaQjhQVXd0RDVjUEtxUWwvVVBzS2F2Wjdp?=
 =?utf-8?B?MHplQW9laEdHSlNvSDk0aE1qWktkc2FtRUdYQS95WnhRcEVYZW5hUGxUTUFy?=
 =?utf-8?B?MWtpazlMbnNHQS96SGZjR1JoVlFBMlBIQVduK3pvNTQ3Q01kOFk5M1pNRjR3?=
 =?utf-8?B?N21CTXpPdWhsZkVUenUxWEI4Qm5aOWoxVWxkNWNsR0NZQ241WHo0REExTkNp?=
 =?utf-8?B?cTV3NkFWeTNZRFN5cUhReGZIbVdhTms1UGxsU1VjakJFRlFhWFM5V2dUbVJR?=
 =?utf-8?B?RW5GZGtNbGUwbzZsandwb2p5UkRiMVZkdzE1VXlhbzZYY085TnAyV1FSN2cv?=
 =?utf-8?B?RE01SWFuYVFqeFJjaWEyZnhDcnFZVldWT2FlZVRJTTZSeHhlcjVEcEVscjdR?=
 =?utf-8?B?c2RLRzJGOS9VSHNNdktBTGFJMGh4WEFlVmQxcFJhZVRWSWZpVUpxQ0ZiUHdV?=
 =?utf-8?B?V2xVWmJPVzE0R2ZmZkpXemFoWGpZcWx2SlBkYlhHa004eEtJZkNQZkpackhl?=
 =?utf-8?B?enpKTzlqZnBNTVBRbjk0ME1JZmxZSEd1aTM5cm1nbzNPaThjTU44OHFlQ2dj?=
 =?utf-8?B?UWUvczdqa2ttekY3THd4UHc1eUZBMXN5Q0ZDOWt0WGd4clZWd0tPQ0VCQTlh?=
 =?utf-8?B?RWRLTXNWWlM1dEpJSXZVKzRxSFp4Nnl0THI2R3FqZWRUWXJaakpLQ1ZOcXAy?=
 =?utf-8?B?dDdXY1ZadmN2NEFGaDhTc2Y2Nmlwc0RHSittQ1o1eXhXOGRLVVg0dmlGN1ls?=
 =?utf-8?B?azhVaGgrMTNmNGFtWVQraXF4bURheHkxTzBBZVIxRmRkRTE5SWlhVGRhMXU5?=
 =?utf-8?B?MGtRTHlmZ09pTVBQNVJ4OFNXRFhCVlFoMldidkY2QUVDd3ZSUkVRQjM0Z2xl?=
 =?utf-8?B?WWtnZEhsbFpEajFYdEVHcS91UVE2N0pkR1RTODV5ME40YTJuQnhVT3lnU3ZB?=
 =?utf-8?B?Wk91c0VpbFRTdGgySWpSckV5d3I3NTV4UnZ5UTNqV0dwSUJMMStSK3hOWWJn?=
 =?utf-8?B?aktpbDVWanZFVGt2SGNGbW9FeVpCZzd5Q0NPdGw1emhMREpnTWhqWXZiMTdr?=
 =?utf-8?B?RVJFRU1mUG9wbUZYZ0JhaklLbU11MWNORDNaK1JXZ1doZ3JzU1Y4NXJkWW4v?=
 =?utf-8?B?RmxaVzl2WkRiR2Z1OUpubERkWVlSUGRia1FlQU80SDc2TjFWZnBzN01wR1Fk?=
 =?utf-8?B?M0g3UERnWmFPV3dNdGIrb3FCTk9pVG03Z3V3ZEZyYmoxSTFUTXZ3T2dFeG9J?=
 =?utf-8?B?TE9sbkw4a29YbHhjVmpEYmd4RWFOeER4dzE0djM1ZXdNbTBtTW5CWTlabkk1?=
 =?utf-8?B?bnZYRE5yakQ3YW1Bd29OcE5TNVpxWVBYVU9uSFpvTkl5dFJaY0JzNnhkQWxp?=
 =?utf-8?B?dloxSjd4N28rQzBuY3BuaG1VRXZXL2xZQ2xUaGIrSnZqc0EwUmwrYzRQL1li?=
 =?utf-8?B?M2toUHdoVWZTMHljdEo5cGIwRHl0cFg1TGJ6K0twbDVJdU53V1pydzc5K3d5?=
 =?utf-8?B?UE00c0ZsQnlqSWptVCtwQ1NMN21GQTU3ZlB6SENwRzVla0x0aWZ5SlFtbGIw?=
 =?utf-8?Q?xt8e8R4os8nO5fTfHYHqg+Dzc?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0013f577-5510-4c83-31d5-08dbf4e6e57f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2023 16:34:33.2792 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vuQ7o62BmdZo1NHAd1YrbhBC9jJEv0rGXXYl1xPmgzKL/zPBdFvjmDJ0dOJC4h9VX0Ds4q5pgyEdtMy9udMdLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6033
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/edp: don't write to DP_LINK_BW_SET
 when using rate select
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKYW5pDQo+
IE5pa3VsYQ0KPiBTZW50OiBNb25kYXksIERlY2VtYmVyIDQsIDIwMjMgMzoyOCBQTQ0KPiBUbzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhd
IFtQQVRDSF0gZHJtL2k5MTUvZWRwOiBkb24ndCB3cml0ZSB0byBEUF9MSU5LX0JXX1NFVA0KPiB3
aGVuIHVzaW5nIHJhdGUgc2VsZWN0DQo+IA0KPiBPbiBGcmksIDAxIERlYyAyMDIzLCBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToNCj4gPiBPbiBG
cmksIERlYyAwMSwgMjAyMyBhdCAwMzo0MTo0MVBNICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToN
Cj4gPj4gVGhlIGVEUCAxLjUgc3BlYyBhZGRzIGEgY2xhcmlmaWNhdGlvbiBmb3IgZURQIDEuNHg6
DQo+ID4+DQo+ID4+ID4gRm9yIGVEUCB2MS40eCwgaWYgdGhlIFNvdXJjZSBkZXZpY2UgY2hvb3Nl
cyB0aGUgTWFpbi1MaW5rIHJhdGUgYnkNCj4gPj4gPiB3YXkgb2YgRFBDRCAwMDEwMGgsIHRoZSBT
aW5rIGRldmljZSBzaGFsbCBpZ25vcmUgRFBDRCAwMDExNWhbMjowXS4NCj4gPj4NCj4gPj4gV2Ug
d3JpdGUgMCB0byBEUF9MSU5LX0JXX1NFVCAoRFBDRCAxMDBoKSBldmVuIHdoZW4gdXNpbmcNCj4g
Pj4gRFBfTElOS19SQVRFX1NFVCAoRFBDRCAxMTRoKS4gU3RvcCBkb2luZyB0aGF0LCBhcyBpdCBj
YW4gY2F1c2UgdGhlDQo+ID4+IHBhbmVsIHRvIGlnbm9yZSB0aGUgcmF0ZSBzZXQgbWV0aG9kLg0K
PiA+DQo+ID4gV2hhdCBhIHRlcnJpYmxlIHdheSB0byBzcGVjaWZ5IHRoaXMgOiggVGhpcyBtZWFu
cyB0aGUgZGV2aWNlIG11c3QgaGF2DQo+ID4gc29tZSBpbnRlcm5hbCBzdGF0ZSB0byBrZWVwIHRy
YWNrIG9mIHdoZXRoZSBCV19TRVQgd2FzIGV2ZXIgd3JpdHRlbi4NCj4gDQo+IEluZGVlZC4NCj4g
DQo+IEFkZGl0aW9uYWxseSwgZURQIDEuNSBzcGVjaWZpZXMgTElOS19DT05GSUdVUkFUSU9OX1NU
QVRVUyAoRFBDRCAwMDIwQ2gpDQo+IHdoaWNoIGV4cG9zZXMgdGhlIGludGVybmFsIHN0YXRlIGFz
IGxpbmsgcmF0ZSBzZXQgc3RhdHVzLCBhbmQgd2hldGhlciB0aGF0IHN0YXR1cyBpcw0KPiB2YWxp
ZCBvciBub3QuDQo+IA0KPiBPdmVyYWxsIHRoZSBzcGVjIGxvb2tzIGxpa2UgdGhhdCdzIGp1c3Qg
Zm9yIHN0YXR1cywgYnV0IHRoZSByZWdpc3RlciBpcyBhbm5vdGF0ZWQNCj4gV3JpdGUvUmVhZCBz
byB3aG8ga25vd3MuDQo+IA0KPiA+DQo+ID4+DQo+ID4+IENsb3NlczogaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy85MDgxDQo+ID4+IFRlc3RlZC1ieTog
QW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+ID4+IFNpZ25lZC1vZmYt
Ynk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4+IC0tLQ0KPiA+PiAg
Li4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jIHwgMjMNCj4gPj4g
KysrKysrKysrKystLS0tLS0tLQ0KPiA+PiAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMo
KyksIDEwIGRlbGV0aW9ucygtKQ0KPiA+Pg0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gPj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiA+PiBpbmRl
eCBkYmMxYjY2YzhlZTQuLjYzMzZhMzkwMzBhNCAxMDA2NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gPj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4g
Pj4gQEAgLTY1MCwxOSArNjUwLDIyIEBAIGludGVsX2RwX3VwZGF0ZV9saW5rX2J3X3NldChzdHJ1
Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiA+PiAgCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+PiAgCQkJICAgIHU4IGxpbmtfYncsIHU4IHJh
dGVfc2VsZWN0KQ0KPiA+PiAgew0KPiA+PiAtCXU4IGxpbmtfY29uZmlnWzJdOw0KPiA+PiArCXU4
IGxhbmVfY291bnQgPSBjcnRjX3N0YXRlLT5sYW5lX2NvdW50Ow0KPiA+Pg0KPiA+PiAtCS8qIFdy
aXRlIHRoZSBsaW5rIGNvbmZpZ3VyYXRpb24gZGF0YSAqLw0KPiA+PiAtCWxpbmtfY29uZmlnWzBd
ID0gbGlua19idzsNCj4gPj4gLQlsaW5rX2NvbmZpZ1sxXSA9IGNydGNfc3RhdGUtPmxhbmVfY291
bnQ7DQo+ID4+ICAJaWYgKGNydGNfc3RhdGUtPmVuaGFuY2VkX2ZyYW1pbmcpDQo+ID4+IC0JCWxp
bmtfY29uZmlnWzFdIHw9IERQX0xBTkVfQ09VTlRfRU5IQU5DRURfRlJBTUVfRU47DQo+ID4+IC0J
ZHJtX2RwX2RwY2Rfd3JpdGUoJmludGVsX2RwLT5hdXgsIERQX0xJTktfQldfU0VULCBsaW5rX2Nv
bmZpZywgMik7DQo+ID4+ICsJCWxhbmVfY291bnQgfD0gRFBfTEFORV9DT1VOVF9FTkhBTkNFRF9G
UkFNRV9FTjsNCj4gPj4gKw0KPiA+PiArCWlmIChsaW5rX2J3KSB7DQo+ID4+ICsJCS8qIGVEUCAx
LjMgYW5kIGVhcmxpZXIgbGluayBidyBzZXQgbWV0aG9kLiAqLw0KPiA+PiArCQl1OCBsaW5rX2Nv
bmZpZ1tdID0geyBsaW5rX2J3LCBsYW5lX2NvdW50IH07DQo+ID4+DQo+ID4+IC0JLyogZURQIDEu
NCByYXRlIHNlbGVjdCBtZXRob2QuICovDQo+ID4+IC0JaWYgKCFsaW5rX2J3KQ0KPiA+PiAtCQlk
cm1fZHBfZHBjZF93cml0ZSgmaW50ZWxfZHAtPmF1eCwgRFBfTElOS19SQVRFX1NFVCwNCj4gPj4g
LQkJCQkgICZyYXRlX3NlbGVjdCwgMSk7DQo+ID4+ICsJCWRybV9kcF9kcGNkX3dyaXRlKCZpbnRl
bF9kcC0+YXV4LCBEUF9MSU5LX0JXX1NFVCwNCj4gbGlua19jb25maWcsDQo+ID4+ICsJCQkJICBB
UlJBWV9TSVpFKGxpbmtfY29uZmlnKSk7DQo+ID4+ICsJfSBlbHNlIHsNCj4gPj4gKwkJLyogZURQ
IDEuNCByYXRlIHNlbGVjdCBtZXRob2QuICovDQo+ID4+ICsJCWRybV9kcF9kcGNkX3dyaXRlYigm
aW50ZWxfZHAtPmF1eCwgRFBfTEFORV9DT1VOVF9TRVQsDQo+IGxhbmVfY291bnQpOw0KPiA+PiAr
CQlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsIERQX0xJTktfUkFURV9TRVQsDQo+
IHJhdGVfc2VsZWN0KTsNCj4gPg0KPiA+IERvZXNuJ3QgbG9vayB0aGVyZSdzIGFueXRoaW5nIGlu
IHRoZSBzcGVjIHRoYXQgc3BlY2lmaWVzIHdoZW4gdGhlDQo+ID4gZGV2aWNlIGlzIHN1cHBvc2Vk
IHRvIHJlc2V0IGl0cyBpbnRlcm5hbCBzdGF0ZSB0byBzdG9wIGlnbm9yaW5nDQo+IERQX0xJTktf
UkFURV9TRVQuDQo+ID4gRG8gd2Uga25vdyB3aGVuIHRoaXMgcGFuZWwgZG9lcyBpdD8gV2hlbiBW
REQgaXMgcmVtb3ZlZD8NCj4gDQo+IE5vIGlkZWEuIEFuaW1lc2g/DQo+IA0KPiBJIHRoaW5rIGl0
J3MganVzdCBjcmF6eSB3cml0aW5nIDAgdG8gZXhwbGljaXRseSBkaXNhYmxlIERQX0xJTktfQldf
U0VUIHJlbmRlcnMNCj4gRFBfTElOS19SQVRFX1NFVCB1bnVzYWJsZS4gUHJldHR5IHN1cmUgd2Un
dmUgc2VlbiBwYW5lbHMgd2hlcmUgdGhpcyB3b3JrcyBhcw0KPiB5b3UnZCBleHBlY3QuDQo+IA0K
PiBBbmQgdGhlIGFib3ZlIGRlcGVuZHMgb24gcHJlLW9zIHVzaW5nIHRoZSBzYW1lIGxvZ2ljIGFz
IHVzIGZvciBjaG9vc2luZw0KPiBEUF9MSU5LX1JBVEVfU0VULiBHT1Agc2VlbXMgdG8gZG8gdGhh
dC4gQnV0IGlmIGl0IG9yIHNvbWUgb3RoZXIgcHJlLW9zIHVzZWQNCj4gRFBfTElOS19CV19TRVQs
IHdlJ2QgZmFpbC4gV2l0aCBzb21lIG90aGVyIHBhbmVscywgd3JpdGluZyB0aGUgMCBtaWdodCBy
ZWNvdmVyDQo+IGZyb20gdGhhdC4NCg0KVGhlIHNwZWMgZG9lcyBsZWF2ZSBpdCBhIGJpdCBvcGVu
IG9uIHRoaXMgb25lOg0KDQoxMTVoOiBMSU5LX1JBVEVfU0VUIGFuZCBUWF9HVENfQ0FQQUJJTElU
WQ0K4oCiIERQQ0QgMDAwMDFoID0gMDBoL0RQQ0QgMDIyMDFoID0gMDBoIOKAkyBTb3VyY2UgZGV2
aWNlIHNoYWxsIHVzZSB0aGlzIGZpZWxkIHRvIGNob29zZQ0KdGhlIGxpbmsgcmF0ZSwgYW5kIHRo
ZSBTaW5rIGRldmljZSBzaGFsbCBpZ25vcmUgRFBDRCAwMDEwMGgNCuKAoiBEUENEIDAwMDAxaC9E
UENEIDAyMjAxaCA9IFZhbGlkIGxpbmsgcmF0ZSDigJMgU291cmNlIGRldmljZSBtYXkgb3B0aW9u
YWxseSBjaG9vc2UNCmEgbGluayByYXRlIGFzc29jaWF0ZWQgd2l0aCBIQlIzLCBIQlIyLEhCUiwg
4oCTb3LigJMgUkJSIGJ5IHdyaXRpbmcgdG8gRFBDRCAwMDEwMGgNCg0KU28gdGhlIDJuZCBwb2lu
dCBoZXJlIGRvZXMgbWVudGlvbnMgdGhhdCBzaW5rcyBjYW4gb3B0aW9uYWxseSB1c2UgdmFsdWUg
b2YgMDAxMDBoDQppZiAyMjAxaCBpcyBub3QgMDAuIFNvIHByb2dyYW1taW5nIGEgdmFsdWUgdG8g
dGhpcyBEUENEIGlzIG5vdCByaWdodCB1bmxlc3Mgd2UgcHJvZ3JhbQ0KdGhlIHJpZ2h0IHZhbHVl
IChub3QgMCkuIA0KDQpJIGZlZWwgc2FmZSB3YXkgd291bGQgYmUgYmUgdG8gZ28gd2l0aCBMSU5L
X0JXX1NFVCBmb3IgRFAxLjMgYW5kIGZvciBEUDEuNCsgYWx3YXlzIHVzZQ0KTElOS19SQVRFX1NF
VCBhbmQgaGF2ZSBpdCBtdXR1YWxseSBleGNsdXNpdmUuIA0KDQpTb21lIFRDT05zIHdvdWxkIGhh
dmUgaWdub3JlZCBhbmQgd2UgZ290IGx1Y2t5IGJ1dCB3ZSBjYW4ndCBsZWF2ZSBpdCBhbWJpZ3Vv
dXMsIHdlIHdpbGwgYmUgY29tcGxpYW50DQp0byBzcGVjIGlmIHdlIGRvbid0IHdyaXRlIDB4MTAw
LiBTbyBsZXQncyBnbyB3aXRoIHRoaXMgY2hhbmdlLg0KDQpSZWdhcmRzLA0KVW1hIFNoYW5rYXIN
Cg0KPiBObyByLWIsIHNvIGRvIHlvdSBoYXZlIGFueSBiZXR0ZXIgaWRlYXM/DQo+IA0KPiANCj4g
QlIsDQo+IEphbmkuDQo+IA0KPiANCj4gPg0KPiA+PiArCX0NCj4gPj4gIH0NCj4gPj4NCj4gPj4g
IC8qDQo+ID4+IC0tDQo+ID4+IDIuMzkuMg0KPiANCj4gLS0NCj4gSmFuaSBOaWt1bGEsIEludGVs
DQo=
