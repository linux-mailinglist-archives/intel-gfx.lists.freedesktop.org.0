Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2796C4B9F75
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 12:59:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54E0710EB12;
	Thu, 17 Feb 2022 11:59:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C40610EB2F
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 11:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645099170; x=1676635170;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=WyjIPza29tpJmZhRKLnNDKwq+Ca3wYJBWj0Xh0NMtBw=;
 b=Wi/mNvcY1SHX9Qwr41FTzwFH2os9w8qeRx0w9aeloa6115+04XFLL8Av
 AUF8LdNGCIMCjV/gpSv4S9UP1ePSDKvqlkZDwztYU+k3mLhGUmQBE9nI3
 Fkiy0bpYT6PMbzrhJmHlP3qZfwIRhjta4TEBVFVRieHBViCKB8HYKdUv+
 qgDZb1KCSng45zYJbqfhHidHGq9cSkxbRl8D/hNiAldHO1VEG9I3t8yWf
 AWVa1CfTGl0X7nRBINBoSd3/lEin+1xoQ8FLLloHl2KR06IK901ltgKFb
 8NUOiQ6l54+VTBpWj4In/p1rkA0CCYJLjueXfriheY2T1Qw8acUmsJivP g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="275447084"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="275447084"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 03:59:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="502076750"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 17 Feb 2022 03:59:29 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 17 Feb 2022 03:59:29 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 17 Feb 2022 03:59:29 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 17 Feb 2022 03:59:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QlZK2kkZLGnlvzyV41yoyEu+FrMrlGURy8jX3IFJuBDkJU+xUyUHs0Yz6MVkLpZ6+dMtQhxi1g4saD2ji6XZBj5VSZNW/qkfQPrWkDhB1TlVdANoyURIno96YlVy+74HkWCzu+UjPRXqmARbJ3/4duo4qRElNBLa7ZpMgBVKhqG5rIU33iPoFV804jm1hZNC+3nhvywueM8ONavffpSglJKm3vsU6lWgu0mIJYX2m2Sp2XJ8rvrKE1DxIrdoppcYAQz/jOVHcKc5YWD0vHf72amIhaMvxWeQ28ukNzCTRk7Z1F+RNIZx2X9sPxeCx33jmtNqYjdRXmfUWiN9kWTYeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WyjIPza29tpJmZhRKLnNDKwq+Ca3wYJBWj0Xh0NMtBw=;
 b=DSkRdqNueWISzwWRj3S7ghOBa+26UAJt5Qviui/CMNL8Cby9+ue3vauHQBauEIglY4NkhJkNvD8sye2urf81iX4TAsr2B5pmpEh0p/gzx6iUbocmMUOsbqqgFf+tTX6hwCl6OUmbonhpQN3FtbTzoGvBgmXB52VjHbV+sYPjccstJcmBPhwXsooKubT55V83L2H1TLHb4OzfQ13GqsXTax0Qw5AnPKq/ZD1hgiqqfMvUEY440G47UrnbTAcnojJ+xG3axogk0+Qv9nhmxaRr+7JuIAOcUw/Cnahdr0OxP2wrb4YJaPsrMlbnxRuVvpcj4my4HyXGDcokAqcAHBJy/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 BN6PR11MB4113.namprd11.prod.outlook.com (2603:10b6:405:77::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4995.17; Thu, 17 Feb 2022 11:59:26 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::b4f9:69c4:33a4:aca2]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::b4f9:69c4:33a4:aca2%6]) with mapi id 15.20.4975.015; Thu, 17 Feb 2022
 11:59:26 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 00/26] drm/i915: Refactor the display
 power domain mappings
