Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 305CC5B3271
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 10:57:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B74B910E5FB;
	Fri,  9 Sep 2022 08:57:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4631A10E5FB
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 08:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662713865; x=1694249865;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DXoUQ+Awb7vej/N/B16saMb1m40DphS3LxK7nisjraw=;
 b=VRZ7ocmco6gZvMoQncm/zKYoSJwylVc/NK2MXAh+DQfq9Q2z394/i6Zz
 0KjdhbI2t43WhgpeuTYJfLi+eeVcavtE5VyTbgMswCE5VGdgFZgUFmwt9
 4Hq6sc5p84h9UM704MGTHEIe9uajQawa/6nMWau5cVzRiQt+ytLQXOUlN
 IOvFfOaH3qgkRz9mSDG36h0LLMilliH+CDNfjPgzFjhL/cLsBqpUVOQ+Y
 JTxX0koZlmXqQf82M4ja85a0gyN3nLzxrZ/ReXbFxR+CEbtOyyZTk0JZk
 nc+68ZFQS6VOD19MpKRMWVr+knpK974wRvzFPon7HNV6IF6WgFAHzjgyx w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="295012370"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="295012370"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 01:57:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="645460108"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 09 Sep 2022 01:57:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 01:57:43 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 01:57:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 9 Sep 2022 01:57:43 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 9 Sep 2022 01:57:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cegayyu4/zC0/I2RpXyuVej+naO8EF7RiPd0jQQUllrZm37cHOLTyANCqA1LiKB7YzvRkiEW2SR7gg3hovfmsAHVCKja+U9nSRWyQSfASrA6fx9C5nLqfP6jtmk01FzJQLHsnpa0sH3Grn5SsXIoFYVuh5BdIdOkh4Vwb0H17OzKPliUYTq4IoYir+bhCdbNYWUHI7e5Bmp9ux7T/fftzh4avJHKa2EKL08m4HCWPcRARmSFcyajoUoKTKzI5Grn57s3TUrQEzI9hcDu6CSknPGA65D6IUQI3VDFe0CGGcUkkUzLFlpqD1QVzNMnd53kXKw9xILIp0mZ651sL9Ts7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5nC6PI7DlQov4dxmGkTpOMVv5kUCj7bmgJQFki/V7kc=;
 b=bZY/YKq7HvaC5986CnrTuFdAbrJViueZ2MThf4iXhHaN4x1ti3EqrcW4uGpp9NiEbAHSO+vzXXvbHd1hTRv3zchBW4MeW8V24fRwpKo0wsXoFyDXnQs1me3sk+9961bS/sVcTikRAZnrkO1pCiBLslUGW1mKMz0ItxkbJbvm1qYoHzJzy5A5Kkjyjc/h9RlWwCKEBeKgbEjPkLELr/VMHPN8VO6C8OtO42lg8RjlZ5N6DiU5Lp1c7J4aveDiVNgQj2kDwYUg2PADC0x3kJPXhmVG8p45w2wTpnluB1oF/OfYcFaoJHa+Am9+Stun+OAercS9V2dW+0tqtDXjsFM3ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM4PR11MB6215.namprd11.prod.outlook.com (2603:10b6:8:a9::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5588.17; Fri, 9 Sep 2022 08:57:42 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3083:6b7c:8c2a:c200]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3083:6b7c:8c2a:c200%5]) with mapi id 15.20.5588.018; Fri, 9 Sep 2022
 08:57:41 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 1/3] drm/i915: Define WD trancoder for i915
Thread-Index: AQHYtf+40s+GjcLnfkibd/8R/c1yS63Wx0hA
Date: Fri, 9 Sep 2022 08:57:41 +0000
Message-ID: <DM6PR11MB3177686D56259B3554812B48BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220822081642.159908-1-suraj.kandpal@intel.com>
 <20220822081642.159908-2-suraj.kandpal@intel.com>
