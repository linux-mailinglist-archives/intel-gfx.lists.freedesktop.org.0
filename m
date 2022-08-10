Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BDC58E5ED
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 06:05:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAE60E70E3;
	Wed, 10 Aug 2022 04:05:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8159EE70BD
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 04:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660104270; x=1691640270;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gDVg185px6PdPzV9J4a2pqoi067BFN04GWasbeZYw5I=;
 b=Jl0pgAmqJNhucmInJtK0CgN3+8C20kcwGqsc6lLveSDYFxZK4LpPsdmG
 1gbVpEJvccanM79CaZMUxuVdaLjcFeRHCSJVUCLgkXYqLXo6CgaTzSYbU
 D8yOK4bKWjgo9gRUeK5VewnII90BiW0FTyU+T8np8PxYDAfKHrvLXosTm
 29c5uw/IvWPEca6Fu8+EPGU9E8ugEK9VkypX3c2YYGOZiylm1/PROQUPq
 2vt+xIKb3rSsbaYlVmyKfuU5NCJyJoLTVSm0zIRyJz7SGlbbGriXi6f0K
 vS3rLBcToWIz7DD2K2Idj5vo64AzwYqVcuVCFjM5nJcPdFAAG4dZH1Xgd A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="288556596"
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200"; d="scan'208";a="288556596"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 21:04:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200"; d="scan'208";a="633602124"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 09 Aug 2022 21:04:28 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 9 Aug 2022 21:04:28 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 9 Aug 2022 21:04:27 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 9 Aug 2022 21:04:27 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 9 Aug 2022 21:04:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JsMlec/cmY+mJ8EzL2FRzt6kaNK8pDRFOCxaihrAkBd0NAs93yY2uR84X186dLUD/6fky7aqeCCcw4Nj7/jnpl2M07+qf/vlrC9Al1VY4H5I/tGlAtKcYN0pjs48ouDmYZ2bSFsEnDLc8g1B0DCeIJPeAqF91HwDqRa++fnYtmgJsxC1ymfLlP/wYDGaLGRXjRaCgyQuLqUn4Xi5Is00PdN72spdyZ0AMZrkTGDsxCEsbWoY8ocu+nR+f2ZTe4giVNiGu5fMepYKVxTKBc87n3I2bf6X9DtdQQFIBy/uNviEJ8Qphq4dDQOfEVLNPBijJl4QMv83GR/DWjkn8NzvHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gDVg185px6PdPzV9J4a2pqoi067BFN04GWasbeZYw5I=;
 b=W8Gn5EtE9K97p0tXa6RO6XBq+akXzVYeFcEb5NFD7fwLTrhVyQbdM6L2hK5P7IpE5mE5agmvRBCad2XfgQd4KzYIyafoZ4KK0GJ7/C57EXol5hZfEa4GQiMSAFUjqz76Gs9zaE2iCRRIdvgUuTqTd5Xbwuv8wdR3f47HKIOp+EZRbs9mcT6uUxK60k1LJCtcou1WJXWFOLxBxpIjL1UJO1dTUM48ZhH4lesHmhT7M7+N2WcFEO89oFxB35aHZgFPU/yKn3hM9ZCPN8oMNrnW1klVMPPV1n792doFDM0Pq1CWZZ32VFPCxFilzmRB9+5xrGcY09Ky/HPgW6c5BFfICg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 SN6PR11MB2766.namprd11.prod.outlook.com (2603:10b6:805:53::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.14; Wed, 10 Aug 2022 04:04:20 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Wed, 10 Aug 2022
 04:04:20 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: replace BIT() with
 REG_BIT() in register definitions
Thread-Index: AQHYp+ji5iC6yuFxC0iTd2n/iywJs62njBMQ
Date: Wed, 10 Aug 2022 04:04:20 +0000
Message-ID: <DM6PR11MB317739FF517CFEE8D12BA9A7BA659@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1659607033.git.jani.nikula@intel.com>
 <d28b9b9fef4f496bdaaad5503dd8e0027f167518.1659607033.git.jani.nikula@intel.com>
In-Reply-To: <d28b9b9fef4f496bdaaad5503dd8e0027f167518.1659607033.git.jani.nikula@intel.com>
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
x-ms-office365-filtering-correlation-id: deda1dcf-4616-407d-69f7-08da7a85671f
x-ms-traffictypediagnostic: SN6PR11MB2766:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +r7tYMYohxGBfbCEf0j/hyreIbHNRJZSBGs341TPwCLwEJm5wdCKX34HAn5TiVQlDbLYNT+7kZczyTKBO3CrNYtz1kCJy9w8BmEfFDlpUIUjQLOoiLOkVMN0wJ1G0Uc9gf+3Wqm9nS2imU5U5WQ7gAvH82vku7J/1jZ4vkjh9GEmWdsxrEI1enmIe8iDPykXy+J7k+Dus4TY6WtnkZcu2p9hBwUx6miHL7ny1TAYZpieg8giw2u9w9kUOjWVazNGSb/+6MP9Ur3qm/JcjcezXlyK4JlhHsd/5swLtdSiMif9T7xBOR/DGV83S/7U2j+AenSaS69GYIC3AzB7ckj3+xlt/0eYIvT3VZx4H1znCV/9yTNJjZKBzwKRnX22qvzlmVR8Xt1/902rf1X6VA7WFAoIPY+D4d/y/TksgBgz+q98+13JrY6JWU6tv8GSLx5QiKYpQ0tFq5LhmaziX6v9d+IVggLDgyobrN4CsR/WmBnScNQbggxwL9otsrOGRl0vZQFQeK1VeOqJLRpA1QHtwk5pbz5Yek2O9ZOtDvEwGcMw0NNAlj1Fb2PXzQJHDwm3eoebC2Enl7riVEhEKl4UuxOjTleur58gxZJuGPzt6KqTgkj9Me3vMzBLUsPeN1h/EHt9WQDFIIr0BhuwIVKG8Hq4WAxBqQwGMOMDU3JcOJTOp+yWtsUKVoca1MlcAKViaQXj1gYG2BUKaBk0DGYFVc6+8nQzeGQRko3OIFIKnptSIuVS7Ar9N9Xn05AGTyZkleuSA3yH+RY6K53sgBoCVT2IRjEhq9Xgw2oupVq5+O8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(396003)(376002)(346002)(136003)(366004)(71200400001)(26005)(9686003)(6506007)(83380400001)(38100700002)(86362001)(7696005)(478600001)(41300700001)(53546011)(122000001)(33656002)(55016003)(55236004)(38070700005)(107886003)(82960400001)(4744005)(4326008)(8676002)(8936002)(186003)(2906002)(66476007)(64756008)(66446008)(52536014)(66946007)(66556008)(5660300002)(76116006)(316002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZY+1j4Gr9UswOg+NZzI1f6dgk3VWOJDRLT36DGwOmzRUewADQPTj6jIAdKkW?=
 =?us-ascii?Q?uXOzD8e6GO+9e07udueQJ6JMMYYNF+HosTinBbRE9sFOYvd024s907UrLuNK?=
 =?us-ascii?Q?UHEnK47/ozU6loiD5+YfckLNnwPcQ2Gv6LrwPETFijusAkftAL0Ra6X1xU49?=
 =?us-ascii?Q?2/Oo/la+Pel+FtfBgfCQ2ZskNEKS2wBvO43koQ5PJPLuhJEBSeDzZl0mDyrS?=
 =?us-ascii?Q?NuGBk+jFhrhmqlrd2uCu0THvhqJLA+66tV08pGlP+woQyDWp7X3VzDt6BEPZ?=
 =?us-ascii?Q?bCdpjj5yV5FRTRGdZIFvhoAObFEfRdkeDVExqgOrfbO38vVBtPQFc3m6pgGt?=
 =?us-ascii?Q?9+1LdwWLIOUvnjeiF201LuCZmjRXDj9w1jI2/Rm2MwwCoaiXnsN4lZqoapJd?=
 =?us-ascii?Q?EEu2kTjtQGGIFcgpMJ/WOvbnEbJE5kyATx5vA9LAETb7vQLd2NiOs0KKtcVX?=
 =?us-ascii?Q?JG0Fwp+b/ZWYGefzgu/YXtjgoK7mqbsnlChEt+Yrs1zYa6Gvg+qb4eoYCNwt?=
 =?us-ascii?Q?wt7CuOPi7w0td9gEbmu9NCe5CFS/0922KbBB9W3fSdjbSojKBmD9d974FK6X?=
 =?us-ascii?Q?5nHQcBZ5Ettd8eNAcl0iSC9TR94QQAiwdoTwdE9d/e4JiP2I/VvuOLLKNaSV?=
 =?us-ascii?Q?fxxrYA0ec7D+g1PQ2ORqLPYSu1r2WeTmnbyiGlMU6SnrKJADbY8QBlYkv1vm?=
 =?us-ascii?Q?oYadGggeBkgxXzVqdpbmYvMYHBybOxFknJC9BW6hjM6g2GOG3A0Omsl4YZtO?=
 =?us-ascii?Q?6mMMsk0xDFCMMMYMHtWsKs2bsUzq/bT7UX5Tt5Yfs71qVygy2J2LRalU+1x2?=
 =?us-ascii?Q?f3Meu74pvLOXJ+Q9nBnWLwAOTsziNX17DmHdXF7FogOgXUcxxQMxFAWhrYJe?=
 =?us-ascii?Q?lP6IbcVsK3pN5GeuKXsNHSCsVBeqZlOe0rk4oFBg8F3Nrkx/7vS0fTSDZkKL?=
 =?us-ascii?Q?MCXr1U6JD7XfKRVnPaWrjuUVwwiOBldkGpSY60qyssrBvIP0cyP7IFK9KlZ3?=
 =?us-ascii?Q?c7AcZm3AIoB90ouT309kSiWMuzyxmD7SPI9gieQP9GJx+B9XC4XmqiVs3R/B?=
 =?us-ascii?Q?iwizEzhmRLQpH/U2SWfPhwn1f7fH/krAH22+rPevI4MBD0CjLPpULbSPH5d7?=
 =?us-ascii?Q?KrYFroAlYx9hQeUsp4TWK9F4djM7U/DPCZxL1A2eVVGiH9sTarCdYtOJum/Y?=
 =?us-ascii?Q?cWRMybEynGwhaA3G35a7eiPyg0peZHgYhpPpgtFXqcNVSZxO+4SyCdQqmfKa?=
 =?us-ascii?Q?ktYLrC3R6IzBy9ctVZIjXedtt+PvNyfubE7sxxIY9ujab/wmHicK23w+iSV3?=
 =?us-ascii?Q?N98BtsWOIZEafAviUPmhSaCXi8MTV28o2hvnI6Qjf2ZzwZlEh/P72HQDS1RZ?=
 =?us-ascii?Q?q002LvagSDK/7k0iRRnZYZoGrJpE7Arrhq9VO+AFy+eF81G+kLhJlMp0azic?=
 =?us-ascii?Q?My9mExuN7gU6/vhuGPHRCaQYwqV4ljO01E+l1JgNdJICcIFTn1fAj/ueq2lg?=
 =?us-ascii?Q?eJ0jMDQKqspqP8u6814I+RIi4BZXLOcJeTqcqJCZPi4fOIqrSonpRnmyjEGE?=
 =?us-ascii?Q?fcjl+RqCws3DIeMXf4ph1mfsR0hZP+86UYvdlIsu?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: deda1dcf-4616-407d-69f7-08da7a85671f
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2022 04:04:20.5072 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OuzwNkP0Dqkj9GXq5Tv84WXXi0gZAZrqlIeBP7NkOb/jmWBaWKtUnGcqtCJVqpvm7qZWuBqAPEjwpAKX60C7YQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2766
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: replace BIT() with
 REG_BIT() in register definitions
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, August 4, 2022 3:29 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: replace BIT() with REG_BI=
T()
> in register definitions
>=20
> Registers contents are supposed to be defined using REG_BIT() to ensure
> they're u32 and the shift is within bounds.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
