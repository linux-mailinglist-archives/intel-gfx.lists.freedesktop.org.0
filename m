Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A6B635997
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 11:22:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C04D810E1FB;
	Wed, 23 Nov 2022 10:22:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB97910E1FB
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 10:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669198924; x=1700734924;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=pqGSNmGXJpSWRa9Gvfn6xXQVRW+WKbe6MhxnNb0+E4g=;
 b=kRSjR1mexsVxgwVhvG3bFQq8A6zdua2Eh4kCIuau5+e6K9HtYm97/OvM
 VSqgUKOfcBpbSsqxiuPuqNxaMv1UYrxDx8v0H8n6e5IwmCbeDQu2b8lJo
 r6i4RzvmwEc06gXZG2Jjcwlbich+QC81D1yYRgj51CRwdF18oaLHA0dhY
 muaAtDY0vlwCIuWupW8Mc3GudYlpK63UwR0EhXQ+JvuXnC1rJOfCuI/R5
 NNtD7RoJAVzJtYDFSwrbgoinqnUZNZAu8+xi0OUNSOfE6vIpo35RXJeZU
 Mgf7JYnnHY3VYt7xEwSAYno2vIWGhmMJ2tEXeys/25j8WUOJu3hU2oFk+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="297393128"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="297393128"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 02:22:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="672827132"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="672827132"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 23 Nov 2022 02:22:04 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 23 Nov 2022 02:22:03 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 23 Nov 2022 02:22:03 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 23 Nov 2022 02:22:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iK+18Pe0TX1a7C8/wItCtOWUQyfmL8fuHUUy6bLBLyF7ujvpnPc+IKiMnenVhBBBvbuOZMqI2Mn5H6+aurBQDLDdMKO+dqi/gJZ6i1PNJbCZn5r16c6h2/G04JHEn6yfFabO2ZX6yF9BgGBKQuuAIxRnAXMaBPAnLi5q3dD0+gnyGWvSJwx2t+JWNB5ZpXgFQM1WrQJsh5uIV65v47EE3f/Sd0jKDYvwPFwmLBdjqO9gCzWRXhuTVRyASCBOBqEy1KBfqjTeMG6OEjyqcsJ51Rv4FqobSPVWjSzacaES0sDPZZimroQgrsD+QRsG151y2Mn2xS7JeqDBsQNZq/oYbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pqGSNmGXJpSWRa9Gvfn6xXQVRW+WKbe6MhxnNb0+E4g=;
 b=m+ezZmYcF8xsB39LB/C1qL1uZ3G8B5wjIkbMyB7exswkI1NZFU0NFfwHdz/RZPWbD1uh4YgW7jnVBcFwM2bGTAB/C+X3cc1kn/51fPBSkJiKwfSYj8Nn+qxEcXgE9XJ09V+5X14yaDAvqUErKa6016QhTjX5Xa5Sq2/SFPFSh03O4viukyWRerLHZ7PwJzmEywoPJPcv8Bv5NCfGVyKgOmdtXcW0JBaPTSSoRdN6FLkFYNlbRDbCuR+UDw+DuxP6Kuog5L9PlBRSHgqooUfEoKqlpxnqmbELn88EjMq9d1RcGvv6FzrIaeTiC+CQxE2fgGF0r4vxAX1rKAgXpFtAWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3207.namprd11.prod.outlook.com (2603:10b6:a03:7c::14)
 by SJ0PR11MB4975.namprd11.prod.outlook.com (2603:10b6:a03:2d0::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.18; Wed, 23 Nov
 2022 10:22:01 +0000
Received: from BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::5546:ea97:1beb:cb5f]) by BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::5546:ea97:1beb:cb5f%4]) with mapi id 15.20.5834.015; Wed, 23 Nov 2022
 10:22:00 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v3 1/2] drm/i915/mtl: limit second scaler vertical
 scaling in ver >= 14
Thread-Index: AQHY/weJ2LRdW4EGOkCMCsIz1GUrr65MOogAgAALeQCAAAbEgA==
Date: Wed, 23 Nov 2022 10:22:00 +0000
Message-ID: <171acc22b77163c2e4f03d22da31fa54ebd8888a.camel@intel.com>
References: <20221122102344.30244-1-luciano.coelho@intel.com>
 <Y33CGl3lfE/JxtVf@intel.com>
 <03db57b25685301886bc5a15fc6e6f70edf15272.camel@intel.com>
 <Y33umBIPFL8fSqUm@intel.com>
