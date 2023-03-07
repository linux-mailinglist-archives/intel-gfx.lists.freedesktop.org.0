Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E686AD797
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 07:45:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E11710E368;
	Tue,  7 Mar 2023 06:45:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F069F10E368
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 06:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678171513; x=1709707513;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vF1b6/33RycG4wUjT68NvjSo1PcAKrze9nNLMcw4xeI=;
 b=aGQB2QcxMU0gludEVPLt0RJlAY5Nazfq/YncMy8uBAnLaZup0XGX07/z
 FAhvueMPDs/6AA7DhcQGICVyUrUBO3MkOtJY18jjj3qIjYIxn5TtLZINb
 1sK678ZotrFxsD9Pm2c4Al4xRMxplnNTAx2AN7pPUN9+8dqddylj1+OyB
 2S+v3FNzTn2y73uxeXZ+1IDAVXsXj5kvMOhKrRcWqQvILISimC0pMAhw9
 +dSNB3wa05PNvplnaxIFgmOjj4JE3Ej259O6cdcDDiqN7ESk+TGNkI/C8
 cxvmghUlyG0cf2y7GSu0TnDnEqbEZdWDao4tBkipI3Bm+xboaotZNKcvN A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="333248054"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="333248054"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 22:45:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="922228908"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="922228908"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 06 Mar 2023 22:45:13 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 22:45:12 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 22:45:12 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 22:45:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VsaWh9tfKMZ+L9OZUsIyWY7KvxTtEdSGSOQHUkJ4YbzDWaM8K965c5nuYK988Pu+EgOpxO1Pi7VuFKAGuqFp6UPpCCyUn6BG7+T5ar8wRVC+1yum29GsNAYZUDslgViuHKf81FTDLZzuWadwgIIEGUCwYEiqe0T30NgV3SZRmqJNs1hSl2fxT04+RR0u5/7efvPN2Fp8vsFGbC7oMDHqj8ao44R98izNSMxDztyTted5vKjsH4cNzw37AkmxUVY2U/ZqUHU5PuD7IT80Q3sp0THrdNm/GTjnLVlQi4NOgHXgE1H6dQa5SGS/ERsgI2DugOCLBDc3xXWj1shhWSgAnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QO3HizaMP7LVRQYaCndJ24ISy19nuboLW9mdDCH62LI=;
 b=kJMFd+U3wDOf5r1q1/vV/LrpxzRju1gwBoAJYcCxoZ8CvzB/y9URj7fpLjxQ2j063bkbBCE9tuKuo8A+fKY5RYRlAhbVoeB/L9r7TvrmjGAGrMGHT0Vx2+Iy5yZ45SoQwHq0/8AcV9i/S7hC+2myDVMsPMrpg4j6BXFbm8jqhstLYXmvumEqC1cmjD718mN92coNa19sLOEviqfjoP1klWLRKfiuWzYyeEcppGzEnfJWvxuAWniwt5Z9Mdsxo/mDA3fO6/1ty4kLMCTi1J/rkZWaI7IeTgXSLkbHP4OqgOT4OEQ0Ma7VFCDqj9ys2vpIv/+uC/lzK8jOMODdVBDThA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SN7PR11MB7115.namprd11.prod.outlook.com (2603:10b6:806:29a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Tue, 7 Mar
 2023 06:45:10 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e%7]) with mapi id 15.20.6156.029; Tue, 7 Mar 2023
 06:45:10 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v10 6/6] drm/i915/mtl: Add HDCP GSC interface
Thread-Index: AQHZNhznIANgWMQh60mJTmXUSrr3TK7t46swgAEv+5A=
Date: Tue, 7 Mar 2023 06:45:10 +0000
Message-ID: <DM4PR11MB6360C3D7C4255BA69F205DDFF4B79@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230201090806.3008619-1-suraj.kandpal@intel.com>
 <20230201090806.3008619-7-suraj.kandpal@intel.com>
 <DM4PR11MB6360A722321881F0BF949136F4B69@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360A722321881F0BF949136F4B69@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SN7PR11MB7115:EE_