Thread-Index: AQHYHOBDy9iWr7zMZ0yWI7Gw3mVXJqyXsdyA
Date: Thu, 17 Feb 2022 11:59:26 +0000
Message-ID: <ef2aa7b42d176699c9a19aa3bf5ce93ff14f4d3a.camel@intel.com>
References: <20220208113656.179823-1-imre.deak@intel.com>
In-Reply-To: <20220208113656.179823-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 789f29ab-482c-426b-d277-08d9f20cf1e6
x-ms-traffictypediagnostic: BN6PR11MB4113:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN6PR11MB4113767743700FD3E4FCF05D8A369@BN6PR11MB4113.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iqwpeymB8L14FElFZFkKaLNAOg1t8OUG+weKLBo3ADDsNPH9kfE3xb/DIU6PrHQZfPliw4C2jbyWLwPrSyvudlGsv5cIYLLmVl5mbKfbHn527BE0x3ypn6hIzfypjA/Z04vGeVpz/czDfnBKxjcrKCrM/zlbA0mqK1t9cUJY1VJ6IpI+y+KQ3wcc4X27ZDxLgz2hQ4ViKKhcgvED/jfhKqBI+83a54nSSiVeS/YQ36IWfvhZNcV1SwkRDeP1n5MoH5Uuzs4YK0JDhvFecynRyX1mr2+gvfYzcL+aeCEJVCxrmLgWpf/DvbWicXO9HVx1Yfb1zj5s0S4ba5/AT/h8U/yb0kxLYX4+MLklvGSIPe2Ona4PHRpJ8BzTdwj6QeJB06PhqefaSq5p7HUmFzyBPPd4pnh3qN9OPScctUnhgS404li7akR75UIN7wykJT5Iq759olPWxWMsVPW4AIlByDnRyJs/cZe2QfVOyxPprVZe1wQV3ssRsTvEP0Mo2wMh/sM8ShS3v+wLI/ZoAg1urASfFWa1OpLqxyVyYhMgzMcdugjSUfnekpzRgleERYxeXHZqwQxJBmlhXgP97Amw2RtkYl99QAxfkAyVq8Y3kQntIDP4zATn6kepL3nG0o25vRt9yXexgCTmYCwPLPJavfu8qdhwh0eB6oCHwiyit5F3y35KWVSm7k/oEeHHebZz/YZOPfRJMSehH45cTLJwxA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6636002)(71200400001)(316002)(110136005)(6512007)(2616005)(26005)(107886003)(36756003)(186003)(91956017)(4326008)(64756008)(66446008)(76116006)(8676002)(66946007)(83380400001)(66556008)(66476007)(66574015)(6506007)(508600001)(966005)(6486002)(2906002)(38100700002)(38070700005)(86362001)(82960400001)(122000001)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Nk03UzdGVHAzdWZpZE1KOGU1VTZ2dUh2NVRLZm1qZldOcXhpeGxkTzhyNTB1?=
 =?utf-8?B?SURSZXE0d1F3bnB6NmJWOURlMGJuanRUMDkwNllOY1h2KzlLMVR1RGMyc3py?=
 =?utf-8?B?OHFuM2lzT1ZOaGZVeGZIRWlrZjBPVlkyYlRYVkdiUERDZzFmVDJLaGRIOFRi?=
 =?utf-8?B?MmdybW5YV04yWGJxWnQ5c21YUWtoL25XaWYvdUJwZnFzY2RYQ2Iya3pCNDFx?=
 =?utf-8?B?Nm1WNFNXVWJZaWlTN3Z1OUlBT004QjNobVZpS1hZc2oxcU1kMXBBVlJ4YitK?=
 =?utf-8?B?SU1xVDhLcUx4cVRiVzk4WWhiMnJKclZEVmlHajNSbStLQVgybHN5U2pVS01J?=
 =?utf-8?B?TVByVHBETVkyeHFxYUlNZTJrYzlzUndObmtjbkkvUDNPSStkMDU1UWt1QzNF?=
 =?utf-8?B?a2NHclBwVW4rWGNvQjM4c0EwSVYvemhKQW5FOHRnckIvN1k1Z1BZc2dpdzNa?=
 =?utf-8?B?c09IbDJoNmR6eDV2blVYbGVMNFRDOG5YWjRweHRDQUVGdkVmRWNNUkpQMWxB?=
 =?utf-8?B?UkRuNG5kNFYwOVMxYi9kclJnWjBNdXZIblZ2Z3B3NzVlbzR0WnZTY01BdmhY?=
 =?utf-8?B?cDA1NEZsOEJpVWl4K0I5ZGJjNFl1RkFiVUpyWnQ2Qy9rczFLeHowSVRZeFp2?=
 =?utf-8?B?RGt2U0k3cHBscStuN0wvejFnZUxxUS9wQ0hwakg4ZE5OTjRUZ3JmUVZyemE2?=
 =?utf-8?B?SDFsV2VpMWxpT0FSYjNSdVBzbi92OUdFd3ZtUlNrY09vNnZmeEVnczFySTB5?=
 =?utf-8?B?WjZqQXZtRmR6aTltWHhEdmRMdVlMb1pDRk9yUHlmSVMzelltVXdXMTNyT1JI?=
 =?utf-8?B?MjZoamRGQWhSQ3Z5MjBYR0ViRVpGT2dWV2Rwd2ZCVVR6WXdWU2hIejRrelN4?=
 =?utf-8?B?bTV4Q3hMV0d2enpIQWphMW1rckcrQUtPS2ZTOFVSVlJXOGhheGx4UHp1cTd0?=
 =?utf-8?B?d3hnTGxLR29qTm5TY21uZXB6azJVRmJIbDA1ZERscURrbGFtMFR2VU5LcUdo?=
 =?utf-8?B?d2NVZXdESW51ODBONDd6SXpaWVNSUjRLejBvcHlZQVZkSHBSZnJPbENEWmg1?=
 =?utf-8?B?SGRkeUVFbyt1ZEtxZzhTaG1KendCVGdBaThnQzRXNDlTQkczRGprWEZqWlo3?=
 =?utf-8?B?REV0WFNKM3BISUVFb1hWUVpCUXBvcGFxcEhMOGxvM0Qxby9icjF2VHkxenor?=
 =?utf-8?B?d3dTbmlPS2s1QUhzWEpnbEF1NjhiLytuN2FUSEJ3SGhVTFphbFl3U2ZSVEky?=
 =?utf-8?B?M3IwOFczTXdDdTREWXQ1eVJ1V1hvZ2FjMjNVRmtlcDFJVldsMy9EQlMzY1gy?=
 =?utf-8?B?WWdiQVM1MVBIck9wNEZab0ovN3lwQ2VqU1k1bDJKZUtXNUZxNDJjeG5nY0N4?=
 =?utf-8?B?UU1ldEtoYkVNMzBUUktsaG5rQlhiZXk2bzdQNHpiQ2tPSDBkNlBlU1pQOXVx?=
 =?utf-8?B?TXo2K2JPV3F3Q1RjdWhCeks3eG1TMVo0b1BlY1htcjRPajlCV3M2cmdjNGxS?=
 =?utf-8?B?aFAzdTRIRkdRMjdFTEt3TjV5WTdKTmdma1ZqUzRiL05IWkNhdVpXL1BBc0V0?=
 =?utf-8?B?Q3Y5RW10WVY2RnJZaGdRYjFZK3UzM04xVUdtWXE0QWF3TVZZWGt5OWRIK3Nh?=
 =?utf-8?B?eU1JM3ErQzlHV3lHajkvOVR4bCtidUE3bk00N1BXMldVZ0ZvdytVdGxIVGts?=
 =?utf-8?B?RkVUYXZtWWtXaERXMjN3Mm5xMmg5S1dFVG1TVGVwaGRmZjFqT3lXb0RIVVhZ?=
 =?utf-8?B?VnIzR2ZQN1lFb3FxTGwwcHBEbXN4K2NlRjJVMk9yWDNqTXUybHlBL2QzQ1FR?=
 =?utf-8?B?bnArNnMxZGNvL3pRc010dHlZRitVampmQnB3M1pLS05qaDVDNUk0b2YxQWdq?=
 =?utf-8?B?SUtXK2QwdlFHQjRIOXA0blQza1p5K2pIL3Fic083V2xIY2F6RllUcG05cE9W?=
 =?utf-8?B?c0Q3K3dzSWVRVlFBMUV0Q0M2UTljVUcxNUtMcGRZR1U5eTdYbVBNb2NKSnNh?=
 =?utf-8?B?Ui9BU2VSVW5za0QxYmJZWk5weWV1YXVmUURGSlZadjJTa1QrbTZyT1FwSkxy?=
 =?utf-8?B?YUlCMUpLL29sWGV1bFgvR3NYOVlTaTRHV0dEOUp6bG9sdWE0S3c0Q29rL3Ro?=
 =?utf-8?B?NHVGZE5haGpuNWtoYUtwR0pucjdNRDlmV0FTVDYzYXNZMG10ZHBiT01Ga2dn?=
 =?utf-8?B?VXNReUtaS3p5ZzFVTGRORzJSM3U1WkRiQVBrbExRQTRzM0JMWER0R2IybHFl?=
 =?utf-8?Q?Ip++oakSBlTmPQNRWRKN/6YguZxxw4pEglDSkNEu2I=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <455481A87A2DE7478E46FCB8586C059C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 789f29ab-482c-426b-d277-08d9f20cf1e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2022 11:59:26.0663 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RBxzA0Ak8iEJKaisep1EjfA+S11vjjYIe5L13BBr/sYV932s7Owpo47qbqaygytZakbNJ7K+lKqNRBHASdb6/+Yuxa7ro/WRmjZKHHhnKNg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4113
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 00/26] drm/i915: Refactor the display
 power domain mappings
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0K
DQpmb3IgYWxsIHRoZSBwYXRjaGVzIGV4Y2VwdC4gSSdtIGV4cGVjdGluZyB5b3Ugc2VuZCBwYXRj
aCAwOS8yNiBhZ2Fpbj8NCg0KT24gVHVlLCAyMDIyLTAyLTA4IGF0IDEzOjM2ICswMjAwLCBJbXJl
IERlYWsgd3JvdGU6DQo+IFRoaXMgaXMgdjIgb2YgWzFdIGFkZHJlc3NpbmcgdGhlIHJldmlldyBj
b21tZW50cyBmcm9tIEphbmksIG1vdmluZw0KPiB0aGUNCj4gcG93ZXIgd2VsbCBvcHMvZGVzYyBz
dHJ1Y3QgYWNjZXNzb3IgZnVuY3Rpb25zIGFuZCBpbXBsZW1lbnRhdGlvbiBvZg0KPiB0aGUNCj4g
cGxhdGZvcm0gc3BlY2lmaWMgcG93ZXIgd2VsbCBob29rcyB0byBhIHNlcGFyYXRlIGZpbGUuDQo+
IA0KPiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy85OTQ3Ni8N
Cj4gDQo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiANCj4gSW1y
ZSBEZWFrICgyNik6DQo+ICAgZHJtL2k5MTU6IEZpeCB0aGUgVkRTQ19QVzIgcG93ZXIgZG9tYWlu
IGVudW0gdmFsdWUNCj4gICBkcm0vaTkxNTogU2FuaXRpemUgb3Blbi1jb2RlZCBwb3dlciB3ZWxs
IGVuYWJsZSgpL2Rpc2FibGUoKSBjYWxscw0KPiAgIGRybS9pOTE1OiBSZW1vdmUgcmVkdW5kYW50
IHN0YXRlIHZlcmlmaWNhdGlvbiBkdXJpbmcgVHlwZUMgQVVYDQo+IHBvd2VyDQo+ICAgICB3ZWxs
IGRpc2FibGluZw0KPiAgIGRybS9pOTE1OiBNb3ZlIGk5MTVfcG93ZXJfd2VsbF9yZWdzIHN0cnVj
dCBpbnRvIGk5MTVfcG93ZXJfd2VsbF9vcHMNCj4gICBkcm0vaTkxNTogTW92ZSBwb3dlciB3ZWxs
IGdldC9wdXQvZW5hYmxlL2Rpc2FibGUgZnVuY3Rpb25zIHRvIGEgbmV3DQo+ICAgICBmaWxlDQo+
ICAgZHJtL2k5MTU6IEFkZCBmdW5jdGlvbiB0byBjYWxsIGEgcG93ZXIgd2VsbCdzIHN5bmNfaHco
KSBob29rDQo+ICAgZHJtL2k5MTU6IEFkZCBmdW5jdGlvbnMgdG8gZ2V0IGEgcG93ZXIgd2VsbCdz
DQo+ICAgICBzdGF0ZS9uYW1lL2RvbWFpbnMvbWFzay9yZWZjb3VudA0KPiAgIGRybS9pOTE1OiBN
b3ZlIGludGVsX2Rpc3BsYXlfcG93ZXJfd2VsbF9pc19lbmFibGVkKCkgdG8NCj4gICAgIGludGVs
X2Rpc3BsYXlfcG93ZXJfd2VsbC5jDQo+ICAgZHJtL2k5MTU6IE1vdmUgcGVyLXBsYXRmb3JtIHBv
d2VyIHdlbGwgaG9va3MgdG8NCj4gICAgIGludGVsX2Rpc3BsYXlfcG93ZXJfd2VsbC5jDQo+ICAg
ZHJtL2k5MTU6IFVuZXhwb3J0IHRoZSBmb3JfZWFjaF9wb3dlcl93ZWxsKCkgbWFjcm9zDQo+ICAg
ZHJtL2k5MTU6IE1vdmUgdGhlIHBvd2VyIGRvbWFpbi0+d2VsbCBtYXBwaW5ncyB0bw0KPiAgICAg
aW50ZWxfZGlzcGxheV9wb3dlcl9tYXAuYw0KPiAgIGRybS9pOTE1OiBNb3ZlIHRoZSBkZzIgZml4
ZWRfZW5hYmxlX2RlbGF5IHBvd2VyIHdlbGwgcGFyYW0gdG8gYQ0KPiBjb21tb24NCj4gICAgIGJp
dGZpZWxkDQo+ICAgZHJtL2k5MTU6IE1vdmUgdGhlIEhTVyBwb3dlciB3ZWxsIGZsYWdzIHRvIGEg
Y29tbW9uIGJpdGZpZWxkDQo+ICAgZHJtL2k5MTU6IFJlbmFtZSB0aGUgcG93ZXIgZG9tYWluIG5h
bWVzIHRvIGVuZCB3aXRoIHBpcGVzL3BvcnRzDQo+ICAgZHJtL2k5MTU6IFNhbml0aXplIHRoZSBw
b3dlciB3ZWxsIG5hbWVzDQo+ICAgZHJtL2k5MTU6IENvbnZlcnQgdGhlIHBvd2VyIHdlbGwgZGVz
Y3JpcHRvciBkb21haW4gbWFzayB0byBhbiBhcnJheQ0KPiBvZg0KPiAgICAgZG9tYWlucw0KPiAg
IGRybS9pOTE1OiBDb252ZXJ0IHRoZSB1NjQgcG93ZXIgd2VsbCBkb21haW5zIG1hc2sgdG8gYSBi
aXRtYXANCj4gICBkcm0vaTkxNTogU2ltcGxpZnkgcG93ZXIgd2VsbCBkZWZpbml0aW9ucyBieSBh
ZGRpbmcgcG93ZXIgd2VsbA0KPiAgICAgaW5zdGFuY2VzDQo+ICAgZHJtL2k5MTU6IEFsbG93IHBs
YXRmb3JtcyB0byBzaGFyZSBwb3dlciB3ZWxsIGRlc2NyaXB0b3JzDQo+ICAgZHJtL2k5MTU6IFNp
bXBsaWZ5IHRoZSBERzEgcG93ZXIgd2VsbCBkZXNjcmlwdG9ycw0KPiAgIGRybS9pOTE1OiBTYW5p
dGl6ZSB0aGUgQURMLVMgcG93ZXIgd2VsbCBkZWZpbml0aW9uDQo+ICAgZHJtL2k5MTU6IFNhbml0
aXplIHRoZSBwb3J0IC0+IERESS9BVVggcG93ZXIgZG9tYWluIG1hcHBpbmcgZm9yDQo+IGVhY2gN
Cj4gICAgIHBsYXRmb3JtDQo+ICAgZHJtL2k5MTU6IFJlbW92ZSB0aGUgYWxpYXNpbmcgb2YgcG93
ZXIgZG9tYWluIGVudW0gdmFsdWVzDQo+ICAgZHJtL2k5MTU6IFJlbW92ZSB0aGUgSUNMIHNwZWNp
ZmljIFRCVCBwb3dlciBkb21haW5zDQo+ICAgZHJtL2k5MTU6IFJlbW92ZSBkdXBsaWNhdGUgRERJ
L0FVWCBwb3dlciBkb21haW4gbWFwcGluZ3MNCj4gICBkcm0vaTkxNTogUmVtb3ZlIHRoZSBYRUxQ
RCBzcGVjaWZpYyBBVVggYW5kIERESSBwb3dlciBkb21haW5zDQo+IA0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgICAgMiArDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2c0eF9kcC5jICAgICAgICAgfCAgICAzICstDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2c0eF9oZG1pLmMgICAgICAgfCAgICAzICstDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyAgICAgICAgfCAgICA4ICstDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCAgICA2ICstDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgMTUwICst
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCAgfCAgICA0
ICstDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYyAgfCAg
ICAxICsNCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyAgICB8
IDQ4NDIgKystLS0tLS0tLS0tLS0tDQo+IC0tDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3Bvd2VyLmggICAgfCAgMTU0ICstDQo+ICAuLi4vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXJfbWFwLmMgICAgfCAxNDg3ICsrKysrDQo+ICAuLi4vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcG93ZXJfbWFwLmggICAgfCAgIDE0ICsNCj4gIC4uLi9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9wb3dlcl93ZWxsLmMgICB8IDE5MzcgKysrKysrKw0KPiAgLi4uL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyX3dlbGwuaCAgIHwgIDE2OCArDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYyAgICAgfCAgICAxICsNCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyAgICAgICB8ICAgIDUgKy0NCj4g
IDE2IGZpbGVzIGNoYW5nZWQsIDQxMDUgaW5zZXJ0aW9ucygrKSwgNDY4MCBkZWxldGlvbnMoLSkN
Cj4gIGNyZWF0ZSBtb2RlIDEwMDY0NA0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXJfbWFwLmMNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NA0KPiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXJfbWFwLmgNCj4gIGNyZWF0
ZSBtb2RlIDEwMDY0NA0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXJfd2VsbC5jDQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQNCj4gZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyX3dlbGwuaA0KPiANCg0KQlIsDQoNCkpv
dW5pIEjDtmdhbmRlcg0K
