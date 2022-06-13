Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5CE547EDC
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jun 2022 07:16:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BD4110E5DE;
	Mon, 13 Jun 2022 05:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EFD210E5DE
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jun 2022 05:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655097357; x=1686633357;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mqtf83MtRcaG4oybpINOEFhlDzyQfABfPF9O1tb31os=;
 b=DqLa0VRSUN/uZ7marTKMqvHnOIeZm4L1bH5IcnBM8/Iwqetc6MT7flhE
 bmFs7Rfk0woB1CEMywGFsIqNtKmPJitC1FX3n7xuI15dnazG32MEH/3fr
 Gk+RNy0qKGiDvkq0xKZ6Y1uYEcNeB3thC4L6H1vNE+RK8y6VwH6dPOQyl
 EkCLH7Yk3q2DExBNreEfbJBg0i31KFlYDvb0YcB3fDju+27NVfIHoGCIJ
 3T9Z3F8gLqZs/3LuknRF5k10ACmHEgfjEV1YHzS+R/wdtUJOMPfUp2bY2
 rJ5/i9K8fWi9uPtBxSlveOgiFmSQrYoG3/i5OrSePR9iE6cZmF3GYLLXo w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10376"; a="258605985"
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="258605985"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2022 22:15:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="761380039"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 12 Jun 2022 22:15:56 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 12 Jun 2022 22:15:56 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 12 Jun 2022 22:15:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Sun, 12 Jun 2022 22:15:55 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Sun, 12 Jun 2022 22:15:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cCQ6ccE5P+YDCoLzdyfhB7S0bU56ThgFNTGHykZhae1D7Y4WkVbvtmrBvTMFrN/ZubArZeSSNPVXlmXMtPQbIHBn8tM9t8Fk8nt58k89BW/ymLOhS7zXVzoqHwfI7TF3wV22R+y3DCRxPRSKl5krj3YriCC4DuKbcEA5fKOcP1W/DOvYiOKsveE+KP5yXzzv1VrWtSX54FSJNAaX/r8U7oPoZzcSMhYlRG7gjgveubXwzJ1nddTC/OpsPsDscITfYBgXh+dD5vWASthQvEm9IYXadMLeLKKwqCu1YY6kOaC1CAYjhu+CkVgIg3AOpE1tGiiywxzIDHM0Jo0QCO4n0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mqtf83MtRcaG4oybpINOEFhlDzyQfABfPF9O1tb31os=;
 b=F1hf0eS4ktYcIspaOrEkv61hwjoDpjxsnKyIcUNstnsdPL5jPzOzA9Cb04uDrzerVEBvEYLbLV/n/R+BLahQTx//pF4BDMNcXQLrJE//c9iHwGj79ASWFdxUTizn4Qd0k6Szm2q9El2/eBsrEDpdW/IRVxfo6UO2gddCczeWJAdS3o2WvJlNuNMk8k38fP2ijllJ12fkzXdt6E3gy8ER79ag4IXRqxTGWhGpE8iyek88P7xNeGf3U+CO0Sz2SprwTc8cflcBRcvP9/thKfGlqznNKrwteLLJkmFcIzhHiRY/F9AUuP8mtBZXlXgprJ8h/U9ga39V1CNNgq8tkgHPKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by BN6PR11MB1555.namprd11.prod.outlook.com (2603:10b6:405:c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.12; Mon, 13 Jun
 2022 05:15:53 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::7148:7c4a:ca02:bab7]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::7148:7c4a:ca02:bab7%3]) with mapi id 15.20.5332.020; Mon, 13 Jun 2022
 05:15:52 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC PATCH 0/2] i915 writeback enablement 
