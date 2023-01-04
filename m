Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A855665CD79
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 08:06:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A203210E085;
	Wed,  4 Jan 2023 07:06:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFB9C10E089
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 07:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672815961; x=1704351961; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=eyaTYQSs/VdY7j0gTjoADAIMXHEJqMt2LobjoRa3Ttc=;
 b=EOwMDupQTsXtC9qjZM+xXPuFFXw1E98tneTMlTXV4gCk3Jk5CRdabos3
 CEg6nKou/Zdqd81HhjHjW9fxVJzkPccJ/ZLNQBBXsdSYguOhQVGX2Je39
 2Y/Wqzrc89KIZny/mb3cjS37W271WTqwNgP1MCqydTcof6YjMR5gTR8JL
 D3XDY+Dt+4bggIyZDZDtXYhQ3YQJeyIGpydolCAPEo6HqpHjB4xrpAQJZ
 hmYB589uwUF2sF3WvAbW2puF20aX9Y2tn6wuMmK/Aie+6dmhP6Pj2awwJ
 gLDlawfbPLsyCBQ4QzIAQLCTrGrCX3jPllN9NLjaYu8/1K6aS3h27OWv6 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="408115329"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="408115329"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 23:05:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="648479385"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="648479385"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 03 Jan 2023 23:05:59 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 23:05:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 23:05:59 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 23:05:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n36yw+Hm9/b/NH9JuBXLrPXyO0Jn+nUNmytKnEdZs8OVaQpjI/4vylgUZ0lmTBXWn2EBGl8IUKpJJf8/jaKWyXC/E1TXWc+ymv7aoupWN1kzJswjnEiRAvD9PI5cE0qEEAJt7VkP5fvqzmgltqPPWrs6vqoeGExAHBtEKRgiB4BewzgaQJhljVQ0EkIqrihdwEocNiliLKOF5m3mVvTwfE0QKz7r8LfyVzWP5RirOYy6XcFZy4EetdCAu5aE+cjhqaalI9O167fTgPBdAjUgWarYNxsyFsKdZAEA9OgcmL4hNIZ3rgLmF8AnaZ6m//j5iywyLfW6e/IiyrpxHd1B9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eyaTYQSs/VdY7j0gTjoADAIMXHEJqMt2LobjoRa3Ttc=;
 b=kv1x1fgOMMrEdw2556qMqisG4bngVMdSrZmpXe+KXxKSJz134a0hpm7XZnm77HGpOCTzkfZeZN6HTFBbLlKayBTFodE2SCW9i/gTXnzC9jdM2l2EBVbOIPAYYNdyb4RXZmQmQuHzifBHAkjHSUKTI61BvLz3RYWMuEbs3hpKzhbB4LjRaW0sYHoEo3x8EOZCoZmnSgFDmrHuTnNLbYtXD4LbFSGY4UR9BMOMcL2m1ThwaUctV20wcoRvhPyVSeb9Vs5bnhfNE5Mlf9rh0Yyz+HQp5l+pYo++4602C/fOv+V7fCrny2UHClW6KRrHJ3OsuzJm9YjmzTIwM6ksUXs2Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by BL1PR11MB5381.namprd11.prod.outlook.com (2603:10b6:208:308::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 07:05:56 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2%3]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 07:05:56 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 04/13] drm/i915/dsb: Fix DSB command buffer
 size checks
