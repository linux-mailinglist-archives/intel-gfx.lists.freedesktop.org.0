Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47ED65F3AC9
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 02:46:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43EFE10E28C;
	Tue,  4 Oct 2022 00:46:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 568B310E28C
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 00:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664844396; x=1696380396;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=ijHJcOJeEK3wo+gb+SW88gsIJSosh6GCGRrTh3k+tH4=;
 b=gTui1dHRk0NdL091JvYXz7Ij8SwVHXs4EgjJN6TznGMDJ+yuXLh/XcW0
 k3pyqn5hj65QiW1y+6k4S62vmxsxk50MO7y7rKJ9nMyQEHLeqbfvnA98v
 He30bzWkJrqyDZEZ5njPGI3KFroSUPTypWq00bjYOz110Bk1Ql83gPcjj
 XVUHqz/Uel8LZe2GIf5R0C5ndhocKk14slzZUgpzpZYsu18BA40HNVr8J
 z+8nGZF2b0pk+U27xKtWwocvIh0Bgq9HoxKbBPUHcPhGjzsnm8wHswViN
 uxR86u375dSFmn3onZZcfrisDR3BJUkieTypdMRmU/FShK4MOYUrhIbcE A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="303758751"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="303758751"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 17:46:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="712833176"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="712833176"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Oct 2022 17:46:35 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 17:46:35 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 17:46:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 17:46:34 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 17:46:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H9HvrxOEFpzdlzibfktS8lMTLjYUNXCoVtTZAjnfBdE04x7ncPt1GFM1pII3HesdAroCVDeEeS7tB2/tBt5USBQ9iokXLt3LL1WbEC/XyU6K/x2jixuP9l37B15NR3gCQW8dukL71Bqc2WH+BxFjD9t6SOWH2qyGxLL4Zsw9biz60QwlrYZs1+rLSfkKYbRaonqOa1uW2118anfLf8gf1CDJzquAq6Vwrw94rwi96GZzUj7sUkiFloPV5TmGJDGwVCxSyuZwqegv3ytZdCH6hRVjWFz71nYE8LxHFYWcFrqSltVpRKdUApMhPfSqTPpMD2bzBMaNGD5PIXQ+MGIC9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ijHJcOJeEK3wo+gb+SW88gsIJSosh6GCGRrTh3k+tH4=;
 b=cGuAexYiFKk3Cch6iJXeqdgIEUWsViHuNAOdHt/tMY7+9AH0dTHr57bzmolOhcjCBzQdbn96IbX0/hjYERjOQ4VGbNJa7Fq/aZOj/FsItgfVt/QJDUJ8u3qKiuCO+99NxFmQ/+zhO6E6fJgX95hKZvyKbeaqmv2H7OusWvzKtzC/1u8i6Rc9SZR7sU0qkD/pe9opmhSc7HwLy9/dfjeubWBImG4Y8Y0O9zAvazjLpbHMKVz3XEyFi86FPxR0mTYa05zbgPxFvo7nXBqKItOGLA4PV3if+E6oBUwZkHPiw6htTVjtjTR8DEubTXlDmTmAtx+QY6TH94i/qSoWS6AcwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SA0PR11MB4672.namprd11.prod.outlook.com (2603:10b6:806:96::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.24; Tue, 4 Oct 2022 00:46:33 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%7]) with mapi id 15.20.5676.030; Tue, 4 Oct 2022
 00:46:33 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Harrison, John C" <john.c.harrison@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Fix GuC error capture
 sizing estimation and reporting
Thread-Index: AQHY1Gii8wVN8waP5ku0rjVTVFyRb634QOaAgAA4iwCAABeUgIAEcpSAgAAVeoCAABfXgIAALF0AgAAP9oA=
Date: Tue, 4 Oct 2022 00:46:32 +0000
Message-ID: <e76198c741918fbdcc9a4d6b504c4929007e2a78.camel@intel.com>
References: <20220930010507.108296-1-alan.previn.teres.alexis@intel.com>
 <20220930010507.108296-2-alan.previn.teres.alexis@intel.com>
 <49be7acd-79b8-2937-96ec-5a9728006d76@intel.com>
 <acdf464bc515f0489c70c9282dcccce1cc2e85ca.camel@intel.com>
 <0dad721a-2308-588c-8b7d-8ac98d17f3dc@intel.com>
 <2cb443945f86c2bbcfef78ca19cc4a85fdae3666.camel@intel.com>
 <9703bd69-3b42-3e64-04e1-5b8fc6e9f367@intel.com>
 <27c162aadb79123fff5458dc1695c6026ea0c796.camel@intel.com>
 <03452d47-a16e-fde3-3d6f-e7d98c6d2b2e@intel.com>