In-Reply-To: <Y33umBIPFL8fSqUm@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3207:EE_|SJ0PR11MB4975:EE_
x-ms-office365-filtering-correlation-id: 8d1b01d4-9bbf-46a4-e540-08dacd3c8eeb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g+RIKDk7M17i7UEvPFJnCdBq3UAv3Cd//hQevJWjIoPyby/hE4Wabg99bAthprixlwE/Bi4Fwng0cEcK54XaWF5BsmiIzLhkZiNgQJo3oNUhUD9UIEEuE3A4E+LfVvShcKSObgusZ9GQM8IKEpXgpxF3MfFWG1B9Fo9pvJykK2n6cJth6HfqanPU0KEZ581QOgQZpU0R25ZVLOp3jc9QZXQ5fvA4F97x76O9IeHwN10lnC0+LzitwcWVHhtNajP4q3yRB3FfmeW7HkNdK0vVVUvG99+BfArZAERWCsGXurUDf/CMdaPtI4sxKuPvEMlqP1mKPH4ot0VYHEM+iCsVhLxzPWuaaKzUIeHnBaHrbqRO6xP2oMiw6PfkyzL4+Pw3me+nS/yEdFfwdhdaJMWwlikDdJGp9q4PzihzJiSF1RifpLm37NtOPYxXVgXksHn3qKrGr40LouNIJEZKw8qJyAuU7bz347DTk7NBshq3GBm2DbpNRHq3OTMzwUWiKlFhWrhGmcntYkmyUWnTYNltK0yH1MIlQ108xIj8FfvKpMMi4gjgFhzAVhJyHJtOSvU6TEkOrJ5/WuDI8mN217detjtbQcFgxfgS5sBZocf4d4GHdgdxkHn8dnM9UKzugODbu9HXQeyRNJql1glFCRxQ+fs3v2hrH7J/PIi3ok4LE3++qe08J5G40gNhtm27sZ+fYYHREZDlmMdtZTlQH4TGVw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3207.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(376002)(136003)(366004)(396003)(451199015)(66946007)(66556008)(66476007)(66446008)(64756008)(8676002)(91956017)(76116006)(186003)(2616005)(66574015)(478600001)(83380400001)(6486002)(38070700005)(36756003)(4326008)(38100700002)(5660300002)(41300700001)(86362001)(82960400001)(4001150100001)(122000001)(6916009)(316002)(30864003)(8936002)(2906002)(66899015)(26005)(6506007)(6512007)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Zk5jY3I4c2IxS29SUzNlRjRnYXVPVVBQVkdrOHp3Y2JLdnlUMHNocUprTHZH?=
 =?utf-8?B?M2hScnFlbmZyNGZzSFVyVi9pYVZ4K0ZxbHIvMEtXSnYxQlhGNWk2TFlKLzlP?=
 =?utf-8?B?d3B1TCsyeFBMVUlXbnBZVDdadFB4MGNaT0ZBcUhuRDJaOW44blhDQWlSSWZh?=
 =?utf-8?B?UWhSNkxhVTN1VTZhaWpYaXNQeXJCT3lrT1VFbkF3dHNJU3pCRk5WeHAwVXNS?=
 =?utf-8?B?U0lBY1JQaWczeEJQWlB4RldRSXB6K0duSTRYditXQ1hWZmxYR2JoQ3VuajNK?=
 =?utf-8?B?NXlrS2xrVlByTy9OSXc3WGppdVZQZVFTSTNKZ0pzS0dES2tWOFFtWGVQNk5E?=
 =?utf-8?B?VXgzTTN6aTFnY2pPbktVYXhaMFFCdEdRTGI0NThxa3ZBRkdnZlJIdWNmekFS?=
 =?utf-8?B?WmVnY1M0cWpzOGxGQnBPcVRReiswUVVseVRuTmVMa3hmK29GVFNLcHI2ampS?=
 =?utf-8?B?aUk3Y1liYWpOSkd4VFExVWI1ZU9KeHlncHdYb0VTZU5GMXdESTBSQTh6TC9a?=
 =?utf-8?B?RDZQclBDbkdiVmY0QThTRHc2UHVhS1RPdGlDeVlmdUM4YlNUWDR2M3FEZjNT?=
 =?utf-8?B?b1JIMlFuejFtT242RkRRcDZoQ2lTY3RzRE1NT09uTEdpdkFVUy81VzFSRnZQ?=
 =?utf-8?B?WjNrQi8xdE5Iakh6MWx3R1hVWTNHUEtyU1lxTktyVTJXR1UydFVham10VXJy?=
 =?utf-8?B?a096VEZrUTRuUVF6VUlPWC8vOWk4Q1E2a2dtVWFvZXVmZkhqbmZRbFMvSVVP?=
 =?utf-8?B?L2JDSFA1OWp3SXVkbkpkcHU1Q21rUE1JTk5lVVcxZXRvc3FESnRVQ1dqWTE2?=
 =?utf-8?B?dkNnOXFrMTgraXJoRU8xaXp1VU95WFRJWnpaUTUrSGRyNElTNE5KcTRaUTF4?=
 =?utf-8?B?aXFISnBNUTZLcWh2TFo4UnlkamJVNmZBZmNFSThvQUZIZWpESmJBM21Qc0lm?=
 =?utf-8?B?K01vS3ZHdVFCeTBmOFJYVXovNHg0MzhHN2JGOXE3ckpDNkVDSzNTWmRhRExC?=
 =?utf-8?B?bDBQMVNBYXp2ZmtNUCtoR0FiS2EwQ0V3UnJENWR6YTNrR2lVNkZnWCtER2Nt?=
 =?utf-8?B?WVA5VGVEbjNVcW15cTNCM3kvZDJKRWtUNDhLVHovZmgvMFdHaldTWHJGZVg2?=
 =?utf-8?B?SFJEckdqMC8vOG5wY092QXA2dnE4cDNTeVNSME4xclQ5M0EvVUpSYS9yY3RN?=
 =?utf-8?B?SlNTM3c0ZXNwajlodlQ5Zk1FUVhXU0JVeWVsNlJMNVNrMjJBZmNRM3lzdEU2?=
 =?utf-8?B?bE40emhrNTZGMFFPbEZaa3hVbDFrblgreGt0QWhZTGJBejhCdnZEM09ETVcx?=
 =?utf-8?B?MTZlYTVwU1hObGtlNXl1ZGZWbFpSRHpwUkUvYStFUkN2ZmRXdU5GM3l4Q1FT?=
 =?utf-8?B?RnYvNHY1WVBKYkNKRGZOZkp1Ym5GQXkvaHVBVi9GRlVId0l4L1JJUys2MGlF?=
 =?utf-8?B?aVVhVjVwdWJyczBtTUc1bldrNS93K0JrWjVNT09IZVpuai9sNDRRUzFHNW81?=
 =?utf-8?B?RTl4ancvZExOUktzS08zbktDWFJRc1hDL2d1ZTMxWkl3U2JiazZqNmR5UHBp?=
 =?utf-8?B?TDJGKzdHbmdmSDRPSWFoSmtyeXM1SlJiK242QnlkNVlQNmdjVS92a0pvZG9I?=
 =?utf-8?B?eHY1VGNXbStJaDdINVZHZ0paQ05RbS9lRjl1SkZTa2xIMDlHUWxWRDF1amd0?=
 =?utf-8?B?ZFZSSUpLY2FTTnZoMkRHUi9GN1psbUtEYVVhck1jYm5zY3pDYnhJN1RSdDRv?=
 =?utf-8?B?aE03Y1pxaWhaTDVJV0lIRmdheXd2VFRmZHpVTDMyZGZvMVhMMTNFUHBKbEkr?=
 =?utf-8?B?ZlNxN2c2QXd1VlhNZmkzZ2d5SWlIM3ZFRDZxbTZGVlJtTkZNVDZHTXFsV3l1?=
 =?utf-8?B?bDJ5OEgwQ1hkbU5sckFUSGlQRnE2enhkYm93aW5DZUlVdkJzWGUzdEdYbE9q?=
 =?utf-8?B?S3crUjBQckNrSkhTZEo0emtzczVTTlozNkh2NHNVWTVQancrUGNhK2Rha0Yy?=
 =?utf-8?B?VVlDbHNlbGxJTldVTFAvQWN1STFCWnlKWTV0dEVUampXRWZRTkVkWjljbzRs?=
 =?utf-8?B?V3AvNThiRnRyVFpCWUJhRWo5c2F1VDkrQVN6bjVTa2pKZGdwU2RhWGJUTUJJ?=
 =?utf-8?B?akEvaDhRWGZ3cVFyU0pBdGZ0aXNZOGxGMUpOSCtTbHdtenRPenVBbThUUVQ1?=
 =?utf-8?B?OEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <983B517CC10DF642B4334039DE16BCD9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3207.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d1b01d4-9bbf-46a4-e540-08dacd3c8eeb
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2022 10:22:00.5433 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uTZDUk7ubkPZSu3iT+CTZaTZvJVqNB1N/PAU+iwAPETbRaup2dnF6gqX4vTtecuC5Uj/bkOwAAlh6/qJ2pM5hBbUmXwDS6WpWz7u3Rh2V7g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4975
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/mtl: limit second scaler
 vertical scaling in ver >= 14
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

