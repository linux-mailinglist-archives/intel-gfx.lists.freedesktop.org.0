Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB1E6A8940
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 20:13:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED07110E0FF;
	Thu,  2 Mar 2023 19:13:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DC1710E0FF
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 19:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677784413; x=1709320413;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1CNfDJwU2gCQgY8oCSZXPWqYAzludsPcmCjsCSODiQk=;
 b=ZE/XdSUud5UDU8SjyNm65DBhUwBVGI3YVp1ktXK9K/I/UO/MN/zNlc79
 hI9NPEhIG6gVyJRR0J16ogNVCxQQmQJggQANhFTGH8BgaRzOQpJ9cMxcb
 4PfCNYKLT+fUvF1nAu+dl267RJ4BTFACogCXCSR8cIkx5bFKFSsXXRgGH
 EqfA+KDCF3+BRNd1PB/sbv8Hewza4Kg0DBrXOPhXPIVq5eRa8uvJ0+/Y9
 1Y+oA+YgOKxzcUya/i6Bxjd5eN3V9irKNXpUqKRle2iw+kydyqSXoEuwv
 YwVRNtlKvpFnmsGE8Xf/A83u1swxS3CqgivdKs2LexE2kWZpx00pTWtIS w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="337138925"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="337138925"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 11:13:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="1004266401"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="1004266401"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 02 Mar 2023 11:13:31 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 2 Mar 2023 11:13:30 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 2 Mar 2023 11:13:30 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 2 Mar 2023 11:13:30 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Mar 2023 11:13:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EBbuG/uTv0sN7+yG4gkUWZkre78ouQqFjLlVrh7UUfEa9BItAyH+eliUpQsc5PkktgOBk3MtoTjugUSQvMkqORTbRze9snqxe2pprHCGV6/yoOxY55pl7Nd2c5DVo43q8ZIZoMXbmJfV/6LfL556UVu1UHqzpHtiGU4bfZdXYAJ/7BLG0RIg6l+ajYNjoCkU78+tI8kcZJNc6ccodmdGpavQO0MvkpKx/1Uu6Xg41dr1nTBaajNtpa1sqG+NWrjG4y2znjJpemKOMBCOMVoPncxEW3cW/g8eTI1QInBLfpomHeqK3CHnHUGS2moFzXgg0vKRw/ImvcGDWBBN2Rlfcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hZBOrKIofGf9ok+tg9qx+GsjChe9jXQS50VFGCLO6bg=;
 b=T07fgqEzV8w34ihV2Dj1HPec+ygchIb06w/wirjE2/K0asnAGTD2m/M12HjhUid0Q1UUoiANsFj6octviV2P8ISPx2eQOg98YrQvmTNBgxpQcJTo+gq6oKwnUeWgVZj/z8Xo2SVJETWGxpWwoXXlWb23IznMstqpS14R3m/sxqfxBhiS4kx/URYU69sUvk7sbutVUwTk8E2u/bdy4bxR8mYjZfZIlFsaSwgKES8q2oVjwpABIsDH0PdVf8S9UY2y2h7srl5RvxEZmmKznUYd0k8ywcieT5Jd7FygNPce75SNSwFs07IIQnKK5wCjrH3FeorndPRMSFSSkMGrPbR/vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 CH0PR11MB5266.namprd11.prod.outlook.com (2603:10b6:610:e1::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6156.19; Thu, 2 Mar 2023 19:13:24 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::37fb:4480:3ea:b4f]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::37fb:4480:3ea:b4f%8]) with mapi id 15.20.6134.030; Thu, 2 Mar 2023
 19:13:24 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 06/22] drm/i915/mtl: Add vswing programming for C10
 phys
Thread-Index: AQHZR40lUrYXhuiRnEeS++TL5fQMWq7n5ikA
Date: Thu, 2 Mar 2023 19:13:24 +0000
Message-ID: <DM4PR11MB59711C8A59060451FFCE57E987B29@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230223134021.2236889-1-mika.kahola@intel.com>
 <20230223134021.2236889-7-mika.kahola@intel.com>
