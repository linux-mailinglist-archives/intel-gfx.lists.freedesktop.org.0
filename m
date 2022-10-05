Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 915015F545E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 14:25:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DC9310E1DD;
	Wed,  5 Oct 2022 12:25:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE35010E1DC
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 12:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664972729; x=1696508729;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Diszqtx6I+cft13wuCplXnjqd5iKRUdp80RQoWHw8w4=;
 b=SKN5bf624WdILKMSDSMnpeKFEP1tHF4Q+SGiVkFDVjA04txuE5DDCgD1
 rWESbJN3/cGaFTCdG82eh3WQBm59oDmZDEIfKhZweEWRKYDBVJl1W3eNV
 2/8aqhC8L61iZf9euVopavAWwuV5fjkTFHkt3jaN2vhEs8NxV4bGqIXp8
 wc2pyPJNR0DC61lzt/TgIUHibmt+zq2g5oyXEPYPQWK7Yl5Oc5T0T8PFX
 4/XFvwqvQqQ3fRzeXaPxPtgI5I4zPajNw0TealB7eXMZI5dGfbusuTiI9
 0qZMDc8hJW/br9G67k9PwqfldQkCpSMWEAUi+BYErkWv1thwXpKNkwFkl g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="304127298"
X-IronPort-AV: E=Sophos;i="5.95,159,1661842800"; d="scan'208";a="304127298"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 05:25:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="713392722"
X-IronPort-AV: E=Sophos;i="5.95,159,1661842800"; d="scan'208";a="713392722"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Oct 2022 05:25:28 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 5 Oct 2022 05:25:28 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 5 Oct 2022 05:25:28 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 5 Oct 2022 05:25:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 5 Oct 2022 05:25:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KYnx+F1zUSRBKa/FlkjbBZ1ijyViGYTz7pNqQS7/Z5XmeLCJ6V2Nj65kXMndtEWOy/5/HcdCeTCHE0QZ6wZtpCY8vdaq5a07aQv368Kj4dRfVLSX7U8JmnTi1sUWI1XghSY6Yh8Rv28cpPrfC0YAWo/3+fvwD1bMXviU0K3/RLQqFSqMgcXDm3DqmJCUJn1r3T4f7BIyTwJbXmWplvBoZuwa2/lHMuotlEzRPNIHzVwXN63RlWY+i8kwf1rvON3ce/TtBactfyZJoCxg1Ca2ASb56COVfRSMERVcNd4H+KneErx4VmbYNEGLjjvz8TMvHiIHc062p3OrYlI3xvmowA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Diszqtx6I+cft13wuCplXnjqd5iKRUdp80RQoWHw8w4=;
 b=jWPTtnIvqVAd2MOn24Kn1+0cejdzs88OyoU3JM2TM8Ag9DCG4Wsv4IQIjvYFcXY0lSkFNWABltLoOcJuhWLoVPm6ceX4FkYsniOV7KWYLQXegtLW9rgANRXr8WP0C43Cy6GiA2UqX5fTsqD4DCDh5BstXLQuDa2PETJRrThBWswbQ+aGetHIZKU15dJd1qesPXKrqdnyvGfkCOqJfcwnEmsmiL8Ganj02Nz0lMYg+h8+wclIRqYis6x0KAlfZ7rL2jQ6n8JlDVgerrYKIMw5iCOAunTM75i6xRMQ7fvJZeHYkdfEsc0GyFeJKDa6WSNlW7Cbsp1DogLT5bJRS/J4ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 (2603:10b6:301:51::10) by PH8PR11MB7141.namprd11.prod.outlook.com
 (2603:10b6:510:22f::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.23; Wed, 5 Oct
 2022 12:25:26 +0000
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::f4bb:8e76:e146:6f97]) by MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::f4bb:8e76:e146:6f97%9]) with mapi id 15.20.5676.032; Wed, 5 Oct 2022
 12:25:26 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Ensure dbuf state is defined
Thread-Index: AQHY2KvmeySgiTyI30GNOuaBNgQRoa3/qgKAgAAPhvA=
Date: Wed, 5 Oct 2022 12:25:26 +0000
Message-ID: <MWHPR1101MB2157491209187F2A19596B14EF5D9@MWHPR1101MB2157.namprd11.prod.outlook.com>
References: <20221005111158.3022387-1-mika.kahola@intel.com>
 <Yz1qgeXxFPquYh0q@intel.com>
