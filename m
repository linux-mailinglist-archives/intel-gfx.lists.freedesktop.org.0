Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E200867DFDA
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 10:16:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52A3010E435;
	Fri, 27 Jan 2023 09:16:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F199410E435
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 09:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674811001; x=1706347001;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=NVb6BEI7nNu0rA9HxO1LRIuNJvKPlnXDghwARct3OzU=;
 b=SKKxddmXOCRYCVwqxdLf6MLy9IuiPkLt9pnAq4d+ljiJDWb3JQ7/m/jI
 24HO9H5dPlNS6sps6QSfyi70lu9CnzbcGeu5ArFn3ATpNUgMj2gb6wwsS
 0tUo/K9H9mO4hB3qvTYKrKDWyJVXzyGT11k0Kp2NlrknERNunsNgksNp0
 MEqxEoIUbrkoUlPZlhM9+OxlFY3E99rp6JD58z6Nl1iGCZWNSx1N8Q+rC
 bvRdeHmdmA1dNt5ZRWNwhBnVY7p0tkPeP5KyRbEKVSL4ZN3/CPujoWfN4
 DB5MfTEFjkrg2UX1aIlYUj57r01dSxhfoW4IaOU24oekowt8wfgE48JAk A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="329175939"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="329175939"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 01:16:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="695452725"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="695452725"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 27 Jan 2023 01:16:41 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 01:16:41 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 01:16:40 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 27 Jan 2023 01:16:40 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 27 Jan 2023 01:16:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AbazlDV4p+YbOxRVMvogFdrYdtp8MrzI7WcW2f5oueUETZIBFphfxRrmBk6lCCzRLFufwa5UrRgxC7HynoYtxuZEvbzBEIN3hyEkGtr7OIJwir807ENSOOefAn2J9xrn8JguZQyzP6fLyYIWIX89P0zPeB4YFQyL4Lwjw0auUyRI1u4GiecxcZW0oQL/DXF06RL+vLL7rZwQYpOzI7RHR1Qw78BOIjtZfxMOHgX8t/58x5tRquPZKNryB7rZSrtAHaGnCBTsqgrGHdBMqQYc8fKtyCR+1LLItVmsajNJdPzfXFoeirSsva6Ngzbld1V2IRZNzi/26TF7/H6WSBuuog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NVb6BEI7nNu0rA9HxO1LRIuNJvKPlnXDghwARct3OzU=;
 b=SBKGix366IjunkxU+j7kNHrWGekIfKD4t8PmCXyjRxlhfASLlClOrbWd/diicmOgC4fVn8/ieamU+tgtnJZQeSc62aGDZaEo01iZwTjGqPtEb28Q2aXLkdVimEwvDvJSGfuDlkvpqHL12SsCxHt2EIhNx5XOE2It0TjFwXk+FfIC1acAoEBexyZ+CcrfConJyvA8eeDhuHGZk3JP4XyrfqKPM/ZNpNRdbNruUhI8FMhDyhK/p4FZATDUmS9OJSbyewfGAtWyDaM/4oZqSBKECEXFs38D3uaTPaEt5Yo3NF/a4p/7D6DdNHEuBEwzoRJIgl2RzPhKp1K//P/20Uvhuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3207.namprd11.prod.outlook.com (2603:10b6:a03:7c::14)
 by SA3PR11MB7536.namprd11.prod.outlook.com (2603:10b6:806:320::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Fri, 27 Jan
 2023 09:16:38 +0000
Received: from BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::7454:4526:af70:14bb]) by BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::7454:4526:af70:14bb%7]) with mapi id 15.20.6043.023; Fri, 27 Jan 2023
 09:16:37 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/psr: Split sel fetch plane
 configuration into arm and noarm