In-Reply-To: <20230223134021.2236889-7-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|CH0PR11MB5266:EE_
x-ms-office365-filtering-correlation-id: 369cd8d5-922e-4d26-5262-08db1b5231e0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cEDAWSLyFQ8cVrSYGwke9C+dW5cvyU4/TgawNRx+XmPv+k09p50ObrbtMzeBYSnCbjDJ4/I7EZ03+cpVyzqIztUakIO6M0vo5KJgpXFV0VcKrF3UpOfSSU5H724em9kTRKEnJ1StkiCDkHGo0smDzY/1XR9UHgpAn2gmovr+kowEsd7DsAOWLMS4cNrXw+GxDS15N6Rt+wnf3B8TIUI5tDtW1WV5YAbv4KwJ/hH34gHloumLE81aye2ZcQIj6CuNpxAdqs3J5yX474WUkCyEmkxKohTOTHbNsaijk8ZRKLAuA8jhnwEWlAgNnQgqQKy7fX9uFLWdVlElIJTfeXQUPZdTE9wh9+Ds3CLUdqmK5MbJaVAr2u4YHGTCfkcEAGFibdPqbgTcwAbsV/WEnyakc9s48SpesYbWFAGeMNoauspQORmrfm7dbcoBOCzZp90j1Go8lzuTRFzyNelJEp09I46+h2Zzl2Cfx6FWHia6mkwHHo/uBr/eonC+xkelv43ckKHqW7p5qqSZeIVHjvkQFF5uOf80bDwFNUoFOk2yq3VArMmpkOmiU9G36Kas7x4i/YYXQ2avU5/pX0iqL+bSrlBptOB4DG7zJWDVJvzgXmkkukvD6jZJkxv36UYqrsUvBEnd6zccSIycc0+EY/Wo5fpen2q6sslvZ8rsDj197Jbs7PedXQZm3qIDdw2S9xkzbLVVvfSeqMq5HT0VmkCOGQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(346002)(39860400002)(136003)(376002)(396003)(451199018)(5660300002)(30864003)(8936002)(52536014)(41300700001)(83380400001)(4326008)(8676002)(316002)(64756008)(66476007)(66946007)(2906002)(76116006)(55016003)(33656002)(66556008)(66446008)(82960400001)(107886003)(122000001)(38100700002)(186003)(6506007)(26005)(71200400001)(53546011)(9686003)(7696005)(478600001)(86362001)(54906003)(110136005)(38070700005)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NRiWkSgsS4AxbbNJuCmOjWuuG4GItiN/MPPMFCxqwKj7TeKIcC4ZglUNo0CY?=
 =?us-ascii?Q?reSJpXZUS6WvlgqXZubV8q5C1QGOKQVwkwPFt1SuRtPUiPda0SoVPsW6r4CW?=
 =?us-ascii?Q?blENUU8snp4wd4u6rBmxD/k/VTSxcj5Dxt7l/5841hyFAsKlqyuTLC0qjqiv?=
 =?us-ascii?Q?AcfcatJ4yIeqkiCk2Wi83la1z9W15SfbyH7upqdfIii+PccMbv7HMM+QvhTC?=
 =?us-ascii?Q?j+KHg2LruGNdZm+X2oSgcCUHG2uKfSAhZgwtRHofNIsZEAzNoFQfWPzeZfj2?=
 =?us-ascii?Q?JDcH0CJCnrQ47hBYfs4drk9xVnl3BfaAG3VorkujO+CwYRiNlLsJAjN5gjRl?=
 =?us-ascii?Q?gOobaNSCzCD9KyHszoePuRfbos3GSYkSYh1naO4GX5YLDK2MC9hb12UpUELQ?=
 =?us-ascii?Q?T63q7daaMSlWRMp7mV8tYomjZTLv+mosZjBHSyvcITk9yu9mmGvprJwUnD8z?=
 =?us-ascii?Q?76Bj5wVVXBhf9UAL7eyE+xX/XvYCXWiqsyK2NMPjoygKmyCQOib/EDNH2f2I?=
 =?us-ascii?Q?73dhByBy1zHdgAPMiw88XGvJUPk08fgv2kc5NC1XEpIHjwbRTj14sBn/yJPj?=
 =?us-ascii?Q?oQMuWpoovriZCUfBdUfv+FiUs+6P09eQNkddoAdRJxnnFkeVnFu6t4ggOWi0?=
 =?us-ascii?Q?AYmIHcKB1OM1vXOTRvhRWyrxMh4Sy0cBNiVzXIFyrSEJG5QGJsRdom4u/uRD?=
 =?us-ascii?Q?2vWZ6nIp58bxTEbq7D+ZbccSalOHEOw7e+EXJO6WyBcIekYyPQtYnIYOY4q0?=
 =?us-ascii?Q?DowoCKSqRaC2QVs6kUTLi7ccPgYu4hUVusSxS8kfyTcufsXvOtE1lnUE+N5h?=
 =?us-ascii?Q?Azi9a8aFm0QGO2EQakqoF2lTYU6QQacv7wjigZbTMFPw50WESss8umZ5DTiM?=
 =?us-ascii?Q?Ba6LuDM2XesgNZhySvx7eJ4jpKGnJwMtTx6z6m5d/WBwZDJhPZfj5kPCV9m5?=
 =?us-ascii?Q?rmBjfLltFxT1y14CD251lQdkA2VrO7CjRODCBuGxF42pvMqVMPMuvKGu2qWs?=
 =?us-ascii?Q?ECObNb9Qm76REy1f6NenEJKOkCEBO8Sn68Fm+FFcIzmgcGNRDlCALxu+z+du?=
 =?us-ascii?Q?tkbU7tcokpcDUA9Hqm6Br1JZrQjhXCpwnD0bgO+f0tQ5it5zsm3KzEDbxt7m?=
 =?us-ascii?Q?ruQdPfDuRsxi+xUDp/Lz5b/IGM6x6W3sB7vpuB9Z57DWD7o4CvR2mn8FKrj0?=
 =?us-ascii?Q?jMxCfa4JtcpCC3ULz8tb/CJFZNwx0RBDA6YUy8UtTrEv9eXqD8dJiYl6csCj?=
 =?us-ascii?Q?bVkGTazxBaQLXLXlouM8R/Cj34MhzaA7JMpbpLsUQqg1/oa+yDXXtxpU9ECg?=
 =?us-ascii?Q?R+U291LLDEP45gSVJY+rggNNjFVKfP1m7Q3rQdf8/zrJFuSUT69wj6fnodYC?=
 =?us-ascii?Q?Z8zvLo7xzQ+h00m6CSLtQJ2EFA7+DGQhxXOsunHSNx/iHHTeDf60CwVDSv8y?=
 =?us-ascii?Q?15ZvlcWDhD9OJAKvc6zlppXVFQCkIjIEnXjMGxdIi+ohoD1MiQPT4ooC/l5J?=
 =?us-ascii?Q?8BlTEc9tM6eCMXX+BKk1gvJI8ivlLZBTWLunqsCMdGdp3wRdTs8viV+z+j1H?=
 =?us-ascii?Q?IPpq061/QAvgGqhimDxxSHi9/1cAyADe3hgFH33RqkSASKgwpl4JQeId16XB?=
 =?us-ascii?Q?0w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 369cd8d5-922e-4d26-5262-08db1b5231e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2023 19:13:24.0797 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uEm1XFEDv4a4033iD/rJjDbSsy497lD8D/C6XVL5feDOnzvB24T4COCmfXXWtZFjGFweeh30dxdGky7HVgOwWsuaBzsHsp+gdXevUp7v2wY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5266
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 06/22] drm/i915/mtl: Add vswing
 programming for C10 phys
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

