Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA1C60E822
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 21:03:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FF3310E73E;
	Wed, 26 Oct 2022 19:03:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0921410E73B
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 19:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666810978; x=1698346978;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version; bh=1oBzp2JCfBimZliuMFdanL9DTLiKPaCM90tukNrUaPo=;
 b=O5NBAQyOVqRVVfed1kMndSZZkZxTMxDbA5uqbhk/GFKGc47+mnp+Ljrr
 wBp/thr9saUf3PMMlubBFUT9QrpfE4TWsIGe91Bs5BdpahINxc/DPd6ZP
 yQZ5aaLIW6pxXGxiFkNYAOy1pi4nMteo7V21WlsdzSq0UhoiGYHsWvEJj
 SrfDKKTz1xJ9HM6+DJVL1u+QODuf4xJUSMq3raB8stI7Yc3imNEmZZ/Yj
 HWUncfYHSlYnKXQmzSLPd+FFHyyUvU03Ik/ditYGwWrahS9lSFyaXK56W
 jrnI5T7e2kPHhZvNvxErGiQIOJvKpZWJ7950f1FZPbhAMe7AI2rVmvap5 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="291340318"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; 
 d="scan'208,217";a="291340318"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 12:02:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="774714121"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; 
 d="scan'208,217";a="774714121"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 26 Oct 2022 12:02:56 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 26 Oct 2022 12:02:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 26 Oct 2022 12:02:56 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 26 Oct 2022 12:02:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SjibzjqVtCimwWM64SceJNCZ2duqI8D/JjBPO+PTM0RQJQ7JBAnSL4ZIj72dJjoCRHxGYpiqYIQu44yrJBRSVPdpWrM5GoA9GCyhm8tcaUBdF/swdt+tuYQmND/N6XQo74G1JCPTSjdazOSOWlniBI99dzXe3ZV/JVviPpPjgeY3FT9FWX4LRyt6w3WbINMvBxcC8+SZ5nOFPD+eDN9O0NqI6WKKAHkiK/vWib+KFdeFOhDcp1WJxjJQ7gH2VGO8I2v8bDqWHWXBZrgCqRBzlCPtBCBbZ6RHIbffOKeEN8eiLldu3S71WTIuIFjKOXB0fnT4ZocgFKlbP+kytkEn/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1oBzp2JCfBimZliuMFdanL9DTLiKPaCM90tukNrUaPo=;
 b=ZN+6ZyCvGM2/4fwyeIEH3p2GRbhY6+1SK1Q+lcBgFnyuPI/MzJijJJa55a04EiFdMtvbPRSCoRC8J1X7lZCAYPYjZ7lbnl+eBXS20F5tgIskvvYawV1SPiZQwymsJaNvopmhIaN7A2dZ3xp6C4TNhmnwTzASdoy4DnRIIAYOSvw4dOarqteGzA+ezMeq8dI9m9iM8Pl0+eeOmJ4ihrR+YikAmtITYyMfPGRj/imPsKX9Bk4IKQJn5bx/gjyV3vuDJU4AbTp2MAf3nJ/kDaAlPk2wkrdS+1e2Z+VicfYSixDI4vq0FlwGG5gG+n0AJf+m3SoSUzVDwKFwtjQoMrhwLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SJ0PR11MB5815.namprd11.prod.outlook.com (2603:10b6:a03:426::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5746.23; Wed, 26 Oct 2022 19:02:53 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf%7]) with mapi id 15.20.5746.028; Wed, 26 Oct 2022
 19:02:53 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRGVsYXkgZGlzYWJsaW5nIEd1?=
 =?utf-8?Q?C_scheduling_of_an_idle_context_(rev2)?=
Thread-Index: AQHY6WUmhUJ47pNgK0iPoiUH654xZq4hCO0A
Date: Wed, 26 Oct 2022 19:02:53 +0000
Message-ID: <2d6e3189ab10fe80bc1eba4b0b045476cde37857.camel@intel.com>
References: <20221006225121.826257-1-alan.previn.teres.alexis@intel.com>
 <166680734906.25382.3781373148229992750@emeril.freedesktop.org>