Thread-Index: AQHZIAr939YhIFyds0aHgdPb63BwrQ==
X-CallingTelephoneNumber: IPM.Note
X-VoiceMessageDuration: 1
X-FaxNumberOfPages: 0
Date: Wed, 4 Jan 2023 07:05:56 +0000
Message-ID: <PH7PR11MB5981CA1C05F0AF85866002FEF9F59@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|BL1PR11MB5381:EE_
x-ms-office365-filtering-correlation-id: 4dff5507-0991-4a35-ab93-08daee22206f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PkNLssP6BmemFPCM1agqHe6FOWq+Q9px7LQ2iFyEcayYEudmEU5Q9btAaz08DjNfg9eGTPfCpPfeF08+0MV9vPAH4USmR+soLUPketd4eUj8z8UJxCQPocHLxsOjmKd4GaliGVliFAQ3k+/cgChi8BlQGw/pN5vO0lBMmtZQMpUDm2uXpELkpzW6+gTKBqXibmX8JCdRCWytgZq3vsA3X1/7S5s4ZyguQt9LwLEqEN2G4HqTH/kDpu48DP6UNXS7T7NZdHx+1vA/gQnR/JePQdNuM7YiAqPuMUeXrRTjpyCI5jKfAmwTp3cCaizM+thmcXsrN5bluRDH4GPBDLrse6V8+JIrZXXR9SzaZ7v7dwJei99EvlmvntNcdH+5qfwOyVubiTswh8/HhqSrfDMoCYCrNvLREXUj9nmoDZjY+t03lTn1BDG5dV+R4egA5+uc7oXNYA+ROMelYCVDCUzIFoOE4lWMrFxL1gprWDz4lzAMq4bRBPPippK4niM4UPAFcYqJBy40CQOZvfx/bavxHR26g1rPY62Y/Q2myF1um7/kQxVgxAvxe1Jl/uZqepMZWpYHtfNdNFHhad6Xu+oHgoDFURmaaNcHum6Nk0vI5zY9e7lg0kECnV/A/6D233wc6y96Psr/fSVVPxm53qSzeMjvAbTvFds44Jvlm8T256BAwOoSxg3Cxyxp5T3i9tlm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(136003)(346002)(376002)(396003)(451199015)(316002)(38070700005)(186003)(558084003)(55016003)(26005)(71200400001)(33656002)(478600001)(9686003)(7696005)(86362001)(6506007)(55236004)(110136005)(2906002)(41300700001)(52536014)(8936002)(83380400001)(5660300002)(66476007)(66446008)(66556008)(8676002)(64756008)(38100700002)(76116006)(82960400001)(122000001)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mOfALyC08+plDI67f+VBX7B78/Ju2jDV6zr2rjLuM7M0fQXjpGfsgF8uhlrf?=
 =?us-ascii?Q?VTAiDQ2FdFHG53jYZWHqRcMnU2RnUIwQEU01lhmnckbe9tzDVFM4xLEs/7wT?=
 =?us-ascii?Q?d4PMCn47VG+pz9M3Gf3ODoGLkiY3tOOlhKWWZ+JGRPrT8dZ5mmLs0A/hDH/O?=
 =?us-ascii?Q?oiuRouoLMWA3g1hhrbsIEP0S0iBvsGHJlOzYB6TKVjz9ceXnFhaf6zEj9z3S?=
 =?us-ascii?Q?NLHlfhnBpBKGG1L41Q8xv58y/2YQqaAnVbzYbsku5o23ERe+zgueHxIorwQ3?=
 =?us-ascii?Q?agLIYeZZvrZjFLNHZtdsnFUSMAlttUt8AJhr1VjFz1s2m3CrXiJSlX6cl0uq?=
 =?us-ascii?Q?pGwp9paEhSiiV2GbkVMi/hMv7w1uCmVjCb7w2bDv5rnZxD3ionKC+mIUmEiv?=
 =?us-ascii?Q?GCg4PzP/7m489YXBapCBG/rbxUEaGZeAu1JSWBuLLcgYlNaq1hTKoBA9D7sM?=
 =?us-ascii?Q?dymTeuQoOZmMC5H47iAE1zjttYGrmhBr7NJPNE2hYNHCzxc0RT4CqfI7ic+S?=
 =?us-ascii?Q?hlIk7kp8ycONxw2jER5+tMO4T6hNg0pBtwPs1ObDrLY6V8b74NMhL9VOqAJG?=
 =?us-ascii?Q?4QNq6noGyV+xegZg9rJdK4RUQfrOEgwlgKLmN8QLraaHMtZLbjg2RMo0STas?=
 =?us-ascii?Q?ascXevr2tvOS2482O1vJKotJ1uFDqzFLW+zcBXBfoqrc/DLo6fGKkT5ZoV2t?=
 =?us-ascii?Q?K6SIGtVO2sBeJwqBKpAtvp4Vi5/dQg0aQl8Pkw/OC/01jGOWf9cW5tlKXXjC?=
 =?us-ascii?Q?qchRtFwIzxNVcyl/PRT9lB6EU4JXV2iOKId3GfqbqN4TkLCLdsFxF2GWm9dJ?=
 =?us-ascii?Q?eIx8WWRa2W1OrBZ3vuVvHfBuV3Y4BviDehTH/bxgHkstESvcuy53dDo6IQAq?=
 =?us-ascii?Q?11NO7+Bg8ztOduPFA2k7b80bqtG525BR+g63nd/ByQK5eixoUBms517x/TWi?=
 =?us-ascii?Q?Zb7BY5qq7cV1WnAir40gH7H3exH/m5Q08t4fqfYexsQuaAmrTEqnnCKIvQOF?=
 =?us-ascii?Q?qESRFgVP2n+90qNRabrmi92b6Xo3FUUpItRGZISezIPr9j1OeK7wVS6m9Mpw?=
 =?us-ascii?Q?U5AdJ20ryUjSqF30oODt3F9UZrP+6hoZz+X3Q7u1lSCM72EiYcVt8MIa1deg?=
 =?us-ascii?Q?cnydfFsYJoTyB/nRvpGSd01lpp5hoXRLEnOzAsJDX8R67Xmt5L9Q6qhdnKJn?=
 =?us-ascii?Q?Nys/aO11x7Fsh8bJKy72j+Sw+2xGxSFZDUC9qWmmqtK3Vu3qjUIBTk+dpAvP?=
 =?us-ascii?Q?3Nckvc708nhRgSL3s2WDoqJGwddEQBiW4BXhWMtB3DXrcF+D6wwF+Kg+Guw9?=
 =?us-ascii?Q?KOgB9eOxIO9JZluHU/4MnLc0Hk0hhy5Hoby3777XxUNRa0agKD51l7S3ILoG?=
 =?us-ascii?Q?pma+DpkQ75Rfm0tV0ga3IuVfkwnoiaDW57O/yULSlDQH6X+EN3UmZ7y7iin+?=
 =?us-ascii?Q?Ql5UBXKau51MpEr+yfoEFqFUOeTlTAbyzrspKMY69nhST38UJmDlke2Ncv2r?=
 =?us-ascii?Q?xO0AX9vq2X2HruSYllRd5h+FpiWF7+DfuALEGKg+dT8olDHZ6tDSdLd8a2js?=
 =?us-ascii?Q?NISfnrdyc81l24gUSVPA3KUhJNdl9kvHjjMoCJia?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dff5507-0991-4a35-ab93-08daee22206f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2023 07:05:56.6522 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wZY7ucEWSEzoISgzE9BwAStLO6VsjfQCkcIXVZmoR3+gfJPoecadlbBBZITGqINZ2AuZgRTJes8menV8XQNG0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5381
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] Recall: [PATCH 04/13] drm/i915/dsb: Fix DSB command
 buffer size checks
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

Manna, Animesh would like to recall the message, "[Intel-gfx] [PATCH 04/13]=
 drm/i915/dsb: Fix DSB command buffer size checks".=
