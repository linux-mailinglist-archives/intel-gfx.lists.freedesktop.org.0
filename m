Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F8A48AC65
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 12:26:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C66F7113590;
	Tue, 11 Jan 2022 11:26:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86BAE11358B
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 11:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641900399; x=1673436399;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=/pPUfd5AFHKHcd3wmDmEREvwfkAWs1URE22sebztAOY=;
 b=GnZit4uStOn9Bqo/qjeyJEbV36HuwMxXbSGiLtheKR+lv74DmaBooUHm
 L+tj8ARjVWyvCJ3NHDndXTSKTZXKzMtV2iogIfNCzRVt0yFYCV6ROaLPt
 CBQgMUko3i2qqYXlxSSn3cXQjR7TInPqXVTe4m318Qsv00f86hssDIN03
 W3shC0pnMWjm32JS/Sl54cFPN45iAUTGzbxrUEv6Xn6vFc/tXsfX/Y6kw
 nI5lQqJqBdA9W7+BYpUrkWrUwvVFNOFhAteOcclKsA0xjaJJOAAa1dM37
 Hs61Bp3JHhQXE8RSy58BUilnkDUG3evOIoxmrMXO6FXBQdPE8B4KXyNvb w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="329806856"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="329806856"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 03:26:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="690966472"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 11 Jan 2022 03:26:34 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 11 Jan 2022 03:26:33 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 11 Jan 2022 03:26:33 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 11 Jan 2022 03:26:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=btB/tRrN0UROYwwN3lZ9iQxMNA4uHb99ggIPHNy76nPJ2s8PsC6SuRW2Tuu6aq86f2JxKhJel2knSr/G81uWjPAkgx7akAUmSqbQIb6NtFySMhwWDIJCFBDiF8IJAFys7WUPYohjiwVe6Bv0X5gnUqEmK3EJ7vs5CihMLhIyYLaRSR0lUVMtr9ApnpKoh5NNFbsnPIAxNT7tZp2cVBy9o+A+3lIBarY1V1R/0qqYeYQa23k+uG9B96ylJIypKs9lW+OAhzADXgzVqZmnsxUd0pDf0QT4q+FRcdKPBgdtJtY0p3l+7Avmjv1yqerLC+UL4SAFMZ03Ui0OfT0dMFf1MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LLXKEm0KGkxpTTba26QgX7Ad9/1Pyd9xYbBwKJH2H38=;
 b=hA4sYHV4Qd3MCpPiR7VCPZPtkmpc7i7Q7ThUh9O//x5BTThvhyPhPP5HHs1ee2NxZqG80HY9S2Irl8QoUSRaHL6ReUZyVC67OEdBOz9f7HhZrsx7QO5N/enrNSZ1/STBNsNunQsbtHRdSTvMPCptgYnQY3SzGByp61B25TSkUqu7MvUcMJSMUeGDZjSVuecK5Em29/bBs8gXBXjy61PmBof/vH7cxdOcpEpeIWJu8f9GIjUzcGuaD+7SgAaUxdHeQSCVdazRDW6/1IFeHwwHd51fzs/qFhCeuTpz99r/YppmPPTpl6DGJ1AKkDS7UAijeNidLb49xo48ly/OQ0528g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5549.namprd11.prod.outlook.com (2603:10b6:5:388::7) by
 CY4PR11MB2055.namprd11.prod.outlook.com (2603:10b6:903:23::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4888.9; Tue, 11 Jan 2022 11:26:31 +0000
Received: from DM4PR11MB5549.namprd11.prod.outlook.com
 ([fe80::2cb5:24ec:fe40:2d47]) by DM4PR11MB5549.namprd11.prod.outlook.com
 ([fe80::2cb5:24ec:fe40:2d47%9]) with mapi id 15.20.4888.009; Tue, 11 Jan 2022
 11:26:31 +0000
From: "Wang, Zhi A" <zhi.a.wang@intel.com>
To: "Mullati, Siva" <siva.mullati@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gvt: Make DRM_I915_GVT depend on X86
Thread-Index: AQHYA6xgWo25MXNYA0KnbeuC8qkQ16xdtM8A
Date: Tue, 11 Jan 2022 11:26:31 +0000
Message-ID: <5cb383d7-aacf-664f-8f14-f57daef4519b@intel.com>
References: <20220107095235.243448-1-siva.mullati@intel.com>
In-Reply-To: <20220107095235.243448-1-siva.mullati@intel.com>
Accept-Language: en-FI, en-US
Content-Language: aa
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 37c4b72e-bebd-42b6-38c9-08d9d4f5378c
x-ms-traffictypediagnostic: CY4PR11MB2055:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CY4PR11MB20555A037D4190BF984F6EF5CA519@CY4PR11MB2055.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sjEiMYyAdafZSg/njA6Cxd6BDcmll0ore1fCseHeFVor4avynOl/YyiZMe359XOr8ygK0rxgpixk244TW60922vH2N5D7YEAK1QGOt0oQuk+9WwD9SsIqtS2Cb+Z6eA5l3cqIsEkdIv4vY4yJIhBsyyl1R0aGSqwHl/Qs1Nx10C4HSReXkqP9X1tEK3ijRu5I1CQcRWQ2hMUAJ/zgltoNEErJY/o4dQnZtp8SqzdgVbJ7aOaYiHbi3L3DJGdvPV56J0rPIuJlJy8gHZDwac7uSQ0iLBAlRhJYGOvyZoUbJOMykS6uRqQ6No9DjglHslyGNtmw69IQPnfTqgLyhWrm0wBr3D1ehEmerVO3V4i3hjq/sPqfmqtlve70ruVTpek0fLToe+a5HK5oMpa1r/qbHuarw+OsPkkxBuj6VCktc0DVvccVPAl920zcqUHQDH+YY6XWLQshl6tJ9r/ofxGr3EjENYASoyqx+6TtmOUw8EWpjDvi1TvZxmAd9+DMWlWHZWegrvDcwEVjHoj/0QFXp4KbVJan0VH6ZdvxVl2hY1/XWCHsKvYSeS5jjkT0Y0j3ITbiFdgLP+8jny8m/0xfyh6gL1seyWOFJ2XbwowYg2If46257vmjJ1ItLixIWcQx2jT7jFk3wrSkOnTfIey1vrHtRRP1EKxiuD9kli4Sbm+bWgoI0lzLYc7rZAiFS6InD+AK6fOU93EJ0lqijExBdxpGz3ibeB1+e1Lu7SKQst5RqJfw2hZKzgxKzhcWtKaVy7v+85epQ7M5Q1HhhxrBA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5549.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(26005)(71200400001)(8676002)(122000001)(38100700002)(53546011)(31696002)(6506007)(186003)(31686004)(107886003)(66946007)(82960400001)(6512007)(4744005)(2616005)(66556008)(316002)(66446008)(64756008)(66476007)(110136005)(2906002)(54906003)(508600001)(5660300002)(6486002)(4326008)(86362001)(91956017)(76116006)(36756003)(38070700005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?JL41x4HETMBfC9JMdYpYzZwE/cDFFVXLJCYz072iWx56C8QMlA3SUbkV?=
 =?Windows-1252?Q?6KeH7RGikLjn3hi+LwsWshrEwE2OKHgYgXVLw0BhNy2xkaB/ZmhmxWTj?=
 =?Windows-1252?Q?wVnsC/egY5WsruJFLYIN6h922bbvuZos8HSaJY3iObvRvCcLFJ0u8MUb?=
 =?Windows-1252?Q?BFBuRRIPRO0bv6ZlWEDvqPSFIilemXkW0IGnnNNlyJshVwFzbtZaeo3D?=
 =?Windows-1252?Q?VA6PT38Is82FysOMzM2RgyfFPq5+fa+Oq7ddH+fAggn/jKE13h/svOoI?=
 =?Windows-1252?Q?HQI/er9gev6qfcQWn4qnF9tdkSwrH/2qBaR06QBsFOcE/YfXNZuIm1Li?=
 =?Windows-1252?Q?aTgs0NMMM/oGSHRz3DJwucPS/9gHvAUkbllod8kq4knp6twoigaFs9Ku?=
 =?Windows-1252?Q?QCHZvDy2Up6VMZz9PTHBk1IGBtLvI6wYJIPm8bDJZDNeC1Cxx+7Un3q4?=
 =?Windows-1252?Q?gJuMhcKLhwIssW7maTMrUTv0PNMdWIcQopQpoU/maEdTrFgHQEncOlj/?=
 =?Windows-1252?Q?h8EVMJlhqZSGxyJw2MXM3FN+BGw2q+WxkCZ54b+ipV8XHAOLe+6eOR10?=
 =?Windows-1252?Q?Vhzt9UqKjknE1xSVgtoC8ojIhf67UpvJVtp8QhAh9H20URDTtYsEyNu4?=
 =?Windows-1252?Q?yVq6VH8cG3QsvNRdFjidRrvbPEgmQVHu+IwaDC0/EFp3keCQ9XIVIZMX?=
 =?Windows-1252?Q?I7iEYTqx0kqOcZdYg5HOwbFoNw0SDwRub3CZhxoi1tabdnlEK38eelff?=
 =?Windows-1252?Q?fYZ+7a/vnAEDDjMShQ7Fw+F89kFJ1VqoFP//hT7TtcB7ME8BlI7fgFCI?=
 =?Windows-1252?Q?IaPWXNYbW0IURxJ8YOxYSU9hpstweogOw897SK6E1gOlXETu219i57xX?=
 =?Windows-1252?Q?7zfeD89YxdjUN01RTLrLb0h8qK8IiBVzAmQRnikB5lebrf9MudMEkIrm?=
 =?Windows-1252?Q?9xI+T3h7BQchKvK5htJJzADClWOrF7fFuyyjSTq1uJNJFIKfBHjsU9Ab?=
 =?Windows-1252?Q?QGzJq9xHrsVtzT0a4UmKSjRk4BKJ7Qb9jU/VeQ6vtQ5D6LyUbkaQVoOJ?=
 =?Windows-1252?Q?dUsRvAQYQqOeWvd/XLXMMdStCh61reyXCptDvgKwLA33Nwt4458e7C4/?=
 =?Windows-1252?Q?qSuC5ZsVkBzCakq4D7H26OgjfY7G1ON0YbKg/phWyFi7PhfxwWK1VwgS?=
 =?Windows-1252?Q?wWVUz8wASTJd0pyai4hSxYxFL3cRXzrTTChIbQIggNonsXk4YoOaXSni?=
 =?Windows-1252?Q?f3eJuVncgNTl6UkBfZJbhBvqYN92VE3MSi3LximI9PSuFCCC+eU8DqlF?=
 =?Windows-1252?Q?XexVWccg3E/nnFQnhcUjXR8EkFJp9fnr4VU3+V3m0+++ldB2gDDK71j2?=
 =?Windows-1252?Q?2cPY3p2XxJQ2lJcBXHab0pWLnp9zSaK0+8/I9b4mUYEMTRKsjPrfTd2z?=
 =?Windows-1252?Q?kOd7viqQlKo7qhQGvgmxZ+laqXKkxKrFsMKnvCQFIR/hlQEjTSLer41S?=
 =?Windows-1252?Q?M4nI/k3WwBDWeq/q1LM2LCXSrcNN0+YD5Hc8L3z+3a+TJ19TNVzDldvZ?=
 =?Windows-1252?Q?5AXdUR6P+uDAfuZ3du3Lvi6B+ER/LBOdv9loFBor+f93aKt0NLbl2v2b?=
 =?Windows-1252?Q?YpmXfgQjY6wu4RaZMI7421f3BmjxdTQ6xrT7wWELr1HaGMsrVtgbNyBS?=
 =?Windows-1252?Q?ODWUxrzMP101xNP7i4baNCGndwFHxM41QrJ24g58/aGQeLT4bpbQ6ZIw?=
 =?Windows-1252?Q?FHuA5VsV6hl6HsN2QFw=3D?=
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <5088ECFF530CC040B5ECCFE053A9542D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5549.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37c4b72e-bebd-42b6-38c9-08d9d4f5378c
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2022 11:26:31.2697 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qocr2uDZlLNN0wz2S6Nht4nB20sTRgYw2Cx+RSzeF221w/pFqaTLn4vckGBZzQ4VsMvev6tO8mmK9nr4TPw/Mg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB2055
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: Make DRM_I915_GVT depend on
 X86
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

On 1/7/22 9:52 AM, Mullati Siva wrote:
> From: Siva Mullati <siva.mullati@intel.com>
>=20
> GVT is not supported on non-x86 platforms, So add
> dependency of X86 on config parameter DRM_I915_GVT.
>=20
> Signed-off-by: Siva Mullati <siva.mullati@intel.com>
> ---
>  drivers/gpu/drm/i915/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> index a4c94dc2e216..cfd932514da2 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -101,6 +101,7 @@ config DRM_I915_USERPTR
>  config DRM_I915_GVT
>  	bool "Enable Intel GVT-g graphics virtualization host support"
>  	depends on DRM_I915
> +	depends on X86
>  	depends on 64BIT
>  	default n
>  	help
>=20

Thanks so much for the fix. Queued.
