Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1087983DF
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 10:17:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ECBF10E18A;
	Fri,  8 Sep 2023 08:17:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEF5E10E18A
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 08:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694161068; x=1725697068;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mcYfFdVInioyH4j883/i1L8aTbstE72SSr4k8Bzm6Kg=;
 b=BxY+CS82fOtonA2KX/xijE3crr8tMopM7GC44miYpSwjzxr1jDqduXi3
 tyZG+lgAb879z2WX0HCMKySP0P+jOCD7hNDB0XG+bA9B4J/QfP/bl/BBK
 fHlA7utT0ESRLZfPmn58NXZdFe0kFK0KX37Kgw9abx+EClspjEaI3vNJO
 eAuSmiG5joog15FGhzgG/JJzQD6DX2UZ/VsYhzKfkQDLCRbD6QS6wpZu1
 M03M3ioA7vM/LquevpJQ1ZzGrH2Zf7+PwFFWB/ifaOnVMJJj25YBV7NAy
 XHWIQvLPaRI/mpKYH68vufsxiNqO0hslSEzjSqm9QveXc7WE4Ua/cT5Qk Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="374974546"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="374974546"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 01:17:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="777492793"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="777492793"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 01:17:41 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 01:17:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 01:17:41 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 8 Sep 2023 01:17:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HC2vXziwX+P+qZdzig8O5EWVaZEsxVNPCIabKPES3z+0sM1xYc2PJEKDvoMXhklmPljGk8mpdHLvy3zVFde5zx62IC9eA+/L9wnF+2Duo2I98940QMP4QXSha2n3dtDkZLVF/QX7DcDvvODin52XKqI4wycnL02VUkIa3+MKlL7N6XsCN5ZhufZrkN3sRu2+CNtMZ4uX4Fl1iZtehgUKTD0Vugyn/CHVEzM7uDtA4ZSRxH6cnMgMSlSSkvXmKe2P031dxMtCVzr3V/h9TGZmKbxIS7vlVPvNc2Vjns9KVzlSgPl33LlvN5jcQO0dOjzbWE6HcZV3bcrpk1Ii0l1qBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RqgU/srB8Ewtf5x1myBf04j75Z1aoboRnOOe8aDIvfs=;
 b=EbGA8RfYzcF2t4RI4vGDzLvuMEjsKzLj8DXYVA0VgfGHP6K5rBIKynS8Ec9lr6WxOdihfz09c/cbgGYijFllsVqtYymLbcF+Ot8JNRyJMDWcOkbRTYflg4HgkAcDjYcs3sQXKUYHSJtkyVHVZH24TcsNwjZYubaThCrbf5vE24eC/I6oY6jinwkjtgQDzyATEtYOJSr64FIaaTXLMkiQ0OXPer9wBQ8QFloyDZejTHWOoIwX+4ypAiiHQNwXl1YQMnvrGO9PqWSmAIR4YWeaefhq1BJ8DLdPnjP5suYA6Q0wKRCTpu/o2MiqofujwV9XOpXMJLfdIoMftx8m0cig/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB6380.namprd11.prod.outlook.com (2603:10b6:510:1f8::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.36; Fri, 8 Sep
 2023 08:17:39 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.035; Fri, 8 Sep 2023
 08:17:38 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915/display: Configure and
 initialize HDMI audio capabilities
Thread-Index: AQHZ1EmFKJtJCF+AxEKss9nhuxv8a7AL23qwgAI3IICAAp00gA==
Date: Fri, 8 Sep 2023 08:17:38 +0000
Message-ID: <SN7PR11MB6750536BBC4E3F0D8AF55A2AE3EDA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230821160004.2821445-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230821160004.2821445-4-mitulkumar.ajitkumar.golani@intel.com>
 <SN7PR11MB6750A1EB6FC814E9775B9D58E3E8A@SN7PR11MB6750.namprd11.prod.outlook.com>
 <IA1PR11MB634879705B3BC10BAAE3444FB2EFA@IA1PR11MB6348.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB634879705B3BC10BAAE3444FB2EFA@IA1PR11MB6348.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB6380:EE_
x-ms-office365-filtering-correlation-id: c8ddbe88-b0b1-40fa-e439-08dbb04410a1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MX03rfYQwVRRWX3TVmxN14RqCKIswsOGGK5tl71OkD05xHiRkJBUduk9sbWdPlNfMTXJHuX83eDdNY4jiv9QJioppiurHt5xigbudQaD4a61EjjnQDnuMERC82M4EkknAwe5y0p88Rfh/vckr9t5DO2tRHaSB1AzAcv2FUfyEtVVwTAMdXVmPqTyhD3JEzDhqSHDHfKkxE4yTkDM+vVU0FlXLSx7BwJH5lbdeP62xUhT1Bw+eyMf0v7gOwhyeRtxgLVI+8d7OUzuXZ3YGSCzO91qO7Ob3wt3gPf4q/UZBEQM/hQNC+5aYAfDIwvTJuHrudY9xYjnknK89UjJEHEhzojiSUCPTLZ6yl6Da2B4YElaF6gKNyrop6n52wo9zFEcp1kJxRqaY9yD43a0JnJqJnv8JhZcVoWDwKq5DywjYXJ7BnKj/+QnQWeTWsThE53h+bRorrT94kvEbVqWCROwbGhi+K1lx2CRpQW4PgTPnRWb65pk/0x7hy0jBL4RsbFKeI3omKHUgvzGJQl+Ch9cp7NTBQeUIFF3bkgENeowdTX61kmwnay6oXw2x6Viw3/6Rd7yI4E4kGK3KJ/TLkusT600ysteu2Xisw2qO2q/63QJDTaTrmhBZmg09WSqSt+D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(366004)(346002)(136003)(376002)(1800799009)(186009)(451199024)(55016003)(53546011)(107886003)(83380400001)(71200400001)(26005)(316002)(66476007)(66556008)(66946007)(64756008)(54906003)(66446008)(76116006)(52536014)(110136005)(2906002)(4326008)(8936002)(5660300002)(41300700001)(8676002)(7696005)(9686003)(6506007)(30864003)(478600001)(82960400001)(33656002)(122000001)(86362001)(38100700002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vSFgYhZ07g94vgqSUrYoQXDvnnY1QNAhzhe9PBV99ko6lbDkHb9EANi29cj3?=
 =?us-ascii?Q?vr1Qu2eDOZgpV4axmWq9JRyZK8P867Kq1I5sTcGJZIp4RJMWHBODRzwQhmRT?=
 =?us-ascii?Q?MnfvJYj2LYRYWVV2jBb/HCwj1q+fTlNq+H58Ek1qRSUN8uTds6Qh1bNRs/oJ?=
 =?us-ascii?Q?eMTaD0/9p4TXE0zrykroHfznejKGQaZJdLsJ5ToKUPHQsJMhEO150ZBlUuaD?=
 =?us-ascii?Q?/jI9IPP5KT6Iv1KJAdCPzECw67gFQ68E8oyJbq07wlhZ4OTidUpVrVMfHbLZ?=
 =?us-ascii?Q?YrmpUWic7clHbYCdAYDoPW+BQ8zXbzeQ1eLS8JTiW1g2DEZM30cqYhQoUHPY?=
 =?us-ascii?Q?cqROrlXjg1bM68LKvzL7T6cGF/MbMvw/Khjn06GLgpxAtPQ+r8V2kfpvEH1F?=
 =?us-ascii?Q?UR6LODhtfLuJabMrOY2aFZjjJJzlt8b+K8MV0wqsBGBhuZyGG/y4ENes2xSE?=
 =?us-ascii?Q?6CvrNWA/ls+cISk2ii/V+fOXlmrk61sOUeZxOGYmw7RmXDoMtLimjaid+azk?=
 =?us-ascii?Q?48HM7WVsE6jI032CwNC8G6uJ5tYdSsz1h+M8nUgtxqw+pa53kdCuvwKaakK6?=
 =?us-ascii?Q?3j37Jevq74JvBXMea90t0DJ2ILRmO3flP1ay4J+P/q+BKAGQGeFK/ScByWL5?=
 =?us-ascii?Q?im+Cyxw3H0cArOIqUonYEek3UMzV2hWR8mnGHXdERM1cpDctU9nOfPBeYpHW?=
 =?us-ascii?Q?YoJg7n+DL/oZYFm0aWa2RpiNhyTM8zkKQpwOJ6OgcNQLKEIb51oiEKja1whv?=
 =?us-ascii?Q?nB0XSxNu5K0vJz1VPE675bCbV2QpWdHXFa8v6borjCfOJXjRY9Lgtg0B8Ct+?=
 =?us-ascii?Q?1du5cUDk4BMTPqOmBW2vLFzxZFOrjE3SR6vacVMNcYLXIO3Vek5AMViRCVZp?=
 =?us-ascii?Q?3vCjrR7pU+VSRIZFtbl3tbCft3aKlK9VYo1fyEk7ZAgH8BIRZ3Fv7c/zgm8E?=
 =?us-ascii?Q?n2DQl3+lMcqi8yBnC5GaWe6v9t3JjkC5p13EMvtzxSkBO+uuB/dp+FhRIb6V?=
 =?us-ascii?Q?+94Aiq+/muCAvd042fLeJ4ceh5eLYseAKWZDheK5lAY3FOYZvkvAbJx9MFm0?=
 =?us-ascii?Q?MgC53ktquAWreayv39Pf3g7EPjUOCO/HU2VjcvWfuErFPHGIIrKjiSsrLmru?=
 =?us-ascii?Q?XIdIyTQVjM3egrETMAw4g01WnSo2ZajbdSEzzeHI2BNhpJWexnjSQpcbBSK0?=
 =?us-ascii?Q?M1oHu3SyW5gqr4DbMcOALp6EO9PVHvVL2yuHadLDwywlBzloFAhPTNWrDN/Q?=
 =?us-ascii?Q?HYKVrANp1vgT2Iw88N4ODzb3B+4QNqOOPQAKKMEOeNkJ0GCmQ0BofUcETI4f?=
 =?us-ascii?Q?ULaTGjH5DqSa2tpwA+1RZnClInE8t6eP1csCy+0MlixKn0GLSyTRV/tfnsH3?=
 =?us-ascii?Q?hZCL+t4nnX+6gefyLONqyt+j/ow380qRdBVvD6Z4pk+ZQLO7vMA+zcCqe9za?=
 =?us-ascii?Q?ql80JlIqF7Qf4VN6q9lOOLdrSYh2pNSMcS2OQ8TpXyKkJb/4uq7nopiBdOJO?=
 =?us-ascii?Q?0qGW4FK42sh3rFxGh+xMCWK9M49ZCnf3lkVJ3x8lJxmhIcj1JLwipuSaLkql?=
 =?us-ascii?Q?1h4acucSJTGJv+wkfBnsqMviTjim88kfkdZobOkG?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8ddbe88-b0b1-40fa-e439-08dbb04410a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2023 08:17:38.6134 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g/xBH2/oer4f05W8wBvzQEkdRGARlPM/ndZWUFzX/JtyEYwrOIBdF5rhiK1e3dwL7a6ZLZp8huZ+JBvvw8IOZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6380
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/display: Configure and
 initialize HDMI audio capabilities
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

> Subject: RE: [Intel-gfx] [PATCH 3/3] drm/i915/display: Configure and init=
ialize
> HDMI audio capabilities
>=20
> Hi Suraj,
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: 05 September 2023 14:47
> > To: Golani, Mitulkumar Ajitkumar
> > <mitulkumar.ajitkumar.golani@intel.com>;
> > intel-gfx@lists.freedesktop.org
> > Cc: Nikula, Jani <jani.nikula@intel.com>
> > Subject: RE: [Intel-gfx] [PATCH 3/3] drm/i915/display: Configure and
> > initialize HDMI audio capabilities
> >
> > > Subject: [Intel-gfx] [PATCH 3/3] drm/i915/display: Configure and
> > > initialize HDMI audio capabilities
> > >
> > > Initialize the source audio capabilities in the crtc_state property,
> > > setting them to
> >
> > Nit: maybe mention the above as intel_crtc_state rather than
> > crtc_state property as property usually refer to as drm_property and
> > it just seems a little weird to read. I have seen this in some of your
> > previous patches in this series you can make the changes there as well.
> >
> > > their maximum supported values for max_channel and max_rate. This
> > > initialization enables the calculation of audio source capabilities
> > > concerning the available mode bandwidth. These capabilities
> > > encompass parameters such as supported rate and channel configuration=
s.
> > >
> > > Additionally, introduces a wrapper function for computing Short
> > > Audio Descriptors (SADs). The wrapper function incorporates logic
> > > for determining
> >
> > Typo * introduce
> >
> > > supported rates and channels according to the capabilities of the
> > > audio
> > source.
> > > It returns a set of SADs that are compatible with the audio source's
> > capabilities.
> > >
> > > --v1:
> > > - Refactor max_channel and max_rate to this commit as it is being
> > > initialised here
> > > - Remove call for intel_audio_compute_eld to avoid any regression
> > > while merge. instead call it in different commit when it is defined.
> > > - Use int instead of unsigned int for max_channel and max_frequecy
> > > - Update commit message and header
> > >
> > > --v2:
> > > - Use signed instead of unsigned variables.
> > > - Avoid using magic numbers and give them proper name.
> > >
> > > --v3:
> > > - Move defines to intel_audio.c.
> > > - use consistent naming convention for rate and channel.
> > > - declare num_of_channel and aud_rate separately.
> > > - Declare index value outside of for loop.
> > > - Move Bandwidth calculation to intel_Audio.c as it is common for
> > > both DP and HDMI. Also use static.
> > >
> > > --v10:
> > > - Merged patch 2 and 3 to deduplicate function calls.
> > > - Instead using Calibrate and calculated functions separately,
> > > removed code duplication and merged functions.[Nikula, Jani]
> > > - Remove magic value for SAD Channel mask. [Nikula, Jani]
> > > - Corrected rate values based on HDMI Spec [Nikula, Jani]
> > > - Update drm function to extract SAD from ELD [Nikula, Jani]
> > >
> > > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_audio.c    | 127 ++++++++++++++++=
++
> > >  .../drm/i915/display/intel_display_types.h    |   6 +
> > >  2 files changed, 133 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > > b/drivers/gpu/drm/i915/display/intel_audio.c
> > > index e20ffc8e9654..2584096d80a4 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > > @@ -64,6 +64,10 @@
> > >   * struct &i915_audio_component_audio_ops @audio_ops is called from
> > > i915 driver.
> > >   */
> > >
> > > +#define AUDIO_SAMPLE_CONTAINER_SIZE	32
> > > +#define MAX_CHANNEL_COUNT		8
> > > +#define ELD_SAD_CHANNELS_MASK		0x7
> >
> > Use REG_GENMASK() to create masks should look cleaner
>=20
> you should use REG_GENMASK when you need to create a bitmask that covers
> a specific range of bits within a register or variable.
> I think If you are defining a simple bitmask like in above example, there=
's no
> need to use REG_GENMASK.
>=20

We can still used GENMASK macro or BITMASK do have a look there

> > > +
> > >  struct intel_audio_funcs {
> > >  	void (*audio_codec_enable)(struct intel_encoder *encoder,
> > >  				   const struct intel_crtc_state *crtc_state,
> > @@
> > > -770,6 +774,127 @@ void intel_audio_sdp_split_update(struct
> > > intel_encoder *encoder,
> > >  			     crtc_state->sdp_split_enable ?
> > > AUD_ENABLE_SDP_SPLIT : 0);  }
> > >
> > > +static int sad_to_channels(const u8 *sad) {
> > > +	return 1 + (sad[0] & 0x7);
> >
> > I think you missed using your defined mask here;
> >
> > > +}
> > > +
> > > +static int calc_audio_bw(int channel_count, int rate) {
> > > +	int bandwidth =3D channel_count * rate *
> > > AUDIO_SAMPLE_CONTAINER_SIZE;
> > > +	return bandwidth;
> >
> > Why introduce a variable here why not just return channel_count * rate
> > * AUDIO_SAMPLE_CONTAINER_SIZE;
> >
> > > +}
> > > +
> > > +static void calc_and_calibrate_audio_config_params(struct
> > > +intel_crtc_state
> > > *pipe_config,
> > > +						   int channel, bool
> > > calibration_required) {
> >
> > I think this should have a int type function that returns 0 if
> > max_rate and max_channel_count are non zero else return -EINVAL
>=20
> calc_and_calibrate_audio_config_params does not required to get failed. I=
f it
> gets failed as well, we will have to go ahead with the current configs av=
ailable.
> So this function does not require to return EINVAL in case it returns val=
ue as 0.
> That 0 value itself we will compute.
>=20
> >
> > > +	struct drm_display_mode *adjusted_mode =3D &pipe_config-
> > > >hw.adjusted_mode;
> > > +	int channel_count;
> > > +	int index, rate[] =3D { 192000, 176400, 96000, 88200, 48000, 44100,
> > > 32000 };
> >
> > Where do we get these rate values from.
> > What if we kept them at crtc_state so these can be update if required.
> >
> > > +	int audio_req_bandwidth, available_blank_bandwidth, vblank,
> > hblank;
> > > +
> > > +	hblank =3D adjusted_mode->htotal - adjusted_mode->hdisplay;
> > > +	vblank =3D adjusted_mode->vtotal - adjusted_mode->vdisplay;
> > > +	available_blank_bandwidth =3D hblank * vblank *
> > > +		drm_mode_vrefresh(adjusted_mode) * pipe_config-
> > >pipe_bpp;
> > > +
> > > +	/*
> > > +	 * Expected calibration of channels and respective rates,
> > > +	 * based on MAX_CHANNEL_COUNT. First calculate channel and
> > > +	 * rate based on Maximum that source can compute, letter
> > > +	 * with respect to sink's maximum channel capacity, calibrate
> > > +	 * supportive rates.
> >
> > Typo: *maximum and *later and *supported
> >
> > > +	 */
> > > +	if (calibration_required) {
> > > +		channel_count =3D channel;
> > > +		for (index =3D 0; index < ARRAY_SIZE(rate); index++) {
> > > +			audio_req_bandwidth =3D
> > calc_audio_bw(channel_count,
> > > +							    rate[index]);
> > > +			if (audio_req_bandwidth <
> > available_blank_bandwidth)
> > > {
> > > +				pipe_config->audio.max_rate =3D rate[index];
> > > +				pipe_config->audio.max_channel_count =3D
> > > channel_count;
> >
> > I think the above lines can be moved to function
> > set_max_rate_and_channel as this is duplicated even in the else block
> >
> > > +				return;
> > > +			}
> > > +		}
> > > +	} else {
> > > +		for (channel_count =3D channel; channel_count > 0;
> > > channel_count--) {
> > > +			for (index =3D 0; index < ARRAY_SIZE(rate); index++) {
> > > +				audio_req_bandwidth =3D
> > > calc_audio_bw(channel_count, rate[index]);
> > > +				if (audio_req_bandwidth <
> > > available_blank_bandwidth) {
> > > +					pipe_config->audio.max_rate =3D
> > > rate[index];
> > > +					pipe_config-
> > > >audio.max_channel_count =3D channel_count;
> > > +					return;
> > > +				}
> > > +			}
> > > +		}
> > > +	}
> > > +
> > > +	pipe_config->audio.max_rate =3D 0;
> > > +	pipe_config->audio.max_channel_count =3D 0; }
> > > +
> > > +static int get_supported_freq_mask(struct intel_crtc_state
> > > +*crtc_state) {
> > > +	int rate[] =3D { 32000, 44100, 48000, 88200, 96000, 176400, 192000
> > > +};
> >
> > So you do use the same array of rates maybe add these in the
> > intel_crtc_state audio struct and which can be filled in
> > intel_dp_compute_config , also mention where we get these rates from.
>=20
> I don't think it's a good idea for this specific case, as we are not goin=
g to use it
> apart from above 2 instances and also these are common sample frequency
> being used from HDMI and DP spec.
> So instead, we can reduce the redundancy. I will push that change with ne=
w
> patch set.
>=20
> Also, adding max rate and max channel was added considering source
> restrictions which we will address. But this rates array will be common t=
o both
> it seems.
>=20

But seeing that these rates are common for HDMI and DP spec it would be bet=
ter to have them in
the audio structure you make and fill this up in intel_dp_compute_config an=
d intel_hdmi_compute_config
if there is a change in both HDMI and DP spec in future changing these valu=
es should help.
Also we do have two instances that are being used now but this can increase=
 hence having it at one
Structure would be helpful.

Regards,
Suraj Kandpal
> >
> > > +	int mask =3D 0, index;
> > > +
> > > +	for (index =3D 0; index < ARRAY_SIZE(rate); index++) {
> > > +		if (rate[index] > crtc_state->audio.max_rate)
> > > +			break;
> > > +
> > > +		mask |=3D 1 << index;
> > > +
> > > +		if (crtc_state->audio.max_rate !=3D rate[index])
> > > +			continue;
> >
> > Why are the above two lines of code needed?
> > It's not like there is anything to skip below them.
> >
> > > +	}
> > > +
> > > +	return mask;
> > > +}
> > > +
> > > +static void intel_audio_compute_eld(struct intel_crtc_state
> > > +*crtc_state) {
> >
> > Lets not have this as a void function and lets return the appropriate
> > errors If required
> >
> > > +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->de=
v);
> > > +	u8 *eld, *sad;
> > > +	int index, mask =3D 0;
> > > +
> > > +	eld =3D crtc_state->eld;
> > > +	if (!eld)
> > > +		return;
> > > +
> > > +	sad =3D drm_extract_sad_from_eld(eld);
> > > +	if (!sad)
> > > +		return;
> > > +
> > > +	calc_and_calibrate_audio_config_params(crtc_state,
> > > MAX_CHANNEL_COUNT,
> > > +					       false);
> > > +
> > > +	mask =3D get_supported_freq_mask(crtc_state);
> > > +	for (index =3D 0; index < drm_eld_sad_count(eld); index++, sad +=3D=
 3) {
> > > +		/*
> > > +		 * Respect source restricitions. Limit capabilities to a subset
> > > that is
> > > +		 * supported both by the source and the sink.
> > > +		 */
> > > +		if (sad_to_channels(sad) >=3D crtc_state-
> > > >audio.max_channel_count) {
> > > +			sad[0] &=3D ~ELD_SAD_CHANNELS_MASK;
> > > +			sad[0] |=3D crtc_state->audio.max_channel_count - 1;
> > > +			drm_dbg_kms(&i915->drm, "Channel count is limited
> > > to %d\n",
> > > +				    crtc_state->audio.max_channel_count - 1);
> > > +		} else {
> > > +			/*
> > > +			 * calibrate rate when, sink supported channel
> > > +			 * count is slight less than max supported
> >
> > Typo: *slightly
> >
> > Regards,
> > Suraj Kandpal
> > > +			 * channel count.
> > > +			 */
> > > +			calc_and_calibrate_audio_config_params(crtc_state,
> > > +
> > > sad_to_channels(sad),
> > > +							       true);
> > > +			mask =3D get_supported_freq_mask(crtc_state);
> > > +		}
> > > +
> > > +		sad[1] &=3D mask;
> > > +	}
> > > +}
> > > +
> > >  bool intel_audio_compute_config(struct intel_encoder *encoder,
> > >  				struct intel_crtc_state *crtc_state,
> > >  				struct drm_connector_state *conn_state)
> > @@
> > > -791,6 +916,8 @@ bool intel_audio_compute_config(struct
> > > intel_encoder *encoder,
> > >
> > >  	crtc_state->eld[6] =3D drm_av_sync_delay(connector, adjusted_mode)
> > /
> > > 2;
> > >
> > > +	intel_audio_compute_eld(crtc_state);
> > > +
> > >  	return true;
> > >  }
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index ebd147180a6e..8815837a95a6 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1131,6 +1131,12 @@ struct intel_crtc_state {
> > >
> > >  	struct {
> > >  		bool has_audio;
> > > +
> > > +		/* Audio rate in Hz */
> > > +		int max_rate;
> > > +
> > > +		/* Number of audio channels */
> > > +		int max_channel_count;
> > >  	} audio;
> > >
> > >  	/*
> > > --
> > > 2.25.1

