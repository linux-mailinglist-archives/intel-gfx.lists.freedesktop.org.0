Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD19590B43
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 06:34:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F94EA4513;
	Fri, 12 Aug 2022 04:34:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B3C3A1CDA
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 04:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660278834; x=1691814834;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6YGwS6AIVspSD6oTfVyfNNOq5gtopCeZFT7ABqOKFCw=;
 b=HEbFaK2udqZXepom/1W7fBDkqforKanMmwUIZStAYFGqECpz76ZE8BTJ
 U18DsIa1u5IXFsQOjYeQxnxrfZfH1kzT2yxuxQjOfLx9EDTdUTbN+vOwb
 gXrPEIUY8pI42hJRTyWfH5JgDpKtUWwGK4VCgOS/hKR5GbRhhJLF3lIwv
 yJOqJgrcQstN4R5cne/o5bxzvtf29uaB4xRpDAwUjTEH2MvVe7tKm4efX
 owZAIfJ+kb9pGa3tSWdSXEoIKmtRlYnvancALz2Z6dSKVwvTQe0Jbep7b
 rcDDo66xCeEaW8IK6kHvV58No7X/h6u6QApluL3XEGPVxgY6mj2kDCDM5 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="274575102"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="274575102"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 21:33:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="638769874"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 11 Aug 2022 21:33:52 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 21:33:51 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 21:33:51 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 11 Aug 2022 21:33:51 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 11 Aug 2022 21:33:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UhUPHXabv7mVnrVV4pva5P8qzZIg8beturr3BU5VZcvbTXGtDKtyVUZkS6geXP2HF8aYtf5IriY2hq2qYqYq7ml9BjeitqZdbEztxwvi2E9Rrj2IEj6bdRyJHMO49MHsT7nG1siCVSkfKD22zvwxOwSpowfOvKDPxaRUVYLAlHdySJWzUQn7f1SLLBVyLjUHVoc1NbwUZz8jkdj3pyxiejowXKnuB546LH5oeWqwOEMJ0MXu7luct+DyX5Owo3fxntAtWwUqlrz5K1U6QcdmZbxKVM1beg9+Zuq2G/boSBljoaAST5V4UYLNmDVesCC1DgyVPHgeViP1qeyIr8HNNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6YGwS6AIVspSD6oTfVyfNNOq5gtopCeZFT7ABqOKFCw=;
 b=eHCuAKZO3/+46qyYTn1YWZGFgpufF+EwRuENbWobIg4osLST/6371I9e4fo1WSL5trb8WcC0CM3hM4fJL4n7oZ4ReweNU35E8xTqWyEhXvygO5+q9NYjUjGI/9mTCsd3dybTbjL2o6kys3JJevTohdZEEeyu6r8T1CBFAgfYizJP/7T5DTzFA+QVlA1UOLSE7RSmasAbXoMOOOIbj9G6BtBZw9S2qTRaK9N1tQymYUF/SKNfZI9ZeeW3RqHVCLzJrw5aavPmxO4saeNqst1x1bX/g52DksTyLi2aEZ2EME1wJpdqLW6kwSO4w69eq/yi/uI9rC1DSAAtBkmTJcQY1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CY5PR11MB6140.namprd11.prod.outlook.com (2603:10b6:930:28::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.11; Fri, 12 Aug 2022 04:33:48 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Fri, 12 Aug 2022
 04:33:48 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 03/39] drm/i915: move dpll_funcs to
 display.funcs
