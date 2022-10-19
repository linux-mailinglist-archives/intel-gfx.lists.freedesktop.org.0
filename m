Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2C160391B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 07:14:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76B0B10EA68;
	Wed, 19 Oct 2022 05:14:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 068BE10EA68
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 05:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666156493; x=1697692493;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=mRj1dz5FIfn4MdCU/oSQWHttBJKFNv48D8K1vPlwftM=;
 b=hsnckxs90xYSoOY3/EeXpRgvBK2wxoWe2fHkY3DWXmV1i0HxGqUfGxIE
 izzMYdHUZdd5/3mAEXoTFsP0NWEi5sGiO5eXC9PGTsF4sYQAZj+VtEc8P
 1DWg1aqLuTu5ykx0W4g0onCo1khL6oz6f3wDHEAuUPa6PMVVr5m3lMXni
 uFABKUghTdqhfEz59pfKs4FBo0ngCST1C+R/TBRGgOqVZTU4nwi32UDJD
 rMiwxadW9T6wJ82DVpdpIYEM72ycQVkzdpu8DKAbrCarqWZVVQ8Xnj2ub
 HAuo52Ne19EBUQcNJuy3rjPpPGjz/eFM2+reaeL1OzocwgrElkmcg9Tld w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="368360416"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="368360416"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 22:14:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="771587491"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="771587491"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 18 Oct 2022 22:14:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 18 Oct 2022 22:14:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 18 Oct 2022 22:14:51 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 18 Oct 2022 22:14:51 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 18 Oct 2022 22:14:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OX5R9X/K3xw6iXxbHTz+YX0loIfi76JI0p42LyNofauorj176F/GzODljyGrhEzzo6EJmJu6z+5967VQzLA0gvEGvQ3Q4Qd7aMTDEdZlw6brIBzGm1nLafeDbBl6xN3u4s2p2R+KvjpS02jeIsb0PMovPJIOGQ/gqn6kn79zoU1QXgrjsqJjhT1FjybTSs1uejrjTjWMnr4WkIK2DVkf7l9/nTaG7LZrmePNpJ0DpsArM5F4ygazsFiLjgE4ZSV5U9CgCNDhLtrK4iV5NVyWdiOtKCTc8LycAwsO7m2bH0U/gvvnZQ13T/JDOQSiofJzfXCs6SHEZGEeMjTE+A/W2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mRj1dz5FIfn4MdCU/oSQWHttBJKFNv48D8K1vPlwftM=;
 b=oDqME8+JIQr5c1gBom85d3P2qQf8FcEUjuS0DOQddFC8Wk5KM3q+jSEbRc/U8uesf3W2AuY+Zf1t4FIue2dMhUallISUzTve3kqV8Xt60HMF5nWoKTtlWiuWDSPpkIrbcVaVyKmSlumU3jja629jI53nsG3ilsGibfauAOO4QQsL99CgzWyTvc+eNYLjxDR7gFLkxLXStg9aXPibSRo3oa+ypf/Yi8+sOYoNv7b4oCiEcH170C0PG/7tXwOB9eSD5HYrLZiZKo82uoZv+MN42C9wGJEdXsS+olR/31zqN14HWDPPiGgRjchS6e0Lu8FkjdsGvwvloRSui1Ce2p1y6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DM4PR11MB7255.namprd11.prod.outlook.com (2603:10b6:8:10d::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.29; Wed, 19 Oct 2022 05:14:48 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%7]) with mapi id 15.20.5723.033; Wed, 19 Oct 2022
 05:14:48 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Add error-capture init
 warnings when needed
