Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5449064221F
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 04:58:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 919C010E0C5;
	Mon,  5 Dec 2022 03:58:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AEC410E0C5
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 03:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670212688; x=1701748688;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lYqzNZBkLgzNRszziyjuq5zuCCaLi0CkKCOmk0KJjqc=;
 b=C7beW/9OeqzyamPBM1G19zWJk6AoQNfHT7ly1fpfZWQRxasm1sHCyvjG
 Qd5Xc12upDu2uXSdDdHlEgrJAqic7aXFwrHic1AAhrzko3sZQKzZOfXNi
 MUBxUw1tKvODl52mJloLAhKkqc1NPTUjG+WMTasKtgDxyZIyiD/LR03Xb
 dzB13y2eOHxekQhnw1pTs8B2uEmSe/iepeXrBg1V5JCkqL5iqdmhyVXtR
 2mxrAvm87wypL1TwtN+c9tGeW0lBtc+LrVxDh0BtEjKQ9H3e+m3H9oxIR
 BeHEvxW42xXqDVNPAQ4QXcBsPGhHW5thrIJrRTyqDrrTXAnfc46IWmZrx Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="303874951"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="303874951"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2022 19:58:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="752020544"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="752020544"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 04 Dec 2022 19:58:07 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 4 Dec 2022 19:58:06 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 4 Dec 2022 19:58:06 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 4 Dec 2022 19:58:06 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 4 Dec 2022 19:58:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HsIhRDz6a8Nqyj0XEFsFetP0qIlUGTO8W6GUN/fnRz0/8UFA7tUdGtGx74eaE0tf6C8Ms3pB1tOl1CkJM16PY7/ohpZxTzelc97mcL8IIPr1KrfSXEKhpAd1EklJmfNrKTUr3f3LdXBPqkZB4WVl/WBhtqeIf/YFYBpDO8u4AMWsakq05i2uD9ANVuZlkio81PmysQDDl3gLz7zK+jYnlgErnmPeUdWafCrqM5bm/Q5KQyy8G3OkuY5NkPR9Ga5Sf346AJCh62P1lo608moWBuAa8PhO0HP4778wI1c6ScSn02wRd2FJwTH5sa58UpObASLDaEbNY/NVP+DUqmqFUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eS/XhsPw9moX6l4p83gq01i0o1u0jzwbboJ0nxYud2E=;
 b=SM35uVnqIoCXpHOR6UcBY58+YpTOlz/TlrVHKjiPieYRe83ySfG7SpVCnBUveRuzUldyyOsdrDCRjflFw8ljJ9VRAGdJRK8W47yj+5v3fXrGRbsysFVBOqg8/FGil9LlCuaQI/jEl8SuT2XvPSUrB0AoanjFAywLJzOqcNIM0FHi/KGWqgRUwgIKgnSgt8UeB0b9S6EeOOPAqSJCc7mVS3dQ3RtgZVbtskC+tfjefXnkhcI/NTekNrZHgUaDYOU1Wfs0QhN90lSJXI5foI6wzzuJlX4PjsQQpa6N+aUABG2dj4Nbl4plBNKzolNbwRB+pYkHcATn66K3AvZy5uONMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by DS0PR11MB6445.namprd11.prod.outlook.com (2603:10b6:8:c6::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Mon, 5 Dec
 2022 03:58:04 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae%8]) with mapi id 15.20.5880.013; Mon, 5 Dec 2022
 03:58:04 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Thread-Topic: [PATCH] drm/i915/hwmon: Silence "mailbox access failed" warning
 in snb_pcode_read
Thread-Index: AQHZBsV2ZgW7F9dgmk+JnuKXeyjHPq5b6EWwgAACblCAApzKAIAAI31g
Date: Mon, 5 Dec 2022 03:58:04 +0000
Message-ID: <CY5PR11MB62115AC3E1F74DACC677A19395189@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20221203031454.1280538-1-ashutosh.dixit@intel.com>
 <CY5PR11MB62116199075E689C273AD41E95169@CY5PR11MB6211.namprd11.prod.outlook.com>
 <CY5PR11MB6211C5036EF25186C61056D995169@CY5PR11MB6211.namprd11.prod.outlook.com>
 <87359u632b.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87359u632b.wl-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|DS0PR11MB6445:EE_
