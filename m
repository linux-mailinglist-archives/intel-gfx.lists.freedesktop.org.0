Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EECF375BFB0
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 09:27:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21A2510E0F7;
	Fri, 21 Jul 2023 07:27:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6002710E0F7
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jul 2023 07:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689924430; x=1721460430;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=eZiPjV5Y1C9fPKYySkYWNfX1pvgST5jf+U7zh9t9f/g=;
 b=NYMPyqW1iF86xPz6/GGuVgMIFgJNArXbCgdVXR4Kqe0SWFgl42RIAQBJ
 SdZ01D6lY7jwFXglSFhuCb9Qrc41VIfYRIQwIODILU3r5kbEzgH6c7LT5
 QMFHmcrhBT/e3JkR0433sKVm/h+CFo2CxO+5Y9gqXjATeExJFebFpAmg3
 9FvfMNbMmRdhAl9bzDX20a2CkLB1KZY2vySmICvqiaLWIjWW0CLSxtVYK
 CmSfjgrIKd+wIksipABCOZ5KAxPirzdPEdsIMB2C+HihMFVMrXRYA4Jx4
 RvZSqNrnXMSGm6XJu/ykA1ST/Mw4bMIYGcvIkxOzIhzQtwptHfwUWlgy2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="346551070"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="346551070"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 00:27:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="759857363"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="759857363"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 21 Jul 2023 00:27:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 00:27:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 00:27:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 21 Jul 2023 00:27:08 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 21 Jul 2023 00:27:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NAjsL0QBS78qPb8asZt+mJn20GhPuqgiqrpoz2O3N+O0uJKVjwpDrH2PPzsyxcbxWOBEwdM62JLjkb103xgJlN439UKRr/uKG2/V8zJAHsvdvqclmWlqfiP9xa5tDyzwbGHD9SmyCq1nY2sTuSQefBKezdXEtvuadgLXedHBX5Fo+nF2ZYlEet2CyOpFNeVXFqtc2Xw/nJaUnqZFO3Tvq0fuUTV7gKV8lTDTe21w9qwZPQ3hIzgp1j+A+Gz6w8Lz2g9aG6bYr2EoYFamHlK43eIO/anY++q7jNyuOzBr+WAOZ3XHHVQfmdOHISomKVDTaVgNySlQeAQ+7/aPGhBuZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kHQkuCld9pf8K3es5jSwrNMDOZyNVh5kieEtIRTm6NA=;
 b=SLxTDx5Kn1IkIer6gP0YFJq5M40u9Tu5Q+Sz1wUn05x34+LAwrpVUUAplB0lEaX75KvEZWKKpl7o2bLFH3WOqtHyTqqA0trpNGDoyk3vmieEsOSShPfce72TynJej8CLbZSnwn1AOFj/txdoVxvV1j+awrWN/tFsOfxAKF1b8BC4dhqlTcNqsW5P19T2JnJY+PmrlgWaS9CSyOguJP0kPJfkdNSxq1iyPlHSDD2rkcAsF0cEeIrkMYock/iUYTXzJtNUiBG/ux2YhjmEoGRPIAOfofcZIsSg3aTFw1D8Boh3VWtp3qHYdo3P1j+dQ49zoEmAteStrOB1BvGpRs3NRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by PH0PR11MB4966.namprd11.prod.outlook.com (2603:10b6:510:42::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.25; Fri, 21 Jul
 2023 07:27:01 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::18de:a383:8dc0:3cb6]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::18de:a383:8dc0:3cb6%7]) with mapi id 15.20.6588.031; Fri, 21 Jul 2023
 07:27:00 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 4/4] drm/xe: Only init runtime PM after all d3cold config
 is in place.
Thread-Index: AQHZu026hsgZnzmKlkSxqX2g4aUnzK/D0lIg
Date: Fri, 21 Jul 2023 07:27:00 +0000
Message-ID: <CY5PR11MB6211AA59AC36DD9274DC2341953FA@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20230720210353.214385-1-rodrigo.vivi@intel.com>
 <20230720210353.214385-4-rodrigo.vivi@intel.com>
