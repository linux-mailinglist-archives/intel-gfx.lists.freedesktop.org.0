Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC4274168F
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jun 2023 18:37:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 362D410E371;
	Wed, 28 Jun 2023 16:37:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 660B810E383
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jun 2023 16:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687970266; x=1719506266;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bi6qS9pil5u+Z3EZVbR23VF8skRsjxU78bW3BlhWY9s=;
 b=QMSeQZk8rl20A8KvZzrKwrSvfGOsuLQMcwlvntkT7ngtzdZQpp0mTobm
 j7Jj4DfNIIB03cacmz36DPP4MKTWXL0aT9aBgBpRZtyTys8sClgCYJp/G
 16m7sOsgQyiwI/sQW9FOlesaGD08ZBA+mtYDdVWG8y5bJzzuzYagLA+ba
 aQJ6zM4y6ueRmnewkdwDZr9PxYJg8fPW6YE6gMeWp8EgcLrEpyjAIM0X3
 3xb3FB0G9tvu+ZBZFVmuMYpr0NRDe4npx6i8oSz1Y5QhEF17s3Qbaw8RX
 0JlKAu6h9A+CQAkouJwla6CeeeHbO/9J8pFpLQy7xfDXuteAC4m23Gfwr Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="341481457"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="341481457"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 09:37:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="861600727"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="861600727"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 28 Jun 2023 09:37:45 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 28 Jun 2023 09:37:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 28 Jun 2023 09:37:44 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 28 Jun 2023 09:37:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Aa1m3yqnIcdgLAscHsNuriqP7v8MOaZcxlq6OUDwHTuwFWWo8F0MCpBMG4kScIE+1vS4CtHCtgqyRCu8Htky5j6nYZH3lMjgJP7kFTR/OztWqdRl8B8AoKSvbUO4WtWWboL23kcUrsDIslc15LDyL/ZKQ09LkhqOI1NGxv/Tsxn7gR4fiSQ5YaAx0L7wwhNNprIa83aAF+K/Ysz4EIsbHWtv4m7BLPiysebRdOvU5WTH765l5uHY7HDT0FBCA5H1NJN0nJCKNn8SFyiC2PI4zhch4oW5WhGlDaedNcVZENUd/wLMYU9je3qOnLw2VqlIGpqxSD9wsRkBH4mNfJSUGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B9QmJ1DCANNPD9KZIZSL2+cPBSjxRMM+nPBFc3Os/IQ=;
 b=JRtHAxyfiaqx4IQlsv3CwbPGQ+GfcKehoB/et/hRqGoGmXzpoJJjV6F+Izzm3emxVfC19m0pmrSx9arc2TqYtP14/03J7GSWu8f9Oy8QgRaS1z/atKOl17wO9otQy4HemkeNNA+0eKds3FpmQ3zRCDmiUKbpodJSHwY9LKxpZClNNGD77Y6SappGJUlxTgS1vyuYDcTui1MSeu7K2iraDCSvQGVBcpQxLzhylUB16WnN2EX+W1c2bi8BpuctIa3Ux8Mssec7MbJRrFTf/2MycJWoF1JGJCUuXGkUOUnjp5NkQmyLw80Y69bHdIvd7KUphWgGIMQUiE8lBh8FU6dxMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by DM6PR11MB4676.namprd11.prod.outlook.com (2603:10b6:5:2a7::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.26; Wed, 28 Jun
 2023 16:37:34 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::166b:4bb5:e47d:83d7]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::166b:4bb5:e47d:83d7%11]) with mapi id 15.20.6521.026; Wed, 28 Jun
 2023 16:37:33 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC 1/3] drm/i915/hdmi: Optimize source audio
 parameter handling
Thread-Index: AQHZqEx2s1Zw/O5W9UiJbOzEN20Py6+dSsWAgAMiEFA=
Date: Wed, 28 Jun 2023 16:37:33 +0000
Message-ID: <MWHPR11MB1935F3E8B0B98AA8CFA58B39B224A@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230626163819.2759500-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230626163819.2759500-2-mitulkumar.ajitkumar.golani@intel.com>
 <875y7auq7s.fsf@intel.com>
