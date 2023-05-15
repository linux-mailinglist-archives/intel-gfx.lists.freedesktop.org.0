Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9745D7031C4
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 17:44:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08A3810E227;
	Mon, 15 May 2023 15:44:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E23CF10E227
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 15:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684165480; x=1715701480;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hwcn/x/8Y+C53pSGU9xM6oj7C3EMQwdijdtF/5/f1Hs=;
 b=AFBzZJmnihrjlFLWpUSQSmKwr7tHtPwKp8C/vGzaAnfohawD3c3gkeP4
 t+4QJxwPQPDG4eWtt54dCLBzWy/ueoGcl3d4DZbNS3hSXANGY5D/K4Knn
 qxjPd9GaDFs7gS7YVkrMhXIcdIm66tUShssFRA5RQG/t8vij0OP8SJ+t/
 6VMH557xlcap5i84bB3cUorKE2II/QionZiMQHtzOetFi/Rxfkvg/9p+x
 f9mgH+YUJWBhn2TXedqKZyir3G65zN8VoY6cOgyerFW/0wHK55McSZmcv
 YJFcBSfZh11m/FyLspBvjwC44cemq/xAh6dV2rSUW5HTjB/bJGR4+CP8w g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="340588403"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="340588403"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 08:44:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="678488229"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="678488229"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 15 May 2023 08:44:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 08:44:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 08:44:39 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 08:44:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mbPa5Eg1mwvThR8wbEFWb7NmCx1FkkZSFLDx+VwAfG50U3fV7HiR3Nr9cC2LytNkhNrMW8LKoUEaRaeWISwPNgi96jntGme4GqOwSAQDPCOPTLBmpwp6gCEswr2ZbJClF15uYXLvvXyPQH0gRmwQwHxEAZGema94cyVYEOtYrpeZjqMTrL1Gvj0EfzrOcw3nqR1fz6+qis7azVJ8ug69+RNLsnLoW7ugQExdjGeGZweW2IDYN2mOdyM8G8UcBj1QIkcPuuSWjWzkTxRhpPB8rCAhpXiY6gCZFls9MElhPqF+pTI2RNQM7jhyaZy7PyQZwTx7bi2yd6t2pH7BspBd+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hwcn/x/8Y+C53pSGU9xM6oj7C3EMQwdijdtF/5/f1Hs=;
 b=ANbO71aIRKbY1ZAXZ6pIOwcWcoNR7y5IWCQU0Fv5+tdiddNf6WbbcKVqycrWRuDfkbVyhMvc+itFdz0JWTi6lNG7BOp4vnDxdnnO0jPERLOYMk5oHIcRa61oHdXYAxujy7pJFTL71cBzwiX7HBSqEP4YKQqUrj82LcMCLeD4rRHJ+iC81/a2I0+Ontg5O/jKqghWi6Qxfr/NMKi68eeCgaDP7DDoQjxPWgxsGF+FvcrxaceXSOc6sVGV/Xr81m27XPrIRnmDKbcQF1LGIoGb/30zwwSCH/Www+R02EpgGU6N/df0EM/TdDmkAxMHx1NIe3bXtcIsuSdDeKjJP208nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 BN9PR11MB5452.namprd11.prod.outlook.com (2603:10b6:408:101::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Mon, 15 May
 2023 15:44:37 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%5]) with mapi id 15.20.6387.030; Mon, 15 May 2023
 15:44:36 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Kalvala, Haridhar"
 <haridhar.kalvala@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 2/2] drm/i915/mtl: Add MTL performance tuning changes
Thread-Index: AQHZhUDebmvtNLFOYUWJu/uxCgE8Q69Zn6AAgAHOHwCAAA+QoA==
Date: Mon, 15 May 2023 15:44:36 +0000
Message-ID: <DM4PR11MB597154AA9B88368D980A795987789@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230513021438.185352-1-radhakrishna.sripada@intel.com>
 <20230513021438.185352-2-radhakrishna.sripada@intel.com>
 <3473435b-7d4b-94a9-37b2-4249683c199d@intel.com>
 <168416203039.13184.2955182911965351453@gjsousa-mobl2>
