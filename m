Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7D749C051
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 01:50:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D710E10E3BA;
	Wed, 26 Jan 2022 00:50:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 550EF10E3BA
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 00:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643158243; x=1674694243;
 h=from:to:cc:subject:date:message-id:content-id:
 content-transfer-encoding:mime-version;
 bh=uivYLm1FLX1G2/HKYm6N8LUzoXEENPxLX7LGIMaRaTg=;
 b=YpYjtzEaq5S0dnwsetyoJWK8fCVW6yWyY1qGrGmWBnqxQRvtbMXca+QE
 uKdNccvZc0hdluBWYbX8ZAx1W8M0cbiHRBZXVOdpyNxClgBLTSBkYrAhu
 XQoQ/6eEvNOGPd99AvA2wAwAkt7EnkQxcNtS7C/PCBiCIaL1AJ81cB5NY
 qLixiU3ZTtXXsmcE23vXy9zDDBf6LRKpatFN3AF5k135eqyJfk7if+dbh
 BFUeO5FZygNCiE8W7k4Zmcjl8ZV6hkgIYqD5gtnpB0sca7+R/8AcYAEht
 kRVLN/YGhEJ3LgPXJQ0QisKJBEs/r11kkAKnf3EAy30u1leaokzXHhW4w Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="227125020"
X-IronPort-AV: E=Sophos;i="5.88,316,1635231600"; d="scan'208";a="227125020"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 16:50:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,316,1635231600"; d="scan'208";a="766971900"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 25 Jan 2022 16:50:42 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 25 Jan 2022 16:50:42 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 25 Jan 2022 16:50:42 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 25 Jan 2022 16:50:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W6wYJh7fzfqw5aXJ4jbv1+6VbRpNX1NZPo87UZwxfqGkuRFXH+3R2b9lUVBOGoZyxYacaKcwyIL1OFOi99nbzMZge5EviCwD2KdGdjeb0i/FcAWCUg+ewYRFEvOmTDEN7SV9CWa3O2qsYRYOnQvjjHMbl9lplpY87Mql+KzGH1Ykmz7uuhJ7v2N16o0TIafea+jOpvS1NxCBK8lJ25E3P6uFm76z4CvhoM/F48VP1g4v2keUV2rRth9kTGGR5JOzIOufVECPWGS0WzxU0FOmEkcnb6/2K0Hv42wfmaqUfk7B8V6Dl6l1bxYWyHA7Zdxbowb7Fui6S3/4qqLCFp4Mzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uivYLm1FLX1G2/HKYm6N8LUzoXEENPxLX7LGIMaRaTg=;
 b=LtjMojc5rO4M9InirmlT2AghEyPQlpBLKMcKCesBe6kqb59ebvUOYF8EgiousWKLxEtD/dDEc3D92fQFJwR1wZ07sXiCXItZVaGO7tvIFYaknXUmg+fDsJxGUpI1JggAre3K3Jduh51sFzQZi5UcuYt4/4sQFwkrTn8RdpxLk3oHGe0Xi68vCBOd3uCrspyYlLs513Hi+Kn/GPl6/heD+nyHEvSSgtpP5GAi94HXtlocB1L3UXDI8QRxjNglopTobPT75B1Hzmf4hFi3QyPdaXU6GlQPJK2P4ENdl/wJKPtC3EnrrILK2eQPo5Lz5mE6/RJ8CAhrZAwKmiVylTO/vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by BN6PR11MB1844.namprd11.prod.outlook.com (2603:10b6:404:103::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.10; Wed, 26 Jan
 2022 00:50:39 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::9c3e:c3a:cb71:837a]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::9c3e:c3a:cb71:837a%6]) with mapi id 15.20.4909.019; Wed, 26 Jan 2022
 00:50:39 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "linux-firmware@kernel.org" <linux-firmware@kernel.org>