x-ms-office365-filtering-correlation-id: aeb0ba82-b220-4f63-10d6-08dad674e90c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D0r2gV8L9xoGLzZAskQzFbOwBD2eLabSZLH1O1Mhod5GZXTfUF43N+B53z8TLGwVhbzTvasy1Qcdz5Tkfqt/a/7plBuFA75YBQp1Sz2/D52QDYookjWfBlSxEEeBkBF28qQmRueLYULvRKDwF/JEuqeFoxXAuZQ3XaKyPL2yAukwE44EBy5s5quzHn3B+pZm5m6WefmS4Ah3Vs6kwCC8q9CUnkq/3OKYecA0hgP4yCEOpYEeYWjaYLOBWaq49K607MBv6fFDhUqxMFk+fqdGhBlykIIQbzoVEuIYmDKiXuulP9o0BK8UO4GMejHP/HF5hFEVU9u8I93DDjqikmfJzektWn/fcXoxBlY6axKNS3Xq1fQs98u0Vy+kO/AEQrmHLNapA2mSd+pu8sbtX0kHAKRnd3kWNOpNSbNy7+yWg1bPeuBRmuShq2E+K/Ap37yzbcyIK2TyjCqIlt2/PJXCMDiTyAcEOBkuApjOsxKH1JO119YBwbBNP9X/yzpXBVHQ+uUZo8JY/PYSbwJsTT0D24Pi41p/N9GTTmkSUOif5kecbbw/flzquQl/oKN2QjriGsZ60jXzwwd17ltxlVU4loManPnCBET2KltzQFZS/9psDk5QhrNFAEC+qd86OKWRUVWRPYAeJJTYKmDxQt4qn36OawLPqpEhhl/PbasjIUI56C7PejlkuqG5H6ZoMLXnluk2slK94wEesnXNjQGi0w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(39860400002)(346002)(376002)(366004)(451199015)(122000001)(83380400001)(33656002)(86362001)(38100700002)(82960400001)(38070700005)(15650500001)(2906002)(5660300002)(4326008)(41300700001)(8936002)(6862004)(52536014)(8676002)(55016003)(64756008)(55236004)(53546011)(9686003)(186003)(26005)(7696005)(6506007)(107886003)(316002)(54906003)(6636002)(76116006)(66946007)(66556008)(66476007)(66446008)(478600001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RzHrUOsJOSxBEouPwyFSgaCxJ2ORcFrVuhosLey59qlr3TRbuXCKUn5c5g+v?=
 =?us-ascii?Q?NPIKrfbr8fgETzKNYHRRDsW58VhB5NTxZqBhbKfScmpPrH1FlWcBDfCuacRv?=
 =?us-ascii?Q?VN/pDy+1vsl0wmK9p+Q48VpHjc57i282ppI2OUViqO/w3lJlGUSr/EYNzl/4?=
 =?us-ascii?Q?mnM0HBG4fTCqAZTcC/Xg97H4N+ntzSYxh0FnhiuD/9t/kPdFwIzw3ZyS4XBZ?=
 =?us-ascii?Q?s94gj9Eb7linlpy/8reewj1wMLCPYIcFjcWzL1J4IF3uGY/VVdux5zQo+gAM?=
 =?us-ascii?Q?fCv+R75Lm3ndrndLgffl1wCagOF9wZPratODI8YFDyquy3y4c2qr+PLHQ0bi?=
 =?us-ascii?Q?rOMaJrug2j+ZSUDz6QpMWw4nhEaN94/0VOeAhIim2TZ72UuSuVj8v30m6YYo?=
 =?us-ascii?Q?jboSdOAykAOo6DnoR2Vbr69Gax7edkO+WaABd8Yllb6Kk+I83qvS5mnzVxkM?=
 =?us-ascii?Q?msZtuY5R5DQB9fiLygv1UAVBn4cMeLIYoN+QakmkFYsOXQV5gGSEdWar9TaM?=
 =?us-ascii?Q?0aW1JiiFUv773S59cAX2y7ChHSSGuxqc3EIbNGnypoUF7s+S2jbmpP1t6z17?=
 =?us-ascii?Q?ZECLG6fVU4QLgbapNoyugztglDqasvLivFe4lu4O3gfcKO5wX9iE3rhLn0Us?=
 =?us-ascii?Q?zNBuR/DJAr2rKX8gHX0x5w7owNDLeUD9ljYUGx/HfR4oVDOjUo1YJiEYE7SN?=
 =?us-ascii?Q?jnAeR/n2XrTsT+kWnqzg6CIIBKs7dw+xrWf4awl6rKLoz5S1X2IKqu3ivnZ5?=
 =?us-ascii?Q?Ioc5DUIFBh/kLn0Jf1Dm/KJh6aKxQ4uGLinrnT25dPEK8mtdnU7OCsSmUZN/?=
 =?us-ascii?Q?kqKoPyCA/uX9z85bW+BFPH5osZsFCUNqXZq3j0KUshgmIY4XnfaLTuASRlyn?=
 =?us-ascii?Q?ey3gx6yxIf3pt53D5oUIj7iDtclKz+lR3h9FELhiHtkk5Ik5qmoHTrGZV9gZ?=
 =?us-ascii?Q?jTtILkwVyzABPRRLQI0dTBz9rfXN+NN5CcMTUuNCPP109O/hvun4hZ8FUvBa?=
 =?us-ascii?Q?4lMgI3DmYi+pzJPnm6SsRo0pXGFjLtMgJKTvKcoJoMrlk0zeOaAvvfP9mCsa?=
 =?us-ascii?Q?Vbp8OdLjuJiM3mAIedbwQ8ImKWI3hi58TZinlDj5SEd567Ofxsc69pFx1EuX?=
 =?us-ascii?Q?jXj3Yt6weEKF1R5caEpHaK2WCUYrkCFFEV1RYkXvevToZJG4xp4fro2AHoB8?=
 =?us-ascii?Q?jkT9UZFbdeOCu0mappnrdGZEHW33nM3yX/4e3dGkvT5Xk6pg/Dd+U3OtSthl?=
 =?us-ascii?Q?tV/Rm26hAQHQwhtTKELbuw1aMdOdZsJyIp8aOAo7XyVgggQd44l8vcV/RJj3?=
 =?us-ascii?Q?Yfnwhd8FElepmLu4DjJZcd4wSqn4BRGVGMch6y59C1FA4MHAGg4qLzA5I2PM?=
 =?us-ascii?Q?2z22167o9Uv5h/8x/IrRTgf5Y2XXUzn1EQSWHgWy90AINxMDEDS/2xDg1ioW?=
 =?us-ascii?Q?THO8vgXHV1Z39GNoCBOl1etT+K8cYd9wA5QN7cE9+5VP5af5oXUE3i4bf85f?=
 =?us-ascii?Q?CiXWqL5hWER+Sp5YZwqD8JBwTlK5imPxYIr0G1Dw3REvx4o8bYAcK/kLYhG0?=
 =?us-ascii?Q?T9dP0zfjsI7HoW+kIgrfx5mz1alQWapU8K/6lhaQ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aeb0ba82-b220-4f63-10d6-08dad674e90c
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2022 03:58:04.0623 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t38So2fHxWQd80Ys21u4oNM63HBkCdOgTClJC/Ma5Io8PemhwvNLoiUImpQf9HIlEj06jrNle6cAMZyH+8dvk/qbKsZ7ICCqMRYGxrPRic8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6445
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hwmon: Silence "mailbox access
 failed" warning in snb_pcode_read
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Dixit, Ashutosh <ashutosh.dixit@intel.com>
> Sent: Monday, December 5, 2022 7:10 AM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nilawar, Badal
> <badal.nilawar@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Subject: Re: [PATCH] drm/i915/hwmon: Silence "mailbox access failed"
> warning in snb_pcode_read
>=20
> On Sat, 03 Dec 2022 01:47:06 -0800, Gupta, Anshuman wrote:
> >
>=20
> Hi Anshuman,
>=20
> > > > hwm_pcode_read_i1 is called during i915 load. This results in the
> > > > following warning from snb_pcode_read because
> > > > POWER_SETUP_SUBCOMMAND_READ_I1 is unsupported on DG1/DG2.
> > > >
> > > > [drm:snb_pcode_read [i915]] warning: pcode (read from mbox 47c) \
> > > >				mailbox access failed for snb_pcode_read_p
> > > > [i915]: -6
> > > >
> > > > The code handles the unsupported command but the warning in dmesg
> > > > is a red herring which has resulted in a couple of bugs being filed=
.
> > > > Therefore silence the warning by avoiding calling snb_pcode_read_p
> > > > for > > DG1/DG2.
> > > >
> > > > Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/i915_hwmon.c | 4 ++++
> > > >  1 file changed, 4 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/i915_hwmon.c
> > > > b/drivers/gpu/drm/i915/i915_hwmon.c
> > > > index c588a17f97e98..cca7a4350ec8f 100644
> > > > --- a/drivers/gpu/drm/i915/i915_hwmon.c
> > > > +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> > > > @@ -293,6 +293,10 @@ static const struct hwmon_channel_info
> > > > *hwm_gt_info[] =3D {
> > > >  /* I1 is exposed as power_crit or as curr_crit depending on bit
> > > > 31 */ static int hwm_pcode_read_i1(struct drm_i915_private *i915,
> > > > u32 *uval) {
> > > > +	/* Avoid ILLEGAL_SUBCOMMAND "mailbox access failed" warning in
> > > > snb_pcode_read */
> > > > +	if (IS_DG1(i915) || IS_DG2(i915))
> > > > +		return -ENXIO;
> > >
> > > AFAIK it is specific to client specific parts,
>=20
> No this is not true, see c8939848f7e4 where it says I1 power is exposed a=
s
> power1_crit for client products and as curr1_crit for server. Also I know=
 this is
> available on future client products. So it appears only DG1 and DG2 were =
an
> exception because of lack of HW support, this will available in the futur=
e for
> client. Therefore the patch looks correct to me.
>=20
> > > how about declaring a is_client intel_runtime_info flag to
> > > distinguish between client and server part. That *intel_device_info*
> > > will also cover any future platform as well.
Thanks for explanation.
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
>=20
> Thanks.
> --
> Ashutosh
