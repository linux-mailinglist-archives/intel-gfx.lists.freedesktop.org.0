Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 799EA7F4997
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 16:02:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 258F210E658;
	Wed, 22 Nov 2023 15:02:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD31510E655
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 15:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700665323; x=1732201323;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S4UcW8SERcGIFe6v+3lE3NRvniELwaYpx8T5bxVxoiE=;
 b=RGDX+IQcGiF0T+Zy4ViJYSQxw2Xf2Mh7/F48ua9cA5B8xHYL3i0efMca
 W5gAd3qK7A/QCLGcIcnZEAVKsuikmVqa0Qz3fOzoInoZY/3nqVsYVH9Ke
 WrxB8nRDWCdQPguCbBRhNxPTQahx1Nz7tY6O7+EngiKP0s1iDOCa4onok
 ADHG/B+gziUpiV3Y4XxnT1Cs9s7p97hNzKRrZMyK9k2/t4LN5MISL6nc4
 zbMpIBvgsPoIFHJdizcAzdJkp9EHR9zuqqkHP0TEc+lXHWRq8Edpjx/01
 gd4nGdA3ygsiXNqrfZ0+bOFpLBH0lPi2fdXzTQ6Ue09iNfgoRQ85KOwLq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="10731698"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="10731698"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 07:02:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="14948449"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2023 07:01:54 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 07:01:52 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 22 Nov 2023 07:01:52 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 22 Nov 2023 07:01:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F/1S+BJuQ0FTEj73AJz/G2zjMDP0m7fUo6KTMDUHvXBPSLHlnxpI4+oVJQDfb9tKs3JNk8RStnX1Kn1GeWD4+6F0R5yCnt/UdA5kICnG25i/J6QznIgBfBUl0GWUPmb64UUIdsyDiNMKLcCSkLoqf0QU+MObhCXAwOsMZY+IoJpdKgMiMjXZ2r6poPohY6FdHhjxnzwp92wONagpaqf2vfn6TDTgQxkcAs0ihR1CZ6GW9bwzOItcc4d8iHoITHhGOMxWlJM4iIR8W+qtfEdBP9S+R5o0vfUKMNdH3Gep4GKIr9TiiG1YWmDlYZs4laxU4nTFff5u6vbkiyMIxvW5+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S4UcW8SERcGIFe6v+3lE3NRvniELwaYpx8T5bxVxoiE=;
 b=JZjFbV6WYtQwKmNnvj83IsxJLwgfr2IRzsFjZ+9oYAIFqTMw4+ntuxZJSBmZq9fxQO0tQ+aMIa2pb0tXiOsumLz9hetZmoACwF3MbIjGqLVihaZcaQ2ItAhg2l85GGdQ9wicBXFYIPWsgSYYdTcUk7QEmBbDKpdwpjG57kSAljW7E3XcqRSSy4a+Vfn+qeK7sdL2kTyXLkCvdbb5BlmP/pXob9GxqNuzHM+w0Bem5UyJ0zQKG8iCTGVUghfespBqhvBc1oHSOhhHsjMMmMAW/fvTm5WzppFZUDbpG7M9qLPgMy+yoPbTioFZ+T+sLFnefWWHtjjUWmuDLw6geqFbJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 DM4PR11MB6095.namprd11.prod.outlook.com (2603:10b6:8:aa::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7025.19; Wed, 22 Nov 2023 15:01:50 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::a98b:5c7d:8396:267b]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::a98b:5c7d:8396:267b%4]) with mapi id 15.20.7025.017; Wed, 22 Nov 2023
 15:01:50 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Musial, Ewelina" <ewelina.musial@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "Illipilli, TejasreeX"
 <tejasreex.illipilli@intel.com>, LGCI Bug Filing <lgci.bug.filing@intel.com>, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0gIOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9p?=
 =?utf-8?B?OTE1L2RzaTogNHRoIGF0dGVtcHQgdG8gZ2V0IHJpZCBvZiBJT1NGIEdQSU8g?=
 =?utf-8?Q?(rev2)?=