Thread-Index: AQHZMik73/Zs3k3SGUmeVZFCJQYKu66x+8kA
Date: Fri, 27 Jan 2023 09:16:37 +0000
Message-ID: <9fd571befcf10d2b3832cf976db29c254a4e8217.camel@intel.com>
References: <20230127082702.3460571-1-jouni.hogander@intel.com>
In-Reply-To: <20230127082702.3460571-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.3-1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3207:EE_|SA3PR11MB7536:EE_
x-ms-office365-filtering-correlation-id: fb6b226c-ba07-4003-68e1-08db00473176
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wu7I2NqQPZdJH5tx/NLJcn48N0zpGvcevfm48RTd/8b5VxbvQjb8dXaNlmxhkfrokK/z9y+deAUuFxR0B6Ntb3aM263UpjCnkFPjK4Xt6Qxfcams0x4t18f3/KljBUSD6GHF4arQQMz70y1Ozz2XUxpB2wst4Y90TJGjr91ntandlxaTTR+5+w47b6bsPLIw0ian9P2H9Hp8V17Sa7yyQUNG6yjYL/NCKfuUIZgFu2GIkIucz4mSinjX9jE8flUFsr9GHrT9IkiGNja3jMg1Zw81JZShqaC4PSLKZjz4Mysespeq5XiSu68KNu9UhFt8pe/AfJLAulmIya7y6nSg0S3fxspyu/PND/HnPn8CQY33hqziLu34y6AOS32GNIKGVsSFJlLf+8CHfWGBDzRkaMvyELTqBNw9R0NGNFDSDzPvJNQ6rAfMgD4zeTqM3h5Q+vCcP1v7T7zyLuf9aMzLMhAwjWuVZdVbbs25vJeyf1AkeeY1ZkbDrkERPsdBtKJUewa1SNukiNWx9hX+shpU1EeufLh5eizWFeC0yA1z4gIcKxKkXndkZIrfB4EuVjl546N2QmUn/O6nkbBMmvqQiiAz0UuWRn1niS8gX91uM2InQjnqV+Uo9OPmDXBBPGVC3XmPxTcAtt24cWyJ9bEjXeOUAeys4tFjMpTJn9Qx+kPIkYVS8LGo5420eutaLsjLm0wYe1CtHORtQdkGJXQTJQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3207.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(376002)(366004)(396003)(346002)(136003)(451199018)(36756003)(86362001)(8676002)(71200400001)(6486002)(6506007)(110136005)(316002)(478600001)(5660300002)(2906002)(66946007)(76116006)(66446008)(91956017)(66556008)(66476007)(6636002)(41300700001)(8936002)(38070700005)(82960400001)(122000001)(38100700002)(186003)(64756008)(2616005)(6512007)(26005)(83380400001)(66574015);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d0ZMVWxKQkhJeDloTHJmejF6VXJGNzNDUk5KQUhGM3ZnM1lVbk5yK08rVHAz?=
 =?utf-8?B?NXNZdnRQSmdwL2EwYTZwZUtCQnNqQWdSL1MvOGRzVnRsYStkd1U3WU0wUHEy?=
 =?utf-8?B?NlJ6ekZEektmdThvZitKZFVCa0hXejZnTEx4WHJKUUFFaDlrSTJLNnIxdlVa?=
 =?utf-8?B?a2JCNVArakJzVU1vWTZGb1FMclNsNVo1RzdBM2hBZVE2aVlrVE1hL0VuUUc0?=
 =?utf-8?B?c1RkVm9XOFNZR3o3MDdrektWSEwvVEs4MW1IZVV0YjZDVHNpdlBqMjh6Y1ZB?=
 =?utf-8?B?U2lvNzJVczZ1NXNQOUFVZ1lJNXpQY1VxcGY3aXNUNTNkbnErTGZRVW5uNEt2?=
 =?utf-8?B?bjBnOHV1bHpuejFWYzFIOFNVTXIzbXdEOVpPTmlQT29KNm5oMzhIc3E3T2lz?=
 =?utf-8?B?ODNTYlhQRFBDZWo5dG4xKzZlVmtBMVVHQXJsN1NjbG8zbVdWcUozZGtlbWhP?=
 =?utf-8?B?M3RtcVI4UkZybWtFcVRIOUdUUUJLSXEwNFVoSkJhZHdXR2ZiT2lCUUlTOVBw?=
 =?utf-8?B?TFVSYnhLdkhTSDJTbnhmVVYwU2RUQis4Z3FUd0VkbnZocWFtR0c3b1hZbGg2?=
 =?utf-8?B?SVV3d0NEUU9LU0VNcjdEcWtaenZDZDJGWnZ4aXRMSW91Z1hEbWROOUliOGlV?=
 =?utf-8?B?L1Vlb3FyM1JxWlpKbVNNTElnN1h4SkVMbkFXN1dkWFl5MnJLTW9sOWluN3ZN?=
 =?utf-8?B?Y1BPME9tQ2FIZWxyd2EwVnY2SEltc1FTUWVwbStrOHMxOVMrWGlVcHdqcnJn?=
 =?utf-8?B?Wnp3QXZXV3FKZDNESm5iWjhOYjhtK3VvK3lncTA4ekxNY0NEZVJEdGZMaUJn?=
 =?utf-8?B?cW9tL3hTNmdVYWQzWmdVNVJ3KzNQZ3pGNldvZ1VqdnVobDJsMGVoZDFiOVJM?=
 =?utf-8?B?WUxTSG1hZUhtOGh1aHBMOHgwRHkzRFJrRVc0RTVqeUdCOFV3MjJML2ZpOHFG?=
 =?utf-8?B?bm1WK290Vzg4SjRubW1zVWhvK2RyMXltdVQ0dWVLa3RsbmtLajFhWUNpTCto?=
 =?utf-8?B?b0gxOUFubXpGYkVSS0tPNnlUSjB1NCt6RGhYMUg3RmZOWjc4a3YvVzFKUUN5?=
 =?utf-8?B?bXZPYjZIY1RzZ2liajlwWGM1Wm5rb1IvRWhWb1UzV0NnWFBZb0lveUtySFlU?=
 =?utf-8?B?THBMUHdHT1c0RXVjWXJnRy9HSkdSeCtkTGlOL0EwSGw1MHRiVVl0UjVlTnUr?=
 =?utf-8?B?VXNLMlFlZXYxWjRMK2ZlRTl6a3RTMEIyQUFWRmRlZC9WZUgySHI0QmRFUWh1?=
 =?utf-8?B?cmJ1d1N4Sm1TTXNsOFNQeUpoNHRIOFg5S0hwZlgvZHN5SWo3TlpHK2JlMHpm?=
 =?utf-8?B?YWJuRGQxOXAxVVQyTjJFOG82dEpLMlQ3NnMvbVZWclMrMGQ0NS9YSkxraC80?=
 =?utf-8?B?YWFhVEk2ek1pajVwUlpVVkZWaUVrZ2xHRmE0SXg1RDhTRmRnTFQ2R0dIbGZL?=
 =?utf-8?B?MTZKK2VuRThOMVRaU1ZCREppckRXZmZZU3BKOXY3WkNnSVdkY0J0RS9LZGV0?=
 =?utf-8?B?SzB4YVVmMVFVVGVRKzU2ajNGUUhvY3QxNmI2alczU3JDaGZubkhUSGtFZ2ll?=
 =?utf-8?B?aXg3R3ZhRm56OFhld2dXZi9uUmR0ZWYweng1MDNtamVPZExVMjlMMlhSenM3?=
 =?utf-8?B?STRySUFjT0pIVkROVDVBckNZa21vcWttSVpuSDdSQjNtZVhqTzh4MG1pbVd1?=
 =?utf-8?B?dm9ES0ZMRUFVMVJ0UysvazZzdHVML1ZWSWg2a1pGVmVDVHJTU0NGQ3JiaWla?=
 =?utf-8?B?TzhJVlBXb250Mm1BRWR4a2F5Tzl4Q1hveHdtMjdwTGFKZEFxSGlzenJxMHJt?=
 =?utf-8?B?eS85K3JBL1kvTmVxQ1I2WkMvdDJWa2NTT0w5Y0M3elhJSEFRbTNFL2hJRjEz?=
 =?utf-8?B?YjJ0QnphUk1xNVQ0L0VHaU9SQzBsZ2FaN25LK21QclVtenBmVEpNZGIyTnhX?=
 =?utf-8?B?cmdEMG1tWHNoZHBaeWFldk14Y2F4N2FJVktDc2xKUm9vVnhzeWtRb1o1RlJY?=
 =?utf-8?B?RjRGTURubU96OU5uSzcvbXhUL2d5blczd1I0WnFmak56Ukpldzl6UGJFOGJF?=
 =?utf-8?B?emlZc1E5TThNbXlKRzhDVHJMRk9LdWUrdmlnTFJLcXFSZ0c4UEFHc3NBNVJ2?=
 =?utf-8?B?YkhuRnF2Wmwveis3OHVRaWhZR054R3gwd0ZsSFJUQkh5TVVtWk9UTEV4clIw?=
 =?utf-8?B?ZVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CC818A0E1ABAE54FAEAADD3F2078AEDE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3207.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb6b226c-ba07-4003-68e1-08db00473176
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2023 09:16:37.5422 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b1YHo38Y/6lQqoyrwL+ccFgXKg3rW+GtlGRlu6qdgm3VVDZreSyehINilav2mL07GbKJcNrKskAPltJbPczuYwLwl4IrnDb5+A6DOOTC7DM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7536
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/psr: Split sel fetch plane
 configuration into arm and noarm
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

