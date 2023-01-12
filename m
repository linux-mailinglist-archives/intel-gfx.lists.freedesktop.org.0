Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B280C666BBB
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 08:44:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EA7710E886;
	Thu, 12 Jan 2023 07:44:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F204E10E886
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 07:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673509448; x=1705045448;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+pc0Bi4JfFUta37zuTH+qyXr9KOniresiEzpOl5wTmQ=;
 b=UF97GOoKEyJJQ4GJUnwPSsPJCtzbfwAmtEi0TLuxUufysaS1ac88+5qT
 DoMUGSCeWmFoU4lGFfqZlJvpgyB9FaXCkioqx2p4u0bZDbzewpuCqef41
 5T3cymO4YYJZafNGYAlaGtG4TxFXHhhs740vfuJW4DPi6ZkdRx3bouhXd
 uSUeyiz7MeEqGNwpt4TVzP976qaSyx1bN1D5zX8xAWuNEnhwL8YPerpdQ
 IsdPth4jxqmt75P+mYRki3qaOh36jza97Xjf7P5IVbmF7WbJWVKcc1o+3
 WC9A2aRoC2R8ADvIFdFsSqn+4ZixDCjE8giBeCthZXGAD3ool5VWSuwIj A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="385951494"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="385951494"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 23:44:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="690028055"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="690028055"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 11 Jan 2023 23:44:08 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 11 Jan 2023 23:44:07 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 11 Jan 2023 23:44:07 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 11 Jan 2023 23:44:07 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 11 Jan 2023 23:44:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T1JyxAH4JZc8JmMLUKRSxf1lITAmdm7Bk+IU8iB1MGcs/nII5CfXNEdZ6mhhp/vrlORUuD0ulUfaLRvwBEHUukBzEP7/Tsc5VleenVbtvcKtLD7bD4CQCtt4k6oDFZAnYWQNei3feN9x5mmu+kgmpqYq/JyeOjUthT3ojWatnSeTAiDBfuU1JpCf+bfy5yW8+TFU+EhWefgJx+JYt4obWvhiHKJuJ5CNh1CDBGtC2x8n/Ni3sXNxc8MstiyD2fHXJrzL+XAjY//syg9414Kq48xHbLu7/8iMiBLw9LeQcWw5IAJCvCrR/IDh0gTVGDEmGXMODUs22jLezSKYm+jJIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NuNG+OozUsBDeVRb5Q7n1wVw8PTGVSTjw0cZmnvjgGo=;
 b=dHdP6z9OFHPEwj1Gz8H2VVhsblboooilJfVeGWorztBadC/eLCy1fckCc9d532zW79NH1UnhcAM55+PcUNME6dWezKMO0t9tZH4FwlQ3Czr+1bF7ZZUB6TVh1pgVaOlm8y2arJWrQDQdMsozKt20D/xrgXEwxpTxl/iguyvxfaHgGDBBKApq5o7IcKBL0xp3ciefU9TO21gKKKFORskDr20Cf83eGvXUpLL54WDCgkFS3+NZDoeXMxRG7xg9bhYM/o1TtvaH+AhQxd7BJOPGoCORGdrJ/BcoO6N4d8ACRvNOTMrnlvjUI/OlCNOzlUddHRXtCkQqH0596iqjbs9BwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB7147.namprd11.prod.outlook.com (2603:10b6:510:1ee::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Thu, 12 Jan
 2023 07:44:04 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1%3]) with mapi id 15.20.5986.018; Thu, 12 Jan 2023
 07:44:04 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 0/2] Defeature Interlace modes for Display >= 12