Thread-Index: AQHY4Epaf0zuGaT42kWe0ZuMvmrykK4SSEGAgACYgYCAAO4tgIABZH6A
Date: Wed, 19 Oct 2022 05:14:48 +0000
Message-ID: <195283f275c41f090860b0b3a5db3a35e58f6d84.camel@intel.com>
References: <20221015035952.1741319-1-alan.previn.teres.alexis@intel.com>
 <20221015035952.1741319-2-alan.previn.teres.alexis@intel.com>
 <e02ac836-89f4-1734-eacc-73f49ecda323@linux.intel.com>
 <0c41d33552a0cc52c3835be99ce2e0e50a9084af.camel@intel.com>
 <bdedca3f-88e3-2da9-cb0e-0a0754621313@linux.intel.com>
In-Reply-To: <bdedca3f-88e3-2da9-cb0e-0a0754621313@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|DM4PR11MB7255:EE_
x-ms-office365-filtering-correlation-id: f5dbf729-611e-4eb5-59bb-08dab190d81b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CF9pSIEEHjcwCQkv2jenV05BB8se1At8giIEQjA3fbdyAKpd8bH0zqzmjZm0EXCkUcOWD+xLhHMww3ihHXz9KWY3b5xxUP+4isu9QvqHE5RknzCKA3526IfN7d1xoNCAwSic6QHi/FX0CkiMbFOqkOT1tW7MWtAcn01V6Xwu1c7/YYzTiEShKGvx7BD2+EGsQRUvJWExrDlicLfqrgxtRRRhVEwh+v1xCAX0FVHlYNIzfIQxb6MW6NxtSeDW3bc1tzhkC/yTbSSYZYHDQFqGZduYCtsmnHe/rOcJ8TA5hhYTpVXEP+Ep6dqpvsLbMccPIuIQOd3S4TD3LPRycHOsgVG97ZtgsJahI2e2J4BBWgK/UkxvlcEw87KkKaLSmygMSiqzzIoCk230g8l+i51tE4PHed6el65S6R/a9vQhTLxbEXY6lSNAL1cHioScyeRGhZoWjjjAGPMdz1iPlKAC8KGw5wGMtmKxlLcDU/kR2JVCg4xPu/iuC5uHv683tfX7jtCFJKoDgOVbgYMnzabO1ocZ4CPHys88EX4Qxxxcyh00dUX7I6kVRLIDzeTEstC3BahBCGvBp8lFwDDLgwt3+5TJPgQ7XRjC3H9mfslNLnSo+bDICl2/l+PtDh2SR817TmpW5CzpOuaqhuROvpj/nFqZmuWmWCeAtgHTEvJm/qw1pDNcMGIadB+bsxHiORhZD6gqzxGtp5tChk2oDaTSH8ksZ/ci30c7XdyYStq4ydVe+0veZs3ke0lquTpLrkDFSb9meaEafJigIGuwu2JbIg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(136003)(376002)(366004)(39860400002)(451199015)(478600001)(38100700002)(8936002)(6506007)(6486002)(91956017)(110136005)(4326008)(41300700001)(66946007)(8676002)(76116006)(36756003)(122000001)(71200400001)(2616005)(64756008)(86362001)(186003)(82960400001)(316002)(83380400001)(26005)(6512007)(38070700005)(2906002)(4001150100001)(66446008)(66556008)(66476007)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c3YvYjZuTm8xQ2Foc2p3aTQyVjA3YW1WRStYdlJTQVhiQlBGcGNmOG9iYTZ0?=
 =?utf-8?B?ZzJQeEZlSlVoci9jWFIwUGxuV0NOTzVQay96RlZpc0lnaDdGb3FvWmhhSEUy?=
 =?utf-8?B?TFQ5VHhnUXk0eGExU21qOVdMbHY4cWg2RWlHbVpDdUt2QWErWFZiYjZ5Rnp0?=
 =?utf-8?B?VERhWTdIUzcyaFlxMXRDbDFRSEFZek01L0lMdHlCSHNNakFhM1c4VDlCWEd0?=
 =?utf-8?B?T2VKWUtIbWR2RU1ONnNMNGV2Zm5RKzBiajhwWmxmOVpFSndOUHVObjVYRWg2?=
 =?utf-8?B?Z0piV1N4TyttYk9WWEU1ajYwLzVVOFJ3MGF2M2ZqWU0wbkV5eGczOG1hZGxW?=
 =?utf-8?B?R3RVd09LaGV1WEl5cXg5UjdnS2wrWnYvREtqdDlzWGp4cnNxaDYyTVBQazJF?=
 =?utf-8?B?cmpiakxTaEJ3VWF0cUFiT1RyY3NJd0hYRTNaQ0hielhBQ3lTK2pITzRzOXdW?=
 =?utf-8?B?VmRKSmsvM01FNUlZZlFGcnpGVGFpcjgvRkMwQXlsTGVVTXllSVhsSWhaMnEz?=
 =?utf-8?B?b205UGNsdHl1T296Y0ljQlBEWjlkc2ZGNHFUcWlucjEzcW1YR0VVUUNKeVIr?=
 =?utf-8?B?aUszTm9CUGRvZjlMREIvdmRPanI1aWhCZU05dkZUU0ppUXJaNTh1WlZCQkJ1?=
 =?utf-8?B?S2cwZWFsR0lkWHhKSlBsNFpzalN5OUROKy80QUpDaklTc1dHUW56SERmZUEr?=
 =?utf-8?B?QWpLQ2Vac2JYUFVCM3Q5R05uOEUzUzhKcVQ3QkloV0liMGNIYTRDZEEydU1V?=
 =?utf-8?B?YzNiM2p2NnZwS29lbGNOQjhaejE3Kzh5NmZEM0VyeHZxa0E3ZnFlblNUTnM1?=
 =?utf-8?B?UzYrVWtFSmd4dFEraTdsV1VmaXdPeDdndUxVcXU3dmIva1dyWVZ5WlJQKzRs?=
 =?utf-8?B?TDJTcjFzWUFobmJHTTNNNk16Tnd1cUptWmQxeGJlUG82Z0YyblJHNkJjaTNI?=
 =?utf-8?B?dHdrVXdGR015U0xEU2V5a283aEp6eEIvNGRQZzV3bVVtTHZ5aXlyWkpFd0RZ?=
 =?utf-8?B?T2l1NFIycUhpWlkvcFVpRzJjK0xlV0JMZiswb0NEMmdlc1JENFlxdkdMVjB6?=
 =?utf-8?B?Vk0zV1JiekZLQXFkdDB1QWhSYk1KYUE3anZhZVJLZEdLWUF4bzlrSzYzb2lz?=
 =?utf-8?B?U2QxczZ5dWNtZHpDbFFFQnV0Q095Zy9nckFuMjdrdi9qdTNkMUxDb2JTVGdS?=
 =?utf-8?B?YmZsTVg1b1Z1dnpXdXYxbVdzOUtzVnBCcXlwWE1yNndwT0dFWmhTUko0aWdP?=
 =?utf-8?B?VnB0Q3JrN3g0TEFDZjJodWgzM3RnNUZrdGh6SWpUUFBiMDY1dllCdHFKSnc4?=
 =?utf-8?B?NFpRYUU4VmNNWjFDUGNrcVlob21JOFR4ajVuc1JIT0hEZjNIL3NZL0tBbXk4?=
 =?utf-8?B?NTN0eHFyN002djMwR1MvMHc0b3VBNDRuRi9HN0VqM05mQUxxc1lNMDc2RHVj?=
 =?utf-8?B?RDFPWVF5SWpNbW1RdVBtSWx5Mk5ZSWh6R21QMDRxT0xVenRDeUkwZ0dKbnda?=
 =?utf-8?B?L0NVS0xnaC9hcmFBRlE3SXRlSnl1d1lYSDQ5MVVyekg3cDMvUWhwRjIwYWU1?=
 =?utf-8?B?MnovaWc3ZXdoN2VNQTluL0FSZUlrTWJyUVk0dG1OS3BwR0ZMK3lEQ095eElj?=
 =?utf-8?B?WnNxRDVFUGJZV2NIMU9HLzhqQ3l4YjZhTXpxRVN4eHI1MW5iZ3gwSFBWWjdz?=
 =?utf-8?B?dllvTEFVYy9lVjJQQlBVbyt5SWlKZDQ2MlVVSFhaSmJSdERWd2N0S1VkcUZ2?=
 =?utf-8?B?YUFYSzcxcktISDQwNERvajM3dGRqa1ZaT2lacEhEUnJrMGg4c0VuY1hva09N?=
 =?utf-8?B?THJVdHhaVDkrKzhqV29VeWEzemZJTFN4aFR2QnFpRWI1OFZNeTlMWXRBRW9S?=
 =?utf-8?B?dTVUYitwQ3RLcWY4K1RzK0Fya2hsbHFpakppM0lyWkN2YmJpRHNBdm9FQjZR?=
 =?utf-8?B?bEVWVE9FT1p0akZPUjd3SW1rbG9INE0vRVhYU0V0bWx4MUhpQjFIZE9TcUVG?=
 =?utf-8?B?TzdnV2l6SHc2L2ZZSkhISVF5ZS9SYTUwVjZhM09NSnJMd3NLbWZ3RjhGZzBG?=
 =?utf-8?B?SjVScFYvZ3NmWU9NSVI4elhPR3JTRDdGQkU1WWRyUFBNeGp1Skt2bGtqZFQy?=
 =?utf-8?B?cEpUdkZwbkxPV1lueUpqSjZQM2hpQTA5QWVWN1N6T0RYT21uQk4wQmllWVFl?=
 =?utf-8?Q?uCHtUcuJq3IDxhZlxTB+BJ0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E3E30CCE02D2A14BAE30C213AC777482@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5dbf729-611e-4eb5-59bb-08dab190d81b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2022 05:14:48.4955 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MVeD2jwn4PNTLHaBmPWvfh9l3Oac8R3CfVeS3SKNnLU8x5iYmQL8BosXJG62ZlhCVI1j/LB/1jR9zjby/eO27tZAETdEx0gEkfHI/XGP3jAIUEFdydRqEiU/Gj1+ub86
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7255
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Add error-capture init
 warnings when needed
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