In-Reply-To: <166680734906.25382.3781373148229992750@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SJ0PR11MB5815:EE_
x-ms-office365-filtering-correlation-id: 902fb3fc-8dfc-409d-770e-08dab784af76
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N1JvFvRDD4Ea7Z6MpGuOwoIzjfuC783pdGN1aNId8kmPx8VqXZCM4yXlJ3ZMT6H0GO2P+Pu5EDSWV7BqZJ4kh2gVPZUrQAKMq8YlhYMJHv+n7oQmHPDChmn/pFsMm+XHv19Sgnautbzb+JoDsi8GnNIQVVHi7iXlaGVSClozuJAhDNJjZcJnuiUnTPRUepeeimMBVXja0K1ytnw5yyQnwY9HtRTrTw+BFc6910G2WlRdCYY9svHw7jKJPefZna4A2pYE93y/wIVi+rlNFp6tSjnSx1Znu4gWH3RRZjS2qAoRhxXA3qyOpfhdohzuNum8PITCC4TlJzAvTxWbMKkEe04Sj8W+9wdLSClMxG4jdmQQHg2HSPf/kKN6ZtGEwOjCgmqCEpZY0cNIRDE1h1aLWTWpnC/YdQFnH40NuGFEExlhEP3GjNUM/60Y9L0s+3bHgVKffFMH5aVFvIqB41wQ3J/bUpUn1/qduOih1k1Bu6Ad9Vyr+56ziL9LABv+kl3aZa/nKjNPrui+HQhCbaiWNmJLuKr3+aW9Wxtj8st2THnRQ29SqobKe+jhYI7hAMQtcctgAbBIy0mRq2rR0crZkXY7eNZ2SuvJtFPjLbSIfrwD9BOYBEW1ZskG+hgRWjxRTU7Kbd/pAxPomqG3f+nTT5LzhzsRiRzECV58azEDhHeNmQZ64l3XIYoR6IwTTkyWlboGwd5UvQieOoAc1n6J4sUllbwfQoaye69mDE2WlfixAQ+tWPHQOjm6WBJRd9B9ebG2H3tZZgIW8PS/8ZBgBIJXlhBmIym5hwVoKDLMNX6+BUh8FkNl2fSkyZA891UDAev+X+SicLOeJ2LY6KWqew==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(366004)(39860400002)(136003)(376002)(451199015)(2616005)(83380400001)(5660300002)(86362001)(38100700002)(166002)(38070700005)(82960400001)(41300700001)(71200400001)(966005)(21615005)(8936002)(122000001)(6486002)(478600001)(66476007)(76116006)(64756008)(66946007)(66446008)(91956017)(6916009)(316002)(6512007)(2906002)(4001150100001)(66556008)(6506007)(186003)(40265005)(26005)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MlJPNVBuNlU1K2lxUVdxMEF3Q3hZZ0tmL1M5TVhjTkpJS2w5WTFZVWNwRmds?=
 =?utf-8?B?blZZN3ZoVTBsQUI0ckNJVSt0bEQvR09SQ3JHRTVLQXlMS04zWS9sYUlZSXBa?=
 =?utf-8?B?b3N0alpkS2Y1V0Q1NkYzZFhxbEZJRXNIeS9VYzhLWmhnOUs2YlpRVXdMbEJ0?=
 =?utf-8?B?Nzl5czQvQzhvRnp3b0h0UVM3NmpFN3dsQ3AxOXJ5c2R5SUF5aFM0WGhRb2VJ?=
 =?utf-8?B?bTBxbjJjY2dSWHR1TjVGRnNjNWVUeW9ldzE2a0pJb3VBVFlUU25lSzFwWHNm?=
 =?utf-8?B?MUxKdFBzdDJzUDZCNGRjcGRmMDlqaUUycnQza09jUkJGQ2U4c2tPN3EzOWFV?=
 =?utf-8?B?UDFsZ0NudUZqQVdMbGpjdDlTTGtMYmhmdkVrRVUwMHJ2TG4vVno5cUNPL25x?=
 =?utf-8?B?RG9Fdi9vK1gvRWRJdFFZQ1Mwa2JaWE1TUkhVK3dYbmRjbWlZc1UxOEpIdUV6?=
 =?utf-8?B?Sm41bEtaNC9obDJ0VVVrUFEySWY3NXFpWEVjczFSQ1hNWFg1QWZweXdIMTdQ?=
 =?utf-8?B?TlcvTW82anBJTGZVNkFjMlhQU211RGdPZEVWamhUWUdtZnR4R01YL2g0TU1n?=
 =?utf-8?B?ZFdVWjNENms1VGpPalphQzNia0RXYngwK0kvMEErQXAwU3dyU2VPOXczaVNC?=
 =?utf-8?B?a1FoOHNLbmsvUmYvRFhsd3I0S2JpaXgwQUowSzNodjJ6aUN6cy9UdHViSE90?=
 =?utf-8?B?cDhGcmJEcUkvOER3N0E4L2dIL0h3TmhGMUVzcmJUb1JJU2kwVG9EaWJlRkd6?=
 =?utf-8?B?THUrQU5FYkYvRm81bkdBQUc2OUFJZzNKNWtTWnJtdUNUbWVTelJ4RzBoSkU4?=
 =?utf-8?B?cmhUMVV0YlhCS1NpeDFoSXp6WlV4MEZka2d4UFExZWlQREliVlhxNis2NW8x?=
 =?utf-8?B?QXkrVGZnMmgxemQzdEpVaXRSUDM3eG1ld2lsTnNMK2NvOStiVDBka0dRSWNp?=
 =?utf-8?B?U3oydHNTWGpETmNSdzhWSm1YcUpIQVpVYUR3NUJMOHd0NjV4dVMzdHBIZzJu?=
 =?utf-8?B?ZUFxaVNML2FBWnhleW9hM2pvRDVOME82SHdjOWN6UmNGVmljaEg0VGl5bUZN?=
 =?utf-8?B?NFRYTFpWUkhjU3lxcDJ3WVpvU2g5aXN5MHE0MHJsd3grdXQyeVhXNEpoMEN3?=
 =?utf-8?B?STJwYVJxK1ZXbzVKWDlIeEdKUlVkeksyOUtPVlhweTU4VEZqVUg4bU13QWxF?=
 =?utf-8?B?YS9mTnF2d21YczZDY3BPZS9ZUnVQam5XVndCZTFDZnAvZlV0U0JuU3Y5WEw5?=
 =?utf-8?B?ZnJyc0t5bStoODFyUTRYdldmZUkvVlJTWUtuaXMxcE9LUVUxTUFYdUFzY1Vs?=
 =?utf-8?B?U1RSY3FCUjd1dXNHaFROaDhXdGhsYVhkY3BnWVE1S1BBanljQ3Z5VmxnQko4?=
 =?utf-8?B?TVFLelhMMkZBK2lYaU9wa1JmTjVKQUVZNmlqTVFFM1FWRkNUV3k0NnBaOGVs?=
 =?utf-8?B?Y2J2bEVTRjFOWTRuNDBIOWhNS3VIemJoYTU2Z2pWc3lRa0NiUk1VS0p6UDZB?=
 =?utf-8?B?cTRxTnZvVEhkbEF4dHFVWjFjQWxMcjZEMkhDeE1UdUloWTBZZXlFSEhHRFgw?=
 =?utf-8?B?S3NDckNoZ0ZKendkaHg5bW0yM2N2UUlKbHZyM0FyU3JOdmVNRzJFZTBaU1lX?=
 =?utf-8?B?Nmd0VmZ6QkNrTHM2RGZYN2VJT0tVWXlKbnNkaVpVSCtTaHlZdjI3UTBSYmtz?=
 =?utf-8?B?N3dwTXBlb1Z1aEs2cHRpWTgrYVhtR1ZYME5nZitKWlplbkdVSFYyU2laSUFP?=
 =?utf-8?B?TmRyRVRZOExZTHc1ZDk2THhUYUFqUWp5WVNUMXBKeXdEUmMzMWsrN2huL2I0?=
 =?utf-8?B?V2RBZnAwcHdIeEJEUnBZK2tXL202a1ZsV1c3b0N3eHlWZ2FkeFBKai9OWTkv?=
 =?utf-8?B?SldDS2lLbnhuOGJsaUlyb0ZBRXUxRnRqcE5ZYURpVnprQ0ZtU1ZOSW92eE91?=
 =?utf-8?B?a3JiaHZZMk9SMC9DSTBJRzNYZzJXRGo0T0JTRDVHNHk5eWNBa2NQRzIySytB?=
 =?utf-8?B?MTRSa0Q3YlE1WU1oZ0p1YXRreVdvdnFHcGdFejhyc2dtc2o0cytvNjdJL2pI?=
 =?utf-8?B?QkNVNm5kdXhWQm1CSkR1LzhYeWtPS2hUSTdHV2FHODJmL0lmUVc5OENWekZj?=
 =?utf-8?B?VW1qbDRBRUZJamp3dHFaUUVyRlFLVjV6dkdnUUI1VG1Oc01pb2tTeUN6WVdv?=
 =?utf-8?Q?X8SILdKUpGdg3kCIXDObbKQ=3D?=