Thread-Index: AQHY4jUJaI2c+rBQO0WpRRQRCEgPqq6a7poQ
Date: Thu, 12 Jan 2023 07:44:04 +0000
Message-ID: <DM4PR11MB6360C684F541340A97E9B0A2F4FD9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20221017143038.1748319-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20221017143038.1748319-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB7147:EE_
x-ms-office365-filtering-correlation-id: 0c555f14-e895-43bf-7f65-08daf470c737
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V/oYqzBK2QrSY9Ud/upV9/dDkaUh7uV/3390nqSvE08vp1txjY94VOvhO3WoER3TWjF+lvquhyVyAQZsJ/+XE5+dSR+IIP3Yw3dRJZLfsDm4Uzv5rH8m057+Tcy9VmK4V+jAn68wSYe8SZp21pM5dlixHPdzkpf1gHWRhNsZ/6zjyz4VG7G8TmBnXBd3RKRjhhgAcPhs6Shj5jpBL+oi+ULWJxjCYt1+wnLb1CuQMU660mzvb5nf1wBULfJUXFFHMcoQagEeBeF4I6Bh6atUTFGhwKA59wie6eBqOGhVcvVKW4QJWarG7zhb1WHW5oTe5gDBHoQXlaunlgusMKRek4a1SrcgaRvtFzaV/c67pZwZMt4oB2h/G0wffqSeJbiIDp9Dy48hRaO6zmxWEA0xcU2nBPYd3WVRz0Pt0u1k51g5y+2ffcSPXidaCvfTKKpSjzGc4FL/gY7Cz1tl3ZetD1FOOXk7PANRyPje8XDs6UZcQ6dXCtXx7MOPmfd53gxQWubvJWTn5cQK1UKZUpEqB20GlRxDjCYRcbZsAQkk1yahFLCGczqWmCCHBEKniWYJEDNOMm9d7bQvI1oWinxE8CeAq1yUBQ1x0p7/d+i0vL7VOjCtMo9PnntOozp9LagHLYgtEQJmsgrOUBiA4pQwKw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(39860400002)(376002)(346002)(136003)(451199015)(53546011)(6506007)(2906002)(71200400001)(7696005)(478600001)(26005)(186003)(9686003)(966005)(66476007)(66556008)(54906003)(4326008)(76116006)(66946007)(64756008)(8676002)(316002)(66446008)(41300700001)(55016003)(33656002)(38100700002)(5660300002)(110136005)(52536014)(82960400001)(122000001)(8936002)(83380400001)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pXXwd7LfeW/HrKlST+mP+n2BscewrUDcseQcymC8odfOdJkE9JSmNxPuF1nP?=
 =?us-ascii?Q?q5YtI0QDGnQUfYAe/M9yNhu5dojCv7GUK5fimH0KAqhiXqlxjHmsNNsTofG9?=
 =?us-ascii?Q?pRjIXNTi+wp9RUUp40KwKW/tGsfAW8SWAU713gV/LlCOxmk9C5u8MRVqSAU+?=
 =?us-ascii?Q?0G+9XPxNJ3u/pEiCDNmlqJ3uj6iFbxs59PGToFFkJd39+IUDX1vo21MjNDMW?=
 =?us-ascii?Q?M4SjpEDrbxdLSJMj7Z/99t2GAYUarHLrlQLgZH0nDGmtGs0CkcxYkFB/ur2b?=
 =?us-ascii?Q?P7YEP5LZrW5y3mkOS0r4ocZKv/NB5mqpum1aan8ClSOcpjhXOk0xSDAQGtGK?=
 =?us-ascii?Q?Mitd7UJn/bJ405U1qZjYYFUPzbP24otjDf+5r5LKOuDzSdpmS4l3/QXWlRtd?=
 =?us-ascii?Q?hILDTkbelzUBQRsbqE+/wwXRB0Fd4pxKdQRAPIAq79FzXoMaAZd2oXRx7d5z?=
 =?us-ascii?Q?D9hcxt86925NLSa2JcaiP5mhMrsTABv6gezVAfyMboEqPjWH9gOfPZuEmKXo?=
 =?us-ascii?Q?eTOqRDfap2SGyBZ30vSKy2RFext1w4P8ZXJDqcw5U6veAyT51QS9YiSwE62q?=
 =?us-ascii?Q?4xlpDkefK2vHlYYKOQs9WAsKqVbZXj2nJT5ZwOeBz/POKMk2HEAlU9OuP2Ea?=
 =?us-ascii?Q?O885U1sQtGJ1htau3FKES5Wj/PWJqFWqtj/NfgVGlyQNKtfmKVc6XK2/QoJR?=
 =?us-ascii?Q?B5G9kDYzs/oos0i1YbQB9j+8ixvic0qNY0FDoNHJPujz6icgaR0AR5myXDzD?=
 =?us-ascii?Q?fS9VjoCl7iVmL+siBQDQ2E+WyA2rTh704FWlUrHlcjY/rPM8Gvlog8S0qV/E?=
 =?us-ascii?Q?OJSmPOG0meVHK2zqAEqbAJOQIsoxi4Rb2Wwe/CHQgM7kR1YKbkGJc47JoYGp?=
 =?us-ascii?Q?txU4/YcJFLYeH6wZTUwvPsuGJQUWhwNUmQdao4B++lZEJ0OakC7EweHA4hnh?=
 =?us-ascii?Q?boOCYabVvq3y32toZE8xE2ocKj+Ye2xCPeERZWqJ3Og01ia02gP1yejtzh4V?=
 =?us-ascii?Q?1OgD83RehYYpdAchzYUU36K6C8U5QBiBGnGwD1FMD7EliYRg5ddOWzKg5XB5?=
 =?us-ascii?Q?bOrpRHk9+uQ+OMVpHhKUgENokaDuJN+bv/B5kM4RuiGf0dEy4bKEgYFGpofJ?=
 =?us-ascii?Q?MypTe3XYuUBe3unP5eq4UDbez5PNbgY6XbtfgTJ8+85eMPj9+Z+InKF1rMAK?=
 =?us-ascii?Q?NG57zMgt35rZMtxr6pkzlIA42L4PibqADTlO5Jx7eE+jONiLLifCNa8YTFC1?=
 =?us-ascii?Q?zG25k3fbFpL4WeYqCIXpPhOSIUCm5P3jnUYsGC81tw6UjPKzyTTuy2rJSF8R?=
 =?us-ascii?Q?gxDKPIm5+jJHx3EdLe3B4dC8H47QhtWWnqTtLiFlRAHfDzDSEk84IfTuFUZ/?=
 =?us-ascii?Q?fkDyyL2iwhKChc9833LF8jkJN9AoYBYXdZP0gK6nzUk3seW/s7e9gV44CGvS?=
 =?us-ascii?Q?g4F10sTUcRGEXWetdrj/u8BWgu2YSlNwpyWAP2qXUmDY/h0jNKEdnvIW7EZv?=
 =?us-ascii?Q?KpEsRVxalaTJfB5zEZ7hFcC27bjSA50pCwIq1bbLDMW0DoBhDelcRzDsyxjr?=
 =?us-ascii?Q?NxVYzF4q6HuK2MfWdz50Og5o+O4D/8LRIWnUqvM+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c555f14-e895-43bf-7f65-08daf470c737
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2023 07:44:04.1539 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v9dnaDwWjB+YD6RumUXUDxCJ68dQKX3xxr261wN0EhK6kK9cJtY/LJv40EznW7keXL5NWcGrR2A1LIDRh9TjDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7147
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/2] Defeature Interlace modes for Display
 >= 12
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



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Monday, October 17, 2022 8:01 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Navare, Manasi D <manasi.d.navare@intel.com>; ville.syrjala@linux.int=
el.com;
> jani.nikula@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>; Kulkar=
ni,
> Vandita <vandita.kulkarni@intel.com>
> Subject: [PATCH 0/2] Defeature Interlace modes for Display >=3D 12
>=20
> This patch series is a contination of patch:
> https://patchwork.freedesktop.org/patch/506835/?series=3D109646&rev=3D1
>=20
> Added change for DP as well as HDMI in the patch series.
> Also added a clean up patch to remove check for doublescan modes as that =
is no
> longer required.

Changes pushed to drm-intel-next.
Thanks for the patch and reviews.

Regards,
Uma Shankar

> Ankit Nautiyal (2):
>   drm/i915/display: Drop check for doublescan mode in modevalid
>   drm/i915/display: Prune Interlace modes for Display >=3D12
>=20
>  drivers/gpu/drm/i915/display/intel_dp.c   |  7 ++-----
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 11 +++++++----
>  2 files changed, 9 insertions(+), 9 deletions(-)
>=20
> --
> 2.25.1