Thread-Index: AQHaGK7EIWkSLKZDv0u5EwD0uEFrebCEnbMAgAGVooCAAC2+AIAABt5wgAAF+YCAAApAEA==
Date: Wed, 22 Nov 2023 15:01:50 +0000
Message-ID: <DM8PR11MB5655EE430B1F635C70201328E0BAA@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20231103201831.1037416-1-andriy.shevchenko@linux.intel.com>
 <170013946304.3092.1503824312309598619@emeril.freedesktop.org>
 <87ttplprbw.fsf@intel.com>
 <DM6PR11MB38192A2B1E08611ACB696367F2BBA@DM6PR11MB3819.namprd11.prod.outlook.com>
 <87fs0ym512.fsf@intel.com>
 <PH7PR11MB707320EC146F274263792BF193BAA@PH7PR11MB7073.namprd11.prod.outlook.com>
 <DM8PR11MB5655E859CB8C7AAE16FAB6DCE0BAA@DM8PR11MB5655.namprd11.prod.outlook.com>
 <PH7PR11MB7073CA66944A34B28EB3629293BAA@PH7PR11MB7073.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB7073CA66944A34B28EB3629293BAA@PH7PR11MB7073.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|DM4PR11MB6095:EE_
x-ms-office365-filtering-correlation-id: b8638cf0-16d5-4881-8e1c-08dbeb6bf4a1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tt8LIfgZWIEygJVa/hM92aRVMQUu8kZDPEJLbBmbKo3DY5738AZAuW9TSvNdgPHADm3Q29FeQkKeB0tsW5eLrC/U/FIwjN+kt/4aN/ms4cAp7hyobewY+DYelZm5UVU3n690lsEyyZiNfOwi3JVKgWKo8nNmjBoHKPvx5H3Zp/rUNnuNqmwl45F6ws9dgwocfuyoyqrU5fFEfcK/rjhggoFiGCNptmPk1l8SgqOEEqjXgclJLN2ihmsQ15cTPEnAJX1CfXBbTovXhWRgf25BPFrDTRBOG1nW84XTp+j40nHfLRLPHK/3aFnmGBz3OGBkUDdGQCju5Xav7mRIPSuijQBJf5y8ATPTBctnBJqVdgJcK1BqJG48ab6995A2n1A2c3e5BxYZgO+YumtFCkLnVMeqRb41OOtnLrNKD9XINwuuJOBy1qwu2NeZAFvtUG8L0r/dKepcfccs+1KEeLOws07UykvpBiXlOt8dAB2V7fp7JSCPkJTzbiRVYAeiCiKyi9WH5RXYwIkYOciqafya3zTaOi++TmLERPgpOEDxMfhGVUflhH+QC4NHESSJCCx/B8LYa7YLEOfJKVjctQ9dcEybIH1t9VCA0KEaHm34kxP4qV6FXltOGykkRD4KkyoX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(346002)(376002)(136003)(366004)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(55016003)(5660300002)(8936002)(4326008)(52536014)(53546011)(7696005)(6506007)(86362001)(84970400001)(966005)(76116006)(66946007)(66446008)(110136005)(64756008)(66556008)(66476007)(122000001)(316002)(33656002)(38100700002)(2906002)(41300700001)(82960400001)(83380400001)(26005)(478600001)(9686003)(38070700009)(71200400001)(26583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YW9uakpoMWFqTCtxVWJSOGhXQlhTTHNrTnRSbFlsYmcvbVRzQUQ2cmFuRG0r?=
 =?utf-8?B?bG14SEtucEMwc0FVUFR1NTQ5MldiVk5vQVIwaUZNQWxyTFUwZ0xiYnVTNExy?=
 =?utf-8?B?ekNCRXZkajNHWDVaRmlOSmhwZGNnU2dXVkUreFFoQnRaTkFZOXZLN1Y2YjRk?=
 =?utf-8?B?MWhnU1JmWWtXL1B5UVl4UU9GVTJCMzRPZkNmcEpxU2NiRGpCQVpTMmpuc01x?=
 =?utf-8?B?bFNKNjBzelQwNUFkaFhIbnEyRk1Mc1pGUWNyeGt6dnFucnMvRWlMZHM3dk9N?=
 =?utf-8?B?ZkY1M2VSWmM0TktjMm1hQ2MzaWN5aDM0dERjR0U4ekRWWUVuMjFVWS9Yd1hY?=
 =?utf-8?B?WnNnczdXVU1uV3lxc3hDbFczaGhsUzVXaGIwWTFueTAxUXZSa2tPVExqY05x?=
 =?utf-8?B?Z1MxN1JHbVFVa0Y3QkNWWHo5ZlNybnBEVk1CK1NZYmQwN2tBWGVwWGFVZmlh?=
 =?utf-8?B?Y3JoU05YY0JpNUx3SkxpMXFiWU03NGtBMUJVSW56NDVVdW9RZkc5L241ZHY1?=
 =?utf-8?B?Qi9vQkFEdExRcEpVeXh0Z0k2ZlAvZDJLMTVVcTJpSXJUY09mWjc1NTIxQlFu?=
 =?utf-8?B?MUpRcTBkYVJRdWVRU1F0Y29qaTVTcEZYYng4TjloNTMzLzd3MENvVG9NckFY?=
 =?utf-8?B?bFZhMU9zT2RaaTk3NlBJWjUwd0tWN2hVSEFFMkNsRXVqU1MySUQzS3hhY01z?=
 =?utf-8?B?a25nOU50SFc4YU5sWmxtM3NSSXZ3RkNCQVBjaTlHTTI0VnA4S3hEaGszN2ZI?=
 =?utf-8?B?eUVZN0ljZ2N4aEpIdzZPaUJiUTYzb2h4QmlJaWRkOXVuZXRPcm1MS1dQQzFv?=
 =?utf-8?B?NVRVWGhEdzdCTFUzb2k2SFJMY2cwa2F0NjhqM0xMYnp0SCs1dTgyeFFrSmNh?=
 =?utf-8?B?aVVZVUtDWk90OEllYVlobitVa0hSZTdXL1NFVjRrNnZRL28yWEx2OHhZUUtk?=
 =?utf-8?B?NStJb2s3QlpsQWlFT2gvT1BaQm90cmNnUUZDeUxTZ08rL1ZsNEhaQnNac2Iw?=
 =?utf-8?B?c2IyVDYxVWJidE1DRkptbUIzUE15VVAwWTFuMXpSWUhndWdoNTd1Y0JiWkxF?=
 =?utf-8?B?L2QvTm9MblhJTDI4ZllCZmFUMWpxNEZqNlhOK0ZYWFAzQ1N6MElyNFgzVU1Q?=
 =?utf-8?B?VHQzMVFiN3lnWEJxTHFuMXBodWE1ZHQ4NVRsVU9nUFpQdEtqKy9HcjBXUmRK?=
 =?utf-8?B?aitZQXhZZFVTWHExUU4vN05oU2JrTHJlVkQ5eFY2ZHMwVlhKQzRzaGJUbk94?=
 =?utf-8?B?clM1SEloSkZNTXluL1pob1JJNE1URm5CQ3ZZSVNza0llV09tLzkwMHBONGhi?=
 =?utf-8?B?QnJYZTRJN1hIY1MwRWgyVGRhUDB4UEJGN2d3cG5WOHlJdm1zTE1nR1kwWUJw?=
 =?utf-8?B?bDlaN0Fsc3RQdldOUzVkSnJmV0h6alJUQ2FQUkpBVnM2T29nN0VYQmRLbVVn?=
 =?utf-8?B?TXc0blk2dUNVdTZrVzZ0ZnA1bkF2OVBZcFg0ZjBqbXNrbHhhWGNpR21CR3Q1?=
 =?utf-8?B?d1Bwb0ZORlVxSlIrUHo3NHFRcEJBa1FkNy85LzNrVEUxM3dERWxialV3bkhJ?=
 =?utf-8?B?SkRGM3BXUmg1M1FvekdKRjdmUmFjeXdLTlNrZUdVMlloejdud21MVXhKcFo2?=
 =?utf-8?B?M0hjM1U1aStiUm04cnR4Rk1JOHBSY3dXQUk5Vy9nUGFUS3ZjaXR3Y0NZKytv?=
 =?utf-8?B?eWlKRGlQZnhDNWZqZkUwTjdTSjVsdSt1azBKdGlOTjhWcHJnaTBpMUJtSHV1?=
 =?utf-8?B?a0JPaGhCWFRkVi91M1NUdW1Sa1NOKzVpSjVFNEVSWFlmcXV0MThValkvOWdo?=
 =?utf-8?B?bi9NaVZuNmlVMk5UME1wWjhoVHY5NTdYWi9tUldqMEdJZ0lNZVFERVpsNXhR?=
 =?utf-8?B?LzF2NzBhOG5wbkxoQ2g5ako2WUE0WVFxaEtVT2FKV1plQ1Rwb3h3elY3bGl6?=
 =?utf-8?B?dk9BbXZzWnhTNTNFd0ZEQ0hidkw0Q2s0Nk9DVndsc0JXcHQ3ZlZobmlObmtw?=
 =?utf-8?B?cnIvYjdsRXk5VEllYXZGdWV3UndlOTE2Y2I4WmUvY1pIQWVycHQreXIzVUVH?=
 =?utf-8?B?alhsRmdtUXlja2p1RmxsS1ZNMmlhQTZyTFYrZzdHTVZ0Wllvb0tzb3pybHZV?=
 =?utf-8?Q?CPUNhaj+pVRJg7XOHwZDaNoHC?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8638cf0-16d5-4881-8e1c-08dbeb6bf4a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2023 15:01:50.0969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wWipvxXs6u9Mq9L1vjEQ1WVHs0vPBDxTW9Qx13zBgmKKbsEXa9n95EQF79exH7mR+WCQNr0xX9mDdJp7qQ0P1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6095
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_4th_attempt_to_get_rid_of_IOSF_GPIO_=28rev2=29?=
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

SGksIA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBNdXNpYWwsIEV3ZWxp
bmEgPGV3ZWxpbmEubXVzaWFsQGludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBOb3ZlbWJl
ciAyMiwgMjAyMyA0OjI1IFBNDQo+IFRvOiBTYWFyaW5lbiwgSmFuaSA8amFuaS5zYWFyaW5lbkBp
bnRlbC5jb20+OyBKYW5pIE5pa3VsYQ0KPiA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPjsg
SWxsaXBpbGxpLCBUZWphc3JlZVggPHRlamFzcmVleC5pbGxpcGlsbGlAaW50ZWwuY29tPjsNCj4g
TEdDSSBCdWcgRmlsaW5nIDxsZ2NpLmJ1Zy5maWxpbmdAaW50ZWwuY29tPjsgQW5keSBTaGV2Y2hl
bmtvDQo+IDxhbmRyaXkuc2hldmNoZW5rb0BsaW51eC5pbnRlbC5jb20+DQo+IENjOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJFOiBbSW50ZWwtZ2Z4XSDinJcg
RmkuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9kc2k6IDR0aCBhdHRlbXB0IHRvIGdldCBy
aWQNCj4gb2YgSU9TRiBHUElPIChyZXYyKQ0KPiANCj4gQnV0IHRoaXMgbGlzdCBoYWQgb25seSBz
ZXJpZXMgd2hpY2ggd2VyZSBpbiBxdWV1ZSBoZXJlIGh0dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4w
MS5vcmcvcXVldWUvaW5kZXguaHRtbCBhbmQgdG9kYXkgSSB3YXMgY2hlY2tpbmcgZXhhY3RseSBo
b3cgcXVldWUgZm9yDQo+IHNoYXJkcyBpcyBjcmVhdGVkIGFuZCB0aGVyZSBhcmUgam9icyB3aGlj
aCBhcmUgbm90IGRpc3BsYXllZCB0aGVyZS4gRGlyZWN0bHkgaW4NCj4gSmVua2lucyB3ZSBkbyBo
YXZlIG11bHRpcGxlIG1vcmUgam9icyB0aGFuIGluIHRoaXMgcXVldWUgb25seSBhbmQgSSBhbHNv
IGtpbGxlZA0KPiB0aGVtLiBJIHdhcyBkaXNjdXNzaW5nIGV4YWN0bHkgdGhpcyBjYXNlIHRvZGF5
IHdpdGggTWljaGHFgiBhbmQgaGUgcG9pbnRlZCBvdXQgdGhhdA0KPiBpbiBleHBsYW5hdGlvbiBi
ZWxvdyBxdWV1ZXMgd2UgZG8gaGF2ZSBoaWdobGlnaHRlZDoNCj4gRHVlIHRvIHRlY2huaWNhbCBs
aW1pdGF0aW9uIHRoaXMgaXMganVzdCBhbiBhcHByb3hpbWF0aW9uIG9mIHRoZSBxdWV1ZS4gSXQg
aXMgZ29vZA0KPiBmb3IgYXNzZXNzaW5nIHRoZSBsZW5ndGggb2YgdGhlIHF1ZXVlLCBidXQgc2hv
dWxkIG5vdCBiZSBjb25zaWRlcmVkIGFzDQo+IGNvbXBsZXRlbHkgYWNjdXJhdGUuDQpPSy4gU28g
Y291bGQgaGF2ZSBiZWVuIGluIHRoZSBsaXN0IGJ1dCBub3Qgc3VyZS4gDQo+IA0KPiBSZWdhcmRz
LA0KPiBFd2VsaW5hDQo+IA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBT
YWFyaW5lbiwgSmFuaSA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2Rh
eSwgTm92ZW1iZXIgMjIsIDIwMjMgMzowNCBQTQ0KPiBUbzogTXVzaWFsLCBFd2VsaW5hIDxld2Vs
aW5hLm11c2lhbEBpbnRlbC5jb20+OyBKYW5pIE5pa3VsYQ0KPiA8amFuaS5uaWt1bGFAbGludXgu
aW50ZWwuY29tPjsgSWxsaXBpbGxpLCBUZWphc3JlZVggPHRlamFzcmVleC5pbGxpcGlsbGlAaW50
ZWwuY29tPjsNCj4gTEdDSSBCdWcgRmlsaW5nIDxsZ2NpLmJ1Zy5maWxpbmdAaW50ZWwuY29tPjsg
QW5keSBTaGV2Y2hlbmtvDQo+IDxhbmRyaXkuc2hldmNoZW5rb0BsaW51eC5pbnRlbC5jb20+DQo+
IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJFOiBbSW50
ZWwtZ2Z4XSDinJcgRmkuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9kc2k6IDR0aCBhdHRl
bXB0IHRvIGdldCByaWQNCj4gb2YgSU9TRiBHUElPIChyZXYyKQ0KPiANCj4gSEksDQo+ID4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1i
b3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+ID4gTXVzaWFsLCBF
d2VsaW5hDQo+ID4gU2VudDogV2VkbmVzZGF5LCBOb3ZlbWJlciAyMiwgMjAyMyAzOjM5IFBNDQo+
ID4gVG86IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+OyBJbGxpcGls
bGksIFRlamFzcmVlWA0KPiA+IDx0ZWphc3JlZXguaWxsaXBpbGxpQGludGVsLmNvbT47IExHQ0kg
QnVnIEZpbGluZw0KPiA+IDxsZ2NpLmJ1Zy5maWxpbmdAaW50ZWwuY29tPjsgQW5keSBTaGV2Y2hl
bmtvDQo+ID4gPGFuZHJpeS5zaGV2Y2hlbmtvQGxpbnV4LmludGVsLmNvbT4NCj4gPiBDYzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4
XSDinJcgRmkuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9kc2k6IDR0aA0KPiA+IGF0dGVt
cHQgdG8gZ2V0IHJpZCBvZiBJT1NGIEdQSU8gKHJldjIpDQo+ID4NCj4gPiBIaSwgSSByZXZpZXdl
ZCB3aGF0IEkgY291bGQsIGFuZCBteSBjb25jbHVzaW9uIGlzIHRoYXQgQ0kuRlVMTCBmb3INCj4g
PiB0aGlzIHNlcmllcyB3YXMga2lsbGVkIGR1ZSB0byBteSB3b3JrIGFyb3VuZCAxMjY1MjZ2NiAt
IHllc3RlcmRheSBJDQo+ID4gd2FzIGFza2VkIHRvIGRvIHdoYXRldmVyIEkgY2FuIHRvIHNwZWVk
IHVwIHNoYXJkcyB0ZXN0aW5nIGZvcg0KPiA+IG1lbnRpb25lZCBzZXJpZXMgYW5kIEkga2lsbGVk
IG11bHRpcGxlIHNlc3Npb25zIHdoaWNoIHdlcmUgaGlnaGVyIGluDQo+ID4gcXVldWUuIFdlIGRv
IG5vdCBoYXZlIG9wdGlvbiB0byBzaW1wbHkgYnVtcCBwcmlvcml0eSBmb3IgcHJlbWVyZ2UNCj4g
PiBzZXJpZXMgYW5kIHRoZSBvbmx5IHdheSAobm90IHJlY29tbWVuZGVkIGJ1dCBzb21ldGltZXMg
bmVlZGVkKSBpcyB0bw0KPiA+IGRyb3AgZXZlcnl0aGluZyB3aGF0IGlzIGhpZ2hlci4gSSd2ZSBh
ZGRlZCB0aGlzIHNlcmllcyBiYWNrIHRvIHF1ZXVlLg0KPiA+IFNvcnJ5IGZvciBpbmNvbnZlbmll
bmNlDQo+IE5vcGUuIEl0IHdhcyBub3QgcGFydCBvZiB0aGF0IGxpc3QuIFdlIGNoZWNrZWQgdGhh
dCB3aXRoIEphbmkgdG9vLiBTZWUgdGhvc2UNCj4gcGljdHVyZXMgd2UgZGlzY3Vzc2VkLg0KPiA+
DQo+ID4gUmVnYXJkcywNCj4gPiBFd2VsaW5hDQo+IA0KPiBCciwNCj4gSmFuaSBTDQo=
