Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 484D769DA29
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 05:41:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAD9A10E13F;
	Tue, 21 Feb 2023 04:41:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A87B210E13F
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 04:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676954463; x=1708490463;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1QnVMYEH1hp759bkz7a/os+R04bVdqekXZAkm74ayiI=;
 b=MozC8qDSfJ8m+yswpsqQNspp2/cQoO3Ux5aOI1yArmYIGyB8yusoaGnI
 utbTM2x93xbFSMx1p8YuG3BpMNem9CnTTgO48OG8L0fqXMx2ZF6O0K1qE
 /0mQDr7V5tsu0cCuGXAdDZxda2z/vUFdlzYCvlss0Wk5t/5QnFEG4d5er
 wxOVfqsSNTqc23iTqoHifXgjkAfIPBXoy5PLzwd4YxRnW6on1re+H+94y
 RJwVsV1m7xyBT8Xwwoy2MgNiCI6Qn7WbV2Ib8bJBfDfh690PBD2F2Zk+k
 tZ2bIJxqJkFtYlBSbBFubBe4o0vLEb6YuhRdyj4STTjLpRI1qjc9/44g1 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="334740530"
X-IronPort-AV: E=Sophos;i="5.97,314,1669104000"; d="scan'208";a="334740530"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 20:41:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="735333078"
X-IronPort-AV: E=Sophos;i="5.97,314,1669104000"; d="scan'208";a="735333078"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 20 Feb 2023 20:41:02 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 20 Feb 2023 20:41:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 20 Feb 2023 20:41:02 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 20 Feb 2023 20:41:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nigmMTSxttZ4mrJHU5SJqm75Ii9w/W06P6jRctgsihBwnyoLLP8gOeBmEdQD1eQd6ZTJLwvxNUfZVkt9IbZcJpI5KfUdZUR6DMd6GnPrb4xd04Z8FgYCWMB8djCx7iKrfaGA+Y1q5RIFPzpdQx4pJxYV0aWmddb85fcKHIdBnPuz4aZWKkl5pVzU0RpAcX0Zp/81jj8anKzQd421FyTWGWh7Bu81pRYrcwTXZu80QnHSoCRiB5fAUUrpEdtEcckvVHeqle1oCR4E8JeZKrULpkB8pMGWG89waPcPm8B4KSMmzrzISl8bKcQhTBsSy1gpCLCDvh6oa0mkwF4itta0xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8I6sIUlWIiCa2RrMUZeaoSocp++yLl8DhTTIPcx2A0I=;
 b=dTnlFPUhNJyA9MJuQvYnfFRAKs9qtIEOpUtRiGgG36AdSi2SiPY74v4lIi/LYu20JyqG1Yk7uOlmln+AKmK7WIzZb9yPu0QBOsIcpTKimjYE9RU0eSZFMl26AUrcwIWg6iFq76J2rLQ40KegWZ3/ToHAFyXlhecz0/5qpoxTrE16UTmRmrrHIJaquQusM8Ynd3zIkzntSq8W38jgTFSEeJ/hkEUntRRI2GtZwwSuMzwF/bDmu/5fzm53LRjV+GoayJf8k8WY5uoeVk2CbW1shRgPxyn6ZMyaN45VFU7dQWye1snyg5+iCW2gO2bxXqEjF3ELO1OG1j3jOyDNA+qEJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by PH8PR11MB6854.namprd11.prod.outlook.com (2603:10b6:510:22d::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.21; Tue, 21 Feb
 2023 04:40:53 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::469:cdec:dfa7:2c73]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::469:cdec:dfa7:2c73%7]) with mapi id 15.20.6111.020; Tue, 21 Feb 2023
 04:40:53 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v10 5/7] drm/i915: Fill in native_420 field
Thread-Index: AQHZQOwtNdMWiDGVskuQrt2YhnbZzK7YZVmAgABydeA=
Date: Tue, 21 Feb 2023 04:40:52 +0000
Message-ID: <MWHPR11MB174178DE6E35F637ABFD55BEE3A59@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20230207074416.3209722-6-suraj.kandpal@intel.com>
 <20230215031723.3447553-1-suraj.kandpal@intel.com>
 <DM4PR11MB6360FED44981B807442DA8FEF4A49@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360FED44981B807442DA8FEF4A49@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|PH8PR11MB6854:EE_
