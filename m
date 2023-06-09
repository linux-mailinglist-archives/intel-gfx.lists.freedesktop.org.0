Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1231372A187
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 19:44:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3F8310E168;
	Fri,  9 Jun 2023 17:44:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EAD910E168
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 17:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686332658; x=1717868658;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3YtwgsbOqRtesZRLzUOfVQjFgZblJYr8Xfn44HPYOwA=;
 b=lhT+mLNbP0OqT1QvbyA6Bk7iQbBuBg0h4/vk44A2afQ3tTN+IE5bnZvf
 gF5cnJX3vsG9JqKDbxpqaZG5Z9wydtG9P0KVOl8p8sw0zT02BZgXMUNjU
 21tzoXYtn/zZZaIcoP2bxGuPge9dqYRFChrXaoxgi2iIXEolAzP5Q17Ty
 9rC8rgL185I7fYu5Et6riqhfXJm0ZSZTT1cZqtcn40kYMeKCUP8pV9fBm
 CNxbk7eLAyn8kVie1V0tjS1PR63Kv+CE6izZPsm/BSk6l+FEQgr+ju25E
 cdJj/pEZfi51pCY6wlsf3gpVKr2NbiOf3ddXCD/o2Jha7Xvnv1B2BZap2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="338011766"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="338011766"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 10:44:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="854813574"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="854813574"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 09 Jun 2023 10:44:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 9 Jun 2023 10:44:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 9 Jun 2023 10:44:13 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 9 Jun 2023 10:44:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jQ2rqgAOVf5kZZN5OrGCQGyL2kD8Hj+O66uf0i7FNmHX43xNUXHRE3l2lUYiHB1q58NRoZBFSU2mhJBAiviARxES8EcNPTJxCbIJZn3uwqGzc83xqOORZ3suR4H2X80XdjKZeB5smPgobGd2KRNu3hjBit7dsBKCEFKy2mNMWOgSoc0EgvVQ4ecAAMbWyzSFg/z4/Pp7rDQinzi+KS0OLEBDYv5dG8ZbRN58lDafW1QQqJJYsk0ZqT4ShDiHMSajXW5QFSBIiMET5za+43sokLxiZvPig0oL6pRWfJNdUKziQDmyDF91BXYzVHjBeF5fjgmjuMPrzevh0DOAXuVW/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1jIK6X8YLBAQIPdS1YinViIFKzQzO4DOE8Y81q0ciG4=;
 b=A82JZfUccmpAdJN+sNcNqKKAnD2SehZLP1D5jpvWbwUXvg10s6/b4QVrX+n7hvKdkIACY0EpE8rRQq+xhsRClZ/2hFmdWBOv7Pvqlx4m8rP3q7X+uALI59DIwWxgd2u/Kx6Qfgof4XqZXrZR2tm5cW1srfq6U5oXS3cViq7lzjQzJ586o9c5rysjHYV08NQ/YVdZcO+5WjtZkgakuHTDp0g6A8hzfezKXC3as4Jb0sfKz1wZ9u7sJwFS70X4KIHJcwnjYuPUpwoTdvVYlB7ODoLHpYr6A9MlaA04VRXqqUtoNdCa20zl2c3ql2dah1rdEuPK9qGak8uo5VjrS72ziA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:9b::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.42; Fri, 9 Jun
 2023 17:44:08 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::c7d5:8421:98a4:2579]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::c7d5:8421:98a4:2579%7]) with mapi id 15.20.6455.043; Fri, 9 Jun 2023
 17:44:07 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC 1/4] drm/i915/hdmi: Add audio config related
 params in crtc_state
Thread-Index: AQHZmq6Yw+QgvwH1Gka/nHL5gULZVa+CNlyAgACH5EA=
Date: Fri, 9 Jun 2023 17:44:07 +0000
Message-ID: <MWHPR11MB1935C4210A66D548E2D2A83AB251A@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230609084504.1929424-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230609084504.1929424-2-mitulkumar.ajitkumar.golani@intel.com>
 <87legtq8o4.fsf@intel.com>