In-Reply-To: <20230720210353.214385-4-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|PH0PR11MB4966:EE_
x-ms-office365-filtering-correlation-id: 3aaf905a-e390-43b3-6f2d-08db89bbdfad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rlEofEk8rgJn5EqXsDXD4bfFeukN2PW8AdmgUPLJps+ougBZO56uhAXjRniYURNoehUbDwCzHBREhgRqBeMBzmgXsPXuj7ytT6dWVazq//i9kxEM1H48ZQzw8I2Pq3wMN1x+IBhPJJp0e8Gp2jA5i4OX5hcur2+OF2p7a0U69KFpvEmSfo6dmexQdWVpw1LtTmKCuccfWgd+4ogueoYzILFY33EPKZWvuXeWyx5fbBdG9DOcX/1ZX5u6pKOdKGzcIARaQfiqrIIGQKBGntoEHSoPn4VoXbGs34cmWatFhekE5wLLs3S5Fgc2olihi+Q0qpJts8P4c0eDs5gZOFKpgCWC4RndIeBE8ib2wIj8R5kWyupJCi/PWn7iGAgT2llz1T7yPVlLIhxca6nWkwZOqoacDtBAOo28Sczg9kSQnzkx6TxstJGQe1gFod8T8U8d1tRkDqJ2BUTodqdG89LSrFL2nBa6sXZYE4z9svgTguiwJ9s/r2cOGv0rVAB/XK5NK2YXFFSA7UiMm8pudQDvMRBmIrnFmaQZufsjzm7FBCXzprcNxXgfCow8/DBhM6i6GSydYGk1bDBOLYHbiGn7esJqREX/bVV2nv3wXvMoTZGBZNgl3dCzxQnX5j7aJ0ylICQsgmoz8S+94zDggCNHxSXrr5kVIawpyZiNGZvhdBw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(346002)(136003)(366004)(396003)(451199021)(9686003)(478600001)(7696005)(71200400001)(83380400001)(6506007)(26005)(5660300002)(186003)(52536014)(66446008)(64756008)(76116006)(316002)(66946007)(66476007)(110136005)(66556008)(53546011)(8676002)(8936002)(41300700001)(38070700005)(2906002)(86362001)(33656002)(55016003)(122000001)(82960400001)(38100700002)(42413004)(32563001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+a871E40j+GRWi6lYk9Xg1tqgrKh7Ych4ALMfdsjestTvuKGfUHXiRQEJR7X?=
 =?us-ascii?Q?w6aWqRVomEzKEolUnE0POlnNbAsOQD8jChgY8RIlh20RCWKTxygd0hykH2Vf?=
 =?us-ascii?Q?VH3gta01w1mK14J+wCJm9rXHS55yps6Ezu63WpmldXP1QD5Eg3HwVJkGyEtQ?=
 =?us-ascii?Q?Mu+WEyGq8EqdffSt43sutWtLbKCCCGPF+rzjDe0tSLzrd+3pqlEclG0s0MMk?=
 =?us-ascii?Q?RP38Na+rU4nbmrYFXH4copn2IMx2+lq38iZP7XQqkv/H4zgG+spi/coSqKiq?=
 =?us-ascii?Q?8CLPI7PSwsRbvyg1ouOJcAYFwDoAim3ZPFGGrbZM4otUVxMdvyZ3yw5/5t1w?=
 =?us-ascii?Q?JdIB7WCNOje/E26VBA10a0Z+VVIcK6Ha8YQTQjtQS1+pvRPdQm1d7GIHaHIg?=
 =?us-ascii?Q?Em9FdcGZhiD9pKNmYYYS3Rldw2LuK43daKy1XgVZJk1Hsh/AJ0IuvetU/arH?=
 =?us-ascii?Q?AeM2SiZLPt9f9uS3hVPVWdmt4qELSFtcHXolba+95WiM/NG7tQ9MJaf5dXzs?=
 =?us-ascii?Q?wV+Umqkw9iF2/kmM4GhP0+onWTR16LBkn7sxL6SImHZcIF1Oi38hTzMke703?=
 =?us-ascii?Q?jvG2rofxmDvsjm0Rag92ewzKIYJtfPz4krXGG9qRZNR9fQ13ZdfqFU996LFl?=
 =?us-ascii?Q?oP29X+YyfsMV84KtoV8uEApujjq4r4+pS5nlCvff0VeYXKx9H1DdTwzrlxqu?=
 =?us-ascii?Q?IODFr0XWyjDj2GNx2zWHI57B0oHfRNGxx131vH9x7cBS4AlHx7tNBmhWWeDJ?=
 =?us-ascii?Q?ZVItmywq7RF8dZgTiDnPsTZuCXtrvFgEisdvaSSroSh9SYXESbAQqwOErVr9?=
 =?us-ascii?Q?19XdUKNGBjL+MCz5I7b2tG6ljijpumgY1oV68jSPHBcV8l8CUOr2YXOQSN/X?=
 =?us-ascii?Q?wjPR9RfVPlu/uQcHdPX467MWduQDUNj6ZCz6yqFSiIJJ/9xpO4VaUSuqP+Y9?=
 =?us-ascii?Q?TaV3EeC5kiUQfXrbgmPoZOXvAGSgTKMjznDEXEHZmbnV/QiYFXun+TUpISBX?=
 =?us-ascii?Q?mmsv8WCYyX47U0EQ31afpUoOFmFoj6JtRemJcbrdGi1IvNavVjIg1zItQ/pR?=
 =?us-ascii?Q?AsfNy0Gq/27gr2gE3IPV621pnZLzTewXbakd9HT5HPXXwNgyIMbpGUN50Vm6?=
 =?us-ascii?Q?lVciNCqKS7ItkkjXm+jXya398mGWSudWvWPjDsIrUZ4yzgLKJ71nRgsvYhW7?=
 =?us-ascii?Q?ugM2bqicHituVl6DDVs/gN62Woz+WxML5d4/umv4QOpOCQXCu/R/hoKBsx8b?=
 =?us-ascii?Q?z/FUyVLfSE/AU2p42H0bcpnylAzKljC6qJnCqOb5Qlu3G2GbVUzcrVxsd3qs?=
 =?us-ascii?Q?nZWWxdImmfCofoAKR8WOz0AcqvEYWZUXtCbC84PCEVnUkedYS/KpHQHv58iA?=
 =?us-ascii?Q?FBhxSIOq8hnvG+9Ypkn/qeha6EJcQ4ee+CAMmlONo4MSTo03sRE3iqRiIksF?=
 =?us-ascii?Q?c/YYuQ0AOOuCbdd9a7WETyvwqWJSVJoIm2m2Yf1fG3CT/dqr1qeBv84Nw4jl?=
 =?us-ascii?Q?XlaNSAsCX6oLeq0p6OBWMgKKADNThH+UpVxvXY9GFYuPxj3M3lGOeiyFjvaE?=
 =?us-ascii?Q?CGw+wzb6qqaMnVCkKQ7I8WmknOovd1OBzguBuO4r?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3aaf905a-e390-43b3-6f2d-08db89bbdfad
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2023 07:27:00.7591 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jLMvhMN7K4oxFUWu2ESAFcyhetEDtugKqgWtQ3ALoPhx3JabnUtEzTLe6eKLbG1Vm1xHimqeQAsLEupwcwOc9+vdA7FJJpSSro0StAX9jGo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4966
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/xe: Only init runtime PM after all
 d3cold config is in place.
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
> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Sent: Friday, July 21, 2023 2:34 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>
> Subject: [PATCH 4/4] drm/xe: Only init runtime PM after all d3cold config=
 is in
> place.
>=20
> We cannot allow runtime pm suspend after we configured the d3cold
> capable and threshold.
>=20
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_pm.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
> index 73bcb76c2d42..366ee446af38 100644
> --- a/drivers/gpu/drm/xe/xe_pm.c
> +++ b/drivers/gpu/drm/xe/xe_pm.c
> @@ -152,10 +152,12 @@ void xe_pm_init(struct xe_device *xe)
>  	struct pci_dev *pdev =3D to_pci_dev(xe->drm.dev);
>=20
>  	drmm_mutex_init(&xe->drm, &xe->d3cold.lock);
> -	xe_pm_runtime_init(xe);
> +
>  	xe->d3cold.capable =3D xe_pm_pci_d3cold_capable(pdev);
>  	xe_device_sysfs_init(xe);
>  	xe_pm_set_vram_threshold(xe, DEFAULT_VRAM_THRESHOLD);
> +
> +	xe_pm_runtime_init(xe);
LGTM.
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
>  }
>=20
>  void xe_pm_runtime_fini(struct xe_device *xe)
> --
> 2.41.0