In-Reply-To: <03452d47-a16e-fde3-3d6f-e7d98c6d2b2e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SA0PR11MB4672:EE_
x-ms-office365-filtering-correlation-id: 9b8048f2-d1f4-4f22-507b-08daa5a1e244
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mCCzhozxSBB1o0Wkm7kmbw5SFPKuVJH7XNS/K5jTeGVDtlYJ4kWNXc0gTToJnZaUweNSeUkgZTzssbPWx06SNBch2ksLf7d2FrSnxU4owPmD4mTlor3z3GG+3dzcIHZhWAmBkvwglBamwgb+d3KZ+UC2dQ9gUP6kgINKx1CdJktGVnLd0avcHnZxrL5ZekfQAYNNJkh/QbcN2Akyz4yPDsRFo7oqo6HLo7m8cPBX/3rZE+1uQIdFRsoSgxyq48dBf2LnFTxyWQUeakEJfEZcysHlCuTpCzxI1h4fQYrVEnqrugYW0ff3KjFl6LT7Vi/GJrQkAnjmMX8OLNJksS4aNBEsaAYOVJ8/oBZi3e7risnM3fj/l/SlXnZ1c6zYal5XzB+vQfx7BolgOs6f7olraywNqfpPX+rq0FQkmmTupJTk7lYkEHCD/VSbMkMpYZrZXUInKGRbJ10YRDjvPv6NmY6c68jVSXicYI83093vsJL5NAeaE4ZOcZRsU+cQpVqggc02G2cQ6LR4dE3qkH5RIYQ7MJZwn94AjC0eKMSc4Qvi0an7vuqOfG/dlq7eer4zlOyxRcQ3TSqlawv8KkOOhoIWE5BSfvd+TOHfjmT3Np8ek3924VZrRDEHok4jNwbNZOWlpCGy1zZaq3q6PS6prwNypBndpka1zs4zx+8R7iT/m3UW9AlO6LdOBigytJeRYdm+CSLNFFn+2lHI9Y3AXde7J1L2goC3tOIOs/8mAoxArKy8vqIgMzPyK1YK3cYp3AFkgAHmvqPBt4UwZOvqUQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(346002)(376002)(396003)(136003)(451199015)(66556008)(66476007)(66446008)(8676002)(36756003)(66946007)(64756008)(82960400001)(2616005)(186003)(478600001)(122000001)(38100700002)(6506007)(53546011)(26005)(6512007)(110136005)(316002)(6486002)(38070700005)(41300700001)(91956017)(76116006)(71200400001)(5660300002)(4744005)(2906002)(8936002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a05QTzZ5Sy9EUEM2OFp4VGlNY3VCdkl0WUpWVk5YNVo0andpNFY1aHVGK0V2?=
 =?utf-8?B?WE83V1J2OWEzTXROQlZCUVVhMDlzb3Rqa2d0bHcvSDA1V0lKcnpTU3A1cCs4?=
 =?utf-8?B?T3dBY0FtSFBLbitpMklyK3VJWDVLYzNUTTFkY1p2d08zUzY3QS9la0dDaEJR?=
 =?utf-8?B?cFpndEI4dWJudFRCVXkyQnQ5NkJSTUxqOGRqZkNqYytPYVlLY00yZjdMSDQ4?=
 =?utf-8?B?YlpXOVhEUllqeTlKeWY2U1V1U3hOYUhqZWprZkNYSzg5dmZxNm5meFgrU011?=
 =?utf-8?B?TTRUUU5EclpFc0E4MFozdDJESlM0eEF6R2gvejFZN0FMMXhHLzgyQmpGdlZK?=
 =?utf-8?B?REtPSTJGZjRFRFMwUXJVM0JiOHVndnVVSElvL0JHL0E2MUxBdjRPenFWL0tD?=
 =?utf-8?B?TGpYZUt6QkJxdGJtam93Y0psc0RVL0dvVFR5WER3UjFTczNQUDFXdzl2VnlH?=
 =?utf-8?B?OXVXRnc3M05YOVFva3VCYlA1NnZqekZ6ampxayswZHZtOEVjdWZQUWl3SytM?=
 =?utf-8?B?RG96djBralF4SEdCdGZTYiswWm1rSXIrSUFuVnNEbEtnYXFKNEVDcnJMZVlC?=
 =?utf-8?B?VlNpYnFmMTB4NVQ2cW10bjcrV0oxSlpBbXNsZG5kV1BJVjk4RytNdGlKc2Fu?=
 =?utf-8?B?Y2hPVzNMSzRnbit1KzZQNmRaa2VxOU5BN2ZmZUdsS3NGdStENkc0bW13RU9k?=
 =?utf-8?B?ZUVIYkg0MGMvSGxvV0Jnb3JrWkh6aEg2a1FnaHdlck5qYWUrcU1wR3ozL3dL?=
 =?utf-8?B?THRlcEMrUFk4b2RaMEF4MllzbkpDNjNzSE5ocEg2VDY1ckpvSHh0Vi9pY3c5?=
 =?utf-8?B?b2RRK3ROV2dEMC8yNXRCLzRYazhJYmJ6N1A4MXNGYWFlVlo3V1dLOUZNYm5i?=
 =?utf-8?B?dWl5amhhOTRDZng1MlNKODJEMWt6c2Vielh5QmV0SVRUTzFrSlptUm15aGk5?=
 =?utf-8?B?d3RkbHUrcXFIN0pwTlAwTWl5NStyU2lJNXVGaUJXVnY5Q1UxcGl1NXBaNjY1?=
 =?utf-8?B?bXZJV1RXanVscGFjODBacWFoNWFqK1NwZGd2YmNtQ0RmTGF6T01XbWRTd2xa?=
 =?utf-8?B?emJtS1Z5bFBXL3BVQmtseTJPN2dOeTROTnZqNE1XRElhVzBIektjd0lIWlZQ?=
 =?utf-8?B?M3B1UjQxVGhUU05OZ2FZaEdxSUNaZFJmc2pQdjlYeUdSY0FFQmpKQVFUYW84?=
 =?utf-8?B?M3NmUGw5QUN2OHVzSnFBMzYxVDBsU1doZU42SCtXbmtKd0JScGtJckhCdkZZ?=
 =?utf-8?B?bGNOcVVXN2xGSVZtbmxTVWNpSE5tMHh2bFZSaXlHTXV0a010NkRHbXVrSmZw?=
 =?utf-8?B?aTJFWTVmSjFFcVFWR2U1TW9ER1IwalpzeUFqVHIrdzVjNEhwcEw3dkVMbEFo?=
 =?utf-8?B?VHYrbE53c244Tmk1YzdtV1FpclJqVHU2Ulhxdk5nZmVObGE5UXhoTzRXSHZy?=
 =?utf-8?B?QXdpRUhhSHJHdW9oWFE2bmtBMDRnY0VjMndSRytldjg3b3diK2U2dk84c1FN?=
 =?utf-8?B?Ry9RQ0MraVFENzlPc0xKTGJweUxLRmp0SGRLdE4xMHh2L0VCT3p3L28yeDMz?=
 =?utf-8?B?Q0hoZThvdTdDOEtOWWVka0YrL2NZeXdzVFgvcWZseU1GYTdpVi9jKzh1ZVY2?=
 =?utf-8?B?Tlo0RHV1d1ErZllSeHpteC81RTZSNmZ0RzJhMnNqV25ldDE4R2d1K2p4dUpK?=
 =?utf-8?B?dVU1K2lEaldaOEpPYnlhOXBGUWlQdWczVERzeUNTRG9Galg5enhZOFhFVFJV?=
 =?utf-8?B?RjdRaVMyZ1dNZHdsV0RwU3YwWDN5SzYwUGIrUzFQZHlBNy9Ic1NJd0pST2Jw?=
 =?utf-8?B?QXBXSW9uSHpjSWJtdWZzZ2xLR21ieGhUY0hDUDVWZ05XUmUrd1hwRDVZNFYx?=
 =?utf-8?B?RVAyWjhwcXJWQjRNbmU5T2lPZ2tONlhqc083eXM3YzI3eStEN0ZCcXFYWlNo?=
 =?utf-8?B?ejJ3ZHdyS0dCZHNjOTFKWk5TakNDTm5TdzJlWXRuQStXTHI4U2VOY1I4eUdX?=
 =?utf-8?B?ZVJmMFZyTWFhMFZtUU13RmFMbTJnZ2FVeUdMQ0I1M1pURG1rOHY3bDFSNVhW?=
 =?utf-8?B?ZEMzOStuaU9tcmo5eVIrOCtBQnl1UWtSMUhkUVJFNlkweVVUOFVaNGdZMEhQ?=
 =?utf-8?B?aEFzd3lnWnlsSW5JQ0JUZFNXWUllSU1hZ0JucnQ3aGFHN2VmVlFpR2JTQk0r?=
 =?utf-8?Q?6Mg2Xfw25lRSz8r7MSFdj/s=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <73321B0458555443866A7BA20811BA01@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b8048f2-d1f4-4f22-507b-08daa5a1e244
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2022 00:46:33.0479 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: shlkurrCngLNAgiRdPf0uhyaIN+Evj5vpRBONzrZ77nPO/ihCRdlFpq6D1K4c8nj+dVBUCe0RZGxW0RCsO40s3g3iVWBJ17UpooTrVzBIsLxcFBfUivtu0T9peqT75kQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4672
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Fix GuC error capture
 sizing estimation and reporting
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

U28gYXMgcGVyIHRoZSBsYXN0IHJlc3BvbnNlIGFuZCB0aGUgb2ZmbGluZSBjb252ZXJzYXRpb24g
d2UgaGFkIHdlIGFncmVlZCB0aGF0Og0KDQoxLiB3ZSBzaGFsbCBzdGljayB3aXRoIGRybV93YXJu
KCAuLi4gbWF5YmUgdG9vIHNtYWxsLi4uKSBpZiB0aGUgYWxsb2NhdGlvbiBkaWRuJ3QgbWVldCBt
aW5fc2l6ZS4NCjIuIEknbGwgbW9kZWwgZm9yIFBWQyAoc2luY2UgaXRzIGJldHRlciB0byBsb29r
IGF0IHRoZSBzcGVjIGFzIG9wcG9zZWQgdG8gdHJ5aW5nIHRvIGh1bnQgZm9yIGEgZnJlZSBtYWNo
aW5lIHdpdGggdGhlDQptb3N0IGVuZ2luZXMgYW5kIERTUyAoZm9yIHRob3NlIHN0ZWVyaW5nIHJl
Z2lzdGVycyB0aGF0IGFyZSBjb3VudGVkIG11bHRpcGxlIHRpbWVzKS4NCjMuIElmICMyIHlpZWxk
cyB1cyB3aXRoIHN1YnN0YW50aWFsIGhlYWRyb29tIChpLmUuIGEgbW9kZWwncyBQVkMgd291bGQg
YmUgbGVzcyB0aGFuIDcwMEsgbWluX3NpemUpLCB0aGVuIGxldHMgZHJvcCB0bw0KMU1CIGFsbG9j
YXRpb24uDQoNCi4uLmFsYW4NCg0KDQpPbiBNb24sIDIwMjItMTAtMDMgYXQgMTY6NTEgLTA3MDAs
IEhhcnJpc29uLCBKb2huIEMgd3JvdGU6DQo+IE9uIDEwLzMvMjAyMiAxNDoxMCwgVGVyZXMgQWxl
eGlzLCBBbGFuIFByZXZpbiB3cm90ZToNCj4gPiBPbiBNb24sIDIwMjItMTAtMDMgYXQgMTI6NDcg
LTA3MDAsIEhhcnJpc29uLCBKb2huIEMgd3JvdGU6DQo+ID4gPiBPbiAxMC8zLzIwMjIgMTE6Mjgs
IFRlcmVzIEFsZXhpcywgQWxhbiBQcmV2aW4gd3JvdGU6DQo+ID4gPiA+IE9uIEZyaSwgMjAyMi0w
OS0zMCBhdCAxNTozNSAtMDcwMCwgSGFycmlzb24sIEpvaG4gQyB3cm90ZToNCj4gPiA+ID4gPiBP
biA5LzMwLzIwMjIgMTQ6MDgsIFRlcmVzIEFsZXhpcywgQWxhbiBQcmV2aW4gd3JvdGU6DQo+ID4g
PiA+ID4gDQoNCg==