In-Reply-To: <168416203039.13184.2955182911965351453@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|BN9PR11MB5452:EE_
x-ms-office365-filtering-correlation-id: ebfd04ad-6dc1-4426-80a3-08db555b4935
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: reXXgxvS2hDpe6oNlJtJOlyoJDIZaC9GgLZwErwROZsN/rWsltS0cpb0zlRYn0jN9iwdDYXEklSa/IcuNrfKawV//wPip9YWFgQguwKYKKOH5aYIVmvnF2MOogk9+QoT0MWeFwCmhUwyCmLBzKfd11HRXw6AQpEb9YgDqfprmSeVpRtYEPi4Xyxun3YpqEzsD8evWE3AfuJxur2kyqVH3HjRN5KxlIB1T+G3/sWI351USK2NYiibHDvxGhOoqJOvlQ5qHjKm96aJadAQmkJoooIeHpNmbJKcIdNwtTOP6u9gSgzvgo/ZPat65kxk1IiJIn7U7fdq067dC/FydcIvqD+jyN0YfNgWdaW7WAMZaFaXG+wDOuD9yaDV3mLfmpMh+mHJsh/FgidGKy1a88wfekeuM2ugw4Pm5QCsdset0RFTAgv2inwn3Pvq+3SQZQsH8eIl7OoawBgpo9b/1Q/ORcvakoLJ3RUy4oS2CGx/qFM8nsHYRd1485wq/1hMyDnh3lIayFnlu7ei6WwUPGxJv1kjP7an3D14USph2o7DBxBNspZOxlfE0H7GfoBy3aRg5fDf+YdWXi2RqnMKA5y7PAngUUBj4YnDqE6puilnGHC5QHcUAM85OrJoBxC4ASvZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(396003)(366004)(376002)(39860400002)(451199021)(33656002)(86362001)(54906003)(110136005)(316002)(64756008)(66946007)(66476007)(4326008)(66446008)(66556008)(478600001)(76116006)(7696005)(55016003)(5660300002)(52536014)(8676002)(8936002)(2906002)(38070700005)(38100700002)(82960400001)(122000001)(41300700001)(186003)(53546011)(107886003)(26005)(6506007)(9686003)(83380400001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dGpJVy9NcG5ZYldVTVg3RFNWSEtsL1JlUjVNdHlQWlVidWZRN2JKRkNlOVdu?=
 =?utf-8?B?UVRrNmJSV083UTFPTnVialF4cjJEMEtQaW5qTjlkOEc0aXhUM1VNbnd1dXB5?=
 =?utf-8?B?NjJQRTBQbWxXM3N4NjdGb0FXWENYUm9ScURkRDhYakVBRVdrVUhSLzF0T0Ny?=
 =?utf-8?B?L3VhL3lVN3NZcTUwalpRNHJPb244WW1QTy9lSHRhWFVVMGZGNGw0VXBJZFkr?=
 =?utf-8?B?VS9zbWVjOFBOdkd1VWJ3Kzd5SmJ0UnBRaTZFeFlHbmNHUEdtQXpTMW9ITDJK?=
 =?utf-8?B?SlBFNGtUbjFVZm9KZGcxTlp0aHlaMGZ6VTN0UHRtU2VlZnFuNzJLY0FDMEp0?=
 =?utf-8?B?YlZTZWlMMHJwclI3YTFLS3FVS240Z0dNSDA0aXBweUJxRVhoY0haK3A1Sllx?=
 =?utf-8?B?cFMrM2c1SnN6MGRxNjVNaERhcW9zL09wUldoQzkyc2dWV2hvQ2lmSnNBQXNh?=
 =?utf-8?B?OVBRQlF5R2NyYUZFNWlCdDBwZEtFakdXU1F5bUxiZXJnYWVYdkNLOUVITEJt?=
 =?utf-8?B?OFJja1I2VnpHREdyd05wNExvSU5qV0ZqL09lOCtPTzdkWTVVajlheTdmaytT?=
 =?utf-8?B?ZXpGVkVPUDNRN3NvSzB5Q0k5VzhFMnU0TjJtRVdNYUxtdUgzTXR3WkUvOTZT?=
 =?utf-8?B?WXFwd3dmdVQvZUFjeWticVFWSlh0YzBmN2JFZytMVVRCN0VoWXRLQWdZazRt?=
 =?utf-8?B?a3BUUU5mNHdjQkEzb1FIc1lrL1BFZHB2K1FaZFN5YzQ4MjVsck5QTlBzTHRj?=
 =?utf-8?B?NzZEZ3loS1JJcUxCQVNTd0VEZkVhRnhKbG1tZEtpUE4vc3hSSFI4SDNwaTNU?=
 =?utf-8?B?T0ZaLzJVbW1haE14c0tIRWtKOEQ1azVRYzN1MEp3cCtZTjdCUVlKUkRUTFV1?=
 =?utf-8?B?bEp0TWNNQjNHNk8weWkwNzNJOHZuMm1zMGZGNTZSYXR1Z1UvVi9ZWEdDWWxE?=
 =?utf-8?B?S20va0d0QjRQNHpwUTdUZ1paaG9KNGRGa0NlRkRDNmxWeEVzRTdPTUFQOE1H?=
 =?utf-8?B?bi94enBGU1YycElzVllsZ2hNTW9XYm4xWGk5QmtrenJvRXNHTGJSQnBHL3VH?=
 =?utf-8?B?UGhJWE9idDh2NkM3K011VUs1NXlyY05GNWRxTCtDaG94QWl3TGdSMUNEcm9x?=
 =?utf-8?B?ejh1VHNRMUlnVVRNSE1uVXVYOHFwbjNaVytiSjhTMDdQcTUxZTJsWjFpZkt6?=
 =?utf-8?B?aXVWblFHbkVYWStWWnl5ZFdLeDkwTkNnZDc2SHVweTNUYmExckxSaEVmWGlU?=
 =?utf-8?B?STY1Mm5FQ0Rwc1NGNGpiSnhBZ0xPRW51cS9oQmliVFZpWnRpck1DL2VzcGJJ?=
 =?utf-8?B?SDg5NkRnWGJFSXVPVDlBYWJWUEFBUGJUUWZzVWRLeVVtWTRiT0lGYlVYUy9q?=
 =?utf-8?B?R0RRYXpKS0JGQm9iNGhJdGhFUHdMMElxcXhNRHBmNjBFSkl5eXJrUytJRmV0?=
 =?utf-8?B?RXprWlRVRnNMOWxESXNjeDdaRlZuZHh2SjhjUmhJSk1HMlVkU21NT0ViUWd6?=
 =?utf-8?B?c1NJSGlYYytOQ09peFBQN0diWnY1dEl6YmdkbXJTRzM3a3lsTWt2TnBHZTBU?=
 =?utf-8?B?Q2dvdjlVZ1dUNTQrR3E0Sm95TzB1RWw3QkRQT0dEQTE1NEtvMHh4S3FseXhZ?=
 =?utf-8?B?a3ZKUnl4UURpaERGcHpuMXBBTnNDZENEaUxYUEVkdFV4Uy9JejFCRzBsWWQw?=
 =?utf-8?B?SmM4bERHM0FLY1QwdUxLblRrVDFCektSQlZjb3dXYTEyWUNSWXBQWEthSUNE?=
 =?utf-8?B?cWJpYTIrb3cyOGJnVm5vV24rZnZtSWpFL2hJbnJlM1IyK2NJSFhFM3BvMk1t?=
 =?utf-8?B?cXBQVVhmVTh4SjFrWWNPd1c1eEZoV2E2UzVDd003L00wQ0pvUE9XMmgzdVNN?=
 =?utf-8?B?VEFySjlNMk80ZUV6M2VuOUpWTjh4MDR0aWpTeTY1bjJNbXJKSCtxL0xHL3ZC?=
 =?utf-8?B?ODFhRnpPbGhySFVyYW1KbjY3VHVPcW1hUERjODE3YTB0aHFxRHI0VEVMckNC?=
 =?utf-8?B?a3ZyWGxTZVIzcDJqWXUwa29wWlhKRXBDSXcyMGszazlJVlp2eDFZd25KODFj?=
 =?utf-8?B?aGIxclBYTElncjExMW9BQ2lubXhDYlo3YXhmSFcrdFBaaHgzak5UZ2JpeXNr?=
 =?utf-8?B?SDlWUXQ0cVRDTXFEbWdMQVgyUDZLUEZnZXRvMTVBdUxkUVY5dlA3bEZOa2pV?=
 =?utf-8?B?dFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebfd04ad-6dc1-4426-80a3-08db555b4935
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2023 15:44:36.1136 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ERq6dgiK9G6K/pVN3nJo4gBOtmr0V3wszZoA6wdKYgUR8mUXinMumPk8YI31HpaBrM04cCS4Ao4LX1oNZukYGQSUMOgRky9tTFlN9oqcLvU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5452
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/mtl: Add MTL performance
 tuning changes
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSGFyaWRhci9HdXN0YXZvLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZy
b206IFNvdXNhLCBHdXN0YXZvIDxndXN0YXZvLnNvdXNhQGludGVsLmNvbT4NCj4gU2VudDogTW9u
ZGF5LCBNYXkgMTUsIDIwMjMgNzo0NyBBTQ0KPiBUbzogS2FsdmFsYSwgSGFyaWRoYXIgPGhhcmlk
aGFyLmthbHZhbGFAaW50ZWwuY29tPjsgU3JpcGFkYSwgUmFkaGFrcmlzaG5hDQo+IDxyYWRoYWty
aXNobmEuc3JpcGFkYUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+IENjOiBKdXN0ZW4sIEpvcmRhbiBMIDxqb3JkYW4ubC5qdXN0ZW5AaW50ZWwuY29tPjsgUm9w
ZXIsIE1hdHRoZXcgRA0KPiA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDog
UmU6IFtQQVRDSCB2MiAyLzJdIGRybS9pOTE1L210bDogQWRkIE1UTCBwZXJmb3JtYW5jZSB0dW5p
bmcNCj4gY2hhbmdlcw0KPiANCj4gUXVvdGluZyBLYWx2YWxhLCBIYXJpZGhhciAoMjAyMy0wNS0x
NCAwODoxMzoxMCkNCj4gPg0KPiA+T24gNS8xMy8yMDIzIDc6NDQgQU0sIFJhZGhha3Jpc2huYSBT
cmlwYWRhIHdyb3RlOg0KPiA+PiBNVEwgcmV1c2VzIHRoZSB0dW5pbmcgcGFyYW1ldGVycyBmb3Ig
REcyLiBFeHRlbmQgdGhlIGRnMg0KPiA+PiBwZXJmb3JtYW5jZSB0dW5pbmcgcGFyYW1ldGVycyB0
byBNVEwuDQo+ID4+DQo+ID4+IHYyOiBBZGQgRFJBV19XQVRFUk1BUksgdHVuaW5nIHBhcmFtZXRl
ci4NCj4gPj4NCj4gPj4gQnNwZWM6IDY4MzMxDQo+ID4+IENjOiBIYXJpZGhhciBLYWx2YWxhIDxo
YXJpZGhhci5rYWx2YWxhQGludGVsLmNvbT4NCj4gPj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcu
ZC5yb3BlckBpbnRlbC5jb20+DQo+ID4+IENjOiBHdXN0YXZvIFNvdXNhIDxndXN0YXZvLnNvdXNh
QGludGVsLmNvbT4NCj4gPj4gU2lnbmVkLW9mZi1ieTogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJh
ZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4NCj4gPj4gLS0tDQo+ID4+ICAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDggKysrKysrLS0NCj4gPj4gICAx
IGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+Pg0KPiA+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCj4gPj4g
aW5kZXggNzg2MzQ5ZTk1NDg3Li43MmRhYjk3MGRlNWIgMTAwNjQ0DQo+ID4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCj4gPj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiA+PiBAQCAtODE3LDYgKzgx
NywxMCBAQCBzdGF0aWMgdm9pZCBtdGxfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0DQo+IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lLA0KPiA+PiAgIHsNCj4gPj4gICAgICAgICAgIHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1ID0gZW5naW5lLT5pOTE1Ow0KPiA+Pg0KPiA+PiArICAgICAg
ICBkZzJfY3R4X2d0X3R1bmluZ19pbml0KGVuZ2luZSwgd2FsKTsNCj4gPj4gKw0KPiA+PiArICAg
ICAgICB3YV9hZGQod2FsLCBEUkFXX1dBVEVSTUFSSywgVkVSVF9XTV9WQUwsIDB4M0ZGLCAwLCBm
YWxzZSk7DQo+ID4NCj4gPkhpIFJLLA0KPiA+DQo+ID5JIGFtIG5vdCBzdXJlIGJ1dCBoYXZlIGRv
dWJ0IHcuci50IERSQVdfV0FURVJNQVJLIGFyZSB3ZSBub3QgZG9pbmcgc2FtZQ0KPiA+aW4gWyBQ
YXRjaCBWMiAxLzJdLg0KPiA+DQo+ID5UaGFuayB5b3UsDQo+ID4NCj4gPkhhcmlkaGFyIEthbHZh
bGENCj4gDQo+IFllYWgsIEkgdGhpbmsgdGhpcyBzaG91bGQgYmUgZXhlY3V0ZWQgb25seSBmb3Ig
QjArIHN0ZXBzLg0KDQpUaGlzIGlzIGEgb25ldGltZSB0dW5pbmcgcGFyYW1ldGVyIGNvbmZpZ3Vy
YXRpb24gYXBwbGljYWJsZSBhY3Jvc3MgYWxsIE1UTC4NClRoZSB3YSBsaW1pdGF0aW9uIGlzIGlu
ZGVwZW5kZW50IG9mIHRoZSB0dW5pbmcgcGFyYW1ldGVyIGNvbmZpZ3VyYXRpb24uDQoNCi0gUmFk
aGFrcmlzaG5hIFNyaXBhZGENCj4gDQo+IC0tDQo+IEd1c3Rhdm8gU291c2ENCj4gDQo+ID4NCj4g
Pj4gKw0KPiA+PiAgICAgICAgICAgaWYgKElTX01UTF9HUkFQSElDU19TVEVQKGk5MTUsIE0sIFNU
RVBfQTAsIFNURVBfQjApIHx8DQo+ID4+ICAgICAgICAgICAgICAgSVNfTVRMX0dSQVBISUNTX1NU
RVAoaTkxNSwgUCwgU1RFUF9BMCwgU1RFUF9CMCkpIHsNCj4gPj4gICAgICAgICAgICAgICAgICAg
LyogV2FfMTQwMTQ5NDc5NjMgKi8NCj4gPj4gQEAgLTE3NTQsNyArMTc1OCw3IEBAIHN0YXRpYyB2
b2lkIGd0X3R1bmluZ19zZXR0aW5ncyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0LA0KPiBzdHJ1Y3QgaTkx
NV93YV9saXN0ICp3YWwpDQo+ID4+ICAgICAgICAgICAgICAgICAgIHdhX21jcl9tYXNrZWRfZW4o
d2FsLCBYRUhQQ19MTkNGTUlTQ0NGR1JFRzAsDQo+IFhFSFBDX0hPU1RDQUNIRUVOKTsNCj4gPj4g
ICAgICAgICAgIH0NCj4gPj4NCj4gPj4gLSAgICAgICAgaWYgKElTX0RHMihndC0+aTkxNSkpIHsN
Cj4gPj4gKyAgICAgICAgaWYgKElTX0RHMihndC0+aTkxNSkgfHwgSVNfTUVURU9STEFLRShndC0+
aTkxNSkpIHsNCj4gPj4gICAgICAgICAgICAgICAgICAgd2FfbWNyX3dyaXRlX29yKHdhbCwgWEVI
UF9MM1NDUVJFRzcsDQo+IEJMRU5EX0ZJTExfQ0FDSElOR19PUFRfRElTKTsNCj4gPj4gICAgICAg
ICAgICAgICAgICAgd2FfbWNyX3dyaXRlX29yKHdhbCwgWEVIUF9TUUNNLCBFTl8zMkJfQUNDRVNT
KTsNCj4gPj4gICAgICAgICAgIH0NCj4gPj4gQEAgLTI5NDQsNyArMjk0OCw3IEBAIHN0YXRpYyB2
b2lkDQo+ID4+ICAgYWRkX3JlbmRlcl9jb21wdXRlX3R1bmluZ19zZXR0aW5ncyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkNCj4gPj4gICB7DQo+ID4+IC0gICAgICAg
IGlmIChJU19ERzIoaTkxNSkpDQo+ID4+ICsgICAgICAgIGlmIChJU19ERzIoaTkxNSkgfHwgSVNf
TUVURU9STEFLRShpOTE1KSkNCj4gPj4gICAgICAgICAgICAgICAgICAgd2FfbWNyX3dyaXRlX2Ns
cl9zZXQod2FsLCBSVF9DVFJMLCBTVEFDS0lEX0NUUkwsDQo+IFNUQUNLSURfQ1RSTF81MTIpOw0K
PiA+Pg0KPiA+PiAgICAgICAgICAgLyoNCj4gPg0KPiA+LS0NCj4gPlJlZ2FyZHMsDQo+ID5IYXJp
ZGhhciBLYWx2YWxhDQo+ID4NCg==