DQpVcGRhdGU6IE9uZSBhZGRpdGlvbmFsIGNoYW5nZSBuZWVkZWQuLi4gYWZ0ZXIgbW9yZSB0ZXN0
aW5nIGkgaGF2ZSBjb21lIHRvIHJlYWxpemUgdGhhdA0KaW50ZWxfZ3VjX2NhcHR1cmVfZ2V0bGlz
dHNpemUgaXMgYWxzbyBiZWluZyB0cmlnZ2VyZWQgYmVmb3JlIEFEUy1ndWMtZXJyb3ItY2FwdHVy
ZQ0KcmVnaXN0ZXItbGlzdCBwb3B1bGF0aW9uIGR1cmluZyBpbml0aWFsaXphdGlvbiBvZiB0aGUg
Z3VjLWVycm9yLWNhcHR1cmUgbW9kdWxlIGl0c2VsZsKgDQooaW50ZWxfZ3VjX2NhcHR1cmVfaW5p
dCkuIEl0cyBnZXR0aW5nIGNhbGxlZCBhcyBwYXJ0IG9mIGEgY2hlY2sgb24gdGhlIHNpemUgb2Yg
dGhlDQpndWMtbG9nLWJ1ZmZlci1lcnJvci1jYXB0dXJlLXJlZ2lvbiB0byB2ZXJpZnkgaXRzIGJp
ZyBlbm91Z2ggZm9yIHRoZSBjdXJyZW50IHBsYXRmb3JtDQooYXNzdW1pbmcgYWxsIGVuZ2luZSBt
YXNrcyArIGFsbCBzdGVlcmVkLXJlZ2lzdGVyIHBlcm11dGF0aW9ucykuIFNvIGF0IHRoYXQgZWFy
bHkNCnBvaW50LCB3ZSBkbyBlbmNvdW50ZXIgdGhlICJPVEhFUiBFTkdJTkUiIHNob3dpbmcgdXAg
YXMgYSBwb3NzaWJsZSBlbmdpbmUgYnV0IGluDQpmYWN0IG5vbmUgb2YgdGhlIGN1cnJlbnQgaGFy
ZHdhcmUgaGFzIHRoYXQgKHlldCkuIFNvIHRvIGVuc3VyZSB0aGlzIHdhcm5pbmcgaXMgbm90IHBy
aW50ZWQNCmR1cmluZyB0aGlzIGVhcmx5IHNpemUgZXN0aW1hdGlvbiBjaGVjazoNCg0KaSBzaGFs
bCBtYWtlICJpbnRlbF9ndWNfY2FwdHVyZV9nZXRsaXN0c2l6ZSIgYSB3cmFwcGVyIGFyb3VuZCBh
IG5ldyBmdW5jdGlvbg0KInN0YXRpYyBpbnQgZ3VjX2NhcHR1cmVfZ2V0bGlzdHNpemUoLi4uW3Nh
bWUtcGFyYW1zXS4uLiwgYm9vbCBpc19wdXJwb3NlX2VzdGltYXRpb24pIg0Kd2hpY2ggY29udGFp
bnMgYWxsIHRoZSBvcmlnaW5hbCBsb2dpYyBhbmQgdXNlcyBuZXcgYm9vbGVhbiBmb3IgdGhlIGFk
ZGl0aW9uYWwgY2hlY2sNCm9uIHdoZXRoZXIgdG8gcHJpbnQgdGhlIHdhcm5pbmcgb3Igbm90Lg0K
DQoJY3VycmVudCBjb2RlOg0KCQlpZiAoIWd1Y19jYXB0dXJlX2dldF9vbmVfbGlzdChnYy0+cmVn
bGlzdHMsIG93bmVyLCB0eXBlLCBjbGFzc2lkKSkgew0KCQkJaWYgKG93bmVyID09IEdVQ19DQVBU
VVJFX0xJU1RfSU5ERVhfUEYgJiYgdHlwZSA9PSBHVUNfQ0FQVFVSRV9MSVNUX1RZUEVfR0xPQkFM
KQ0KCQkJCWRybV93YXJuKCZpOTE1LT5kcm0sICJNaXNzaW5nIEd1QyByZWdsaXN0IEdsb2JhbFxu
Iik7DQoJCQkuLi4JCQkuLi4NCgkJCS4uLg0KCW5ldyBjb2RlOiANCgkJaWYgKCFpc19wdXJwb3Nl
X2VzdGltYXRpb24gJiYgb3duZXIgPT0gR1VDX0NBUFRVUkVfTElTVF9JTkRFWF9QRiAmJg0KCQkJ
IWd1Y19jYXB0dXJlX2dldF9vbmVfbGlzdChnYy0+cmVnbGlzdHMsIG93bmVyLCB0eXBlLCBjbGFz
c2lkKSkgew0KCQkJaWYgKHRwZSA9PSBHVUNfQ0FQVFVSRV9MSVNUX1RZUEVfR0xPQkFMKQ0KCQkJ
CWRybV93YXJuKCZpOTE1LT5kcm0sICJNaXNzaW5nIEd1QyByZWdsaXN0IEdsb2JhbFxuIik7DQoJ
CQkuLi4NCgkJCS4uLg0KDQoNCk9uIFR1ZSwgMjAyMi0xMC0xOCBhdCAwOTowMCArMDEwMCwgVHZy
dGtvIFVyc3VsaW4gd3JvdGU6DQo+ID4gPiA+ICsJaWYgKCFndWNfY2FwdHVyZV9nZXRfb25lX2xp
c3QoZ2MtPnJlZ2xpc3RzLCBvd25lciwgdHlwZSwgY2xhc3NpZCkpIHsNCj4gPiA+ID4gKwkJaWYg
KG93bmVyID09IEdVQ19DQVBUVVJFX0xJU1RfSU5ERVhfUEYgJiYgdHlwZSA9PSBHVUNfQ0FQVFVS
RV9MSVNUX1RZUEVfR0xPQkFMKQ0KPiA+ID4gPiArCQkJZHJtX3dhcm4oJmk5MTUtPmRybSwgIkd1
Qy1jYXB0dXJlOiBtaXNzaW5nIHJlZ2xpc3QgdHlwZS1HbG9iYWxcbiIpOw0KPiA+ID4gPiArCQlp
ZiAob3duZXIgPT0gR1VDX0NBUFRVUkVfTElTVF9JTkRFWF9QRikNCj4gPiA+IA0KPiA+ID4gR1VD
X0NBUFRVUkVfTElTVF9JTkRFWF9QRiBjb3VsZCBiZSBtYWRlIG9uY2Ugb24gdGhlIGVuY2xvc2lu
ZyBpZiBzdGF0ZW1lbnQ/DQo+ID4gU3VyZSAtIHdpbGwgZG8uDQo+ID4gPiANCj4gPiA+IEJ0dyB3
aGF0J3Mgd2l0aCB0aGUgUEYgYW5kIFZGIChjb3ZlciBsZXR0ZXIpIHJlZmVyZW5jZXMgd2hpbGUg
U1JJT1YgZG9lcyBub3QgZXhpc3RzIHVwc3RyZWFtPw0KPiA+IFRvIG1haW50YWluIGEgc2NhbGFi
bGUgY29kZSBmbG93IGFjcm9zcyBib3RoIHRoZSBBRFMgY29kZSBhbmQgZ3VjLWVycm9yLWNhcHR1
cmUgY29kZSwgd2UgZG8gaGF2ZSB0byBza2lwIG92ZXIgdGhpcyBlbnVtDQo+ID4gZWxzZSB3ZSds
bCBlbmNvdW50ZXIgbG90cyBvZiB3YXJuaW5ncyBhYm91dCBtaXNzaW5nIFZGLXJlZ2xpc3Qgc3Vw
cG9ydCAod2hpY2ggd2UgY2FudCBjaGVjayBmb3Igc2luY2Ugd2UgZG9udCBldmVuIGhhdmUNCj4g
PiBzdXBwb3J0IC0gaS5lIHdlIGRvbnQgZXZlbiBoYXZlIGEgImlzIG5vdCBzdXBwb3J0ZWQiIGNo
ZWNrKSBidXQgdGhlIEd1QyBmaXJtd2FyZSBBRFMgYnVmZmVyIGFsbG9jYXRpb24gaW5jbHVkZXMg
YW4gZW50cnkNCj4gPiBmb3IgVkZzIHNvIHdlIGhhdmUgdG8gc2tpcCBvdmVyIGl0LiBUaGlzIGlz
IHRoZSBjbGVhbmVzdCB3YXkgaSBjYW4gdGhpbmsgb2Ygd2l0aG91dCBpbXBhY3Rpbmcgb3RoZXIg
Y29kZSBhcmVhcyBhbmQgYWxzbw0KPiA+IHdoaWxlIGFkZGluZyB0aGUgYWJpbGl0eSB0byB3YXJu
IHdoZW4gaXRzIGltcG9ydGFudC4NCj4gPiA+ID4gKwkJCWRybV93YXJuKCZpOTE1LT5kcm0sICJH
dUMtY2FwdHVyZTogbWlzc2luZyByZWdpaXN0IHR5cGUoJWQpLSVzIDogIg0KPiA+ID4gDQo+ID4g
PiByZWdsaXN0DQo+ID4gdGhhbmtzIC0gd2lsbCBmaXgNCj4gPiA+IA0KPiA+ID4gPiArCQkJCSAi
JXMoJWQpLUVuZ2luZVxuIiwgdHlwZSwgX19zdHJpbmdpZnlfdHlwZSh0eXBlKSwNCj4gPiA+ID4g
KwkJCQkgX19zdHJpbmdpZnlfZW5nY2xhc3MoY2xhc3NpZCksIGNsYXNzaWQpOw0KPiA+ID4gDQo+
ID4gPiBPbmUgZGV0YWlscyB0byBjb25zaWRlciBmcm9tIERvY3VtZW50YXRpb24vcHJvY2Vzcy9j
b2Rpbmctc3R5bGUucnN0DQo+ID4gPiAiIiINCj4gPiA+IEhvd2V2ZXIsIG5ldmVyIGJyZWFrIHVz
ZXItdmlzaWJsZSBzdHJpbmdzIHN1Y2ggYXMgcHJpbnRrIG1lc3NhZ2VzIGJlY2F1c2UgdGhhdCBi
cmVha3MgdGhlIGFiaWxpdHkgdG8gZ3JlcCBmb3IgdGhlbS4NCj4gPiA+ICIiIg0KPiA+ID4gDQo+
ID4gSSB0b3RhbGx5IGFncmVlIHdpdGggeW91IGJ1dCBpIGNhbnQgZmluZCBhIHdheSB0byBrZWVw
IHRvdGFsbHkgZ3JlcC1hYmxlIHdheSB3aXRob3V0IGNyZWF0aW5nIGEgd2hvbGUgc2V0IG9mIGVy
cm9yDQo+ID4gc3RyaW5ncyBmb3IgdGhlIHZhcmlvdXMgbGlzdC10eXBlcywgbGlzdC1vd25lcnMg
YW5kIGNsYXNzLXR5cGVzLiBIb3dldmVyIGkgZGlkIGVuc3VyZSB0aGUgZmlyc3QgcGFydCBvZiB0
aGUgbWVzc2FnZQ0KPiA+IGlzIGdyZXAtYWJsZSA6ICJHdUMtY2FwdHVyZTogbWlzc2luZyByZWds
aXN0IHR5cGUiLiBEbyB5b3UgYW4gYWx0ZXJuYXRpdmUgcHJvcG9zYWw/DQo+IA0KPiBZZWFoIGl0
IGlzIG5vdCB2ZXJ5IGdyZXBwYWJsZSBiZWluZyBsYXJnZWx5IGNvbnN0cnVjdGVkIGF0IHJ1bnRp
bWUsIGJ1dCANCj4ganVzdCBkb24ndCBicmVhayB0aGUgc3RyaW5nLiBJTU8gbm8gZ2FpbiB0byBk
aXZlcmdlIGZyb20gY29kaW5nIHN0eWxlIGhlcmUuDQo+IA0KPiBPciBtYXliZSB3aXRoIG9uZSBs
ZXZlbCBvZiBpbmRlbnRhdGlvbiBsZXNzIGFzIGRpc2N1c3NlZCwgYW5kIG1heWJlIA0KPiByZW1v
dmUgIkd1Qy1jYXB0dXJlIiBpZiBpdCBjYW4gYmUgaW1wbGllZCAoYXJlIHRoZXJlIG90aGVyIHJl
Z2xpc3RzIG5vdCANCj4gcmVsYXRpbmcgdG8gZXJyb3IgY2FwdHVyZT8pLCBtYXliZSBpdCBiZWNv
bWVzIHNob3J0IGVub3VnaD8NCj4gDQo+ICJNaXNzaW5nIEd1QyByZWdsaXN0ICVzKCV1KTolcygl
dSkhIiwgLi4uDQo+IA0KPiA/DQo+IA0KWWVzLiB0aGlzIHdpbGwgd29yayB3ZWxsIC0gd2lsbCB1
c2UgdGhpcy4NCg0KPiBUeXBlIHdpbGwgbmV2ZXIgYmUgdW5rbm93biBJIHN1c3BlY3Qgc2luY2Ug
aXQgc2hvdWxkIGFsd2F5cyBiZSBhZGRlZCANCj4gdmVyeSBlYXJseSBkdXJpbmcgZGV2ZWxvcG1l
bnQuIFNvIHR5cGUgYW5kIGVuZ2luZSBzdWZmaXhlcyBtYXkgYmUgDQo+IHJlZHVuZGFudD8gT3Ig
a2VlcCBpdCB2ZXJib3NlIGlmIHRoYXQgZml0cyBiZXR0ZXIgd2l0aCBleGlzdGluZyBHdUMgDQo+
IGVycm9yIGNhcHR1cmUgbG9nZ2luZywgSSBkb24ndCBrbm93Lg0KPiANCmFib3ZlIGlzIGdvb2Qu
IDopDQo+ID4gDQo+ID4gPiBBbHNvIGNvbW1pdCBtZXNzYWdlIHlvdSBjYW4gYWltIHRvIHdyYXAg
YXQgNzUgY2hhcnMgYXMgcGVyIHN1Ym1pdHRpbmctcGF0Y2hlcy5yc3QuDQo+ID4gPiANCj4gPiA+
ID4gKwkJcmV0dXJuIC1FTk9EQVRBOw0KPiA+ID4gDQo+ID4gPiBJcyB0aGlzIGEgbmV3IGV4aXQg
Y29uZGl0aW9uIG9yIHRoZSB0aGluZyB3b3VsZCBleGl0IG9uIHRoZSAhbnVtX3JlZ3MgY2hlY2sg
YmVsb3cgYW55d2F5PyBKdXN0IHdvbmRlcmluZyBpZiB0aGUgc2VyaWVzIGlzIG9ubHkgYWJvdXQg
bG9nZ2luZyBjaGFuZ2VzIG9yIHRoZXJlIGlzIG1vcmUgdG8gaXQuDQo+ID4gSXRzIG5vIGRpZmZl
cmVudCBmcm9tIHByZXZpb3VzIGJlaGF2aW9yIC0gYW5kIHllcyBpdHMgYWJvdXQgbG9nZ2luZyB0
aGUgbWlzc2luZyByZWcgbGlzdHMgZm9yIGh3IHRoYXQgbmVlZHMgaXQgYXMgd2UgYXJlDQo+ID4g
bWlzc2luZyB0aGlzIGZvciBERzIgd2Ugd2UgZGlkbid0IG5vdGljZSAod2UgZGlkIGEgcHJldmlv
dXMgcmV2ZXJ0IHRvIHJlbW92ZSB0aGVzZSB3YXJuaW5ncyBidXQgdGhhdCB0aW1lIHRoZSB3YXJu
aW5ncw0KPiA+IHdhcyB0b28gdmVyYm9zZSAtIGV2ZW4gY29tcGxhaW5pbmcgZm9yIHRoZSBpbnRl
bnRpb25hbCBlbXB0eSBsaXN0cyBhbmQgZm9yIFZGIGNhc2VzIHRoYXQgaXNudCBzdXBwb3J0ZWQp
Lg0KPiANCj4gT2theSB0aGluayBJIGdldCBpdCwgdGhhbmtzLiBJZiB0aGUgInBvc2l0aXZlIG1h
dGNoIiBsb2dnaW5nIG9mIGVtcHR5IA0KPiBsaXN0IGlzIG1vcmUgZnV0dXJlIHByb29mIHRoYW4g
Im5lZ2F0aXZlIC0gZG9uJ3QgbG9nIHRoZXNlIiB5b3Ugd2lsbCANCj4ga25vdyBiZXR0ZXIuDQo+
IA0KPiBSZWdhcmRzLA0KPiANCj4gVHZydGtvDQo+IA0KPiA+IA0KDQo=