x-ms-office365-filtering-correlation-id: dfaf458f-242f-413d-cef8-08db13c5d05b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eE7lP3gxCGjInOQG3o44mRlRukdP9/mCFKrmyDQAzVroevKBz0GJ6Re5U7EjfMsiQ/2BybpFrl/EYV68a5V0JHnupvqkeC3FXfANSX00/JiLewzD0pIpkUZK7VMLrds/qox3II4OAGgGSDV6H+FXXz8XZusom46CGDWH4iO3FxVWaNLCUxwjua6HHBkLAiCcRlu9HEzN00Kzp/27QFa2rGCiG14OqcdPa6aSpe2TIeez4aWSBrLLoS8+uq2TVZDESs5uKhA9QEi/VkZkZHArbPKmnAAYSYtwrpK/ZuC/wUIfh1Vvn8eLWiJf820c3Pr1vIZTke66T/D9XEtBm+7M47xEa8oLOwE2gAKKsV+QyLRnCijSjtyJj4sXYHlz9h2c09b5dVzd8WRjQgoHbi8lRKSDj1s8csx//9kggWsQNNGMulK0wdyKpiunJHu+0K/4AgMagzOeI0hmzg1Co0cQ4Q6ItHS527v1nKXQa2+Di6oTDWK7bFRgJ8dFo6FCU+u+TD8t1otc3fsIy9nnRHxQXdEWitXsKMDZ8hR/7jV2dpU+39awQnLjG0Nz4roiwELE3tPYncwDMbsbRXqWx9jo/G1A6lnJzS8AghQw74oIPkT9LyB3RJzBPH3ei2XzFYwYTpLp2qh/erHhSAGOITNIaXYJYAVECgOCE1SVUpEVeu0CrOq9dBIrDPXcQKn8wyiE3lLZS6uOyf1YxOY1wTXkBA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(396003)(39860400002)(366004)(136003)(376002)(451199018)(33656002)(86362001)(38070700005)(41300700001)(52536014)(5660300002)(2906002)(8936002)(82960400001)(38100700002)(83380400001)(122000001)(478600001)(66946007)(66476007)(66446008)(8676002)(66556008)(76116006)(7696005)(110136005)(64756008)(71200400001)(186003)(26005)(9686003)(53546011)(55016003)(316002)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AplJalBdcVtNz/T3MAuq/ozS9/WhuHhox5lJ2+MsR1Reova2FYha7Mj4gqki?=
 =?us-ascii?Q?YARPzo4oe42nIJpAwfLunTd2PnTwRQ0Z9x1iiSWO/z60Me5p4pH1xVy0AFTj?=
 =?us-ascii?Q?NrAwN+mHe8CS8Hzdypqe2fA8mtziayYjSS9sZt/4Q4O80CWmaqUEwGqcSCr4?=
 =?us-ascii?Q?cexulZFfV4GxKsrRYmtdJ7cSWswy/Aze7kNyaaZjxZ04UY0Sscp4qYfzv+X0?=
 =?us-ascii?Q?qzJ/DZFCRIYnYPZb7IlYj3Fxb5idf+koBslb6rox5tHf6Nz6r7nSCyBd2KG0?=
 =?us-ascii?Q?nPt7Ua1qqb11Z1VcubtFaMvqWwJhXNPaqsM4OwTw1jmHcXDjwRmylT1TzIiB?=
 =?us-ascii?Q?xrE++npM1GWSypFryyCUJScW61/ZDDtSO5eLb9U4vp4l6d5+XATnoz1uqF4D?=
 =?us-ascii?Q?PTcFLKuTK8DBz4nq3RJl8NFI0Auo8rp2jiQdGyjmdr5KNPwhIUQWSM0bpXIs?=
 =?us-ascii?Q?BBEOVK919VmNVOS6cK8Bi70nv61CKQ3wkUww9x4sfOGtOB7wQ0nwkGx10GfW?=
 =?us-ascii?Q?p/gpg402HI1+mGYtx4f4eJs4cpAVKYUInDvxxrr8h2p2dk4Y98CkESd6uOYQ?=
 =?us-ascii?Q?+Bj4NaDUsRx94R4YQDC9XcLafMYRayAI/KmVYAWOCHk4O9JseHoc+DakazpB?=
 =?us-ascii?Q?Cgl6IxN3VupKFVkeXmZ/ASf/tgrKuWHHt+SQrRNjIhaWZaeg5+46dhQ4lOMf?=
 =?us-ascii?Q?VzHNeeQc0bjOGHikQBSPwfLhJpuPb1DFcpXT99AignSZrIzcFt8iBUP6NKqC?=
 =?us-ascii?Q?mHj/F383Iy1g8Rf4fCdfy4/iQ5asiQNCq6bW/xRuMqm7Bx84PQhYf9EhUOH0?=
 =?us-ascii?Q?eOJDME2cgYE13QA2cp90WupffRvsWFJA6dyYr0reE6rAhZuPfu7yUVubauyY?=
 =?us-ascii?Q?l3iG0czvXWDABPr0mb27gmwlfbWjtwQDcULF4Oaw3TCyBg8gzcuWVilVRHoQ?=
 =?us-ascii?Q?lFBlUg5xmSnM8AX+44GEhVk4PU1SzflWN50neSbvQaK74Bf3w29baf0ve0Ro?=
 =?us-ascii?Q?dJFiukL+QXuoW/GSD6psKcjFTchHHAb4VQhtws10V7DGuSop4mEHL7ybeqdD?=
 =?us-ascii?Q?0QnxsClXhOocXEim0EtHpJ9p+cgcBmAvwQR90CJAWLJe9dc0+zdQdCETrbuU?=
 =?us-ascii?Q?iHlPv20+QAruJ175tBHVxwc7pH4KtNc2tRYnbhegQ3EX9i/eVapu+hbwfcuU?=
 =?us-ascii?Q?ILcqpsJBulYTBI2e60t/ev0Q5dkz/Pam9D929TLAwZA7E882cLA4X5wUidbi?=
 =?us-ascii?Q?iPy/ajZsoTQ++ImQ+XGlGok9ltetlT2OymO/zt2zEIH6YFz8ojyM4Gy2NL1o?=
 =?us-ascii?Q?rogRkXEifuYbULBpLaLEUoAv1M7qUK0lXKVeru+59bdUhNeLE1hxQBSYrGBy?=
 =?us-ascii?Q?MMkJ65RCwVeA4X6ZLGoI/L1WYkMrnbIyD+yzQwih9cyk+FnvHBhYSKBCwD6E?=
 =?us-ascii?Q?2Hw6fNIshtB2X40tMFkFKKEipRAHDCAP9+Jl6nuY9s0Mvitd8VYKZrcwsGC5?=
 =?us-ascii?Q?eoVNv5hXbzoumGPm3trzTZW2tlGBaa7HY+DOHVoaj0Ft3vZbAh4o5IcFxm90?=
 =?us-ascii?Q?UL+rJVXjKklOLTWplQ7quJJlnliuBDQjXvOGKCIe?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfaf458f-242f-413d-cef8-08db13c5d05b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2023 04:40:52.8063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZfC29QN/IepZkvkAeYf0YORx3kovNr+Ka07BQY+PZruzcPVOFDFt+l0jBYtquvQ7ss0TeDfofJRUx4TW+fYfGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6854
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v10 5/7] drm/i915: Fill in native_420 field
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

