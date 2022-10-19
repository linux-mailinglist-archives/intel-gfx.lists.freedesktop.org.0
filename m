Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BF360393B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 07:28:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC90C10F128;
	Wed, 19 Oct 2022 05:28:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B01810F128
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 05:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666157326; x=1697693326;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=jJRHsgXK8lUL5OmF/rWePIPLLK9htbTqMcyP6Gsz6UQ=;
 b=m3oOUOnPbzt+F+xrEYM8wj1FcW4zWIBMXcEE77IFqTKN8a9Ui+4fOXDj
 KMbRVMepbz0EVHUBKePgB3GTbod+PXHUQDPy0X5ll4jLKvcAdgam+uyws
 Wy4MJnoZGLEKCsJ7yBN5rQ8EMLL2WkN5eaIIG1AsyLC7BQd+P2gZVNmIY
 bnMfS+TjccxGTbux2Gu2suAnh0klWLh8owjE6s6741zl89Edkx5DqtBuE
 vP1NQo7AIiM/6Oh8TZI0+crz2+QyHt5qopJFw3K/uNZSTOE8MCYM3HMIs
 01HgN/+2YRxUqX3hfQinR9X66S0JMAaaXZqm80RuB6Wm9JZ7mZD/idsqq g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="307996230"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="307996230"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 22:28:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="958153343"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="958153343"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 18 Oct 2022 22:28:45 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 18 Oct 2022 22:28:45 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 18 Oct 2022 22:28:44 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 18 Oct 2022 22:28:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 18 Oct 2022 22:28:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XSgvnYXjEnTYAbyQnhHKAb/xe3JKX0+XqaFNGB2/ErZ1+9nty5FrR46zIVwuU3A9f7kDlKBB/4L3X9p5eX4o9/VONFOKUqUD1MkLCF95Pi0rzZZcnMIMdyrKHleeUSS9EzdadXE9DVX20e2Njl+wPswGhmLKQMnVNYBNethBPVDisu461p+E6lls9mkxqQK5BFbnmPDAEMa2QG8xV1hgJIg+Ck6MGx2BC0ZcCzl1jUt2a5Y8Hget+VNqBV/sjYY9LLR9W0CmdiBD6/A0BNbwIw78XqWjvKjRl+APTxGCuowsgEjWzlMDQuCakmcC/NxsmfgcrmDZfMpgHLgKKpOvbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jJRHsgXK8lUL5OmF/rWePIPLLK9htbTqMcyP6Gsz6UQ=;
 b=Msho38Tn+fwVVlYlvNkamDcPTIU3RDjBnGj8T7uOvMdmepCBcC6yLIFsnK3uqdEt37pcIvFD2OEkwY1bwUq6krrOjs2HzEfQrGfMHs0rymidrJdjdmMNrHzesdQKjTWPqZICFtrM4QtYg5h0vESzbuTYaYWGXHOLJKIGn/q+QgGVopo34MWG0tWAgIPjAjgqbpeaVkzvzgDM9tNdFmUbfAyUGrGSXqEF/JlpRsvYEqw6uIc+hHBdKw8Hd4DXrl+n5Tr2In4u0DVN61YXfeP4M8LLUKJSBDS72rw4SaVtnjX+1XFREKsItby3W0ARVJkhyud1VENzdJpdYUx2Pjg49g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH7PR11MB6545.namprd11.prod.outlook.com (2603:10b6:510:213::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Wed, 19 Oct
 2022 05:28:43 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%7]) with mapi id 15.20.5723.033; Wed, 19 Oct 2022
 05:28:43 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Add error-capture init
 warnings when needed