Hi Mika,

> -----Original Message-----
> From: Kahola, Mika <mika.kahola@intel.com>
> Sent: Thursday, February 23, 2023 5:40 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; Deak, Imre
> <imre.deak@intel.com>; Shankar, Uma <uma.shankar@intel.com>; Taylor,
> Clinton A <clinton.a.taylor@intel.com>; Kahola, Mika <mika.kahola@intel.c=
om>
> Subject: [PATCH v3 06/22] drm/i915/mtl: Add vswing programming for C10 ph=
ys
>=20
> From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>=20
> C10 phys uses direct mapping internally for voltage and pre-emphasis leve=
ls.
> Program the levels directly to the fields in the VDR Registers.
>=20
> Bspec: 65449
>=20
> v2: From table "C10: Tx EQ settings for DP 1.4x" it shows level 1
>     and preemphasis 1 instead of two times of level 1 preemphasis 0.
>     Fix this in the driver code as well.
> v3: VSwing update (Clint)
>=20
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 140 ++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   2 +
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  14 ++
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
>  .../drm/i915/display/intel_ddi_buf_trans.c    |  36 ++++-
>  .../drm/i915/display/intel_ddi_buf_trans.h    |   6 +
>  .../i915/display/intel_display_power_map.c    |   1 +
>  7 files changed, 192 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index c73d2bc3e1a8..3d61afbe7bdb 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -6,11 +6,15 @@
>  #include "i915_reg.h"
>  #include "intel_cx0_phy.h"
>  #include "intel_cx0_phy_regs.h"
> +#include "intel_ddi.h"
> +#include "intel_ddi_buf_trans.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
>  #include "intel_panel.h"
>  #include "intel_tc.h"
> +#include "intel_psr.h"
> +#include "intel_uncore.h"
>=20
>  bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
>  {
> @@ -20,6 +24,15 @@ bool intel_is_c10phy(struct drm_i915_private *dev_priv=
,
> enum phy phy)
>  	return false;
>  }
>=20
> +static void
> +assert_dc_off(struct drm_i915_private *i915)
> +{
> +	bool enabled;
> +
> +	enabled =3D intel_display_power_is_enabled(i915,
> POWER_DOMAIN_DC_OFF);
> +	drm_WARN_ON(&i915->drm, !enabled);
> +}
> +
>  static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port=
 port,