Content-Type: multipart/alternative;
 boundary="_000_2d6e3189ab10fe80bc1eba4b0b045476cde37857camelintelcom_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 902fb3fc-8dfc-409d-770e-08dab784af76
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2022 19:02:53.3376 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e+BxyBuF3HtETvTvegK8RZQtU39LRaSp0lcb3TSq2x2T854g1yqG8NoxyYdwTBZqAkqVTnXYcE5xDQc9RVgLB+pX0bwFmqvxQDeKtc+kfc9hO7PIBhdnjbHfDnWhDJQ/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5815
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRGVs?=
 =?utf-8?q?ay_disabling_GuC_scheduling_of_an_idle_context_=28rev2=29?=
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

--_000_2d6e3189ab10fe80bc1eba4b0b045476cde37857camelintelcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB2ZXJpZmllZCB0aGF0IDIgb2YgdGhlIDMgdGhlIGVycm9ycyByZXBvcnRlZCBiZWxvdyBhcmUg
b24gcGxhdGZvcm1zIHRoYXQgZG9uJ3Qgc3VwcG9ydCBHdUMgYW5kIHRoZSBkbWVzZ3MgY29uZmly
bSBndWMgd2FzIGRpc2FibGVkLg0KVGhlIHJlbWFpbmluZyBJQ0wgb25lLCB3ZSBrbm93IElDTCBk
b2VzbnQgc3VwcG9ydCBHdUMgLi4gYWxzbywgYWRkaXRpb25hbGx5LCB0aGUgZXJyb3Igd2FzIG9u
IGEgZGlzcGxheSBJR1Qgd2hlcmUgQ1JDcyB3ZXJlIGZhaWxpbmcuDQpUaGF0IHNhaWQgdGhlc2Ug
ZXJyb3JzIEkgYmVsaWV2ZSBhcmUgdW5yZWxhdGVkLg0KLi4uYWxhbg0KDQoNCk9uIFdlZCwgMjAy
Mi0xMC0yNiBhdCAxODowMiArMDAwMCwgUGF0Y2h3b3JrIHdyb3RlOg0KUGF0Y2ggRGV0YWlscw0K
U2VyaWVzOiBEZWxheSBkaXNhYmxpbmcgR3VDIHNjaGVkdWxpbmcgb2YgYW4gaWRsZSBjb250ZXh0
IChyZXYyKQ0KVVJMOiAgICBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzEwOTQ2Ni8NClN0YXRlOiAgZmFpbHVyZQ0KRGV0YWlsczogICAgICAgIGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEwOTQ2NnYyL2luZGV4Lmh0bWwN
CkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzEyMjk1X2Z1bGwgLT4gUGF0Y2h3b3Jr
XzEwOTQ2NnYyX2Z1bGwNClN1bW1hcnkNCg0KRkFJTFVSRQ0KDQpTZXJpb3VzIHVua25vd24gY2hh
bmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTA5NDY2djJfZnVsbCBhYnNvbHV0ZWx5IG5lZWQg
dG8gYmUNCnZlcmlmaWVkIG1hbnVhbGx5Lg0KDQpJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNo
YW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMNCmludHJvZHVjZWQgaW4g
UGF0Y2h3b3JrXzEwOTQ2NnYyX2Z1bGwsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBh
bGxvdyB0aGVtDQp0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwg
cmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4NCg0KUGFydGljaXBhdGluZyBob3N0cyAoOSAt
PiAxMSkNCg0KQWRkaXRpb25hbCAoMik6IHNoYXJkLXJrbCBzaGFyZC1kZzENCg0KUG9zc2libGUg
bmV3IGlzc3Vlcw0KDQpIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUg
YmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMDk0NjZ2Ml9mdWxsOg0KDQpJR1QgY2hhbmdl
cw0KUG9zc2libGUgcmVncmVzc2lvbnMNCg0KICAqICAgaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBo
YW5nY2hlY2s6DQoNCiAgICAgKiAgIHNoYXJkLXNrbDogTk9UUlVOIC0+IElOQ09NUExFVEU8aHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTA5NDY2djIv
c2hhcmQtc2tsNy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGhhbmdjaGVjay5odG1sPiArMSBzaW1p
bGFyIGlzc3VlDQogICogICBpZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGli
bGVAYy1lZHAxOg0KDQogICAgICogICBzaGFyZC1za2w6IFBBU1M8aHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTIyOTUvc2hhcmQtc2tsMS9pZ3RAa21zX2Zs
aXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGlibGVAYy1lZHAxLmh0bWw+IC0+IElOQ09NUExF
VEU8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTA5
NDY2djIvc2hhcmQtc2tsMy9pZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGli
bGVAYy1lZHAxLmh0bWw+DQogICogICBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQHBzci0x
cC1wcmltc2Nybi1jdXItaW5kZmItZHJhdy1yZW5kZXI6DQoNCiAgICAgKiAgIHNoYXJkLWljbGI6
IFBBU1M8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTIy
OTUvc2hhcmQtaWNsYjYvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bwc3ItMXAtcHJpbXNj
cm4tY3VyLWluZGZiLWRyYXctcmVuZGVyLmh0bWw+IC0+IEZBSUw8aHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTA5NDY2djIvc2hhcmQtaWNsYjEvaWd0
QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bwc3ItMXAtcHJpbXNjcm4tY3VyLWluZGZiLWRyYXct
cmVuZGVyLmh0bWw+DQoNClN1cHByZXNzZWQNCg0KVGhlIGZvbGxvd2luZyByZXN1bHRzIGNvbWUg
ZnJvbSB1bnRydXN0ZWQgbWFjaGluZXMsIHRlc3RzLCBvciBzdGF0dXNlcy4NClRoZXkgZG8gbm90
IGFmZmVjdCB0aGUgb3ZlcmFsbCByZXN1bHQuDQoNCiAgKiAgIGlndEBzeXNmc19wcmVlbXB0X3Rp
bWVvdXRAaWRlbXBvdGVudEByY3MwOg0KICAgICAqICAge3NoYXJkLWRnMX06IE5PVFJVTiAtPiBG
QUlMPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEw
OTQ2NnYyL3NoYXJkLWRnMS0xOC9pZ3RAc3lzZnNfcHJlZW1wdF90aW1lb3V0QGlkZW1wb3RlbnRA
cmNzMC5odG1sPiArNCBzaW1pbGFyIGlzc3Vlcw0KDQpLbm93biBpc3N1ZXMNCg0K