T24gRnJpLCAyMDIzLTAxLTI3IGF0IDEwOjI3ICswMjAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IFNFTF9GRVRDSF9DVEwgcmVnaXN0ZXJzIGFyZSBhcm1lZCBpbW1lZGlhdGVseSB3aGVuIHBs
YW5lIGlzIGRpc2FibGVkLg0KPiBTRUxfRkVUQ0hfKiBpbnN0YW5jZXMgb2YgcGxhbmUgY29uZmln
dXJhdGlvbiBhcmUgdXNlZCB3aGVuIGRvaW5nDQo+IHNlbGVjdGl2ZSB1cGRhdGUgYW5kIG5vcm1h
bCBwbGFuZSByZWdpc3RlciBpbnN0YW5jZXMgZm9yIGZ1bGwgdXBkYXRlcy4NCj4gQ3VycmVudGx5
IGFsbCBTRUxfRkVUQ0hfKiByZWdpc3RlcnMgYXJlIHdyaXR0ZW4gYXMgYSBwYXJ0IG9mIG5vYXJt
DQo+IHBsYW5lIGNvbmZpZ3VyYXRpb24uIElmIG5vYXJtIGFuZCBhcm0gcGxhbmUgY29uZmlndXJh
dGlvbiBhcmUgbm90DQo+IGhhcHBlbmluZyB3aXRoaW4gc2FtZSB2Ymxhbmsgd2UgbWF5IGVuZCB1
cCBoYXZpbmcgcGxhbmUgYXMgYSBwYXJ0IG9mDQo+IHNlbGVjdGl2ZSB1cGRhdGUgYmVmb3JlIGl0
J3MgUExBTkVfU1VSRiByZWdpc3RlciBpcyB3cml0dGVuLg0KPiANCj4gRml4IHRoaXMgYnkgc3Bs
aXR0aW5nIHBsYW5lIHNlbGVjdGl2ZSBmZXRjaCBjb25maWd1cmF0aW9uIGludG8gYXJtIGFuZA0K
PiBub2FybSB2ZXJzaW9ucyBhbmQgY2FsbCB0aGVtIGFjY29yZGluZ2x5LiBXcml0ZSBTRUxfRkVU
Q0hfQ1RMIGluIGFybQ0KPiB2ZXJzaW9uLg0KPiANCj4gdjI6DQo+ICAtIGRyb3AgY29sb3JfcGxh
bmUgcGFyYW1ldGVyIGZyb20gYXJtIHBhcnQNCj4gIC0gZGV2X3ByaXYgLT4gaTkxNSBpbiBhcm0g
cGFydA0KPiANCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4NCj4gQ2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IENjOiBWaW5v
ZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCj4gQ2M6IFN0
YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiBDYzog
THVjYSBDb2VsaG8gPGx1Y2lhbm8uY29lbGhvQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTog
Sm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KDQpMb29r
cyBnb29kIHRvIG1lOg0KDQpSZXZpZXdlZC1ieTogTHVjYSBDb2VsaG8gPGx1Y2lhbm8uY29lbGhv
QGludGVsLmNvbT4NCg0KLS0NCkNoZWVycywNCkx1Y2EuDQo=