Thread-Index: AQHYdZDNY8X+ZenkFkiJoIw9YXEjp61M3cBw
Date: Mon, 13 Jun 2022 05:15:51 +0000
Message-ID: <MWHPR11MB17419FDC5C9A16EABE8A2577E3AB9@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20220601082200.368911-1-suraj.kandpal@intel.com>
In-Reply-To: <20220601082200.368911-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c84935a4-6ff1-4f7c-df69-08da4cfbc91a
x-ms-traffictypediagnostic: BN6PR11MB1555:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN6PR11MB1555636F0086C65FF2379851E3AB9@BN6PR11MB1555.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X/Xjyr/KEX6Vm9/zWqskPYEn4ao4x5WUTfo27m7YZ3xMiUOUTLLU4KWRMzpRJRVa8UPRtRWpZD/vtbCV3wt7GqvL7Dpuk+Wri8mKmjLFb6tfTvduQOhQxiVOP1hnsdOR8jxgCyWoo054/8UUBC0TOraAOq6Y3np3CTiKIoydMkboKOKUuwoPbe4k8p0go+VZaJIUm/S9Z84/tE7PuKKm+qDAygCUDP53+b3HiYtOhEy883zgqF+JayNUOEMEyXncXnCSCdVk4cLyc7e19Nt2PMsyaSUv9F0Jq5d7e5kRyMTTtjSB541OJuc/kW6Sip3X8ivcazs/rZ1xziKVZjkI6n3kn44DjjSY0XtM9dlqRar4A6LmroPl8qbmUtw+PibtPCAT9b+ZWyNewr3v1vTQh2RsUyfA4qlLri5z/ixjlPKC8MSDlSs/26Zq9hETHoDT8jZxfZApUOoSPDjBF5i3H0IvJ28WK3987OWtxqAO+Nf5abkguoVJ7xmVeXUrJcu7zQYv7Z3+JApAQR+0tu70BD2lXjfdx33aXtUr5Cs1SwN9JsJz77pBN0v9tlQWCj1ZtB9NscHLA625NNvrK/YaXulysYVCEWsAUolYADRJwsQDlrl8kupmjspo6QQJ+kIdByEo08jPamTnLCCeFxfkvfgdalpAoq/ovQVYAgx4E5TjnA3bSV5DPY4phquzWu8ukibWa1VA2b4PHwyVFwy6BQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(82960400001)(122000001)(66946007)(76116006)(66476007)(2906002)(33656002)(26005)(6506007)(9686003)(7696005)(38070700005)(5660300002)(4743002)(966005)(508600001)(52536014)(55236004)(8936002)(316002)(55016003)(6916009)(54906003)(38100700002)(8676002)(71200400001)(86362001)(186003)(66446008)(64756008)(4326008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sP8BGQ+BxREM+S9DZY/+j45Oh+c7pdsKm9KNhGVGJf5Ee3u/JgmMrZ2h5cZQ?=
 =?us-ascii?Q?9DH6ewDWieGyQBCulLuxPvtcvT8TSItEtNJ4T8OIdoWaaMweRwfArU2evQ8Y?=
 =?us-ascii?Q?Whv9MLSwrA7dvkbqbjak9CC1doSTuf8p2jSjffhCyRiFMuI2ja1ggiClxJA0?=
 =?us-ascii?Q?RFpy0msBo7mCzKFl0KGhtmF4tlenIn1JI1+yoR5Z26u8C4yIxNyBSpn07poo?=
 =?us-ascii?Q?8cydedA66ou1F9yIpOJYU6vGzrz1JKX4sgIWP0gP7uNTL5MKLcmEsIyMdVD7?=
 =?us-ascii?Q?dmxH9t6e7nLYHSIkAk/moGyZlHK+ygPhVmG0rz253/EMJAb6x9zQbbZjbFVm?=
 =?us-ascii?Q?lLrVesjAy5cV9ktguwQ6dZSbq/Ytq3qYcM+1wI6tzAUqc4eiDCU62hTqGU+s?=
 =?us-ascii?Q?+UJWhzZUuOL7MjF/nQmbdV4Gf/9BjkcLtikJ4jZ1C2cW/2y327H8zE21GtP5?=
 =?us-ascii?Q?eMXui8U4Bg1ofaHtrQ3Gyh+RvUrQesdOyA3cLVpu2Bi08KmRk5MbTOEB2qto?=
 =?us-ascii?Q?7DqEw2/Du8jyQYx9r3E4vR3zIM+GAy3JjrRd6ysz9oedtHyavuW459dn4GeA?=
 =?us-ascii?Q?V4xm1eEvRv6ZWqbWzlRgNtZRW+AJ5JJA2Fxr7fWdPSaNhsA3RyPJV6uS8/vm?=
 =?us-ascii?Q?ITjaJhMEiGvk+uVtirHLglpCo0HCcF7c2ChyW0oeI/XIaSHje3YUKh3vEnzM?=
 =?us-ascii?Q?X+rhFT3TJXA+U/K1Nv6uy78B4cpVQzKHb3xOtqRO1R2aDXHLf4MVkpEohDhr?=
 =?us-ascii?Q?P3V6PXDbnvkZVQhYQxklWv/U2yH0Wk9Fonmn2vBwj8VUk9RKXflc/EjYlgLE?=
 =?us-ascii?Q?o/n5t3LOn4aMK8frtMVslvqPHRQnzHcbrezPprTTRgwu6MQkodCBzI3VCUhO?=
 =?us-ascii?Q?zZvCV0MROIxjWoYCHGj6gMxWIYAWJRK/SyXt3XBVQSW74m9zsPfdIEbU0R8H?=
 =?us-ascii?Q?j9B7/pIGJCE4lPDW6/v1u37KQDY52hu4jkbBPaw6263IF2Iv32rFiW87H2Wy?=
 =?us-ascii?Q?URyc07RjHwcM4Qp88r/68MKF94Rn5JETurOYbQy5oWSyIvfV6BuTPe6d2S7/?=
 =?us-ascii?Q?nxK830wTgP5OcChNq6PFmjT2woBEEljFvwL/yrRqeSaJaT2K7ZaEqZ992WbR?=
 =?us-ascii?Q?NeTNCceV6jUnWxu0fg0Y73+WnDUScApi0KBz4LJhBWGDQQuQC9Lp/OEs/nYn?=
 =?us-ascii?Q?wklkDTy8m5gpo0HNkfMlEyQR79vGEIEwjDEaZXhXRmszBk3Nx9t1Fi4dYolY?=
 =?us-ascii?Q?NLQDbfdkN6tWbRByILVv/SBt1kDtyqzFbqxWfCoKesKHjnYYxWHAUWrWgTZf?=
 =?us-ascii?Q?yljPmY9x4nNEeJjqt/7nbnIDsGIBPjtUXj6qevnsNhEbn1iMuBWz2OWCNTH9?=
 =?us-ascii?Q?uOFT2RBaazoWgsdgIzfmLBxLkP4MqWqsE80G0/C0hV0f7Y4tPFhwunkj94XZ?=
 =?us-ascii?Q?LcBSTNSs4GjP/1eQyzGqW6GULuG9pVeQN8N7KFTyESt3s2KUFGQCf6k8yi6O?=
 =?us-ascii?Q?vV4fhWQcint6kEM6Y9tDYWknl4j0jhrn3nBbk+Js3uF9bXvVdN4pH8j66tnM?=
 =?us-ascii?Q?cEd1NIhOYdGFsUe0lNgy9CupV1dGGtHVi5ZmAslh8sqJ7Mj8Lcyvmm9SmcPQ?=
 =?us-ascii?Q?Dz7zYwR6d4lWzrpei8/cvNT2arlYAkdrD02Y+FnDWKeQxpslA7jrbzsXGyEY?=
 =?us-ascii?Q?xKH/L0j3cvjnxpRmBiejMlvJPrukBosDf16WJALpqJJUaaXeMPFfZVxOz0Vv?=
 =?us-ascii?Q?bxqMF5UnsQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c84935a4-6ff1-4f7c-df69-08da4cfbc91a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2022 05:15:52.0205 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YUdDUsDlEvWSgw+JxNlwq1AjeOP6fX+InXab2aah0pkw06ilMRafwO5xZnuN36mg9GQWOBzUTlGwwC9j2IcUxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1555
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC PATCH 0/2] i915 writeback enablement
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Vetter,
 Daniel" <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> With this we try to enable writeback feature keeping with the drm_core
> drm_writeback framework but to do this we have to create a drm_encoder
> and drm_connector which is not present in intel_connector and
> intel_encoder which causes all our iterators to bug out as they assume an=
y
> drm_encoder and drm_connector will naturally be embedded in the intel_
> counterpart structures but this cannot be acheived from
> drm_writeback_connector as the drm_encoder and drm_connector fields in
> the structure are pointers which does not allow us to embed them in our
> intel_ structures.I have tried to change some iterators and show what fur=
ther
> changes may look like but this will happen any and every place
> for_each_intel_encoder or for_each_intel_connector_ is going to be used.I
> would like suggestions on if moving forward with this approach would be
> useful or if the private i915 framework mentioned below sounds more
> practical.
> We previously tried to change the drm_connector and drm_encoder fields
> into pointer in the drm_writeback_connector structure but faced a huge
> backlash from community.
> Other than this approach we have another solution which won't be as much
> of a work and will require minimal changes is where we take the whole
> drm_writeback framework that is being used pull it into i915 making it
> private and change the encoder and connector fields to pointers. The
> approach has been floated in below series [1]
> https://patchwork.freedesktop.org/series/103417/


Hi Daniel,
Any suggestions how we can proceed with this.

BR,
Suraj Kandpal