--_000_2d6e3189ab10fe80bc1eba4b0b045476cde37857camelintelcom_
Content-Type: text/html; charset="utf-8"
Content-ID: <23BA1AE3E1ECDE40A554B08625B38349@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjx0aXRsZT5Qcm9qZWN0IExpc3QgLSBQYXRjaHdv
cms8L3RpdGxlPg0KPHN0eWxlIGlkPSJjc3MtdGFibGUtc2VsZWN0IiB0eXBlPSJ0ZXh0L2NzcyI+
DQogICB0ZCB7IHBhZGRpbmc6IDJwdDsgfQ0KICA8L3N0eWxlPg0KPC9oZWFkPg0KPGJvZHk+DQo8
ZGl2PkkgdmVyaWZpZWQgdGhhdCAyIG9mIHRoZSAzIHRoZSBlcnJvcnMgcmVwb3J0ZWQgYmVsb3cg
YXJlIG9uIHBsYXRmb3JtcyB0aGF0IGRvbid0IHN1cHBvcnQgR3VDIGFuZCB0aGUgZG1lc2dzIGNv
bmZpcm0gZ3VjIHdhcyBkaXNhYmxlZC48L2Rpdj4NCjxkaXY+VGhlIHJlbWFpbmluZyBJQ0wgb25l
LCB3ZSBrbm93IElDTCBkb2VzbnQgc3VwcG9ydCBHdUMgLi4gYWxzbywgYWRkaXRpb25hbGx5LCB0
aGUgZXJyb3Igd2FzIG9uIGEgZGlzcGxheSBJR1Qgd2hlcmUgQ1JDcyB3ZXJlIGZhaWxpbmcuPC9k
aXY+DQo8ZGl2PlRoYXQgc2FpZCB0aGVzZSBlcnJvcnMgSSBiZWxpZXZlIGFyZSB1bnJlbGF0ZWQu
PC9kaXY+DQo8ZGl2Pi4uLmFsYW48L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PjxzcGFu
Pjwvc3Bhbj48L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2Pk9uIFdlZCwgMjAyMi0xMC0y
NiBhdCAxODowMiArMDAwMCwgUGF0Y2h3b3JrIHdyb3RlOjwvZGl2Pg0KPGJsb2NrcXVvdGUgdHlw
ZT0iY2l0ZSIgc3R5bGU9Im1hcmdpbjowIDAgMCAuOGV4OyBib3JkZXItbGVmdDoycHggIzcyOWZj
ZiBzb2xpZDtwYWRkaW5nLWxlZnQ6MWV4Ij4NCjxkaXY+PGI+UGF0Y2ggRGV0YWlsczwvYj48L2Rp
dj4NCjxkaXY+DQo8dGFibGU+DQo8dGJvZHk+DQo8dHI+DQo8dGQ+PGI+U2VyaWVzOjwvYj48L3Rk
Pg0KPHRkPkRlbGF5IGRpc2FibGluZyBHdUMgc2NoZWR1bGluZyBvZiBhbiBpZGxlIGNvbnRleHQg
KHJldjIpPC90ZD4NCjwvdHI+DQo8dHI+DQo8dGQ+PGI+VVJMOjwvYj48L3RkPg0KPHRkPjxhIGhy
ZWY9Imh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTA5NDY2LyI+aHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMDk0NjYvPC9hPjwvdGQ+DQo8
L3RyPg0KPHRyPg0KPHRkPjxiPlN0YXRlOjwvYj48L3RkPg0KPHRkPmZhaWx1cmU8L3RkPg0KPC90
cj4NCjx0cj4NCjx0ZD48Yj5EZXRhaWxzOjwvYj48L3RkPg0KPHRkPjxhIGhyZWY9Imh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEwOTQ2NnYyL2luZGV4
Lmh0bWwiPmh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzEwOTQ2NnYyL2luZGV4Lmh0bWw8L2E+PC90ZD4NCjwvdHI+DQo8L3Rib2R5Pg0KPC90YWJsZT4N
CjwvZGl2Pg0KPGgxPkNJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzEyMjk1X2Z1bGwg
LSZndDsgUGF0Y2h3b3JrXzEwOTQ2NnYyX2Z1bGw8L2gxPg0KPGgyPlN1bW1hcnk8L2gyPg0KPHA+
PHN0cm9uZz5GQUlMVVJFPC9zdHJvbmc+PC9wPg0KPHA+U2VyaW91cyB1bmtub3duIGNoYW5nZXMg
Y29taW5nIHdpdGggUGF0Y2h3b3JrXzEwOTQ2NnYyX2Z1bGwgYWJzb2x1dGVseSBuZWVkIHRvIGJl
PGJyPg0KdmVyaWZpZWQgbWFudWFsbHkuPC9wPg0KPHA+SWYgeW91IHRoaW5rIHRoZSByZXBvcnRl
ZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzPGJyPg0KaW50cm9k
dWNlZCBpbiBQYXRjaHdvcmtfMTA5NDY2djJfZnVsbCwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0
ZWFtIHRvIGFsbG93IHRoZW08YnI+DQp0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUs
IHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS48L3A+DQo8aDI+UGFydGlj
aXBhdGluZyBob3N0cyAoOSAtJmd0OyAxMSk8L2gyPg0KPHA+QWRkaXRpb25hbCAoMik6IHNoYXJk
LXJrbCBzaGFyZC1kZzEgPC9wPg0KPGgyPlBvc3NpYmxlIG5ldyBpc3N1ZXM8L2gyPg0KPHA+SGVy
ZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBp
biBQYXRjaHdvcmtfMTA5NDY2djJfZnVsbDo8L3A+DQo8aDM+SUdUIGNoYW5nZXM8L2gzPg0KPGg0
PlBvc3NpYmxlIHJlZ3Jlc3Npb25zPC9oND4NCjx1bD4NCjxsaT4NCjxwPmlndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVAaGFuZ2NoZWNrOjwvcD4NCjx1bD4NCjxsaT5zaGFyZC1za2w6IE5PVFJVTiAtJmd0
OyA8YSBocmVmPSJodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMDk0NjZ2Mi9zaGFyZC1za2w3L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAaGFuZ2NoZWNr
Lmh0bWwiPg0KSU5DT01QTEVURTwvYT4gKzEgc2ltaWxhciBpc3N1ZTwvbGk+PC91bD4NCjwvbGk+
PGxpPg0KPHA+aWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlQGMtZWRw
MTo8L3A+DQo8dWw+DQo8bGk+c2hhcmQtc2tsOiA8YSBocmVmPSJodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMjI5NS9zaGFyZC1za2wxL2lndEBrbXNfZmxp
cEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZUBjLWVkcDEuaHRtbCI+DQpQQVNTPC9hPiAt
Jmd0OyA8YSBocmVmPSJodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMDk0NjZ2Mi9zaGFyZC1za2wzL2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQt
aW50ZXJydXB0aWJsZUBjLWVkcDEuaHRtbCI+DQpJTkNPTVBMRVRFPC9hPjwvbGk+PC91bD4NCjwv
bGk+PGxpPg0KPHA+aWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bwc3ItMXAtcHJpbXNjcm4t
Y3VyLWluZGZiLWRyYXctcmVuZGVyOjwvcD4NCjx1bD4NCjxsaT5zaGFyZC1pY2xiOiA8YSBocmVm
PSJodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMjI5NS9z
aGFyZC1pY2xiNi9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQHBzci0xcC1wcmltc2Nybi1j
dXItaW5kZmItZHJhdy1yZW5kZXIuaHRtbCI+DQpQQVNTPC9hPiAtJmd0OyA8YSBocmVmPSJodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMDk0NjZ2Mi9z
aGFyZC1pY2xiMS9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQHBzci0xcC1wcmltc2Nybi1j
dXItaW5kZmItZHJhdy1yZW5kZXIuaHRtbCI+DQpGQUlMPC9hPjwvbGk+PC91bD4NCjwvbGk+PC91
bD4NCjxoND5TdXBwcmVzc2VkPC9oND4NCjxwPlRoZSBmb2xsb3dpbmcgcmVzdWx0cyBjb21lIGZy
b20gdW50cnVzdGVkIG1hY2hpbmVzLCB0ZXN0cywgb3Igc3RhdHVzZXMuPGJyPg0KVGhleSBkbyBu
b3QgYWZmZWN0IHRoZSBvdmVyYWxsIHJlc3VsdC48L3A+DQo8dWw+DQo8bGk+aWd0QHN5c2ZzX3By
ZWVtcHRfdGltZW91dEBpZGVtcG90ZW50QHJjczA6DQo8dWw+DQo8bGk+e3NoYXJkLWRnMX06IE5P
VFJVTiAtJmd0OyA8YSBocmVmPSJodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMDk0NjZ2Mi9zaGFyZC1kZzEtMTgvaWd0QHN5c2ZzX3ByZWVtcHRfdGlt
ZW91dEBpZGVtcG90ZW50QHJjczAuaHRtbCI+DQpGQUlMPC9hPiArNCBzaW1pbGFyIGlzc3Vlczwv
bGk+PC91bD4NCjwvbGk+PC91bD4NCjxoMj5Lbm93biBpc3N1ZXM8L2gyPg0KPC9ibG9ja3F1b3Rl
Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_2d6e3189ab10fe80bc1eba4b0b045476cde37857camelintelcom_--