Thread-Index: AQHY4Epaf0zuGaT42kWe0ZuMvmrykK4SSEGAgACYgYCAAO4tgIABaGEA
Date: Wed, 19 Oct 2022 05:28:42 +0000
Message-ID: <6a27f8f979de35861d295dc0bb68ea0b8e1b454a.camel@intel.com>
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
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH7PR11MB6545:EE_
x-ms-office365-filtering-correlation-id: 47b9af18-9104-456d-2cab-08dab192c980
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U8u9fYMTmeqPpQTGED8E1DSxjb/CWpf9on6Ugh8LuZs0KXkbyA/LsfRLjtN8ja7n/EYSjefif/fQDIRUUH8eLerXj5zkBaTjw4oDbVYAWv/I3u13uGrkGqXGwSRwKZS57JtKPyoTCblYSqfalEC8lzTc9kTGI+obv6yiT3ebSVpt3djGlUP2qqKmP0sO4pOBftN+yI2B1NvvRA4cyiurV6zuIxtTNpCUiiLkJD15CTO0RrRCAwhnRDeZXqJLpPsssdgriRbhMZtxBfyGbvv8KKG8nHCmu+INuyUId9shDdFr5RW7R4lBqF3EA9FyyUKsQFpJANzGIDM+0LOPfBeBsvnAWYVhMAKGNVS9li4lmlycct/PAPfyjqnI5MsqVT2rCZtaL5e9D2PyBSrCc1i7Uob5ZPKcmy2IUg6Qi2dBJDCkzaturELBNuT/JiAcwNzd35d47JWGqfuKhenfpJT89SuUdN1OswVNNEci5mC9oYuMkPGwF7EwonJFiE2zN72/42Wif3OfSL5mikDCGARE2hgM7A91yUFwqfdA7Cqx4KJ8DbWDAv+OOWM6NcfsayIJkVUXAj0KBHCgTYU6PPtNuTiLtZWg2Tec42qIOQXkLaZHGgno2qioZy/NSEIPCXOZwY4bh1nyGlauchMDX+U0VT+m1Gin+bmMy+tUOgmY0N1hJSqFzCfvLb/99ANQw+uTA0Rr6cu9Nx7KtFt8mQtVtCF0CFw7nzE6kYjc1gV2h+0xu09byrls4lY17qWziOjxlArliHj/MDK9u9yOw9ciGg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(366004)(396003)(376002)(346002)(451199015)(110136005)(6486002)(316002)(66446008)(8676002)(66946007)(76116006)(91956017)(4326008)(66476007)(64756008)(66556008)(71200400001)(5660300002)(186003)(2616005)(41300700001)(2906002)(6506007)(478600001)(6512007)(8936002)(36756003)(26005)(83380400001)(82960400001)(38070700005)(122000001)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ckNCc1ZHemhqTythSEs0dDQ0ejRqVkdaL1lxWkZ5Y2xkWFN4S3Ard01tL1dx?=
 =?utf-8?B?SU9qRkhIVnE0WlFCRHNMZ1YvUEoxSkJxdFN6YTdTOFlOL0srN1E0SVFSbEhD?=
 =?utf-8?B?b3FjKytWcnBqU25OdG1wR2RxTm81SE9IVFFTWnRDVE5wSXJkS0lwdVFqSGt1?=
 =?utf-8?B?TlpSL1lzQzRYa3FqaDhvVEhWRlI0RDdFait6eHVtOWhaNHFVNDNRRkw4Z05s?=
 =?utf-8?B?QUxEYVhFVEx5endZTHRVanFVT3FHNDg2MkJZQ2dIbVVLZVhxQ1hGLzVIUE1l?=
 =?utf-8?B?MDZ6cXo4eHVqcGNDWTZFZXM0UTBJTmU1ZjEyNU9kVktlbERkUWhVMkplT2N4?=
 =?utf-8?B?dTlyN01ITkJMRERISnRwOEQ5Y0tqM1Azakk2Qkk4eHc5VFFrdXRIRG9TdGVq?=
 =?utf-8?B?cWkwQUJ5NXFvd0V2MGtwSkNISm5xUFhwZityNmZTZmpyY25XeUxyUXErT0ps?=
 =?utf-8?B?OWFpQnhGdThsbytJelpyNmVTbGVIUXRLZVhZelc2NTRFd3NOZUdZelJaU1l4?=
 =?utf-8?B?QzFBbUZRcUk4U0N1RkxBUTNjVmNPemVNTzFHTWYwU2k1R253YkJxVTNlUFJY?=
 =?utf-8?B?RytIVjVtbWpMYzNKWWxGNEJHUGwwWjQwTXQyRXVQa2ZibTNzVzk2c2RnRWNn?=
 =?utf-8?B?Q0V0a3NHakw5RktmTVdtOHU4cnJ6NHBMNUFHVUFjN01Fc0NTUzIxeEFHaWx0?=
 =?utf-8?B?YnFRbmFiSjBNa2FXWnVWR29xL1FSR2V0SDNjU2RqRUVLeGgrNFdXb2Fxc3Vo?=
 =?utf-8?B?SmJxMWJ3YXpKcjk3bm9pa1RjNHNMd0hiWVRaZ0ZWRWFXTW1qN09RcTBESmNG?=
 =?utf-8?B?b2d4ZDFGTXF5QlAvdXE2RTh0YmRXRDY0TjdQU3UwVDFRZU9mbkl5QlUyRU9l?=
 =?utf-8?B?dUJXcXNLQUNiN0MxSDJzMzNTWUdPM0dtY1YwT1N6bVFNQ0dRQ2NwdTJRa2d1?=
 =?utf-8?B?WUVKR2g3SjlReTROVFlnSVRNb0FDRzRsNlVZLys1OTJqdk1uazRjd1VRVG5D?=
 =?utf-8?B?bXV6SWN4YkxYK29pM1lLVWROc2FzMTlQaXBSSzhwanlMcW0yV1A4R1ErbXY2?=
 =?utf-8?B?MExIUzA2TjBnY2V1d0s5UWhtRkhZVVJESGt5WjlDTkJWMFlReXh1SVlZZ2oy?=
 =?utf-8?B?TVUxT25ob1AzM00yOG51VFEzTkJzNW1FWWRrSWhtY2RQUzRqQThWN0Y0TWdm?=
 =?utf-8?B?aXZkamgrSzZmd3pPT2NpeVZJeFR3Y1hJSkJkR3BaQlp6bmpESTQxZU1QZFBt?=
 =?utf-8?B?Y21aenNvWis5TVBhRStaTXFLZ3BsVVFjNTJvaHdvcXEvQWFWTFlqVDEzUjZl?=
 =?utf-8?B?SXRRK3dmbDNtTy9zN3FqUUlqNFJ2ZXB1Uzl2RjB5d1FrcmgwdFNGalRlbzY5?=
 =?utf-8?B?VlFuSlZ0ZUlBZE5lNTNIQ2orK0VIZ0RiVFRuK1NBeUFNVzlONU0wTzVUYTNs?=
 =?utf-8?B?amxUYVFQY2wyeHdFQTcrYXB0dzhDQ29sL0J1aTZvWG9CZytQVVMrZXZLNklU?=
 =?utf-8?B?REhXZ2IzRW5wRnFOQTcwSXd5c01YdGREZDZqQ0R0bjlsWVhjdDgwc2dJa0sv?=
 =?utf-8?B?aS9YZGMrWnlPMWdSVkFJVkpRZGk5bHMvZERXYnhxV25reVVBTzVrZk8rYlJP?=
 =?utf-8?B?S1dsZ25TRDlodDVBNDJRekhVY0dwTDJQZHB2UHhKT3A5NlJaRGpSMEFLOFJC?=
 =?utf-8?B?Vng1RmpwejJ2T0UvUiswMitEejRHR3A0U1k2a0Y1OWVRbVo4NU5JTmhFeFBC?=
 =?utf-8?B?YzdjZHhtK3VYdXRiT3R1cDU5ZWJmS0UvWG5DbVVQUEdNWVo2VWlLcmtGaTMr?=
 =?utf-8?B?eGxYZFo1d2pVaDYvRGxDaS9jWSt5bkdCdGNRZ3JlRG9abEg1RldrNkwzRjNV?=
 =?utf-8?B?UHFzRkdCMFBSTWVoeVI3WXBkcFNWNnkzWW45SUxGK050ZkRvZndYMUlBaEUx?=
 =?utf-8?B?RGpTY1RRU0JYUDBrMS9DcVJOZGRKT01td3l2K0JEWEFjOGR6TlM3ZzN2ZHRp?=
 =?utf-8?B?KzQ1dUxlSUJlMGFLZnJaYWpMK3FJRmxBTFA4MW94YUlJUGFxQ1djUTlXeTUv?=
 =?utf-8?B?a2hNSjFia3ZLSDNvSjQxVzZyRDhCdU1hY0drdU1sYkpwam9STmFoZllyVHpr?=
 =?utf-8?B?U0JSUUgwb1E5cVpTZXRqZ09vQjZoT2JUVHczb1hSUW1HcTY0ZDRKOHpRNEFH?=
 =?utf-8?Q?0hg7NzSF1Rhqn17L3aL4wPg=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BAF04351CC22484FBE5C268FEFF71294@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47b9af18-9104-456d-2cab-08dab192c980
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2022 05:28:42.9670 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9To7JvC/kZGQ1dPXj/o2Xl3ORz92vSEQ+ecuWvj9F1ss4BpRL3kypPmLytY9Zcq4c9smBzoI0LsfOIRC9QBdIjkWe6itT4aPTshEjznteISv/PQbwY3AXF+dHdOA9I2o
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6545
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