In-Reply-To: <87legtq8o4.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jani.nikula@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|CO1PR11MB5186:EE_
x-ms-office365-filtering-correlation-id: b2df382d-2a61-4aca-ca70-08db6911202c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +xyAmZ570G43MB9rwecDh1xLxZE2mIm0NU1tI0wMteT1Odyx2DEVhbx3Z3+v7Ee4Gz62eAek3Acsfg8xZog+w8wBBEFEiWPryPwPx/HVbeMAFkwrY8a7rY/laZJFo+oYr7LUr0e5ydGGuwFi+8GPGRrJEooIjUonHnjP//QVo1mYV9gixAf7/hQkGPg4Kdhq9YcexIk7sekRUn49bfoYfA7PrI621XOpXXIDfishq8KBgyFirRhy78/Pt64lhECBQbUP+g77mge+KZ/PBOgb740nf4uHYMfGBvF24Z95didi6FpecbwV0fJHy82VOiQJoqbiJVfzBbPiiYweKbJ8DnBzrl6erV90qY5DDnRznF8TvTtSkB9cMBDAtQfJ104Wdkz2pwI5BTqKr20IY9U4Ta8M+WkT7iC/P+3LOYutuGmSTVdyD72M9f4ZnPtRZkUqU9fvKY9L4EiBESqU+aMQRlmz0BU/NkIz+yhM/eKJtt4rwh2BjeyP5muknVQMwgmuvwhr/hWMosXDFrA1nItBEa0cKfUURxqxpYlGwjrNOMOgh/gvnVZGjj40kU/3oKwlM273OV/ybUY1T1cAwxsLf4qC768jXlxI8MDjSnVkFm1vvhx6yejJAtQL69okZ17w
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(396003)(346002)(39860400002)(376002)(451199021)(52536014)(5660300002)(8676002)(8936002)(33656002)(2906002)(83380400001)(38070700005)(38100700002)(82960400001)(122000001)(86362001)(55016003)(9686003)(6506007)(53546011)(186003)(478600001)(316002)(7696005)(110136005)(76116006)(64756008)(66556008)(66446008)(71200400001)(66946007)(66476007)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?b9mgAALjToo9MtN2ZLK/3fZnfnENNfSQGQZO3uGJx0Jz9kGGj3W1WxaxE1Mz?=
 =?us-ascii?Q?dFN3evr1hatONNCCQCq9YtvLm1ZdBVQ3G1SAntMZkZxPgytB54yacuHcPbiC?=
 =?us-ascii?Q?eeN6UygMxxG7ZxAZ3DzXXYYxJCCmkPcKFTXrBtv2fkH9D1k5S6460NqouqD7?=
 =?us-ascii?Q?6kwUNYhxBpj7OWyvwsv9Tck6xm4G7qS1nZMRFhHc1thHuKdS7tsqmrgEKxW+?=
 =?us-ascii?Q?jhugT78K6MSUL5d9sXyNGy+ZnzepCNI4vd4s8WWfdw/ijTBWYXSpaFYrzY8U?=
 =?us-ascii?Q?lzOnmCPJV0GaVfHpdBBr/3xtO2X6YWb4W88wB/EH5TWsAuA+krcVCCYXsltg?=
 =?us-ascii?Q?5nmIhSGvBgiD/efH6W/ABk0oeXhDJ7nAuGFXmshwqpYLhnopQJgAVQpDVy11?=
 =?us-ascii?Q?Ysns9doOOVFQtSPGVP+ohzYZsZsrdyIUxJdS6Je4Lp0D9W3eAURfwqqb+sN+?=
 =?us-ascii?Q?smk2L0oUg3NNsIgthDYABhxOhDm5n4BK7HCRmLKD+wLFR4lTtbwUmE8/P0pQ?=
 =?us-ascii?Q?HF0E14/uKAuFow6SZQiXCsk5z1xVL4FCKFTLkdD8J/q8ycetDydtIGjBMAo5?=
 =?us-ascii?Q?N8IxsdCRDVi52Enz3/mvShQis4oyv/CYUwlWaHWpnOEYDjI/IqIGmj0kTeH1?=
 =?us-ascii?Q?StqzECZaGBhWo6EqB+2LCnT/P0e26X9HyQb1wKSOPJy7wMySTh8h5fdzlWWg?=
 =?us-ascii?Q?YeSe3jo5Clf5FqmbEJkfLUM1ECmR10T2hsyEyhZry8oWP8GLgmNc3vZe14cK?=
 =?us-ascii?Q?97extQW6J8wzqzCnq425uIlr35aiG8KY9lqi/ct0B2vm/GnnWJJMsgBNYBNa?=
 =?us-ascii?Q?k++mRMCSrALH2JICr3StnFRhG7tighKraDohB4wMQVKZeYtizDqZt3tXQuBo?=
 =?us-ascii?Q?uh1lsFs0kvg7gfBQkxpxhnA2aU21/fqLpA7WEgMrYzEjhW3g5rYpQPImOYt1?=
 =?us-ascii?Q?qGlb7dIQ/Y6w0z5bdmL/3eeNW6RyaNdkZ0LX/EmFNJT4dP52gzy6EtuoaD3V?=
 =?us-ascii?Q?RKP726Hl39yjPXi4fEaxyXjr1xsHU+o1txgBbahSQwHu5zXBNEXvSzp8nh8I?=
 =?us-ascii?Q?nku0VZ6/yqY/7SinX9+4jepZirKioxMzCLpbMd7DQKJYQwsMZUmCNmlAnRFn?=
 =?us-ascii?Q?fPwuAqHNcidpQ4CQMLF1IOwrkoikqdUxuv5mfTu8LxaEIS6cRp4PGZ5MWqIp?=
 =?us-ascii?Q?nsJb/L7KEXBwm+hWK6a7q9uV6mIiIGTupUp0/mYW37eHGKr0hQU2GfQ8koff?=
 =?us-ascii?Q?sANvRgwyW4R0MmkCS9bGiObl3HV2VUgT0so2+2MiTP6hNG+ilzk3Hsn5u5UL?=
 =?us-ascii?Q?O9057cArBtktqdyTzGqxu1riG1veTLf1l9/Cm6Exxhay/CVkbrM6hiGnkPyT?=
 =?us-ascii?Q?v2+HO7TfIFv7P55ZllM6lZU5Adqnml0BBXX76t4p1Zuf+rroVcVU5tmri4Lx?=
 =?us-ascii?Q?SGgfphgzOrd3xan34MIXQklKG9f4mTkpQyRI/BzuaoMG97VH0SQrbDrRzjze?=
 =?us-ascii?Q?6BY8EAlHYY4emoFiF/GPWOOz9Bz2Bz4nxP6QKeaLOMdZ3NtpO9LbRtiYjB/y?=
 =?us-ascii?Q?a9V6nEvaD82RmU+8J7kVaGhUbuNZW4HTp5fZ+qu8jt9g049grS42bprtUxCu?=
 =?us-ascii?Q?wBl6TfBdbYgejHZxWYvgMUTLXa+Ds4Hq6d0MoCa6xAVa0lugrV0uyZVMRb3b?=
 =?us-ascii?Q?EqYe58caBnawb46zY6PIC0HTsOE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2df382d-2a61-4aca-ca70-08db6911202c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2023 17:44:07.8130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +JwFC5iRfaNNebnovL9IndR5M+toj12ZYopS6f1z78ZOtWbOCohvJGeg7w2XfOoYNUpNtJB2ILa33+YuL6sixB06cuWOrk0NWT0hqF00HeuiEnKqOjFm5ABks75sLewc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5186
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 1/4] drm/i915/hdmi: Add audio config related
 params in crtc_state
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