Thread-Topic: i915 Updates: ADL-P DMC v2.16
Thread-Index: AQHYEk68bvKWyCepO0uICmmHIXz7vA==
Date: Wed, 26 Jan 2022 00:50:39 +0000
Message-ID: <d1ca9d426d8e568d1939b4adad6d531fd0107c27.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.3 (3.42.3-1.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 19787204-755a-4361-2653-08d9e065df75
x-ms-traffictypediagnostic: BN6PR11MB1844:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN6PR11MB18445A449B337C7A39784D66C7209@BN6PR11MB1844.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:425;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NPs9x9FlFbbrT/sVpOl/3GPQZzzB9kBk7YYb2U8qsXxYV6C6BydrDGeVWe6SFTRGx0QGi/QBYIyB0IjeUgCBSpuuwbZrtA3hwihHdLz+UqeSWvnjBZqm949UKAlbwha1wo6Bng5NngtHRiQ/2ANcnj6alztc2EnpyrhB0U/smlI3uf0i5DXwONRyS+Q1wE9Ar4iEztgLmoF4uzra3zGGimJaRx+H1asJZ8cU+T2CEPt3mnZ1npNqLSYjw33UgkZR6uVJmGC3T5kterL0kgD0qcRXqAXLDRvHoWcksvEtjpU0fl4Sex8K+3G+uab9s3vZe/gqqw+DHxn+uq/q5U+ICfyRMmhtx4kqVmf9oFWspkHtSoYGOgEgwE7uAxSy+VGJzdliOgCU1hqSMXx7JAI0mRMJHsnLUrqmhg+dxmhu5zG/QgGoa+StWtcz5p52p8u/VeayKPVi1wRsoUmMOrJHosRao2xzTbFZLOWH1yTtSnJMyc84EI/0DSgxHdy/fBSSGNYGawFPHNGR1Q2DGs9j1Jt9rfjQg4FR9bnDFy7X+FXV/25r+TI+b4OVrOA/yqsRjWhrEqagaGnfL2+AsEGxMZ6A1UzAHrJasdOtigdGY/qkeR8QgXK3cGyZTktCTfOqQSQK8LMIGPd/LadP8PoVExC1sCZZtha4x7fhiAW3hwTGeq7tcrHXpcj+4e28lQNOwh3FH46hxNF4dcvURR3Icl0oZkob9io7bNSO7ogerPh2KO2yveJ/fnBYBZi7jWK1fhZRso6PCGgM8cMunyW7LuJcJv2aVoq5Z7xIEeOdZaM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(71200400001)(6916009)(186003)(2906002)(38070700005)(2616005)(8676002)(8936002)(38100700002)(122000001)(966005)(316002)(6512007)(54906003)(82960400001)(4326008)(508600001)(66556008)(66476007)(4744005)(66946007)(76116006)(64756008)(36756003)(5660300002)(66446008)(6506007)(6486002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WUJJUmZHZjRaNmxrbENFV0EvZ3R2TWZwbDFGdUtYVGhjWXBUVmhZZGZJZTNL?=
 =?utf-8?B?VXFsYnU3ZEdhRFliT2Y4UGcxQmwxbG1yU293cFNMdGU2Q0dPSlpRUTFqNTEw?=
 =?utf-8?B?WkQ2K1k2UWpTelJCS2JSdmZEQUE2WTF3Z0t2TWZ0cTFLcXp4TlErZ2UwRXBY?=
 =?utf-8?B?OTlMaEs2djcycU9salMxUjBtNjlKUUZnUHN6Ykc3Y0dldjlUVXdCZWZCS1hS?=
 =?utf-8?B?NTdBS2RRYnM1cWljck0vL3BQWXl4eFVueGdvVEx4dmc0RHNscUtOcURsaktk?=
 =?utf-8?B?bXBuN3oyYVUwZUhJR2wxWE1WbEhYUkwyazQvV29Sb1U3Ky9salJPb2U3RStO?=
 =?utf-8?B?WUxzVlQwRjRBQmp0OGpTSmlBSmZSVUZOZnllRU4rV1cxWTNiSGJiNlFzNUVS?=
 =?utf-8?B?VkthM1EydUV4U2tIMU53QWVUdkxVc0xCZEh0NndMdmdKZTNlTWhYUTBSeG5U?=
 =?utf-8?B?T016ZW9kSXNYRGY3Z01uNDJVYmdtY0Q1aVFVNVRCcXRPbDNqZjZWTjczM1lB?=
 =?utf-8?B?WjdLVldtUnRQQklJUVZpd1gyM3Jvb200aGxoaXRHeDU0NzMyUVRVLytsbTQx?=
 =?utf-8?B?QTNMcW45aERhTDJIRHBaNFhvemJVSCtpTU45VnpZWDJhcUxpVTNGcmRKM244?=
 =?utf-8?B?Z0RBbmRUWmFPcnpiTXZpQisxbzVOYTB4L2N6NWltYkkyUUk5T05nM3BtdGVC?=
 =?utf-8?B?MzBDWmRGWHFmOWZSWVpPc0FianBIbFFUUVBLNUcyMElTRHVuMDRYWmN1ajFk?=
 =?utf-8?B?Zk1uRzJDMUl0ME5GVTFkbm1XVW5rM1BhbU5mR1BEN1BzaWhxN0RWMjkxMXI1?=
 =?utf-8?B?dUdsNjd2ZFFURFdzYWE2YUNjRk50R0hNd09HYThHRzlSYTljMXl4YzRzbXd3?=
 =?utf-8?B?dHQzc2c0dFMvejZtK2RvZWZtNkFGYUhZSkZxMys2ekpTMWVLYUhMUjhUSEx4?=
 =?utf-8?B?SDlraGpBMWxFT2RtNHNraCtkUXVYd0ErKzBJMUZMbWYxZzUxOE9GK0hpNC9j?=
 =?utf-8?B?UTh3dm1JNjRkZUFCb0tXeVc2cnYybWk2Nkh3MmM1SHBxZDJVeVZ4TkIzSndo?=
 =?utf-8?B?WFBiSVJFMXBrWTBFM2hsbkZLYm1ubGMrVWkvSTMxWHFPaHhuMFZEQXI0bXFm?=
 =?utf-8?B?cUxsZ0xKdWkvZ3pQVXcrcDRaQS9qTWhWM2c5UGFiOFIvT21jSUZOdXpFbzhS?=
 =?utf-8?B?VSswSkwvQ3BlbE1sRWJoNWJMMDIwQVp3OW1neGFVakVLMzlpWndJUXdMd0dK?=
 =?utf-8?B?SzF2NEdiSDBYaHVxa3lnQkpEWkZDWktnTVRwQzJXOVJaUnNTRTVseXlVTER5?=
 =?utf-8?B?YXBHVmFUaEc4SnMrK1BtdGtkTkMxdnV3SDI0Vk1wNjFsaC9IbSs4RXlIZyto?=
 =?utf-8?B?THpvMVQyaEt2SzhVNEw4ZG9oK1A2TGtvcVlCeUd3VWVYditlVEdydmFIUDJM?=
 =?utf-8?B?QXFTSHZxMHRCb1JmN3BrR3BhK2hHdndzRElZT0tpM3hnaHROaHFPeUg0SWdL?=
 =?utf-8?B?U2R2OTV2bEZTQ3cxT2pvREU1a0IxK3ZCRUVoRDZEdktiTUNJdkpYejc5Tys3?=
 =?utf-8?B?OHZ1eHM3R3pUQmtKM1RrS2FaUzVTSi9SQjMwOXRCSGorZ0ltZmpTTnNHLzFx?=
 =?utf-8?B?bDIxeWZQVkNQaGhVZ3l2RXJWcDZuQ2pqOXN6OVMvcHBMNUphUXVENk93M2pV?=
 =?utf-8?B?SGR5Sm5WaTZEWVlDUFh6a2xmRlBGUzlyUEVzVWF2eGpFV3EwTDR4MlFRbmpC?=
 =?utf-8?B?QjlRcys5OC9PdW1lTHExc0Yyc3Z3SE9FcjJJRmZKRDNsODA0aWI2OVlQTlBS?=
 =?utf-8?B?ZXNjaGZKRHJ4YjY4RGdLcHpFZHNYZWFvTHdpbDduMzAyYWptMEd1OHRrUXRS?=
 =?utf-8?B?Nm1VcVRpcDFEd0lweHRPZCs2dGdpZ01ZWUNmNFdlaFIwMWg2UFZJMW9rTXA2?=
 =?utf-8?B?TC81SG5MYk04YkIwTjZnYm15N2tlOWlBSUh6T2kyVHNsRnFxeWJCdENGUm8w?=
 =?utf-8?B?WEgzRzZxSXcwT3IzRWc1OXQ0RFFVZzlKVS9LRVJxVEJGT2FFeXBiajZENGtK?=
 =?utf-8?B?TFgwZ3NacGlsajBoL2VZeEplUTg2QlF4d2JNOHFacFMvdytBdm9IeW1rV3M3?=
 =?utf-8?B?K3NPek9aSEJzcm5mbklEVlRCYjNEc24vZmdqYXFXcjk1d0FkK05vdUR4Qml6?=
 =?utf-8?B?elZQNHcyTnMwU0JkbXV2NWhhQlJPV0dSd2RQb1M0cVJuckNFaEk1NndXK2d3?=
 =?utf-8?B?Ylk4ZUJHRndOMXMzT3JlUDZKQXIza3VmK0U0VFROZFFLNXZNTVpkY2JBNGRs?=
 =?utf-8?B?T1B0cDQrdTN0VkMvVHgwOVlyczZQVXoxYncwQUpRcUN2TmVLTGorQlI2MnZD?=
 =?utf-8?Q?Jkl9IoJOmTKQ+SOdB8eHpcvv7gpyb0+pnAFvFdC8Sa4UJ?=
x-ms-exchange-antispam-messagedata-1: x1LiYGJAPT2PtKIg0jjOjX2Q5/Kjkh4nphg=
Content-Type: text/plain; charset="utf-8"
Content-ID: <676BBE3FB2DC1A46A597EACC37CB7F21@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19787204-755a-4361-2653-08d9e065df75
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2022 00:50:39.4170 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZAn2rCUmFPkE73NQLMmaEJ48kSBYfSyOrRY6Z1rKh+jtV5HP5KNOXep5BJ+ONSF5zxi8omjlWT1OkEr2bOGF4X9rK4JujyjA3XIL3b+54Kh3nX9f9RQOf91ijplGwDgiXBVgLChPR10YgQ70oFk3HQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1844
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] i915 Updates: ADL-P DMC v2.16
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
Cc: "kyle@mcmartin.ca" <kyle@mcmartin.ca>,
 "jwboyer@kernel.org" <jwboyer@kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hutchings, Ben" <ben@decadent.org.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQmVuLCBKb3NoLCBLeWxlLA0KDQpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0
DQplYjhlYTFiNDY4OTNjNDJlZGJkNTE2Zjk3MWE5M2I0ZDA5NzczMGFiOg0KDQogIE1lcmdlIGJy
YW5jaCAndjEuMS43JyBvZiBodHRwczovL2dpdGh1Yi5jb20vaXJ1aS0NCndhbmcvbGludXhfZndf
dnB1X3YxLjEuNyBpbnRvIG1haW4gKDIwMjItMDEtMjQgMDY6NDk6NTIgLTA1MDApDQoNCmFyZSBh
dmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0Og0KDQogIGdpdDovL2Fub25naXQuZnJl
ZWRlc2t0b3Aub3JnL2RybS9kcm0tZmlybXdhcmUgYWRscF9kbWNfdjIuMTYNCg0KZm9yIHlvdSB0
byBmZXRjaCBjaGFuZ2VzIHVwIHRvDQo4NDdjNmRlMDkyOTliNTliYjZmOGU2NDFjZmQ1MDBhYThk
MWMwYTlhOg0KDQogIGk5MTU6IEFkZCBETUMgZmlybXdhcmUgdjIuMTYgZm9yIEFETC1QICgyMDIy
LTAxLTI1IDE2OjA1OjU0IC0wODAwKQ0KDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQpNYWRodW1pdGhhIFRvbGFrYW5haGFs
bGkgUHJhZGVlcCAoMSk6DQogICAgICBpOTE1OiBBZGQgRE1DIGZpcm13YXJlIHYyLjE2IGZvciBB
REwtUA0KDQogV0hFTkNFICAgICAgICAgICAgICAgICAgICB8ICAgMyArKysNCiBpOTE1L2FkbHBf
ZG1jX3ZlcjJfMTYuYmluIHwgQmluIDAgLT4gNzcwODQgYnl0ZXMNCiAyIGZpbGVzIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKQ0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBpOTE1L2FkbHBfZG1jX3ZlcjJf
MTYuYmluDQoNClRoYW5rcyENCi0gTWFkaHVtaXRoYQ0KDQo=