In-Reply-To: <875y7auq7s.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jani.nikula@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|DM6PR11MB4676:EE_
x-ms-office365-filtering-correlation-id: 96d2e3eb-498b-4853-4ab1-08db77f5f8fd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OMOZSZ/DHFY5KZ1AWc+QFX5AWHOLFafjKimpEJYzRRDRMLpez2DF7u2SX8Jrewd/usaACCU4cc+pDtIeYpSayQjYwKby6t3xndmUYxQay//0PfiMxM1FYMFFLqx5n6skvpNa88YhtsTOn6YTmHFABN56mHvzHhaIcBsCQ7NKM60acgXZmTJ+0lQ2d9PvNVj12XdoDRyXK31+Kif3MUUOpfrQuZ/QkQBWTNfkvNBJ2zuCDL1KvKAFOydA2EOLFApWSmRswrInVCw86CeZe3gdqmzEZ1DY0KE+eeRzKy+MJVMNcLZXCYZ0NNbq4YIWHLlmMdd5xPi5eDFNlCFtK53xIglnF92udRlVoMHwhq77lPfBia1kUUi2WAcvuG00pql8RWOGNUI2EgSdFaS/sxLUK8TcUfr4uFfbtMkYYfD2FVt16xINpiiJgVg6KhL631T6hAKNtmuDM29uaOI6grXmfkgUlnInZId+85xtlldxlkKC1lkVKEg0AfEdt4R8BnNsVOHES3EITptOMgvqhABb62/6Jdl28XxBZByrUOWrOsvWthy4oslSDu8EgWcrcu97STQiTQjmg+iQ69D+T7feiimrPUU9IZo6YxKmChmOL8FQYodHaU+TXOB/GDSbxX/Q
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(39860400002)(366004)(396003)(136003)(451199021)(26005)(55236004)(2906002)(478600001)(110136005)(7696005)(83380400001)(71200400001)(186003)(53546011)(6506007)(5660300002)(30864003)(52536014)(64756008)(33656002)(76116006)(38100700002)(82960400001)(316002)(122000001)(9686003)(8676002)(55016003)(86362001)(8936002)(66946007)(66556008)(66446008)(41300700001)(38070700005)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bpoCW5sJfUHkVSCXwWS0SFPmxf5im+OMdwB6zfb+ELtHPTLANg5oVdzS7V9w?=
 =?us-ascii?Q?nRtdiBHbtXYssOpKhb6gd+UhFCKbEHPW8Dc7Zr080xbHARtErTCTQs1opnG8?=
 =?us-ascii?Q?6zxSP1Pk9QjjyZE8NTQJF9tyl9YdYlVx4rN4IEtUQWe8thTdgDCnsjYHSqgn?=
 =?us-ascii?Q?AaEEZCX3I5cXugRqEdXryM43fbV/YYgvoiv6JNssl5u1i0tzPi20yviDkMFB?=
 =?us-ascii?Q?skTWdysbes71M/OvN6sP7SL78t91HY+stg5iOHeDZ9c4u43Kp99YSu9kzBsr?=
 =?us-ascii?Q?ZYQrV4RQglVe6GjaaqBvRAVcXFjddYQ5aHxof3pml6czk7okj0xAQP23ngDJ?=
 =?us-ascii?Q?eXXB/n+kPZWqLP81VaEI+kFsk0i9aqrghWxBPYAQyExUl4bQ4tjNoxfz5qTc?=
 =?us-ascii?Q?saYz21bX12CB2eA/W1BvjeHN9Umj+CttqB8OKj/NUKDwkAh6CEftL3LLaV6g?=
 =?us-ascii?Q?9Vbhgz+YFe/5eMtDalUWfj8eEowk0SUjrnPRbw6hDhgmQRaul4jqFVh+07eN?=
 =?us-ascii?Q?YnNRmGMZdGs0ixMUe54GNJ/2w0WlNIcLf/ziSH36ktMnGp0k4nz86rLkD0Br?=
 =?us-ascii?Q?umdB1BYRPp+C2Ohvv2+C6RLisjuLfV0/DvfrfWWsU98v4vFv6QQwIzvXToe2?=
 =?us-ascii?Q?maWiGF4qnQit6Gm13jz8+n7wb8KAyWET4hA2yWZpSm1iyGvGGqnzYgz8d+UD?=
 =?us-ascii?Q?Y6zC8epAD7eQyxll9LGlhwdCONKdmGkEJDRwMJy+LDB0p+LUXfOgznUPMUEU?=
 =?us-ascii?Q?rauu1/n6jPtybjovX04WjXm50UAFx0VGG3BqTV0q7Eda1baFjTXhgWcqrD4F?=
 =?us-ascii?Q?YevnEHxmy1Am51oTmAcwCgdCfE1hx/TocixTivVWkm2wof4PcGrmX36CnZhZ?=
 =?us-ascii?Q?UN+/9ml3M1jGVmNEB4/RtPtLBY6ZKn5ibYxohxLeZ/uNnbuEtWTUecD8OqJg?=
 =?us-ascii?Q?LhNHokTC1ZbbtH6VzCEwipAzxjdXVOxTdjCoDmQbxEzBqSznC1YrayLNu1jM?=
 =?us-ascii?Q?dzjtkGI6fB074y07Mb+9CxCTAXX11GMZExangYjOh5EtlVLndPir9FbsmdY/?=
 =?us-ascii?Q?IrXgvY+jVyvNALb97NzzGxA28mT3k2jivR/NUEyUrMWYD0ni6liusyWayd+K?=
 =?us-ascii?Q?hg9NZrHHM/WOGrCG6CgVLbMX1rIfWu/dWrSaJs4VuOFvLz+lxf3MG8V9ZOe/?=
 =?us-ascii?Q?BtEI7LuXQ9e2s9mjbQLq9NVgFYYaWb1AGp/fnG2jVzw7Y24jdDdI65P/AyxB?=
 =?us-ascii?Q?VbRxcgaQt71kFonkq1XqL9lMCKDSzdsXiLNYd49crn147f4p1/zz6S6nT+WU?=
 =?us-ascii?Q?JWOUm8XvlIDWDGNqH8riOXDkPumTYBCkFAKdpgRFi2b4nl1pfP2U65lYSxGp?=
 =?us-ascii?Q?aZeS3JVXv7y4D4Q2YXmXuJJPY5C0m6LzVShzjA3Iiu1qE57UDtJE+vJxQv0c?=
 =?us-ascii?Q?RLKTKaODHIGjIc/wscZLP7ZrTqWV8GDU/DCoDMFD7LXLr5OflNb1LgSqq8W+?=
 =?us-ascii?Q?/EB/WujPfwB6hCEG7QCxUdy5b3+aH/lrw7ecvqAK0uXrOyB9J3BFT8NgNVex?=
 =?us-ascii?Q?h0zFqr21mUomJjVd2NVLKHhiWbccQTqSjxMbgvqh7g0AsFlYztatjPG9n3M3?=
 =?us-ascii?Q?YPvPE1d56zvdFudXKvIoP14=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96d2e3eb-498b-4853-4ab1-08db77f5f8fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2023 16:37:33.0736 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Evw5Be6f6TwVqxSsIKm2P1O6iwUa1k83nY0GPfRJEWG9rFwDY08cFsZ4FW5OLjNZC/A0x5WJTTrtSpqUAQkGN5FPCx5MYNEgW0kU5EC8krcQiC60GM13ykxhkWYkVb7s
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4676
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 1/3] drm/i915/hdmi: Optimize source audio
 parameter handling
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
> Sent: 26 June 2023 22:16
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [RFC 1/3] drm/i915/hdmi: Optimize source audio
> parameter handling
>=20
> On Mon, 26 Jun 2023, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> wrote:
> > To enhance the relationship between the has_audio and the source audio
> > parameter, create a separate crtc_state audio property and add the
> > has_audio parameter into it. Additionally, update the access of the
> > has_audio parameter from the crtc_state pointer as it is wrapped under
> > the audio. These modifications establish a more cohesive structure and
> > improve the accessibility and organization of the audio-related
> > parameters within the codebase.
>=20
> The patch subject does not reflect this.
>=20
> Other than that,
>=20
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>=20