x-ms-office365-filtering-correlation-id: 505fa666-5270-4747-e7e8-08db1ed77f10
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: re/Z2rEaqSwt3R8hCe1whVKn4mjPvR09zyLpPC7hUECm15Ia0z9YkHM7aO1spd+5cuCsxmjxlSzgpWmOXjApOvPN/Y5PlXpvwJtiDCGIIuOfaLyacMp8vqMaeIElUjR5UCw6Rs0oWi/Yz+QIF1g8360rxLeNdB4McyzePQD3GR6ftNkM5PPYFVWW4L0nUis198+X9Ts6vKbDhzEFElu5ZlgGlvk3q0xN2ciJVUuxSav5wXk56H4FW654t4IiRzRcVJ/iRPmShjq9g6kHZiENndlhxWzOmhuBZyjizRfp1xupRhzWHLE2FTSYNgMdxrVGLZG86ce7K8aBe++uvqbL4I4Wr4BloWfGdQwqM1LJdF/aAbBRbWJjTVyPBkzpIzOizY2ja9rKHU79S69O6nn+1iIKHMzND1lVVbpKyAFLtSXOLYnRuJvFTY5g8XNWOfGUMJ5uV8yhepocp2+LwKC50RUD2leL3hMwyTP6bqrJFeTcJfFMtaYsFBKaVJc4iK5RRT475b+TGFpijywEkdZ8pUKHCtLBOJCc00nraCGxDyYFSyJBIDAqEFq91znMfFbE8jx7E/5pd31COhgTgxCnfMelZOmfVT76VVXBEahBUuYjuVmU9zu5Kj7FtO+0p5i4472wJb0/FKeinhTPjMNt3DpfvQ2uYcFKsBUp/uYpuHvb+ZW9h7zzxEsCWYBd2dSDFNsV0zEkJimTH/LyLp1mn7oD5YEqu78c9Qcud7LKfHM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(39860400002)(396003)(366004)(346002)(376002)(451199018)(2906002)(30864003)(8936002)(52536014)(5660300002)(41300700001)(4326008)(76116006)(316002)(54906003)(110136005)(64756008)(66446008)(66476007)(66556008)(66946007)(8676002)(7696005)(71200400001)(33656002)(55016003)(86362001)(107886003)(38070700005)(53546011)(122000001)(82960400001)(83380400001)(26005)(6506007)(9686003)(186003)(478600001)(38100700002)(559001)(579004)(309714004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QEK6Trb5zjJFE+/2LqOSQSQfXWwx4sdPRgNEUl7AlkVdHCOE5RGiL3DFd8DK?=
 =?us-ascii?Q?/oNiUppqDObkXbRbtYFoB+pX0zw3CbIvPZDE3gobfmB2rMD9+u2ATmzcKNgf?=
 =?us-ascii?Q?9bWMrzkp5n9LKYL9lWhvtbmnJtWKcXBnOnFf1oz119KSuscQd9pLsPujMiek?=
 =?us-ascii?Q?o/d2A1jdQZMHQybQwmOEKJA87ceuRpHJ/1lMemP00n13/yLdLQWFekyQ4Bfq?=
 =?us-ascii?Q?12LgNo+XxhviwhNYsFD2Rgn/zcHNVS/+sFopoz2ZfkvwlxWLZlhjOLCaq0fk?=
 =?us-ascii?Q?4LWY3zMOvuVQHZiS27cwLw5EvFkZjxxvEMqkhoerFw6Gd8aXBBSi+afiWN8n?=
 =?us-ascii?Q?6tQZrf+jm3A81NAVlz27yZbxYiLF0m5U1ri5+x8yKysE6N0+ukHWykgRBIoZ?=
 =?us-ascii?Q?UQZ4Z3zNIJ4dO/mFMkAPyT95zamS58qC13KX9/sz/Pf2IW9ODy2lc//8v+o+?=
 =?us-ascii?Q?IOqQXJ9J08GWpVKnAuhHEiK73ow9HnVtw5BNR2GnP4hXLr3514LXe2OKDRJf?=
 =?us-ascii?Q?fIBH7khGqRXyFqYZKR/JNYgF33AjordnPwgi3vYO/fbiG3tmkt3QOGh4NPF8?=
 =?us-ascii?Q?tDXf8hPMzFxbJ9CNgg9hfRhgD8BKT7QNtekg96PgEoY+tTdbY/PCgM9VsrkE?=
 =?us-ascii?Q?3zDAY9JVrhjqIl9tezoBb0lTQuqYv+NuWb3nsrMIydjZkbbdxDjL1xIijP70?=
 =?us-ascii?Q?U549GS4s4fWD0pkkdSSPryDctrEaHM3E3Ml9tqpCgfm0YA+oYazzpIsilnLl?=
 =?us-ascii?Q?njOEGGszn2XaX9Lvc5bD0G/HQnmCbXvndicFzlIZ2mOwCMgaaa0cUYhPT47O?=
 =?us-ascii?Q?5yuirhM3GWv7UCdrrBm1iC4zo6MXJsohO6+k2COl022AjWEKYao8OQnDGiPg?=
 =?us-ascii?Q?nUHPseAYWWkWsyHI2nqKdzL50LLutU/eTlvTIDBKv0Vhn58hG9TJOoVdC+Zn?=
 =?us-ascii?Q?PhbIanemCj2TOUoAXSm3CjvUtphZjvZlYVlVbYk/tq7LzYHO/T8Ipip2w4or?=
 =?us-ascii?Q?/wTteMjuIKDJQ79T7ibJb/OMijErN6qzvulRLvruz/WCV5LD6Qu/+50VN0m6?=
 =?us-ascii?Q?aEybundkLcFKPuAuOgikTdr8O1+GboG950lwCCRvrMIOUoSLwXbwdazUbBjC?=
 =?us-ascii?Q?6ZAgSqFmjW3YEeKOvIcMc9Srp8EgjyjujHnudpSEXQSFsX6TZeT9O+SO2X0R?=
 =?us-ascii?Q?FM544jR0sEsc0JcSlaCXeR/yfrXG1MCYEphk//+xOPB5JNB6LfvrvPtZLQHt?=
 =?us-ascii?Q?eV29AfY9pO/zOd/+ez6K0KuuiDAyTkBRA6xbtwH06EQh7NqgVcSt4TeSMc1f?=
 =?us-ascii?Q?RpW/+CJwPJByiSDx/66qqBsxe8UyzrYYl28mbWewpezXkb2dY6LqBo8gPM48?=
 =?us-ascii?Q?j16Od4iY5FFI/MRcRZLdIdJwP3z+AdoO4DuRNq7Mjjzpt7m1g9Pv2q7AlRhq?=
 =?us-ascii?Q?skrHizGNEEHx91uiwZMMh6cX0jV1EfA0DImKJpOgmujW5igYeE1bAFto0eFc?=
 =?us-ascii?Q?pLTIpeKKi4QOwSjjvFQBKHGVmHzjRbF0slYEvOHcZdugvMnDWnLOnn232jCz?=
 =?us-ascii?Q?+y3jxBql8rAPLFTntRwXiPwsh1zrMdtYCFHwyuYk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 505fa666-5270-4747-e7e8-08db1ed77f10
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2023 06:45:10.1517 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YRFLgRrVxTgctMB4WcWi7YX7405OIpnWWrauH95g1HzHoQ8d/T/GfvpYCWHsTxV6K5Rkghdaui+ElWRCCGAt1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7115
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v10 6/6] drm/i915/mtl: Add HDCP GSC interface
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
Cc: "Winkler, Tomas" <tomas.winkler@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Shankar, Uma
> Sent: Monday, March 6, 2023 6:05 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Winkler, Tomas
> <tomas.winkler@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>; Gupta,
> Anshuman <Anshuman.Gupta@intel.com>
> Subject: RE: [PATCH v10 6/6] drm/i915/mtl: Add HDCP GSC interface
>=20
>=20
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Wednesday, February 1, 2023 2:38 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> > <suraj.kandpal@intel.com>; Winkler, Tomas <tomas.winkler@intel.com>;
> > Vivi, Rodrigo <rodrigo.vivi@intel.com>; Shankar, Uma
> > <uma.shankar@intel.com>; Gupta, Anshuman <anshuman.gupta@intel.com>
> > Subject: [PATCH v10 6/6] drm/i915/mtl: Add HDCP GSC interface
> >
> > MTL uses GSC command streamer i.e gsc cs to send HDCP/PXP commands to
> > GSC f/w. It requires to keep hdcp display driver agnostic to content
> > protection f/w (ME/GSC fw) in the form of i915_hdcp_fw_ops generic ops.
> >
> > Adding HDCP GSC CS interface by leveraging the i915_hdcp_fw_ops
> > generic ops instead of I915_HDCP_COMPONENT as integral part of i915.
> >
> > Adding checks to see if GSC is loaded and proxy is setup
> >
> > --v6
> > -dont change the license date in same patch series [Jani] -fix the
> > license year {Jani]
> >
> > --v8
> > -remove stale comment [Ankit]
> > -get headers in alphabetical order [Ankit] -fix hdcp2_supported check
> > [Ankit]
> >
> > --v9
> > -remove return statement from hdcp_gsc_fini [Ankit]
>=20
> Looks Good to me.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>=20
> > Cc: Tomas Winkler <tomas.winkler@intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c     |  28 +-
> >  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 637 +++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |   3 +
> >  3 files changed, 660 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 0d6aed1eb171..61bb2bbd0349 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -23,6 +23,7 @@
> >  #include "intel_display_power_well.h"
> >  #include "intel_display_types.h"
> >  #include "intel_hdcp.h"
> > +#include "intel_hdcp_gsc.h"
> >  #include "intel_hdcp_regs.h"
> >  #include "intel_pcode.h"
> >
> > @@ -203,13 +204,20 @@ bool intel_hdcp2_capable(struct intel_connector
> > *connector)
> >  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(conne=
ctor);
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> >  	struct intel_hdcp *hdcp =3D &connector->hdcp;
> > +	struct intel_gt *gt =3D dev_priv->media_gt;
> > +	struct intel_gsc_uc *gsc =3D &gt->uc.gsc;
> >  	bool capable =3D false;
> >
> >  	/* I915 support for HDCP2.2 */
> >  	if (!hdcp->hdcp2_supported)
> >  		return false;
> >
> > -	/* MEI interface is solid */
> > +	/* If MTL+ make sure gsc is loaded and proxy is setup */
> > +	if (intel_hdcp_gsc_cs_required(dev_priv))
> > +		if (!intel_uc_fw_is_running(&gsc->fw))
> > +			return false;
> > +
> > +	/* MEI/GSC interface is solid depending on which is used */
> >  	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> >  	if (!dev_priv->display.hdcp.comp_added ||
> > !dev_priv->display.hdcp.master) {
> >  		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> > @@ -2235,6 +2243,9 @@ static int initialize_hdcp_port_data(struct
> > intel_connector *connector,
> >
> >  static bool is_hdcp2_supported(struct drm_i915_private *dev_priv)  {
> > +	if (intel_hdcp_gsc_cs_required(dev_priv))
> > +		return true;
> > +
> >  	if (!IS_ENABLED(CONFIG_INTEL_MEI_HDCP))
> >  		return false;
> >
> > @@ -2256,10 +2267,14 @@ void intel_hdcp_component_init(struct
> > drm_i915_private *dev_priv)
> >
> >  	dev_priv->display.hdcp.comp_added =3D true;
> >  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> > -	ret =3D component_add_typed(dev_priv->drm.dev, &i915_hdcp_ops,
> > -				  I915_COMPONENT_HDCP);
> > +	if (intel_hdcp_gsc_cs_required(dev_priv))
> > +		ret =3D intel_hdcp_gsc_init(dev_priv);
> > +	else
> > +		ret =3D component_add_typed(dev_priv->drm.dev, &i915_hdcp_ops,
> > +					  I915_COMPONENT_HDCP);
> > +
> >  	if (ret < 0) {
> > -		drm_dbg_kms(&dev_priv->drm, "Failed at component add(%d)\n",
> > +		drm_dbg_kms(&dev_priv->drm, "Failed at fw component
> > add(%d)\n",
> >  			    ret);
> >  		mutex_lock(&dev_priv->display.hdcp.comp_mutex);
> >  		dev_priv->display.hdcp.comp_added =3D false; @@ -2486,7 +2501,10
> @@
> > void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
> >  	dev_priv->display.hdcp.comp_added =3D false;
> >  	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> >
> > -	component_del(dev_priv->drm.dev, &i915_hdcp_ops);
> > +	if (intel_hdcp_gsc_cs_required(dev_priv))
> > +		intel_hdcp_gsc_fini(dev_priv);
> > +	else
> > +		component_del(dev_priv->drm.dev, &i915_hdcp_ops);
> >  }
> >
> >  void intel_hdcp_cleanup(struct intel_connector *connector) diff --git
> > a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > index 8e3b5e6733d7..7eb1eeeb5a51 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > @@ -3,12 +3,617 @@
> >   * Copyright 2023, Intel Corporation.
> >   */
> >
> > +#include <drm/i915_hdcp_interface.h>
> > +
> >  #include "display/intel_hdcp_gsc.h"
> >  #include "gem/i915_gem_region.h"
> >  #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
> >  #include "i915_drv.h"
> >  #include "i915_utils.h"
> >
> > +bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915) {
> > +	return DISPLAY_VER(i915) >=3D 14;
> > +}
> > +
> > +static int
> > +gsc_hdcp_initiate_session(struct device *dev, struct hdcp_port_data *d=
ata,
> > +			  struct hdcp2_ake_init *ake_data) {


One more input, can we make the data packet creation in a common file since=
 it
is defined by protocol and should be same both for mei or gsc.

mei and GSC specific stuff like headers and actual command to send can be s=
eparated
by respective interface but protocol part can be kept common.

Regards,
Uma Shankar

> > +	struct wired_cmd_initiate_hdcp2_session_in session_init_in =3D { { 0 =
} };
> > +	struct wired_cmd_initiate_hdcp2_session_out
> > +						session_init_out =3D { { 0 } };
> > +	struct drm_i915_private *i915;
> > +	ssize_t byte;
> > +
> > +	if (!dev || !data || !ake_data)
> > +		return -EINVAL;
> > +
> > +	i915 =3D kdev_to_i915(dev);
> > +	if (!i915) {
> > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	session_init_in.header.api_version =3D HDCP_API_VERSION;
> > +	session_init_in.header.command_id =3D WIRED_INITIATE_HDCP2_SESSION;
> > +	session_init_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	session_init_in.header.buffer_len =3D
> > +
> > 	WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
> > +
> > +	session_init_in.port.integrated_port_type =3D data->port_type;
> > +	session_init_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > +	session_init_in.port.attached_transcoder =3D (u8)data->hdcp_transcode=
r;
> > +	session_init_in.protocol =3D data->protocol;
> > +
> > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&session_init_in,
> > +				       sizeof(session_init_in),
> > +				       (u8 *)&session_init_out,
> > +				       sizeof(session_init_out));
> > +	if (byte < 0) {
> > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed.
> > %zd\n", byte);
> > +		return byte;
> > +	}
> > +
> > +	if (session_init_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status:
> > 0x%X\n",
> > +			    WIRED_INITIATE_HDCP2_SESSION,
> > +			    session_init_out.header.status);
> > +		return -EIO;
> > +	}
> > +
> > +	ake_data->msg_id =3D HDCP_2_2_AKE_INIT;
> > +	ake_data->tx_caps =3D session_init_out.tx_caps;
> > +	memcpy(ake_data->r_tx, session_init_out.r_tx, HDCP_2_2_RTX_LEN);
> > +
> > +	return 0;
> > +}
> > +
> > +static int
> > +gsc_hdcp_verify_receiver_cert_prepare_km(struct device *dev,
> > +					 struct hdcp_port_data *data,
> > +					 struct hdcp2_ake_send_cert *rx_cert,
> > +					 bool *km_stored,
> > +					 struct hdcp2_ake_no_stored_km
> > +								*ek_pub_km,
> > +					 size_t *msg_sz)
> > +{
> > +	struct wired_cmd_verify_receiver_cert_in verify_rxcert_in =3D { { 0 }=
 };
> > +	struct wired_cmd_verify_receiver_cert_out verify_rxcert_out =3D { { 0=
 } };
> > +	struct drm_i915_private *i915;
> > +	ssize_t byte;
> > +
> > +	if (!dev || !data || !rx_cert || !km_stored || !ek_pub_km || !msg_sz)
> > +		return -EINVAL;
> > +
> > +	i915 =3D kdev_to_i915(dev);
> > +	if (!i915) {
> > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	verify_rxcert_in.header.api_version =3D HDCP_API_VERSION;
> > +	verify_rxcert_in.header.command_id =3D WIRED_VERIFY_RECEIVER_CERT;
> > +	verify_rxcert_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	verify_rxcert_in.header.buffer_len =3D
> > +
> > 	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
> > +
> > +	verify_rxcert_in.port.integrated_port_type =3D data->port_type;
> > +	verify_rxcert_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > +	verify_rxcert_in.port.attached_transcoder =3D
> > +(u8)data->hdcp_transcoder;
> > +
> > +	verify_rxcert_in.cert_rx =3D rx_cert->cert_rx;
> > +	memcpy(verify_rxcert_in.r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
> > +	memcpy(verify_rxcert_in.rx_caps, rx_cert->rx_caps,
> > +HDCP_2_2_RXCAPS_LEN);
> > +
> > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_rxcert_in,
> > +				       sizeof(verify_rxcert_in),
> > +				       (u8 *)&verify_rxcert_out,
> > +				       sizeof(verify_rxcert_out));
> > +	if (byte < 0) {
> > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed:
> > %zd\n", byte);
> > +		return byte;
> > +	}
> > +
> > +	if (verify_rxcert_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status:
> > 0x%X\n",
> > +			    WIRED_VERIFY_RECEIVER_CERT,
> > +			    verify_rxcert_out.header.status);
> > +		return -EIO;
> > +	}
> > +
> > +	*km_stored =3D !!verify_rxcert_out.km_stored;
> > +	if (verify_rxcert_out.km_stored) {
> > +		ek_pub_km->msg_id =3D HDCP_2_2_AKE_STORED_KM;
> > +		*msg_sz =3D sizeof(struct hdcp2_ake_stored_km);
> > +	} else {
> > +		ek_pub_km->msg_id =3D HDCP_2_2_AKE_NO_STORED_KM;
> > +		*msg_sz =3D sizeof(struct hdcp2_ake_no_stored_km);
> > +	}
> > +
> > +	memcpy(ek_pub_km->e_kpub_km, &verify_rxcert_out.ekm_buff,
> > +	       sizeof(verify_rxcert_out.ekm_buff));
> > +
> > +	return 0;
> > +}
> > +
> > +static int
> > +gsc_hdcp_verify_hprime(struct device *dev, struct hdcp_port_data *data=
,
> > +		       struct hdcp2_ake_send_hprime *rx_hprime) {
> > +	struct wired_cmd_ake_send_hprime_in send_hprime_in =3D { { 0 } };
> > +	struct wired_cmd_ake_send_hprime_out send_hprime_out =3D { { 0 } };
> > +	struct drm_i915_private *i915;
> > +	ssize_t byte;
> > +
> > +	if (!dev || !data || !rx_hprime)
> > +		return -EINVAL;
> > +
> > +	i915 =3D kdev_to_i915(dev);
> > +	if (!i915) {
> > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	send_hprime_in.header.api_version =3D HDCP_API_VERSION;
> > +	send_hprime_in.header.command_id =3D WIRED_AKE_SEND_HPRIME;
> > +	send_hprime_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	send_hprime_in.header.buffer_len =3D
> > +WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
> > +
> > +	send_hprime_in.port.integrated_port_type =3D data->port_type;
> > +	send_hprime_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > +	send_hprime_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder=
;
> > +
> > +	memcpy(send_hprime_in.h_prime, rx_hprime->h_prime,
> > +	       HDCP_2_2_H_PRIME_LEN);
> > +
> > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&send_hprime_in,
> > +				       sizeof(send_hprime_in),
> > +				       (u8 *)&send_hprime_out,
> > +				       sizeof(send_hprime_out));
> > +	if (byte < 0) {
> > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed.
> > %zd\n", byte);
> > +		return byte;
> > +	}
> > +
> > +	if (send_hprime_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status:
> > 0x%X\n",
> > +			    WIRED_AKE_SEND_HPRIME,
> > send_hprime_out.header.status);
> > +		return -EIO;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int
> > +gsc_hdcp_store_pairing_info(struct device *dev, struct hdcp_port_data =
*data,
> > +			    struct hdcp2_ake_send_pairing_info *pairing_info) {
> > +	struct wired_cmd_ake_send_pairing_info_in pairing_info_in =3D { { 0 }=
 };
> > +	struct wired_cmd_ake_send_pairing_info_out pairing_info_out =3D { { 0=
 } };
> > +	struct drm_i915_private *i915;
> > +	ssize_t byte;
> > +
> > +	if (!dev || !data || !pairing_info)
> > +		return -EINVAL;
> > +
> > +	i915 =3D kdev_to_i915(dev);
> > +	if (!i915) {
> > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	pairing_info_in.header.api_version =3D HDCP_API_VERSION;
> > +	pairing_info_in.header.command_id =3D WIRED_AKE_SEND_PAIRING_INFO;
> > +	pairing_info_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	pairing_info_in.header.buffer_len =3D
> > +
> > 	WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
> > +
> > +	pairing_info_in.port.integrated_port_type =3D data->port_type;
> > +	pairing_info_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > +	pairing_info_in.port.attached_transcoder =3D
> > +(u8)data->hdcp_transcoder;
> > +
> > +	memcpy(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
> > +	       HDCP_2_2_E_KH_KM_LEN);
> > +
> > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&pairing_info_in,
> > +				       sizeof(pairing_info_in),
> > +				       (u8 *)&pairing_info_out,
> > +				       sizeof(pairing_info_out));
> > +	if (byte < 0) {
> > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed.
> > %zd\n", byte);
> > +		return byte;
> > +	}
> > +
> > +	if (pairing_info_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. Status:
> > 0x%X\n",
> > +			    WIRED_AKE_SEND_PAIRING_INFO,
> > +			    pairing_info_out.header.status);
> > +		return -EIO;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int
> > +gsc_hdcp_initiate_locality_check(struct device *dev,
> > +				 struct hdcp_port_data *data,
> > +				 struct hdcp2_lc_init *lc_init_data) {
> > +	struct wired_cmd_init_locality_check_in lc_init_in =3D { { 0 } };
> > +	struct wired_cmd_init_locality_check_out lc_init_out =3D { { 0 } };
> > +	struct drm_i915_private *i915;
> > +	ssize_t byte;
> > +
> > +	if (!dev || !data || !lc_init_data)
> > +		return -EINVAL;
> > +
> > +	i915 =3D kdev_to_i915(dev);
> > +	if (!i915) {
> > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	lc_init_in.header.api_version =3D HDCP_API_VERSION;
> > +	lc_init_in.header.command_id =3D WIRED_INIT_LOCALITY_CHECK;
> > +	lc_init_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	lc_init_in.header.buffer_len =3D
> > +WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
> > +
> > +	lc_init_in.port.integrated_port_type =3D data->port_type;
> > +	lc_init_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > +	lc_init_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
> > +
> > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&lc_init_in, sizeof(lc_i=
nit_in),
> > +				       (u8 *)&lc_init_out, sizeof(lc_init_out));
> > +	if (byte < 0) {
> > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed.
> > %zd\n", byte);
> > +		return byte;
> > +	}
> > +
> > +	if (lc_init_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. status:
> > 0x%X\n",
> > +			    WIRED_INIT_LOCALITY_CHECK,
> > lc_init_out.header.status);
> > +		return -EIO;
> > +	}
> > +
> > +	lc_init_data->msg_id =3D HDCP_2_2_LC_INIT;
> > +	memcpy(lc_init_data->r_n, lc_init_out.r_n, HDCP_2_2_RN_LEN);
> > +
> > +	return 0;
> > +}
> > +
> > +static int
> > +gsc_hdcp_verify_lprime(struct device *dev, struct hdcp_port_data *data=
,
> > +		       struct hdcp2_lc_send_lprime *rx_lprime) {
> > +	struct wired_cmd_validate_locality_in verify_lprime_in =3D { { 0 } };
> > +	struct wired_cmd_validate_locality_out verify_lprime_out =3D { { 0 } =
};
> > +	struct drm_i915_private *i915;
> > +	ssize_t byte;
> > +
> > +	if (!dev || !data || !rx_lprime)
> > +		return -EINVAL;
> > +
> > +	i915 =3D kdev_to_i915(dev);
> > +	if (!i915) {
> > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	verify_lprime_in.header.api_version =3D HDCP_API_VERSION;
> > +	verify_lprime_in.header.command_id =3D WIRED_VALIDATE_LOCALITY;
> > +	verify_lprime_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	verify_lprime_in.header.buffer_len =3D
> > +
> > 	WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
> > +
> > +	verify_lprime_in.port.integrated_port_type =3D data->port_type;
> > +	verify_lprime_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > +	verify_lprime_in.port.attached_transcoder =3D
> > +(u8)data->hdcp_transcoder;
> > +
> > +	memcpy(verify_lprime_in.l_prime, rx_lprime->l_prime,
> > +	       HDCP_2_2_L_PRIME_LEN);
> > +
> > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_lprime_in,
> > +				       sizeof(verify_lprime_in),
> > +				       (u8 *)&verify_lprime_out,
> > +				       sizeof(verify_lprime_out));
> > +	if (byte < 0) {
> > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed.
> > %zd\n", byte);
> > +		return byte;
> > +	}
> > +
> > +	if (verify_lprime_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status:
> > 0x%X\n",
> > +			    WIRED_VALIDATE_LOCALITY,
> > +			    verify_lprime_out.header.status);
> > +		return -EIO;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int gsc_hdcp_get_session_key(struct device *dev,
> > +				    struct hdcp_port_data *data,
> > +				    struct hdcp2_ske_send_eks *ske_data) {
> > +	struct wired_cmd_get_session_key_in get_skey_in =3D { { 0 } };
> > +	struct wired_cmd_get_session_key_out get_skey_out =3D { { 0 } };
> > +	struct drm_i915_private *i915;
> > +	ssize_t byte;
> > +
> > +	if (!dev || !data || !ske_data)
> > +		return -EINVAL;
> > +
> > +	i915 =3D kdev_to_i915(dev);
> > +	if (!i915) {
> > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	get_skey_in.header.api_version =3D HDCP_API_VERSION;
> > +	get_skey_in.header.command_id =3D WIRED_GET_SESSION_KEY;
> > +	get_skey_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	get_skey_in.header.buffer_len =3D
> > WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
> > +
> > +	get_skey_in.port.integrated_port_type =3D data->port_type;
> > +	get_skey_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > +	get_skey_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder;
> > +
> > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&get_skey_in,
> > sizeof(get_skey_in),
> > +				       (u8 *)&get_skey_out, sizeof(get_skey_out));
> > +	if (byte < 0) {
> > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed.
> > %zd\n", byte);
> > +		return byte;
> > +	}
> > +
> > +	if (get_skey_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status:
> > 0x%X\n",
> > +			    WIRED_GET_SESSION_KEY, get_skey_out.header.status);
> > +		return -EIO;
> > +	}
> > +
> > +	ske_data->msg_id =3D HDCP_2_2_SKE_SEND_EKS;
> > +	memcpy(ske_data->e_dkey_ks, get_skey_out.e_dkey_ks,
> > +	       HDCP_2_2_E_DKEY_KS_LEN);
> > +	memcpy(ske_data->riv, get_skey_out.r_iv, HDCP_2_2_RIV_LEN);
> > +
> > +	return 0;
> > +}
> > +
> > +static int
> > +gsc_hdcp_repeater_check_flow_prepare_ack(struct device *dev,
> > +					 struct hdcp_port_data *data,
> > +					 struct hdcp2_rep_send_receiverid_list
> > +							*rep_topology,
> > +					 struct hdcp2_rep_send_ack
> > +							*rep_send_ack)
> > +{
> > +	struct wired_cmd_verify_repeater_in verify_repeater_in =3D { { 0 } };
> > +	struct wired_cmd_verify_repeater_out verify_repeater_out =3D { { 0 } =
};
> > +	struct drm_i915_private *i915;
> > +	ssize_t byte;
> > +
> > +	if (!dev || !rep_topology || !rep_send_ack || !data)
> > +		return -EINVAL;
> > +
> > +	i915 =3D kdev_to_i915(dev);
> > +	if (!i915) {
> > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	verify_repeater_in.header.api_version =3D HDCP_API_VERSION;
> > +	verify_repeater_in.header.command_id =3D WIRED_VERIFY_REPEATER;
> > +	verify_repeater_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	verify_repeater_in.header.buffer_len =3D
> > +
> > 	WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
> > +
> > +	verify_repeater_in.port.integrated_port_type =3D data->port_type;
> > +	verify_repeater_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > +	verify_repeater_in.port.attached_transcoder =3D
> > +(u8)data->hdcp_transcoder;
> > +
> > +	memcpy(verify_repeater_in.rx_info, rep_topology->rx_info,
> > +	       HDCP_2_2_RXINFO_LEN);
> > +	memcpy(verify_repeater_in.seq_num_v, rep_topology->seq_num_v,
> > +	       HDCP_2_2_SEQ_NUM_LEN);
> > +	memcpy(verify_repeater_in.v_prime, rep_topology->v_prime,
> > +	       HDCP_2_2_V_PRIME_HALF_LEN);
> > +	memcpy(verify_repeater_in.receiver_ids, rep_topology->receiver_ids,
> > +	       HDCP_2_2_RECEIVER_IDS_MAX_LEN);
> > +
> > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_repeater_in,
> > +				       sizeof(verify_repeater_in),
> > +				       (u8 *)&verify_repeater_out,
> > +				       sizeof(verify_repeater_out));
> > +	if (byte < 0) {
> > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed.
> > %zd\n", byte);
> > +		return byte;
> > +	}
> > +
> > +	if (verify_repeater_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status:
> > 0x%X\n",
> > +			    WIRED_VERIFY_REPEATER,
> > +			    verify_repeater_out.header.status);
> > +		return -EIO;
> > +	}
> > +
> > +	memcpy(rep_send_ack->v, verify_repeater_out.v,
> > +	       HDCP_2_2_V_PRIME_HALF_LEN);
> > +	rep_send_ack->msg_id =3D HDCP_2_2_REP_SEND_ACK;
> > +
> > +	return 0;
> > +}
> > +
> > +static int gsc_hdcp_verify_mprime(struct device *dev,
> > +				  struct hdcp_port_data *data,
> > +				  struct hdcp2_rep_stream_ready *stream_ready) {
> > +	struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in;
> > +	struct wired_cmd_repeater_auth_stream_req_out
> > +					verify_mprime_out =3D { { 0 } };
> > +	struct drm_i915_private *i915;
> > +	ssize_t byte;
> > +	size_t cmd_size;
> > +
> > +	if (!dev || !stream_ready || !data)
> > +		return -EINVAL;
> > +
> > +	i915 =3D kdev_to_i915(dev);
> > +	if (!i915) {
> > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	cmd_size =3D struct_size(verify_mprime_in, streams, data->k);
> > +	if (cmd_size =3D=3D SIZE_MAX)
> > +		return -EINVAL;
> > +
> > +	verify_mprime_in =3D kzalloc(cmd_size, GFP_KERNEL);
> > +	if (!verify_mprime_in)
> > +		return -ENOMEM;
> > +
> > +	verify_mprime_in->header.api_version =3D HDCP_API_VERSION;
> > +	verify_mprime_in->header.command_id =3D
> > WIRED_REPEATER_AUTH_STREAM_REQ;
> > +	verify_mprime_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	verify_mprime_in->header.buffer_len =3D cmd_size  -
> > +sizeof(verify_mprime_in->header);
> > +
> > +	verify_mprime_in->port.integrated_port_type =3D data->port_type;
> > +	verify_mprime_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > +	verify_mprime_in->port.attached_transcoder =3D
> > +(u8)data->hdcp_transcoder;
> > +
> > +	memcpy(verify_mprime_in->m_prime, stream_ready->m_prime,
> > HDCP_2_2_MPRIME_LEN);
> > +	drm_hdcp_cpu_to_be24(verify_mprime_in->seq_num_m, data-
> > >seq_num_m);
> > +
> > +	memcpy(verify_mprime_in->streams, data->streams,
> > +	       array_size(data->k, sizeof(*data->streams)));
> > +
> > +	verify_mprime_in->k =3D cpu_to_be16(data->k);
> > +
> > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)verify_mprime_in, cmd_si=
ze,
> > +				       (u8 *)&verify_mprime_out,
> > +				       sizeof(verify_mprime_out));
> > +	kfree(verify_mprime_in);
> > +	if (byte < 0) {
> > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed.
> > %zd\n", byte);
> > +		return byte;
> > +	}
> > +
> > +	if (verify_mprime_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status:
> > 0x%X\n",
> > +			    WIRED_REPEATER_AUTH_STREAM_REQ,
> > +			    verify_mprime_out.header.status);
> > +		return -EIO;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int gsc_hdcp_enable_authentication(struct device *dev,
> > +					  struct hdcp_port_data *data)
> > +{
> > +	struct wired_cmd_enable_auth_in enable_auth_in =3D { { 0 } };
> > +	struct wired_cmd_enable_auth_out enable_auth_out =3D { { 0 } };
> > +	struct drm_i915_private *i915;
> > +	ssize_t byte;
> > +
> > +	if (!dev || !data)
> > +		return -EINVAL;
> > +
> > +	i915 =3D kdev_to_i915(dev);
> > +	if (!i915) {
> > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	enable_auth_in.header.api_version =3D HDCP_API_VERSION;
> > +	enable_auth_in.header.command_id =3D WIRED_ENABLE_AUTH;
> > +	enable_auth_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	enable_auth_in.header.buffer_len =3D
> > WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
> > +
> > +	enable_auth_in.port.integrated_port_type =3D data->port_type;
> > +	enable_auth_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > +	enable_auth_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder=
;
> > +	enable_auth_in.stream_type =3D data->streams[0].stream_type;
> > +
> > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&enable_auth_in,
> > +				       sizeof(enable_auth_in),
> > +				       (u8 *)&enable_auth_out,
> > +				       sizeof(enable_auth_out));
> > +	if (byte < 0) {
> > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed.
> > %zd\n", byte);
> > +		return byte;
> > +	}
> > +
> > +	if (enable_auth_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status:
> > 0x%X\n",
> > +			    WIRED_ENABLE_AUTH, enable_auth_out.header.status);
> > +		return -EIO;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int
> > +gsc_hdcp_close_session(struct device *dev, struct hdcp_port_data
> > +*data) {
> > +	struct wired_cmd_close_session_in session_close_in =3D { { 0 } };
> > +	struct wired_cmd_close_session_out session_close_out =3D { { 0 } };
> > +	struct drm_i915_private *i915;
> > +	ssize_t byte;
> > +
> > +	if (!dev || !data)
> > +		return -EINVAL;
> > +
> > +	i915 =3D kdev_to_i915(dev);
> > +	if (!i915) {
> > +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	session_close_in.header.api_version =3D HDCP_API_VERSION;
> > +	session_close_in.header.command_id =3D WIRED_CLOSE_SESSION;
> > +	session_close_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	session_close_in.header.buffer_len =3D
> > +				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
> > +
> > +	session_close_in.port.integrated_port_type =3D data->port_type;
> > +	session_close_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > +	session_close_in.port.attached_transcoder =3D
> > +(u8)data->hdcp_transcoder;
> > +
> > +	byte =3D intel_hdcp_gsc_msg_send(i915, (u8 *)&session_close_in,
> > +				       sizeof(session_close_in),
> > +				       (u8 *)&session_close_out,
> > +				       sizeof(session_close_out));
> > +	if (byte < 0) {
> > +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed.
> > %zd\n", byte);
> > +		return byte;
> > +	}
> > +
> > +	if (session_close_out.header.status !=3D FW_HDCP_STATUS_SUCCESS) {
> > +		drm_dbg_kms(&i915->drm, "Session Close Failed. status: 0x%X\n",
> > +			    session_close_out.header.status);
> > +		return -EIO;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct i915_hdcp_ops gsc_hdcp_ops =3D {
> > +	.initiate_hdcp2_session =3D gsc_hdcp_initiate_session,
> > +	.verify_receiver_cert_prepare_km =3D
> > +				gsc_hdcp_verify_receiver_cert_prepare_km,
> > +	.verify_hprime =3D gsc_hdcp_verify_hprime,
> > +	.store_pairing_info =3D gsc_hdcp_store_pairing_info,
> > +	.initiate_locality_check =3D gsc_hdcp_initiate_locality_check,
> > +	.verify_lprime =3D gsc_hdcp_verify_lprime,
> > +	.get_session_key =3D gsc_hdcp_get_session_key,
> > +	.repeater_check_flow_prepare_ack =3D
> > +				gsc_hdcp_repeater_check_flow_prepare_ack,
> > +	.verify_mprime =3D gsc_hdcp_verify_mprime,
> > +	.enable_hdcp_authentication =3D gsc_hdcp_enable_authentication,
> > +	.close_hdcp_session =3D gsc_hdcp_close_session, };
> > +
> >  /*This function helps allocate memory for the command that we will
> > send to gsc cs */  static int intel_hdcp_gsc_initialize_message(struct
> drm_i915_private *i915,
> >  					     struct intel_hdcp_gsc_message
> > *hdcp_message) @@ -58,7 +663,7 @@ static int
> > intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
> >  	return err;
> >  }
> >
> > -int intel_hdcp_gsc_hdcp2_init(struct drm_i915_private *i915)
> > +static int intel_hdcp_gsc_hdcp2_init(struct drm_i915_private *i915)
> >  {
> >  	struct intel_hdcp_gsc_message *hdcp_message;
> >  	int ret;
> > @@ -80,7 +685,7 @@ int intel_hdcp_gsc_hdcp2_init(struct drm_i915_privat=
e
> *i915)
> >  	return ret;
> >  }
> >
> > -void intel_hdcp_gsc_free_message(struct drm_i915_private *i915)
> > +static void intel_hdcp_gsc_free_message(struct drm_i915_private
> > +*i915)
> >  {
> >  	struct intel_hdcp_gsc_message *hdcp_message =3D
> >  					i915->display.hdcp.hdcp_message; @@ -
> 89,6 +694,31 @@ void
> > intel_hdcp_gsc_free_message(struct drm_i915_private
> > *i915)
> >  	kfree(hdcp_message);
> >  }
> >
> > +int intel_hdcp_gsc_init(struct drm_i915_private *i915) {
> > +	struct i915_hdcp_master *data;
> > +	int ret;
> > +
> > +	data =3D kzalloc(sizeof(struct i915_hdcp_master), GFP_KERNEL);
> > +	if (!data)
> > +		return -ENOMEM;
> > +
> > +	mutex_lock(&i915->display.hdcp.comp_mutex);
> > +	i915->display.hdcp.master =3D data;
> > +	i915->display.hdcp.master->hdcp_dev =3D i915->drm.dev;
> > +	i915->display.hdcp.master->ops =3D &gsc_hdcp_ops;
> > +	ret =3D intel_hdcp_gsc_hdcp2_init(i915);
> > +	mutex_unlock(&i915->display.hdcp.comp_mutex);
> > +
> > +	return ret;
> > +}
> > +
> > +void intel_hdcp_gsc_fini(struct drm_i915_private *i915) {
> > +	intel_hdcp_gsc_free_message(i915);
> > +	kfree(i915->display.hdcp.master);
> > +}
> > +
> >  static int intel_gsc_send_sync(struct drm_i915_private *i915,
> >  			       struct intel_gsc_mtl_header *header, u64 addr,
> >  			       size_t msg_out_len)
> > @@ -133,7 +763,8 @@ static int intel_gsc_send_sync(struct
> > drm_i915_private *i915,
> >   * will follow
> >   */
> >  ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg=
_in,
> > -				size_t msg_in_len, u8 *msg_out, size_t
> > msg_out_len)
> > +				size_t msg_in_len, u8 *msg_out,
> > +				size_t msg_out_len)
> >  {
> >  	struct intel_gt *gt =3D i915->media_gt;
> >  	struct intel_gsc_mtl_header *header; diff --git
> > a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> > b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> > index 09ffd7ec02cd..5cc9fd2e88f6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> > @@ -16,8 +16,11 @@ struct intel_hdcp_gsc_message {
> >  	void *hdcp_cmd;
> >  };
> >
> > +bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915);
> >  ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg=
_in,
> >  				size_t msg_in_len, u8 *msg_out,
> >  				size_t msg_out_len);
> > +int intel_hdcp_gsc_init(struct drm_i915_private *i915); void
> > +intel_hdcp_gsc_fini(struct drm_i915_private *i915);
> >
> >  #endif /* __INTEL_HDCP_GCS_H__ */
> > --
> > 2.25.1

