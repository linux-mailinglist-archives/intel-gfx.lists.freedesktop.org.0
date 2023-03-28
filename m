Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC3D6CBE00
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 13:41:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 999F610E033;
	Tue, 28 Mar 2023 11:41:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF72B10E033
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680003687; x=1711539687;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=pby5X0djGLgaCflrAS6k90IWs0KiyLdHIqWqCWKVSas=;
 b=lyQoIXG/yU968IdfqemI46XB5eFricH0+pnW3NhwHOQvkz6KB6HbcnMl
 h3kN4i4EklYRYc7iw3FctU2nAvo40VjJQOJ8X/LJlMNZuwb9IiV207b2U
 x1Y5anXVwANqkH/swa75JSX3IUFB09sV8zP36E/AuPRjlhUUE4x+/IbfV
 +iCmdzEyz/DFnXNNKJygAxmnrOMfJq0MpQ6t300YGCPa9jVJJbDcNDzdj
 BMEXJpVzVISQBIHamyxbsbENAXVcELXzXRNJsdDegZt2Kl84S8N7/Ga+N
 b2vq/rfm/6LBXebOYlMnwUveAZoyBoFpXczHU3BrXFw8FZZ4AlI7afVAb w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="329000818"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="329000818"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 04:41:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="748379974"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="748379974"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 28 Mar 2023 04:41:26 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 04:41:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 04:41:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 28 Mar 2023 04:41:26 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 28 Mar 2023 04:41:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XcgYFsgNHAmXy4nlsHIU0F4FKndv7fELeXzWyuUmoJ8XUbcX6IhpBH1EiOxQZFo1FOE56SNV2vDMPr5cspdck8y2+uJL538TfsdCrfIxTPSSwMmdNGTfVRD6o6Hj6BgvY98yDgjZ4INv0YtwH2IL/D/cDi3x23spy3kuOJ3j4vuLYK0x2M1zda1R/PBZWBWr34RUd4MQ0mOUe+Oe/2ynhFbDO5UEY9aInHZaqh1kc4IPPqLmReUBKkUfXCrkJzzUVjV3ZRFwja0em4iKeD+f0euBXjROlzW9z8TAz7vD9oLcvFPaIty02Ir7/nTjsoZYzMc3aS5mITB4pN8VHXvZlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pby5X0djGLgaCflrAS6k90IWs0KiyLdHIqWqCWKVSas=;
 b=kqLFI32ZodUnaSTpjznO1CTSwXQd5ELqOV/qY4Klrye51Abi4L2AEvFr2uXcpDNPYr1XUvtEUj6X3ugr1V7h/FkGXU9J6OXXTNEy4Dgn+aa78ttM3qOFIcwsSjqcnWRoLzcq1q8J+g5mLZ4v+NQCs8+E+xpY6cPw+uz+MquP4ljaj8gtOrtzclBoiluBUf7xyCTfMrAgCvE4Or1hQ4oHYaKAkeUJUyPN4PzFmavJMAd23YoL39ub5dli5RbUba2bwNFzHqSqR9i35NLO7BHp60tTdWOhNYtLcSJWx2K5kp7MHCqe0+Z6qdkY5OvUw8+Iah3my1yanEpJdU0/O7Gnyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by CO1PR11MB5010.namprd11.prod.outlook.com (2603:10b6:303:93::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.29; Tue, 28 Mar
 2023 11:41:24 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ce2a:ef6b:bc63:1467]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ce2a:ef6b:bc63:1467%9]) with mapi id 15.20.6222.033; Tue, 28 Mar 2023
 11:41:24 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/7] drm/i915/mtl: Initial DDI port setup
Thread-Index: AQHZYKlI4ua2n4rOcEibUg4LGScwDK8QEx0A
Date: Tue, 28 Mar 2023 11:41:23 +0000
Message-ID: <1704f0909b65f09ab6f6f8eded4271706c2d08ff.camel@intel.com>
References: <20230327123433.896216-1-mika.kahola@intel.com>
 <20230327123433.896216-2-mika.kahola@intel.com>