Thanks. Updated commit header in latest revision.

Regards,
Mitul

> >
> > --v1:
> > - add audio instead of audio_config in crtc_state
> > - add only has_audio then update related parameter access
> > - refactor other member to different commit where it is being used
> > - update commit message and header
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/g4x_dp.c            |  4 ++--
> >  drivers/gpu/drm/i915/display/g4x_hdmi.c          | 16 ++++++++--------
> >  drivers/gpu/drm/i915/display/intel_audio.c       |  6 +++---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c       |  6 +++---
> >  .../gpu/drm/i915/display/intel_crtc_state_dump.c |  4 ++--
> >  drivers/gpu/drm/i915/display/intel_ddi.c         |  2 +-
> >  drivers/gpu/drm/i915/display/intel_display.c     |  4 ++--
> >  .../gpu/drm/i915/display/intel_display_types.h   |  6 +++---
> >  drivers/gpu/drm/i915/display/intel_dp.c          |  2 +-
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c      |  2 +-
> >  drivers/gpu/drm/i915/display/intel_hdmi.c        |  2 +-
> >  drivers/gpu/drm/i915/display/intel_sdvo.c        | 10 +++++-----
> >  12 files changed, 32 insertions(+), 32 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c
> > b/drivers/gpu/drm/i915/display/g4x_dp.c
> > index c58a3f249a01..af76a71e757c 100644
> > --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> > +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> > @@ -345,7 +345,7 @@ static void intel_dp_get_config(struct
> > intel_encoder *encoder,
> >
> >  	tmp =3D intel_de_read(dev_priv, intel_dp->output_reg);
> >
> > -	pipe_config->has_audio =3D tmp & DP_AUDIO_OUTPUT_ENABLE &&
> port !=3D PORT_A;
> > +	pipe_config->audio.has_audio =3D tmp &
> DP_AUDIO_OUTPUT_ENABLE && port
> > +!=3D PORT_A;
> >
> >  	if (HAS_PCH_CPT(dev_priv) && port !=3D PORT_A) {
> >  		u32 trans_dp =3D intel_de_read(dev_priv, @@ -625,7 +625,7
> @@ static
> > void intel_dp_enable_port(struct intel_dp *intel_dp,
> >  	 * fail when the power sequencer is freshly used for this port.
> >  	 */
> >  	intel_dp->DP |=3D DP_PORT_EN;
> > -	if (crtc_state->has_audio)
> > +	if (crtc_state->audio.has_audio)
> >  		intel_dp->DP |=3D DP_AUDIO_OUTPUT_ENABLE;
> >
> >  	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP); diff
> > --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > index 8c71e3ede680..568bfc3c6c47 100644
> > --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > @@ -178,7 +178,7 @@ static void intel_hdmi_get_config(struct
> intel_encoder *encoder,
> >  		pipe_config->has_infoframe =3D true;
> >
> >  	if (tmp & HDMI_AUDIO_ENABLE)
> > -		pipe_config->has_audio =3D true;
> > +		pipe_config->audio.has_audio =3D true;
> >
> >  	if (!HAS_PCH_SPLIT(dev_priv) &&
> >  	    tmp & HDMI_COLOR_RANGE_16_235)
> > @@ -224,7 +224,7 @@ static void g4x_hdmi_enable_port(struct
> intel_encoder *encoder,
> >  	temp =3D intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
> >
> >  	temp |=3D SDVO_ENABLE;
> > -	if (pipe_config->has_audio)
> > +	if (pipe_config->audio.has_audio)
> >  		temp |=3D HDMI_AUDIO_ENABLE;
> >
> >  	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp); @@ -240,7
> > +240,7 @@ static void g4x_enable_hdmi(struct intel_atomic_state
> > *state,
> >
> >  	g4x_hdmi_enable_port(encoder, pipe_config);
> >
> > -	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
> > +	drm_WARN_ON(&dev_priv->drm, pipe_config->audio.has_audio
> &&
> >  		    !pipe_config->has_hdmi_sink);
> >  	intel_audio_codec_enable(encoder, pipe_config, conn_state);  }
> @@
> > -258,7 +258,7 @@ static void ibx_enable_hdmi(struct intel_atomic_state
> *state,
> >  	temp =3D intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
> >
> >  	temp |=3D SDVO_ENABLE;
> > -	if (pipe_config->has_audio)
> > +	if (pipe_config->audio.has_audio)
> >  		temp |=3D HDMI_AUDIO_ENABLE;
> >
> >  	/*
> > @@ -293,7 +293,7 @@ static void ibx_enable_hdmi(struct
> intel_atomic_state *state,
> >  		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
> >  	}
> >
> > -	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
> > +	drm_WARN_ON(&dev_priv->drm, pipe_config->audio.has_audio
> &&
> >  		    !pipe_config->has_hdmi_sink);
> >  	intel_audio_codec_enable(encoder, pipe_config, conn_state);  }
> @@
> > -313,7 +313,7 @@ static void cpt_enable_hdmi(struct intel_atomic_state
> *state,
> >  	temp =3D intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
> >
> >  	temp |=3D SDVO_ENABLE;
> > -	if (pipe_config->has_audio)
> > +	if (pipe_config->audio.has_audio)
> >  		temp |=3D HDMI_AUDIO_ENABLE;
> >
> >  	/*
> > @@ -348,7 +348,7 @@ static void cpt_enable_hdmi(struct
> intel_atomic_state *state,
> >  			     TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE, 0);
> >  	}
> >
> > -	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
> > +	drm_WARN_ON(&dev_priv->drm, pipe_config->audio.has_audio
> &&
> >  		    !pipe_config->has_hdmi_sink);
> >  	intel_audio_codec_enable(encoder, pipe_config, conn_state);  }
> @@
> > -360,7 +360,7 @@ static void vlv_enable_hdmi(struct intel_atomic_state
> > *state,  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> >
> > -	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
> > +	drm_WARN_ON(&dev_priv->drm, pipe_config->audio.has_audio
> &&
> >  		    !pipe_config->has_hdmi_sink);
> >  	intel_audio_codec_enable(encoder, pipe_config, conn_state);  } diff
> > --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > b/drivers/gpu/drm/i915/display/intel_audio.c
> > index 3d9c9b4f27f8..e20ffc8e9654 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -815,7 +815,7 @@ void intel_audio_codec_enable(struct
> intel_encoder *encoder,
> >  	struct intel_audio_state *audio_state;
> >  	enum port port =3D encoder->port;
> >
> > -	if (!crtc_state->has_audio)
> > +	if (!crtc_state->audio.has_audio)
> >  		return;
> >
> >  	drm_dbg_kms(&i915->drm,
> "[CONNECTOR:%d:%s][ENCODER:%d:%s] Enable
> > audio codec on [CRTC:%d:%s], %u bytes ELD\n", @@ -874,7 +874,7 @@
> void intel_audio_codec_disable(struct intel_encoder *encoder,
> >  	struct intel_audio_state *audio_state;
> >  	enum port port =3D encoder->port;
> >
> > -	if (!old_crtc_state->has_audio)
> > +	if (!old_crtc_state->audio.has_audio)
> >  		return;
> >
> >  	drm_dbg_kms(&i915->drm,
> "[CONNECTOR:%d:%s][ENCODER:%d:%s] Disable
> > audio codec on [CRTC:%d:%s]\n", @@ -930,7 +930,7 @@ void
> > intel_audio_codec_get_config(struct intel_encoder *encoder,  {
> >  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> >
> > -	if (!crtc_state->has_audio)
> > +	if (!crtc_state->audio.has_audio)
> >  		return;
> >
> >  	if (i915->display.funcs.audio)
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 4207863b7b2a..cb87c2e0cdaa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2553,7 +2553,7 @@ int intel_crtc_compute_min_cdclk(const struct
> intel_crtc_state *crtc_state)
> >  	 * restriction for GLK is 316.8 MHz.
> >  	 */
> >  	if (intel_crtc_has_dp_encoder(crtc_state) &&
> > -	    crtc_state->has_audio &&
> > +	    crtc_state->audio.has_audio &&
> >  	    crtc_state->port_clock >=3D 540000 &&
> >  	    crtc_state->lane_count =3D=3D 4) {
> >  		if (DISPLAY_VER(dev_priv) =3D=3D 10) {
> > @@ -2569,7 +2569,7 @@ int intel_crtc_compute_min_cdclk(const struct
> intel_crtc_state *crtc_state)
> >  	 * According to BSpec, "The CD clock frequency must be at least twice
> >  	 * the frequency of the Azalia BCLK." and BCLK is 96 MHz by default.
> >  	 */
> > -	if (crtc_state->has_audio && DISPLAY_VER(dev_priv) >=3D 9)
> > +	if (crtc_state->audio.has_audio && DISPLAY_VER(dev_priv) >=3D 9)
> >  		min_cdclk =3D max(2 * 96000, min_cdclk);
> >
> >  	/*
> > @@ -2580,7 +2580,7 @@ int intel_crtc_compute_min_cdclk(const struct
> intel_crtc_state *crtc_state)
> >  	 *  162                    | 200 or higher"
> >  	 */
> >  	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
> > -	    intel_crtc_has_dp_encoder(crtc_state) && crtc_state->has_audio)
> > +	    intel_crtc_has_dp_encoder(crtc_state) &&
> > +crtc_state->audio.has_audio)
> >  		min_cdclk =3D max(crtc_state->port_clock, min_cdclk);
> >
> >  	/*
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > index 8d4640d0fd34..b7d1be42bf0f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > @@ -265,7 +265,7 @@ void intel_crtc_state_dump(const struct
> > intel_crtc_state *pipe_config,
> >
> >  	drm_dbg_kms(&i915->drm,
> >  		    "audio: %i, infoframes: %i, infoframes enabled: 0x%x\n",
> > -		    pipe_config->has_audio, pipe_config->has_infoframe,
> > +		    pipe_config->audio.has_audio, pipe_config-
> >has_infoframe,
> >  		    pipe_config->infoframes.enable);
> >
> >  	if (pipe_config->infoframes.enable & @@ -291,7 +291,7 @@ void
> > intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
> >  	    intel_hdmi_infoframe_enable(DP_SDP_VSC))
> >  		intel_dump_dp_vsc_sdp(i915, &pipe_config-
> >infoframes.vsc);
> >
> > -	if (pipe_config->has_audio)
> > +	if (pipe_config->audio.has_audio)
> >  		intel_dump_buffer(i915, "ELD: ", pipe_config->eld,
> >  				  drm_eld_size(pipe_config->eld));
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 61722556bb47..ff738ca1e118 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -3782,7 +3782,7 @@ static void intel_ddi_get_config(struct
> > intel_encoder *encoder,
> >
> >  	intel_ddi_mso_get_config(encoder, pipe_config);
> >
> > -	pipe_config->has_audio =3D
> > +	pipe_config->audio.has_audio =3D
> >  		intel_ddi_is_audio_enabled(dev_priv, cpu_transcoder);
> >
> >  	if (encoder->type =3D=3D INTEL_OUTPUT_EDP) diff --git
> > a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index eed01957bdb9..d87055bd7b11 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1857,7 +1857,7 @@ static void get_crtc_power_domains(struct
> intel_crtc_state *crtc_state,
> >  		set_bit(intel_encoder->power_domain, mask->bits);
> >  	}
> >
> > -	if (HAS_DDI(dev_priv) && crtc_state->has_audio)
> > +	if (HAS_DDI(dev_priv) && crtc_state->audio.has_audio)
> >  		set_bit(POWER_DOMAIN_AUDIO_MMIO, mask->bits);
> >
> >  	if (crtc_state->shared_dpll)
> > @@ -5258,7 +5258,7 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
> >  	PIPE_CONF_CHECK_BOOL(has_infoframe);
> >  	PIPE_CONF_CHECK_BOOL(fec_enable);
> >
> > -	PIPE_CONF_CHECK_BOOL_INCOMPLETE(has_audio);
> > +	PIPE_CONF_CHECK_BOOL_INCOMPLETE(audio.has_audio);
> >  	PIPE_CONF_CHECK_BUFFER(eld, MAX_ELD_BYTES);
> >
> >  	PIPE_CONF_CHECK_X(gmch_pfit.control);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 731f2ec04d5c..ebd147180a6e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1129,9 +1129,9 @@ struct intel_crtc_state {
> >  	/* Whether we should send NULL infoframes. Required for audio. */
> >  	bool has_hdmi_sink;
> >
> > -	/* Audio enabled on this pipe. Only valid if either has_hdmi_sink or
> > -	 * has_dp_encoder is set. */
> > -	bool has_audio;
> > +	struct {
> > +		bool has_audio;
> > +	} audio;
> >
> >  	/*
> >  	 * Enable dithering, used when the selected pipe bpp doesn't match
> > the diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 9f40da20e88d..d3f250dcb398 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2255,7 +2255,7 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
> >  	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder-
> >port !=3D PORT_A)
> >  		pipe_config->has_pch_encoder =3D true;
> >
> > -	pipe_config->has_audio =3D
> > +	pipe_config->audio.has_audio =3D
> >  		intel_dp_has_audio(encoder, conn_state) &&
> >  		intel_audio_compute_config(encoder, pipe_config,
> conn_state);
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index e3f176a093d2..f6e1bf3d9e25 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -322,7 +322,7 @@ static int intel_dp_mst_compute_config(struct
> intel_encoder *encoder,
> >  	pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> >  	pipe_config->has_pch_encoder =3D false;
> >
> > -	pipe_config->has_audio =3D
> > +	pipe_config->audio.has_audio =3D
> >  		intel_dp_mst_has_audio(conn_state) &&
> >  		intel_audio_compute_config(encoder, pipe_config,
> conn_state);
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 7ac5e6c5e00d..32157bef2eef 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -2302,7 +2302,7 @@ int intel_hdmi_compute_config(struct
> intel_encoder *encoder,
> >  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
> >  		pipe_config->pixel_multiplier =3D 2;
> >
> > -	pipe_config->has_audio =3D
> > +	pipe_config->audio.has_audio =3D
> >  		intel_hdmi_has_audio(encoder, pipe_config, conn_state)
> &&
> >  		intel_audio_compute_config(encoder, pipe_config,
> conn_state);
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c
> > b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > index 8298a86d1334..51495f0bcf75 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > @@ -1191,7 +1191,7 @@ static void intel_sdvo_get_eld(struct intel_sdvo
> *intel_sdvo,
> >  	ssize_t len;
> >  	u8 val;
> >
> > -	if (!crtc_state->has_audio)
> > +	if (!crtc_state->audio.has_audio)
> >  		return;
> >
> >  	if (!intel_sdvo_get_value(intel_sdvo,
> SDVO_CMD_GET_AUDIO_STAT, &val,
> > 1)) @@ -1406,7 +1406,7 @@ static int intel_sdvo_compute_config(struct
> > intel_encoder *encoder,
> >
> >  	pipe_config->has_hdmi_sink =3D
> > intel_has_hdmi_sink(intel_sdvo_connector, conn_state);
> >
> > -	pipe_config->has_audio =3D
> > +	pipe_config->audio.has_audio =3D
> >  		intel_sdvo_has_audio(encoder, pipe_config, conn_state) &&
> >  		intel_audio_compute_config(encoder, pipe_config,
> conn_state);
> >
> > @@ -1760,7 +1760,7 @@ static void intel_sdvo_get_config(struct
> intel_encoder *encoder,
> >  	if (intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_AUDIO_STAT,
> >  				 &val, 1)) {
> >  		if (val & SDVO_AUDIO_PRESENCE_DETECT)
> > -			pipe_config->has_audio =3D true;
> > +			pipe_config->audio.has_audio =3D true;
> >  	}
> >
> >  	if (intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_ENCODE, @@
> -1805,7
> > +1805,7 @@ static void intel_disable_sdvo(struct intel_atomic_state
> *state,
> >  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
> >  	u32 temp;
> >
> > -	if (old_crtc_state->has_audio)
> > +	if (old_crtc_state->audio.has_audio)
> >  		intel_sdvo_disable_audio(intel_sdvo);
> >
> >  	intel_sdvo_set_active_outputs(intel_sdvo, 0); @@ -1898,7 +1898,7
> @@
> > static void intel_enable_sdvo(struct intel_atomic_state *state,
> >  						   DRM_MODE_DPMS_ON);
> >  	intel_sdvo_set_active_outputs(intel_sdvo,
> > intel_sdvo->attached_output);
> >
> > -	if (pipe_config->has_audio)
> > +	if (pipe_config->audio.has_audio)
> >  		intel_sdvo_enable_audio(intel_sdvo, pipe_config,
> conn_state);  }
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