Hi @Jani Nikula

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: 09 June 2023 15:06
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [RFC 1/4] drm/i915/hdmi: Add audio config relate=
d
> params in crtc_state
>=20
> On Fri, 09 Jun 2023, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> wrote:
> > Add source audio-related config params in crtc_state.
> > These params can be supported frequency, supported channel, and audio
> > support, which can be further computed based on source capabilities.
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_types.h | 12 +++++++++---
> >  1 file changed, 9 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 731f2ec04d5c..873a60f3f870 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1129,9 +1129,15 @@ struct intel_crtc_state {
> >  	/* Whether we should send NULL infoframes. Required for audio. */
> >  	bool has_hdmi_sink;
> >
> > -	/* Audio enabled on this pipe. Only valid if either has_hdmi_sink or
> > -	 * has_dp_encoder is set. */
> > -	bool has_audio;
> > +	struct {
> > +		bool has_audio;
> > +
> > +		/* Audio rate in Hz */
> > +		unsigned int max_frequency;
> > +
> > +		/* Number of audio channels */
> > +		unsigned int max_channel;
> > +	} audio_config;
>=20
> This breaks the build. Every commit should build on its own.
>=20
> audio_config is too verbose. Please just use "audio".
>=20
> Please don't add the new members in this commit, just first add the
> substruct and make the updates. Then add new members in a separate
> commit.
>=20
> BR,
> Jani.

Thanks. Updated changes to new fix version. Refactored has_audio and other =
audio params to separate commit where it is used.

Regards,
Mitul

>=20
> >
> >  	/*
> >  	 * Enable dithering, used when the selected pipe bpp doesn't match
> > the
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