In-Reply-To: <20230327123433.896216-2-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|CO1PR11MB5010:EE_
x-ms-office365-filtering-correlation-id: e27b1d2e-89a1-4fdb-f578-08db2f815bb8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rk1WK26e+ZEUWNOmkB3rY8xod0UWEyhuZVK4GsI37QzJI7nLnoiwwFOFzXVBgzbg1kopKnaqUjWiKGo+8bviyot9LtloYWgfAmgez5hKxyLwOZLe33igUtHSU8/72QrxvMzwVGxFvM33BqoRv8B9FpzVpJPPGFE6FeUCbmZYUDM7Qwxp+O767CQxIOk4IhG+ArBolFmqUDLPgxkoQejPY7HxlAF3Uyw7o51dQgarxpCZr+jXHS7XsCvkpQ0pq2KOU6COWjMHbRFaeANndURJhnazUO2kD2qHL+GmptqGhw1xUKOL3gWMFgipWhQ+HsLvbIU5ssMgLVBAquE/8NH0WsggnN7jz8nZm7Q6FH590njdlH18Gm2+JYpESndhOy6Mv3J4vIRgmotU7WM8FJbgWRy3WuEF2zHeLJ8/cbLgT2S6LWbHaxT4e6k4kovsv+uUQVS1b5qgSNTTnXRIv/bvvSbqThhA2o4sMBfH0oQgM4LISH7GEmsWEXotmjHHkMWXlJzfa/A3iMrWj2G2GQPdNCoQSjHstE98+saw6yYlFq0g+MlCsu+7WPojXGmEtFtN9rTvVwtMqMpSRfdiMkS87sgzxdZOg2raRWh/CwWSkFvbFBGNGMYbEuMmGKZuEXh6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(366004)(39860400002)(376002)(396003)(451199021)(316002)(478600001)(110136005)(41300700001)(76116006)(91956017)(66946007)(6486002)(64756008)(66556008)(66446008)(6512007)(4326008)(66476007)(8676002)(107886003)(5660300002)(186003)(26005)(6506007)(2616005)(2906002)(38070700005)(83380400001)(38100700002)(82960400001)(122000001)(86362001)(71200400001)(8936002)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y01kRnRDM1BmejA1Ni9sbVhvU1NpdnVtOEVSZEpPUHVRSzVKS2pKWHJaTHNv?=
 =?utf-8?B?bmJmODNjS3AwajdGbXZlMzk3VFFwTWplZGx5NUx2NkxSdWFOQ2d2VUJHQVd0?=
 =?utf-8?B?dllDR2VZUU5pcWllS2dEMHpuU1JpdithcGRGRnZDVXgxQzh0SjdaK0hVS3dT?=
 =?utf-8?B?cGVVOHlwblIwRFpwb1VXOFBMZ1VPVGhEM1JqWVpid0ZyZEk5MWF2Rk1qZnJv?=
 =?utf-8?B?TzR0cnlrdkNuYXREcU45WTBEaUJSdDZLYUNrdUdoMjM2R0RDU2VPc1lJdzZ0?=
 =?utf-8?B?aGNTdGdlNk42VmhaOUNkY1lRYlVvdlErcDNRSHFmUnI5RWNZNC9CWXU2c0x3?=
 =?utf-8?B?YlY3Vlo3M1ZqZzdSR2xOR0MraG1hMVVKWFdybmF3R2JlZnR6OEc0RjJqTlhZ?=
 =?utf-8?B?ejg0TjBsNGVrUU9LanYxUi80cWJ0Yk1sWEFHcXZBb2NPaFJ5QTFEZG9XN3ll?=
 =?utf-8?B?RThSQk9XRkhEeVdaSytmUHNVWnlSbnJmVlBMYVIzQUMyK1NxUGdIem5PWVlB?=
 =?utf-8?B?V25mTEtqdUxXQ1c1eHNmTUlaQUF4T3FwN0VFTjAxZ1JPbldXQ1RWcU9nQnBG?=
 =?utf-8?B?RDNsQS9xUjNKV05PUEx3THQvZTFWdDhLa05RV1JqbElWTE1kbStvaS8wYmJx?=
 =?utf-8?B?NmlsV096cEJVZnlWY2ZtcVA3anZPMEVQNlM1a0hWWEJwQkhkcTVXYmRiZ2c2?=
 =?utf-8?B?eTVWMTJaLzNQenJtSFlGQkVKL0NYNjlvTHpVT3p3R2MvdlNTTjBZT29SdVhG?=
 =?utf-8?B?VjNoeVR0cmNFZWtDY0h6bktNY0ZYeWorWFZxd2pZNUNrK2F3bGpSYVlkL0E5?=
 =?utf-8?B?ZzB3MmtZSFdxdjJaVkhXT2pFQ2o1WE9tS1FoU2NDL1hGZXFTbkFmSnQwREZ5?=
 =?utf-8?B?SnJjMjd4Rno4SExPdUlRaHkwN3g1NFFRMVNoR1IvYkI3SU5yMHFXc0hSNWZQ?=
 =?utf-8?B?SGsyZ1FES3ZjcUJnaWhnbE52QUQzd2I3Y1BZa1JWbGJxck04NkpaaTU0aGZ3?=
 =?utf-8?B?WHNjUm4vRUtmN0dZaG9sMXFpUlQ2WmprUnNpZkx4eVRTWU1HbUwvQ3V2TEgx?=
 =?utf-8?B?VmlHNWlUTi9wK0VFYlcxWEN5cHdLbEN0aStqKzZTS2RSeDF1S0NqOFpNdUp1?=
 =?utf-8?B?eWllbFVhSG1TVFF4VmZiQm9aOE5UYktGWVdxS04yTTZJN0JDdTBEY29kbXhH?=
 =?utf-8?B?UjF1cUU1S3pTNUt4NGkzMGllaWZINVhrUW9GL3J2bjFzZEJlbGRlUVhxSVhB?=
 =?utf-8?B?Z1NBeWMxbFdrUEFyK2h1am9qaCtaY3RLWlNHaGlOa0hNa1A5VW1CVVRvNWFx?=
 =?utf-8?B?eTB1bnpnTXZaNE5YbUdGOTB2d29NQ2JPdUh4SGRzSDl0NlNRMitZdTJtd1Nl?=
 =?utf-8?B?YlNob0ZLVFhGTWl2SmR3QXhUNTNreTB6Wk5UZ0JMdExjZ1llekE0T3dndmNH?=
 =?utf-8?B?NG1SOHBOMzRLQUlLUlg3RUFuRWQ4c3RjRnVsUFFMK1VXamNPSDN2M09GZUtB?=
 =?utf-8?B?NTJBOEtpU0s2T0NJRGt1QUhWT3hvUmVTc0JTcWhzdjljbmFDUDUrQnc2b3Rh?=
 =?utf-8?B?MVgxQ1N6VWlwZ25uYWJ0TmZzUVc1a3BHMXdzOXNhVVJVRVh3YnF2VnZucjEy?=
 =?utf-8?B?YUpIbVc5RkdVbUgzMnIrOHVjUHd0RmozV2lYKzZFNjE2NSt2dzFxRTdnUEkr?=
 =?utf-8?B?aEwyS2czRGVpbm04RGg2OVAzZ0RHaURoVHJNeEc0MlY0djlsVmFzRStOZzdQ?=
 =?utf-8?B?YU1kMHZPQ1R5S0R5blYwYmNLUmhFUnZDUVIzam45VUR1Y0xyaC9VYi9QblBN?=
 =?utf-8?B?Z0JGSHJNK1hLaUtGNVBGL3FGVkVsdDdDL0dsRkdTMUY5dHBKbW5iUUpXM0Jp?=
 =?utf-8?B?ZTJTcEE1SWJqN2o3bTFCQ3BHMzd1b0ZxbTlUWGE3TG95MFFCeE94VENha3lL?=
 =?utf-8?B?OGpxQ2x4a3RKVHJTNjQzWDRMMUd1TEpaZUJDOXI5akZ5eHVrQnU0NEtjNWJ5?=
 =?utf-8?B?VWt0anJteCtCRHVNTGh0Tm5JWDAxazVqVm1jd2hOVXZSTHhEZVhJODdXdFNp?=
 =?utf-8?B?N1B5WHpwOEpPZ2xDQjV2c3hXZHBTQ0FhSi9pNHY4MU1EQitqM2N0VE56U0FL?=
 =?utf-8?B?U1RvN2ZTeFpOSVhEU1F1R3lvQks1Wmg0Y1E4eGFTRW5HUUNXQjJtQ2xGQm9u?=
 =?utf-8?Q?JmWD6CX0G6HbcohuCnZDXRQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6CA36F0CAB2D944E81DCFCA8F539E781@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e27b1d2e-89a1-4fdb-f578-08db2f815bb8
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2023 11:41:23.9170 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R5bu9QKiLiMsa9F4tUnfk2fJl3cBq/R/XzaOVnGl+WsDzT/zdvVslzgR5R0GW0uDWYIWJNV5EgXpdiWa0kQjCxosmnp3bo/6R/KO5w2IAo0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5010
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/mtl: Initial DDI port setup
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIzLTAzLTI3IGF0IDE1OjM0ICswMzAwLCBNaWthIEthaG9sYSB3cm90ZToNCj4g
RnJvbTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4NCj4gDQo+IElu
aXRpYWxpemF0aW9uIHNlcXVlbmNlcyBhbmQgQzEwIHBoeSBhcmUgaW4gcGxhY2UgdG8gYmUgYWJs
ZSB0byBlbmFibGUNCj4gdGhlIGZpcnN0IDIgcG9ydHMgb2YgTVRMLiBUaGUgb3RoZXIgcG9ydHMg
dXNlIEMyMCBwaHkgdGhhdCBzdGlsbCBuZWVkDQo+IHRvIGJlIHByb3Blcmx5IGFkZGVkLiBFbmFi
bGUgdGhlIGZpcnN0IHBvcnRzIGZvciBub3csIGtlZXBpbmcgYSBUT0RPDQo+IGNvbW1lbnQgYWJv
dXQgdGhlIG90aGVycy4NCj4gDQo+IENjOiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlz
aG5hLnNyaXBhZGFAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogTHVjYXMgRGUgTWFyY2hpIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IENsaW50IFRheWxvciA8
Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+DQo+IC0tLQ0KDQpSZXZpZXdlZC1ieTogVmlub2Qg
R292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDYgKysrKystDQo+IMKg
MSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXgg
NWEzODZjN2MwYmM5Li45ZmU2ZTMzYTY2ZDYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC03Nzk2LDcgKzc3OTYsMTEgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfc2V0dXBfb3V0cHV0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpDQo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoIUhBU19ESVNQTEFZKGRldl9wcml2KSkNCj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47DQo+IMKgDQo+IC3CoMKgwqDC
oMKgwqDCoGlmIChJU19ERzIoZGV2X3ByaXYpKSB7DQo+ICvCoMKgwqDCoMKgwqDCoGlmIChJU19N
RVRFT1JMQUtFKGRldl9wcml2KSkgew0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
LyogVE9ETzogaW5pdGlhbGl6ZSBUQyBwb3J0cyBhcyB3ZWxsICovDQo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9BKTsNCj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JU
X0IpOw0KPiArwqDCoMKgwqDCoMKgwqB9IGVsc2UgaWYgKElTX0RHMihkZXZfcHJpdikpIHsNCj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwg
UE9SVF9BKTsNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kZGlfaW5p
dChkZXZfcHJpdiwgUE9SVF9CKTsNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBp
bnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9DKTsNCg0K