> int lane)
>  {
>  	enum phy phy =3D intel_port_to_phy(i915, port);
> @@ -112,6 +125,8 @@ static u8 intel_cx0_read(struct drm_i915_private *i91=
5,
> enum port port,
>  	int i, status =3D 0;
>  	u32 val;
>=20
> +	assert_dc_off(i915);
> +
>  	for (i =3D 0; i < 3; i++) {
>  		status =3D __intel_cx0_read(i915, port, lane, addr, &val);
>=20
> @@ -194,6 +209,8 @@ static void __intel_cx0_write(struct drm_i915_private
> *i915, enum port port,
>  	enum phy phy =3D intel_port_to_phy(i915, port);
>  	int i, status;
>=20
> +	assert_dc_off(i915);
> +
>  	for (i =3D 0; i < 3; i++) {
>  		status =3D __intel_cx0_write_once(i915, port, lane, addr, data,
> committed);
>=20
> @@ -241,6 +258,89 @@ static void intel_cx0_rmw(struct drm_i915_private
> *i915, enum port port,
>  	}
>  }
>=20
> +/*
> + * Prepare HW for CX0 phy transactions.
> + *
> + * It is required that PSR and DC5/6 are disabled before any CX0 message
> + * bus transaction is executed.
> + */
> +static intel_wakeref_t intel_cx0_phy_transaction_begin(struct intel_enco=
der
> *encoder)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +
> +	intel_psr_pause(intel_dp);
> +	return intel_display_power_get(i915, POWER_DOMAIN_DC_OFF);
> +}
> +
> +static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder,
> intel_wakeref_t wakeref)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +
> +	intel_psr_resume(intel_dp);
> +	intel_display_power_put(i915, POWER_DOMAIN_DC_OFF, wakeref);
> +}
> +
> +void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
> +				     const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> +	bool lane_reversal =3D dig_port->saved_port_bits &
> DDI_BUF_PORT_REVERSAL;
> +	u8 master_lane =3D lane_reversal ? INTEL_CX0_LANE1 :
> +					 INTEL_CX0_LANE0;
> +	u8 follower_lane =3D lane_reversal ? INTEL_CX0_LANE0 :
> +					 INTEL_CX0_LANE1;
> +	const struct intel_ddi_buf_trans *trans;
> +	intel_wakeref_t wakeref;
> +	int n_entries, ln;
> +
> +	wakeref =3D intel_cx0_phy_transaction_begin(encoder);
> +
> +	trans =3D encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> +	if (drm_WARN_ON_ONCE(&i915->drm, !trans))
> +		return;
> +
> +	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES,
> PHY_C10_VDR_CONTROL(1),
> +		      0, C10_VDR_CTRL_MSGBUS_ACCESS,
> MB_WRITE_COMMITTED);
> +
> +	for (ln =3D 0; ln < 4; ln++) {
> +		int level =3D intel_ddi_level(encoder, crtc_state, ln);
> +		int lane, tx;
> +
> +		lane =3D ln / 2 + 1;
> +		tx =3D ln % 2 + 1;
> +
> +		intel_cx0_rmw(i915, encoder->port, lane,
> PHY_CX0_VDR_OVRD_CONTROL(lane, tx, 0),
> +			      C10_PHY_OVRD_LEVEL_MASK,
> +			      C10_PHY_OVRD_LEVEL(trans-
> >entries[level].snps.pre_cursor),
> +			      MB_WRITE_COMMITTED);
> +		intel_cx0_rmw(i915, encoder->port, lane,
> PHY_CX0_VDR_OVRD_CONTROL(lane, tx, 1),
> +			      C10_PHY_OVRD_LEVEL_MASK,
> +			      C10_PHY_OVRD_LEVEL(trans-
> >entries[level].snps.vswing),
> +			      MB_WRITE_COMMITTED);
> +		intel_cx0_rmw(i915, encoder->port, lane,
> PHY_CX0_VDR_OVRD_CONTROL(lane, tx, 2),
> +			      C10_PHY_OVRD_LEVEL_MASK,
> +			      C10_PHY_OVRD_LEVEL(trans-
> >entries[level].snps.post_cursor),
> +			      MB_WRITE_COMMITTED);
> +	}
> +
> +	/* Write Override enables in 0xD71 */
> +	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES,
> PHY_C10_VDR_OVRD,
> +		      PHY_C10_VDR_OVRD_TX1 | PHY_C10_VDR_OVRD_TX2,
> +		      PHY_C10_VDR_OVRD_TX1 | PHY_C10_VDR_OVRD_TX2,
> +		      MB_WRITE_COMMITTED);
> +	intel_cx0_write(i915, encoder->port, follower_lane,
> PHY_C10_VDR_CONTROL(1),
> +			C10_VDR_CTRL_MSGBUS_ACCESS |
> C10_VDR_CTRL_UPDATE_CFG,
> +			MB_WRITE_COMMITTED);
> +	intel_cx0_write(i915, encoder->port, master_lane,
> PHY_C10_VDR_CONTROL(1),
> +			C10_VDR_CTRL_MASTER_LANE |
> C10_VDR_CTRL_MSGBUS_ACCESS |
> +			C10_VDR_CTRL_UPDATE_CFG,
> MB_WRITE_COMMITTED);
> +
> +	intel_cx0_phy_transaction_end(encoder, wakeref);
> +}
> +
>  /*
>   * Basic DP link rates with 38.4 MHz reference clock.
>   * Note: The tables below are with SSC. In non-ssc
> @@ -1085,9 +1185,12 @@ void intel_c10mpllb_readout_hw_state(struct
> intel_encoder *encoder,
>  	u8 lane =3D lane_reversal ? INTEL_CX0_LANE1 :
>  				  INTEL_CX0_LANE0;
>  	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
> +	intel_wakeref_t wakeref;
>  	int i;
>  	u8 cmn, tx0;
>=20
> +	wakeref =3D intel_cx0_phy_transaction_begin(encoder);
> +
>  	/*
>  	 * According to C10 VDR Register programming Sequence we need
>  	 * to do this to read PHY internal registers from MsgBus.
> @@ -1106,6 +1209,8 @@ void intel_c10mpllb_readout_hw_state(struct
> intel_encoder *encoder,
>  				   cmn !=3D C10_CMN0_HDMI_VAL))
>  		drm_dbg_kms(&i915->drm, "Unexpected tx: %x or cmn: %x for
> phy: %c.\n",
>  			    tx0, cmn, phy_name(phy));
> +
> +	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
>=20
>  static void intel_c10_pll_program(struct drm_i915_private *i915,
> @@ -1243,8 +1348,11 @@ static void intel_program_port_clock_ctl(struct
> intel_encoder *encoder,
>=20
>  	if (intel_crtc_has_dp_encoder(crtc_state)) {
>  		intel_dp =3D enc_to_intel_dp(encoder);
> -		ssc_enabled =3D intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
> -			      DP_MAX_DOWNSPREAD_0_5;
> +		ssc_enabled =3D (intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
> +			      DP_MAX_DOWNSPREAD_0_5);
> +
> +		if (intel_dp_is_edp(intel_dp) && !intel_panel_use_ssc(i915))
> +			ssc_enabled =3D false;
>=20
>  		if (!intel_panel_use_ssc(i915))
>  			ssc_enabled =3D false;
> @@ -1252,11 +1360,11 @@ static void intel_program_port_clock_ctl(struct
> intel_encoder *encoder,
>  		/* TODO: DP2.0 10G and 20G rates enable MPLLA*/
>  		val |=3D ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
>  	}
> +
>  	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> -		     XELPDP_LANE1_PHY_CLOCK_SELECT |
> -		     XELPDP_FORWARD_CLOCK_UNGATE |
> +		     XELPDP_LANE1_PHY_CLOCK_SELECT |
> XELPDP_FORWARD_CLOCK_UNGATE |
>  		     XELPDP_DDI_CLOCK_SELECT_MASK |
> -		     XELPDP_SSC_ENABLE_PLLB, val);
> +		     XELPDP_SSC_ENABLE_PLLA | XELPDP_SSC_ENABLE_PLLB,
> val);
>  }
>=20
>  static u32 intel_cx0_get_powerdown_update(u8 lane)
> @@ -1396,9 +1504,12 @@ static void intel_cx0_program_phy_lane(struct
> drm_i915_private *i915,
>  	bool dp_alt_mode =3D
> intel_tc_port_in_dp_alt_mode(enc_to_dig_port(encoder));
>  	enum port port =3D encoder->port;
>=20
> -	intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES,
> PHY_C10_VDR_CONTROL(1),
> -		      C10_VDR_CTRL_MSGBUS_ACCESS,
> C10_VDR_CTRL_MSGBUS_ACCESS,
> -		      MB_WRITE_COMMITTED);
> +	intel_cx0_rmw(i915, port, INTEL_CX0_LANE1,
> PHY_C10_VDR_CONTROL(1),
> +		      C10_VDR_CTRL_MSGBUS_ACCESS |
> C10_VDR_CTRL_UPDATE_CFG,
> +		      C10_VDR_CTRL_MSGBUS_ACCESS,
> MB_WRITE_COMMITTED);
> +	intel_cx0_rmw(i915, port, INTEL_CX0_LANE0,
> PHY_C10_VDR_CONTROL(1),
> +		      C10_VDR_CTRL_MSGBUS_ACCESS |
> C10_VDR_CTRL_UPDATE_CFG,
> +		      C10_VDR_CTRL_MASTER_LANE  |
> C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
>=20
>  	l0t1 =3D intel_cx0_read(i915, port, INTEL_CX0_LANE0,
> PHY_CX0_TX_CONTROL(1, 2));
>  	l0t2 =3D intel_cx0_read(i915, port, INTEL_CX0_LANE0,
> PHY_CX0_TX_CONTROL(2, 2));
> @@ -1561,9 +1672,14 @@ void intel_cx0pll_enable(struct intel_encoder
> *encoder,
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
> +	intel_wakeref_t wakeref;
> +
> +	wakeref =3D intel_cx0_phy_transaction_begin(encoder);
>=20
>  	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
>  	intel_c10pll_enable(encoder, crtc_state);
> +
> +	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
>=20
>  static void intel_c10pll_disable(struct intel_encoder *encoder)
> @@ -1608,7 +1724,8 @@ static void intel_c10pll_disable(struct intel_encod=
er
> *encoder)
>=20
>  	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
>  	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> -		     XELPDP_DDI_CLOCK_SELECT_MASK |
> +		     XELPDP_DDI_CLOCK_SELECT_MASK, 0);
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>  		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
>  }
>=20
> @@ -1616,9 +1733,14 @@ void intel_cx0pll_disable(struct intel_encoder
> *encoder)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
> +	intel_wakeref_t wakeref;
> +
> +	wakeref =3D intel_cx0_phy_transaction_begin(encoder);
>=20
>  	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
>  	intel_c10pll_disable(encoder);
> +
> +	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
>=20
>  void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index f8023f240727..952c7deeffaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -40,5 +40,7 @@ int intel_c10mpllb_calc_port_clock(struct intel_encoder
> *encoder,
>  void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
>  				 struct intel_crtc_state *new_crtc_state);
>  int intel_c10_phy_check_hdmi_link_rate(int clock);
> +void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
> +				     const struct intel_crtc_state *crtc_state);
>=20
>  #endif /* __INTEL_CX0_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index f6002b70ddbe..9bf7408fb363 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -162,6 +162,14 @@
>  #define CX0_P4PG_STATE_DISABLE		0xC
>  #define CX0_P2_STATE_RESET		0x2
>=20
> +#define PHY_C10_VDR_OVRD		0xD71
> +#define  PHY_C10_VDR_OVRD_TX1		REG_BIT8(0)
> +#define  PHY_C10_VDR_OVRD_TX2		REG_BIT8(2)
> +#define PHY_C10_VDR_PRE_OVRD_TX1	0xD80
> +#define C10_PHY_OVRD_LEVEL_MASK		REG_GENMASK8(5, 0)
> +#define C10_PHY_OVRD_LEVEL(val)
> 	REG_FIELD_PREP8(C10_PHY_OVRD_LEVEL_MASK, val)
> +#define PHY_CX0_VDR_OVRD_CONTROL(lane, tx, control)
> (PHY_C10_VDR_PRE_OVRD_TX1 + ((lane) ^ ((tx) - 1)) * 0x10 + (control))
> +
>  /* PHY_C10_VDR_PLL0 */
>  #define PLL_C10_MPLL_SSC_EN		REG_BIT8(0)
>=20
> @@ -169,4 +177,10 @@
>  #define PHY_CX0_TX_CONTROL(tx, control)	(0x400 + ((tx) - 1) * 0x200 +
> (control))
>  #define CONTROL2_DISABLE_SINGLE_TX	REG_BIT(6)
>=20
> +/* C10 Phy VSWING Masks */
> +#define C10_PHY_VSWING_LEVEL_MASK	REG_GENMASK8(2, 0)
> +#define C10_PHY_VSWING_LEVEL(val)
> 	REG_FIELD_PREP8(C10_PHY_VSWING_LEVEL_MASK, val)
> +#define C10_PHY_VSWING_PREEMPH_MASK	REG_GENMASK8(1, 0)
> +#define C10_PHY_VSWING_PREEMPH(val)
> 	REG_FIELD_PREP8(C10_PHY_VSWING_PREEMPH_MASK, val)
> +
>  #endif /* __INTEL_CX0_PHY_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index d48e1ffdfc71..60c38bc77683 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4457,7 +4457,9 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv,
> enum port port)
>  		encoder->get_config =3D hsw_ddi_get_config;
>  	}
>=20
> -	if (IS_DG2(dev_priv)) {
> +	if (DISPLAY_VER(dev_priv) >=3D 14) {
> +		encoder->set_signal_levels =3D intel_cx0_phy_set_signal_levels;
> +	} else if (IS_DG2(dev_priv)) {
>  		encoder->set_signal_levels =3D intel_snps_phy_set_signal_levels;
>  	} else if (DISPLAY_VER(dev_priv) >=3D 12) {
>  		if (intel_phy_is_combo(dev_priv, phy))
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 006a2e979000..d5a9aa2de2fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1035,6 +1035,30 @@ static const struct intel_ddi_buf_trans
> dg2_snps_trans_uhbr =3D {
>  	.num_entries =3D ARRAY_SIZE(_dg2_snps_trans_uhbr),
>  };
>=20
> +/*
> + * Some platforms don't need a mapping table and only expect us to
> + * to program the vswing + preemphasis levels directly since the
> + * hardware will do its own mapping to tuning values internally.
> + */
> +static const union intel_ddi_buf_trans_entry _mtl_c10_trans_dp14[] =3D {
> +	{ .snps =3D { 26, 0, 0  } },      /* preset 0 */
> +	{ .snps =3D { 33, 0, 6  } },      /* preset 1 */
> +	{ .snps =3D { 38, 0, 11 } },      /* preset 2 */
> +	{ .snps =3D { 43, 0, 19 } },      /* preset 3 */
> +	{ .snps =3D { 39, 0, 0  } },      /* preset 4 */
> +	{ .snps =3D { 45, 0, 7  } },      /* preset 5 */
> +	{ .snps =3D { 46, 0, 13 } },      /* preset 6 */
> +	{ .snps =3D { 46, 0, 0  } },      /* preset 7 */
> +	{ .snps =3D { 55, 0, 7  } },      /* preset 8 */
> +	{ .snps =3D { 62, 0, 0  } },      /* preset 9 */
> +};
> +
> +static const struct intel_ddi_buf_trans mtl_cx0_trans =3D {
> +	.entries =3D _mtl_c10_trans_dp14,
> +	.num_entries =3D ARRAY_SIZE(_mtl_c10_trans_dp14),
> +	.hdmi_default_entry =3D ARRAY_SIZE(_mtl_c10_trans_dp14) - 1,
> +};
> +
>  bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table)
>  {
>  	return table =3D=3D &tgl_combo_phy_trans_edp_hbr2_hobl;
> @@ -1606,12 +1630,22 @@ dg2_get_snps_buf_trans(struct intel_encoder
> *encoder,
>  		return intel_get_buf_trans(&dg2_snps_trans, n_entries);
>  }
>=20
> +static const struct intel_ddi_buf_trans *
> +mtl_get_cx0_buf_trans(struct intel_encoder *encoder,
> +		      const struct intel_crtc_state *crtc_state,
> +		      int *n_entries)
> +{
> +	return intel_get_buf_trans(&mtl_cx0_trans, n_entries);
> +}
> +
>  void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
>=20
> -	if (IS_DG2(i915)) {
> +	if (DISPLAY_VER(i915) >=3D 14) {
> +		encoder->get_buf_trans =3D mtl_get_cx0_buf_trans;
> +	} else if (IS_DG2(i915)) {
>  		encoder->get_buf_trans =3D dg2_get_snps_buf_trans;
>  	} else if (IS_ALDERLAKE_P(i915)) {
>  		if (intel_phy_is_combo(i915, phy))
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> index 2133984a572b..e4a857b9829d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> @@ -51,6 +51,11 @@ struct dg2_snps_phy_buf_trans {
>  	u8 post_cursor;
>  };
>=20
> +struct direct_phy_buf_trans {
> +	u8 level;
> +	u8 preemph;
> +};
> +
>  union intel_ddi_buf_trans_entry {
>  	struct hsw_ddi_buf_trans hsw;
>  	struct bxt_ddi_buf_trans bxt;
> @@ -58,6 +63,7 @@ union intel_ddi_buf_trans_entry {
>  	struct icl_mg_phy_ddi_buf_trans mg;
>  	struct tgl_dkl_phy_ddi_buf_trans dkl;
>  	struct dg2_snps_phy_buf_trans snps;
> +	struct direct_phy_buf_trans direct;
>  };
>=20
>  struct intel_ddi_buf_trans {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 6645eb1911d8..5ec2b9a109ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1427,6 +1427,7 @@ I915_DECL_PW_DOMAINS(xelpdp_pwdoms_dc_off,
>  	XELPDP_PW_2_POWER_DOMAINS,
>  	POWER_DOMAIN_AUDIO_MMIO,
>  	POWER_DOMAIN_MODESET,
> +	POWER_DOMAIN_DC_OFF,
Is this      ^  redundant here?

-Radhakrishna(RK) Sripada
>  	POWER_DOMAIN_AUX_A,
>  	POWER_DOMAIN_AUX_B,
>  	POWER_DOMAIN_DC_OFF,
> --
> 2.34.1