In-Reply-To: <20220822081642.159908-2-suraj.kandpal@intel.com>
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
x-ms-office365-filtering-correlation-id: d6c95e02-7c4d-422f-cc50-08da92415a9e
x-ms-traffictypediagnostic: DM4PR11MB6215:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Uv4oaB23nPVQcZcd7uAd6YjljqbgIn1K1beUBkKBX2ZlCyOymDTJVr9SCkJ0Nw8NS1JVh7ydDWo+DYnSF/iyBL3yUTZW2FzNaWtyaq0nyY0gplF+wIFjribG0Lt9mWUsv4f7kTaivHzH3vTuXzcBHFj2wpj15mKgUs5ETSe8bo37/Sx6a1YttUjtP2ITCMFzAV1c5GZik7LshNlrURckYSTKJ670t9UWL20/WfIQI11qs/mARjWWcvy8Xy56Rtvan5p36Iq7Rt62nIipobmcAV90076d2cUeoJj9S6KeeyJ6XnIYGTBIJrYInbOsGw6mst7KpHdqrHs1xs/VUx5uC8L9TCBrvV0cYbb41JMdE9u4FyKNWYrPRVBULK2w35/gAxNiB5MfW8GNqqzLvIEheguiMeXQoMwtYNBhVvcBAlVQi9/musGIAXNGozGW7HR6bqCbeZ6dByPQN3/9nXQDYbFF1k8flpiZ1WFxsnzkxeWmP9AfIS4IqPUAjdvZQFKUdvnZTTHXZ1ruc60eivCvvZRqWN3XRxnJv8BXGuA1drBv3KFQvNOu0+6HVyGW1fJZb/rDKFfY04SU5jfivcxr0XsILzM33AJMY7duu/GVDCkDcR10sQVseTWj+VHVcoRoJjDcVSmx3zhTW6JWWolOxbTcounGn+upnkVenDRs8oix3MQJr94lVL/oBNV2DCPW9xz2OlINN9hUepk06sj1CydvtZCZ5sVU9zoAl9ZMZiV14/c2cQfXLUJsyuucNV8kL2s8eLyiUt3gwuGXK/tJsA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(346002)(376002)(136003)(39860400002)(316002)(71200400001)(38100700002)(110136005)(54906003)(186003)(122000001)(107886003)(7696005)(86362001)(55016003)(4326008)(66556008)(38070700005)(66476007)(64756008)(2906002)(6506007)(66446008)(8676002)(66946007)(41300700001)(8936002)(9686003)(26005)(76116006)(478600001)(5660300002)(52536014)(82960400001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rmPMbMe4+4WxlLxRcpAGyU4nQNN5NBf/6EsSgPFe0p/4BvGjr64prLnlbhBr?=
 =?us-ascii?Q?lud3a7WpiPb1I9CO43S8Lo/aWTgi32Nba2HJ+rgIu9bzF2csqSQQ5NGEsSTP?=
 =?us-ascii?Q?yLNoxwfx/MR8f/eWYmxQdwt6jzLQBiFZxOsJddtC6ts+j+xubQ2fcKvsr2Cm?=
 =?us-ascii?Q?ZbJjwc9s1ffILM1dxpThpcIY0pq5SgC2ejvxfpk3ZPAcE8x8aiW8BlY6SC43?=
 =?us-ascii?Q?lDgAa/CYC4Aq1T83OGS1dMtjYzaA6M5zJ9PQ1kN4F+YwdrsMCwfqFhd1JRWt?=
 =?us-ascii?Q?NckOYO/uBvpoFX1I9VF/SxXrKDLID7NSfLPe1//27FyWSv66tPE9pFJtNjhb?=
 =?us-ascii?Q?PTZjyt9bIio1B8ogymWgoZEqTlpply8DiB5QtP6aYoktzA5b4Siq+UjET7Cu?=
 =?us-ascii?Q?QKEy3JcURAFONRkkh3mqRhSel0EUfBZmmZN2mhSHCN9C4f79h9GMgomznzBy?=
 =?us-ascii?Q?8HBff506Kc6RFC7b4g64Q/OV9R7HNpUM249789S4dAsNiryOl4tPyHYkRK7Y?=
 =?us-ascii?Q?vnE/bmPPR1fRpQ5CJ6XsHXOH46qY1wyh5xPp/sGgFCKz9bE7pe6r2ZvkHaoo?=
 =?us-ascii?Q?PsI7IYnL8CmPoeLRTP47/pK6SM2iXDVjSPCbI47/g9TPZRn5ukUAIh4lvnRG?=
 =?us-ascii?Q?UKU7KEzt7eh1w7MzhwsljO8vRllw5ggIBDwpsiM+SioiNlCVvvrQWqmXfJYj?=
 =?us-ascii?Q?FBpBMrtvwS6d7S2HIoV5SAM/Kin3/oFE9o4ETV48iTpwAXBe4PuvcMKvuklL?=
 =?us-ascii?Q?XiugVHqJJYKzvaSHmT0G4E5HOdd7y38u4CK0kErh9aH18pbAS6qFcueRlyKk?=
 =?us-ascii?Q?6jS2mej/ZvGAaCOsuLp+FjeBW6ou57VNydbvPSChcxs511KGJhlwS7ubRAC8?=
 =?us-ascii?Q?UjGOrN1iVuiD4psijLPsvX8RfdO8pQkdKtaQf6RB1AlAUdp9vbGnwA+QGsak?=
 =?us-ascii?Q?WTyOFXVKbXkStp9xPQP7jSxeCuJfRB5Bl9+L3Vc1j7hdatqlV38jbIDNg+mX?=
 =?us-ascii?Q?Z9RjatUGLV8GKsqeoxeF/vWvSszY3euxBXtPgPBywIumLFXD7CjMWv9884D7?=
 =?us-ascii?Q?BSMew33DmIblNxoK1MQtlGzgV2jESM6k19q8OncSdoPBhmYG0CgQyHBx9ABp?=
 =?us-ascii?Q?yLBKDnc0Xl7jOTEUAkvsC4zeciGvvQppaHlkclx1msk+z4A8k3f5jwBvou7w?=
 =?us-ascii?Q?qln9Gs/au+A3dnzP52Vgu7fBKYlBs8AAflafGmBRXkXoOkwilE6JITsclkAG?=
 =?us-ascii?Q?Ub4RP6iw/7L7tchMYikG8T00Q88nkrN3D/6yYqwmNk4i/HQQMKNvTGzh7mj6?=
 =?us-ascii?Q?SNdTha6ds91YhBNlVPyiL1UR/4ducNCIhY2BJzl6tpzJI2luHacSKvQq/FbR?=
 =?us-ascii?Q?RDkT2MpE7lfgzCSWyeEujNv6qrZnI8vvlIxCeNg8m5xnHBLC3opu9ZNdplEh?=
 =?us-ascii?Q?DsmS5eYb2mmyxy5aAlg4F0O38PzjgKZJqpyz/VF7NDelFWfeKR1tmYnlwG98?=
 =?us-ascii?Q?wH7pLLggPQowK4/QK6yMubfyey5A745fGK0XkIZFEFThdhRhQ0fIIFbQjso/?=
 =?us-ascii?Q?EE9vxRNjbmy3sKHOydZglQ7vxqfxe+qV0YIOxw61?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6c95e02-7c4d-422f-cc50-08da92415a9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2022 08:57:41.7076 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YxALukZOmQqEmn+ddCi8nHa95XlHpyLeFHq2tvAt/A8sRC5SHP8U/3/KUh+ZnV3GzgcHCMw5+Nk7etsr0HViXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6215
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: Define WD trancoder for
 i915
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

> From: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> Adding WD Types, WD transcoder to enum list and WD Transcoder offsets.
> Adding i915 register definitions related to WD transcoder
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.h  |   6 +
>  .../drm/i915/display/intel_display_types.h    |   1 +
>  drivers/gpu/drm/i915/i915_reg.h               | 139 ++++++++++++++++++
>  3 files changed, 146 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index fa5371036239..4e9f22954a41 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -120,6 +120,8 @@ enum transcoder {
>  	TRANSCODER_DSI_1,
>  	TRANSCODER_DSI_A =3D TRANSCODER_DSI_0,	/* legacy DSI */
>  	TRANSCODER_DSI_C =3D TRANSCODER_DSI_1,	/* legacy DSI */
> +	TRANSCODER_WD_0,
> +	TRANSCODER_WD_1,
>=20
>  	I915_MAX_TRANSCODERS
>  };
> @@ -141,6 +143,10 @@ static inline const char *transcoder_name(enum
> transcoder transcoder)
>  		return "DSI A";
>  	case TRANSCODER_DSI_C:
>  		return "DSI C";
> +	case TRANSCODER_WD_0:
> +		return "WD 0";
> +	case TRANSCODER_WD_1:
> +		return "WD 1";
>  	default:
>  		return "<invalid>";
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 0da9b208d56e..0e94bd430bcb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -79,6 +79,7 @@ enum intel_output_type {
>  	INTEL_OUTPUT_DSI =3D 9,
>  	INTEL_OUTPUT_DDI =3D 10,
>  	INTEL_OUTPUT_DP_MST =3D 11,
> +	INTEL_OUTPUT_WD =3D 12,
>  };
>=20
>  enum hdmi_force_audio {
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index bf5c39d9f953..e3fced4b9980
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2059,6 +2059,8 @@
>  #define TRANSCODER_EDP_OFFSET 0x6f000
>  #define TRANSCODER_DSI0_OFFSET	0x6b000
>  #define TRANSCODER_DSI1_OFFSET	0x6b800
> +#define TRANSCODER_WD0_OFFSET	0x6e000
> +#define TRANSCODER_WD1_OFFSET	0x6e800
>=20
>  #define HTOTAL(trans)		_MMIO_TRANS2(trans, _HTOTAL_A)
>  #define HBLANK(trans)		_MMIO_TRANS2(trans, _HBLANK_A)
> @@ -3831,6 +3833,11 @@
>  #define PIPE_DSI0_OFFSET	0x7b000
>  #define PIPE_DSI1_OFFSET	0x7b800
>=20
> +/* WD 0 and 1 */
Can this be changed to=20
/* WD offset */

> +#define PIPE_WD0_OFFSET		0x7e000
> +#define PIPE_WD1_OFFSET		0x7d000
> +
> +
>  #define PIPECONF(pipe)		_MMIO_PIPE2(pipe, _PIPEACONF)
>  #define PIPEDSL(pipe)		_MMIO_PIPE2(pipe, _PIPEADSL)
>  #define PIPEFRAME(pipe)		_MMIO_PIPE2(pipe,
> _PIPEAFRAMEHIGH)
> @@ -4495,6 +4502,10 @@
>  #define _PIPEDSI0CONF		0x7b008
>  #define _PIPEDSI1CONF		0x7b808
>=20
> +/* WD 0 and 1 */
Can this be changed to=20
/* WD config regs */

> +#define _PIPEWD0CONF		0x7e008
> +#define _PIPEWD1CONF		0x7d008
> +
>  /* Sprite A control */
>  #define _DVSACNTR		0x72180
>  #define   DVS_ENABLE			REG_BIT(31)
> @@ -5720,6 +5731,7 @@
>  #define GEN8_DE_MISC_IER _MMIO(0x4446c)
>  #define  GEN8_DE_MISC_GSE		(1 << 27)
>  #define  GEN8_DE_EDP_PSR		(1 << 19)
> +#define  GEN8_DE_MISC_WD0		(1 << 23)
>=20
>  #define GEN8_PCU_ISR _MMIO(0x444e0)
>  #define GEN8_PCU_IMR _MMIO(0x444e4)
> @@ -8714,6 +8726,133 @@ enum skl_power_gate {
>  #define   DSB_ENABLE			(1 << 31)
>  #define   DSB_STATUS			(1 << 0)
>=20
> +#define TGL_ROOT_DEVICE_ID		0x9A00
> +#define TGL_ROOT_DEVICE_MASK		0xFF00
> +#define TGL_ROOT_DEVICE_SKU_MASK	0xF
> +#define TGL_ROOT_DEVICE_SKU_ULX		0x2
> +#define TGL_ROOT_DEVICE_SKU_ULT		0x4
> +
> +/* Gen12 WD */
> +#define _MMIO_WD(tc, wd0, wd1)		_MMIO_TRANS((tc) -
> TRANSCODER_WD_0, \
> +							wd0, wd1)
> +
> +#define WD_TRANS_ENABLE			(1 << 31)
> +#define WD_TRANS_DISABLE		0
> +#define WD_TRANS_ACTIVE			(1 << 30)
> +
> +/* WD transcoder control */
> +#define _WD_TRANS_FUNC_CTL_0		0x6e400
> +#define _WD_TRANS_FUNC_CTL_1		0x6ec00
> +#define WD_TRANS_FUNC_CTL(tc)		_MMIO_WD(tc,\
> +					_WD_TRANS_FUNC_CTL_0,\
> +					_WD_TRANS_FUNC_CTL_1)
> +
> +#define TRANS_WD_FUNC_ENABLE		(1 << 31)
> +#define WD_TRIGGERED_CAP_MODE_ENABLE	(1 << 30)
> +#define START_TRIGGER_FRAME		(1 << 29)
> +#define STOP_TRIGGER_FRAME		(1 << 28)
> +#define WD_CTL_POINTER_ETEH		(0 << 18)
> +#define WD_CTL_POINTER_ETDH		(1 << 18)
> +#define WD_CTL_POINTER_DTDH		(2 << 18)
> +#define WD_INPUT_SELECT_MASK		(7 << 12)
> +#define WD_INPUT_PIPE_A			(0 << 12)
> +#define WD_INPUT_PIPE_B			(5 << 12)
> +#define WD_INPUT_PIPE_C			(6 << 12)
> +#define WD_INPUT_PIPE_D			(7 << 12)
> +
> +#define WD_PIX_FMT_MASK			(0x3 << 20)
> +#define WD_PIX_FMT_YUYV			(0x1 << 20)
> +#define WD_PIX_FMT_XYUV8888		(0x2 << 20)
> +#define WD_PIX_FMT_XBGR8888		(0x3 << 20)
> +#define WD_PIX_FMT_Y410			(0x4 << 20)
> +#define WD_PIX_FMT_YUV422		(0x5 << 20)
> +#define WD_PIX_FMT_XBGR2101010		(0x6 << 20)
> +#define WD_PIX_FMT_RGB565		(0x7 << 20)
> +
> +#define WD_FRAME_NUMBER_MASK		15
> +
> +#define _WD_STRIDE_0			0x6e510
> +#define _WD_STRIDE_1			0x6ed10
> +#define WD_STRIDE(tc)			_MMIO_WD(tc,\
> +					_WD_STRIDE_0,\
> +					_WD_STRIDE_1)
> +#define WD_STRIDE_SHIFT			6
> +#define WD_STRIDE_MASK			(0x3ff << WD_STRIDE_SHIFT)
> +
> +#define _WD_STREAMCAP_CTL0		0x6e590
> +#define _WD_STREAMCAP_CTL1		0x6ed90
> +#define WD_STREAMCAP_CTL(tc)		_MMIO_WD(tc,\
> +					_WD_STREAMCAP_CTL0,\
> +					_WD_STREAMCAP_CTL1)
> +
> +#define WD_STREAM_CAP_MODE_EN		(1 << 31)
> +#define WD_STRAT_MASK			(3 << 24)
> +#define WD_SLICING_STRAT_1_1		(0 << 24)
> +#define WD_SLICING_STRAT_2_1		(1 << 24)
> +#define WD_SLICING_STRAT_4_1		(2 << 24)
> +#define WD_SLICING_STRAT_8_1		(3 << 24)
> +#define WD_STREAM_OVERRUN_STATUS	1
> +
> +#define _WD_SURF_0			0x6e514
> +#define _WD_SURF_1			0x6ed14
> +#define WD_SURF(tc)			_MMIO_WD(tc,\
> +					_WD_SURF_0,\
> +					_WD_SURF_1)
> +
> +#define _WD_IMR_0			0x6e560
> +#define _WD_IMR_1			0x6ed60
> +#define WD_IMR(tc)			_MMIO_WD(tc,\
> +					_WD_IMR_0,\
> +					_WD_IMR_1)
> +#define WD_FRAME_COMPLETE_INT		(1 << 7)
> +#define WD_GTT_FAULT_INT		(1 << 6)
> +#define WD_VBLANK_INT			(1 << 5)
> +#define WD_OVERRUN_INT			(1 << 4)
> +#define WD_CAPTURING_INT		(1 << 3)
> +#define WD_WRITE_COMPLETE_INT		(1 << 2)
> +
> +#define _WD_IIR_0			0x6e564
> +#define _WD_IIR_1			0x6ed64
> +#define WD_IIR(tc)			_MMIO_WD(tc,\
> +					_WD_IIR_0,\
> +					_WD_IIR_1)
> +
> +#define _WD_FRAME_STATUS_0		0x6e56b
> +#define _WD_FRAME_STATUS_1		0x6ed6b
> +#define WD_FRAME_STATUS(tc)		_MMIO_WD(tc,\
> +					_WD_FRAME_STATUS_0,\
> +					_WD_FRAME_STATUS_1)
> +
> +#define WD_FRAME_COMPLETE		(1 << 31)
> +#define WD_STATE_IDLE			(0 << 24)
> +#define WD_STATE_CAPSTART		(1 << 24)
> +#define WD_STATE_FRAME_START		(2 << 24)
> +#define WD_STATE_CAPACITIVE		(3 << 24)
> +#define WD_STATE_TG_DONE		(4 << 24)
> +#define WD_STATE_WDX_DONE		(5 << 24)
> +#define WD_STATE_QUICK_CAP		(6 << 24)
> +
> +#define _WD_27_M_0			0x6e524
> +#define _WD_27_M_1			0x6ed24
> +#define WD_27_M(tc)			_MMIO_WD(tc,\
> +					_WD_27_M_0,\
> +					_WD_27_M_1)
> +
> +#define _WD_27_N_0			0x6e528
> +
> +//Address looks wrong in bspec:
> +#define _WD_27_N_1			0x6ec28
> +#define WD_27_N(tc)			_MMIO_WD(tc,\
> +					_WD_27_N_0,\
> +					_WD_27_N_1)
> +
> +#define _WD_TAIL_CFG_0			0x6e520
> +#define _WD_TAIL_CFG_1			0x6ed20
> +
> +#define WD_TAIL_CFG(tc)			_MMIO_WD(tc,\
> +					_WD_TAIL_CFG_0,\
> +					_WD_TAIL_CFG_1)
> +
>  #define CLKREQ_POLICY			_MMIO(0x101038)
>  #define  CLKREQ_POLICY_MEM_UP_OVRD	REG_BIT(1)
>=20
With the above said changes
Reviewed-by: Arun R Murthy <arun.r.murthy>

Thanks and Regards,
Arun R Murthy
--------------------