T24gV2VkLCAyMDIyLTExLTIzIGF0IDExOjU3ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgTm92IDIzLCAyMDIyIGF0IDA5OjE2OjQyQU0gKzAwMDAsIENvZWxobywgTHVj
aWFubyB3cm90ZToNCj4gPiBPbiBXZWQsIDIwMjItMTEtMjMgYXQgMDg6NDcgKzAyMDAsIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+IE9uIFR1ZSwgTm92IDIyLCAyMDIyIGF0IDEyOjIzOjQz
UE0gKzAyMDAsIEx1Y2EgQ29lbGhvIHdyb3RlOg0KPiA+ID4gPiBJbiBuZXdlciBoYXJkd2FyZSB2
ZXJzaW9ucyAoaS5lLiBkaXNwbGF5IHZlcnNpb24gPj0gMTQpLCB0aGUgc2Vjb25kDQo+ID4gPiA+
IHNjYWxlciBkb2Vzbid0IHN1cHBvcnQgdmVydGljYWwgc2NhbGluZy4NCj4gPiA+ID4gDQo+ID4g
PiA+IFRoZSBjdXJyZW50IGltcGxlbWVudGF0aW9uIG9mIHRoZSBzY2FsaW5nIGxpbWl0cyBpcyBz
aW1wbGlmaWVkIGFuZA0KPiA+ID4gPiBvbmx5IG9jY3VycyB3aGVuIHRoZSBwbGFuZXMgYXJlIGNy
ZWF0ZWQsIHNvIHdlIGRvbid0IGtub3cgd2hpY2ggc2NhbGVyDQo+ID4gPiA+IGlzIGJlaW5nIHVz
ZWQuDQo+ID4gPiA+IA0KPiA+ID4gPiBJbiBvcmRlciB0byBoYW5kbGUgc2VwYXJhdGUgc2NhbGlu
ZyBsaW1pdHMgZm9yIGhvcml6b250YWwgYW5kIHZlcnRpY2FsDQo+ID4gPiA+IHNjYWxpbmcsIGFu
ZCBkaWZmZXJlbnQgbGltaXRzIHBlciBzY2FsZXIsIHNwbGl0IHRoZSBjaGVja3MgaW4gdHdvDQo+
ID4gPiA+IHBoYXNlcy4gIFdlIGZpcnN0IGRvIGEgc2ltcGxlIGNoZWNrIGR1cmluZyBwbGFuZSBj
cmVhdGlvbiBhbmQgdXNlIHRoZQ0KPiA+ID4gPiBiZXN0LWNhc2Ugc2NlbmFyaW8gKGJlY2F1c2Ug
d2UgZG9uJ3Qga25vdyB0aGUgc2NhbGVyIHRoYXQgbWF5IGJlIHVzZWQNCj4gPiA+ID4gYXQgYSBs
YXRlciBwb2ludCkgYW5kIHRoZW4gZG8gYSBtb3JlIHNwZWNpZmljIGNoZWNrIHdoZW4gdGhlIHNj
YWxlcnMNCj4gPiA+ID4gYXJlIGFjdHVhbGx5IGJlaW5nIHNldCB1cC4NCj4gPiA+ID4gDQo+ID4g
PiA+IFNpZ25lZC1vZmYtYnk6IEx1Y2EgQ29lbGhvIDxsdWNpYW5vLmNvZWxob0BpbnRlbC5jb20+
DQo+ID4gPiA+IC0tLQ0KPiA+IA0KPiA+IA0KPiA+IFsuLi5dDQo+ID4gPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYw0KPiA+ID4gPiBpbmRleCA2NjIxYWEy
NDVjYWYuLjQzYjFjN2EyMjdmOCAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jDQo+ID4gPiA+IEBAIC0zOCw2ICszOCw3IEBA
DQo+ID4gPiA+ICAjaW5jbHVkZSAiaW50ZWxfYXRvbWljLmgiDQo+ID4gPiA+ICAjaW5jbHVkZSAi
aW50ZWxfY2RjbGsuaCINCj4gPiA+ID4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgi
DQo+ID4gPiA+ICsjaW5jbHVkZSAiaW50ZWxfZmIuaCINCj4gPiA+ID4gICNpbmNsdWRlICJpbnRl
bF9nbG9iYWxfc3RhdGUuaCINCj4gPiA+ID4gICNpbmNsdWRlICJpbnRlbF9oZGNwLmgiDQo+ID4g
PiA+ICAjaW5jbHVkZSAiaW50ZWxfcHNyLmgiDQo+ID4gPiA+IEBAIC0zNzUsNiArMzc2LDUyIEBA
IHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19zZXR1cF9zY2FsZXIoc3RydWN0IGludGVsX2NydGNf
c2NhbGVyX3N0YXRlICpzY2FsZXJfc3RhDQo+ID4gPiA+ICAJCW1vZGUgPSBTS0xfUFNfU0NBTEVS
X01PREVfRFlOOw0KPiA+ID4gPiAgCX0NCj4gPiA+ID4gIA0KPiA+ID4gPiArCWlmIChwbGFuZV9z
dGF0ZSAmJiBwbGFuZV9zdGF0ZS0+aHcuZmIpIHsNCj4gPiA+ID4gKwkJY29uc3Qgc3RydWN0IGRy
bV9mcmFtZWJ1ZmZlciAqZmIgPSBwbGFuZV9zdGF0ZS0+aHcuZmI7DQo+ID4gPiA+ICsJCXN0cnVj
dCBkcm1fcmVjdCAqc3JjID0gJnBsYW5lX3N0YXRlLT51YXBpLnNyYzsNCj4gPiA+ID4gKwkJc3Ry
dWN0IGRybV9yZWN0ICpkc3QgPSAmcGxhbmVfc3RhdGUtPnVhcGkuZHN0Ow0KPiA+ID4gDQo+ID4g
PiBXZSB3YW50IHRoZSBzY2FsZSBmYWN0b3IgY2hlY2tzIGZvciB0aGUgcGZpdCB1c2UgY2FzZSB0
b28uIFNvIHRoaXMNCj4gPiA+IHN0dWZmIHNob3VsZG4ndCBiZSBzbyB0aWVkIGludG8gcGxhbmVz
LiBJIGd1ZXNzIHdlIGNvdWxkIGdvIHdpdGgNCj4gPiA+IGEgRklYTUUgaW5pdGlhbGx5Lg0KPiA+
IA0KPiA+IE9rYXksIEknbGwgYWRkIGEgRklYTUUuICBJdCB3YXMgdGllZCB0byB0aGUgcGxhbmUg
Y2hlY2tzIGJlZm9yZSwNCj4gPiB0aG91Z2gsIHdhc24ndCBpdD8gU28gbm90aGluZyBzaG91bGQg
aGF2ZSBjaGFuZ2VkIGluIHRoYXQgcmVnYXJkIGhlcmUuDQo+ID4gDQo+ID4gDQo+ID4gPiA+ICsJ
CWludCBoc2NhbGUsIHZzY2FsZSwgbWF4X3ZzY2FsZSwgbWF4X2hzY2FsZTsNCj4gPiA+ID4gKw0K
PiA+ID4gPiArCQlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDE0KSB7DQo+ID4gPiA+ICsJ
CQkvKg0KPiA+ID4gPiArCQkJICogT24gdmVyc2lvbnMgMTQgYW5kIHVwLCBvbmx5IHRoZSBmaXJz
dA0KPiA+ID4gPiArCQkJICogc2NhbGVyIHN1cHBvcnRzIGEgdmVydGljYWwgc2NhbGluZyBmYWN0
b3INCj4gPiA+ID4gKwkJCSAqIG9mIG1vcmUgdGhhbiAxLjAsIHdoaWxlIGEgaG9yaXpvbnRhbA0K
PiA+ID4gPiArCQkJICogc2NhbGluZyBmYWN0b3Igb2YgMy4wIGlzIHN1cHBvcnRlZC4NCj4gPiA+
ID4gKwkJCSAqLw0KPiA+ID4gPiArCQkJbWF4X2hzY2FsZSA9IDB4MzAwMDAgLSAxOw0KPiA+ID4g
PiArCQkJaWYgKCpzY2FsZXJfaWQgPT0gMCkNCj4gPiA+ID4gKwkJCQltYXhfdnNjYWxlID0gMHgz
MDAwMCAtIDE7DQo+ID4gPiA+ICsJCQllbHNlDQo+ID4gPiA+ICsJCQkJbWF4X3ZzY2FsZSA9IDB4
MTAwMDA7DQo+ID4gPiANCj4gPiA+IFdlIHN0aWxsIGhhdmUgdGhlIGNoaWNrZW4gdnMuIGVnZyBw
cm9ibGVtIGhlcmUgdGhhdCB3ZSdkIG5lZWQgdG8NCj4gPiA+IGNvbnNpZGVyIHRoZSBzY2FsZSBm
YWN0b3JzIGFscmVhZHkgd2hlbiBzZWxlY3RpbmcgdGhlIHNjYWxlci4NCj4gPiA+IEJ1dCB0aGF0
IGNvdWxkIGJlIGFub3RoZXIgRklYTUUuDQo+ID4gDQo+ID4gRG8geW91IG1lYW4gaW4gcmVnYXJk
cyB0byB0aGUgSFEgdnMuIG5vbi1IUSBuZWVkcz8NCj4gDQo+IEkgbWVhbiB0aGUgIm5vIGRvd25z
Y2FsaW5nIG9uIHRoZSBzZWNvbmQgc2NhbGVyIiB0aGluZy4gVGhlDQo+IHByb2JsZW0gaXMgdGhh
dCB0aGlzIHRoaW5nIHdhbGtzIHRoZSBzY2FsZXIgdXNlcnMgaW4gb3JkZXINCj4gYW5kIGFzc2ln
bnMgZWFjaCBvbmUgYSBzY2FsZXIgaW4gdHVybi4gU28gaWYgdGhlIGZpcnN0IHVzZXINCj4gZG9l
c24ndCBuZWVkIGRvd25zY2FsaW5nIGJ1dCB0aGUgc2Vjb25kIG9uZSBkb2VzIHRoZW4gd2UNCj4g
d2lsbCBmYWlsLiBPVE9IIGhhZCB3ZSBqdXN0IGFzc2lnbmVkIHRoZSBzY2FsZXJzIGluIHRoZQ0K
PiByZXZlcnNlIG9yZGVyIHdlIHdvdWxkIGhhdmUgc3VjY2VlZGVkLg0KDQpBaCwgbm93IEkgZ2V0
IGl0Lg0KDQpTbywgSSBndWVzcyB3ZSBjYW4gZG8gYSBzaW1pbGFyIHRoaW5nIHRvIHdoYXQgd2Ug
YWxyZWFkeSBkbyBlYXJsaWVyIGluDQp0aGlzIGZ1bmN0aW9uIHRvIHNlbGVjdCB0aGUgZmlyc3Qg
c2NhbGVyIGlmIEhRIGlzIG5lZWRlZC4gIElmDQpkb3duc2NhbGluZyBpcyBuZWVkZWQgaW4gb25l
IG9mIHRoZSBzY2FsZXJzIGJ1dCBub3QgaW4gdGhlIG90aGVyLCB3ZQ0KY2FuIHN3YXAgdGhlbSB0
byBtYWtlIHN1cmUgdGhlIG9uZSB0aGF0IG5lZWRzIGRvd25zY2FsaW5nIGluIGluIHRoZQ0KZmly
c3Qgb25lLg0KDQpCdXQgSSBhZ3JlZSB3aXRoIHlvdSBpbiB0aGF0IHRoaXMgY291bGQgYmUgYW4g
YWRkZWQgRklYTUUgaW4gdGhpcyBwYXRjaA0KYW5kIHRoZSBhY3R1YWwgY2hhbmdlIGNvdWxkIGJl
IG1hZGUgaW4gYSBzZXBhcmF0ZSBwYXRjaC4NCg0KDQo+ID4gPiA+ICsNCj4gPiA+ID4gKwkJfSBl
bHNlIGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTAgfHwNCj4gPiA+ID4gKwkJCSAgICFp
bnRlbF9mb3JtYXRfaW5mb19pc195dXZfc2VtaXBsYW5hcihmYi0+Zm9ybWF0LCBmYi0+bW9kaWZp
ZXIpKSB7DQo+ID4gPiA+ICsJCQltYXhfaHNjYWxlID0gMHgzMDAwMCAtIDE7DQo+ID4gPiA+ICsJ
CQltYXhfdnNjYWxlID0gMHgzMDAwMCAtIDE7DQo+ID4gPiA+ICsJCX0gZWxzZSB7DQo+ID4gPiA+
ICsJCQltYXhfaHNjYWxlID0gMHgyMDAwMCAtIDE7DQo+ID4gPiA+ICsJCQltYXhfdnNjYWxlID0g
MHgyMDAwMCAtIDE7DQo+ID4gPiA+ICsJCX0NCj4gPiA+IA0KPiA+ID4gUHJlLWdsayBocSBzY2Fs
ZXIgY2FzZSBub3QgaGFuZGxlZC4NCj4gPiANCj4gPiBJIGRvbid0IHJlY2FsbCBzZWVuIHRoaXMg
c3BlY2lmaWNhbGx5IGNoZWNrZWQgYmVmb3JlLiAgSXMgdGhpcyB0aGUNCj4gPiBzdHVmZiBJIG1p
c3NlZCBmcm9tIGc0eF9zcHJpdGVfY2hlY2soKSBiZWxvdz8gT3IgYW0gSSBtaXNzaW5nIHNvbWV0
aGluZw0KPiA+IGVsc2U/DQo+IA0KPiBJdCB3YXMgYnJva2VuIGJlZm9yZSBpbiB0aGUgc2Vuc2Ug
dGhhdCBpdCBhbGxvd2VkIHVwIHRvIDMuMCBzY2FsZSBmYWN0b3INCj4gd2hldGhlciBvciBub3Qg
dGhlIEhRIHNjYWxlciB3YXMgdXNlZCBvciBub3QuIE5vdyBpdCB3aWxsIHJlamVjdCBhbnl0aGlu
Zw0KPiBhYm92ZSAyLjAgZXZlbiBpZiB0aGUgSFEgc2NhbGVyIGlzIHVzZWQuIFNvIEkgZ3Vlc3Mg
dGVjaG5pY2FsbHkgaXQncyBhIGJpdA0KPiBsZXNzIGJyb2tlbiBub3csIGJ1dCBtb3JlIGxpbWl0
ZWQuIEFueXdheXMsIHNob3VsZCBiZSBwb3NzaWJsZSB0byBqdXN0DQo+IGNoZWNrIHRoZSBzY2Fs
ZXIgbW9kZSBhbmQgcGljayB0aGUgY29ycmVjdCBzY2FsaW5nIGxpbWl0cyBiYXNlZCBvbiBpdC4N
Cg0KSSBzZWUgd2hhdCB5b3UgbWVhbi4gIEJ1dCB0aGUgY29kZSBmcm9tIGJlZm9yZSBoYWQgdGhl
IGV4YWN0IHNhbWUNCnRoaW5nLCBJIHRoaW5rPyBXZSB3ZXJlIGFsc28gY2hlY2tpbmcgZm9yIFZF
UiA+PSAxMCBhbmQgb25seSB0aGVuIHVzaW5nDQozLjAuICBGb3IgYW55dGhpbmcgZWxzZSB0aGUg
bGltaXQgd2FzIDIuMC4gIElzIHlvdXIgY29tbWVudCByZWxhdGVkIHRvDQp0aGUgRklYTUUgSSBy
ZW1vdmVkIGZyb20gYmVsb3c/ICh5b3VyIGxhc3QgY29tbWVudCBpbiB0aGlzIGVtYWlsKQ0KDQoN
Cj4gPiA+ID4gKw0KPiA+ID4gPiArCQkvKiBDaGVjayBpZiByZXF1aXJlZCBzY2FsaW5nIGlzIHdp
dGhpbiBsaW1pdHMgKi8NCj4gPiA+ID4gKwkJaHNjYWxlID0gZHJtX3JlY3RfY2FsY19oc2NhbGUo
c3JjLCBkc3QsIDEsIG1heF9oc2NhbGUpOw0KPiA+ID4gPiArCQl2c2NhbGUgPSBkcm1fcmVjdF9j
YWxjX3ZzY2FsZShzcmMsIGRzdCwgMSwgbWF4X3ZzY2FsZSk7DQo+ID4gPiA+ICsNCj4gPiA+ID4g
KwkJaWYgKGhzY2FsZSA8IDAgfHwgdnNjYWxlIDwgMCkgew0KPiA+ID4gPiArCQkJZHJtX2RiZ19r
bXMoJmRldl9wcml2LT5kcm0sDQo+ID4gPiA+ICsJCQkJICAgICJTY2FsZXIgJWQgZG9lc24ndCBz
dXBwb3J0IHJlcXVpcmVkIHBsYW5lIHNjYWxpbmdcbiIsDQo+ID4gPiA+ICsJCQkJICAgICpzY2Fs
ZXJfaWQpOw0KPiA+ID4gPiArCQkJZHJtX3JlY3RfZGVidWdfcHJpbnQoInNyYzogIiwgc3JjLCB0
cnVlKTsNCj4gPiA+ID4gKwkJCWRybV9yZWN0X2RlYnVnX3ByaW50KCJkc3Q6ICIsIGRzdCwgZmFs
c2UpOw0KPiA+ID4gPiArDQo+ID4gPiA+ICsJCQlzY2FsZXJfc3RhdGUtPnNjYWxlcnNbKnNjYWxl
cl9pZF0uaW5fdXNlID0gMDsNCj4gPiA+ID4gKwkJCSpzY2FsZXJfaWQgPSAtMTsNCj4gPiA+ID4g
Kw0KPiA+ID4gPiArCQkJcmV0dXJuOw0KPiA+ID4gDQo+ID4gPiBUaGlzIHdvdWxkIGhhdmUgdG8g
cmV0dXJuIGFuIGVycm9yIHJhdGhlciB0aGFuIHByZXRlbmRpbmcgdGhhdA0KPiA+ID4gZXZlcnl0
aGluZyBpcyBmaW5lLg0KPiA+IA0KPiA+IFdlIHdlcmUgYWxyZWFkeSBwcmV0ZW5kaW5nIGV2ZXJ5
dGhpbmcgaXMgZmluZSBpZiBhIHNjYWxlciBpZiB3ZQ0KPiA+IGNvdWxkbid0IGZpbmQgYSBmcmVl
IHNjYWxlciwgZm9yIGluc3RhbmNlLCBzbyBJIGp1c3Qga2VwdCB0aGUgc2FtZQ0KPiA+IGxvZ2lj
LCBjbGVhcmluZyB1cCB0aGUgc2NhbGVyX2lkIGFuZCBtYXJraW5nIHRoZSBzY2FsZXIgYXMgbm90
IGluIHVzZQ0KPiA+IGFzIHdlbGwuDQo+ID4gDQo+ID4gSSBjYW4gY29udmVydCB0aGlzIHRvIHJl
dHVybiBhbiBlcnJvciwgb2YgY291cnNlLiAgQnV0IHRoZW4gaW4gdGhlICJub3QNCj4gPiBmcmVl
IHNjYWxlciIgY2FzZSB3ZSB3b3VsZCBzdGlsbCBqdXN0IGlnbm9yZSBpdCBvciBzaG91bGQgd2Ug
Y2hhbmdlIHRoZQ0KPiA+IGJlaGF2aW9yIGFuZCBtYWtlIGl0IGZhaWwgYXMgd2VsbD8NCj4gDQo+
IFRoZSBjb2RlIGlzIGEgbWVzcywgYnV0IGl0IGRvZXMgbG9vayBsaWtlIGludGVsX2F0b21pY19z
ZXR1cF9zY2FsZXJzKCkNCj4gc2hvdWxkIGZhaWwgY29ycmVjdGx5IGlmIHdlIGNhbid0IGZpbmQg
ZW5vdWdoIHNjYWxlcnMuDQoNCk9rYXksIHNvIEknbGwgY2hhbmdlIHRoaXMgZnVuY3Rpb24gdG8g
cmV0dXJuIGVycm9ycyBpbiBib3RoIGNhc2VzLg0KDQoNCj4gPiBbLi4uXQ0KPiA+ID4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMNCj4g
PiA+ID4gaW5kZXggMTBlMWZjOWQwNjk4Li45MTAwZjMyOGRmNjAgMTAwNjQ0DQo+ID4gPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMNCj4g
PiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxh
bmUuYw0KPiA+ID4gPiBAQCAtODg3LDcgKzg4Nyw3IEBAIHZvaWQgaW50ZWxfY3J0Y19wbGFuZXNf
dXBkYXRlX2FybShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiA+ID4gIA0K
PiA+ID4gPiAgaW50IGludGVsX2F0b21pY19wbGFuZV9jaGVja19jbGlwcGluZyhzdHJ1Y3QgaW50
ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlLA0KPiA+ID4gPiAgCQkJCSAgICAgIHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+ID4gPiAtCQkJCSAgICAgIGludCBtaW5f
c2NhbGUsIGludCBtYXhfc2NhbGUsDQo+ID4gPiA+ICsJCQkJICAgICAgYm9vbCBhbGxvd19zY2Fs
aW5nLA0KPiA+ID4gPiAgCQkJCSAgICAgIGJvb2wgY2FuX3Bvc2l0aW9uKQ0KPiA+ID4gPiAgew0K
PiA+ID4gPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShwbGFuZV9z
dGF0ZS0+dWFwaS5wbGFuZS0+ZGV2KTsNCj4gPiA+ID4gQEAgLTg5NywxOSArODk3LDUwIEBAIGlu
dCBpbnRlbF9hdG9taWNfcGxhbmVfY2hlY2tfY2xpcHBpbmcoc3RydWN0IGludGVsX3BsYW5lX3N0
YXRlICpwbGFuZV9zdGF0ZSwNCj4gPiA+ID4gIAljb25zdCBzdHJ1Y3QgZHJtX3JlY3QgKmNsaXAg
PSAmY3J0Y19zdGF0ZS0+cGlwZV9zcmM7DQo+ID4gPiA+ICAJdW5zaWduZWQgaW50IHJvdGF0aW9u
ID0gcGxhbmVfc3RhdGUtPmh3LnJvdGF0aW9uOw0KPiA+ID4gPiAgCWludCBoc2NhbGUsIHZzY2Fs
ZTsNCj4gPiA+ID4gKwlpbnQgbWF4X2hzY2FsZSwgbWluX2hzY2FsZSwgbWF4X3ZzY2FsZSwgbWlu
X3ZzY2FsZTsNCj4gPiA+ID4gIA0KPiA+ID4gPiAgCWlmICghZmIpIHsNCj4gPiA+ID4gIAkJcGxh
bmVfc3RhdGUtPnVhcGkudmlzaWJsZSA9IGZhbHNlOw0KPiA+ID4gPiAgCQlyZXR1cm4gMDsNCj4g
PiA+ID4gIAl9DQo+ID4gPiA+ICANCj4gPiA+ID4gKwkvKg0KPiA+ID4gPiArCSAqIEF0IHRoaXMg
cG9pbnQgd2UgZG9uJ3QgcmVhbGx5IGtub3cgdGhlIEhXIGxpbWl0YXRpb25zLCBzbw0KPiA+ID4g
PiArCSAqIHdlIGp1c3Qgc2FuaXRpemUgdGhlIHZhbHVlcyBhZ2FpbnN0IHRoZSBtYXhpbXVtIHN1
cHBvcnRlZA0KPiA+ID4gPiArCSAqIHNjYWxpbmcuDQo+ID4gPiA+ICsJICovDQo+ID4gPiA+ICsJ
aWYgKGFsbG93X3NjYWxpbmcpIHsNCj4gPiA+ID4gKwkJbWluX3ZzY2FsZSA9IDE7DQo+ID4gPiA+
ICsJCW1pbl9oc2NhbGUgPSAxOw0KPiA+ID4gPiArDQo+ID4gPiA+ICsJCWlmIChESVNQTEFZX1ZF
UihpOTE1KSA8IDEwIHx8DQo+ID4gPiA+ICsJCSAgICBpbnRlbF9mb3JtYXRfaW5mb19pc195dXZf
c2VtaXBsYW5hcihmYi0+Zm9ybWF0LA0KPiA+ID4gPiArCQkJCQkJCWZiLT5tb2RpZmllcikpIHsN
Cj4gPiA+ID4gKwkJCW1heF92c2NhbGUgPSAweDIwMDAwIC0gMTsNCj4gPiA+ID4gKwkJCW1heF9o
c2NhbGUgPSAweDIwMDAwIC0gMTsNCj4gPiA+ID4gKwkJfSBlbHNlIHsNCj4gPiA+ID4gKwkJCW1h
eF92c2NhbGUgPSAweDMwMDAwIC0gMTsNCj4gPiA+ID4gKwkJCW1heF9oc2NhbGUgPSAweDMwMDAw
IC0gMTsNCj4gPiA+ID4gKwkJfQ0KPiA+ID4gPiArCX0gZWxzZSB7DQo+ID4gPiA+ICsJCW1pbl9o
c2NhbGUgPSBEUk1fUExBTkVfTk9fU0NBTElORzsNCj4gPiA+ID4gKwkJbWF4X2hzY2FsZSA9IERS
TV9QTEFORV9OT19TQ0FMSU5HOw0KPiA+ID4gPiArCQltaW5fdnNjYWxlID0gRFJNX1BMQU5FX05P
X1NDQUxJTkc7DQo+ID4gPiA+ICsJCW1heF92c2NhbGUgPSBEUk1fUExBTkVfTk9fU0NBTElORzsN
Cj4gPiA+ID4gKwl9DQo+ID4gPiANCj4gPiA+IEkgc3RpbGwgZG9uJ3Qgc2VlIHRoZSBwb2ludCBp
biBtb3ZpbmcgdGhpcyBodyBzcGVjaWZpYyBrbm93bGVkZ2UNCj4gPiA+IGZyb20gdGhlIG1vcmUg
aHcgc3BlY2lmaWMgZmlsZXMgaW50byB0aGUgaHcgYWdub3N0aWMgZmlsZS4NCj4gPiANCj4gPiBJ
cyB0aGlzIGZpbGUgcmVhbGx5IHRoYXQgSFcgYWdub3N0aWM/IEkgc2VlIGxvdHMgb2YgdmVyc2lv
biBjaGVja3Mgd2l0aA0KPiA+ICJpZiAoRElTUExBWV9WRVIoeCkpIiBhbGwgb3ZlciB0aGUgcGxh
Y2UuDQo+IA0KPiBJdCdzIGh3IGFnbm9zdGljIGluIHRoZSBzZW5zZSB0aGF0IG1vc3Qgb2YgaXQg
YXBwbGllcw0KPiB0byBhbGwgaHcgZ2VuZXJhdGlvbnMuIEFuZCB0aGlzIGZ1bmN0aW9uIGluIHBh
cnRpY3VsYXIgaXMNCj4gcHJldHR5IG11Y2ggZW50aXJlbHkgaHcgYWdub3N0aWMgY3VycmVudGx5
Lg0KPiANCg0KDQoNCg0KPiA+IEFzIHdlIGRpc2N1c3NlZCBiZWZvcmUsIEkgdGhpbmsgdGhpcyBr
aW5kIG9mIHJ1bGVzIHNob3VsZCBiZSBpbiBIVy0NCj4gPiBzcGVjaWZpYyBjb25maWd1cmF0aW9u
cywgYnV0IHdlIGRvbid0IGhhdmUgdGhhdCB5ZXQuICBBbmQgSSB0aG91Z2h0IGl0DQo+ID4gd291
bGQgYmUgYmV0dGVyIHRvIGtlZXAgdGhlc2UgZGVjaXNpb25zIGluIGEgc2luZ2xlIHBsYWNlIHJh
dGhlciB0aGFuDQo+ID4ganVzdCBjYWxsaW5nIGZ1bmN0aW9ucyBpbiBvdGhlciBmaWxlcy4uLg0K
PiA+IA0KPiA+IElmIHlvdSBwcmVmZXIsIEkgY2FuIG1vdmUgdGhpcyBiYWNrIHRvIHNrbF91bml2
ZXJzYWxfcGxhbmUuYyBvciBzb21lDQo+ID4gb3RoZXIgb2YgdGhlIHNrbF8qLmMgZmlsZXMsIGJ1
dCBUQkggdGhleSBkb24ndCBzZWVtIHRvIGJlIHRoZSByaWdodA0KPiA+IHBsYWNlIGZvciB0aGlz
IHRvIG1lIGVpdGhlci4uLg0KPiANCj4gVGhlIGN1cnJlbnQgcGxhY2Uga25vd3MgZXhhY3RseSB3
aGF0IGtpbmQgb2YgaGFyZHdhcmUvcGxhbmUgaXRzDQo+IGRlYWxpbmcgd2l0aCwgYW5kIHRodXMg
a25vd3MgaXRzIGxpbWl0cy4gU2VlbXMgcGVyZmVjdGx5IGZpbmUgdG8gbWUuDQoNCkJ5ICJjdXJy
ZW50IHBsYWNlIiB5b3UgbWVhbiBiZWZvcmUgdGhpcyBwYXRjaD8gSS5lLiBpbg0Kc2tsX3VuaXZl
cnNhbF9wbGFuZS5jPw0KDQoNCj4gPiBbLi4uXQ0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMNCj4gPiA+ID4gaW5kZXggZTZiNGQyNGI5Y2QwLi45
YWQxMTczYTA1NTEgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfc3ByaXRlLmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9zcHJpdGUuYw0KPiA+ID4gPiBAQCAtMTM1NSwyMiArMTM1NSwxMSBAQCBn
NHhfc3ByaXRlX2NoZWNrKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+
ID4gPiAgew0KPiA+ID4gPiAgCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUgPSB0b19pbnRlbF9w
bGFuZShwbGFuZV9zdGF0ZS0+dWFwaS5wbGFuZSk7DQo+ID4gPiA+ICAJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShwbGFuZS0+YmFzZS5kZXYpOw0KPiA+ID4gPiAt
CWludCBtaW5fc2NhbGUgPSBEUk1fUExBTkVfTk9fU0NBTElORzsNCj4gPiA+ID4gLQlpbnQgbWF4
X3NjYWxlID0gRFJNX1BMQU5FX05PX1NDQUxJTkc7DQo+ID4gPiA+ICAJaW50IHJldDsNCj4gPiA+
ID4gIA0KPiA+ID4gPiAtCWlmIChnNHhfZmJfc2NhbGFibGUocGxhbmVfc3RhdGUtPmh3LmZiKSkg
ew0KPiA+ID4gPiAtCQlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpIDwgNykgew0KPiA+ID4gPiAt
CQkJbWluX3NjYWxlID0gMTsNCj4gPiA+ID4gLQkJCW1heF9zY2FsZSA9IDE2IDw8IDE2Ow0KPiA+
ID4gPiAtCQl9IGVsc2UgaWYgKElTX0lWWUJSSURHRShkZXZfcHJpdikpIHsNCj4gPiA+ID4gLQkJ
CW1pbl9zY2FsZSA9IDE7DQo+ID4gPiA+IC0JCQltYXhfc2NhbGUgPSAyIDw8IDE2Ow0KPiA+ID4g
PiAtCQl9DQo+ID4gPiA+IC0JfQ0KPiA+ID4gDQo+ID4gPiBTbyB3aGF0IGhhcHBlbmVkIHRvIHRo
ZXNlIGxpbWl0cz8NCj4gPiANCj4gPiBPaCwgaXQgc2VlbXMgdGhhdCBJIGxvc3QgdGhlbS4gIEkg
Z3Vlc3MgdGhleSBzaG91bGQgYmUgbW92ZWQgdG8gdGhlDQo+ID4gaW50ZWxfYXRvbWljX3BsYW5l
X2NoZWNrX2NsaXBwaW5nKCkgZnVuY3Rpb24uICBBZ2FpbiwgdG8ga2VlcCBpdCBhbGwgaW4NCj4g
PiBhIHNpbmdsZSBwbGFjZS4gIEJ1dCB0aGlzIHNlZW1zIHRvIGJlIG9ubHkgcmVxdWlyZWQgaW4g
dGhlIHNwcml0ZSBjb2RlLA0KPiA+IHNvIEknbSBub3Qgc3VyZSB3aGF0IEkgY2FuIGRvLg0KPiA+
IA0KPiA+IEl0J3MgYSBwcm9ibGVtIHRvIGhhdmUgdGhpcyBraW5kcyBvZiBjaGVja3MgZXZlcnl3
aGVyZS4g8J+Yng0KPiA+IA0KPiA+IA0KPiA+IFsuLi5dDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+ID4gPiA+IGlu
ZGV4IDc2NDkwY2M1OWQ4Zi4uZTJhZTY2MjQzNzhmIDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiA+ID4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0K
PiA+ID4gPiBAQCAtMTQ2MywyMiArMTQ2Myw2IEBAIHN0YXRpYyBpbnQgc2tsX3BsYW5lX2NoZWNr
X252MTJfcm90YXRpb24oY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zDQo+
ID4gPiA+ICAJcmV0dXJuIDA7DQo+ID4gPiA+ICB9DQo+ID4gPiA+ICANCj4gPiA+ID4gLXN0YXRp
YyBpbnQgc2tsX3BsYW5lX21heF9zY2FsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsDQo+ID4gPiA+IC0JCQkgICAgICAgY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIp
DQo+ID4gPiA+IC17DQo+ID4gPiA+IC0JLyoNCj4gPiA+ID4gLQkgKiBXZSBkb24ndCB5ZXQga25v
dyB0aGUgZmluYWwgc291cmNlIHdpZHRoIG5vcg0KPiA+ID4gPiAtCSAqIHdoZXRoZXIgd2UgY2Fu
IHVzZSB0aGUgSFEgc2NhbGVyIG1vZGUuIEFzc3VtZQ0KPiA+ID4gPiAtCSAqIHRoZSBiZXN0IGNh
c2UuDQo+ID4gPiA+IC0JICogRklYTUUgbmVlZCB0byBwcm9wZXJseSBjaGVjayB0aGlzIGxhdGVy
Lg0KPiA+ID4gPiAtCSAqLw0KPiA+ID4gDQo+ID4gPiBEb2Vzbid0IGxvb2sgbGlrZSB0aGF0IEZJ
WE1FIGhhcyBiZWVuIGRlYWx0IHdpdGggYXMgZmFyDQo+ID4gPiBhcyB0aGUgaHEgc2NhbGVyIGlz
IGNvbmNlcm5lZC4NCj4gPiANCj4gPiBXZSBub3cgY2hlY2sgdGhlIGxpbWl0cyBfYWZ0ZXJfIGhh
dmluZyBkZWNpZGVkIHdoZXRoZXIgSFEgbW9kZSBpcyB1c2VkLg0KPiA+IFNvIHRoYXQgc2hvdWxk
IGJlIGNvdmVyZWQsIHJpZ2h0Pw0KPiANCj4gSWYgd2UgYWN0YXVsbHkgYWRkIHRoZSBocSBtb2Rl
IGNoZWNrIHdoZW4gZGV0ZXJtaW5pbmcgdGhlIHNjYWxpbmcNCj4gbGltaXRzLg0KDQpSaWdodCwg
c28gdGhlIG5ldyBGSVhNRSBJJ2xsIGFkZCBhcyBkaXNjdXNzZWQgYWJvdmUgc2hvdWxkIGNvdmVy
IHRoaXMuDQoNCi0tDQpDaGVlcnMsDQpMdWNhLg0K