Thread-Index: AQHYrZWLf/lEn4cyFUGtc2OIsHpJDq2qre9A
Date: Fri, 12 Aug 2022 04:33:48 +0000
Message-ID: <DM6PR11MB31778408808FEC3D6CE35EFEBA679@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <4178e5a9493adaed90159c3b6fc61c702c637f0a.1660230121.git.jani.nikula@intel.com>
In-Reply-To: <4178e5a9493adaed90159c3b6fc61c702c637f0a.1660230121.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d666eb26-d136-4da9-b03b-08da7c1bd9d3
x-ms-traffictypediagnostic: CY5PR11MB6140:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 32a/AtfJpiobAHBwcRibZAbl3RHTd5yN/hkBBke+HABruXU0M5g3qQOM7LJCCCzV4Df88/zE/NqicOrob41h9szLnB21nMkOwQqHlTZfDCGhPDlyIUXvSxJGirSHN98vBBVJHGfY2ejTKuLJl9ovLAHrPtVpds67ha8mWGR2MdzhwbuvBv1X7F32Yt1wyCtJkdlQxizeRVEerxyM04mcddz5SmEBb4IVR+HYZ+RigNNqizec+A+ckPFiwIZUfRKF8arlYI6dMkOQwuFxe2ytiVRo2uSPgEp1/D79WXivGmKyIv0siYKkYKKTxk9qUEFpb41WrAgq6JQUrPoo+UHclvGPMz4V7cfvpR2uzvcDyTsWVzYwb8hrvT9HbRvZPTkYv8ERTEds2Yr6LxdCRpl+vmk4N/fysZc4WbgvFc7BgHPkMC/XDH7QFUqDX8BSY1xco6XVC/SPPOU3lLyiFFQGcKcVs/n9UQHDBxV66ggk+qF5nqmj9VSRfU2lEvEgC1NtNAQOLbMMkA5ALLZY8vw+oeJk4qz0/5r7e4L6tGUaflKUvNVDGMkt5yBsPenWO25wVpzLhuDCkgP3ByIR2KEWbYL7YlOtXuNfHTSLOUJqTQQAIW8FTiOwtgv6japHDffISfeAtQuEy3vANHlVqWLqSWoh4mBQ88ohmoLz1qy1BKhnoA4U6JE3tDh6WjKVa6izsxyKxAd+DnGggDnVUmp8nsHFA66M6S765LuCUEt00HYs3QJv3/mrYwyXGa6xFFdr97Eodn2GGd2BB1J1Xc6z6FZgk+Wd9uakyO2yHh7/JNUcJEFs4aYA4laFeKEV4G7F
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(396003)(346002)(39860400002)(136003)(366004)(8676002)(8936002)(82960400001)(4326008)(2906002)(52536014)(83380400001)(33656002)(6506007)(66556008)(66476007)(66446008)(5660300002)(4744005)(66946007)(64756008)(76116006)(41300700001)(55016003)(55236004)(478600001)(53546011)(316002)(186003)(38070700005)(107886003)(54906003)(9686003)(38100700002)(26005)(7696005)(86362001)(122000001)(110136005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8oWOOpnkWescxUaU6VzfgxmIZKPavWLN8shLPQsquR2xk0J1YgmCOwAkixlG?=
 =?us-ascii?Q?Qq7QU5HqvEKxGNzSW2dVpToYHVKwAw6emz75xea3JuKdu9G3GM1xKgaqQpud?=
 =?us-ascii?Q?hJm0sh4Tqh3vZ6ZFgDEG6wQBKeNrh45St0AF0tlUuBk3ze24lFcop0bjRyTy?=
 =?us-ascii?Q?aWAmNUfnoji2fFBlFlhHB55qdG68vBU5Bdcu2JQ6Q4AkbV172Gw80Yg3kcAb?=
 =?us-ascii?Q?NVaNRqLmUiy0c18WBcKE6cBm3rrtXpg045PsqMHf+obIhrTcoSbxJjo+fTRu?=
 =?us-ascii?Q?aQbjpyNLN8IkS0Xz9eN0qavnZGAmuRVxujn7MXH04ST/26Wubul6teU/7vrq?=
 =?us-ascii?Q?ZIiYxulf7zV9SlHeDlcRglvVOegw2Y1smRcw6sdnoSVT8DF6Z2kkWpCyHtHC?=
 =?us-ascii?Q?4kx5paiaceDBwlgJxZTHsUWclZFddQwf5HFSN36cURjtrWByxzHuwIY2mPrH?=
 =?us-ascii?Q?2W8sLV+MleC0Ag+MblzLEWIGML+ZN09o+gNrby80btAtjGGW1wzCtKkIovw5?=
 =?us-ascii?Q?dvOjPAyUm64GebjJhUlo16uJTTzPOA0C1S7SMrzJToIeAw4ISVlChfbWZHW3?=
 =?us-ascii?Q?F7NKYFfL+4jrhJplpg5cHWoFyFGuHE8dgxDX3T3Jri4bpTrLJ9dDQoW9V33w?=
 =?us-ascii?Q?0qLiaJwSlTK3rltM4LvbF6amY719/aEvaGPvXILjELS96wBITKZSEmqBWcYy?=
 =?us-ascii?Q?GreYh3PLLwAVjLl7jamGJ0cwW9G+KAXyf0cwITIqEuoe4QiYq38HHRoTIYGZ?=
 =?us-ascii?Q?vdmbuyVHsDnTpWfSRpLcHSSnWu5W79EGjl3k/PR0sTuWbAbE499oiF3nwsVy?=
 =?us-ascii?Q?0GeJ6DhdvytVIsKXPOZiydzzf3qrK53MHQ+jo84gsu2q63tSbUlkmvyphWC7?=
 =?us-ascii?Q?+b3yfH5XxzB943gqPlqL0jc4MjNBMm7D7ahESCYuDwIuK3Pvxd2r5XPClkAn?=
 =?us-ascii?Q?MAQ4N+duFgiQVqDRFkurEnCP27t0e6ZHkDt265S+G7uZ36BH8olwBguG2gky?=
 =?us-ascii?Q?l9OY3iRNqmiwpKiFHoSRONX0KCk6+0xbZ2aboGl5wDu3KqZkx0J/4RduGODb?=
 =?us-ascii?Q?M/9cSxBB2mkpWUw0w28IzIfprYzHrhn3I1oFFh4ck+wsI+6w2aboyD3w+aL+?=
 =?us-ascii?Q?M9Zfv9kX+LiyFLWN7tuM2nRzjTP6ofOnOwUm8zvF27LMCdkBn7I+CrnQ3W0E?=
 =?us-ascii?Q?KiL62iKRBpyr5zEBf2qEvnkDQhY9bgSVUQRNLCOmiQJ+h0h1GHUETnp54m/T?=
 =?us-ascii?Q?ipBP+MmyN4eFrasQrMF9HJZEUPTmcaKbI9WsTcPWrjsmXLICBT5LG0dUi0CA?=
 =?us-ascii?Q?NiDfyCBWhEW5xvOC99Gtd0cb80OyZIWEuJXCZj3gzXoOuQMOJHMbaLuQsb/u?=
 =?us-ascii?Q?LaBSYa/8rwyQacDAgnlNPy48mfkXw66ZLhhqR7zq0cmShLC6NXvnWvMcwveg?=
 =?us-ascii?Q?RPFm+JKkokUWJWu8BsHpk0PKWWN6Q7vlZGXCiSpdUE/W2h7OZp9Usc3GYzxI?=
 =?us-ascii?Q?bZXbfwTxKw1Wp9Pzq5d04vqmE8ZxaXB7tkoZlDwf9PZ4FZ+5aI6dfrcWF/6Y?=
 =?us-ascii?Q?1QJ4uPJxG8Ieqy2+2hk8om9w2Xyanbsd3nljwPmD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d666eb26-d136-4da9-b03b-08da7c1bd9d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2022 04:33:48.6680 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gnka2PfByNA12KkEyk0yNDwg0if3eCyHkvUbMSkaRhxgmZ7OyNxZa080Afjwm/zPSHKqqPXfV+6tf8Hr+EETuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6140
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 03/39] drm/i915: move dpll_funcs to
 display.funcs
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, August 11, 2022 8:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: [Intel-gfx] [PATCH 03/39] drm/i915: move dpll_funcs to display.f=
uncs
>=20
> Move display related members under drm_i915_private display sub-struct.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