PiA+ID4gQWxzbyBjb21taXQgbWVzc2FnZSB5b3UgY2FuIGFpbSB0byB3cmFwIGF0IDc1IGNoYXJz
IGFzIHBlciBzdWJtaXR0aW5nLXBhdGNoZXMucnN0Lg0KPiA+ID4gDQo+ID4gPiA+ICsJCXJldHVy
biAtRU5PREFUQTsNCj4gPiA+IA0KPiA+ID4gSXMgdGhpcyBhIG5ldyBleGl0IGNvbmRpdGlvbiBv
ciB0aGUgdGhpbmcgd291bGQgZXhpdCBvbiB0aGUgIW51bV9yZWdzIGNoZWNrIGJlbG93IGFueXdh
eT8gSnVzdCB3b25kZXJpbmcgaWYgdGhlIHNlcmllcyBpcyBvbmx5IGFib3V0IGxvZ2dpbmcgY2hh
bmdlcyBvciB0aGVyZSBpcyBtb3JlIHRvIGl0Lg0KPiA+IEl0cyBubyBkaWZmZXJlbnQgZnJvbSBw
cmV2aW91cyBiZWhhdmlvciAtIGFuZCB5ZXMgaXRzIGFib3V0IGxvZ2dpbmcgdGhlIG1pc3Npbmcg
cmVnIGxpc3RzIGZvciBodyB0aGF0IG5lZWRzIGl0IGFzIHdlIGFyZQ0KPiA+IG1pc3NpbmcgdGhp
cyBmb3IgREcyIHdlIHdlIGRpZG4ndCBub3RpY2UgKHdlIGRpZCBhIHByZXZpb3VzIHJldmVydCB0
byByZW1vdmUgdGhlc2Ugd2FybmluZ3MgYnV0IHRoYXQgdGltZSB0aGUgd2FybmluZ3MNCj4gPiB3
YXMgdG9vIHZlcmJvc2UgLSBldmVuIGNvbXBsYWluaW5nIGZvciB0aGUgaW50ZW50aW9uYWwgZW1w
dHkgbGlzdHMgYW5kIGZvciBWRiBjYXNlcyB0aGF0IGlzbnQgc3VwcG9ydGVkKS4NCj4gDQo+IE9r
YXkgdGhpbmsgSSBnZXQgaXQsIHRoYW5rcy4gSWYgdGhlICJwb3NpdGl2ZSBtYXRjaCIgbG9nZ2lu
ZyBvZiBlbXB0eSANCj4gbGlzdCBpcyBtb3JlIGZ1dHVyZSBwcm9vZiB0aGFuICJuZWdhdGl2ZSAt
IGRvbid0IGxvZyB0aGVzZSIgeW91IHdpbGwgDQo+IGtub3cgYmV0dGVyLg0KDQpOT1RFOiBKb2hu
IGFuZCBJIGhhZCBhbiBvZmZsaW5lIGNvbnZlcnNhdGlvbiBhbmQgd2UgYXJlIGF3YXJlIHRoYXQg
dGhlcmUgd2lsbCBzdGlsbCBiZSBhIGNhc2Ugd2hlcmUNCndlIGNhbiBtaXNzIG5ldy1wbGF0Zm9y
bSB1cGRhdGVzIGZvciBndWMtZXJyb3ItY2FwdHVyZSB3aXRob3V0IGJlaW5nIGFsZXJ0ZWQgYnkg
YSB3YXJuaW5nOg0KTGV0J3MgdGFrZSB0aGUgZXhhbXBsZSBvZiB0aGUgZW1wdHkgYmxpdHRlcidz
IGVuZ2luZS1jbGFzcy1yZWdpc3Rlci1saXN0LiBXZSBkb250IGhhdmUgc3VjaCBhIHRoaW5nIG9u
DQp0b2RheSdzIGhhcmR3YXJlLi4gd2Ugb25seSBoYXZlIGJsaXR0ZXIncyBlbmdpbmUtcmVnaXN0
ZXItbGlzdCAuLi4gaS5lLiBIRUFELCBUQUlMIGV0Yy4gQnV0IGlmIGEgZnV0dXJlDQpwbGF0Zm9y
bSB3ZXJlIHRvIGludHJvZHVjZSBhIGJsaXR0ZXIgZW5naW5lLWNsYXNzLXJlZ2lzdGVyLWxpc3Qs
IHdlIHdvbnQgZ2V0IGEgd2FybmluZyBzaW5jZSB0aGUgZW1wdHkNCmxpc3QgaXMgdGhlcmUgdG8g
cHJldmVudCB1bm5lY2Vzc2FyeSB3YXJuaW5nIGZvciB0b2RheSdzIGhhcmR3YXJlLiBCdXQgd2Ug
a25vdyB0aGlzIGlzIGJldHRlciB0aGFuDQpoYXZpbmcgdG8gZXhwbGFpbiB1bm5lY2Vzc2FyeSB3
YXJuaW5ncyAod2hpY2ggd2FzIHRoZSByZWFzb24gd2h5IGEgbW9yZSB2ZXJib3NlIHZlcnNpb24g
b2YgdGhpcyBjb2RlDQp3YXMgcmVtb3ZlZCBpbiB0aGUgcGFzdCkuDQoNCkkgYmVsaWV2ZSB3ZSBh
cmUgZ29vZCB3aXRoIHRoaXMgc29sdXRpb24gaGVyZSBmb3Igbm93Lg0KDQo=