In-Reply-To: <Yz1qgeXxFPquYh0q@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR1101MB2157:EE_|PH8PR11MB7141:EE_
x-ms-office365-filtering-correlation-id: a69f7ad3-bc77-499e-3f21-08daa6ccaee0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A6ogAfWcFU7k8LLJ2fh6zez+XdVniBGjDCxEk+8GS0MH7X+a9O7PbR6zOaGRd/cKJANsUKWO9/YjnsKTtPz2dEx3j/nohVTRBkMh58YIZLF+Pve2xkBaK4+/CH2+b3roXwlkAtYs8QKwmeUJ0/dBXVOGa+kFI9IFFcCsuRje5VC6jzoiPioP1y4cXrcwydAuyrE0MU/upSA2AjHKn7AKD0tp/RcVhEgkpaTrjriAf4BLfpCNZAtVMoGI4IMkrC1xQ0zLDOTmmiQpGCTn72dBH8mv4PyCY2+bisgVgBqML+PAM/T83609h9yZWtH8x4zVtXr4UdUqIYmFv7aUmNg+Ekhb+ftEQVuxsbSt/H6gxOGfaYGc7i0pSNeibGSujtyVrOCpyoZQU5P4qeDCddg9r2tsBWGfgJROvb5XrBWSE5u24jmUX517nVuyJHii2at4TOEy3OEgCKv6kEsHelBN2a4fT3IMCkwFRKPI2N9/A4wE2qgYP0pA+P/3lfxz7EP/FC1KOrBA4TK4EsHXgEws7Erg90HCspf3/sCL08lM8iFPBYAaW+fLQQrEot1c3mbZ3oKZ6w7t/ISecLJjvMcyzKvnzdog80jWf8DIfCIQYOy4yLQQnX7x27Y76A2V2hbHQirGKIIVAoWfhjcK/4x3Pt06HDKK6jzqr10l8Ppjo922zzQomaljuYdjZo2cvgBy84XfOK2WzLNKKQUNcM+j1U/SiIQG/h7PwUKMmchxu4ux6XGyYRSw4LmZ1SjhV/Yw7NZu/W3PhikMhrs8q0Qqmg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1101MB2157.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(39860400002)(346002)(136003)(366004)(451199015)(5660300002)(8936002)(82960400001)(2906002)(38100700002)(83380400001)(53546011)(186003)(478600001)(41300700001)(8676002)(66946007)(66556008)(66476007)(64756008)(76116006)(4326008)(66446008)(33656002)(122000001)(52536014)(6916009)(316002)(7696005)(6506007)(38070700005)(26005)(55016003)(71200400001)(9686003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c3FpVTh5WXFLMWJQTTU3TzlOK0dOak03em5DRXRyY2hnMEhWVVhKeVNJTGNv?=
 =?utf-8?B?Q09RNHhHWUtCUXdnMGlLc2l0TFpjRE5wanNqOHVVNjc3Z2VSQTV0Q3R5bytM?=
 =?utf-8?B?TWt4ekt5ZjNVQUd0OHpzSmRXV3R4TC9VQnJ4WlRyOEEwb2pVRG9pamNMcWFv?=
 =?utf-8?B?S0xxTGd6T3Z0WUsyb09VUU5ieDVBNWpoTHFkSDk5akxHdHhJcFN4WkJZUmIw?=
 =?utf-8?B?bTB5NTByRXpjSWZjd2JIVGZHd3pQUDlXaDMwNGhqU3UwOUk2SVMyRUtNTkh2?=
 =?utf-8?B?K1AvVGExVzBTQXFGWE9HeFZORzFmbjVkUTl6MnlQd0IyOHVYS2tUeG1JRmd3?=
 =?utf-8?B?UlgwQVR1QjJJckRpZ0hmZDBwS084ZmVHOEMrOFM4eFFWT0VmcHZMelBacE9K?=
 =?utf-8?B?bjVoVnMvZ3UvZ2pJZHk3T04xOVZ0SDh2SGo5V3JNSWkxNTcxZkUwL2FOMlJJ?=
 =?utf-8?B?d1h2OENDbURXRkJqYmM4aVJJejRsRDJab3hhTDBZdGpxYmVwRjhsdlNwZXFQ?=
 =?utf-8?B?dFdPZUlZQnBrWS8wZC9MQkFxOXltMVl3NGZjbklXK3ZzL0kzUmJPVzgxelVZ?=
 =?utf-8?B?eXAveE9uUjRqVU0veVdCQ2tkR1NjRW84M1RpUGpOSEdkMzJ1TDNtUFVYWU5N?=
 =?utf-8?B?amd2TEd1VVI2SFNac3dMMGpCTGRNbU84UTBrbFAzRU9HbmZsNWZ1azRoTzV4?=
 =?utf-8?B?WEc4MldkSXdZUHc4eUZpUzZBRTJaWU5NNTdtd2hZaDVnckhUbjROa2lOZUNk?=
 =?utf-8?B?MDUxOFFiNUtEZFY0UmlwY3AvaHBjWkk2eExkZ3BWTmFZT3VkOTVPdGRIbzJC?=
 =?utf-8?B?VFpMMlBuSi9pVGtmLzRmeTNydWh2NVJkMzNyNGVUQzBuU3ZBWlV1TUppQ3Ja?=
 =?utf-8?B?cHRBZllyTlBDcEE1bmRBWW9YUU5RZ1paZXFzb29tR0hZYWEvbFNFZWtWYWxs?=
 =?utf-8?B?M3Y4NkVMMWQvVnlSVzRYUjFrbUJtVkFmcjMrMndlYVh6VmF5d05vQmF4YkNY?=
 =?utf-8?B?bkx0dGhjVDRHTzJLT3BUd2MyYUhaRmNqanNhZkYvWkdTUFcrcEhJZ0ZQTENa?=
 =?utf-8?B?akNMcXNDRGgvWEhPUjlzUVJaRHZqNy9BTlJXMVYreGl3Szg1cksyd0U2a01Q?=
 =?utf-8?B?a3FyK01rdjlTS2V1Y25SYWdwbnUvNVVWaGU0YjJQS0JMenBFR3BKK3N4TFpj?=
 =?utf-8?B?U2RWNlgxTHM1SGpnV25oTGxhSXlKek5xY1ZWR3E1ZHNmU1VGUDlna3IrS0Ix?=
 =?utf-8?B?bU9JL2J5UCttR29Da1RhMmVsY2NqeU9QeFBWV2VrRWFpUWgwTjEwdkFWZkRG?=
 =?utf-8?B?bUl5akpUZzBhU3VIOVpaSnZBMnZWMjd5UzJCMGFRV25NNFptVUk5QW9NMGYv?=
 =?utf-8?B?R3BNZWVSUE85Wk8wellXanhFUkgyelZIZVlSRk1BaTM0UVBGOXRWQlZzM0pH?=
 =?utf-8?B?bHJTQmtLU2VkamN4OW1WazZBc2ZueGdsY3ZDcjRJZDBzYkZveFFXSnF0dU45?=
 =?utf-8?B?eGtrNTk0VUx5elFWZmZCMWRNZWRGaXRZcWhubDl4U1owdHcySUY5R2dMbTFo?=
 =?utf-8?B?UGhpTzBWRTJBcWxyZDUxYjR3RTdFTm9kZDFqekc1WisxMGUwSWxaQ20yd2Jp?=
 =?utf-8?B?NHdvcVlraGpwTTNvUjdBRU9NRUlOTkx1QXkxWHRnblAzK0FpbGZhZTZzK2JR?=
 =?utf-8?B?cGNrNG1sOVhPYmNhQU05MURJMDB1dk56K0FZZG4xOHo5NkJxT1FBZHl6VXVG?=
 =?utf-8?B?aU00LzBGM3RYOE8wOEI1aVdjUkQrRk9LQ1d4NWtiY0R4bUt0VkhwQzVVdytx?=
 =?utf-8?B?cHA2ckRlMG42MnFOOCtYdTR0UTJIYmRFcmFkMDlCWlFPekdXclBRZWd3RG1E?=
 =?utf-8?B?TGNrOG9zWW5JSmIzMVNhSkU3NTkwaUFkWUpld0FPdHdKdkxYNG1LR2h1SDVF?=
 =?utf-8?B?RXp1SHI3RFpIellSVFZKL2RhM3l4QlhiQVlYT0JPZVZlNjlBMmRMblBxdlRu?=
 =?utf-8?B?QXNITEhkbUZnRVg1MG5qczhQd0x1cGZ3NVZ1NkNUdXIvWVFUMkNEYlM5Y2NT?=
 =?utf-8?B?VngwTXNRWFNJSVNIQnBxaURrWVNhZ0ZuMjJBdkRTTUU0SW14Zys2S1lhREZS?=
 =?utf-8?Q?3vT3XHdpNIPedqDjRxxWt1CrO?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1101MB2157.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a69f7ad3-bc77-499e-3f21-08daa6ccaee0
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2022 12:25:26.3348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VtjouOOaH1oeKaNev62y3zmp0rc16sF8rap1IYE9PcqZIi64Z7mTvTXcuJTTLWfzfS63qGnEJEhTsdMBZ5wjVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7141
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Ensure dbuf state is defined
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE9jdG9iZXIg
NSwgMjAyMiAyOjI5IFBNDQo+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNv
bT4NCj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6
IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTU6IEVuc3VyZSBkYnVmIHN0YXRlIGlzIGRlZmlu
ZWQNCj4gDQo+IE9uIFdlZCwgT2N0IDA1LCAyMDIyIGF0IDAyOjExOjU4UE0gKzAzMDAsIE1pa2Eg
S2Fob2xhIHdyb3RlOg0KPiA+IEVuc3VyZSB0aGF0IHRoZSBuZXcgZGJ1ZiBzdGF0ZSBpcyBub3Qg
bnVsbC4gSWYgc28sIHRocm93IGFuIGVycm9yLA0KPiA+IGRpc2NvbnRpbnVlIHRvIGFsbG9jYXRl
IGRkYiBhbmQgcmV0dXJuLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTWlrYSBLYWhvbGEgPG1p
a2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMgfCAzICsrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvc2tsX3dhdGVybWFyay5jDQo+ID4gaW5kZXggZDU4ZTY2NzAxNmU0Li40ZWNmM2I0M2Q2ZDIg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJt
YXJrLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1h
cmsuYw0KPiA+IEBAIC02MzgsNiArNjM4LDkgQEAgc2tsX2NydGNfYWxsb2NhdGVfZGRiKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gKnN0YXRlLCBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykN
Cj4gPiAgCXUzMiBzdGFydCwgZW5kOw0KPiA+ICAJaW50IHJldDsNCj4gPg0KPiA+ICsJaWYgKElT
X0VSUihuZXdfZGJ1Zl9zdGF0ZSkpDQo+ID4gKwkJcmV0dXJuIFBUUl9FUlIobmV3X2RidWZfc3Rh
dGUpOw0KPiA+ICsNCj4gDQo+IFlvdSBjYW4ndCBnZXQgaGVyZSB3aXRob3V0IHRoZSBkYnVmX3N0
YXRlLiBBbHNvIGV2ZW4gaWYgd2UgZGlkbid0IGhhdmUgb25lDQo+IGludGVsX2F0b21pY19nZXRf
bmV3X2RidWZfc3RhdGUoKSBjZXJ0YWlubHkgc2hvdWxkbid0IGdpdmUgdXMgYW4gZXJyb3IgcG9p
bnRlcg0KPiAoeW91IGVpdGhlciBnZXQgYSB2YWxpZCBwb2ludGVyIG9yIE5VTEwpLg0KT2ssIHNv
IHdlIGNhbiBnZXQgYSBudWxsIGhlcmUuIFNob3VsZCB3ZSBhZGQgYSBjaGVjayBmb3IgdGhhdCBv
bmU/DQoNCj4gDQo+ID4gIAlpZiAobmV3X2RidWZfc3RhdGUtPndlaWdodFtwaXBlXSA9PSAwKSB7
DQo+ID4gIAkJc2tsX2RkYl9lbnRyeV9pbml0KCZuZXdfZGJ1Zl9zdGF0ZS0+ZGRiW3BpcGVdLCAw
LCAwKTsNCj4gPiAgCQlnb3RvIG91dDsNCj4gPiAtLQ0KPiA+IDIuMzQuMQ0KPiANCj4gLS0NCj4g
VmlsbGUgU3lyasOkbMOkDQo+IEludGVsDQo=