>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Suraj Kandpal
> > Sent: Wednesday, February 15, 2023 8:47 AM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH v10 5/7] drm/i915: Fill in native_420
> > field
>=20
> Append "display"
>=20

drm/i915/display ?

> >
> > Now that we have laid the groundwork for YUV420 Enablement we fill up
> > native_420 field in vdsc_cfg and add appropriate checks wherever
> required.
> >
> > ---v2
> > -adding native_422 field as 0 [Vandita] -filling in
> > second_line_bpg_offset, second_line_offset_adj and nsl_bpg_offset in
> > vds_cfg when native_420 is true
> >
> > ---v3
> > -adding display version check to solve igt issue
> >
> > --v7
> > -remove is_pipe_dsc check as its always true for D14 [Jani]
> >
> > --v10
> > -keep sink capability check [Jani]
> > -move from !(x =3D=3D y  || w =3D=3D z) to x !=3Dy && w !=3D z [Jani]
> >
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 05e749861658..7065203460d3 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -1534,8 +1534,6 @@ static int gen11_dsi_dsc_compute_config(struct
> > intel_encoder *encoder,
> >  	if (crtc_state->dsc.slice_count > 1)
> >  		crtc_state->dsc.dsc_split =3D true;
> >
> > -	vdsc_cfg->convert_rgb =3D true;
> > -
> >  	/* FIXME: initialize from VBT */
> >  	vdsc_cfg->rc_model_size =3D DSC_RC_MODEL_SIZE_CONST;
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 1a397ab710dd..baa5af7d3bdc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1466,9 +1466,10 @@ static int intel_dp_dsc_compute_params(struct
> > intel_encoder *encoder,
> >  	vdsc_cfg->dsc_version_minor =3D
> >  		min(intel_dp_source_dsc_version_minor(intel_dp),
> >  		    intel_dp_sink_dsc_version_minor(intel_dp));
> > -
> > -	vdsc_cfg->convert_rgb =3D intel_dp-
> > >dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT] &
> > -		DP_DSC_RGB;
> > +	if (vdsc_cfg->convert_rgb)
> > +		vdsc_cfg->convert_rgb =3D
> > +			intel_dp-
> >dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP -
> > DP_DSC_SUPPORT] &
> > +			DP_DSC_RGB;
> >
> >  	line_buf_depth =3D drm_dp_dsc_sink_line_buf_depth(intel_dp-
> >dsc_dpcd);
> >  	if (!line_buf_depth) {
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index ed16f63d6355..19f9fb53f139 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -460,14 +460,47 @@ int intel_dsc_compute_params(struct
> > intel_crtc_state
> > *pipe_config)
> >  	vdsc_cfg->pic_width =3D pipe_config-
> >hw.adjusted_mode.crtc_hdisplay;
> >  	vdsc_cfg->slice_width =3D DIV_ROUND_UP(vdsc_cfg->pic_width,
> >  					     pipe_config->dsc.slice_count);
> > -
> > -	/* Gen 11 does not support YCbCr */
> > +	/*
> > +	 * According to DSC 1.2 specs if colorspace is YCbCr then convert_rgb
> is 0
> > +	 * else 1
> > +	 */
> > +	vdsc_cfg->convert_rgb =3D pipe_config->output_format !=3D
> > INTEL_OUTPUT_FORMAT_YCBCR420 &&
> > +				pipe_config->output_format !=3D
> > INTEL_OUTPUT_FORMAT_YCBCR444;
> > +
> > +	if (pipe_config->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420)
> > +		vdsc_cfg->native_420 =3D true;
> > +	/* We do not support YcBCr422 as of now */
> > +	vdsc_cfg->native_422 =3D false;
> > +	/* Gen 11 does not support YCbCr422 */
>=20
> This comment can be merged with the one above.
>=20

Can I remove "/* Gen 11 does not support YCbCr422 */ "
And just keep "/* We do not support YcBCr422 as of now */" or
Make it something like " Gen 11+ does not support YCbCr422 "

> >  	vdsc_cfg->simple_422 =3D false;
> >  	/* Gen 11 does not support VBR */
> >  	vdsc_cfg->vbr_enable =3D false;
> >
> >  	/* Gen 11 only supports integral values of bpp */
> >  	vdsc_cfg->bits_per_pixel =3D compressed_bpp << 4;
>=20
> Leave a line gap here
>=20
> > +	/*
> > +	 * According to DSC 1.2 specs if native_420 is set:
>=20
> It would be good to add the section name as well for ease of reference.
>=20
> > +	 * -We need to double the current bpp.
> > +	 * -second_line_bpg_offset is 12 in general and equal to
> > +2*(slice_height-1) if
> > slice
> > +	 * height < 8.
> > +	 * -second_line_offset_adj is 512 as shown by emperical values to
> > +yeild best
> > chroma
> > +	 * preservation in second line.
> > +	 * -nsl_bpg_offset is calculated as second_line_offset/slice_height
> > +-1 then
> > rounded
> > +	 * up to 16 fractional bits, we left shift second line offset by 11
> > +to preserve
> > 11
> > +	 * fractional bits.
> > +	 */
> > +	if (vdsc_cfg->native_420) {
> > +		vdsc_cfg->bits_per_pixel <<=3D 1;
>=20
> Leave a line gap here
>=20
> > +		if (vdsc_cfg->slice_height >=3D 8)
> > +			vdsc_cfg->second_line_bpg_offset =3D 12;
> > +		else
> > +			vdsc_cfg->second_line_bpg_offset =3D
> > +				2 * (vdsc_cfg->slice_height - 1);
>=20
> Here as well
>=20
> > +		vdsc_cfg->second_line_offset_adj =3D 512;
> > +		vdsc_cfg->nsl_bpg_offset =3D DIV_ROUND_UP(vdsc_cfg-
> > >second_line_bpg_offset << 11,
> > +							vdsc_cfg-
> >slice_height - 1);
>=20
> The parameters we compute here are being programmed only for gen14. We
> should limit the computation if they are going to be unused for prior
> platforms.

How about we make native_420 field of vdsc_cfg true only if DISPLAY_VER() >=
=3D 14
this should take care of not filling any extra fields or computations

Regards,
Suraj Kandpal
>=20
> > +	}
> > +
> >  	vdsc_cfg->bits_per_component =3D pipe_config->pipe_bpp / 3;
> >
> >  	for (i =3D 0; i < DSC_NUM_BUF_RANGES - 1; i++) { @@ -594,8 +627,13
> @@
> > static void intel_dsc_pps_configure(const struct intel_crtc_state
> *crtc_state)
> >  		DSC_VER_MIN_SHIFT |
> >  		vdsc_cfg->bits_per_component << DSC_BPC_SHIFT |
> >  		vdsc_cfg->line_buf_depth << DSC_LINE_BUF_DEPTH_SHIFT;
> > -	if (vdsc_cfg->dsc_version_minor =3D=3D 2)
> > +	if (vdsc_cfg->dsc_version_minor =3D=3D 2) {
> >  		pps_val |=3D DSC_ALT_ICH_SEL;
> > +		if (vdsc_cfg->native_420)
> > +			pps_val |=3D DSC_NATIVE_420_ENABLE;
> > +		if (vdsc_cfg->native_422)
> > +			pps_val |=3D DSC_NATIVE_422_ENABLE;
> > +	}
> >  	if (vdsc_cfg->block_pred_enable)
> >  		pps_val |=3D DSC_BLOCK_PREDICTION;
> >  	if (vdsc_cfg->convert_rgb)
> > @@ -906,6 +944,32 @@ static void intel_dsc_pps_configure(const struct
> > intel_crtc_state *crtc_state)
> >  				       pps_val);
> >  	}
> >
> > +	if (DISPLAY_VER(dev_priv) >=3D 14) {
> > +		/* Populate PICTURE_PARAMETER_SET_17 registers */
> > +		pps_val =3D 0;
> > +		pps_val |=3D DSC_SL_BPG_OFFSET(vdsc_cfg-
> > >second_line_bpg_offset);
> > +		drm_dbg_kms(&dev_priv->drm, "PPS17 =3D 0x%08x\n",
> pps_val);
> > +		intel_de_write(dev_priv,
> > +			       MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe),
> > +			       pps_val);
> > +		if (crtc_state->dsc.dsc_split)
> > +			intel_de_write(dev_priv,
> > +
> > MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe),
> > +				       pps_val);
> > +
> > +		/* Populate PICTURE_PARAMETER_SET_18 registers */
> > +		pps_val =3D 0;
> > +		pps_val |=3D DSC_NSL_BPG_OFFSET(vdsc_cfg-
> >nsl_bpg_offset) |
> > +			   DSC_SL_OFFSET_ADJ(vdsc_cfg-
> >second_line_offset_adj);
> > +		drm_dbg_kms(&dev_priv->drm, "PPS18 =3D 0x%08x\n",
> pps_val);
> > +		intel_de_write(dev_priv,
> > +			       MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe),
> > +			       pps_val);
> > +		if (crtc_state->dsc.dsc_split)
> > +			intel_de_write(dev_priv,
> > +
> > MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe),
> > +				       pps_val);
> > +	}
>=20
> Leave a line gap.
>=20
> >  	/* Populate the RC_BUF_THRESH registers */
> >  	memset(rc_buf_thresh_dword, 0, sizeof(rc_buf_thresh_dword));
> >  	for (i =3D 0; i < DSC_NUM_BUF_RANGES - 1; i++) {
> > --
> > 2.25.1

